/* check if the destination already has a list of processed ids
if not we will process all loads with status 0 (==success) */


SELECT load_id FROM `dlthub-analytics`.`salesforce_data_tst9_20240930010342`.`_dlt_loads`
WHERE status = 0
/* exclude already processed load_ids */
