/* Table: account */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'account' */
    id,
    is_deleted,
    name,
    type,
    billing_street,
    billing_city,
    billing_state,
    shipping_street,
    phone,
    fax,
    account_number,
    website,
    photo_url,
    sic,
    industry,
    annual_revenue,
    number_of_employees,
    ownership,
    ticker_symbol,
    description,
    rating,
    owner_id,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    clean_status,
    customer_priority__c,
    sla__c,
    active__c,
    numberof_locations__c,
    upsell_opportunity__c,
    sla_serial_number__c,
    sla_expiration_date__c,
    _dlt_load_id,
    _dlt_id,
    billing_postal_code,
    billing_country,
    shipping_city,
    shipping_postal_code,
    shipping_country,
    shipping_state,
    site,
    last_activity_date,
    last_viewed_date,
    last_referenced_date,
    parent_id,
FROM {{ source('raw_data', 'account') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )