---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(SPECIAL, {
		i(169201, {	-- Fabious (MOUNT!)
			["description"] = "|c00CC2222!!DO NOT KILL!!|r\n|cFFFFD700Fabious|r spawns every couple hours, walks around for a couple minutes, then disappears. Use the |cFFFFD700S.E.L.F.I.E. Camera MkII|r to take a picture with him for the mount.",
			["coords"] = {
				{ 38.2, 9.60, NAZJATAR },
				{ 26.1, 29.7, NAZJATAR },
				{ 38.8, 53.0, NAZJATAR },
				{ 48.8, 85.2, NAZJATAR },
				{ 75.6, 51.6, NAZJATAR },
			},
			["cost"] = { { "i", 122674, 1 } },	-- S.E.L.F.I.E. Camera MkII
			["cr"] = 65090,	-- Fabious
		}),
		o(373439, {	-- Flipper Fish School
			["coord"] = { 72.8, 24.3, NAZJATAR },
			["cost"] = { { "i", 187662, 1 } },	-- Strange Goop
			["timeline"] = { ADDED_9_2_5 },
			["groups"] = {
				i(187922),	-- Flipper Fish
			},
		}),
		header(HEADERS.Achievement, 13715, {	-- From the Belly of the Jelly
			["description"] = "Feed the same |cFFFFD700Ravenous Slime|r a critter by using a |cFFFFD700Prismatic Crystal|r to charm them. Do this for 5 days to get a random pet from the cocoon. You can do this for each |cFFFFD700Ravenous Slime|r once per week.",
			["groups"] = {
				ach(13715),	-- From the Belly of the Jelly
				n(151218, {	-- Ravenous Slime (South)
					["coord"] = { 55.1, 48.8, NAZJATAR },
					["questID"] = 55427,
					["isDaily"] = true,
					["cost"] = { { "i", 167893, 1 } },	-- Prismatic Crystal
				}),
				n(151782, {	-- Ravenous Slime (East)
					["coord"] = { 71.7, 25.7, NAZJATAR },
					["questID"] = 55428,
					["isDaily"] = true,
					["cost"] = { { "i", 167893, 1 } },	-- Prismatic Crystal
				}),
				n(151874, {	-- Ravenous Slime (North)
					["coord"] = { 45.7, 24.1, NAZJATAR },
					["questID"] = 55429,
					["isDaily"] = true,
					["cost"] = { { "i", 167893, 1 } },	-- Prismatic Crystal
				}),
				n(151875, {	-- Ravenous Slime (West)
					["coord"] = { 32.9, 39.8, NAZJATAR },
					["questID"] = 55430,
					["isDaily"] = true,
					["cost"] = { { "i", 167893, 1 } },	-- Prismatic Crystal
				}),
				o_repeated(bubbleDown({ ["isWeekly"] = true }, {
					o(324414, {	-- Slimy Cocoon (South)
						["cr"] = 151218,	-- Ravenous Slime
						["coord"] = { 55.1, 48.8, NAZJATAR },
						["questID"] = 55475,
					}),
					o(324415, {	-- Slimy Cocoon (East)
						["cr"] = 151782,	-- Ravenous Slime
						["coord"] = { 71.7, 25.7, NAZJATAR },
						["questID"] = 55476,
					}),
					o(324416, {	-- Slimy Cocoon (North)
						["cr"] = 151874,	-- Ravenous Slime
						["coord"] = { 45.7, 24.1, NAZJATAR },
						["questID"] = 55477,
					}),
					o(324417, {	-- Slimy Cocoon (West)
						["cr"] = 151875,	-- Ravenous Slime
						["coord"] = { 32.9, 39.8, NAZJATAR },
						["questID"] = 55478,
					}),
					i(167809),	-- Slimy Darkhunter (PET!)
					i(167808),	-- Slimy Eel (PET!)
					i(167807),	-- Slimy Fangtooth (PET!)
					i(167810),	-- Slimy Hermit Crab (PET!)
					i(167806),	-- Slimy Octopode (PET!)
					i(167805),	-- Slimy Otter (PET!)
					i(167804),	-- Slimy Sea Slug (PET!)
				})),
			},
		}),
		o(330194, {	-- Prismatic Crystal
			i(167893),	-- Prismatic Crystal
		}),
		pvp(o(327652, {	-- War Supply Chest (A)
			["description"] = "Spawns randomly somewhere in the sky and parachutes downwards to the ground.",
			["races"] = ALLIANCE_ONLY,
			["coords"] = {
				{ 33.4, 38.8, NAZJATAR, },
				{ 40.9, 47.9, NAZJATAR, },
				{ 45.4, 70.5, NAZJATAR, },
				{ 47.3, 51.8, NAZJATAR, },
				{ 47.8, 46.5, NAZJATAR, },
				{ 59.3, 37.5, NAZJATAR, },
				{ 77.0, 36.7, NAZJATAR, },
			},
			["groups"] = {
				i(168802),	-- Nazjatar Battle Commendation
			},
		})),
		pvp(o(327650, {	-- War Supply Chest (H)
			["description"] = "Spawns randomly somewhere in the sky and parachutes downwards to the ground.",
			["races"] = HORDE_ONLY,
			["coords"] = {
				{ 33.4, 38.8, NAZJATAR, },
				{ 40.9, 47.9, NAZJATAR, },
				{ 45.4, 70.5, NAZJATAR, },
				{ 47.3, 51.8, NAZJATAR, },
				{ 47.8, 46.5, NAZJATAR, },
				{ 59.3, 37.5, NAZJATAR, },
				{ 77.0, 36.7, NAZJATAR, },
			},
			["groups"] = {
				i(168802),	-- Nazjatar Battle Commendation
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(NAZJATAR, {
		n(SPECIAL, {
			q(55470, { ["name"] = "South Slimy Cocoon Spawned", ["isWeekly"] = true }),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (55.1, 48.8)
			q(55471, { ["name"] = "East Slimy Cocoon Spawned", ["isWeekly"] = true }),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (71.7, 25.7)
			q(55472, { ["name"] = "North Slimy Cocoon Spawned", ["isWeekly"] = true }),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (45.7, 24.1)
			q(55473, { ["name"] = "West Slimy Cocoon Spawned", ["isWeekly"] = true }),	-- Ravenous Slime fed 5x to spawn the Slimy Cocoon (32.9, 39.8)
		}),
	}),
})));
