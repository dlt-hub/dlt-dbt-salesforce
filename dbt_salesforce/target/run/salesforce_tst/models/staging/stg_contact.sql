
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_contact`
      
    
    

    OPTIONS()
    as (
      /* Table: contact */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'contact' */
    id,
    is_deleted,
    account_id,
    last_name,
    first_name,
    salutation,
    name,
    mailing_street,
    phone,
    fax,
    mobile_phone,
    email,
    title,
    department,
    lead_source,
    birthdate,
    owner_id,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_email_bounced,
    photo_url,
    clean_status,
    is_priority_record,
    level_c,
    languages_c,
    _dlt_load_id,
    _dlt_id,
    mailing_city,
    mailing_state,
    mailing_postal_code,
    mailing_country,
    other_street,
    other_city,
    other_postal_code,
    other_country,
    assistant_phone,
    assistant_name,
    other_state,
    other_phone,
    description,
    last_activity_date,
    last_viewed_date,
    last_referenced_date,
    home_phone,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`contact`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )
    );
  