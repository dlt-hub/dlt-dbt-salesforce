/* Table: _dlt_loads */
/* Description: Created by DLT. Tracks completed loads */


-- depends_on: `dlthub-analytics`.`salesforce_data_tst9_20240930010342_transformed`.`dlt_active_load_ids`

SELECT
/* select which columns will be available for table '_dlt_loads' */
    load_id,
    schema_name,
    status,
    inserted_at,
    schema_version_hash,
FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`_dlt_loads`