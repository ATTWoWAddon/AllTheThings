-------------------------------------------
--     S E C R E T S     M O D U L E     --
-------------------------------------------
root(ROOTS.Secrets, expansion(EXPANSION.SL, bubbleDown({ ["timeline"] = { ADDED_9_0_1 } }, {
	header(HEADERS.Spell, 329900, {	-- Glimr
		["displayID"] = 96259,
		["modelScale"] = 1.1,
		["groups"] = {
			q(60605, {	-- Glimmerfin Scale
				["provider"] = { "o", 352909 },	-- Glimmerfin Scale
				["coord"] = { 18.4, 88.2, GRIZZLY_HILLS },
			}),
			q(60606, {	-- Glimmerfin Welcome
				["provider"] = { "n", 25197 },	-- King Mrgl-Mrgl
				["sourceQuests"] = { 60605 },	-- Glimmerfin Scale
				["coord"] = { 43.5, 13.9, BOREAN_TUNDRA },
				["groups"] = {
					i(180010),	-- Meaty Crab Chunk (QI!)
				},
			}),
			q(60614, {	-- A Big Horkin' Task
				["provider"] = { "n", 169414 },	-- Glimmergut
				["sourceQuests"] = { 60606 },	-- Glimmerfin Welcome
				["coord"] = { 17.8, 93.2, GRIZZLY_HILLS },
				["groups"] = {
					i(180025),	-- Pile of Blubberfat (QI!)
				},
			}),
			q(60615, {	-- Seer of the Waves
				["provider"] = { "n", 169414 },	-- Glimmergut
				["sourceQuests"] = { 60614 },	-- A Big Horkin' Task
				["coord"] = { 17.8, 93.2, GRIZZLY_HILLS },
			}),
			q(60616, {	-- Pearl in the Deeps
				["provider"] = { "n", 169415 },	-- Glimmerfin Oracle
				["sourceQuests"] = { 60615 },	-- Seer of the Waves
				["coord"] = { 17.1, 93.8, GRIZZLY_HILLS },
				["groups"] = {
					i(180026),	-- Giant Pearl (QI!)
				},
			}),
			q(60617, {	-- Trainer's Test
				["provider"] = { "n", 169415 },	-- Glimmerfin Oracle
				["sourceQuests"] = { 60616 },	-- Pearl in the Deeps
				["coord"] = { 17.1, 93.8, GRIZZLY_HILLS },
			}),
			q(60619, {	-- Wrap it Up
				["provider"] = { "n", 169415 },	-- Glimmerfin Oracle
				["sourceQuests"] = { 60617 },	-- Trainer's Test
				["coord"] = { 17.1, 93.8, GRIZZLY_HILLS },
				["groups"] = {
					i(180031),	-- Bulbous Seaweed Stalk (QI!)
					i(180033),	-- Warm Seaweed Stalk (QI!)
					i(180032),	-- Young Seaweed Stalk (QI!)
				},
			}),
			q(60620, {	-- Guardian of the Smallest
				["provider"] = { "n", 169415 },	-- Glimmerfin Oracle
				["sourceQuests"] = { 60619 },	-- Wrap it Up
				["coord"] = { 17.1, 93.8, GRIZZLY_HILLS },
				["groups"] = {
					i(180034),	-- Glimr (PET!)
				},
			}),
		},
	})
})));