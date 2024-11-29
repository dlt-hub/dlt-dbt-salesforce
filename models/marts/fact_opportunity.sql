/* Fact Table: opportunity */
{{
    config(
        materialized='incremental'
    )
}}

SELECT
    ---- main table opportunity
    opportunity._dlt_id,
    opportunity.id,
    opportunity.is_deleted,
    opportunity.account_id,
    opportunity.is_private,
    opportunity.name,
    opportunity.stage_name,
    opportunity.amount,
    opportunity.probability,
    opportunity.expected_revenue,
    opportunity.close_date,
    opportunity.type,
    opportunity.lead_source,
    opportunity.is_closed,
    opportunity.is_won,
    opportunity.forecast_category,
    opportunity.forecast_category_name,
    opportunity.has_opportunity_line_item,
    opportunity.owner_id,
    opportunity.created_date,
    opportunity.created_by_id,
    opportunity.last_modified_date,
    opportunity.last_modified_by_id,
    opportunity.system_modstamp,
    opportunity.push_count,
    opportunity.fiscal_quarter,
    opportunity.fiscal_year,
    opportunity.has_open_activity,
    opportunity.has_overdue_task,
    opportunity.main_competitors__c,
    opportunity.delivery_installation_status__c,
    opportunity.current_generators__c,
    opportunity.order_number__c,
    opportunity.tracking_number__c,
    opportunity.next_step,
    opportunity.last_viewed_date,
    opportunity.last_referenced_date,
    opportunity.total_opportunity_quantity,
    opportunity.pricebook2_id,
    opportunity.last_amount_changed_history_id,
    opportunity.campaign_id,

    

FROM  {{ ref('stg_opportunity') }} as opportunity