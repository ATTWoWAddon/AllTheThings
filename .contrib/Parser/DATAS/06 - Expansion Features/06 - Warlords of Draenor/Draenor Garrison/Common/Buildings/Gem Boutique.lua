-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(132, {	-- Gem Boutique (rank 1: 96, rank 2: 131, rank 3: 132)
					n(QUESTS, {
						q(37320, {	-- Jewelcrafting Special Order: A Fine Choker
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37321, {	-- Jewelcrafting Special Order: A Yellow Brighter Than Gold
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37323, {	-- Jewelcrafting Special Order: Blue the Shade of Sky and Sea
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37319, {	-- Jewelcrafting Special Order: Wedding Bands
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37324, {	-- Out of Stock: Blackrock Ore
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(37325, {	-- Out of Stock: True Iron Ore
							["qg"] = 88545,	-- Jewelcrafting Follower - Alliance
							["isDaily"] = true,
						}),
						q(36644, {	-- Your First Jewelcrafting Work Order
							["qg"] = 77356,	-- Costan Highwall
							["races"] = ALLIANCE_ONLY,
						}),
						q(37573, {	-- Your First Jewelcrafting Work Order
							["qg"] = 79832,	-- Dorogarr
							["races"] = HORDE_ONLY,
						}),
					}),
					n(VENDORS, {
						n(77356, {	-- Costan Highwall <Jewelcrafter>
							["races"] = ALLIANCE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87052}},	-- Artificer Harlaan <Jewelcrafting Designs>
							["groups"] = {
								r(170832, {["u"] = TRAINING}),	-- Taladite Crystal [Vendor]
							},
						}),
						n(79832, {	-- Dorogarr <Jewelcrafter>
							["races"] = HORDE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87548}},	-- Kaevan Highwit <Jewelcrafting Designs>
							["groups"] = {
								r(170832, {["u"] = TRAINING}),	-- Taladite Crystal [Vendor]
							},
						}),
					}),
				}),
			}),
		})),
	})
);
