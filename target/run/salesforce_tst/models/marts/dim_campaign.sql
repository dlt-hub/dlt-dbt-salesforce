
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_campaign`
      
    
    

    OPTIONS()
    as (
      /* Table: campaign */

SELECT
    t.id,
    t.is_deleted,
    t.name,
    t.type,
    t.status,
    t.start_date,
    t.end_date,
    t.expected_revenue,
    t.budgeted_cost,
    t.actual_cost,
    t.expected_response,
    t.number_sent,
    t.is_active,
    t.number_of_leads,
    t.number_of_converted_leads,
    t.number_of_contacts,
    t.number_of_responses,
    t.number_of_opportunities,
    t.number_of_won_opportunities,
    t.amount_all_opportunities,
    t.amount_won_opportunities,
    t.owner_id,
    t.created_date,
    t.created_by_id,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t._dlt_load_id,
    t._dlt_id,
    t.last_viewed_date,
    t.last_referenced_date,
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_campaign` as t
    );
  