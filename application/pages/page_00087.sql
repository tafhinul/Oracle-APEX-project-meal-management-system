prompt --application/pages/page_00087
begin
--   Manifest
--     PAGE: 00087
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
 p_id=>87
,p_name=>'Purchase Summary'
,p_alias=>'PURCHASE-SUMMARY'
,p_step_title=>'Purchase Summary'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'21'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15061604957553417)
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
 p_id=>wwv_flow_imp.id(25766434502900762)
,p_plug_name=>'Buttons'
,p_region_template_options=>'#DEFAULT#:t-ButtonRegion--noPadding:t-ButtonRegion--noUI'
,p_plug_template=>2126429139436695430
,p_plug_display_sequence=>10
,p_ai_enabled=>false
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML',
  'show_line_breaks', 'Y')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25767213444900769)
,p_plug_name=>'Purchase Summary'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>20
,p_query_type=>'TABLE'
,p_query_table=>'T3_PURCHASE_SUMMARY'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_prn_page_header=>'Purchase Summary'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25768557887900772)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25769046084900773)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25770057839900852)
,p_name=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DATE_PICKER_APEX'
,p_heading=>'Purchase Date'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>30
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'appearance_and_behavior', 'MONTH-PICKER:YEAR-PICKER:TODAY-BUTTON',
  'days_outside_month', 'VISIBLE',
  'display_as', 'POPUP',
  'max_date', 'NONE',
  'min_date', 'NONE',
  'multiple_months', 'N',
  'show_on', 'FOCUS',
  'show_time', 'N',
  'use_defaults', 'Y')).to_clob
