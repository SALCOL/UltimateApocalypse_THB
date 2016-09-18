----------------------------------------------------------------------------------------
--  This file is part of taskbar.lua
--
-- (c) 2004 Relic Entertainment Inc.
----------------------------------------------------------------------------------------
-- CODEX EVOLUTIONS  2.8
--Special OMBREPHENIX modding of Dark Crusade 1.2
----------------------------------------------------------------------------------------
-- Tooltip bindings
----------------------------------------------------------------------------------------


-- There are 4 types of tooltip panels
--	1. Production Items (Includes Title, Requirements, Cost, Bulleted list, Hotkey, Weapon Stats)
--  2. Alert Text items (Includes Title, Requirements/Alert text, Desc/Bullet list, Hotkey
--  3. Simple Text items (Includes Title, Desc and Hotkey )
--  4. Minimap Help Text (Includes Title and Legend)

-- There are also 3 differernt levels of help text (set by game options)
--  1. Low : Minimal information is displayed
--  2. High: All information is displayed
--  3.None: Nothing is displayed.

-- There can be different bindings tables for each level of help text by defining a selector:
--[[
{ bind = "selector_help_text_level",
		low = {
			-- .... bindings for low help text (REQUIRED)
		},
		high = {
			-- .... bindings for high help text (REQUIRED)
		},
		none = {
			-- .... bindings for no help text (OPTIONAL)
		},
	},
]]

----------------------------------------------------------------------------------------
-- Table of common widgets
----------------------------------------------------------------------------------------
widgets =
{
	res = {
		label 			= {	low = "txtHelpCostCostMin", 			high ="txtHelpCostCostMax", },
		req = {
			label		= {	low = "txtHelpReqCostMin", 			high = "txtHelpReqCostMax",},
			icon 			= {	low = "iconHelpReqCostMin", 			high = "iconHelpReqCostMax",},
		},
		power = {
			label		= {	low = "txtHelpPowerCostMin", 		high = "txtHelpPowerCostMax",},
			icon 			= {	low = "iconHelpPowerCostMin", 		high = "iconHelpPowerCostMax",},
		},
		ork= {
			label		= {	low = "txtHelpOrkCostMin", 			high = "txtHelpOrkCostMax",},
			icon 			= {	low = "iconHelpOrkCostMin", 			high = "iconHelpOrkCostMax",},
		},
		relic = {
			label		= {	low = "txtHelpRelicCostMin",		high = "txtHelpRelicCostMax",},
			icon		= {	low = "iconHelpRelicCostMin",	high = "iconHelpRelicCostMax",},
		},
		faith= {
			label		= {	low = "txtHelpFaithCostMin", 			high = "txtHelpFaithCostMax",},
			icon 			= {	low = "iconHelpFaithCostMin", 			high = "iconHelpFaithCostMax",},
		},
		souls= {
			label		= {	low = "txtHelpSoulsCostMin", 			high = "txtHelpSoulsCostMax",},
			icon 			= {	low = "iconHelpSoulsCostMin", 			high = "iconHelpSoulsCostMax",},
		},
		squad = {
			label		= {	low = "txtHelpSquadCostMin", 		high = "txtHelpSquadCostMax",},
			icon 			= {	low = "iconHelpSquadCostMin", 		high = "iconHelpSquadCostMax",},
		},
		vehicle = {
			label		= {	low = "txtHelpVehicleCostMin", 		high = "txtHelpVehicleCostMax",},
			icon 			= {	low = "iconHelpVehicleCostMin", 	high = "iconHelpVehicleCostMax",},
		},
--	New  --
		population = {
		    label       = {   low = "txtHelpPopulationCostMin",    high = "txtHelpPopulationCostMax",},
			icon        = {   low ="iconHelpPopulationCostMin",   high = "iconHelpPopulationCostMax",},
		},	 
		waagh = {
			icon 			= {	low = "iconHelpWaaghCostMin", 	high = "iconHelpWaaghCostMax",},
		},
		relic = {
			label		= {	low = "txtHelpRelicCostMin",		high = "txtHelpRelicCostMax",},
			icon		= {	low = "iconHelpRelicCostMin",	high = "iconHelpRelicCostMax",},
		},
	}
}

----------------------------------------------------------------------------------------
-- Cost
----------------------------------------------------------------------------------------

-- NOTE: There is no need to separate the races. I leave and showed the possibilities for code. (Ombrephenix)

----------------------------------------------------------------------------------------

tooltip_cost = 
{
	{ bind = "selector_help_text_level",
		low = {
			-- waaagh! requirement
			{ bind = "ork_pop_req_image", ui = widgets.res.waagh.icon.low },
			
			-- cost: text label
			{ bind = "image", ui = widgets.res.label.low }, 
	
			-- requsition - always display
			{ bind = "resource_cost_label", ui = widgets.res.req.label.low, res_type = "requisition", valid_when_zero = true, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.req.icon.low }, },
			},
		
			-- power - always display
			{ bind = "resource_cost_label", ui = widgets.res.power.label.low, res_type = "power", valid_when_zero = true, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.power.icon.low }, 	},
			},
			
			-- power shifted left - always display
			{ bind = "resource_cost_label", ui = "txtHelpPowerCostMinLeft", res_type = "power", valid_when_zero = true, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = "iconHelpPowerCostMinLeft" }, 	},
			},
			
			-- ork resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.ork.label.low, res_type = "pop", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.ork.icon.low }, 	},
			},
			
			-- faith resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.faith.label.low, res_type = "faith", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.faith.icon.low }, 	},
			},
			
			-- souls resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.souls.label.low, res_type = "souls", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.souls.icon.low }, 	},
			},
			
			-- infantry cap
			{ bind = "popcap_cost_label", ui = widgets.res.squad.label.low, cap_type = "squad", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.squad.icon.low }, 	},
			},
			
			-- vehicle cap
			{ bind = "popcap_cost_label", ui = widgets.res.vehicle.label.low, cap_type = "support", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.vehicle.icon.low }, 	},
			},
			
			-- relic resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.relic.label.low, res_type = "pop", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.relic.icon.low }, 		},
			},
			
			-- relic resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.relic.label.low, res_type = "pop", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.relic.icon.low }, 		},
			},
				
			-- waaagh! requirement
			{ bind = "ork_pop_req_image", ui = widgets.res.waagh.icon.low },
		},
		high = {
			-- waaagh! requirement
			{ bind = "ork_pop_req_image", ui = widgets.res.waagh.icon.high },
			
			-- cost: text label
			{ bind = "cost_label", ui = widgets.res.label.high }, 
	
			-- requsition - always display
			{ bind = "resource_cost_label", ui = widgets.res.req.label.high, res_type = "requisition", valid_when_zero = true, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.req.icon.high }, },
			},
		
			-- power - always display
			{ bind = "resource_cost_label", ui = widgets.res.power.label.high, res_type = "power", valid_when_zero = true, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.power.icon.high }, 	},
			},
			
			-- power shifted left - always display
			{ bind = "resource_cost_label", ui = "txtHelpPowerCostMaxLeft", res_type = "power", valid_when_zero = true, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = "iconHelpPowerCostMaxLeft"}, 	},
			},
			
			-- ork resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.ork.label.high, res_type = "pop", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.ork.icon.high }, 	},
			},
			
			-- faith resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.faith.label.high, res_type = "faith", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.faith.icon.high }, 	},
			},
			
			-- souls resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.souls.label.high, res_type = "souls", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.souls.icon.high }, 	},
			},
			
			-- infantry cap
			{ bind = "popcap_cost_label", ui = widgets.res.squad.label.high, cap_type = "squad", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.squad.icon.high }, 	},
			},
			
			-- vehicle cap
			{ bind = "popcap_cost_label", ui = widgets.res.vehicle.label.high, cap_type = "support", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.vehicle.icon.high }, 	},
			},
			
			-- relic resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.relic.label.high, res_type = "pop", valid_when_zero = false, valid_when_no_req = true,
				dependant = {	{ bind = "image", ui = widgets.res.relic.icon.high }, 	},
			},
			
			-- relic resource - only show when not zero
			{ bind = "resource_cost_label", ui = widgets.res.relic.label.high, res_type = "pop", valid_when_zero = false, valid_when_no_req = false,
				dependant = {	{ bind = "image", ui = widgets.res.relic.icon.high }, 	},
			},
				
			-- waaagh! requirement
			{ bind = "ork_pop_req_image", ui = widgets.res.waagh.icon.high },
		},
	},
}

