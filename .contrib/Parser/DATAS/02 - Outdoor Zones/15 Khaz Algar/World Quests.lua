---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	n(WORLD_QUESTS, {
		i(229899, {	-- Coffer Key Shard (Season 1)
			["timeline"] = { REMOVED_11_1_0_SEASONSTART },
		}),
		i(236096, {	-- Coffer Key Shard (Season 2)
			["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0_SEASONSTART },
		}),
		i(245653, {	-- Coffer Key Shard (Season 3)
			["timeline"] = { ADDED_11_2_0 },
		}),
		currency(RESTORED_COFFER_KEY, {
			["cost"] = { { "i",
				-- #if AFTER 11.2
				245653,
				-- #elseif AFTER 11.1
				236096,
				-- #else
				229899,
				-- #endif
			100 } },	-- 100x Coffer Key Shard (Current Season)
		}),
		skyriding(n(DRAGONRIDING_RACING, {
			i(191140),	-- Bronze Timepiece
			i(227450),	-- Sky Racer's Purse
		})),
	}),
}));
