----------------------------------------------------------------------------------------
----------------------------------------------------------------------------------------
-- taskbar.lua
----------------------------------------------------------------------------------------
-- CODEX EVOLUTIONS  2.8
--Special OMBREPHENIX modding of Dark Crusade 1.2
-- Edited by EJMarstone for Soul Storm: Legions
---------------------------------------------------------------------------------------
--
--
-- (c) 2004 Relic Entertainment Inc.
--
-- this file is organized into three sections: 
-- 
-- 1. functions
--    - these are util functions used in this file
--
-- 2. lists
--    - these define the groups of buttons
--    - two sections
--      1. general
--         - maps taskbar.lua widget names to the actual screen file widget names
--      2. specific
--         - maps specific groups of bindings to taskbar.lua widget names
--         - used for the "list" binding described below
--
-- 3. bindings
--    - these are the actual bindings, grouped into tables
--    - each table is a set of related bindings
--      - e.g. there is a table called 'commands' and table called 'minimap'
--    - these tables are grouped further into aggregate tables. there is one
--      aggregate table for each taskbar selection state referenced in 
--      ModTaskbar::RefreshTaskbar()
--      - e.g. tehre is a table called "selection_squads" that contains, 
--        among others, the tables 'commands' and 'minimap'
--    
--    - a binding is a table with the following fields:
--      - bind
--        - a necessary field
--        - defines the type of binding
--        - maps to the string Binding*::Name in code, where Binding* is a class 
--          that inherits from ModTB::Binding
--      - ui
--        - necessary field unless bind = "list"
--        - the name of the widget to bind to
--        - special case: can be an empty string, for hotkey bindings that have 
--          no ui associated with them
--      - uilist
--        - necessary field if bind = "list"
--        - references a list of widget names defined in the "2. lists" section 
--          above
--      - content
--        - necessary field if bind = "list"
--         - a subtable of bindings used to build the list
--           - these bindings should not contain a 'ui' field
--      - tt
--        - tooltip table 
--      - tt_title
--        - localized string to use for title of tooltip
--      - tt_desc 
--        - localized string to use for body of tooltip
--      - hk
--        - hotkey 
--        - if missing, the system will try to use the context hotkey 
--      - texture
--        - texture file
--        -  if missing, the system will try to use the context texture
--      - submenu
--        - table to use for the submenu 
--        - only makes sense for a few bindings
--          - e.g. modal commands, the build menu command
--      - dependant
--        - a subtable of bindings that are processed only if the parent binding
--          is visible
--      - exclusive
--        - a subtable of bindings that are processed only if the parent binding 
--          is not valid
-- 
----------------------------------------------------------------------------------------


----------------------------------------------------------------------------------------
--  1 - FUNCTIONS
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
-- the upvalues system works because by default lua only reference tables when copying, instead of duplicating
-- this means we can check for table equality
	-- e.g: a = {}; b = a; assert(a == b)
UPVALUES = 
{ 
	{},
	{},
	{},
	{}
}

function uses(...)

	local function internal(tt)
		-- create new table
		local newt = {}
		
		-- append all original arguments
		for i = 1, table.getn(arg) do
			for j = 1, table.getn(arg[i]) do
                table.insert(newt, arg[i][j])
			end
		end
		
		-- append tt
		for k = 1, table.getn(tt) do
            table.insert(newt, tt[k])
		end
		
		-- done!
		return newt
		
	end

    return internal
end

function copy(base, values)
	function isupvalue(t)
		-- validate parm
		assert(type(t) == "table")

		for k,v in pairs(UPVALUES) do 
			if(t == v) then
				return true
			end
		end
		
		return false
	end

	function reccopy(t)
		-- validate parm
		assert(type(t) == "table")

		local new = {}

		for k,v in pairs(t) do 
			if(type(v) == "table") then
				-- check for upvalues
				if isupvalue(v) then
					-- keep the same
					new[k] = v
				else
					-- recurse
					new[k] = reccopy(t[k])
				end
			else
				new[k] = v
			end
		end
		
		return new
	end

	function recrep(t, up, val)
		-- validate parm
		assert(type(t) == "table")
		
		-- 
		for k,v in pairs(t) do 
			-- ignore everything that isn't a table
			if(type(v) == "table") then
				-- check for up
				if(v == up) then
					-- replace
					t[k] = val
				else
					-- recurse
					recrep(t[k], up, val)
				end
			end
		end
	end
	
	-- copy base table
	local tt = reccopy(base)

	--replace upvalues
	local n = table.getn(values)
	assert(n <= table.getn(UPVALUES))
	
	for i = 1, n do
		recrep(tt, UPVALUES[i], values[i])
	end

	return uses(tt)
end

function printtable(t, spaces)
	-- validate parm
	assert(type(t) == "table")

	--
	if(not spaces) then
		spaces = 0
	end

	-- go through all elements
	for k,v in pairs(t) do 
		local sp = string.rep("\t", spaces)

		-- if it's a table (they all should be), print it
		if(type(v) == "table") then
			-- if it has a bind keyword
			if(type(v.bind) == "string") then
				-- 
				print(string.format("%s%3s %s", sp, k, v.bind))
				
				-- recurse?
				local tn = nil
				local tt = nil
				
				if(type(v.content) == "table") then
					tn = "content"
					tt = v.content
				elseif (type(v.dependant) == "table") then
					tn = "dependant"
					tt = v.dependant
				elseif (type(v.exclusive) == "table") then
					tn = "exclusive"
					tt = v.exclusive
				end
				
				if(tn and tt) then
					printtable(tt, spaces + 1)
				end
				
			else
				assert(false, "err #1")
			end
		else
			assert(false, "err #2")
		end
	end
end



----------------------------------------------------------------------------------------
--  2 - LISTS
----------------------------------------------------------------------------------------

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--