----------------------------------------------------------------------------------------
-- Simple frame
----------------------------------------------------------------------------------------

tooltip_simple_template =
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "tt_title", ui = "txtHelpTitleNone" },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMin" },
			{ bind = "tt_title", ui = "txtHelpTitleSimpleMin" },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextSimpleMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMax" },
			{ bind = "tt_title", ui = "txtHelpTitleSimpleMax" },
			{ bind = "tt_desc", ui = "txtHelpDescSimpleMax" },
		},
	},
}

tooltip_worship_template =
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "tt_title", ui = "txtHelpTitleNone" },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextWorshipMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyWorshipMax" },
			{ bind = "tt_title", ui = "txtHelpTitleWorshipMax" },
			{ bind = "tt_desc", ui = "txtHelpDesc1WorshipMax" },
			{ bind = "tt_desc2", ui = "txtHelpDesc2WorshipMax" },
			{ bind = "tt_desc3", ui = "txtHelpDesc3WorshipMax" },
	},
		high = {
			{ bind = "image", ui = "grpHelpTextWorshipMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyWorshipMax" },
			{ bind = "tt_title", ui = "txtHelpTitleWorshipMax" },
			{ bind = "tt_desc", ui = "txtHelpDesc1WorshipMax" },
			{ bind = "tt_desc2", ui = "txtHelpDesc2WorshipMax" },
			{ bind = "tt_desc3", ui = "txtHelpDesc3WorshipMax" },
		},
	},
}

