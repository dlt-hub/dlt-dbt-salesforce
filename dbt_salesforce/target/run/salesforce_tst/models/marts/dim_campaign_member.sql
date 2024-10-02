
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_campaign_member`
      
    
    

    OPTIONS()
    as (
      /* Table: campaign_member */

SELECT
    t.id,
    t.is_deleted,
    t.campaign_id,
    t.contact_id,
    t.status,
    t.has_responded,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.salutation,
    t.name,
    t.first_name,
    t.last_name,
    t.title,
    t.street,
    t.city,
    t.state,
    t.postal_code,
    t.country,
    t.email,
    t.phone,
    t.mobile_phone,
    t.do_not_call,
    t.has_opted_out_of_email,
    t.has_opted_out_of_fax,
    t.company_or_account,
    t.type,
    t.lead_or_contact_id,
    t.lead_or_contact_owner_id,
    t._dlt_load_id,
    t._dlt_id,
    t.description,
    t.lead_id,
    t.first_responded_date,
    t.fax,
    t.lead_source,
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_campaign_member` as t
    );
  