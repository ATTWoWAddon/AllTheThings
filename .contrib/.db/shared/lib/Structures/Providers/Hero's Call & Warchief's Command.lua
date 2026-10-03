-- #if BEFORE 4.0.1
if true then
local helper = function(t)
	if not t.timeline then t.timeline = { ADDED_4_0_1 }; end
	return t;
end
heroscall = helper;
warchiefscommand = helper;
else
-- #endif
----------------------------------------------------------------------------------------------
-- CRIEVE NOTES REGARDING THIS FILE:
-- In the "availableQuests" section, put the questID of quests you found in a given location.
-- Include information like what character you were on, the class/race, your level, and the date.
-- Do not worry about duplicate entries or patch requirements, they will be mapped to key/value pairs later.
-- The helper function will link the respective providers to the quests in their respective zones.
-- I don't want a root header for this, instead, use the objectID to look it up.
----------------------------------------------------------------------------------------------
local helper = function(boards, t)	-- Assigns board provider data based on the maps assigned to the object.
	-- #if BEFORE 4.0.1
	-- Pre-Cata, ignore all war board information.
	if true then return t; end
	-- #endif

	if not t.questID then
		error("Hero's Call / Warchief's Command Board providers need to be attached to a Quest Object.");
	end

	-- Map the IDs into a dictionary for ease of use.
	local mapsByKey = {};
	local maps = t.maps;
	-- #if AFTER 7.3.5
	-- With some unknown patch, this appears to have been changed to allow all boards in all zones to do the thing
	-- This was more than likely a 7.3.5 modification.
	if maps then
		for i=#maps,1,-1 do
			local mapID = maps[i];
			if boards[mapID] then
				table.remove(maps, i);
			end
		end
		if #maps == 0 then
			t.maps = nil;
			maps = nil;
		end
	end
	-- #endif
	if not maps or #maps == 0 then
		-- Assign all of them
		for mapID,data in pairs(boards) do
			mapsByKey[mapID] = data;
		end
	else
		for _,mapID in ipairs(maps) do
			local data = boards[mapID];
			if data then
				mapsByKey[mapID] = data;
			end
		end
		for i=#maps,1,-1 do
			if mapsByKey[maps[i]] then
				table.remove(maps, i);
			end
		end
		if #maps == 0 then
			t.maps = nil;
			maps = nil;
		end
	end

	-- #if AFTER 7.3.5
	-- CRIEVE NOTE: Not sure what patch removed the level requirements, but let's purge them just in case they stick around due to cata classic.
	if t.lvl then t.lvl = nil; end
	-- #endif

	-- Convert the qg/qgs/provider to providers.
	local providers = t.providers;
	if not providers then
		providers = {};
		t.providers = providers;
	end
	if t.qg then
		table.insert(providers, 1, { "n", t.qg });
		t.qg = nil;
	end
	if t.qgs then
		for i=#t.qgs,1,-1 do
			table.insert(providers, 1, { "n", t.qgs[i] });
		end
		t.qgs = nil;
	end
	if t.provider then
		table.insert(providers, t.provider);
		t.provider = nil;
	end

	-- All of these quests are breadcrumbs
	if not t.isBreadcrumb then t.isBreadcrumb = true; end

	-- Copy all of the object data for the maps into t.
	local coords = t.coords;
	for mapID,data in pairs(mapsByKey) do
		table.insert(providers, { "o", data.objectID });
		if data.provider then
			table.insert(providers, data.provider);
		end
		if data.providers then
			for i,provider in ipairs(data.providers) do
				table.insert(providers, provider);
			end
		end
		if data.timeline and not t.timeline then
			t.timeline = data.timeline;
		end
		if data.races and not t.races then
			t.races = data.races;
		end

		if data.coords then
			if not coords then
				if t.coord then
					coords = { t.coord };
				else
					coords = {};
				end
				t.coords = coords;
			end
			for i,coord in ipairs(data.coords) do
				table.insert(coords, coord);
			end
		elseif data.coord then
			if coords then
				table.insert(coords, data.coord);
			elseif t.coord then
				coords = {
					t.coord,
					data.coord
				};
				t.coords = coords;
				t.coord = nil;
			else
				t.coord = data.coord;
			end
		end
	end

	return t;
end

