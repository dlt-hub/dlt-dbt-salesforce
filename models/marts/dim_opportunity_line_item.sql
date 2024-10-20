/* Table: opportunity_line_item */
{{
    config(
        materialized='incremental'
    )
}}
SELECT
    t.id,
    t.opportunity_id,
    t.pricebook_entry_id,
    t.product2_id,
    t.product_code,
    t.name,
    t.quantity,
    t.total_price,
    t.unit_price,
    t.list_price,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.is_deleted,
    t._dlt_load_id,
    t._dlt_id,
FROM  {{ ref('stg_opportunity_line_item') }} as t