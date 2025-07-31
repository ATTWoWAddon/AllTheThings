---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(LEGION_DALARAN, {
			n(RARES, {
				n(SPECIAL, sharedData({["sharedDescription"] = "Can be made hostile by Demon Hunters using 'Spectral Sight' or Paladins wielding 'Truthguard' allowing anyone to get credit."},{
					n(108628, {	-- Armond Thaco
						["questID"] = 42763,
						["coords"] = {
							{ 60.8, 44.6, LEGION_DALARAN },
							{ 55.4, 54.2, LEGION_DALARAN },
							{ 50.6, 59.4, LEGION_DALARAN },
						},
					}),
					n(108925, {	-- Lord Adder
						["questID"] = 42813,
						["crs"] = { 108938 },	-- Lord Adder
						["coords"] = {
							{ 46.6, 22.2, LEGION_DALARAN },
							{ 49.4, 29.8, LEGION_DALARAN },
							{ 44.2, 36.0, LEGION_DALARAN },
							{ 50.4, 35.8, LEGION_DALARAN },
							{ 60.8, 44.6, LEGION_DALARAN },
						},
					}),
				})),
			}),
		}),
	}),
});
