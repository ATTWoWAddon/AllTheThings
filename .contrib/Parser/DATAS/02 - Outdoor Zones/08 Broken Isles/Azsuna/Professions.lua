---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(PROFESSIONS, {
				prof(FISHING, {
					faction(FACTION_ILYSSIA, {	-- Ilyssia of the Waters
						["creatureID"] = 120266,
						["coord"] = { 43.2, 40.6, AZSUNA },
						["description"] = "This Fisherfriend NPC is located at: |cFFFFFFFF43.2, 40.6|r north of Illidari Stand.\n\nThe Fisherfriend NPC's will not always be up and only one is up at any given time. You will have to either travel to the zone, ask a friend or check group finder to see if they are up.\n\nWhen fishing for the item for this particular fisherfriend make sure that you are close enough so that you recive the buff |cFFFFD700Something's Fishy|r, otherwise you won't be able to receive the turn-in items or the boss that is summoned.\n\nIt is recommended to be in a group in order to be able to reach Best Friend the quickest.",
						["requireSkill"] = FISHING,
						["groups"] = {
							i(146848, {	-- Fragmented Enchantment
								-- extra info for the item can go here
							}),
							i(147308, {	-- Crate of Bobbers: Enchanted Bobber (TOY!)
								["cost"] = { { "i", 146848, 100 } },	-- 100x Fragmented Enchantment
							}),
							i(152555, {	-- Ghost Shark (PET!)
								["cost"] = { { "i", 146848, 50 } },	-- 50x Fragmented Enchantment
								["timeline"] = { ADDED_7_3_0 },
							}),
							i(133703, {	-- Pearlescent Conch
								["cost"] = { { "i", 146848, 25 } },	-- 25x Fragmented Enchantment
								["sym"] = {{"fill"}},
							}),
							i(133704, {	-- Rusty Queenfish Brooch
								["cost"] = { { "i", 146848, 25 } },	-- 25x Fragmented Enchantment
								["sym"] = {{"fill"}},
							}),
							i(133701, {	-- Skrog Toenail
								["cost"] = { { "i", 146848, 25 } },	-- 25x Fragmented Enchantment
								["sym"] = {{"fill"}},
							}),
							i(124107, {	-- Cursed Queenfish
								["cost"] = { { "i", 146848, 10 } },	-- 25x Fragmented Enchantment
							}),
						},
					}),
					i(137695),	-- Schematic: Reaves Module: Wormhole Generator Mode (RECIPE!)
					i(137775, {	-- Vantus Rune Technique: Chronomatic Anomaly [Rank 3] (RECIPE!)
						["description"] = "Cursed Queenfish pools are recommended, as they can give access to Ghostly Queenfish pools which do not deplete so long as the buff lasts.",
						["timeline"] = { ADDED_7_1_0 },
					}),
				}),
			}),
		}),
	}),
});
