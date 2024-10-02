/* Table: event */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table 'event' */
    id,
    who_id,
    what_id,
    subject,
    location,
    is_all_day_event,
    activity_date_time,
    activity_date,
    duration_in_minutes,
    start_date_time,
    end_date_time,
    end_date,
    account_id,
    owner_id,
    is_private,
    show_as,
    is_deleted,
    is_child,
    is_group_event,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_archived,
    is_recurrence,
    is_reminder_set,
    event_subtype,
    is_recurrence2_exclusion,
    is_recurrence2,
    is_recurrence2_exception,
    _dlt_load_id,
    _dlt_id,
    description,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`event`

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids` )