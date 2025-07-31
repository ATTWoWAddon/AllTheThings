-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	applyclassicphase(WRATH_PHASE_ONE, m(128, bubbleDown({ ["timeline"] = { ADDED_3_0_2, REMOVED_8_0_1 }, }, {	-- Strand of the Ancients
		["icon"] = 236394,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(2194, {	-- Master of Strand of the Ancients (Alliance - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						1309,	-- Strand of the Ancients Veteran
						1310,	-- Storm the Beach
						1765,	-- Steady Hands
						1761,	-- The Dapper Sapper
						2193,	-- Explosives Expert
						1762,	-- Not Even a Scratch (Alliance)
						-- #if AFTER 4.3.0
						2192,	-- Not Even a Scratch (Horde)
						-- #endif
						1763,	-- Artillery Veteran
						2189,	-- Artillery Expert
						1764,	-- Drop It!
						2190,	-- Drop It Now!
						1766,	-- Ancient Protector
						2191,	-- Ancient Courtyard Protector
						1757,	-- Defense of the Ancients (Alliance)
						-- #if AFTER 4.3.0
						2200,	-- Defense of the Ancients (Horde)
						-- #endif
					}},
					-- #if BEFORE 4.3.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				ach(2195, {	-- Master of Strand of the Ancients (Horde - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						1309,	-- Strand of the Ancients Veteran
						1310,	-- Storm the Beach
						1765,	-- Steady Hands
						1761,	-- The Dapper Sapper
						2193,	-- Explosives Expert
						2192,	-- Not Even a Scratch (Horde)
						1763,	-- Artillery Veteran
						2189,	-- Artillery Expert
						1764,	-- Drop It!
						2190,	-- Drop It Now!
						1766,	-- Ancient Protector
						2191,	-- Ancient Courtyard Protector
						2200,	-- Defense of the Ancients (Horde)
					}},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
				}),
				ach(1308, {	-- Strand of the Ancients Victory
					["rank"] = 1,
				}),
				ach(1309, {	-- Strand of the Ancients Veteran
					["rank"] = 100,
				}),
				ach(1310),	-- Storm the Beach
				ach(2191),	-- Ancient Courtyard Protector
				ach(1766),	-- Ancient Protector
				ach(2189),	-- Artillery Expert
				ach(1763),	-- Artillery Veteran
				a(ach(1757)),	-- Defense of the Ancients (Alliance)
				h(ach(2200)),	-- Defense of the Ancients (Horde)
				ach(1764),	-- Drop It!
				ach(2190),	-- Drop It Now!
				ach(2193),	-- Explosives Expert
				a(ach(1762)),	-- Not Even a Scratch (Alliance)
				h(ach(2192)),	-- Not Even a Scratch (Horde)
				ach(1765),		-- Steady Hands
				ach(1761),		-- The Dapper Sapper
			}),
		},
	}))),
})));
