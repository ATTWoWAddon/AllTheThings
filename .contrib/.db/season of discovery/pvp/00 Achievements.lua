-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(n(ACHIEVEMENTS, {
	applyclassicphase(PHASE_TWO, ach(238)),	-- An Honorable Kill
	applyclassicphase(PHASE_TWO, ach(513)),	-- 100 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(515)),	-- 500 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(516)),	-- 1000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(512)),	-- 5000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(509)),	-- 10000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(239)),	-- 25000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(869)),	-- 50000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(870)),	-- 100000 Honorable Kills
	applyclassicphase(PHASE_TWO, ach(727, {	-- Call in the Cavalry (automated)
		-- Each criteria is automated from the War Mount it is earned by, but the restrictions that
		-- Item carries are not, so every mount in the achievement counts against every character.
		groups = {
			-- The original War Mounts need the matching riding skill, which is why the Items
			-- themselves are race restricted. 2.0.1 replaced them with unrestricted versions.
			crit(6213, {	-- Black Battlestrider (18243)
				races = { DWARF, GNOME },
			}),
			crit(6214, {	-- Black War Kodo (18247)
				races = HORDE_ONLY,
			}),
			crit(6215, {	-- Black War Ram (18244)
				races = ALLIANCE_ONLY,
			}),
			crit(6216, {	-- Black War Steed (18241)
				races = ALLIANCE_ONLY,
			}),
			crit(6217, {	-- Black War Wolf (18245)
				races = HORDE_ONLY,
			}),
			crit(6219, {	-- Black War Tiger (18242)
				races = ALLIANCE_ONLY,
			}),
			crit(6220, {	-- Black War Raptor (18246)
				races = { ORC, UNDEAD, TROLL },
			}),
			crit(6222, {	-- Red Skeletal Warhorse (18248)
				races = { ORC, UNDEAD, TROLL },
			}),
		},
	})),
	applyclassicphase(PHASE_TWO, ach(701, {	-- Freedom of the Alliance
		races = ALLIANCE_ONLY,
	})),
	applyclassicphase(PHASE_TWO, ach(700, {	-- Freedom of the Horde
		races = HORDE_ONLY,
	})),
	applyclassicphase(PHASE_TWO, ach(714, {	-- The Conqueror
		races = HORDE_ONLY,
	})),
	applyclassicphase(PHASE_TWO, ach(907, {	-- The Justicar
		races = ALLIANCE_ONLY,
	})),
})));
