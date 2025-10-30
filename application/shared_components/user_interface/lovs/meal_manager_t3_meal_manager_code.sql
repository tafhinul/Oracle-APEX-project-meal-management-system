prompt --application/shared_components/user_interface/lovs/meal_manager_t3_meal_manager_code
begin
--   Manifest
--     MEAL_MANAGER_T3.MEAL_MANAGER_CODE
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
 p_id=>wwv_flow_imp.id(9647321473000547)
,p_lov_name=>'MEAL_MANAGER_T3.MEAL_MANAGER_CODE'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'MEAL_MANAGER_T3'
,p_return_column_name=>'MEAL_MANAGER_CODE'
,p_default_sort_column_name=>'MEAL_MANAGER_CODE'
,p_default_sort_direction=>'ASC'
,p_version_scn=>18203341
);
wwv_flow_imp.component_end;
end;
/
