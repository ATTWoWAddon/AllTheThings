-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(143, {	-- Storehouse (rank 1: 51, rank 2: 142, rank 3: 143)
					n(QUESTS, {
						{	-- The Final Toy
							["allianceQuestData"] = q(37087, {	-- Lost in Transition
								["provider"] = { "n", 84857 },	-- Kyra Goldhands <Banker>
							}),
							["hordeQuestData"] = q(37060, {	-- Lost in Transition
								["provider"] = { "n", 79862 },	-- Yorn Longhoof <Banker>
							}),
							["groups"] = {
								o(237039, {	-- Crate of Surplus Material
									i(118417),	-- Crate of Surplus Materials (QI!)
								}),
							},
						},
					}),
				}),
			}),
		})),
	})
);
