prompt --application/shared_components/user_interface/lovs/t3_products_product_name1
begin
--   Manifest
--     T3_PRODUCTS.PRODUCT_NAME1
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
 p_id=>wwv_flow_imp.id(13699303104400414)
,p_lov_name=>'T3_PRODUCTS.PRODUCT_NAME1'
,p_source_type=>'TABLE'
,p_location=>'LOCAL'
,p_query_table=>'T3_PRODUCTS'
,p_return_column_name=>'PRODUCT_ID'
,p_display_column_name=>'PRODUCT_NAME'
,p_default_sort_column_name=>'PRODUCT_NAME'
,p_default_sort_direction=>'ASC'
,p_version_scn=>20688802
);
wwv_flow_imp.component_end;
end;
/
