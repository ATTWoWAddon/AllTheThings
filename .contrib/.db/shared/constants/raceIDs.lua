-- RACES
HUMAN = 1;
DWARF = 3;
NIGHTELF = 4;
GNOME = 7;
DRAENEI = 11;
WORGEN = 22;
VOIDELF = 29;
LIGHTFORGED = 30;
KULTIRAN = 32;
DARKIRON = 34;
MECHAGNOME = 37;

DRACTHYR_ALLIANCE = 52;
DRACTHYR_HORDE = 70;

EARTHEN_ALLIANCE = 85;
EARTHEN_HORDE = 84;

HARANIR_ALLIANCE = 86;
HARANIR_HORDE = 91;

PANDAREN_NEUTRAL = 24;
PANDAREN_ALLIANCE = 25;
PANDAREN_HORDE = 26;

SKYBORNE_ALLIANCE = 95;
SKYBORNE_HORDE = 96;

ORC = 2;
UNDEAD = 5;
TAUREN = 6;
TROLL = 8;
GOBLIN = 9;
BLOODELF = 10;
NIGHTBORNE = 27;
HIGHMOUNTAIN_TAUREN = 28;
ZANDALARI = 31;
VULPERA = 35;
MAGHAR = 36;

ALLIANCE_ONLY = {
	HUMAN,
	DWARF,
	NIGHTELF,
	GNOME,
	-- #if AFTER TBC
	DRAENEI,
		-- #if AFTER CATA
		WORGEN,
			-- #if AFTER MOP
			PANDAREN_ALLIANCE,
				-- #if AFTER 7.3.5
				VOIDELF,
				LIGHTFORGED,
					-- #if AFTER BFA
					KULTIRAN,
					DARKIRON,
						-- #if AFTER 8.3.0
						MECHAGNOME,
							-- #if AFTER 10.0.2
							DRACTHYR_ALLIANCE,
								-- #if AFTER TWW
								EARTHEN_ALLIANCE,
									-- #if AFTER MID
									HARANIR_ALLIANCE
									-- #endiF
								-- #endif
							-- #endif
						-- #endif
					-- #endif
				-- #endif
			-- #endif
		-- #endif
	-- #endif
	-- #if FOREVER
	SKYBORNE_ALLIANCE,
	-- #endif
};
HORDE_ONLY = {
	ORC,
	UNDEAD,
	TAUREN,
	TROLL,
	-- #if AFTER TBC
	BLOODELF,
		-- #if AFTER CATA
		GOBLIN,
			-- #if AFTER MOP
			PANDAREN_HORDE,
				-- #if AFTER 7.3.5
				NIGHTBORNE,
				HIGHMOUNTAIN_TAUREN,
					-- #if AFTER BFA
					ZANDALARI,
					MAGHAR,
						-- #if AFTER 8.3.0
						VULPERA,
							-- #if AFTER 10.0.2
							DRACTHYR_HORDE,
								-- #if AFTER TWW
								EARTHEN_HORDE,
									-- #if AFTER MID
									HARANIR_HORDE
									-- #endif
								-- #endif
							-- #endif
						-- #endif
					-- #endif
				-- #endif
			-- #endif
		-- #endif
	-- #endif
	-- #if FOREVER
	SKYBORNE_HORDE,
	-- #endif
};
ALL_RACES = {
	-- #if AFTER MOP
	PANDAREN_NEUTRAL
	-- #endif
};
for _,v in pairs(ALLIANCE_ONLY) do table.insert(ALL_RACES,v) end
for _,v in pairs(HORDE_ONLY) do table.insert(ALL_RACES,v) end


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
	["Pandaren"] = {	-- NOTE: Faction Group dictates this.
		["Neutral"] = PANDAREN_NEUTRAL,
		["Alliance"] = PANDAREN_ALLIANCE,
		["Horde"] = PANDAREN_HORDE,
	},
	["Dracthyr"] = {	-- NOTE: Faction Group dictates this.
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
	["Haranir"] = {
		["Alliance"] = HARANIR_ALLIANCE,
		["Horde"] = HARANIR_HORDE
	},
	["High Order Skyborne"] = SKYBORNE_ALLIANCE,
	["Windshaper Skyborne"] = SKYBORNE_HORDE,
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
RaceIDs[DARKIRON].icon = 1851464
RaceIDs[DRACTHYR_ALLIANCE].icon = 4696175
RaceIDs[DRACTHYR_HORDE].icon = 4696175
RaceIDs[EARTHEN_ALLIANCE].icon = 5930319
RaceIDs[EARTHEN_HORDE].icon = 5930319
RaceIDs[HARANIR_ALLIANCE].icon = 7448213
RaceIDs[HARANIR_HORDE].icon = 7448213
RaceIDs[HIGHMOUNTAIN_TAUREN].icon = 1786419
RaceIDs[KULTIRAN].icon = 2447785
RaceIDs[LIGHTFORGED].icon = 1786420
RaceIDs[MAGHAR].icon = 1989713
RaceIDs[MECHAGNOME].icon = 3208032
RaceIDs[NIGHTBORNE].icon = 1786421
RaceIDs[PANDAREN_ALLIANCE].icon = 626190
RaceIDs[PANDAREN_HORDE].icon = 626190
RaceIDs[PANDAREN_NEUTRAL].icon = 626190
RaceIDs[VOIDELF].icon = 1786422
RaceIDs[VULPERA].icon = 3208033
RaceIDs[WORGEN].icon = 463876
RaceIDs[ZANDALARI].icon = 1851465

-- TODO: These are temp icons.
RaceIDs[SKYBORNE_ALLIANCE].icon = 7749892
RaceIDs[SKYBORNE_HORDE].icon = 7813745
-- female
RaceIDs[BLOODELF].gender[female].icon = 236439
RaceIDs[DRAENEI].gender[female].icon = 236441
RaceIDs[DWARF].gender[female].icon = 236443
RaceIDs[GNOME].gender[female].icon = 236445
RaceIDs[GOBLIN].gender[female].icon = 632354
RaceIDs[HARANIR_ALLIANCE].gender[female].icon = 7431080
RaceIDs[HARANIR_HORDE].gender[female].icon = 7431080
RaceIDs[HUMAN].gender[female].icon = 236447
RaceIDs[NIGHTELF].gender[female].icon = 236449
RaceIDs[ORC].gender[female].icon = 236451
RaceIDs[TAUREN].gender[female].icon = 236453
RaceIDs[TROLL].gender[female].icon = 236455
RaceIDs[UNDEAD].gender[female].icon = 236457
-- male
RaceIDs[BLOODELF].gender[male].icon = 236440
RaceIDs[DRAENEI].gender[male].icon = 236442
RaceIDs[DWARF].gender[male].icon = 236444
RaceIDs[GNOME].gender[male].icon = 236446
RaceIDs[GOBLIN].gender[male].icon = 463874
RaceIDs[HARANIR_ALLIANCE].gender[male].icon = 7431081
RaceIDs[HARANIR_HORDE].gender[male].icon = 7431081
RaceIDs[HUMAN].gender[male].icon = 236448
RaceIDs[NIGHTELF].gender[male].icon = 236450
RaceIDs[ORC].gender[male].icon = 236452
RaceIDs[TAUREN].gender[male].icon = 236454
RaceIDs[TROLL].gender[male].icon = 236456
RaceIDs[UNDEAD].gender[male].icon = 236458

-- Verify no new races have been missed from Constants
for _,race in ipairs(ALL_RACES) do
	if not rawget(RaceIDs, race) then
		error("Missing Race assignment for ["..race.."] within Exports.RaceDB!")
	end
end

local alliance = 1
local horde = 2

-- Assign RaceID factions directly
RaceIDs[BLOODELF].faction = horde
RaceIDs[DARKIRON].faction = alliance
RaceIDs[DRACTHYR_ALLIANCE].faction = alliance
RaceIDs[DRACTHYR_HORDE].faction = horde
RaceIDs[DRAENEI].faction = alliance
RaceIDs[DWARF].faction = alliance
RaceIDs[EARTHEN_ALLIANCE].faction = alliance
RaceIDs[EARTHEN_HORDE].faction = horde
RaceIDs[GNOME].faction = alliance
RaceIDs[GOBLIN].faction = horde
RaceIDs[HARANIR_ALLIANCE].faction = alliance
RaceIDs[HARANIR_HORDE].faction = horde
RaceIDs[HIGHMOUNTAIN_TAUREN].faction = horde
RaceIDs[HUMAN].faction = alliance
RaceIDs[KULTIRAN].faction = alliance
RaceIDs[LIGHTFORGED].faction = alliance
RaceIDs[MAGHAR].faction = horde
RaceIDs[MECHAGNOME].faction = alliance
RaceIDs[NIGHTBORNE].faction = horde
RaceIDs[NIGHTELF].faction = alliance
RaceIDs[ORC].faction = horde
RaceIDs[PANDAREN_ALLIANCE].faction = alliance
RaceIDs[PANDAREN_HORDE].faction = horde
RaceIDs[SKYBORNE_ALLIANCE].faction = alliance
RaceIDs[SKYBORNE_HORDE].faction = horde
RaceIDs[TAUREN].faction = horde
RaceIDs[TROLL].faction = horde
RaceIDs[UNDEAD].faction = horde
RaceIDs[VOIDELF].faction = alliance
RaceIDs[VULPERA].faction = horde
RaceIDs[WORGEN].faction = alliance
RaceIDs[ZANDALARI].faction = horde