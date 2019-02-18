set search_path = views, public;


drop materialized view if exists tmp_planning_summary cascade;
create materialized view tmp_planning_summary
as
select
    r.id,
    r.release_type,
    r.collection_id,
    r.ocid,
    r.release_id,
    r.data_id,
    planning
from
    (select 
        data -> 'planning' AS planning, 
        rs.* 
    from 
        tmp_release_summary_with_release_data rs where data ? 'planning'
    ) AS r
;

create unique index tmp_planning_summary_id on tmp_planning_summary(id);


drop materialized view if exists planning_documents_summary;
create materialized view planning_documents_summary
as
select
    r.id,
    document_index,
    r.release_type,
    r.collection_id,
    r.ocid,
    r.release_id,
    r.data_id,
    document,
    document ->> 'documentType' as documentType,
    document ->> 'format' as format
from
    (select 
        tps.*,
        value AS document,
        ordinality -1 AS document_index 
    from 
        tmp_planning_summary tps 
    cross join
        jsonb_array_elements(planning -> 'documents') with ordinality
    where jsonb_typeof(planning -> 'documents') = 'array'
    ) AS r
;

create unique index planning_documents_summary_id on planning_documents_summary(id, document_index);
create index planning_documents_summary_data_id on planning_documents_summary(data_id);
create index planning_documents_summary_collection_id on planning_documents_summary(collection_id);


drop materialized view if exists planning_milestones_summary;
create materialized view planning_milestones_summary
as
select
    r.id,
    milestone_index,
    r.release_type,
    r.collection_id,
    r.ocid,
    r.release_id,
    r.data_id,
    milestone,
    milestone ->> 'type' as type,
    milestone ->> 'code' as code,  
    milestone ->> 'status' as status
from
    (select 
        tps.*,
        value AS milestone,
        ordinality -1 AS milestone_index 
    from 
        tmp_planning_summary tps 
    cross join
        jsonb_array_elements(planning -> 'milestones') with ordinality
    where jsonb_typeof(planning -> 'milestones') = 'array'
    ) AS r
;

create unique index planning_milestones_summary_id on planning_milestones_summary(id, milestone_index);
create index planning_milestones_summary_data_id on planning_milestones_summary(data_id);
create index planning_milestones_summary_collection_id on planning_milestones_summary(collection_id);


drop materialized view if exists planning_summary;
create materialized view planning_summary
as
select
    r.id,
    r.release_type,
    r.collection_id,
    r.ocid,
    r.release_id,
    r.data_id,
    planning,
    convert_to_numeric(planning -> 'budget' -> 'amount' ->> 'amount') planning_budget_amount,
    planning -> 'budget' -> 'amount' ->> 'currency' planning_budget_currency,
    planning -> 'budget' ->> 'projectID' planning_budget_projectID,
    documents_count,
    documentType_counts,
    milestones_count,
    milestoneType_counts
from
    tmp_planning_summary r
left join
    (
    select 
        id, 
        jsonb_object_agg(documentType, documentType_count) documentType_counts, 
        count(*) documents_count
    from
        (select 
            id, documentType, count(*) documentType_count
        from
            planning_documents_summary
        group by
            id, documentType
        ) AS d
    group by id
    ) documentType_counts
    using (id)
left join
    (
    select 
        id, 
        jsonb_object_agg(type, milestoneType_count) milestoneType_counts, 
        count(*) milestones_count
    from
        (select 
            id, type, count(*) milestoneType_count
        from
            planning_milestones_summary
        group by
            id, type
        ) AS d
    group by id
    ) milestoneType_counts
    using (id)
;
