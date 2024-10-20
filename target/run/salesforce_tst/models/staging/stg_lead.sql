
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_lead`
      
    
    

    OPTIONS()
    as (
      /* Table: lead */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'lead' */
    id,
    is_deleted,
    last_name,
    first_name,
    salutation,
    name,
    title,
    company,
    street,
    city,
    state,
    postal_code,
    country,
    phone,
    fax,
    email,
    photo_url,
    lead_source,
    status,
    industry,
    rating,
    annual_revenue,
    owner_id,
    is_converted,
    is_unread_by_owner,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    clean_status,
    is_priority_record,
    sic_code_c,
    product_interest_c,
    primary_c,
    current_generators_c,
    numberof_locations_c,
    _dlt_load_id,
    _dlt_id,
    number_of_employees,
    mobile_phone,
    last_viewed_date,
    last_referenced_date,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`lead`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )
    );
  