tooltip_simple_template_prebaked = 
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "text", ui = "txtHelpTitleNone", text = UPVALUES[1] },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMin" },
			{ bind = "text", ui = "txtHelpTitleSimpleMin", text = UPVALUES[1] },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextSimpleMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMax" },
			{ bind = "text", ui = "txtHelpTitleSimpleMax", text = UPVALUES[1] },
			{ bind = "text", ui = "txtHelpDescSimpleMax", text = UPVALUES[2] },
		},
	},
}

function tooltip_desc( title, desc )
	return copy(tooltip_simple_template_prebaked, { title, desc }){}
end

----------------------------------------------------------------------------------------
-- Locked commands
--
-- some commands like infiltrate and jump are locked until requirements are met.
-- locked commands need to show their unmet requirements in the alert text
----------------------------------------------------------------------------------------
tooltip_lockedcmd = 
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "text", ui = "txtHelpTitleNone", text = UPVALUES[1] },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMin" },
			{ bind = "text", ui = "txtHelpTitleSimpleMin", text = UPVALUES[1] },
			{ bind = "command_requirements", ui = "txtHelpRequireSimpleMin", cmdname= UPVALUES[3] },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextAlertMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyAlertMax" },
			
			{ bind = "text", ui = "txtHelpTitleAlertMax", text = UPVALUES[1] },
			{ bind = "text", ui = "txtHelpDescAlertMax", text = UPVALUES[2] },
			{ bind = "command_requirements", ui = "txtHelpRequireAlertMax", cmdname= UPVALUES[3] },
		},
	},
}

function tooltip_lockedcmd_desc( title, desc, cmdname )
	return copy(tooltip_lockedcmd, {title, desc, cmdname}){}
end

