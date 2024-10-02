
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_lead`
      
    
    

    OPTIONS()
    as (
      /* Table: lead */

SELECT
    t.id,
    t.is_deleted,
    t.last_name,
    t.first_name,
    t.salutation,
    t.name,
    t.title,
    t.company,
    t.street,
    t.city,
    t.state,
    t.postal_code,
    t.country,
    t.phone,
    t.fax,
    t.email,
    t.photo_url,
    t.lead_source,
    t.status,
    t.industry,
    t.rating,
    t.annual_revenue,
    t.owner_id,
    t.is_converted,
    t.is_unread_by_owner,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.clean_status,
    t.is_priority_record,
    t.sic_code_c,
    t.product_interest_c,
    t.primary_c,
    t.current_generators_c,
    t.numberof_locations_c,
    t._dlt_load_id,
    t._dlt_id,
    t.number_of_employees,
    t.mobile_phone,
    t.last_viewed_date,
    t.last_referenced_date,
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_lead` as t
    );
  