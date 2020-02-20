Setup
=====

These commands are used to setup and upgrade Kingfisher Views.

.. _upgrade-database:

upgrade-database
----------------

Creates and/or updates Kingfisher Views' configuration tables:

.. code-block:: bash

   python ocdskingfisher-views-cli upgrade-database

The tables are:

``views.alembic_version``
   The version number of the database configuration, managed by `Alembic <https://alembic.sqlalchemy.org/>`__
``view_info.mapping_sheets``
   A copy of the OCDS `release schema <https://standard.open-contracting.org/latest/en/schema/release/>`__ in `tabular format <https://github.com/open-contracting/kingfisher-views/blob/master/ocdskingfisherviews/migrations/versions/1-1-3.csv>`__
``view_meta.read_only_user``
   See the :ref:`correct-user-permissions` command

.. _upgrade-app:

Upgrade Kingfisher Views
~~~~~~~~~~~~~~~~~~~~~~~~

You must run this command whenever you update Kingfisher Views' source code.

If the new version of Kingfisher Views makes changes to SQL statements, you might want to re-create the collection-specific schemas. For each schema, run the :ref:`refresh-views`, :ref:`field-counts` and :ref:`correct-user-permissions` commands, in that order.