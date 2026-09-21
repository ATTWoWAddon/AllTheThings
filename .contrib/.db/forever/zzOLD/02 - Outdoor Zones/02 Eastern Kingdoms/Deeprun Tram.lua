---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- CRIEVE NOTE: Don't touch this file without asking.
-- Burden of Truth: Classic & TBC.
root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(DEEPRUN_TRAM, {
		["lore"] = "The Deeprun Tram is a long, fully enclosed, underground (and partially underwater) set of double tracks upon which rolls two sets of three wagons, all credited to the gnomes' technical engineering. The service is fast and smooth, and is provided free of charge to travelers between the Alliance-aligned cities of Ironforge and Stormwind City.",
		["zone-text-areaID"] = 2257,	-- Deeprun Tram's mapID doesn't exist until later as well, maybe Cataclysm?
		["icon"] = 133861,
		["groups"] = {
			n(QUESTS, {
				q(6661, {	-- Deeprun Rat Roundup
					["qg"] = 12997,	-- Monty
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/5 Rats Captured
							["provider"] = { "i", 17117 },	-- Rat Catcher's Flute
							["cr"] = 13016,	-- Deeprun Rat
						}),
					},
				}),
				q(6662, {	-- Me Brother, Nipsy
					["sourceQuest"] = 6661,	-- Deeprun Rat Roundup
					["providers"] = {
						{ "n", 12997 },	-- Monty
						{ "i", 17118 },	-- Carton of Mystery Meat
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						i(17119),	-- Deeprun Rat Kabob
					},
				}),
			}),
		},
	}),
}));
