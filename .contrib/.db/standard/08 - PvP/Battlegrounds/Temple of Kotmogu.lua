-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(417, {	-- Temple of Kotmogu
		["icon"] = 623704,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(6981, {	-- Master of Temple of Kotmogu
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						6882,	-- Temple of Kotmogu Veteran
						6947,	-- Four Square
						6950,	-- Powerball
						6970,	-- Blackout
						6973,	-- Can't Stop Won't Stop
						6971,	-- I've Got the Power
						6972,	-- What is Best in Life?
						6980,	-- Temple of Kotmogu All-Star
					}},
					["groups"] = {
						i(247741, {	-- Kotmogu Orb of Power (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
						i(247740, {	-- Kotmogu Pedestal (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				ach(6740, {	-- Temple of Kotmogu Victory
					["rank"] = 1,
				}),
				ach(6882, {	-- Temple of Kotmogu Veteran
					["rank"] = 100,
				}),
				ach(6947, {	-- Four Square
					crit(20064),	-- Cyan Orb
					crit(20065),	-- Purple Orb
					crit(20066),	-- Green Orb
					crit(20067),	-- Orange Orb
				}),
				ach(6950),	-- Powerball
				ach(6970),	-- Blackout
				ach(6973),	-- Can't Stop Won't Stop
				ach(6971),	-- I've Got the Power
				ach(6972),	-- What is Best in Life?
				ach(6980, {	-- Temple of Kotmogu All-Star
					crit(21027),	-- Kill four Orb carriers.
					crit(21028),	-- Four Orbs Controlled
				}),
			}),
		},
	}),
})));
