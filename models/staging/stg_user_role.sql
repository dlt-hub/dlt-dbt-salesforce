/* Table: user_role */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'user_role' */
    id,
    name,
    rollup_description,
    opportunity_access_for_account_owner,
    case_access_for_account_owner,
    contact_access_for_account_owner,
    may_forecast_manager_share,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    developer_name,
    portal_type,
    _dlt_load_id,
    _dlt_id,
    parent_role_id,
FROM {{ source('raw_data', 'user_role') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )