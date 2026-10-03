-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(ACHIEVEMENTS, bubbleDown({ races = ALLIANCE_ONLY }, {
		ach(63340),	-- Field of Honor: Week 4
		ach(63341),	-- Field of Honor: Week 7
		ach(63342),	-- Field of Honor: Week 10
		ach(62041),	-- Rank 3
		ach(62042),	-- Rank 7
		ach(62043),	-- Rank 10
		ach(62044),	-- Rank 13
		ach(62045),	-- Rank 14
	})),
	n(ACHIEVEMENTS, bubbleDown({ races = HORDE_ONLY }, {
		ach(64031),	-- Field of Honor: Week 4
		ach(64032),	-- Field of Honor: Week 7
		ach(64033),	-- Field of Honor: Week 10
		ach(64021),	-- Rank 3
		ach(64022),	-- Rank 7
		ach(64023),	-- Rank 10
		ach(64024),	-- Rank 13
		ach(64025),	-- Rank 14
	})),
});
