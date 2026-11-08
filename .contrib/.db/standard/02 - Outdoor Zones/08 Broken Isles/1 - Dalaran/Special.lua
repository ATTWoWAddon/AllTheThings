---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(BROKEN_ISLES, LEGION_DALARAN, {
	n(SPECIAL, sharedData({
		sharedDescription = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."
	}, {
		hqt(42763, name(HEADERS.NPC, 108628, {	-- Armond Thaco
			crs = { 108628 },	-- Armond Thaco
			coords = {
				{ 60.8, 44.6, LEGION_DALARAN },
				{ 55.4, 54.2, LEGION_DALARAN },
				{ 50.6, 59.4, LEGION_DALARAN },
			},
		})),
		hqt(42813, name(HEADERS.NPC, 108925, {	-- Lord Adder
			crs = { 108925, 108938 },	-- Lord Adder
			coords = {
				{ 46.6, 22.2, LEGION_DALARAN },
				{ 49.4, 29.8, LEGION_DALARAN },
				{ 44.2, 36.0, LEGION_DALARAN },
				{ 50.4, 35.8, LEGION_DALARAN },
				{ 60.8, 44.6, LEGION_DALARAN },
			},
		})),
	})),
});
