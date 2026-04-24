-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MID, {
	n(COMMON_DUNGEON_DROPS, sharedData({
		["crs"] = {
			246404,	-- Nalorakk
			231865,	-- Degentrius
			248605,	-- Rak'tul
			237415,	-- Lithiel Cinderfury
			241546,	-- Lothraxion <High Commander>
			247676,	-- Ziekket
			248015,	-- Charonus
			231636,	-- Restless Heart
		},
	}, {
		i(256714),	-- Design: Indecipherable Eversong Diamond (RECIPE!)
		i(256704),	-- Design: Powerful Eversong Diamond (RECIPE!)
		i(259372, {	-- Design: Shining Sin'dorei Hourglass (RECIPE!)
			["description"] = "Unclear if this only drop in m+",
		}),
		i(256720),	-- Design: Stoic Eversong Diamond (RECIPE!)
		i(256708),	-- Design: Telluric Eversong Diamond (RECIPE!)
	})),
}));
