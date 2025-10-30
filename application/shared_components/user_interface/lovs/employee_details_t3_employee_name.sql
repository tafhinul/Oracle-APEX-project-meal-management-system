prompt --application/shared_components/user_interface/lovs/employee_details_t3_employee_name
begin
--   Manifest
--     EMPLOYEE_DETAILS_T3.EMPLOYEE_NAME
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_list_of_values(
 p_id=>wwv_flow_imp.id(9571341371849802)
,p_lov_name=>'EMPLOYEE_DETAILS_T3.EMPLOYEE_NAME'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'EMPLOYEE_DETAILS_T3'
,p_return_column_name=>'EMP_CODE'
,p_display_column_name=>'EMPLOYEE_NAME'
,p_default_sort_column_name=>'EMPLOYEE_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>18194230
);
wwv_flow_imp.component_end;
end;
/
