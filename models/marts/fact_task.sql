/* Fact Table: task */
{{
    config(
        materialized='incremental'
    )
}}

SELECT
    ---- main table task
    task._dlt_id,
    task.id,
    task.who_id,
    task.what_id,
    task.subject,
    task.activity_date,
    task.status,
    task.priority,
    task.is_high_priority,
    task.owner_id,
    task.description,
    task.is_deleted,
    task.account_id,
    task.is_closed,
    task.created_date,
    task.created_by_id,
    task.last_modified_date,
    task.last_modified_by_id,
    task.system_modstamp,
    task.is_archived,
    task.is_reminder_set,
    task.is_recurrence,
    task.task_subtype,
    task.completed_date_time,

    

FROM  {{ ref('stg_task') }} as task