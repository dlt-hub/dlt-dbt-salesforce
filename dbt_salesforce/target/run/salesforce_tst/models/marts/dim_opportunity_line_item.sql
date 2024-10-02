
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_opportunity_line_item`
      
    
    

    OPTIONS()
    as (
      /* Table: opportunity_line_item */

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
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_opportunity_line_item` as t
    );
  