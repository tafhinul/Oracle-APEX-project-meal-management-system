prompt --application/shared_components/user_interface/template_options
begin
--   Manifest
--     THEME OPTIONS: 111
--   Manifest End
wwv_flow_imp.component_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.0'
,p_default_workspace_id=>1800582798131282
,p_default_application_id=>111
,p_default_id_offset=>0
,p_default_owner=>'INTERN'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(11502557223453020)
,p_theme_id=>42
,p_name=>'INDICATOR_ASTERISK'
,p_display_name=>'Asterisk'
,p_display_sequence=>10
,p_field_template_id=>wwv_flow_imp.id(11501897231453011)
,p_css_classes=>'t-Form-fieldContainer--indicatorAsterisk'
,p_group_id=>wwv_flow_imp.id(11502184486453019)
,p_template_types=>'FIELD'
,p_help_text=>'Displays an asterisk * on required items.'
);
wwv_flow_imp_shared.create_template_option(
 p_id=>wwv_flow_imp.id(11503223444453022)
,p_theme_id=>42
,p_name=>'INDICATOR_LABEL'
,p_display_name=>'Inline Label'
,p_display_sequence=>20
,p_field_template_id=>wwv_flow_imp.id(11501897231453011)
,p_css_classes=>'t-Form-fieldContainer--indicatorLabel'
,p_group_id=>wwv_flow_imp.id(11502184486453019)
,p_template_types=>'FIELD'
,p_help_text=>'Displays "Required" inline.'
);
wwv_flow_imp.component_end;
end;
/
