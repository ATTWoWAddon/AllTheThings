---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(FLIGHT_PATHS, {
		fp(2410, {	-- Ashen Strand
			["coord"] = { 31.8, 38.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
		}),
		fp(2411, {	-- Ashen Strand
			["coord"] = { 34.5, 37.3, NAZJATAR },
			["races"] = HORDE_ONLY,
		}),
		fp(2437, {	-- Ekka's Hideaway
			["coord"] = { 64.0, 51.8, NAZJATAR },
			["races"] = HORDE_ONLY,
		}),
		fp(2406, {	-- Elun'alor Temple
			["coord"] = { 74.0, 40.0, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
		}),
		fp(2403, {	-- Kelya's Grave
			["coord"] = { 74.2, 24.9, NAZJATAR },
			["description"] = "Must complete the |cFFFFD700On Ghostly Wings|r quest to unlock this path.",
			["sourceQuest"] = 56422,	-- On Ghostly Wings
		}),
		fp(2408, {	-- Mezzamere
			["description"] = "Must complete the |cFFFFD700Where the Road Leads|r quest to unlock this path.",
			["coord"] = { 39.9, 54.1, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuest"] = 55175,	-- Where the Road Leads
		}),
		fp(2404, {	-- Newhome
			["coord"] = { 47.5, 63.3, NAZJATAR },
			["races"] = HORDE_ONLY,
		}),
		fp(2483, {	-- The Tidal Conflux (A)
			["coord"] = { 49.8, 23.6, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
			["sourceQuests"] = {
				56325,	-- Changing Tides
			},
		}),
		fp(2482, {	-- The Tidal Conflux (H)
			["coord"] = { 51.1, 23.6, NAZJATAR },
			["races"] = HORDE_ONLY,
			["sourceQuests"] = {
				55799,	-- The Tide Turns
			},
		}),
		fp(2407, {	-- Utama's Stand
			["coord"] = { 61.7, 36.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
		}),
		fp(2412, {	-- Wreck of the Hungry Riverbeast
			["coord"] = { 36.1, 82.3, NAZJATAR },
			["races"] = HORDE_ONLY,
		}),
		fp(2409, {	-- Wreck of the Old Blanchy
			["coord"] = { 44.5, 85.5, NAZJATAR },
			["races"] = ALLIANCE_ONLY,
		}),
		fp(2405, {	-- Zin'Azshari
			["coord"] = { 79.5, 37.9, NAZJATAR },
			["races"] = HORDE_ONLY,
		}),
	}),
})));
