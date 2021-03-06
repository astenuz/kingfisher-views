import concurrent.futures
import logging
from timeit import default_timer as timer

field_count_query = '''
    /*kingfisher-views field-counts*/

    set parallel_tuple_cost=0.00001;
    set parallel_setup_cost=0.00001;
    set work_mem='10MB';

    select
        collection_id,
        release_type,
        path,
        sum(object_property) object_property,
        sum(array_item) array_count,
        count(distinct id) distinct_releases
    from
        release_summary_with_data
    cross join
        flatten(data)
    where
        release_summary_with_data.collection_id = %s
    group by collection_id, release_type, path;
'''


class FieldCounts():

    def __init__(self, engine):
        self.engine = engine
        self.search_path_string = None
        self.logger = logging.getLogger('ocdskingfisher.views.field-counts')

    def _run_collection(self, collection):

        with self.engine.begin() as connection:
            start = timer()
            connection.execute(self.search_path_string)
            self.logger.info('processing collection: {}'.format(collection))
            results = tuple(connection.execute(field_count_query, collection))
            if results:
                connection.execute('insert into field_counts_temp values (%s, %s, %s, %s, %s, %s)', *results)
            self.logger.info('running time for collection {}: {}s'.format(collection, timer() - start))

    def run(self, viewname, remove=False, threads=1):
        schema_name = self.engine.dialect.identifier_preparer.quote('view_data_' + viewname)
        self.search_path_string = 'SET search_path = {}, public;'.format(schema_name)

        overall_start = timer()

        if remove:
            with self.engine.begin() as connection:
                connection.execute(self.search_path_string)
                connection.execute('drop table if exists field_counts_temp;')
                connection.execute('drop table if exists field_counts')
            return

        with self.engine.begin() as connection:
            connection.execute(self.search_path_string)

            connection.execute('drop table if exists field_counts_temp')
            connection.execute(
                '''create table field_counts_temp(
                       collection_id bigint,
                       release_type text,
                       path text,
                       object_property bigint,
                       array_count bigint,
                       distinct_releases bigint
                )'''
            )
            selected_collections = [result['id'] for result in
                                    connection.execute('select id from selected_collections')]

        with concurrent.futures.ThreadPoolExecutor(max_workers=threads) as executor:
            futures = [executor.submit(self._run_collection, collection) for collection in selected_collections]

            for future in concurrent.futures.as_completed(futures):
                continue

        with self.engine.begin() as connection:
            connection.execute(self.search_path_string)
            connection.execute('drop table if exists field_counts')
            connection.execute('alter table field_counts_temp rename to field_counts')

            connection.execute("Comment on column field_counts.collection_id IS "
                               "'id from the kingfisher collection table' ")
            connection.execute("Comment on column field_counts.release_type IS "
                               "'Either release, compiled_release or record. compiled_release are releases generated "
                               "by kingfisher release compilation' ")
            connection.execute("Comment on column field_counts.path IS 'JSON path of the field' ")
            connection.execute("Comment on column field_counts.object_property IS "
                               "'The total number of times the field at this path appears' ")
            connection.execute("Comment on column field_counts.array_count IS "
                               "'For arrays, the total number of items in this array across all releases' ")
            connection.execute("Comment on column field_counts.distinct_releases IS "
                               "'The total number of distinct releases in which the field at this path appears' ")

            self.logger.info('total running time: {}s'.format(timer() - overall_start))
