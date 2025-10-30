prompt --application/pages/page_00001
begin
--   Manifest
--     PAGE: 00001
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
 p_id=>1
,p_name=>'Home'
,p_alias=>'HOME'
,p_step_title=>'Team 3'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_page_component_map=>'13'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(8857847665706744)
,p_plug_name=>'Team 3'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_display_point=>'REGION_POSITION_01'
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(13986816847280346)
,p_plug_name=>'Audit Summary Dashboard'
,p_title=>'Dashboard'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_location=>null
,p_attributes=>wwv_flow_t_plugin_attributes(wwv_flow_t_varchar2(
  'expand_shortcuts', 'N',
  'output_as', 'HTML')).to_clob
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15393439659644016)
,p_plug_name=>'Total Budget'
,p_title=>'Total Budget'
,p_parent_plug_id=>wwv_flow_imp.id(13986816847280346)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_component_template_options=>'#DEFAULT#'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>10
,p_plug_grid_column_span=>3
,p_plug_display_column=>1
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Total Budget'' as card_title,',
'      sum(TOTAL_BUDGET) as card_text,',
'       ''fa-money'' as card_icon -- Example icon, choose a relevant one',
'  from T3_DAILY_AUDIT',
'WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(15393512093644017)
,p_region_id=>wwv_flow_imp.id(15393439659644016)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_TEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_css_classes=>'fa-money-bag'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15393674943644018)
,p_plug_name=>'Remaining '
,p_title=>'Remaining '
,p_parent_plug_id=>wwv_flow_imp.id(13986816847280346)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>20
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Remaining'' as card_title,',
'      sum (REMAINING_BUDGET) as card_text,',
'       ''fa-balance-scale'' as card_icon',
'  from T3_DAILY_AUDIT',
'  WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(15393950967644021)
,p_region_id=>wwv_flow_imp.id(15393674943644018)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_TEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_css_classes=>'fa-hourglass-2'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15393773815644019)
,p_plug_name=>'Total Expense'
,p_parent_plug_id=>wwv_flow_imp.id(13986816847280346)
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>30
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Total Expense'' as card_title,',
'       sum(TOTAL_EXPENSE) as card_text,',
'       ''fa-credit-card'' as card_icon',
'  from T3_DAILY_AUDIT',
'  WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(15394042829644022)
,p_region_id=>wwv_flow_imp.id(15393773815644019)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_TEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_css_classes=>'fa-badge-dollar'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15393835967644020)
,p_plug_name=>'Extra Deduction'
,p_parent_plug_id=>wwv_flow_imp.id(13986816847280346)
,p_icon_css_classes=>'fa-coins'
,p_region_template_options=>'#DEFAULT#:t-CardsRegion--hideHeader js-addHiddenHeadingRoleDesc'
,p_plug_template=>2072724515482255512
,p_plug_display_sequence=>40
,p_plug_new_grid_row=>false
,p_plug_grid_column_span=>3
,p_plug_display_point=>'SUB_REGIONS'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'select ''Extra Deduction'' as card_title,',
'       sum(EXTRA_DEDUCTION) as card_text,',
'       ''fa-minus-circle'' as card_icon',
'  from T3_DAILY_AUDIT',
'  WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)'))
,p_lazy_loading=>false
,p_plug_source_type=>'NATIVE_CARDS'
,p_plug_query_num_rows_type=>'SCROLL'
,p_show_total_row_count=>false
);
wwv_flow_imp_page.create_card(
 p_id=>wwv_flow_imp.id(15394174827644023)
,p_region_id=>wwv_flow_imp.id(15393835967644020)
,p_layout_type=>'ROW'
,p_title_adv_formatting=>false
,p_title_column_name=>'CARD_TITLE'
,p_sub_title_adv_formatting=>false
,p_body_adv_formatting=>false
,p_body_column_name=>'CARD_TEXT'
,p_second_body_adv_formatting=>false
,p_icon_source_type=>'DYNAMIC_CLASS'
,p_icon_class_column_name=>'CARD_ICON'
,p_icon_css_classes=>'fa-coins'
,p_icon_position=>'START'
,p_media_adv_formatting=>false
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15394774698644029)
,p_plug_name=>'Purchase Summary'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>20
,p_location=>null
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15394897548644030)
,p_region_id=>wwv_flow_imp.id(15394774698644029)
,p_chart_type=>'bar'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'off'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_time_axis_type=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15394906007644031)
,p_chart_id=>wwv_flow_imp.id(15394897548644030)
,p_seq=>10
,p_name=>'Purchase Summary'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    TO_CHAR(PURCHASE_DATE, ''DD-Mon-YYYY'') AS FORMATTED_PURCHASE_DATE, ',
'    TOTAL_PRODUCTS_COST AS PRODUCT_COST_PER_DAY -- Assuming Product Cost Per Day is now just the total cost',
'FROM',
'    T3_PURCHASE_SUMMARY ',
'ORDER BY',
'    PURCHASE_DATE ASC'))
,p_items_value_column_name=>'PRODUCT_COST_PER_DAY'
,p_items_label_column_name=>'FORMATTED_PURCHASE_DATE'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15395053657644032)
,p_chart_id=>wwv_flow_imp.id(15394897548644030)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Purchase Date'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15395137499644033)
,p_chart_id=>wwv_flow_imp.id(15394897548644030)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Product Cost Per day'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15395896108644040)
,p_plug_name=>'Meal Track'
,p_title=>'Meal Track'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>40
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    to_char(MEAL_DATE, ''DD Mon YYYY'') As formatedDate,',
'    TOTAL_MEALS as Total_Meals_Taken',
'FROM',
'    T3_DAILY_MEAL_SUMMARY',
'ORDER BY',
'    MEAL_DATE ASC',
'',
'   '))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15395929272644041)
,p_region_id=>wwv_flow_imp.id(15395896108644040)
,p_chart_type=>'lineWithArea'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_orientation=>'vertical'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_stack=>'on'
,p_connect_nulls=>'Y'
,p_sorting=>'label-asc'
,p_fill_multi_series_gaps=>true
,p_zoom_and_scroll=>'off'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_group_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_time_axis_type=>'auto'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15396003155644042)
,p_chart_id=>wwv_flow_imp.id(15395929272644041)
,p_seq=>10
,p_name=>'Meal Track'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    to_char(MEAL_DATE, ''DD-Mon-YYYY'') As Meal_Date,',
'    TOTAL_MEALS as Total_Meals_Taken',
'FROM',
'    T3_DAILY_MEAL_SUMMARY',
'ORDER BY',
'    MEAL_DATE ASC',
'',
'   '))
,p_items_value_column_name=>'TOTAL_MEALS_TAKEN'
,p_items_label_column_name=>'MEAL_DATE'
,p_color=>'#063e1b'
,p_line_style=>'solid'
,p_line_type=>'auto'
,p_marker_rendered=>'auto'
,p_marker_shape=>'auto'
,p_assigned_to_y2=>'off'
,p_items_label_rendered=>false
,p_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_link_target_type=>'REDIRECT_PAGE'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15396484920644046)
,p_chart_id=>wwv_flow_imp.id(15395929272644041)
,p_axis=>'y'
,p_is_rendered=>'on'
,p_title=>'Meals Taken Perday'
,p_format_type=>'decimal'
,p_decimal_places=>0
,p_format_scaling=>'none'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15396367769644045)
,p_chart_id=>wwv_flow_imp.id(15395929272644041)
,p_axis=>'x'
,p_is_rendered=>'on'
,p_title=>'Meal Date'
,p_title_font_color=>'#1c4d33'
,p_format_type=>'date-short'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_major_tick_rendered=>'auto'
,p_minor_tick_rendered=>'on'
,p_tick_label_rendered=>'on'
,p_tick_label_rotation=>'auto'
,p_tick_label_position=>'outside'
);
wwv_flow_imp_page.create_jet_chart_axis(
 p_id=>wwv_flow_imp.id(15396548964644047)
,p_chart_id=>wwv_flow_imp.id(15395929272644041)
,p_axis=>'y2'
,p_is_rendered=>'off'
,p_format_scaling=>'auto'
,p_scaling=>'linear'
,p_baseline_scaling=>'zero'
,p_position=>'auto'
,p_major_tick_rendered=>'on'
,p_minor_tick_rendered=>'off'
,p_tick_label_rendered=>'on'
,p_split_dual_y=>'auto'
);
wwv_flow_imp_page.create_page_plug(
 p_id=>wwv_flow_imp.id(15396649158644048)
,p_plug_name=>'Financial Overview'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_component_template_options=>'#DEFAULT#'
,p_escape_on_http_output=>'Y'
,p_plug_template=>4072358936313175081
,p_plug_display_sequence=>50
,p_plug_new_grid_row=>false
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    label,',
'    value',
'FROM',
'(',
'    SELECT',
'        ''Total Budget'' AS label,',
'        TOTAL_BUDGET AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT) -- Gets the latest audit entry',
'    UNION ALL',
'    SELECT',
'        ''Remaining Budget'' AS label,',
'        REMAINING_BUDGET AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
'    UNION ALL',
'    SELECT',
'        ''Total Expense'' AS label,',
'        TOTAL_EXPENSE AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
'    UNION ALL',
'    SELECT',
'        ''Extra Deduction'' AS label,',
'        EXTRA_DEDUCTION AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
')',
'WHERE value IS NOT NULL AND value > 0 -- Optional: exclude zero/null values from slices'))
,p_plug_source_type=>'NATIVE_JET_CHART'
);
wwv_flow_imp_page.create_jet_chart(
 p_id=>wwv_flow_imp.id(15396717996644049)
,p_region_id=>wwv_flow_imp.id(15396649158644048)
,p_chart_type=>'donut'
,p_title=>'Transaction Overview'
,p_height=>'400'
,p_animation_on_display=>'auto'
,p_animation_on_data_change=>'auto'
,p_data_cursor=>'auto'
,p_data_cursor_behavior=>'auto'
,p_hover_behavior=>'dim'
,p_value_format_type=>'decimal'
,p_value_decimal_places=>0
,p_value_format_scaling=>'none'
,p_tooltip_rendered=>'Y'
,p_show_series_name=>true
,p_show_value=>true
,p_legend_rendered=>'off'
,p_pie_other_threshold=>0
,p_pie_selection_effect=>'highlight'
);
wwv_flow_imp_page.create_jet_chart_series(
 p_id=>wwv_flow_imp.id(15396807548644050)
,p_chart_id=>wwv_flow_imp.id(15396717996644049)
,p_seq=>10
,p_name=>'Financial Overview'
,p_data_source_type=>'SQL'
,p_data_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT',
'    label,',
'    value',
'FROM',
'(',
'    SELECT',
'        ''Total Budget'' AS label,',
'        TOTAL_BUDGET AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT) -- Gets the latest audit entry',
'    UNION ALL',
'    SELECT',
'        ''Remaining Budget'' AS label,',
'        REMAINING_BUDGET AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
'    UNION ALL',
'    SELECT',
'        ''Total Expense'' AS label,',
'        TOTAL_EXPENSE AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
'    UNION ALL',
'    SELECT',
'        ''Extra Deduction'' AS label,',
'        EXTRA_DEDUCTION AS value',
'    FROM T3_DAILY_AUDIT',
'    WHERE AUDIT_DATE = (SELECT MAX(AUDIT_DATE) FROM T3_DAILY_AUDIT)',
')',
'WHERE value IS NOT NULL AND value > 0 -- Optional: exclude zero/null values from slices'))
,p_items_value_column_name=>'VALUE'
,p_items_label_column_name=>'LABEL'
,p_items_label_rendered=>true
,p_items_label_position=>'outsideSlice'
,p_items_label_display_as=>'LBL_PCT'
);
wwv_flow_imp.component_end;
end;
/
