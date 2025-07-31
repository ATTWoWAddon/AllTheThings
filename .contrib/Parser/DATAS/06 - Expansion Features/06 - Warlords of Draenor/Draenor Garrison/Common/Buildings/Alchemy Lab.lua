-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(120, {	-- Alchemy Lab (rank 1: 76, rank 2: 119, rank 3: 120)
					n(QUESTS, {
						q(37270, {	-- Alchemy Experiment
							["qgs"] = {
								88145,	-- Alchemy Follower - Alliance
								88392,	-- Alchemy Follower - Horde
							},
							["isDaily"] = true,
						}),
						q(35342, {	-- The Mysterious Flask
							["provider"] = { "i", 113103 },	-- Mysterious Flask
							["requireSkill"] = ALCHEMY,
							["races"] = ALLIANCE_ONLY,
						}),
						q(35058, {	-- The Mysterious Flask
							["provider"] = { "i", 112566 },	-- Mysterious Flask
							["requireSkill"] = ALCHEMY,
							["races"] = HORDE_ONLY,
						}),
						q(35343, {	-- The Young Alchemist
							["sourceQuests"] = { 35342 },	-- The Mysterious Flask
							["provider"] = { "n", 82466 },	-- Aenir
							["coord"] = { 47.2, 45.8, LUNARFALL },
							["requireSkill"] = ALCHEMY,
							["races"] = ALLIANCE_ONLY,
						}),
						q(35103, {	-- The Alchemist
							["sourceQuests"] = { 35058 },	-- The Mysterious Flask
							["provider"] = { "n", 81166 },	-- Refugee Lo'nash
							["coord"] = { 45.4, 50.4, FROSTWALL },
							["requireSkill"] = ALCHEMY,
							["races"] = HORDE_ONLY,
						}),
						q(36641, {	-- Your First Alchemy Work Order
							["provider"] = { "n", 77363 },	-- Mary Kearie
							["races"] = ALLIANCE_ONLY,
						}),
						q(37568, {	-- Your First Alchemy Work Order
							["provider"] = { "n", 79813 },	-- Albert de Hyde
							["races"] = HORDE_ONLY,
						}),
					}),
					n(VENDORS, {
						n(79813, {	-- Albert de Hyde <Alchemist>
							["races"] = HORDE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87542}},	-- Joshua Alvarez <Alchemy Recipes>
						}),
						n(77363, {	-- Mary Kearie <Alchemist>
							["races"] = ALLIANCE_ONLY,
							["sym"] = {{"sub", "common_vendor", 87048}},	-- Katherine Joplin <Alchemy Recipes>
						}),
					}),
				}),
			}),
		})),
	})
);
