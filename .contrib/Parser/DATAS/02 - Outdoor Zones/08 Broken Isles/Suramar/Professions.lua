---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(SURAMAR, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_SHALETH, {	-- Sha'leth
						["creatureID"] = 120459,
						["coord"] = { 50.6, 49.3, SURAMAR },
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF50.6, 49.3|r in The Grand Promenade near the edge of Suramar City.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["groups"] = {
							i(146962, {		-- Golden Minnow
								-- extra info for the item can go here
							}),
							i(147311, {	-- Crate of Bobbers: Replica Gondola (TOY!)
								["cost"] = { { "i", 146962, 100 }, },	-- 100x Golden Minnow
							}),
							i(133717, {	-- Enchanted Lure
								["cost"] = { { "i", 146962, 25 }, },	-- 25x Golden Minnow
								["sym"] = {{"fill"}},
							}),
							i(133719, {	-- Sleeping Murloc
								["cost"] = { { "i", 146962, 25 }, },	-- 25x Golden Minnow
								["sym"] = {{"fill"}},
							}),
							i(133720, {	-- Demonic Detritus
								["cost"] = { { "i", 146962, 25 }, },	-- 25x Golden Minnow
								["sym"] = {{"fill"}},
							}),
							i(124111, {	-- Runescale Koi
								["cost"] = { { "i", 146962, 10 }, },	-- 10x Golden Minnow
							}),
							i(143748, {	-- Leyscale Koi
								["cost"] = { { "i", 146962, 5 }, },	-- 5x Golden Minnow
							}),
						},
					}),
					i(137845),	-- Design: Maelstrom Band (Rank 3)
					i(137695),	-- Schematic: Reaves Module: Wormhole Generator Mode (RECIPE!)
				}),
			}),
		}),
	}),
});
