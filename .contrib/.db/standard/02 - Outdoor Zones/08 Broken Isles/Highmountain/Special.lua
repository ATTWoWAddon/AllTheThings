---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(BROKEN_ISLES, HIGHMOUNTAIN, {
	timeline = { ADDED_7_0_3_LAUNCH },
	groups = {
		n(SPECIAL, sharedData({
			sharedDescription = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."
		}, {
			hqt(42862, name(HEADERS.NPC, 109150, {	-- Malefica
				coord = { 32.8, 66.6, HIGHMOUNTAIN },
				crs = { 109150, 109155 },	-- Malefica
			})),
			hqt(42826, name(HEADERS.NPC, 109059, {	-- Dareer
				coord = { 39.8, 52.4, HIGHMOUNTAIN },
				crs = { 109059, 109062 },	-- Dareer
			})),
			hqt(42863, name(HEADERS.NPC, 109159, {	-- Holk the Wanderer
				coord = { 39.6, 58.2, 750 },
				crs = { 109159, 109161 },	-- Holk the Wanderer
			})),
		})),
	},
});
