--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- #if AFTER WRATH
root(ROOTS.Holidays, {	-- General Holiday Content
	n(ACHIEVEMENTS, {
		applyclassicphase(WRATH_PHASE_ONE, ach(2144, {	-- What a Long, Strange Trip It's Been (A)
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				913,	-- To Honor One's Elders
				1693,	-- Fool For Love
				2798,	-- Noble Gardener
				1793,	-- For the Children
				-- #if AFTER 4.0.3
				1039,	-- The Flame Keeper (H)
				-- #endif
				1038,	-- The Flame Warden (A)
				1683,	-- Brewmaster
				1656,	-- Hallowed Be Thy Name
				1691,	-- Merrymaker
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE 4.0.3
			["races"] = ALLIANCE_ONLY,
			-- #endif
			["groups"] = {
				i(44177),	-- Violet Proto-Drake (MOUNT!)
			},
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(2145, {	-- What a Long, Strange Trip It's Been (H)
			-- TODO: During Cataclysm Classic, check to see if this is still in the game.
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				913,	-- To Honor One's Elders
				1693,	-- Fool For Love
				2798,	-- Noble Gardener
				1793,	-- For the Children
				1039,	-- The Flame Keeper (H)
				1683,	-- Brewmaster
				1656,	-- Hallowed Be Thy Name
				1691,	-- Merrymaker
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
			["races"] = HORDE_ONLY,
			-- #if BEFORE 4.0.3
			["groups"] = {
				i(44177),	-- Violet Proto-Drake (MOUNT!)
			},
			-- #endif
		})),
	}),
});
-- #endif