----------------------------------------------------------------------------------------
-- Minimap ping buttons
----------------------------------------------------------------------------------------
tooltip_ping =
{
	{ bind = "selector_help_text_level",
		none = {
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleNone", ui_desc = "", is_ping_send_type = false },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMin" },
			
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleSimpleMin", ui_desc = "", is_ping_send_type = false },
			
			-- display text: "Right click to cycle"
			{bind = "text", ui = "txtHelpAlertSimpleMin", text = "$38040" },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextAlertMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyAlertMax" },
			
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleAlertMax", ui_desc = "txtHelpDescAlertMax", is_ping_send_type = false },	
			-- display text: "Right click to cycle"
			{bind = "text", ui = "txtHelpAlertAlertMax", text = "$38040" },
		},
	},
}

tooltip_ping_send_toggle =
{
	{ bind = "selector_help_text_level",
		none = {
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleNone", ui_desc = "", is_ping_send_type = true },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMin" },
		
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleSimpleMin", ui_desc = "", is_ping_send_type = true },	
		},
		high = {
			{ bind = "image", ui = "grpHelpTextSimpleMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeySimpleMax" },
		
			-- title and desc are in same binding
			{bind = "minimap_ping_tooltip", ui = "txtHelpTitleSimpleMax", ui_desc = "txtHelpDescSimpleMax", is_ping_send_type = true },	
		},
	},
}

----------------------------------------------------------------------------------------
-- Weapon Upgrades : Uses cost bindings
----------------------------------------------------------------------------------------
tooltip_upgrade_squad = uses(tooltip_cost)
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "upgrade_name", ui = "txtHelpTitleNone" },
		},
		low = {
			-- background and hotkey
			{ bind = "image", ui = "grpHelpTextCostMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMin" },
			
			--
			{ bind = "upgrade_name", ui = "txtHelpTitleCostMin" },
			{ bind = "upgrade_requirements", ui = "txtHelpRequireCostMin" },
			
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListCostMin"},
		},
		high = {
			-- background and hotkey
			{ bind = "image", ui = "grpHelpTextCostMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMax" },
			
			--
			{ bind = "upgrade_name", ui = "txtHelpTitleCostMax" },
			{ bind = "upgrade_requirements", ui = "txtHelpRequireCostMax" },
			
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListCostMax"},
			
			-- melee damage for weapon
			{ bind = "weapon_upgrade_damage", ui = "txtHelpMeleeCostMax",  melee = true,
				dependant = {
					{ bind = "image", ui = "grpHelpMeleeCostMax"},
					{ bind = "image", ui = "artHelpMeleeCostMax"},
				},
			},
			
			-- ranged damage for weapon
			{ bind = "weapon_upgrade_damage", ui = "txtHelpRangedCostMax",  melee = false,
				dependant = {
					{ bind = "image", ui = "grpHelpRangedCostMax"},
					{ bind = "image", ui = "artHelpRangedCostMax"},
				},
			},
		},
	},
	
}

----------------------------------------------------------------------------------------
--Production items : Uses cost bindings
----------------------------------------------------------------------------------------
tooltip_production = uses(tooltip_cost)
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleNone"},
		},
		low = {
			-- background and hotkey
			{ bind = "image", ui = "grpHelpTextCostMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMin" },
			
			--
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMin"},
			{ bind = "production_requirements", ui = "txtHelpRequireCostMin" },
		},
		high = {
			-- background and hotkey
			{ bind = "image", ui = "grpHelpTextCostMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMax" },
			
			--
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMax"},
			{ bind = "production_requirements", ui = "txtHelpRequireCostMax" },
			
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListCostMax"},
		},
	},
}

