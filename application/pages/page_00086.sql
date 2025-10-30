prompt --application/pages/page_00086
begin
--   Manifest
--     PAGE: 00086
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
 p_id=>86
,p_name=>'Product Expense Report'
,p_alias=>'PRODUCT-EXPENSE-REPORT'
,p_step_title=>'Product Expense Report'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'18'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15061448444553415)
,p_plug_name=>'Product Expense List'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>30
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(8844752761706655)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(24296029559031362)
,p_plug_name=>'Product Expense Report'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ROWID,',
'       PURCHASE_ID,',
'       PURCHASE_DATE,',
'       PRODUCT_ID,',
'       QUANTITY,',
'       UOM_ID,',
'       UNIT_PRICE,',
'       TOTAL_PRICE,',
'       USER_ID,',
'       ENTER_DATE,',
'       LAST_UPDATE,',
'       LAST_UPDATE_DATE',
'  from T3_PRODUCT_PURCHASE',
' where purchase_date= to_date(:P86_DATEPICKER,''MM/DD/YYYY'')'))
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Product Expense Report'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_worksheet(
 p_id=>wwv_flow_imp.id(24296206429031362)
,p_name=>'Product Expense Report'
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
,p_detail_link=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:RP,:P85_PURCHASE_ID,P85_ROWID:#PURCHASE_ID#,#ROWID#'
,p_detail_link_text=>'<span role="img" aria-label="Edit" class="fa fa-edit" title="Edit"></span>'
,p_owner=>'TAHSIN'
,p_internal_uid=>24296206429031362
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24296857180031364)
,p_db_column_name=>'PURCHASE_ID'
,p_display_order=>0
,p_is_primary_key=>'Y'
,p_column_identifier=>'A'
,p_column_label=>'Purchase ID'
,p_column_type=>'NUMBER'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24297293212031364)
,p_db_column_name=>'PURCHASE_DATE'
,p_display_order=>20
,p_column_identifier=>'B'
,p_column_label=>'Purchase Date'
,p_column_type=>'DATE'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24298079017031365)
,p_db_column_name=>'QUANTITY'
,p_display_order=>30
,p_column_identifier=>'D'
,p_column_label=>'Quantity'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(23934694472878670)
,p_db_column_name=>'PRODUCT_ID'
,p_display_order=>40
,p_column_identifier=>'M'
,p_column_label=>'Product Name'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(13688506426377956)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24298511044031365)
,p_db_column_name=>'UOM_ID'
,p_display_order=>50
,p_column_identifier=>'E'
,p_column_label=>'Uom Code'
,p_column_type=>'NUMBER'
,p_display_text_as=>'LOV_ESCAPE_SC'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_rpt_named_lov=>wwv_flow_imp.id(13699928696400415)
,p_rpt_show_filter_lov=>'1'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24298881038031366)
,p_db_column_name=>'UNIT_PRICE'
,p_display_order=>60
,p_column_identifier=>'F'
,p_column_label=>'Unit Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24299266924031366)
,p_db_column_name=>'TOTAL_PRICE'
,p_display_order=>70
,p_column_identifier=>'G'
,p_column_label=>'Total Price'
,p_column_type=>'NUMBER'
,p_heading_alignment=>'RIGHT'
,p_column_alignment=>'RIGHT'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24299695960031366)
,p_db_column_name=>'USER_ID'
,p_display_order=>80
,p_column_identifier=>'H'
,p_column_label=>'User ID'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24300101475031367)
,p_db_column_name=>'ENTER_DATE'
,p_display_order=>90
,p_column_identifier=>'I'
,p_column_label=>'Enter Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24300509705031367)
,p_db_column_name=>'LAST_UPDATE'
,p_display_order=>100
,p_column_identifier=>'J'
,p_column_label=>'Last Update'
,p_column_type=>'STRING'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(24300872715031367)
,p_db_column_name=>'LAST_UPDATE_DATE'
,p_display_order=>110
,p_column_identifier=>'K'
,p_column_label=>'Last Update Date'
,p_column_type=>'DATE'
,p_display_text_as=>'HIDDEN_ESCAPE_SC'
,p_tz_dependent=>'N'
);
wwv_flow_imp_page.create_worksheet_column(
 p_id=>wwv_flow_imp.id(13985912470280337)
,p_db_column_name=>'ROWID'
,p_display_order=>120
,p_column_identifier=>'N'
,p_column_label=>'Rowid'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_heading_alignment=>'LEFT'
,p_rpt_show_filter_lov=>'N'
,p_use_as_row_header=>'N'
);
wwv_flow_imp_page.create_worksheet_rpt(
 p_id=>wwv_flow_imp.id(24302829352034551)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'106102'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'PURCHASE_DATE:PRODUCT_ID:QUANTITY:UOM_ID:UNIT_PRICE:TOTAL_PRICE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13697830794400410)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(24296029559031362)
,p_button_name=>'CREATE'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_redirect_url=>'f?p=&APP_ID.:85:&SESSION.::&DEBUG.:85:P85_PURCHASE_ID,P85_ROWID:&P85_PURCHASE_ID.,&P85_ROWID.'
,p_grid_new_row=>'Y'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(13985688276280334)
,p_name=>'P86_DATEPICKER'
,p_item_sequence=>10
,p_prompt=>'Select Date'
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
 p_id=>wwv_flow_imp.id(13698488891400411)
,p_name=>'Edit Report - Dialog Closed'
,p_event_sequence=>10
,p_triggering_element_type=>'REGION'
,p_triggering_region_id=>wwv_flow_imp.id(24296029559031362)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'apexafterclosedialog'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13698977284400413)
,p_event_id=>wwv_flow_imp.id(13698488891400411)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_name=>'Refresh'
,p_action=>'NATIVE_REFRESH'
,p_affected_elements_type=>'REGION'
,p_affected_region_id=>wwv_flow_imp.id(24296029559031362)
,p_attribute_01=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(13985768579280335)
,p_name=>'loadbydate'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P86_DATEPICKER'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'change'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(13985866569280336)
,p_event_id=>wwv_flow_imp.id(13985768579280335)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_imp.component_end;
end;
/
