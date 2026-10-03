-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(HONOR_TITLES, {
		maps = {
			MAP.ALTERAC_VALLEY,
			MAP.ARATHI_BASIN,
			MAP.WARSONG_GULCH,
			MAP.DARKSPEAR_ISLANDS
		},
		groups = {
			pvprank(1),	-- Private / Scout
			pvprank(2),	-- Corporal / Grunt
			pvprank(3),	-- Sergeant / Sergeant
			pvprank(4),	-- Master Sergeant / Senior Sergeant
			pvprank(5),	-- Sergeant Major / First Sergeant
			pvprank(6),	-- Knight / Stone Guard
			pvprank(7),	-- Knight-Lieutenant / Blood Guard
			pvprank(8),	-- Knight-Captain / Legionnaire
			pvprank(9),	-- Knight-Champion / Centurion
			pvprank(10),	-- Lieutenant Commander / Champion
			pvprank(11),	-- Commander / Lieutenant General
			pvprank(12),	-- Marshal / General
			pvprank(13),	-- Field Marshal / Warlord
			pvprank(14),	-- Grand Marshal / High Warlord
		},
	}),
});
