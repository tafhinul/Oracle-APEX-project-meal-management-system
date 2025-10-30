prompt --application/pages/page_00002
begin
--   Manifest
--     PAGE: 00002
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_page.create_page(
 p_id=>2
,p_name=>'daily attendance'
,p_alias=>'DAILY-ATTENDANCE'
,p_step_title=>'daily attendance'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13120732456840211)
,p_plug_name=>'Daily Attendance'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(8844752761706655)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13121356764840217)
,p_plug_name=>'daily_attendance'
,p_title=>'Daily Attendance List'
,p_parent_plug_id=>wwv_flow_imp.id(13120732456840211)
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    DA.ATTENDANCE_ID,       -- Unique attendance record ID',
'    DA.EMP_CODE,            -- Employee code',
'    H.EMPLOYEE_NAME,             -- Employee full name',
'    DA.TAKING_LUNCH,     -- Checkbox / Y/N for lunch',
'    DA.TAKING_DINNER,    -- Checkbox / Y/N for dinner',
'    DA.ATTEND_DATE      -- Attendance date',
'FROM',
'    T3_DAILY_ATTENDANCE DA',
'INNER JOIN',
'    employee_details_t3 H',
'    ON DA.EMP_CODE = H.EMP_CODE',
'WHERE',
'    DA.ATTEND_DATE = TO_DATE(:P2_DATE_SELECTION, ''MM/DD/YYYY'')',
'    AND H.STATUS = ''On Roll'';',
'',
'  '))
,p_plug_source_type=>'NATIVE_IG'
,p_ajax_items_to_submit=>'P2_DATE_SELECTION'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
,p_prn_page_header=>'Daily Attendance List'
,p_prn_page_header_font_color=>'#000000'
,p_prn_page_header_font_family=>'Helvetica'
,p_prn_page_header_font_weight=>'normal'
,p_prn_page_header_font_size=>'12'
,p_prn_page_footer_font_color=>'#000000'
,p_prn_page_footer_font_family=>'Helvetica'
,p_prn_page_footer_font_weight=>'normal'
,p_prn_page_footer_font_size=>'12'
,p_prn_header_bg_color=>'#EEEEEE'
,p_prn_header_font_color=>'#000000'
,p_prn_header_font_family=>'Helvetica'
,p_prn_header_font_weight=>'bold'
,p_prn_header_font_size=>'10'
,p_prn_body_bg_color=>'#FFFFFF'
,p_prn_body_font_color=>'#000000'
,p_prn_body_font_family=>'Helvetica'
,p_prn_body_font_weight=>'normal'
,p_prn_body_font_size=>'10'
,p_prn_border_width=>.5
,p_prn_page_header_alignment=>'CENTER'
,p_prn_page_footer_alignment=>'CENTER'
,p_prn_border_color=>'#666666'
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13121551187840219)
,p_name=>'EMP_CODE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMP_CODE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13121678440840220)
,p_name=>'EMPLOYEE_NAME'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'EMPLOYEE_NAME'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>true
,p_item_type=>'NATIVE_TEXT_FIELD'
,p_heading=>'Employee Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>40
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'trim_spaces', 'BOTH')).to_clob
,p_is_required=>false
,p_max_length=>100
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13121758274840221)
,p_name=>'TAKING_LUNCH'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAKING_LUNCH'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Taking Lunch'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'checked_value', 'Y',
  'unchecked_value', 'N',
  'use_defaults', 'N')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13121868559840222)