-- Hero's Call Board Quests
local ALL_HEROS_CALL_QUESTS = {
	-- #if AFTER 4.2.0
	28825,	-- A Personal Summons (Vashj'ir Starter Quest)
	29391,	-- Guardians of Hyjal: Call of the Ancients
	29387,	-- Guardians of Hyjal: Firelands Invasion!
	-- #endif
	28573,	-- Hero's Call: Arathi Highlands!
	28492,	-- Hero's Call: Ashenvale!
	28579,	-- Hero's Call: Badlands!
	-- #if AFTER 6.2.0
	39199,	-- Hero's Call: Blade's Edge Mountains!
	-- #endif
	28673,	-- Hero's Call: Blasted Lands!
	28559,	-- Hero's Call: Bloodmyst Isle
	28709,	-- Hero's Call: Borean Tundra! [7.3.5+] / Hero's Call: Northrend!
	28666,	-- Hero's Call: Burning Steppes!
	28490,	-- Hero's Call: Darkshore!
	27727,	-- Hero's Call: Deepholm!
	28531,	-- Hero's Call: Desolace!
	-- #if AFTER 6.2.0
	39204,	-- Hero's Call: Dragonblight!
	-- #endif
	-- #if AFTER 7.3.5
	49561,	-- Hero's Call: Dread Wastes!
	-- #endif
	28564,	-- Hero's Call: Duskwood!
	28552,	-- Hero's Call: Dustwallow Marsh!
	28578,	-- Hero's Call: Eastern Plaguelands!
	28543,	-- Hero's Call: Felwood!
	28511,	-- Hero's Call: Feralas!
	-- #if AFTER 7.3.5
	49564,	-- Hero's Call: Gorgrond!
	-- #endif
	-- #if AFTER 6.2.0
	39207,	-- Hero's Call: Grizzly Hills!
	-- #endif
	-- #if AFTER 7.3.5
	49551,	-- Hero's Call: Howling Fjord!
	49555,	-- Hero's Call: Icecrown!
	49556,	-- Hero's Call: Jade Forest!
	49558,	-- Hero's Call: Krasarang Wilds!
	49559,	-- Hero's Call: Kun-Lai Summit!
	-- #endif
	28567,	-- Hero's Call: Loch Modan!
	27726,	-- Hero's Call: Mount Hyjal!
	-- #if AFTER 4.2.0
	29386,	-- Hero's Call: Mount Hyjal!
	-- #endif
	-- #if AFTER 6.2.0
	39197,	-- Hero's Call: Nagrand! (Outland)
	-- #endif
	-- #if AFTER 7.3.5
	49567,	-- Hero's Call: Nagrand! (Draenor)
	-- #endif
	-- #if AFTER 6.2.0
	39202,	-- Hero's Call: Netherstorm!
	-- #endif
	28699,	-- Hero's Call: Northern Stranglethorn!
	28708,	-- Hero's Call: Outland!
	26365,	-- Hero's Call: Redridge Mountains!
	28563,	-- Hero's Call: Redridge Mountains!
	28582,	-- Hero's Call: Searing Gorge!
	-- #if AFTER 7.3.5
	49550,	-- Hero's Call: Shadowmoon Valley! (Outland)
	49562,	-- Hero's Call: Shadowmoon Valley! (Draenor)
	49553,	-- Hero's Call: Sholazar Basin!
	-- #endif
	28528,	-- Hero's Call: Silithus!
	28550,	-- Hero's Call: Southern Barrens!
	28551,	-- Hero's Call: Southern Barrens!
	-- #if AFTER 7.3.5
	49566,	-- Hero's Call: Spires of Arak!
	-- #endif
	28539,	-- Hero's Call: Stonetalon Mountains!
	-- #if AFTER 7.3.5
	49554,	-- Hero's Call: Storm Peaks!
	-- #endif
	28675,	-- Hero's Call: Swamp of Sorrows!
	-- #if AFTER 7.3.5
	49565,	-- Hero's Call: Talador!
	-- #endif
	28507,	-- Hero's Call: Tanaris!
	-- #if AFTER 6.2.0
	39188,	-- Hero's Call: Terokkar Forest!
	-- #endif
	28702,	-- Hero's Call: The Cape of Stranglethorn!
	26542,	-- Hero's Call: The Hinterlands!
	28503,	-- Hero's Call: Thousand Needles!
	-- #if AFTER 7.3.5
	49560,	-- Hero's Call: Townlong Steppes!
	-- #endif
	28716,	-- Hero's Call: Twilight Highlands!
	28558,	-- Hero's Call: Uldum!
	28525,	-- Hero's Call: Un'Goro Crater!
	-- #if AFTER 7.3.5
	49557,	-- Hero's Call: Valley of the Four Winds!
	-- #endif
	27724,	-- Hero's Call: Vashj'ir!
	28576,	-- Hero's Call: Western Plaguelands!
	28562,	-- Hero's Call: Westfall!
	28565,	-- Hero's Call: Wetlands!
	28544,	-- Hero's Call: Winterspring!
	-- #if AFTER 6.2.0
	39181,	-- Hero's Call: Zangarmarsh!
	-- #endif
	-- #if AFTER 7.3.5
	49552,	-- Hero's Call: Zul'Drak!
	-- #endif
	-- #if AFTER 6.0.1
	36498,	-- Iron Horde Invasion
	-- #endif
	-- #if AFTER 7.0.1
	40519,	-- Legion: The Legion Returns (Alliance)
	-- #endif
	29156,	-- The Troll Incursion
	-- #if AFTER 7.3.5
	49846,	-- Wars on Two Fronts [Cataclysm]
	49863,	-- Wrath of the Lich King: To Northrend! (Alliance)
	49864,	-- Wars on Two Fronts (Cataclysm or Pandaria)
	49865,	-- Cataclysm: First Responder (Alliance)
	49866,	-- Mists of Pandaria: To Pandaria! (Alliance)
	-- #endif
};
HEROS_CALL_BOARD_SYMLINK = {{ "select", "questID", unpack(ALL_HEROS_CALL_QUESTS) }};
local HEROS_CALL_BOARDS = {
	-- #if AFTER 4.0.1
	[DARNASSUS] = o(207321, {	-- Hero's Call Board
		["coords"] = {
			{ 29.6, 48.4, DARNASSUS },
			{ 39.6, 11.6, DARNASSUS },
			{ 45.0, 50.5, DARNASSUS },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = ALLIANCE_ONLY,
	}),
	[IRONFORGE] = o(207320, {	-- Hero's Call Board
		["coords"] = {
			{ 26.5, 70.2, IRONFORGE },
			{ 62.4, 30.5, IRONFORGE },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = ALLIANCE_ONLY,
	}),
	[NORTHREND_DALARAN] = o(208316, {	-- Hero's Call Board
		["coords"] = {
			{ 25.9, 43.1, NORTHREND_DALARAN },
			{ 47.8, 41.2, NORTHREND_DALARAN },
			{ 37.8, 63.8, NORTHREND_DALARAN },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = ALLIANCE_ONLY,
		["availableQuests"] = {
			-------------------------------------------------
			-- Crieve (Human Warrior) - Level 67 - 2024-05-13
			-- Dragonflight - this character has a lot of quest completion
			-------------------------------------------------
			-- Kalimdor Quests
			28551,	-- Hero's Call: Southern Barrens!

			-- Eastern Kingdoms Quests
			28582,	-- Hero's Call: Searing Gorge!

			-- Northrend Quests
			39207,	-- Hero's Call: Grizzly Hills!
			49551,	-- Hero's Call: Howling Fjord!
			49555,	-- Hero's Call: Icecrown!
			49553,	-- Hero's Call: Sholazar Basin!
			49552,	-- Hero's Call: Zul'Drak!

			-- Outland Quests
			49550,	-- Hero's Call: Shadowmoon Valley! (Outland)

			-- MoP Quests
			49561,	-- Hero's Call: Dread Wastes!
			49558,	-- Hero's Call: Krasarang Wilds!
			49559,	-- Hero's Call: Kun-Lai Summit!
			49560,	-- Hero's Call: Townlong Steppes!
			49557,	-- Hero's Call: Valley of the Four Winds!
			-------------------------------------------------
			-- Medieve (Human Mage) - Level 47 - 2024-05-13
			-- Dragonflight - this character is boosted and has like none
			-------------------------------------------------
			-- Kalimdor Quests
			28492,	-- Hero's Call: Ashenvale!
			28490,	-- Hero's Call: Darkshore!
			28543,	-- Hero's Call: Felwood!
			28511,	-- Hero's Call: Feralas!
			28551,	-- Hero's Call: Southern Barrens!
			28539,	-- Hero's Call: Stonetalon Mountains!
			28507,	-- Hero's Call: Tanaris!
			28503,	-- Hero's Call: Thousand Needles!
			28525,	-- Hero's Call: Un'Goro Crater!
			28544,	-- Hero's Call: Winterspring!

			-- Eastern Kingdoms Quests
			28579,	-- Hero's Call: Badlands!
			28564,	-- Hero's Call: Duskwood!
			28578,	-- Hero's Call: Eastern Plaguelands!
			28567,	-- Hero's Call: Loch Modan!
			28563,	-- Hero's Call: Redridge Mountains!
			28582,	-- Hero's Call: Searing Gorge!
			28702,	-- Hero's Call: The Cape of Stranglethorn!
			28576,	-- Hero's Call: Western Plaguelands!
			28562,	-- Hero's Call: Westfall!
			28565,	-- Hero's Call: Wetlands!

			-- Northrend Quests
			39204,	-- Hero's Call: Dragonblight!
			39207,	-- Hero's Call: Grizzly Hills!
			49551,	-- Hero's Call: Howling Fjord!
			49555,	-- Hero's Call: Icecrown!
			49553,	-- Hero's Call: Sholazar Basin!
			49554,	-- Hero's Call: Storm Peaks!
			49552,	-- Hero's Call: Zul'Drak!

			-- Outland Quests
			39199,	-- Hero's Call: Blade's Edge Mountains!
			39202,	-- Hero's Call: Netherstorm!
			28708,	-- Hero's Call: Outland! (Hellfire Peninsula)
			49550,	-- Hero's Call: Shadowmoon Valley! (Outland)

			-- Cata Quests
			27727,	-- Hero's Call: Deepholm!
			29386,	-- Hero's Call: Mount Hyjal!
			28716,	-- Hero's Call: Twilight Highlands!
			28558,	-- Hero's Call: Uldum!
			27724,	-- Hero's Call: Vashj'ir!

			-- MoP Quests
			49561,	-- Hero's Call: Dread Wastes!
			49556,	-- Hero's Call: Jade Forest!
			49558,	-- Hero's Call: Krasarang Wilds!
			49559,	-- Hero's Call: Kun-Lai Summit!
			49560,	-- Hero's Call: Townlong Steppes!
			49557,	-- Hero's Call: Valley of the Four Winds!

			-- WOD Quests
			28709,	-- Hero's Call: Borean Tundra!
			34398,	-- Warlords of Draenor: The Dark Portal [9.0.1] / The Dark Portal
			-------------------------------------------------
		},
	}),
	[STORMWIND_CITY] = o(206111, {	-- Hero's Call Board
		["provider"] = { "o", 206294 },	-- Hero's Call Board
		["coords"] = {
			-- Locations for 206111
			{ 26.1, 38.3, STORMWIND_CITY },
			{ 43.1, 73.7, STORMWIND_CITY },
			{ 63.1, 71.4, STORMWIND_CITY },
			-- Locations for 206294
			{ 62.5, 30.0, STORMWIND_CITY },
			{ 43.0, 71.9, STORMWIND_CITY },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = ALLIANCE_ONLY,
		["availableQuests"] = {
			-------------------------------------------------
			-- Crieve (Human Warrior) - Level 67 - 2024-05-13
			-------------------------------------------------
			-- Kalimdor Quests
			28551,	-- Hero's Call: Southern Barrens!

			-- Eastern Kingdoms Quests
			28582,	-- Hero's Call: Searing Gorge!

			-- Northrend Quests
			39207,	-- Hero's Call: Grizzly Hills!
			49551,	-- Hero's Call: Howling Fjord!
			49555,	-- Hero's Call: Icecrown!
			49553,	-- Hero's Call: Sholazar Basin!
			49552,	-- Hero's Call: Zul'Drak!

			-- Outland Quests
			49550,	-- Hero's Call: Shadowmoon Valley! (Outland)

			-- MoP Quests
			49561,	-- Hero's Call: Dread Wastes!
			49558,	-- Hero's Call: Krasarang Wilds!
			49559,	-- Hero's Call: Kun-Lai Summit!
			49560,	-- Hero's Call: Townlong Steppes!
			49557,	-- Hero's Call: Valley of the Four Winds!
			-------------------------------------------------
		},
	}),
	[THE_EXODAR] = o(207322, {	-- Hero's Call Board
		["coord"] = { 55.5, 47.9, THE_EXODAR },
		["timeline"] = { ADDED_4_0_1 },
		["races"] = ALLIANCE_ONLY,
	}),
	-- #endif
};
heroscall = function(t)	-- Assigns Hero's Call Board provider data based on the maps assigned to the object.
	return helper(HEROS_CALL_BOARDS, t);
end

-- Warchief's Command Board Quests
local ALL_WARCHIEFS_COMMAND_QUESTS = {
	-- #if AFTER 7.3.5
	49851,	-- Cataclysm First Responder (Horde)
	-- #endif
	-- #if AFTER 4.2.0
	29390,	-- Guardians of Hyjal: Call of the Ancients
	29388,	-- Guardians of Hyjal: Firelands Invasion!
	-- #endif
	-- #if AFTER 6.0.1
	36499,	-- Iron Horde Invasion (LEGACY - pre WoD)
	-- #endif
	-- #if AFTER 5.0.1
	29612,	-- The Art of War
	29611,	-- The Art of War
	-- #endif
	-- #if AFTER 7.0.3
	43926,	-- The Legion Returns
	-- #endif
	28790,	-- A Personal Summons (Vashj'ir Starter Quest)
	-- #if AFTER 4.1.0
	29157,	-- The Zandalari Menace
	-- #endif
	-- #if AFTER 7.3.5
	49817,	-- To Northrend! (Horde)
	49852,	-- To Pandaria! (Horde)
	-- #endif
	28572,	-- Warchief's Command: Arathi Highlands!
	28493,	-- Warchief's Command: Ashenvale!
	28496,	-- Warchief's Command: Azshara!
	28580,	-- Warchief's Command: Badlands!
	28711,	-- Warchief's Command: Borean Tundra!
	-- #if AFTER 6.2.0
	39198,	-- Warchief's Command: Blade's Edge Mountains!
	-- #endif
	28671,	-- Warchief's Command: Blasted Lands!
	28667,	-- Warchief's Command: Burning Steppes!
	27722,	-- Warchief's Command: Deepholm!
	28548,	-- Warchief's Command: Desolace!
	-- #if AFTER 6.2.0
	39203,	-- Warchief's Command: Dragonblight!
	-- #endif
	-- #if AFTER 7.3.5
	49543,	-- Warchief's Command: Dread Wastes!
	-- #endif
	28554,	-- Warchief's Command: Dustwallow Marsh!
	28577,	-- Warchief's Command: Eastern Plaguelands!
	28542,	-- Warchief's Command: Felwood!
	28510,	-- Warchief's Command: Feralas!
	-- #if AFTER 7.3.5
	49545,	-- Warchief's Command: Frostfire Ridge!
	-- #endif
	-- #if AFTER 6.2.0
	39206,	-- Warchief's Command: Grizzly Hills!
	-- #endif
	28560,	-- Warchief's Command: Ghostlands!
	-- #if AFTER 7.3.5
	49546,	-- Warchief's Command: Gorgrond!
	-- #endif
	28571,	-- Warchief's Command: Hillsbrad Foothills!
	-- #if AFTER 7.3.5
	49533,	-- Warchief's Command: Howling Fjord!
	49537,	-- Warchief's Command: Icecrown!
	49538,	-- Warchief's Command: Jade Forest!
	49540,	-- Warchief's Command: Krasarang Wilds!
	49541,	-- Warchief's Command: Kun-Lai Summit!
	-- #endif
	27721,	-- Warchief's Command: Mount Hyjal!
	-- #if AFTER 7.3.5
	49549,	-- Warchief's Command: Nagrand! (Draenor)
	-- #endif
	-- #if AFTER 6.2.0
	39196,	-- Warchief's Command: Nagrand! (Outland)
	39201,	-- Warchief's Command: Netherstorm!
	-- #endif
	28494,	-- Warchief's Command: Northern Barrens!
	28688,	-- Warchief's Command: Northern Stranglethorn Vale!
	28705,	-- Warchief's Command: Outland!
	28581,	-- Warchief's Command: Searing Gorge!
	-- #if AFTER 7.3.5
	49532,	-- Warchief's Command: Shadowmoon Valley!
	49535,	-- Warchief's Command: Sholazar Basin!
	-- #endif
	28527,	-- Warchief's Command: Silithus!
	28568,	-- Warchief's Command: Silverpine Forest!
	28549,	-- Warchief's Command: Southern Barrens!
	-- #if AFTER 7.3.5
	49548,	-- Warchief's Command: Spires of Arak!
	49536,	-- Warchief's Command: Storm Peaks!
	-- #endif
	28532,	-- Warchief's Command: Stonetalon Mountains!
	28677,	-- Warchief's Command: Swamp of Sorrows!
	-- #if AFTER 7.3.5
	49547,	-- Warchief's Command: Talador!
	-- #endif
	28509,	-- Warchief's Command: Tanaris!
	-- #if AFTER 6.2.0
	39182,	-- Warchief's Command: Terokkar Forest!
	-- #endif
	28704,	-- Warchief's Command: The Cape of Stranglethorn!
	28574,	-- Warchief's Command: The Hinterlands!
	28504,	-- Warchief's Command: Thousand Needles!
	-- #if AFTER 7.3.5
	49542,	-- Warchief's Command: Townlong Steppes!
	-- #endif
	28717,	-- Warchief's Command: Twilight Highlands!
	28557,	-- Warchief's Command: Uldum!
	28526,	-- Warchief's Command: Un'Goro Crater!
	-- #if AFTER 7.3.5
	49539,	-- Warchief's Command: Valley of the Four Winds!
	-- #endif
	27718,	-- Warchief's Command: Vashj'ir!
	28575,	-- Warchief's Command: Western Plaguelands!
	28545,	-- Warchief's Command: Winterspring!
	-- #if AFTER 6.2.0
	39180,	-- Warchief's Command: Zangarmarsh!
	-- #endif
	-- #if AFTER 7.3.5
	49534,	-- Warchief's Command: Zul'Drak!
	-- #endif
};
WARCHIEFS_COMMAND_BOARD_SYMLINK = {{ "select", "questID", unpack(ALL_WARCHIEFS_COMMAND_QUESTS) }};
local WARCHIEFS_COMMAND_BOARDS = {
	-- #if AFTER 4.0.1
	[HILLSBRAD_FOOTHILLS] = o(207279, {	-- Warchief's Command Board
		["coords"] = {
			{ 56.6, 47.0, HILLSBRAD_FOOTHILLS },
			{ 59.9, 63.5, HILLSBRAD_FOOTHILLS },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	[NORTHREND_DALARAN] = o(208317, {	-- Warchief's Command Board
		["coords"] = {
			{ 48.7, 39.6, NORTHREND_DALARAN },
			{ 59.2, 27.4, NORTHREND_DALARAN },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	[ORGRIMMAR] = o(206109, {	-- Warchief's Command Board
		["provider"] = { "o", 206116 },	-- Warchief's Command Board
		["coords"] = {
			-- Locations for 206109
			{ 49.8, 76.4, ORGRIMMAR },
			{ 58.3, 45.7, ORGRIMMAR },
			{ 45.6, 5.9, ORGRIMMAR },
			-- Locations for 206116
			{ 23.4, 94.2, ORGRIMMAR },
			{ 59.0, 44.4, ORGRIMMAR },
			{ 66.7, 49.5, ORGRIMMAR },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	[SILVERMOON_CITY] = o(207325, {	-- Warchief's Command Board
		["coord"] = { 62.5, 60.5, SILVERMOON_CITY },
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	[THUNDER_BLUFF] = o(207323, {	-- Warchief's Command Board
		["coord"] = { 42.6, 57.4, THUNDER_BLUFF },
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	[UNDERCITY] = o(207324, {	-- Warchief's Command Board
		["coords"] = {
			{ 44.0, 35.4, UNDERCITY },
			{ 66.5, 49.8, UNDERCITY },
			{ 61.8, 75.6, UNDERCITY },
		},
		["timeline"] = { ADDED_4_0_1 },
		["races"] = HORDE_ONLY,
	}),
	-- #endif
};
warchiefscommand = function(t)	-- Assigns Warchief's Command Board provider data based on the maps assigned to the object.
	return helper(WARCHIEFS_COMMAND_BOARDS, t);
end
-- #if BEFORE 4.0.1
end
-- #endif
