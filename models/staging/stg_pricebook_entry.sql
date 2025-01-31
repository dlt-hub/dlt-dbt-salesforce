/* Table: pricebook_entry */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'pricebook_entry' */
    id,
    name,
    pricebook2_id,
    product2_id,
    unit_price,
    is_active,
    use_standard_price,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    product_code,
    is_deleted,
    is_archived,
    _dlt_load_id,
    _dlt_id,
FROM {{ source('raw_data', 'pricebook_entry') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )