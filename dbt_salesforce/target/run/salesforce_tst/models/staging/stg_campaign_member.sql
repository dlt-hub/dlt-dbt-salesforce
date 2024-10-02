
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_campaign_member`
      
    
    

    OPTIONS()
    as (
      /* Table: campaign_member */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'campaign_member' */
    id,
    is_deleted,
    campaign_id,
    contact_id,
    status,
    has_responded,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    salutation,
    name,
    first_name,
    last_name,
    title,
    street,
    city,
    state,
    postal_code,
    country,
    email,
    phone,
    mobile_phone,
    do_not_call,
    has_opted_out_of_email,
    has_opted_out_of_fax,
    company_or_account,
    type,
    lead_or_contact_id,
    lead_or_contact_owner_id,
    _dlt_load_id,
    _dlt_id,
    description,
    lead_id,
    first_responded_date,
    fax,
    lead_source,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`campaign_member`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )
    );
  