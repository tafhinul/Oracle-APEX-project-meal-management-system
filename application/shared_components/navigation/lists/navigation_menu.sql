prompt --application/shared_components/navigation/lists/navigation_menu
begin
--   Manifest
--     LIST: Navigation Menu
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_list(
 p_id=>wwv_flow_imp.id(8845205580706657)
,p_name=>'Navigation Menu'
,p_list_status=>'PUBLIC'
,p_version_scn=>52194234
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(8856967327706741)
,p_list_item_display_sequence=>10
,p_list_item_link_text=>'Home'
,p_list_item_link_target=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-home'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(11687413480073037)
,p_list_item_display_sequence=>70
,p_list_item_link_text=>'Employee Attendance Report'
,p_list_item_link_target=>'f?p=&APP_ID.:14:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-users-alt'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'14,15'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(12631734044022100)
,p_list_item_display_sequence=>100
,p_list_item_link_text=>'Guest attend'
,p_list_item_link_target=>'f?p=&APP_ID.:26:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-fighter-jet'
,p_parent_list_item_id=>wwv_flow_imp.id(11687413480073037)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'26,27'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13191925336647756)
,p_list_item_display_sequence=>110
,p_list_item_link_text=>'daily attendance'
,p_list_item_link_target=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-check-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'2'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13471471816536620)
,p_list_item_display_sequence=>120
,p_list_item_link_text=>'UOM Information'
,p_list_item_link_target=>'f?p=&APP_ID.:82:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-layout-grid-3x'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'82'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13693045744400332)
,p_list_item_display_sequence=>140
,p_list_item_link_text=>'Product Expense'
,p_list_item_link_target=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cash-register'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'86'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13666916273272884)
,p_list_item_display_sequence=>130
,p_list_item_link_text=>'All Products'
,p_list_item_link_target=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-full'
,p_parent_list_item_id=>wwv_flow_imp.id(13693045744400332)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'84'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13722612480945875)
,p_list_item_display_sequence=>200
,p_list_item_link_text=>'Purchase Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cart-magnifying-glass'
,p_parent_list_item_id=>wwv_flow_imp.id(13693045744400332)
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'87'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13702611328447870)
,p_list_item_display_sequence=>160
,p_list_item_link_text=>'Daily Meal Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-list'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13703273100459680)
,p_list_item_display_sequence=>170
,p_list_item_link_text=>'Daily  Audit'
,p_list_item_link_target=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-clipboard-chart '
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13703645689467861)
,p_list_item_display_sequence=>180
,p_list_item_link_text=>'Meal Manager'
,p_list_item_link_target=>'f?p=&APP_ID.:49:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-user-circle-o'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13704092993476133)
,p_list_item_display_sequence=>190
,p_list_item_link_text=>'Monthly Budget'
,p_list_item_link_target=>'f?p=&APP_ID.:41:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-calculator'
,p_list_item_current_type=>'TARGET_PAGE'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(13787684406014459)
,p_list_item_display_sequence=>210
,p_list_item_link_text=>'Menu Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.::::'
,p_list_item_icon=>'fa-cutlery'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'89'
);
wwv_flow_imp_shared.create_list_item(
 p_id=>wwv_flow_imp.id(14797392211137449)
,p_list_item_display_sequence=>240
,p_list_item_link_text=>'Employee Meal Summary'
,p_list_item_link_target=>'f?p=&APP_ID.:187:&APP_SESSION.::&DEBUG.:::'
,p_list_item_icon=>'fa-calendar-o'
,p_list_item_current_type=>'COLON_DELIMITED_PAGE_LIST'
,p_list_item_current_for_pages=>'187'
);
wwv_flow_imp.component_end;
end;
/