,p_name=>'TAKING_DINNER'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TAKING_DINNER'
,p_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_SINGLE_CHECKBOX'
,p_heading=>'Taking Dinner'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13121978664840223)
,p_name=>'ATTENDANCE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTENDANCE_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>70
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13122010440840224)
,p_name=>'MEAL_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ATTEND_DATE'
,p_data_type=>'DATE'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Meal Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>false
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13122983034840233)
,p_name=>'APEX$ROW_ACTION'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_display_sequence=>20
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(13123063509840234)
,p_name=>'APEX$ROW_SELECTOR'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(13121492145840218)
,p_internal_uid=>13121492145840218
,p_is_editable=>true
,p_edit_operations=>'i:u'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>false
,p_fixed_row_height=>false
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(13196901771752650)
,p_interactive_grid_id=>wwv_flow_imp.id(13121492145840218)
,p_static_id=>'131970'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(13197131224752651)
,p_report_id=>wwv_flow_imp.id(13196901771752650)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13197605904752657)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(13121551187840219)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13198542257752661)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(13121678440840220)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13199414425752664)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(13121758274840221)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13200335740752668)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(13121868559840222)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13201208495752671)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(13121978664840223)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13202180444752674)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(13122010440840224)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(13206262801813646)
,p_view_id=>wwv_flow_imp.id(13197131224752651)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(13122983034840233)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13122716185840231)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(13120732456840211)
,p_button_name=>'SAVE_ATTENDANCE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save Attendance'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13121215647840216)
,p_name=>'P2_DATE_SELECTION'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(13120732456840211)
,p_item_default=>'RETURN TO_CHAR(SYSDATE, ''MM/DD/YYYY'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date Selection'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(14146097979806101)
,p_name=>'load'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P2_DATE_SELECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(14146167318806102)
,p_event_id=>wwv_flow_imp.id(14146097979806101)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13123136553840235)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(13121356764840217)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'daily_attendance - Save Interactive Grid Data'
,p_attribute_01=>'TABLE'
,p_attribute_03=>'T3_DAILY_ATTENDANCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>13123136553840235
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13123223916840236)
,p_process_sequence=>10
,p_process_point=>'BEFORE_BOX_BODY'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto-Insert Default Attendance'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_selected_date   DATE := TO_DATE(:P2_DATE_SELECTION, ''MM/DD/YYYY'');',
'    v_record_exists   NUMBER;',
'    v_day_type        VARCHAR2(10);',
'BEGIN',
'    -------------------------------------------------------------------',
'    -- Step 1: Get CAL_WHLD (Working/Holiday) from Calendar Table',
'    -------------------------------------------------------------------',
'    BEGIN',
'        SELECT CAL_WHLD',
'          INTO v_day_type',
'          FROM T3_CALENDAR',
'         WHERE TRUNC(CAL_DATE) = v_selected_date;',
'    EXCEPTION',
'        WHEN NO_DATA_FOUND THEN',
'            -- If date not in calendar, decide by weekday',
'            IF TO_CHAR(v_selected_date, ''DY'', ''NLS_DATE_LANGUAGE=ENGLISH'') IN (''FRI'') THEN',
'                v_day_type := ''Y'';  -- Treat as Holiday',
'            ELSE',
'                v_day_type := ''W'';  -- Working Day',
'            END IF;',
'    END;',
'',
'    -------------------------------------------------------------------',
'    -- Step 2: Check if attendance already exists for that date',
'    -------------------------------------------------------------------',
'    SELECT COUNT(*)',
'      INTO v_record_exists',
'      FROM T3_DAILY_ATTENDANCE',
'     WHERE TRUNC(ATTEND_DATE) = v_selected_date;',
'',
'    -------------------------------------------------------------------',
'    -- Step 3: Insert attendance for all employees if not exists',
'    -------------------------------------------------------------------',
'    IF v_record_exists = 0 THEN',
'        INSERT INTO T3_DAILY_ATTENDANCE (',
'            ATTEND_DATE,',
'            EMP_CODE,',
'            TAKING_LUNCH,',
'            TAKING_DINNER,',
'            USER_ID,',
'            ENTER_DATE',
'        )',
'        SELECT',
'            v_selected_date,',
'            H.EMP_CODE,',
'            CASE ',
'                WHEN v_day_type = ''W'' THEN NVL(H.PREF_LUNCH, ''Y'')',
'                ELSE ''N''',
'            END AS TAKING_LUNCH,',
'            CASE ',
'                WHEN v_day_type = ''W'' THEN NVL(H.PREF_DINNER, ''N'')',
'                ELSE ''N''',
'            END AS TAKING_DINNER,',
'            :APP_USER,',
'            SYSDATE',
'        FROM EMPLOYEE_DETAILS_T3 H',
'        WHERE H.STATUS = ''On Roll'';',
'    END IF;',
'END;'))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13123223916840236
);
wwv_flow_imp.component_end;
end;
/
