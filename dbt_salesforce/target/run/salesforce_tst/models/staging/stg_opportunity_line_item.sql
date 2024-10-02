
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_opportunity_line_item`
      
    
    

    OPTIONS()
    as (
      /* Table: opportunity_line_item */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'opportunity_line_item' */
    id,
    opportunity_id,
    pricebook_entry_id,
    product2_id,
    product_code,
    name,
    quantity,
    total_price,
    unit_price,
    list_price,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_deleted,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`opportunity_line_item`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )
    );
  