,p_is_required=>true
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_date_ranges=>'ALL'
,p_filter_lov_type=>'DISTINCT'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25770977979900853)
,p_name=>'PURCHASE_DATE_LINK'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE_LINK'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_enable_filter=>false
,p_enable_hide=>true
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25771949931900854)
,p_name=>'TOTAL_PRODUCTS'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PRODUCTS'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total Products'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25772990716900855)
,p_name=>'TOTAL_PRODUCTS_COST'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PRODUCTS_COST'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total Products Cost'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25767768834900770)
,p_internal_uid=>25767768834900770
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
,p_javascript_code=>wwv_flow_string.join(wwv_flow_t_varchar2(
'function(config) {',
'    let $ = apex.jQuery,',
'        toolbarData = $.apex.interactiveGrid.copyDefaultToolbar(),     // copy the whole toolbar',
'        // remove toolbar 2,3',
'        toolbarGroup = toolbarData.toolbarRemove("actions2");',
'',
'    toolbarGroup = toolbarData.toolbarRemove("actions3");',
'    // this is the group with the action=add row',
'    toolbarGroup = toolbarData.toolbarFind("actions4");',
'',
'    config.defaultGridViewOptions = {',
'        footer: false',
'    };',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        action: "save",',
'        label: "Save",',
'        icon: "icon-ig-save-as",  //FontAwesome icon: "icon-ig-save-row",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        action: ''addRow'',// "save_and_add_row",',
'        // action: ''selection-add-row'',// "save_and_add_row",',
'        label: "Add Row",',
'        icon: "icon-ig-add-row", // "icon-ig-save-as",  //FontAwesome icon: "icon-ig-save-row",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'',
'    toolbarGroup.controls.push({',
'        type: "BUTTON",',
'        action: "selection-delete",// ''delete_row'', //"selection-delete",',
'        label:''Delete'',',
'        icon: "icon-ig-delete",      // alternative FontAwesome icon: "fa fa-trash",',
'        iconBeforeLabel: true,',
'        hot: true',
'    });',
'',
'    config.initActions = function (actions) {',
'        actions.add({',
'            name: "save_and_add_row",',
'            action: () => mstDtl({ regionStaticId: config.regionStaticId, childRegionStaticId: ''hs_code_dt'' })',
'        });',
'',
'        actions.add({',
'            name: "delete_row",',
'            action: () => deleteRow({ regionStaticId: config.regionStaticId, childRegionStaticId: ''hs_code_dt'' })',
'        });',
'       ',
'        actions.add({',
'            name: "addRow",',
'            action: () => {',
'                var row$;',
'                var region = apex.region("ENR");',
'                var view = region.call("getCurrentView");',
'',
'                if(view.internalIdentifier === "grid"){',
'                    row$ = region.widget().find(".a-GV-row").last();',
'                    view.view$.grid("setSelection",row$);',
'                    region.call("getActions").invoke("selection-add-row");',
'                }',
'            }',
'        });',
'',
'        actions.remove(''row-delete'');',
'        actions.remove(''row-add-row'');',
'        actions.remove(''selection-duplicate'');',
'    }',
'',
'',
'    config.toolbarData = toolbarData;',
'    return config;',
'}'))
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(25768156737900770)
,p_interactive_grid_id=>wwv_flow_imp.id(25767768834900770)
,p_static_id=>'120458'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25768308305900770)
,p_report_id=>wwv_flow_imp.id(25768156737900770)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25769438155900773)
,p_view_id=>wwv_flow_imp.id(25768308305900770)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(25769046084900773)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25770342385900852)
,p_view_id=>wwv_flow_imp.id(25768308305900770)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(25770057839900852)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25771333930900853)
,p_view_id=>wwv_flow_imp.id(25768308305900770)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(25770977979900853)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25772384915900854)
,p_view_id=>wwv_flow_imp.id(25768308305900770)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(25771949931900854)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25773329435900855)
,p_view_id=>wwv_flow_imp.id(25768308305900770)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(25772990716900855)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(25774202839900858)
,p_plug_name=>'Purchase Details'
,p_region_template_options=>'#DEFAULT#:t-IRR-region--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2100526641005906379
,p_plug_display_sequence=>30
,p_query_type=>'TABLE'
,p_query_table=>'T3_PRODUCT_PURCHASE'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IG'
,p_master_region_id=>wwv_flow_imp.id(25767213444900769)
,p_prn_page_header=>'Purchase Details'
,p_ai_enabled=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25775496205900859)
,p_name=>'APEX$ROW_SELECTOR'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_SELECTOR'
,p_display_sequence=>10
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'enable_multi_select', 'Y',
  'hide_control', 'N',
  'show_select_all', 'Y')).to_clob
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25775998835900860)
,p_name=>'APEX$ROW_ACTION'
,p_session_state_data_type=>'VARCHAR2'
,p_item_type=>'NATIVE_ROW_ACTION'
,p_label=>'Actions'
,p_heading_alignment=>'CENTER'
,p_display_sequence=>20
,p_value_alignment=>'CENTER'
,p_enable_hide=>true
,p_is_primary_key=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25777083381900861)
,p_name=>'PURCHASE_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>30
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>true
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25778036070900862)
,p_name=>'PURCHASE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PURCHASE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>40
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_is_primary_key=>false
,p_parent_column_id=>wwv_flow_imp.id(25770977979900853)
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25779028219900863)
,p_name=>'PRODUCT_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'PRODUCT_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Product Name'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>50
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(13734450253945942)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25780003934900864)
,p_name=>'QUANTITY'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'QUANTITY'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Quantity'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>60
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25781005306900865)
,p_name=>'UOM_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UOM_ID'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Uom '
,p_heading_alignment=>'LEFT'
,p_display_sequence=>70
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'LOV',
  'format', 'PLAIN')).to_clob
,p_lov_type=>'SHARED'
,p_lov_id=>wwv_flow_imp.id(13735159566945946)
,p_lov_display_extra=>true
,p_enable_filter=>true
,p_filter_operators=>'C:S:CASE_INSENSITIVE:REGEXP'
,p_filter_is_required=>false
,p_filter_text_case=>'MIXED'
,p_filter_exact_match=>true
,p_filter_lov_type=>'LOV'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25781998607900866)
,p_name=>'UNIT_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'UNIT_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Unit Price'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>80
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25783017906900867)
,p_name=>'TOTAL_PRICE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'TOTAL_PRICE'
,p_data_type=>'NUMBER'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_DISPLAY_ONLY'
,p_heading=>'Total Price'
,p_heading_alignment=>'LEFT'
,p_display_sequence=>90
,p_value_alignment=>'LEFT'
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'based_on', 'VALUE',
  'format', 'PLAIN')).to_clob
