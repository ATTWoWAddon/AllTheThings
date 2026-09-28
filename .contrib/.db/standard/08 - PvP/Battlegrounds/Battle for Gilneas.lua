-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(275, {	-- Battle for Gilneas
		["icon"] = 462671,
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5258, {	-- Master of the Battle for Gilneas
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						5246,	-- Battle for Gilneas Veteran
						5247,	-- Battle for Gilneas Perfection
						5248,	-- Bustin' Caps to Make It Haps
						5249,	-- One Two Three You Don't Know About Me
						5250,	-- Out of the Fog
						5251,	-- Not Your Average PUG'er
						5252,	-- Don't Get Cocky Kid
						5253,	-- Full Coverage
						5254,	-- Newbs to Plowshares
						5255,	-- Jugger Not
						5256,	-- Battle for Gilneas All-Star
						5257,	-- Battle for Gilneas Assassin
						5262,	-- Double Rainbow
					}},
				}),
				ach(5245, {	-- Battle for Gilneas Victory
					["rank"] = 1,
					["groups"] = {
						i(256896, {	-- Smoke Lamppost (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				ach(5246, {	-- Battle for Gilneas Veteran
					["rank"] = 100,
				}),
				ach(5247),	-- Battle for Gilneas Perfection
				ach(5248),	-- Bustin' Caps to Make It Haps
				ach(5249),	-- One Two Three You Don't Know About Me
				ach(5250),	-- Out of the Fog
				ach(5251),	-- Not Your Average PUG'er
				ach(5252),	-- Don't Get Cocky Kid
				ach(5253),	-- Full Coverage
				ach(5254),	-- Newbs to Plowshares
				ach(5255),	-- Jugger Not
				ach(5256, {	-- Battle for Gilneas All-Star
					-- #if AFTER MOP
					crit(14946),	-- Assault a base
					crit(14947),	-- Defend a base
					-- #endif
				}),
				ach(5257, {	-- Battle for Gilneas Assassin
					-- #if AFTER MOP
					crit(14948),	-- Kill 10 enemies at the Lighthouse
					crit(14949),	-- Kill 10 enemies at the Mines
					crit(14950),	-- Kill 10 enemies at the Waterworks
					-- #endif
				}),
				ach(5262),	-- Double Rainbow
			}),
		},
	}),
})));
