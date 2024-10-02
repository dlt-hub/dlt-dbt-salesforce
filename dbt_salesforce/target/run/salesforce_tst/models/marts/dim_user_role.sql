
  
    

    create or replace table `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_user_role`
      
    
    

    OPTIONS()
    as (
      /* Table: user_role */

SELECT
    t.id,
    t.name,
    t.rollup_description,
    t.opportunity_access_for_account_owner,
    t.case_access_for_account_owner,
    t.contact_access_for_account_owner,
    t.may_forecast_manager_share,
    t.last_modified_date,
    t.last_modified_by_id,
    t.system_modstamp,
    t.developer_name,
    t.portal_type,
    t._dlt_load_id,
    t._dlt_id,
    t.parent_role_id,
FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`stg_user_role` as t
    );
  