---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(HIGHMOUNTAIN, {
		n(SPECIAL, sharedData({
			["sharedDescription"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."
		}, {
			n(109150, {	-- Malefica
				["questID"] = 42862,
				["crs"] = { 109155 },	-- Malefica
				["coord"] = { 32.8, 66.6, HIGHMOUNTAIN },
			}),
			n(109059, {	-- Dareer
				["questID"] = 42826,
				["coord"] = { 39.8, 52.4, HIGHMOUNTAIN },
				["crs"] = { 109062 },	-- Dareer
			}),
			n(109159, {	-- Holk the Wanderer
				["questID"] = 42863,
				["coord"] = { 39.6, 58.2, 750 },
				["crs"] = { 109161 },	-- Holk the Wanderer
			}),
		})),
	}),
})));
