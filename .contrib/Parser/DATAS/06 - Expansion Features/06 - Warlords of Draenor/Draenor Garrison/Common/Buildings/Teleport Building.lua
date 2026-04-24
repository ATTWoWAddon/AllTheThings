-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(BUILDINGS, {
				garrisonBuilding(39, {	-- Spirit Lodge / Mage Tower (rank 1: 37, rank 2: 38, rank 3: 39)
					["races"] = HORDE_ONLY,
					["groups"] = {
						n(ACHIEVEMENTS, {
							ach(9497, {		-- Finding Your Waystones
								["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
								["groups"] = {
									a(i(109063)),	-- Mage Tower, Level 3 [Blueprints]
									h(i(116197)),	-- Spirit Lodge, Level 3 [Blueprints]
								},
							}),
						}),
						n(QUESTS, {
							q(36848, {	-- Ogre Waygates
								["qgs"] = {
									77367,	-- Archmage Kem (A)
									79836,	-- Gez'la (H)
								},
								["cost"] = { { "i", 117491, 25 } },	-- 25x Ogre Waystone
							}),
							q(38354, {	-- Portable Portals
								["qg"] = 77367,	-- Archmage Kem
								["races"] = ALLIANCE_ONLY,
							}),
							q(38351, {	-- Portable Portals
								["qg"] = 79836,	-- Gez'la
								["races"] = HORDE_ONLY,
							}),
						}),
					},
				}),
			}),
		})),
	})
);
