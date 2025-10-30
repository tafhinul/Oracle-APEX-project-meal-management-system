prompt --application/pages/page_00041
begin
--   Manifest
--     PAGE: 00041
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
 p_id=>41
,p_name=>'Monthly budget report'
,p_alias=>'MONTHLY-BUDGET-REPORT'
,p_step_title=>'Monthly budget report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11843783662755063)
,p_plug_name=>'Monthly budget report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select BUDGET_ID,',
'       YEAR_MONTH,',
'       ON_ROLL_EMPLOYEES,',
'       EMP_CONTRIBUTION,',
'       COMPANY_CONTRIBUTION,',
'       TOTAL_BUDGET,',
'       USER_ID,',
'       ENTER_DATE,',
'       LAST_UPDATE,',
'       LAST_UPDATE_DATE',
'  from T3_MONTHLY_BUDGET'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Monthly budget report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11843885939755063)
,p_name=>'Monthly budget report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_base_pk1=>'BUDGET_ID'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:42:&APP_SESSION.::&DEBUG.:RP:P42_BUDGET_ID:\#BUDGET_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ARVI'
,p_internal_uid=>11843885939755063
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11844540023755065)
,p_db_column_name=>'BUDGET_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Budget ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11845366303755066)
,p_db_column_name=>'ON_ROLL_EMPLOYEES'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'On Roll Employees'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(14115365951876214)
,p_db_column_name=>'YEAR_MONTH'
,p_display_order=>13
,p_column_identifier=>'L'
,p_column_label=>'Year Month'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11845750707755066)
,p_db_column_name=>'EMP_CONTRIBUTION'
,p_display_order=>23
,p_column_identifier=>'D'
,p_column_label=>'Emp Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11846156742755067)
,p_db_column_name=>'COMPANY_CONTRIBUTION'
,p_display_order=>33
,p_column_identifier=>'E'
,p_column_label=>'Company Contribution'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11846541652755067)
,p_db_column_name=>'TOTAL_BUDGET'
,p_display_order=>43
,p_column_identifier=>'F'
,p_column_label=>'Total Budget'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11847379322755068)
,p_db_column_name=>'USER_ID'
,p_display_order=>53
,p_column_identifier=>'H'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11847709570755068)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>63
,p_column_identifier=>'I'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11848152452755069)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>73
,p_column_identifier=>'J'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11848511553755069)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>83
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11859801274821518)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'118599'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'BUDGET_ID:ON_ROLL_EMPLOYEES:EMP_CONTRIBUTION:COMPANY_CONTRIBUTION:TOTAL_BUDGET:USER_ID:ENTER_DATE:LAST_UPDATE:LAST_UPDATE_DATE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11850334316755071)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_menu_id=>wwv_flow_imp.id(8844752761706655)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11849078124755070)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11843783662755063)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:42:&SESSION.::&DEBUG.:42::'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11849328839755070)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(11843783662755063)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11849866686755070)
,p_event_id=>wwv_flow_imp.id(11849328839755070)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(11843783662755063)
);
wwv_flow_imp.component_end;
end;
/
