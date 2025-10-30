prompt --application/pages/page_00014
begin
--   Manifest
--     PAGE: 00014
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
 p_id=>14
,p_name=>'Employee Attendance Report'
,p_alias=>'EMPLOYEE-ATTENDANCE-REPORT'
,p_step_title=>'Employee Attendance Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11687868193073038)
,p_plug_name=>'Employee Attendance Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>10
,p_query_type=>'TABLE'
,p_query_table=>'T3_DAILY_ATTENDANCE'
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Employee Attendance Report'
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(11687949517073038)
,p_name=>'Employee Attendance Report'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_show_notify=>'Y'
,p_download_formats=>'CSV:HTML:XLSX:PDF'
,p_enable_mail_download=>'Y'
,p_detail_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:RP:P15_ATTENDANCE_ID:\#ATTENDANCE_ID#\'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'ADMIN'
,p_internal_uid=>11687949517073038
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(11689079361073042)
,p_db_column_name=>'EMP_CODE'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Emp Code'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(12813390216040202)
,p_db_column_name=>'ATTEND_DATE'
,p_display_order=>62
,p_column_identifier=>'AJ'
,p_column_label=>'Attend Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13119740948840201)
,p_db_column_name=>'ATTENDANCE_ID'
,p_display_order=>92
,p_is_primary_key=>'Y'
,p_column_identifier=>'AM'
,p_column_label=>'Attendance Id'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13120385052840207)
,p_db_column_name=>'TAKING_LUNCH'
,p_display_order=>102
,p_column_identifier=>'AS'
,p_column_label=>'Taking Lunch'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13120495204840208)
,p_db_column_name=>'TAKING_DINNER'
,p_display_order=>112
,p_column_identifier=>'AT'
,p_column_label=>'Taking Dinner'
,p_column_type=>'STRING'
,p_heading_alignment=>'LEFT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13119830233840202)
,p_db_column_name=>'USER_ID'
,p_display_order=>122
,p_column_identifier=>'AN'
,p_column_label=>'User Id'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13119932244840203)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>132
,p_column_identifier=>'AO'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13120068743840204)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>142
,p_column_identifier=>'AP'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13120120718840205)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>152
,p_column_identifier=>'AQ'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13120223305840206)
,p_db_column_name=>'ROWID'
,p_display_order=>162
,p_column_identifier=>'AR'
,p_column_label=>'Rowid'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(11717737109151455)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'117178'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'EMP_CODE'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11693025744073047)
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
 p_id=>wwv_flow_imp.id(11692362598073046)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11687868193073038)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'RIGHT_OF_IR_SEARCH_BAR'
,p_button_redirect_url=>'f?p=&APP_ID.:15:&SESSION.::&DEBUG.:15:P15_ATTENDANCE_ID:&P15_ATTENDANCE_ID.'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(12495932767523514)
,p_name=>'P14_DATE'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11687868193073038)
,p_prompt=>'Date'
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
wwv_flow_imp.component_end;
end;
/
