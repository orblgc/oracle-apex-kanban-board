prompt --application/set_environment
set define off verify off feedback off
whenever sqlerror exit sql.sqlcode rollback
--------------------------------------------------------------------------------
--
-- Oracle APEX export file
--
-- You should run this script using a SQL client connected to the database as
-- the owner (parsing schema) of the application or as a database user with the
-- APEX_ADMINISTRATOR_ROLE role.
--
-- This export file has been automatically generated. Modifying this file is not
-- supported by Oracle and can lead to unexpected application and/or instance
-- behavior now or in the future.
--
-- NOTE: Calls to apex_application_install override the defaults below.
--
--------------------------------------------------------------------------------
begin
wwv_flow_imp.import_begin (
 p_version_yyyy_mm_dd=>'2024.11.30'
,p_release=>'24.2.2'
,p_default_workspace_id=>28306516014281138169
,p_default_application_id=>231266
,p_default_id_offset=>0
,p_default_owner=>'WKSP_ORDIBU'
);
end;
/
 
prompt APPLICATION 231266 - Demo
--
-- Application Export:
--   Application:     231266
--   Name:            Demo
--   Date and Time:   08:53 Monday April 14, 2025
--   Exported By:     ORKUNBL@HOTMAIL.COM
--   Flashback:       0
--   Export Type:     Component Export
--   Manifest
--     PLUGIN: 29219779512205803100
--   Manifest End
--   Version:         24.2.2
--   Instance ID:     63113759365424
--

begin
  -- replace components
  wwv_flow_imp.g_mode := 'REPLACE';
end;
/
prompt --application/shared_components/plugins/template_component/kanban_board
begin
wwv_flow_imp_shared.create_plugin(
 p_id=>wwv_flow_imp.id(29219779512205803100)
,p_plugin_type=>'TEMPLATE COMPONENT'
,p_theme_id=>nvl(wwv_flow_application_install.get_theme_id, '')
,p_name=>'KANBAN_BOARD'
,p_display_name=>'Kanban Board'
,p_supported_component_types=>'REPORT'
,p_javascript_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#dom-autoscroller#MIN#.js',
'#PLUGIN_FILES#dragula#MIN#.js',
'#PLUGIN_FILES#script#MIN#.js',
''))
,p_css_file_urls=>wwv_flow_string.join(wwv_flow_t_varchar2(
'#PLUGIN_FILES#style#MIN#.css',
'#PLUGIN_FILES#responsive-grid#MIN#.css',
'#PLUGIN_FILES#dragula#MIN#.css'))
,p_partial_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'{if APEX$IS_LAZY_LOADING/}',
'  <div>Loading...</div>',
'{else/} ',
'        {if ?CARD_TITLE/}',
'            ',
'            <div class="card-header{if ?CARD_BACKGROUND_COLOR/} specific_color{endif/}" style="background:#CARD_BACKGROUND_COLOR#">',
'            ',
'                <i class="{if ?CARD_ICON/} #CARD_ICON# specific_icon{endif/}"></i>',
'            </div>',
'            {if ?CARD_LINK/}',
'                <a href="#CARD_LINK#">',
'                    <div class="card-content">',
'                        <p class="title">',
'                            {if ?CARD_PRIORITY_ICON/}',
'                            <i class="specific_icon #CARD_PRIORITY_ICON#" style="color:#CARD_PRIORITY_COLOR#;"></i> ',
'                            {endif/}',
'                            <span class="card-title">#CARD_TITLE#<span>',
'                        </p>',
'                    </div>',
'                </a>',
'            {else/}',
'                <div class="card-content">',
'                    <p class="title">',
'                        {if ?CARD_PRIORITY_ICON/}',
'                            <i class="#CARD_PRIORITY_ICON#" style="color:#CARD_PRIORITY_COLOR#;"></i> ',
'                        {endif/}',
'                        <span class="card-title">#CARD_TITLE#</span>',
'                    </p>',
'                </div>',
'            {endif/}',
'            {if ?CARD_FOOTER/}',
'            <div class="card-footer">#CARD_FOOTER#</div>',
'            {endif/}',
'        {endif/}',
'    ',
'{endif/}'))
,p_default_escape_mode=>'HTML'
,p_translate_this_template=>false
,p_api_version=>1
,p_report_body_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div  class="s-g-row kb-group-container">',
'    {case GROUP_VIEW/}',
'    {when N/}',
'    <div id="#APEX$DOM_ID#" class="reportgroup s-g-row kb-row" #APEX$GROUP_IDENTIFICATION#>',
'        {if ?STATUS1/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS1_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS1_TEXT#</p>',
'                </div>',
'                {if ?NEW_ITEM_LINK/}',
'                    ',
'                    <div class="kb-item-container kb-item-container-with-new-card" dataStatus="#STATUS1#"></div>',
'                    <div class="kb-new-item-region">',
'                        <a href="#NEW_ITEM_LINK#">',
'                            <div class="kb-new-card"><i class="fa fa-plus"></i></div>',
'                        </a>',
'                    </div>',
'                {else/}',
'                    <div class="kb-item-container" dataStatus="#STATUS1#"></div>',
'                {endif/}',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS2/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS2_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS2_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS2#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS3/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS3_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS3_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS3#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS4/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS4_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS4_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS4#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS5/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS5_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS5_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS5#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS6/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS6_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS6_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS6#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS7/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS7_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS7_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS7#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS8/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS8_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS8_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS8#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS9/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS9_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS9_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS9#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS10/}',
'        <div class="kb-col kb-item-region">',
'            <div class="kb-col-content" style="border-left-color: #STATUS10_COLOR#;">',
'                <div class="kb-col-inner-header">',
'                    <p class="title">#STATUS10_TEXT#</p>',
'                </div>',
'                <div class="kb-item-container" dataStatus="#STATUS10#"></div>',
'            </div>',
'        </div>',
'        {endif/}',
'    </div>',
'    {endcase/}',
'    #APEX$ROWS#',
'</div> '))
,p_report_group_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#APEX$DOM_ID#" class="reportgroup s-g-row kb-row" #APEX$GROUP_IDENTIFICATION#>',
'    ',
'    <div class="kb-col kb-group-region">',
'        <div class="kb-card kb-group-card kb-card-draggable">',
'            <div class="kb-collapsable kb-collapse">',
'                <i class="fa fa-chevron-down"></i>',
'            </div>',
'            <div class="kb-collapsable kb-expand" style="display:none">',
'                <i class="fa fa-chevron-up"></i>',
'            </div>',
'            <div class="card-header"></div>',
'            <div class="card-content">',
'                {if ?GROUP_LINK/}',
'                <a class="title" href="{if ?GROUP_LINK/}#GROUP_LINK#{endif/}">#GROUP_TITLE#</a>',
'                {else/}',
'                <p class="title">#GROUP_TITLE#</p>',
'                {endif/}',
'                ',
'            </div>',
'            <div class="card-footer">',
'                <div>#GROUP_FOOTER#</div>',
'            </div>',
'        </div>',
'    </div>',
'',
'    ',
'    {if ?STATUS1/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS1_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS1_TEXT#</p>',
'            </div>',
'            {if ?NEW_ITEM_LINK/}',
'                ',
'                <div class="kb-item-container kb-item-container-with-new-card" dataStatus="#STATUS1#"></div>',
'                <div class="kb-new-item-region">',
'                    <a href="#NEW_ITEM_LINK#">',
'                        <div class="kb-new-card"><i class="fa fa-plus"></i></div>',
'                    </a>',
'                </div>',
'            {else/}',
'                <div class="kb-item-container" dataStatus="#STATUS1#"></div>',
'            {endif/}',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS2/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS2_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS2_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS2#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS3/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS3_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS3_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS3#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS4/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS4_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS4_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS4#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS5/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS5_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS5_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS5#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS6/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS6_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS6_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS6#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS7/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS7_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS7_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS7#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS8/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS8_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS8_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS8#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS9/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS9_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS9_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS9#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    {if ?STATUS10/}',
'    <div class="kb-col kb-item-region">',
'        <div class="kb-col-content" style="border-left-color: #STATUS10_COLOR#;">',
'            <div class="kb-col-inner-header">',
'                <p class="title">#STATUS10_TEXT#</p>',
'            </div>',
'            <div class="kb-item-container" dataStatus="#STATUS10#"></div>',
'        </div>',
'    </div>',
'    {endif/}',
'',
'    #APEX$ROWS#',
'</div>',
''))
,p_report_row_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#APEX$DOM_ID#" relocationneed class="kb-card kb-items kb-card-draggable" style="display:none;" dataStatus="#CARD_STATUS#" #APEX$ROW_IDENTIFICATION#>',
'    #APEX$PARTIAL#',
'</div>'))
,p_report_container_template=>wwv_flow_string.join(wwv_flow_t_varchar2(
'<div id="#APEX$DOM_ID#" class="s-g-container{if ?APEX$COMPONENT_CSS_CLASSES/} #APEX$COMPONENT_CSS_CLASSES#{endif/}" {if ?DROPITEMAJAX/}dropitemajax="#DROPITEMAJAX#"{endif/} {if ?DROPGROUPAJAX/}dropgroupajax="#DROPGROUPAJAX#"{endif/}>',
'    <div class="s-g-row kb-row">',
'        {case GROUP_VIEW/}',
'        {when Y/}',
'            <div class="kb-col kb-col-header kb-first-group-header">',
'            {if ?NEW_GROUP_LINK/}',
'            <div class="s-g-row kb-row">',
'                <div class="kb-group-region kb-new-group-region">',
'                    <div class="kb-new-item-region">',
'                        <a href="#NEW_GROUP_LINK#">',
'                            <div class="kb-new-card">',
'                                <i class="fa fa-plus"></i>',
'                            </div>',
'                        </a>',
'                    </div>',
'                </div>',
'            </div>',
'            {endif/}',
'        </div>',
'        {endcase/}',
'        ',
'',
'        {if ?STATUS1/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS1#"',
'            {if ?STATUS1_COLOR/}card-icon-color="#STATUS1_COLOR#"{endif/} ',
'            {if ?STATUS1_ICON/}card-icon="#STATUS1_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS1_COLOR#;">',
'                <p class="title">#STATUS1_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS2/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS2#"',
'            {if ?STATUS2_COLOR/}card-icon-color="#STATUS2_COLOR#"{endif/} ',
'            {if ?STATUS2_ICON/}card-icon="#STATUS2_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS2_COLOR#;">',
'                <p class="title">#STATUS2_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS3/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS3#"',
'            {if ?STATUS3_COLOR/}card-icon-color="#STATUS3_COLOR#"{endif/} ',
'            {if ?STATUS3_ICON/}card-icon="#STATUS3_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS3_COLOR#;">',
'                <p class="title">#STATUS3_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS4/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS4#"',
'            {if ?STATUS4_COLOR/}card-icon-color="#STATUS4_COLOR#"{endif/} ',
'            {if ?STATUS4_ICON/}card-icon="#STATUS4_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS4_COLOR#;">',
'                <p class="title">#STATUS4_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS5/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS5#"',
'            {if ?STATUS5_COLOR/}card-icon-color="#STATUS5_COLOR#"{endif/} ',
'            {if ?STATUS5_ICON/}card-icon="#STATUS5_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS5_COLOR#;">',
'                <p class="title">#STATUS5_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS6/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS6#"',
'            {if ?STATUS6_COLOR/}card-icon-color="#STATUS6_COLOR#"{endif/} ',
'            {if ?STATUS6_ICON/}card-icon="#STATUS6_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS6_COLOR#;">',
'                <p class="title">#STATUS6_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS7/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS7#"',
'            {if ?STATUS7_COLOR/}card-icon-color="#STATUS7_COLOR#"{endif/} ',
'            {if ?STATUS7_ICON/}card-icon="#STATUS7_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS7_COLOR#;">',
'                <p class="title">#STATUS7_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS8/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS8#"',
'            {if ?STATUS8_COLOR/}card-icon-color="#STATUS8_COLOR#"{endif/} ',
'            {if ?STATUS8_ICON/}card-icon="#STATUS8_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS8_COLOR#;">',
'                <p class="title">#STATUS8_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS9/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS9#"',
'            {if ?STATUS9_COLOR/}card-icon-color="#STATUS9_COLOR#"{endif/} ',
'            {if ?STATUS9_ICON/}card-icon="#STATUS9_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS9_COLOR#;">',
'                <p class="title">#STATUS9_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'        {if ?STATUS10/}',
'        <div class="kb-col kb-col-header" ',
'            parentheaderid="#STATUS10#"',
'            {if ?STATUS10_COLOR/}card-icon-color="#STATUS10_COLOR#"{endif/} ',
'            {if ?STATUS10_ICON/}card-icon="#STATUS10_ICON#"{endif/}>',
'            <div class="kb-col-header-content" style="border-top-color: #STATUS10_COLOR#;">',
'                <p class="title">#STATUS10_TEXT#</p>',
'            </div>',
'        </div>',
'        {endif/}',
'',
'',
'    </div>',
'',
'    #APEX$REPORT_BODY#',
'</div>',
''))
,p_report_placeholder_count=>3
,p_standard_attributes=>'ROW_SELECTION:REGION_TEMPLATE'
,p_substitute_attributes=>true
,p_version_scn=>44583868885633
,p_subscribe_plugin_settings=>true
,p_help_text=>wwv_flow_string.join(wwv_flow_t_varchar2(
'This kanban board plugin supports faceted search & Oracle''s native pagination feature for Template Components.',
'<br>',
'For ajax settings , you need to define your ajax under shared components/application processes',
'<br>',
'<br>',
'',
'<b>Common Events:</b>',
'<ul>',
'  <li>',
'    <b>kanbanmanualalterationdetected:</b> if user changed <code>data-id</code>, <code>data-group-id</code> manually, then this will be triggered.',
'    <br>',
'    You can try to manipulate an item''s or group''s id manually from html. Then try to drag-drop it. ',
'  </li>',
'</ul>',
'',
'<b>Item Events:</b>',
'<ul>',
'  <li><b>kanbandrag:</b> triggered immediately after drag started</li>',
'  <li><b>kanbanafterdrop:</b> triggered after a drop and ajax process complete without errors (you need to return <code>success:true</code> key-value as json from ajax)</li>',
'  <li><b>kanbandroperror:</b> triggered after a drop and ajax process complete with errors</li>',
'  <li><b>kanbandrop:</b> triggered immediately after a drop</li>',
'</ul>',
'',
'<b>Group Events:</b>',
'<ul>',
'  <li><b>kanbandraggroup:</b> triggered immediately after drag started</li>',
'  <li><b>kanbanafterdropgroup:</b> triggered after a drop and ajax process complete without errors (you need to return <code>success:true</code> key-value as json from ajax)</li>',
'  <li><b>kanbandropgrouperror:</b> triggered after a drop and ajax process complete with errors</li>',
'  <li><b>kanbandropgroup:</b> triggered immediately after a drop</li>',
'</ul>'))
,p_version_identifier=>'1.0'
,p_files_version=>1478
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(29220546193454531211)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_title=>'Ajax Settings'
,p_display_sequence=>1
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(29220162602020413785)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_title=>'Column Settings'
,p_display_sequence=>2
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(29220161858371413775)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_title=>'Task Settings'
,p_display_sequence=>3
);
wwv_flow_imp_shared.create_plugin_attr_group(
 p_id=>wwv_flow_imp.id(29220162180142413782)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_title=>'Group Settings'
,p_display_sequence=>4
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29242676229826884467)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>1
,p_display_sequence=>1
,p_static_id=>'CARD_TITLE'
,p_prompt=>'Card Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220191754172459922)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>8
,p_display_sequence=>230
,p_static_id=>'CARD_BACKGROUND_COLOR'
,p_prompt=>'Card Icon Background Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220192155247459924)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>9
,p_display_sequence=>5
,p_static_id=>'CARD_ICON'
,p_prompt=>'Card Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220171637538448147)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>19
,p_display_sequence=>4
,p_static_id=>'CARD_LINK'
,p_prompt=>'Card Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220272118554174001)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>77
,p_display_sequence=>6
,p_static_id=>'CARD_PRIORITY_ICON'
,p_prompt=>'Card Priority Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220275855386186197)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>78
,p_display_sequence=>7
,p_static_id=>'CARD_PRIORITY_COLOR'
,p_prompt=>'Card Priority Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29242679981566892327)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'COMPONENT'
,p_attribute_sequence=>91
,p_display_sequence=>2
,p_static_id=>'CARD_FOOTER'
,p_prompt=>'Card Footer'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29219821576469146625)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>16
,p_display_sequence=>3
,p_static_id=>'CARD_STATUS'
,p_prompt=>'Card Status'
,p_attribute_type=>'SESSION STATE VALUE'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_column_data_types=>'VARCHAR2'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220161858371413775)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220178568847481377)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>21
,p_display_sequence=>4
,p_static_id=>'NEW_GROUP_LINK'
,p_prompt=>'New Group Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29268723760022836834)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'EQUALS'
,p_depending_on_expression=>'Y'
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220192637977459927)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>47
,p_display_sequence=>10
,p_static_id=>'STATUS1'
,p_prompt=>'Status1 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>true
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220194993053459934)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>48
,p_display_sequence=>40
,p_static_id=>'STATUS2'
,p_prompt=>'Status2 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220192637977459927)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220194569324459933)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>49
,p_display_sequence=>20
,p_static_id=>'STATUS1_TEXT'
,p_prompt=>'Status1 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220194223987459932)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>50
,p_display_sequence=>30
,p_static_id=>'STATUS1_COLOR'
,p_prompt=>'Status1 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220195781639459936)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>51
,p_display_sequence=>50
,p_static_id=>'STATUS2_TEXT'
,p_prompt=>'Status2 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220192637977459927)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220195363698459935)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>52
,p_display_sequence=>60
,p_static_id=>'STATUS2_COLOR'
,p_prompt=>'Status2 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220192637977459927)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220196164823459937)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>53
,p_display_sequence=>70
,p_static_id=>'STATUS3'
,p_prompt=>'Status3 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220194993053459934)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220196978622459939)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>54
,p_display_sequence=>80
,p_static_id=>'STATUS3_TEXT'
,p_prompt=>'Status3 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220194993053459934)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220196586777459938)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>55
,p_display_sequence=>90
,p_static_id=>'STATUS3_COLOR'
,p_prompt=>'Status3 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220194993053459934)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220197407664459940)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>56
,p_display_sequence=>100
,p_static_id=>'STATUS4'
,p_prompt=>'Status4 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220196164823459937)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220198159310459943)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>57
,p_display_sequence=>110
,p_static_id=>'STATUS4_TEXT'
,p_prompt=>'Status4 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220196164823459937)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220197756453459942)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>58
,p_display_sequence=>120
,p_static_id=>'STATUS4_COLOR'
,p_prompt=>'Status4 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220196164823459937)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220198605482459944)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>59
,p_display_sequence=>130
,p_static_id=>'STATUS5'
,p_prompt=>'Status5 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220197407664459940)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220199407370459947)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>60
,p_display_sequence=>140
,p_static_id=>'STATUS5_TEXT'
,p_prompt=>'Status5 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220197407664459940)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220198988806459945)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>61
,p_display_sequence=>150
,p_static_id=>'STATUS5_COLOR'
,p_prompt=>'Status5 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220197407664459940)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220199834348459948)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>62
,p_display_sequence=>160
,p_static_id=>'STATUS6'
,p_prompt=>'Status6 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220198605482459944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220200636404459951)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>63
,p_display_sequence=>170
,p_static_id=>'STATUS6_TEXT'
,p_prompt=>'Status6 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220198605482459944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220200155633459949)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>64
,p_display_sequence=>180
,p_static_id=>'STATUS6_COLOR'
,p_prompt=>'Status6 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220198605482459944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220200990505459952)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>65
,p_display_sequence=>190
,p_static_id=>'STATUS7'
,p_prompt=>'Status7 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220199834348459948)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220201792918459954)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>66
,p_display_sequence=>200
,p_static_id=>'STATUS7_TEXT'
,p_prompt=>'Status7 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220199834348459948)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220201387770459953)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>67
,p_display_sequence=>210
,p_static_id=>'STATUS7_COLOR'
,p_prompt=>'Status7 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220199834348459948)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220202160505459955)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>68
,p_display_sequence=>220
,p_static_id=>'STATUS8'
,p_prompt=>'Status8 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220200990505459952)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220202950970459958)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>69
,p_display_sequence=>230
,p_static_id=>'STATUS8_TEXT'
,p_prompt=>'Status8 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220200990505459952)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220202562271459957)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>70
,p_display_sequence=>240
,p_static_id=>'STATUS8_COLOR'
,p_prompt=>'Status8 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220200990505459952)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220203399979459964)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>71
,p_display_sequence=>250
,p_static_id=>'STATUS9'
,p_prompt=>'Status9 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220202160505459955)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220204204211459967)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>72
,p_display_sequence=>260
,p_static_id=>'STATUS9_TEXT'
,p_prompt=>'Status9 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220202160505459955)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220203838149459966)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>73
,p_display_sequence=>270
,p_static_id=>'STATUS9_COLOR'
,p_prompt=>'Status9 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220202160505459955)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220192959890459928)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>74
,p_display_sequence=>280
,p_static_id=>'STATUS10'
,p_prompt=>'Status10 ID'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220203399979459964)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220193831603459931)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>75
,p_display_sequence=>290
,p_static_id=>'STATUS10_TEXT'
,p_prompt=>'Status10 Text'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>true
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220203399979459964)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220193437511459929)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>76
,p_display_sequence=>300
,p_static_id=>'STATUS10_COLOR'
,p_prompt=>'Status10 Color'
,p_attribute_type=>'COLOR'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220203399979459964)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220546867671545321)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>79
,p_display_sequence=>10
,p_static_id=>'DROPITEMAJAX'
,p_prompt=>'Drop Item Ajax Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220546193454531211)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Write your ajax application process name into related area in plugin component. This needs to be application process not a page process.',
'<br>',
'Your process parameters should be look like this.',
'',
'<pre>',
'DECLARE',
'    VR_ITEM_ID VARCHAR2(200) := APEX_APPLICATION.G_X01;',
'    VR_OLD_GROUP_ID VARCHAR2(200) := APEX_APPLICATION.G_X02;',
'    VR_OLD_COLUMN_ID VARCHAR2(200) := APEX_APPLICATION.G_X03;',
'    VR_OLD_INDEX VARCHAR2(200) := APEX_APPLICATION.G_X04;',
'    VR_NEW_GROUP_ID VARCHAR2(200) := APEX_APPLICATION.G_X05;',
'    VR_NEW_COLUMN_ID VARCHAR2(200) := APEX_APPLICATION.G_X06;',
'    VR_NEW_INDEX VARCHAR2(200) := APEX_APPLICATION.G_X07;',
'BEGIN',
'    -- do something here',
'    ',
'    -- error e.g. -> Raise_Application_Error (-20001, ''You are not allowed to do something..'');',
'     ',
'    ',
'    -- success key-value need to be returned otherwise kanbandroperror will be triggered.',
'    apex_json.open_object();',
'    apex_json.write(''success'',true);',
'    apex_json.close_object();',
'Exception',
'    When Others Then',
'        -- if you want to give error via catching sqlcode you can return sqlcode like below.',
'        /*  ',
'            This can be used within dynamic action like this.data.sqlcode (kanbandroperror)  ',
'            You can adjust custom errors via sqlcode. ',
'            For example 20001 code means ''You are not allowed ... '' so you can print that error etc.',
'        */',
'        ',
'        apex_json.open_object();',
'        apex_json.write(''success'',false);',
'        apex_json.write(''sqlcode'',SQLCODE);',
'        apex_json.close_object();',
'END;',
'</pre>'))
,p_help_text=>'Put your ajax name to be used in apex.server.process within the plugin.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220547636438550086)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>80
,p_display_sequence=>20
,p_static_id=>'DROPGROUPAJAX'
,p_prompt=>'Drop Group Ajax Name'
,p_attribute_type=>'TEXT'
,p_is_required=>false
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220546193454531211)
,p_examples=>wwv_flow_string.join(wwv_flow_t_varchar2(
'Write your ajax application process name into related area in plugin component. This needs to be application process not a page process.',
'<br>',
'Your process parameters should be look like this.',
'',
'<pre>',
'DECLARE',
'    VR_ITEM_ID VARCHAR2(200) := APEX_APPLICATION.G_X01;',
'    VR_OLD_INDEX VARCHAR2(200) := APEX_APPLICATION.G_X02;',
'    VR_NEW_INDEX VARCHAR2(200) := APEX_APPLICATION.G_X03;',
'BEGIN',
'    -- do something here',
'    -- error e.g. -> Raise_Application_Error (-20001, ''You are not allowed to do something..'');',
'     ',
'    ',
'    -- success key-value need to be returned otherwise kanbandroperror will be triggered.',
'    apex_json.open_object();',
'    apex_json.write(''success'',true);',
'    apex_json.close_object();',
'Exception',
'    When Others Then',
'        -- if you want to give error via catching sqlcode you can return sqlcode like below.',
'        /*  ',
'            This can be used within dynamic action like this.data.sqlcode (kanbandroperror)  ',
'            You can adjust custom errors via sqlcode. ',
'            For example 20001 code means ''You are not allowed ... '' so you can print that error etc.',
'        */',
'        ',
'        apex_json.open_object();',
'        apex_json.write(''success'',false);',
'        apex_json.write(''sqlcode'',SQLCODE);',
'        apex_json.close_object();',
'END;',
'</pre>'))
,p_help_text=>'Put your ajax name to be used in apex.server.process within plugin.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220579160827213356)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>81
,p_display_sequence=>31
,p_static_id=>'STATUS1_ICON'
,p_prompt=>'Status1 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220601807831896955)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>82
,p_display_sequence=>61
,p_static_id=>'STATUS2_ICON'
,p_prompt=>'Status2 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220192637977459927)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220603056623906544)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>83
,p_display_sequence=>91
,p_static_id=>'STATUS3_ICON'
,p_prompt=>'Status3 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220194993053459934)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220603692192908812)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>84
,p_display_sequence=>121
,p_static_id=>'STATUS4_ICON'
,p_prompt=>'Status4 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220196164823459937)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220604982908916876)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>85
,p_display_sequence=>151
,p_static_id=>'STATUS5_ICON'
,p_prompt=>'Status5 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220197407664459940)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220605571038919493)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>86
,p_display_sequence=>181
,p_static_id=>'STATUS6_ICON'
,p_prompt=>'Status6 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220198605482459944)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220606219592921291)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>87
,p_display_sequence=>211
,p_static_id=>'STATUS7_ICON'
,p_prompt=>'Status7 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220199834348459948)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220606749436923581)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>88
,p_display_sequence=>241
,p_static_id=>'STATUS8_ICON'
,p_prompt=>'Status8 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220200990505459952)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220607417084926008)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>89
,p_display_sequence=>271
,p_static_id=>'STATUS9_ICON'
,p_prompt=>'Status9 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220202160505459955)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220608018908929436)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>90
,p_display_sequence=>301
,p_static_id=>'STATUS10_ICON'
,p_prompt=>'Status10 Icon'
,p_attribute_type=>'ICON'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_depending_on_attribute_id=>wwv_flow_imp.id(29220203399979459964)
,p_depending_on_has_to_exist=>true
,p_depending_on_condition_type=>'NOT_NULL'
,p_attribute_group_id=>wwv_flow_imp.id(29220162602020413785)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29268723760022836834)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT'
,p_attribute_sequence=>95
,p_display_sequence=>1
,p_static_id=>'GROUP_VIEW'
,p_prompt=>'Group View'
,p_attribute_type=>'CHECKBOX'
,p_is_required=>false
,p_default_value=>'N'
,p_escape_mode=>'HTML'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
,p_help_text=>'If you want to see your tasks within groups then you can switch this on. But in order to group them you need to switch "Group" on for the columns you like. Click on your column then you will see Group switch under it.'
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29220177590543477213)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT_GROUP'
,p_attribute_sequence=>20
,p_display_sequence=>4
,p_static_id=>'NEW_ITEM_LINK'
,p_prompt=>'New Item Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29268704448358698753)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT_GROUP'
,p_attribute_sequence=>92
,p_display_sequence=>5
,p_static_id=>'GROUP_LINK'
,p_prompt=>'Group Link'
,p_attribute_type=>'LINK'
,p_is_required=>false
,p_escape_mode=>'ATTR'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29268706924112703373)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT_GROUP'
,p_attribute_sequence=>93
,p_display_sequence=>2
,p_static_id=>'GROUP_TITLE'
,p_prompt=>'Group Title'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
);
wwv_flow_imp_shared.create_plugin_attribute(
 p_id=>wwv_flow_imp.id(29268709370994706024)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_attribute_scope=>'REPORT_GROUP'
,p_attribute_sequence=>94
,p_display_sequence=>3
,p_static_id=>'GROUP_FOOTER'
,p_prompt=>'Group Footer'
,p_attribute_type=>'HTML'
,p_is_required=>false
,p_escape_mode=>'RAW'
,p_is_translatable=>false
,p_attribute_group_id=>wwv_flow_imp.id(29220162180142413782)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '617065782E6A517565727928617065782E6750616765436F6E7465787424292E6F6E2822617065787265616479656E64222C2866756E6374696F6E2874297B2428222E732D672D636F6E7461696E657222292E65616368282866756E6374696F6E28297B';
wwv_flow_imp.g_varchar2_table(2) := '6B616E62616E2E696E697469616C697A65282223222B746869732E69642C746869732E676574417474726962757465282264726F706974656D616A617822292C746869732E676574417474726962757465282264726F7067726F7570616A61782229297D';
wwv_flow_imp.g_varchar2_table(3) := '29297D29293B766172206B616E62616E3D66756E6374696F6E2874297B76617220723D7428222E732D672D636F6E7461696E657222292E6C656E6774682C653D21313B72657475726E7B696E697469616C697A653A66756E6374696F6E28612C6E2C6F29';
wwv_flow_imp.g_varchar2_table(4) := '7B76617220693D6E756C6C2C643D6E756C6C2C633D5B5D2C753D5B5D3B696628722D3D312C652972657475726E3B653D303D3D723B76617220733D742861293B6C6574206C3D732E66696E6428222E6B622D67726F75702D636F6E7461696E657222292E';
wwv_flow_imp.g_varchar2_table(5) := '706172656E7428292C673D286C2E7461626C654D6F64656C566965772822696E7374616E636522292C6C2E7461626C654D6F64656C5669657728226765744D6F64656C2229293B66756E6374696F6E207028722C65297B733D742861292C742861292E66';
wwv_flow_imp.g_varchar2_table(6) := '696E6428727C7C225B72656C6F636174696F6E6E6565645D22292E65616368282866756E6374696F6E28297B76617220723D742874686973292C6E3D722E6174747228226461746173746174757322292C6F3D722E617474722822646174612D69642229';
wwv_flow_imp.g_varchar2_table(7) := '3B6966286E297B76617220692C643D672E6765745265636F726456616C7565286F2C224150455824434F4E54524F4C5F425245414B5F56414C554522292C633D28693D732E66696E6428225B646174612D67726F75702D69643D222B642B225D22292926';
wwv_flow_imp.g_varchar2_table(8) := '26692E6C656E6774683F692E66696E6428272E6B622D6974656D2D636F6E7461696E65725B646174617374617475733D22272B6E2B27225D27293A732E66696E6428272E6B622D6974656D2D636F6E7461696E65725B646174617374617475733D22272B';
wwv_flow_imp.g_varchar2_table(9) := '6E2B27225D27293B696628632E6C656E677468297B76617220753D632E6368696C6472656E28293B752E6C656E6774683E653F722E696E736572744265666F726528752E6571286529293A632E617070656E642872293B766172206C3D742861292E6669';
wwv_flow_imp.g_varchar2_table(10) := '6E6428275B706172656E7468656164657269643D22272B6E2B27225D27292E617474722822636172642D69636F6E22292C703D742861292E66696E6428275B706172656E7468656164657269643D22272B6E2B27225D27292E617474722822636172642D';
wwv_flow_imp.g_varchar2_table(11) := '69636F6E2D636F6C6F7222292C663D742874686973292E66696E6428222E636172642D686561646572203E206922293B662E686173436C617373282273706563696669635F69636F6E22297C7C662E616464436C617373286C293B76617220683D742874';
wwv_flow_imp.g_varchar2_table(12) := '686973292E66696E6428222E636172642D68656164657222293B682E686173436C617373282273706563696669635F636F6C6F7222297C7C682E63737328226261636B67726F756E64222C70292C722E72656D6F766541747472282272656C6F63617469';
wwv_flow_imp.g_varchar2_table(13) := '6F6E6E65656422292C722E6373732822646973706C6179222C2222297D7D7D29297D66756E6374696F6E206628297B76617220723D303B693D64726167756C61287428732E66696E6428222E6B622D6974656D2D636F6E7461696E65722229292E746F41';
wwv_flow_imp.g_varchar2_table(14) := '7272617928292C7B646972656374696F6E3A22766572746963616C222C7265766572744F6E5370696C6C3A21302C616363657074733A66756E6374696F6E28742C722C652C61297B72657475726E21307D7D292C633D5B5D2C742873292E66696E642822';
wwv_flow_imp.g_varchar2_table(15) := '2E6B622D6974656D7322292E65616368282866756E6374696F6E28297B76617220723D742874686973292E617474722822646174612D696422292C653D742874686973292E6174747228226461746173746174757322292C613D742874686973292E636C';
wwv_flow_imp.g_varchar2_table(16) := '6F7365737428222E7265706F727467726F757022292E617474722822646174612D67726F75702D696422293B72262621633F2E736F6D652828743D3E742E69643D3D3D7229292626632E70757368287B69643A722C7374617475733A652C67726F757069';
wwv_flow_imp.g_varchar2_table(17) := '643A617D297D29293B76617220653D41727261792E66726F6D28646F63756D656E742E717565727953656C6563746F72416C6C28222E6B622D6974656D2D636F6E7461696E65722229293B6175746F5363726F6C6C285B77696E646F775D2E636F6E6361';
wwv_flow_imp.g_varchar2_table(18) := '742865292C7B6D617853706565643A31352C6D617267696E3A3135302C706978656C733A372C7363726F6C6C5768656E4F7574736964653A21302C6175746F5363726F6C6C3A66756E6374696F6E28297B72657475726E20746869732E646F776E262669';
wwv_flow_imp.g_varchar2_table(19) := '2E6472616767696E677D7D293B732E66696E6428222E6B622D67726F75702D636F6E7461696E657222292E6F6E2822636C69636B222C222E6B622D636F6C6C61707361626C65222C2866756E6374696F6E2872297B636F6E736F6C652E6C6F6728742874';
wwv_flow_imp.g_varchar2_table(20) := '686973292E706172656E7428292E66696E6428222E636172642D666F6F7465722229292C66756E6374696F6E28742C72297B742E66696E6428222E6B622D636F6C6C61707361626C6522292E746F67676C6528292C742E66696E6428222E636172642D66';
wwv_flow_imp.g_varchar2_table(21) := '6F6F74657222292E746F67676C6528292C742E706172656E7428292E706172656E7428292E66696E6428222E6B622D6974656D2D726567696F6E22292E746F67676C6528293B76617220653D742E706172656E7428293B696628652E746F67676C65436C';
wwv_flow_imp.g_varchar2_table(22) := '61737328226B622D636F6C6C617073656422292C72297B76617220613D7B67726F757049643A742E617474722822646174612D67726F75702D696422292C636F6C6C61707365643A652E686173436C61737328226B622D636F6C6C617073656422297D3B';
wwv_flow_imp.g_varchar2_table(23) := '732E7472696767657228226B616E62616E67726F7570636F6C6C6170736564222C5B615D297D7D28742874686973292E706172656E7428292C2130297D29292C732E66696E6428222E6B622D6974656D2D636F6E7461696E657222292E6F6E2822746F75';
wwv_flow_imp.g_varchar2_table(24) := '63686D6F7665222C222E6B622D6974656D73222C2866756E6374696F6E2874297B742E70726576656E7444656661756C7428297D29292C692E6F6E282264726167222C2866756E6374696F6E28652C61297B766172206E3D742865292C6F3D742861293B';
wwv_flow_imp.g_varchar2_table(25) := '723D6E2E696E64657828293B76617220693D6E2E6E65787428293B692E6C656E6774683E303F7428695B305D293A6E756C6C3B76617220643D7B6974656D49643A6E2E617474722822646174612D696422292C736F7572636547726F757049643A6F2E63';
wwv_flow_imp.g_varchar2_table(26) := '6C6F7365737428222E6B622D726F7722292E617474722822646174612D67726F75702D696422292C736F75726365436F6C756D6E49643A6F2E6174747228226461746173746174757322292C736F757263654974656D496E6465783A727D3B30213D632E';
wwv_flow_imp.g_varchar2_table(27) := '66696C746572282866756E6374696F6E2874297B72657475726E20742E69643D3D6E2E617474722822646174612D696422297D29292E6C656E6774683F732E7472696767657228226B616E62616E64726167222C5B645D293A732E747269676765722822';
wwv_flow_imp.g_varchar2_table(28) := '6B616E62616E6D616E75616C616C7465726174696F6E6465746563746564222C5B645D297D29292C692E6F6E282264726F70222C2866756E6374696F6E28652C612C6F2C69297B76617220643D742865292C753D742861292C6C3D74286F292C673D7B69';
wwv_flow_imp.g_varchar2_table(29) := '74656D49643A642E617474722822646174612D696422292C736F7572636547726F757049643A6C2E636C6F7365737428222E6B622D726F7722292E617474722822646174612D67726F75702D696422292C736F75726365436F6C756D6E49643A6C2E6174';
wwv_flow_imp.g_varchar2_table(30) := '747228226461746173746174757322292C736F757263654974656D496E6465783A722C74617267657447726F757049643A752E636C6F7365737428222E6B622D726F7722292E617474722822646174612D67726F75702D696422292C746172676574436F';
wwv_flow_imp.g_varchar2_table(31) := '6C756D6E49643A752E6174747228226461746173746174757322292C7461726765744974656D496E6465783A642E696E64657828297D3B69662830213D632E66696C746572282866756E6374696F6E2874297B72657475726E20742E69643D3D642E6174';
wwv_flow_imp.g_varchar2_table(32) := '74722822646174612D696422297D29292E6C656E677468297B6966286E297472797B617065782E7365727665722E70726F63657373286E2C7B7830313A672E6974656D49642C7830323A672E736F7572636547726F757049642C7830333A672E736F7572';
wwv_flow_imp.g_varchar2_table(33) := '6365436F6C756D6E49642C7830343A672E736F757263654974656D496E6465782C7830353A672E74617267657447726F757049642C7830363A672E746172676574436F6C756D6E49642C7830373A672E7461726765744974656D496E6465787D2C7B7375';
wwv_flow_imp.g_varchar2_table(34) := '63636573733A66756E6374696F6E2874297B742E737563636573733F732E7472696767657228226B616E62616E616674657264726F70222C5B675D293A286828642C672C2130292C7028225B646174612D69643D222B672E6974656D49642B225D222C72';
wwv_flow_imp.g_varchar2_table(35) := '292C672E73716C636F64653D743F2E73716C636F64652C732E7472696767657228226B616E62616E64726F706572726F72222C5B675D29297D2C6572726F723A66756E6374696F6E2874297B68286C2C672C2130292C7028225B646174612D69643D222B';
wwv_flow_imp.g_varchar2_table(36) := '672E6974656D49642B225D222C72292C732E7472696767657228226B616E62616E64726F706572726F72222C5B675D297D2C64617461547970653A226A736F6E227D297D63617463682874297B7D6828642C67292C732E7472696767657228226B616E62';
wwv_flow_imp.g_varchar2_table(37) := '616E64726F70222C5B675D297D656C736520732E7472696767657228226B616E62616E6D616E75616C616C7465726174696F6E6465746563746564222C5B675D297D29297D66756E6374696F6E206828722C652C6E297B766172206F2C692C643D652E74';
wwv_flow_imp.g_varchar2_table(38) := '617267657447726F757049642C753D652E736F7572636547726F757049642C733D652E6974656D49643B6E3F28693D652E736F75726365436F6C756D6E49642C6F3D652E736F7572636547726F75704964293A286F3D652E74617267657447726F757049';
wwv_flow_imp.g_varchar2_table(39) := '642C693D652E746172676574436F6C756D6E4964293B766172206C3D742861292E66696E6428275B706172656E7468656164657269643D22272B692B27225D27292E617474722822636172642D69636F6E22292C703D742861292E66696E6428275B7061';
wwv_flow_imp.g_varchar2_table(40) := '72656E7468656164657269643D22272B692B27225D27292E617474722822636172642D69636F6E2D636F6C6F7222292C663D722E66696E6428222E636172642D68656164657222292C683D662E66696E6428226922293B722E6174747228226461746173';
wwv_flow_imp.g_varchar2_table(41) := '7461747573222C69292C682E686173436C617373282273706563696669635F69636F6E22297C7C28682E617474722822636C617373222C2222292C682E616464436C6173732822666120222B6C29292C662E686173436C61737328227370656369666963';
wwv_flow_imp.g_varchar2_table(42) := '5F636F6C6F7222297C7C662E63737328226261636B67726F756E64222C70292C722E72656D6F7665436C617373282267752D7472616E73697422292C722E61747472282272656C6F636174696F6E6E656564222C2222293B733D652E6974656D49643B76';
wwv_flow_imp.g_varchar2_table(43) := '617220623D725B305D2E6F7574657248544D4C3B672E7365744F7074696F6E28226564697461626C65222C2130292C672E7365745265636F726456616C756528732C224150455824524F575F434F4E54454E54222C62292C75213D642626672E73657452';
wwv_flow_imp.g_varchar2_table(44) := '65636F726456616C756528732C224150455824434F4E54524F4C5F425245414B5F56414C5545222C6F292C672E7365744F7074696F6E28226564697461626C65222C2131292C672E636C6561724368616E67657328292C632E666F724561636828286675';
wwv_flow_imp.g_varchar2_table(45) := '6E6374696F6E2874297B742E69643D3D73262628742E7374617475733D692C742E67726F757069643D64297D29297D66756E6374696F6E206228297B76617220723D302C653D6E756C6C3B643D64726167756C61287428732E66696E6428222E6B622D67';
wwv_flow_imp.g_varchar2_table(46) := '726F75702D636F6E7461696E65722229292E746F417272617928292C7B646972656374696F6E3A22766572746963616C222C7265766572744F6E5370696C6C3A21302C6D6F7665733A66756E6374696F6E28722C652C61297B72657475726E2074286129';
wwv_flow_imp.g_varchar2_table(47) := '2E636C6F7365737428222E6B622D67726F75702D6361726422292E6C656E6774683E307D7D292C753D5B5D2C742873292E66696E6428222E7265706F727467726F757022292E65616368282866756E6374696F6E28297B76617220723D74287468697329';
wwv_flow_imp.g_varchar2_table(48) := '2E617474722822646174612D67726F75702D696422293B72262621753F2E736F6D652828743D3E742E67726F757069643D3D3D7229292626752E70757368287B67726F757069643A727D297D29292C636F6E736F6C652E6C6F672875293B76617220613D';
wwv_flow_imp.g_varchar2_table(49) := '41727261792E66726F6D28646F63756D656E742E717565727953656C6563746F72416C6C28222E6B622D67726F75702D636F6E7461696E65722229293B6175746F5363726F6C6C285B77696E646F775D2E636F6E6361742861292C7B6D61785370656564';
wwv_flow_imp.g_varchar2_table(50) := '3A31352C6D617267696E3A3135302C706978656C733A372C7363726F6C6C5768656E4F7574736964653A21302C6175746F5363726F6C6C3A66756E6374696F6E28297B72657475726E20746869732E646F776E2626642E6472616767696E677D7D293B74';
wwv_flow_imp.g_varchar2_table(51) := '28222E6B622D67726F75702D726567696F6E203E202E6B622D6361726422292E65616368282866756E6374696F6E28742C72297B722E6164644576656E744C697374656E65722822746F7563686D6F7665222C2866756E6374696F6E2874297B742E7072';
wwv_flow_imp.g_varchar2_table(52) := '6576656E7444656661756C7428297D29297D29292C642E6F6E282264726167222C2866756E6374696F6E28612C6E297B766172206F3D742861293B723D6F2E696E64657828293B76617220693D6F2E6E65787428293B653D692E6C656E6774683E303F74';
wwv_flow_imp.g_varchar2_table(53) := '28695B305D293A6E756C6C3B76617220643D7B67726F757049643A6F2E617474722822646174612D67726F75702D696422292C736F7572636547726F7570496E6465783A727D3B30213D752E66696C746572282866756E6374696F6E2874297B72657475';
wwv_flow_imp.g_varchar2_table(54) := '726E20742E67726F757069643D3D642E67726F757049647D29292E6C656E6774683F732E7472696767657228226B616E62616E6472616767726F7570222C5B645D293A732E7472696767657228226B616E62616E6D616E75616C616C7465726174696F6E';
wwv_flow_imp.g_varchar2_table(55) := '6465746563746564222C5B645D297D29292C642E6F6E282264726F70222C2866756E6374696F6E28612C6E2C692C64297B76617220633D742861292C6C3D2874286E292C74286929292C673D7B67726F757049643A632E617474722822646174612D6772';
wwv_flow_imp.g_varchar2_table(56) := '6F75702D696422292C736F7572636547726F7570496E6465783A722C74617267657447726F7570496E6465783A632E696E64657828297D3B69662830213D752E66696C746572282866756E6374696F6E2874297B72657475726E20742E67726F75706964';
wwv_flow_imp.g_varchar2_table(57) := '3D3D64726167446174612E67726F757049647D29292E6C656E677468297B6966286F297472797B617065782E7365727665722E70726F63657373286F2C7B7830313A672E67726F757049642C7830323A672E736F7572636547726F7570496E6465782C78';
wwv_flow_imp.g_varchar2_table(58) := '30333A672E74617267657447726F7570496E6465787D2C7B737563636573733A66756E6374696F6E2874297B742E737563636573733F732E7472696767657228226B616E62616E616674657264726F7067726F7570222C5B675D293A28653F632E696E73';
wwv_flow_imp.g_varchar2_table(59) := '6572744265666F72652865293A6C2E617070656E642863292C672E73716C636F64653D743F2E73716C636F64652C732E7472696767657228226B616E62616E64726F7067726F75706572726F72222C5B675D29297D2C6572726F723A66756E6374696F6E';
wwv_flow_imp.g_varchar2_table(60) := '2874297B653F632E696E736572744265666F72652865293A6C2E617070656E642863292C732E7472696767657228226B616E62616E64726F7067726F75706572726F72222C5B675D297D2C64617461547970653A226A736F6E227D297D63617463682874';
wwv_flow_imp.g_varchar2_table(61) := '297B7D732E7472696767657228226B616E62616E64726F7067726F7570222C5B675D297D656C736520732E7472696767657228226B616E62616E6D616E75616C616C7465726174696F6E6465746563746564222C5B675D297D29297D7028292C6628292C';
wwv_flow_imp.g_varchar2_table(62) := '6228292C742861292E6F6E28227461626C656D6F64656C76696577706167656368616E6765222C2866756E6374696F6E28742C72297B7028292C692626692E64657374726F7928292C642626642E64657374726F7928292C6628292C6228297D29297D7D';
wwv_flow_imp.g_varchar2_table(63) := '7D28617065782E6A5175657279293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29187644483735272168)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'script.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E63742D6C6F61646572207B0A20202020706F736974696F6E3A206162736F6C7574653B0A20202020746F703A20373070783B0A2020202077696474683A20313030253B0A202020207A2D696E6465783A20313B0A20202020746578742D616C69676E3A';
wwv_flow_imp.g_varchar2_table(2) := '2063656E7465723B0A7D0A0A2E6B622D636F6C207B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A20202020706F736974696F6E3A2072656C61746976653B0A2020202077696474683A20313030253B0A20202020766572746963';
wwv_flow_imp.g_varchar2_table(3) := '616C2D616C69676E3A20746F703B0A20202020626F726465722D7261646975733A203570783B0A20202020626F726465723A2033707820736F6C696420766172282D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E64';
wwv_flow_imp.g_varchar2_table(4) := '2D636F6C6F72293B0A7D0A0A2E6B622D636F6C2D636F6E74656E74207B0A202020206865696768743A20313030253B0A2020202077696474683A20313030253B0A7D0A0A2E6B622D636F6C2D686561646572207B7D0A0A2E6B622D636F6C2D6865616465';
wwv_flow_imp.g_varchar2_table(5) := '722D636F6E74656E74207B0A20202020626F726465722D7261646975733A203570783B0A20202020626F726465722D746F703A2035707820736F6C696420234141413B0A202020206865696768743A20333070783B0A202020206D617267696E3A203570';
wwv_flow_imp.g_varchar2_table(6) := '782035707820307078203570783B0A7D0A0A2E6B622D636F6C2D6865616465722D636F6E74656E74202E7469746C65207B0A20202020706F736974696F6E3A2072656C61746976653B0A202020206C6566743A20313570783B0A20202020666F6E742D73';
wwv_flow_imp.g_varchar2_table(7) := '697A653A20312E33656D3B0A7D0A0A2E636172642D7469746C657B0A202020202F2A20746578742D6F766572666C6F773A20656C6C69707369733B200A2020202077686974652D73706163653A206E6F777261703B200A202020206F766572666C6F773A';
wwv_flow_imp.g_varchar2_table(8) := '2068696464656E3B200A202020206D61782D77696474683A20373570783B202A2F0A7D0A0A2E6B622D636F6C2D696E6E65722D686561646572207B0A20202020646973706C61793A206E6F6E653B0A7D0A0A2E6B622D636F6C2D696E6E65722D68656164';
wwv_flow_imp.g_varchar2_table(9) := '6572202E7469746C65207B0A20202020706F736974696F6E3A2072656C61746976653B0A20202020666F6E742D73697A653A20312E33656D3B0A202020206D617267696E3A2035707820313070782030707820313070783B0A7D0A0A2E6B622D726F7720';
wwv_flow_imp.g_varchar2_table(10) := '7B0A20202020646973706C61793A202D6D732D666C65783B0A20202020646973706C61793A202D7765626B69742D666C65783B0A20202020646973706C61793A20666C65783B0A7D0A0A2E6B622D6974656D2D726567696F6E207B0A202020206261636B';
wwv_flow_imp.g_varchar2_table(11) := '67726F756E643A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B0A202020206D696E2D6865696768743A2031363070783B0A7D0A0A2E6B622D67726F75702D726567696F6E207B7D0A0A2E6B622D636172';
wwv_flow_imp.g_varchar2_table(12) := '64207B0A0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A2020202077696474683A20313030253B0A0A202020202F2A20626F782D736861646F773A203020317078203470782030207267626128302C20302C20302C20302E343429';
wwv_flow_imp.g_varchar2_table(13) := '3B202A2F0A20202020626F726465722D7261646975733A203170783B0A202020202F2A20636F6C6F723A207267626128302C20302C20302C20302E3837293B202A2F0A202020207472616E736974696F6E3A20616C6C20302E347320656173653B0A0A20';
wwv_flow_imp.g_varchar2_table(14) := '2020202F2A206261636B67726F756E643A20766172282D2D75742D636F6D706F6E656E742D62616467652D6261636B67726F756E642D636F6C6F72293B202A2F0A202020206261636B67726F756E642D636F6C6F723A766172282D2D75742D636F6D706F';
wwv_flow_imp.g_varchar2_table(15) := '6E656E742D696E6E65722D626F726465722D636F6C6F72293B0A20202020626F782D736861646F773A766172282D2D75742D736861646F772D736D293B0A202020206D617267696E3A20303B0A20202020706F736974696F6E3A2072656C61746976653B';
wwv_flow_imp.g_varchar2_table(16) := '0A202020206F766572666C6F773A2068696464656E3B0A7D0A0A2E6B622D636172642D647261676761626C65207B0A20202020637572736F723A20677261623B0A7D0A0A2E6B622D636172643A686F766572207B0A202020206261636B67726F756E643A';
wwv_flow_imp.g_varchar2_table(17) := '20766172282D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F72293B0A20202020626F782D736861646F773A203020313070782032307078207267626128302C20302C20302C20302E3139292C203020';
wwv_flow_imp.g_varchar2_table(18) := '36707820367078207267626128302C20302C20302C20302E3233293B0A7D0A0A2E6B622D63617264202E636172642D686561646572207B0A20202020666C6F61743A206C6566743B0A20202020746578742D616C69676E3A2063656E7465723B0A202020';
wwv_flow_imp.g_varchar2_table(19) := '206D617267696E3A203670782030707820367078203670783B0A20202020626F782D736861646F773A203020313270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C2030203470782032307078203070';
wwv_flow_imp.g_varchar2_table(20) := '78207267626128302C20302C20302C20302E3132292C20302037707820387078202D3570782072676261283233302C203233302C203233302C20302E32293B0A202020207472616E736974696F6E3A20616C6C20312E307320656173653B0A7D0A0A2E6B';
wwv_flow_imp.g_varchar2_table(21) := '622D63617264202E636172642D6865616465722069207B0A20202020666F6E742D73697A653A20313870783B0A202020206C696E652D6865696768743A20323870783B0A2020202077696474683A20323870783B0A202020206865696768743A20323870';
wwv_flow_imp.g_varchar2_table(22) := '783B0A20202020636F6C6F723A2077686974653B0A202020207472616E736974696F6E3A20616C6C20312E307320656173653B0A7D0A0A2E6B622D63617264202E636172642D636F6E74656E74207B0A20202020746578742D616C69676E3A206C656674';
wwv_flow_imp.g_varchar2_table(23) := '3B0A2020202070616464696E673A2030203670783B0A202020206F766572666C6F773A2068696464656E3B0A202020206D696E2D6865696768743A20343070783B0A202020202F2A20646973706C61793A207461626C653B202A2F0A2020202064697370';
wwv_flow_imp.g_varchar2_table(24) := '6C61793A20666C65783B0A20202020616C69676E2D6974656D733A2063656E7465723B0A202020202F2A206F766572666C6F772D777261703A20616E7977686572653B202A2F0A7D0A0A2E6B622D63617264202E7469746C65207B0A20202020666F6E74';
wwv_flow_imp.g_varchar2_table(25) := '2D73697A653A2031656D3B0A202020202F2A20646973706C61793A207461626C652D63656C6C3B202A2F0A20202020766572746963616C2D616C69676E3A206D6964646C653B0A20202020646973706C61793A20666C65783B0A20202020616C69676E2D';
wwv_flow_imp.g_varchar2_table(26) := '6974656D733A2063656E7465723B0A202020206F766572666C6F772D777261703A20616E7977686572653B0A202020200A7D0A0A2E6B622D63617264202E636172642D666F6F746572207B0A202020206D617267696E3A20302032307078203670783B0A';
wwv_flow_imp.g_varchar2_table(27) := '2020202070616464696E672D746F703A203370783B0A20202020626F726465722D746F703A2031707820736F6C696420236565656565653B0A20202020636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F';
wwv_flow_imp.g_varchar2_table(28) := '6C6F72293B0A202020206F766572666C6F772D777261703A20616E7977686572653B0A7D0A0A2E6B622D63617264202E636172642D666F6F746572203E20646976207B0A20202020646973706C61793A20696E6C696E652D626C6F636B3B0A2020202077';
wwv_flow_imp.g_varchar2_table(29) := '696474683A20313030253B0A7D0A0A2E6B622D6E65772D6974656D2D726567696F6E207B0A20202020636C6561723A20626F74683B0A7D0A0A2E6B622D6974656D2D636F6E7461696E6572207B0A202020206865696768743A20313030253B0A20202020';
wwv_flow_imp.g_varchar2_table(30) := '6D696E2D6865696768743A20313070783B0A2020202070616464696E673A203570783B0A202020206D61782D6865696768743A2035323070783B0A202020206F766572666C6F773A206175746F3B0A202020200A7D0A0A2E6B622D6974656D2D636F6E74';
wwv_flow_imp.g_varchar2_table(31) := '61696E6572202E6B622D63617264207B0A20202020666C6F61743A206C6566743B0A202020206D617267696E3A20357078203570783B0A202020206D696E2D6865696768743A20302E31323572656D3B0A2020202077696474683A2063616C6328313030';
wwv_flow_imp.g_varchar2_table(32) := '25202D2031307078293B0A202020206D61782D77696474683A2032303070783B0A7D0A0A2E6B622D6974656D2D636F6E7461696E65722D776974682D6E65772D63617264207B0A202020206865696768743A2063616C632831303025202D203430707829';
wwv_flow_imp.g_varchar2_table(33) := '3B0A202020200A7D0A0A2E6B622D6E65772D63617264207B0A20202020666C6F61743A206C6566743B0A20202020746578742D616C69676E3A2063656E7465723B0A202020206D617267696E3A203370782031307078203130707820313070783B0A2020';
wwv_flow_imp.g_varchar2_table(34) := '20207472616E736974696F6E3A20616C6C20302E33732063756269632D62657A696572282E32352C202E382C202E32352C2031293B0A20202020626F782D736861646F773A20302031707820337078207267626128302C20302C20302C20302E3132292C';
wwv_flow_imp.g_varchar2_table(35) := '20302031707820327078207267626128302C20302C20302C20302E3234293B0A202020206261636B67726F756E643A20233535633535353B0A7D0A0A2E6B622D6E65772D636172643A686F766572207B0A20202020626F782D736861646F773A20302031';
wwv_flow_imp.g_varchar2_table(36) := '3070782032307078207267626128302C20302C20302C20302E3139292C20302036707820367078207267626128302C20302C20302C20302E3233293B0A7D0A0A2E6B622D6E65772D636172642069207B0A20202020666F6E742D73697A653A2031387078';
wwv_flow_imp.g_varchar2_table(37) := '3B0A202020206C696E652D6865696768743A20323870783B0A2020202077696474683A20323870783B0A202020206865696768743A20323870783B0A20202020636F6C6F723A2077686974653B0A7D0A0A2E6B622D67726F75702D726567696F6E202E63';
wwv_flow_imp.g_varchar2_table(38) := '6172642D686561646572207B0A202020206261636B67726F756E643A20233339613664613B0A7D0A0A2E6B622D636F6C6C61707361626C65207B0A20202020666C6F61743A206C6566743B0A20202020746578742D616C69676E3A2063656E7465723B0A';
wwv_flow_imp.g_varchar2_table(39) := '202020206D617267696E3A203670782031707820367078203770783B0A20202020637572736F723A20706F696E7465723B0A7D0A0A2E6B622D636F6C6C61707361626C652069207B0A20202020666F6E742D73697A653A20313570783B0A202020206C69';
wwv_flow_imp.g_varchar2_table(40) := '6E652D6865696768743A20323870783B0A2020202077696474683A20313870783B0A202020202F2A6865696768743A20323870783B2A2F0A20202020636F6C6F723A20233030303B0A7D0A0A2E6B622D636F6C6C61707361626C653A686F766572207B0A';
wwv_flow_imp.g_varchar2_table(41) := '202020206D617267696E3A203570782030707820357078203670783B0A20202020626F726465723A2031707820736F6C696420236565653B0A7D0A0A2E6B622D636F6C6C6170736564207B0A2020202077696474683A20313030252021696D706F727461';
wwv_flow_imp.g_varchar2_table(42) := '6E743B0A7D0A0A2F2A0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A2031323739707829207B0A0A202020202E6B622D6974656D2D726567696F6E2C0A202020202E6B622D67726F75702D726567696F6E2C0A20';
wwv_flow_imp.g_varchar2_table(43) := '2020202E6B622D636F6C2D686561646572207B0A202020202020202077696474683A20313030252021696D706F7274616E743B0A202020207D0A0A202020202E6B622D63617264207B0A20202020202020206D61782D77696474683A206E6F6E65202169';
wwv_flow_imp.g_varchar2_table(44) := '6D706F7274616E743B0A202020207D0A7D0A2A2F0A0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A2031323030707829207B0A202020202E6B622D726F77207B0A2020202020202020646973706C61793A202D6D';
wwv_flow_imp.g_varchar2_table(45) := '732D696E6C696E652D626F783B0A2020202020202020646973706C61793A202D7765626B69742D696E6C696E652D626F783B0A2020202020202020646973706C61793A20696E6C696E652D626C6F636B3B0A202020207D0A0A202020202E6B622D636F6C';
wwv_flow_imp.g_varchar2_table(46) := '2D686561646572207B0A2020202020202020646973706C61793A206E6F6E653B0A202020207D0A0A202020202E6B622D6974656D2D726567696F6E2C0A202020202E6B622D67726F75702D726567696F6E2C0A202020202E6B622D636F6C2D6865616465';
wwv_flow_imp.g_varchar2_table(47) := '72207B0A202020202020202077696474683A20313030252021696D706F7274616E743B0A202020207D0A0A202020202F2A202E6B622D63617264207B0A20202020202020206D61782D77696474683A2032303070782021696D706F7274616E743B0A2020';
wwv_flow_imp.g_varchar2_table(48) := '20207D202A2F0A0A202020202E6B622D6974656D2D636F6E7461696E6572207B0A20202020202020206865696768743A20313030253B0A20202020202020206D696E2D6865696768743A20313070783B0A202020202020202070616464696E673A203570';
wwv_flow_imp.g_varchar2_table(49) := '783B0A20202020202020206D61782D6865696768743A2033323070783B0A20202020202020206F766572666C6F773A206175746F3B0A20202020202020200A202020207D0A0A202020202E6B622D6974656D2D726567696F6E207B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(50) := '646973706C61793A202D6D732D666C65783B0A2020202020202020646973706C61793A202D7765626B69742D666C65783B0A2020202020202020646973706C61793A20666C65783B0A202020207D0A0A202020202E6B622D636F6C2D636F6E74656E7420';
wwv_flow_imp.g_varchar2_table(51) := '7B0A2020202020202020626F726465722D7261646975733A203570783B0A2020202020202020626F726465722D6C6566743A2035707820736F6C696420234141413B0A202020207D0A0A202020202E6B622D636F6C2D696E6E65722D686561646572207B';
wwv_flow_imp.g_varchar2_table(52) := '0A2020202020202020646973706C61793A20696E6C696E652D626C6F636B3B0A202020207D0A0A202020202E6B622D67726F75702D726567696F6E207B0A2020202020202020626F726465723A206E6F6E653B0A202020207D0A0A202020202E6B622D67';
wwv_flow_imp.g_varchar2_table(53) := '726F75702D726567696F6E203E20646976207B0A20202020202020206D617267696E3A203370782021696D706F7274616E743B0A202020202020202077696474683A2063616C632831303025202D20367078293B0A2020202020202020626F726465722D';
wwv_flow_imp.g_varchar2_table(54) := '7261646975733A203570783B0A20202020202020202F2A20626F726465722D746F703A2035707820736F6C696420236161613B0A2020202020202020626F726465722D6C6566743A2035707820736F6C696420236161613B202A2F0A202020207D0A0A20';
wwv_flow_imp.g_varchar2_table(55) := '2020202E6B622D6E65772D67726F75702D726567696F6E203E20646976207B0A2020202020202020626F726465722D746F703A206E6F6E653B0A202020207D0A0A202020202E6B622D67726F75702D726567696F6E202E6B622D63617264207B0A202020';
wwv_flow_imp.g_varchar2_table(56) := '2020202020646973706C61793A20696E68657269743B0A202020207D0A0A202020202E6B622D726F773A3A6166746572207B0A20202020202020206D617267696E2D626F74746F6D3A20323070783B0A202020207D0A7D0A0A2F2A2044726167756C6120';
wwv_flow_imp.g_varchar2_table(57) := '43535320202A2F0A2E67752D6D6972726F72207B0A20202020706F736974696F6E3A2066697865642021696D706F7274616E743B0A202020206D617267696E3A20302021696D706F7274616E743B0A202020207A2D696E6465783A20393939392021696D';
wwv_flow_imp.g_varchar2_table(58) := '706F7274616E743B0A202020206F7061636974793A20302E383B0A202020202D6D732D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D383029223B0A2020';
wwv_flow_imp.g_varchar2_table(59) := '202066696C7465723A20616C706861286F7061636974793D3830293B0A7D0A0A2E67752D68696465207B0A20202020646973706C61793A206E6F6E652021696D706F7274616E743B0A7D0A0A2E67752D756E73656C65637461626C65207B0A202020202D';
wwv_flow_imp.g_varchar2_table(60) := '7765626B69742D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B0A202020202D6D6F7A2D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B0A202020202D6D732D757365722D73656C6563743A206E6F6E';
wwv_flow_imp.g_varchar2_table(61) := '652021696D706F7274616E743B0A20202020757365722D73656C6563743A206E6F6E652021696D706F7274616E743B0A7D0A0A2E67752D7472616E736974207B0A202020206F7061636974793A20302E323B0A202020202D6D732D66696C7465723A2022';
wwv_flow_imp.g_varchar2_table(62) := '70726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D323029223B0A2020202066696C7465723A20616C706861286F7061636974793D3230293B0A7D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29219781792473803121)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'style.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '617065782E6A51756572792820617065782E6750616765436F6E746578742420292E6F6E282022617065787265616479656E64222C2066756E6374696F6E2820652029207B0D0A202020202428272E732D672D636F6E7461696E657227292E6561636828';
wwv_flow_imp.g_varchar2_table(2) := '66756E6374696F6E28297B0D0A20202020202020206B616E62616E2E696E697469616C697A65282723272B746869732E69642C746869732E676574417474726962757465282764726F706974656D616A617827292C746869732E67657441747472696275';
wwv_flow_imp.g_varchar2_table(3) := '7465282764726F7067726F7570616A61782729290D0A202020207D293B0D0A7D20293B200D0A0D0A0D0A766172206B616E62616E203D202866756E6374696F6E20282429207B0D0A20202020766172206B616E62616E636F756E74203D202428272E732D';
wwv_flow_imp.g_varchar2_table(4) := '672D636F6E7461696E657227292E6C656E6774680D0A2020202076617220696E697469616C697A6564203D2066616C73653B0D0A202020202F2A20676574206D6F64656C202A2F0D0A202020200D0A2020202072657475726E207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(5) := '20696E697469616C697A653A2066756E6374696F6E202820706172656E7449442C64726F706974656D616A61782C64726F7067726F7570616A617829207B0D0A2020202020202020202020200D0A202020202020202020202020766172206472616B6549';
wwv_flow_imp.g_varchar2_table(6) := '74656D73203D206E756C6C3B0D0A202020202020202020202020766172206472616B6547726F757073203D206E756C6C3B0D0A202020202020202020202020766172206C6173744974656D7344617461203D205B5D3B0D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(7) := '766172206C61737447726F75707344617461203D205B5D3B0D0A2020202020202020202020206B616E62616E636F756E74202D3D20313B0D0A0D0A20202020202020202020202069662028696E697469616C697A6564297B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(8) := '20202020202072657475726E3B200D0A2020202020202020202020207D200D0A202020202020202020202020696E697469616C697A6564203D206B616E62616E636F756E74203D3D2030203F20747275653A66616C73653B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(9) := '202076617220706172656E74203D20242820706172656E744944293B0D0A2020202020202020202020206C657420746324203D20706172656E742E66696E6428272E6B622D67726F75702D636F6E7461696E657227292E706172656E7428293B0D0A2020';
wwv_flow_imp.g_varchar2_table(10) := '202020202020202020206C65742076696577496E7374616E6365203D207463242E7461626C654D6F64656C566965772827696E7374616E636527293B0D0A2020202020202020202020206C6574206D6F64656C203D207463242E7461626C654D6F64656C';
wwv_flow_imp.g_varchar2_table(11) := '5669657728276765744D6F64656C27293B0D0A2020202020202020202020200D0A2020202020202020202020202F2F6D6F64656C2E7365744F7074696F6E28276564697461626C65272C74727565290D0A0D0A20202020202020202020202066756E6374';
wwv_flow_imp.g_varchar2_table(12) := '696F6E2072656C6F63617465286974656D73546F46696E642C736F757263654974656D496E646578297B0D0A20202020202020202020202020202020706172656E74203D20242820706172656E744944293B0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(13) := '2428706172656E744944292E66696E64286974656D73546F46696E643F6974656D73546F46696E643A275B72656C6F636174696F6E6E6565645D27292E656163682866756E6374696F6E28297B0D0A202020202020202020202020202020202020202076';
wwv_flow_imp.g_varchar2_table(14) := '617220246974656D436F6E7461696E6572203D20242874686973293B0D0A20202020202020202020202020202020202020200D0A202020202020202020202020202020202020202076617220636F6C4964203D20246974656D436F6E7461696E65722E61';
wwv_flow_imp.g_varchar2_table(15) := '74747228276461746173746174757327293B200D0A202020202020202020202020202020202020202076617220646174616964203D20246974656D436F6E7461696E65722E617474722827646174612D696427293B200D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(16) := '20202020202020200D0A20202020202020202020202020202020202020207661722067726F75706964203D206E756C6C3B0D0A20202020202020202020202020202020202020200D0A0D0A2020202020202020202020202020202020202020696628636F';
wwv_flow_imp.g_varchar2_table(17) := '6C4964297B0D0A202020202020202020202020202020202020202020202020766172202467726F75703B0D0A2020202020202020202020202020202020202020202020202F2A204E6F74206E65656465642062656361757365206D6F64656C2E73657452';
wwv_flow_imp.g_varchar2_table(18) := '65636F7264207573696E6720696E7374656164206F66206F7665727772697465206265686176696F7572202A2F0D0A2020202020202020202020202020202020202020202020202F2A766172206361726444617461203D206C6173744974656D73446174';
wwv_flow_imp.g_varchar2_table(19) := '612E66696C7465722866756E6374696F6E286529207B0D0A2020202020202020202020202020202020202020202020202020202072657475726E20652E6964203D3D206461746169640D0A2020202020202020202020202020202020202020202020207D';
wwv_flow_imp.g_varchar2_table(20) := '293B0D0A20202020202020202020202020202020202020202020202069662863617264446174613F2E6C656E677468203E203020297B0D0A20202020202020202020202020202020202020202020202020202020636F6C4964203D206361726444617461';
wwv_flow_imp.g_varchar2_table(21) := '5B305D2E7374617475733B0D0A2020202020202020202020202020202020202020202020202020202067726F75706964203D2063617264446174615B305D2E67726F757069643B0D0A202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(22) := '202467726F7570203D20706172656E742E66696E6428275B646174612D67726F75702D69643D22272B67726F757069642B27225D27293B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(23) := '2020202020202020656C73657B0D0A202020202020202020202020202020202020202020202020202020202467726F7570203D20246974656D436F6E7461696E65722E636C6F7365737428272E7265706F727467726F757027293B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(24) := '20202020202020202020202020202020207D202A2F0D0A2020202020202020202020202020202020202020202020200D0A202020202020202020202020202020202020202020202020766172206461746147726F75704964203D206D6F64656C2E676574';
wwv_flow_imp.g_varchar2_table(25) := '5265636F726456616C7565286461746169642C274150455824434F4E54524F4C5F425245414B5F56414C554527290D0A2020202020202020202020202020202020202020202020202467726F7570203D20706172656E742E66696E6428275B646174612D';
wwv_flow_imp.g_varchar2_table(26) := '67726F75702D69643D272B6461746147726F757049642B275D27290D0A2020202020202020202020202020202020202020202020207661722024746172676574526567696F6E203D20282467726F7570202626202467726F75702E6C656E677468290D0A';
wwv_flow_imp.g_varchar2_table(27) := '202020202020202020202020202020202020202020202020202020203F202467726F75702E66696E6428272E6B622D6974656D2D636F6E7461696E65725B646174617374617475733D2227202B20636F6C4964202B2027225D27290D0A20202020202020';
wwv_flow_imp.g_varchar2_table(28) := '2020202020202020202020202020202020202020203A20706172656E742E66696E6428272E6B622D6974656D2D636F6E7461696E65725B646174617374617475733D2227202B20636F6C4964202B2027225D27293B0D0A20202020202020202020202020';
wwv_flow_imp.g_varchar2_table(29) := '20202020202020202020200D0A20202020202020202020202020202020202020202020202069662824746172676574526567696F6E2E6C656E677468297B0D0A202020202020202020202020202020202020202020202020202020200D0A202020202020';
wwv_flow_imp.g_varchar2_table(30) := '2020202020202020202020202020202020202020202076617220246368696C6472656E203D2024746172676574526567696F6E2E6368696C6472656E28293B0D0A2020202020202020202020202020202020202020202020202020202069662028246368';
wwv_flow_imp.g_varchar2_table(31) := '696C6472656E2E6C656E677468203E20736F757263654974656D496E64657829207B0D0A2020202020202020202020202020202020202020202020202020202020202020246974656D436F6E7461696E65722E696E736572744265666F72652824636869';
wwv_flow_imp.g_varchar2_table(32) := '6C6472656E2E657128736F757263654974656D496E64657829293B0D0A202020202020202020202020202020202020202020202020202020207D20656C7365207B0D0A202020202020202020202020202020202020202020202020202020202020202024';
wwv_flow_imp.g_varchar2_table(33) := '746172676574526567696F6E2E617070656E6428246974656D436F6E7461696E6572293B0D0A202020202020202020202020202020202020202020202020202020207D0D0A0D0A202020202020202020202020202020202020202020202020202020200D';
wwv_flow_imp.g_varchar2_table(34) := '0A0D0A20202020202020202020202020202020202020202020202020202020766172206361726469636F6E203D202428706172656E744944292E66696E6428275B706172656E7468656164657269643D22272B636F6C49642B27225D27292E6174747228';
wwv_flow_imp.g_varchar2_table(35) := '27636172642D69636F6E27293B0D0A202020202020202020202020202020202020202020202020202020207661722063617264636F6C6F72203D202428706172656E744944292E66696E6428275B706172656E7468656164657269643D22272B636F6C49';
wwv_flow_imp.g_varchar2_table(36) := '642B27225D27292E617474722827636172642D69636F6E2D636F6C6F7227293B0D0A0D0A20202020202020202020202020202020202020202020202020202020766172202469636F6E203D20242874686973292E66696E6428272E636172642D68656164';
wwv_flow_imp.g_varchar2_table(37) := '6572203E206927293B0D0A0D0A2020202020202020202020202020202020202020202020202020202069662028212469636F6E2E686173436C617373282773706563696669635F69636F6E272929207B0D0A202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(38) := '20202020202020202020202020202469636F6E2E616464436C617373286361726469636F6E293B0D0A202020202020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(39) := '0D0A20202020202020202020202020202020202020202020202020202020766172202463617264486561646572203D20242874686973292E66696E6428272E636172642D68656164657227293B0D0A0D0A20202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(40) := '202020202020202020696620282124636172644865616465722E686173436C617373282773706563696669635F636F6C6F72272929207B0D0A20202020202020202020202020202020202020202020202020202020202020202463617264486561646572';
wwv_flow_imp.g_varchar2_table(41) := '2E63737328276261636B67726F756E64272C2063617264636F6C6F72293B0D0A202020202020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020202020200D0A20202020202020';
wwv_flow_imp.g_varchar2_table(42) := '202020202020202020202020202020202020202020246974656D436F6E7461696E65722E72656D6F766541747472282772656C6F636174696F6E6E65656427290D0A20202020202020202020202020202020202020202020202020202020246974656D43';
wwv_flow_imp.g_varchar2_table(43) := '6F6E7461696E65722E6373732827646973706C6179272C202727293B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(44) := '0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020200D0A2020202020202020202020207D0D0A0D0A20202020202020202020202072656C6F6361746528293B0D0A2020202020202020202020200D0A202020';
wwv_flow_imp.g_varchar2_table(45) := '20202020202020202061646444726167756C61546F4974656D7328293B0D0A20202020202020202020202061646444726167756C61546F47726F75707328293B0D0A2020202020202020202020202428706172656E744944292E6F6E2820227461626C65';
wwv_flow_imp.g_varchar2_table(46) := '6D6F64656C76696577706167656368616E6765222C2066756E6374696F6E28206576656E742C20646174612029207B0D0A2020202020202020202020202020202072656C6F6361746528293B0D0A20202020202020202020202020202020696620286472';
wwv_flow_imp.g_varchar2_table(47) := '616B654974656D7329207B0D0A20202020202020202020202020202020202020206472616B654974656D732E64657374726F7928293B0D0A202020202020202020202020202020207D0D0A20202020202020202020202020202020696620286472616B65';
wwv_flow_imp.g_varchar2_table(48) := '47726F75707329207B0D0A20202020202020202020202020202020202020206472616B6547726F7570732E64657374726F7928293B0D0A202020202020202020202020202020207D0D0A2020202020202020202020202020202061646444726167756C61';
wwv_flow_imp.g_varchar2_table(49) := '546F4974656D7328293B0D0A2020202020202020202020202020202061646444726167756C61546F47726F75707328293B0D0A202020202020202020202020202020200D0A2020202020202020202020207D20293B0D0A0D0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(50) := '2066756E6374696F6E2061646444726167756C61546F4974656D732829207B0D0A0D0A2020202020202020202020202020202076617220736F757263654974656D496E646578203D20303B0D0A2020202020202020202020202020202076617220736F75';
wwv_flow_imp.g_varchar2_table(51) := '7263654974656D5369626C696E67203D206E756C6C3B0D0A202020202020202020202020202020206472616B654974656D73203D2064726167756C61282428706172656E742E66696E6428272E6B622D6974656D2D636F6E7461696E65722729292E746F';
wwv_flow_imp.g_varchar2_table(52) := '417272617928292C207B0D0A2020202020202020202020202020202020202020646972656374696F6E3A2027766572746963616C272C0D0A20202020202020202020202020202020202020207265766572744F6E5370696C6C3A20747275652C200D0A20';
wwv_flow_imp.g_varchar2_table(53) := '20202020202020202020202020202020202020616363657074733A2066756E6374696F6E2028656C2C207461726765742C20736F757263652C207369626C696E6729207B0D0A20202020202020202020202020202020202020202020202072657475726E';
wwv_flow_imp.g_varchar2_table(54) := '20747275653B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020206C6173744974656D7344617461203D205B5D3B0D0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(55) := '20202020202428706172656E74292E66696E6428272E6B622D6974656D7327292E656163682866756E6374696F6E2829207B0D0A202020202020202020202020202020202020202076617220646174614964203D20242874686973292E61747472282764';
wwv_flow_imp.g_varchar2_table(56) := '6174612D696427293B0D0A202020202020202020202020202020202020202076617220737461747573203D20242874686973292E6174747228276461746173746174757327293B0D0A20202020202020202020202020202020202020207661722067726F';
wwv_flow_imp.g_varchar2_table(57) := '75706964203D20242874686973292E636C6F7365737428272E7265706F727467726F757027292E617474722827646174612D67726F75702D696427293B0D0A20202020202020202020202020202020202020202F2F204966206964206E6F742065786973';
wwv_flow_imp.g_varchar2_table(58) := '7420696E206C6173744974656D7344617461207468656E206164640D0A20202020202020202020202020202020202020206966202864617461496420262620216C6173744974656D73446174613F2E736F6D65286974656D203D3E206974656D2E696420';
wwv_flow_imp.g_varchar2_table(59) := '3D3D3D206461746149642929207B0D0A2020202020202020202020202020202020202020202020206C6173744974656D73446174612E70757368287B0D0A20202020202020202020202020202020202020202020202020202020226964223A2064617461';
wwv_flow_imp.g_varchar2_table(60) := '49642C0D0A2020202020202020202020202020202020202020202020202020202022737461747573223A207374617475732C0D0A202020202020202020202020202020202020202020202020202020202267726F75706964223A67726F757069640D0A20';
wwv_flow_imp.g_varchar2_table(61) := '20202020202020202020202020202020202020202020207D293B0D0A20202020202020202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020200D0A0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(62) := '202020202020202076617220636F6E7461696E657273203D2041727261792E66726F6D28646F63756D656E742E717565727953656C6563746F72416C6C28272E6B622D6974656D2D636F6E7461696E65722729293B0D0A20202020202020202020202020';
wwv_flow_imp.g_varchar2_table(63) := '202020766172207363726F6C6C203D206175746F5363726F6C6C280D0A20202020202020202020202020202020202020205B77696E646F775D2E636F6E63617428636F6E7461696E657273292C0D0A20202020202020202020202020202020202020207B';
wwv_flow_imp.g_varchar2_table(64) := '0D0A2020202020202020202020202020202020202020202020206D617853706565643A2031352C0D0A2020202020202020202020202020202020202020202020206D617267696E3A203135302C0D0A202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(65) := '202020706978656C733A20372C0D0A2020202020202020202020202020202020202020202020207363726F6C6C5768656E4F7574736964653A20747275652C0D0A2020202020202020202020202020202020202020202020206175746F5363726F6C6C3A';
wwv_flow_imp.g_varchar2_table(66) := '2066756E6374696F6E28297B0D0A2020202020202020202020202020202020202020202020202020202072657475726E20746869732E646F776E202626206472616B654974656D732E6472616767696E673B0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(67) := '20202020202020207D0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020293B0D0A0D0A202020202020202020202020202020202F2A20202020202020202020202020202020202020200D0A20202020';
wwv_flow_imp.g_varchar2_table(68) := '2020202020202020202020204F6E206D6F62696C6520746869732070726576656E7473207468652064656661756C742070616765207363726F6C6C696E67207768696C65206472616767696E6720616E206974656D2E200D0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(69) := '202020202068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3438370D0A202020202020202020202020202020202A2F0D0A20202020202020202020202020202020706172656E742E66696E64';
wwv_flow_imp.g_varchar2_table(70) := '28222E6B622D67726F75702D636F6E7461696E657222292E6F6E2827636C69636B272C20272E6B622D636F6C6C61707361626C65272C2066756E6374696F6E286576656E7429207B0D0A2020202020202020202020202020202020202020636F6E736F6C';
wwv_flow_imp.g_varchar2_table(71) := '652E6C6F6728242874686973292E706172656E7428292E66696E6428222E636172642D666F6F7465722229290D0A2020202020202020202020202020202020202020746F67676C6547726F757028242874686973292E706172656E7428292C2074727565';
wwv_flow_imp.g_varchar2_table(72) := '293B0D0A202020202020202020202020202020207D293B0D0A20202020202020202020202020202020706172656E742E66696E6428272E6B622D6974656D2D636F6E7461696E657227292E6F6E2827746F7563686D6F7665272C20272E6B622D6974656D';
wwv_flow_imp.g_varchar2_table(73) := '73272C2066756E6374696F6E286576656E7429207B0D0A20202020202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0D0A202020202020202020202020202020207D293B0D0A0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(74) := '202020202020206472616B654974656D732E6F6E282264726167222C2066756E6374696F6E2028656C2C20736F7572636529207B0D0A2020202020202020202020202020202020202020766172205F656C203D202428656C293B0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(75) := '202020202020202020202020766172205F736F75726365203D202428736F75726365293B0D0A0D0A2020202020202020202020202020202020202020736F757263654974656D496E646578203D205F656C2E696E64657828293B0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(76) := '202020202020202020202020766172206E657874203D205F656C2E6E65787428293B0D0A2020202020202020202020202020202020202020736F757263654974656D5369626C696E67203D206E6578742E6C656E677468203E2030203F2024286E657874';
wwv_flow_imp.g_varchar2_table(77) := '5B305D29203A206E756C6C3B0D0A0D0A2020202020202020202020202020202020202020766172206472616744617461203D207B0D0A202020202020202020202020202020202020202020202020226974656D4964223A205F656C2E6174747228226461';
wwv_flow_imp.g_varchar2_table(78) := '74612D696422292C0D0A20202020202020202020202020202020202020202020202022736F7572636547726F75704964223A205F736F757263652E636C6F7365737428272E6B622D726F7727292E617474722822646174612D67726F75702D696422292C';
wwv_flow_imp.g_varchar2_table(79) := '0D0A20202020202020202020202020202020202020202020202022736F75726365436F6C756D6E4964223A205F736F757263652E6174747228226461746173746174757322292C0D0A20202020202020202020202020202020202020202020202022736F';
wwv_flow_imp.g_varchar2_table(80) := '757263654974656D496E646578223A20736F757263654974656D496E6465780D0A20202020202020202020202020202020202020207D3B0D0A0D0A2020202020202020202020202020202020202020766172206361726444617461203D206C6173744974';
wwv_flow_imp.g_varchar2_table(81) := '656D73446174612E66696C7465722866756E6374696F6E286529207B0D0A2020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020202020202072657475726E20652E6964203D3D205F656C2E61';
wwv_flow_imp.g_varchar2_table(82) := '7474722822646174612D696422290D0A20202020202020202020202020202020202020207D293B0D0A0D0A202020202020202020202020202020202020202069662863617264446174612E6C656E677468203D3D2030297B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(83) := '2020202020202020202020202020706172656E742E7472696767657228276B616E62616E6D616E75616C616C7465726174696F6E6465746563746564272C205B64726167446174615D293B0D0A2020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(84) := '2072657475726E3B0D0A20202020202020202020202020202020202020207D0D0A0D0A2020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E64726167272C205B64726167446174615D293B0D0A2020';
wwv_flow_imp.g_varchar2_table(85) := '20202020202020202020202020207D293B0D0A202020202020202020202020202020206472616B654974656D732E6F6E282264726F70222C2066756E6374696F6E2028656C2C207461726765742C20736F757263652C207369626C696E6729207B0D0A20';
wwv_flow_imp.g_varchar2_table(86) := '20202020202020202020202020202020202020766172205F656C203D202428656C293B0D0A2020202020202020202020202020202020202020766172205F746172676574203D202428746172676574293B0D0A2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(87) := '202020766172205F736F75726365203D202428736F75726365293B0D0A0D0A20202020202020202020202020202020202020207661722064726F7044617461203D207B0D0A202020202020202020202020202020202020202020202020226974656D4964';
wwv_flow_imp.g_varchar2_table(88) := '223A205F656C2E617474722822646174612D696422292C0D0A20202020202020202020202020202020202020202020202022736F7572636547726F75704964223A205F736F757263652E636C6F7365737428272E6B622D726F7727292E61747472282264';
wwv_flow_imp.g_varchar2_table(89) := '6174612D67726F75702D696422292C0D0A20202020202020202020202020202020202020202020202022736F75726365436F6C756D6E4964223A205F736F757263652E6174747228226461746173746174757322292C0D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(90) := '20202020202020202020202022736F757263654974656D496E646578223A20736F757263654974656D496E6465782C0D0A2020202020202020202020202020202020202020202020202274617267657447726F75704964223A205F7461726765742E636C';
wwv_flow_imp.g_varchar2_table(91) := '6F7365737428272E6B622D726F7727292E617474722822646174612D67726F75702D696422292C0D0A20202020202020202020202020202020202020202020202022746172676574436F6C756D6E4964223A205F7461726765742E617474722822646174';
wwv_flow_imp.g_varchar2_table(92) := '6173746174757322292C0D0A202020202020202020202020202020202020202020202020227461726765744974656D496E646578223A205F656C2E696E64657828290D0A20202020202020202020202020202020202020207D3B0D0A0D0A202020202020';
wwv_flow_imp.g_varchar2_table(93) := '2020202020202020202020202020766172206361726444617461203D206C6173744974656D73446174612E66696C7465722866756E6374696F6E286529207B0D0A2020202020202020202020202020202020202020202020200D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(94) := '20202020202020202020202020202072657475726E20652E6964203D3D205F656C2E617474722822646174612D696422290D0A20202020202020202020202020202020202020207D293B0D0A0D0A20202020202020202020202020202020202020206966';
wwv_flow_imp.g_varchar2_table(95) := '2863617264446174612E6C656E677468203D3D2030297B0D0A202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E6D616E75616C616C7465726174696F6E6465746563746564272C205B64';
wwv_flow_imp.g_varchar2_table(96) := '726F70446174615D293B0D0A20202020202020202020202020202020202020202020202072657475726E3B0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020200D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(97) := '202020202020202020202F2A20636F6E736F6C652E6C6F6728226D6F766564206974656D2022202B0D0A20202020202020202020202020202020202020202020202064726F70446174612E6974656D4964202B20222066726F6D2022202B0D0A20202020';
wwv_flow_imp.g_varchar2_table(98) := '202020202020202020202020202020202020202064726F70446174612E736F7572636547726F75704964202B20222F22202B0D0A20202020202020202020202020202020202020202020202064726F70446174612E736F75726365436F6C756D6E496420';
wwv_flow_imp.g_varchar2_table(99) := '2B20222F22202B200D0A20202020202020202020202020202020202020202020202064726F70446174612E736F757263654974656D496E646578202B202220746F2022202B0D0A20202020202020202020202020202020202020202020202064726F7044';
wwv_flow_imp.g_varchar2_table(100) := '6174612E74617267657447726F75704964202B20222F22202B0D0A20202020202020202020202020202020202020202020202064726F70446174612E746172676574436F6C756D6E4964202B20222F22202B200D0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(101) := '20202020202020202064726F70446174612E7461726765744974656D496E6465780D0A2020202020202020202020202020202020202020293B202A2F0D0A202020202020202020202020202020202020202069662864726F706974656D616A6178297B0D';
wwv_flow_imp.g_varchar2_table(102) := '0A202020202020202020202020202020202020202020202020747279207B0D0A20202020202020202020202020202020202020202020202020202020617065782E7365727665722E70726F636573732864726F706974656D616A61782C200D0A20202020';
wwv_flow_imp.g_varchar2_table(103) := '202020202020202020202020202020202020202020202020202020207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830313A2064726F70446174612E6974656D49642C0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(104) := '20202020202020202020202020202020202020202020202020207830323A2064726F70446174612E736F7572636547726F757049642C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830333A2064726F';
wwv_flow_imp.g_varchar2_table(105) := '70446174612E736F75726365436F6C756D6E49642C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830343A2064726F70446174612E736F757263654974656D496E6465782C0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(106) := '2020202020202020202020202020202020202020202020202020207830353A2064726F70446174612E74617267657447726F757049642C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830363A206472';
wwv_flow_imp.g_varchar2_table(107) := '6F70446174612E746172676574436F6C756D6E49642C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830373A2064726F70446174612E7461726765744974656D496E6465780D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(108) := '20202020202020202020202020202020202020202020207D2C207B0D0A202020202020202020202020202020202020202020202020202020202020202020202020737563636573733A2066756E6374696F6E20286429207B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(109) := '202020202020202020202020202020202020202020202020202020202020696628642E73756363657373297B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020706172656E742E747269';
wwv_flow_imp.g_varchar2_table(110) := '6767657228276B616E62616E616674657264726F70272C205B64726F70446174615D293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(111) := '202020202020202020202020202020202020202020656C73657B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202075706461746543617264486561646572285F656C2C2064726F704461';
wwv_flow_imp.g_varchar2_table(112) := '74612C74727565293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202072656C6F6361746528275B646174612D69643D272B64726F70446174612E6974656D49642B275D272C736F7572';
wwv_flow_imp.g_varchar2_table(113) := '63654974656D496E646578293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202064726F70446174612E73716C636F6465203D20643F2E73716C636F64653B0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(114) := '2020202020202020202020202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E64726F706572726F72272C205B64726F70446174615D293B0D0A2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(115) := '20202020202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020202020202020202020202020207D2C0D0A20202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(116) := '20206572726F723A2066756E6374696F6E20286429207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202075706461746543617264486561646572285F736F757263652C2064726F70446174612C';
wwv_flow_imp.g_varchar2_table(117) := '74727565293B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202072656C6F6361746528275B646174612D69643D272B64726F70446174612E6974656D49642B275D272C736F757263654974656D49';
wwv_flow_imp.g_varchar2_table(118) := '6E646578293B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E64726F706572726F72272C205B64726F70446174615D293B0D0A20202020';
wwv_flow_imp.g_varchar2_table(119) := '20202020202020202020202020202020202020202020202020202020202020207D2C0D0A20202020202020202020202020202020202020202020202020202020202020202020202064617461547970653A20226A736F6E220D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(120) := '202020202020202020202020202020202020202020207D293B0D0A2020202020202020202020202020202020202020202020207D20636174636820286529207B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(121) := '202020202020202020202020207D0D0A20202020202020202020202020202020202020200D0A202020202020202020202020202020202020202075706461746543617264486561646572285F656C2C2064726F7044617461293B0D0A0D0A202020202020';
wwv_flow_imp.g_varchar2_table(122) := '2020202020202020202020202020706172656E742E7472696767657228276B616E62616E64726F70272C205B64726F70446174615D293B0D0A20202020202020202020202020202020202020200D0A202020202020202020202020202020207D293B0D0A';
wwv_flow_imp.g_varchar2_table(123) := '2020202020202020202020207D0D0A0D0A20202020202020202020202066756E6374696F6E2075706461746543617264486561646572285F636172642C64726F70446174612C65727229207B0D0A202020202020202020202020202020200D0A20202020';
wwv_flow_imp.g_varchar2_table(124) := '202020202020202020202020766172206E65775F67726F75706964203D2064726F70446174612E74617267657447726F757049643B0D0A2020202020202020202020202020202076617220736F7572636547726F75704964203D2064726F70446174612E';
wwv_flow_imp.g_varchar2_table(125) := '736F7572636547726F757049643B0D0A2020202020202020202020202020202076617220636172646964203D202064726F70446174612E6974656D49643B0D0A0D0A202020202020202020202020202020207661722067726F757069640D0A2020202020';
wwv_flow_imp.g_varchar2_table(126) := '2020202020202020202020766172206E65775F7374617475733B0D0A0D0A2020202020202020202020202020202069662028657272297B0D0A20202020202020202020202020202020202020206E65775F737461747573203D2064726F70446174612E73';
wwv_flow_imp.g_varchar2_table(127) := '6F75726365436F6C756D6E49643B0D0A202020202020202020202020202020202020202067726F75706964203D2064726F70446174612E736F7572636547726F757049643B0D0A202020202020202020202020202020207D20656C73657B0D0A20202020';
wwv_flow_imp.g_varchar2_table(128) := '2020202020202020202020202020202067726F75706964203D2064726F70446174612E74617267657447726F757049643B0D0A20202020202020202020202020202020202020206E65775F737461747573203D2064726F70446174612E74617267657443';
wwv_flow_imp.g_varchar2_table(129) := '6F6C756D6E49643B0D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020766172206361726469636F6E203D202428706172656E744944292E66696E6428275B706172656E7468656164657269643D22272B6E';
wwv_flow_imp.g_varchar2_table(130) := '65775F7374617475732B27225D27292E617474722827636172642D69636F6E27293B0D0A202020202020202020202020202020207661722063617264636F6C6F72203D202428706172656E744944292E66696E6428275B706172656E7468656164657269';
wwv_flow_imp.g_varchar2_table(131) := '643D22272B6E65775F7374617475732B27225D27292E617474722827636172642D69636F6E2D636F6C6F7227293B0D0A20202020202020202020202020202020766172202463617264486561646572203D205F636172642E66696E6428272E636172642D';
wwv_flow_imp.g_varchar2_table(132) := '68656164657227293B0D0A20202020202020202020202020202020766172202469636F6E456C656D656E74203D2024636172644865616465722E66696E6428276927293B0D0A0D0A202020202020202020202020202020205F636172642E617474722827';
wwv_flow_imp.g_varchar2_table(133) := '64617461737461747573272C206E65775F737461747573293B0D0A0D0A2020202020202020202020202020202069662028212469636F6E456C656D656E742E686173436C617373282773706563696669635F69636F6E272929207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(134) := '202020202020202020202020202469636F6E456C656D656E742E617474722827636C617373272C202727293B0D0A20202020202020202020202020202020202020202469636F6E456C656D656E742E616464436C617373282766612027202B2063617264';
wwv_flow_imp.g_varchar2_table(135) := '69636F6E293B0D0A202020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020696620282124636172644865616465722E686173436C617373282773706563696669635F636F6C6F72272929207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(136) := '2020202020202020202020202024636172644865616465722E63737328276261636B67726F756E64272C2063617264636F6C6F72293B0D0A202020202020202020202020202020207D0D0A202020202020202020202020202020200D0A20202020202020';
wwv_flow_imp.g_varchar2_table(137) := '2020202020202020205F636172642E72656D6F7665436C617373282767752D7472616E73697427293B0D0A202020202020202020202020202020205F636172642E61747472282772656C6F636174696F6E6E656564272C2727290D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(138) := '202020202020202076617220636172646964203D2064726F70446174612E6974656D49643B0D0A20202020202020202020202020202020766172206D6F64656C6E657776616C7565203D205F636172645B305D2E6F7574657248544D4C3B0D0A20202020';
wwv_flow_imp.g_varchar2_table(139) := '2020202020202020202020200D0A202020202020202020202020202020206D6F64656C2E7365744F7074696F6E28276564697461626C65272C74727565290D0A202020202020202020202020202020206D6F64656C2E7365745265636F726456616C7565';
wwv_flow_imp.g_varchar2_table(140) := '286361726469642C274150455824524F575F434F4E54454E54272C6D6F64656C6E657776616C7565293B0D0A20202020202020202020202020202020736F7572636547726F7570496420213D206E65775F67726F757069643F0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(141) := '20202020202020202020206D6F64656C2E7365745265636F726456616C7565286361726469642C274150455824434F4E54524F4C5F425245414B5F56414C5545272C67726F75706964293A6E756C6C3B0D0A202020202020202020202020202020206D6F';
wwv_flow_imp.g_varchar2_table(142) := '64656C2E7365744F7074696F6E28276564697461626C65272C66616C7365290D0A202020202020202020202020202020206D6F64656C2E636C6561724368616E67657328290D0A202020202020202020202020202020200D0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(143) := '20202020206C6173744974656D73446174612E666F72456163682866756E6374696F6E286529207B0D0A202020202020202020202020202020202020202069662028652E6964203D3D2063617264696429207B0D0A202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(144) := '202020202020202020652E737461747573203D206E65775F7374617475733B200D0A202020202020202020202020202020202020202020202020652E67726F75706964203D206E65775F67726F757069643B0D0A20202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(145) := '202020207D0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020200D0A202020202020202020202020202020200D0A2020202020202020202020207D0D0A0D0A0D0A20202020202020202020202066756E6374';
wwv_flow_imp.g_varchar2_table(146) := '696F6E2061646444726167756C61546F47726F7570732829207B0D0A0D0A2020202020202020202020202020202076617220736F757263654974656D496E646578203D20303B0D0A2020202020202020202020202020202076617220736F757263654974';
wwv_flow_imp.g_varchar2_table(147) := '656D5369626C696E67203D206E756C6C3B0D0A0D0A202020202020202020202020202020206472616B6547726F757073203D2064726167756C61282428706172656E742E66696E6428272E6B622D67726F75702D636F6E7461696E65722729292E746F41';
wwv_flow_imp.g_varchar2_table(148) := '7272617928292C207B0D0A2020202020202020202020202020202020202020646972656374696F6E3A2027766572746963616C272C0D0A20202020202020202020202020202020202020207265766572744F6E5370696C6C3A20747275652C200D0A2020';
wwv_flow_imp.g_varchar2_table(149) := '2020202020202020202020202020202020206D6F7665733A2066756E6374696F6E2028656C2C20636F6E7461696E65722C2068616E646C6529207B0D0A2020202020202020202020202020202020202020202020207661722067726F757063617264203D';
wwv_flow_imp.g_varchar2_table(150) := '20242868616E646C65292E636C6F7365737428272E6B622D67726F75702D6361726427293B0D0A20202020202020202020202020202020202020202020202072657475726E2067726F7570636172642E6C656E677468203E20303B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(151) := '202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020206C61737447726F75707344617461203D205B5D3B0D0A202020202020202020202020202020202428706172656E7429';
wwv_flow_imp.g_varchar2_table(152) := '2E66696E6428272E7265706F727467726F757027292E656163682866756E6374696F6E2829207B0D0A20202020202020202020202020202020202020207661722067726F75706964203D20242874686973292E617474722827646174612D67726F75702D';
wwv_flow_imp.g_varchar2_table(153) := '696427293B0D0A20202020202020202020202020202020202020202F2F204966206964206E6F7420657869737420696E206C6173744974656D7344617461207468656E206164640D0A20202020202020202020202020202020202020206966202867726F';
wwv_flow_imp.g_varchar2_table(154) := '7570696420262620216C61737447726F757073446174613F2E736F6D652867726F7570203D3E2067726F75702E67726F75706964203D3D3D2067726F757069642929207B0D0A2020202020202020202020202020202020202020202020206C6173744772';
wwv_flow_imp.g_varchar2_table(155) := '6F757073446174612E70757368287B0D0A202020202020202020202020202020202020202020202020202020202267726F75706964223A67726F757069640D0A2020202020202020202020202020202020202020202020207D293B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(156) := '202020202020202020202020207D0D0A202020202020202020202020202020207D293B0D0A20202020202020202020202020202020636F6E736F6C652E6C6F67286C61737447726F75707344617461290D0A202020202020202020202020202020207661';
wwv_flow_imp.g_varchar2_table(157) := '7220636F6E7461696E657273203D2041727261792E66726F6D28646F63756D656E742E717565727953656C6563746F72416C6C28272E6B622D67726F75702D636F6E7461696E65722729293B0D0A20202020202020202020202020202020766172207363';
wwv_flow_imp.g_varchar2_table(158) := '726F6C6C203D206175746F5363726F6C6C280D0A20202020202020202020202020202020202020205B77696E646F775D2E636F6E63617428636F6E7461696E657273292C0D0A20202020202020202020202020202020202020207B0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(159) := '20202020202020202020202020202020206D617853706565643A2031352C0D0A2020202020202020202020202020202020202020202020206D617267696E3A203135302C0D0A202020202020202020202020202020202020202020202020706978656C73';
wwv_flow_imp.g_varchar2_table(160) := '3A20372C0D0A2020202020202020202020202020202020202020202020207363726F6C6C5768656E4F7574736964653A20747275652C0D0A2020202020202020202020202020202020202020202020206175746F5363726F6C6C3A2066756E6374696F6E';
wwv_flow_imp.g_varchar2_table(161) := '28297B0D0A2020202020202020202020202020202020202020202020202020202072657475726E20746869732E646F776E202626206472616B6547726F7570732E6472616767696E673B0D0A202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(162) := '7D0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020293B0D0A202020202020202020202020202020202F2A20202020202020202020202020202020202020200D0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(163) := '20204F6E206D6F62696C6520746869732070726576656E7473207468652064656661756C742070616765207363726F6C6C696E67207768696C65206472616767696E6720616E206974656D2E200D0A202020202020202020202020202020206874747073';
wwv_flow_imp.g_varchar2_table(164) := '3A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3438370D0A202020202020202020202020202020202A2F0D0A202020202020202020202020202020202428272E6B622D67726F75702D726567696F6E203E';
wwv_flow_imp.g_varchar2_table(165) := '202E6B622D6361726427292E656163682866756E6374696F6E2028696E6465782C206361726429207B0D0A2020202020202020202020202020202020202020636172642E6164644576656E744C697374656E65722827746F7563686D6F7665272C206675';
wwv_flow_imp.g_varchar2_table(166) := '6E6374696F6E20286576656E7429207B0D0A2020202020202020202020202020202020202020202020206576656E742E70726576656E7444656661756C7428293B0D0A20202020202020202020202020202020202020207D293B0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(167) := '20202020202020207D293B0D0A0D0A0D0A202020202020202020202020202020206472616B6547726F7570732E6F6E282264726167222C2066756E6374696F6E2028656C2C20736F7572636529207B0D0A20202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(168) := '20766172205F656C203D202428656C293B0D0A2020202020202020202020202020202020202020736F757263654974656D496E646578203D205F656C2E696E64657828293B0D0A2020202020202020202020202020202020202020766172206E65787420';
wwv_flow_imp.g_varchar2_table(169) := '3D205F656C2E6E65787428293B0D0A2020202020202020202020202020202020202020736F757263654974656D5369626C696E67203D206E6578742E6C656E677468203E2030203F2024286E6578745B305D29203A206E756C6C3B0D0A0D0A2020202020';
wwv_flow_imp.g_varchar2_table(170) := '202020202020202020202020202020766172206472616744617461203D207B0D0A2020202020202020202020202020202020202020202020202267726F75704964223A205F656C2E617474722822646174612D67726F75702D696422292C0D0A20202020';
wwv_flow_imp.g_varchar2_table(171) := '202020202020202020202020202020202020202022736F7572636547726F7570496E646578223A20736F757263654974656D496E6465780D0A20202020202020202020202020202020202020207D3B0D0A0D0A2020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(172) := '2020207661722067726F757044617461203D206C61737447726F757073446174612E66696C7465722866756E6374696F6E286529207B0D0A2020202020202020202020202020202020202020202020200D0A202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(173) := '20202020202072657475726E20652E67726F75706964203D3D2064726167446174612E67726F757049640D0A20202020202020202020202020202020202020207D293B0D0A0D0A202020202020202020202020202020202020202069662867726F757044';
wwv_flow_imp.g_varchar2_table(174) := '6174612E6C656E677468203D3D2030297B0D0A202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E6D616E75616C616C7465726174696F6E6465746563746564272C205B64726167446174';
wwv_flow_imp.g_varchar2_table(175) := '615D293B0D0A20202020202020202020202020202020202020202020202072657475726E3B0D0A20202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202F2A0D0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(176) := '202020202020636F6E736F6C652E6C6F672822647261672067726F75702022202B0D0A20202020202020202020202020202020202020202020202064726167446174612E67726F75704964202B20222066726F6D2022202B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(177) := '202020202020202020202020202064726167446174612E736F7572636547726F7570496E6465780D0A2020202020202020202020202020202020202020293B0D0A20202020202020202020202020202020202020202A2F0D0A0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(178) := '2020202020202020202020706172656E742E7472696767657228276B616E62616E6472616767726F7570272C205B64726167446174615D293B0D0A202020202020202020202020202020207D293B0D0A202020202020202020202020202020206472616B';
wwv_flow_imp.g_varchar2_table(179) := '6547726F7570732E6F6E282264726F70222C2066756E6374696F6E2028656C2C207461726765742C20736F757263652C207369626C696E6729207B0D0A2020202020202020202020202020202020202020766172205F656C203D202428656C293B0D0A20';
wwv_flow_imp.g_varchar2_table(180) := '20202020202020202020202020202020202020766172205F746172676574203D202428746172676574293B0D0A2020202020202020202020202020202020202020766172205F736F75726365203D202428736F75726365293B0D0A0D0A20202020202020';
wwv_flow_imp.g_varchar2_table(181) := '202020202020202020202020207661722064726F7044617461203D207B0D0A2020202020202020202020202020202020202020202020202267726F75704964223A205F656C2E617474722822646174612D67726F75702D696422292C0D0A202020202020';
wwv_flow_imp.g_varchar2_table(182) := '20202020202020202020202020202020202022736F7572636547726F7570496E646578223A20736F757263654974656D496E6465782C0D0A2020202020202020202020202020202020202020202020202274617267657447726F7570496E646578223A20';
wwv_flow_imp.g_varchar2_table(183) := '5F656C2E696E64657828290D0A20202020202020202020202020202020202020207D3B0D0A0D0A20202020202020202020202020202020202020207661722067726F757044617461203D206C61737447726F757073446174612E66696C7465722866756E';
wwv_flow_imp.g_varchar2_table(184) := '6374696F6E286529207B0D0A2020202020202020202020202020202020202020202020200D0A20202020202020202020202020202020202020202020202072657475726E20652E67726F75706964203D3D2064726167446174612E67726F757049640D0A';
wwv_flow_imp.g_varchar2_table(185) := '20202020202020202020202020202020202020207D293B0D0A0D0A202020202020202020202020202020202020202069662867726F7570446174612E6C656E677468203D3D2030297B0D0A20202020202020202020202020202020202020202020202070';
wwv_flow_imp.g_varchar2_table(186) := '6172656E742E7472696767657228276B616E62616E6D616E75616C616C7465726174696F6E6465746563746564272C205B64726F70446174615D293B0D0A20202020202020202020202020202020202020202020202072657475726E3B0D0A2020202020';
wwv_flow_imp.g_varchar2_table(187) := '2020202020202020202020202020207D0D0A0D0A20202020202020202020202020202020202020202F2A0D0A2020202020202020202020202020202020202020636F6E736F6C652E6C6F6728226D6F7665642067726F75702022202B0D0A202020202020';
wwv_flow_imp.g_varchar2_table(188) := '20202020202020202020202020202020202064726F70446174612E67726F75704964202B20222066726F6D2022202B0D0A20202020202020202020202020202020202020202020202064726F70446174612E736F7572636547726F7570496E646578202B';
wwv_flow_imp.g_varchar2_table(189) := '202220746F2022202B0D0A20202020202020202020202020202020202020202020202064726F70446174612E74617267657447726F7570496E6465780D0A2020202020202020202020202020202020202020293B0D0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(190) := '2020202020202A2F0D0A202020202020202020202020202020202020202069662864726F7067726F7570616A6178297B0D0A202020202020202020202020202020202020202020202020747279207B0D0A20202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(191) := '202020202020202020617065782E7365727665722E70726F636573732864726F7067726F7570616A61782C200D0A20202020202020202020202020202020202020202020202020202020202020207B0D0A20202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(192) := '20202020202020202020202020202020207830313A2064726F70446174612E67726F757049642C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830323A2064726F70446174612E736F7572636547726F';
wwv_flow_imp.g_varchar2_table(193) := '7570496E6465782C0D0A2020202020202020202020202020202020202020202020202020202020202020202020207830333A2064726F70446174612E74617267657447726F7570496E6465780D0A20202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(194) := '202020202020202020207D2C207B0D0A202020202020202020202020202020202020202020202020202020202020202020202020737563636573733A2066756E6374696F6E20286429207B0D0A2020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(195) := '202020202020202020202020202020202069662821642E73756363657373297B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020202020202069662028736F757263654974656D5369626C696E6729';
wwv_flow_imp.g_varchar2_table(196) := '207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020205F656C2E696E736572744265666F726528736F757263654974656D5369626C696E67293B0D0A20202020202020202020';
wwv_flow_imp.g_varchar2_table(197) := '202020202020202020202020202020202020202020202020202020202020202020207D20656C7365207B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020202020205F736F757263652E';
wwv_flow_imp.g_varchar2_table(198) := '617070656E64285F656C293B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(199) := '202020202064726F70446174612E73716C636F6465203D20643F2E73716C636F64653B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E';
wwv_flow_imp.g_varchar2_table(200) := '62616E64726F7067726F75706572726F72272C205B64726F70446174615D293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(201) := '2020202020202020202020202020202020656C73657B0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202020202020706172656E742E7472696767657228276B616E62616E616674657264726F7067';
wwv_flow_imp.g_varchar2_table(202) := '726F7570272C205B64726F70446174615D293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020207D0D0A202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(203) := '7D2C0D0A2020202020202020202020202020202020202020202020202020202020202020202020206572726F723A2066756E6374696F6E20286429207B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(204) := '2020202F2A206D6F7665206974656D206261636B20746F206C617374206B6E6F776E20706F736974696F6E202A2F0D0A2020202020202020202020202020202020202020202020202020202020202020202020202020202069662028736F757263654974';
wwv_flow_imp.g_varchar2_table(205) := '656D5369626C696E6729207B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020202020205F656C2E696E736572744265666F726528736F757263654974656D5369626C696E67293B0D0A20202020';
wwv_flow_imp.g_varchar2_table(206) := '2020202020202020202020202020202020202020202020202020202020202020202020207D20656C7365207B0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020202020205F736F757263652E6170';
wwv_flow_imp.g_varchar2_table(207) := '70656E64285F656C293B0D0A202020202020202020202020202020202020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020202020202020202020202020202020202020202020706172656E';
wwv_flow_imp.g_varchar2_table(208) := '742E7472696767657228276B616E62616E64726F7067726F75706572726F72272C205B64726F70446174615D293B0D0A2020202020202020202020202020202020202020202020202020202020202020202020207D2C0D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(209) := '20202020202020202020202020202020202020202020202064617461547970653A20226A736F6E220D0A20202020202020202020202020202020202020202020202020202020202020207D293B0D0A202020202020202020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(210) := '2020207D20636174636820286529207B0D0A2020202020202020202020202020202020202020202020207D0D0A20202020202020202020202020202020202020207D0D0A2020202020202020202020202020202020202020706172656E742E7472696767';
wwv_flow_imp.g_varchar2_table(211) := '657228276B616E62616E64726F7067726F7570272C205B64726F70446174615D293B0D0A202020202020202020202020202020207D293B0D0A2020202020202020202020207D0D0A0D0A2020202020202020202020200D0A202020202020202020202020';
wwv_flow_imp.g_varchar2_table(212) := '0D0A2020202020202020202020202F2A20706172656E742E66696E6428222E6B622D67726F75702D63617264203E202E6B622D636F6C6C61707361626C6522292E636C69636B2866756E6374696F6E202829207B0D0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(213) := '2020636F6E736F6C652E6C6F672874686973290D0A20202020202020202020202020202020746F67676C6547726F757028746869732C2074727565293B0D0A2020202020202020202020207D293B202A2F0D0A2020202020202020202020200D0A202020';
wwv_flow_imp.g_varchar2_table(214) := '20202020202020202066756E6374696F6E20746F67676C6547726F75702867726F7570526F772C20747269676765724576656E7429207B0D0A2020202020202020202020202020202067726F7570526F772E66696E6428222E6B622D636F6C6C61707361';
wwv_flow_imp.g_varchar2_table(215) := '626C6522292E746F67676C6528293B0D0A2020202020202020202020202020202067726F7570526F772E66696E6428222E636172642D666F6F74657222292E746F67676C6528293B0D0A2020202020202020202020202020202067726F7570526F772E70';
wwv_flow_imp.g_varchar2_table(216) := '6172656E7428292E706172656E7428292E66696E6428222E6B622D6974656D2D726567696F6E22292E746F67676C6528293B0D0A202020202020202020202020202020207661722067726F7570203D2067726F7570526F772E706172656E7428293B0D0A';
wwv_flow_imp.g_varchar2_table(217) := '2020202020202020202020202020202067726F75702E746F67676C65436C61737328226B622D636F6C6C617073656422293B0D0A0D0A2020202020202020202020202020202069662028747269676765724576656E7429207B0D0A202020202020202020';
wwv_flow_imp.g_varchar2_table(218) := '202020202020202020202076617220636F6C6C617073656444617461203D207B0D0A2020202020202020202020202020202020202020202020202267726F75704964223A2067726F7570526F772E617474722822646174612D67726F75702D696422292C';
wwv_flow_imp.g_varchar2_table(219) := '0D0A20202020202020202020202020202020202020202020202022636F6C6C6170736564223A2067726F75702E686173436C61737328226B622D636F6C6C617073656422290D0A20202020202020202020202020202020202020207D3B0D0A2020202020';
wwv_flow_imp.g_varchar2_table(220) := '202020202020202020202020202020706172656E742E7472696767657228276B616E62616E67726F7570636F6C6C6170736564272C205B636F6C6C6170736564446174615D293B0D0A202020202020202020202020202020207D0D0A2020202020202020';
wwv_flow_imp.g_varchar2_table(221) := '202020207D0D0A20202020202020207D0D0A202020207D0D0A7D2928617065782E6A5175657279293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29219930446764298082)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'script.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E732D672D636F6E7461696E6572207B0A2020202077696474683A203938253B0A202020206D617267696E2D6C6566743A206175746F3B0A202020206D617267696E2D72696768743A206175746F3B0A7D0A2E732D672D726F77207B0A20202020706F73';
wwv_flow_imp.g_varchar2_table(2) := '6974696F6E3A2072656C61746976653B0A2020202077696474683A20313030253B0A7D0A2E732D672D726F77205B636C6173735E3D22732D672D636F6C225D207B0A20202020666C6F61743A206C6566743B0A202020206D617267696E3A20302E357265';
wwv_flow_imp.g_varchar2_table(3) := '6D2032253B0A202020206D696E2D6865696768743A20302E31323572656D3B0A7D0A2E732D672D636F6C2D312C0A2E732D672D636F6C2D322C0A2E732D672D636F6C2D332C0A2E732D672D636F6C2D342C0A2E732D672D636F6C2D352C0A2E732D672D63';
wwv_flow_imp.g_varchar2_table(4) := '6F6C2D362C0A2E732D672D636F6C2D372C0A2E732D672D636F6C2D382C0A2E732D672D636F6C2D392C0A2E732D672D636F6C2D31302C0A2E732D672D636F6C2D31312C0A2E732D672D636F6C2D3132207B0A2020202077696474683A203936253B0A7D0A';
wwv_flow_imp.g_varchar2_table(5) := '2E732D672D636F6C2D312D736D207B0A2020202077696474683A20342E3333253B0A7D0A2E732D672D636F6C2D322D736D207B0A2020202077696474683A2031322E3636253B0A7D0A2E732D672D636F6C2D332D736D207B0A2020202077696474683A20';
wwv_flow_imp.g_varchar2_table(6) := '3231253B0A7D0A2E732D672D636F6C2D342D736D207B0A2020202077696474683A2032392E3333253B0A7D0A2E732D672D636F6C2D352D736D207B0A2020202077696474683A2033372E3636253B0A7D0A2E732D672D636F6C2D362D736D207B0A202020';
wwv_flow_imp.g_varchar2_table(7) := '2077696474683A203436253B0A7D0A2E732D672D636F6C2D372D736D207B0A2020202077696474683A2035342E3333253B0A7D0A2E732D672D636F6C2D382D736D207B0A2020202077696474683A2036322E3636253B0A7D0A2E732D672D636F6C2D392D';
wwv_flow_imp.g_varchar2_table(8) := '736D207B0A2020202077696474683A203731253B0A7D0A2E732D672D636F6C2D31302D736D207B0A2020202077696474683A2037392E3333253B0A7D0A2E732D672D636F6C2D31312D736D207B0A2020202077696474683A2038372E3636253B0A7D0A2E';
wwv_flow_imp.g_varchar2_table(9) := '732D672D636F6C2D31322D736D207B0A2020202077696474683A203936253B0A7D0A2E732D672D726F773A3A6166746572207B0A20202020636F6E74656E743A2022223B0A20202020646973706C61793A207461626C653B0A20202020636C6561723A20';
wwv_flow_imp.g_varchar2_table(10) := '626F74683B0A7D0A2E68696464656E2D736D207B0A20202020646973706C61793A206E6F6E653B0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A2033332E3735656D29207B0A202020202F2A203534307078';
wwv_flow_imp.g_varchar2_table(11) := '202A2F0A202020202E732D672D636F6E7461696E6572207B0A202020202020202077696474683A203938253B0A202020207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203630656D29207B0A20202020';
wwv_flow_imp.g_varchar2_table(12) := '2F2A20776173203435656D202A2F0A202020202F2A203732307078202A2F0A202020202E732D672D636F6C2D312C0A202020202E732D672D636F6C2D322C0A202020202E732D672D636F6C2D332C0A202020202E732D672D636F6C2D342C0A202020202E';
wwv_flow_imp.g_varchar2_table(13) := '732D672D636F6C2D352C0A202020202E732D672D636F6C2D36207B0A202020202020202077696474683A203436253B0A202020207D0A202020202E732D672D636F6C2D372C0A202020202E732D672D636F6C2D382C0A202020202E732D672D636F6C2D39';
wwv_flow_imp.g_varchar2_table(14) := '2C0A202020202E732D672D636F6C2D31302C0A202020202E732D672D636F6C2D31312C0A202020202E732D672D636F6C2D3132207B0A202020202020202077696474683A203936253B0A202020207D0A202020202E68696464656E2D736D207B0A202020';
wwv_flow_imp.g_varchar2_table(15) := '2020202020646973706C61793A20626C6F636B3B0A202020207D0A7D0A406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203636656D29207B0A202020202F2A20776173203630656D202A2F0A202020202F2A203936';
wwv_flow_imp.g_varchar2_table(16) := '307078202A2F0A202020202E732D672D636F6E7461696E6572207B0A202020202020202077696474683A203938253B0A202020207D0A202020202E732D672D636F6C2D31207B0A202020202020202077696474683A20342E3333253B0A202020207D0A20';
wwv_flow_imp.g_varchar2_table(17) := '2020202E732D672D636F6C2D32207B0A202020202020202077696474683A2031322E3636253B0A202020207D0A202020202E732D672D636F6C2D33207B0A202020202020202077696474683A203231253B0A202020207D0A202020202E732D672D636F6C';
wwv_flow_imp.g_varchar2_table(18) := '2D34207B0A202020202020202077696474683A2032392E3333253B0A202020207D0A202020202E732D672D636F6C2D35207B0A202020202020202077696474683A2033372E3636253B0A202020207D0A202020202E732D672D636F6C2D36207B0A202020';
wwv_flow_imp.g_varchar2_table(19) := '202020202077696474683A203436253B0A202020207D0A202020202E732D672D636F6C2D37207B0A202020202020202077696474683A2035342E3333253B0A202020207D0A202020202E732D672D636F6C2D38207B0A202020202020202077696474683A';
wwv_flow_imp.g_varchar2_table(20) := '2036322E3636253B0A202020207D0A202020202E732D672D636F6C2D39207B0A202020202020202077696474683A203731253B0A202020207D0A202020202E732D672D636F6C2D3130207B0A202020202020202077696474683A2037392E3333253B0A20';
wwv_flow_imp.g_varchar2_table(21) := '2020207D0A202020202E732D672D636F6C2D3131207B0A202020202020202077696474683A2038372E3636253B0A202020207D0A202020202E732D672D636F6C2D3132207B0A202020202020202077696474683A203936253B0A202020207D0A20202020';
wwv_flow_imp.g_varchar2_table(22) := '2E68696464656E2D736D207B0A2020202020202020646973706C61793A20626C6F636B3B0A202020207D0A7D0A';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29220188232326604936)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'responsive-grid.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E732D672D636F6E7461696E6572207B77696474683A203938253B6D617267696E2D6C6566743A206175746F3B6D617267696E2D72696768743A206175746F3B7D2E732D672D726F77207B706F736974696F6E3A2072656C61746976653B77696474683A';
wwv_flow_imp.g_varchar2_table(2) := '20313030253B7D2E732D672D726F77205B636C6173735E3D22732D672D636F6C225D207B666C6F61743A206C6566743B6D617267696E3A20302E3572656D2032253B6D696E2D6865696768743A20302E31323572656D3B7D2E732D672D636F6C2D312C0A';
wwv_flow_imp.g_varchar2_table(3) := '2E732D672D636F6C2D322C0A2E732D672D636F6C2D332C0A2E732D672D636F6C2D342C0A2E732D672D636F6C2D352C0A2E732D672D636F6C2D362C0A2E732D672D636F6C2D372C0A2E732D672D636F6C2D382C0A2E732D672D636F6C2D392C0A2E732D67';
wwv_flow_imp.g_varchar2_table(4) := '2D636F6C2D31302C0A2E732D672D636F6C2D31312C0A2E732D672D636F6C2D3132207B77696474683A203936253B7D2E732D672D636F6C2D312D736D207B77696474683A20342E3333253B7D2E732D672D636F6C2D322D736D207B77696474683A203132';
wwv_flow_imp.g_varchar2_table(5) := '2E3636253B7D2E732D672D636F6C2D332D736D207B77696474683A203231253B7D2E732D672D636F6C2D342D736D207B77696474683A2032392E3333253B7D2E732D672D636F6C2D352D736D207B77696474683A2033372E3636253B7D2E732D672D636F';
wwv_flow_imp.g_varchar2_table(6) := '6C2D362D736D207B77696474683A203436253B7D2E732D672D636F6C2D372D736D207B77696474683A2035342E3333253B7D2E732D672D636F6C2D382D736D207B77696474683A2036322E3636253B7D2E732D672D636F6C2D392D736D207B7769647468';
wwv_flow_imp.g_varchar2_table(7) := '3A203731253B7D2E732D672D636F6C2D31302D736D207B77696474683A2037392E3333253B7D2E732D672D636F6C2D31312D736D207B77696474683A2038372E3636253B7D2E732D672D636F6C2D31322D736D207B77696474683A203936253B7D2E732D';
wwv_flow_imp.g_varchar2_table(8) := '672D726F773A3A6166746572207B636F6E74656E743A2022223B646973706C61793A207461626C653B636C6561723A20626F74683B7D2E68696464656E2D736D207B646973706C61793A206E6F6E653B7D406D65646961206F6E6C792073637265656E20';
wwv_flow_imp.g_varchar2_table(9) := '616E6420286D696E2D77696474683A2033332E3735656D29207B202020202E732D672D636F6E7461696E6572207B77696474683A203938253B7D7D406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203630656D2920';
wwv_flow_imp.g_varchar2_table(10) := '7B2E732D672D636F6C2D312C0A2E732D672D636F6C2D322C0A2E732D672D636F6C2D332C0A2E732D672D636F6C2D342C0A2E732D672D636F6C2D352C0A2E732D672D636F6C2D36207B77696474683A203436253B7D2E732D672D636F6C2D372C0A2E732D';
wwv_flow_imp.g_varchar2_table(11) := '672D636F6C2D382C0A2E732D672D636F6C2D392C0A2E732D672D636F6C2D31302C0A2E732D672D636F6C2D31312C0A2E732D672D636F6C2D3132207B77696474683A203936253B7D2E68696464656E2D736D207B646973706C61793A20626C6F636B3B7D';
wwv_flow_imp.g_varchar2_table(12) := '7D406D65646961206F6E6C792073637265656E20616E6420286D696E2D77696474683A203636656D29207B2E732D672D636F6E7461696E6572207B77696474683A203938253B7D2E732D672D636F6C2D31207B77696474683A20342E3333253B7D2E732D';
wwv_flow_imp.g_varchar2_table(13) := '672D636F6C2D32207B77696474683A2031322E3636253B7D2E732D672D636F6C2D33207B77696474683A203231253B7D2E732D672D636F6C2D34207B77696474683A2032392E3333253B7D2E732D672D636F6C2D35207B77696474683A2033372E363625';
wwv_flow_imp.g_varchar2_table(14) := '3B7D2E732D672D636F6C2D36207B77696474683A203436253B7D2E732D672D636F6C2D37207B77696474683A2035342E3333253B7D2E732D672D636F6C2D38207B77696474683A2036322E3636253B7D2E732D672D636F6C2D39207B77696474683A2037';
wwv_flow_imp.g_varchar2_table(15) := '31253B7D2E732D672D636F6C2D3130207B77696474683A2037392E3333253B7D2E732D672D636F6C2D3131207B77696474683A2038372E3636253B7D2E732D672D636F6C2D3132207B77696474683A203936253B7D2E68696464656E2D736D207B646973';
wwv_flow_imp.g_varchar2_table(16) := '706C61793A20626C6F636B3B7D7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29220189009169607200)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'responsive-grid.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E63742D6C6F61646572207B706F736974696F6E3A206162736F6C7574653B746F703A20373070783B77696474683A20313030253B7A2D696E6465783A20313B746578742D616C69676E3A2063656E7465723B7D2E6B622D636F6C207B646973706C6179';
wwv_flow_imp.g_varchar2_table(2) := '3A20696E6C696E652D626C6F636B3B706F736974696F6E3A2072656C61746976653B77696474683A20313030253B766572746963616C2D616C69676E3A20746F703B626F726465722D7261646975733A203570783B626F726465723A2033707820736F6C';
wwv_flow_imp.g_varchar2_table(3) := '696420766172282D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F72293B7D2E6B622D636F6C2D636F6E74656E74207B6865696768743A20313030253B77696474683A20313030253B7D2E6B622D636F';
wwv_flow_imp.g_varchar2_table(4) := '6C2D686561646572207B7D2E6B622D636F6C2D6865616465722D636F6E74656E74207B626F726465722D7261646975733A203570783B626F726465722D746F703A2035707820736F6C696420234141413B6865696768743A20333070783B6D617267696E';
wwv_flow_imp.g_varchar2_table(5) := '3A203570782035707820307078203570783B7D2E6B622D636F6C2D6865616465722D636F6E74656E74202E7469746C65207B706F736974696F6E3A2072656C61746976653B6C6566743A20313570783B666F6E742D73697A653A20312E33656D3B7D2E63';
wwv_flow_imp.g_varchar2_table(6) := '6172642D7469746C657B7D2E6B622D636F6C2D696E6E65722D686561646572207B646973706C61793A206E6F6E653B7D2E6B622D636F6C2D696E6E65722D686561646572202E7469746C65207B706F736974696F6E3A2072656C61746976653B666F6E74';
wwv_flow_imp.g_varchar2_table(7) := '2D73697A653A20312E33656D3B6D617267696E3A2035707820313070782030707820313070783B7D2E6B622D726F77207B646973706C61793A202D6D732D666C65783B646973706C61793A202D7765626B69742D666C65783B646973706C61793A20666C';
wwv_flow_imp.g_varchar2_table(8) := '65783B7D2E6B622D6974656D2D726567696F6E207B6261636B67726F756E643A20766172282D2D75742D636F6D706F6E656E742D6261636B67726F756E642D636F6C6F72293B6D696E2D6865696768743A2031363070783B7D2E6B622D67726F75702D72';
wwv_flow_imp.g_varchar2_table(9) := '6567696F6E207B7D2E6B622D63617264207B646973706C61793A20696E6C696E652D626C6F636B3B77696474683A20313030253B20202020626F726465722D7261646975733A203170783B202020207472616E736974696F6E3A20616C6C20302E347320';
wwv_flow_imp.g_varchar2_table(10) := '656173653B202020206261636B67726F756E642D636F6C6F723A766172282D2D75742D636F6D706F6E656E742D696E6E65722D626F726465722D636F6C6F72293B626F782D736861646F773A766172282D2D75742D736861646F772D736D293B6D617267';
wwv_flow_imp.g_varchar2_table(11) := '696E3A20303B706F736974696F6E3A2072656C61746976653B6F766572666C6F773A2068696464656E3B7D2E6B622D636172642D647261676761626C65207B637572736F723A20677261623B7D2E6B622D636172643A686F766572207B6261636B67726F';
wwv_flow_imp.g_varchar2_table(12) := '756E643A20766172282D2D75742D636F6D706F6E656E742D686967686C696768742D6261636B67726F756E642D636F6C6F72293B626F782D736861646F773A203020313070782032307078207267626128302C20302C20302C20302E3139292C20302036';
wwv_flow_imp.g_varchar2_table(13) := '707820367078207267626128302C20302C20302C20302E3233293B7D2E6B622D63617264202E636172642D686561646572207B666C6F61743A206C6566743B746578742D616C69676E3A2063656E7465723B6D617267696E3A2036707820307078203670';
wwv_flow_imp.g_varchar2_table(14) := '78203670783B626F782D736861646F773A203020313270782032307078202D313070782072676261283233302C203233302C203233302C20302E3238292C203020347078203230707820307078207267626128302C20302C20302C20302E3132292C2030';
wwv_flow_imp.g_varchar2_table(15) := '2037707820387078202D3570782072676261283233302C203233302C203233302C20302E32293B7472616E736974696F6E3A20616C6C20312E307320656173653B7D2E6B622D63617264202E636172642D6865616465722069207B666F6E742D73697A65';
wwv_flow_imp.g_varchar2_table(16) := '3A20313870783B6C696E652D6865696768743A20323870783B77696474683A20323870783B6865696768743A20323870783B636F6C6F723A2077686974653B7472616E736974696F6E3A20616C6C20312E307320656173653B7D2E6B622D63617264202E';
wwv_flow_imp.g_varchar2_table(17) := '636172642D636F6E74656E74207B746578742D616C69676E3A206C6566743B70616464696E673A2030203670783B6F766572666C6F773A2068696464656E3B6D696E2D6865696768743A20343070783B20202020646973706C61793A20666C65783B616C';
wwv_flow_imp.g_varchar2_table(18) := '69676E2D6974656D733A2063656E7465723B7D2E6B622D63617264202E7469746C65207B666F6E742D73697A653A2031656D3B20202020766572746963616C2D616C69676E3A206D6964646C653B646973706C61793A20666C65783B616C69676E2D6974';
wwv_flow_imp.g_varchar2_table(19) := '656D733A2063656E7465723B6F766572666C6F772D777261703A20616E7977686572653B7D2E6B622D63617264202E636172642D666F6F746572207B6D617267696E3A20302032307078203670783B70616464696E672D746F703A203370783B626F7264';
wwv_flow_imp.g_varchar2_table(20) := '65722D746F703A2031707820736F6C696420236565656565653B636F6C6F723A20766172282D2D75742D636F6D706F6E656E742D746578742D6D757465642D636F6C6F72293B6F766572666C6F772D777261703A20616E7977686572653B7D2E6B622D63';
wwv_flow_imp.g_varchar2_table(21) := '617264202E636172642D666F6F746572203E20646976207B646973706C61793A20696E6C696E652D626C6F636B3B77696474683A20313030253B7D2E6B622D6E65772D6974656D2D726567696F6E207B636C6561723A20626F74683B7D2E6B622D697465';
wwv_flow_imp.g_varchar2_table(22) := '6D2D636F6E7461696E6572207B6865696768743A20313030253B6D696E2D6865696768743A20313070783B70616464696E673A203570783B6D61782D6865696768743A2035323070783B6F766572666C6F773A206175746F3B7D2E6B622D6974656D2D63';
wwv_flow_imp.g_varchar2_table(23) := '6F6E7461696E6572202E6B622D63617264207B666C6F61743A206C6566743B6D617267696E3A20357078203570783B6D696E2D6865696768743A20302E31323572656D3B77696474683A2063616C632831303025202D2031307078293B6D61782D776964';
wwv_flow_imp.g_varchar2_table(24) := '74683A2032303070783B7D2E6B622D6974656D2D636F6E7461696E65722D776974682D6E65772D63617264207B6865696768743A2063616C632831303025202D2034307078293B7D2E6B622D6E65772D63617264207B666C6F61743A206C6566743B7465';
wwv_flow_imp.g_varchar2_table(25) := '78742D616C69676E3A2063656E7465723B6D617267696E3A203370782031307078203130707820313070783B7472616E736974696F6E3A20616C6C20302E33732063756269632D62657A696572282E32352C202E382C202E32352C2031293B626F782D73';
wwv_flow_imp.g_varchar2_table(26) := '6861646F773A20302031707820337078207267626128302C20302C20302C20302E3132292C20302031707820327078207267626128302C20302C20302C20302E3234293B6261636B67726F756E643A20233535633535353B7D2E6B622D6E65772D636172';
wwv_flow_imp.g_varchar2_table(27) := '643A686F766572207B626F782D736861646F773A203020313070782032307078207267626128302C20302C20302C20302E3139292C20302036707820367078207267626128302C20302C20302C20302E3233293B7D2E6B622D6E65772D63617264206920';
wwv_flow_imp.g_varchar2_table(28) := '7B666F6E742D73697A653A20313870783B6C696E652D6865696768743A20323870783B77696474683A20323870783B6865696768743A20323870783B636F6C6F723A2077686974653B7D2E6B622D67726F75702D726567696F6E202E636172642D686561';
wwv_flow_imp.g_varchar2_table(29) := '646572207B6261636B67726F756E643A20233339613664613B7D2E6B622D636F6C6C61707361626C65207B666C6F61743A206C6566743B746578742D616C69676E3A2063656E7465723B6D617267696E3A203670782031707820367078203770783B6375';
wwv_flow_imp.g_varchar2_table(30) := '72736F723A20706F696E7465723B7D2E6B622D636F6C6C61707361626C652069207B666F6E742D73697A653A20313570783B6C696E652D6865696768743A20323870783B77696474683A20313870783B20202020636F6C6F723A20233030303B7D2E6B62';
wwv_flow_imp.g_varchar2_table(31) := '2D636F6C6C61707361626C653A686F766572207B6D617267696E3A203570782030707820357078203670783B626F726465723A2031707820736F6C696420236565653B7D2E6B622D636F6C6C6170736564207B77696474683A20313030252021696D706F';
wwv_flow_imp.g_varchar2_table(32) := '7274616E743B7D2F2A0A406D65646961206F6E6C792073637265656E20616E6420286D61782D77696474683A2031323739707829207B2E6B622D6974656D2D726567696F6E2C0A2E6B622D67726F75702D726567696F6E2C0A2E6B622D636F6C2D686561';
wwv_flow_imp.g_varchar2_table(33) := '646572207B77696474683A20313030252021696D706F7274616E743B7D2E6B622D63617264207B6D61782D77696474683A206E6F6E652021696D706F7274616E743B7D7D2A2F0A0A406D65646961206F6E6C792073637265656E20616E6420286D61782D';
wwv_flow_imp.g_varchar2_table(34) := '77696474683A2031323030707829207B2E6B622D726F77207B646973706C61793A202D6D732D696E6C696E652D626F783B646973706C61793A202D7765626B69742D696E6C696E652D626F783B646973706C61793A20696E6C696E652D626C6F636B3B7D';
wwv_flow_imp.g_varchar2_table(35) := '2E6B622D636F6C2D686561646572207B646973706C61793A206E6F6E653B7D2E6B622D6974656D2D726567696F6E2C0A2E6B622D67726F75702D726567696F6E2C0A2E6B622D636F6C2D686561646572207B77696474683A20313030252021696D706F72';
wwv_flow_imp.g_varchar2_table(36) := '74616E743B7D2F2A202E6B622D63617264207B6D61782D77696474683A2032303070782021696D706F7274616E743B7D202A2F0A0A2E6B622D6974656D2D636F6E7461696E6572207B6865696768743A20313030253B6D696E2D6865696768743A203130';
wwv_flow_imp.g_varchar2_table(37) := '70783B70616464696E673A203570783B6D61782D6865696768743A2033323070783B6F766572666C6F773A206175746F3B202020207D2E6B622D6974656D2D726567696F6E207B646973706C61793A202D6D732D666C65783B646973706C61793A202D77';
wwv_flow_imp.g_varchar2_table(38) := '65626B69742D666C65783B646973706C61793A20666C65783B7D2E6B622D636F6C2D636F6E74656E74207B626F726465722D7261646975733A203570783B626F726465722D6C6566743A2035707820736F6C696420234141413B7D2E6B622D636F6C2D69';
wwv_flow_imp.g_varchar2_table(39) := '6E6E65722D686561646572207B646973706C61793A20696E6C696E652D626C6F636B3B7D2E6B622D67726F75702D726567696F6E207B626F726465723A206E6F6E653B7D2E6B622D67726F75702D726567696F6E203E20646976207B6D617267696E3A20';
wwv_flow_imp.g_varchar2_table(40) := '3370782021696D706F7274616E743B77696474683A2063616C632831303025202D20367078293B626F726465722D7261646975733A203570783B202020207D2E6B622D6E65772D67726F75702D726567696F6E203E20646976207B626F726465722D746F';
wwv_flow_imp.g_varchar2_table(41) := '703A206E6F6E653B7D2E6B622D67726F75702D726567696F6E202E6B622D63617264207B646973706C61793A20696E68657269743B7D2E6B622D726F773A3A6166746572207B6D617267696E2D626F74746F6D3A20323070783B7D7D2E67752D6D697272';
wwv_flow_imp.g_varchar2_table(42) := '6F72207B706F736974696F6E3A2066697865642021696D706F7274616E743B6D617267696E3A20302021696D706F7274616E743B7A2D696E6465783A20393939392021696D706F7274616E743B6F7061636974793A20302E383B2D6D732D66696C746572';
wwv_flow_imp.g_varchar2_table(43) := '3A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D383029223B66696C7465723A20616C706861286F7061636974793D3830293B7D2E67752D68696465207B646973706C6179';
wwv_flow_imp.g_varchar2_table(44) := '3A206E6F6E652021696D706F7274616E743B7D2E67752D756E73656C65637461626C65207B2D7765626B69742D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B2D6D6F7A2D757365722D73656C6563743A206E6F6E652021696D';
wwv_flow_imp.g_varchar2_table(45) := '706F7274616E743B2D6D732D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B757365722D73656C6563743A206E6F6E652021696D706F7274616E743B7D2E67752D7472616E736974207B6F7061636974793A20302E323B2D6D73';
wwv_flow_imp.g_varchar2_table(46) := '2D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D323029223B66696C7465723A20616C706861286F7061636974793D3230293B7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29235846407360388775)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'style.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2866756E6374696F6E2866297B696628747970656F66206578706F7274733D3D3D226F626A656374222626747970656F66206D6F64756C65213D3D22756E646566696E656422297B6D6F64756C652E6578706F7274733D6628297D656C73652069662874';
wwv_flow_imp.g_varchar2_table(2) := '7970656F6620646566696E653D3D3D2266756E6374696F6E222626646566696E652E616D64297B646566696E65285B5D2C66297D656C73657B76617220673B696628747970656F662077696E646F77213D3D22756E646566696E656422297B673D77696E';
wwv_flow_imp.g_varchar2_table(3) := '646F777D656C736520696628747970656F6620676C6F62616C213D3D22756E646566696E656422297B673D676C6F62616C7D656C736520696628747970656F662073656C66213D3D22756E646566696E656422297B673D73656C667D656C73657B673D74';
wwv_flow_imp.g_varchar2_table(4) := '6869737D672E64726167756C61203D206628297D7D292866756E6374696F6E28297B76617220646566696E652C6D6F64756C652C6578706F7274733B72657475726E202866756E6374696F6E28297B66756E6374696F6E207228652C6E2C74297B66756E';
wwv_flow_imp.g_varchar2_table(5) := '6374696F6E206F28692C66297B696628216E5B695D297B69662821655B695D297B76617220633D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972653B69662821662626632972657475726E206328692C2130293B69';
wwv_flow_imp.g_varchar2_table(6) := '6628752972657475726E207528692C2130293B76617220613D6E6577204572726F72282243616E6E6F742066696E64206D6F64756C652027222B692B222722293B7468726F7720612E636F64653D224D4F44554C455F4E4F545F464F554E44222C617D76';
wwv_flow_imp.g_varchar2_table(7) := '617220703D6E5B695D3D7B6578706F7274733A7B7D7D3B655B695D5B305D2E63616C6C28702E6578706F7274732C66756E6374696F6E2872297B766172206E3D655B695D5B315D5B725D3B72657475726E206F286E7C7C72297D2C702C702E6578706F72';
wwv_flow_imp.g_varchar2_table(8) := '74732C722C652C6E2C74297D72657475726E206E5B695D2E6578706F7274737D666F722876617220753D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972652C693D303B693C742E6C656E6774683B692B2B296F2874';
wwv_flow_imp.g_varchar2_table(9) := '5B695D293B72657475726E206F7D72657475726E20727D292829287B313A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2775736520737472696374273B0A0A766172206361636865203D207B7D3B0A76617220';
wwv_flow_imp.g_varchar2_table(10) := '7374617274203D2027283F3A5E7C5C5C7329273B0A76617220656E64203D2027283F3A5C5C737C2429273B0A0A66756E6374696F6E206C6F6F6B7570436C6173732028636C6173734E616D6529207B0A202076617220636163686564203D206361636865';
wwv_flow_imp.g_varchar2_table(11) := '5B636C6173734E616D655D3B0A20206966202863616368656429207B0A202020206361636865642E6C617374496E646578203D20303B0A20207D20656C7365207B0A2020202063616368655B636C6173734E616D655D203D20636163686564203D206E65';
wwv_flow_imp.g_varchar2_table(12) := '7720526567457870287374617274202B20636C6173734E616D65202B20656E642C20276727293B0A20207D0A202072657475726E206361636865643B0A7D0A0A66756E6374696F6E20616464436C6173732028656C2C20636C6173734E616D6529207B0A';
wwv_flow_imp.g_varchar2_table(13) := '20207661722063757272656E74203D20656C2E636C6173734E616D653B0A2020696620282163757272656E742E6C656E67746829207B0A20202020656C2E636C6173734E616D65203D20636C6173734E616D653B0A20207D20656C73652069662028216C';
wwv_flow_imp.g_varchar2_table(14) := '6F6F6B7570436C61737328636C6173734E616D65292E746573742863757272656E742929207B0A20202020656C2E636C6173734E616D65202B3D20272027202B20636C6173734E616D653B0A20207D0A7D0A0A66756E6374696F6E20726D436C61737320';
wwv_flow_imp.g_varchar2_table(15) := '28656C2C20636C6173734E616D6529207B0A2020656C2E636C6173734E616D65203D20656C2E636C6173734E616D652E7265706C616365286C6F6F6B7570436C61737328636C6173734E616D65292C20272027292E7472696D28293B0A7D0A0A6D6F6475';
wwv_flow_imp.g_varchar2_table(16) := '6C652E6578706F727473203D207B0A20206164643A20616464436C6173732C0A2020726D3A20726D436C6173730A7D3B0A0A7D2C7B7D5D2C323A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E637469';
wwv_flow_imp.g_varchar2_table(17) := '6F6E2028676C6F62616C297B0A2775736520737472696374273B0A0A76617220656D6974746572203D20726571756972652827636F6E7472612F656D697474657227293B0A7661722063726F737376656E74203D2072657175697265282763726F737376';
wwv_flow_imp.g_varchar2_table(18) := '656E7427293B0A76617220636C6173736573203D207265717569726528272E2F636C617373657327293B0A76617220646F63203D20646F63756D656E743B0A76617220646F63756D656E74456C656D656E74203D20646F632E646F63756D656E74456C65';
wwv_flow_imp.g_varchar2_table(19) := '6D656E743B0A0A66756E6374696F6E2064726167756C612028696E697469616C436F6E7461696E6572732C206F7074696F6E7329207B0A2020766172206C656E203D20617267756D656E74732E6C656E6774683B0A2020696620286C656E203D3D3D2031';
wwv_flow_imp.g_varchar2_table(20) := '2026262041727261792E6973417272617928696E697469616C436F6E7461696E65727329203D3D3D2066616C736529207B0A202020206F7074696F6E73203D20696E697469616C436F6E7461696E6572733B0A20202020696E697469616C436F6E746169';
wwv_flow_imp.g_varchar2_table(21) := '6E657273203D205B5D3B0A20207D0A2020766172205F6D6972726F723B202F2F206D6972726F7220696D6167650A2020766172205F736F757263653B202F2F20736F7572636520636F6E7461696E65720A2020766172205F6974656D3B202F2F20697465';
wwv_flow_imp.g_varchar2_table(22) := '6D206265696E6720647261676765640A2020766172205F6F6666736574583B202F2F207265666572656E636520780A2020766172205F6F6666736574593B202F2F207265666572656E636520790A2020766172205F6D6F7665583B202F2F207265666572';
wwv_flow_imp.g_varchar2_table(23) := '656E6365206D6F766520780A2020766172205F6D6F7665593B202F2F207265666572656E6365206D6F766520790A2020766172205F696E697469616C5369626C696E673B202F2F207265666572656E6365207369626C696E67207768656E206772616262';
wwv_flow_imp.g_varchar2_table(24) := '65640A2020766172205F63757272656E745369626C696E673B202F2F207265666572656E6365207369626C696E67206E6F770A2020766172205F636F70793B202F2F206974656D207573656420666F7220636F7079696E670A2020766172205F72656E64';
wwv_flow_imp.g_varchar2_table(25) := '657254696D65723B202F2F2074696D657220666F722073657454696D656F75742072656E6465724D6972726F72496D6167650A2020766172205F6C61737444726F70546172676574203D206E756C6C3B202F2F206C61737420636F6E7461696E65722069';
wwv_flow_imp.g_varchar2_table(26) := '74656D20776173206F7665720A2020766172205F677261626265643B202F2F20686F6C6473206D6F757365646F776E20636F6E7465787420756E74696C206669727374206D6F7573656D6F76650A0A2020766172206F203D206F7074696F6E73207C7C20';
wwv_flow_imp.g_varchar2_table(27) := '7B7D3B0A2020696620286F2E6D6F766573203D3D3D20766F6964203029207B206F2E6D6F766573203D20616C776179733B207D0A2020696620286F2E61636365707473203D3D3D20766F6964203029207B206F2E61636365707473203D20616C77617973';
wwv_flow_imp.g_varchar2_table(28) := '3B207D0A2020696620286F2E696E76616C6964203D3D3D20766F6964203029207B206F2E696E76616C6964203D20696E76616C69645461726765743B207D0A2020696620286F2E636F6E7461696E657273203D3D3D20766F6964203029207B206F2E636F';
wwv_flow_imp.g_varchar2_table(29) := '6E7461696E657273203D20696E697469616C436F6E7461696E657273207C7C205B5D3B207D0A2020696620286F2E6973436F6E7461696E6572203D3D3D20766F6964203029207B206F2E6973436F6E7461696E6572203D206E657665723B207D0A202069';
wwv_flow_imp.g_varchar2_table(30) := '6620286F2E636F7079203D3D3D20766F6964203029207B206F2E636F7079203D2066616C73653B207D0A2020696620286F2E636F7079536F7274536F75726365203D3D3D20766F6964203029207B206F2E636F7079536F7274536F75726365203D206661';
wwv_flow_imp.g_varchar2_table(31) := '6C73653B207D0A2020696620286F2E7265766572744F6E5370696C6C203D3D3D20766F6964203029207B206F2E7265766572744F6E5370696C6C203D2066616C73653B207D0A2020696620286F2E72656D6F76654F6E5370696C6C203D3D3D20766F6964';
wwv_flow_imp.g_varchar2_table(32) := '203029207B206F2E72656D6F76654F6E5370696C6C203D2066616C73653B207D0A2020696620286F2E646972656374696F6E203D3D3D20766F6964203029207B206F2E646972656374696F6E203D2027766572746963616C273B207D0A2020696620286F';
wwv_flow_imp.g_varchar2_table(33) := '2E69676E6F7265496E7075745465787453656C656374696F6E203D3D3D20766F6964203029207B206F2E69676E6F7265496E7075745465787453656C656374696F6E203D20747275653B207D0A2020696620286F2E6D6972726F72436F6E7461696E6572';
wwv_flow_imp.g_varchar2_table(34) := '203D3D3D20766F6964203029207B206F2E6D6972726F72436F6E7461696E6572203D20646F632E626F64793B207D0A0A2020766172206472616B65203D20656D6974746572287B0A20202020636F6E7461696E6572733A206F2E636F6E7461696E657273';
wwv_flow_imp.g_varchar2_table(35) := '2C0A2020202073746172743A206D616E75616C53746172742C0A20202020656E643A20656E642C0A2020202063616E63656C3A2063616E63656C2C0A2020202072656D6F76653A2072656D6F76652C0A2020202064657374726F793A2064657374726F79';
wwv_flow_imp.g_varchar2_table(36) := '2C0A2020202063616E4D6F76653A2063616E4D6F76652C0A202020206472616767696E673A2066616C73650A20207D293B0A0A2020696620286F2E72656D6F76654F6E5370696C6C203D3D3D207472756529207B0A202020206472616B652E6F6E28276F';
wwv_flow_imp.g_varchar2_table(37) := '766572272C207370696C6C4F766572292E6F6E28276F7574272C207370696C6C4F7574293B0A20207D0A0A20206576656E747328293B0A0A202072657475726E206472616B653B0A0A202066756E6374696F6E206973436F6E7461696E65722028656C29';
wwv_flow_imp.g_varchar2_table(38) := '207B0A2020202072657475726E206472616B652E636F6E7461696E6572732E696E6465784F6628656C2920213D3D202D31207C7C206F2E6973436F6E7461696E657228656C293B0A20207D0A0A202066756E6374696F6E206576656E7473202872656D6F';
wwv_flow_imp.g_varchar2_table(39) := '766529207B0A20202020766172206F70203D2072656D6F7665203F202772656D6F766527203A2027616464273B0A20202020746F7563687928646F63756D656E74456C656D656E742C206F702C20276D6F757365646F776E272C2067726162293B0A2020';
wwv_flow_imp.g_varchar2_table(40) := '2020746F7563687928646F63756D656E74456C656D656E742C206F702C20276D6F7573657570272C2072656C65617365293B0A20207D0A0A202066756E6374696F6E206576656E7475616C4D6F76656D656E7473202872656D6F766529207B0A20202020';
wwv_flow_imp.g_varchar2_table(41) := '766172206F70203D2072656D6F7665203F202772656D6F766527203A2027616464273B0A20202020746F7563687928646F63756D656E74456C656D656E742C206F702C20276D6F7573656D6F7665272C207374617274426563617573654D6F7573654D6F';
wwv_flow_imp.g_varchar2_table(42) := '766564293B0A20207D0A0A202066756E6374696F6E206D6F76656D656E7473202872656D6F766529207B0A20202020766172206F70203D2072656D6F7665203F202772656D6F766527203A2027616464273B0A2020202063726F737376656E745B6F705D';
wwv_flow_imp.g_varchar2_table(43) := '28646F63756D656E74456C656D656E742C202773656C6563747374617274272C2070726576656E7447726162626564293B202F2F204945380A2020202063726F737376656E745B6F705D28646F63756D656E74456C656D656E742C2027636C69636B272C';
wwv_flow_imp.g_varchar2_table(44) := '2070726576656E7447726162626564293B0A20207D0A0A202066756E6374696F6E2064657374726F79202829207B0A202020206576656E74732874727565293B0A2020202072656C65617365287B7D293B0A20207D0A0A202066756E6374696F6E207072';
wwv_flow_imp.g_varchar2_table(45) := '6576656E744772616262656420286529207B0A20202020696620285F6772616262656429207B0A202020202020652E70726576656E7444656661756C7428293B0A202020207D0A20207D0A0A202066756E6374696F6E206772616220286529207B0A2020';
wwv_flow_imp.g_varchar2_table(46) := '20205F6D6F766558203D20652E636C69656E74583B0A202020205F6D6F766559203D20652E636C69656E74593B0A0A202020207661722069676E6F7265203D2077686963684D6F757365427574746F6E28652920213D3D2031207C7C20652E6D6574614B';
wwv_flow_imp.g_varchar2_table(47) := '6579207C7C20652E6374726C4B65793B0A202020206966202869676E6F726529207B0A20202020202072657475726E3B202F2F207765206F6E6C7920636172652061626F757420686F6E6573742D746F2D676F64206C65667420636C69636B7320616E64';
wwv_flow_imp.g_varchar2_table(48) := '20746F756368206576656E74730A202020207D0A20202020766172206974656D203D20652E7461726765743B0A2020202076617220636F6E74657874203D2063616E5374617274286974656D293B0A202020206966202821636F6E7465787429207B0A20';
wwv_flow_imp.g_varchar2_table(49) := '202020202072657475726E3B0A202020207D0A202020205F67726162626564203D20636F6E746578743B0A202020206576656E7475616C4D6F76656D656E747328293B0A2020202069662028652E74797065203D3D3D20276D6F757365646F776E272920';
wwv_flow_imp.g_varchar2_table(50) := '7B0A202020202020696620286973496E707574286974656D2929207B202F2F2073656520616C736F3A2068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3230380A2020202020202020697465';
wwv_flow_imp.g_varchar2_table(51) := '6D2E666F63757328293B202F2F2066697865732068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3137360A2020202020207D20656C7365207B0A2020202020202020652E70726576656E7444';
wwv_flow_imp.g_varchar2_table(52) := '656661756C7428293B202F2F2066697865732068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3135350A2020202020207D0A202020207D0A20207D0A0A202066756E6374696F6E2073746172';
wwv_flow_imp.g_varchar2_table(53) := '74426563617573654D6F7573654D6F76656420286529207B0A2020202069662028215F6772616262656429207B0A20202020202072657475726E3B0A202020207D0A202020206966202877686963684D6F757365427574746F6E286529203D3D3D203029';
wwv_flow_imp.g_varchar2_table(54) := '207B0A20202020202072656C65617365287B7D293B0A20202020202072657475726E3B202F2F207768656E20746578742069732073656C6563746564206F6E20616E20696E70757420616E64207468656E20647261676765642C206D6F75736575702064';
wwv_flow_imp.g_varchar2_table(55) := '6F65736E277420666972652E2074686973206973206F7572206F6E6C7920686F70650A202020207D0A0A202020202F2F2074727574687920636865636B20666978657320233233392C20657175616C69747920666978657320233230372C206669786573';
wwv_flow_imp.g_varchar2_table(56) := '20233530310A202020206966202828652E636C69656E745820213D3D20766F69642030202626204D6174682E61627328652E636C69656E7458202D205F6D6F76655829203C3D20286F2E736C696465466163746F7258207C7C203029292026260A202020';
wwv_flow_imp.g_varchar2_table(57) := '20202028652E636C69656E745920213D3D20766F69642030202626204D6174682E61627328652E636C69656E7459202D205F6D6F76655929203C3D20286F2E736C696465466163746F7259207C7C2030292929207B0A20202020202072657475726E3B0A';
wwv_flow_imp.g_varchar2_table(58) := '202020207D0A0A20202020696620286F2E69676E6F7265496E7075745465787453656C656374696F6E29207B0A20202020202076617220636C69656E7458203D20676574436F6F72642827636C69656E7458272C206529207C7C20303B0A202020202020';
wwv_flow_imp.g_varchar2_table(59) := '76617220636C69656E7459203D20676574436F6F72642827636C69656E7459272C206529207C7C20303B0A20202020202076617220656C656D656E74426568696E64437572736F72203D20646F632E656C656D656E7446726F6D506F696E7428636C6965';
wwv_flow_imp.g_varchar2_table(60) := '6E74582C20636C69656E7459293B0A202020202020696620286973496E70757428656C656D656E74426568696E64437572736F722929207B0A202020202020202072657475726E3B0A2020202020207D0A202020207D0A0A202020207661722067726162';
wwv_flow_imp.g_varchar2_table(61) := '626564203D205F677261626265643B202F2F2063616C6C20746F20656E64282920756E73657473205F677261626265640A202020206576656E7475616C4D6F76656D656E74732874727565293B0A202020206D6F76656D656E747328293B0A2020202065';
wwv_flow_imp.g_varchar2_table(62) := '6E6428293B0A2020202073746172742867726162626564293B0A0A20202020766172206F6666736574203D206765744F6666736574285F6974656D293B0A202020205F6F666673657458203D20676574436F6F726428277061676558272C206529202D20';
wwv_flow_imp.g_varchar2_table(63) := '6F66667365742E6C6566743B0A202020205F6F666673657459203D20676574436F6F726428277061676559272C206529202D206F66667365742E746F703B0A0A20202020636C61737365732E616464285F636F7079207C7C205F6974656D2C202767752D';
wwv_flow_imp.g_varchar2_table(64) := '7472616E73697427293B0A2020202072656E6465724D6972726F72496D61676528293B0A20202020647261672865293B0A20207D0A0A202066756E6374696F6E2063616E537461727420286974656D29207B0A20202020696620286472616B652E647261';
wwv_flow_imp.g_varchar2_table(65) := '6767696E67202626205F6D6972726F7229207B0A20202020202072657475726E3B0A202020207D0A20202020696620286973436F6E7461696E6572286974656D2929207B0A20202020202072657475726E3B202F2F20646F6E2774206472616720636F6E';
wwv_flow_imp.g_varchar2_table(66) := '7461696E657220697473656C660A202020207D0A202020207661722068616E646C65203D206974656D3B0A202020207768696C652028676574506172656E74286974656D29202626206973436F6E7461696E657228676574506172656E74286974656D29';
wwv_flow_imp.g_varchar2_table(67) := '29203D3D3D2066616C736529207B0A202020202020696620286F2E696E76616C6964286974656D2C2068616E646C652929207B0A202020202020202072657475726E3B0A2020202020207D0A2020202020206974656D203D20676574506172656E742869';
wwv_flow_imp.g_varchar2_table(68) := '74656D293B202F2F2064726167207461726765742073686F756C64206265206120746F7020656C656D656E740A20202020202069662028216974656D29207B0A202020202020202072657475726E3B0A2020202020207D0A202020207D0A202020207661';
wwv_flow_imp.g_varchar2_table(69) := '7220736F75726365203D20676574506172656E74286974656D293B0A202020206966202821736F7572636529207B0A20202020202072657475726E3B0A202020207D0A20202020696620286F2E696E76616C6964286974656D2C2068616E646C65292920';
wwv_flow_imp.g_varchar2_table(70) := '7B0A20202020202072657475726E3B0A202020207D0A0A20202020766172206D6F7661626C65203D206F2E6D6F766573286974656D2C20736F757263652C2068616E646C652C206E657874456C286974656D29293B0A2020202069662028216D6F766162';
wwv_flow_imp.g_varchar2_table(71) := '6C6529207B0A20202020202072657475726E3B0A202020207D0A0A2020202072657475726E207B0A2020202020206974656D3A206974656D2C0A202020202020736F757263653A20736F757263650A202020207D3B0A20207D0A0A202066756E6374696F';
wwv_flow_imp.g_varchar2_table(72) := '6E2063616E4D6F766520286974656D29207B0A2020202072657475726E20212163616E5374617274286974656D293B0A20207D0A0A202066756E6374696F6E206D616E75616C537461727420286974656D29207B0A2020202076617220636F6E74657874';
wwv_flow_imp.g_varchar2_table(73) := '203D2063616E5374617274286974656D293B0A2020202069662028636F6E7465787429207B0A202020202020737461727428636F6E74657874293B0A202020207D0A20207D0A0A202066756E6374696F6E2073746172742028636F6E7465787429207B0A';
wwv_flow_imp.g_varchar2_table(74) := '20202020696620286973436F707928636F6E746578742E6974656D2C20636F6E746578742E736F757263652929207B0A2020202020205F636F7079203D20636F6E746578742E6974656D2E636C6F6E654E6F64652874727565293B0A2020202020206472';
wwv_flow_imp.g_varchar2_table(75) := '616B652E656D69742827636C6F6E6564272C205F636F70792C20636F6E746578742E6974656D2C2027636F707927293B0A202020207D0A0A202020205F736F75726365203D20636F6E746578742E736F757263653B0A202020205F6974656D203D20636F';
wwv_flow_imp.g_varchar2_table(76) := '6E746578742E6974656D3B0A202020205F696E697469616C5369626C696E67203D205F63757272656E745369626C696E67203D206E657874456C28636F6E746578742E6974656D293B0A0A202020206472616B652E6472616767696E67203D2074727565';
wwv_flow_imp.g_varchar2_table(77) := '3B0A202020206472616B652E656D6974282764726167272C205F6974656D2C205F736F75726365293B0A20207D0A0A202066756E6374696F6E20696E76616C6964546172676574202829207B0A2020202072657475726E2066616C73653B0A20207D0A0A';
wwv_flow_imp.g_varchar2_table(78) := '202066756E6374696F6E20656E64202829207B0A2020202069662028216472616B652E6472616767696E6729207B0A20202020202072657475726E3B0A202020207D0A20202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A2020';
wwv_flow_imp.g_varchar2_table(79) := '202064726F70286974656D2C20676574506172656E74286974656D29293B0A20207D0A0A202066756E6374696F6E20756E67726162202829207B0A202020205F67726162626564203D2066616C73653B0A202020206576656E7475616C4D6F76656D656E';
wwv_flow_imp.g_varchar2_table(80) := '74732874727565293B0A202020206D6F76656D656E74732874727565293B0A20207D0A0A202066756E6374696F6E2072656C6561736520286529207B0A20202020756E6772616228293B0A0A2020202069662028216472616B652E6472616767696E6729';
wwv_flow_imp.g_varchar2_table(81) := '207B0A20202020202072657475726E3B0A202020207D0A20202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A2020202076617220636C69656E7458203D20676574436F6F72642827636C69656E7458272C206529207C7C20303B';
wwv_flow_imp.g_varchar2_table(82) := '0A2020202076617220636C69656E7459203D20676574436F6F72642827636C69656E7459272C206529207C7C20303B0A2020202076617220656C656D656E74426568696E64437572736F72203D20676574456C656D656E74426568696E64506F696E7428';
wwv_flow_imp.g_varchar2_table(83) := '5F6D6972726F722C20636C69656E74582C20636C69656E7459293B0A202020207661722064726F70546172676574203D2066696E6444726F7054617267657428656C656D656E74426568696E64437572736F722C20636C69656E74582C20636C69656E74';
wwv_flow_imp.g_varchar2_table(84) := '59293B0A202020206966202864726F705461726765742026262028285F636F7079202626206F2E636F7079536F7274536F7572636529207C7C2028215F636F7079207C7C2064726F7054617267657420213D3D205F736F75726365292929207B0A202020';
wwv_flow_imp.g_varchar2_table(85) := '20202064726F70286974656D2C2064726F70546172676574293B0A202020207D20656C736520696620286F2E72656D6F76654F6E5370696C6C29207B0A20202020202072656D6F766528293B0A202020207D20656C7365207B0A20202020202063616E63';
wwv_flow_imp.g_varchar2_table(86) := '656C28293B0A202020207D0A20207D0A0A202066756E6374696F6E2064726F7020286974656D2C2074617267657429207B0A2020202076617220706172656E74203D20676574506172656E74286974656D293B0A20202020696620285F636F7079202626';
wwv_flow_imp.g_varchar2_table(87) := '206F2E636F7079536F7274536F7572636520262620746172676574203D3D3D205F736F7572636529207B0A202020202020706172656E742E72656D6F76654368696C64285F6974656D293B0A202020207D0A20202020696620286973496E697469616C50';
wwv_flow_imp.g_varchar2_table(88) := '6C6163656D656E74287461726765742929207B0A2020202020206472616B652E656D6974282763616E63656C272C206974656D2C205F736F757263652C205F736F75726365293B0A202020207D20656C7365207B0A2020202020206472616B652E656D69';
wwv_flow_imp.g_varchar2_table(89) := '74282764726F70272C206974656D2C207461726765742C205F736F757263652C205F63757272656E745369626C696E67293B0A202020207D0A20202020636C65616E757028293B0A20207D0A0A202066756E6374696F6E2072656D6F7665202829207B0A';
wwv_flow_imp.g_varchar2_table(90) := '2020202069662028216472616B652E6472616767696E6729207B0A20202020202072657475726E3B0A202020207D0A20202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A2020202076617220706172656E74203D206765745061';
wwv_flow_imp.g_varchar2_table(91) := '72656E74286974656D293B0A2020202069662028706172656E7429207B0A202020202020706172656E742E72656D6F76654368696C64286974656D293B0A202020207D0A202020206472616B652E656D6974285F636F7079203F202763616E63656C2720';
wwv_flow_imp.g_varchar2_table(92) := '3A202772656D6F7665272C206974656D2C20706172656E742C205F736F75726365293B0A20202020636C65616E757028293B0A20207D0A0A202066756E6374696F6E2063616E63656C202872657665727429207B0A2020202069662028216472616B652E';
wwv_flow_imp.g_varchar2_table(93) := '6472616767696E6729207B0A20202020202072657475726E3B0A202020207D0A202020207661722072657665727473203D20617267756D656E74732E6C656E677468203E2030203F20726576657274203A206F2E7265766572744F6E5370696C6C3B0A20';
wwv_flow_imp.g_varchar2_table(94) := '202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A2020202076617220706172656E74203D20676574506172656E74286974656D293B0A2020202076617220696E697469616C203D206973496E697469616C506C6163656D656E74';
wwv_flow_imp.g_varchar2_table(95) := '28706172656E74293B0A2020202069662028696E697469616C203D3D3D2066616C7365202626207265766572747329207B0A202020202020696620285F636F707929207B0A202020202020202069662028706172656E7429207B0A202020202020202020';
wwv_flow_imp.g_varchar2_table(96) := '20706172656E742E72656D6F76654368696C64285F636F7079293B0A20202020202020207D0A2020202020207D20656C7365207B0A20202020202020205F736F757263652E696E736572744265666F7265286974656D2C205F696E697469616C5369626C';
wwv_flow_imp.g_varchar2_table(97) := '696E67293B0A2020202020207D0A202020207D0A2020202069662028696E697469616C207C7C207265766572747329207B0A2020202020206472616B652E656D6974282763616E63656C272C206974656D2C205F736F757263652C205F736F7572636529';
wwv_flow_imp.g_varchar2_table(98) := '3B0A202020207D20656C7365207B0A2020202020206472616B652E656D6974282764726F70272C206974656D2C20706172656E742C205F736F757263652C205F63757272656E745369626C696E67293B0A202020207D0A20202020636C65616E75702829';
wwv_flow_imp.g_varchar2_table(99) := '3B0A20207D0A0A202066756E6374696F6E20636C65616E7570202829207B0A20202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A20202020756E6772616228293B0A2020202072656D6F76654D6972726F72496D61676528293B';
wwv_flow_imp.g_varchar2_table(100) := '0A20202020696620286974656D29207B0A202020202020636C61737365732E726D286974656D2C202767752D7472616E73697427293B0A202020207D0A20202020696620285F72656E64657254696D657229207B0A202020202020636C65617254696D65';
wwv_flow_imp.g_varchar2_table(101) := '6F7574285F72656E64657254696D6572293B0A202020207D0A202020206472616B652E6472616767696E67203D2066616C73653B0A20202020696620285F6C61737444726F7054617267657429207B0A2020202020206472616B652E656D697428276F75';
wwv_flow_imp.g_varchar2_table(102) := '74272C206974656D2C205F6C61737444726F705461726765742C205F736F75726365293B0A202020207D0A202020206472616B652E656D6974282764726167656E64272C206974656D293B0A202020205F736F75726365203D205F6974656D203D205F63';
wwv_flow_imp.g_varchar2_table(103) := '6F7079203D205F696E697469616C5369626C696E67203D205F63757272656E745369626C696E67203D205F72656E64657254696D6572203D205F6C61737444726F70546172676574203D206E756C6C3B0A20207D0A0A202066756E6374696F6E20697349';
wwv_flow_imp.g_varchar2_table(104) := '6E697469616C506C6163656D656E7420287461726765742C207329207B0A20202020766172207369626C696E673B0A20202020696620287320213D3D20766F6964203029207B0A2020202020207369626C696E67203D20733B0A202020207D20656C7365';
wwv_flow_imp.g_varchar2_table(105) := '20696620285F6D6972726F7229207B0A2020202020207369626C696E67203D205F63757272656E745369626C696E673B0A202020207D20656C7365207B0A2020202020207369626C696E67203D206E657874456C285F636F7079207C7C205F6974656D29';
wwv_flow_imp.g_varchar2_table(106) := '3B0A202020207D0A2020202072657475726E20746172676574203D3D3D205F736F75726365202626207369626C696E67203D3D3D205F696E697469616C5369626C696E673B0A20207D0A0A202066756E6374696F6E2066696E6444726F70546172676574';
wwv_flow_imp.g_varchar2_table(107) := '2028656C656D656E74426568696E64437572736F722C20636C69656E74582C20636C69656E745929207B0A2020202076617220746172676574203D20656C656D656E74426568696E64437572736F723B0A202020207768696C6520287461726765742026';
wwv_flow_imp.g_varchar2_table(108) := '2620216163636570746564282929207B0A202020202020746172676574203D20676574506172656E7428746172676574293B0A202020207D0A2020202072657475726E207461726765743B0A0A2020202066756E6374696F6E2061636365707465642028';
wwv_flow_imp.g_varchar2_table(109) := '29207B0A2020202020207661722064726F707061626C65203D206973436F6E7461696E657228746172676574293B0A2020202020206966202864726F707061626C65203D3D3D2066616C736529207B0A202020202020202072657475726E2066616C7365';
wwv_flow_imp.g_varchar2_table(110) := '3B0A2020202020207D0A0A20202020202076617220696D6D656469617465203D20676574496D6D6564696174654368696C64287461726765742C20656C656D656E74426568696E64437572736F72293B0A202020202020766172207265666572656E6365';
wwv_flow_imp.g_varchar2_table(111) := '203D206765745265666572656E6365287461726765742C20696D6D6564696174652C20636C69656E74582C20636C69656E7459293B0A20202020202076617220696E697469616C203D206973496E697469616C506C6163656D656E74287461726765742C';
wwv_flow_imp.g_varchar2_table(112) := '207265666572656E6365293B0A20202020202069662028696E697469616C29207B0A202020202020202072657475726E20747275653B202F2F2073686F756C6420616C776179732062652061626C6520746F2064726F7020697420726967687420626163';
wwv_flow_imp.g_varchar2_table(113) := '6B207768657265206974207761730A2020202020207D0A20202020202072657475726E206F2E61636365707473285F6974656D2C207461726765742C205F736F757263652C207265666572656E6365293B0A202020207D0A20207D0A0A202066756E6374';
wwv_flow_imp.g_varchar2_table(114) := '696F6E206472616720286529207B0A2020202069662028215F6D6972726F7229207B0A20202020202072657475726E3B0A202020207D0A20202020652E70726576656E7444656661756C7428293B0A0A2020202076617220636C69656E7458203D206765';
wwv_flow_imp.g_varchar2_table(115) := '74436F6F72642827636C69656E7458272C206529207C7C20303B0A2020202076617220636C69656E7459203D20676574436F6F72642827636C69656E7459272C206529207C7C20303B0A202020207661722078203D20636C69656E7458202D205F6F6666';
wwv_flow_imp.g_varchar2_table(116) := '736574583B0A202020207661722079203D20636C69656E7459202D205F6F6666736574593B0A0A202020205F6D6972726F722E7374796C652E6C656674203D2078202B20277078273B0A202020205F6D6972726F722E7374796C652E746F70203D207920';
wwv_flow_imp.g_varchar2_table(117) := '2B20277078273B0A0A20202020766172206974656D203D205F636F7079207C7C205F6974656D3B0A2020202076617220656C656D656E74426568696E64437572736F72203D20676574456C656D656E74426568696E64506F696E74285F6D6972726F722C';
wwv_flow_imp.g_varchar2_table(118) := '20636C69656E74582C20636C69656E7459293B0A202020207661722064726F70546172676574203D2066696E6444726F7054617267657428656C656D656E74426568696E64437572736F722C20636C69656E74582C20636C69656E7459293B0A20202020';
wwv_flow_imp.g_varchar2_table(119) := '766172206368616E676564203D2064726F7054617267657420213D3D206E756C6C2026262064726F7054617267657420213D3D205F6C61737444726F705461726765743B0A20202020696620286368616E676564207C7C2064726F70546172676574203D';
wwv_flow_imp.g_varchar2_table(120) := '3D3D206E756C6C29207B0A2020202020206F757428293B0A2020202020205F6C61737444726F70546172676574203D2064726F705461726765743B0A2020202020206F76657228293B0A202020207D0A2020202076617220706172656E74203D20676574';
wwv_flow_imp.g_varchar2_table(121) := '506172656E74286974656D293B0A202020206966202864726F70546172676574203D3D3D205F736F75726365202626205F636F707920262620216F2E636F7079536F7274536F7572636529207B0A20202020202069662028706172656E7429207B0A2020';
wwv_flow_imp.g_varchar2_table(122) := '202020202020706172656E742E72656D6F76654368696C64286974656D293B0A2020202020207D0A20202020202072657475726E3B0A202020207D0A20202020766172207265666572656E63653B0A2020202076617220696D6D656469617465203D2067';
wwv_flow_imp.g_varchar2_table(123) := '6574496D6D6564696174654368696C642864726F705461726765742C20656C656D656E74426568696E64437572736F72293B0A2020202069662028696D6D65646961746520213D3D206E756C6C29207B0A2020202020207265666572656E6365203D2067';
wwv_flow_imp.g_varchar2_table(124) := '65745265666572656E63652864726F705461726765742C20696D6D6564696174652C20636C69656E74582C20636C69656E7459293B0A202020207D20656C736520696620286F2E7265766572744F6E5370696C6C203D3D3D207472756520262620215F63';
wwv_flow_imp.g_varchar2_table(125) := '6F707929207B0A2020202020207265666572656E6365203D205F696E697469616C5369626C696E673B0A20202020202064726F70546172676574203D205F736F757263653B0A202020207D20656C7365207B0A202020202020696620285F636F70792026';
wwv_flow_imp.g_varchar2_table(126) := '2620706172656E7429207B0A2020202020202020706172656E742E72656D6F76654368696C64286974656D293B0A2020202020207D0A20202020202072657475726E3B0A202020207D0A20202020696620280A202020202020287265666572656E636520';
wwv_flow_imp.g_varchar2_table(127) := '3D3D3D206E756C6C202626206368616E67656429207C7C0A2020202020207265666572656E636520213D3D206974656D2026260A2020202020207265666572656E636520213D3D206E657874456C286974656D290A2020202029207B0A2020202020205F';
wwv_flow_imp.g_varchar2_table(128) := '63757272656E745369626C696E67203D207265666572656E63653B0A20202020202064726F705461726765742E696E736572744265666F7265286974656D2C207265666572656E6365293B0A2020202020206472616B652E656D69742827736861646F77';
wwv_flow_imp.g_varchar2_table(129) := '272C206974656D2C2064726F705461726765742C205F736F75726365293B0A202020207D0A2020202066756E6374696F6E206D6F76656420287479706529207B206472616B652E656D697428747970652C206974656D2C205F6C61737444726F70546172';
wwv_flow_imp.g_varchar2_table(130) := '6765742C205F736F75726365293B207D0A2020202066756E6374696F6E206F766572202829207B20696620286368616E67656429207B206D6F76656428276F76657227293B207D207D0A2020202066756E6374696F6E206F7574202829207B2069662028';
wwv_flow_imp.g_varchar2_table(131) := '5F6C61737444726F7054617267657429207B206D6F76656428276F757427293B207D207D0A20207D0A0A202066756E6374696F6E207370696C6C4F7665722028656C29207B0A20202020636C61737365732E726D28656C2C202767752D6869646527293B';
wwv_flow_imp.g_varchar2_table(132) := '0A20207D0A0A202066756E6374696F6E207370696C6C4F75742028656C29207B0A20202020696620286472616B652E6472616767696E6729207B20636C61737365732E61646428656C2C202767752D6869646527293B207D0A20207D0A0A202066756E63';
wwv_flow_imp.g_varchar2_table(133) := '74696F6E2072656E6465724D6972726F72496D616765202829207B0A20202020696620285F6D6972726F7229207B0A20202020202072657475726E3B0A202020207D0A202020207661722072656374203D205F6974656D2E676574426F756E64696E6743';
wwv_flow_imp.g_varchar2_table(134) := '6C69656E745265637428293B0A202020205F6D6972726F72203D205F6974656D2E636C6F6E654E6F64652874727565293B0A202020205F6D6972726F722E7374796C652E7769647468203D20676574526563745769647468287265637429202B20277078';
wwv_flow_imp.g_varchar2_table(135) := '273B0A202020205F6D6972726F722E7374796C652E686569676874203D2067657452656374486569676874287265637429202B20277078273B0A20202020636C61737365732E726D285F6D6972726F722C202767752D7472616E73697427293B0A202020';
wwv_flow_imp.g_varchar2_table(136) := '20636C61737365732E616464285F6D6972726F722C202767752D6D6972726F7227293B0A202020206F2E6D6972726F72436F6E7461696E65722E617070656E644368696C64285F6D6972726F72293B0A20202020746F7563687928646F63756D656E7445';
wwv_flow_imp.g_varchar2_table(137) := '6C656D656E742C2027616464272C20276D6F7573656D6F7665272C2064726167293B0A20202020636C61737365732E616464286F2E6D6972726F72436F6E7461696E65722C202767752D756E73656C65637461626C6527293B0A202020206472616B652E';
wwv_flow_imp.g_varchar2_table(138) := '656D69742827636C6F6E6564272C205F6D6972726F722C205F6974656D2C20276D6972726F7227293B0A20207D0A0A202066756E6374696F6E2072656D6F76654D6972726F72496D616765202829207B0A20202020696620285F6D6972726F7229207B0A';
wwv_flow_imp.g_varchar2_table(139) := '202020202020636C61737365732E726D286F2E6D6972726F72436F6E7461696E65722C202767752D756E73656C65637461626C6527293B0A202020202020746F7563687928646F63756D656E74456C656D656E742C202772656D6F7665272C20276D6F75';
wwv_flow_imp.g_varchar2_table(140) := '73656D6F7665272C2064726167293B0A202020202020676574506172656E74285F6D6972726F72292E72656D6F76654368696C64285F6D6972726F72293B0A2020202020205F6D6972726F72203D206E756C6C3B0A202020207D0A20207D0A0A20206675';
wwv_flow_imp.g_varchar2_table(141) := '6E6374696F6E20676574496D6D6564696174654368696C64202864726F705461726765742C2074617267657429207B0A2020202076617220696D6D656469617465203D207461726765743B0A202020207768696C652028696D6D65646961746520213D3D';
wwv_flow_imp.g_varchar2_table(142) := '2064726F7054617267657420262620676574506172656E7428696D6D6564696174652920213D3D2064726F7054617267657429207B0A202020202020696D6D656469617465203D20676574506172656E7428696D6D656469617465293B0A202020207D0A';
wwv_flow_imp.g_varchar2_table(143) := '2020202069662028696D6D656469617465203D3D3D20646F63756D656E74456C656D656E7429207B0A20202020202072657475726E206E756C6C3B0A202020207D0A2020202072657475726E20696D6D6564696174653B0A20207D0A0A202066756E6374';
wwv_flow_imp.g_varchar2_table(144) := '696F6E206765745265666572656E6365202864726F705461726765742C207461726765742C20782C207929207B0A2020202076617220686F72697A6F6E74616C203D206F2E646972656374696F6E203D3D3D2027686F72697A6F6E74616C273B0A202020';
wwv_flow_imp.g_varchar2_table(145) := '20766172207265666572656E6365203D2074617267657420213D3D2064726F70546172676574203F20696E736964652829203A206F75747369646528293B0A2020202072657475726E207265666572656E63653B0A0A2020202066756E6374696F6E206F';
wwv_flow_imp.g_varchar2_table(146) := '757473696465202829207B202F2F20736C6F7765722C206275742061626C6520746F20666967757265206F757420616E7920706F736974696F6E0A202020202020766172206C656E203D2064726F705461726765742E6368696C6472656E2E6C656E6774';
wwv_flow_imp.g_varchar2_table(147) := '683B0A20202020202076617220693B0A20202020202076617220656C3B0A20202020202076617220726563743B0A202020202020666F72202869203D20303B2069203C206C656E3B20692B2B29207B0A2020202020202020656C203D2064726F70546172';
wwv_flow_imp.g_varchar2_table(148) := '6765742E6368696C6472656E5B695D3B0A202020202020202072656374203D20656C2E676574426F756E64696E67436C69656E745265637428293B0A202020202020202069662028686F72697A6F6E74616C2026262028726563742E6C656674202B2072';
wwv_flow_imp.g_varchar2_table(149) := '6563742E7769647468202F203229203E207829207B2072657475726E20656C3B207D0A20202020202020206966202821686F72697A6F6E74616C2026262028726563742E746F70202B20726563742E686569676874202F203229203E207929207B207265';
wwv_flow_imp.g_varchar2_table(150) := '7475726E20656C3B207D0A2020202020207D0A20202020202072657475726E206E756C6C3B0A202020207D0A0A2020202066756E6374696F6E20696E73696465202829207B202F2F206661737465722C20627574206F6E6C7920617661696C61626C6520';
wwv_flow_imp.g_varchar2_table(151) := '69662064726F7070656420696E736964652061206368696C6420656C656D656E740A2020202020207661722072656374203D207461726765742E676574426F756E64696E67436C69656E745265637428293B0A20202020202069662028686F72697A6F6E';
wwv_flow_imp.g_varchar2_table(152) := '74616C29207B0A202020202020202072657475726E207265736F6C76652878203E20726563742E6C656674202B20676574526563745769647468287265637429202F2032293B0A2020202020207D0A20202020202072657475726E207265736F6C766528';
wwv_flow_imp.g_varchar2_table(153) := '79203E20726563742E746F70202B2067657452656374486569676874287265637429202F2032293B0A202020207D0A0A2020202066756E6374696F6E207265736F6C76652028616674657229207B0A20202020202072657475726E206166746572203F20';
wwv_flow_imp.g_varchar2_table(154) := '6E657874456C2874617267657429203A207461726765743B0A202020207D0A20207D0A0A202066756E6374696F6E206973436F707920286974656D2C20636F6E7461696E657229207B0A2020202072657475726E20747970656F66206F2E636F7079203D';
wwv_flow_imp.g_varchar2_table(155) := '3D3D2027626F6F6C65616E27203F206F2E636F7079203A206F2E636F7079286974656D2C20636F6E7461696E6572293B0A20207D0A7D0A0A66756E6374696F6E20746F756368792028656C2C206F702C20747970652C20666E29207B0A20207661722074';
wwv_flow_imp.g_varchar2_table(156) := '6F756368203D207B0A202020206D6F75736575703A2027746F756368656E64272C0A202020206D6F757365646F776E3A2027746F7563687374617274272C0A202020206D6F7573656D6F76653A2027746F7563686D6F7665270A20207D3B0A2020766172';
wwv_flow_imp.g_varchar2_table(157) := '20706F696E74657273203D207B0A202020206D6F75736575703A2027706F696E7465727570272C0A202020206D6F757365646F776E3A2027706F696E746572646F776E272C0A202020206D6F7573656D6F76653A2027706F696E7465726D6F7665270A20';
wwv_flow_imp.g_varchar2_table(158) := '207D3B0A2020766172206D6963726F736F6674203D207B0A202020206D6F75736575703A20274D53506F696E7465725570272C0A202020206D6F757365646F776E3A20274D53506F696E746572446F776E272C0A202020206D6F7573656D6F76653A2027';
wwv_flow_imp.g_varchar2_table(159) := '4D53506F696E7465724D6F7665270A20207D3B0A202069662028676C6F62616C2E6E6176696761746F722E706F696E746572456E61626C656429207B0A2020202063726F737376656E745B6F705D28656C2C20706F696E746572735B747970655D2C2066';
wwv_flow_imp.g_varchar2_table(160) := '6E293B0A20207D20656C73652069662028676C6F62616C2E6E6176696761746F722E6D73506F696E746572456E61626C656429207B0A2020202063726F737376656E745B6F705D28656C2C206D6963726F736F66745B747970655D2C20666E293B0A2020';
wwv_flow_imp.g_varchar2_table(161) := '7D20656C7365207B0A2020202063726F737376656E745B6F705D28656C2C20746F7563685B747970655D2C20666E293B0A2020202063726F737376656E745B6F705D28656C2C20747970652C20666E293B0A20207D0A7D0A0A66756E6374696F6E207768';
wwv_flow_imp.g_varchar2_table(162) := '6963684D6F757365427574746F6E20286529207B0A202069662028652E746F756368657320213D3D20766F6964203029207B2072657475726E20652E746F75636865732E6C656E6774683B207D0A202069662028652E776869636820213D3D20766F6964';
wwv_flow_imp.g_varchar2_table(163) := '203020262620652E776869636820213D3D203029207B2072657475726E20652E77686963683B207D202F2F207365652068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F6973737565732F3236310A2020696620';
wwv_flow_imp.g_varchar2_table(164) := '28652E627574746F6E7320213D3D20766F6964203029207B2072657475726E20652E627574746F6E733B207D0A202076617220627574746F6E203D20652E627574746F6E3B0A202069662028627574746F6E20213D3D20766F6964203029207B202F2F20';
wwv_flow_imp.g_varchar2_table(165) := '7365652068747470733A2F2F6769746875622E636F6D2F6A71756572792F6A71756572792F626C6F622F393965386666316261613761653334316539346262383963336538343537306337633361643965612F7372632F6576656E742E6A73234C353733';
wwv_flow_imp.g_varchar2_table(166) := '2D4C3537350A2020202072657475726E20627574746F6E20262031203F2031203A20627574746F6E20262032203F2033203A2028627574746F6E20262034203F2032203A2030293B0A20207D0A7D0A0A66756E6374696F6E206765744F66667365742028';
wwv_flow_imp.g_varchar2_table(167) := '656C29207B0A20207661722072656374203D20656C2E676574426F756E64696E67436C69656E745265637428293B0A202072657475726E207B0A202020206C6566743A20726563742E6C656674202B206765745363726F6C6C28277363726F6C6C4C6566';
wwv_flow_imp.g_varchar2_table(168) := '74272C202770616765584F666673657427292C0A20202020746F703A20726563742E746F70202B206765745363726F6C6C28277363726F6C6C546F70272C202770616765594F666673657427290A20207D3B0A7D0A0A66756E6374696F6E206765745363';
wwv_flow_imp.g_varchar2_table(169) := '726F6C6C20287363726F6C6C50726F702C206F666673657450726F7029207B0A202069662028747970656F6620676C6F62616C5B6F666673657450726F705D20213D3D2027756E646566696E65642729207B0A2020202072657475726E20676C6F62616C';
wwv_flow_imp.g_varchar2_table(170) := '5B6F666673657450726F705D3B0A20207D0A202069662028646F63756D656E74456C656D656E742E636C69656E7448656967687429207B0A2020202072657475726E20646F63756D656E74456C656D656E745B7363726F6C6C50726F705D3B0A20207D0A';
wwv_flow_imp.g_varchar2_table(171) := '202072657475726E20646F632E626F64795B7363726F6C6C50726F705D3B0A7D0A0A66756E6374696F6E20676574456C656D656E74426568696E64506F696E742028706F696E742C20782C207929207B0A2020706F696E74203D20706F696E74207C7C20';
wwv_flow_imp.g_varchar2_table(172) := '7B7D3B0A2020766172207374617465203D20706F696E742E636C6173734E616D65207C7C2027273B0A202076617220656C3B0A2020706F696E742E636C6173734E616D65202B3D20272067752D68696465273B0A2020656C203D20646F632E656C656D65';
wwv_flow_imp.g_varchar2_table(173) := '6E7446726F6D506F696E7428782C2079293B0A2020706F696E742E636C6173734E616D65203D2073746174653B0A202072657475726E20656C3B0A7D0A0A66756E6374696F6E206E65766572202829207B2072657475726E2066616C73653B207D0A6675';
wwv_flow_imp.g_varchar2_table(174) := '6E6374696F6E20616C77617973202829207B2072657475726E20747275653B207D0A66756E6374696F6E2067657452656374576964746820287265637429207B2072657475726E20726563742E7769647468207C7C2028726563742E7269676874202D20';
wwv_flow_imp.g_varchar2_table(175) := '726563742E6C656674293B207D0A66756E6374696F6E206765745265637448656967687420287265637429207B2072657475726E20726563742E686569676874207C7C2028726563742E626F74746F6D202D20726563742E746F70293B207D0A66756E63';
wwv_flow_imp.g_varchar2_table(176) := '74696F6E20676574506172656E742028656C29207B2072657475726E20656C2E706172656E744E6F6465203D3D3D20646F63203F206E756C6C203A20656C2E706172656E744E6F64653B207D0A66756E6374696F6E206973496E7075742028656C29207B';
wwv_flow_imp.g_varchar2_table(177) := '2072657475726E20656C2E7461674E616D65203D3D3D2027494E50555427207C7C20656C2E7461674E616D65203D3D3D2027544558544152454127207C7C20656C2E7461674E616D65203D3D3D202753454C45435427207C7C2069734564697461626C65';
wwv_flow_imp.g_varchar2_table(178) := '28656C293B207D0A66756E6374696F6E2069734564697461626C652028656C29207B0A20206966202821656C29207B2072657475726E2066616C73653B207D202F2F206E6F20706172656E74732077657265206564697461626C650A202069662028656C';
wwv_flow_imp.g_varchar2_table(179) := '2E636F6E74656E744564697461626C65203D3D3D202766616C73652729207B2072657475726E2066616C73653B207D202F2F2073746F7020746865206C6F6F6B75700A202069662028656C2E636F6E74656E744564697461626C65203D3D3D2027747275';
wwv_flow_imp.g_varchar2_table(180) := '652729207B2072657475726E20747275653B207D202F2F20666F756E64206120636F6E74656E744564697461626C6520656C656D656E7420696E2074686520636861696E0A202072657475726E2069734564697461626C6528676574506172656E742865';
wwv_flow_imp.g_varchar2_table(181) := '6C29293B202F2F20636F6E74656E744564697461626C652069732073657420746F2027696E6865726974270A7D0A0A66756E6374696F6E206E657874456C2028656C29207B0A202072657475726E20656C2E6E657874456C656D656E745369626C696E67';
wwv_flow_imp.g_varchar2_table(182) := '207C7C206D616E75616C6C7928293B0A202066756E6374696F6E206D616E75616C6C79202829207B0A20202020766172207369626C696E67203D20656C3B0A20202020646F207B0A2020202020207369626C696E67203D207369626C696E672E6E657874';
wwv_flow_imp.g_varchar2_table(183) := '5369626C696E673B0A202020207D207768696C6520287369626C696E67202626207369626C696E672E6E6F64655479706520213D3D2031293B0A2020202072657475726E207369626C696E673B0A20207D0A7D0A0A66756E6374696F6E20676574457665';
wwv_flow_imp.g_varchar2_table(184) := '6E74486F737420286529207B0A20202F2F206F6E20746F756368656E64206576656E742C207765206861766520746F207573652060652E6368616E676564546F7563686573600A20202F2F2073656520687474703A2F2F737461636B6F766572666C6F77';
wwv_flow_imp.g_varchar2_table(185) := '2E636F6D2F7175657374696F6E732F373139323536332F746F756368656E642D6576656E742D70726F706572746965730A20202F2F207365652068747470733A2F2F6769746875622E636F6D2F62657661637175612F64726167756C612F697373756573';
wwv_flow_imp.g_varchar2_table(186) := '2F33340A202069662028652E746172676574546F756368657320262620652E746172676574546F75636865732E6C656E67746829207B0A2020202072657475726E20652E746172676574546F75636865735B305D3B0A20207D0A202069662028652E6368';
wwv_flow_imp.g_varchar2_table(187) := '616E676564546F756368657320262620652E6368616E676564546F75636865732E6C656E67746829207B0A2020202072657475726E20652E6368616E676564546F75636865735B305D3B0A20207D0A202072657475726E20653B0A7D0A0A66756E637469';
wwv_flow_imp.g_varchar2_table(188) := '6F6E20676574436F6F72642028636F6F72642C206529207B0A202076617220686F7374203D206765744576656E74486F73742865293B0A2020766172206D6973734D6170203D207B0A2020202070616765583A2027636C69656E7458272C202F2F204945';
wwv_flow_imp.g_varchar2_table(189) := '380A2020202070616765593A2027636C69656E745927202F2F204945380A20207D3B0A202069662028636F6F726420696E206D6973734D6170202626202128636F6F726420696E20686F737429202626206D6973734D61705B636F6F72645D20696E2068';
wwv_flow_imp.g_varchar2_table(190) := '6F737429207B0A20202020636F6F7264203D206D6973734D61705B636F6F72645D3B0A20207D0A202072657475726E20686F73745B636F6F72645D3B0A7D0A0A6D6F64756C652E6578706F727473203D2064726167756C613B0A0A7D292E63616C6C2874';
wwv_flow_imp.g_varchar2_table(191) := '6869732C747970656F6620676C6F62616C20213D3D2022756E646566696E656422203F20676C6F62616C203A20747970656F662073656C6620213D3D2022756E646566696E656422203F2073656C66203A20747970656F662077696E646F7720213D3D20';
wwv_flow_imp.g_varchar2_table(192) := '22756E646566696E656422203F2077696E646F77203A207B7D290A0A7D2C7B222E2F636C6173736573223A312C22636F6E7472612F656D6974746572223A352C2263726F737376656E74223A367D5D2C333A5B66756E6374696F6E28726571756972652C';
wwv_flow_imp.g_varchar2_table(193) := '6D6F64756C652C6578706F727473297B0A6D6F64756C652E6578706F727473203D2066756E6374696F6E2061746F612028612C206E29207B2072657475726E2041727261792E70726F746F747970652E736C6963652E63616C6C28612C206E293B207D0A';
wwv_flow_imp.g_varchar2_table(194) := '0A7D2C7B7D5D2C343A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2775736520737472696374273B0A0A766172207469636B79203D207265717569726528277469636B7927293B0A0A6D6F64756C652E657870';
wwv_flow_imp.g_varchar2_table(195) := '6F727473203D2066756E6374696F6E206465626F756E63652028666E2C20617267732C2063747829207B0A20206966202821666E29207B2072657475726E3B207D0A20207469636B792866756E6374696F6E2072756E202829207B0A20202020666E2E61';
wwv_flow_imp.g_varchar2_table(196) := '70706C7928637478207C7C206E756C6C2C2061726773207C7C205B5D293B0A20207D293B0A7D3B0A0A7D2C7B227469636B79223A31307D5D2C353A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A277573652073';
wwv_flow_imp.g_varchar2_table(197) := '7472696374273B0A0A7661722061746F61203D2072657175697265282761746F6127293B0A766172206465626F756E6365203D207265717569726528272E2F6465626F756E636527293B0A0A6D6F64756C652E6578706F727473203D2066756E6374696F';
wwv_flow_imp.g_varchar2_table(198) := '6E20656D697474657220287468696E672C206F7074696F6E7329207B0A2020766172206F707473203D206F7074696F6E73207C7C207B7D3B0A202076617220657674203D207B7D3B0A2020696620287468696E67203D3D3D20756E646566696E65642920';
wwv_flow_imp.g_varchar2_table(199) := '7B207468696E67203D207B7D3B207D0A20207468696E672E6F6E203D2066756E6374696F6E2028747970652C20666E29207B0A2020202069662028216576745B747970655D29207B0A2020202020206576745B747970655D203D205B666E5D3B0A202020';
wwv_flow_imp.g_varchar2_table(200) := '207D20656C7365207B0A2020202020206576745B747970655D2E7075736828666E293B0A202020207D0A2020202072657475726E207468696E673B0A20207D3B0A20207468696E672E6F6E6365203D2066756E6374696F6E2028747970652C20666E2920';
wwv_flow_imp.g_varchar2_table(201) := '7B0A20202020666E2E5F6F6E6365203D20747275653B202F2F207468696E672E6F666628666E29207374696C6C20776F726B73210A202020207468696E672E6F6E28747970652C20666E293B0A2020202072657475726E207468696E673B0A20207D3B0A';
wwv_flow_imp.g_varchar2_table(202) := '20207468696E672E6F6666203D2066756E6374696F6E2028747970652C20666E29207B0A202020207661722063203D20617267756D656E74732E6C656E6774683B0A202020206966202863203D3D3D203129207B0A20202020202064656C657465206576';
wwv_flow_imp.g_varchar2_table(203) := '745B747970655D3B0A202020207D20656C7365206966202863203D3D3D203029207B0A202020202020657674203D207B7D3B0A202020207D20656C7365207B0A202020202020766172206574203D206576745B747970655D3B0A20202020202069662028';
wwv_flow_imp.g_varchar2_table(204) := '21657429207B2072657475726E207468696E673B207D0A20202020202065742E73706C6963652865742E696E6465784F6628666E292C2031293B0A202020207D0A2020202072657475726E207468696E673B0A20207D3B0A20207468696E672E656D6974';
wwv_flow_imp.g_varchar2_table(205) := '203D2066756E6374696F6E202829207B0A202020207661722061726773203D2061746F6128617267756D656E7473293B0A2020202072657475726E207468696E672E656D6974746572536E617073686F7428617267732E73686966742829292E6170706C';
wwv_flow_imp.g_varchar2_table(206) := '7928746869732C2061726773293B0A20207D3B0A20207468696E672E656D6974746572536E617073686F74203D2066756E6374696F6E20287479706529207B0A20202020766172206574203D20286576745B747970655D207C7C205B5D292E736C696365';
wwv_flow_imp.g_varchar2_table(207) := '2830293B0A2020202072657475726E2066756E6374696F6E202829207B0A2020202020207661722061726773203D2061746F6128617267756D656E7473293B0A20202020202076617220637478203D2074686973207C7C207468696E673B0A2020202020';
wwv_flow_imp.g_varchar2_table(208) := '206966202874797065203D3D3D20276572726F7227202626206F7074732E7468726F777320213D3D2066616C7365202626202165742E6C656E67746829207B207468726F7720617267732E6C656E677468203D3D3D2031203F20617267735B305D203A20';
wwv_flow_imp.g_varchar2_table(209) := '617267733B207D0A20202020202065742E666F72456163682866756E6374696F6E20656D697474657220286C697374656E29207B0A2020202020202020696620286F7074732E6173796E6329207B206465626F756E6365286C697374656E2C2061726773';
wwv_flow_imp.g_varchar2_table(210) := '2C20637478293B207D20656C7365207B206C697374656E2E6170706C79286374782C2061726773293B207D0A2020202020202020696620286C697374656E2E5F6F6E636529207B207468696E672E6F666628747970652C206C697374656E293B207D0A20';
wwv_flow_imp.g_varchar2_table(211) := '20202020207D293B0A20202020202072657475726E207468696E673B0A202020207D3B0A20207D3B0A202072657475726E207468696E673B0A7D3B0A0A7D2C7B222E2F6465626F756E6365223A342C2261746F61223A337D5D2C363A5B66756E6374696F';
wwv_flow_imp.g_varchar2_table(212) := '6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E6374696F6E2028676C6F62616C297B0A2775736520737472696374273B0A0A76617220637573746F6D4576656E74203D20726571756972652827637573746F6D2D6576656E';
wwv_flow_imp.g_varchar2_table(213) := '7427293B0A766172206576656E746D6170203D207265717569726528272E2F6576656E746D617027293B0A76617220646F63203D20676C6F62616C2E646F63756D656E743B0A766172206164644576656E74203D206164644576656E74456173793B0A76';
wwv_flow_imp.g_varchar2_table(214) := '61722072656D6F76654576656E74203D2072656D6F76654576656E74456173793B0A76617220686172644361636865203D205B5D3B0A0A6966202821676C6F62616C2E6164644576656E744C697374656E657229207B0A20206164644576656E74203D20';
wwv_flow_imp.g_varchar2_table(215) := '6164644576656E74486172643B0A202072656D6F76654576656E74203D2072656D6F76654576656E74486172643B0A7D0A0A6D6F64756C652E6578706F727473203D207B0A20206164643A206164644576656E742C0A202072656D6F76653A2072656D6F';
wwv_flow_imp.g_varchar2_table(216) := '76654576656E742C0A20206661627269636174653A206661627269636174654576656E740A7D3B0A0A66756E6374696F6E206164644576656E74456173792028656C2C20747970652C20666E2C20636170747572696E6729207B0A202072657475726E20';
wwv_flow_imp.g_varchar2_table(217) := '656C2E6164644576656E744C697374656E657228747970652C20666E2C20636170747572696E67293B0A7D0A0A66756E6374696F6E206164644576656E74486172642028656C2C20747970652C20666E29207B0A202072657475726E20656C2E61747461';
wwv_flow_imp.g_varchar2_table(218) := '63684576656E7428276F6E27202B20747970652C207772617028656C2C20747970652C20666E29293B0A7D0A0A66756E6374696F6E2072656D6F76654576656E74456173792028656C2C20747970652C20666E2C20636170747572696E6729207B0A2020';
wwv_flow_imp.g_varchar2_table(219) := '72657475726E20656C2E72656D6F76654576656E744C697374656E657228747970652C20666E2C20636170747572696E67293B0A7D0A0A66756E6374696F6E2072656D6F76654576656E74486172642028656C2C20747970652C20666E29207B0A202076';
wwv_flow_imp.g_varchar2_table(220) := '6172206C697374656E6572203D20756E7772617028656C2C20747970652C20666E293B0A2020696620286C697374656E657229207B0A2020202072657475726E20656C2E6465746163684576656E7428276F6E27202B20747970652C206C697374656E65';
wwv_flow_imp.g_varchar2_table(221) := '72293B0A20207D0A7D0A0A66756E6374696F6E206661627269636174654576656E742028656C2C20747970652C206D6F64656C29207B0A20207661722065203D206576656E746D61702E696E6465784F66287479706529203D3D3D202D31203F206D616B';
wwv_flow_imp.g_varchar2_table(222) := '65437573746F6D4576656E742829203A206D616B65436C61737369634576656E7428293B0A202069662028656C2E64697370617463684576656E7429207B0A20202020656C2E64697370617463684576656E742865293B0A20207D20656C7365207B0A20';
wwv_flow_imp.g_varchar2_table(223) := '202020656C2E666972654576656E7428276F6E27202B20747970652C2065293B0A20207D0A202066756E6374696F6E206D616B65436C61737369634576656E74202829207B0A2020202076617220653B0A2020202069662028646F632E63726561746545';
wwv_flow_imp.g_varchar2_table(224) := '76656E7429207B0A20202020202065203D20646F632E6372656174654576656E7428274576656E7427293B0A202020202020652E696E69744576656E7428747970652C20747275652C2074727565293B0A202020207D20656C73652069662028646F632E';
wwv_flow_imp.g_varchar2_table(225) := '6372656174654576656E744F626A65637429207B0A20202020202065203D20646F632E6372656174654576656E744F626A65637428293B0A202020207D0A2020202072657475726E20653B0A20207D0A202066756E6374696F6E206D616B65437573746F';
wwv_flow_imp.g_varchar2_table(226) := '6D4576656E74202829207B0A2020202072657475726E206E657720637573746F6D4576656E7428747970652C207B2064657461696C3A206D6F64656C207D293B0A20207D0A7D0A0A66756E6374696F6E2077726170706572466163746F72792028656C2C';
wwv_flow_imp.g_varchar2_table(227) := '20747970652C20666E29207B0A202072657475726E2066756E6374696F6E207772617070657220286F726967696E616C4576656E7429207B0A202020207661722065203D206F726967696E616C4576656E74207C7C20676C6F62616C2E6576656E743B0A';
wwv_flow_imp.g_varchar2_table(228) := '20202020652E746172676574203D20652E746172676574207C7C20652E737263456C656D656E743B0A20202020652E70726576656E7444656661756C74203D20652E70726576656E7444656661756C74207C7C2066756E6374696F6E2070726576656E74';
wwv_flow_imp.g_varchar2_table(229) := '44656661756C74202829207B20652E72657475726E56616C7565203D2066616C73653B207D3B0A20202020652E73746F7050726F7061676174696F6E203D20652E73746F7050726F7061676174696F6E207C7C2066756E6374696F6E2073746F7050726F';
wwv_flow_imp.g_varchar2_table(230) := '7061676174696F6E202829207B20652E63616E63656C427562626C65203D20747275653B207D3B0A20202020652E7768696368203D20652E7768696368207C7C20652E6B6579436F64653B0A20202020666E2E63616C6C28656C2C2065293B0A20207D3B';
wwv_flow_imp.g_varchar2_table(231) := '0A7D0A0A66756E6374696F6E20777261702028656C2C20747970652C20666E29207B0A20207661722077726170706572203D20756E7772617028656C2C20747970652C20666E29207C7C2077726170706572466163746F727928656C2C20747970652C20';
wwv_flow_imp.g_varchar2_table(232) := '666E293B0A20206861726443616368652E70757368287B0A20202020777261707065723A20777261707065722C0A20202020656C656D656E743A20656C2C0A20202020747970653A20747970652C0A20202020666E3A20666E0A20207D293B0A20207265';
wwv_flow_imp.g_varchar2_table(233) := '7475726E20777261707065723B0A7D0A0A66756E6374696F6E20756E777261702028656C2C20747970652C20666E29207B0A20207661722069203D2066696E6428656C2C20747970652C20666E293B0A2020696620286929207B0A202020207661722077';
wwv_flow_imp.g_varchar2_table(234) := '726170706572203D206861726443616368655B695D2E777261707065723B0A202020206861726443616368652E73706C69636528692C2031293B202F2F2066726565207570206120746164206F66206D656D6F72790A2020202072657475726E20777261';
wwv_flow_imp.g_varchar2_table(235) := '707065723B0A20207D0A7D0A0A66756E6374696F6E2066696E642028656C2C20747970652C20666E29207B0A202076617220692C206974656D3B0A2020666F72202869203D20303B2069203C206861726443616368652E6C656E6774683B20692B2B2920';
wwv_flow_imp.g_varchar2_table(236) := '7B0A202020206974656D203D206861726443616368655B695D3B0A20202020696620286974656D2E656C656D656E74203D3D3D20656C202626206974656D2E74797065203D3D3D2074797065202626206974656D2E666E203D3D3D20666E29207B0A2020';
wwv_flow_imp.g_varchar2_table(237) := '2020202072657475726E20693B0A202020207D0A20207D0A7D0A0A7D292E63616C6C28746869732C747970656F6620676C6F62616C20213D3D2022756E646566696E656422203F20676C6F62616C203A20747970656F662073656C6620213D3D2022756E';
wwv_flow_imp.g_varchar2_table(238) := '646566696E656422203F2073656C66203A20747970656F662077696E646F7720213D3D2022756E646566696E656422203F2077696E646F77203A207B7D290A0A7D2C7B222E2F6576656E746D6170223A372C22637573746F6D2D6576656E74223A387D5D';
wwv_flow_imp.g_varchar2_table(239) := '2C373A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E6374696F6E2028676C6F62616C297B0A2775736520737472696374273B0A0A766172206576656E746D6170203D205B5D3B0A766172206576656E';
wwv_flow_imp.g_varchar2_table(240) := '746E616D65203D2027273B0A76617220726F6E203D202F5E6F6E2F3B0A0A666F7220286576656E746E616D6520696E20676C6F62616C29207B0A202069662028726F6E2E74657374286576656E746E616D652929207B0A202020206576656E746D61702E';
wwv_flow_imp.g_varchar2_table(241) := '70757368286576656E746E616D652E736C696365283229293B0A20207D0A7D0A0A6D6F64756C652E6578706F727473203D206576656E746D61703B0A0A7D292E63616C6C28746869732C747970656F6620676C6F62616C20213D3D2022756E646566696E';
wwv_flow_imp.g_varchar2_table(242) := '656422203F20676C6F62616C203A20747970656F662073656C6620213D3D2022756E646566696E656422203F2073656C66203A20747970656F662077696E646F7720213D3D2022756E646566696E656422203F2077696E646F77203A207B7D290A0A7D2C';
wwv_flow_imp.g_varchar2_table(243) := '7B7D5D2C383A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E6374696F6E2028676C6F62616C297B0A0A766172204E6174697665437573746F6D4576656E74203D20676C6F62616C2E437573746F6D45';
wwv_flow_imp.g_varchar2_table(244) := '76656E743B0A0A66756E6374696F6E207573654E6174697665202829207B0A2020747279207B0A202020207661722070203D206E6577204E6174697665437573746F6D4576656E742827636174272C207B2064657461696C3A207B20666F6F3A20276261';
wwv_flow_imp.g_varchar2_table(245) := '7227207D207D293B0A2020202072657475726E20202763617427203D3D3D20702E74797065202626202762617227203D3D3D20702E64657461696C2E666F6F3B0A20207D20636174636820286529207B0A20207D0A202072657475726E2066616C73653B';
wwv_flow_imp.g_varchar2_table(246) := '0A7D0A0A2F2A2A0A202A2043726F73732D62726F777365722060437573746F6D4576656E746020636F6E7374727563746F722E0A202A0A202A2068747470733A2F2F646576656C6F7065722E6D6F7A696C6C612E6F72672F656E2D55532F646F63732F57';
wwv_flow_imp.g_varchar2_table(247) := '65622F4150492F437573746F6D4576656E742E437573746F6D4576656E740A202A0A202A20407075626C69630A202A2F0A0A6D6F64756C652E6578706F727473203D207573654E61746976652829203F204E6174697665437573746F6D4576656E74203A';
wwv_flow_imp.g_varchar2_table(248) := '0A0A2F2F204945203E3D20390A27756E646566696E65642720213D3D20747970656F6620646F63756D656E74202626202766756E6374696F6E27203D3D3D20747970656F6620646F63756D656E742E6372656174654576656E74203F2066756E6374696F';
wwv_flow_imp.g_varchar2_table(249) := '6E20437573746F6D4576656E742028747970652C20706172616D7329207B0A20207661722065203D20646F63756D656E742E6372656174654576656E742827437573746F6D4576656E7427293B0A202069662028706172616D7329207B0A20202020652E';
wwv_flow_imp.g_varchar2_table(250) := '696E6974437573746F6D4576656E7428747970652C20706172616D732E627562626C65732C20706172616D732E63616E63656C61626C652C20706172616D732E64657461696C293B0A20207D20656C7365207B0A20202020652E696E6974437573746F6D';
wwv_flow_imp.g_varchar2_table(251) := '4576656E7428747970652C2066616C73652C2066616C73652C20766F69642030293B0A20207D0A202072657475726E20653B0A7D203A0A0A2F2F204945203C3D20380A66756E6374696F6E20437573746F6D4576656E742028747970652C20706172616D';
wwv_flow_imp.g_varchar2_table(252) := '7329207B0A20207661722065203D20646F63756D656E742E6372656174654576656E744F626A65637428293B0A2020652E74797065203D20747970653B0A202069662028706172616D7329207B0A20202020652E627562626C6573203D20426F6F6C6561';
wwv_flow_imp.g_varchar2_table(253) := '6E28706172616D732E627562626C6573293B0A20202020652E63616E63656C61626C65203D20426F6F6C65616E28706172616D732E63616E63656C61626C65293B0A20202020652E64657461696C203D20706172616D732E64657461696C3B0A20207D20';
wwv_flow_imp.g_varchar2_table(254) := '656C7365207B0A20202020652E627562626C6573203D2066616C73653B0A20202020652E63616E63656C61626C65203D2066616C73653B0A20202020652E64657461696C203D20766F696420303B0A20207D0A202072657475726E20653B0A7D0A0A7D29';
wwv_flow_imp.g_varchar2_table(255) := '2E63616C6C28746869732C747970656F6620676C6F62616C20213D3D2022756E646566696E656422203F20676C6F62616C203A20747970656F662073656C6620213D3D2022756E646566696E656422203F2073656C66203A20747970656F662077696E64';
wwv_flow_imp.g_varchar2_table(256) := '6F7720213D3D2022756E646566696E656422203F2077696E646F77203A207B7D290A0A7D2C7B7D5D2C393A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2F2F207368696D20666F72207573696E672070726F63';
wwv_flow_imp.g_varchar2_table(257) := '65737320696E2062726F777365720A7661722070726F63657373203D206D6F64756C652E6578706F727473203D207B7D3B0A0A2F2F206361636865642066726F6D20776861746576657220676C6F62616C2069732070726573656E7420736F2074686174';
wwv_flow_imp.g_varchar2_table(258) := '20746573742072756E6E657273207468617420737475622069740A2F2F20646F6E277420627265616B207468696E67732E2020427574207765206E65656420746F207772617020697420696E20612074727920636174636820696E206361736520697420';
wwv_flow_imp.g_varchar2_table(259) := '69730A2F2F207772617070656420696E20737472696374206D6F646520636F646520776869636820646F65736E277420646566696E6520616E7920676C6F62616C732E20204974277320696E7369646520610A2F2F2066756E6374696F6E206265636175';
wwv_flow_imp.g_varchar2_table(260) := '7365207472792F636174636865732064656F7074696D697A6520696E206365727461696E20656E67696E65732E0A0A7661722063616368656453657454696D656F75743B0A76617220636163686564436C65617254696D656F75743B0A0A66756E637469';
wwv_flow_imp.g_varchar2_table(261) := '6F6E2064656661756C7453657454696D6F75742829207B0A202020207468726F77206E6577204572726F72282773657454696D656F757420686173206E6F74206265656E20646566696E656427293B0A7D0A66756E6374696F6E2064656661756C74436C';
wwv_flow_imp.g_varchar2_table(262) := '65617254696D656F7574202829207B0A202020207468726F77206E6577204572726F722827636C65617254696D656F757420686173206E6F74206265656E20646566696E656427293B0A7D0A2866756E6374696F6E202829207B0A20202020747279207B';
wwv_flow_imp.g_varchar2_table(263) := '0A202020202020202069662028747970656F662073657454696D656F7574203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202063616368656453657454696D656F7574203D2073657454696D656F75743B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(264) := '7D20656C7365207B0A20202020202020202020202063616368656453657454696D656F7574203D2064656661756C7453657454696D6F75743B0A20202020202020207D0A202020207D20636174636820286529207B0A2020202020202020636163686564';
wwv_flow_imp.g_varchar2_table(265) := '53657454696D656F7574203D2064656661756C7453657454696D6F75743B0A202020207D0A20202020747279207B0A202020202020202069662028747970656F6620636C65617254696D656F7574203D3D3D202766756E6374696F6E2729207B0A202020';
wwv_flow_imp.g_varchar2_table(266) := '202020202020202020636163686564436C65617254696D656F7574203D20636C65617254696D656F75743B0A20202020202020207D20656C7365207B0A202020202020202020202020636163686564436C65617254696D656F7574203D2064656661756C';
wwv_flow_imp.g_varchar2_table(267) := '74436C65617254696D656F75743B0A20202020202020207D0A202020207D20636174636820286529207B0A2020202020202020636163686564436C65617254696D656F7574203D2064656661756C74436C65617254696D656F75743B0A202020207D0A7D';
wwv_flow_imp.g_varchar2_table(268) := '202829290A66756E6374696F6E2072756E54696D656F75742866756E29207B0A202020206966202863616368656453657454696D656F7574203D3D3D2073657454696D656F757429207B0A20202020202020202F2F6E6F726D616C20656E7669726F6D65';
wwv_flow_imp.g_varchar2_table(269) := '6E747320696E2073616E6520736974756174696F6E730A202020202020202072657475726E2073657454696D656F75742866756E2C2030293B0A202020207D0A202020202F2F2069662073657454696D656F7574207761736E277420617661696C61626C';
wwv_flow_imp.g_varchar2_table(270) := '652062757420776173206C617474657220646566696E65640A20202020696620282863616368656453657454696D656F7574203D3D3D2064656661756C7453657454696D6F7574207C7C202163616368656453657454696D656F75742920262620736574';
wwv_flow_imp.g_varchar2_table(271) := '54696D656F757429207B0A202020202020202063616368656453657454696D656F7574203D2073657454696D656F75743B0A202020202020202072657475726E2073657454696D656F75742866756E2C2030293B0A202020207D0A20202020747279207B';
wwv_flow_imp.g_varchar2_table(272) := '0A20202020202020202F2F207768656E207768656E20736F6D65626F647920686173207363726577656420776974682073657454696D656F757420627574206E6F20492E452E206D6164646E6573730A202020202020202072657475726E206361636865';
wwv_flow_imp.g_varchar2_table(273) := '6453657454696D656F75742866756E2C2030293B0A202020207D2063617463682865297B0A2020202020202020747279207B0A2020202020202020202020202F2F205768656E2077652061726520696E20492E452E206275742074686520736372697074';
wwv_flow_imp.g_varchar2_table(274) := '20686173206265656E206576616C656420736F20492E452E20646F65736E27742074727573742074686520676C6F62616C206F626A656374207768656E2063616C6C6564206E6F726D616C6C790A20202020202020202020202072657475726E20636163';
wwv_flow_imp.g_varchar2_table(275) := '68656453657454696D656F75742E63616C6C286E756C6C2C2066756E2C2030293B0A20202020202020207D2063617463682865297B0A2020202020202020202020202F2F2073616D652061732061626F766520627574207768656E206974277320612076';
wwv_flow_imp.g_varchar2_table(276) := '657273696F6E206F6620492E452E2074686174206D75737420686176652074686520676C6F62616C206F626A65637420666F72202774686973272C20686F7066756C6C79206F757220636F6E7465787420636F7272656374206F74686572776973652069';
wwv_flow_imp.g_varchar2_table(277) := '742077696C6C207468726F77206120676C6F62616C206572726F720A20202020202020202020202072657475726E2063616368656453657454696D656F75742E63616C6C28746869732C2066756E2C2030293B0A20202020202020207D0A202020207D0A';
wwv_flow_imp.g_varchar2_table(278) := '0A0A7D0A66756E6374696F6E2072756E436C65617254696D656F7574286D61726B657229207B0A2020202069662028636163686564436C65617254696D656F7574203D3D3D20636C65617254696D656F757429207B0A20202020202020202F2F6E6F726D';
wwv_flow_imp.g_varchar2_table(279) := '616C20656E7669726F6D656E747320696E2073616E6520736974756174696F6E730A202020202020202072657475726E20636C65617254696D656F7574286D61726B6572293B0A202020207D0A202020202F2F20696620636C65617254696D656F757420';
wwv_flow_imp.g_varchar2_table(280) := '7761736E277420617661696C61626C652062757420776173206C617474657220646566696E65640A202020206966202828636163686564436C65617254696D656F7574203D3D3D2064656661756C74436C65617254696D656F7574207C7C202163616368';
wwv_flow_imp.g_varchar2_table(281) := '6564436C65617254696D656F75742920262620636C65617254696D656F757429207B0A2020202020202020636163686564436C65617254696D656F7574203D20636C65617254696D656F75743B0A202020202020202072657475726E20636C6561725469';
wwv_flow_imp.g_varchar2_table(282) := '6D656F7574286D61726B6572293B0A202020207D0A20202020747279207B0A20202020202020202F2F207768656E207768656E20736F6D65626F647920686173207363726577656420776974682073657454696D656F757420627574206E6F20492E452E';
wwv_flow_imp.g_varchar2_table(283) := '206D6164646E6573730A202020202020202072657475726E20636163686564436C65617254696D656F7574286D61726B6572293B0A202020207D206361746368202865297B0A2020202020202020747279207B0A2020202020202020202020202F2F2057';
wwv_flow_imp.g_varchar2_table(284) := '68656E2077652061726520696E20492E452E20627574207468652073637269707420686173206265656E206576616C656420736F20492E452E20646F65736E2774202074727573742074686520676C6F62616C206F626A656374207768656E2063616C6C';
wwv_flow_imp.g_varchar2_table(285) := '6564206E6F726D616C6C790A20202020202020202020202072657475726E20636163686564436C65617254696D656F75742E63616C6C286E756C6C2C206D61726B6572293B0A20202020202020207D206361746368202865297B0A202020202020202020';
wwv_flow_imp.g_varchar2_table(286) := '2020202F2F2073616D652061732061626F766520627574207768656E206974277320612076657273696F6E206F6620492E452E2074686174206D75737420686176652074686520676C6F62616C206F626A65637420666F72202774686973272C20686F70';
wwv_flow_imp.g_varchar2_table(287) := '66756C6C79206F757220636F6E7465787420636F7272656374206F74686572776973652069742077696C6C207468726F77206120676C6F62616C206572726F722E0A2020202020202020202020202F2F20536F6D652076657273696F6E73206F6620492E';
wwv_flow_imp.g_varchar2_table(288) := '452E206861766520646966666572656E742072756C657320666F7220636C65617254696D656F75742076732073657454696D656F75740A20202020202020202020202072657475726E20636163686564436C65617254696D656F75742E63616C6C287468';
wwv_flow_imp.g_varchar2_table(289) := '69732C206D61726B6572293B0A20202020202020207D0A202020207D0A0A0A0A7D0A766172207175657565203D205B5D3B0A76617220647261696E696E67203D2066616C73653B0A7661722063757272656E7451756575653B0A76617220717565756549';
wwv_flow_imp.g_varchar2_table(290) := '6E646578203D202D313B0A0A66756E6374696F6E20636C65616E55704E6578745469636B2829207B0A202020206966202821647261696E696E67207C7C202163757272656E74517565756529207B0A202020202020202072657475726E3B0A202020207D';
wwv_flow_imp.g_varchar2_table(291) := '0A20202020647261696E696E67203D2066616C73653B0A202020206966202863757272656E7451756575652E6C656E67746829207B0A20202020202020207175657565203D2063757272656E7451756575652E636F6E636174287175657565293B0A2020';
wwv_flow_imp.g_varchar2_table(292) := '20207D20656C7365207B0A20202020202020207175657565496E646578203D202D313B0A202020207D0A202020206966202871756575652E6C656E67746829207B0A2020202020202020647261696E517565756528293B0A202020207D0A7D0A0A66756E';
wwv_flow_imp.g_varchar2_table(293) := '6374696F6E20647261696E51756575652829207B0A2020202069662028647261696E696E6729207B0A202020202020202072657475726E3B0A202020207D0A202020207661722074696D656F7574203D2072756E54696D656F757428636C65616E55704E';
wwv_flow_imp.g_varchar2_table(294) := '6578745469636B293B0A20202020647261696E696E67203D20747275653B0A0A20202020766172206C656E203D2071756575652E6C656E6774683B0A202020207768696C65286C656E29207B0A202020202020202063757272656E745175657565203D20';
wwv_flow_imp.g_varchar2_table(295) := '71756575653B0A20202020202020207175657565203D205B5D3B0A20202020202020207768696C6520282B2B7175657565496E646578203C206C656E29207B0A2020202020202020202020206966202863757272656E74517565756529207B0A20202020';
wwv_flow_imp.g_varchar2_table(296) := '20202020202020202020202063757272656E7451756575655B7175657565496E6465785D2E72756E28293B0A2020202020202020202020207D0A20202020202020207D0A20202020202020207175657565496E646578203D202D313B0A20202020202020';
wwv_flow_imp.g_varchar2_table(297) := '206C656E203D2071756575652E6C656E6774683B0A202020207D0A2020202063757272656E745175657565203D206E756C6C3B0A20202020647261696E696E67203D2066616C73653B0A2020202072756E436C65617254696D656F75742874696D656F75';
wwv_flow_imp.g_varchar2_table(298) := '74293B0A7D0A0A70726F636573732E6E6578745469636B203D2066756E6374696F6E202866756E29207B0A202020207661722061726773203D206E657720417272617928617267756D656E74732E6C656E677468202D2031293B0A202020206966202861';
wwv_flow_imp.g_varchar2_table(299) := '7267756D656E74732E6C656E677468203E203129207B0A2020202020202020666F7220287661722069203D20313B2069203C20617267756D656E74732E6C656E6774683B20692B2B29207B0A202020202020202020202020617267735B69202D20315D20';
wwv_flow_imp.g_varchar2_table(300) := '3D20617267756D656E74735B695D3B0A20202020202020207D0A202020207D0A2020202071756575652E70757368286E6577204974656D2866756E2C206172677329293B0A202020206966202871756575652E6C656E677468203D3D3D20312026262021';
wwv_flow_imp.g_varchar2_table(301) := '647261696E696E6729207B0A202020202020202072756E54696D656F757428647261696E5175657565293B0A202020207D0A7D3B0A0A2F2F207638206C696B6573207072656469637469626C65206F626A656374730A66756E6374696F6E204974656D28';
wwv_flow_imp.g_varchar2_table(302) := '66756E2C20617272617929207B0A20202020746869732E66756E203D2066756E3B0A20202020746869732E6172726179203D2061727261793B0A7D0A4974656D2E70726F746F747970652E72756E203D2066756E6374696F6E202829207B0A2020202074';
wwv_flow_imp.g_varchar2_table(303) := '6869732E66756E2E6170706C79286E756C6C2C20746869732E6172726179293B0A7D3B0A70726F636573732E7469746C65203D202762726F77736572273B0A70726F636573732E62726F77736572203D20747275653B0A70726F636573732E656E76203D';
wwv_flow_imp.g_varchar2_table(304) := '207B7D3B0A70726F636573732E61726776203D205B5D3B0A70726F636573732E76657273696F6E203D2027273B202F2F20656D70747920737472696E6720746F2061766F696420726567657870206973737565730A70726F636573732E76657273696F6E';
wwv_flow_imp.g_varchar2_table(305) := '73203D207B7D3B0A0A66756E6374696F6E206E6F6F702829207B7D0A0A70726F636573732E6F6E203D206E6F6F703B0A70726F636573732E6164644C697374656E6572203D206E6F6F703B0A70726F636573732E6F6E6365203D206E6F6F703B0A70726F';
wwv_flow_imp.g_varchar2_table(306) := '636573732E6F6666203D206E6F6F703B0A70726F636573732E72656D6F76654C697374656E6572203D206E6F6F703B0A70726F636573732E72656D6F7665416C6C4C697374656E657273203D206E6F6F703B0A70726F636573732E656D6974203D206E6F';
wwv_flow_imp.g_varchar2_table(307) := '6F703B0A70726F636573732E70726570656E644C697374656E6572203D206E6F6F703B0A70726F636573732E70726570656E644F6E63654C697374656E6572203D206E6F6F703B0A0A70726F636573732E6C697374656E657273203D2066756E6374696F';
wwv_flow_imp.g_varchar2_table(308) := '6E20286E616D6529207B2072657475726E205B5D207D0A0A70726F636573732E62696E64696E67203D2066756E6374696F6E20286E616D6529207B0A202020207468726F77206E6577204572726F72282770726F636573732E62696E64696E6720697320';
wwv_flow_imp.g_varchar2_table(309) := '6E6F7420737570706F7274656427293B0A7D3B0A0A70726F636573732E637764203D2066756E6374696F6E202829207B2072657475726E20272F27207D3B0A70726F636573732E6368646972203D2066756E6374696F6E202864697229207B0A20202020';
wwv_flow_imp.g_varchar2_table(310) := '7468726F77206E6577204572726F72282770726F636573732E6368646972206973206E6F7420737570706F7274656427293B0A7D3B0A70726F636573732E756D61736B203D2066756E6374696F6E2829207B2072657475726E20303B207D3B0A0A7D2C7B';
wwv_flow_imp.g_varchar2_table(311) := '7D5D2C31303A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E6374696F6E2028736574496D6D656469617465297B0A766172207369203D20747970656F6620736574496D6D656469617465203D3D3D20';
wwv_flow_imp.g_varchar2_table(312) := '2766756E6374696F6E272C207469636B3B0A69662028736929207B0A20207469636B203D2066756E6374696F6E2028666E29207B20736574496D6D65646961746528666E293B207D3B0A7D20656C7365207B0A20207469636B203D2066756E6374696F6E';
wwv_flow_imp.g_varchar2_table(313) := '2028666E29207B2073657454696D656F757428666E2C2030293B207D3B0A7D0A0A6D6F64756C652E6578706F727473203D207469636B3B0A7D292E63616C6C28746869732C72657175697265282274696D65727322292E736574496D6D65646961746529';
wwv_flow_imp.g_varchar2_table(314) := '0A0A7D2C7B2274696D657273223A31317D5D2C31313A5B66756E6374696F6E28726571756972652C6D6F64756C652C6578706F727473297B0A2866756E6374696F6E2028736574496D6D6564696174652C636C656172496D6D656469617465297B0A7661';
wwv_flow_imp.g_varchar2_table(315) := '72206E6578745469636B203D2072657175697265282770726F636573732F62726F777365722E6A7327292E6E6578745469636B3B0A766172206170706C79203D2046756E6374696F6E2E70726F746F747970652E6170706C793B0A76617220736C696365';
wwv_flow_imp.g_varchar2_table(316) := '203D2041727261792E70726F746F747970652E736C6963653B0A76617220696D6D656469617465496473203D207B7D3B0A766172206E657874496D6D6564696174654964203D20303B0A0A2F2F20444F4D20415049732C20666F7220636F6D706C657465';
wwv_flow_imp.g_varchar2_table(317) := '6E6573730A0A6578706F7274732E73657454696D656F7574203D2066756E6374696F6E2829207B0A202072657475726E206E65772054696D656F7574286170706C792E63616C6C2873657454696D656F75742C2077696E646F772C20617267756D656E74';
wwv_flow_imp.g_varchar2_table(318) := '73292C20636C65617254696D656F7574293B0A7D3B0A6578706F7274732E736574496E74657276616C203D2066756E6374696F6E2829207B0A202072657475726E206E65772054696D656F7574286170706C792E63616C6C28736574496E74657276616C';
wwv_flow_imp.g_varchar2_table(319) := '2C2077696E646F772C20617267756D656E7473292C20636C656172496E74657276616C293B0A7D3B0A6578706F7274732E636C65617254696D656F7574203D0A6578706F7274732E636C656172496E74657276616C203D2066756E6374696F6E2874696D';
wwv_flow_imp.g_varchar2_table(320) := '656F757429207B2074696D656F75742E636C6F736528293B207D3B0A0A66756E6374696F6E2054696D656F75742869642C20636C656172466E29207B0A2020746869732E5F6964203D2069643B0A2020746869732E5F636C656172466E203D20636C6561';
wwv_flow_imp.g_varchar2_table(321) := '72466E3B0A7D0A54696D656F75742E70726F746F747970652E756E726566203D2054696D656F75742E70726F746F747970652E726566203D2066756E6374696F6E2829207B7D3B0A54696D656F75742E70726F746F747970652E636C6F7365203D206675';
wwv_flow_imp.g_varchar2_table(322) := '6E6374696F6E2829207B0A2020746869732E5F636C656172466E2E63616C6C2877696E646F772C20746869732E5F6964293B0A7D3B0A0A2F2F20446F6573206E6F74207374617274207468652074696D652C206A75737420736574732075702074686520';
wwv_flow_imp.g_varchar2_table(323) := '6D656D62657273206E65656465642E0A6578706F7274732E656E726F6C6C203D2066756E6374696F6E286974656D2C206D7365637329207B0A2020636C65617254696D656F7574286974656D2E5F69646C6554696D656F75744964293B0A20206974656D';
wwv_flow_imp.g_varchar2_table(324) := '2E5F69646C6554696D656F7574203D206D736563733B0A7D3B0A0A6578706F7274732E756E656E726F6C6C203D2066756E6374696F6E286974656D29207B0A2020636C65617254696D656F7574286974656D2E5F69646C6554696D656F75744964293B0A';
wwv_flow_imp.g_varchar2_table(325) := '20206974656D2E5F69646C6554696D656F7574203D202D313B0A7D3B0A0A6578706F7274732E5F756E726566416374697665203D206578706F7274732E616374697665203D2066756E6374696F6E286974656D29207B0A2020636C65617254696D656F75';
wwv_flow_imp.g_varchar2_table(326) := '74286974656D2E5F69646C6554696D656F75744964293B0A0A2020766172206D73656373203D206974656D2E5F69646C6554696D656F75743B0A2020696620286D73656373203E3D203029207B0A202020206974656D2E5F69646C6554696D656F757449';
wwv_flow_imp.g_varchar2_table(327) := '64203D2073657454696D656F75742866756E6374696F6E206F6E54696D656F75742829207B0A202020202020696620286974656D2E5F6F6E54696D656F7574290A20202020202020206974656D2E5F6F6E54696D656F757428293B0A202020207D2C206D';
wwv_flow_imp.g_varchar2_table(328) := '73656373293B0A20207D0A7D3B0A0A2F2F20546861742773206E6F7420686F77206E6F64652E6A7320696D706C656D656E74732069742062757420746865206578706F73656420617069206973207468652073616D652E0A6578706F7274732E73657449';
wwv_flow_imp.g_varchar2_table(329) := '6D6D656469617465203D20747970656F6620736574496D6D656469617465203D3D3D202266756E6374696F6E22203F20736574496D6D656469617465203A2066756E6374696F6E28666E29207B0A2020766172206964203D206E657874496D6D65646961';
wwv_flow_imp.g_varchar2_table(330) := '746549642B2B3B0A20207661722061726773203D20617267756D656E74732E6C656E677468203C2032203F2066616C7365203A20736C6963652E63616C6C28617267756D656E74732C2031293B0A0A2020696D6D6564696174654964735B69645D203D20';
wwv_flow_imp.g_varchar2_table(331) := '747275653B0A0A20206E6578745469636B2866756E6374696F6E206F6E4E6578745469636B2829207B0A2020202069662028696D6D6564696174654964735B69645D29207B0A2020202020202F2F20666E2E63616C6C2829206973206661737465722073';
wwv_flow_imp.g_varchar2_table(332) := '6F207765206F7074696D697A6520666F722074686520636F6D6D6F6E207573652D636173650A2020202020202F2F204073656520687474703A2F2F6A73706572662E636F6D2F63616C6C2D6170706C792D736567750A2020202020206966202861726773';
wwv_flow_imp.g_varchar2_table(333) := '29207B0A2020202020202020666E2E6170706C79286E756C6C2C2061726773293B0A2020202020207D20656C7365207B0A2020202020202020666E2E63616C6C286E756C6C293B0A2020202020207D0A2020202020202F2F2050726576656E7420696473';
wwv_flow_imp.g_varchar2_table(334) := '2066726F6D206C65616B696E670A2020202020206578706F7274732E636C656172496D6D656469617465286964293B0A202020207D0A20207D293B0A0A202072657475726E2069643B0A7D3B0A0A6578706F7274732E636C656172496D6D656469617465';
wwv_flow_imp.g_varchar2_table(335) := '203D20747970656F6620636C656172496D6D656469617465203D3D3D202266756E6374696F6E22203F20636C656172496D6D656469617465203A2066756E6374696F6E28696429207B0A202064656C65746520696D6D6564696174654964735B69645D3B';
wwv_flow_imp.g_varchar2_table(336) := '0A7D3B0A7D292E63616C6C28746869732C72657175697265282274696D65727322292E736574496D6D6564696174652C72657175697265282274696D65727322292E636C656172496D6D656469617465290A0A7D2C7B2270726F636573732F62726F7773';
wwv_flow_imp.g_varchar2_table(337) := '65722E6A73223A392C2274696D657273223A31317D5D7D2C7B7D2C5B325D292832290A7D293B0A0A2F2F2320736F757263654D617070696E6755524C3D646174613A6170706C69636174696F6E2F6A736F6E3B636861727365743D7574662D383B626173';
wwv_flow_imp.g_varchar2_table(338) := '6536342C65794A325A584A7A61573975496A6F7A4C434A7A623356795932567A496A7062496D35765A4756666257396B6457786C63793969636D3933633256794C58426859327376583342795A5778315A475575616E4D694C434A6A6247467A6332567A';
wwv_flow_imp.g_varchar2_table(339) := '4C6D707A496977695A484A685A3356735953357163794973496D35765A4756666257396B6457786C63793968644739684C32463062324575616E4D694C434A756232526C583231765A4856735A584D765932397564484A684C32526C596D3931626D4E6C';
wwv_flow_imp.g_varchar2_table(340) := '4C6D707A49697769626D396B5A563974623252316247567A4C324E76626E52795953396C62576C30644756794C6D707A49697769626D396B5A563974623252316247567A4C324E7962334E7A646D56756443397A636D4D7659334A7663334E325A573530';
wwv_flow_imp.g_varchar2_table(341) := '4C6D707A49697769626D396B5A563974623252316247567A4C324E7962334E7A646D56756443397A636D4D765A585A6C626E527459584175616E4D694C434A756232526C583231765A4856735A584D765933567A644739744C5756325A5735304C326C75';
wwv_flow_imp.g_varchar2_table(342) := '5A4756344C6D707A49697769626D396B5A563974623252316247567A4C33427962324E6C63334D76596E4A7664334E6C6369357163794973496D35765A4756666257396B6457786C6379393061574E726553393061574E7265533169636D393363325679';
wwv_flow_imp.g_varchar2_table(343) := '4C6D707A49697769626D396B5A563974623252316247567A4C3352706257567963793169636D39336332567961575A354C32316861573475616E4D6958537769626D46745A584D694F6C74644C434A74595842776157356E63794936496B464251554537';
wwv_flow_imp.g_varchar2_table(344) := '51554E425154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537';
wwv_flow_imp.g_varchar2_table(345) := '515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537';
wwv_flow_imp.g_varchar2_table(346) := '515546445154744251554E424F3046425130453751554644515473374F304644616B4E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(347) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(348) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(349) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(350) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(351) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(352) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(353) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(354) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(355) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(356) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(357) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(358) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(359) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(360) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(361) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(362) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(363) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(364) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(365) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(366) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(367) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(368) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(369) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(370) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(371) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(372) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(373) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(374) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(375) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(376) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(377) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(378) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(379) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(380) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(381) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(382) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(383) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(384) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(385) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(386) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(387) := '5130453751554644515473374F7A744251323574516B4537515546445154733751554E455154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642513045375155464451547442';
wwv_flow_imp.g_varchar2_table(388) := '51554E424F7A744251315A424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537';
wwv_flow_imp.g_varchar2_table(389) := '515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537';
wwv_flow_imp.g_varchar2_table(390) := '515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537';
wwv_flow_imp.g_varchar2_table(391) := '515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F7A733751554E3052454537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(392) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(393) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(394) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(395) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(396) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(397) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(398) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F7A73374F7A744251334A485154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(399) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F7A73374F7A744251324A424F30464251304537515546445154744251554E424F3046425130453751554644';
wwv_flow_imp.g_varchar2_table(400) := '5154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F3046425130453751554644';
wwv_flow_imp.g_varchar2_table(401) := '5154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F3046425130453751554644';
wwv_flow_imp.g_varchar2_table(402) := '5154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F7A73374F30464461455242';
wwv_flow_imp.g_varchar2_table(403) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(404) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(405) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(406) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(407) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(408) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(409) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(410) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(411) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(412) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(413) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(414) := '4F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E42';
wwv_flow_imp.g_varchar2_table(415) := '4F30464251304537515546445154744251554E424F304642513045374F7A74425133684D5154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F7A73374F7A7442513142424F304642';
wwv_flow_imp.g_varchar2_table(416) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(417) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(418) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(419) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F304642';
wwv_flow_imp.g_varchar2_table(420) := '51304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E424F30464251304537515546445154744251554E4249697769';
wwv_flow_imp.g_varchar2_table(421) := '5A6D6C735A534936496D646C626D56795958526C5A43357163794973496E4E7664584A6A5A564A76623351694F6949694C434A7A623356795932567A5132397564475675644349365779496F5A6E5675593352706232346F4B58746D6457356A64476C76';
wwv_flow_imp.g_varchar2_table(422) := '626942794B475573626978304B58746D6457356A64476C76626942764B476B735A696C376157596F495735626156307065326C6D4B43466C57326C644B58743259584967597A3163496D5A31626D4E30615739755843493950585235634756765A694279';
wwv_flow_imp.g_varchar2_table(423) := '5A58463161584A6C4A695A795A58463161584A6C4F326C6D4B43466D4A695A6A4B584A6C644856796269426A4B476B73495441704F326C6D4B485570636D563064584A754948556F615377684D436B37646D467949474539626D563349455679636D3979';
wwv_flow_imp.g_varchar2_table(424) := '4B46776951324675626D393049475A70626D51676257396B6457786C49436463496974704B3177694A3177694B54743061484A76647942684C6D4E765A47553958434A4E5430525654455666546B395558305A5056553545584349735958313259584967';
wwv_flow_imp.g_varchar2_table(425) := '6344317557326C645058746C65484276636E527A4F6E74396654746C57326C64577A42644C6D4E686247776F6343356C65484276636E527A4C475A31626D4E30615739754B48497065335A686369427550575662615631624D563162636C3037636D5630';
wwv_flow_imp.g_varchar2_table(426) := '64584A754947386F626E783863696C394C4841736343356C65484276636E527A4C4849735A5378754C48517066584A6C644856796269427557326C644C6D56346347397964484E395A6D39794B485A6863694231505677695A6E56755933527062323563';
wwv_flow_imp.g_varchar2_table(427) := '496A303964486C775A57396D49484A6C63585670636D556D4A6E4A6C63585670636D5573615430774F326B38644335735A57356E64476737615373724B57386F6446747058536B37636D563064584A7549473939636D563064584A7549484A394B536770';
wwv_flow_imp.g_varchar2_table(428) := '496977694A33567A5A53427A64484A705933516E4F31787558473532595849675932466A614755675053423766547463626E5A686369427A64474679644341394943636F507A7065664678635846787A4B53633758473532595849675A57356B49443067';
wwv_flow_imp.g_varchar2_table(429) := '4A79672F4F6C78635846787A664351704A7A7463626C78755A6E5675593352706232346762473976613356775132786863334D674B474E7359584E7A546D46745A536B676531787549434232595849675932466A6147566B494430675932466A61475662';
wwv_flow_imp.g_varchar2_table(430) := '5932786863334E4F5957316C5854746362694167615759674B474E685932686C5A436B67653178754943416749474E685932686C5A43357359584E305357356B5A586767505341774F317875494342394947567363325567653178754943416749474E68';
wwv_flow_imp.g_varchar2_table(431) := '5932686C57324E7359584E7A546D46745A5630675053426A59574E6F5A575167505342755A586367556D566E525868774B484E3059584A30494373675932786863334E4F5957316C494373675A57356B4C43416E5A7963704F3178754943423958473467';
wwv_flow_imp.g_varchar2_table(432) := '49484A6C644856796269426A59574E6F5A5751375847353958473563626D5A31626D4E30615739754947466B5A454E7359584E7A4943686C624377675932786863334E4F5957316C4B5342375847346749485A686369426A64584A795A57353049443067';
wwv_flow_imp.g_varchar2_table(433) := '5A5777755932786863334E4F5957316C4F317875494342705A69416F49574E31636E4A6C626E5175624756755A33526F4B53423758473467494341675A5777755932786863334E4F5957316C494430675932786863334E4F5957316C4F31787549434239';
wwv_flow_imp.g_varchar2_table(434) := '4947567363325567615759674B43467362323972645842446247467A6379686A6247467A63303568625755704C6E526C6333516F59335679636D567564436B7049487463626941674943426C6243356A6247467A63303568625755674B7A30674A79416E';
wwv_flow_imp.g_varchar2_table(435) := '494373675932786863334E4F5957316C4F317875494342395847353958473563626D5A31626D4E306157397549484A745132786863334D674B4756734C43426A6247467A633035686257557049487463626941675A5777755932786863334E4F5957316C';
wwv_flow_imp.g_varchar2_table(436) := '494430675A5777755932786863334E4F5957316C4C6E4A6C634778685932556F62473976613356775132786863334D6F5932786863334E4F5957316C4B5377674A79416E4B533530636D6C744B436B375847353958473563626D31765A4856735A53356C';
wwv_flow_imp.g_varchar2_table(437) := '65484276636E527A4944306765317875494342685A4751364947466B5A454E7359584E7A4C4678754943427962546F67636D31446247467A63317875665474636269497349696431633255676333527961574E304A7A7463626C7875646D467949475674';
wwv_flow_imp.g_varchar2_table(438) := '615852305A584967505342795A58463161584A6C4B43646A62323530636D45765A5731706448526C636963704F317875646D467949474E7962334E7A646D56756443413949484A6C63585670636D556F4A324E7962334E7A646D5675644363704F317875';
wwv_flow_imp.g_varchar2_table(439) := '646D467949474E7359584E7A5A584D67505342795A58463161584A6C4B4363754C324E7359584E7A5A584D6E4B547463626E5A686369426B62324D675053426B62324E316257567564447463626E5A686369426B62324E3162575675644556735A57316C';
wwv_flow_imp.g_varchar2_table(440) := '626E51675053426B62324D755A47396A6457316C626E5246624756745A5735304F3178755847356D6457356A64476C766269426B636D466E6457786849436870626D6C30615746735132397564474670626D567963797767623342306157397563796B67';
wwv_flow_imp.g_varchar2_table(441) := '653178754943423259584967624756754944306759584A6E6457316C626E527A4C6D786C626D64306144746362694167615759674B47786C62694139505430674D53416D4A694242636E4A686553357063304679636D46354B476C756158527059577844';
wwv_flow_imp.g_varchar2_table(442) := '6232353059576C755A584A7A4B534139505430675A6D467363325570494874636269416749434276634852706232357A494430676157357064476C6862454E76626E52686157356C636E4D3758473467494341676157357064476C6862454E76626E5268';
wwv_flow_imp.g_varchar2_table(443) := '6157356C636E4D6750534262585474636269416766567875494342325958496758323170636E4A76636A73674C79386762576C79636D397949476C745957646C5847346749485A686369426663323931636D4E6C4F7941764C79427A6233567959325567';
wwv_flow_imp.g_varchar2_table(444) := '5932397564474670626D56795847346749485A68636942666158526C625473674C7938676158526C625342695A576C755A79426B636D466E5A32566B5847346749485A686369426662325A6D63325630574473674C793867636D566D5A584A6C626D4E6C';
wwv_flow_imp.g_varchar2_table(445) := '4948686362694167646D4679494639765A6D5A7A5A58525A4F7941764C7942795A575A6C636D56755932556765567875494342325958496758323176646D56594F7941764C7942795A575A6C636D567559325567625739325A5342345847346749485A68';
wwv_flow_imp.g_varchar2_table(446) := '63694266625739325A566B374943387649484A6C5A6D56795A57356A5A53427462335A6C49486C6362694167646D467949463970626D6C306157467355326C6962476C755A7A73674C793867636D566D5A584A6C626D4E6C49484E70596D7870626D6367';
wwv_flow_imp.g_varchar2_table(447) := '6432686C6269426E636D4669596D566B5847346749485A686369426659335679636D567564464E70596D7870626D63374943387649484A6C5A6D56795A57356A5A53427A61574A736157356E4947357664317875494342325958496758324E7663486B37';
wwv_flow_imp.g_varchar2_table(448) := '4943387649476C305A57306764584E6C5A43426D623349675932397765576C755A317875494342325958496758334A6C626D526C636C5270625756794F7941764C7942306157316C6369426D623349676332563056476C745A573931644342795A57356B';
wwv_flow_imp.g_varchar2_table(449) := '5A584A4E61584A7962334A4A6257466E5A56787549434232595849675832786863335245636D3977564746795A32563049443067626E5673624473674C7938676247467A6443426A6232353059576C755A5849676158526C6253423359584D6762335A6C';
wwv_flow_imp.g_varchar2_table(450) := '636C787549434232595849675832647959574A695A57513749433876494768766247527A4947317664584E6C5A4739336269426A623235305A5868304948567564476C7349475A70636E4E304947317664584E6C625739325A5678755847346749485A68';
wwv_flow_imp.g_varchar2_table(451) := '6369427649443067623342306157397563794238664342376654746362694167615759674B473875625739325A584D675054303949485A76615751674D436B67657942764C6D3176646D567A494430675957783359586C7A4F7942395847346749476C6D';
wwv_flow_imp.g_varchar2_table(452) := '494368764C6D466A5932567764484D675054303949485A76615751674D436B67657942764C6D466A5932567764484D67505342686248646865584D374948316362694167615759674B47387561573532595778705A43413950543067646D39705A434177';
wwv_flow_imp.g_varchar2_table(453) := '4B5342374947387561573532595778705A43413949476C75646D46736157525559584A6E5A5851374948316362694167615759674B4738755932397564474670626D56796379413950543067646D39705A4341774B534237494738755932397564474670';
wwv_flow_imp.g_varchar2_table(454) := '626D56796379413949476C7561585270595778446232353059576C755A584A7A49487838494674644F7942395847346749476C6D494368764C6D6C7A5132397564474670626D5679494430395053423262326C6B49444170494873676279357063304E76';
wwv_flow_imp.g_varchar2_table(455) := '626E52686157356C636941394947356C646D56794F7942395847346749476C6D494368764C6D4E7663486B675054303949485A76615751674D436B67657942764C6D4E7663486B675053426D5957787A5A54736766567875494342705A69416F6279356A';
wwv_flow_imp.g_varchar2_table(456) := '623342355532397964464E7664584A6A5A53413950543067646D39705A4341774B534237494738755932397765564E76636E525462335679593255675053426D5957787A5A54736766567875494342705A69416F627935795A585A6C636E5250626C4E77';
wwv_flow_imp.g_varchar2_table(457) := '61577873494430395053423262326C6B4944417049487367627935795A585A6C636E5250626C4E7761577873494430675A6D4673633255374948316362694167615759674B473875636D567462335A6C5432355463476C736243413950543067646D3970';
wwv_flow_imp.g_varchar2_table(458) := '5A4341774B53423749473875636D567462335A6C5432355463476C736243413949475A6862484E6C4F7942395847346749476C6D494368764C6D5270636D566A64476C766269413950543067646D39705A4341774B534237494738755A476C795A574E30';
wwv_flow_imp.g_varchar2_table(459) := '61573975494430674A335A6C636E5270593246734A7A736766567875494342705A69416F627935705A323576636D564A626E42316446526C654852545A57786C59335270623234675054303949485A76615751674D436B67657942764C6D6C6E626D3979';
wwv_flow_imp.g_varchar2_table(460) := '5A556C75634856305647563464464E6C6247566A64476C766269413949485279645755374948316362694167615759674B47387562576C79636D39795132397564474670626D5679494430395053423262326C6B49444170494873676279357461584A79';
wwv_flow_imp.g_varchar2_table(461) := '62334A446232353059576C755A5849675053426B62324D75596D396B65547367665678755847346749485A686369426B636D46725A53413949475674615852305A58496F653178754943416749474E76626E52686157356C636E4D364947387559323975';
wwv_flow_imp.g_varchar2_table(462) := '64474670626D567963797863626941674943427A6447467964446F67625746756457467355335268636E517358473467494341675A57356B4F69426C626D5173584734674943416759324675593256734F69426A5957356A5A5777735847346749434167';
wwv_flow_imp.g_varchar2_table(463) := '636D567462335A6C4F6942795A573176646D557358473467494341675A47567A64484A7665546F675A47567A64484A7665537863626941674943426A5957354E62335A6C4F69426A5957354E62335A6C4C46787549434167494752795957646E6157356E';
wwv_flow_imp.g_varchar2_table(464) := '4F69426D5957787A5A567875494342394B547463626C7875494342705A69416F627935795A573176646D5650626C4E77615778734944303950534230636E566C4B53423758473467494341675A484A68613255756232346F4A3239325A58496E4C43427A';
wwv_flow_imp.g_varchar2_table(465) := '63476C73624539325A5849704C6D39754B4364766458516E4C43427A63476C736245393164436B375847346749483163626C78754943426C646D567564484D6F4B547463626C7875494342795A585231636D34675A484A68613255375847356362694167';
wwv_flow_imp.g_varchar2_table(466) := '5A6E5675593352706232346761584E446232353059576C755A5849674B4756734B5342375847346749434167636D563064584A75494752795957746C4C6D4E76626E52686157356C636E4D756157356B5A5868505A69686C62436B674954303949433078';
wwv_flow_imp.g_varchar2_table(467) := '494878384947387561584E446232353059576C755A58496F5A5777704F3178754943423958473563626941675A6E567559335270623234675A585A6C626E527A494368795A573176646D5570494874636269416749434232595849676233416750534279';
wwv_flow_imp.g_varchar2_table(468) := '5A573176646D55675079416E636D567462335A6C4A794136494364685A47516E4F317875494341674948527664574E6F6553686B62324E3162575675644556735A57316C626E5173494739774C43416E625739316332566B623364754A7977675A334A68';
wwv_flow_imp.g_varchar2_table(469) := '59696B37584734674943416764473931593268354B475276593356745A5735305257786C625756756443776762334173494364746233567A5A5856774A797767636D56735A57467A5A536B375847346749483163626C78754943426D6457356A64476C76';
wwv_flow_imp.g_varchar2_table(470) := '6269426C646D56756448566862453176646D56745A5735306379416F636D567462335A6C4B5342375847346749434167646D46794947397749443067636D567462335A6C494438674A334A6C625739325A5363674F69416E5957526B4A7A746362694167';
wwv_flow_imp.g_varchar2_table(471) := '494342306233566A61486B6F5A47396A6457316C626E5246624756745A5735304C434276634377674A32317664584E6C625739325A53637349484E3059584A30516D566A5958567A5A55317664584E6C545739325A5751704F3178754943423958473563';
wwv_flow_imp.g_varchar2_table(472) := '626941675A6E56755933527062323467625739325A57316C626E527A494368795A573176646D55704948746362694167494342325958496762334167505342795A573176646D55675079416E636D567462335A6C4A794136494364685A47516E4F317875';
wwv_flow_imp.g_varchar2_table(473) := '4943416749474E7962334E7A646D5675644674766346306F5A47396A6457316C626E5246624756745A5735304C43416E633256735A574E3063335268636E516E4C434277636D56325A57353052334A68596D4A6C5A436B374943387649456C464F467875';
wwv_flow_imp.g_varchar2_table(474) := '4943416749474E7962334E7A646D5675644674766346306F5A47396A6457316C626E5246624756745A5735304C43416E593278705932736E4C434277636D56325A57353052334A68596D4A6C5A436B375847346749483163626C78754943426D6457356A';
wwv_flow_imp.g_varchar2_table(475) := '64476C766269426B5A584E30636D39354943677049487463626941674943426C646D567564484D6F64484A315A536B375847346749434167636D56735A57467A5A53683766536B375847346749483163626C78754943426D6457356A64476C7662694277';
wwv_flow_imp.g_varchar2_table(476) := '636D56325A57353052334A68596D4A6C5A43416F5A536B67653178754943416749476C6D494368665A334A68596D4A6C5A436B676531787549434167494341675A533577636D56325A5735305247566D59585673644367704F3178754943416749483163';
wwv_flow_imp.g_varchar2_table(477) := '62694167665678755847346749475A31626D4E306157397549476479595749674B475570494874636269416749434266625739325A5667675053426C4C6D4E736157567564466737584734674943416758323176646D565A494430675A53356A62476C6C';
wwv_flow_imp.g_varchar2_table(478) := '626E525A4F3178755847346749434167646D467949476C6E626D39795A5341394948646F61574E6F5457393163325643645852306232346F5A536B674954303949444567664877675A5335745A585268533256354948783849475575593352796245746C';
wwv_flow_imp.g_varchar2_table(479) := '6554746362694167494342705A69416F6157647562334A6C4B5342375847346749434167494342795A585231636D3437494338764948646C4947397562486B67593246795A534268596D39316443426F6232356C63335174644738745A32396B4947786C';
wwv_flow_imp.g_varchar2_table(480) := '5A6E5167593278705932747A494746755A4342306233566A6143426C646D567564484E6362694167494342395847346749434167646D467949476C305A5730675053426C4C6E5268636D646C644474636269416749434232595849675932397564475634';
wwv_flow_imp.g_varchar2_table(481) := '6443413949474E68626C4E3059584A304B476C305A5730704F3178754943416749476C6D49436768593239756447563464436B67653178754943416749434167636D563064584A754F317875494341674948316362694167494342665A334A68596D4A6C';
wwv_flow_imp.g_varchar2_table(482) := '5A43413949474E76626E526C6548513758473467494341675A585A6C626E52315957784E62335A6C6257567564484D6F4B54746362694167494342705A69416F5A5335306558426C494430395053416E625739316332566B623364754A796B6765317875';
wwv_flow_imp.g_varchar2_table(483) := '4943416749434167615759674B476C7A535735776458516F6158526C62536B70494873674C7938676332566C4947467363323836494768306448427A4F6938765A326C30614856694C6D4E76625339695A585A68593346315953396B636D466E64577868';
wwv_flow_imp.g_varchar2_table(484) := '4C326C7A6333566C637938794D4468636269416749434167494341676158526C6253356D62324E31637967704F7941764C79426D6158686C6379426F64485277637A6F764C326470644768315969356A62323076596D563259574E78645745765A484A68';
wwv_flow_imp.g_varchar2_table(485) := '5A3356735953397063334E315A584D764D54633258473467494341674943423949475673633255676531787549434167494341674943426C4C6E42795A585A6C626E52455A575A68645778304B436B374943387649475A706547567A494768306448427A';
wwv_flow_imp.g_varchar2_table(486) := '4F6938765A326C30614856694C6D4E76625339695A585A68593346315953396B636D466E645778684C326C7A6333566C637938784E54566362694167494341674948316362694167494342395847346749483163626C78754943426D6457356A64476C76';
wwv_flow_imp.g_varchar2_table(487) := '6269427A6447467964454A6C593246316332564E6233567A5A553176646D566B4943686C4B5342375847346749434167615759674B4346665A334A68596D4A6C5A436B67653178754943416749434167636D563064584A754F3178754943416749483163';
wwv_flow_imp.g_varchar2_table(488) := '62694167494342705A69416F643268705932684E6233567A5A554A31644852766269686C4B534139505430674D436B67653178754943416749434167636D56735A57467A5A53683766536B375847346749434167494342795A585231636D343749433876';
wwv_flow_imp.g_varchar2_table(489) := '4948646F5A57346764475634644342706379427A5A57786C5933526C5A4342766269426862694270626E423164434268626D51676447686C6269426B636D466E5A32566B4C4342746233567A5A585677494752765A584E754A3351675A6D6C795A533467';
wwv_flow_imp.g_varchar2_table(490) := '64476870637942706379427664584967623235736553426F6233426C58473467494341676656787558473467494341674C79386764484A316447683549474E6F5A574E7249475A706547567A49434D794D7A6B7349475678645746736158523549475A70';
wwv_flow_imp.g_varchar2_table(491) := '6547567A49434D794D44637349475A706547567A49434D314D44466362694167494342705A69416F4B475575593278705A5735305743416850543067646D39705A4341774943596D494531686447677559574A7A4B475575593278705A57353057434174';
wwv_flow_imp.g_varchar2_table(492) := '4946397462335A6C57436B67504430674B473875633278705A47564759574E3062334A5949487838494441704B53416D4A6C787549434167494341674B475575593278705A5735305753416850543067646D39705A4341774943596D4945316864476775';
wwv_flow_imp.g_varchar2_table(493) := '59574A7A4B475575593278705A573530575341744946397462335A6C57536B67504430674B473875633278705A47564759574E3062334A5A49487838494441704B536B67653178754943416749434167636D563064584A754F3178754943416749483163';
wwv_flow_imp.g_varchar2_table(494) := '626C78754943416749476C6D494368764C6D6C6E626D39795A556C75634856305647563464464E6C6247566A64476C7662696B67653178754943416749434167646D467949474E7361575675644667675053426E5A585244623239795A43676E59327870';
wwv_flow_imp.g_varchar2_table(495) := '5A5735305743637349475570494878384944413758473467494341674943423259584967593278705A573530575341394947646C64454E7662334A6B4B43646A62476C6C626E525A4A7977675A536B67664877674D447463626941674943416749485A68';
wwv_flow_imp.g_varchar2_table(496) := '6369426C624756745A573530516D566F6157356B5133567963323979494430675A47396A4C6D56735A57316C626E5247636D397455473970626E516F593278705A57353057437767593278705A57353057536B375847346749434167494342705A69416F';
wwv_flow_imp.g_varchar2_table(497) := '61584E4A626E42316443686C624756745A573530516D566F6157356B51335679633239794B536B67653178754943416749434167494342795A585231636D34375847346749434167494342395847346749434167665678755847346749434167646D4679';
wwv_flow_imp.g_varchar2_table(498) := '4947647959574A695A575167505342665A334A68596D4A6C5A4473674C79386759324673624342306279426C626D516F4B534231626E4E6C64484D675832647959574A695A575263626941674943426C646D56756448566862453176646D56745A573530';
wwv_flow_imp.g_varchar2_table(499) := '63796830636E566C4B547463626941674943427462335A6C6257567564484D6F4B547463626941674943426C626D516F4B547463626941674943427A644746796443686E636D4669596D566B4B547463626C78754943416749485A68636942765A6D5A7A';
wwv_flow_imp.g_varchar2_table(500) := '5A5851675053426E5A5852505A6D5A7A5A58516F58326C305A5730704F31787549434167494639765A6D5A7A5A585259494430675A32563051323976636D516F4A3342685A3256594A7977675A536B674C5342765A6D5A7A5A5851756247566D64447463';
wwv_flow_imp.g_varchar2_table(501) := '626941674943426662325A6D63325630575341394947646C64454E7662334A6B4B4364775957646C57536373494755704943306762325A6D633256304C6E527663447463626C78754943416749474E7359584E7A5A584D755957526B4B46396A62334235';
wwv_flow_imp.g_varchar2_table(502) := '4948783849463970644756744C43416E5A33557464484A68626E4E70644363704F3178754943416749484A6C626D526C636B3170636E4A76636B6C745957646C4B436B3758473467494341675A484A685A79686C4B547463626941676656787558473467';
wwv_flow_imp.g_varchar2_table(503) := '49475A31626D4E306157397549474E68626C4E3059584A3049436870644756744B5342375847346749434167615759674B4752795957746C4C6D52795957646E6157356E4943596D4946397461584A796233497049487463626941674943416749484A6C';
wwv_flow_imp.g_varchar2_table(504) := '64485679626A746362694167494342395847346749434167615759674B476C7A5132397564474670626D56794B476C305A5730704B5342375847346749434167494342795A585231636D3437494338764947527662696430494752795957636759323975';
wwv_flow_imp.g_varchar2_table(505) := '64474670626D567949476C30633256735A6C78754943416749483163626941674943423259584967614746755A47786C494430676158526C62547463626941674943423361476C735A53416F5A325630554746795A5735304B476C305A5730704943596D';
wwv_flow_imp.g_varchar2_table(506) := '49476C7A5132397564474670626D56794B47646C64464268636D567564436870644756744B536B675054303949475A6862484E6C4B5342375847346749434167494342705A69416F62793570626E5A6862476C6B4B476C305A57307349476868626D5273';
wwv_flow_imp.g_varchar2_table(507) := '5A536B7049487463626941674943416749434167636D563064584A754F31787549434167494341676656787549434167494341676158526C625341394947646C64464268636D567564436870644756744B5473674C7938675A484A685A79423059584A6E';
wwv_flow_imp.g_varchar2_table(508) := '5A585167633268766457786B49474A6C4947456764473977494756735A57316C626E5263626941674943416749476C6D494367686158526C62536B67653178754943416749434167494342795A585231636D343758473467494341674943423958473467';
wwv_flow_imp.g_varchar2_table(509) := '49434167665678754943416749485A686369427A62335679593255675053426E5A58525159584A6C626E516F6158526C62536B375847346749434167615759674B43467A623356795932557049487463626941674943416749484A6C64485679626A7463';
wwv_flow_imp.g_varchar2_table(510) := '62694167494342395847346749434167615759674B47387561573532595778705A436870644756744C43426F5957356B624755704B5342375847346749434167494342795A585231636D34375847346749434167665678755847346749434167646D4679';
wwv_flow_imp.g_varchar2_table(511) := '49473176646D466962475567505342764C6D3176646D567A4B476C305A57307349484E7664584A6A5A537767614746755A47786C4C4342755A5868305257776F6158526C62536B704F3178754943416749476C6D494367686257393259574A735A536B67';
wwv_flow_imp.g_varchar2_table(512) := '653178754943416749434167636D563064584A754F3178754943416749483163626C78754943416749484A6C6448567962694237584734674943416749434270644756744F694270644756744C467875494341674943416763323931636D4E6C4F69427A';
wwv_flow_imp.g_varchar2_table(513) := '623356795932566362694167494342394F3178754943423958473563626941675A6E5675593352706232346759324675545739325A53416F6158526C62536B67653178754943416749484A6C644856796269416849574E68626C4E3059584A304B476C30';
wwv_flow_imp.g_varchar2_table(514) := '5A5730704F3178754943423958473563626941675A6E56755933527062323467625746756457467355335268636E51674B476C305A5730704948746362694167494342325958496759323975644756346443413949474E68626C4E3059584A304B476C30';
wwv_flow_imp.g_varchar2_table(515) := '5A5730704F3178754943416749476C6D4943686A623235305A5868304B53423758473467494341674943427A644746796443686A623235305A5868304B54746362694167494342395847346749483163626C78754943426D6457356A64476C766269427A';
wwv_flow_imp.g_varchar2_table(516) := '644746796443416F593239756447563464436B67653178754943416749476C6D4943687063304E7663486B6F593239756447563464433570644756744C43426A623235305A5868304C6E4E7664584A6A5A536B704948746362694167494341674946396A';
wwv_flow_imp.g_varchar2_table(517) := '6233423549443067593239756447563464433570644756744C6D4E736232356C546D396B5A536830636E566C4B5474636269416749434167494752795957746C4C6D56746158516F4A324E736232356C5A4363734946396A623342354C43426A62323530';
wwv_flow_imp.g_varchar2_table(518) := '5A5868304C6D6C305A5730734943646A623342354A796B37584734674943416766567875584734674943416758334E7664584A6A5A53413949474E76626E526C6548517563323931636D4E6C4F3178754943416749463970644756744944306759323975';
wwv_flow_imp.g_varchar2_table(519) := '6447563464433570644756744F3178754943416749463970626D6C306157467355326C6962476C755A7941394946396A64584A795A57353055326C6962476C755A7941394947356C654852466243686A623235305A5868304C6D6C305A5730704F317875';
wwv_flow_imp.g_varchar2_table(520) := '58473467494341675A484A68613255755A484A685A326470626D636750534230636E566C4F31787549434167494752795957746C4C6D56746158516F4A3252795957636E4C4342666158526C6253776758334E7664584A6A5A536B375847346749483163';
wwv_flow_imp.g_varchar2_table(521) := '626C78754943426D6457356A64476C7662694270626E5A6862476C6B564746795A325630494367704948746362694167494342795A585231636D34675A6D4673633255375847346749483163626C78754943426D6457356A64476C766269426C626D5167';
wwv_flow_imp.g_varchar2_table(522) := '4B436B67653178754943416749476C6D494367685A484A68613255755A484A685A326470626D637049487463626941674943416749484A6C64485679626A746362694167494342395847346749434167646D467949476C305A5730675053426659323977';
wwv_flow_imp.g_varchar2_table(523) := '65534238664342666158526C62547463626941674943426B636D39774B476C305A5730734947646C64464268636D567564436870644756744B536B375847346749483163626C78754943426D6457356A64476C7662694231626D6479595749674B436B67';
wwv_flow_imp.g_varchar2_table(524) := '65317875494341674946396E636D4669596D566B494430675A6D46736332553758473467494341675A585A6C626E52315957784E62335A6C6257567564484D6F64484A315A536B375847346749434167625739325A57316C626E527A4B48527964575570';
wwv_flow_imp.g_varchar2_table(525) := '4F3178754943423958473563626941675A6E56755933527062323467636D56735A57467A5A53416F5A536B676531787549434167494856755A334A68596967704F3178755847346749434167615759674B43466B636D46725A53356B636D466E5A326C75';
wwv_flow_imp.g_varchar2_table(526) := '5A796B67653178754943416749434167636D563064584A754F31787549434167494831636269416749434232595849676158526C625341394946396A623342354948783849463970644756744F3178754943416749485A686369426A62476C6C626E5259';
wwv_flow_imp.g_varchar2_table(527) := '494430675A32563051323976636D516F4A324E73615756756446676E4C43426C4B534238664341774F3178754943416749485A686369426A62476C6C626E525A494430675A32563051323976636D516F4A324E736157567564466B6E4C43426C4B534238';
wwv_flow_imp.g_varchar2_table(528) := '664341774F3178754943416749485A686369426C624756745A573530516D566F6157356B5133567963323979494430675A3256305257786C6257567564454A6C61476C755A464276615735304B46397461584A796233497349474E736157567564466773';
wwv_flow_imp.g_varchar2_table(529) := '49474E736157567564466B704F3178754943416749485A686369426B636D3977564746795A325630494430675A6D6C755A4552796233425559584A6E5A58516F5A57786C6257567564454A6C61476C755A454E31636E4E7663697767593278705A573530';
wwv_flow_imp.g_varchar2_table(530) := '57437767593278705A57353057536B375847346749434167615759674B4752796233425559584A6E5A5851674A6959674B436866593239776553416D4A6942764C6D4E7663486C5462334A3055323931636D4E6C4B5342386643416F4956396A62334235';
wwv_flow_imp.g_varchar2_table(531) := '49487838494752796233425559584A6E5A585167495430394946397A62335679593255704B536B676531787549434167494341675A484A7663436870644756744C43426B636D3977564746795A3256304B54746362694167494342394947567363325567';
wwv_flow_imp.g_varchar2_table(532) := '615759674B473875636D567462335A6C5432355463476C7362436B67653178754943416749434167636D567462335A6C4B436B3758473467494341676653426C62484E6C49487463626941674943416749474E68626D4E6C624367704F31787549434167';
wwv_flow_imp.g_varchar2_table(533) := '4948316362694167665678755847346749475A31626D4E306157397549475279623341674B476C305A57307349485268636D646C64436B67653178754943416749485A686369427759584A6C626E51675053426E5A58525159584A6C626E516F6158526C';
wwv_flow_imp.g_varchar2_table(534) := '62536B375847346749434167615759674B46396A623342354943596D494738755932397765564E76636E525462335679593255674A695967644746795A325630494430395053426663323931636D4E6C4B53423758473467494341674943427759584A6C';
wwv_flow_imp.g_varchar2_table(535) := '626E5175636D567462335A6C513268706247516F58326C305A5730704F317875494341674948316362694167494342705A69416F61584E4A626D6C306157467355477868593256745A5735304B485268636D646C64436B70494874636269416749434167';
wwv_flow_imp.g_varchar2_table(536) := '494752795957746C4C6D56746158516F4A324E68626D4E6C6243637349476C305A5730734946397A62335679593255734946397A62335679593255704F31787549434167494830675A57787A5A53423758473467494341674943426B636D46725A53356C';
wwv_flow_imp.g_varchar2_table(537) := '62576C304B43646B636D39774A7977676158526C62537767644746795A3256304C43426663323931636D4E6C4C43426659335679636D567564464E70596D7870626D63704F3178754943416749483163626941674943426A62475668626E56774B436B37';
wwv_flow_imp.g_varchar2_table(538) := '5847346749483163626C78754943426D6457356A64476C76626942795A573176646D55674B436B67653178754943416749476C6D494367685A484A68613255755A484A685A326470626D637049487463626941674943416749484A6C64485679626A7463';
wwv_flow_imp.g_varchar2_table(539) := '62694167494342395847346749434167646D467949476C305A573067505342665932397765534238664342666158526C62547463626941674943423259584967634746795A573530494430675A325630554746795A5735304B476C305A5730704F317875';
wwv_flow_imp.g_varchar2_table(540) := '4943416749476C6D4943687759584A6C626E517049487463626941674943416749484268636D5675644335795A573176646D564461476C735A436870644756744B547463626941674943423958473467494341675A484A68613255755A57317064436866';
wwv_flow_imp.g_varchar2_table(541) := '593239776553412F4943646A5957356A5A57776E49446F674A334A6C625739325A53637349476C305A57307349484268636D56756443776758334E7664584A6A5A536B3758473467494341675932786C59573531634367704F3178754943423958473563';
wwv_flow_imp.g_varchar2_table(542) := '626941675A6E567559335270623234675932467559325673494368795A585A6C636E51704948746362694167494342705A69416F495752795957746C4C6D52795957646E6157356E4B5342375847346749434167494342795A585231636D343758473467';
wwv_flow_imp.g_varchar2_table(543) := '49434167665678754943416749485A68636942795A585A6C636E527A4944306759584A6E6457316C626E527A4C6D786C626D64306143412B49444167507942795A585A6C636E51674F6942764C6E4A6C646D567964453975553342706247773758473467';
wwv_flow_imp.g_varchar2_table(544) := '49434167646D467949476C305A573067505342665932397765534238664342666158526C62547463626941674943423259584967634746795A573530494430675A325630554746795A5735304B476C305A5730704F3178754943416749485A6863694270';
wwv_flow_imp.g_varchar2_table(545) := '626D6C30615746734944306761584E4A626D6C306157467355477868593256745A5735304B484268636D567564436B375847346749434167615759674B476C7561585270595777675054303949475A6862484E6C4943596D49484A6C646D567964484D70';
wwv_flow_imp.g_varchar2_table(546) := '49487463626941674943416749476C6D494368665932397765536B67653178754943416749434167494342705A69416F634746795A5735304B53423758473467494341674943416749434167634746795A5735304C6E4A6C625739325A554E6F6157786B';
wwv_flow_imp.g_varchar2_table(547) := '4B46396A623342354B5474636269416749434167494341676656787549434167494341676653426C62484E6C4948746362694167494341674943416758334E7664584A6A5A533570626E4E6C636E52435A575A76636D556F6158526C6253776758326C75';
wwv_flow_imp.g_varchar2_table(548) := '615852705957785461574A736157356E4B54746362694167494341674948316362694167494342395847346749434167615759674B476C75615852705957776766487767636D56325A584A3063796B676531787549434167494341675A484A6861325575';
wwv_flow_imp.g_varchar2_table(549) := '5A5731706443676E59324675593256734A7977676158526C6253776758334E7664584A6A5A53776758334E7664584A6A5A536B3758473467494341676653426C62484E6C494874636269416749434167494752795957746C4C6D56746158516F4A325279';
wwv_flow_imp.g_varchar2_table(550) := '6233416E4C434270644756744C43427759584A6C626E51734946397A62335679593255734946396A64584A795A57353055326C6962476C755A796B375847346749434167665678754943416749474E735A5746756458416F4B5474636269416766567875';
wwv_flow_imp.g_varchar2_table(551) := '5847346749475A31626D4E306157397549474E735A574675645841674B436B67653178754943416749485A6863694270644756744944306758324E7663486B676648776758326C305A57303758473467494341676457356E636D46694B436B3758473467';
wwv_flow_imp.g_varchar2_table(552) := '49434167636D567462335A6C54576C79636D3979535731685A32556F4B54746362694167494342705A69416F6158526C62536B676531787549434167494341675932786863334E6C6379357962536870644756744C43416E5A33557464484A68626E4E70';
wwv_flow_imp.g_varchar2_table(553) := '644363704F317875494341674948316362694167494342705A69416F58334A6C626D526C636C5270625756794B53423758473467494341674943426A62475668636C5270625756766458516F58334A6C626D526C636C5270625756794B54746362694167';
wwv_flow_imp.g_varchar2_table(554) := '4943423958473467494341675A484A68613255755A484A685A326470626D63675053426D5957787A5A54746362694167494342705A69416F5832786863335245636D3977564746795A3256304B53423758473467494341674943426B636D46725A53356C';
wwv_flow_imp.g_varchar2_table(555) := '62576C304B4364766458516E4C434270644756744C4342666247467A644552796233425559584A6E5A5851734946397A62335679593255704F3178754943416749483163626941674943426B636D46725A53356C62576C304B43646B636D466E5A57356B';
wwv_flow_imp.g_varchar2_table(556) := '4A7977676158526C62536B37584734674943416758334E7664584A6A5A53413949463970644756744944306758324E7663486B67505342666157357064476C6862464E70596D7870626D63675053426659335679636D567564464E70596D7870626D6367';
wwv_flow_imp.g_varchar2_table(557) := '50534266636D56755A47567956476C745A584967505342666247467A644552796233425559584A6E5A58516750534275645778734F3178754943423958473563626941675A6E5675593352706232346761584E4A626D6C30615746735547786859325674';
wwv_flow_imp.g_varchar2_table(558) := '5A5735304943683059584A6E5A58517349484D704948746362694167494342325958496763326C6962476C755A7A746362694167494342705A69416F6379416850543067646D39705A4341774B53423758473467494341674943427A61574A736157356E';
wwv_flow_imp.g_varchar2_table(559) := '49443067637A746362694167494342394947567363325567615759674B46397461584A796233497049487463626941674943416749484E70596D7870626D63675053426659335679636D567564464E70596D7870626D633758473467494341676653426C';
wwv_flow_imp.g_varchar2_table(560) := '62484E6C49487463626941674943416749484E70596D7870626D6367505342755A5868305257776F58324E7663486B676648776758326C305A5730704F317875494341674948316362694167494342795A585231636D3467644746795A32563049443039';
wwv_flow_imp.g_varchar2_table(561) := '5053426663323931636D4E6C4943596D49484E70596D7870626D63675054303949463970626D6C306157467355326C6962476C755A7A746362694167665678755847346749475A31626D4E306157397549475A70626D5245636D3977564746795A325630';
wwv_flow_imp.g_varchar2_table(562) := '4943686C624756745A573530516D566F6157356B51335679633239794C43426A62476C6C626E52594C43426A62476C6C626E525A4B5342375847346749434167646D467949485268636D646C64434139494756735A57316C626E52435A576870626D5244';
wwv_flow_imp.g_varchar2_table(563) := '64584A7A62334937584734674943416764326870624755674B485268636D646C6443416D4A69416859574E6A5A5842305A57516F4B536B67653178754943416749434167644746795A325630494430675A325630554746795A5735304B485268636D646C';
wwv_flow_imp.g_varchar2_table(564) := '64436B375847346749434167665678754943416749484A6C644856796269423059584A6E5A58513758473563626941674943426D6457356A64476C766269426859324E6C6348526C5A43416F4B534237584734674943416749434232595849675A484A76';
wwv_flow_imp.g_varchar2_table(565) := '63484268596D786C4944306761584E446232353059576C755A58496F644746795A3256304B547463626941674943416749476C6D4943686B636D397763474669624755675054303949475A6862484E6C4B53423758473467494341674943416749484A6C';
wwv_flow_imp.g_varchar2_table(566) := '644856796269426D5957787A5A547463626941674943416749483163626C78754943416749434167646D467949476C746257566B615746305A5341394947646C64456C746257566B615746305A554E6F6157786B4B485268636D646C644377675A57786C';
wwv_flow_imp.g_varchar2_table(567) := '6257567564454A6C61476C755A454E31636E4E7663696B3758473467494341674943423259584967636D566D5A584A6C626D4E6C494430675A325630556D566D5A584A6C626D4E6C4B485268636D646C64437767615731745A5752705958526C4C43426A';
wwv_flow_imp.g_varchar2_table(568) := '62476C6C626E52594C43426A62476C6C626E525A4B547463626941674943416749485A6863694270626D6C30615746734944306761584E4A626D6C306157467355477868593256745A5735304B485268636D646C64437767636D566D5A584A6C626D4E6C';
wwv_flow_imp.g_varchar2_table(569) := '4B547463626941674943416749476C6D49436870626D6C30615746734B53423758473467494341674943416749484A6C6448567962694230636E566C4F7941764C79427A61473931624751675957783359586C7A49474A6C494746696247556764473867';
wwv_flow_imp.g_varchar2_table(570) := '5A484A7663434270644342796157646F6443426959574E724948646F5A584A6C49476C3049486468633178754943416749434167665678754943416749434167636D563064584A754947387559574E6A5A584230637968666158526C6253776764474679';
wwv_flow_imp.g_varchar2_table(571) := '5A3256304C43426663323931636D4E6C4C4342795A575A6C636D5675593255704F317875494341674948316362694167665678755847346749475A31626D4E306157397549475279595763674B4755704948746362694167494342705A69416F49563974';
wwv_flow_imp.g_varchar2_table(572) := '61584A796233497049487463626941674943416749484A6C64485679626A7463626941674943423958473467494341675A533577636D56325A5735305247566D59585673644367704F3178755847346749434167646D467949474E736157567564466767';
wwv_flow_imp.g_varchar2_table(573) := '5053426E5A585244623239795A43676E593278705A573530574363734947557049487838494441375847346749434167646D467949474E736157567564466B675053426E5A585244623239795A43676E593278705A573530575363734947557049487838';
wwv_flow_imp.g_varchar2_table(574) := '494441375847346749434167646D4679494867675053426A62476C6C626E5259494330675832396D5A6E4E6C644667375847346749434167646D467949486B675053426A62476C6C626E525A494330675832396D5A6E4E6C64466B375847356362694167';
wwv_flow_imp.g_varchar2_table(575) := '4943426662576C79636D39794C6E4E306557786C4C6D786C5A6E516750534234494373674A3342344A7A7463626941674943426662576C79636D39794C6E4E306557786C4C6E52766343413949486B674B79416E6348676E4F3178755847346749434167';
wwv_flow_imp.g_varchar2_table(576) := '646D467949476C305A573067505342665932397765534238664342666158526C625474636269416749434232595849675A57786C6257567564454A6C61476C755A454E31636E4E76636941394947646C644556735A57316C626E52435A576870626D5251';
wwv_flow_imp.g_varchar2_table(577) := '62326C756443686662576C79636D39794C43426A62476C6C626E52594C43426A62476C6C626E525A4B5474636269416749434232595849675A484A7663465268636D646C6443413949475A70626D5245636D3977564746795A3256304B4756735A57316C';
wwv_flow_imp.g_varchar2_table(578) := '626E52435A576870626D524464584A7A6233497349474E73615756756446677349474E736157567564466B704F3178754943416749485A686369426A614746755A32566B494430675A484A7663465268636D646C6443416850543067626E56736243416D';
wwv_flow_imp.g_varchar2_table(579) := '4A69426B636D3977564746795A32563049434539505342666247467A644552796233425559584A6E5A5851375847346749434167615759674B474E6F5957356E5A575167664877675A484A7663465268636D646C6443413950543067626E567362436B67';
wwv_flow_imp.g_varchar2_table(580) := '653178754943416749434167623356304B436B375847346749434167494342666247467A644552796233425559584A6E5A5851675053426B636D3977564746795A3256304F317875494341674943416762335A6C636967704F3178754943416749483163';
wwv_flow_imp.g_varchar2_table(581) := '626941674943423259584967634746795A573530494430675A325630554746795A5735304B476C305A5730704F3178754943416749476C6D4943686B636D3977564746795A325630494430395053426663323931636D4E6C4943596D4946396A62334235';
wwv_flow_imp.g_varchar2_table(582) := '4943596D494346764C6D4E7663486C5462334A3055323931636D4E6C4B5342375847346749434167494342705A69416F634746795A5735304B53423758473467494341674943416749484268636D5675644335795A573176646D564461476C735A436870';
wwv_flow_imp.g_varchar2_table(583) := '644756744B547463626941674943416749483163626941674943416749484A6C64485679626A746362694167494342395847346749434167646D467949484A6C5A6D56795A57356A5A547463626941674943423259584967615731745A5752705958526C';
wwv_flow_imp.g_varchar2_table(584) := '494430675A325630535731745A5752705958526C513268706247516F5A484A7663465268636D646C644377675A57786C6257567564454A6C61476C755A454E31636E4E7663696B375847346749434167615759674B476C746257566B615746305A534168';
wwv_flow_imp.g_varchar2_table(585) := '50543067626E567362436B67653178754943416749434167636D566D5A584A6C626D4E6C494430675A325630556D566D5A584A6C626D4E6C4B4752796233425559584A6E5A58517349476C746257566B615746305A537767593278705A57353057437767';
wwv_flow_imp.g_varchar2_table(586) := '593278705A57353057536B3758473467494341676653426C62484E6C49476C6D494368764C6E4A6C646D56796445397555334270624777675054303949485279645755674A6959674956396A623342354B5342375847346749434167494342795A575A6C';
wwv_flow_imp.g_varchar2_table(587) := '636D567559325567505342666157357064476C6862464E70596D7870626D633758473467494341674943426B636D3977564746795A3256304944306758334E7664584A6A5A54746362694167494342394947567363325567653178754943416749434167';
wwv_flow_imp.g_varchar2_table(588) := '615759674B46396A623342354943596D49484268636D567564436B676531787549434167494341674943427759584A6C626E5175636D567462335A6C513268706247516F6158526C62536B37584734674943416749434239584734674943416749434279';
wwv_flow_imp.g_varchar2_table(589) := '5A585231636D34375847346749434167665678754943416749476C6D494368636269416749434167494368795A575A6C636D5675593255675054303949473531624777674A69596759326868626D646C5A436B6766487863626941674943416749484A6C';
wwv_flow_imp.g_varchar2_table(590) := '5A6D56795A57356A5A534168505430676158526C6253416D4A6C78754943416749434167636D566D5A584A6C626D4E6C49434539505342755A5868305257776F6158526C62536C6362694167494341704948746362694167494341674946396A64584A79';
wwv_flow_imp.g_varchar2_table(591) := '5A57353055326C6962476C755A79413949484A6C5A6D56795A57356A5A5474636269416749434167494752796233425559584A6E5A5851756157357A5A584A30516D566D62334A6C4B476C305A57307349484A6C5A6D56795A57356A5A536B3758473467';
wwv_flow_imp.g_varchar2_table(592) := '494341674943426B636D46725A53356C62576C304B43647A6147466B6233636E4C434270644756744C43426B636D3977564746795A3256304C43426663323931636D4E6C4B547463626941674943423958473467494341675A6E56755933527062323467';
wwv_flow_imp.g_varchar2_table(593) := '625739325A5751674B48523563475570494873675A484A68613255755A573170644368306558426C4C434270644756744C4342666247467A644552796233425559584A6E5A5851734946397A62335679593255704F79423958473467494341675A6E5675';
wwv_flow_imp.g_varchar2_table(594) := '593352706232346762335A6C6369416F4B53423749476C6D4943686A614746755A32566B4B53423749473176646D566B4B436476646D56794A796B3749483067665678754943416749475A31626D4E3061573975494739316443416F4B53423749476C6D';
wwv_flow_imp.g_varchar2_table(595) := '494368666247467A644552796233425559584A6E5A58517049487367625739325A57516F4A323931644363704F7942394948316362694167665678755847346749475A31626D4E306157397549484E776157787354335A6C6369416F5A57777049487463';
wwv_flow_imp.g_varchar2_table(596) := '626941674943426A6247467A6332567A4C6E4A744B4756734C43416E5A33557461476C6B5A5363704F3178754943423958473563626941675A6E567559335270623234676333427062477850645851674B4756734B534237584734674943416761575967';
wwv_flow_imp.g_varchar2_table(597) := '4B4752795957746C4C6D52795957646E6157356E4B53423749474E7359584E7A5A584D755957526B4B4756734C43416E5A33557461476C6B5A5363704F7942395847346749483163626C78754943426D6457356A64476C76626942795A57356B5A584A4E';
wwv_flow_imp.g_varchar2_table(598) := '61584A7962334A4A6257466E5A53416F4B5342375847346749434167615759674B46397461584A796233497049487463626941674943416749484A6C64485679626A746362694167494342395847346749434167646D467949484A6C5933516750534266';
wwv_flow_imp.g_varchar2_table(599) := '6158526C6253356E5A585243623356755A476C755A304E736157567564464A6C5933516F4B547463626941674943426662576C79636D39794944306758326C305A57307559327876626D564F6232526C4B485279645755704F3178754943416749463974';
wwv_flow_imp.g_varchar2_table(600) := '61584A7962334975633352356247557564326C6B644767675053426E5A5852535A574E3056326C6B6447676F636D566A64436B674B79416E6348676E4F317875494341674946397461584A79623349756333523562475575614756705A32683049443067';
wwv_flow_imp.g_varchar2_table(601) := '5A325630556D566A6445686C6157646F644368795A574E304B534172494364776543633758473467494341675932786863334E6C637935796253686662576C79636D39794C43416E5A33557464484A68626E4E70644363704F3178754943416749474E73';
wwv_flow_imp.g_varchar2_table(602) := '59584E7A5A584D755957526B4B46397461584A79623349734943646E6453317461584A796233496E4B54746362694167494342764C6D3170636E4A76636B4E76626E52686157356C636935686348426C626D524461476C735A43686662576C79636D3979';
wwv_flow_imp.g_varchar2_table(603) := '4B54746362694167494342306233566A61486B6F5A47396A6457316C626E5246624756745A5735304C43416E5957526B4A7977674A32317664584E6C625739325A53637349475279595763704F3178754943416749474E7359584E7A5A584D755957526B';
wwv_flow_imp.g_varchar2_table(604) := '4B47387562576C79636D39795132397564474670626D56794C43416E5A3355746457357A5A57786C59335268596D786C4A796B3758473467494341675A484A68613255755A5731706443676E59327876626D566B4A79776758323170636E4A7663697767';
wwv_flow_imp.g_varchar2_table(605) := '58326C305A5730734943647461584A796233496E4B54746362694167665678755847346749475A31626D4E306157397549484A6C625739325A553170636E4A76636B6C745957646C494367704948746362694167494342705A69416F58323170636E4A76';
wwv_flow_imp.g_varchar2_table(606) := '63696B676531787549434167494341675932786863334E6C63793579625368764C6D3170636E4A76636B4E76626E52686157356C636977674A3264314C585675633256735A574E3059574A735A5363704F31787549434167494341676447393159326835';
wwv_flow_imp.g_varchar2_table(607) := '4B475276593356745A5735305257786C62575675644377674A334A6C625739325A536373494364746233567A5A573176646D556E4C43426B636D466E4B54746362694167494341674947646C64464268636D56756443686662576C79636D39794B533579';
wwv_flow_imp.g_varchar2_table(608) := '5A573176646D564461476C735A43686662576C79636D39794B54746362694167494341674946397461584A796233496750534275645778734F317875494341674948316362694167665678755847346749475A31626D4E30615739754947646C64456C74';
wwv_flow_imp.g_varchar2_table(609) := '6257566B615746305A554E6F6157786B4943686B636D3977564746795A3256304C43423059584A6E5A58517049487463626941674943423259584967615731745A5752705958526C49443067644746795A3256304F317875494341674948646F6157786C';
wwv_flow_imp.g_varchar2_table(610) := '494368706257316C5A476C686447556749543039494752796233425559584A6E5A5851674A6959675A325630554746795A5735304B476C746257566B615746305A536B6749543039494752796233425559584A6E5A585170494874636269416749434167';
wwv_flow_imp.g_varchar2_table(611) := '49476C746257566B615746305A5341394947646C64464268636D5675644368706257316C5A476C68644755704F317875494341674948316362694167494342705A69416F615731745A5752705958526C494430395053426B62324E316257567564455673';
wwv_flow_imp.g_varchar2_table(612) := '5A57316C626E517049487463626941674943416749484A6C6448567962694275645778734F317875494341674948316362694167494342795A585231636D3467615731745A5752705958526C4F3178754943423958473563626941675A6E567559335270';
wwv_flow_imp.g_varchar2_table(613) := '623234675A325630556D566D5A584A6C626D4E6C4943686B636D3977564746795A3256304C43423059584A6E5A5851734948677349486B70494874636269416749434232595849676147397961587076626E526862434139494738755A476C795A574E30';
wwv_flow_imp.g_varchar2_table(614) := '61573975494430395053416E6147397961587076626E5268624363375847346749434167646D467949484A6C5A6D56795A57356A5A53413949485268636D646C64434168505430675A484A7663465268636D646C6443412F49476C7563326C6B5A536770';
wwv_flow_imp.g_varchar2_table(615) := '49446F676233563063326C6B5A5367704F3178754943416749484A6C64485679626942795A575A6C636D56755932553758473563626941674943426D6457356A64476C76626942766458527A6157526C49436770494873674C7938676332787664325679';
wwv_flow_imp.g_varchar2_table(616) := '4C4342696458516759574A735A5342306279426D61576431636D556762335630494746756553427762334E7064476C76626C78754943416749434167646D46794947786C62694139494752796233425559584A6E5A58517559326870624752795A573475';
wwv_flow_imp.g_varchar2_table(617) := '624756755A33526F4F3178754943416749434167646D467949476B37584734674943416749434232595849675A57773758473467494341674943423259584967636D566A64447463626941674943416749475A766369416F615341394944413749476B67';
wwv_flow_imp.g_varchar2_table(618) := '504342735A57343749476B724B796B676531787549434167494341674943426C62434139494752796233425559584A6E5A58517559326870624752795A5735626156303758473467494341674943416749484A6C593351675053426C6243356E5A585243';
wwv_flow_imp.g_varchar2_table(619) := '623356755A476C755A304E736157567564464A6C5933516F4B547463626941674943416749434167615759674B476876636D6C3662323530595777674A6959674B484A6C593351756247566D6443417249484A6C5933517564326C6B644767674C794179';
wwv_flow_imp.g_varchar2_table(620) := '4B53412B4948677049487367636D563064584A75494756734F79423958473467494341674943416749476C6D494367686147397961587076626E52686243416D4A69416F636D566A64433530623341674B7942795A574E304C6D686C6157646F64434176';
wwv_flow_imp.g_varchar2_table(621) := '494449704944346765536B67657942795A585231636D34675A57773749483163626941674943416749483163626941674943416749484A6C6448567962694275645778734F3178754943416749483163626C78754943416749475A31626D4E3061573975';
wwv_flow_imp.g_varchar2_table(622) := '49476C7563326C6B5A53416F4B5342374943387649475A686333526C63697767596E56304947397562486B6759585A6861577868596D786C49476C6D49475279623342775A5751676157357A6157526C4947456759326870624751675A57786C62575675';
wwv_flow_imp.g_varchar2_table(623) := '644678754943416749434167646D467949484A6C593351675053423059584A6E5A5851755A325630516D3931626D5270626D644462476C6C626E52535A574E304B436B375847346749434167494342705A69416F6147397961587076626E526862436B67';
wwv_flow_imp.g_varchar2_table(624) := '653178754943416749434167494342795A585231636D3467636D567A623278325A53683449443467636D566A644335735A575A30494373675A325630556D566A644664705A48526F4B484A6C59335170494338674D696B37584734674943416749434239';
wwv_flow_imp.g_varchar2_table(625) := '5847346749434167494342795A585231636D3467636D567A623278325A53683549443467636D566A64433530623341674B79426E5A5852535A574E30534756705A3268304B484A6C59335170494338674D696B3758473467494341676656787558473467';
wwv_flow_imp.g_varchar2_table(626) := '494341675A6E56755933527062323467636D567A623278325A53416F59575A305A58497049487463626941674943416749484A6C64485679626942685A6E526C6369412F4947356C654852466243683059584A6E5A58517049446F67644746795A325630';
wwv_flow_imp.g_varchar2_table(627) := '4F317875494341674948316362694167665678755847346749475A31626D4E306157397549476C7A513239776553416F6158526C625377675932397564474670626D56794B5342375847346749434167636D563064584A7549485235634756765A694276';
wwv_flow_imp.g_varchar2_table(628) := '4C6D4E7663486B675054303949436469623239735A5746754A79412F494738755932397765534136494738755932397765536870644756744C43426A6232353059576C755A5849704F317875494342395847353958473563626D5A31626D4E3061573975';
wwv_flow_imp.g_varchar2_table(629) := '4948527664574E6F6553416F5A577773494739774C4342306558426C4C43426D62696B676531787549434232595849676447393159326767505342375847346749434167625739316332563163446F674A33527664574E6F5A57356B4A79786362694167';
wwv_flow_imp.g_varchar2_table(630) := '494342746233567A5A57527664323436494364306233566A61484E3059584A304A79786362694167494342746233567A5A573176646D5536494364306233566A61473176646D556E58473467494830375847346749485A686369427762326C7564475679';
wwv_flow_imp.g_varchar2_table(631) := '637941394948746362694167494342746233567A5A5856774F69416E63473970626E526C636E56774A79786362694167494342746233567A5A575276643234364943647762326C75644756795A4739336269637358473467494341676257393163325674';
wwv_flow_imp.g_varchar2_table(632) := '62335A6C4F69416E63473970626E526C636D3176646D556E58473467494830375847346749485A686369427461574E7962334E765A6E5167505342375847346749434167625739316332563163446F674A30315455473970626E526C636C56774A797863';
wwv_flow_imp.g_varchar2_table(633) := '62694167494342746233567A5A575276643234364943644E55314276615735305A584A45623364754A79786362694167494342746233567A5A573176646D55364943644E55314276615735305A584A4E62335A6C4A317875494342394F31787549434270';
wwv_flow_imp.g_varchar2_table(634) := '5A69416F5A327876596D46734C6D3568646D6C6E595852766369357762326C756447567952573568596D786C5A436B67653178754943416749474E7962334E7A646D5675644674766346306F5A57777349484276615735305A584A7A5733523563475664';
wwv_flow_imp.g_varchar2_table(635) := '4C43426D62696B3758473467494830675A57787A5A5342705A69416F5A327876596D46734C6D3568646D6C6E595852766369357463314276615735305A584A46626D46696247566B4B534237584734674943416759334A7663334E325A57353057323977';
wwv_flow_imp.g_varchar2_table(636) := '5853686C6243776762576C6A636D397A62325A3057335235634756644C43426D62696B3758473467494830675A57787A5A534237584734674943416759334A7663334E325A573530573239775853686C62437767644739315932686264486C775A563073';
wwv_flow_imp.g_varchar2_table(637) := '49475A754B547463626941674943426A636D397A63335A6C626E5262623342644B4756734C4342306558426C4C43426D62696B375847346749483163626E3163626C78755A6E56755933527062323467643268705932684E6233567A5A554A3164485276';
wwv_flow_imp.g_varchar2_table(638) := '6269416F5A536B6765317875494342705A69416F5A5335306233566A6147567A494345395053423262326C6B4944417049487367636D563064584A7549475575644739315932686C637935735A57356E644767374948316362694167615759674B475575';
wwv_flow_imp.g_varchar2_table(639) := '64326870593267674954303949485A76615751674D43416D4A69426C4C6E646F61574E6F49434539505341774B53423749484A6C644856796269426C4C6E646F61574E6F4F7942394943387649484E6C5A53426F64485277637A6F764C32647064476831';
wwv_flow_imp.g_varchar2_table(640) := '5969356A62323076596D563259574E78645745765A484A685A3356735953397063334E315A584D764D6A59785847346749476C6D4943686C4C6D4A3164485276626E4D674954303949485A76615751674D436B67657942795A585231636D34675A533569';
wwv_flow_imp.g_varchar2_table(641) := '645852306232357A4F7942395847346749485A686369426964585230623234675053426C4C6D4A3164485276626A746362694167615759674B474A31644852766269416850543067646D39705A4341774B5342374943387649484E6C5A53426F64485277';
wwv_flow_imp.g_varchar2_table(642) := '637A6F764C326470644768315969356A62323076616E46315A584A354C3270786457567965533969624739694C7A6B355A54686D5A6A4669595745335957557A4E44466C4F545269596A6735597A4E6C4F4451314E7A426A4E324D7A595751355A574576';
wwv_flow_imp.g_varchar2_table(643) := '63334A6A4C3256325A5735304C6D707A493077314E7A4D74544455334E5678754943416749484A6C644856796269426964585230623234674A694178494438674D53413649474A31644852766269416D494449675079417A49446F674B474A3164485276';
wwv_flow_imp.g_varchar2_table(644) := '6269416D494451675079417949446F674D436B375847346749483163626E3163626C78755A6E567559335270623234675A32563054325A6D633256304943686C62436B67653178754943423259584967636D566A64434139494756734C6D646C64454A76';
wwv_flow_imp.g_varchar2_table(645) := '6457356B6157356E513278705A573530556D566A644367704F317875494342795A585231636D346765317875494341674947786C5A6E513649484A6C593351756247566D644341724947646C64464E6A636D39736243676E63324E79623278735447566D';
wwv_flow_imp.g_varchar2_table(646) := '64436373494364775957646C5745396D5A6E4E6C644363704C467875494341674948527663446F67636D566A64433530623341674B79426E5A58525459334A766247776F4A334E6A636D39736246527663436373494364775957646C5755396D5A6E4E6C';
wwv_flow_imp.g_varchar2_table(647) := '6443637058473467494830375847353958473563626D5A31626D4E30615739754947646C64464E6A636D39736243416F63324E796232787355484A766343776762325A6D6332563055484A7663436B6765317875494342705A69416F64486C775A57396D';
wwv_flow_imp.g_varchar2_table(648) := '4947647362324A68624674765A6D5A7A5A585251636D397758534168505430674A3356755A47566D6157356C5A4363704948746362694167494342795A585231636D34675A327876596D46735732396D5A6E4E6C64464279623342644F31787549434239';
wwv_flow_imp.g_varchar2_table(649) := '5847346749476C6D4943686B62324E3162575675644556735A57316C626E5175593278705A573530534756705A3268304B5342375847346749434167636D563064584A7549475276593356745A5735305257786C625756756446747A59334A7662477851';
wwv_flow_imp.g_varchar2_table(650) := '636D3977585474636269416766567875494342795A585231636D34675A47396A4C6D4A765A486C6263324E796232787355484A76634630375847353958473563626D5A31626D4E30615739754947646C644556735A57316C626E52435A576870626D5251';
wwv_flow_imp.g_varchar2_table(651) := '62326C756443416F63473970626E51734948677349486B70494874636269416763473970626E51675053427762326C7564434238664342376654746362694167646D467949484E305958526C4944306763473970626E51755932786863334E4F5957316C';
wwv_flow_imp.g_varchar2_table(652) := '494878384943636E4F31787549434232595849675A5777375847346749484276615735304C6D4E7359584E7A546D46745A5341725053416E494764314C5768705A47556E4F3178754943426C62434139494752765979356C624756745A573530526E4A76';
wwv_flow_imp.g_varchar2_table(653) := '62564276615735304B48677349486B704F3178754943427762326C756443356A6247467A63303568625755675053427A644746305A54746362694167636D563064584A75494756734F317875665678755847356D6457356A64476C76626942755A585A6C';
wwv_flow_imp.g_varchar2_table(654) := '6369416F4B53423749484A6C644856796269426D5957787A5A547367665678755A6E567559335270623234675957783359586C7A4943677049487367636D563064584A75494852796457553749483163626D5A31626D4E30615739754947646C64464A6C';
wwv_flow_imp.g_varchar2_table(655) := '59335258615752306143416F636D566A64436B67657942795A585231636D3467636D566A6443353361575230614342386643416F636D566A644335796157646F6443417449484A6C593351756247566D64436B3749483163626D5A31626D4E3061573975';
wwv_flow_imp.g_varchar2_table(656) := '4947646C64464A6C593352495A576C6E614851674B484A6C5933517049487367636D563064584A7549484A6C59335175614756705A32683049487838494368795A574E304C6D4A76644852766253417449484A6C59335175644739774B54736766567875';
wwv_flow_imp.g_varchar2_table(657) := '5A6E567559335270623234675A325630554746795A5735304943686C62436B67657942795A585231636D34675A577775634746795A573530546D396B5A534139505430675A47396A49443867626E567362434136494756734C6E4268636D567564453576';
wwv_flow_imp.g_varchar2_table(658) := '5A47553749483163626D5A31626D4E306157397549476C7A53573577645851674B4756734B53423749484A6C644856796269426C624335305957644F5957316C494430395053416E535535515656516E49487838494756734C6E52685A30356862575567';
wwv_flow_imp.g_varchar2_table(659) := '50543039494364555256685551564A4651536367664877675A5777756447466E546D46745A534139505430674A314E4654455644564363676648776761584E465A476C3059574A735A53686C62436B3749483163626D5A31626D4E306157397549476C7A';
wwv_flow_imp.g_varchar2_table(660) := '5257527064474669624755674B4756734B5342375847346749476C6D494367685A57777049487367636D563064584A7549475A6862484E6C4F794239494338764947357649484268636D567564484D67643256795A53426C5A476C3059574A735A567875';
wwv_flow_imp.g_varchar2_table(661) := '494342705A69416F5A57777559323975644756756445566B61585268596D786C494430395053416E5A6D46736332556E4B53423749484A6C644856796269426D5957787A5A547367665341764C79427A644739774948526F5A5342736232397264584263';
wwv_flow_imp.g_varchar2_table(662) := '62694167615759674B4756734C6D4E76626E526C626E52465A476C3059574A735A534139505430674A3352796457556E4B53423749484A6C6448567962694230636E566C4F7942394943387649475A766457356B4947456759323975644756756445566B';
wwv_flow_imp.g_varchar2_table(663) := '61585268596D786C494756735A57316C626E5167615734676447686C49474E6F59576C755847346749484A6C64485679626942706330566B61585268596D786C4B47646C64464268636D56756443686C62436B704F7941764C79426A623235305A573530';
wwv_flow_imp.g_varchar2_table(664) := '52575270644746696247556761584D67633256304948527649436470626D686C636D6C304A317875665678755847356D6457356A64476C76626942755A586830525777674B4756734B5342375847346749484A6C644856796269426C624335755A586830';
wwv_flow_imp.g_varchar2_table(665) := '5257786C6257567564464E70596D7870626D636766487767625746756457467362486B6F4B547463626941675A6E56755933527062323467625746756457467362486B674B436B67653178754943416749485A686369427A61574A736157356E49443067';
wwv_flow_imp.g_varchar2_table(666) := '5A57773758473467494341675A47386765317875494341674943416763326C6962476C755A79413949484E70596D7870626D6375626D563464464E70596D7870626D633758473467494341676653423361476C735A53416F63326C6962476C755A79416D';
wwv_flow_imp.g_varchar2_table(667) := '4A69427A61574A736157356E4C6D35765A4756556558426C49434539505341784B54746362694167494342795A585231636D346763326C6962476C755A7A74636269416766567875665678755847356D6457356A64476C766269426E5A585246646D5675';
wwv_flow_imp.g_varchar2_table(668) := '64456876633351674B47557049487463626941674C79386762323467644739315932686C626D51675A585A6C626E51734948646C49476868646D55676447386764584E6C4947426C4C6D4E6F5957356E5A5752556233566A6147567A5946787549434176';
wwv_flow_imp.g_varchar2_table(669) := '4C79427A5A5755676148523063446F764C334E3059574E7262335A6C636D5A7362336375593239744C3346315A584E3061573975637938334D546B794E54597A4C33527664574E6F5A57356B4C5756325A5735304C5842796233426C636E52705A584E63';
wwv_flow_imp.g_varchar2_table(670) := '626941674C7938676332566C494768306448427A4F6938765A326C30614856694C6D4E76625339695A585A68593346315953396B636D466E645778684C326C7A6333566C6379387A4E467875494342705A69416F5A53353059584A6E5A5852556233566A';
wwv_flow_imp.g_varchar2_table(671) := '6147567A4943596D49475575644746795A325630564739315932686C637935735A57356E644767704948746362694167494342795A585231636D34675A53353059584A6E5A5852556233566A6147567A577A42644F317875494342395847346749476C6D';
wwv_flow_imp.g_varchar2_table(672) := '4943686C4C6D4E6F5957356E5A5752556233566A6147567A4943596D4947557559326868626D646C5A46527664574E6F5A584D75624756755A33526F4B5342375847346749434167636D563064584A754947557559326868626D646C5A46527664574E6F';
wwv_flow_imp.g_varchar2_table(673) := '5A584E624D463037584734674948316362694167636D563064584A75494755375847353958473563626D5A31626D4E30615739754947646C64454E7662334A6B4943686A623239795A4377675A536B676531787549434232595849676147397A64434139';
wwv_flow_imp.g_varchar2_table(674) := '4947646C644556325A5735305347397A6443686C4B54746362694167646D46794947317063334E4E595841675053423758473467494341676347466E5A5667364943646A62476C6C626E52594A7977674C7938675355553458473467494341676347466E';
wwv_flow_imp.g_varchar2_table(675) := '5A566B364943646A62476C6C626E525A4A7941764C79424A52546863626941676654746362694167615759674B474E7662334A6B49476C754947317063334E4E595841674A6959674953686A623239795A4342706269426F62334E304B53416D4A694274';
wwv_flow_imp.g_varchar2_table(676) := '61584E7A5457467757324E7662334A6B585342706269426F62334E304B534237584734674943416759323976636D51675053427461584E7A5457467757324E7662334A6B585474636269416766567875494342795A585231636D34676147397A6446746A';
wwv_flow_imp.g_varchar2_table(677) := '623239795A4630375847353958473563626D31765A4856735A53356C65484276636E527A494430675A484A685A3356735954746362694973496D31765A4856735A53356C65484276636E527A494430675A6E56755933527062323467595852765953416F';
wwv_flow_imp.g_varchar2_table(678) := '5953776762696B67657942795A585231636D346751584A7959586B7563484A76644739306558426C4C6E4E7361574E6C4C6D4E686247776F5953776762696B37494831636269497349696431633255676333527961574E304A7A7463626C7875646D4679';
wwv_flow_imp.g_varchar2_table(679) := '494852705932743549443067636D567864576C795A53676E64476C6A61336B6E4B547463626C78756257396B6457786C4C6D56346347397964484D675053426D6457356A64476C766269426B5A574A766457356A5A53416F5A6D3473494746795A334D73';
wwv_flow_imp.g_varchar2_table(680) := '49474E3065436B6765317875494342705A69416F49575A754B53423749484A6C64485679626A7367665678754943423061574E726553686D6457356A64476C7662694279645734674B436B67653178754943416749475A754C6D4677634778354B474E30';
wwv_flow_imp.g_varchar2_table(681) := '6543423866434275645778734C434268636D647A49487838494674644B5474636269416766536B37584735394F317875496977694A33567A5A53427A64484A705933516E4F3178755847353259584967595852765953413949484A6C63585670636D556F';
wwv_flow_imp.g_varchar2_table(682) := '4A3246306232456E4B547463626E5A686369426B5A574A766457356A5A53413949484A6C63585670636D556F4A7934765A475669623356755932556E4B547463626C78756257396B6457786C4C6D56346347397964484D675053426D6457356A64476C76';
wwv_flow_imp.g_varchar2_table(683) := '6269426C62576C30644756794943683061476C755A797767623342306157397563796B6765317875494342325958496762334230637941394947397764476C76626E4D6766487767653330375847346749485A686369426C646E51675053423766547463';
wwv_flow_imp.g_varchar2_table(684) := '62694167615759674B48526F6157356E4944303950534231626D526C5A6D6C755A5751704948736764476870626D63675053423766547367665678754943423061476C755A7935766269413949475A31626D4E3061573975494368306558426C4C43426D';
wwv_flow_imp.g_varchar2_table(685) := '62696B67653178754943416749476C6D494367685A585A3057335235634756644B53423758473467494341674943426C646E526264486C775A563067505342625A6D35644F31787549434167494830675A57787A5A53423758473467494341674943426C';
wwv_flow_imp.g_varchar2_table(686) := '646E526264486C775A5630756348567A6143686D62696B375847346749434167665678754943416749484A6C644856796269423061476C755A7A746362694167665474636269416764476870626D63756232356A5A53413949475A31626D4E3061573975';
wwv_flow_imp.g_varchar2_table(687) := '494368306558426C4C43426D62696B67653178754943416749475A754C6C3976626D4E6C4944306764484A315A5473674C79386764476870626D637562325A6D4B475A754B53427A64476C736243423362334A7263794663626941674943423061476C75';
wwv_flow_imp.g_varchar2_table(688) := '5A793576626968306558426C4C43426D62696B375847346749434167636D563064584A754948526F6157356E4F317875494342394F3178754943423061476C755A7935765A6D59675053426D6457356A64476C766269416F64486C775A5377675A6D3470';
wwv_flow_imp.g_varchar2_table(689) := '4948746362694167494342325958496759794139494746795A3356745A573530637935735A57356E644767375847346749434167615759674B474D6750543039494445704948746362694167494341674947526C624756305A53426C646E526264486C77';
wwv_flow_imp.g_varchar2_table(690) := '5A56303758473467494341676653426C62484E6C49476C6D4943686A49443039505341774B53423758473467494341674943426C646E5167505342376654746362694167494342394947567363325567653178754943416749434167646D467949475630';
wwv_flow_imp.g_varchar2_table(691) := '494430675A585A3057335235634756644F3178754943416749434167615759674B43466C64436B67657942795A585231636D346764476870626D6337494831636269416749434167494756304C6E4E7762476C6A5A53686C64433570626D526C6545396D';
wwv_flow_imp.g_varchar2_table(692) := '4B475A754B5377674D536B375847346749434167665678754943416749484A6C644856796269423061476C755A7A746362694167665474636269416764476870626D63755A5731706443413949475A31626D4E3061573975494367704948746362694167';
wwv_flow_imp.g_varchar2_table(693) := '494342325958496759584A6E63794139494746306232456F59584A6E6457316C626E527A4B54746362694167494342795A585231636D346764476870626D63755A5731706448526C636C4E755958427A614739304B4746795A334D75633268705A6E516F';
wwv_flow_imp.g_varchar2_table(694) := '4B536B755958427762486B6F644768706379776759584A6E63796B375847346749483037584734674948526F6157356E4C6D5674615852305A584A54626D4677633268766443413949475A31626D4E3061573975494368306558426C4B53423758473467';
wwv_flow_imp.g_varchar2_table(695) := '49434167646D467949475630494430674B475632644674306558426C585342386643426258536B75633278705932556F4D436B375847346749434167636D563064584A7549475A31626D4E30615739754943677049487463626941674943416749485A68';
wwv_flow_imp.g_varchar2_table(696) := '63694268636D647A494430675958527659536868636D64316257567564484D704F3178754943416749434167646D467949474E30654341394948526F61584D676648776764476870626D63375847346749434167494342705A69416F64486C775A534139';
wwv_flow_imp.g_varchar2_table(697) := '505430674A325679636D39794A79416D4A6942766348527A4C6E526F636D393363794168505430675A6D4673633255674A695967495756304C6D786C626D643061436B676579423061484A7664794268636D647A4C6D786C626D64306143413950543067';
wwv_flow_imp.g_varchar2_table(698) := '4D53412F494746795A334E624D4630674F694268636D647A4F79423958473467494341674943426C6443356D62334A4659574E6F4B475A31626D4E306157397549475674615852305A5849674B4778706333526C62696B67653178754943416749434167';
wwv_flow_imp.g_varchar2_table(699) := '494342705A69416F623342306379356863336C7559796B676579426B5A574A766457356A5A53687361584E305A573473494746795A334D7349474E3065436B37494830675A57787A5A534237494778706333526C62693568634842736553686A64486773';
wwv_flow_imp.g_varchar2_table(700) := '494746795A334D704F79423958473467494341674943416749476C6D4943687361584E305A57347558323975593255704948736764476870626D637562325A6D4B48523563475573494778706333526C62696B3749483163626941674943416749483070';
wwv_flow_imp.g_varchar2_table(701) := '4F3178754943416749434167636D563064584A754948526F6157356E4F317875494341674948303758473467494830375847346749484A6C644856796269423061476C755A7A7463626E3037584734694C43496E64584E6C49484E30636D6C6A64436337';
wwv_flow_imp.g_varchar2_table(702) := '58473563626E5A686369426A64584E3062323146646D56756443413949484A6C63585670636D556F4A324E31633352766253316C646D5675644363704F317875646D4679494756325A5735306257467749443067636D567864576C795A53676E4C69396C';
wwv_flow_imp.g_varchar2_table(703) := '646D567564473168634363704F317875646D467949475276597941394947647362324A686243356B62324E316257567564447463626E5A68636942685A475246646D5675644341394947466B5A4556325A5735305257467A65547463626E5A6863694279';
wwv_flow_imp.g_varchar2_table(704) := '5A573176646D5646646D56756443413949484A6C625739325A5556325A5735305257467A65547463626E5A686369426F59584A6B5132466A614755675053426258547463626C7875615759674B43466E62473969595777755957526B52585A6C626E524D';
wwv_flow_imp.g_varchar2_table(705) := '61584E305A57356C63696B6765317875494342685A475246646D5675644341394947466B5A4556325A573530534746795A44746362694167636D567462335A6C52585A6C626E5167505342795A573176646D5646646D567564456868636D513758473539';
wwv_flow_imp.g_varchar2_table(706) := '58473563626D31765A4856735A53356C65484276636E527A4944306765317875494342685A4751364947466B5A4556325A5735304C467875494342795A573176646D553649484A6C625739325A5556325A5735304C4678754943426D59574A7961574E68';
wwv_flow_imp.g_varchar2_table(707) := '6447553649475A68596E4A70593246305A5556325A573530584735394F3178755847356D6457356A64476C76626942685A475246646D56756445566863336B674B4756734C4342306558426C4C43426D6269776759324677644856796157356E4B534237';
wwv_flow_imp.g_varchar2_table(708) := '5847346749484A6C644856796269426C624335685A475246646D5675644578706333526C626D56794B4852356347557349475A754C43426A5958423064584A70626D63704F317875665678755847356D6457356A64476C76626942685A475246646D5675';
wwv_flow_imp.g_varchar2_table(709) := '64456868636D51674B4756734C4342306558426C4C43426D62696B6765317875494342795A585231636D34675A5777755958523059574E6F52585A6C626E516F4A3239754A7941724948523563475573494864795958416F5A5777734948523563475573';
wwv_flow_imp.g_varchar2_table(710) := '49475A754B536B375847353958473563626D5A31626D4E306157397549484A6C625739325A5556325A5735305257467A6553416F5A577773494852356347557349475A754C43426A5958423064584A70626D63704948746362694167636D563064584A75';
wwv_flow_imp.g_varchar2_table(711) := '494756734C6E4A6C625739325A5556325A57353054476C7A644756755A58496F64486C775A5377675A6D347349474E6863485231636D6C755A796B375847353958473563626D5A31626D4E306157397549484A6C625739325A5556325A57353053474679';
wwv_flow_imp.g_varchar2_table(712) := '5A43416F5A577773494852356347557349475A754B5342375847346749485A686369427361584E305A57356C636941394948567564334A686343686C6243776764486C775A5377675A6D34704F317875494342705A69416F62476C7A644756755A584970';
wwv_flow_imp.g_varchar2_table(713) := '4948746362694167494342795A585231636D34675A5777755A47563059574E6F52585A6C626E516F4A3239754A7941724948523563475573494778706333526C626D56794B5474636269416766567875665678755847356D6457356A64476C766269426D';
wwv_flow_imp.g_varchar2_table(714) := '59574A7961574E6864475646646D56756443416F5A5777734948523563475573494731765A4756734B5342375847346749485A686369426C494430675A585A6C626E5274595841756157356B5A5868505A6968306558426C4B534139505430674C544567';
wwv_flow_imp.g_varchar2_table(715) := '507942745957746C5133567A6447397452585A6C626E516F4B53413649473168613256446247467A63326C6A52585A6C626E516F4B54746362694167615759674B4756734C6D52706333426864474E6F52585A6C626E517049487463626941674943426C';
wwv_flow_imp.g_varchar2_table(716) := '6243356B61584E775958526A614556325A5735304B4755704F3178754943423949475673633255676531787549434167494756734C6D5A70636D5646646D56756443676E6232346E4943736764486C775A5377675A536B37584734674948316362694167';
wwv_flow_imp.g_varchar2_table(717) := '5A6E56755933527062323467625746725A554E7359584E7A61574E46646D56756443416F4B5342375847346749434167646D4679494755375847346749434167615759674B4752765979356A636D566864475646646D567564436B676531787549434167';
wwv_flow_imp.g_varchar2_table(718) := '494341675A534139494752765979356A636D566864475646646D56756443676E52585A6C626E516E4B54746362694167494341674947557561573570644556325A5735304B48523563475573494852796457557349485279645755704F31787549434167';
wwv_flow_imp.g_varchar2_table(719) := '494830675A57787A5A5342705A69416F5A47396A4C6D4E795A5746305A5556325A57353054324A715A574E304B53423758473467494341674943426C494430675A47396A4C6D4E795A5746305A5556325A57353054324A715A574E304B436B3758473467';
wwv_flow_imp.g_varchar2_table(720) := '49434167665678754943416749484A6C644856796269426C4F317875494342395847346749475A31626D4E3061573975494731686132564464584E3062323146646D56756443416F4B5342375847346749434167636D563064584A754947356C6479426A';
wwv_flow_imp.g_varchar2_table(721) := '64584E3062323146646D5675644368306558426C4C4342374947526C6447467062446F676257396B5A57776766536B375847346749483163626E3163626C78755A6E5675593352706232346764334A686348426C636B5A6859335276636E6B674B475673';
wwv_flow_imp.g_varchar2_table(722) := '4C4342306558426C4C43426D62696B6765317875494342795A585231636D34675A6E5675593352706232346764334A686348426C6369416F62334A705A326C7559577846646D567564436B67653178754943416749485A686369426C4944306762334A70';
wwv_flow_imp.g_varchar2_table(723) := '5A326C7559577846646D5675644342386643426E62473969595777755A585A6C626E513758473467494341675A53353059584A6E5A5851675053426C4C6E5268636D646C644342386643426C4C6E4E79593056735A57316C626E51375847346749434167';
wwv_flow_imp.g_varchar2_table(724) := '5A533577636D56325A5735305247566D59585673644341394947557563484A6C646D56756445526C5A6D463162485167664877675A6E5675593352706232346763484A6C646D56756445526C5A6D4631624851674B436B676579426C4C6E4A6C64485679';
wwv_flow_imp.g_varchar2_table(725) := '626C5A686248566C494430675A6D4673633255374948303758473467494341675A53357A6447397755484A766347466E59585270623234675053426C4C6E4E3062334251636D39775957646864476C76626942386643426D6457356A64476C766269427A';
wwv_flow_imp.g_varchar2_table(726) := '6447397755484A766347466E59585270623234674B436B676579426C4C6D4E68626D4E6C62454A31596D4A735A53413949485279645755374948303758473467494341675A53353361476C6A61434139494755756432687059326767664877675A533572';
wwv_flow_imp.g_varchar2_table(727) := '5A586C446232526C4F3178754943416749475A754C6D4E686247776F5A577773494755704F317875494342394F317875665678755847356D6457356A64476C7662694233636D46774943686C6243776764486C775A5377675A6D34704948746362694167';
wwv_flow_imp.g_varchar2_table(728) := '646D467949486479595842775A58496750534231626E64795958416F5A577773494852356347557349475A754B53423866434233636D467763475679526D466A644739796553686C6243776764486C775A5377675A6D34704F3178754943426F59584A6B';
wwv_flow_imp.g_varchar2_table(729) := '5132466A614755756348567A61436837584734674943416764334A686348426C636A6F6764334A686348426C63697863626941674943426C624756745A5735304F69426C6243786362694167494342306558426C4F6942306558426C4C46787549434167';
wwv_flow_imp.g_varchar2_table(730) := '49475A754F69426D626C7875494342394B54746362694167636D563064584A7549486479595842775A5849375847353958473563626D5A31626D4E30615739754948567564334A686343416F5A577773494852356347557349475A754B53423758473467';
wwv_flow_imp.g_varchar2_table(731) := '49485A6863694270494430675A6D6C755A43686C6243776764486C775A5377675A6D34704F317875494342705A69416F61536B67653178754943416749485A6863694233636D46776347567949443067614746795A454E685932686C57326C644C6E6479';
wwv_flow_imp.g_varchar2_table(732) := '595842775A5849375847346749434167614746795A454E685932686C4C6E4E7762476C6A5A5368704C4341784B5473674C7938675A6E4A6C5A53423163434268494852685A4342765A6942745A573176636E6C6362694167494342795A585231636D3467';
wwv_flow_imp.g_varchar2_table(733) := '64334A686348426C636A74636269416766567875665678755847356D6457356A64476C766269426D6157356B4943686C6243776764486C775A5377675A6D34704948746362694167646D467949476B7349476C305A5730375847346749475A766369416F';
wwv_flow_imp.g_varchar2_table(734) := '615341394944413749476B675043426F59584A6B5132466A61475575624756755A33526F4F7942704B7973704948746362694167494342706447567449443067614746795A454E685932686C57326C644F3178754943416749476C6D4943687064475674';
wwv_flow_imp.g_varchar2_table(735) := '4C6D56735A57316C626E516750543039494756734943596D49476C305A57307564486C775A5341395054306764486C775A53416D4A694270644756744C6D5A75494430395053426D62696B67653178754943416749434167636D563064584A7549476B37';
wwv_flow_imp.g_varchar2_table(736) := '5847346749434167665678754943423958473539584734694C43496E64584E6C49484E30636D6C6A6443633758473563626E5A686369426C646D56756447316863434139494674644F317875646D4679494756325A573530626D46745A5341394943636E';
wwv_flow_imp.g_varchar2_table(737) := '4F317875646D467949484A766269413949433965623234764F3178755847356D623349674B4756325A573530626D46745A5342706269426E62473969595777704948746362694167615759674B484A76626935305A584E304B4756325A573530626D4674';
wwv_flow_imp.g_varchar2_table(738) := '5A536B7049487463626941674943426C646D5675644731686343357764584E6F4B4756325A573530626D46745A53357A62476C6A5A5367794B536B375847346749483163626E3163626C78756257396B6457786C4C6D56346347397964484D675053426C';
wwv_flow_imp.g_varchar2_table(739) := '646D5675644731686344746362694973496C7875646D46794945356864476C325A554E3163335276625556325A573530494430675A327876596D46734C6B4E3163335276625556325A5735304F3178755847356D6457356A64476C76626942316332564F';
wwv_flow_imp.g_varchar2_table(740) := '59585270646D55674B436B676531787549434230636E6B67653178754943416749485A686369427749443067626D56334945356864476C325A554E3163335276625556325A5735304B43646A5958516E4C4342374947526C6447467062446F676579426D';
wwv_flow_imp.g_varchar2_table(741) := '62323836494364695958496E4948306766536B375847346749434167636D563064584A754943416E593246304A79413950543067634335306558426C4943596D494364695958496E49443039505342774C6D526C644746706243356D6232383758473467';
wwv_flow_imp.g_varchar2_table(742) := '4948306759324630593267674B475570494874636269416766567875494342795A585231636D34675A6D4673633255375847353958473563626938714B6C787549436F6751334A7663334D74596E4A7664334E6C636942675133567A6447397452585A6C';
wwv_flow_imp.g_varchar2_table(743) := '626E526749474E76626E4E30636E566A644739794C6C78754943706362694171494768306448427A4F6938765A4756325A577876634756794C6D3176656D6C736247457562334A6E4C3256754C5656544C32527659334D76563256694C30465153533944';
wwv_flow_imp.g_varchar2_table(744) := '64584E3062323146646D56756443354464584E3062323146646D56756446787549437063626941714945427764574A7361574E63626941714C3178755847357462325231624755755A58687762334A30637941394948567A5A55356864476C325A536770';
wwv_flow_imp.g_varchar2_table(745) := '49443867546D463061585A6C5133567A6447397452585A6C626E51674F6C7875584734764C79424A5253412B505341355847346E6457356B5A575A70626D566B4A7941685054306764486C775A57396D49475276593356745A5735304943596D4943646D';
wwv_flow_imp.g_varchar2_table(746) := '6457356A64476C76626963675054303949485235634756765A69426B62324E31625756756443356A636D566864475646646D56756443412F49475A31626D4E306157397549454E3163335276625556325A573530494368306558426C4C43427759584A68';
wwv_flow_imp.g_varchar2_table(747) := '62584D704948746362694167646D4679494755675053426B62324E31625756756443356A636D566864475646646D56756443676E5133567A6447397452585A6C626E516E4B54746362694167615759674B484268636D467463796B676531787549434167';
wwv_flow_imp.g_varchar2_table(748) := '494755756157357064454E3163335276625556325A5735304B4852356347557349484268636D46746379356964574A696247567A4C43427759584A6862584D75593246755932567359574A735A537767634746795957317A4C6D526C6447467062436B37';
wwv_flow_imp.g_varchar2_table(749) := '58473467494830675A57787A5A53423758473467494341675A533570626D6C305133567A6447397452585A6C626E516F64486C775A5377675A6D46736332557349475A6862484E6C4C43423262326C6B494441704F317875494342395847346749484A6C';
wwv_flow_imp.g_varchar2_table(750) := '644856796269426C4F31787566534136584735636269387649456C464944773949446863626D5A31626D4E306157397549454E3163335276625556325A573530494368306558426C4C43427759584A6862584D704948746362694167646D467949475567';
wwv_flow_imp.g_varchar2_table(751) := '5053426B62324E31625756756443356A636D566864475646646D567564453969616D566A644367704F3178754943426C4C6E523563475567505342306558426C4F317875494342705A69416F634746795957317A4B53423758473467494341675A533569';
wwv_flow_imp.g_varchar2_table(752) := '64574A696247567A49443067516D3976624756686269687759584A6862584D75596E5669596D786C63796B3758473467494341675A53356A5957356A5A577868596D786C49443067516D3976624756686269687759584A6862584D755932467559325673';
wwv_flow_imp.g_varchar2_table(753) := '59574A735A536B3758473467494341675A53356B5A585268615777675053427759584A6862584D755A47563059576C734F317875494342394947567363325567653178754943416749475575596E5669596D786C6379413949475A6862484E6C4F317875';
wwv_flow_imp.g_varchar2_table(754) := '4943416749475575593246755932567359574A735A53413949475A6862484E6C4F31787549434167494755755A47563059576C7349443067646D39705A4341774F317875494342395847346749484A6C644856796269426C4F3178756656787549697769';
wwv_flow_imp.g_varchar2_table(755) := '4C793867633268706253426D6233496764584E70626D636763484A765932567A6379427062694269636D393363325679584735325958496763484A765932567A63794139494731765A4856735A53356C65484276636E527A494430676533303758473563';
wwv_flow_imp.g_varchar2_table(756) := '6269387649474E685932686C5A43426D636D39744948646F5958526C646D56794947647362324A686243427063794277636D567A5A57353049484E764948526F595851676447567A64434279645735755A584A7A4948526F595851676333523159694270';
wwv_flow_imp.g_varchar2_table(757) := '644678754C7938675A4739754A335167596E4A6C5957736764476870626D647A4C694167516E56304948646C4947356C5A5751676447386764334A68634342706443427062694268494852796553426A5958526A614342706269426A59584E6C49476C30';
wwv_flow_imp.g_varchar2_table(758) := '49476C7A584734764C794233636D46776347566B49476C7549484E30636D6C6A644342746232526C49474E765A47556764326870593267675A47396C6332346E6443426B5A575A70626D5567595735354947647362324A6862484D754943424A6443647A';
wwv_flow_imp.g_varchar2_table(759) := '49476C7563326C6B5A534268584734764C79426D6457356A64476C76626942695A574E6864584E6C494852796553396A5958526A6147567A4947526C6233423061573170656D55676157346759325679644746706269426C626D6470626D567A4C6C7875';
wwv_flow_imp.g_varchar2_table(760) := '58473532595849675932466A6147566B5532563056476C745A57393164447463626E5A686369426A59574E6F5A57524462475668636C5270625756766458513758473563626D5A31626D4E30615739754947526C5A6D4631624852545A58525561573176';
wwv_flow_imp.g_varchar2_table(761) := '6458516F4B53423758473467494341676447687962336367626D563349455679636D39794B43647A5A5852556157316C62335630494768686379427562335167596D566C6269426B5A575A70626D566B4A796B37584735395847356D6457356A64476C76';
wwv_flow_imp.g_varchar2_table(762) := '6269426B5A575A68645778305132786C59584A556157316C623356304943677049487463626941674943423061484A76647942755A58636752584A796233496F4A324E735A57467956476C745A5739316443426F59584D67626D393049474A6C5A573467';
wwv_flow_imp.g_varchar2_table(763) := '5A47566D6157356C5A4363704F317875665678754B475A31626D4E306157397549436770494874636269416749434230636E6B67653178754943416749434167494342705A69416F64486C775A57396D49484E6C64465270625756766458516750543039';
wwv_flow_imp.g_varchar2_table(764) := '4943646D6457356A64476C7662696370494874636269416749434167494341674943416749474E685932686C5A464E6C6446527062575676645851675053427A5A5852556157316C623356304F3178754943416749434167494342394947567363325567';
wwv_flow_imp.g_varchar2_table(765) := '65317875494341674943416749434167494341675932466A6147566B5532563056476C745A573931644341394947526C5A6D4631624852545A585255615731766458513758473467494341674943416749483163626941674943423949474E6864474E6F';
wwv_flow_imp.g_varchar2_table(766) := '4943686C4B53423758473467494341674943416749474E685932686C5A464E6C6446527062575676645851675053426B5A575A68645778305532563056476C74623356304F31787549434167494831636269416749434230636E6B676531787549434167';
wwv_flow_imp.g_varchar2_table(767) := '49434167494342705A69416F64486C775A57396D49474E735A57467956476C745A57393164434139505430674A325A31626D4E30615739754A796B6765317875494341674943416749434167494341675932466A6147566B5132786C59584A556157316C';
wwv_flow_imp.g_varchar2_table(768) := '62335630494430675932786C59584A556157316C623356304F317875494341674943416749434239494756736332556765317875494341674943416749434167494341675932466A6147566B5132786C59584A556157316C62335630494430675A47566D';
wwv_flow_imp.g_varchar2_table(769) := '5958567364454E735A57467956476C745A5739316444746362694167494341674943416766567875494341674948306759324630593267674B475570494874636269416749434167494341675932466A6147566B5132786C59584A556157316C62335630';
wwv_flow_imp.g_varchar2_table(770) := '494430675A47566D5958567364454E735A57467956476C745A57393164447463626941674943423958473539494367704B5678755A6E56755933527062323467636E567556476C745A5739316443686D645734704948746362694167494342705A69416F';
wwv_flow_imp.g_varchar2_table(771) := '5932466A6147566B5532563056476C745A57393164434139505430676332563056476C745A57393164436B67653178754943416749434167494341764C323576636D31686243426C626E5A70636D39745A573530637942706269427A5957356C49484E70';
wwv_flow_imp.g_varchar2_table(772) := '6448566864476C76626E4E63626941674943416749434167636D563064584A7549484E6C64465270625756766458516F5A6E56754C4341774B547463626941674943423958473467494341674C793867615759676332563056476C745A57393164434233';
wwv_flow_imp.g_varchar2_table(773) := '59584E754A33516759585A6861577868596D786C49474A316443423359584D6762474630644756794947526C5A6D6C755A57526362694167494342705A69416F4B474E685932686C5A464E6C644652706257567664585167505430394947526C5A6D4631';
wwv_flow_imp.g_varchar2_table(774) := '624852545A58525561573176645851676648776749574E685932686C5A464E6C6446527062575676645851704943596D49484E6C644652706257567664585170494874636269416749434167494341675932466A6147566B5532563056476C745A573931';
wwv_flow_imp.g_varchar2_table(775) := '6443413949484E6C64465270625756766458513758473467494341674943416749484A6C644856796269427A5A5852556157316C623356304B475A31626977674D436B375847346749434167665678754943416749485279655342375847346749434167';
wwv_flow_imp.g_varchar2_table(776) := '49434167494338764948646F5A5734676432686C6269427A6232316C596D396B6553426F59584D6763324E795A58646C5A4342336158526F49484E6C644652706257567664585167596E56304947357649456B75525334676257466B5A47356C63334E63';
wwv_flow_imp.g_varchar2_table(777) := '626941674943416749434167636D563064584A7549474E685932686C5A464E6C64465270625756766458516F5A6E56754C4341774B547463626941674943423949474E6864474E6F4B47557065317875494341674943416749434230636E6B6765317875';
wwv_flow_imp.g_varchar2_table(778) := '494341674943416749434167494341674C7938675632686C626942335A534268636D556761573467535335464C694269645851676447686C49484E6A636D6C776443426F59584D67596D566C6269426C646D46735A57516763323867535335464C69426B';
wwv_flow_imp.g_varchar2_table(779) := '6232567A626964304948527964584E304948526F5A53426E624739695957776762324A715A574E304948646F5A573467593246736247566B49473576636D31686247783558473467494341674943416749434167494342795A585231636D34675932466A';
wwv_flow_imp.g_varchar2_table(780) := '6147566B5532563056476C745A5739316443356A595778734B4735316247777349475A31626977674D436B3758473467494341674943416749483067593246305932676F5A536C3758473467494341674943416749434167494341764C79427A5957316C';
wwv_flow_imp.g_varchar2_table(781) := '4947467A4947466962335A6C49474A31644342336147567549476C304A334D67595342325A584A7A615739754947396D49456B7552533467644768686443427464584E3049476868646D55676447686C4947647362324A6862434276596D706C59335167';
wwv_flow_imp.g_varchar2_table(782) := '5A6D39794943643061476C7A4A797767614739775A6E567362486B676233567949474E76626E526C6548516759323979636D566A644342766447686C636E6470633255676158516764326C736243423061484A76647942684947647362324A686243426C';
wwv_flow_imp.g_varchar2_table(783) := '636E4A76636C787549434167494341674943416749434167636D563064584A7549474E685932686C5A464E6C644652706257567664585175593246736243683061476C7A4C43426D64573473494441704F31787549434167494341674943423958473467';
wwv_flow_imp.g_varchar2_table(784) := '494341676656787558473563626E3163626D5A31626D4E306157397549484A31626B4E735A57467956476C745A5739316443687459584A725A5849704948746362694167494342705A69416F5932466A6147566B5132786C59584A556157316C62335630';
wwv_flow_imp.g_varchar2_table(785) := '494430395053426A62475668636C52706257567664585170494874636269416749434167494341674C79397562334A74595777675A57353261584A766257567564484D6761573467633246755A53427A61585231595852706232357A5847346749434167';
wwv_flow_imp.g_varchar2_table(786) := '4943416749484A6C644856796269426A62475668636C5270625756766458516F62574679613256794B547463626941674943423958473467494341674C793867615759675932786C59584A556157316C62335630494864686332346E64434268646D4670';
wwv_flow_imp.g_varchar2_table(787) := '6247466962475567596E56304948646863794273595852305A5849675A47566D6157356C5A4678754943416749476C6D4943676F5932466A6147566B5132786C59584A556157316C62335630494430395053426B5A575A68645778305132786C59584A55';
wwv_flow_imp.g_varchar2_table(788) := '6157316C62335630494878384943466A59574E6F5A57524462475668636C527062575676645851704943596D49474E735A57467956476C745A57393164436B676531787549434167494341674943426A59574E6F5A57524462475668636C527062575676';
wwv_flow_imp.g_varchar2_table(789) := '645851675053426A62475668636C5270625756766458513758473467494341674943416749484A6C644856796269426A62475668636C5270625756766458516F62574679613256794B5474636269416749434239584734674943416764484A3549487463';
wwv_flow_imp.g_varchar2_table(790) := '6269416749434167494341674C7938676432686C626942336147567549484E766257566962325235494768686379427A59334A6C6432566B49486470644767676332563056476C745A5739316443426964585167626D3867535335464C6942745957526B';
wwv_flow_imp.g_varchar2_table(791) := '626D567A633178754943416749434167494342795A585231636D34675932466A6147566B5132786C59584A556157316C623356304B473168636D746C63696B3758473467494341676653426A5958526A6143416F5A536C37584734674943416749434167';
wwv_flow_imp.g_varchar2_table(792) := '494852796553423758473467494341674943416749434167494341764C794258614756754948646C494746795A5342706269424A4C6B557549474A31644342306147556763324E796158423049476868637942695A575675494756325957786C5A43427A';
wwv_flow_imp.g_varchar2_table(793) := '6279424A4C6B5575494752765A584E754A3351674948527964584E304948526F5A53426E624739695957776762324A715A574E304948646F5A573467593246736247566B49473576636D3168624778355847346749434167494341674943416749434279';
wwv_flow_imp.g_varchar2_table(794) := '5A585231636D34675932466A6147566B5132786C59584A556157316C623356304C6D4E686247776F626E56736243776762574679613256794B5474636269416749434167494341676653426A5958526A6143416F5A536C37584734674943416749434167';
wwv_flow_imp.g_varchar2_table(795) := '49434167494341764C79427A5957316C4947467A4947466962335A6C49474A31644342336147567549476C304A334D67595342325A584A7A615739754947396D49456B7552533467644768686443427464584E3049476868646D55676447686C49476473';
wwv_flow_imp.g_varchar2_table(796) := '62324A6862434276596D706C593351675A6D39794943643061476C7A4A797767614739775A6E567362486B676233567949474E76626E526C6548516759323979636D566A644342766447686C636E6470633255676158516764326C736243423061484A76';
wwv_flow_imp.g_varchar2_table(797) := '647942684947647362324A686243426C636E4A7663693563626941674943416749434167494341674943387649464E7662575567646D567963326C76626E4D6762325967535335464C69426F59585A6C494752705A6D5A6C636D5675644342796457786C';
wwv_flow_imp.g_varchar2_table(798) := '6379426D623349675932786C59584A556157316C6233563049485A7A49484E6C6446527062575676645852636269416749434167494341674943416749484A6C644856796269426A59574E6F5A57524462475668636C5270625756766458517559324673';
wwv_flow_imp.g_varchar2_table(799) := '6243683061476C7A4C43427459584A725A5849704F31787549434167494341674943423958473467494341676656787558473563626C787566567875646D4679494846315A58566C494430675731303758473532595849675A484A6861573570626D6367';
wwv_flow_imp.g_varchar2_table(800) := '5053426D5957787A5A547463626E5A686369426A64584A795A5735305558566C6457553758473532595849676358566C6457564A626D526C65434139494330784F3178755847356D6457356A64476C766269426A62475668626C5677546D563464465270';
wwv_flow_imp.g_varchar2_table(801) := '5932736F4B5342375847346749434167615759674B43466B636D4670626D6C755A7942386643416859335679636D5675644646315A58566C4B53423758473467494341674943416749484A6C64485679626A746362694167494342395847346749434167';
wwv_flow_imp.g_varchar2_table(802) := '5A484A6861573570626D63675053426D5957787A5A54746362694167494342705A69416F59335679636D5675644646315A58566C4C6D786C626D643061436B6765317875494341674943416749434278645756315A53413949474E31636E4A6C626E5252';
wwv_flow_imp.g_varchar2_table(803) := '645756315A53356A6232356A5958516F6358566C645755704F31787549434167494830675A57787A5A534237584734674943416749434167494846315A58566C5357356B5A586767505341744D5474636269416749434239584734674943416761575967';
wwv_flow_imp.g_varchar2_table(804) := '4B4846315A58566C4C6D786C626D643061436B676531787549434167494341674943426B636D4670626C46315A58566C4B436B37584734674943416766567875665678755847356D6457356A64476C766269426B636D4670626C46315A58566C4B436B67';
wwv_flow_imp.g_varchar2_table(805) := '653178754943416749476C6D4943686B636D4670626D6C755A796B67653178754943416749434167494342795A585231636D34375847346749434167665678754943416749485A68636942306157316C6233563049443067636E567556476C745A573931';
wwv_flow_imp.g_varchar2_table(806) := '6443686A62475668626C5677546D563464465270593273704F317875494341674947527959576C756157356E4944306764484A315A547463626C78754943416749485A68636942735A57346750534278645756315A5335735A57356E6447673758473467';
wwv_flow_imp.g_varchar2_table(807) := '49434167643268706247556F624756754B53423758473467494341674943416749474E31636E4A6C626E5252645756315A534139494846315A58566C4F317875494341674943416749434278645756315A534139494674644F3178754943416749434167';
wwv_flow_imp.g_varchar2_table(808) := '4943423361476C735A53416F4B797478645756315A556C755A47563449447767624756754B53423758473467494341674943416749434167494342705A69416F59335679636D5675644646315A58566C4B53423758473467494341674943416749434167';
wwv_flow_imp.g_varchar2_table(809) := '494341674943416759335679636D5675644646315A58566C573346315A58566C5357356B5A5868644C6E4A31626967704F317875494341674943416749434167494341676656787549434167494341674943423958473467494341674943416749484631';
wwv_flow_imp.g_varchar2_table(810) := '5A58566C5357356B5A586767505341744D54746362694167494341674943416762475675494430676358566C64575575624756755A33526F4F3178754943416749483163626941674943426A64584A795A5735305558566C645755675053427564577873';
wwv_flow_imp.g_varchar2_table(811) := '4F317875494341674947527959576C756157356E494430675A6D4673633255375847346749434167636E56755132786C59584A556157316C623356304B48527062575676645851704F3178756656787558473577636D396A5A584E7A4C6D356C65485255';
wwv_flow_imp.g_varchar2_table(812) := '61574E72494430675A6E567559335270623234674B475A3162696B67653178754943416749485A6863694268636D647A49443067626D563349454679636D46354B4746795A3356745A573530637935735A57356E644767674C5341784B54746362694167';
wwv_flow_imp.g_varchar2_table(813) := '494342705A69416F59584A6E6457316C626E527A4C6D786C626D64306143412B49444570494874636269416749434167494341675A6D39794943683259584967615341394944453749476B6750434268636D64316257567564484D75624756755A33526F';
wwv_flow_imp.g_varchar2_table(814) := '4F7942704B7973704948746362694167494341674943416749434167494746795A334E6261534174494446644944306759584A6E6457316C626E527A57326C644F3178754943416749434167494342395847346749434167665678754943416749484631';
wwv_flow_imp.g_varchar2_table(815) := '5A58566C4C6E42316332676F626D563349456C305A57306F5A6E56754C434268636D647A4B536B375847346749434167615759674B4846315A58566C4C6D786C626D643061434139505430674D53416D4A6941685A484A6861573570626D637049487463';
wwv_flow_imp.g_varchar2_table(816) := '626941674943416749434167636E567556476C745A5739316443686B636D4670626C46315A58566C4B5474636269416749434239584735394F317875584734764C7942324F4342736157746C63794277636D566B61574E3061574A735A534276596D706C';
wwv_flow_imp.g_varchar2_table(817) := '5933527A5847356D6457356A64476C766269424A644756744B475A316269776759584A7959586B7049487463626941674943423061476C7A4C6D5A316269413949475A31626A7463626941674943423061476C7A4C6D4679636D46354944306759584A79';
wwv_flow_imp.g_varchar2_table(818) := '59586B37584735395847354A644756744C6E42796233527664486C775A533579645734675053426D6457356A64476C766269416F4B5342375847346749434167644768706379356D645734755958427762486B6F626E5673624377676447687063793568';
wwv_flow_imp.g_varchar2_table(819) := '636E4A6865536B37584735394F31787563484A765932567A63793530615852735A53413949436469636D3933633256794A7A7463626E427962324E6C63334D75596E4A7664334E6C63694139494852796457553758473577636D396A5A584E7A4C6D5675';
wwv_flow_imp.g_varchar2_table(820) := '64694139494874394F31787563484A765932567A63793568636D6432494430675731303758473577636D396A5A584E7A4C6E5A6C636E4E70623234675053416E4A7A73674C7938675A57317764486B67633352796157356E494852764947463262326C6B';
wwv_flow_imp.g_varchar2_table(821) := '49484A6C5A3256346343427063334E315A584E63626E427962324E6C63334D75646D567963326C76626E4D675053423766547463626C78755A6E56755933527062323467626D3976634367704948743958473563626E427962324E6C63334D7562323467';
wwv_flow_imp.g_varchar2_table(822) := '50534275623239774F31787563484A765932567A637935685A47524D61584E305A57356C63694139494735766233413758473577636D396A5A584E7A4C6D39755932556750534275623239774F31787563484A765932567A637935765A6D596750534275';
wwv_flow_imp.g_varchar2_table(823) := '623239774F31787563484A765932567A637935795A573176646D564D61584E305A57356C63694139494735766233413758473577636D396A5A584E7A4C6E4A6C625739325A554673624578706333526C626D567963794139494735766233413758473577';
wwv_flow_imp.g_varchar2_table(824) := '636D396A5A584E7A4C6D56746158516750534275623239774F31787563484A765932567A63793577636D56775A57356B54476C7A644756755A58496750534275623239774F31787563484A765932567A63793577636D56775A57356B5432356A5A557870';
wwv_flow_imp.g_varchar2_table(825) := '6333526C626D567949443067626D397663447463626C787563484A765932567A6379357361584E305A57356C636E4D675053426D6457356A64476C766269416F626D46745A536B67657942795A585231636D3467573130676656787558473577636D396A';
wwv_flow_imp.g_varchar2_table(826) := '5A584E7A4C6D4A70626D5270626D63675053426D6457356A64476C766269416F626D46745A536B6765317875494341674948526F636D39334947356C64794246636E4A766369676E63484A765932567A637935696157356B6157356E49476C7A49473576';
wwv_flow_imp.g_varchar2_table(827) := '6443427A6458427762334A305A57516E4B547463626E303758473563626E427962324E6C63334D755933646B494430675A6E567559335270623234674B436B67657942795A585231636D34674A79386E4948303758473577636D396A5A584E7A4C6D4E6F';
wwv_flow_imp.g_varchar2_table(828) := '5A476C79494430675A6E567559335270623234674B47527063696B6765317875494341674948526F636D39334947356C64794246636E4A766369676E63484A765932567A6379356A6147527063694270637942756233516763335677634739796447566B';
wwv_flow_imp.g_varchar2_table(829) := '4A796B37584735394F31787563484A765932567A637935316257467A6179413949475A31626D4E30615739754B436B67657942795A585231636D34674D4473676654746362694973496E5A686369427A6153413949485235634756765A69427A5A58524A';
wwv_flow_imp.g_varchar2_table(830) := '6257316C5A476C6864475567505430394943646D6457356A64476C76626963734948527059327337584735705A69416F63326B70494874636269416764476C6A6179413949475A31626D4E30615739754943686D62696B676579427A5A58524A6257316C';
wwv_flow_imp.g_varchar2_table(831) := '5A476C686447556F5A6D34704F7942394F3178756653426C62484E6C494874636269416764476C6A6179413949475A31626D4E30615739754943686D62696B676579427A5A5852556157316C623356304B475A754C4341774B54736766547463626E3163';
wwv_flow_imp.g_varchar2_table(832) := '626C78756257396B6457786C4C6D56346347397964484D675053423061574E724F794973496E5A68636942755A58683056476C6A6179413949484A6C63585670636D556F4A33427962324E6C63334D76596E4A7664334E6C63693571637963704C6D356C';
wwv_flow_imp.g_varchar2_table(833) := '6548525561574E724F317875646D4679494746776347783549443067526E5675593352706232347563484A76644739306558426C4C6D4677634778354F317875646D467949484E7361574E6C4944306751584A7959586B7563484A76644739306558426C';
wwv_flow_imp.g_varchar2_table(834) := '4C6E4E7361574E6C4F317875646D467949476C746257566B615746305A556C6B63794139494874394F317875646D46794947356C6548524A6257316C5A476C686447564A5A434139494441375847356362693876494552505453424255456C7A4C43426D';
wwv_flow_imp.g_varchar2_table(835) := '62334967593239746347786C644756755A584E7A58473563626D56346347397964484D756332563056476C745A5739316443413949475A31626D4E30615739754B436B6765317875494342795A585231636D3467626D563349465270625756766458516F';
wwv_flow_imp.g_varchar2_table(836) := '5958427762486B75593246736243687A5A5852556157316C623356304C4342336157356B62336373494746795A3356745A57353063796B7349474E735A57467956476C745A57393164436B37584735394F3178755A58687762334A306379357A5A58524A';
wwv_flow_imp.g_varchar2_table(837) := '626E526C636E5A686243413949475A31626D4E30615739754B436B6765317875494342795A585231636D3467626D563349465270625756766458516F5958427762486B75593246736243687A5A58524A626E526C636E5A686243776764326C755A473933';
wwv_flow_imp.g_varchar2_table(838) := '4C434268636D64316257567564484D704C43426A62475668636B6C7564475679646D46734B547463626E30375847356C65484276636E527A4C6D4E735A57467956476C745A573931644341395847356C65484276636E527A4C6D4E735A57467953573530';
wwv_flow_imp.g_varchar2_table(839) := '5A584A32595777675053426D6457356A64476C76626968306157316C623356304B534237494852706257567664585175593278766332556F4B54736766547463626C78755A6E5675593352706232346756476C745A573931644368705A4377675932786C';
wwv_flow_imp.g_varchar2_table(840) := '59584A4762696B67653178754943423061476C7A4C6C39705A43413949476C6B4F3178754943423061476C7A4C6C396A62475668636B5A75494430675932786C59584A47626A7463626E3163626C5270625756766458517563484A76644739306558426C';
wwv_flow_imp.g_varchar2_table(841) := '4C6E5675636D566D4944306756476C745A57393164433577636D39306233523563475575636D566D494430675A6E5675593352706232346F4B53423766547463626C5270625756766458517563484A76644739306558426C4C6D4E7362334E6C49443067';
wwv_flow_imp.g_varchar2_table(842) := '5A6E5675593352706232346F4B534237584734674948526F61584D7558324E735A574679526D347559324673624368336157356B623363734948526F61584D7558326C6B4B547463626E30375847356362693876494552765A584D67626D393049484E30';
wwv_flow_imp.g_varchar2_table(843) := '59584A304948526F5A5342306157316C4C43427164584E3049484E6C64484D67645841676447686C4947316C62574A6C636E4D67626D566C5A47566B4C6C78755A58687762334A306379356C626E4A76624777675053426D6457356A64476C7662696870';
wwv_flow_imp.g_varchar2_table(844) := '644756744C4342746332566A63796B67653178754943426A62475668636C5270625756766458516F6158526C62533566615752735A565270625756766458524A5A436B375847346749476C305A57307558326C6B624756556157316C6233563049443067';
wwv_flow_imp.g_varchar2_table(845) := '62584E6C59334D37584735394F3178755847356C65484276636E527A4C6E56755A57357962327873494430675A6E5675593352706232346F6158526C62536B67653178754943426A62475668636C5270625756766458516F6158526C6253356661575273';
wwv_flow_imp.g_varchar2_table(846) := '5A565270625756766458524A5A436B375847346749476C305A57307558326C6B624756556157316C62335630494430674C544537584735394F3178755847356C65484276636E527A4C6C3931626E4A6C5A6B466A64476C325A5341394947563463473979';
wwv_flow_imp.g_varchar2_table(847) := '64484D7559574E3061585A6C494430675A6E5675593352706232346F6158526C62536B67653178754943426A62475668636C5270625756766458516F6158526C62533566615752735A565270625756766458524A5A436B375847356362694167646D4679';
wwv_flow_imp.g_varchar2_table(848) := '4947317A5A574E7A494430676158526C62533566615752735A56527062575676645851375847346749476C6D494368746332566A6379412B505341774B53423758473467494341676158526C62533566615752735A565270625756766458524A5A434139';
wwv_flow_imp.g_varchar2_table(849) := '49484E6C64465270625756766458516F5A6E56755933527062323467623235556157316C623356304B436B67653178754943416749434167615759674B476C305A5730755832397556476C745A57393164436C636269416749434167494341676158526C';
wwv_flow_imp.g_varchar2_table(850) := '62533566623235556157316C623356304B436B3758473467494341676653776762584E6C59334D704F31787549434239584735394F317875584734764C794255614746304A334D67626D393049476876647942756232526C4C6D707A49476C746347786C';
wwv_flow_imp.g_varchar2_table(851) := '6257567564484D6761585167596E56304948526F5A53426C654842766332566B49474677615342706379423061475567633246745A533563626D56346347397964484D7563325630535731745A5752705958526C4944306764486C775A57396D49484E6C';
wwv_flow_imp.g_varchar2_table(852) := '64456C746257566B615746305A5341395054306758434A6D6457356A64476C76626C77694944386763325630535731745A5752705958526C49446F675A6E5675593352706232346F5A6D34704948746362694167646D467949476C6B49443067626D5634';
wwv_flow_imp.g_varchar2_table(853) := '64456C746257566B615746305A556C6B4B7973375847346749485A6863694268636D647A4944306759584A6E6457316C626E527A4C6D786C626D643061434138494449675079426D5957787A5A53413649484E7361574E6C4C6D4E686247776F59584A6E';
wwv_flow_imp.g_varchar2_table(854) := '6457316C626E527A4C4341784B547463626C7875494342706257316C5A476C686447564A5A484E62615752644944306764484A315A547463626C7875494342755A58683056476C6A6179686D6457356A64476C7662694276626B356C6548525561574E72';
wwv_flow_imp.g_varchar2_table(855) := '4B436B67653178754943416749476C6D494368706257316C5A476C686447564A5A484E62615752644B5342375847346749434167494341764C79426D6269356A595778734B436B6761584D675A6D467A6447567949484E764948646C4947397764476C74';
wwv_flow_imp.g_varchar2_table(856) := '6158706C49475A76636942306147556759323974625739754948567A5A53316A59584E6C5847346749434167494341764C7942416332566C49476830644841364C7939716333426C636D5975593239744C324E68624777745958427762486B746332566E';
wwv_flow_imp.g_varchar2_table(857) := '645678754943416749434167615759674B4746795A334D70494874636269416749434167494341675A6D34755958427762486B6F626E56736243776759584A6E63796B375847346749434167494342394947567363325567653178754943416749434167';
wwv_flow_imp.g_varchar2_table(858) := '4943426D6269356A595778734B473531624777704F31787549434167494341676656787549434167494341674C79386755484A6C646D5675644342705A484D675A6E4A76625342735A5746726157356E58473467494341674943426C65484276636E527A';
wwv_flow_imp.g_varchar2_table(859) := '4C6D4E735A574679535731745A5752705958526C4B476C6B4B547463626941674943423958473467494830704F3178755847346749484A6C64485679626942705A447463626E303758473563626D56346347397964484D755932786C59584A4A6257316C';
wwv_flow_imp.g_varchar2_table(860) := '5A476C6864475567505342306558426C623259675932786C59584A4A6257316C5A476C686447556750543039494677695A6E567559335270623235634969412F49474E735A574679535731745A5752705958526C49446F675A6E5675593352706232346F';
wwv_flow_imp.g_varchar2_table(861) := '6157517049487463626941675A4756735A58526C49476C746257566B615746305A556C6B633174705A463037584735394F794A6466513D3D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241926538766235970)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dragula.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2166756E6374696F6E2865297B696628226F626A656374223D3D747970656F66206578706F727473262622756E646566696E656422213D747970656F66206D6F64756C65296D6F64756C652E6578706F7274733D6528293B656C7365206966282266756E';
wwv_flow_imp.g_varchar2_table(2) := '6374696F6E223D3D747970656F6620646566696E652626646566696E652E616D6429646566696E65285B5D2C65293B656C73657B2822756E646566696E656422213D747970656F662077696E646F773F77696E646F773A22756E646566696E656422213D';
wwv_flow_imp.g_varchar2_table(3) := '747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A74686973292E64726167756C613D6528297D7D282866756E6374696F6E28297B72657475726E2066756E6374696F6E2065';
wwv_flow_imp.g_varchar2_table(4) := '28742C6E2C72297B66756E6374696F6E206F28752C63297B696628216E5B755D297B69662821745B755D297B76617220613D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972653B6966282163262661297265747572';
wwv_flow_imp.g_varchar2_table(5) := '6E206128752C2130293B696628692972657475726E206928752C2130293B766172206C3D6E6577204572726F72282243616E6E6F742066696E64206D6F64756C652027222B752B222722293B7468726F77206C2E636F64653D224D4F44554C455F4E4F54';
wwv_flow_imp.g_varchar2_table(6) := '5F464F554E44222C6C7D76617220663D6E5B755D3D7B6578706F7274733A7B7D7D3B745B755D5B305D2E63616C6C28662E6578706F7274732C2866756E6374696F6E2865297B72657475726E206F28745B755D5B315D5B655D7C7C65297D292C662C662E';
wwv_flow_imp.g_varchar2_table(7) := '6578706F7274732C652C742C6E2C72297D72657475726E206E5B755D2E6578706F7274737D666F722876617220693D2266756E6374696F6E223D3D747970656F6620726571756972652626726571756972652C753D303B753C722E6C656E6774683B752B';
wwv_flow_imp.g_varchar2_table(8) := '2B296F28725B755D293B72657475726E206F7D287B313A5B66756E6374696F6E28652C742C6E297B2275736520737472696374223B76617220723D7B7D2C6F3D22283F3A5E7C5C5C7329222C693D22283F3A5C5C737C2429223B66756E6374696F6E2075';
wwv_flow_imp.g_varchar2_table(9) := '2865297B76617220743D725B655D3B72657475726E20743F742E6C617374496E6465783D303A725B655D3D743D6E657720526567457870286F2B652B692C226722292C747D742E6578706F7274733D7B6164643A66756E6374696F6E28652C74297B7661';
wwv_flow_imp.g_varchar2_table(10) := '72206E3D652E636C6173734E616D653B6E2E6C656E6774683F752874292E74657374286E297C7C28652E636C6173734E616D652B3D2220222B74293A652E636C6173734E616D653D747D2C726D3A66756E6374696F6E28652C74297B652E636C6173734E';
wwv_flow_imp.g_varchar2_table(11) := '616D653D652E636C6173734E616D652E7265706C61636528752874292C222022292E7472696D28297D7D7D2C7B7D5D2C323A5B66756E6374696F6E28652C742C6E297B2866756E6374696F6E286E297B2275736520737472696374223B76617220723D65';
wwv_flow_imp.g_varchar2_table(12) := '2822636F6E7472612F656D697474657222292C6F3D65282263726F737376656E7422292C693D6528222E2F636C617373657322292C753D646F63756D656E742C633D752E646F63756D656E74456C656D656E743B66756E6374696F6E206128652C742C72';
wwv_flow_imp.g_varchar2_table(13) := '2C69297B6E2E6E6176696761746F722E706F696E746572456E61626C65643F6F5B745D28652C7B6D6F75736575703A22706F696E7465727570222C6D6F757365646F776E3A22706F696E746572646F776E222C6D6F7573656D6F76653A22706F696E7465';
wwv_flow_imp.g_varchar2_table(14) := '726D6F7665227D5B725D2C69293A6E2E6E6176696761746F722E6D73506F696E746572456E61626C65643F6F5B745D28652C7B6D6F75736575703A224D53506F696E7465725570222C6D6F757365646F776E3A224D53506F696E746572446F776E222C6D';
wwv_flow_imp.g_varchar2_table(15) := '6F7573656D6F76653A224D53506F696E7465724D6F7665227D5B725D2C69293A286F5B745D28652C7B6D6F75736575703A22746F756368656E64222C6D6F757365646F776E3A22746F7563687374617274222C6D6F7573656D6F76653A22746F7563686D';
wwv_flow_imp.g_varchar2_table(16) := '6F7665227D5B725D2C69292C6F5B745D28652C722C6929297D66756E6374696F6E206C2865297B696628766F69642030213D3D652E746F75636865732972657475726E20652E746F75636865732E6C656E6774683B696628766F69642030213D3D652E77';
wwv_flow_imp.g_varchar2_table(17) := '68696368262630213D3D652E77686963682972657475726E20652E77686963683B696628766F69642030213D3D652E627574746F6E732972657475726E20652E627574746F6E733B76617220743D652E627574746F6E3B72657475726E20766F69642030';
wwv_flow_imp.g_varchar2_table(18) := '213D3D743F3126743F313A3226743F333A3426743F323A303A766F696420307D66756E6374696F6E206628652C74297B72657475726E20766F69642030213D3D6E5B745D3F6E5B745D3A632E636C69656E744865696768743F635B655D3A752E626F6479';
wwv_flow_imp.g_varchar2_table(19) := '5B655D7D66756E6374696F6E207328652C742C6E297B76617220722C6F3D28653D657C7C7B7D292E636C6173734E616D657C7C22223B72657475726E20652E636C6173734E616D652B3D222067752D68696465222C723D752E656C656D656E7446726F6D';
wwv_flow_imp.g_varchar2_table(20) := '506F696E7428742C6E292C652E636C6173734E616D653D6F2C727D66756E6374696F6E206428297B72657475726E21317D66756E6374696F6E207628297B72657475726E21307D66756E6374696F6E206D2865297B72657475726E20652E77696474687C';
wwv_flow_imp.g_varchar2_table(21) := '7C652E72696768742D652E6C6566747D66756E6374696F6E20702865297B72657475726E20652E6865696768747C7C652E626F74746F6D2D652E746F707D66756E6374696F6E20682865297B72657475726E20652E706172656E744E6F64653D3D3D753F';
wwv_flow_imp.g_varchar2_table(22) := '6E756C6C3A652E706172656E744E6F64657D66756E6374696F6E20672865297B72657475726E22494E505554223D3D3D652E7461674E616D657C7C225445585441524541223D3D3D652E7461674E616D657C7C2253454C454354223D3D3D652E7461674E';
wwv_flow_imp.g_varchar2_table(23) := '616D657C7C792865297D66756E6374696F6E20792865297B72657475726E2121652626282266616C736522213D3D652E636F6E74656E744564697461626C652626282274727565223D3D3D652E636F6E74656E744564697461626C657C7C792868286529';
wwv_flow_imp.g_varchar2_table(24) := '2929297D66756E6374696F6E20772865297B72657475726E20652E6E657874456C656D656E745369626C696E677C7C66756E6374696F6E28297B76617220743D653B646F7B743D742E6E6578745369626C696E677D7768696C652874262631213D3D742E';
wwv_flow_imp.g_varchar2_table(25) := '6E6F646554797065293B72657475726E20747D28297D66756E6374696F6E206228652C74297B766172206E3D66756E6374696F6E2865297B72657475726E20652E746172676574546F75636865732626652E746172676574546F75636865732E6C656E67';
wwv_flow_imp.g_varchar2_table(26) := '74683F652E746172676574546F75636865735B305D3A652E6368616E676564546F75636865732626652E6368616E676564546F75636865732E6C656E6774683F652E6368616E676564546F75636865735B305D3A657D2874292C723D7B70616765583A22';
wwv_flow_imp.g_varchar2_table(27) := '636C69656E7458222C70616765593A22636C69656E7459227D3B72657475726E206520696E2072262621286520696E206E292626725B655D696E206E262628653D725B655D292C6E5B655D7D742E6578706F7274733D66756E6374696F6E28652C74297B';
wwv_flow_imp.g_varchar2_table(28) := '766172206E2C792C542C452C782C532C432C4F2C492C4E2C5F3B313D3D3D617267756D656E74732E6C656E677468262621313D3D3D41727261792E69734172726179286529262628743D652C653D5B5D293B76617220582C4C3D6E756C6C2C593D747C7C';
wwv_flow_imp.g_varchar2_table(29) := '7B7D3B766F696420303D3D3D592E6D6F766573262628592E6D6F7665733D76292C766F696420303D3D3D592E61636365707473262628592E616363657074733D76292C766F696420303D3D3D592E696E76616C6964262628592E696E76616C69643D6675';
wwv_flow_imp.g_varchar2_table(30) := '6E6374696F6E28297B72657475726E21317D292C766F696420303D3D3D592E636F6E7461696E657273262628592E636F6E7461696E6572733D657C7C5B5D292C766F696420303D3D3D592E6973436F6E7461696E6572262628592E6973436F6E7461696E';
wwv_flow_imp.g_varchar2_table(31) := '65723D64292C766F696420303D3D3D592E636F7079262628592E636F70793D2131292C766F696420303D3D3D592E636F7079536F7274536F75726365262628592E636F7079536F7274536F757263653D2131292C766F696420303D3D3D592E7265766572';
wwv_flow_imp.g_varchar2_table(32) := '744F6E5370696C6C262628592E7265766572744F6E5370696C6C3D2131292C766F696420303D3D3D592E72656D6F76654F6E5370696C6C262628592E72656D6F76654F6E5370696C6C3D2131292C766F696420303D3D3D592E646972656374696F6E2626';
wwv_flow_imp.g_varchar2_table(33) := '28592E646972656374696F6E3D22766572746963616C22292C766F696420303D3D3D592E69676E6F7265496E7075745465787453656C656374696F6E262628592E69676E6F7265496E7075745465787453656C656374696F6E3D2130292C766F69642030';
wwv_flow_imp.g_varchar2_table(34) := '3D3D3D592E6D6972726F72436F6E7461696E6572262628592E6D6972726F72436F6E7461696E65723D752E626F6479293B76617220413D72287B636F6E7461696E6572733A592E636F6E7461696E6572732C73746172743A66756E6374696F6E2865297B';
wwv_flow_imp.g_varchar2_table(35) := '76617220743D522865293B742626712874297D2C656E643A552C63616E63656C3A242C72656D6F76653A562C64657374726F793A66756E6374696F6E28297B50282130292C7A287B7D297D2C63616E4D6F76653A66756E6374696F6E2865297B72657475';
wwv_flow_imp.g_varchar2_table(36) := '726E2121522865297D2C6472616767696E673A21317D293B72657475726E21303D3D3D592E72656D6F76654F6E5370696C6C2626412E6F6E28226F766572222C2866756E6374696F6E2865297B692E726D28652C2267752D6869646522297D29292E6F6E';
wwv_flow_imp.g_varchar2_table(37) := '28226F7574222C2866756E6374696F6E2865297B412E6472616767696E672626692E61646428652C2267752D6869646522297D29292C5028292C413B66756E6374696F6E20422865297B72657475726E2D31213D3D412E636F6E7461696E6572732E696E';
wwv_flow_imp.g_varchar2_table(38) := '6465784F662865297C7C592E6973436F6E7461696E65722865297D66756E6374696F6E20502865297B76617220743D653F2272656D6F7665223A22616464223B6128632C742C226D6F757365646F776E222C6B292C6128632C742C226D6F757365757022';
wwv_flow_imp.g_varchar2_table(39) := '2C7A297D66756E6374696F6E20442865297B6128632C653F2272656D6F7665223A22616464222C226D6F7573656D6F7665222C6A297D66756E6374696F6E20462865297B76617220743D653F2272656D6F7665223A22616464223B6F5B745D28632C2273';
wwv_flow_imp.g_varchar2_table(40) := '656C6563747374617274222C4D292C6F5B745D28632C22636C69636B222C4D297D66756E6374696F6E204D2865297B582626652E70726576656E7444656661756C7428297D66756E6374696F6E206B2865297B696628533D652E636C69656E74582C433D';
wwv_flow_imp.g_varchar2_table(41) := '652E636C69656E74592C212831213D3D6C2865297C7C652E6D6574614B65797C7C652E6374726C4B657929297B76617220743D652E7461726765742C6E3D522874293B6E262628583D6E2C4428292C226D6F757365646F776E223D3D3D652E7479706526';
wwv_flow_imp.g_varchar2_table(42) := '2628672874293F742E666F63757328293A652E70726576656E7444656661756C74282929297D7D66756E6374696F6E206A2865297B696628582969662830213D3D6C286529297B6966282128766F69642030213D3D652E636C69656E745826264D617468';
wwv_flow_imp.g_varchar2_table(43) := '2E61627328652E636C69656E74582D53293C3D28592E736C696465466163746F72587C7C30292626766F69642030213D3D652E636C69656E745926264D6174682E61627328652E636C69656E74592D43293C3D28592E736C696465466163746F72597C7C';
wwv_flow_imp.g_varchar2_table(44) := '302929297B696628592E69676E6F7265496E7075745465787453656C656374696F6E297B76617220743D622822636C69656E7458222C65297C7C302C723D622822636C69656E7459222C65297C7C303B6966286728752E656C656D656E7446726F6D506F';
wwv_flow_imp.g_varchar2_table(45) := '696E7428742C7229292972657475726E7D766172206F3D583B44282130292C4628292C5528292C71286F293B76617220732C643D7B6C6566743A28733D542E676574426F756E64696E67436C69656E74526563742829292E6C6566742B6628227363726F';
wwv_flow_imp.g_varchar2_table(46) := '6C6C4C656674222C2270616765584F666673657422292C746F703A732E746F702B6628227363726F6C6C546F70222C2270616765594F666673657422297D3B453D6228227061676558222C65292D642E6C6566742C783D6228227061676559222C65292D';
wwv_flow_imp.g_varchar2_table(47) := '642E746F702C692E616464284E7C7C542C2267752D7472616E73697422292C66756E6374696F6E28297B6966286E2972657475726E3B76617220653D542E676574426F756E64696E67436C69656E745265637428293B286E3D542E636C6F6E654E6F6465';
wwv_flow_imp.g_varchar2_table(48) := '28213029292E7374796C652E77696474683D6D2865292B227078222C6E2E7374796C652E6865696768743D702865292B227078222C692E726D286E2C2267752D7472616E73697422292C692E616464286E2C2267752D6D6972726F7222292C592E6D6972';
wwv_flow_imp.g_varchar2_table(49) := '726F72436F6E7461696E65722E617070656E644368696C64286E292C6128632C22616464222C226D6F7573656D6F7665222C57292C692E61646428592E6D6972726F72436F6E7461696E65722C2267752D756E73656C65637461626C6522292C412E656D';
wwv_flow_imp.g_varchar2_table(50) := '69742822636C6F6E6564222C6E2C542C226D6972726F7222297D28292C572865297D7D656C7365207A287B7D297D66756E6374696F6E20522865297B6966282128412E6472616767696E6726266E7C7C4228652929297B666F722876617220743D653B68';
wwv_flow_imp.g_varchar2_table(51) := '286529262621313D3D3D422868286529293B297B696628592E696E76616C696428652C74292972657475726E3B6966282128653D68286529292972657475726E7D76617220723D682865293B696628722969662821592E696E76616C696428652C742929';
wwv_flow_imp.g_varchar2_table(52) := '696628592E6D6F76657328652C722C742C77286529292972657475726E7B6974656D3A652C736F757263653A727D7D7D66756E6374696F6E20712865297B76617220742C6E3B743D652E6974656D2C6E3D652E736F757263652C2822626F6F6C65616E22';
wwv_flow_imp.g_varchar2_table(53) := '3D3D747970656F6620592E636F70793F592E636F70793A592E636F707928742C6E29292626284E3D652E6974656D2E636C6F6E654E6F6465282130292C412E656D69742822636C6F6E6564222C4E2C652E6974656D2C22636F70792229292C793D652E73';
wwv_flow_imp.g_varchar2_table(54) := '6F757263652C543D652E6974656D2C4F3D493D7728652E6974656D292C412E6472616767696E673D21302C412E656D6974282264726167222C542C79297D66756E6374696F6E205528297B696628412E6472616767696E67297B76617220653D4E7C7C54';
wwv_flow_imp.g_varchar2_table(55) := '3B4828652C68286529297D7D66756E6374696F6E204B28297B583D21312C44282130292C46282130297D66756E6374696F6E207A2865297B6966284B28292C412E6472616767696E67297B76617220743D4E7C7C542C723D622822636C69656E7458222C';
wwv_flow_imp.g_varchar2_table(56) := '65297C7C302C6F3D622822636C69656E7459222C65297C7C302C693D512873286E2C722C6F292C722C6F293B692626284E2626592E636F7079536F7274536F757263657C7C214E7C7C69213D3D79293F4828742C69293A592E72656D6F76654F6E537069';
wwv_flow_imp.g_varchar2_table(57) := '6C6C3F5628293A2428297D7D66756E6374696F6E204828652C74297B766172206E3D682865293B4E2626592E636F7079536F7274536F757263652626743D3D3D7926266E2E72656D6F76654368696C642854292C4A2874293F412E656D6974282263616E';
wwv_flow_imp.g_varchar2_table(58) := '63656C222C652C792C79293A412E656D6974282264726F70222C652C742C792C49292C4728297D66756E6374696F6E205628297B696628412E6472616767696E67297B76617220653D4E7C7C542C743D682865293B742626742E72656D6F76654368696C';
wwv_flow_imp.g_varchar2_table(59) := '642865292C412E656D6974284E3F2263616E63656C223A2272656D6F7665222C652C742C79292C4728297D7D66756E6374696F6E20242865297B696628412E6472616767696E67297B76617220743D617267756D656E74732E6C656E6774683E303F653A';
wwv_flow_imp.g_varchar2_table(60) := '592E7265766572744F6E5370696C6C2C6E3D4E7C7C542C723D68286E292C6F3D4A2872293B21313D3D3D6F2626742626284E3F722626722E72656D6F76654368696C64284E293A792E696E736572744265666F7265286E2C4F29292C6F7C7C743F412E65';
wwv_flow_imp.g_varchar2_table(61) := '6D6974282263616E63656C222C6E2C792C79293A412E656D6974282264726F70222C6E2C722C792C49292C4728297D7D66756E6374696F6E204728297B76617220653D4E7C7C543B4B28292C6E262628692E726D28592E6D6972726F72436F6E7461696E';
wwv_flow_imp.g_varchar2_table(62) := '65722C2267752D756E73656C65637461626C6522292C6128632C2272656D6F7665222C226D6F7573656D6F7665222C57292C68286E292E72656D6F76654368696C64286E292C6E3D6E756C6C292C652626692E726D28652C2267752D7472616E73697422';
wwv_flow_imp.g_varchar2_table(63) := '292C5F2626636C65617254696D656F7574285F292C412E6472616767696E673D21312C4C2626412E656D697428226F7574222C652C4C2C79292C412E656D6974282264726167656E64222C65292C793D543D4E3D4F3D493D5F3D4C3D6E756C6C7D66756E';
wwv_flow_imp.g_varchar2_table(64) := '6374696F6E204A28652C74297B76617220723B72657475726E20723D766F69642030213D3D743F743A6E3F493A77284E7C7C54292C653D3D3D792626723D3D3D4F7D66756E6374696F6E205128652C742C6E297B666F722876617220723D653B72262621';
wwv_flow_imp.g_varchar2_table(65) := '6F28293B29723D682872293B72657475726E20723B66756E6374696F6E206F28297B69662821313D3D3D422872292972657475726E21313B766172206F3D5A28722C65292C693D656528722C6F2C742C6E293B72657475726E21214A28722C69297C7C59';
wwv_flow_imp.g_varchar2_table(66) := '2E6163636570747328542C722C792C69297D7D66756E6374696F6E20572865297B6966286E297B652E70726576656E7444656661756C7428293B76617220743D622822636C69656E7458222C65297C7C302C723D622822636C69656E7459222C65297C7C';
wwv_flow_imp.g_varchar2_table(67) := '302C6F3D742D452C693D722D783B6E2E7374796C652E6C6566743D6F2B227078222C6E2E7374796C652E746F703D692B227078223B76617220753D4E7C7C542C633D73286E2C742C72292C613D5128632C742C72292C6C3D6E756C6C213D3D6126266121';
wwv_flow_imp.g_varchar2_table(68) := '3D3D4C3B286C7C7C6E756C6C3D3D3D61292626284C26266D28226F757422292C4C3D612C6C26266D28226F7665722229293B76617220663D682875293B69662861213D3D797C7C214E7C7C592E636F7079536F7274536F75726365297B76617220642C76';
wwv_flow_imp.g_varchar2_table(69) := '3D5A28612C63293B6966286E756C6C213D3D7629643D656528612C762C742C72293B656C73657B6966282130213D3D592E7265766572744F6E5370696C6C7C7C4E2972657475726E20766F6964284E2626662626662E72656D6F76654368696C64287529';
wwv_flow_imp.g_varchar2_table(70) := '293B643D4F2C613D797D286E756C6C3D3D3D6426266C7C7C64213D3D75262664213D3D7728752929262628493D642C612E696E736572744265666F726528752C64292C412E656D69742822736861646F77222C752C612C7929297D656C73652066262666';
wwv_flow_imp.g_varchar2_table(71) := '2E72656D6F76654368696C642875297D66756E6374696F6E206D2865297B412E656D697428652C752C4C2C79297D7D66756E6374696F6E205A28652C74297B666F7228766172206E3D743B6E213D3D65262668286E29213D3D653B296E3D68286E293B72';
wwv_flow_imp.g_varchar2_table(72) := '657475726E206E3D3D3D633F6E756C6C3A6E7D66756E6374696F6E20656528652C742C6E2C72297B766172206F3D22686F72697A6F6E74616C223D3D3D592E646972656374696F6E2C693D74213D3D653F66756E6374696F6E28297B76617220653D742E';
wwv_flow_imp.g_varchar2_table(73) := '676574426F756E64696E67436C69656E745265637428293B6966286F2972657475726E2075286E3E652E6C6566742B6D2865292F32293B72657475726E207528723E652E746F702B702865292F32297D28293A66756E6374696F6E28297B76617220742C';
wwv_flow_imp.g_varchar2_table(74) := '692C752C633D652E6368696C6472656E2E6C656E6774683B666F7228743D303B743C633B742B2B297B696628753D28693D652E6368696C6472656E5B745D292E676574426F756E64696E67436C69656E745265637428292C6F2626752E6C6566742B752E';
wwv_flow_imp.g_varchar2_table(75) := '77696474682F323E6E2972657475726E20693B696628216F2626752E746F702B752E6865696768742F323E722972657475726E20697D72657475726E206E756C6C7D28293B72657475726E20693B66756E6374696F6E20752865297B72657475726E2065';
wwv_flow_imp.g_varchar2_table(76) := '3F772874293A747D7D7D7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A22756E646566696E656422213D';
wwv_flow_imp.g_varchar2_table(77) := '747970656F662077696E646F773F77696E646F773A7B7D297D2C7B222E2F636C6173736573223A312C22636F6E7472612F656D6974746572223A352C63726F737376656E743A367D5D2C333A5B66756E6374696F6E28652C742C6E297B742E6578706F72';
wwv_flow_imp.g_varchar2_table(78) := '74733D66756E6374696F6E28652C74297B72657475726E2041727261792E70726F746F747970652E736C6963652E63616C6C28652C74297D7D2C7B7D5D2C343A5B66756E6374696F6E28652C742C6E297B2275736520737472696374223B76617220723D';
wwv_flow_imp.g_varchar2_table(79) := '6528227469636B7922293B742E6578706F7274733D66756E6374696F6E28652C742C6E297B65262672282866756E6374696F6E28297B652E6170706C79286E7C7C6E756C6C2C747C7C5B5D297D29297D7D2C7B7469636B793A31307D5D2C353A5B66756E';
wwv_flow_imp.g_varchar2_table(80) := '6374696F6E28652C742C6E297B2275736520737472696374223B76617220723D65282261746F6122292C6F3D6528222E2F6465626F756E636522293B742E6578706F7274733D66756E6374696F6E28652C74297B766172206E3D747C7C7B7D2C693D7B7D';
wwv_flow_imp.g_varchar2_table(81) := '3B72657475726E20766F696420303D3D3D65262628653D7B7D292C652E6F6E3D66756E6374696F6E28742C6E297B72657475726E20695B745D3F695B745D2E70757368286E293A695B745D3D5B6E5D2C657D2C652E6F6E63653D66756E6374696F6E2874';
wwv_flow_imp.g_varchar2_table(82) := '2C6E297B72657475726E206E2E5F6F6E63653D21302C652E6F6E28742C6E292C657D2C652E6F66663D66756E6374696F6E28742C6E297B76617220723D617267756D656E74732E6C656E6774683B696628313D3D3D722964656C65746520695B745D3B65';
wwv_flow_imp.g_varchar2_table(83) := '6C736520696628303D3D3D7229693D7B7D3B656C73657B766172206F3D695B745D3B696628216F2972657475726E20653B6F2E73706C696365286F2E696E6465784F66286E292C31297D72657475726E20657D2C652E656D69743D66756E6374696F6E28';
wwv_flow_imp.g_varchar2_table(84) := '297B76617220743D7228617267756D656E7473293B72657475726E20652E656D6974746572536E617073686F7428742E73686966742829292E6170706C7928746869732C74297D2C652E656D6974746572536E617073686F743D66756E6374696F6E2874';
wwv_flow_imp.g_varchar2_table(85) := '297B76617220753D28695B745D7C7C5B5D292E736C6963652830293B72657475726E2066756E6374696F6E28297B76617220693D7228617267756D656E7473292C633D746869737C7C653B696628226572726F72223D3D3D7426262131213D3D6E2E7468';
wwv_flow_imp.g_varchar2_table(86) := '726F7773262621752E6C656E677468297468726F7720313D3D3D692E6C656E6774683F695B305D3A693B72657475726E20752E666F7245616368282866756E6374696F6E2872297B6E2E6173796E633F6F28722C692C63293A722E6170706C7928632C69';
wwv_flow_imp.g_varchar2_table(87) := '292C722E5F6F6E63652626652E6F666628742C72297D29292C657D7D2C657D7D2C7B222E2F6465626F756E6365223A342C61746F613A337D5D2C363A5B66756E6374696F6E28652C742C6E297B2866756E6374696F6E286E297B22757365207374726963';
wwv_flow_imp.g_varchar2_table(88) := '74223B76617220723D652822637573746F6D2D6576656E7422292C6F3D6528222E2F6576656E746D617022292C693D6E2E646F63756D656E742C753D66756E6374696F6E28652C742C6E2C72297B72657475726E20652E6164644576656E744C69737465';
wwv_flow_imp.g_varchar2_table(89) := '6E657228742C6E2C72297D2C633D66756E6374696F6E28652C742C6E2C72297B72657475726E20652E72656D6F76654576656E744C697374656E657228742C6E2C72297D2C613D5B5D3B66756E6374696F6E206C28652C742C6E297B76617220723D6675';
wwv_flow_imp.g_varchar2_table(90) := '6E6374696F6E28652C742C6E297B76617220722C6F3B666F7228723D303B723C612E6C656E6774683B722B2B29696628286F3D615B725D292E656C656D656E743D3D3D6526266F2E747970653D3D3D7426266F2E666E3D3D3D6E2972657475726E20727D';
wwv_flow_imp.g_varchar2_table(91) := '28652C742C6E293B69662872297B766172206F3D615B725D2E777261707065723B72657475726E20612E73706C69636528722C31292C6F7D7D6E2E6164644576656E744C697374656E65727C7C28753D66756E6374696F6E28652C742C72297B72657475';
wwv_flow_imp.g_varchar2_table(92) := '726E20652E6174746163684576656E7428226F6E222B742C66756E6374696F6E28652C742C72297B766172206F3D6C28652C742C72297C7C66756E6374696F6E28652C742C72297B72657475726E2066756E6374696F6E2874297B766172206F3D747C7C';
wwv_flow_imp.g_varchar2_table(93) := '6E2E6576656E743B6F2E7461726765743D6F2E7461726765747C7C6F2E737263456C656D656E742C6F2E70726576656E7444656661756C743D6F2E70726576656E7444656661756C747C7C66756E6374696F6E28297B6F2E72657475726E56616C75653D';
wwv_flow_imp.g_varchar2_table(94) := '21317D2C6F2E73746F7050726F7061676174696F6E3D6F2E73746F7050726F7061676174696F6E7C7C66756E6374696F6E28297B6F2E63616E63656C427562626C653D21307D2C6F2E77686963683D6F2E77686963687C7C6F2E6B6579436F64652C722E';
wwv_flow_imp.g_varchar2_table(95) := '63616C6C28652C6F297D7D28652C302C72293B72657475726E20612E70757368287B777261707065723A6F2C656C656D656E743A652C747970653A742C666E3A727D292C6F7D28652C742C7229297D2C633D66756E6374696F6E28652C742C6E297B7661';
wwv_flow_imp.g_varchar2_table(96) := '7220723D6C28652C742C6E293B696628722972657475726E20652E6465746163684576656E7428226F6E222B742C72297D292C742E6578706F7274733D7B6164643A752C72656D6F76653A632C6661627269636174653A66756E6374696F6E28652C742C';
wwv_flow_imp.g_varchar2_table(97) := '6E297B76617220753D2D313D3D3D6F2E696E6465784F662874293F6E6577207228742C7B64657461696C3A6E7D293A66756E6374696F6E28297B76617220653B692E6372656174654576656E743F28653D692E6372656174654576656E7428224576656E';
wwv_flow_imp.g_varchar2_table(98) := '742229292E696E69744576656E7428742C21302C2130293A692E6372656174654576656E744F626A656374262628653D692E6372656174654576656E744F626A6563742829293B72657475726E20657D28293B652E64697370617463684576656E743F65';
wwv_flow_imp.g_varchar2_table(99) := '2E64697370617463684576656E742875293A652E666972654576656E7428226F6E222B742C75297D7D7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E65642221';
wwv_flow_imp.g_varchar2_table(100) := '3D747970656F662073656C663F73656C663A22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B222E2F6576656E746D6170223A372C22637573746F6D2D6576656E74223A387D5D2C373A5B66756E6374';
wwv_flow_imp.g_varchar2_table(101) := '696F6E28652C742C6E297B2866756E6374696F6E2865297B2275736520737472696374223B766172206E3D5B5D2C723D22222C6F3D2F5E6F6E2F3B666F72287220696E2065296F2E7465737428722926266E2E7075736828722E736C696365283229293B';
wwv_flow_imp.g_varchar2_table(102) := '742E6578706F7274733D6E7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D747970656F662073656C663F73656C663A22756E646566696E65642221';
wwv_flow_imp.g_varchar2_table(103) := '3D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B7D5D2C383A5B66756E6374696F6E28652C742C6E297B2866756E6374696F6E2865297B766172206E3D652E437573746F6D4576656E743B742E6578706F7274733D66756E6374696F';
wwv_flow_imp.g_varchar2_table(104) := '6E28297B7472797B76617220653D6E6577206E2822636174222C7B64657461696C3A7B666F6F3A22626172227D7D293B72657475726E22636174223D3D3D652E74797065262622626172223D3D3D652E64657461696C2E666F6F7D63617463682865297B';
wwv_flow_imp.g_varchar2_table(105) := '7D72657475726E21317D28293F6E3A22756E646566696E656422213D747970656F6620646F63756D656E7426262266756E6374696F6E223D3D747970656F6620646F63756D656E742E6372656174654576656E743F66756E6374696F6E28652C74297B76';
wwv_flow_imp.g_varchar2_table(106) := '6172206E3D646F63756D656E742E6372656174654576656E742822437573746F6D4576656E7422293B72657475726E20743F6E2E696E6974437573746F6D4576656E7428652C742E627562626C65732C742E63616E63656C61626C652C742E6465746169';
wwv_flow_imp.g_varchar2_table(107) := '6C293A6E2E696E6974437573746F6D4576656E7428652C21312C21312C766F69642030292C6E7D3A66756E6374696F6E28652C74297B766172206E3D646F63756D656E742E6372656174654576656E744F626A65637428293B72657475726E206E2E7479';
wwv_flow_imp.g_varchar2_table(108) := '70653D652C743F286E2E627562626C65733D426F6F6C65616E28742E627562626C6573292C6E2E63616E63656C61626C653D426F6F6C65616E28742E63616E63656C61626C65292C6E2E64657461696C3D742E64657461696C293A286E2E627562626C65';
wwv_flow_imp.g_varchar2_table(109) := '733D21312C6E2E63616E63656C61626C653D21312C6E2E64657461696C3D766F69642030292C6E7D7D292E63616C6C28746869732C22756E646566696E656422213D747970656F6620676C6F62616C3F676C6F62616C3A22756E646566696E656422213D';
wwv_flow_imp.g_varchar2_table(110) := '747970656F662073656C663F73656C663A22756E646566696E656422213D747970656F662077696E646F773F77696E646F773A7B7D297D2C7B7D5D2C393A5B66756E6374696F6E28652C742C6E297B76617220722C6F2C693D742E6578706F7274733D7B';
wwv_flow_imp.g_varchar2_table(111) := '7D3B66756E6374696F6E207528297B7468726F77206E6577204572726F72282273657454696D656F757420686173206E6F74206265656E20646566696E656422297D66756E6374696F6E206328297B7468726F77206E6577204572726F722822636C6561';
wwv_flow_imp.g_varchar2_table(112) := '7254696D656F757420686173206E6F74206265656E20646566696E656422297D66756E6374696F6E20612865297B696628723D3D3D73657454696D656F75742972657475726E2073657454696D656F757428652C30293B69662828723D3D3D757C7C2172';
wwv_flow_imp.g_varchar2_table(113) := '29262673657454696D656F75742972657475726E20723D73657454696D656F75742C73657454696D656F757428652C30293B7472797B72657475726E207228652C30297D63617463682874297B7472797B72657475726E20722E63616C6C286E756C6C2C';
wwv_flow_imp.g_varchar2_table(114) := '652C30297D63617463682874297B72657475726E20722E63616C6C28746869732C652C30297D7D7D2166756E6374696F6E28297B7472797B723D2266756E6374696F6E223D3D747970656F662073657454696D656F75743F73657454696D656F75743A75';
wwv_flow_imp.g_varchar2_table(115) := '7D63617463682865297B723D757D7472797B6F3D2266756E6374696F6E223D3D747970656F6620636C65617254696D656F75743F636C65617254696D656F75743A637D63617463682865297B6F3D637D7D28293B766172206C2C663D5B5D2C733D21312C';
wwv_flow_imp.g_varchar2_table(116) := '643D2D313B66756E6374696F6E207628297B7326266C262628733D21312C6C2E6C656E6774683F663D6C2E636F6E6361742866293A643D2D312C662E6C656E67746826266D2829297D66756E6374696F6E206D28297B6966282173297B76617220653D61';
wwv_flow_imp.g_varchar2_table(117) := '2876293B733D21303B666F722876617220743D662E6C656E6774683B743B297B666F72286C3D662C663D5B5D3B2B2B643C743B296C26266C5B645D2E72756E28293B643D2D312C743D662E6C656E6774687D6C3D6E756C6C2C733D21312C66756E637469';
wwv_flow_imp.g_varchar2_table(118) := '6F6E2865297B6966286F3D3D3D636C65617254696D656F75742972657475726E20636C65617254696D656F75742865293B696628286F3D3D3D637C7C216F292626636C65617254696D656F75742972657475726E206F3D636C65617254696D656F75742C';
wwv_flow_imp.g_varchar2_table(119) := '636C65617254696D656F75742865293B7472797B72657475726E206F2865297D63617463682874297B7472797B72657475726E206F2E63616C6C286E756C6C2C65297D63617463682874297B72657475726E206F2E63616C6C28746869732C65297D7D7D';
wwv_flow_imp.g_varchar2_table(120) := '2865297D7D66756E6374696F6E207028652C74297B746869732E66756E3D652C746869732E61727261793D747D66756E6374696F6E206828297B7D692E6E6578745469636B3D66756E6374696F6E2865297B76617220743D6E6577204172726179286172';
wwv_flow_imp.g_varchar2_table(121) := '67756D656E74732E6C656E6774682D31293B696628617267756D656E74732E6C656E6774683E3129666F7228766172206E3D313B6E3C617267756D656E74732E6C656E6774683B6E2B2B29745B6E2D315D3D617267756D656E74735B6E5D3B662E707573';
wwv_flow_imp.g_varchar2_table(122) := '68286E6577207028652C7429292C31213D3D662E6C656E6774687C7C737C7C61286D297D2C702E70726F746F747970652E72756E3D66756E6374696F6E28297B746869732E66756E2E6170706C79286E756C6C2C746869732E6172726179297D2C692E74';
wwv_flow_imp.g_varchar2_table(123) := '69746C653D2262726F77736572222C692E62726F777365723D21302C692E656E763D7B7D2C692E617267763D5B5D2C692E76657273696F6E3D22222C692E76657273696F6E733D7B7D2C692E6F6E3D682C692E6164644C697374656E65723D682C692E6F';
wwv_flow_imp.g_varchar2_table(124) := '6E63653D682C692E6F66663D682C692E72656D6F76654C697374656E65723D682C692E72656D6F7665416C6C4C697374656E6572733D682C692E656D69743D682C692E70726570656E644C697374656E65723D682C692E70726570656E644F6E63654C69';
wwv_flow_imp.g_varchar2_table(125) := '7374656E65723D682C692E6C697374656E6572733D66756E6374696F6E2865297B72657475726E5B5D7D2C692E62696E64696E673D66756E6374696F6E2865297B7468726F77206E6577204572726F72282270726F636573732E62696E64696E67206973';
wwv_flow_imp.g_varchar2_table(126) := '206E6F7420737570706F7274656422297D2C692E6377643D66756E6374696F6E28297B72657475726E222F227D2C692E63686469723D66756E6374696F6E2865297B7468726F77206E6577204572726F72282270726F636573732E636864697220697320';
wwv_flow_imp.g_varchar2_table(127) := '6E6F7420737570706F7274656422297D2C692E756D61736B3D66756E6374696F6E28297B72657475726E20307D7D2C7B7D5D2C31303A5B66756E6374696F6E28652C742C6E297B2866756E6374696F6E2865297B766172206E3B6E3D2266756E6374696F';
wwv_flow_imp.g_varchar2_table(128) := '6E223D3D747970656F6620653F66756E6374696F6E2874297B652874297D3A66756E6374696F6E2865297B73657454696D656F757428652C30297D2C742E6578706F7274733D6E7D292E63616C6C28746869732C65282274696D65727322292E73657449';
wwv_flow_imp.g_varchar2_table(129) := '6D6D656469617465297D2C7B74696D6572733A31317D5D2C31313A5B66756E6374696F6E28652C742C6E297B2866756E6374696F6E28742C72297B766172206F3D65282270726F636573732F62726F777365722E6A7322292E6E6578745469636B2C693D';
wwv_flow_imp.g_varchar2_table(130) := '46756E6374696F6E2E70726F746F747970652E6170706C792C753D41727261792E70726F746F747970652E736C6963652C633D7B7D2C613D303B66756E6374696F6E206C28652C74297B746869732E5F69643D652C746869732E5F636C656172466E3D74';
wwv_flow_imp.g_varchar2_table(131) := '7D6E2E73657454696D656F75743D66756E6374696F6E28297B72657475726E206E6577206C28692E63616C6C2873657454696D656F75742C77696E646F772C617267756D656E7473292C636C65617254696D656F7574297D2C6E2E736574496E74657276';
wwv_flow_imp.g_varchar2_table(132) := '616C3D66756E6374696F6E28297B72657475726E206E6577206C28692E63616C6C28736574496E74657276616C2C77696E646F772C617267756D656E7473292C636C656172496E74657276616C297D2C6E2E636C65617254696D656F75743D6E2E636C65';
wwv_flow_imp.g_varchar2_table(133) := '6172496E74657276616C3D66756E6374696F6E2865297B652E636C6F736528297D2C6C2E70726F746F747970652E756E7265663D6C2E70726F746F747970652E7265663D66756E6374696F6E28297B7D2C6C2E70726F746F747970652E636C6F73653D66';
wwv_flow_imp.g_varchar2_table(134) := '756E6374696F6E28297B746869732E5F636C656172466E2E63616C6C2877696E646F772C746869732E5F6964297D2C6E2E656E726F6C6C3D66756E6374696F6E28652C74297B636C65617254696D656F757428652E5F69646C6554696D656F7574496429';
wwv_flow_imp.g_varchar2_table(135) := '2C652E5F69646C6554696D656F75743D747D2C6E2E756E656E726F6C6C3D66756E6374696F6E2865297B636C65617254696D656F757428652E5F69646C6554696D656F75744964292C652E5F69646C6554696D656F75743D2D317D2C6E2E5F756E726566';
wwv_flow_imp.g_varchar2_table(136) := '4163746976653D6E2E6163746976653D66756E6374696F6E2865297B636C65617254696D656F757428652E5F69646C6554696D656F75744964293B76617220743D652E5F69646C6554696D656F75743B743E3D30262628652E5F69646C6554696D656F75';
wwv_flow_imp.g_varchar2_table(137) := '7449643D73657454696D656F7574282866756E6374696F6E28297B652E5F6F6E54696D656F75742626652E5F6F6E54696D656F757428297D292C7429297D2C6E2E736574496D6D6564696174653D2266756E6374696F6E223D3D747970656F6620743F74';
wwv_flow_imp.g_varchar2_table(138) := '3A66756E6374696F6E2865297B76617220743D612B2B2C723D2128617267756D656E74732E6C656E6774683C32292626752E63616C6C28617267756D656E74732C31293B72657475726E20635B745D3D21302C6F282866756E6374696F6E28297B635B74';
wwv_flow_imp.g_varchar2_table(139) := '5D262628723F652E6170706C79286E756C6C2C72293A652E63616C6C286E756C6C292C6E2E636C656172496D6D656469617465287429297D29292C747D2C6E2E636C656172496D6D6564696174653D2266756E6374696F6E223D3D747970656F6620723F';
wwv_flow_imp.g_varchar2_table(140) := '723A66756E6374696F6E2865297B64656C65746520635B655D7D7D292E63616C6C28746869732C65282274696D65727322292E736574496D6D6564696174652C65282274696D65727322292E636C656172496D6D656469617465297D2C7B2270726F6365';
wwv_flow_imp.g_varchar2_table(141) := '73732F62726F777365722E6A73223A392C74696D6572733A31317D5D7D2C7B7D2C5B325D292832297D29293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241927262551236325)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dragula.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E67752D6D6972726F72207B0A2020706F736974696F6E3A2066697865642021696D706F7274616E743B0A20206D617267696E3A20302021696D706F7274616E743B0A20207A2D696E6465783A20393939392021696D706F7274616E743B0A20206F7061';
wwv_flow_imp.g_varchar2_table(2) := '636974793A20302E383B0A20202D6D732D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D383029223B0A202066696C7465723A20616C706861286F706163';
wwv_flow_imp.g_varchar2_table(3) := '6974793D3830293B0A7D0A2E67752D68696465207B0A2020646973706C61793A206E6F6E652021696D706F7274616E743B0A7D0A2E67752D756E73656C65637461626C65207B0A20202D7765626B69742D757365722D73656C6563743A206E6F6E652021';
wwv_flow_imp.g_varchar2_table(4) := '696D706F7274616E743B0A20202D6D6F7A2D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B0A20202D6D732D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B0A2020757365722D73656C6563743A206E';
wwv_flow_imp.g_varchar2_table(5) := '6F6E652021696D706F7274616E743B0A7D0A2E67752D7472616E736974207B0A20206F7061636974793A20302E323B0A20202D6D732D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C70';
wwv_flow_imp.g_varchar2_table(6) := '6861284F7061636974793D323029223B0A202066696C7465723A20616C706861286F7061636974793D3230293B0A7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241927766922237160)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dragula.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '2E67752D6D6972726F72207B706F736974696F6E3A2066697865642021696D706F7274616E743B6D617267696E3A20302021696D706F7274616E743B7A2D696E6465783A20393939392021696D706F7274616E743B6F7061636974793A20302E383B2D6D';
wwv_flow_imp.g_varchar2_table(2) := '732D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D383029223B66696C7465723A20616C706861286F7061636974793D3830293B7D2E67752D6869646520';
wwv_flow_imp.g_varchar2_table(3) := '7B646973706C61793A206E6F6E652021696D706F7274616E743B7D2E67752D756E73656C65637461626C65207B2D7765626B69742D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B2D6D6F7A2D757365722D73656C6563743A20';
wwv_flow_imp.g_varchar2_table(4) := '6E6F6E652021696D706F7274616E743B2D6D732D757365722D73656C6563743A206E6F6E652021696D706F7274616E743B757365722D73656C6563743A206E6F6E652021696D706F7274616E743B7D2E67752D7472616E736974207B6F7061636974793A';
wwv_flow_imp.g_varchar2_table(5) := '20302E323B2D6D732D66696C7465723A202270726F6769643A4458496D6167655472616E73666F726D2E4D6963726F736F66742E416C706861284F7061636974793D323029223B66696C7465723A20616C706861286F7061636974793D3230293B7D';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241928589467237370)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dragula.min.css'
,p_mime_type=>'text/css'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206175746F5363726F6C6C203D202866756E6374696F6E202829207B0A2775736520737472696374273B0A0A66756E6374696F6E2067657444656628662C206429207B0A2020202069662028747970656F662066203D3D3D2027756E646566696E';
wwv_flow_imp.g_varchar2_table(2) := '65642729207B0A202020202020202072657475726E20747970656F662064203D3D3D2027756E646566696E656427203F2066203A20643B0A202020207D0A0A2020202072657475726E20663B0A7D0A66756E6374696F6E20626F6F6C65616E2866756E63';
wwv_flow_imp.g_varchar2_table(3) := '2C2064656629207B0A0A2020202066756E63203D206765744465662866756E632C20646566293B0A0A2020202069662028747970656F662066756E63203D3D3D202766756E6374696F6E2729207B0A202020202020202072657475726E2066756E637469';
wwv_flow_imp.g_varchar2_table(4) := '6F6E20662829207B0A20202020202020202020202076617220617267756D656E74732431203D20617267756D656E74733B0A0A202020202020202020202020666F722028766172205F6C656E203D20617267756D656E74732E6C656E6774682C20617267';
wwv_flow_imp.g_varchar2_table(5) := '73203D204172726179285F6C656E292C205F6B6579203D20303B205F6B6579203C205F6C656E3B205F6B65792B2B29207B0A20202020202020202020202020202020617267735B5F6B65795D203D20617267756D656E747324315B5F6B65795D3B0A2020';
wwv_flow_imp.g_varchar2_table(6) := '202020202020202020207D0A0A20202020202020202020202072657475726E20212166756E632E6170706C7928746869732C2061726773293B0A20202020202020207D3B0A202020207D0A0A2020202072657475726E20212166756E63203F2066756E63';
wwv_flow_imp.g_varchar2_table(7) := '74696F6E202829207B0A202020202020202072657475726E20747275653B0A202020207D203A2066756E6374696F6E202829207B0A202020202020202072657475726E2066616C73653B0A202020207D3B0A7D0A0A76617220707265666978203D205B27';
wwv_flow_imp.g_varchar2_table(8) := '7765626B6974272C20276D6F7A272C20276D73272C20276F275D3B0A0A7661722072657175657374416E696D6174696F6E4672616D65203D2066756E6374696F6E202829207B0A0A2020666F7220287661722069203D20302C206C696D6974203D207072';
wwv_flow_imp.g_varchar2_table(9) := '656669782E6C656E6774683B2069203C206C696D6974202626202177696E646F772E72657175657374416E696D6174696F6E4672616D653B202B2B6929207B0A2020202077696E646F772E72657175657374416E696D6174696F6E4672616D65203D2077';
wwv_flow_imp.g_varchar2_table(10) := '696E646F775B7072656669785B695D202B202752657175657374416E696D6174696F6E4672616D65275D3B0A20207D0A0A2020696620282177696E646F772E72657175657374416E696D6174696F6E4672616D6529207B0A202020202866756E6374696F';
wwv_flow_imp.g_varchar2_table(11) := '6E202829207B0A202020202020766172206C61737454696D65203D20303B0A0A20202020202077696E646F772E72657175657374416E696D6174696F6E4672616D65203D2066756E6374696F6E202863616C6C6261636B29207B0A202020202020202076';
wwv_flow_imp.g_varchar2_table(12) := '6172206E6F77203D206E6577204461746528292E67657454696D6528293B0A202020202020202076617220747463203D204D6174682E6D617828302C203136202D206E6F77202D206C61737454696D65293B0A20202020202020207661722074696D6572';
wwv_flow_imp.g_varchar2_table(13) := '203D2077696E646F772E73657454696D656F75742866756E6374696F6E202829207B0A2020202020202020202072657475726E2063616C6C6261636B286E6F77202B20747463293B0A20202020202020207D2C20747463293B0A0A20202020202020206C';
wwv_flow_imp.g_varchar2_table(14) := '61737454696D65203D206E6F77202B207474633B0A0A202020202020202072657475726E2074696D65723B0A2020202020207D3B0A202020207D2928293B0A20207D0A0A202072657475726E2077696E646F772E72657175657374416E696D6174696F6E';
wwv_flow_imp.g_varchar2_table(15) := '4672616D652E62696E642877696E646F77293B0A7D28293B0A0A7661722063616E63656C416E696D6174696F6E4672616D65203D2066756E6374696F6E202829207B0A0A2020666F7220287661722069203D20302C206C696D6974203D20707265666978';
wwv_flow_imp.g_varchar2_table(16) := '2E6C656E6774683B2069203C206C696D6974202626202177696E646F772E63616E63656C416E696D6174696F6E4672616D653B202B2B6929207B0A2020202077696E646F772E63616E63656C416E696D6174696F6E4672616D65203D2077696E646F775B';
wwv_flow_imp.g_varchar2_table(17) := '7072656669785B695D202B202743616E63656C416E696D6174696F6E4672616D65275D207C7C2077696E646F775B7072656669785B695D202B202743616E63656C52657175657374416E696D6174696F6E4672616D65275D3B0A20207D0A0A2020696620';
wwv_flow_imp.g_varchar2_table(18) := '282177696E646F772E63616E63656C416E696D6174696F6E4672616D6529207B0A2020202077696E646F772E63616E63656C416E696D6174696F6E4672616D65203D2066756E6374696F6E202874696D657229207B0A20202020202077696E646F772E63';
wwv_flow_imp.g_varchar2_table(19) := '6C65617254696D656F75742874696D6572293B0A202020207D3B0A20207D0A0A202072657475726E2077696E646F772E63616E63656C416E696D6174696F6E4672616D652E62696E642877696E646F77293B0A7D28293B0A0A2F2F2050726F6475637469';
wwv_flow_imp.g_varchar2_table(20) := '6F6E207374657073206F662045434D412D3236322C2045646974696F6E20362C2032322E312E322E310A2F2F205265666572656E63653A20687474703A2F2F7777772E65636D612D696E7465726E6174696F6E616C2E6F72672F65636D612D3236322F36';
wwv_flow_imp.g_varchar2_table(21) := '2E302F237365632D61727261792E66726F6D0A76617220706F6C7966696C6C203D202866756E6374696F6E2829207B0A202076617220697343616C6C61626C65203D2066756E6374696F6E28666E29207B0A2020202072657475726E20747970656F6620';
wwv_flow_imp.g_varchar2_table(22) := '666E203D3D3D202766756E6374696F6E273B0A20207D3B0A202076617220746F496E7465676572203D2066756E6374696F6E202876616C756529207B0A20202020766172206E756D626572203D204E756D6265722876616C7565293B0A20202020696620';
wwv_flow_imp.g_varchar2_table(23) := '2869734E614E286E756D6265722929207B2072657475726E20303B207D0A20202020696620286E756D626572203D3D3D2030207C7C2021697346696E697465286E756D6265722929207B2072657475726E206E756D6265723B207D0A2020202072657475';
wwv_flow_imp.g_varchar2_table(24) := '726E20286E756D626572203E2030203F2031203A202D3129202A204D6174682E666C6F6F72284D6174682E616273286E756D62657229293B0A20207D3B0A2020766172206D617853616665496E7465676572203D204D6174682E706F7728322C20353329';
wwv_flow_imp.g_varchar2_table(25) := '202D20313B0A202076617220746F4C656E677468203D2066756E6374696F6E202876616C756529207B0A20202020766172206C656E203D20746F496E74656765722876616C7565293B0A2020202072657475726E204D6174682E6D696E284D6174682E6D';
wwv_flow_imp.g_varchar2_table(26) := '6178286C656E2C2030292C206D617853616665496E7465676572293B0A20207D3B0A2020766172206974657261746F7250726F70203D2066756E6374696F6E2876616C756529207B0A2020202069662876616C756520213D206E756C6C29207B0A202020';
wwv_flow_imp.g_varchar2_table(27) := '2020206966285B27737472696E67272C276E756D626572272C27626F6F6C65616E272C2773796D626F6C275D2E696E6465784F6628747970656F662076616C756529203E202D31297B0A202020202020202072657475726E2053796D626F6C2E69746572';
wwv_flow_imp.g_varchar2_table(28) := '61746F723B0A2020202020207D20656C736520696620280A202020202020202028747970656F662053796D626F6C20213D3D2027756E646566696E656427292026260A202020202020202028276974657261746F722720696E2053796D626F6C29202626';
wwv_flow_imp.g_varchar2_table(29) := '0A20202020202020202853796D626F6C2E6974657261746F7220696E2076616C7565290A20202020202029207B0A202020202020202072657475726E2053796D626F6C2E6974657261746F723B0A2020202020207D0A2020202020202F2F20537570706F';
wwv_flow_imp.g_varchar2_table(30) := '7274202240406974657261746F722220706C616365686F6C6465722C204765636B6F20323720746F204765636B6F2033350A202020202020656C736520696620282740406974657261746F722720696E2076616C756529207B0A20202020202020207265';
wwv_flow_imp.g_varchar2_table(31) := '7475726E202740406974657261746F72273B0A2020202020207D0A202020207D0A20207D3B0A2020766172206765744D6574686F64203D2066756E6374696F6E284F2C205029207B0A202020202F2F204173736572743A20497350726F70657274794B65';
wwv_flow_imp.g_varchar2_table(32) := '7928502920697320747275652E0A20202020696620284F20213D206E756C6C202626205020213D206E756C6C29207B0A2020202020202F2F204C65742066756E632062652047657456284F2C2050292E0A2020202020207661722066756E63203D204F5B';
wwv_flow_imp.g_varchar2_table(33) := '505D3B0A2020202020202F2F2052657475726E49664162727570742866756E63292E0A2020202020202F2F2049662066756E632069732065697468657220756E646566696E6564206F72206E756C6C2C2072657475726E20756E646566696E65642E0A20';
wwv_flow_imp.g_varchar2_table(34) := '202020202069662866756E63203D3D206E756C6C29207B0A202020202020202072657475726E20766F696420303B0A2020202020207D0A2020202020202F2F20496620497343616C6C61626C652866756E63292069732066616C73652C207468726F7720';
wwv_flow_imp.g_varchar2_table(35) := '6120547970654572726F7220657863657074696F6E2E0A2020202020206966202821697343616C6C61626C652866756E632929207B0A20202020202020207468726F77206E657720547970654572726F722866756E63202B2027206973206E6F74206120';
wwv_flow_imp.g_varchar2_table(36) := '66756E6374696F6E27293B0A2020202020207D0A20202020202072657475726E2066756E633B0A202020207D0A20207D3B0A2020766172206974657261746F7253746570203D2066756E6374696F6E286974657261746F7229207B0A202020202F2F204C';
wwv_flow_imp.g_varchar2_table(37) := '657420726573756C74206265204974657261746F724E657874286974657261746F72292E0A202020202F2F2052657475726E496641627275707428726573756C74292E0A2020202076617220726573756C74203D206974657261746F722E6E6578742829';
wwv_flow_imp.g_varchar2_table(38) := '3B0A202020202F2F204C657420646F6E65206265204974657261746F72436F6D706C65746528726573756C74292E0A202020202F2F2052657475726E496641627275707428646F6E65292E0A2020202076617220646F6E65203D20426F6F6C65616E2872';
wwv_flow_imp.g_varchar2_table(39) := '6573756C742E646F6E65293B0A202020202F2F20496620646F6E6520697320747275652C2072657475726E2066616C73652E0A20202020696628646F6E6529207B0A20202020202072657475726E2066616C73653B0A202020207D0A202020202F2F2052';
wwv_flow_imp.g_varchar2_table(40) := '657475726E20726573756C742E0A2020202072657475726E20726573756C743B0A20207D3B0A0A20202F2F20546865206C656E6774682070726F7065727479206F66207468652066726F6D206D6574686F6420697320312E0A202072657475726E206675';
wwv_flow_imp.g_varchar2_table(41) := '6E6374696F6E2066726F6D286974656D73202F2A2C206D6170466E2C2074686973417267202A2F2029207B0A202020202775736520737472696374273B0A0A202020202F2F20312E204C657420432062652074686520746869732076616C75652E0A2020';
wwv_flow_imp.g_varchar2_table(42) := '20207661722043203D20746869733B0A0A202020202F2F20322E204966206D6170666E20697320756E646566696E65642C206C6574206D617070696E672062652066616C73652E0A20202020766172206D6170466E203D20617267756D656E74732E6C65';
wwv_flow_imp.g_varchar2_table(43) := '6E677468203E2031203F20617267756D656E74735B315D203A20766F696420303B0A0A2020202076617220543B0A2020202069662028747970656F66206D6170466E20213D3D2027756E646566696E65642729207B0A2020202020202F2F20332E20656C';
wwv_flow_imp.g_varchar2_table(44) := '73650A2020202020202F2F202020612E20496620497343616C6C61626C65286D6170666E292069732066616C73652C207468726F77206120547970654572726F7220657863657074696F6E2E0A2020202020206966202821697343616C6C61626C65286D';
wwv_flow_imp.g_varchar2_table(45) := '6170466E2929207B0A20202020202020207468726F77206E657720547970654572726F72280A202020202020202020202741727261792E66726F6D3A207768656E2070726F76696465642C20746865207365636F6E6420617267756D656E74206D757374';
wwv_flow_imp.g_varchar2_table(46) := '20626520612066756E6374696F6E270A2020202020202020293B0A2020202020207D0A0A2020202020202F2F202020622E20496620746869734172672077617320737570706C6965642C206C6574205420626520746869734172673B20656C7365206C65';
wwv_flow_imp.g_varchar2_table(47) := '7420540A2020202020202F2F202020202020626520756E646566696E65642E0A20202020202069662028617267756D656E74732E6C656E677468203E203229207B0A202020202020202054203D20617267756D656E74735B325D3B0A2020202020207D0A';
wwv_flow_imp.g_varchar2_table(48) := '2020202020202F2F202020632E204C6574206D617070696E6720626520747275652028696D706C696564206279206D6170466E290A202020207D0A0A2020202076617220412C206B3B0A0A202020202F2F20342E204C6574207573696E67497465726174';
wwv_flow_imp.g_varchar2_table(49) := '6F72206265204765744D6574686F64286974656D732C2040406974657261746F72292E0A202020202F2F20352E2052657475726E4966416272757074287573696E674974657261746F72292E0A20202020766172207573696E674974657261746F72203D';
wwv_flow_imp.g_varchar2_table(50) := '206765744D6574686F64286974656D732C206974657261746F7250726F70286974656D7329293B0A0A202020202F2F20362E204966207573696E674974657261746F72206973206E6F7420756E646566696E65642C207468656E0A202020206966202875';
wwv_flow_imp.g_varchar2_table(51) := '73696E674974657261746F7220213D3D20766F6964203029207B0A2020202020202F2F20612E204966204973436F6E7374727563746F7228432920697320747275652C207468656E0A2020202020202F2F202020692E204C657420412062652074686520';
wwv_flow_imp.g_varchar2_table(52) := '726573756C74206F662063616C6C696E6720746865205B5B436F6E7374727563745D5D0A2020202020202F2F202020202020696E7465726E616C206D6574686F64206F662043207769746820616E20656D70747920617267756D656E74206C6973742E0A';
wwv_flow_imp.g_varchar2_table(53) := '2020202020202F2F20622E20456C73652C0A2020202020202F2F202020692E204C657420412062652074686520726573756C74206F6620746865206162737472616374206F7065726174696F6E2041727261794372656174650A2020202020202F2F2020';
wwv_flow_imp.g_varchar2_table(54) := '202020207769746820617267756D656E7420302E0A2020202020202F2F20632E2052657475726E49664162727570742841292E0A20202020202041203D20697343616C6C61626C65284329203F204F626A656374286E65772043282929203A205B5D3B0A';
wwv_flow_imp.g_varchar2_table(55) := '0A2020202020202F2F20642E204C6574206974657261746F72206265204765744974657261746F72286974656D732C207573696E674974657261746F72292E0A202020202020766172206974657261746F72203D207573696E674974657261746F722E63';
wwv_flow_imp.g_varchar2_table(56) := '616C6C286974656D73293B0A0A2020202020202F2F20652E2052657475726E4966416272757074286974657261746F72292E0A202020202020696620286974657261746F72203D3D206E756C6C29207B0A20202020202020207468726F77206E65772054';
wwv_flow_imp.g_varchar2_table(57) := '7970654572726F72280A202020202020202020202741727261792E66726F6D20726571756972657320616E2061727261792D6C696B65206F72206974657261626C65206F626A656374270A2020202020202020293B0A2020202020207D0A0A2020202020';
wwv_flow_imp.g_varchar2_table(58) := '202F2F20662E204C6574206B20626520302E0A2020202020206B203D20303B0A0A2020202020202F2F20672E205265706561740A202020202020766172206E6578742C206E65787456616C75653B0A2020202020207768696C6520287472756529207B0A';
wwv_flow_imp.g_varchar2_table(59) := '20202020202020202F2F20692E204C657420506B20626520546F537472696E67286B292E0A20202020202020202F2F2069692E204C6574206E657874206265204974657261746F7253746570286974657261746F72292E0A20202020202020202F2F2069';
wwv_flow_imp.g_varchar2_table(60) := '69692E2052657475726E4966416272757074286E657874292E0A20202020202020206E657874203D206974657261746F7253746570286974657261746F72293B0A0A20202020202020202F2F2069762E204966206E6578742069732066616C73652C2074';
wwv_flow_imp.g_varchar2_table(61) := '68656E0A202020202020202069662028216E65787429207B0A0A202020202020202020202F2F20312E204C6574207365745374617475732062652053657428412C20226C656E677468222C206B2C2074727565292E0A202020202020202020202F2F2032';
wwv_flow_imp.g_varchar2_table(62) := '2E2052657475726E496641627275707428736574537461747573292E0A20202020202020202020412E6C656E677468203D206B3B0A0A202020202020202020202F2F20332E2052657475726E20412E0A2020202020202020202072657475726E20413B0A';
wwv_flow_imp.g_varchar2_table(63) := '20202020202020207D0A20202020202020202F2F20762E204C6574206E65787456616C7565206265204974657261746F7256616C7565286E657874292E0A20202020202020202F2F2076692E2052657475726E4966416272757074286E65787456616C75';
wwv_flow_imp.g_varchar2_table(64) := '65290A20202020202020206E65787456616C7565203D206E6578742E76616C75653B0A0A20202020202020202F2F207669692E204966206D617070696E6720697320747275652C207468656E0A20202020202020202F2F202020312E204C6574206D6170';
wwv_flow_imp.g_varchar2_table(65) := '70656456616C75652062652043616C6C286D6170666E2C20542C20C2AB6E65787456616C75652C206BC2BB292E0A20202020202020202F2F202020322E204966206D617070656456616C756520697320616E2061627275707420636F6D706C6574696F6E';
wwv_flow_imp.g_varchar2_table(66) := '2C2072657475726E0A20202020202020202F2F2020202020204974657261746F72436C6F7365286974657261746F722C206D617070656456616C7565292E0A20202020202020202F2F202020332E204C6574206D617070656456616C7565206265206D61';
wwv_flow_imp.g_varchar2_table(67) := '7070656456616C75652E5B5B76616C75655D5D2E0A20202020202020202F2F20766969692E20456C73652C206C6574206D617070656456616C7565206265206E65787456616C75652E0A20202020202020202F2F2069782E20204C657420646566696E65';
wwv_flow_imp.g_varchar2_table(68) := '5374617475732062652074686520726573756C74206F660A20202020202020202F2F2020202020204372656174654461746150726F70657274794F725468726F7728412C20506B2C206D617070656456616C7565292E0A20202020202020202F2F20782E';
wwv_flow_imp.g_varchar2_table(69) := '205B544F444F5D20496620646566696E6553746174757320697320616E2061627275707420636F6D706C6574696F6E2C2072657475726E0A20202020202020202F2F202020204974657261746F72436C6F7365286974657261746F722C20646566696E65';
wwv_flow_imp.g_varchar2_table(70) := '537461747573292E0A2020202020202020696620286D6170466E29207B0A20202020202020202020415B6B5D203D206D6170466E2E63616C6C28542C206E65787456616C75652C206B293B0A20202020202020207D0A2020202020202020656C7365207B';
wwv_flow_imp.g_varchar2_table(71) := '0A20202020202020202020415B6B5D203D206E65787456616C75653B0A20202020202020207D0A20202020202020202F2F2078692E20496E637265617365206B20627920312E0A20202020202020206B2B2B3B0A2020202020207D0A2020202020202F2F';
wwv_flow_imp.g_varchar2_table(72) := '20372E204173736572743A206974656D73206973206E6F7420616E204974657261626C6520736F20617373756D652069742069730A2020202020202F2F20202020616E2061727261792D6C696B65206F626A6563742E0A202020207D20656C7365207B0A';
wwv_flow_imp.g_varchar2_table(73) := '0A2020202020202F2F20382E204C65742061727261794C696B6520626520546F4F626A656374286974656D73292E0A2020202020207661722061727261794C696B65203D204F626A656374286974656D73293B0A0A2020202020202F2F20392E20526574';
wwv_flow_imp.g_varchar2_table(74) := '75726E4966416272757074286974656D73292E0A202020202020696620286974656D73203D3D206E756C6C29207B0A20202020202020207468726F77206E657720547970654572726F72280A202020202020202020202741727261792E66726F6D207265';
wwv_flow_imp.g_varchar2_table(75) := '71756972657320616E2061727261792D6C696B65206F626A656374202D206E6F74206E756C6C206F7220756E646566696E6564270A2020202020202020293B0A2020202020207D0A0A2020202020202F2F2031302E204C6574206C656E20626520546F4C';
wwv_flow_imp.g_varchar2_table(76) := '656E677468284765742861727261794C696B652C20226C656E6774682229292E0A2020202020202F2F2031312E2052657475726E4966416272757074286C656E292E0A202020202020766172206C656E203D20746F4C656E6774682861727261794C696B';
wwv_flow_imp.g_varchar2_table(77) := '652E6C656E677468293B0A0A2020202020202F2F2031322E204966204973436F6E7374727563746F7228432920697320747275652C207468656E0A2020202020202F2F2020202020612E204C6574204120626520436F6E73747275637428432C20C2AB6C';
wwv_flow_imp.g_varchar2_table(78) := '656EC2BB292E0A2020202020202F2F2031332E20456C73650A2020202020202F2F2020202020612E204C65742041206265204172726179437265617465286C656E292E0A2020202020202F2F2031342E2052657475726E49664162727570742841292E0A';
wwv_flow_imp.g_varchar2_table(79) := '20202020202041203D20697343616C6C61626C65284329203F204F626A656374286E65772043286C656E2929203A206E6577204172726179286C656E293B0A0A2020202020202F2F2031352E204C6574206B20626520302E0A2020202020206B203D2030';
wwv_flow_imp.g_varchar2_table(80) := '3B0A2020202020202F2F2031362E205265706561742C207768696C65206B203C206C656EE280A62028616C736F2073746570732061202D2068290A202020202020766172206B56616C75653B0A2020202020207768696C6520286B203C206C656E29207B';
wwv_flow_imp.g_varchar2_table(81) := '0A20202020202020206B56616C7565203D2061727261794C696B655B6B5D3B0A2020202020202020696620286D6170466E29207B0A20202020202020202020415B6B5D203D206D6170466E2E63616C6C28542C206B56616C75652C206B293B0A20202020';
wwv_flow_imp.g_varchar2_table(82) := '202020207D0A2020202020202020656C7365207B0A20202020202020202020415B6B5D203D206B56616C75653B0A20202020202020207D0A20202020202020206B2B2B3B0A2020202020207D0A2020202020202F2F2031372E204C657420736574537461';
wwv_flow_imp.g_varchar2_table(83) := '7475732062652053657428412C20226C656E677468222C206C656E2C2074727565292E0A2020202020202F2F2031382E2052657475726E496641627275707428736574537461747573292E0A202020202020412E6C656E677468203D206C656E3B0A2020';
wwv_flow_imp.g_varchar2_table(84) := '202020202F2F2031392E2052657475726E20412E0A202020207D0A2020202072657475726E20413B0A20207D3B0A7D2928293B0A0A76617220696E646578203D2028747970656F662041727261792E66726F6D203D3D3D202766756E6374696F6E27203F';
wwv_flow_imp.g_varchar2_table(85) := '0A202041727261792E66726F6D203A0A2020706F6C7966696C6C0A293B0A0A2F2A2A0A202A20697341727261790A202A2F0A0A7661722069734172726179203D2041727261792E697341727261793B0A0A2F2A2A0A202A20746F537472696E670A202A2F';
wwv_flow_imp.g_varchar2_table(86) := '0A0A76617220737472203D204F626A6563742E70726F746F747970652E746F537472696E673B0A0A2F2A2A0A202A2057686574686572206F72206E6F742074686520676976656E206076616C600A202A20697320616E2061727261792E0A202A0A202A20';
wwv_flow_imp.g_varchar2_table(87) := '6578616D706C653A0A202A0A202A202020202020202069734172726179285B5D293B0A202A20202020202020202F2F203E20747275650A202A20202020202020206973417272617928617267756D656E7473293B0A202A20202020202020202F2F203E20';
wwv_flow_imp.g_varchar2_table(88) := '66616C73650A202A202020202020202069734172726179282727293B0A202A20202020202020202F2F203E2066616C73650A202A0A202A2040706172616D207B6D697865647D2076616C0A202A204072657475726E207B626F6F6C7D0A202A2F0A0A7661';
wwv_flow_imp.g_varchar2_table(89) := '7220696E6465782431203D2069734172726179207C7C2066756E6374696F6E202876616C29207B0A202072657475726E2021212076616C20262620275B6F626A6563742041727261795D27203D3D207374722E63616C6C2876616C293B0A7D3B0A0A2F2A';
wwv_flow_imp.g_varchar2_table(90) := '2A0A202A2052657475726E73206074727565602069662070726F766964656420696E70757420697320456C656D656E742E0A202A20406E616D65206973456C656D656E740A202A2040706172616D207B2A7D205B696E7075745D0A202A20407265747572';
wwv_flow_imp.g_varchar2_table(91) := '6E73207B626F6F6C65616E7D0A202A2F0A0A766172205F747970656F66203D20747970656F662053796D626F6C203D3D3D202266756E6374696F6E2220262620747970656F662053796D626F6C2E6974657261746F72203D3D3D202273796D626F6C2220';
wwv_flow_imp.g_varchar2_table(92) := '3F2066756E6374696F6E20286F626A29207B2072657475726E20747970656F66206F626A3B207D203A2066756E6374696F6E20286F626A29207B2072657475726E206F626A20262620747970656F662053796D626F6C203D3D3D202266756E6374696F6E';
wwv_flow_imp.g_varchar2_table(93) := '22202626206F626A2E636F6E7374727563746F72203D3D3D2053796D626F6C203F202273796D626F6C22203A20747970656F66206F626A3B207D3B0A0A2F2A2A0A202A2052657475726E73206074727565602069662070726F766964656420696E707574';
wwv_flow_imp.g_varchar2_table(94) := '20697320456C656D656E742E0A202A20406E616D65206973456C656D656E740A202A2040706172616D207B2A7D205B696E7075745D0A202A204072657475726E73207B626F6F6C65616E7D0A202A2F0A766172206973456C656D656E742431203D206675';
wwv_flow_imp.g_varchar2_table(95) := '6E6374696F6E2028696E70757429207B0A202072657475726E20696E70757420213D206E756C6C2026262028747970656F6620696E707574203D3D3D2027756E646566696E656427203F2027756E646566696E656427203A205F747970656F6628696E70';
wwv_flow_imp.g_varchar2_table(96) := '75742929203D3D3D20276F626A6563742720262620696E7075742E6E6F646554797065203D3D3D2031202626205F747970656F6628696E7075742E7374796C6529203D3D3D20276F626A65637427202626205F747970656F6628696E7075742E6F776E65';
wwv_flow_imp.g_varchar2_table(97) := '72446F63756D656E7429203D3D3D20276F626A656374273B0A7D3B0A0A66756E6374696F6E20696E6465784F66456C656D656E7428656C656D656E74732C20656C656D656E74297B0A20202020656C656D656E74203D207265736F6C7665456C656D656E';
wwv_flow_imp.g_varchar2_table(98) := '7428656C656D656E742C2074727565293B0A20202020696628216973456C656D656E74243128656C656D656E742929207B2072657475726E202D313B207D0A20202020666F722876617220693D303B20693C656C656D656E74732E6C656E6774683B2069';
wwv_flow_imp.g_varchar2_table(99) := '2B2B297B0A2020202020202020696628656C656D656E74735B695D203D3D3D20656C656D656E74297B0A20202020202020202020202072657475726E20693B0A20202020202020207D0A202020207D0A2020202072657475726E202D313B0A7D0A0A6675';
wwv_flow_imp.g_varchar2_table(100) := '6E6374696F6E20686173456C656D656E7428656C656D656E74732C20656C656D656E74297B0A2020202072657475726E202D3120213D3D20696E6465784F66456C656D656E7428656C656D656E74732C20656C656D656E74293B0A7D0A0A66756E637469';
wwv_flow_imp.g_varchar2_table(101) := '6F6E20646F6D4C6973744F6628617272297B0A0A202020206966282161727229207B2072657475726E205B5D3B207D0A0A202020207472797B0A2020202020202020696628747970656F6620617272203D3D3D2027737472696E6727297B0A2020202020';
wwv_flow_imp.g_varchar2_table(102) := '2020202020202072657475726E20696E64657828646F63756D656E742E717565727953656C6563746F72416C6C2861727229293B0A20202020202020207D656C736520696628696E64657824312861727229297B0A202020202020202020202020726574';
wwv_flow_imp.g_varchar2_table(103) := '75726E206172722E6D6170287265736F6C7665456C656D656E74293B0A20202020202020207D656C73657B0A202020202020202020202020696628747970656F66206172722E6C656E677468203D3D3D2027756E646566696E656427297B0A2020202020';
wwv_flow_imp.g_varchar2_table(104) := '202020202020202020202072657475726E205B7265736F6C7665456C656D656E7428617272295D3B0A2020202020202020202020207D0A0A20202020202020202020202072657475726E20696E646578286172722C207265736F6C7665456C656D656E74';
wwv_flow_imp.g_varchar2_table(105) := '293B0A0A20202020202020207D0A202020207D63617463682865297B0A20202020202020207468726F77206E6577204572726F722865293B0A202020207D0A0A7D0A0A66756E6374696F6E2070757368456C656D656E747328656C656D656E74732C2074';
wwv_flow_imp.g_varchar2_table(106) := '6F416464297B0A0A20202020666F722876617220693D303B20693C746F4164642E6C656E6774683B20692B2B297B0A202020202020202069662821686173456C656D656E7428656C656D656E74732C20746F4164645B695D29290A202020202020202020';
wwv_flow_imp.g_varchar2_table(107) := '2020207B20656C656D656E74732E7075736828746F4164645B695D293B207D0A202020207D0A0A2020202072657475726E20746F4164643B0A7D0A0A66756E6374696F6E20616464456C656D656E747328656C656D656E7473297B0A2020202076617220';
wwv_flow_imp.g_varchar2_table(108) := '617267756D656E74732431203D20617267756D656E74733B0A0A2020202076617220746F416464203D205B5D2C206C656E203D20617267756D656E74732E6C656E677468202D20313B0A202020207768696C652028206C656E2D2D203E20302029207B20';
wwv_flow_imp.g_varchar2_table(109) := '746F4164645B206C656E205D203D20617267756D656E747324315B206C656E202B2031205D3B207D0A0A20202020746F416464203D20746F4164642E6D6170287265736F6C7665456C656D656E74293B0A2020202072657475726E2070757368456C656D';
wwv_flow_imp.g_varchar2_table(110) := '656E747328656C656D656E74732C20746F416464293B0A7D0A0A66756E6374696F6E2072656D6F7665456C656D656E747328656C656D656E7473297B0A2020202076617220617267756D656E74732431203D20617267756D656E74733B0A0A2020202076';
wwv_flow_imp.g_varchar2_table(111) := '617220746F52656D6F7665203D205B5D2C206C656E203D20617267756D656E74732E6C656E677468202D20313B0A202020207768696C652028206C656E2D2D203E20302029207B20746F52656D6F76655B206C656E205D203D20617267756D656E747324';
wwv_flow_imp.g_varchar2_table(112) := '315B206C656E202B2031205D3B207D0A0A2020202072657475726E20746F52656D6F76652E6D6170287265736F6C7665456C656D656E74292E7265647563652866756E6374696F6E20286C6173742C2065297B0A0A202020202020202076617220696E64';
wwv_flow_imp.g_varchar2_table(113) := '6578242431203D20696E6465784F66456C656D656E7428656C656D656E74732C2065293B0A0A2020202020202020696628696E64657824243120213D3D202D31290A2020202020202020202020207B2072657475726E206C6173742E636F6E6361742865';
wwv_flow_imp.g_varchar2_table(114) := '6C656D656E74732E73706C69636528696E6465782424312C203129293B207D0A202020202020202072657475726E206C6173743B0A202020207D2C205B5D293B0A7D0A0A66756E6374696F6E207265736F6C7665456C656D656E7428656C656D656E742C';
wwv_flow_imp.g_varchar2_table(115) := '206E6F5468726F77297B0A20202020696628747970656F6620656C656D656E74203D3D3D2027737472696E6727297B0A20202020202020207472797B0A20202020202020202020202072657475726E20646F63756D656E742E717565727953656C656374';
wwv_flow_imp.g_varchar2_table(116) := '6F7228656C656D656E74293B0A20202020202020207D63617463682865297B0A2020202020202020202020207468726F7720653B0A20202020202020207D0A0A202020207D0A0A20202020696628216973456C656D656E74243128656C656D656E742920';
wwv_flow_imp.g_varchar2_table(117) := '262620216E6F5468726F77297B0A20202020202020207468726F77206E657720547970654572726F722828656C656D656E74202B2022206973206E6F74206120444F4D20656C656D656E742E2229293B0A202020207D0A2020202072657475726E20656C';
wwv_flow_imp.g_varchar2_table(118) := '656D656E743B0A7D0A0A66756E6374696F6E20637265617465506F696E744342286F626A6563742C206F7074696F6E7329207B0A0A202020202F2F20412070657273697374656E74206F626A65637420286173206F70706F73656420746F207265747572';
wwv_flow_imp.g_varchar2_table(119) := '6E6564206F626A65637429206973207573656420746F2073617665206D656D6F72790A202020202F2F205468697320697320676F6F6420746F2070726576656E74206C61796F757420746872617368696E672C206F7220666F722067616D65732C20616E';
wwv_flow_imp.g_varchar2_table(120) := '6420737563680A0A202020202F2F204E4F54450A202020202F2F205468697320757365732049452066697865732077686963682073686F756C64206265204F4B20746F2072656D6F766520736F6D65206461792E203A290A202020202F2F20536F6D6520';
wwv_flow_imp.g_varchar2_table(121) := '73706565642077696C6C206265206761696E65642062792072656D6F76616C206F662074686573652E0A0A202020202F2F20706F696E7443422073686F756C6420626520736176656420696E2061207661726961626C65206F6E2072657475726E0A2020';
wwv_flow_imp.g_varchar2_table(122) := '20202F2F205468697320616C6C6F777320746865207573616765206F6620656C656D656E742E72656D6F76654576656E744C697374656E65720A0A202020206F7074696F6E73203D206F7074696F6E73207C7C207B7D3B0A0A2020202076617220616C6C';
wwv_flow_imp.g_varchar2_table(123) := '6F77557064617465203D20626F6F6C65616E286F7074696F6E732E616C6C6F775570646174652C2074727565293B0A0A202020202F2A696628747970656F66206F7074696F6E732E616C6C6F77557064617465203D3D3D202766756E6374696F6E27297B';
wwv_flow_imp.g_varchar2_table(124) := '0A2020202020202020616C6C6F77557064617465203D206F7074696F6E732E616C6C6F775570646174653B0A202020207D656C73657B0A2020202020202020616C6C6F77557064617465203D2066756E6374696F6E28297B72657475726E20747275653B';
wwv_flow_imp.g_varchar2_table(125) := '7D3B0A202020207D2A2F0A0A2020202072657475726E2066756E6374696F6E20706F696E744342286576656E7429207B0A0A20202020202020206576656E74203D206576656E74207C7C2077696E646F772E6576656E743B202F2F2049452D69736D0A20';
wwv_flow_imp.g_varchar2_table(126) := '202020202020206F626A6563742E746172676574203D206576656E742E746172676574207C7C206576656E742E737263456C656D656E74207C7C206576656E742E6F726967696E616C5461726765743B0A20202020202020206F626A6563742E656C656D';
wwv_flow_imp.g_varchar2_table(127) := '656E74203D20746869733B0A20202020202020206F626A6563742E74797065203D206576656E742E747970653B0A0A20202020202020206966202821616C6C6F77557064617465286576656E742929207B0A20202020202020202020202072657475726E';
wwv_flow_imp.g_varchar2_table(128) := '3B0A20202020202020207D0A0A20202020202020202F2F20537570706F727420746F7563680A20202020202020202F2F20687474703A2F2F7777772E6372656174697665626C6F712E636F6D2F6A6176617363726970742F6D616B652D796F75722D7369';
wwv_flow_imp.g_varchar2_table(129) := '74652D776F726B2D746F7563682D646576696365732D35313431313634340A0A2020202020202020696620286576656E742E746172676574546F756368657329207B0A2020202020202020202020206F626A6563742E78203D206576656E742E74617267';
wwv_flow_imp.g_varchar2_table(130) := '6574546F75636865735B305D2E636C69656E74583B0A2020202020202020202020206F626A6563742E79203D206576656E742E746172676574546F75636865735B305D2E636C69656E74593B0A2020202020202020202020206F626A6563742E70616765';
wwv_flow_imp.g_varchar2_table(131) := '58203D206576656E742E746172676574546F75636865735B305D2E70616765583B0A2020202020202020202020206F626A6563742E7061676559203D206576656E742E746172676574546F75636865735B305D2E70616765593B0A202020202020202020';
wwv_flow_imp.g_varchar2_table(132) := '2020206F626A6563742E73637265656E58203D206576656E742E746172676574546F75636865735B305D2E73637265656E583B0A2020202020202020202020206F626A6563742E73637265656E59203D206576656E742E746172676574546F7563686573';
wwv_flow_imp.g_varchar2_table(133) := '5B305D2E73637265656E593B0A20202020202020207D20656C7365207B0A0A2020202020202020202020202F2F2049662070616765582F59206172656E277420617661696C61626C6520616E6420636C69656E74582F59206172652C0A20202020202020';
wwv_flow_imp.g_varchar2_table(134) := '20202020202F2F2063616C63756C6174652070616765582F59202D206C6F6769632074616B656E2066726F6D206A51756572792E0A2020202020202020202020202F2F20285468697320697320746F20737570706F7274206F6C64204945290A20202020';
wwv_flow_imp.g_varchar2_table(135) := '20202020202020202F2F204E4F544520486F706566756C6C7920746869732063616E2062652072656D6F76656420736F6F6E2E0A0A202020202020202020202020696620286576656E742E7061676558203D3D3D206E756C6C202626206576656E742E63';
wwv_flow_imp.g_varchar2_table(136) := '6C69656E745820213D3D206E756C6C29207B0A20202020202020202020202020202020766172206576656E74446F63203D206576656E742E746172676574202626206576656E742E7461726765742E6F776E6572446F63756D656E74207C7C20646F6375';
wwv_flow_imp.g_varchar2_table(137) := '6D656E743B0A2020202020202020202020202020202076617220646F63203D206576656E74446F632E646F63756D656E74456C656D656E743B0A2020202020202020202020202020202076617220626F6479203D206576656E74446F632E626F64793B0A';
wwv_flow_imp.g_varchar2_table(138) := '0A202020202020202020202020202020206F626A6563742E7061676558203D206576656E742E636C69656E7458202B2028646F6320262620646F632E7363726F6C6C4C656674207C7C20626F647920262620626F64792E7363726F6C6C4C656674207C7C';
wwv_flow_imp.g_varchar2_table(139) := '203029202D2028646F6320262620646F632E636C69656E744C656674207C7C20626F647920262620626F64792E636C69656E744C656674207C7C2030293B0A202020202020202020202020202020206F626A6563742E7061676559203D206576656E742E';
wwv_flow_imp.g_varchar2_table(140) := '636C69656E7459202B2028646F6320262620646F632E7363726F6C6C546F70207C7C20626F647920262620626F64792E7363726F6C6C546F70207C7C203029202D2028646F6320262620646F632E636C69656E74546F70207C7C20626F64792026262062';
wwv_flow_imp.g_varchar2_table(141) := '6F64792E636C69656E74546F70207C7C2030293B0A2020202020202020202020207D20656C7365207B0A202020202020202020202020202020206F626A6563742E7061676558203D206576656E742E70616765583B0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(142) := '20206F626A6563742E7061676559203D206576656E742E70616765593B0A2020202020202020202020207D0A0A2020202020202020202020202F2F2070616765582C20616E64207061676559206368616E676520776974682070616765207363726F6C6C';
wwv_flow_imp.g_varchar2_table(143) := '0A2020202020202020202020202F2F20736F207765277265206E6F7420676F696E6720746F207573652074686F736520666F7220782C20616E6420792E0A2020202020202020202020202F2F204E4F5445204D6F73742062726F777365727320616C736F';
wwv_flow_imp.g_varchar2_table(144) := '20616C69617320636C69656E74582F59207769746820782F790A2020202020202020202020202F2F20736F2074686174277320736F6D657468696E6720746F20636F6E736964657220646F776E2074686520726F61642E0A0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(145) := '206F626A6563742E78203D206576656E742E636C69656E74583B0A2020202020202020202020206F626A6563742E79203D206576656E742E636C69656E74593B0A0A2020202020202020202020206F626A6563742E73637265656E58203D206576656E74';
wwv_flow_imp.g_varchar2_table(146) := '2E73637265656E583B0A2020202020202020202020206F626A6563742E73637265656E59203D206576656E742E73637265656E593B0A20202020202020207D0A0A20202020202020206F626A6563742E636C69656E7458203D206F626A6563742E783B0A';
wwv_flow_imp.g_varchar2_table(147) := '20202020202020206F626A6563742E636C69656E7459203D206F626A6563742E793B0A202020207D3B0A0A202020202F2F4E4F54452052656D656D626572206163636573736962696C6974792C204172696120726F6C65732C20616E64206C6162656C73';
wwv_flow_imp.g_varchar2_table(148) := '2E0A7D0A0A66756E6374696F6E2063726561746557696E646F77526563742829207B0A202020207661722070726F7073203D207B0A2020202020202020746F703A207B2076616C75653A20302C20656E756D657261626C653A2074727565207D2C0A2020';
wwv_flow_imp.g_varchar2_table(149) := '2020202020206C6566743A207B2076616C75653A20302C20656E756D657261626C653A2074727565207D2C0A202020202020202072696768743A207B2076616C75653A2077696E646F772E696E6E657257696474682C20656E756D657261626C653A2074';
wwv_flow_imp.g_varchar2_table(150) := '727565207D2C0A2020202020202020626F74746F6D3A207B2076616C75653A2077696E646F772E696E6E65724865696768742C20656E756D657261626C653A2074727565207D2C0A202020202020202077696474683A207B2076616C75653A2077696E64';
wwv_flow_imp.g_varchar2_table(151) := '6F772E696E6E657257696474682C20656E756D657261626C653A2074727565207D2C0A20202020202020206865696768743A207B2076616C75653A2077696E646F772E696E6E65724865696768742C20656E756D657261626C653A2074727565207D2C0A';
wwv_flow_imp.g_varchar2_table(152) := '2020202020202020783A207B2076616C75653A20302C20656E756D657261626C653A2074727565207D2C0A2020202020202020793A207B2076616C75653A20302C20656E756D657261626C653A2074727565207D0A202020207D3B0A0A20202020696620';
wwv_flow_imp.g_varchar2_table(153) := '284F626A6563742E63726561746529207B0A202020202020202072657475726E204F626A6563742E637265617465287B7D2C2070726F7073293B0A202020207D20656C7365207B0A20202020202020207661722072656374203D207B7D3B0A2020202020';
wwv_flow_imp.g_varchar2_table(154) := '2020204F626A6563742E646566696E6550726F7065727469657328726563742C2070726F7073293B0A202020202020202072657475726E20726563743B0A202020207D0A7D0A0A66756E6374696F6E20676574436C69656E745265637428656C29207B0A';
wwv_flow_imp.g_varchar2_table(155) := '2020202069662028656C203D3D3D2077696E646F7729207B0A202020202020202072657475726E2063726561746557696E646F775265637428293B0A202020207D20656C7365207B0A2020202020202020747279207B0A20202020202020202020202076';
wwv_flow_imp.g_varchar2_table(156) := '61722072656374203D20656C2E676574426F756E64696E67436C69656E745265637428293B0A20202020202020202020202069662028726563742E78203D3D3D20756E646566696E656429207B0A20202020202020202020202020202020726563742E78';
wwv_flow_imp.g_varchar2_table(157) := '203D20726563742E6C6566743B0A20202020202020202020202020202020726563742E79203D20726563742E746F703B0A2020202020202020202020207D0A20202020202020202020202072657475726E20726563743B0A20202020202020207D206361';
wwv_flow_imp.g_varchar2_table(158) := '74636820286529207B0A2020202020202020202020207468726F77206E657720547970654572726F72282243616E27742063616C6C20676574426F756E64696E67436C69656E7452656374206F6E2022202B20656C293B0A20202020202020207D0A2020';
wwv_flow_imp.g_varchar2_table(159) := '20207D0A7D0A0A66756E6374696F6E20706F696E74496E7369646528706F696E742C20656C29207B0A202020207661722072656374203D20676574436C69656E745265637428656C293B0A2020202072657475726E20706F696E742E79203E2072656374';
wwv_flow_imp.g_varchar2_table(160) := '2E746F7020262620706F696E742E79203C20726563742E626F74746F6D20262620706F696E742E78203E20726563742E6C65667420262620706F696E742E78203C20726563742E72696768743B0A7D0A0A766172206F626A656374437265617465203D20';
wwv_flow_imp.g_varchar2_table(161) := '766F696420303B0A69662028747970656F66204F626A6563742E63726561746520213D202766756E6374696F6E2729207B0A20206F626A656374437265617465203D2066756E6374696F6E2028756E646566696E656429207B0A20202020766172205465';
wwv_flow_imp.g_varchar2_table(162) := '6D70203D2066756E6374696F6E2054656D702829207B7D3B0A2020202072657475726E2066756E6374696F6E202870726F746F747970652C2070726F706572746965734F626A65637429207B0A2020202020206966202870726F746F7479706520213D3D';
wwv_flow_imp.g_varchar2_table(163) := '204F626A6563742870726F746F74797065292026262070726F746F7479706520213D3D206E756C6C29207B0A20202020202020207468726F7720547970654572726F722827417267756D656E74206D75737420626520616E206F626A6563742C206F7220';
wwv_flow_imp.g_varchar2_table(164) := '6E756C6C27293B0A2020202020207D0A20202020202054656D702E70726F746F74797065203D2070726F746F74797065207C7C207B7D3B0A20202020202076617220726573756C74203D206E65772054656D7028293B0A20202020202054656D702E7072';
wwv_flow_imp.g_varchar2_table(165) := '6F746F74797065203D206E756C6C3B0A2020202020206966202870726F706572746965734F626A65637420213D3D20756E646566696E656429207B0A20202020202020204F626A6563742E646566696E6550726F7065727469657328726573756C742C20';
wwv_flow_imp.g_varchar2_table(166) := '70726F706572746965734F626A656374293B0A2020202020207D0A0A2020202020202F2F20746F20696D6974617465207468652063617365206F66204F626A6563742E637265617465286E756C6C290A2020202020206966202870726F746F7479706520';
wwv_flow_imp.g_varchar2_table(167) := '3D3D3D206E756C6C29207B0A2020202020202020726573756C742E5F5F70726F746F5F5F203D206E756C6C3B0A2020202020207D0A20202020202072657475726E20726573756C743B0A202020207D3B0A20207D28293B0A7D20656C7365207B0A20206F';
wwv_flow_imp.g_varchar2_table(168) := '626A656374437265617465203D204F626A6563742E6372656174653B0A7D0A0A766172206F626A6563744372656174652431203D206F626A6563744372656174653B0A0A766172206D6F7573654576656E7450726F7073203D205B27616C744B6579272C';
wwv_flow_imp.g_varchar2_table(169) := '2027627574746F6E272C2027627574746F6E73272C2027636C69656E7458272C2027636C69656E7459272C20276374726C4B6579272C20276D6574614B6579272C20276D6F76656D656E7458272C20276D6F76656D656E7459272C20276F666673657458';
wwv_flow_imp.g_varchar2_table(170) := '272C20276F666673657459272C20277061676558272C20277061676559272C2027726567696F6E272C202772656C61746564546172676574272C202773637265656E58272C202773637265656E59272C202773686966744B6579272C2027776869636827';
wwv_flow_imp.g_varchar2_table(171) := '2C202778272C202779275D3B0A0A66756E6374696F6E206372656174654469737061746368657228656C656D656E7429207B0A0A202020207661722064656661756C7453657474696E6773203D207B0A202020202020202073637265656E583A20302C0A';
wwv_flow_imp.g_varchar2_table(172) := '202020202020202073637265656E593A20302C0A2020202020202020636C69656E74583A20302C0A2020202020202020636C69656E74593A20302C0A20202020202020206374726C4B65793A2066616C73652C0A202020202020202073686966744B6579';
wwv_flow_imp.g_varchar2_table(173) := '3A2066616C73652C0A2020202020202020616C744B65793A2066616C73652C0A20202020202020206D6574614B65793A2066616C73652C0A2020202020202020627574746F6E3A20302C0A2020202020202020627574746F6E733A20312C0A2020202020';
wwv_flow_imp.g_varchar2_table(174) := '20202072656C617465645461726765743A206E756C6C2C0A2020202020202020726567696F6E3A206E756C6C0A202020207D3B0A0A2020202069662028656C656D656E7420213D3D20756E646566696E656429207B0A2020202020202020656C656D656E';
wwv_flow_imp.g_varchar2_table(175) := '742E6164644576656E744C697374656E657228276D6F7573656D6F7665272C206F6E4D6F7665293B0A202020207D0A0A2020202066756E6374696F6E206F6E4D6F7665286529207B0A2020202020202020666F7220287661722069203D20303B2069203C';
wwv_flow_imp.g_varchar2_table(176) := '206D6F7573654576656E7450726F70732E6C656E6774683B20692B2B29207B0A20202020202020202020202064656661756C7453657474696E67735B6D6F7573654576656E7450726F70735B695D5D203D20655B6D6F7573654576656E7450726F70735B';
wwv_flow_imp.g_varchar2_table(177) := '695D5D3B0A20202020202020207D0A202020207D0A0A20202020766172206469737061746368203D2066756E6374696F6E202829207B0A2020202020202020696620284D6F7573654576656E7429207B0A20202020202020202020202072657475726E20';
wwv_flow_imp.g_varchar2_table(178) := '66756E6374696F6E206D3128656C656D656E742C20696E69744D6F76652C206461746129207B0A2020202020202020202020202020202076617220657674203D206E6577204D6F7573654576656E7428276D6F7573656D6F7665272C206372656174654D';
wwv_flow_imp.g_varchar2_table(179) := '6F7665496E69742864656661756C7453657474696E67732C20696E69744D6F766529293B0A0A202020202020202020202020202020202F2F6576742E64697370617463686564203D20276D6F7573656D6F7665273B0A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(180) := '20207365745370656369616C286576742C2064617461293B0A0A2020202020202020202020202020202072657475726E20656C656D656E742E64697370617463684576656E7428657674293B0A2020202020202020202020207D3B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(181) := '7D20656C73652069662028747970656F6620646F63756D656E742E6372656174654576656E74203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202072657475726E2066756E6374696F6E206D3228656C656D656E742C20696E69';
wwv_flow_imp.g_varchar2_table(182) := '744D6F76652C206461746129207B0A202020202020202020202020202020207661722073657474696E6773203D206372656174654D6F7665496E69742864656661756C7453657474696E67732C20696E69744D6F7665293B0A2020202020202020202020';
wwv_flow_imp.g_varchar2_table(183) := '202020202076617220657674203D20646F63756D656E742E6372656174654576656E7428274D6F7573654576656E747327293B0A0A202020202020202020202020202020206576742E696E69744D6F7573654576656E7428226D6F7573656D6F7665222C';
wwv_flow_imp.g_varchar2_table(184) := '20747275652C202F2F63616E20627562626C650A20202020202020202020202020202020747275652C202F2F63616E63656C61626C650A2020202020202020202020202020202077696E646F772C202F2F766965770A2020202020202020202020202020';
wwv_flow_imp.g_varchar2_table(185) := '2020302C202F2F64657461696C0A2020202020202020202020202020202073657474696E67732E73637265656E582C202F2F302C202F2F73637265656E580A2020202020202020202020202020202073657474696E67732E73637265656E592C202F2F30';
wwv_flow_imp.g_varchar2_table(186) := '2C202F2F73637265656E590A2020202020202020202020202020202073657474696E67732E636C69656E74582C202F2F38302C202F2F636C69656E74580A2020202020202020202020202020202073657474696E67732E636C69656E74592C202F2F3230';
wwv_flow_imp.g_varchar2_table(187) := '2C202F2F636C69656E74590A2020202020202020202020202020202073657474696E67732E6374726C4B65792C202F2F66616C73652C202F2F6374726C4B65790A2020202020202020202020202020202073657474696E67732E616C744B65792C202F2F';
wwv_flow_imp.g_varchar2_table(188) := '66616C73652C202F2F616C744B65790A2020202020202020202020202020202073657474696E67732E73686966744B65792C202F2F66616C73652C202F2F73686966744B65790A2020202020202020202020202020202073657474696E67732E6D657461';
wwv_flow_imp.g_varchar2_table(189) := '4B65792C202F2F66616C73652C202F2F6D6574614B65790A2020202020202020202020202020202073657474696E67732E627574746F6E2C202F2F302C202F2F627574746F6E0A2020202020202020202020202020202073657474696E67732E72656C61';
wwv_flow_imp.g_varchar2_table(190) := '746564546172676574202F2F6E756C6C202F2F72656C617465645461726765740A20202020202020202020202020202020293B0A0A202020202020202020202020202020202F2F6576742E64697370617463686564203D20276D6F7573656D6F7665273B';
wwv_flow_imp.g_varchar2_table(191) := '0A202020202020202020202020202020207365745370656369616C286576742C2064617461293B0A0A2020202020202020202020202020202072657475726E20656C656D656E742E64697370617463684576656E7428657674293B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(192) := '202020207D3B0A20202020202020207D20656C73652069662028747970656F6620646F63756D656E742E6372656174654576656E744F626A656374203D3D3D202766756E6374696F6E2729207B0A20202020202020202020202072657475726E2066756E';
wwv_flow_imp.g_varchar2_table(193) := '6374696F6E206D3328656C656D656E742C20696E69744D6F76652C206461746129207B0A2020202020202020202020202020202076617220657674203D20646F63756D656E742E6372656174654576656E744F626A65637428293B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(194) := '20202020202020207661722073657474696E6773203D206372656174654D6F7665496E69742864656661756C7453657474696E67732C20696E69744D6F7665293B0A20202020202020202020202020202020666F722028766172206E616D6520696E2073';
wwv_flow_imp.g_varchar2_table(195) := '657474696E677329207B0A20202020202020202020202020202020202020206576745B6E616D655D203D2073657474696E67735B6E616D655D3B0A202020202020202020202020202020207D0A0A202020202020202020202020202020202F2F6576742E';
wwv_flow_imp.g_varchar2_table(196) := '64697370617463686564203D20276D6F7573656D6F7665273B0A202020202020202020202020202020207365745370656369616C286576742C2064617461293B0A0A2020202020202020202020202020202072657475726E20656C656D656E742E646973';
wwv_flow_imp.g_varchar2_table(197) := '70617463684576656E7428657674293B0A2020202020202020202020207D3B0A20202020202020207D0A202020207D28293B0A0A2020202066756E6374696F6E2064657374726F792829207B0A202020202020202069662028656C656D656E7429207B20';
wwv_flow_imp.g_varchar2_table(198) := '656C656D656E742E72656D6F76654576656E744C697374656E657228276D6F7573656D6F7665272C206F6E4D6F76652C2066616C7365293B207D0A202020202020202064656661756C7453657474696E6773203D206E756C6C3B0A202020207D0A0A2020';
wwv_flow_imp.g_varchar2_table(199) := '202072657475726E207B0A202020202020202064657374726F793A2064657374726F792C0A202020202020202064697370617463683A2064697370617463680A202020207D3B0A7D0A0A66756E6374696F6E206372656174654D6F7665496E6974286465';
wwv_flow_imp.g_varchar2_table(200) := '6661756C7453657474696E67732C20696E69744D6F766529207B0A20202020696E69744D6F7665203D20696E69744D6F7665207C7C207B7D3B0A202020207661722073657474696E6773203D206F626A65637443726561746524312864656661756C7453';
wwv_flow_imp.g_varchar2_table(201) := '657474696E6773293B0A20202020666F7220287661722069203D20303B2069203C206D6F7573654576656E7450726F70732E6C656E6774683B20692B2B29207B0A202020202020202069662028696E69744D6F76655B6D6F7573654576656E7450726F70';
wwv_flow_imp.g_varchar2_table(202) := '735B695D5D20213D3D20756E646566696E656429207B2073657474696E67735B6D6F7573654576656E7450726F70735B695D5D203D20696E69744D6F76655B6D6F7573654576656E7450726F70735B695D5D3B207D0A202020207D0A0A20202020726574';
wwv_flow_imp.g_varchar2_table(203) := '75726E2073657474696E67733B0A7D0A0A66756E6374696F6E207365745370656369616C28652C206461746129207B0A20202020636F6E736F6C652E6C6F6728276461746120272C2064617461293B0A20202020652E64617461203D2064617461207C7C';
wwv_flow_imp.g_varchar2_table(204) := '207B7D3B0A20202020652E64697370617463686564203D20276D6F7573656D6F7665273B0A7D0A0A66756E6374696F6E204175746F5363726F6C6C657228656C656D656E74732C206F7074696F6E73297B0A2020202069662028206F7074696F6E73203D';
wwv_flow_imp.g_varchar2_table(205) := '3D3D20766F696420302029206F7074696F6E73203D207B7D3B0A0A202020207661722073656C66203D20746869733B0A20202020766172206D61785370656564203D20342C207363726F6C6C696E67203D2066616C73653B0A0A20202020746869732E6D';
wwv_flow_imp.g_varchar2_table(206) := '617267696E203D206F7074696F6E732E6D617267696E207C7C202D313B0A202020202F2F746869732E7363726F6C6C696E67203D2066616C73653B0A20202020746869732E7363726F6C6C5768656E4F757473696465203D206F7074696F6E732E736372';
wwv_flow_imp.g_varchar2_table(207) := '6F6C6C5768656E4F757473696465207C7C2066616C73653B0A0A2020202076617220706F696E74203D207B7D2C0A2020202020202020706F696E744342203D20637265617465506F696E74434228706F696E74292C0A2020202020202020646973706174';
wwv_flow_imp.g_varchar2_table(208) := '63686572203D206372656174654469737061746368657228292C0A2020202020202020646F776E203D2066616C73653B0A0A2020202077696E646F772E6164644576656E744C697374656E657228276D6F7573656D6F7665272C20706F696E7443422C20';
wwv_flow_imp.g_varchar2_table(209) := '66616C7365293B0A2020202077696E646F772E6164644576656E744C697374656E65722827746F7563686D6F7665272C20706F696E7443422C2066616C7365293B0A0A202020206966282169734E614E286F7074696F6E732E6D6178537065656429297B';
wwv_flow_imp.g_varchar2_table(210) := '0A20202020202020206D61785370656564203D206F7074696F6E732E6D617853706565643B0A202020207D0A0A20202020746869732E6175746F5363726F6C6C203D20626F6F6C65616E286F7074696F6E732E6175746F5363726F6C6C293B0A20202020';
wwv_flow_imp.g_varchar2_table(211) := '746869732E73796E634D6F7665203D20626F6F6C65616E286F7074696F6E732E73796E634D6F76652C2066616C7365293B0A0A20202020746869732E64657374726F79203D2066756E6374696F6E28666F726365436C65616E416E696D6174696F6E2920';
wwv_flow_imp.g_varchar2_table(212) := '7B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228276D6F7573656D6F7665272C20706F696E7443422C2066616C7365293B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E65';
wwv_flow_imp.g_varchar2_table(213) := '722827746F7563686D6F7665272C20706F696E7443422C2066616C7365293B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228276D6F757365646F776E272C206F6E446F776E2C2066616C7365293B0A20202020';
wwv_flow_imp.g_varchar2_table(214) := '2020202077696E646F772E72656D6F76654576656E744C697374656E65722827746F7563687374617274272C206F6E446F776E2C2066616C7365293B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228276D6F75';
wwv_flow_imp.g_varchar2_table(215) := '73657570272C206F6E55702C2066616C7365293B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E65722827746F756368656E64272C206F6E55702C2066616C7365293B0A202020202020202077696E646F772E72656D';
wwv_flow_imp.g_varchar2_table(216) := '6F76654576656E744C697374656E65722827706F696E7465727570272C206F6E55702C2066616C7365293B0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228276D6F7573656C65617665272C206F6E4D6F757365';
wwv_flow_imp.g_varchar2_table(217) := '4F75742C2066616C7365293B0A0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228276D6F7573656D6F7665272C206F6E4D6F76652C2066616C7365293B0A202020202020202077696E646F772E72656D6F766545';
wwv_flow_imp.g_varchar2_table(218) := '76656E744C697374656E65722827746F7563686D6F7665272C206F6E4D6F76652C2066616C7365293B0A0A202020202020202077696E646F772E72656D6F76654576656E744C697374656E657228277363726F6C6C272C207365745363726F6C6C2C2074';
wwv_flow_imp.g_varchar2_table(219) := '727565293B0A2020202020202020656C656D656E7473203D205B5D3B0A2020202020202020696628666F726365436C65616E416E696D6174696F6E297B0A20202020202020202020636C65616E416E696D6174696F6E28293B0A20202020202020207D0A';
wwv_flow_imp.g_varchar2_table(220) := '202020207D3B0A0A20202020746869732E616464203D2066756E6374696F6E28297B0A202020202020202076617220656C656D656E74203D205B5D2C206C656E203D20617267756D656E74732E6C656E6774683B0A20202020202020207768696C652028';
wwv_flow_imp.g_varchar2_table(221) := '206C656E2D2D202920656C656D656E745B206C656E205D203D20617267756D656E74735B206C656E205D3B0A0A2020202020202020616464456C656D656E74732E6170706C7928766F696420302C205B20656C656D656E7473205D2E636F6E6361742820';
wwv_flow_imp.g_varchar2_table(222) := '656C656D656E742029293B0A202020202020202072657475726E20746869733B0A202020207D3B0A0A20202020746869732E72656D6F7665203D2066756E6374696F6E28297B0A202020202020202076617220656C656D656E74203D205B5D2C206C656E';
wwv_flow_imp.g_varchar2_table(223) := '203D20617267756D656E74732E6C656E6774683B0A20202020202020207768696C652028206C656E2D2D202920656C656D656E745B206C656E205D203D20617267756D656E74735B206C656E205D3B0A0A202020202020202072657475726E2072656D6F';
wwv_flow_imp.g_varchar2_table(224) := '7665456C656D656E74732E6170706C7928766F696420302C205B20656C656D656E7473205D2E636F6E6361742820656C656D656E742029293B0A202020207D3B0A0A202020207661722068617357696E646F77203D206E756C6C2C2077696E646F77416E';
wwv_flow_imp.g_varchar2_table(225) := '696D6174696F6E4672616D653B0A0A202020206966284F626A6563742E70726F746F747970652E746F537472696E672E63616C6C28656C656D656E74732920213D3D20275B6F626A6563742041727261795D27297B0A2020202020202020656C656D656E';
wwv_flow_imp.g_varchar2_table(226) := '7473203D205B656C656D656E74735D3B0A202020207D0A0A202020202866756E6374696F6E2874656D70297B0A2020202020202020656C656D656E7473203D205B5D3B0A202020202020202074656D702E666F72456163682866756E6374696F6E28656C';
wwv_flow_imp.g_varchar2_table(227) := '656D656E74297B0A202020202020202020202020696628656C656D656E74203D3D3D2077696E646F77297B0A2020202020202020202020202020202068617357696E646F77203D2077696E646F773B0A2020202020202020202020207D656C73657B0A20';
wwv_flow_imp.g_varchar2_table(228) := '20202020202020202020202020202073656C662E61646428656C656D656E74293B0A2020202020202020202020207D0A20202020202020207D293B0A202020207D28656C656D656E747329293B0A0A202020204F626A6563742E646566696E6550726F70';
wwv_flow_imp.g_varchar2_table(229) := '65727469657328746869732C207B0A2020202020202020646F776E3A207B0A2020202020202020202020206765743A2066756E6374696F6E28297B2072657475726E20646F776E3B207D0A20202020202020207D2C0A20202020202020206D6178537065';
wwv_flow_imp.g_varchar2_table(230) := '65643A207B0A2020202020202020202020206765743A2066756E6374696F6E28297B2072657475726E206D617853706565643B207D0A20202020202020207D2C0A2020202020202020706F696E743A207B0A2020202020202020202020206765743A2066';
wwv_flow_imp.g_varchar2_table(231) := '756E6374696F6E28297B2072657475726E20706F696E743B207D0A20202020202020207D2C0A20202020202020207363726F6C6C696E673A207B0A2020202020202020202020206765743A2066756E6374696F6E28297B2072657475726E207363726F6C';
wwv_flow_imp.g_varchar2_table(232) := '6C696E673B207D0A20202020202020207D0A202020207D293B0A0A20202020766172206E203D20302C2063757272656E74203D206E756C6C2C20616E696D6174696F6E4672616D653B0A0A2020202077696E646F772E6164644576656E744C697374656E';
wwv_flow_imp.g_varchar2_table(233) := '657228276D6F757365646F776E272C206F6E446F776E2C2066616C7365293B0A2020202077696E646F772E6164644576656E744C697374656E65722827746F7563687374617274272C206F6E446F776E2C2066616C7365293B0A2020202077696E646F77';
wwv_flow_imp.g_varchar2_table(234) := '2E6164644576656E744C697374656E657228276D6F7573657570272C206F6E55702C2066616C7365293B0A2020202077696E646F772E6164644576656E744C697374656E65722827746F756368656E64272C206F6E55702C2066616C7365293B0A0A2020';
wwv_flow_imp.g_varchar2_table(235) := '20202F2A0A20202020494520646F6573206E6F742074726967676572206D6F7573657570206576656E74207768656E207363726F6C6C696E672E0A2020202049742069732061206B6E6F776E2069737375652074686174204D6963726F736F667420776F';
wwv_flow_imp.g_varchar2_table(236) := '6E2774206669782E0A2020202068747470733A2F2F636F6E6E6563742E6D6963726F736F66742E636F6D2F49452F666565646261636B2F64657461696C732F3738333035382F7363726F6C6C6261722D747269676765722D6D6F757365646F776E2D6275';
wwv_flow_imp.g_varchar2_table(237) := '742D6E6F742D6D6F75736575700A20202020494520737570706F72747320706F696E746572206576656E747320696E73746561640A202020202A2F0A2020202077696E646F772E6164644576656E744C697374656E65722827706F696E7465727570272C';
wwv_flow_imp.g_varchar2_table(238) := '206F6E55702C2066616C7365293B0A0A2020202077696E646F772E6164644576656E744C697374656E657228276D6F7573656D6F7665272C206F6E4D6F76652C2066616C7365293B0A2020202077696E646F772E6164644576656E744C697374656E6572';
wwv_flow_imp.g_varchar2_table(239) := '2827746F7563686D6F7665272C206F6E4D6F76652C2066616C7365293B0A0A2020202077696E646F772E6164644576656E744C697374656E657228276D6F7573656C65617665272C206F6E4D6F7573654F75742C2066616C7365293B0A0A202020207769';
wwv_flow_imp.g_varchar2_table(240) := '6E646F772E6164644576656E744C697374656E657228277363726F6C6C272C207365745363726F6C6C2C2074727565293B0A0A2020202066756E6374696F6E207365745363726F6C6C2865297B0A0A2020202020202020666F722876617220693D303B20';
wwv_flow_imp.g_varchar2_table(241) := '693C656C656D656E74732E6C656E6774683B20692B2B297B0A202020202020202020202020696628656C656D656E74735B695D203D3D3D20652E746172676574297B0A202020202020202020202020202020207363726F6C6C696E67203D20747275653B';
wwv_flow_imp.g_varchar2_table(242) := '0A20202020202020202020202020202020627265616B3B0A2020202020202020202020207D0A20202020202020207D0A0A20202020202020206966287363726F6C6C696E67297B0A20202020202020202020202072657175657374416E696D6174696F6E';
wwv_flow_imp.g_varchar2_table(243) := '4672616D652866756E6374696F6E2028297B2072657475726E207363726F6C6C696E67203D2066616C73653B207D293B0A20202020202020207D0A202020207D0A0A2020202066756E6374696F6E206F6E446F776E28297B0A2020202020202020646F77';
wwv_flow_imp.g_varchar2_table(244) := '6E203D20747275653B0A202020207D0A0A2020202066756E6374696F6E206F6E557028297B0A2020202020202020646F776E203D2066616C73653B0A2020202020202020636C65616E416E696D6174696F6E28293B0A202020207D0A2020202066756E63';
wwv_flow_imp.g_varchar2_table(245) := '74696F6E20636C65616E416E696D6174696F6E28297B0A20202020202063616E63656C416E696D6174696F6E4672616D6528616E696D6174696F6E4672616D65293B0A20202020202063616E63656C416E696D6174696F6E4672616D652877696E646F77';
wwv_flow_imp.g_varchar2_table(246) := '416E696D6174696F6E4672616D65293B0A202020207D0A2020202066756E6374696F6E206F6E4D6F7573654F757428297B0A2020202020202020646F776E203D2066616C73653B0A202020207D0A0A2020202066756E6374696F6E206765745461726765';
wwv_flow_imp.g_varchar2_table(247) := '7428746172676574297B0A202020202020202069662821746172676574297B0A20202020202020202020202072657475726E206E756C6C3B0A20202020202020207D0A0A202020202020202069662863757272656E74203D3D3D20746172676574297B0A';
wwv_flow_imp.g_varchar2_table(248) := '20202020202020202020202072657475726E207461726765743B0A20202020202020207D0A0A2020202020202020696628686173456C656D656E7428656C656D656E74732C2074617267657429297B0A20202020202020202020202072657475726E2074';
wwv_flow_imp.g_varchar2_table(249) := '61726765743B0A20202020202020207D0A0A20202020202020207768696C6528746172676574203D207461726765742E706172656E744E6F6465297B0A202020202020202020202020696628686173456C656D656E7428656C656D656E74732C20746172';
wwv_flow_imp.g_varchar2_table(250) := '67657429297B0A2020202020202020202020202020202072657475726E207461726765743B0A2020202020202020202020207D0A20202020202020207D0A0A202020202020202072657475726E206E756C6C3B0A202020207D0A0A2020202066756E6374';
wwv_flow_imp.g_varchar2_table(251) := '696F6E20676574456C656D656E74556E646572506F696E7428297B0A202020202020202076617220756E646572506F696E74203D206E756C6C3B0A0A2020202020202020666F722876617220693D303B20693C656C656D656E74732E6C656E6774683B20';
wwv_flow_imp.g_varchar2_table(252) := '692B2B297B0A202020202020202020202020696628696E7369646528706F696E742C20656C656D656E74735B695D29297B0A20202020202020202020202020202020756E646572506F696E74203D20656C656D656E74735B695D3B0A2020202020202020';
wwv_flow_imp.g_varchar2_table(253) := '202020207D0A20202020202020207D0A0A202020202020202072657475726E20756E646572506F696E743B0A202020207D0A0A0A2020202066756E6374696F6E206F6E4D6F7665286576656E74297B0A0A20202020202020206966282173656C662E6175';
wwv_flow_imp.g_varchar2_table(254) := '746F5363726F6C6C282929207B2072657475726E3B207D0A0A20202020202020206966286576656E745B2764697370617463686564275D297B2072657475726E3B207D0A0A202020202020202076617220746172676574203D206576656E742E74617267';
wwv_flow_imp.g_varchar2_table(255) := '65742C20626F6479203D20646F63756D656E742E626F64793B0A0A202020202020202069662863757272656E742026262021696E7369646528706F696E742C2063757272656E7429297B0A2020202020202020202020206966282173656C662E7363726F';
wwv_flow_imp.g_varchar2_table(256) := '6C6C5768656E4F757473696465297B0A2020202020202020202020202020202063757272656E74203D206E756C6C3B0A2020202020202020202020207D0A20202020202020207D0A0A202020202020202069662874617267657420262620746172676574';
wwv_flow_imp.g_varchar2_table(257) := '2E706172656E744E6F6465203D3D3D20626F6479297B0A2020202020202020202020202F2F546865207370656369616C20636F6E646974696F6E20746F20696D70726F76652073706565642E0A202020202020202020202020746172676574203D206765';
wwv_flow_imp.g_varchar2_table(258) := '74456C656D656E74556E646572506F696E7428293B0A20202020202020207D656C73657B0A202020202020202020202020746172676574203D2067657454617267657428746172676574293B0A0A20202020202020202020202069662821746172676574';
wwv_flow_imp.g_varchar2_table(259) := '297B0A20202020202020202020202020202020746172676574203D20676574456C656D656E74556E646572506F696E7428293B0A2020202020202020202020207D0A20202020202020207D0A0A0A20202020202020206966287461726765742026262074';
wwv_flow_imp.g_varchar2_table(260) := '617267657420213D3D2063757272656E74297B0A20202020202020202020202063757272656E74203D207461726765743B0A20202020202020207D0A0A202020202020202069662868617357696E646F77297B0A20202020202020202020202063616E63';
wwv_flow_imp.g_varchar2_table(261) := '656C416E696D6174696F6E4672616D652877696E646F77416E696D6174696F6E4672616D65293B0A20202020202020202020202077696E646F77416E696D6174696F6E4672616D65203D2072657175657374416E696D6174696F6E4672616D6528736372';
wwv_flow_imp.g_varchar2_table(262) := '6F6C6C57696E646F77293B0A20202020202020207D0A0A0A20202020202020206966282163757272656E74297B0A20202020202020202020202072657475726E3B0A20202020202020207D0A0A202020202020202063616E63656C416E696D6174696F6E';
wwv_flow_imp.g_varchar2_table(263) := '4672616D6528616E696D6174696F6E4672616D65293B0A2020202020202020616E696D6174696F6E4672616D65203D2072657175657374416E696D6174696F6E4672616D65287363726F6C6C5469636B293B0A202020207D0A0A2020202066756E637469';
wwv_flow_imp.g_varchar2_table(264) := '6F6E207363726F6C6C57696E646F7728297B0A20202020202020206175746F5363726F6C6C2868617357696E646F77293B0A0A202020202020202063616E63656C416E696D6174696F6E4672616D652877696E646F77416E696D6174696F6E4672616D65';
wwv_flow_imp.g_varchar2_table(265) := '293B0A202020202020202077696E646F77416E696D6174696F6E4672616D65203D2072657175657374416E696D6174696F6E4672616D65287363726F6C6C57696E646F77293B0A202020207D0A0A2020202066756E6374696F6E207363726F6C6C546963';
wwv_flow_imp.g_varchar2_table(266) := '6B28297B0A0A20202020202020206966282163757272656E74297B0A20202020202020202020202072657475726E3B0A20202020202020207D0A0A20202020202020206175746F5363726F6C6C2863757272656E74293B0A0A202020202020202063616E';
wwv_flow_imp.g_varchar2_table(267) := '63656C416E696D6174696F6E4672616D6528616E696D6174696F6E4672616D65293B0A2020202020202020616E696D6174696F6E4672616D65203D2072657175657374416E696D6174696F6E4672616D65287363726F6C6C5469636B293B0A0A20202020';
wwv_flow_imp.g_varchar2_table(268) := '7D0A0A0A2020202066756E6374696F6E206175746F5363726F6C6C28656C297B0A20202020202020207661722072656374203D20676574436C69656E745265637428656C292C207363726F6C6C782C207363726F6C6C793B0A0A20202020202020206966';
wwv_flow_imp.g_varchar2_table(269) := '28706F696E742E78203C20726563742E6C656674202B2073656C662E6D617267696E297B0A2020202020202020202020207363726F6C6C78203D204D6174682E666C6F6F72280A202020202020202020202020202020204D6174682E6D6178282D312C20';
wwv_flow_imp.g_varchar2_table(270) := '28706F696E742E78202D20726563742E6C65667429202F2073656C662E6D617267696E202D203129202A2073656C662E6D617853706565640A202020202020202020202020293B0A20202020202020207D656C736520696628706F696E742E78203E2072';
wwv_flow_imp.g_varchar2_table(271) := '6563742E7269676874202D2073656C662E6D617267696E297B0A2020202020202020202020207363726F6C6C78203D204D6174682E6365696C280A202020202020202020202020202020204D6174682E6D696E28312C2028706F696E742E78202D207265';
wwv_flow_imp.g_varchar2_table(272) := '63742E726967687429202F2073656C662E6D617267696E202B203129202A2073656C662E6D617853706565640A202020202020202020202020293B0A20202020202020207D656C73657B0A2020202020202020202020207363726F6C6C78203D20303B0A';
wwv_flow_imp.g_varchar2_table(273) := '20202020202020207D0A0A2020202020202020696628706F696E742E79203C20726563742E746F70202B2073656C662E6D617267696E297B0A2020202020202020202020207363726F6C6C79203D204D6174682E666C6F6F72280A202020202020202020';
wwv_flow_imp.g_varchar2_table(274) := '202020202020204D6174682E6D6178282D312C2028706F696E742E79202D20726563742E746F7029202F2073656C662E6D617267696E202D203129202A2073656C662E6D617853706565640A202020202020202020202020293B0A20202020202020207D';
wwv_flow_imp.g_varchar2_table(275) := '656C736520696628706F696E742E79203E20726563742E626F74746F6D202D2073656C662E6D617267696E297B0A2020202020202020202020207363726F6C6C79203D204D6174682E6365696C280A202020202020202020202020202020204D6174682E';
wwv_flow_imp.g_varchar2_table(276) := '6D696E28312C2028706F696E742E79202D20726563742E626F74746F6D29202F2073656C662E6D617267696E202B203129202A2073656C662E6D617853706565640A202020202020202020202020293B0A20202020202020207D656C73657B0A20202020';
wwv_flow_imp.g_varchar2_table(277) := '20202020202020207363726F6C6C79203D20303B0A20202020202020207D0A0A202020202020202069662873656C662E73796E634D6F76652829297B0A2020202020202020202020202F2A0A2020202020202020202020204E6F7465732061626F757420';
wwv_flow_imp.g_varchar2_table(278) := '6D6F7573656D6F7665206576656E742064697370617463682E0A20202020202020202020202073637265656E28582F59292073686F756C64206E65656420746F20626520757064617465642E0A202020202020202020202020536F6D65206F7468657220';
wwv_flow_imp.g_varchar2_table(279) := '70726F70657274696573206D69676874206E65656420746F206265207365742E0A2020202020202020202020204B656570207468652073796E634D6F7665206F7074696F6E2064656661756C742066616C736520756E74696C20616C6C20696E636F6E73';
wwv_flow_imp.g_varchar2_table(280) := '697374656E63696573206172652074616B656E2063617265206F662E0A2020202020202020202020202A2F0A202020202020202020202020646973706174636865722E646973706174636828656C2C207B0A202020202020202020202020202020207061';
wwv_flow_imp.g_varchar2_table(281) := '6765583A20706F696E742E7061676558202B207363726F6C6C782C0A2020202020202020202020202020202070616765593A20706F696E742E7061676559202B207363726F6C6C792C0A20202020202020202020202020202020636C69656E74583A2070';
wwv_flow_imp.g_varchar2_table(282) := '6F696E742E78202B207363726F6C6C782C0A20202020202020202020202020202020636C69656E74593A20706F696E742E79202B207363726F6C6C790A2020202020202020202020207D293B0A20202020202020207D0A0A202020202020202073657454';
wwv_flow_imp.g_varchar2_table(283) := '696D656F75742866756E6374696F6E2028297B0A0A2020202020202020202020206966287363726F6C6C79297B0A202020202020202020202020202020207363726F6C6C5928656C2C207363726F6C6C79293B0A2020202020202020202020207D0A0A20';
wwv_flow_imp.g_varchar2_table(284) := '20202020202020202020206966287363726F6C6C78297B0A202020202020202020202020202020207363726F6C6C5828656C2C207363726F6C6C78293B0A2020202020202020202020207D0A0A20202020202020207D293B0A202020207D0A0A20202020';
wwv_flow_imp.g_varchar2_table(285) := '66756E6374696F6E207363726F6C6C5928656C2C20616D6F756E74297B0A2020202020202020696628656C203D3D3D2077696E646F77297B0A20202020202020202020202077696E646F772E7363726F6C6C546F28656C2E70616765584F66667365742C';
wwv_flow_imp.g_varchar2_table(286) := '20656C2E70616765594F6666736574202B20616D6F756E74293B0A20202020202020207D656C73657B0A202020202020202020202020656C2E7363726F6C6C546F70202B3D20616D6F756E743B0A20202020202020207D0A202020207D0A0A2020202066';
wwv_flow_imp.g_varchar2_table(287) := '756E6374696F6E207363726F6C6C5828656C2C20616D6F756E74297B0A2020202020202020696628656C203D3D3D2077696E646F77297B0A20202020202020202020202077696E646F772E7363726F6C6C546F28656C2E70616765584F6666736574202B';
wwv_flow_imp.g_varchar2_table(288) := '20616D6F756E742C20656C2E70616765594F6666736574293B0A20202020202020207D656C73657B0A202020202020202020202020656C2E7363726F6C6C4C656674202B3D20616D6F756E743B0A20202020202020207D0A202020207D0A0A7D0A0A6675';
wwv_flow_imp.g_varchar2_table(289) := '6E6374696F6E204175746F5363726F6C6C6572466163746F727928656C656D656E742C206F7074696F6E73297B0A2020202072657475726E206E6577204175746F5363726F6C6C657228656C656D656E742C206F7074696F6E73293B0A7D0A0A66756E63';
wwv_flow_imp.g_varchar2_table(290) := '74696F6E20696E7369646528706F696E742C20656C2C2072656374297B0A202020206966282172656374297B0A202020202020202072657475726E20706F696E74496E7369646528706F696E742C20656C293B0A202020207D656C73657B0A2020202020';
wwv_flow_imp.g_varchar2_table(291) := '20202072657475726E2028706F696E742E79203E20726563742E746F7020262620706F696E742E79203C20726563742E626F74746F6D2026260A20202020202020202020202020202020706F696E742E78203E20726563742E6C65667420262620706F69';
wwv_flow_imp.g_varchar2_table(292) := '6E742E78203C20726563742E7269676874293B0A202020207D0A7D0A0A2F2A0A6769742072656D6F746520616464206F726967696E2068747470733A2F2F6769746875622E636F6D2F686F6C6C6F77646F6F722F646F6D5F6175746F7363726F6C6C6572';
wwv_flow_imp.g_varchar2_table(293) := '2E6769740A6769742070757368202D75206F726967696E206D61737465720A2A2F0A0A72657475726E204175746F5363726F6C6C6572466163746F72793B0A0A7D2829293B0A2F2F2320736F757263654D617070696E6755524C3D646F6D2D6175746F73';
wwv_flow_imp.g_varchar2_table(294) := '63726F6C6C65722E6A732E6D6170';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241929077419238394)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dom-autoscroller.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
begin
wwv_flow_imp.g_varchar2_table := wwv_flow_imp.empty_varchar2_table;
wwv_flow_imp.g_varchar2_table(1) := '766172206175746F5363726F6C6C3D66756E6374696F6E28297B2275736520737472696374223B66756E6374696F6E206528652C6E297B76617220742C723B72657475726E20723D6E2C2266756E6374696F6E223D3D747970656F6628653D766F696420';
wwv_flow_imp.g_varchar2_table(2) := '303D3D3D28743D65293F766F696420303D3D3D723F743A723A74293F66756E6374696F6E28297B666F7228766172206E3D617267756D656E74732C743D617267756D656E74732E6C656E6774682C723D41727261792874292C6F3D303B6F3C743B6F2B2B';
wwv_flow_imp.g_varchar2_table(3) := '29725B6F5D3D6E5B6F5D3B72657475726E2121652E6170706C7928746869732C72297D3A653F66756E6374696F6E28297B72657475726E21307D3A66756E6374696F6E28297B72657475726E21317D7D766172206E2C742C722C6F2C693D5B227765626B';
wwv_flow_imp.g_varchar2_table(4) := '6974222C226D6F7A222C226D73222C226F225D2C613D66756E6374696F6E28297B666F722876617220653D302C6E3D692E6C656E6774683B653C6E26262177696E646F772E72657175657374416E696D6174696F6E4672616D653B2B2B652977696E646F';
wwv_flow_imp.g_varchar2_table(5) := '772E72657175657374416E696D6174696F6E4672616D653D77696E646F775B695B655D2B2252657175657374416E696D6174696F6E4672616D65225D3B76617220743B72657475726E2077696E646F772E72657175657374416E696D6174696F6E467261';
wwv_flow_imp.g_varchar2_table(6) := '6D657C7C28743D302C77696E646F772E72657175657374416E696D6174696F6E4672616D653D66756E6374696F6E2865297B766172206E3D286E65772044617465292E67657454696D6528292C723D4D6174682E6D617828302C31362D6E2D74292C6F3D';
wwv_flow_imp.g_varchar2_table(7) := '77696E646F772E73657454696D656F7574282866756E6374696F6E28297B72657475726E2065286E2B72297D292C72293B72657475726E20743D6E2B722C6F7D292C77696E646F772E72657175657374416E696D6174696F6E4672616D652E62696E6428';
wwv_flow_imp.g_varchar2_table(8) := '77696E646F77297D28292C753D66756E6374696F6E28297B666F722876617220653D302C6E3D692E6C656E6774683B653C6E26262177696E646F772E63616E63656C416E696D6174696F6E4672616D653B2B2B652977696E646F772E63616E63656C416E';
wwv_flow_imp.g_varchar2_table(9) := '696D6174696F6E4672616D653D77696E646F775B695B655D2B2243616E63656C416E696D6174696F6E4672616D65225D7C7C77696E646F775B695B655D2B2243616E63656C52657175657374416E696D6174696F6E4672616D65225D3B72657475726E20';
wwv_flow_imp.g_varchar2_table(10) := '77696E646F772E63616E63656C416E696D6174696F6E4672616D657C7C2877696E646F772E63616E63656C416E696D6174696F6E4672616D653D66756E6374696F6E2865297B77696E646F772E636C65617254696D656F75742865297D292C77696E646F';
wwv_flow_imp.g_varchar2_table(11) := '772E63616E63656C416E696D6174696F6E4672616D652E62696E642877696E646F77297D28292C633D286E3D66756E6374696F6E2865297B72657475726E2266756E6374696F6E223D3D747970656F6620657D2C743D4D6174682E706F7728322C353329';
wwv_flow_imp.g_varchar2_table(12) := '2D312C723D66756E6374696F6E2865297B766172206E3D66756E6374696F6E2865297B766172206E3D4E756D6265722865293B72657475726E2069734E614E286E293F303A30213D3D6E2626697346696E697465286E293F286E3E303F313A2D31292A4D';
wwv_flow_imp.g_varchar2_table(13) := '6174682E666C6F6F72284D6174682E616273286E29293A6E7D2865293B72657475726E204D6174682E6D696E284D6174682E6D6178286E2C30292C74297D2C6F3D66756E6374696F6E2865297B766172206E3D652E6E65787428293B72657475726E2142';
wwv_flow_imp.g_varchar2_table(14) := '6F6F6C65616E286E2E646F6E652926266E7D2C66756E6374696F6E2865297B76617220742C692C612C753D746869732C633D617267756D656E74732E6C656E6774683E313F617267756D656E74735B315D3A766F696420303B696628766F69642030213D';
wwv_flow_imp.g_varchar2_table(15) := '3D63297B696628216E286329297468726F77206E657720547970654572726F72282241727261792E66726F6D3A207768656E2070726F76696465642C20746865207365636F6E6420617267756D656E74206D75737420626520612066756E6374696F6E22';
wwv_flow_imp.g_varchar2_table(16) := '293B617267756D656E74732E6C656E6774683E32262628743D617267756D656E74735B325D297D766172206C3D66756E6374696F6E28652C74297B6966286E756C6C213D6526266E756C6C213D74297B76617220723D655B745D3B6966286E756C6C3D3D';
wwv_flow_imp.g_varchar2_table(17) := '722972657475726E3B696628216E287229297468726F77206E657720547970654572726F7228722B22206973206E6F7420612066756E6374696F6E22293B72657475726E20727D7D28652C66756E6374696F6E2865297B6966286E756C6C213D65297B69';
wwv_flow_imp.g_varchar2_table(18) := '66285B22737472696E67222C226E756D626572222C22626F6F6C65616E222C2273796D626F6C225D2E696E6465784F6628747970656F662065293E2D312972657475726E2053796D626F6C2E6974657261746F723B69662822756E646566696E65642221';
wwv_flow_imp.g_varchar2_table(19) := '3D747970656F662053796D626F6C2626226974657261746F7222696E2053796D626F6C262653796D626F6C2E6974657261746F7220696E20652972657475726E2053796D626F6C2E6974657261746F723B6966282240406974657261746F7222696E2065';
wwv_flow_imp.g_varchar2_table(20) := '2972657475726E2240406974657261746F72227D7D286529293B696628766F69642030213D3D6C297B693D6E2875293F4F626A656374286E65772075293A5B5D3B76617220662C642C733D6C2E63616C6C2865293B6966286E756C6C3D3D73297468726F';
wwv_flow_imp.g_varchar2_table(21) := '77206E657720547970654572726F72282241727261792E66726F6D20726571756972657320616E2061727261792D6C696B65206F72206974657261626C65206F626A65637422293B666F7228613D303B3B297B6966282128663D6F287329292972657475';
wwv_flow_imp.g_varchar2_table(22) := '726E20692E6C656E6774683D612C693B643D662E76616C75652C695B615D3D633F632E63616C6C28742C642C61293A642C612B2B7D7D656C73657B766172206D3D4F626A6563742865293B6966286E756C6C3D3D65297468726F77206E65772054797065';
wwv_flow_imp.g_varchar2_table(23) := '4572726F72282241727261792E66726F6D20726571756972657320616E2061727261792D6C696B65206F626A656374202D206E6F74206E756C6C206F7220756E646566696E656422293B76617220762C773D72286D2E6C656E677468293B666F7228693D';
wwv_flow_imp.g_varchar2_table(24) := '6E2875293F4F626A656374286E65772075287729293A6E65772041727261792877292C613D303B613C773B29763D6D5B615D2C695B615D3D633F632E63616C6C28742C762C61293A762C612B2B3B692E6C656E6774683D777D72657475726E20697D292C';
wwv_flow_imp.g_varchar2_table(25) := '6C3D282266756E6374696F6E223D3D747970656F662041727261792E66726F6D262641727261792E66726F6D2C41727261792E697341727261792C4F626A6563742E70726F746F747970652E746F537472696E672C2266756E6374696F6E223D3D747970';
wwv_flow_imp.g_varchar2_table(26) := '656F662053796D626F6C26262273796D626F6C223D3D747970656F662053796D626F6C2E6974657261746F723F66756E6374696F6E2865297B72657475726E20747970656F6620657D3A66756E6374696F6E2865297B72657475726E206526262266756E';
wwv_flow_imp.g_varchar2_table(27) := '6374696F6E223D3D747970656F662053796D626F6C2626652E636F6E7374727563746F723D3D3D53796D626F6C3F2273796D626F6C223A747970656F6620657D292C663D66756E6374696F6E2865297B72657475726E206E756C6C213D652626226F626A';
wwv_flow_imp.g_varchar2_table(28) := '656374223D3D3D28766F696420303D3D3D653F22756E646566696E6564223A6C286529292626313D3D3D652E6E6F6465547970652626226F626A656374223D3D3D6C28652E7374796C65292626226F626A656374223D3D3D6C28652E6F776E6572446F63';
wwv_flow_imp.g_varchar2_table(29) := '756D656E74297D3B66756E6374696F6E206428652C6E297B6966286E3D77286E2C2130292C2166286E292972657475726E2D313B666F722876617220743D303B743C652E6C656E6774683B742B2B29696628655B745D3D3D3D6E2972657475726E20743B';
wwv_flow_imp.g_varchar2_table(30) := '72657475726E2D317D66756E6374696F6E207328652C6E297B72657475726E2D31213D3D6428652C6E297D66756E6374696F6E206D2865297B666F7228766172206E3D617267756D656E74732C743D5B5D2C723D617267756D656E74732E6C656E677468';
wwv_flow_imp.g_varchar2_table(31) := '2D313B722D2D203E303B29745B725D3D6E5B722B315D3B72657475726E2066756E6374696F6E28652C6E297B666F722876617220743D303B743C6E2E6C656E6774683B742B2B297328652C6E5B745D297C7C652E70757368286E5B745D293B7265747572';
wwv_flow_imp.g_varchar2_table(32) := '6E206E7D28652C743D742E6D6170287729297D66756E6374696F6E20762865297B666F7228766172206E3D617267756D656E74732C743D5B5D2C723D617267756D656E74732E6C656E6774682D313B722D2D203E303B29745B725D3D6E5B722B315D3B72';
wwv_flow_imp.g_varchar2_table(33) := '657475726E20742E6D61702877292E726564756365282866756E6374696F6E286E2C74297B76617220723D6428652C74293B72657475726E2D31213D3D723F6E2E636F6E63617428652E73706C69636528722C3129293A6E7D292C5B5D297D66756E6374';
wwv_flow_imp.g_varchar2_table(34) := '696F6E207728652C6E297B69662822737472696E67223D3D747970656F662065297472797B72657475726E20646F63756D656E742E717565727953656C6563746F722865297D63617463682865297B7468726F7720657D69662821662865292626216E29';
wwv_flow_imp.g_varchar2_table(35) := '7468726F77206E657720547970654572726F7228652B22206973206E6F74206120444F4D20656C656D656E742E22293B72657475726E20657D66756E6374696F6E20702865297B696628653D3D3D77696E646F772972657475726E2066756E6374696F6E';
wwv_flow_imp.g_varchar2_table(36) := '28297B76617220653D7B746F703A7B76616C75653A302C656E756D657261626C653A21307D2C6C6566743A7B76616C75653A302C656E756D657261626C653A21307D2C72696768743A7B76616C75653A77696E646F772E696E6E657257696474682C656E';
wwv_flow_imp.g_varchar2_table(37) := '756D657261626C653A21307D2C626F74746F6D3A7B76616C75653A77696E646F772E696E6E65724865696768742C656E756D657261626C653A21307D2C77696474683A7B76616C75653A77696E646F772E696E6E657257696474682C656E756D65726162';
wwv_flow_imp.g_varchar2_table(38) := '6C653A21307D2C6865696768743A7B76616C75653A77696E646F772E696E6E65724865696768742C656E756D657261626C653A21307D2C783A7B76616C75653A302C656E756D657261626C653A21307D2C793A7B76616C75653A302C656E756D65726162';
wwv_flow_imp.g_varchar2_table(39) := '6C653A21307D7D3B6966284F626A6563742E6372656174652972657475726E204F626A6563742E637265617465287B7D2C65293B766172206E3D7B7D3B72657475726E204F626A6563742E646566696E6550726F70657274696573286E2C65292C6E7D28';
wwv_flow_imp.g_varchar2_table(40) := '293B7472797B766172206E3D652E676574426F756E64696E67436C69656E745265637428293B72657475726E20766F696420303D3D3D6E2E782626286E2E783D6E2E6C6566742C6E2E793D6E2E746F70292C6E7D6361746368286E297B7468726F77206E';
wwv_flow_imp.g_varchar2_table(41) := '657720547970654572726F72282243616E27742063616C6C20676574426F756E64696E67436C69656E7452656374206F6E20222B65297D7D76617220682C673D766F696420303B2266756E6374696F6E22213D747970656F66204F626A6563742E637265';
wwv_flow_imp.g_varchar2_table(42) := '6174653F28683D66756E6374696F6E28297B7D2C673D66756E6374696F6E28652C6E297B69662865213D3D4F626A65637428652926266E756C6C213D3D65297468726F7720547970654572726F722822417267756D656E74206D75737420626520616E20';
wwv_flow_imp.g_varchar2_table(43) := '6F626A6563742C206F72206E756C6C22293B682E70726F746F747970653D657C7C7B7D3B76617220743D6E657720683B72657475726E20682E70726F746F747970653D6E756C6C2C766F69642030213D3D6E26264F626A6563742E646566696E6550726F';
wwv_flow_imp.g_varchar2_table(44) := '7065727469657328742C6E292C6E756C6C3D3D3D65262628742E5F5F70726F746F5F5F3D6E756C6C292C747D293A673D4F626A6563742E6372656174653B76617220793D672C623D5B22616C744B6579222C22627574746F6E222C22627574746F6E7322';
wwv_flow_imp.g_varchar2_table(45) := '2C22636C69656E7458222C22636C69656E7459222C226374726C4B6579222C226D6574614B6579222C226D6F76656D656E7458222C226D6F76656D656E7459222C226F666673657458222C226F666673657459222C227061676558222C22706167655922';
wwv_flow_imp.g_varchar2_table(46) := '2C22726567696F6E222C2272656C61746564546172676574222C2273637265656E58222C2273637265656E59222C2273686966744B6579222C227768696368222C2278222C2279225D3B66756E6374696F6E204528652C6E297B6E3D6E7C7C7B7D3B666F';
wwv_flow_imp.g_varchar2_table(47) := '722876617220743D792865292C723D303B723C622E6C656E6774683B722B2B29766F69642030213D3D6E5B625B725D5D262628745B625B725D5D3D6E5B625B725D5D293B72657475726E20747D66756E6374696F6E205428652C6E297B636F6E736F6C65';
wwv_flow_imp.g_varchar2_table(48) := '2E6C6F6728226461746120222C6E292C652E646174613D6E7C7C7B7D2C652E646973706174636865643D226D6F7573656D6F7665227D66756E6374696F6E2078286E2C74297B766F696420303D3D3D74262628743D7B7D293B76617220723D746869732C';
wwv_flow_imp.g_varchar2_table(49) := '6F3D342C693D21313B746869732E6D617267696E3D742E6D617267696E7C7C2D312C746869732E7363726F6C6C5768656E4F7574736964653D742E7363726F6C6C5768656E4F7574736964657C7C21313B76617220633D7B7D2C6C3D66756E6374696F6E';
wwv_flow_imp.g_varchar2_table(50) := '286E2C74297B76617220723D652828743D747C7C7B7D292E616C6C6F775570646174652C2130293B72657475726E2066756E6374696F6E2865297B696628653D657C7C77696E646F772E6576656E742C6E2E7461726765743D652E7461726765747C7C65';
wwv_flow_imp.g_varchar2_table(51) := '2E737263456C656D656E747C7C652E6F726967696E616C5461726765742C6E2E656C656D656E743D746869732C6E2E747970653D652E747970652C72286529297B696628652E746172676574546F7563686573296E2E783D652E746172676574546F7563';
wwv_flow_imp.g_varchar2_table(52) := '6865735B305D2E636C69656E74582C6E2E793D652E746172676574546F75636865735B305D2E636C69656E74592C6E2E70616765583D652E746172676574546F75636865735B305D2E70616765582C6E2E70616765593D652E746172676574546F756368';
wwv_flow_imp.g_varchar2_table(53) := '65735B305D2E70616765592C6E2E73637265656E583D652E746172676574546F75636865735B305D2E73637265656E582C6E2E73637265656E593D652E746172676574546F75636865735B305D2E73637265656E593B656C73657B6966286E756C6C3D3D';
wwv_flow_imp.g_varchar2_table(54) := '3D652E706167655826266E756C6C213D3D652E636C69656E7458297B76617220743D652E7461726765742626652E7461726765742E6F776E6572446F63756D656E747C7C646F63756D656E742C6F3D742E646F63756D656E74456C656D656E742C693D74';
wwv_flow_imp.g_varchar2_table(55) := '2E626F64793B6E2E70616765583D652E636C69656E74582B286F26266F2E7363726F6C6C4C6566747C7C692626692E7363726F6C6C4C6566747C7C30292D286F26266F2E636C69656E744C6566747C7C692626692E636C69656E744C6566747C7C30292C';
wwv_flow_imp.g_varchar2_table(56) := '6E2E70616765593D652E636C69656E74592B286F26266F2E7363726F6C6C546F707C7C692626692E7363726F6C6C546F707C7C30292D286F26266F2E636C69656E74546F707C7C692626692E636C69656E74546F707C7C30297D656C7365206E2E706167';
wwv_flow_imp.g_varchar2_table(57) := '65583D652E70616765582C6E2E70616765593D652E70616765593B6E2E783D652E636C69656E74582C6E2E793D652E636C69656E74592C6E2E73637265656E583D652E73637265656E582C6E2E73637265656E593D652E73637265656E597D6E2E636C69';
wwv_flow_imp.g_varchar2_table(58) := '656E74583D6E2E782C6E2E636C69656E74593D6E2E797D7D7D2863292C663D66756E6374696F6E2865297B766172206E3D7B73637265656E583A302C73637265656E593A302C636C69656E74583A302C636C69656E74593A302C6374726C4B65793A2131';
wwv_flow_imp.g_varchar2_table(59) := '2C73686966744B65793A21312C616C744B65793A21312C6D6574614B65793A21312C627574746F6E3A302C627574746F6E733A312C72656C617465645461726765743A6E756C6C2C726567696F6E3A6E756C6C7D3B66756E6374696F6E20742865297B66';
wwv_flow_imp.g_varchar2_table(60) := '6F722876617220743D303B743C622E6C656E6774683B742B2B296E5B625B745D5D3D655B625B745D5D7D72657475726E20766F69642030213D3D652626652E6164644576656E744C697374656E657228226D6F7573656D6F7665222C74292C7B64657374';
wwv_flow_imp.g_varchar2_table(61) := '726F793A66756E6374696F6E28297B652626652E72656D6F76654576656E744C697374656E657228226D6F7573656D6F7665222C742C2131292C6E3D6E756C6C7D2C64697370617463683A4D6F7573654576656E743F66756E6374696F6E28652C742C72';
wwv_flow_imp.g_varchar2_table(62) := '297B766172206F3D6E6577204D6F7573654576656E7428226D6F7573656D6F7665222C45286E2C7429293B72657475726E2054286F2C72292C652E64697370617463684576656E74286F297D3A2266756E6374696F6E223D3D747970656F6620646F6375';
wwv_flow_imp.g_varchar2_table(63) := '6D656E742E6372656174654576656E743F66756E6374696F6E28652C742C72297B766172206F3D45286E2C74292C693D646F63756D656E742E6372656174654576656E7428224D6F7573654576656E747322293B72657475726E20692E696E69744D6F75';
wwv_flow_imp.g_varchar2_table(64) := '73654576656E7428226D6F7573656D6F7665222C21302C21302C77696E646F772C302C6F2E73637265656E582C6F2E73637265656E592C6F2E636C69656E74582C6F2E636C69656E74592C6F2E6374726C4B65792C6F2E616C744B65792C6F2E73686966';
wwv_flow_imp.g_varchar2_table(65) := '744B65792C6F2E6D6574614B65792C6F2E627574746F6E2C6F2E72656C61746564546172676574292C5428692C72292C652E64697370617463684576656E742869297D3A2266756E6374696F6E223D3D747970656F6620646F63756D656E742E63726561';
wwv_flow_imp.g_varchar2_table(66) := '74654576656E744F626A6563743F66756E6374696F6E28652C742C72297B766172206F3D646F63756D656E742E6372656174654576656E744F626A65637428292C693D45286E2C74293B666F7228766172206120696E2069296F5B615D3D695B615D3B72';
wwv_flow_imp.g_varchar2_table(67) := '657475726E2054286F2C72292C652E64697370617463684576656E74286F297D3A766F696420307D7D28292C643D21313B77696E646F772E6164644576656E744C697374656E657228226D6F7573656D6F7665222C6C2C2131292C77696E646F772E6164';
wwv_flow_imp.g_varchar2_table(68) := '644576656E744C697374656E65722822746F7563686D6F7665222C6C2C2131292C69734E614E28742E6D61785370656564297C7C286F3D742E6D61785370656564292C746869732E6175746F5363726F6C6C3D6528742E6175746F5363726F6C6C292C74';
wwv_flow_imp.g_varchar2_table(69) := '6869732E73796E634D6F76653D6528742E73796E634D6F76652C2131292C746869732E64657374726F793D66756E6374696F6E2865297B77696E646F772E72656D6F76654576656E744C697374656E657228226D6F7573656D6F7665222C6C2C2131292C';
wwv_flow_imp.g_varchar2_table(70) := '77696E646F772E72656D6F76654576656E744C697374656E65722822746F7563686D6F7665222C6C2C2131292C77696E646F772E72656D6F76654576656E744C697374656E657228226D6F757365646F776E222C592C2131292C77696E646F772E72656D';
wwv_flow_imp.g_varchar2_table(71) := '6F76654576656E744C697374656E65722822746F7563687374617274222C592C2131292C77696E646F772E72656D6F76654576656E744C697374656E657228226D6F7573657570222C412C2131292C77696E646F772E72656D6F76654576656E744C6973';
wwv_flow_imp.g_varchar2_table(72) := '74656E65722822746F756368656E64222C412C2131292C77696E646F772E72656D6F76654576656E744C697374656E65722822706F696E7465727570222C412C2131292C77696E646F772E72656D6F76654576656E744C697374656E657228226D6F7573';
wwv_flow_imp.g_varchar2_table(73) := '656C65617665222C532C2131292C77696E646F772E72656D6F76654576656E744C697374656E657228226D6F7573656D6F7665222C4D2C2131292C77696E646F772E72656D6F76654576656E744C697374656E65722822746F7563686D6F7665222C4D2C';
wwv_flow_imp.g_varchar2_table(74) := '2131292C77696E646F772E72656D6F76654576656E744C697374656E657228227363726F6C6C222C582C2130292C6E3D5B5D2C6526264F28297D2C746869732E6164643D66756E6374696F6E28297B666F722876617220653D5B5D2C743D617267756D65';
wwv_flow_imp.g_varchar2_table(75) := '6E74732E6C656E6774683B742D2D3B29655B745D3D617267756D656E74735B745D3B72657475726E206D2E6170706C7928766F696420302C5B6E5D2E636F6E636174286529292C746869737D2C746869732E72656D6F76653D66756E6374696F6E28297B';
wwv_flow_imp.g_varchar2_table(76) := '666F722876617220653D5B5D2C743D617267756D656E74732E6C656E6774683B742D2D3B29655B745D3D617267756D656E74735B745D3B72657475726E20762E6170706C7928766F696420302C5B6E5D2E636F6E636174286529297D3B76617220772C68';
wwv_flow_imp.g_varchar2_table(77) := '2C673D6E756C6C3B225B6F626A6563742041727261795D22213D3D4F626A6563742E70726F746F747970652E746F537472696E672E63616C6C286E292626286E3D5B6E5D292C683D6E2C6E3D5B5D2C682E666F7245616368282866756E6374696F6E2865';
wwv_flow_imp.g_varchar2_table(78) := '297B653D3D3D77696E646F773F673D77696E646F773A722E6164642865297D29292C4F626A6563742E646566696E6550726F7065727469657328746869732C7B646F776E3A7B6765743A66756E6374696F6E28297B72657475726E20647D7D2C6D617853';
wwv_flow_imp.g_varchar2_table(79) := '706565643A7B6765743A66756E6374696F6E28297B72657475726E206F7D7D2C706F696E743A7B6765743A66756E6374696F6E28297B72657475726E20637D7D2C7363726F6C6C696E673A7B6765743A66756E6374696F6E28297B72657475726E20697D';
wwv_flow_imp.g_varchar2_table(80) := '7D7D293B76617220792C783D6E756C6C3B66756E6374696F6E20582865297B666F722876617220743D303B743C6E2E6C656E6774683B742B2B296966286E5B745D3D3D3D652E746172676574297B693D21303B627265616B7D69262661282866756E6374';
wwv_flow_imp.g_varchar2_table(81) := '696F6E28297B72657475726E20693D21317D29297D66756E6374696F6E205928297B643D21307D66756E6374696F6E204128297B643D21312C4F28297D66756E6374696F6E204F28297B752879292C752877297D66756E6374696F6E205328297B643D21';
wwv_flow_imp.g_varchar2_table(82) := '317D66756E6374696F6E206A28297B666F722876617220653D6E756C6C2C743D303B743C6E2E6C656E6774683B742B2B294C28632C6E5B745D29262628653D6E5B745D293B72657475726E20657D66756E6374696F6E204D2865297B696628722E617574';
wwv_flow_imp.g_varchar2_table(83) := '6F5363726F6C6C2829262621652E64697370617463686564297B76617220743D652E7461726765742C6F3D646F63756D656E742E626F64793B782626214C28632C7829262628722E7363726F6C6C5768656E4F7574736964657C7C28783D6E756C6C2929';
wwv_flow_imp.g_varchar2_table(84) := '2C742626742E706172656E744E6F64653D3D3D6F3F743D6A28293A28743D66756E6374696F6E2865297B69662821652972657475726E206E756C6C3B696628783D3D3D652972657475726E20653B69662873286E2C65292972657475726E20653B666F72';
wwv_flow_imp.g_varchar2_table(85) := '283B653D652E706172656E744E6F64653B2969662873286E2C65292972657475726E20653B72657475726E206E756C6C7D287429297C7C28743D6A2829292C74262674213D3D78262628783D74292C67262628752877292C773D61284629292C78262628';
wwv_flow_imp.g_varchar2_table(86) := '752879292C793D61284B29297D7D66756E6374696F6E204628297B712867292C752877292C773D612846297D66756E6374696F6E204B28297B78262628712878292C752879292C793D61284B29297D66756E6374696F6E20712865297B766172206E2C74';
wwv_flow_imp.g_varchar2_table(87) := '2C6F3D702865293B6E3D632E783C6F2E6C6566742B722E6D617267696E3F4D6174682E666C6F6F72284D6174682E6D6178282D312C28632E782D6F2E6C656674292F722E6D617267696E2D31292A722E6D61785370656564293A632E783E6F2E72696768';
wwv_flow_imp.g_varchar2_table(88) := '742D722E6D617267696E3F4D6174682E6365696C284D6174682E6D696E28312C28632E782D6F2E7269676874292F722E6D617267696E2B31292A722E6D61785370656564293A302C743D632E793C6F2E746F702B722E6D617267696E3F4D6174682E666C';
wwv_flow_imp.g_varchar2_table(89) := '6F6F72284D6174682E6D6178282D312C28632E792D6F2E746F70292F722E6D617267696E2D31292A722E6D61785370656564293A632E793E6F2E626F74746F6D2D722E6D617267696E3F4D6174682E6365696C284D6174682E6D696E28312C28632E792D';
wwv_flow_imp.g_varchar2_table(90) := '6F2E626F74746F6D292F722E6D617267696E2B31292A722E6D61785370656564293A302C722E73796E634D6F766528292626662E646973706174636828652C7B70616765583A632E70616765582B6E2C70616765593A632E70616765592B742C636C6965';
wwv_flow_imp.g_varchar2_table(91) := '6E74583A632E782B6E2C636C69656E74593A632E792B747D292C73657454696D656F7574282866756E6374696F6E28297B74262666756E6374696F6E28652C6E297B653D3D3D77696E646F773F77696E646F772E7363726F6C6C546F28652E7061676558';
wwv_flow_imp.g_varchar2_table(92) := '4F66667365742C652E70616765594F66667365742B6E293A652E7363726F6C6C546F702B3D6E7D28652C74292C6E262666756E6374696F6E28652C6E297B653D3D3D77696E646F773F77696E646F772E7363726F6C6C546F28652E70616765584F666673';
wwv_flow_imp.g_varchar2_table(93) := '65742B6E2C652E70616765594F6666736574293A652E7363726F6C6C4C6566742B3D6E7D28652C6E297D29297D77696E646F772E6164644576656E744C697374656E657228226D6F757365646F776E222C592C2131292C77696E646F772E616464457665';
wwv_flow_imp.g_varchar2_table(94) := '6E744C697374656E65722822746F7563687374617274222C592C2131292C77696E646F772E6164644576656E744C697374656E657228226D6F7573657570222C412C2131292C77696E646F772E6164644576656E744C697374656E65722822746F756368';
wwv_flow_imp.g_varchar2_table(95) := '656E64222C412C2131292C77696E646F772E6164644576656E744C697374656E65722822706F696E7465727570222C412C2131292C77696E646F772E6164644576656E744C697374656E657228226D6F7573656D6F7665222C4D2C2131292C77696E646F';
wwv_flow_imp.g_varchar2_table(96) := '772E6164644576656E744C697374656E65722822746F7563686D6F7665222C4D2C2131292C77696E646F772E6164644576656E744C697374656E657228226D6F7573656C65617665222C532C2131292C77696E646F772E6164644576656E744C69737465';
wwv_flow_imp.g_varchar2_table(97) := '6E657228227363726F6C6C222C582C2130297D66756E6374696F6E204C28652C6E2C74297B72657475726E20743F652E793E742E746F702626652E793C742E626F74746F6D2626652E783E742E6C6566742626652E783C742E72696768743A66756E6374';
wwv_flow_imp.g_varchar2_table(98) := '696F6E28652C6E297B76617220743D70286E293B72657475726E20652E793E742E746F702626652E793C742E626F74746F6D2626652E783E742E6C6566742626652E783C742E72696768747D28652C6E297D72657475726E2066756E6374696F6E28652C';
wwv_flow_imp.g_varchar2_table(99) := '6E297B72657475726E206E6577207828652C6E297D7D28293B';
end;
/
begin
wwv_flow_imp_shared.create_plugin_file(
 p_id=>wwv_flow_imp.id(29241929867138238659)
,p_plugin_id=>wwv_flow_imp.id(29219779512205803100)
,p_file_name=>'dom-autoscroller.min.js'
,p_mime_type=>'text/javascript'
,p_file_charset=>'utf-8'
,p_file_content=>wwv_flow_imp.varchar2_to_blob(wwv_flow_imp.g_varchar2_table)
);
end;
/
prompt --application/end_environment
begin
wwv_flow_imp.import_end(p_auto_install_sup_obj => nvl(wwv_flow_application_install.get_auto_install_sup_obj, false)
);
commit;
end;
/
set verify on feedback on define on
prompt  ...done
