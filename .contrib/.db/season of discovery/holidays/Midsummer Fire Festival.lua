--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

local BURNING_BLOSSOM = 23247;

MIDSUMMER_FIRE_FESTIVAL_HEADER = createHeader({
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
		en = "Midsummer Fire Festival",	-- Category 161 is "Midsummer", perhaps this is fine to use instead?
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
});



local FESTIVAL_FLAMEKEEPER_ID = 16788;	-- Festival Flamekeeper
local FESTIVAL_FLAMEKEEPER_COORDS = {
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.5, 92.0, TELDRASSIL },
	{ 21.6, 26.2, THUNDER_BLUFF },
	{ 62.1, 66.8, TIRISFAL_GLADES },
	{ 46.2, 37.7, ORGRIMMAR },
};



local FESTIVAL_LOREMASTER_ID = 16817;	-- Festival Loremaster
local FESTIVAL_LOREMASTER_COORDS = {
	{ 38.5, 61.1, STORMWIND_CITY },
	{ 63.6, 24.7, IRONFORGE },
	{ 56.6, 92.3, TELDRASSIL },
};

local FESTIVAL_TALESPINNER_ID = 16818;	-- Festival Talespinner
local FESTIVAL_TALESPINNER_COORDS = {
	{ 46.8, 38.0, ORGRIMMAR },
	{ 21.3, 26.4, THUNDER_BLUFF },
	{ 67.6, 8.3, UNDERCITY },
};

local FLAME_STEAL_LEVEL_REQUIREMENT = 50;
local FLAME_STEAL_REWARDS = {
	i(BURNING_BLOSSOM),	-- x25
	i(23211),	-- Toasted Smorc
	i(23326),	-- Midsummer Sausage
	i(23327),	-- Fire-toasted Bun
	i(23435),	-- Elderberry Pie
};


