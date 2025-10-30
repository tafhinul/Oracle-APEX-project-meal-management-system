prompt --application/pages/page_00042
begin
--   Manifest
--     PAGE: 00042
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
 p_id=>42
,p_name=>'Monthly budget form'
,p_alias=>'MONTHLY-BUDGET-FORM'
,p_page_mode=>'MODAL'
,p_step_title=>'Monthly budget form'
,p_autocomplete_on_off=>'OFF'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'f?p=111:42',
''))
,p_step_template=>1661186590416509825
,p_page_template_options=>'#DEFAULT#:js-dialog-class-t-Drawer--pullOutEnd'
,p_dialog_chained=>'N'
,p_dialog_resizable=>'Y'
,p_page_component_map=>'02'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11831397392755032)
,p_plug_name=>'Monthly budget form'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>4501440665235496320
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
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(11839395156755059)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>20
,p_plug_display_point=>'REGION_POSITION_03'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'TEXT',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11839731058755060)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(11839395156755059)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_image_alt=>'Cancel'
,p_button_position=>'CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.:41::'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11841160323755061)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(11839395156755059)
,p_button_name=>'DELETE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Delete'
,p_button_position=>'DELETE'
,p_button_execute_validations=>'N'
,p_confirm_message=>'&APP_TEXT$DELETE_MSG!RAW.'
,p_confirm_style=>'danger'
,p_button_condition=>'P42_BUDGET_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11841518452755061)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_imp.id(11839395156755059)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Apply Changes'
,p_button_position=>'NEXT'
,p_button_condition=>'P42_BUDGET_ID'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(11841923461755061)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_imp.id(11839395156755059)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'NEXT'
,p_button_condition=>'P42_BUDGET_ID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11834459798755039)
,p_name=>'P42_USER_ID'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>100
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'USER_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11834894835755040)
,p_name=>'P42_ENTER_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>110
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'ENTER_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11835228616755044)
,p_name=>'P42_LAST_UPDATE'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'LAST_UPDATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(11835690643755048)
,p_name=>'P42_LAST_UPDATE_DATE'
,p_source_data_type=>'DATE'
,p_item_sequence=>130
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'LAST_UPDATE_DATE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687469845603445)
,p_name=>'P42_BUDGET_ID'
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'BUDGET_ID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687516622603446)
,p_name=>'P42_YEAR_MONTH'
,p_source_data_type=>'DATE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_prompt=>'Year Month'
,p_format_mask=>'MM/YYYY'
,p_source=>'YEAR_MONTH'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_APEX'
,p_cSize=>32
,p_field_template=>1609122147107268652
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687657436603447)
,p_name=>'P42_ON_ROLL_EMPLOYEES'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_source=>'ON_ROLL_EMPLOYEES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687790544603448)
,p_name=>'P42_EMP_CONTRIBUTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_prompt=>'Emp Contribution'
,p_source=>'EMP_CONTRIBUTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687898425603449)
,p_name=>'P42_COMPANY_CONTRIBUTION'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_prompt=>'Company Contribution'
,p_source=>'COMPANY_CONTRIBUTION'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>255
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(14687946646603450)
,p_name=>'P42_TOTAL_BUDGET'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_item_source_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_prompt=>'Total Budget'
,p_source=>'TOTAL_BUDGET'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15361774693434303)
,p_name=>'P42_EMP_AMOUNT'
,p_item_sequence=>120
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_prompt=>'Emp contribution per employee'
,p_source=>'500'
,p_source_type=>'STATIC'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_read_only_when_type=>'ALWAYS'
,p_field_template=>1609121967514267634
,p_item_template_options=>'#DEFAULT#'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'number_alignment', 'left',
  'virtual_keyboard', 'decimal')).to_clob
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(15361896487434304)
,p_name=>'P42_EMP_COUNT'
,p_item_sequence=>90
,p_item_plug_id=>wwv_flow_imp.id(11831397392755032)
,p_display_as=>'NATIVE_HIDDEN'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'N')).to_clob
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11839810044755060)
,p_name=>'Cancel Dialog'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_imp.id(11839731058755060)
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'click'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11840630889755060)
,p_event_id=>wwv_flow_imp.id(11839810044755060)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_DIALOG_CANCEL'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11029787444951548)
,p_name=>'New'
,p_event_sequence=>20
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_EMP_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11029812681951549)
,p_event_id=>wwv_flow_imp.id(11029787444951548)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_TOTAL_BUDGET'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseFloat($v("P42_EMP_CONTRIBUTION")||0) + parseFloat($v("P42_COMPANY_CONTRIBUTION")||0)'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11029932777951550)
,p_name=>'New_1'
,p_event_sequence=>30
,p_triggering_element_type=>'ITEM'
,p_triggering_element=>'P42_COMPANY_CONTRIBUTION'
,p_bind_type=>'bind'
,p_execution_type=>'IMMEDIATE'
,p_bind_event_type=>'keyup'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11852652460779301)
,p_event_id=>wwv_flow_imp.id(11029932777951550)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'Y'
,p_action=>'NATIVE_SET_VALUE'
,p_affected_elements_type=>'ITEM'
,p_affected_elements=>'P42_TOTAL_BUDGET'
,p_attribute_01=>'JAVASCRIPT_EXPRESSION'
,p_attribute_05=>'parseFloat($v("P42_EMP_CONTRIBUTION")||0) + parseFloat($v("P42_COMPANY_CONTRIBUTION")||0)'
,p_attribute_09=>'N'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_da_event(
 p_id=>wwv_flow_imp.id(11853966403779314)
,p_name=>'Employee_Contribution'
,p_event_sequence=>40
,p_bind_type=>'bind'
,p_bind_event_type=>'ready'
);
wwv_flow_imp_page.create_page_da_action(
 p_id=>wwv_flow_imp.id(11854058660779315)
,p_event_id=>wwv_flow_imp.id(11853966403779314)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>wwv_flow_string.join(wwv_flow_t_varchar2(
'DECLARE',
'            v_emp_count NUMBER;',
'        BEGIN',
'            SELECT COUNT(*)',
'            INTO v_emp_count',
'            FROM employee_details_t3',
'            WHERE on_roll_flag = ''Y''',
'              AND status NOT IN (''RETIRED'', ''RESIGNED'');',
'        ',
'            :P42_EMP_COUNT := v_emp_count;',
'            :P42_EMP_CONTRIBUTION := v_emp_count * :P42_EMP_AMOUNT;',
'        END;',
'        ',
''))
,p_attribute_02=>'P42_EMP_AMOUNT'
,p_attribute_03=>'P42_EMP_COUNT,P42_EMP_CONTRIBUTION'
,p_attribute_04=>'N'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(15361637505434302)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Auto generate'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'declare',
'        v_no number;',
'      begin',
'         select nvl(max(budget_id),0)+1 into v_no from t3_monthly_budget;',
'         :P42_BUDGET_ID:=v_no;',
'      exception when others then',
'         :P42_BUDGET_ID:=1;',
'      end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(11841923461755061)
,p_internal_uid=>15361637505434302
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11842717487755062)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(11831397392755032)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Monthly budget form'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11842717487755062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11843194123755062)
,p_process_sequence=>40
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_CLOSE_WINDOW'
,p_process_name=>'Close Dialog'
,p_attribute_02=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when=>'CREATE,SAVE,DELETE'
,p_process_when_type=>'REQUEST_IN_CONDITION'
,p_internal_uid=>11843194123755062
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(11842342204755062)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_imp.id(11831397392755032)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Monthly budget form'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_internal_uid=>11842342204755062
);
wwv_flow_imp.component_end;
end;
/
