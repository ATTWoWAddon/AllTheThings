---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		n(WEEKLY_HOLIDAYS, {
			n(REWARDS, {
				i(202079, {	-- Cache of Vault Treasures (N)
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
				}),
				i(202080, {	-- Cache of Vault Treasures (H)
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
				}),
				i(205966, {	-- Cache of Aberrus Treasures (N)
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				}),
				i(205967, {	-- Cache of Aberrus Treasures (H)
					["timeline"] = { ADDED_10_1_0, REMOVED_10_2_0 },
				}),
				i(209036, {	-- Cache of Amirdrassil Treasures (N)
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				}),
				i(209037, {	-- Cache of Amirdrassil Treasures (H)
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				}),
				i(217728, {	-- Cache of Awakened Treasures (N)
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
				}),
				i(217729, {	-- Cache of Awakened Treasures (H)
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_TWW_LAUNCH },
				}),
				i(202091, {	-- Dragonscale Expedition Insignia [Epic 2.5k]
					["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 25 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
				i(202092, {	-- Iskaara Tuskarr Insignia [Epic 2.5k]
					["minReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
				i(202094, {	-- Maruuk Centaur Insignia [Epic 2.5k]
					["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
				i(202093, {	-- Valdrakken Accord Insignia [Epic 2.5k]
					["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
				i(210422, {	-- Loamm Niffen Insignia [Epic 2.5k]
					["timeline"] = { ADDED_10_2_0 },
					["minReputation"] = { FACTION_LOAMM_NIFFEN, 20 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
				i(210423, {	-- Dream Wardens Insignia [Epic 2.5k]
					["timeline"] = { ADDED_10_2_0 },
					["minReputation"] = { FACTION_DREAM_WARDENS, 20 },
					["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				}),
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 199526 },	-- Kazra
				["coord"] = { 49.5, 59.9, VALDRAKKEN },
				["isWeekly"] = true,
				["timeline"] = { REMOVED_11_0_2 },
			}, {
				q(72727),					-- A Burning Path Through Time
				q(72719),					-- A Fel Path Through Time
				q(72726),					-- A Frozen Path Through Time
				q(72724),					-- A Savage Path Through Time
				q(72810),					-- A Shattered Path Through Time
				q(72725),					-- A Shrouded Path Through Time
				q(72722),					-- Emissary of War
				pvp(q(72720)),				-- The Arena Calls
				petbattle(pvp(q(72721, {	-- The Very Best
					["_drop"] = { "g" },	-- Drop Ultimate Battle-Training Stone
				}))),
				q(72728),					-- The World Awaits
			})),
			-- Auto-accepted in various situations, so no coords/provider
			n(QUESTS, sharedData({
				["isWeekly"] = true,
				["_drop"] = { "g" },	-- Drop Trash
			}, {
				-- #IF AFTER DF
				-- #IF BEFORE TWW
				pvp(q(47148)),	-- Something Different
				-- #ENDIF
				-- #ENDIF
				pvp(q(78128, {	-- Gotta Go Fast
					["timeline"] = { ADDED_10_2_0, REMOVED_11_0_2 },
				})),
				pvp(q(78129, {	-- Gotta Go Faster
					["sourceQuests"] = { 78128 },
					["timeline"] = { ADDED_10_2_0, REMOVED_11_0_2 },
				})),
			})),
		}),
	}),
})));
