
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim__dlt_loads`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`fact_event`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`fact_task`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_pricebook_entry`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_pricebook_2`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_product_2`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_campaign_member`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_campaign`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_lead`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_contact`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_account`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_opportunity_contact_role`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_opportunity_line_item`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`fact_opportunity`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_user_role`
-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dim_sf_user`
/* we save all currently active load ids into the processed ids table */
select load_id, current_timestamp() as inserted_at FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`