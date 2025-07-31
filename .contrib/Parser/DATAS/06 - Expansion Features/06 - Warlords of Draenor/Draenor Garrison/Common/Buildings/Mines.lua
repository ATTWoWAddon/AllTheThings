-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(63, {	-- Frostwall Mines (rank 1: 61, rank 2: 62, rank 3: 63)
					n(ACHIEVEMENTS, {
						ach(9453, {	-- Draenic Stone Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(116249),	-- Frostwall Mines, Level 3
								i(111996),	-- Lunarfall Excavation, Level 3
							},
						}),
					}),
					n(TREASURES, {
						o(232541, {	-- Mine Cart
							i(118897),	-- Miner's Coffee
							i(118903),	-- Preserved Mining Pick
						}),
					}),
				}),
			}),
		})),
	})
);
