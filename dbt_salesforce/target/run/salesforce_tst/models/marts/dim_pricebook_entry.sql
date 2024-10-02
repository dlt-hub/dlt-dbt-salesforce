
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_pricebook_entry`
      
    
    

    OPTIONS()
    as (
      /* Table: pricebook_entry */

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
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_pricebook_entry` as t
    );
  