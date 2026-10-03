-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, {
	n(FACTIONS, sharedData({
		["sharedDescription"] = "This is a hidden reputation. It might not count towards reputation achievements.",
	},{
		-- CRIEVE NOTE: It is actually possible to max these out over several years.
		faction(469, {	-- Alliance
			["icon"] = 374217,
			["races"] = ALLIANCE_ONLY,
		}),
		faction(891, {	-- Alliance Forces
			["icon"] = 374217,
			["races"] = ALLIANCE_ONLY,
		}),
		faction(67, {	-- Horde
			["icon"] = 374221,
			["races"] = HORDE_ONLY,
		}),
		faction(892, {	-- Horde Forces
			["icon"] = 374221,
			["races"] = HORDE_ONLY,
		}),
	})),
});
