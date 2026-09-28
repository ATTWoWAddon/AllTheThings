---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(TREASURES, {
				o(248854, {	-- Desmond's Lockbox
					["questID"] = 41929,
					["coord"] = { 28.7, 64.4, LEGION_DALARAN },
					["classes"] = { ROGUE },
				}),
				o(269037, {	-- Loose Pebble
					["description"] = "Used to move Dog from your Garrison into Dalaran.",
					["coords"] = {
						{ 37.9, 29.0, LEGION_DALARAN },
						{ 41.1, 54.3, LEGION_DALARAN },
						{ 42.9, 43.2, LEGION_DALARAN },	-- unconf.
						{ 44.0, 17.4, LEGION_DALARAN },
						{ 46.5, 53.5, LEGION_DALARAN },
						{ 47.6, 28.9, LEGION_DALARAN },	-- unconf.
						{ 49.0, 70.3, LEGION_DALARAN },	-- unconf.
						{ 52.0, 61.8, LEGION_DALARAN },
						{ 54.2, 40.5, LEGION_DALARAN },
						{ 54.9, 52.5, LEGION_DALARAN },
					},
					["groups"] = {
						i(147420),	-- Pebble
					},
				}),
				o(244965, {	-- Sheddle's Chest
					["description"] = "Item spawns shortly after midnight on Saturday and stays up for 2 hours (during the Saturday to Sunday transition). To find this chest you go to the upper level of the |cFFFFD700Photonic Playground|r, which is connected to the toy shop (you will know it's the right area if you see |cFFFFD700Shandy Glossgleam|r there with his pool). You will either want to fly past |cFFFFD700Shandy Glossgleam|r or go up the stairs to reach the area. Once you walk in you will see the chest in between a white chair and a brown chair.",
					["coord"] = { 45.1, 46.9, LEGION_DALARAN },
					["icon"] = 1001980,
					["groups"] = {
						i(129055),	-- Shoe Shine Kit (TOY!)
					},
				}),
				o(257999, {	-- Technique: Tome of the Tranquil Mind
					["requireSkill"] = INSCRIPTION,
					["coord"] = { 41.34, 36.05, 625 },
					["groups"] = {
						i(141447),	-- Technique: Tome of the Tranquil Mind (RECIPE!)
					},
				}),
				o(252331, {	-- Traveler Pepe
					["coords"] = {
						{ 34.1, 49.4, LEGION_DALARAN },
						{ 42.3, 57.5, LEGION_DALARAN },	-- Near Fruit Vendor
						{ 48.0, 58.0, LEGION_DALARAN },	-- Stairs to Curiositiese & Moore
						{ 47.7, 32.3, LEGION_DALARAN },	-- Magus Commerce Exchange well
						{ 47.3, 37.6, LEGION_DALARAN },	-- Legerdemain Lounge
						{ 40.0, 28.0, LEGION_DALARAN },	-- Things of the Past
						{ 42.0, 19.0, LEGION_DALARAN },	-- Antonidas Memoria
						{ 36.0, 37.0, LEGION_DALARAN },	-- Angelique Butler (First Aid Shop)
						{ 72.7, 52.2, LEGION_DALARAN },	-- Rock by Flightmaster
					},
					["groups"] = {
						i(139632),	-- A Tiny Pair of Goggles (Pepe!)
						ach(10770),	-- The Tangerine Traveler
					},
				}),
				o(266851, {	-- Wand of Simulated Life
					["description"] = "Item is sitting on a table upstairs in The Legerdemain Lounge.",
					["icon"] = 133836,
					["coord"] = { 47.8, 41.5, LEGION_DALARAN },
					["timeline"] = { ADDED_7_1_0 },
					["groups"] = { i(143534) },	-- Wand of Simulated Life (TOY!)
				}),
			}),
		}),
	}),
});