root(ROOTS.Holidays, applyevent(EVENTS.MIDSUMMER_FIRE_FESTIVAL, n(MIDSUMMER_FIRE_FESTIVAL_HEADER, {
	n(QUESTS, {
		q(9319, {	-- A Light in Dark Places
			qg = FESTIVAL_FLAMEKEEPER_ID,
			coords = FESTIVAL_FLAMEKEEPER_COORDS,
			maps = {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				STRATHOLME,
				SCHOLOMANCE,
			},
			timeline = { ADDED_1_11_0 },
			isYearly = true,	-- NOTE: Crieve tested the flags for this quest with the ATT guild, it was not reset. (meaning it's a yearly repeatable)
			lvl = 50,
			groups = {
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				i(23083, {	-- Captured Flame (PET!)
					timeline = { ADDED_1_11_1 },
				}),
				i(BURNING_BLOSSOM),
			},
		}),
		q(9386, {	-- A Light in Dark Places
			sourceQuest = 9319,	-- A Light in Dark Places
			qg = FESTIVAL_FLAMEKEEPER_ID,
			coords = FESTIVAL_FLAMEKEEPER_COORDS,
			maps = {
				DIRE_MAUL,
				BLACKROCK_SPIRE,
				LBRS_SKITTERWEB_TUNNELS,
				LBRS_HORDEMAR_CITY,
				LBRS_HALL_OF_BLACKHAND,
				LBRS_HALYCONS_LAIR,
				LBRS_CHAMBER_OF_BATTLE,
				STRATHOLME,
				SCHOLOMANCE,
			},
			timeline = { ADDED_1_11_0 },
			isYearly = true,
			lvl = 50,
			groups = {
				objective(1),	-- Flame of Dire Maul
				objective(2),	-- Flame of Blackrock Spire
				objective(3),	-- Flame of Stratholme
				objective(4),	-- Flame of the Scholomance
				i(BURNING_BLOSSOM),
			},
		}),
		q(9365, {	-- A Thief's Reward (A)
			sourceQuests = {
				9324,	-- Stealing Orgrimmar's Flame
				9325,	-- Stealing Thunder Bluff's Flame
				9326,	-- Stealing the Undercity's Flame
			},
			qg = FESTIVAL_LOREMASTER_ID,
			coords = FESTIVAL_LOREMASTER_COORDS,
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = 50,
			groups = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		q(9339, {	-- A Thief's Reward (H)
			sourceQuests = {
				9332,	-- Stealing Darnassus's Flame
				9331,	-- Stealing Ironforge's Flame
				9330,	-- Stealing Stormwind's Flame
			},
			qg = FESTIVAL_TALESPINNER_ID,
			coords = FESTIVAL_TALESPINNER_COORDS,
			races = HORDE_ONLY,
			isYearly = true,
			lvl = 50,
			groups = {
				i(23323),	-- Crown of the Fire Festival
			},
		}),
		q(9389, {	-- Flickering Flames in Eastern Kingdoms
			coords = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS)),
			maps = {
				HILLSBRAD_FOOTHILLS,
				SILVERPINE_FOREST,
				WESTFALL,
				WETLANDS
			},
			icon = 134467,
			qgs = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			timeline = { ADDED_1_11_0 },
			lvl = 1,
			groups = {
				objective(1, {	-- Flame of Hillsbrad
					coord = { 54.2, 34.9, HILLSBRAD_FOOTHILLS },
				}),
				objective(2, {	-- Flame of Silverpine
					coord = { 54.3, 69.6, SILVERPINE_FOREST },
				}),
				objective(3, {	-- Flame of Westfall
					coord = { 33.2, 80.4, WESTFALL },
				}),
				objective(4, {	-- Flame of the Wetlands
					coord = { 51.1, 17.2, WETLANDS },
				}),
				i(23211),	-- Toasted Smorc
				i(23326),	-- Midsummer Sausage
				i(23327),	-- Fire-toasted Bun
				i(23435),	-- Elderberry Pie
			},
		}),
		q(9388, {	-- Flickering Flames in Kalimdor
			coords = appendGroups(FESTIVAL_TALESPINNER_COORDS, appendGroups(FESTIVAL_LOREMASTER_COORDS)),
			maps = {
				ASHENVALE,
				THE_BARRENS,
				DARKSHORE,
				STONETALON_MOUNTAINS,
			},
			icon = 134467,
			qgs = {
				FESTIVAL_LOREMASTER_ID,
				FESTIVAL_TALESPINNER_ID,
			},
			timeline = { ADDED_1_11_0 },
			lvl = 1,
			groups = {
				objective(1, {	-- Flame of Ashenvale
					coord = { 64.7, 71.7, ASHENVALE },
				}),
				objective(2, {	-- Flame of the Barrens
					coord = { 58.9, 37.4, THE_BARRENS },
				}),
				objective(3, {	-- Flame of Darkshore
					coord = { 41.4, 90.9, DARKSHORE },
				}),
				objective(4, {	-- Flame of Stonetalon
					coord = { 59.6, 70.0, STONETALON_MOUNTAINS },
				}),
				i(23211),	-- Toasted Smorc
				i(23326),	-- Midsummer Sausage
				i(23327),	-- Fire-toasted Bun
				i(23435),	-- Elderberry Pie
			},
		}),
		q(9332, {	-- Stealing Darnassus's Flame
			providers = {
				{ "o", 181334 },	-- Flame of Darnassus
				{ "i", 23184 },	-- Flame of Darnassus (Provided)
			},
			coords = {
				{ 56.6, 92.3, TELDRASSIL },
			},
			maps = { DARNASSUS },
			races = HORDE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9331, {	-- Stealing Ironforge's Flame
			providers = {
				{ "o", 181333 },	-- Flame of Ironforge
				{ "i", 23183 },	-- Flame of Ironforge (Provided)
			},
			coords = {
				{ 64.6, 24.8, IRONFORGE },
			},
			races = HORDE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9324, {	-- Stealing Orgrimmar's Flame
			providers = {
				{ "o", 181336 },	-- Flame of Orgrimmar
				{ "i", 23179 },	-- Flame of Orgrimmar (Provided)
			},
			coords = {
				{ 46.9, 38.7, ORGRIMMAR },
			},
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9330, {	-- Stealing Stormwind's Flame
			providers = {
				{ "o", 181332 },	-- Flame of Stormwind
				{ "i", 23182 },	-- Flame of Stormwind (Provided)
			},
			coords = {
				{ 38.9, 62.3, STORMWIND_CITY },
			},
			races = HORDE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9326, {	-- Stealing the Undercity's Flame
			providers = {
				{ "o", 181335 },	-- Flame of the Undercity
				{ "i", 23181 },	-- Flame of the Undercity (Provided)
			},
			coords = {
				{ 62.6, 66.9, UNDERCITY },
			},
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9325, {	-- Stealing Thunder Bluff's Flame
			providers = {
				{ "o", 181337 },	-- Flame of Thunder Bluff
				{ "i", 23180 },	-- Flame of Thunder Bluff (Provided)
			},
			coords = {
				{ 21.1, 25.6, THUNDER_BLUFF },
			},
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = FLAME_STEAL_LEVEL_REQUIREMENT,
			groups = FLAME_STEAL_REWARDS,
		}),
		q(9367, {	-- The Festival of Fire (A)
			icon = 134467,
			groups = {
				objective(1, {	-- Flame of Stormwind
					provider = { "o", 181332 },	-- Flame of Stormwind
					coord = { 38.9, 62.3, STORMWIND_CITY },
				}),
				objective(2, {	-- Flame of Ironforge
					provider = { "o", 181333 },	-- Flame of Ironforge
					coord = { 64.6, 24.8, IRONFORGE },
				}),
				objective(3, {	-- Flame of Darnassus
					provider = { "o", 181334 },	-- Flame of Darnassus
					coord = { 56.6, 92.3, TELDRASSIL },
				}),
				i(23246),	-- Fiery Festival Brew
				i(BURNING_BLOSSOM),
			},
			qg = FESTIVAL_LOREMASTER_ID,
			coords = FESTIVAL_LOREMASTER_COORDS,
			timeline = { ADDED_1_11_0 },
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = 1,
		}),
		q(9368, {	-- The Festival of Fire (H)
			icon = 134467,
			groups = {
				objective(1, {	-- Flame of Orgrimmar
					provider = { "o", 181336 },	-- Flame of Orgrimmar
					coord = { 46.9, 38.7, ORGRIMMAR },
				}),
				objective(2, {	-- Flame of Thunder Bluff
					provider = { "o", 181337 },	-- Flame of Thunder Bluff
					coord = { 21.1, 25.6, THUNDER_BLUFF },
				}),
				objective(3, {	-- Flame of the Undercity
					provider = { "o", 181335 },	-- Flame of the Undercity
					coord = { 62.6, 66.9, UNDERCITY },
				}),
				i(23246),	-- Fiery Festival Brew
				i(BURNING_BLOSSOM),
			},
			qg = FESTIVAL_TALESPINNER_ID,
			coords = FESTIVAL_TALESPINNER_COORDS,
			timeline = { ADDED_1_11_0 },
			races = ALLIANCE_ONLY,
			isYearly = true,
			lvl = 1,
		}),
		q(9322, {	-- Wild Fires in Kalimdor
			icon = 134467,
			qg = FESTIVAL_FLAMEKEEPER_ID,
			coords = FESTIVAL_FLAMEKEEPER_COORDS,
			maps = {
				AZSHARA,
				SILITHUS,
				UNGORO_CRATER,
				WINTERSPRING,
			},
			timeline = { ADDED_1_11_0 },
			isYearly = true,
			lvl = 1,
			groups = {
				objective(1, {	-- Flame of Azshara
					coord = { 41.5, 43.3, AZSHARA },
				}),
				objective(2, {	-- Flame of Silithus
					coord = { 81.2, 18.4, SILITHUS },
				}),
				objective(3, {	-- Flame of Un'Goro
					coord = { 70.1, 76.2, UNGORO_CRATER },
				}),
				objective(4, {	-- Flame of Winterspring
					coord = { 30.6, 43.2, WINTERSPRING },
				}),
				i(23379),	-- Cinder Bracers
				i(BURNING_BLOSSOM),
			},
		}),
		q(9323, {	-- Wild Fires in the Eastern Kingdoms
			icon = 134467,
			groups = {
				objective(1, {	-- Flame of the Blasted Lands
					coord = { 54.4, 31.8, BLASTED_LANDS },
				}),
				objective(2, {	-- Flame of the Plaguelands
					coord = { 57.6, 73.2, EASTERN_PLAGUELANDS },
				}),
				objective(3, {	-- Flame of the Hinterlands
					coord = { 62.2, 53.5, THE_HINTERLANDS },
				}),
				objective(4, {	-- Flame of Searing Gorge
					coord = { 33.0, 73.5, SEARING_GORGE },
				}),
				i(23324),	-- Mantle of the Fire Festival
				i(BURNING_BLOSSOM),
			},
			qg = FESTIVAL_FLAMEKEEPER_ID,
			coords = FESTIVAL_FLAMEKEEPER_COORDS,
			maps = {
				BLASTED_LANDS,
				EASTERN_PLAGUELANDS,
				THE_HINTERLANDS,
				SEARING_GORGE,
			},
			timeline = { ADDED_1_11_0 },
			isYearly = true,
			lvl = 1,
		}),

		-- Bonfire Descecration Quests

		-- Honor the Flame Quests
	}),
})));

