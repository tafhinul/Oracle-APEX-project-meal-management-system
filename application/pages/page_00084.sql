prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
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
 p_id=>84
,p_name=>'All products'
,p_alias=>'ALL-PRODUCTS'
,p_step_title=>'All products'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'23'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(14684294111603413)
,p_plug_name=>'Breadcrumb'
,p_region_template_options=>'#DEFAULT#:t-BreadcrumbRegion--useBreadcrumbTitle'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2531463326621247859
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_menu_id=>wwv_flow_imp.id(8844752761706655)
,p_plug_source_type=>'NATIVE_BREADCRUMB'
,p_menu_template_id=>4072363345357175094
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(23546660196156176)
,p_plug_name=>'All products'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_new_grid_column=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select rowid,',
'       PRODUCT_ID,',
'       PRODUCT_NAME,',
'       UOM_ID,',
'       --USER_ID,',
'       ENTER_DATE,',
'       LAST_UPDATE,',
'       LAST_UPDATE_DATE',
'  from T3_PRODUCTS'))
,p_query_order_by_type=>'ITEM'
,p_query_order_by=>'{"orderBys":[{"key":"PRODUCT_NAME","expr":"\"PRODUCT_NAME\" asc"}],"itemName":"P84_ORDER_BY"}'
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
,p_pagination_display_position=>'BOTTOM_RIGHT'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(13667648253272888)
,p_region_id=>wwv_flow_imp.id(23546660196156176)
,p_layout_type=>'GRID'
,p_title_adv_formatting=>false
,p_title_column_name=>'PRODUCT_NAME'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_second_body_adv_formatting=>false
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_card_action(
 p_id=>wwv_flow_imp.id(13668132274272889)
,p_card_id=>wwv_flow_imp.id(13667648253272888)
,p_action_type=>'BUTTON'
,p_position=>'PRIMARY'
,p_display_sequence=>10
,p_label=>'Edit '
,p_link_target_type=>'REDIRECT_PAGE'
,p_link_target=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.::P83_PRODUCT_ID,P83_ROWID:&PRODUCT_ID.,&ROWID.'
,p_button_display_type=>'TEXT'
,p_is_hot=>true
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13668714847272890)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_imp.id(23546660196156176)
,p_button_name=>'Create'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Create'
,p_button_position=>'BELOW_BOX'
,p_button_alignment=>'RIGHT'
,p_button_redirect_url=>'f?p=&APP_ID.:83:&SESSION.::&DEBUG.:::'
);
wwv_flow_imp_page.create_page_item(
 p_id=>wwv_flow_imp.id(23550210940156193)
,p_name=>'P84_ORDER_BY'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_imp.id(23546660196156176)
,p_item_display_point=>'ORDER_BY_ITEM'
,p_item_default=>'PRODUCT_NAME'
,p_prompt=>'Order By'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC2:Product Name;PRODUCT_NAME'
,p_cHeight=>1
,p_field_template=>2318601014859922299
,p_item_template_options=>'#DEFAULT#'
,p_warn_on_unsaved_changes=>'I'
,p_lov_display_extra=>'NO'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'page_action_on_selection', 'NONE')).to_clob
);
wwv_flow_imp.component_end;
end;
/
