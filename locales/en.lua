--------------------------------------------------------------------------------
--						L O C A L I Z A T I O N  F I L E					  --
--------------------------------------------------------------------------------
--						English / United States (default)					  --
--------------------------------------------------------------------------------
-- This file has been deprecated. All custom headers in this file MUST be moved into the proper addon database.
-- All shared locales will be moved to the Default Locale file.
local name, app = ...;
local L = app.L;

-- Global locals
local GetAchievementInfo, select, sformat = GetAchievementInfo, select, string.format;
local GetRealZoneText = GetRealZoneText;

-- WoW API Cache
local GetSpellName = app.WOWAPI.GetSpellName;
local GetItemClassInfo = app.WOWAPI.GetItemClassInfo;

for key, value in pairs({
	-- These need to be localized manually.
	-- Can also use the direct IconID, i.e. wowhead.com/icon=###
	-- https://www.wowhead.com/icons
	["HEADER_ICONS"] = {
	-- WoD Dungeons(Fake npcid)
		[-140] = 1042057,										-- Auchindoun
		[-141] = 1042059,										-- Bloodmaul Slag Mines
		[-142] = 1042061,										-- Grimrail Depot
		[-143] = 1060552,										-- Iron Docks
		[-144] = 1042063,										-- Shadowmoon Burial Grounds
		[-145] = 1042064,										-- Skyreach
		[-146] = 1060551,										-- The Everbloom
		[-147] = 1042065,										-- Upper Blackrock Spire
	-- Dragonflight
		[-1120] = 4687627,										-- Maruuk Centaur
		[-1130] = 4687629,										-- Iskaara Tuskarr
		[-1150] = 5140835,										-- Loamm Niffen
	-- The War Within
		[-1208] = 236421,										-- Invasion: Vrykul
		[-1209] = 236422,										-- Invasion: Naga
		[-1210] = 133168,										-- Invasion: Pirate
	};
	["HEADER_NAMES"] = {
	-- WoD Dungeons(Fake npcid)
		[-140] = GetRealZoneText(1182),									-- Auchindoun
		[-141] = GetRealZoneText(1175),									-- Bloodmaul Slag Mines
		[-142] = GetRealZoneText(1208),									-- Grimrail Depot
		[-143] = GetRealZoneText(1195),									-- Iron Docks
		[-144] = GetRealZoneText(1176),									-- Shadowmoon Burial Grounds
		[-145] = GetRealZoneText(1209),									-- Skyreach
		[-146] = GetRealZoneText(1279),									-- The Everbloom
		[-147] = GetRealZoneText(1358),									-- Upper Blackrock Spire
	-- Dragonflight
		-- Autotranslate with Reputation
		[-1120] = "Maruuk Centaur",													-- Maruuk Centaur
		[-1130] = "Iskaara Tuskarr",												-- Iskaara Tuskarr
		[-1150] = "Loamm Niffen",													-- Loamm Niffen
	-- The War Within
		[-1208] = "Invasion: Vrykul",												-- Vrykul
		[-1209] = "Invasion: Naga",													-- Naga
		[-1210] = "Invasion: Pirate",												-- Pirate
	-- Tier/Dungeon/Event/Holiday Sets
		-- Artifact Strings, These IDs are used in src/Expansion/Legion [Ask Runaway about removing them]
		[-5200] = "Base Appearance",											-- Base Appearance
		[-5201] = "Class Hall Campaign",										-- Class Hall Campaign
		[-5202] = "Balance of Power",											-- Balance of Power
		[-5203] = "Prestige Rewards",											-- Prestige Rewards
		[-5204] = "Challenge Appearance",										-- Challenge Appearance
		[-5205] = "Hidden Appearance",											-- Hidden Appearance
	};

	["CUSTOM_COLLECTS_REASONS"] = {
		["NPE"] = { icon = "|T"..(3567434)..":0|t", color = "ff5bc41d", text = "New Player Experience", desc = "Only a New Character can Collect this." },
		["SL_SKIP"] = { icon = "|T"..app.asset("Expansion_SL")..":0|t", color = "ff76879c", text = "Threads of Fate", desc = "Only a Character who chose to skip the Shadowlands Storyline can Collect this." },
		["HOA"] = { icon = "|T"..(1869493)..":0|t", color = "ffe6cc80", text = GetSpellName(275825), desc = "Only a Character who has obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
		["!HOA"] = { icon = "|T"..(2480886)..":0|t", color = "ffe6cc80", text = "|cffff0000"..NO.."|r "..GetSpellName(275825), desc = "Only a Character who has |cffff0000not|r obtained the |cffe6cc80"..GetSpellName(275825).."|r can collect this." },
		["SL_COV_KYR"] = { icon = "|T"..(3257748)..":0|t", color = "ff516bfe", text = GetSpellName(321076) },
		["SL_COV_NEC"] = { icon = "|T"..(3257749)..":0|t", color = "ff40bf40", text = GetSpellName(321078) },
		["SL_COV_NFA"] = { icon = "|T"..(3257750)..":0|t", color = "ffA330C9", text = GetSpellName(321077) },
		["SL_COV_VEN"] = { icon = "|T"..(3257751)..":0|t", color = "fffe040f", text = GetSpellName(321079) },
	};
}) do
	L[key] = value;
end