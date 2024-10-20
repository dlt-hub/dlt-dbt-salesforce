
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_pricebook_2`
      
    
    

    OPTIONS()
    as (
      /* Table: pricebook_2 */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'pricebook_2' */
    id,
    is_deleted,
    name,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_active,
    is_archived,
    is_standard,
    _dlt_load_id,
    _dlt_id,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`pricebook_2`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )
    );
  