--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

local BURNING_BLOSSOM = 23247;

local EARTHEN_RING_ELDER_ID = 26221;	-- Earthen Ring Elder
local EARTHEN_RING_ELDER_COORDS = {
	{ 49.4, 72.0, MAP.STORMWIND_CITY },
	{ 47.2, 37.6, MAP.ORGRIMMAR },
	{ 64.8, 27.4, MAP.IRONFORGE },
	{ 21.4, 24.4, MAP.THUNDER_BLUFF },
	{ 56.2, 92.2, MAP.TELDRASSIL },
	{ 67.0, 13.0, MAP.UNDERCITY },
};

local FESTIVAL_FLAMEKEEPER_ID = 16788;	-- Festival Flamekeeper
local FESTIVAL_FLAMEKEEPER_COORDS = {
	{ 38.5, 61.1, MAP.STORMWIND_CITY },
	{ 63.6, 24.7, MAP.IRONFORGE },
	{ 56.5, 92.0, MAP.TELDRASSIL },
	{ 21.6, 26.2, MAP.THUNDER_BLUFF },
	{ 62.1, 66.8, MAP.TIRISFAL_GLADES },
	{ 46.2, 37.7, MAP.ORGRIMMAR },
};

local FESTIVAL_MASTER_FIRE_EATER_ID = 25975;	-- Master Fire Eater
local FESTIVAL_MASTER_FIRE_EATER_COORDS = {
	{ 50.1, 72.6, MAP.STORMWIND_CITY },
	{ 65.2, 25.4, MAP.IRONFORGE },
	{ 56.6, 92.0, MAP.TELDRASSIL },
};

local FESTIVAL_MASTER_FLAME_EATER_ID = 26113;	-- Master Flame Eater
local FESTIVAL_MASTER_FLAME_EATER_COORDS = {
	{ 46.6, 37.2, MAP.ORGRIMMAR },
	{ 21.2, 26.2, MAP.THUNDER_BLUFF },
	{ 68.6, 8.00, MAP.UNDERCITY },
};

local FESTIVAL_LOREMASTER_ID = 16817;	-- Festival Loremaster
local FESTIVAL_LOREMASTER_COORDS = {
	{ 38.5, 61.1, MAP.STORMWIND_CITY },
	{ 63.6, 24.7, MAP.IRONFORGE },
	{ 56.6, 92.3, MAP.TELDRASSIL },
};

local FESTIVAL_TALESPINNER_ID = 16818;	-- Festival Talespinner
local FESTIVAL_TALESPINNER_COORDS = {
	{ 46.8, 38.0, MAP.ORGRIMMAR },
	{ 21.3, 26.4, MAP.THUNDER_BLUFF },
	{ 67.6, 8.3, MAP.UNDERCITY },
};

local FLAME_STEAL_LEVEL_REQUIREMENT = 50;
local FLAME_STEAL_REWARDS = {
	i(BURNING_BLOSSOM),	-- x25
	i(23211),	-- Toasted Smorc
	i(23326),	-- Midsummer Sausage
	i(23327),	-- Fire-toasted Bun
	i(23435),	-- Elderberry Pie
};

