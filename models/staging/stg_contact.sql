/* Table: contact */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'contact' */
    id,
    is_deleted,
    account_id,
    last_name,
    first_name,
    salutation,
    name,
    other_street,
    other_city,
    other_postal_code,
    other_country,
    mailing_street,
    mailing_city,
    mailing_postal_code,
    mailing_country,
    phone,
    fax,
    mobile_phone,
    assistant_phone,
    email,
    title,
    department,
    assistant_name,
    owner_id,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    is_email_bounced,
    photo_url,
    clean_status,
    is_priority_record,
    level__c,
    languages__c,
    _dlt_load_id,
    _dlt_id,
    other_state,
    mailing_state,
    lead_source,
    birthdate,
    home_phone,
    last_activity_date,
    last_viewed_date,
    last_referenced_date,
    other_phone,
    description,
FROM {{ source('raw_data', 'contact') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )