-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, {
	n(FACTIONS, sharedData({
		sharedDescription = "This is a hidden reputation. It might not count towards reputation achievements.",
	},{
		-- CRIEVE NOTE: It is actually possible to max this out over several years.
		faction(469, {	-- Alliance
			timeline = { ADDED_1_0_1 },
			icon = 374217,
			races = ALLIANCE_ONLY,
		}),
		faction(67, {	-- Horde
			timeline = { ADDED_1_0_1 },
			icon = 374221,
			races = HORDE_ONLY,
		}),
	})),
	n(FACTIONS, sharedData({
		sharedDescription = "This is a hidden reputation. It might not count towards reputation achievements.",
		collectible = false,
	},{
		faction(891, {races = ALLIANCE_ONLY}),	-- Alliance Forces
		faction(892, {races = HORDE_ONLY}),	-- Horde Forces
	})),
});
