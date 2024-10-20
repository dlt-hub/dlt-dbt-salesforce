/* Table: opportunity_contact_role */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.opportunity_id,
    t.contact_id,
    t.role,
    t.is_primary,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.is_deleted,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_opportunity_contact_role') }} as t