root(ROOTS.Holidays, applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, n(createHeader({
	readable = "Midsummer Fire Festival",
	constant = "MIDSUMMER_FIRE_FESTIVAL_HEADER",
	icon = [[~_.asset("Holiday_Midsummer")]],
	eventID = EVENTS.MIDSUMMER_FIRE_FESTIVAL,
	eventSchedule = {
		1,	-- Recurring
		6, 21, 10, 0,	-- 06/21 at 10:00 AM
		7, 5, 10, 0		-- 07/05 at 10:00 AM
	},
	text = {
		en = "Midsummer Fire Festival",
		de = "Sonnenwendfest",
		es = "Festival del Fuego del Solsticio de Verano",
		mx = "Festival del Fuego del Solsticio de Verano",
		fr = "Fête du Feu du solstice d’été",
		it = "Fuochi di Mezza Estate",
		ko = "한여름 불꽃축제",
		pt = "Festival do Fogo do Solstício",
		ru = "Огненный Солнцеворот",
		cn = "仲夏火焰节",
		tw = "仲夏火焰節慶",
	},
}), {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["groups"] = {
		n(QUESTS, {
			q(9319, {	-- A Light in Dark Places
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = {
					MAP.DIRE_MAUL,
					MAP.BLACKROCK_SPIRE,
					MAP.STRATHOLME,
					MAP.SCHOLOMANCE,
				},
				["isYearly"] = true,	-- NOTE: Crieve tested the flags for this quest with the ATT guild, it was not reset. (meaning it's a yearly repeatable)
				["lvl"] = 50,
				["groups"] = {
					objective(1),	-- Flame of Dire Maul
					objective(2),	-- Flame of Blackrock Spire
					objective(3),	-- Flame of Stratholme
					objective(4),	-- Flame of the Scholomance
					i(23083),	-- Captured Flame (PET!)
					i(BURNING_BLOSSOM),
				},
			}),
			q(9386, {	-- A Light in Dark Places
				["sourceQuest"] = 9319,	-- A Light in Dark Places
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = {
					MAP.DIRE_MAUL,
					MAP.BLACKROCK_SPIRE,
					MAP.STRATHOLME,
					MAP.SCHOLOMANCE,
				},
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					objective(1),	-- Flame of Dire Maul
					objective(2),	-- Flame of Blackrock Spire
					objective(3),	-- Flame of Stratholme
					objective(4),	-- Flame of the Scholomance
					i(BURNING_BLOSSOM),
				},
			}),
			q(9365, {	-- A Thief's Reward (A)
				["sourceQuests"] = {
					9324,	-- Stealing Orgrimmar's Flame
					9325,	-- Stealing Thunder Bluff's Flame
					9326,	-- Stealing the Undercity's Flame
				},
				["qg"] = FESTIVAL_LOREMASTER_ID,
				["coords"] = FESTIVAL_LOREMASTER_COORDS,
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9339, {	-- A Thief's Reward (H)
				["sourceQuests"] = {
					9332,	-- Stealing Darnassus's Flame
					9331,	-- Stealing Ironforge's Flame
					9330,	-- Stealing Stormwind's Flame
				},
				["qg"] = FESTIVAL_TALESPINNER_ID,
				["coords"] = FESTIVAL_TALESPINNER_COORDS,
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 50,
				["groups"] = {
					i(23323),	-- Crown of the Fire Festival
				},
			}),
			q(9389, {	-- Flickering Flames in Eastern Kingdoms
				["icon"] = 134467,
				["qgs"] = {
					FESTIVAL_LOREMASTER_ID,
					FESTIVAL_TALESPINNER_ID,
				},
				["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
				["maps"] = {
					MAP.HILLSBRAD_FOOTHILLS,
					MAP.SILVERPINE_FOREST,
					MAP.WESTFALL,
					MAP.WETLANDS
				},
				["groups"] = {
					objective(1, {	-- Flame of Hillsbrad
						["coord"] = { 54.2, 34.9, MAP.HILLSBRAD_FOOTHILLS },
					}),
					objective(2, {	-- Flame of Silverpine
						["coord"] = { 54.3, 69.6, MAP.SILVERPINE_FOREST },
					}),
					objective(3, {	-- Flame of Westfall
						["coord"] = { 33.2, 80.4, MAP.WESTFALL },
					}),
					objective(4, {	-- Flame of the Wetlands
						["coord"] = { 51.1, 17.2, MAP.WETLANDS },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9388, {	-- Flickering Flames in Kalimdor
				["icon"] = 134467,
				["qgs"] = {
					FESTIVAL_LOREMASTER_ID,
					FESTIVAL_TALESPINNER_ID,
				},
				["coords"] = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS, {})),
				["maps"] = {
					MAP.ASHENVALE,
					MAP.THE_BARRENS,
					MAP.DARKSHORE,
					MAP.STONETALON_MOUNTAINS,
				},
				["groups"] = {
					objective(1, {	-- Flame of Ashenvale
						["coord"] = { 64.7, 71.7, MAP.ASHENVALE },
					}),
					objective(2, {	-- Flame of the Barrens
						["coord"] = { 58.9, 37.4, MAP.THE_BARRENS },
					}),
					objective(3, {	-- Flame of Darkshore
						["coord"] = { 41.4, 90.9, MAP.DARKSHORE },
					}),
					objective(4, {	-- Flame of Stonetalon
						["coord"] = { 59.6, 70.0, MAP.STONETALON_MOUNTAINS },
					}),
					i(23211),	-- Toasted Smorc
					i(23326),	-- Midsummer Sausage
					i(23327),	-- Fire-toasted Bun
					i(23435),	-- Elderberry Pie
				},
			}),
			q(9332, {	-- Stealing Darnassus's Flame
				["providers"] = {
					{ "o", 181334 },	-- Flame of Darnassus
					{ "i", 23184 },	-- Flame of Darnassus (Provided)
				},
				["coord"] = { 56.6, 92.3, MAP.TELDRASSIL },
				["maps"] = { MAP.DARNASSUS },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9331, {	-- Stealing Ironforge's Flame
				["providers"] = {
					{ "o", 181333 },	-- Flame of Ironforge
					{ "i", 23183 },	-- Flame of Ironforge (Provided)
				},
				["coord"] = { 64.6, 24.8, MAP.IRONFORGE },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9324, {	-- Stealing Orgrimmar's Flame
				["providers"] = {
					{ "o", 181336 },	-- Flame of Orgrimmar
					{ "i", 23179 },	-- Flame of Orgrimmar (Provided)
				},
				["coord"] = { 46.9, 38.7, MAP.ORGRIMMAR },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9330, {	-- Stealing Stormwind's Flame
				["providers"] = {
					{ "o", 181332 },	-- Flame of Stormwind
					{ "i", 23182 },	-- Flame of Stormwind (Provided)
				},
				["coord"] = { 38.9, 62.3, MAP.STORMWIND_CITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9326, {	-- Stealing the Undercity's Flame
				["providers"] = {
					{ "o", 181335 },	-- Flame of the Undercity
					{ "i", 23181 },	-- Flame of the Undercity (Provided)
				},
				["coord"] = { 62.6, 66.9, MAP.UNDERCITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9325, {	-- Stealing Thunder Bluff's Flame
				["providers"] = {
					{ "o", 181337 },	-- Flame of Thunder Bluff
					{ "i", 23180 },	-- Flame of Thunder Bluff (Provided)
				},
				["coord"] = { 21.1, 25.6, MAP.THUNDER_BLUFF },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = FLAME_STEAL_LEVEL_REQUIREMENT,
				["groups"] = FLAME_STEAL_REWARDS,
			}),
			q(9367, {	-- The Festival of Fire (A)
				["icon"] = 134467,
				["qg"] = FESTIVAL_LOREMASTER_ID,
				["coords"] = FESTIVAL_LOREMASTER_COORDS,
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- Flame of Stormwind
						["provider"] = { "o", 181332 },	-- Flame of Stormwind
						["coord"] = { 38.9, 62.3, MAP.STORMWIND_CITY },
					}),
					objective(2, {	-- Flame of Ironforge
						["provider"] = { "o", 181333 },	-- Flame of Ironforge
						["coord"] = { 64.6, 24.8, MAP.IRONFORGE },
					}),
					objective(3, {	-- Flame of Darnassus
						["provider"] = { "o", 181334 },	-- Flame of Darnassus
						["coord"] = { 56.6, 92.3, MAP.TELDRASSIL },
					}),
					i(23246),	-- Fiery Festival Brew
					i(BURNING_BLOSSOM),
				},
			}),
			q(9368, {	-- The Festival of Fire (H)
				["icon"] = 134467,
				["qg"] = FESTIVAL_TALESPINNER_ID,
				["coords"] = FESTIVAL_TALESPINNER_COORDS,
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- Flame of Orgrimmar
						["provider"] = { "o", 181336 },	-- Flame of Orgrimmar
						["coord"] = { 46.9, 38.7, MAP.ORGRIMMAR },
					}),
					objective(2, {	-- Flame of Thunder Bluff
						["provider"] = { "o", 181337 },	-- Flame of Thunder Bluff
						["coord"] = { 21.1, 25.6, MAP.THUNDER_BLUFF },
					}),
					objective(3, {	-- Flame of the Undercity
						["provider"] = { "o", 181335 },	-- Flame of the Undercity
						["coord"] = { 62.6, 66.9, MAP.UNDERCITY },
					}),
					i(23246),	-- Fiery Festival Brew
					i(BURNING_BLOSSOM),
				},
			}),
			q(9322, {	-- Wild Fires in Kalimdor
				["icon"] = 134467,
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = {
					MAP.AZSHARA,
					MAP.SILITHUS,
					MAP.UNGORO_CRATER,
					MAP.WINTERSPRING,
				},
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- Flame of Azshara
						["coord"] = { 41.5, 43.3, MAP.AZSHARA },
					}),
					objective(2, {	-- Flame of Silithus
						["coord"] = { 81.2, 18.4, MAP.SILITHUS },
					}),
					objective(3, {	-- Flame of Un'Goro
						["coord"] = { 70.1, 76.2, MAP.UNGORO_CRATER },
					}),
					objective(4, {	-- Flame of Winterspring
						["coord"] = { 30.6, 43.2, MAP.WINTERSPRING },
					}),
					i(23379),	-- Cinder Bracers
					i(BURNING_BLOSSOM),
				},
			}),
			q(9323, {	-- Wild Fires in the Eastern Kingdoms
				["icon"] = 134467,
				["qg"] = FESTIVAL_FLAMEKEEPER_ID,
				["coords"] = FESTIVAL_FLAMEKEEPER_COORDS,
				["maps"] = {
					MAP.BLASTED_LANDS,
					MAP.EASTERN_PLAGUELANDS,
					MAP.THE_HINTERLANDS,
					MAP.SEARING_GORGE,
				},
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- Flame of the Blasted Lands
						["coord"] = { 54.4, 31.8, MAP.BLASTED_LANDS },
					}),
					objective(2, {	-- Flame of the Plaguelands
						["coord"] = { 57.6, 73.2, MAP.EASTERN_PLAGUELANDS },
					}),
					objective(3, {	-- Flame of the Hinterlands
						["coord"] = { 62.2, 53.5, MAP.THE_HINTERLANDS },
					}),
					objective(4, {	-- Flame of Searing Gorge
						["coord"] = { 33.0, 73.5, MAP.SEARING_GORGE },
					}),
					i(23324),	-- Mantle of the Fire Festival
					i(BURNING_BLOSSOM),
				},
			}),
		}),
	},
})));
