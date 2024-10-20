/* Table: campaign */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'campaign' */
    id,
    is_deleted,
    name,
    type,
    status,
    start_date,
    end_date,
    expected_revenue,
    budgeted_cost,
    actual_cost,
    expected_response,
    number_sent,
    is_active,
    number_of_leads,
    number_of_converted_leads,
    number_of_contacts,
    number_of_responses,
    number_of_opportunities,
    number_of_won_opportunities,
    amount_all_opportunities,
    amount_won_opportunities,
    owner_id,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    _dlt_load_id,
    _dlt_id,
    last_viewed_date,
    last_referenced_date,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`campaign`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )