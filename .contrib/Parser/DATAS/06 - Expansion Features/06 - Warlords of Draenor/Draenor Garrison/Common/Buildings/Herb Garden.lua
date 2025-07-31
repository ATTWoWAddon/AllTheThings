-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(137, {	-- Herb Garden (rank 1: 29, rank 2: 136, rank 3: 137)
					n(ACHIEVEMENTS, {
						ach(9454, {	-- Draenic Seed Collector
							["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
							["groups"] = {
								i(111997),	-- Herb Garden, Level 3
							},
						}),
					}),
					n(VENDORS, {
						n(85344, {	-- Naron Bloomthistle
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(110721, {	-- Crazy Carrot (PET!)
									["cost"] = { { "i", 116053, 1000 }, },	-- 1,000x Draenic Seeds
								}),
								i(118568, {	-- Garden Hoe
									["cost"] = {
										{ "g", 25000000 },		-- 2,500g
										{ "i", 116053, 500 },	-- 500x Draenic Seeds
									},
								}),
								i(118560, {	-- Garden Pitchfork
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118562, {	-- Garden Scythe
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118559, {	-- Garden Shovel
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118563, {	-- Garden Sickle
									["cost"] = {
										{ "g", 25000000 },		-- 2,500g
										{ "i", 116053, 500 },	-- 500x Draenic Seeds
									},
								}),
								i(116916, {	-- Gorepetal's Grasp
									["cost"] = {
										{ "c", 824, 2000 },	-- 2000x Garrison Resources
									},
								}),
							},
						}),
					}),
					n(VENDORS, {
						n(81981, {	-- Tarnon
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(110721, {	-- Crazy Carrot (PET!)
									["cost"] = { { "i", 116053, 1000 }, },	-- 1,000x Draenic Seeds
								}),
								i(118568, {	-- Garden Hoe
									["cost"] = {
										{ "g", 25000000 },		-- 2,500g
										{ "i", 116053, 500 },	-- 500x Draenic Seeds
									},
								}),
								i(118560, {	-- Garden Pitchfork
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118562, {	-- Garden Scythe
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118559, {	-- Garden Shovel
									["cost"] = {
										{ "g", 50000000 },		-- 5,000g
										{ "i", 116053, 1000 },	-- 1,000x Draenic Seeds
									},
								}),
								i(118563, {	-- Garden Sickle
									["cost"] = {
										{ "g", 25000000 },		-- 2,500g
										{ "i", 116053, 500 },	-- 500x Draenic Seeds
									},
								}),
								i(116916, {	-- Gorepetal's Grasp
									["cost"] = {
										{ "c", 824, 2000 },	-- 2000x Garrison Resources
									},
								}),
							},
						}),
					}),
				}),
			}),
		})),
	})
);
