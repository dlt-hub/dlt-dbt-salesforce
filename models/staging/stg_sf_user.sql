/* Table: sf_user */
{{
    config(
        materialized='table'
    )
}}

-- depends_on: {{ ref('dlt_active_load_ids') }}

SELECT
/* select which columns will be available for table 'sf_user' */
    id,
    username,
    last_name,
    first_name,
    name,
    company_name,
    country,
    email,
    email_preferences_auto_bcc,
    email_preferences_auto_bcc_stay_in_touch,
    email_preferences_stay_in_touch_reminder,
    alias,
    community_nickname,
    badge_text,
    is_active,
    time_zone_sid_key,
    locale_sid_key,
    receives_info_emails,
    receives_admin_info_emails,
    email_encoding_key,
    profile_id,
    user_type,
    language_locale_key,
    last_login_date,
    last_password_change_date,
    created_date,
    created_by_id,
    last_modified_date,
    last_modified_by_id,
    system_modstamp,
    number_of_failed_logins,
    user_permissions_marketing_user,
    user_permissions_offline_user,
    user_permissions_call_center_auto_login,
    user_permissions_sf_content_user,
    user_permissions_knowledge_user,
    user_permissions_interaction_user,
    user_permissions_support_user,
    user_permissions_jigsaw_prospecting_user,
    user_permissions_siteforce_contributor_user,
    user_permissions_siteforce_publisher_user,
    user_permissions_work_dot_com_user_feature,
    forecast_enabled,
    user_preferences_activity_reminders_popup,
    user_preferences_event_reminders_checkbox_default,
    user_preferences_task_reminders_checkbox_default,
    user_preferences_reminder_sound_off,
    user_preferences_disable_all_feeds_email,
    user_preferences_disable_followers_email,
    user_preferences_disable_profile_post_email,
    user_preferences_disable_change_comment_email,
    user_preferences_disable_later_comment_email,
    user_preferences_dis_prof_post_comment_email,
    user_preferences_content_no_email,
    user_preferences_content_email_as_and_when,
    user_preferences_apex_pages_developer_mode,
    user_preferences_receive_no_notifications_as_approver,
    user_preferences_receive_notifications_as_delegated_approver,
    user_preferences_hide_csn_get_chatter_mobile_task,
    user_preferences_disable_mentions_post_email,
    user_preferences_dis_mentions_comment_email,
    user_preferences_hide_csn_desktop_task,
    user_preferences_hide_chatter_onboarding_splash,
    user_preferences_hide_second_chatter_onboarding_splash,
    user_preferences_dis_comment_after_like_email,
    user_preferences_disable_like_email,
    user_preferences_sort_feed_by_comment,
    user_preferences_disable_message_email,
    user_preferences_jigsaw_list_user,
    user_preferences_disable_bookmark_email,
    user_preferences_disable_share_post_email,
    user_preferences_enable_auto_sub_for_feeds,
    user_preferences_disable_file_share_notifications_for_api,
    user_preferences_show_title_to_external_users,
    user_preferences_show_manager_to_external_users,
    user_preferences_show_email_to_external_users,
    user_preferences_show_work_phone_to_external_users,
    user_preferences_show_mobile_phone_to_external_users,
    user_preferences_show_fax_to_external_users,
    user_preferences_show_street_address_to_external_users,
    user_preferences_show_city_to_external_users,
    user_preferences_show_state_to_external_users,
    user_preferences_show_postal_code_to_external_users,
    user_preferences_show_country_to_external_users,
    user_preferences_show_profile_pic_to_guest_users,
    user_preferences_show_title_to_guest_users,
    user_preferences_show_city_to_guest_users,
    user_preferences_show_state_to_guest_users,
    user_preferences_show_postal_code_to_guest_users,
    user_preferences_show_country_to_guest_users,
    user_preferences_show_forecasting_change_signals,
    user_preferences_live_agent_miaw_setup_deflection,
    user_preferences_hide_s1_browser_ui,
    user_preferences_disable_endorsement_email,
    user_preferences_path_assistant_collapsed,
    user_preferences_cache_diagnostics,
    user_preferences_show_email_to_guest_users,
    user_preferences_show_manager_to_guest_users,
    user_preferences_show_work_phone_to_guest_users,
    user_preferences_show_mobile_phone_to_guest_users,
    user_preferences_show_fax_to_guest_users,
    user_preferences_show_street_address_to_guest_users,
    user_preferences_lightning_experience_preferred,
    user_preferences_preview_lightning,
    user_preferences_hide_end_user_onboarding_assistant_modal,
    user_preferences_hide_lightning_migration_modal,
    user_preferences_hide_sfx_welcome_mat,
    user_preferences_hide_bigger_photo_callout,
    user_preferences_global_nav_bar_wt_shown,
    user_preferences_global_nav_grid_menu_wt_shown,
    user_preferences_create_lex_apps_wt_shown,
    user_preferences_favorites_wt_shown,
    user_preferences_record_home_section_collapse_wt_shown,
    user_preferences_record_home_reserved_wt_shown,
    user_preferences_favorites_show_top_favorites,
    user_preferences_exclude_mail_app_attachments,
    user_preferences_suppress_task_sfx_reminders,
    user_preferences_suppress_event_sfx_reminders,
    user_preferences_preview_custom_theme,
    user_preferences_has_celebration_badge,
    user_preferences_user_debug_mode_pref,
    user_preferences_srh_override_activities,
    user_preferences_new_lightning_report_run_page_enabled,
    user_preferences_reverse_open_activities_view,
    user_preferences_show_territory_time_zone_shifts,
    user_preferences_has_sent_warning_email,
    user_preferences_has_sent_warning_email238,
    user_preferences_has_sent_warning_email240,
    user_preferences_native_email_client,
    user_preferences_show_forecasting_rounded_amounts,
    full_photo_url,
    small_photo_url,
    is_ext_indicator_visible,
    out_of_office_message,
    medium_photo_url,
    digest_frequency,
    default_group_notification_frequency,
    jigsaw_import_limit_override,
    last_viewed_date,
    last_referenced_date,
    banner_photo_url,
    small_banner_photo_url,
    medium_banner_photo_url,
    is_profile_photo_active,
    _dlt_load_id,
    _dlt_id,
    sender_name,
    about_me,
FROM {{ source('raw_data', 'sf_user') }}

/* we only load table items of the currently active load ids into the staging table */
WHERE _dlt_load_id IN ( SELECT load_id FROM  {{ ref('dlt_active_load_ids') }} )