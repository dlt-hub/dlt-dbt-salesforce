/* Table: product_2 */

SELECT
    t.id,
    t.name,
    t.product_code,
    t.is_active,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.is_deleted,
    t.is_archived,
    t.product_class,
    t._dlt_load_id,
    t._dlt_id,
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_product_2` as t