,p_enable_filter=>true
,p_filter_is_required=>false
,p_filter_lov_type=>'NONE'
,p_use_as_row_header=>false
,p_enable_sort_group=>true
,p_enable_control_break=>true
,p_enable_hide=>true
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>true
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25784048627900868)
,p_name=>'USER_ID'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'USER_ID'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>100
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25785052743900868)
,p_name=>'ENTER_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'ENTER_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>110
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25786079816900870)
,p_name=>'LAST_UPDATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE'
,p_data_type=>'VARCHAR2'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>120
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_region_column(
 p_id=>wwv_flow_imp.id(25787046287900870)
,p_name=>'LAST_UPDATE_DATE'
,p_source_type=>'DB_COLUMN'
,p_source_expression=>'LAST_UPDATE_DATE'
,p_data_type=>'DATE'
,p_session_state_data_type=>'VARCHAR2'
,p_is_query_only=>false
,p_item_type=>'NATIVE_HIDDEN'
,p_display_sequence=>130
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'value_protected', 'Y')).to_clob
,p_filter_is_required=>false
,p_use_as_row_header=>false
,p_enable_sort_group=>false
,p_enable_pivot=>false
,p_is_primary_key=>false
,p_duplicate_value=>true
,p_include_in_export=>false
);
wwv_flow_imp_page.create_interactive_grid(
 p_id=>wwv_flow_imp.id(25774777357900859)
,p_internal_uid=>25774777357900859
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_add_row_if_empty=>true
,p_submit_checked_rows=>false
,p_lazy_loading=>false
,p_requires_filter=>false
,p_select_first_row=>true
,p_fixed_row_height=>true
,p_pagination_type=>'SCROLL'
,p_show_total_row_count=>true
,p_show_toolbar=>true
,p_toolbar_buttons=>'SEARCH_COLUMN:SEARCH_FIELD:ACTIONS_MENU:RESET'
,p_enable_save_public_report=>false
,p_enable_subscriptions=>true
,p_enable_flashback=>true
,p_define_chart_view=>true
,p_enable_download=>true
,p_enable_mail_download=>true
,p_fixed_header=>'PAGE'
,p_show_icon_view=>false
,p_show_detail_view=>false
);
wwv_flow_imp_page.create_ig_report(
 p_id=>wwv_flow_imp.id(25775106428900859)
,p_interactive_grid_id=>wwv_flow_imp.id(25774777357900859)
,p_static_id=>'120528'
,p_type=>'PRIMARY'
,p_default_view=>'GRID'
,p_show_row_number=>false
,p_settings_area_expanded=>true
);
wwv_flow_imp_page.create_ig_report_view(
 p_id=>wwv_flow_imp.id(25775384747900859)
,p_report_id=>wwv_flow_imp.id(25775106428900859)
,p_view_type=>'GRID'
,p_srv_exclude_null_values=>false
,p_srv_only_display_columns=>true
,p_edit_mode=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25776431424900860)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>0
,p_column_id=>wwv_flow_imp.id(25775998835900860)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25777421257900862)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>1
,p_column_id=>wwv_flow_imp.id(25777083381900861)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25778468335900863)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>2
,p_column_id=>wwv_flow_imp.id(25778036070900862)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25779474649900864)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>3
,p_column_id=>wwv_flow_imp.id(25779028219900863)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25780466510900864)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>4
,p_column_id=>wwv_flow_imp.id(25780003934900864)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25781474324900865)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>5
,p_column_id=>wwv_flow_imp.id(25781005306900865)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25782429274900866)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>6
,p_column_id=>wwv_flow_imp.id(25781998607900866)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25783440634900867)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>7
,p_column_id=>wwv_flow_imp.id(25783017906900867)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25784424645900868)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>8
,p_column_id=>wwv_flow_imp.id(25784048627900868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25785411037900869)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>9
,p_column_id=>wwv_flow_imp.id(25785052743900868)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25786450766900870)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>10
,p_column_id=>wwv_flow_imp.id(25786079816900870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_ig_report_column(
 p_id=>wwv_flow_imp.id(25787470615900871)
,p_view_id=>wwv_flow_imp.id(25775384747900859)
,p_display_seq=>11
,p_column_id=>wwv_flow_imp.id(25787046287900870)
,p_is_visible=>true
,p_is_frozen=>false
);
wwv_flow_imp_page.create_page_button(
 p_id=>wwv_flow_imp.id(13733863591945938)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_imp.id(25766434502900762)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>4072362960822175091
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Save'
,p_button_position=>'EDIT'
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13726480354945925)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(25767213444900769)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Purchase Summary - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12044432874954896)
,p_internal_uid=>13726480354945925
);
wwv_flow_imp_page.create_page_process(
 p_id=>wwv_flow_imp.id(13733127096945937)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_imp.id(25774202839900858)
,p_process_type=>'NATIVE_IG_DML'
,p_process_name=>'Purchase Details - Save Interactive Grid Data'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_imp.id(12044432874954896)
,p_internal_uid=>13733127096945937
);
wwv_flow_imp.component_end;
end;
/
