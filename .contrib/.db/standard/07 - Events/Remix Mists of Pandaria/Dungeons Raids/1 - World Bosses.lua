-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(WORLD_BOSSES, {
		["isRaid"] = true,
		["groups"] = sharedData({
			["isRaid"] = true,
		},{
			e(814, {	-- Nalak, The Storm Lord
				["crs"] = { 69099 },	-- Nalak, the Storm Lord
				["questID"] = 32518,
				["coord"] = { 60.0, 37.7, ISLE_OF_THUNDER },
				["groups"] = {
					ach(20019),	-- Nalak, the Storm Lord
				},
			}),
			e(826, {	-- Oondasta
				["questID"] = 32519,
				["coord"] = { 49.9, 56.8, ISLE_OF_GIANTS },
				["crs"] = { 69161 },	-- Oondasta
				["groups"] = {
					ach(20020),	-- Oondasta
				},
			}),
			e(861, {	-- Ordos, Fire-God of the Yaungol
				["questID"] = 33118,
				["coord"] = { 54.9, 17.3, TIMELESS_ISLE },
				["crs"] = { 72057 },	-- Ordos, Fire-God of the Yaungol
				["groups"] = {
					ach(20025),	-- Ordos
				},
			}),
			e(725, {	-- Saylis's Warband [Galleon]
				["questID"] = 32098,
				["coord"] = { 70.79, 63.51, VALLEY_OF_THE_FOUR_WINDS },
				["crs"] = { 62346 },	-- Galleon
				["groups"] = {
					ach(20017),	-- Salyis's Warband
				},
			}),
			e(691, {	-- Sha of Anger
				["questID"] = 32099,
				["coord"] = { 53.53, 65.26, KUN_LAI_SUMMIT },
				["crs"] = { 60491 },	-- Sha of Anger
				["groups"] = {
					ach(20018),	-- Sha of Anger
				},
			}),
			header(HEADERS.Achievement, 8535, {	-- Celestial Challenge
				["questID"] = 33117,
				["coord"] = { 38.87, 55.29, TIMELESS_ISLE },
				["crs"] = {
					71952,	-- Chi-Ji, The Red Crane
					71954,	-- Niuzao, The Black Ox
					71953,	-- Xuen, The White Tiger
					71955,	-- Yu'lon, The Jade Serpent
				},
				["groups"] = {
					e(857, {	-- Chi-Ji, The Red Crane
						["isRaid"] = true,
						["crs"] = { 71952 },	-- Chi-Ji, The Red Crane
						["groups"] = {
							ach(20021),	-- Chi-ji, the Red Crane
						},
					}),
					e(859, {	-- Niuzao, The Black Ox
						["isRaid"] = true,
						["crs"] = { 71954 },	-- Niuzao, The Black Ox
						["groups"] = {
							ach(20023),	-- Niuzao, the Black Ox
						},
					}),
					e(860, {	-- Xuen, The White Tiger
						["isRaid"] = true,
						["crs"] = { 71953 },	-- Xuen, The White Tiger
						["groups"] = {
							ach(20024),	-- Xuen, the White Tiger
						},
					}),
					e(858, {	-- Yu'lon, The Jade Serpent
						["isRaid"] = true,
						["crs"] = { 71955 },	-- Yu'lon, The Jade Serpent
						["groups"] = {
							ach(20022),	-- Yu'lon, the Jade Serpent
						},
					}),
				},
			}),
		}),
	}),
}))));
