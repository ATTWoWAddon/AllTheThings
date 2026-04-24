---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		n(SPECIAL, sharedData({["sharedDescription"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."},{
			n(108978, {	-- Astry Fallenbough
				["coords"] = {
					{ 53.0, 55.6, VALSHARAH },
					{ 53.2, 56.8, VALSHARAH },
					{ 53.4, 54.8, VALSHARAH },
					{ 53.8, 57.0, VALSHARAH },
				},
				["questID"] = 42817,
			}),
			n(108955, {	-- Maxwell Caprina
				["questID"] = 42816,
				["crs"] = { 108964 },	-- Maxwell Caprina
				["coord"] = { 41.8, 60.0, VALSHARAH },
			}),
		})),
	}),
})));
