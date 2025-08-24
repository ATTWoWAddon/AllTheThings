-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(BUILDINGS, {
			garrisonBuilding(118, {	-- The Forge (rank 1: 60, rank 2: 117, rank 3: 118)
				n(QUESTS, {
					q(35168, {	-- Your First Blacksmithing Work Order
						["provider"] = { "n", 77359 },	-- Auria Irondreamer
						["races"] = ALLIANCE_ONLY,
					}),
					q(37569, {	-- Your First Blacksmithing Work Order
						["provider"] = { "n", 79867 },	-- Orgek Ironhand
						["races"] = HORDE_ONLY,
					}),
				}),
				n(VENDORS, {
					n(77359, {	-- Auria Irondreamer <Blacksmith>
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87062}},	-- Royce Bigbeard <Blacksmithing Plans>
					}),
					n(79867, {	-- Orgek Ironhand
						["races"] = HORDE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87550}},	-- Nonn Threeratchet <Blacksmithing Plans>
					}),
				}),
			}),
		}),
	})),
})));
