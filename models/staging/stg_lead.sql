/* Table: lead */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'lead' */
    id,
    is_deleted,
    last_name,
    first_name,
    salutation,
    name,
    title,
    company,
    street,
    city,
    state,
    postal_code,
    country,
    phone,
    fax,
    email,
    photo_url,
    lead_source,
    status,
    industry,
    rating,
    annual_revenue,
    owner_id,
    is_converted,
    is_unread_by_owner,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    clean_status,
    is_priority_record,
    sic_code__c,
    product_interest__c,
    primary__c,
    current_generators__c,
    numberof_locations__c,
    _dlt_load_id,
    _dlt_id,
    mobile_phone,
    number_of_employees,
    last_viewed_date,
    last_referenced_date,
FROM {{ source('raw_data', 'lead') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )