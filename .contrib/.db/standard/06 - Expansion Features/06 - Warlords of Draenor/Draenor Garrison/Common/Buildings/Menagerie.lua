-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(168, {	-- Menagerie (rank 1: 42, rank 2: 167, rank 3: 168)
					n(VENDORS, {
						n(94516, {	-- Giada Goldleash
							["races"] = HORDE_ONLY,
							["sym"] = { { "select", "itemID",
								127701,	-- Glowing Sporebat (PET!)
								127703,	-- Dusty Sporewing (PET!)
								127704,	-- Bloodthorn Hatchling (PET!)
								127705,	-- Lost Netherpup (PET!)
							}},
							["groups"] = {
								i(127707, {	-- Indestructible Bone (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 50 },
										-- #endif
									},
								}),
								i(127696, {	-- Magic Pet Mirror (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 500 },	-- 500x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 500 },
										-- #endif
									},
								}),
								i(127695, {	-- Spirit Wand (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 100 },
										-- #endif
									},
								}),
							},
						}),
						n(94512, {	-- Tiffy Trapspring <Exotic Pets and Accessories>
							["races"] = ALLIANCE_ONLY,
							["sym"] = { { "select", "itemID",
								127701,	-- Glowing Sporebat (PET!)
								127703,	-- Dusty Sporewing (PET!)
								127704,	-- Bloodthorn Hatchling (PET!)
								127705,	-- Lost Netherpup (PET!)
							}},
							["groups"] = {
								i(127707, {	-- Indestructible Bone (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 50 },	-- 50x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 50 },
										-- #endif
									},
								}),
								i(127696, {	-- Magic Pet Mirror (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 500 },	-- 500x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 500 },
										-- #endif
									},
								}),
								i(127695, {	-- Spirit Wand (TOY!)
									["cost"] = {
										-- #if BEFORE 10.2.5
										{ "i", 116415, 100 },	-- 100x Shiny Pet Charm
										-- #else
										{ "i", POLISHED_PET_CHARM, 100 },
										-- #endif
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