list_commands = 
{
	"CommandIcon01",
	"CommandIcon02",
	"CommandIcon03",
	"CommandIcon04",
	"CommandIcon05",
	"CommandIcon06",
	"CommandIcon07",
	"CommandIcon08",
	"CommandIcon09",
	"CommandIcon10",
	"CommandIcon11",
	"CommandIcon12",
	"CommandIcon13",
	"CommandIcon14",
	"CommandIcon15",
	"CommandIcon16",
	"CommandIcon17",
	"CommandIcon18",
	"CommandIcon19",
	"CommandIcon20",
	"CommandIcon21",
	"CommandIcon22",
	"CommandIcon23",
	"CommandIcon24",
	"CommandIcon25",
	"CommandIcon26",
	"CommandIcon27",
	"CommandIcon28",
	"CommandIcon29",
	"CommandIcon30",
	"CommandIcon31",
	"CommandIcon32",
	"CommandIcon33", --reserve slot--option alternative--
	"CommandIcon34", --reserve slot--option alternative--
	"CommandIcon35", --reserve slot--option alternative--
	"CommandIcon36", --reserve slot--option alternative--
	"CommandIcon37", --reserve slot--option alternative--
	"CommandIcon38", --reserve slot--option alternative--
	"CommandIcon39", --reserve slot--option alternative--
	"CommandIcon40", --reserve slot--option alternative--
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list-- list currently unused.	only the command buttons . 01-02 used.-- TESTS CONCEPT--
list_specialIcon_waaagh =
{
    "specialIcon01",
    "specialIcon02",
    "specialIcon03",
}	

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list-- list currently unused.	only the command buttons -- TESTS CONCEPT--
list_completed_research =
{
    "ResearchIcon_A",
    "ResearchIcon_B",
    "ResearchIcon_C",
}



-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--
list_production = 
{
	"CommandIcon05", -- 1
	"CommandIcon06", -- 2
	"CommandIcon07", -- 3
	"CommandIcon08", -- 4
	"CommandIcon13", -- 5
	"CommandIcon14", -- 6
	"CommandIcon15", -- 7
	"CommandIcon16", -- 8
	"CommandIcon21", -- 9
	"CommandIcon22", -- 10
	"CommandIcon23", -- 11
	"CommandIcon24", -- 12
	
	-- Cylarne's stuff of doom
	"CommandIcon41", -- 13
	"CommandIcon42", -- 14
	"CommandIcon43", -- 15
	"CommandIcon44", -- 16
	
	"CommandIcon25", -- ability1, 17
	"CommandIcon26", -- ability2, 18
	"CommandIcon27", -- ability3, 19
	"CommandIcon28", -- ability4, 20
	"CommandIcon29", -- ability5, 21
	"CommandIcon30", -- ability6, 22
	"CommandIcon31", -- ability7, 23
	"CommandIcon32", -- ability8, 24
}


-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--
list_extra_menu_production =
{
	"CommandIcon01",
	"CommandIcon02",
	"CommandIcon03",
	"CommandIcon04",
	"CommandIcon05",
	"CommandIcon06",
	"CommandIcon07",
	"CommandIcon08",
	"CommandIcon09",
	"CommandIcon10",
	"CommandIcon11",
	"CommandIcon12",
	"CommandIcon13",
	"CommandIcon14",
	"CommandIcon15",
	"CommandIcon16",
	"CommandIcon17",
	"CommandIcon18",
	"CommandIcon19",
	"CommandIcon20",
	"CommandIcon21",
	"CommandIcon22",
	"CommandIcon23",
	--"CommandIcon24",
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--
list_builder_construction = 
{
	-- Added July 6th, version 1.72.8 -- Cylarne
	"CommandIcon01",
	"CommandIcon02",
	"CommandIcon03",
	"CommandIcon04",
	"CommandIcon05",
	"CommandIcon06",
	"CommandIcon07",
	"CommandIcon08",
	"CommandIcon09",
	"CommandIcon10",
	"CommandIcon11",
	"CommandIcon12",
	"CommandIcon13",
	"CommandIcon14",
	"CommandIcon15",
	"CommandIcon16",
	"CommandIcon17",
	"CommandIcon18",
	"CommandIcon19",
	"CommandIcon20",
	"CommandIcon21",
	"CommandIcon22",
	"CommandIcon23",
	--"CommandIcon24",-- BACK Button
	--[["CommandIcon05", --structure01--
	"CommandIcon06", --structure02-
	"CommandIcon07", --structure03-
	"CommandIcon08", --structure04-
	"CommandIcon13", --structure05-
	"CommandIcon14", --structure06-
	"CommandIcon15", --structure07-
	"CommandIcon16", --structure08- 
	"CommandIcon21", --structure09-
	"CommandIcon22", --structure10-
	"CommandIcon23", --structure11-
	--"CommandIcon24",-- BACK button]]
}

-- mappings for command buttons (command buttons always appear in the same slot on the taskbar)
-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  -- Edit for your custom Race or Mod .

commandsmall_buttons = 
{
	move 					= list_commands[5],
	stop 					= list_commands[6],	
	attack					= list_commands[7],
	attack_move				= list_commands[7],
	attack_melee			= list_commands[8],	
	deploy					= list_commands[21],
	undeploy				= list_commands[21],
	possess					= list_commands[22],
	build_basic				= list_commands[13],
	build_adv				= list_commands[21],
    leaders_menu01		 	= list_commands[13], -- squads
	leaders_menu02 			= list_commands[21], -- researchs
	nightbringer			= list_commands[13],
	--worship					= list_commands[32],
	--darklance				= list_commands[32],
	possess_enemy			= list_commands[14],
	deceive					= list_commands[26],
	direct_spawn			= list_commands[21],
	burrow					= list_commands[21],
	melee_dance				= list_commands[13],
	holy_passion			= list_commands[13],
	harvest		    		= list_commands[14],
	harvest_off				= list_commands[14],
	attack_ground			= list_commands[14],
	unload_here				= list_commands[14],
	deepstrike				= list_commands[14],
	unload					= list_commands[14],
	repair					= list_commands[14],
	direct_spawn_rally		= list_commands[13],
	combat_stance			= list_commands[15],
	melee_stance  			= list_commands[16],
	harvest_spawn_a 		= list_commands[22],
	harvest_spawn_b 		= list_commands[23],
	harvest_spawn_c 		= list_commands[24],
	miraculous_intervention = list_commands[23],
	rampage					= list_commands[21], 	-- temp location
	jump					= list_commands[24], 	-- temp location
	-- Cannibalize ability overlaps with 4th ability
	cannibalize				= list_commands[22],
	
--	build_adv		= list_commands[0],	

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --

	-- squad/building commands
	attach_detach			= "Attach",	
	rally_modal				= "Reinforce", 
	building_stance			= "AddLeader", 
	unload_building			= "Upgrade01",
	deepstrike_modal		= "Upgrade01", 
	building_attack			= "Upgrade02", 
	scuttle 				= "Detach", 
	relocate				= "Upgrade01",
	
	cancel_construction	= list_commands[24],
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--


list_abilities = 
{
    list_commands[25], -- 	abilities1  --extrabar
    list_commands[26], -- 	abilities2  --extrabar
    list_commands[27], -- 	abilities3  --extrabar
    list_commands[28], -- 	abilities4  --extrabar
	list_commands[29], -- 	abilities5  --extrabar
	list_commands[30], -- 	abilities6  --extrabar
	list_commands[31], -- 	abilities7  --extrabar
	list_commands[32], -- 	abilities8  --extrabar
    list_commands[22], -- 	abilities9  --menu10
    list_commands[23], -- 	abilities10 --menu11
    list_commands[21], -- 	abilities14 --menu09
	list_commands[33], -- 	abilities17 --upgrade_abilities9
    list_commands[34], -- 	abilities18 --upgrade_abilities10
    list_commands[35], -- 	abilities19 --upgrade_abilities11
    list_commands[36], -- 	abilities20 --upgrade_abilities12
    list_commands[37], -- 	abilities21 --upgrade_abilities13
	list_commands[38], -- 	abilities22 --upgrade_abilities14
    list_commands[39], -- 	abilities23 --upgrade_abilities15
    list_commands[40], -- 	abilities24 --upgrade_abilities16
	
-- Alternative :
-- "Upgrade09",        -- 	abilities17 --upgrade_abilities9
-- "Upgrade10",        -- 	abilities18 --upgrade_abilities10
-- "Upgrade11",        -- 	abilities19 --upgrade_abilities11
-- "Upgrade12",        -- 	abilities20 --upgrade_abilities12
-- "Upgrade13",        -- 	abilities21 --upgrade_abilities13
-- "Upgrade14",        -- 	abilities22 --upgrade_abilities14
-- "Upgrade15",        -- 	abilities23 --upgrade_abilities15
-- "Upgrade16",        -- 	abilities24 --upgrade_abilities16


}

-- progress positions must be in sync with above list_abilities list
-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list--


list_abilities_progress = 
{
	"ProgressIcon25", -- 	abilities1 --extrabar
    "ProgressIcon26", -- 	abilities2 --extrabar
    "ProgressIcon27", -- 	abilities3 --extrabar
    "ProgressIcon28", -- 	abilities4 --extrabar
	"ProgressIcon29", -- 	abilities5 --extrabar
	"ProgressIcon30", -- 	abilities6 --extrabar
	"ProgressIcon31", -- 	abilities7 --extrabar
	"ProgressIcon32", -- 	abilities8 --extrabar
    "ProgressIcon10", -- 	abilities10
    "ProgressIcon11", -- 	abilities11
	"ProgressIcon06", -- 	abilities14 
	
}


list_abilities_production = 
{
	list_commands[5], -- 	ABILITY3 -- SPECIAL CASE
	list_commands[6], -- 	ABILITY3 -- SPECIAL CASE
	list_commands[7], -- 	ABILITY3 -- SPECIAL CASE
	list_commands[8], -- 	ABILITY3 -- SPECIAL CASE
	list_commands[13], -- 	ABILITY3 -- SPECIAL CASE
    list_commands[14], -- 	ABILITY1
    list_commands[15], -- 	ABILITY1
    list_commands[16], -- 	ABILITY1
    list_commands[21], -- 	ABILITY1
    list_commands[22], -- 	ABILITY1
    list_commands[23], -- 	ABILITY1
    list_commands[24], -- 	ABILITY2
	list_commands[32], -- 	ABILITY2
	list_commands[31], -- 	ABILITY2
	
	-- NEW: Soul Abilities - Cylarne - June 7th, 2013
	"btnSoulAbility07",
	"btnSoulAbility08",
	"btnSoulAbility09",
	"btnSoulAbility10",
	"btnSoulAbility11",
	"btnSoulAbility12",
}

list_abilities_production_progress = 
{
	"ProgressIcon01", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon02", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon03", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon04", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon05", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon06", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon07", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon08", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon09", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon10", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon11", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon12", 	-- 	ABILITY3 -- SPECIAL CASE
	"ProgressIcon06", -- 	abilities14 
	"ProgressIcon11", -- 	abilities11
	
	-- NEW: Soul Abilities - Cylarne - June 7th, 2013
	"SoulProgress07",
	"SoulProgress08",
	"SoulProgress09",
	"SoulProgress10",
	"SoulProgress11",
	"SoulProgress12",
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --

list_weapon_upgrades =
{
	"Upgrade01",
	"Upgrade02",
	"Upgrade03",
	"Upgrade04",
	"Upgrade05",
	"Upgrade06",
	"Upgrade07",
	"Upgrade08",
	"Upgrade09",
	"Upgrade10",
	"Upgrade11",
	"Upgrade12",
	"Upgrade13",
	"Upgrade14",
	"Upgrade15",
	"Upgrade16",
}

-- ILE
--Needed for multi leaders and weapon upgrades
list_weapon_upgrades2 =
{
	"Upgrade01",
	"Upgrade02",
	"Upgrade03",
	"Upgrade04",
	"Upgrade05",
	"Upgrade06",
	"Upgrade07",
	"Upgrade08",
	"Upgrade09",
	"Upgrade10",
	"Upgrade11",
	"Upgrade12",
	"Upgrade13",
	"Upgrade14",
	"Upgrade15",
	"Upgrade16",
}

list_troop_upgrades =
{
	"Reinforce", -- 		REINFORCE TROOPER
}

list_leader_upgrades =
{
	"AddLeader", -- 		REINFORCE LEADER
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --05-16 not working --

list_multileader_upgrades =
{
	"Upgrade01",
	"Upgrade02",
	"Upgrade03",
	"Upgrade04",
	"Upgrade05",
	"Upgrade06",
	"Upgrade07",
	"Upgrade08",
	"Upgrade09",
	"Upgrade10",
	"Upgrade11",
	"Upgrade12",
	"Upgrade13",
	"Upgrade14",
	"Upgrade15",
	"Upgrade16",
}

--Needed for multi leaders and weapon upgrades
list_multileader_upgrades2 =
{
	"AddLeader",
	"AddLeader2",
	"AddLeader3",
	"AddLeader4",
	"AddLeader5",
}

list_multibase_upgrades =
{
	"AddLeader", -- 		REINFORCE LEADER
}

list_production_queue = 
{
	"currentBuildQueue",
	"buildQueue01",
	"buildQueue02",
	"buildQueue03",
	"buildQueue04",
	"buildQueue05",
	"buildQueue06",
}

-- for squad out
--list_hold_squads =
--{
--	"Upgrade03",
--	"Upgrade04",
--	"Attach",
--}

list_completed_addons =
{
	"btnAddOn1",
	"btnAddOn2",
	"btnAddOn3",
	"btnAddOn4",
	"btnAddOn5",
	"btnAddOn6",
}

list_hold_squads =
{
	"grpSquadHold_1",
	"grpSquadHold_2",
	"grpSquadHold_3",
	"grpSquadHold_4",
	"grpSquadHold_5",
	"grpSquadHold_6",
	"grpSquadHold_7",
	"grpSquadHold_8",
	"grpSquadHold_9",
	"grpSquadHold_10",
}

list_win_warnings =
{
	"txtWinWarning1",
	"txtWinWarning2",
	"txtWinWarning3",
	"txtWinWarning4",
	"txtWinWarning5",
	"txtWinWarning6",
	"txtWinWarning7",
	"txtWinWarning8",
	"txtWinWarning9",
}

list_event_cue =
{
	"btnEventCue1",
	"btnEventCue2",
	"btnEventCue3",
	"btnEventCue4",
	"btnEventCue5",
}

list_mult_select_groups =
{
	"grpMultiSelected01",
	"grpMultiSelected02",
	"grpMultiSelected03",
	"grpMultiSelected04",
	"grpMultiSelected05",
	"grpMultiSelected06",
	"grpMultiSelected07",
	"grpMultiSelected08",
	--"grpMultiSelected09",
	--"grpMultiSelected10",
	--"grpMultiSelected11",
	--"grpMultiSelected12",
}

list_hero_select_groups = 
{
	"btnHero_1",
	"btnHero_2",
	"btnHero_3",
	"btnHero_4",
	"btnHero_5",
	"btnHero_6",
	"btnHero_7",
	"btnHero_8",

}

----------------------------------------------------------------------------------------
--  3 - Bindings
----------------------------------------------------------------------------------------

----------------------------------------------------------------------------------------
-- tooltips

import([[taskbar_tooltips.lua]])

----------------------------------------------------------------------------------------

-- local player resources
resources = 
{
    -- requisition
    { bind = "player_resource", ui = "grpReq", text_widget ="txtReq", icon_widget ="iconReq", tt = tooltip_simple_template, tt_title = "$40752", tt_desc = "$40753"},
	
	-- bonus
	{ bind = "player_resource", ui = "grpBonus", text_widget = "txtBonus", icon_widget = "iconBonus", tt = tooltip_simple_template, tt_title = "$551100", tt_desc = "$551101"},
	
	-- ILE
    -- faith
    { bind = "player_resource", ui = "grpFaith", text_widget ="txtFaith", icon_widget ="iconFaith", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056"},

	-- ILE
    -- souls
    { bind = "player_resource", ui = "grpSouls", text_widget ="txtSouls", icon_widget ="iconFaith", tt = tooltip_simple_template, tt_title = "$4900057", tt_desc = "$4900058"},

	-- logic used for ork/normal resource and population ui
	{ bind = "selector_player_race",
		
		----------------------------------------------------------------------------------------
		-- special bindings for ORKS : ork resource, waaagh! and ork population
		----------------------------------------------------------------------------------------
		orks = {
			-- background
			{ bind = "image", ui = "grpOrkSquadCap" },
			
			-- ork resource icon and label
			{ bind = "player_resource", ui = "grpOrks", text_widget = "txtOrks", icon_widget="iconOrks", tt = tooltip_simple_template, tt_title = "$40754", tt_desc = "$40755", },
--			{ bind = "image", ui = "iconOrkSquadCap", tt = tooltip_simple_template, tt_title = "$40754", tt_desc = "$40755" },
--			{ bind = "player_resource", ui = "txtOrkSquadCap", text_widget = "orks", tt = tooltip_simple_template, tt_title = "$40754", tt_desc = "$40755", },

			-- ork pop cap icon and label
           		{ bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$40760", tt_desc = "$40761" }, 
			{ bind = "player_population", pop_type = "ork", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$40760", tt_desc = "$40761", },
			
			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{ bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			
			-- waaagh! image
			{ bind = "player_resource_ork_image", ui = "iconWaagh", tt = tooltip_simple_template, tt_title = "$40762", tt_desc = "$40763" },
			
			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
		},
		
		----------------------------------------------------------------------------------------
		-- special bindings for NECRONS : Necron power
		----------------------------------------------------------------------------------------
		necrons = {
			-- time bonus icon and label
			{ bind = "player_resource", ui = "grpBonus", text_widget = "txtBonus", icon_widget = "iconBonus", tt = tooltip_simple_template, tt_title = "$551100", tt_desc = "$551101"},

			-- power icon and label
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},

			-- background for relic
			{ bind = "image", ui = "grpRelicResource" },

			-- relic icon and label
			{ bind = "player_resource", ui = "grpRelic", text_widget = "txtOrks", icon_widget ="iconRelic", tt = tooltip_simple_template, tt_title = "$18210371", tt_desc = "$18210372"},

			-- squad cap icon and label
			{ bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{ bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 

			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{ bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" },
		},

		sisters = {
			
			--[[ squad cap icon and label
	            { bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			
			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
			
			-- faith image1
			--{ bind = "player_resource_faith1_image", ui = "iconFaith1", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },

			-- faith image2
			{ bind = "player_resource_faith2_image", ui = "iconFaith2", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },]]
			
			-- squad cap icon and label
	            { bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			
			-- background for relic
			{ bind = "image", ui = "grpRelicResource" },

			-- relic icon and label
			{ bind = "player_resource", ui = "grpRelic", text_widget = "txtOrks", icon_widget ="iconRelic", tt = tooltip_simple_template, tt_title = "$18210371", tt_desc = "$18210372"},

			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
			
			-- faith image1
			{ bind = "player_resource_faith1_image", ui = "iconFaith1", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },

			-- faith image2
			{ bind = "player_resource_faith2_image", ui = "iconFaith2", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },
		},
		
		----------------------------------------------------------------------------------------
		-- special bindings for DARK ELDAR:
		----------------------------------------------------------------------------------------
		--[[dark_eldar = {
			-- squad cap icon and label
	            { bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			
			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
		},]]
		
		----------------------------------------------------------------------------------------
		-- standard bindings for DAEMONS:
		----------------------------------------------------------------------------------------
		
		daemons = {
			-- squad cap icon and label
			{ bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 

			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
		},
		
		----------------------------------------------------------------------------------------
		-- special bindings for ALL OTHER RACES: squad cap and support cap
		----------------------------------------------------------------------------------------
		other = {
			--[[ squad cap icon and label
	            { bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			
			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
			
			-- faith image1
			{ bind = "player_resource_faith1_image", ui = "iconFaith1", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },

			-- faith image2
			{ bind = "player_resource_faith2_image", ui = "iconFaith2", tt = tooltip_simple_template, tt_title = "$4900055", tt_desc = "$4900056" },]]
			
			-- squad cap icon and label
	            { bind = "image", ui = "iconCapInfantry", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			{bind = "player_population", pop_type = "squad", ui = "txtTroopsCap", tt = tooltip_simple_template, tt_title = "$551006", tt_desc = "$551007" }, 
			
			-- background for relic
			{ bind = "image", ui = "grpRelicResource" },

			-- relic icon and label
			{ bind = "player_resource", ui = "grpRelic", text_widget = "txtOrks", icon_widget ="iconRelic", tt = tooltip_simple_template, tt_title = "$18210371", tt_desc = "$18210372"},

			-- support cap icon and label
			{ bind = "image", ui = "iconCapVehicles", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 
			{bind = "player_population", pop_type = "support", ui = "txtVehicleCap", tt = tooltip_simple_template, tt_title = "$551008", tt_desc = "$551009" }, 

			-- power
			{ bind = "player_resource", ui = "grpPower", text_widget = "txtPower", icon_widget ="iconPower", tt = tooltip_simple_template, tt_title = "$40750", tt_desc = "$40751"},
		},
   	
	----------------------------------------------------------------------------------------
	-- strategic ui
	----------------------------------------------------------------------------------------
	-- these have special tooltips that display the requirements
	{ bind = "player_strategic_points", strat_ebp = "strategic_point_flag", 		tt = tooltip_simple_template, tt_title = "$40770", tt_desc ="$40771", 	show_required_to_win = false, ui = "statsPoints", 		always_visible = false, 	timer_ui="txtPointsTime",		display_as_percentage = true,	show_team_count = true,	dependant = { { bind = "image", ui = "grpPoints" }, }, 			},
	{ bind = "player_strategic_points", strat_ebp = "strategic_objective_struct", 	tt = tooltip_simple_template, tt_title = "$40772", tt_desc ="$40773", 	show_required_to_win = false, ui = "statsObjectives",  always_visible = false, 	timer_ui="txtObjectivesTime",	display_as_percentage = true, 	show_team_count = true,	dependant = { { bind = "image", ui = "grpObjectives" }, }, 	},
	{ bind = "player_strategic_points", strat_ebp = "relic_struct", 				tt = tooltip_simple_template, tt_title = "$40774", tt_desc ="$40775", 	show_required_to_win = false, ui = "statRelics", 			always_visible = true, 													display_as_percentage = true, 	show_team_count = false,	dependant = { { bind = "image", ui = "grpRelics" }, }, 			},
	
	{ bind = "image", ui = "iconPoints",     tt = tooltip_simple_template, tt_title = "$40770", tt_desc ="$40771" }, 
	{ bind = "image", ui = "iconObjectives", tt = tooltip_simple_template, tt_title = "$40772", tt_desc ="$40773" }, 
	{ bind = "image", ui = "iconRelics",     tt = tooltip_simple_template, tt_title = "$40774", tt_desc ="$40775" }, 
}
}
-- dialogs buttons
dialogs = 
{
    { bind = "dlg_system", 			ui = "btnMENU", 	hk = "systemmenu", 		tt = tooltip_simple_template, tt_title = "$40800", tt_desc = "$40801" },
    { bind = "dlg_objectives", 		ui = "btnOBJ", 		hk = "objectivesmenu",  	tt = tooltip_simple_template, tt_title = "$40802", tt_desc = "$40803" },    
    { bind = "dlg_allies", 				ui = "btnDIP", 		hk = "alliesmenu" , 			tt = tooltip_simple_template, tt_title = "$40804", tt_desc = "$40805" },    
	{ bind = "dlg_chat",  				ui = "btnCHAT", 	hk = "chatmenu", 			tt = tooltip_simple_template, tt_title = "$40806", tt_desc = "$40807",  },
	{ bind = "dlg_chat_history",  	ui = "btnChatHistory", hk = "chathistory", 	tt = tooltip_simple_template, tt_title = "$40808", tt_desc = "$40809",  },
}

misc_static_buttons =
{
	-- next builder
	{ bind = "focus_on_next", hk = "builder_cycle", focus_type = "builder", ui="btnNextBuilder", tt = tooltip_simple_template, tt_title = "$41000", tt_desc = "$41001" },
	
	-- next military
	{ bind = "focus_on_next", hk = "military_cycle", focus_type = "military", ui="btnNextMilitary", tt = tooltip_simple_template, tt_title = "$41002", tt_desc = "$41003" },
	
	-- next research
	{ bind = "focus_on_next", hk = "research_cycle", focus_type = "research", ui="btnNextResearch", tt = tooltip_simple_template, tt_title = "$41004", tt_desc = "$41005" },
	
	-- show/hide taskbar (race specific)
	{ bind = "toggle_taskbar", hk = "toggle_taskbar", ui = "btnHideTaskbar",   darkEldar = "false", taskbar_ui = "grpTaskbar", helptext_ui = "grpAllHelpText", simvis_ui = "ctmSimVis", tt = tooltip_simple_template, tt_title = "$41160", tt_desc = "$41161", hide_y = 0.920, texture = "btn_minimizetaskbar" },
	{ bind = "toggle_taskbar", hk = "toggle_taskbar", ui = "btnHideTaskbarDE", darkEldar = "true",  taskbar_ui = "grpTaskbar", helptext_ui = "grpAllHelpText", simvis_ui = "ctmSimVis", tt = tooltip_simple_template, tt_title = "$41160", tt_desc = "$41161", hide_y = 0.920, texture = "btn_minimizetaskbar" },

	
	-- player name / team name
	{ bind = "player_team", ui = "txtPlayerName", is_player_name = true, tt = tooltip_simple_template, tt_title = "$40981", tt_desc = "$40982", },
	{ bind = "player_team", ui = "txtForceName", is_player_name = false, tt = tooltip_simple_template, tt_title = "$40983", tt_desc = "$40984" , },
	
	-- toggle all overwatch button
	{ bind = "toggle_overwatch", ui = "btnOverwatchPause", hk = "toggle_overwatch", tt = tooltip_simple_template, tt_title = "$41150", tt_desc = "$41151" },

	-- toggle all overwatch button
	{ bind = "cancel_overwatch", ui = "btnOverwatchStop", hk = "cancel_overwatch", tt = tooltip_simple_template, tt_title = "$41152", tt_desc = "$41153" },
	
	-- background production area
	{ bind = "image", ui = "grpBuildQueue", tt = tooltip_simple_template, tt_title = "$41180", tt_desc = "$41181" },

	-- background reinforcement area
	{ bind = "image", ui = "grpUpgrades", tt = tooltip_simple_template, tt_title = "$41182", tt_desc = "$41183" },	
}

-- background
background = 
{
	-- race skins
	{ bind = "race_image", ui = "artTaskbar", texture = "taskbar" },
	{ bind = "race_image", ui = "artOverlay", texture = "taskbar_minimap" },
	{ bind = "race_image", ui = "artMenubar", texture = "taskbar_menu" },
    { bind = "race_image", ui = "Extrabar",   texture = "extrabar"},

}

-- bindings for critical warning / instruction messages
ui_warnings =
{
	{bind = "ui_warning", ui = "txtCriticalWarning"},
}

-- bindings for win/lose warnings
win_warnings =
{
    { bind = "list", uilist = list_win_warnings ,
        content = 
        {
			-- fill the list with all displayed win warnings
            { bind = "win_warnings_repeat",
				content = 
				{
					{ bind = "win_warning_title" },
				},
			},
		},
	},
}

-- bindings for event cue
event_cue = 
{
    { bind = "list", uilist = list_event_cue ,
        content = 
        {
			-- 
            { bind = "event_cue_repeat",
				content = 
				{
					{ bind = "event_cue_item", tt = tooltip_event_cue },
				},
			},
		},
	},
}

-- in-game chat
chat = 
{
    { bind = "chat", ui = "lstBoxChat", ui_history = "lstBoxChat_history", ui_history_grp = "grpChatHistory" },
}

-- these are static bindings for hotkey commands that do not have UI associated with them (ie Center on HQ)
static_hotkey_bindings =
{
	-- ui attribute must be unique but doesnt have to exist (this is so hotkeys can use the recycle bin)
	
	-- bindings will not load without a ui field, so we'll give it a blank one
	{ bind = "focus_on_next", hk = "hq_cycle", focus_type = "hq", ui="shk_0", optionalUI=true,  },
	
	-- Set Stance
	{ bind = "set_stance", hk = "stance_hold",					optionalUI=true, ui="shk_1", 	stance ="hold" },
	{ bind = "set_stance", hk = "stance_stand_ground", 			optionalUI=true, ui="shk_2",	stance ="stand_ground" },
	{ bind = "set_stance", hk = "stance_burn", 					optionalUI=true, ui="shk_3",	stance ="burn" },
	{ bind = "set_stance", hk = "stance_cease_fire", 			optionalUI=true, ui="shk_4", 	stance ="cease_fire" },
	{ bind = "set_stance", hk = "stance_attack", 				optionalUI=true, ui="shk_5",	stance ="attack" },
	
	-- Set Melee Stance
	{ bind = "set_melee_stance", hk = "melee_stance_assault", 	optionalUI=true,ui="shk_6", 	stance ="assault" },
	{ bind = "set_melee_stance", hk = "melee_stance_ranged", 	optionalUI=true,ui="shk_7", 	stance ="ranged" },
	
	-- Cycle primary selection
	{ bind = "cycle_primary_squad", hk = "next_primary_selection", cycle = "next", optionalUI = true, ui = "shk_9" },
	{ bind = "cycle_primary_squad", hk = "prev_primary_selection", cycle = "prev", optionalUI = true, ui = "shk_10" },
	
	-- Scuttle
	{ bind = "command_scuttle", hk = "scuttle", optionalUI = true, ui = "shk_11",  },
	
	-- Next event cue item
	{ bind = "cycle_event_cue", hk = "cycle_event_cue", optionalUI = true, ui = "shk_12",  },

	-- Focus on selected entity
	{ bind = "selectionfocus", hk = "selectionfocus", ui="shk_14", },
}

-- bindings for observer mode or playback
simulation_controls =
{
	-- background
	{ bind = "image", ui = "grpPlayback" },
	
	{ bind = "playback_switch_player", 	ui = "btnPlaybackPlayer", 	tt = tooltip_simple_template, tt_title = "$60611", tt_desc = "$60612" },
	
	{ bind = "playback_toggle_fow", 	
		ui = "btnPlaybackFOW", 		
		tt = tooltip_simple_template, tt_title = "$60613", tt_desc = "$60614",
		texture_on = "data:art/ui/textures/taskbar/playback/btn_fow_on", 
		texture_off = "data:art/ui/textures/taskbar/playback/btn_fow_off" },
}

-- selector for active player, observer or playback
controlplayer = 
{
	{ bind = "selector_playback",
		
		active = 
		{
		},
		
		observer = uses( simulation_controls )
		{
		},

		-- playback is same as observer, but with pause/resume and speed control
		playback = uses( simulation_controls )
		{
			-- controls
			{ bind = "playback_resume", 				ui = "btnPlaybackPlay", 		tt = tooltip_simple_template, tt_title = "$60601", tt_desc = "$60602" },
			{ bind = "playback_pause", 				ui = "btnPlaybackPause", 	tt = tooltip_simple_template, tt_title = "$60603", tt_desc = "$60604" },
				
			{ bind = "playback_change_speed", 	
				ui = "btnPlaybackFast", 		
				tt = tooltip_simple_template, tt_title = "$60605", tt_desc = "$60606", 
				texture_slow = "data:art/ui/textures/taskbar/playback/btn_slowspeed",
				texture_normal = "data:art/ui/textures/taskbar/playback/btn_normalspeed",
				texture_fast = "data:art/ui/textures/taskbar/playback/btn_highspeed", },
			
			-- feedback
			{ bind = "playback_time", 		ui = "txtPlaybackTime", 		progress_ui = false, 	tt = tooltip_simple_template, tt_title = "$60607", tt_desc = "$60608" },
			{ bind = "playback_time",		ui = "progressPlayback", 	progress_ui = true, 	tt = tooltip_simple_template, tt_title = "$60609", tt_desc = "$60610" },
		},
	},
}

minimap =
{
	{ bind = "minimap", ui = "ctmMinimap", tt = tooltip_minimap },
}

hero_ui = 
{
	{ bind = "list", uilist = list_hero_select_groups,
		content =
		{
			{
				bind = "hero_select_repeat",
				content =
				{
					{ bind = "hero_select_group", tt = tooltip_hero,},
			    },
			},
		},
	},
}

scar_ui =
{
	{ bind = "scar_button", ui = "btn_ScarUI", tt = tooltip_simple_template, },
}

intel_event =
{
	{ bind = "intel_event", ui = "grpIntelEvent", texture = "taskbar_intelevent" }
}

-- static bindings
static = uses(minimap, hero_ui, scar_ui, intel_event, resources, dialogs, background, misc_static_buttons, ui_warnings, win_warnings, event_cue, static_hotkey_bindings, controlplayer, chat)
{
}

----------------------------------------------------------------------------------------

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
-- simple cancel menu for abilities bar speels commands
submenu_modal_abilities = uses(static)
{
    -- cancel
    { bind = "cancel_menu_button", ui = list_commands[32], hk = "escape", texture =  "command_icons/Back", tt = tooltip_simple_template, tt_title = "$40850", tt_desc = "$40851"  },
}

-- simple cancel menu for modal commands
submenu_modal = uses(static)
{
    -- cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/Back", tt = tooltip_simple_template, tt_title = "$40850", tt_desc = "$40851"  },
}

SoulAbilities = 
{
	-- soulability1
	{ bind = "soul_ability_1", hk = "rampage", texture =  "Dark_Eldar_Icons/screams_of_the_damned_icon", ui = "btnSoulAbility01", progress_recharge = "SoulProgress01", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_2", hk = "rampage", texture =  "Dark_Eldar_Icons/speed_frenzy_icon", ui = "btnSoulAbility02", progress_recharge = "SoulProgress02", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_3", hk = "rampage", texture =  "Dark_Eldar_Icons/war_frenzy_icon", ui = "btnSoulAbility03", progress_recharge = "SoulProgress03", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_4", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility04", progress_recharge = "SoulProgress04", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_5", hk = "rampage", texture =  "Dark_Eldar_Icons/annihilation beam_icon", ui = "btnSoulAbility06", progress_recharge = "SoulProgress06", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_6", hk = "rampage", texture =  "Dark_Eldar_Icons/Soulstorm_icon", ui = "btnSoulAbility05", progress_recharge = "SoulProgress05", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },

	-- New and created by Cylarne_04 (Not possible. This is hard coded by the game engine. The game engine deserves a middle finger.)
	--[[{ bind = "soul_ability_2", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility07", progress_recharge = "SoulProgress07", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_4", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility08", progress_recharge = "SoulProgress08", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_1", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility09", progress_recharge = "SoulProgress09", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_10", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility10", progress_recharge = "SoulProgress10", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_11", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility11", progress_recharge = "SoulProgress11", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "soul_ability_12", hk = "rampage", texture =  "Dark_Eldar_Icons/rekindle_rage_icon", ui = "btnSoulAbility12", progress_recharge = "SoulProgress12", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },]]
}


-- build basic structures sub-menu
submenu_structures = uses(static, SoulAbilities)
{
	-- background
	{ bind = "image", ui = "grpPrimaryInfo"},
	{ bind = "image", ui = "grpSingleSquadSelection"},	
	{ bind = "image", ui = "grpExtramenu"},
	{ bind = "image", ui = "grpStats" },
	
    -- cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/Back", tt = tooltip_simple_template, tt_title = "$40850", tt_desc = "$40851" },

    -- basic buildings
    { bind = "list", uilist = list_builder_construction, 
        content = 
        {
			-- fill the list with all basic structures that the squad can build
            { bind = "build_structures_repeat", basic = UPVALUES[1],
				content = 
				{
					{ bind = "build_structure", tt = tooltip_structure, submenu = submenu_modal },
				},
			},
		},
	},
}

submenu_structures_basic = copy(submenu_structures, { true })
{
}

submenu_structures_advanced = copy(submenu_structures, { false })
{
}


submenu_scuttle = uses(static)
{
	-- ok
    { bind = "command_scuttle", ui = list_commands[11],  texture =  "command_icons/ok", tt = tooltip_simple_template, tt_title = "$40854", tt_desc = "$40855"  },
	
	-- cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/cancel", tt = tooltip_simple_template, tt_title = "$40852", tt_desc = "$40853"  },
}

submenu_cancel_production = uses(static, SoulAbilities)
{
	-- ok
    { bind = "command_cancel_production", ui = list_commands[23], texture =  "command_icons/ok", tt = tooltip_simple_template, tt_title = "$40854", tt_desc = "$40855"  },
	
	-- cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/cancel", tt = tooltip_simple_template, tt_title = "$40852", tt_desc = "$40853"  },
}

-- 
submenu_devunits = uses(static, SoulAbilities)
{
    -- basic buildings
    { bind = "list", uilist = list_production, 
        content = 
        {
			-- fill the list with all basic structures that the squad can build
            { bind = "scar_repeat", 
				content = 
				{
					{ bind = "scar_button", submenu = submenu_modal, tt = tooltip_simple_template },
				},
			},
		},
	},
}


production_info = uses(SoulAbilities)
{
	-- display the production queue
	{ bind = "production_queue_progress", ui = "buildProgress", display_type = "bar" },
	{ bind = "production_queue_progress", ui = "txtBuildPercent", display_type = "percent" },

	{ bind = "list", uilist = list_production_queue, 
        content = 
        {
            { bind = "production_queue_repeat", 
				content = 
				{
					{ bind = "production_queue_button", tt = tooltip_production },
				},
			},
		},
	},
}

reinforcement_info = uses(SoulAbilities)
{
	-- display the reinforcement queue
	{ bind = "reinforcement_queue_progress", ui = "buildProgress", display_type = "bar" },
	{ bind = "reinforcement_queue_progress", ui = "txtBuildPercent", display_type = "percent" },

	{ bind = "list", uilist = list_production_queue, 
        content = 
        {
            { bind = "reinforcement_queue_repeat", 
				content = 
				{
					{ bind = "reinforcement_queue_button", tt = tooltip_upgrade_squad },
				},
			},
		},
	},
}

-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new list


submenu_production_squad_from_squad = uses(static, production_info)
{
    -- cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/Back", tt = tooltip_simple_template, tt_title = "$40850", tt_desc = "$40851" },
	
	-- background
	{ bind = "image", ui = "grpPrimaryInfo"},
	{ bind = "image", ui = "grpSingleSquadSelection"},	
	{ bind = "image", ui = "grpExtramenu"},
	{ bind = "image", ui = "grpStats" },
	-- display the selection icon
	{ bind = "single_selection_icon", ui = "iconSingleSquadSelection", hk = "focus_primary_selection", tt = tooltip_simple_template, tt_title = "$40962", tt_desc = "$40963"},
	
	-- health and morale bars
	{ bind = "single_selection_health", ui = "txtHealthPrimary", tt = tooltip_simple_template, tt_title = "$40950", tt_desc = "$40951", display_type = "text" },
	{ bind = "single_selection_morale", ui = "txtMoralePrimary", tt = tooltip_simple_template, tt_title = "$40952", tt_desc = "$40953", display_type = "text" },
	
	-- deepstrike/droppod/summon/unload squad button
	{ bind = "list", uilist = list_hold_squads, 
		content = 
		{
			-- fill the list with all squads that are loaded
			{ bind = "holdsquad_repeat", 
				content = 
				{
					{ bind = "holdsquad_button", submenu =  submenu_modal, 
						tt_deepstrike = tooltip_lockedcmd_desc("$41170", "$41171", "deepstrike"), 
						tt_droppod 	= tooltip_lockedcmd_desc("$41172", "$41173", "deepstrike"), 
						tt_summon 	= tooltip_lockedcmd_desc("$41174", "$41175", "deepstrike"), 
						tt_unload = tooltip_desc("$41010", "$41011"), 
						},
				},
				
				dependant = { { bind = "image", ui = "grpSquadHold" }, },
			},
		},
	},
	
	-- squad hold slots status
	{ bind = "squad_hold_size_label", ui = "txtSquadHoldSlots" },

	-- squads
	{ bind = "list", uilist = list_extra_menu_production, 
		content = 
		{
			-- fill the list with all squads that this squad can generate
			{ bind = "production_repeat", type = "squad",
				content = 
				{
					{ bind = "production_button", tt = tooltip_production },
				},
			},
			-- To make unit addons to work. Hopefully.
			{ bind = "production_repeat", type = "addon",
                  content = 
                  {
                        { bind = "production_button", tt = tooltip_production },
                 },
            },
			-- fill the list with all research items that this building can generate
			{ bind = "production_repeat", type = "research",
				content = 
				{
					{ bind = "production_button", tt = tooltip_production },
				},
			},
		},
	},
}
-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --
--new group
submenu_production_squad_from_squad_research = uses(static, production_info)
{
	
    --[[ cancel
    { bind = "cancel_menu_button", ui = list_commands[24], hk = "escape", texture =  "command_icons/Back", tt = tooltip_simple_template, tt_title = "$40850", tt_desc = "$40851" },
	
	-- background
	{ bind = "image", ui = "grpPrimaryInfo"},
	{ bind = "image", ui = "grpSingleSquadSelection"},	
	{ bind = "image", ui = "grpExtramenu"},
	-- display the selection icon
	{ bind = "single_selection_icon", ui = "iconSingleSquadSelection", hk = "focus_primary_selection", tt = tooltip_simple_template, tt_title = "$40962", tt_desc = "$40963"},
	
	-- health and morale bars
	{ bind = "single_selection_health", ui = "txtHealthPrimary", tt = tooltip_simple_template, tt_title = "$40950", tt_desc = "$40951", display_type = "text" },
	{ bind = "single_selection_morale", ui = "txtMoralePrimary", tt = tooltip_simple_template, tt_title = "$40952", tt_desc = "$40953", display_type = "text" },
	
	-- deepstrike/droppod/summon/unload squad button
	{ bind = "list", uilist = list_hold_squads, 
		content = 
		{
			-- fill the list with all squads that are loaded
			{ bind = "holdsquad_repeat", 
				content = 
				{
					{ bind = "holdsquad_button", submenu =  submenu_modal, 
						tt_deepstrike = tooltip_lockedcmd_desc("$41170", "$41171", "deepstrike"), 
						tt_droppod 	= tooltip_lockedcmd_desc("$41172", "$41173", "deepstrike"), 
						tt_summon 	= tooltip_lockedcmd_desc("$41174", "$41175", "deepstrike"), 
						tt_unload = tooltip_desc("$41010", "$41011"), 
						},
				},
				
				dependant = { { bind = "image", ui = "grpSquadHold" }, },
			},
		},
	},
	
	-- squad hold slots status
	{ bind = "squad_hold_size_label", ui = "txtSquadHoldSlots" },]]

	
}
mult_selection_info = uses(SoulAbilities)
{
	-- background
	{ bind = "image", ui = "grpMultiSquadSelection" },
	
	-- next / prev buttons for mult selection (race specific)
	{ bind = "mult_select_scroll", ui = "btnPreviousMultiPage", forward = false, tunnel = false, texture = "btn_multipage_back", },
	{ bind = "mult_select_scroll", ui = "btnNextMultiPage", forward = true, tunnel = false, texture = "btn_multipage_next", 
		dependant = {
			{ bind = "image", ui = "grpMultipage" },
		},
	},

	-- 
	{ bind = "list", uilist = list_mult_select_groups,
		content =
		{
			{
				bind = "mult_select_repeat",
				content =
				{
					{ bind = "mult_select_group", tt = tooltip_desc("$41184", "$41185"), tt_primary = tooltip_desc("$41186", "$41187") },
				},
			},
		},
	},
}

primary_selection_info = uses(SoulAbilities)
{
	-- background
	{ bind = "image", ui = "grpPrimaryInfo"},
	{ bind = "image", ui = "grpSingleSquadSelection"},
	
	-- display the selection icon
	{ bind = "single_selection_icon", ui = "iconSingleSquadSelection", hk = "focus_primary_selection", tt = tooltip_simple_template, tt_title = "$40962", tt_desc = "$40963"},
	
	-- health and morale bars
	--{ bind = "single_selection_health", ui = "healthSingleSquad", tt = tooltip_simple_template, tt_title = "$40950", tt_desc = "$40951" },
	--{ bind = "single_selection_morale", ui = "moraleSingleSquad", tt = tooltip_simple_template, tt_title = "$40952", tt_desc = "$40953" },
	{ bind = "single_selection_health", ui = "txtHealthPrimary", tt = tooltip_simple_template, tt_title = "$40950", tt_desc = "$40951", display_type = "text" },
	{ bind = "single_selection_morale", ui = "txtMoralePrimary", tt = tooltip_simple_template, tt_title = "$40952", tt_desc = "$40953", display_type = "text" },
	{ bind = "single_selection_lifetime", ui = "lifetimeSingleSquad", tt = tooltip_simple_template, tt_title = "$40952", tt_desc = "$40953" },
	
	-- squad bonuses group
	{ 
		bind = "single_selection_bonus_group", 
		ui = "grpSingleBonuses", 
		bonus_names = "bPS%02d", 
		
		-- tooltips
		dependant = {
			{ bind = "image", ui = "grpSingleBonusesAttackHG", tt = tooltip_simple_template, tt_title = "$41140", tt_desc = "$41141" },
			{ bind = "image", ui = "grpSingleBonusesDefenseHG", tt = tooltip_simple_template, tt_title = "$41142", tt_desc = "$41143" },
		},
	}
}

single_selection_info = uses(SoulAbilities)
{
	-- background
	{ bind = "image", ui = "grpStats" },
	
	-- name of selected item - this is combined with the unit type
	{ bind = "single_selection_name_label", ui = "txtSquadName", tt = tooltip_simple_template, tt_title = "$40964", tt_desc = "$40965" },
	
	-- player owner name for selected item	
	{
		bind = "single_selection_player_owner_label", 
		ui = "txtSelectedPlayerName", 
		text_color = {255,177,29,192}, 			-- player selects own unit
		enemy_text_color = {255,0,0,255}, 	-- player selects an enemy unit
		ally_text_color = {0,27,255,255} ,		-- player selects an allied unit
		tt = tooltip_simple_template, tt_title = "$40954", tt_desc = "$40955"
	},	
	
	-- selection armor
	{ bind = "single_selection_unit_type_label", ui = "statsHeavyInfantryArmor",
		dependant = {
			{ bind = "image", ui = "grpStatsArmour", tt = tooltip_simple_template, tt_title = "$40958", tt_desc = "$40959" },
		},
	},
	
	-- ranged/melee stats ( tooltips should be on the groups [ make seperate bindings for the groups ] )	
	{ bind = "single_selection_damage", ui = "statsMeleeDamage",  ranged_ui = "statsSquadRangedDamage", 
		dependant = {
			{ bind = "image", ui = "grpStatsRanged", tt = tooltip_simple_template, tt_title = "$40966", tt_desc = "$40967", },
			{ bind = "image", ui = "grpStatsMelee", tt = tooltip_simple_template, tt_title = "$40968", tt_desc = "$40969", }	,	
		},
	},
		
	-- effective against / counter with...
	{ bind = "single_selection_counter_text", ui = "listCounter", tt = tooltip_simple_template, tt_title = "$40970", tt_desc = "$40971",
		dependant = {
			{ bind = "image", ui = "grpStatsEffective", tt = tooltip_simple_template, tt_title = "$40970", tt_desc = "$40971", },
		},
	},
	
	-- resources generated (for buildings)
	{ bind = "single_selection_resources", ui = "grpStatsResources", req_ui = "txtStatsReq", power_ui = "txtStatsPower", pop_ui = "txtStatsPop", bonus_ui = "txtStatsBonus", tt = tooltip_simple_template, tt_title = "$40972", tt_desc = "$40973"  },
	
	-- squad/weapon max & current size
	{ bind = "single_selection_size", ui = "statsSquadSize",  weapon_ui = "statsUpgrades", 
		dependant = {
			{ bind = "image", ui = "grpStatsSquadSize", tt = tooltip_simple_template, tt_title = "$40976", tt_desc = "$40977", },
			{ bind = "image", ui = "grpStatsWeaponUpgrades", tt = tooltip_simple_template, tt_title = "$40978", tt_desc = "$40979", },	
		},
	},
	
}

-- production items(squads, research, addons, ...) and entity commands
entity_commands = uses(SoulAbilities)
{
	-- attack
	{ bind = "entity_attack_ranged_modal", hk = "attack", texture =  "command_icons/attackg", ui = commandsmall_buttons.building_attack, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40944", tt_desc = "$40949" },

	-- relocate button
	{ bind = "relocate_structure", ui = commandsmall_buttons.relocate, ui_progress = "ProgressUpgrade01", hk = "relocate", texture =  "eldar_icons/relocate_icon", submenu =  submenu_modal, tt = tooltip_lockedcmd_desc("$551002", "$551003", "relocate") },

	-- rally button
	{ bind = "rally_modal", ui = commandsmall_buttons.rally_modal, hk = "rally", texture =  "command_icons/rallypoint", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40875", tt_desc = "$40876" },
	
	-- building stances
	{ bind = "command_stance", hk = "combatstance", ui = commandsmall_buttons.building_stance, isCombatStance = 1,
		tt_1 = tooltip_desc("$41086","$41087"),	-- hold tooltip
		tt_2 = tooltip_desc("$41088","$41089"),	-- stand ground tooltip
		tt_3 = tooltip_desc("$41082","$41083"),	-- burn tooltip
		tt_4 = tooltip_desc("$41084","$41085"),	-- ceasefire tooltip
		tt_5 = tooltip_desc("$41080","$41081"),	-- attack tooltip
	},		

	-- deepstrike/droppod/summon button
	{ bind = "deepstrike_modal", ui = commandsmall_buttons.deepstrike_modal, hk = "deepstrike", submenu =  submenu_modal, 
								tt_deepstrike = tooltip_lockedcmd_desc("$40890", "$40891", "deepstrike"), 
		tt_droppod    = tooltip_lockedcmd_desc("$40892", "$40893", "deepstrike"),
		tt_summon     = tooltip_lockedcmd_desc("$40894", "$40895", "deepstrike") },


	-- deepstrike/droppod/summon/unload squad button
	{ bind = "list", uilist = list_hold_squads, 
		content = 
		{
			-- fill the list with all squads that are loaded
			{ bind = "holdsquad_repeat", 
				content = 
				{
					{ bind = "holdsquad_button", submenu =  submenu_modal, 
						tt_deepstrike = tooltip_lockedcmd_desc("$41170", "$41171", "deepstrike"), 
						tt_droppod 	= tooltip_lockedcmd_desc("$41172", "$41173", "deepstrike"), 
						tt_summon 	= tooltip_lockedcmd_desc("$41174", "$41175", "deepstrike"), 
						-- NOTE: need different help text for IG tunnels
						tt_unload = tooltip_desc("$551004", "$551005") 
					},
				},
				
				dependant = 
				{ 
					{ bind = "image", ui = "grpSquadHold" }, 
					-- next / prev buttons for mult selection (race specific)
					{ bind = "mult_select_scroll", ui = "btnPreviousMultiPage", forward = false, tunnel = true, tunnel = true, texture = "btn_multipage_back", },
					{ bind = "mult_select_scroll", ui = "btnNextMultiPage", forward = true, tunnel = true, texture = "btn_multipage_next", 
						dependant = {
							{ bind = "image", ui = "grpMultipage" },
						},
					},
				}
			},
		},
	},
			
	-- squad hold slots status
	{ bind = "squad_hold_size_label", ui = "txtSquadHoldSlots" },
	
	{ bind = "list", uilist = list_completed_addons, 
		content = 
		{
			-- fill the list with all squads that are loaded
			{ bind = "completed_addons_repeat", 
				content = 
				{
					{ bind = "completed_addon_button", },
				},
				dependant = { 
					{ bind = "image", ui = "grpAddOns" }, 
					{ bind = "image", ui = "txtAddOns", tt = tooltip_simple_template, tt_title = "$41188", tt_desc = "$41189"  }, 
				},
			},
		},
	},


	-- unload button
	{ bind = "unload_here", ui = commandsmall_buttons.unload_building, hk = "unload", texture =  "command_icons/unload_here", tt = tooltip_simple_template, tt_title = "$40880", tt_desc = "$40881" },
	
	-- self-destroy
	{ bind = "scuttle_menu", ui = commandsmall_buttons.scuttle, hk = "scuttle", texture = "command_icons/scuttle", submenu =  submenu_scuttle, tt = tooltip_simple_template, tt_title = "$40920", tt_desc = "$40921", },
	
	-- cancel construction progress
	{ bind = "cancel_construction_menu", ui = commandsmall_buttons.cancel_construction, hk = "cancelconstruction", texture = "command_icons/cancel_construction", submenu =  submenu_cancel_production, tt = tooltip_simple_template, tt_title = "$40934", tt_desc = "$40934", },	
	
	-- 	
	{ bind = "list", uilist = list_production, 
		content = 
		{
			-- fill the list with all squads that this building can generate
				-- EXAMPLE: binding a repeating list (this will reapply the content bindings for all matching items)
			{ bind = "production_repeat", type = "squad",
				content = 
				{
					{ bind = "production_button", tt = tooltip_production },
				},
			},

			-- fill the list with all addons that this building can generate
			{ bind = "production_repeat", type = "addon",
				content = 
				{
					{ bind = "production_button", tt = tooltip_production },
				},
			},

			-- fill the list with all research items that this building can generate
			{ bind = "production_repeat", type = "research",
				content = 
				{
					{ bind = "production_button", tt = tooltip_production },
				},
			},
		},

	},

		-- all abilities list_abilities
	{ bind = "list", uilist = list_abilities_production,
		content = 
		{
			-- fill the list with all basic abilities that the squad can use
			{ bind = "abilities_repeat",
				content = 
				{
					{ bind = "cast_ability", tt = tooltip_ability, submenu = submenu_modal, progress_ui = false,
						exclusive = {
							{ bind = "scar_button", submenu = submenu_modal, tt = tooltip_simple_template },
								
						},
					},
				},
			},
		},
	},    
	
		-- ability recharge progress
	{ bind = "list", uilist = list_abilities_production_progress, 
		content = 
		{
			-- fill the list with all basic abilities that the squad can use
			{ bind = "abilities_repeat",
				content = 
				{
					{ bind = "cast_ability", progress_ui = true },
				},
			},
		},
	},
}	

-- squad commands (attack / move / stance etc)
commands = uses(SoulAbilities)
{	
	-- move
	{ bind = "move_modal", hk = "move", texture =  "command_icons/move", ui = commandsmall_buttons.move, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40922", tt_desc = "$40923" },
	-- attack move
	{ bind = "attackmove_modal", hk = "attackmove", texture =  "command_icons/attackm", ui = commandsmall_buttons.attack_move, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40900", tt_desc = "$40901" },
	-- attack melee
	{ bind = "attackmelee_modal", hk = "attackmelee", texture =  "command_icons/melee", ui = commandsmall_buttons.attack_melee, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40912", tt_desc = "$40913" },
	-- stop
	{ bind = "command_stop", hk = "stop", texture =  "command_icons/stop", ui = commandsmall_buttons.stop, tt = tooltip_simple_template, tt_title = "$40906", tt_desc = "$40907" },
	-- attack ground
	{ bind = "attackground_modal", hk = "attackground", texture =  "command_icons/attackg", ui = commandsmall_buttons.attack_ground, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40902", tt_desc = "$40903" },
	-- jump 
	{ bind = "jump_modal", hk = "jump", texture =  "command_icons/jumping", ui = commandsmall_buttons.jump, progress_recharge = "ProgressIcon12", progress_charge_per_jump = "ProgressIcon12_CHARGE", submenu =  submenu_modal, tt_1 = tooltip_lockedcmd_desc("$40916", "$40917", "jump"), tt_2 = tooltip_lockedcmd_desc("$40914", "$40915", "jump"), tt_3 = tooltip_lockedcmd_desc("$551320", "$551321", "jump"), tt_4 = tooltip_lockedcmd_desc("$551317", "$551318", "jump"), tt_5 = tooltip_lockedcmd_desc("$551317", "$551319", "jump") },
	-- rampage
	{ bind = "rampage_modal", hk = "rampage", texture =  "command_icons/rampage", ui = commandsmall_buttons.rampage, progress_recharge = "ProgressIcon12", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40938", tt_desc = "$40939" },

	-- For the Guard marauder
	-- bombing run 1
	{ bind = "bombing_run1_modal", hk = "guard_incendiary_bombs", texture =  "guard_icons/incendiary_bombs_icon", ui = "CommandIcon26", progress_recharge = "ProgressIcon26", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$4500021", tt_desc = "$4500022" },
	-- bombing run 2
	{ bind = "bombing_run2_modal", hk = "guard_krak_bombs", texture =  "guard_icons/krak_bombs_icon", ui = "CommandIcon27", progress_recharge = "ProgressIcon27", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$4500038", tt_desc = "$4500039" },
	-- bombing run 3
	{ bind = "bombing_run3_modal", hk = "guard_smoke_bombs", texture =  "guard_icons/smoke_bombs_icon", ui = "CommandIcon28", progress_recharge = "ProgressIcon28", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$4500030", tt_desc = "$4500031" },

	--{ bind = "emperors_touch", hk = "sisters_emperors_touch", texture =  "", ui = "CommandIcon12", progress_recharge = "ProgressIcon12", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "ascension",      hk = "sisters_ascension", texture =  "", ui = "CommandIcon31", progress_recharge = "ProgressIcon31", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },
	{ bind = "holy_passion",   hk = "sisters_holy_passion", texture =  "", ui = "CommandIcon11", progress_recharge = "ProgressIcon05", submenu =  submenu_modal, tt = tooltip_ability, tt_title = "$40938", tt_desc = "$40939" },

	-- possess
	--{ bind = "command_possess", hk = "possess", texture =  "command_icons/possess", ui = commandsmall_buttons.possess, tt = tooltip_simple_template, tt_title = "$40936", tt_desc = "$40937" },		
	--{ bind = "command_nightbringer", hk = "possess", texture = "command_icons/nightbringer", ui = commandsmall_buttons.possess, tt = tooltip_simple_template, tt_title = "$551322", tt_desc = "$551323" },
	{ bind = "command_possess", progress_ui = false, ui = commandsmall_buttons.possess, tt = tooltip_simple_template, },		
	{ bind = "command_possess", progress_ui = true, ui = "ProgressIcon05", tt = tooltip_simple_template, },		
	
	-- Necron Lord transforms
	{ bind = "command_possess2", progress_ui = false, ui = "CommandIcon31", progress_bar = "ProgressIcon31", texture =  "command_icons/nightbringer", tt = tooltip_simple_template, tt_title = "$551322", tt_desc = "$551323" },		
	{ bind = "command_possess3", progress_ui = false, ui = "CommandIcon32", progress_bar = "ProgressIcon32", texture =  "command_icons/deceiver", tt = tooltip_simple_template, tt_title = "$4450029", tt_desc = "$4450030" },		
	
	--something in the SoB area
	{ bind = "command_worship", progress_ui = false, ui = commandsmall_buttons.worship, tt = tooltip_worship_template, },		
	{ bind = "command_worship", progress_ui = true, ui = "ProgressIcon05", tt = tooltip_worship_template, },		

	--DE's Dias ability
	{ bind = "command_darklance", progress_ui = false, ui = commandsmall_buttons.darklance, tt = tooltip_worship_template, },		
	{ bind = "command_darklance", progress_ui = true, ui = "ProgressIcon05", tt = tooltip_worship_template, },		
	
	{ bind = "deploy_weapon", hk = "deploy_weapon", texture = "command_icons/deploy_weapon", ui = commandsmall_buttons.deploy, progress_bar = "ProgressIcon05", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40945", tt_desc = "$40946" },
	{ bind = "undeploy_weapon", hk = "undeploy_weapon", texture = "command_icons/undeploy_weapon", ui = commandsmall_buttons.undeploy, progress_bar = "ProgressIcon05", tt = tooltip_simple_template, tt_title = "$40947", tt_desc = "$40948" },

	{ bind = "command_cannibalize", hk = "cannibalism", texture = "command_icons/cannibalize", ui = commandsmall_buttons.cannibalize, tt = tooltip_simple_template, tt_title = "$41012", tt_desc = "$41013" },
	
	-- stances (combat)
	{ bind = "command_stance", hk = "combatstance", ui = commandsmall_buttons.combat_stance, isCombatStance = 1,
		tt_1 = tooltip_desc("$41106","$41107"),	-- hold tooltip
		tt_2 = tooltip_desc("$41108","$41109"),	-- stand ground tooltip
		tt_3 = tooltip_desc("$41102","$41103"),	-- burn tooltip
		tt_4 = tooltip_desc("$41104","$41105"),	-- ceasefire tooltip
		tt_5 = tooltip_desc("$41100","$41101"),	-- attack tooltip
		tt_6 = tooltip_desc("$41110","$41111"),	-- versatile tooltip
	},
	
	-- stances (melee)
	{ bind = "command_stance", hk = "meleestance", ui = commandsmall_buttons.melee_stance, isCombatStance = 0, 
		tt_1 = tooltip_desc("$41120","$41121"),	-- assault tooltip
		tt_2 = tooltip_desc("$41122","$41123"),	-- ranged tooltip
		tt_3 = tooltip_desc("$41124","$41125"),	-- versatile tooltip
	},
	
	-- build
	-- build menus
				-- EXAMPLE: binding to a sub-menu (henchmen)
	{ bind = "build_structures_menu", hk = "build", ui = commandsmall_buttons.build_basic, texture =  "command_icons/build_structure", submenu =  submenu_structures_basic, tt = tooltip_simple_template, tt_title = "$40908", tt_desc = "$40909" },
	--{ bind = "build_structures_menu", hk = "build", ui = commandsmall_buttons.build_basic, texture =  "command_icons/build_structure", submenu =  submenu_production_squad_from_squad, tt = tooltip_simple_template, tt_title = "$40908", tt_desc = "$40909" },
	{ bind = "selector_player_race",
		--[[tau = {
		{bind = "build_structures_menu", hk = "buildadv", ui = commandsmall_buttons.build_adv, texture = "command_icons/build_structure_advanced", submenu = submenu_structures_advanced, tt = tooltip_desc("$40910", "$40911") },
		},]]
		other = {
		--{bind = "build_structures_menu", hk = "buildadv", ui = commandsmall_buttons.build_adv, texture = "command_icons/build_structure_advanced", submenu = submenu_structures_advanced, tt = tooltip_desc("$40910", "$40911") },
		},
	},
	
    -- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --

	-- Squad production menu--squad
	{ bind = "production_squad_from_squad_menu", ui = commandsmall_buttons.leaders_menu01, texture =  "command_icons/leaders_menu01", submenu =  submenu_production_squad_from_squad, tt = tooltip_simple_template, tt_title = "$551200", tt_desc = "$551201" },	
	-- Squad production menu--research	
   -- { bind = "production_squad_from_squad_menu", ui = commandsmall_buttons.leaders_menu02, texture =  "command_icons/leaders_menu02", submenu = submenu_production_squad_from_squad_research, tt = tooltip_simple_template, tt_title = "$551200", tt_desc = "$551201" },	

	

	-- deepstrike/droppod/summon button
	{ bind = "deepstrike_modal", ui = commandsmall_buttons.deepstrike_modal, hk = "deepstrike", submenu =  submenu_modal, 
								tt_deepstrike = tooltip_lockedcmd_desc("$40890", "$40891", "deepstrike"), 
		tt_droppod    = tooltip_lockedcmd_desc("$40892", "$40893", "deepstrike"),
		tt_summon     = tooltip_lockedcmd_desc("$40894", "$40895", "deepstrike") },
	
	
	--
	{ bind = "deploy_weapon", hk = "deploy_weapon", texture = "command_icons/deploy_weapon", ui = commandsmall_buttons.deploy, progress_bar = "ProgressIcon05", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40945", tt_desc = "$40946" },
	
	{ bind = "harvest_button", ui = commandsmall_buttons.harvest, hk = "harvest", texture =  "necron_icons/necron_harvest_icon_on", tt = tooltip_simple_template, tt_title = "$38340", tt_desc = "$38340" },
	{ bind = "harvest_off_button", ui = commandsmall_buttons.harvest_off, hk = "harvest", texture =  "necron_icons/necron_harvest_icon_off", tt = tooltip_simple_template, tt_title = "$38340", tt_desc = "$38340" },
	{ bind = "harvest_spawn_button_a", ui = commandsmall_buttons.harvest_spawn_a, texture =  "necron_icons/necron_warrior_icon", progress_bar = "ProgressIcon09", tt = tooltip_simple_template, tt_title = "$38340", tt_desc = "$38340" },
	{ bind = "harvest_spawn_button_b", ui = commandsmall_buttons.harvest_spawn_b, texture =  "necron_icons/necron_flayed_one_icon", progress_bar = "ProgressIcon10", tt = tooltip_simple_template, tt_title = "$38340", tt_desc = "$38340" },
	{ bind = "harvest_spawn_button_c", ui = commandsmall_buttons.harvest_spawn_c, texture =  "necron_icons/necron_immortal_icon", progress_bar = "ProgressIcon11", tt = tooltip_simple_template, tt_title = "$38340", tt_desc = "$38340" },

	{ bind = "direct_spawn_button", ui = commandsmall_buttons.direct_spawn, progress_bar = "ProgressIcon05", hk = "direct_spawn", tt = tooltip_simple_template },
	{ bind = "direct_spawn_rally_button", ui = commandsmall_buttons.direct_spawn_rally, submenu =  submenu_modal, texture =  "command_icons/rallypoint", hk = "direct_spawn_rally", tt = tooltip_simple_template, tt_title = "$551440", tt_desc = "$551441" },
	
	{ bind = "worship_button", ui = commandsmall_buttons.worship, hk = "sisters_worship", texture =  "sisters_icons/ability_worship", submenu =  submenu_modal, tt = tooltip_worship_template, tt_title = "$4300093", tt_desc = "$4300094", tt_desc2 = "$4300095", tt_desc3 = "$4300096" },
	{ bind = "darklance_button", ui = commandsmall_buttons.darklance, hk = "dark_eldar_darklance_sweep", texture =  "dark_eldar_icons/dais_icon", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$4100015", tt_desc = "$4300094" },

	{ bind = "possess_enemy_button", ui = commandsmall_buttons.possess_enemy, hk = "possess_enemy", texture =  "necron_icons/necron_possess_enemy_icon", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$551380", tt_desc = "$551381" },
	{ bind = "deceive_button", ui = "CommandIcon26", progress_bar = "ProgressIcon26", hk = "necron_deceive", texture =  "necron_icons/necron_deceive_icon", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$4500014", tt_desc = "$4500015", },
	
	{ bind = "burrow_button", ui = commandsmall_buttons.burrow, progress_bar = "ProgressIcon05", hk = "burrow", tt = tooltip_simple_template },

	{ bind = "melee_dance_button", ui = commandsmall_buttons.melee_dance, progress_bar = "ProgressIcon05", hk = "melee_dance", tt = tooltip_simple_template },
	
	-- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --

	-- Completed research display.		
	{ bind = "completed_research_a", ui = "ResearchIcon_A", tt = tooltip_simple_template},
	{ bind = "completed_research_b", ui = "ResearchIcon_B", tt = tooltip_simple_template},
	{ bind = "completed_research_c", ui = "ResearchIcon_C", tt = tooltip_simple_template},
	{ bind = "completed_research_d", ui = "ResearchIcon_D", tt = tooltip_simple_template},
	{ bind = "completed_research_e", ui = "ResearchIcon_E", tt = tooltip_simple_template},
	{ bind = "completed_research_f", ui = "ResearchIcon_F", tt = tooltip_simple_template},
	{ bind = "completed_research_g", ui = "ResearchIcon_G", tt = tooltip_simple_template},
	{ bind = "completed_research_h", ui = "ResearchIcon_H", tt = tooltip_simple_template},

	-- repair

	{ bind = "repair_modal", hk = "repair", ui = commandsmall_buttons.repair, texture =  "command_icons/repair", submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40884", tt_desc = "$40885" },
	
	-- unload
	{ bind = "unload_modal", hk = "unload", texture = "command_icons/unloading", ui = commandsmall_buttons.unload, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40930", tt_desc = "$40931" },
	
	-- deepstrike/droppod/summon/unload squad button
	{ bind = "list", uilist = list_hold_squads, 
		content = 
		{
			-- fill the list with all squads that are loaded
			{ bind = "holdsquad_repeat", 
				content = 
				{
					{ bind = "holdsquad_button", submenu =  submenu_modal, 
						tt_deepstrike = tooltip_lockedcmd_desc("$41170", "$41171", "deepstrike"), 
						tt_droppod 	= tooltip_lockedcmd_desc("$41172", "$41173", "deepstrike"), 
						tt_summon 	= tooltip_lockedcmd_desc("$41174", "$41175", "deepstrike"), 
						tt_unload = tooltip_desc("$41010", "$41011"),
						},
				},
				
				dependant = { { bind = "image", ui = "grpSquadHold" }, },
			},
		},
	},
	
	-- squad hold slots status
	{ bind = "squad_hold_size_label", ui = "txtSquadHoldSlots" },
	
	-- ILE
	-- soul destruction
	{ bind = "extension_ability_soul_destruction", ui = "CommandIcon10", progress_recharge = "ProgressIcon10", hk = "dark_eldar_soul_destruction", tt = tooltip_simple_template,},

		-- all abilities list_abilities
	{ bind = "list", uilist = list_abilities,
		content = 
		{
			-- fill the list with all basic abilities that the squad can use
			{ bind = "abilities_repeat",
				content = 
				{
					{ bind = "cast_ability", progress_ui = false, tt = tooltip_ability,  submenu =  submenu_modal_abilities,
						exclusive = {
							{ bind = "scar_button", submenu = submenu_modal, tt = tooltip_simple_template },
						},
					},					
				},
			},
			-- fear			
			{ bind = "extension_ability_fear", progress_ui = false, hk = "necron_nightmare_shroud", tt = tooltip_simple_template, },
			-- cloning
			{ bind = "extension_ability_cloning", progress_ui = false, submenu = submenu_modal, texture = "tau_icons/tau_holographic_projection_icon", hk = "tau_holographic_projection", tt = tooltip_simple_template, tt_title = "$551395", tt_desc = "$551396", },			
			-- veil of darkness
			{ bind = "extension_ability_veil_of_darkness", progress_ui = false, texture = "necron_icons/necron_veil_of_darkness_icon", tt = tooltip_simple_template, tt_title_enabled = "$551400", tt_title_disabled = "$551401", tt_desc = "$551402", },
			-- entrench
			{ bind = "extension_ability_entrench", progress_ui = false, hk = "entrench", tt = tooltip_simple_template, tt_title_entrench = "$551405", tt_title_uproot = "$551406", tt_desc = "$551407", },
			-- stasis
			{ bind = "extension_ability_stasis", progress_ui = false, submenu = submenu_modal, texture = "necron_icons/necron_stasis_field_icon", hk = "necron_stasis_field", tt = tooltip_simple_template, tt_title = "$551410", tt_desc = "$551411", },
			-- lightning field
			{ bind = "lightning_field_button", progress_bar_fudge = false, hk = "lightning_field",  submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$551430", tt_desc = "$551431" },
			-- ILE
			-- miraculous intervention
			{ bind = "extension_ability_miraculous_intervention", ui = "CommandIcon10", progress_recharge = "ProgressIcon10", texture = "sisters_icons/ability_miraculous_intervention", tt = tooltip_simple_template, tt_title_enabled = "$4300106", tt_title_disabled = "$4300106", tt_desc = "$4300107", },
			-- grand illusion
			{ bind = "extension_ability_grand_illusion", progress_ui = false, submenu = submenu_modal, texture = "tau_icons/tau_holographic_projection_icon", hk = "necron_grand_illusion", tt = tooltip_simple_template, tt_title = "$4500017", tt_desc = "$4500018"  },
			-- misdirect
			{ bind = "extension_ability_misdirect", progress_ui = false, submenu = submenu_modal, texture = "necron_icons/necron_misdirect_icon", hk = "necron_misdirect", tt = tooltip_simple_template, tt_title = "$4500019", tt_desc = "$4500020" },
		},
	},
	
	--  all abilities progress
	{ bind = "list", uilist = list_abilities_progress, 
		content = 
		{
			-- fill the list with all basic abilities that the squad can use
			{ bind = "abilities_repeat",
				content = 
				{
					{ bind = "cast_ability", progress_ui = true },
				},
			},
			{ bind = "extension_ability_fear", progress_ui = true },
			{ bind = "extension_ability_cloning", progress_ui = true }, 
			{ bind = "extension_ability_veil_of_darkness", progress_ui = true },
			{ bind = "extension_ability_entrench", progress_ui = true },
			{ bind = "extension_ability_stasis", progress_ui = true },			
			{ bind = "lightning_field_button", progress_bar_fudge = true },
			-- ILE
			{ bind = "extension_ability_soul_destruction", progress_ui = true },
			{ bind = "extension_ability_grand_illusion", progress_ui = true }, 
			{ bind = "extension_ability_misdirect", progress_ui = true }, 
		},
	},


	-- unload all button
	{ bind = "unload_here", ui = commandsmall_buttons.unload_here, hk = "unload", texture =  "command_icons/unload_here", tt = tooltip_simple_template, tt_title = "$40880", tt_desc = "$40881" },
	
	-- self-destroy
	--{ bind = "scuttle_menu", ui = commandsmall_buttons.scuttle, hk = "scuttle", texture = "command_icons/scuttle", submenu =  submenu_scuttle, tt = tooltip_simple_template, tt_title = "$40920", tt_desc = "$40921" },
}

squad_commands = 
{
	{ bind = "selector_squad_type",	

		----------------------------------------------------------------------------------------
		-- special bindings for squad type
		----------------------------------------------------------------------------------------
		original = 
		{

			-- reinforce trooper
			{ bind = "list", uilist = list_troop_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "troop",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},
			-- reinforce leader
			{ bind = "list", uilist = list_leader_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "leader",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},				
			},
			-- weapon upgrades
			{ bind = "list", uilist = list_weapon_upgrades, 
				content = 
				{	
					{ bind = "upgrade_repeat", type = "weapon",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
			    },
	        },	
		},
	
   -- Spécial Ombrephenix  modifications Démo Mod Codex Evolutions  --	

		multi = 
		{			

			-- reinforce trooper
			{ bind = "list", uilist = list_multileader_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "leader",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
					
					{ bind = "upgrade_repeat", type = "weapon",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},

			-- reinforce captain
			{ bind = "list", uilist = list_multibase_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "troop",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},					
		},
		
		multi_with_reinforce = 
		{
			{ bind = "list", uilist = list_troop_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "troop",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},

			{ bind = "list", uilist = list_multileader_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "leader",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},	
			},
		},

		multi_with_upgrades = 
		{
			-- weapon upgrades
			{ bind = "list", uilist = list_weapon_upgrades2, 
				content = 
				{	
					{ bind = "upgrade_repeat", type = "weapon",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
			    },
	        },				
			{ bind = "list", uilist = list_troop_upgrades, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "troop",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},

			{ bind = "list", uilist = list_multileader_upgrades2, 
				content = 
				{
					{ bind = "upgrade_repeat", type = "leader",
						content = 
						{
							{ bind = "upgrade_button", tt = tooltip_upgrade_squad },
						},
					},
				},
			},
		},

	},
	-- attach / detach (NOTE* you must specify texture="")	
	{ bind = "attach_modal", hk = "attach", texture="", ui = commandsmall_buttons.attach_detach, submenu =  submenu_modal, tt = tooltip_simple_template, tt_title = "$40926", tt_desc = "$40927" },
	
	-- attached unit icon
	{bind = "attached_status", ui = "AttachedIcon",
		dependant = {
			{ bind = "image", ui = "AttachActive" },
		},
	},
}



-- minimap
minimap_buttons = uses(SoulAbilities)
{
		-- minimap ping
	{	bind = "minimap_ping_binding", 
		ui = "btnPing", tt = tooltip_ping,
		hk = "minimap_ping",
		submenu = submenu_modal,
	},
	
	-- minimap ping type - SendToTeam or SendToAll
	{	bind = "minimap_ping_type_binding", 
		ui = "btnPingToggle", tt = tooltip_ping_send_toggle,
		hk = "minimap_ping_toggle",
	},
}

----------------------------------------------------------------------------------------
--  These are the only Lua tables that are directly applied by the 
--   taskbar

----------------------------------------------------------------------------------------
--  These bindings are applied on a single squad selection
selection_squads_single = uses(static, minimap_buttons,commands, reinforcement_info, single_selection_info, primary_selection_info, squad_commands, production_info )
{
}
----------------------------------------------------------------------------------------
--  These bindings are applied on a mulitple squad selection
selection_squads_multi = uses(static, minimap_buttons,commands, reinforcement_info, mult_selection_info, primary_selection_info, squad_commands )
{
}
----------------------------------------------------------------------------------------
--  These bindings are applied on a single entity selection
selection_entities = uses(static, minimap_buttons,entity_commands, production_info, single_selection_info, primary_selection_info)
{
}
----------------------------------------------------------------------------------------
--  These bindings are applied on an empty selection
selection_empty = uses(static, minimap_buttons)
{
}

----------------------------------------------------------------------------------------
--  These special bindings get when an entity is moused over
selection_mouse_over =
{
	{ bind = "selector_help_text_level",
		----------------------------------------------------------------------------------------
		--
		none = {
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleNone" },
		},
		----------------------------------------------------------------------------------------
		--
		low = {
			-- help tip background
			{ bind = "image", ui = "grpHelpTextSimpleMin" },
			
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleSimpleMin" },
			
			-- left click to select for unselected units, currently selected for selected units (hotkey area)
			{ bind = "select_text", selected = "$38280", unselected = "$38281", ui = "txtHelpHotkeySimpleMin", 
				----------------------------------------------------------------------------------------
				-- these bindings will show up for moused over entities
				----------------------------------------------------------------------------------------
				dependant = {
					-- player owner name for selected item
					{
						bind = "single_selection_player_owner_label", 
						text_color = {255,255,255,255}, 		-- player selects own unit
						enemy_text_color = {255,0,0,255}, 	-- player selects an enemy unit
						ally_text_color = {0,255,255,255} ,		-- player selects an allied unit
						tt = tooltip_simple_template, tt_title = "$40954", tt_desc = "$40955",
						ui = "txtHelpAlertSimpleMin", 
					},
				},
			},
		},
		----------------------------------------------------------------------------------------
		--
		high = {
			-- help tip background
			{ bind = "image", ui = "grpHelpTextAlertMax" },
			
			-- name of selected item
			{ bind = "ui_info", info_type = "ui_name", ui = "txtHelpTitleAlertMax" },
			
			-- help tip bulleted list
			{ bind = "ui_info", info_type = "ui_help_list", ui = "listHelpListAlertMax" },
			
			-- left click to select for unselected units, currently selected for selected units (hotkey area)
			{ bind = "select_text", selected = "$38280", unselected = "$38281", ui = "txtHelpHotkeyAlertMax",
				
				----------------------------------------------------------------------------------------
				-- these bindings will show up for moused over entities
				----------------------------------------------------------------------------------------
				dependant = {
					-- player owner name for selected item
					{
						bind = "single_selection_player_owner_label", 
						text_color = {255,255,255,255}, 		-- player selects own unit
						enemy_text_color = {255,0,0,255}, 	-- player selects an enemy unit
						ally_text_color = {0,255,255,255} ,		-- player selects an allied unit
						tt = tooltip_simple_template, tt_title = "$40954", tt_desc = "$40955",
						ui = "txtHelpAlertAlertMax", 
					},
				},
			},
		},
	},
	
	
}


-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------
-------------------------------------------------------------------------------------------------------------------------------------