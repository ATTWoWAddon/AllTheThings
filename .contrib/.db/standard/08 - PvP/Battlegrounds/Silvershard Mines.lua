-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(423, {	-- Silvershard Mines
		["icon"] = 622094,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7106, {	-- Master of Silvershard Mines
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						6883,	-- Silvershard Mines Veteran
						7039,	-- The Long Riders
						7049,	-- Mine Cart Courier
						7057,	-- End of the Line
						7062,	-- Mine Mine Mine!
						7099,	-- Five for Five
						7100,	-- My Diamonds and Your Rust
						7102,	-- Escort Service
						7103,	-- Greed is Good
					}},
				}),
				ach(6739, {	-- Silvershard Mines Victory
					["rank"] = 1,
				}),
				ach(6883, {	-- Silvershard Mines Veteran
					["rank"] = 100,
				}),
				ach(7039),	-- The Long Riders
				ach(7049, {	-- Mine Cart Courier
					crit(21009),	-- East to South Track
					crit(21010),	-- East to North Track
					crit(21011),	-- North to West Track
					crit(21012),	-- North to East Track
					crit(21013),	-- South Track
				}),
				ach(7057),	-- End of the Line
				ach(7062),	-- Mine Mine Mine!
				ach(7099),	-- Five for Five
				ach(7100),	-- My Diamonds and Your Rust
				ach(7102),	-- Escort Service
				ach(7103),	-- Greed is Good
			}),
		},
	}),
})));
