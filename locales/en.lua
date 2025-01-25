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
	-- Class Trial
		[-153] = 1103070,																	-- Work Orders
	-- Class Trial
		[-154] = 1391675,						-- Level 48
	-- PvP
		[-216] = 458725,							-- Prestige
	-- War Campaign
		[-236] = 2565243,								-- Alliance War Campaign
	-- PvP
		[-240] = 2022761,								-- Rated
		[-242] = 236368,				-- Unrated
	-- War Campaign
		[-253] = 2565244,								-- Horde War Campaign
	-- Garrison Missons
		[-299] = 1035062,						-- Missions
	-- PvP
		[-302] = 630784,								-- Level Range 80-84
		[-303] = 630786,							-- Level Range 85-89
	-- Outposts in Draenor
		[-357] = 975743,						-- Sparring Arena Outpost (Gorgond)
		[-358] = 975739,							-- Lumber Mill Outpost (Gorgrond)
		[-360] = 254118,									-- Arcane Sanctum
		[-361] = 252185,						-- Artillery Tower
	-- Pre Class Hall Monk
		[-362] = 606547,						-- Peak of Serenity
	-- Draenor Outposts
		[-390] = 901746,								-- Smuggler's Den
		[-391] = 413582,						-- Stoktron Brewery (alliance)
		[-392] = 413582,						-- Hearthfire Tavern (horde)
	-- BFA Outposts
		[-397] = 1103069,							-- Outposts
	-- Misc
		[-493] = 1103070,						-- Temporary Header WoD Mission Loot
	-- Blizzard Events and Anniversaries
		[-520] = 134289,					-- Expansion Pre-Launch
		[-543] = app.asset("Interface_Linvas"),												-- Legion Invasions
	-- PvP Headers
		-- [-651] = 311230,									-- Not used yet. Future PvP Icons if needed
		-- [-652] = 311227,										-- Not used yet. Future PvP Icons if needed
		[-651] = 838515,						-- Honor Gear Prideful (S15)
		[-652] = 838515,						-- Honor Gear Grievous (S14)
		[-653] = 838515,						-- Honor Gear Tyrannical (S13)
	-- Mists of Pandaria PvP Seasons
		[-675] = 838515,						-- Malevolent Gladiator: Season 12
		[-676] = 838515,						-- Tyrannical Gladiator: Season 13
		[-677] = 838515,						-- Grievous Gladiator: Season 14
		[-678] = 838515,						-- Prideful Gladiator: Season 15
	-- Warlords of Dreanor PvP Seasons
		[-679] = 1127958,								-- Primal Gladiator: Warlords Season 1
		[-680] = 1137556,							-- Wild Gladiator: Warlords Season 2
		[-681] = 1137555,							-- Warmongering Gladiator: Warlords Season 3
	-- SL Headers
		[-901] = 3726261,																	-- Covenant Callings
		[-902] = 3726261,																	-- Renown
		[-905] = 3675495,							-- Command Table
		[-920] = 3257749,									-- Covenant: Necrolord
		[-923] = 3675492,							-- Abomination Factory (Necrolord)
		-- [-924] = Uses Different Icons														-- Transport Network
		[-929] = 3257750,										-- Covenant: Night Fae
		[-930] = 3675494,							-- Queen's Conservatory
		[-939] = 3257748,										-- Covenant: Kyrian
		[-942] = 3675496,																	-- Path of Ascension
		[-949] = 3257751,										-- Covenant: Venthyr
		[-954] = 3528307,							-- Inquisitors
		[-955] = 3528307,							-- High Inquisitors
		[-956] = 3528307,							-- Grand Inquisitors
		[-960] = 3675493,																	-- The Ember Court
		[-967] = 3854020,																	-- Mirror Restoration
		[-968] = 3854020,																	-- Set A
		[-969] = 3854020,																	-- Set B
		[-970] = 3854020,																	-- Set C
		[-971] = 3854020,																	-- Set D
		[-972] = 3536185,																	-- Courage
		[-973] = 3536186,																	-- Loyalty
		[-974] = 3536184,																	-- Wisdom
		[-975] = 3536187,																	-- Humility
		[-981] = 3601566,																	-- Conduits
		[-982] = 2178518,																	-- Skoldus Hall
		[-983] = 1392920,																	-- Fracture Chambers
		[-984] = 1392929,																	-- The Soulforges
		[-985] = 1392911,																	-- Coldheart Interstitia
		[-986] = 2178500,																	-- Mort'regar
		[-987] = 2178509,																	-- The Upper Reaches
	-- Dragonflight
		[-1102] = 4622453,									-- Wrathion & Sabellian
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
	-- Class Trial
		[-153] = CAPACITANCE_WORK_ORDERS,										-- Work Orders
	-- Class Trial
		[-154] = sformat(SPELLBOOK_AVAILABLE_AT, 48),						-- Level 48
	-- PvP
		[-216] = PVP_PRESTIGE_RANK_UP_TITLE,									-- Prestige
	-- War Campaign
		[-236] = C_Map.GetAreaInfo(9663),										-- War Campaign - Alliance
	-- PvP
		[-240] = PVP_TAB_CONQUEST,												-- Rated
		[-242] = "Unrated",														-- Unrated
	-- War Campaign
		[-253] = C_Map.GetAreaInfo(9664),										-- War Campaign - Horde
	-- Garrison Missions
		[-299] = GARRISON_MISSIONS,												-- Missions
	-- PvP
		[-302] = BATTLEFIELD_LEVEL.." 80-84",									-- Level Range 80-84
		[-303] = BATTLEFIELD_LEVEL.." 85-89",									-- Level Range 85-89
	-- Outposts in Draenor
		[-357] = GetSpellName(171866),											-- Sparring Arena Outpost
		[-358] = GetSpellName(164028),											-- Lumber Mill Outpost
		[-360] = select(2,GetAchievementInfo(8987)),							-- Arcane Sanctum
		[-361] = GetSpellName(182108).." Tower",								-- Artillery Tower
	-- Pre Class Hall Monk
		[-362] = DUNGEON_FLOOR_KUNLAISUMMITSCENARIO0,							-- Peak of Serenity
	-- Draenor Outposts
		[-390] = C_Map.GetAreaInfo(7288),										-- Smuggler's Den (Spires of Arak)
		[-391] = C_Map.GetAreaInfo(7291),										-- Stoktron Brewery (Spires of Arak)
		[-392] = C_Map.GetAreaInfo(7290),										-- Hearthfire Tavern
	-- BFA Outposts
		[-397] = "Outposts",													-- Outposts
	-- Misc
		[-493] = "Garrison Mission Loot",										-- Header for WoD Mission Loot
	-- Blizzard Events and Anniversaries
		[-520] = "Expansion Pre-Launch",										-- Expansion Pre-Launch
		[-543] = "Legion Invasions",											-- Legion Invasions
	-- Mists of Pandaria PvP Seasons
		[-675] = select(2, GetAchievementInfo(8214))..": Season 12",			-- Malevolent Gladiator: Season 12
		[-653] = "Honor Gear Tyrannical Season",								-- Honor Gear Tyrannical (S13)
		[-676] = select(2, GetAchievementInfo(8791))..": Season 13",			-- Tyrannical Gladiator: Season 13
		[-652] = "Honor Gear Grievous Season",									-- Honor Gear Grievous (S14)
		[-677] = select(2, GetAchievementInfo(8643)),							-- Grievous Gladiator: Season 14
		[-651] = "Honor Gear Prideful Season",									-- Honor Gear Prideful (S15)
		[-678] = select(2, GetAchievementInfo(8666)),							-- Prideful Gladiator: Season 15
	-- Warlords of Dreanor PvP Seasons
		[-679] = select(2, GetAchievementInfo(9232)),							-- Primal Gladiator: Warlords Season 1
		[-680] = select(2, GetAchievementInfo(10096)),							-- Wild Gladiator: Warlords Season 2
		[-681] = select(2, GetAchievementInfo(10097)),							-- Warmongering Gladiator: Warlords Season 3
	-- Shadowlands Header
		[-901] = GetSpellName(339041),											-- Covenant Callings
		[-902] = COVENANT_SANCTUM_TAB_RENOWN,									-- Renown
		[-905] = GetSpellName(280630),											-- Command Table
		[-979] = "Broker Ve'ken & Broker Ve'nott",								-- Broker Ve'ken & Broker Ve'nott
		[-981] = GetSpellName(348869),											-- Conduits
		-- SL Maldraxxus/Necrolord
		[-920] = GetSpellName(321078),											-- Necrolord
		[-923] = COVENANT_SANCTUM_FEATURE_NECROLORDS,							-- Abomination Factory
		[-924] = "Transport Network",											-- Transport Network
		-- SL Ardenweald/Night Fae
		[-929] = GetSpellName(321077),											-- Night Fae
		[-930] = COVENANT_SANCTUM_FEATURE_NIGHT_FAE,							-- Queen's Conservatory
		[-934] = C_Map.GetAreaInfo(12840),										-- Star Lake Amphitheater
		-- SL Bastion/Kyrian
		[-939] = GetSpellName(321076),											-- Kyrian
		[-942] = COVENANT_SANCTUM_FEATURE_KYRIAN,								-- Path of Ascension
		[-972] = C_PetJournal.GetPetInfoBySpeciesID(3065),						-- Courage
		[-973] = "Loyalty",														-- Loyalty
		[-974] = GetSpellName(3166),											-- Wisdom
		[-975] = "Humility",													-- Humility
		-- SL Revendreth/Venthyr
		[-949] = GetSpellName(321079),											-- Venthyr
		[-954] = "Inquisitors",													-- Inquisitors
		[-955] = "High Inquisitors",											-- High Inquisitors
		[-956] = "Grand Inquisitors",											-- Grand Inquisitors
		[-960] = COVENANT_SANCTUM_FEATURE_VENTHYR,								-- The Ember Court
		[-967] = "Mirror Restoration",											-- Mirror Restoration
		[-968] = "Set A",														-- Set A
		[-969] = "Set B",														-- Set B
		[-970] = "Set C",														-- Set C
		[-971] = "Set D",														-- Set D
		-- SL Torghast
		[-982] = select(2, GetAchievementInfo(14463)),							-- Skoldus Hall
		[-983] = select(2, GetAchievementInfo(14473)),							-- Fracture Chambers
		[-984] = select(2, GetAchievementInfo(14478)),							-- The Soulforges
		[-985] = select(2, GetAchievementInfo(14483)),							-- Coldheart Interstitia
		[-986] = select(2, GetAchievementInfo(14488)),							-- Mort'regar
		[-987] = select(2, GetAchievementInfo(14493)),							-- The Upper Reaches
	-- Dragonflight
		-- Autotranslate with NPC
		[-1102] = "Wrathion & Sabellian",											-- Wrathion & Sabellian
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