----------------------------------------------------------------------------------------
-- Hero UI
----------------------------------------------------------------------------------------
tooltip_hero =
{
	{ bind = "selector_help_text_level",
		none = {
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleNone" },
		},
		low = {
			-- help tip background
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleSimpleMin" },
			-- unit type
			{ bind = "single_selection_unit_type_label", ui = "txtHelpAlertSimpleMin"},
			-- selection status
			{ bind = "select_text", selected = "$38280", unselected = "$38281", ui = "txtHelpHotkeySimpleMin", }
		},
		high = {
			-- help tip background
			{ bind = "image", ui = "grpHelpTextAlertMax" },
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleAlertMax" },
			-- unit type
			--{ bind = "single_selection_unit_type_label", ui = "txtHelpAlertAlertMax"},
			-- unit desc
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListAlertMax"},
			-- selection status
			{ bind = "select_text", selected = "$38280", unselected = "$38281", ui = "txtHelpHotkeyAlertMax", }
		},
	},
}

----------------------------------------------------------------------------------------
-- Minimap - displays legend on max setting
----------------------------------------------------------------------------------------
tooltip_minimap =
{
	{ bind = "selector_help_text_level",
		none = {
			-- name and description for minimap
			{ bind = "text", ui = "txtHelpTitleNone", text = "$39537" },
		},
		low = {
			-- minimap help tip background
			{ bind = "image", ui = "grpHelpTextSimpleMin"},
			-- name and description for minimap
			{ bind = "text", ui = "txtHelpTitleSimpleMin", text = "$39537" },
		},
		high = {
			-- minimap help tip background
			{ bind = "image", ui = "grpHelpTextMinimap"},			
			-- name and description for minimap
			{ bind = "text", ui = "txtHelpTitleMinimap", text = "$39537" },
			{ bind = "text", ui = "txtHelpDescMinimap", text = "$39538" },
			-- minimap legend
			{ bind = "minimap_legend", ui = "grpLegend" },
		},
	},
	
}

----------------------------------------------------------------------------------------
-- Structure - Uses costs
----------------------------------------------------------------------------------------
tooltip_structure = uses(tooltip_cost)
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleNone"},
		},
		low = {
			{ bind = "image", ui = "grpHelpTextCostMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMin" },
			
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMin"},
			{ bind = "structure_requirements", ui = "txtHelpRequireCostMin" },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextCostMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMax" },
			
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMax"},
			{ bind = "structure_requirements", ui = "txtHelpRequireCostMax" },
				
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListCostMax"},
		},
	},
}

----------------------------------------------------------------------------------------
-- Ability info - Has requirements
----------------------------------------------------------------------------------------
tooltip_ability = uses(tooltip_cost)
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleNone"},
		},
		low = {
			{ bind = "image", ui = "grpHelpTextCostMin" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMin" },
			
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMin"},
			{ bind = "ability_requirements", ui = "txtHelpRequireCostMin"},
			{ bind = "ability_cost",
				dependant = { bind = "image", ui = "txtHelpCostCostMax" },
			},			
		},
		high = {
			{ bind = "image", ui = "grpHelpTextCostMax" },
			{ bind = "hotkey_text", ui = "txtHelpHotkeyCostMax" },
			
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleCostMax"},
			{ bind = "ability_requirements", ui = "txtHelpRequireCostMax"},
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListCostMax"},
			{ bind = "ability_cost",
				dependant = { bind = "image", ui = "txtHelpCostCostMin" },
			},			
		},
	},
}

----------------------------------------------------------------------------------------
-- Event cue items
----------------------------------------------------------------------------------------
tooltip_event_cue =
{
	{ bind = "selector_help_text_level",
		none = {
			{ bind = "event_cue_item_info", ui = "txtHelpTitleNone", ui_desc = "" },
		},
		low = {
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			{ bind = "event_cue_item_info", ui = "txtHelpTitleSimpleMin", ui_desc = "" },
			-- text "right click to remove"
			{ bind = "text", ui = "txtHelpHotkeySimpleMin", text = "$42753" },
		},
		high = {
			{ bind = "image", ui = "grpHelpTextAlertMax" },
			{ bind = "event_cue_item_info", ui = "txtHelpEventCueAlertMax", ui_desc = "txtHelpDescAlertMax" },
			-- text "right click to remove"
			{ bind = "text", ui = "txtHelpHotkeyAlertMax", text = "$42753" },
		},
	},
}

