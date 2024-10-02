/* Table: pricebook_entry */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.name,
    t.pricebook2_id,
    t.product2_id,
    t.unit_price,
    t.is_active,
    t.use_standard_price,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.product_code,
    t.is_deleted,
    t.is_archived,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_pricebook_entry') }} as t