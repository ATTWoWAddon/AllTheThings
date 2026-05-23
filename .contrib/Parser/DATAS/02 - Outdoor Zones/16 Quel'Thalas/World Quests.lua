---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	n(WORLD_QUESTS, {
		currency(3310, {	-- Coffer Key Shard (Season 1)
			["timeline"] = { ADDED_12_0_1_LAUNCH },
		}),
		currency(RESTORED_COFFER_KEY, {
			["timeline"] = { ADDED_12_0_1_LAUNCH },
			["cost"] = { { "c",
				-- #if AFTER 12.2
				-- ,
				-- #elseif AFTER 12.1
				-- ,
				-- #else
				3310,
				-- #endif
			100 } },	-- 100x Coffer Key Shard (Current Season)
		}),
	}),
}));
