do
-- Contains various information which should be exported by the Parser into addon-visible DB files whose names
-- & addon DB assignment match the respective key of the ExportDB
-- This allows us to keep DB information in one place, usable both for parsing and in the addon

local SetAutoTable
local autotable__index = function(t, key)
	if key == nil then return end
	local val = SetAutoTable()
	rawset(t, key, val)
	return val
 end
SetAutoTable = function()
	return setmetatable({}, {__index = autotable__index})
end

ExportDB = CreateDatabaseContainer("Exports", {__index = autotable__index})

-- RaceDB --

local RaceDB = {
	["Human"] = HUMAN,
	["Orc"] = ORC,
	["Dwarf"] = DWARF,
	["Night Elf"] = NIGHTELF,
	["NightElf"] = NIGHTELF,
	["Undead"] = UNDEAD,
	["Scourge"] = UNDEAD,
	["Tauren"] = TAUREN,
	["Gnome"] = GNOME,
	["Troll"] = TROLL,
	["Goblin"] = GOBLIN,
	["BloodElf"] = BLOODELF,
	["Blood Elf"] = BLOODELF,
	["Draenei"] = DRAENEI,
	["Worgen"] = WORGEN,
	["Pandaren"] = { -- NOTE: Faction Group dictates this.
		["Neutral"] = PANDAREN_NEUTRAL,
		["Alliance"] = PANDAREN_ALLIANCE,
		["Horde"] = PANDAREN_HORDE,
	},
	["Dracthyr"] = { -- NOTE: Faction Group dictates this.
		["Alliance"] = DRACTHYR_ALLIANCE,
		["Horde"] = DRACTHYR_HORDE,
	},
	["Nightborne"] = NIGHTBORNE,
	["Highmountain Tauren"] = HIGHMOUNTAIN_TAUREN,
	["HighmountainTauren"] = HIGHMOUNTAIN_TAUREN,
	["Void Elf"] = VOIDELF,
	["VoidElf"] = VOIDELF,
	["Lightforged Draenei"] = LIGHTFORGED,
	["LightforgedDraenei"] = LIGHTFORGED,
	["DarkIronDwarf"] = DARKIRON,
	["Dark Iron Dwarf"] = DARKIRON,
	["Kul'Tiran"] = KULTIRAN,
	["KulTiran"] = KULTIRAN,
	["Kul Tiran"] = KULTIRAN,
	["Mag'har Orc"] = MAGHAR,
	["MagharOrc"] = MAGHAR,
	["Mag har Orc"] = MAGHAR,
	["Vulpera"] = VULPERA,
	["Mechagnome"] = MECHAGNOME,
	["ZandalariTroll"] = ZANDALARI,
	["Zandalari Troll"] = ZANDALARI,
	["Earthen"] = {
		["Alliance"] = EARTHEN_ALLIANCE,
		["Horde"] = EARTHEN_HORDE,
	},
};

ExportDB.RaceDB = RaceDB
-- this switches the RaceDB to the global metatable version now that we've added some base data
RaceDB = ExportDB.RaceDB
local RaceIDs = RaceDB.ID

local male = 2
local female = 3

-- We tried building the icon path based on race information from Blizzard, but now with Earthen race
-- Blizzard literally cannot consistently create a icon path name so we will just use raw lookups

-- Have to build this DB a little strangely so that the same sets of keys within a
-- table are always the same underlying type for proper handling by parser

-- Non-gender specific
RaceIDs[WORGEN].icon = 463876
RaceIDs[VOIDELF].icon = 1786422
RaceIDs[LIGHTFORGED].icon = 1786420
RaceIDs[KULTIRAN].icon = 2447785
RaceIDs[DARKIRON].icon = 1851464
RaceIDs[MECHAGNOME].icon = 3208032
RaceIDs[PANDAREN_NEUTRAL].icon = 626190
RaceIDs[PANDAREN_ALLIANCE].icon = 626190
RaceIDs[PANDAREN_HORDE].icon = 626190
RaceIDs[DRACTHYR_ALLIANCE].icon = 4696175
RaceIDs[DRACTHYR_HORDE].icon = 4696175
RaceIDs[EARTHEN_ALLIANCE].icon = 5930319
RaceIDs[EARTHEN_HORDE].icon = 5930319
RaceIDs[NIGHTBORNE].icon = 1786421
RaceIDs[HIGHMOUNTAIN_TAUREN].icon = 1786419
RaceIDs[ZANDALARI].icon = 1851465
RaceIDs[VULPERA].icon = 3208033
RaceIDs[MAGHAR].icon = 1989713
-- female
RaceIDs[HUMAN].gender[female].icon = 236447
RaceIDs[DWARF].gender[female].icon = 236443
RaceIDs[NIGHTELF].gender[female].icon = 236449
RaceIDs[GNOME].gender[female].icon = 236445
RaceIDs[DRAENEI].gender[female].icon = 236441
RaceIDs[ORC].gender[female].icon = 236451
RaceIDs[UNDEAD].gender[female].icon = 236457
RaceIDs[TAUREN].gender[female].icon = 236453
RaceIDs[TROLL].gender[female].icon = 236455
RaceIDs[GOBLIN].gender[female].icon = 632354
RaceIDs[BLOODELF].gender[female].icon = 236439
-- male
RaceIDs[HUMAN].gender[male].icon = 236448
RaceIDs[DWARF].gender[male].icon = 236444
RaceIDs[NIGHTELF].gender[male].icon = 236450
RaceIDs[GNOME].gender[male].icon = 236446
RaceIDs[DRAENEI].gender[male].icon = 236442
RaceIDs[ORC].gender[male].icon = 236452
RaceIDs[UNDEAD].gender[male].icon = 236458
RaceIDs[TAUREN].gender[male].icon = 236454
RaceIDs[TROLL].gender[male].icon = 236456
RaceIDs[GOBLIN].gender[male].icon = 463874
RaceIDs[BLOODELF].gender[male].icon = 236440

