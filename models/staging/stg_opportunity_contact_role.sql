/* Table: opportunity_contact_role */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'opportunity_contact_role' */
    id,
    opportunity_id,
    contact_id,
    role,
    is_primary,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_deleted,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'opportunity_contact_role') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )