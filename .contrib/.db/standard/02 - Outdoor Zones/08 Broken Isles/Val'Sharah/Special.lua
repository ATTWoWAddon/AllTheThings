---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(BROKEN_ISLES, VALSHARAH, {
	timeline = { ADDED_7_0_3_LAUNCH },
	groups = {
		n(SPECIAL, sharedData({
			sharedDescription = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."
		},{
			hqt(42817, name(HEADERS.NPC, 108978, {	-- Astry Fallenbough
				crs = { 108978 },	-- Astry Fallenbough
				coords = {
					{ 53.0, 55.6, VALSHARAH },
					{ 53.2, 56.8, VALSHARAH },
					{ 53.4, 54.8, VALSHARAH },
					{ 53.8, 57.0, VALSHARAH },
				},
			})),
			hqt(42816, name(HEADERS.NPC, 108955, {	-- Maxwell Caprina
				crs = { 108955, 108964 },	-- Maxwell Caprina
				coord = { 41.8, 60.0, VALSHARAH },
			})),
		})),
	},
});
