{{
    config(
        materialized='incremental'
    )
}}
-- depends_on: {{ ref('dim__dlt_loads') }}
-- depends_on: {{ ref('fact_event') }}
-- depends_on: {{ ref('fact_task') }}
-- depends_on: {{ ref('dim_pricebook_entry') }}
-- depends_on: {{ ref('dim_pricebook_2') }}
-- depends_on: {{ ref('dim_product_2') }}
-- depends_on: {{ ref('dim_campaign_member') }}
-- depends_on: {{ ref('dim_campaign') }}
-- depends_on: {{ ref('dim_lead') }}
-- depends_on: {{ ref('dim_contact') }}
-- depends_on: {{ ref('dim_account') }}
-- depends_on: {{ ref('dim_opportunity_contact_role') }}
-- depends_on: {{ ref('dim_opportunity_line_item') }}
-- depends_on: {{ ref('fact_opportunity') }}
-- depends_on: {{ ref('dim_user_role') }}
-- depends_on: {{ ref('dim_sf_user') }}
/* we save all currently active load ids into the processed ids table */
select load_id, {{ current_timestamp() }} as inserted_at FROM {{ ref('dlt_active_load_ids') }}