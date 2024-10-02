/* Table: opportunity */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'opportunity' */
    id,
    is_deleted,
    account_id,
    is_private,
    name,
    stage_name,
    amount,
    probability,
    expected_revenue,
    close_date,
    type,
    lead_source,
    is_closed,
    is_won,
    forecast_category,
    forecast_category_name,
    has_opportunity_line_item,
    owner_id,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    push_count,
    fiscal_quarter,
    fiscal_year,
    has_open_activity,
    has_overdue_task,
    main_competitors_c,
    _dlt_load_id,
    _dlt_id,
    delivery_installation_status_c,
    current_generators_c,
    order_number_c,
    tracking_number_c,
    next_step,
    last_viewed_date,
    last_referenced_date,
    total_opportunity_quantity,
    pricebook2_id,
    last_amount_changed_history_id,
    campaign_id,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`opportunity`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )