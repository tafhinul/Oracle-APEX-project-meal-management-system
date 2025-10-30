prompt --application/shared_components/user_interface/lovs/uom_code1
begin
--   Manifest
--     UOM_CODE1
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
 p_id=>wwv_flow_imp.id(13735159566945946)
,p_lov_name=>'UOM_CODE1'
,p_lov_query=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT uom_code AS display_value,',
'       uom_id AS return_value',
'FROM t3_uom',
'ORDER BY 1'))
,p_source_type=>'SQL'
,p_location=>'LOCAL'
,p_return_column_name=>'RETURN_VALUE'
,p_display_column_name=>'DISPLAY_VALUE'
,p_version_scn=>20723417
);
wwv_flow_imp.component_end;
end;
/