-- Verify no new races have been missed from Constants
for _,race in ipairs(ALL_RACES) do
	if not rawget(RaceIDs, race) then
		error("Missing Race assignment for ["..race.."] within Exports.RaceDB!")
	end
end

local alliance = 1
local horde = 2

-- Assign RaceID factions directly
RaceIDs[WORGEN].faction = alliance
RaceIDs[VOIDELF].faction = alliance
RaceIDs[LIGHTFORGED].faction = alliance
RaceIDs[KULTIRAN].faction = alliance
RaceIDs[DARKIRON].faction = alliance
RaceIDs[MECHAGNOME].faction = alliance
RaceIDs[PANDAREN_ALLIANCE].faction = alliance
RaceIDs[PANDAREN_HORDE].faction = horde
RaceIDs[DRACTHYR_ALLIANCE].faction = alliance
RaceIDs[DRACTHYR_HORDE].faction = horde
RaceIDs[EARTHEN_ALLIANCE].faction = alliance
RaceIDs[EARTHEN_HORDE].faction = horde
RaceIDs[NIGHTBORNE].faction = horde
RaceIDs[HIGHMOUNTAIN_TAUREN].faction = horde
RaceIDs[ZANDALARI].faction = horde
RaceIDs[VULPERA].faction = horde
RaceIDs[MAGHAR].faction = horde
RaceIDs[HUMAN].faction = alliance
RaceIDs[DWARF].faction = alliance
RaceIDs[NIGHTELF].faction = alliance
RaceIDs[GNOME].faction = alliance
RaceIDs[DRAENEI].faction = alliance
RaceIDs[ORC].faction = horde
RaceIDs[UNDEAD].faction = horde
RaceIDs[TAUREN].faction = horde
RaceIDs[TROLL].faction = horde
RaceIDs[GOBLIN].faction = horde
RaceIDs[BLOODELF].faction = horde


-- FlightPathDB --
-- Represents the mapID used by the game to show FlightPaths at a Flight Master
-- Missing ones will be reported in chat by ATT when 'Debugging' is set
local FlightPathMapIDs = {};
ExportDB.FlightPathDB = {FlightPathMapIDs = FlightPathMapIDs}
for i,mapID in ipairs({
	-- #if ANYCLASSIC
	KALIMDOR,
	EASTERN_KINGDOMS,
	-- #if AFTER TBC
	EVERSONG_WOODS,		-- Eversong Woods (and Ghostlands + Isle of Quel'Danas)
	AZUREMYST_ISLE,		-- Azuremyst Isle (and Bloodmyst)
	HELLFIRE_PENINSULA,	-- Hellfire Peninsula (All of Outland)
	-- #endif
	-- #if AFTER WRATH
	ICECROWN,			-- Icecrown (All of Northrend)
	-- #endif
	-- #else
	1209,	-- Kalimdor
	1208,	-- Eastern Kingdoms
	-- #if AFTER TBC
	1467,	-- Outland
	-- #endif
	-- #if AFTER WRATH
	1384,	-- Northrend
	-- #endif
	-- #endif
	-- #if AFTER MOP
	1923,	-- Pandaria
	-- #endif
	-- #if AFTER WOD
	1922,	-- Draenor
	-- #endif
	-- #if AFTER LEGION
	993,	-- Broken Isles
	994,	-- Argus (reported no flight points on this map...)
	-- #endif
	-- #if AFTER BFA
	1011,	-- Zandalar
	1014,	-- Kul Tiras
	1504,	-- Nazjatar
	-- #endif
	-- #if AFTER SHADOWLANDS
	1647,	-- The Shadowlands
	1409,	-- Exile's Reach
	2046,	-- Zereth Mortis
	-- #endif
	-- #if AFTER DF
	2057,	-- Dragon Isles
	2055,	-- Sepulcher of the First Ones (has FPs inside)
	2149,	-- Ohn'ahran Plains [The Nokhud Offensive] (has FPs inside)
	2175,	-- Zaralek Cavern
	2241,	-- Emerald Dream
	-- #endif
	-- #if AFTER TWW
	2276,	-- Khaz Algar
	2298,	-- Nerub-ar Palace (has FPs inside)
	-- #endif
})
do table.insert(FlightPathMapIDs, mapID); end
end