prompt --application/pages/page_00008
begin
--   Manifest
--     PAGE: 00008
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
 p_id=>8
,p_name=>'Daily Meal Summary Report'
,p_alias=>'DAILY-MEAL-SUMMARY-REPORT'
,p_step_title=>'Daily Meal Summary Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(10114030107940283)
,p_plug_name=>'Daily Meal Summary Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select SUMMARY_ID,',
'       MEAL_DATE,',
'       TOTAL_MEALS,',
'       TOTAL_COST,',
'       PER_MEAL_COST,',
'       MEAL_MANAGER_CODE,',
'       USER_ID,',
'       ENTER_DATE,',
'       LAST_UPDATE,',
'       LAST_UPDATE_DATE',
'  from T3_DAILY_MEAL_SUMMARY',
'',
'  where MEAL_DATE = TO_DATE(:P8_DATE_SELECTION, ''MM/DD/YYYY'');'))
,p_plug_source_type=>'NATIVE_IR'
,p_ajax_items_to_submit=>'P8_DATE_SELECTION'
,p_prn_content_disposition=>'ATTACHMENT'
,p_prn_units=>'INCHES'
,p_prn_paper_size=>'LETTER'
,p_prn_width=>11
,p_prn_height=>8.5
,p_prn_orientation=>'HORIZONTAL'
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
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(14118661500876247)
,p_max_row_count=>'1000000'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_owner=>'TAFHINUL_WS'
,p_internal_uid=>14118661500876247
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14118712004876248)
,p_db_column_name=>'SUMMARY_ID'
,p_display_order=>10
,p_column_identifier=>'A'
,p_column_label=>'Summary Id'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14118869411876249)
,p_db_column_name=>'MEAL_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Meal Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_format_mask=>'MM/DD/YYYY'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14118927602876250)
,p_db_column_name=>'TOTAL_MEALS'
,p_display_order=>30
,p_column_identifier=>'C'
,p_column_label=>'Total Meals'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060063859553401)
,p_db_column_name=>'TOTAL_COST'
,p_display_order=>40
,p_column_identifier=>'D'
,p_column_label=>'Total Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060190561553402)
,p_db_column_name=>'PER_MEAL_COST'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Per Meal Cost'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060268498553403)
,p_db_column_name=>'MEAL_MANAGER_CODE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Meal Manager Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060378052553404)
,p_db_column_name=>'USER_ID'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'User Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060409201553405)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060529722553406)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(15060642369553407)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(15077968903554055)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'150780'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'SUMMARY_ID:MEAL_DATE:TOTAL_MEALS:TOTAL_COST:PER_MEAL_COST:MEAL_MANAGER_CODE:USER_ID:ENTER_DATE:LAST_UPDATE:LAST_UPDATE_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14685091085603421)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>50
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(8844752761706655)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(10118967471940295)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(10114030107940283)
,p_button_name=>'CREATE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13913201852318707)
,p_name=>'P8_DATE_SELECTION'
,p_is_required=>true
,p_item_sequence=>10
,p_item_default=>'RETURN TO_CHAR(SYSDATE, ''MM/DD/YYYY'');'
,p_item_default_type=>'FUNCTION_BODY'
,p_item_default_language=>'PLSQL'
,p_prompt=>'Date Selection'
,p_format_mask=>'MM/DD/YYYY'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>10
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
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
 p_id=>wwv_flow_imp.id(13913035144318705)
,p_name=>'loadd'
,p_event_sequence=>10
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DATE_'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13913117702318706)
,p_event_id=>wwv_flow_imp.id(13913035144318705)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SHOW'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(10114030107940283)
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13913357662318708)
,p_name=>'load'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P8_DATE_SELECTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13913448635318709)
,p_event_id=>wwv_flow_imp.id(13913357662318708)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13123323197840237)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Daily Meal Summary'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'    v_selected_date   DATE;',
'    v_total_meals     NUMBER := 0;',
'    v_total_cost      NUMBER := 0;',
'    v_per_meal_cost   NUMBER := 0;',
'    v_record_exists   NUMBER := 0;',
'BEGIN',
'    -- Step 0: Run only if a date is selected',
'    IF :P8_DATE_SELECTION IS NOT NULL THEN',
'        v_selected_date := TRUNC(TO_DATE(:P8_DATE_SELECTION, ''MM/DD/YYYY''));',
'',
'        -------------------------------------------------------------------',
'        -- Step 1: Count total meals (Lunch + Dinner)',
'        -------------------------------------------------------------------',
'        SELECT NVL(SUM(',
'                 CASE WHEN TRIM(UPPER(TAKING_LUNCH)) = ''Y'' THEN 1 ELSE 0 END +',
'                 CASE WHEN TRIM(UPPER(TAKING_DINNER)) = ''Y'' THEN 1 ELSE 0 END',
'               ), 0)',
'          INTO v_total_meals',
'          FROM T3_DAILY_ATTENDANCE',
'         WHERE TRUNC(ATTEND_DATE) = v_selected_date;',
'',
'        -------------------------------------------------------------------',
'        -- Step 2: Get total cost',
'        -------------------------------------------------------------------',
'        SELECT NVL(SUM(TOTAL_PRICE), 0)',
'          INTO v_total_cost',
'          FROM T3_PRODUCT_PURCHASE',
'         WHERE TRUNC(PURCHASE_DATE) = v_selected_date;',
'',
'        -------------------------------------------------------------------',
'        -- Step 3: Calculate per-meal cost',
'        -------------------------------------------------------------------',
'        IF v_total_meals > 0 THEN',
'            v_per_meal_cost := ROUND(v_total_cost / v_total_meals, 2);',
'        ELSE',
'            v_per_meal_cost := 0;',
'        END IF;',
'',
'        -------------------------------------------------------------------',
'        -- Step 4: Only insert/update if data exists',
'        -------------------------------------------------------------------',
'        IF v_total_meals > 0 OR v_total_cost > 0 THEN',
'            SELECT COUNT(*)',
'              INTO v_record_exists',
'              FROM T3_DAILY_MEAL_SUMMARY',
'             WHERE TRUNC(MEAL_DATE) = v_selected_date;',
'',
'            IF v_record_exists = 0 THEN',
'                INSERT INTO T3_DAILY_MEAL_SUMMARY (',
'                    MEAL_DATE,',
'                    TOTAL_MEALS,',
'                    TOTAL_COST,',
'                    PER_MEAL_COST,',
'                    MEAL_MANAGER_CODE',
'                )',
'                VALUES (',
'                    v_selected_date,',
'                    v_total_meals,',
'                    v_total_cost,',
'                    v_per_meal_cost,',
'                    ''EMP-000005''',
'                );',
'            ELSE',
'                UPDATE T3_DAILY_MEAL_SUMMARY',
'                   SET TOTAL_MEALS   = v_total_meals,',
'                       TOTAL_COST    = v_total_cost,',
'                       PER_MEAL_COST = v_per_meal_cost',
'                 WHERE TRUNC(MEAL_DATE) = v_selected_date;',
'            END IF;',
'        END IF;  -- Only if meals or cost exist',
'    END IF;',
'END;',
'',
''))
,p_process_clob_language=>'PLSQL'
,p_internal_uid=>13123323197840237
);
wwv_flow_imp.component_end;
end;
/
