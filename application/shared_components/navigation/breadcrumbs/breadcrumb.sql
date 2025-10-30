prompt --application/shared_components/navigation/breadcrumbs/breadcrumb
begin
--   Manifest
--     MENU: Breadcrumb
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_menu(
 p_id=>wwv_flow_imp.id(8844752761706655)
,p_name=>'Breadcrumb'
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(8844948450706655)
,p_short_name=>'Home'
,p_link=>'f?p=&APP_ID.:1:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>1
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10119226338940296)
,p_short_name=>'Daily Meal Summary Report'
,p_link=>'f?p=&APP_ID.:8:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>8
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10120450944940301)
,p_parent_id=>wwv_flow_imp.id(10119226338940296)
,p_short_name=>'Daily Meal Summary Form'
,p_link=>'f?p=&APP_ID.:9:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>9
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(10534055480331892)
,p_short_name=>'employee details report'
,p_link=>'f?p=&APP_ID.:18:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>18
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11692952427073047)
,p_short_name=>'Employee Attendance Report'
,p_link=>'f?p=&APP_ID.:14:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>14
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11694110829073049)
,p_parent_id=>wwv_flow_imp.id(11692952427073047)
,p_short_name=>'Employee Attendance Form'
,p_link=>'f?p=&APP_ID.:15:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>15
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11716122222113067)
,p_short_name=>'Meal Audit'
,p_link=>'f?p=&APP_ID.:39:&SESSION.::&DEBUG.:::'
,p_page_id=>39
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(11850284322755071)
,p_short_name=>'Monthly budget report'
,p_link=>'f?p=&APP_ID.:41:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>41
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(12850231170080372)
,p_short_name=>'Meal Manager Report'
,p_link=>'f?p=&APP_ID.:49:&APP_SESSION.::&DEBUG.:::'
,p_page_id=>49
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15203944679240127)
,p_short_name=>'All Products'
,p_link=>'f?p=&APP_ID.:84:&SESSION.::&DEBUG.:::'
,p_page_id=>84
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15204802207247508)
,p_parent_id=>wwv_flow_imp.id(15203944679240127)
,p_short_name=>'Product Expense'
,p_link=>'f?p=&APP_ID.:86:&SESSION.::&DEBUG.:::'
,p_page_id=>86
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15205519693255782)
,p_parent_id=>wwv_flow_imp.id(15203944679240127)
,p_short_name=>'Purchase Summary'
,p_link=>'f?p=&APP_ID.:87:&SESSION.::&DEBUG.:::'
,p_page_id=>87
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15247329955554774)
,p_short_name=>'Menu Summary'
,p_link=>'f?p=&APP_ID.:89:&SESSION.::&DEBUG.:::'
,p_page_id=>89
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15248455209565157)
,p_short_name=>'Menu Items Entry'
,p_link=>'f?p=&APP_ID.:88:&SESSION.::&DEBUG.:::'
,p_page_id=>88
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15250353461579569)
,p_short_name=>'Employee meal Summary'
,p_link=>'f?p=&APP_ID.:187:&SESSION.::&DEBUG.:::'
,p_page_id=>187
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15252991561601502)
,p_short_name=>'Guest Attend'
,p_link=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
,p_page_id=>26
);
wwv_flow_imp_shared.create_menu_option(
 p_id=>wwv_flow_imp.id(15257122351630035)
,p_short_name=>'Daily Attendance'
,p_link=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_page_id=>2
);
wwv_flow_imp.component_end;
end;
/
