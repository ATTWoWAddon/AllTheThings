-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(BUILDINGS, {
			garrisonBuilding(124, {	-- Engineering Works (rank 1: 91, rank 2: 123, rank 3: 124)
				n(QUESTS, {
					q(36646, {	-- Your First Engineering Work Order
						["provider"] = { "n", 77365 },	-- Zaren Hoffle
						["races"] = ALLIANCE_ONLY,
					}),
					q(37571, {	-- Your First Engineering Work Order
						["provider"] = { "n", 79826 },	-- Pozzlow
						["races"] = HORDE_ONLY,
					}),
				}),
				n(VENDORS, {
					n(88607, {	-- Engineering Follower <Engineering Entrepreneur>
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(117438),	-- Gnomish Net Launcher
							i(117403),	-- Gyro-Radiant Reflector
							i(117402),	-- Ultra-Electrified Reflector
						},
					}),
					n(88610, {	-- Engineering Follower <Engineering Entrepreneur>
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(117438),	-- Gnomish Net Launcher
							i(117403),	-- Gyro-Radiant Reflector
							i(117402),	-- Ultra-Electrified Reflector
						},
					}),
					n(79826, {	-- Pozzlow
						["races"] = HORDE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87552}},	-- Nik Steelrings <Engineering Plans>
					}),
					n(77365, {	-- Zaren Hoffle <Engineer>
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{"sub", "common_vendor", 87065}},	-- Sean Catchpole <Engineering Plans>
					}),
				}),
			}),
		}),
	})),
})));
