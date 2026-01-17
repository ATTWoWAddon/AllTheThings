-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.BFA, {
	d(DIFFICULTY.DUNGEON.MYTHIC, {
		n(AZERITE_ESSENCES, {
			ig(169491),	-- Focused Life Anima
			-- Requires Tank Loot Spec
			ig(168399, {	-- Fetish of the Dark Caverns (Rank 1)
				["cost"] = { { "i", 169491, 1 } },	-- Focused Life Anima
				["classes"] = TANKS,
			}),
			ig(168558, {	-- Fetish of the Deep Dungeons (Rank 2)
				["cost"] = { { "i", 169491, 3 } },	-- 3x Focused Life Anima
				["classes"] = TANKS,
			}),
			ig(168559, {	-- Fetish of the Hidden Labyrinths (Rank 3)
				["cost"] = { { "i", 169491, 15 } },	-- 15x Focused Life Anima
				["classes"] = TANKS,
			}),
			-- Requires DPS Loot Spec
			ig(168620, {	-- Converging Lens of the Focusing Iris (Rank 1)
				["cost"] = { { "i", 169491, 1 } },	-- Focused Life Anima
			}),
			ig(168621, {	-- Magnifying Lens of the Focusing Iris (Rank 2)
				["cost"] = { { "i", 169491, 3 } },	-- 3x Focused Life Anima
			}),
			ig(168622, {	-- Stabilizing Lens of the Focusing Iris (Rank 3),
				["cost"] = { { "i", 169491, 8 } },	-- 8x Focused Life Anima
			}),
			-- Requires Healer Loot Spec
			ig(168924, {	-- Bursting Seed of Life (Rank 1)
				["cost"] = { { "i", 169491, 1 } },	-- Focused Life Anima
				["classes"] = HEALERS,
			}),
			ig(168925, {	-- Replicating Seed of Abundance (Rank 2)
				["cost"] = { { "i", 169491, 3 } },	-- 3x Focused Life Anima
				["classes"] = HEALERS,
			}),
			ig(168926, {	-- Lingering Seed of Renewal (Rank 3)
				["cost"] = { { "i", 169491, 8 } },	-- 8x Focused Life Anima
				["classes"] = HEALERS,
			}),
		}),
	}),
	n(MYTHIC_PLUS, {
		n(AZERITE_ESSENCES, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_9_0_1 } }, {
			i(169491),	-- Focused Life Anima
			i(168399, {	-- Fetish of the Dark Caverns (Rank 1)
				["description"] = "Requires completing a +4 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168558, {	-- Fetish of the Deep Dungeons (Rank 2)
				["description"] = "Requires completing a +7 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168559, {	-- Fetish of the Hidden Labyrinths (Rank 3)
				["description"] = "The amount of |cff9832dfFocused Life Anima|r you receive from your weekly chest varies depending on the highest Mythic+ you completed during the previous week.\n\n+2 to +3 - 1\n+4 to +6 - 2\n+7 to +9 - 3\n+10 to +14 - 5\n+15 or higher - 8\n\nIf you have already earned a Rank 3 Mythic+ essence, you will receive more Anima in your weekly chest.\n",
				["cost"] = { { "i", 169491, 15 } },	-- 15x Focused Life Anima
			}),
			i(168620, {	-- Converging Lens of the Focusing Iris (Rank 1)
				["description"] = "Requires completing a +4 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168621, {	-- Magnifying Lens of the Focusing Iris (Rank 2)
				["description"] = "Requires completing a +7 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168622, {	-- Stabilizing Lens of the Focusing Iris (Rank 3)
				["description"] = "The amount of |cff9832dfFocused Life Anima|r you receive from your weekly chest varies depending on the highest Mythic+ you completed during the previous week.\n\n+2 to +3 - 1\n+4 to +6 - 2\n+7 to +9 - 3\n+10 to +14 - 5\n+15 or higher - 8\n\nIf you have already earned a Rank 3 Mythic+ essence, you will receive more Anima in your weekly chest.\n",
				["cost"] = { { "i", 169491, 15 } },	-- 15x Focused Life Anima
			}),
			i(168924, {	-- Bursting Seed of Life (Rank 1)
				["description"] = "Requires completing a +4 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168925, {	-- Replicating Seed of Abundance (Rank 2)
				["description"] = "Requires completing a +7 Mythic and looting the chest at the end of the dungeon.\n",
			}),
			i(168926, {	-- Lingering Seed of Renewal (Rank 3)
				["description"] = "The amount of |cff9832dfFocused Life Anima|r you receive from your weekly chest varies depending on the highest Mythic+ you completed during the previous week.\n\n+2 to +3 - 1\n+4 to +6 - 2\n+7 to +9 - 3\n+10 to +14 - 5\n+15 or higher - 8\n\nIf you have already earned a Rank 3 Mythic+ essence, you will receive more Anima in your weekly chest.\n",
				["cost"] = { { "i", 169491, 15 } },	-- 15x Focused Life Anima
			}),
		})),
		n(ACHIEVEMENTS, {
			ach(13075, bubbleDownSelf({		-- Battle for Azeroth Keymaster
				["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_9_0_1 },
			}, {
				crit(41513),	-- Freehold
				crit(41508),	-- Waycrest Manor
				crit(41507),	-- Shrine of the Storm
				crit(41511),	-- Atal'Dazar
				crit(41509),	-- The Underrot
				crit(41506),	-- Temple of Sethraliss
				crit(41514),	-- Tol Dagor
				crit(41515),	-- The MOTHERLODE!!
				crit(41510),	-- Siege of Boralus
				crit(41512),	-- Kings' Rest
			})),
			header(HEADERS.Achievement, SEASON_INFESTED, bubbleDownSelf({
				["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 },
			},{
				ach(13078, {	-- Realm First! Battle for Azeroth Keystone Master
					["u"] = REMOVED_FROM_GAME,
				}),
				ach(13079, {	-- Battle for Azeroth Keystone Conqueror: Season One
					crit(44064),	-- Atal'Dazar
					crit(44065),	-- Freehold
					crit(44066),	-- Kings' Rest
					crit(44067),	-- Shrine of the Storm
					crit(44068),	-- Siege of Boralus
					crit(44069),	-- Temple of Sethraliss
					crit(44070),	-- The MOTHERLODE!!
					crit(44071),	-- The Underrot
					crit(44083),	-- Tol Dagor
					crit(44073),	-- Waycrest Manor
				}),
				ach(13080, {	-- Battle for Azeroth Keystone Master: Season One
					crit(44074),	-- Atal'Dazar
					crit(44075),	-- Freehold
					crit(44076),	-- Kings' Rest
					crit(44077),	-- Shrine of the Storm
					crit(44078),	-- Siege of Boralus
					crit(44079),	-- Temple of Sethraliss
					crit(44080),	-- The MOTHERLODE!!
					crit(44081),	-- The Underrot
					crit(44072),	-- Tol Dagor
					crit(44082),	-- Waycrest Manor
				}),
			})),
			header(HEADERS.Achievement, SEASON_REAPING, bubbleDownSelf({
				["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 },
			},{
				ach(13448, {	-- Battle for Azeroth Keystone Conqueror: Season Two
					-- #if BEFORE 8.2.0
					crit(44138),	-- Atal'Dazar
					crit(44139),	-- Freehold
					crit(44140),	-- Kings' Rest
					crit(44142),	-- Shrine of the Storm
					crit(44143),	-- Siege of Boralus
					crit(44144),	-- Temple of Sethraliss
					crit(44145),	-- The MOTHERLODE!!
					crit(44146),	-- The Underrot
					crit(44147),	-- Tol Dagor
					crit(44148),	-- Waycrest Manor
					-- #endif
				}),
				ach(13449, {	-- Battle for Azeroth Keystone Master: Season Two
					-- #if BEFORE 8.2.0
					crit(44149),	-- Atal'Dazar
					crit(44150),	-- Freehold
					crit(44151),	-- Kings' Rest
					crit(44152),	-- Shrine of the Storm
					crit(44153),	-- Siege of Boralus
					crit(44154),	-- Temple of Sethraliss
					crit(44155),	-- The MOTHERLODE!!
					crit(44156),	-- The Underrot
					crit(44157),	-- Tol Dagor
					crit(44158),	-- Waycrest Manor
					-- #endif
				}),
			})),
			header(HEADERS.Achievement, SEASON_BEGUILING, bubbleDownSelf({
				["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 },
			},{
				ach(13780, {	-- Battle for Azeroth Keystone Conqueror: Season Three
					crit(45963),	-- Atal'Dazar
					crit(45964),	-- Freehold
					crit(45965),	-- Kings' Rest
					crit(45966),	-- Shrine of the Storm
					crit(45967),	-- Siege of Boralus
					crit(45968),	-- Temple of Sethraliss
					crit(45969),	-- The MOTHERLODE!!
					crit(45970),	-- The Underrot
					crit(45971),	-- Tol Dagor
					crit(45972),	-- Waycrest Manor
				}),
				ach(13781, {	-- Battle for Azeroth Keystone Master: Season Three
					crit(45975),	-- Atal'Dazar
					crit(45976),	-- Freehold
					crit(45977),	-- Kings' Rest
					crit(45978),	-- Shrine of the Storm
					crit(45979),	-- Siege of Boralus
					crit(45980),	-- Temple of Sethraliss
					crit(45981),	-- The MOTHERLODE!!
					crit(45982),	-- The Underrot
					crit(45983),	-- Tol Dagor
					crit(45984),	-- Waycrest Manor
				}),
			})),
			header(HEADERS.Achievement, SEASON_AWAKENED, bubbleDownSelf({
				["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
			},{
				ach(14144, {	-- Battle for Azeroth Keystone Conqueror: Season Four
					title(418),	-- <Name> the Awakened
					crit(47150),	-- Atal'Dazar
					crit(47151),	-- Freehold
					crit(47152),	-- Kings' Rest
					crit(47153),	-- Shrine of the Storm
					crit(47154),	-- Siege of Boralus
					crit(47155),	-- Temple of Sethraliss
					crit(47156),	-- The MOTHERLODE!!
					crit(47157),	-- The Underrot
					crit(47158),	-- Tol Dagor
					crit(47159),	-- Waycrest Manor
					crit(47160),	-- Mechagon Junkyard
					crit(47161),	-- Mechagon Workshop
				}),
				ach(14145, {	-- Battle for Azeroth Keystone Master: Season Four
					i(174836),	-- Awakened Mindborer (MOUNT!)
					crit(47162),	-- Atal'Dazar
					crit(47163),	-- Freehold
					crit(47164),	-- Kings' Rest
					crit(47165),	-- Shrine of the Sto
					crit(47166),	-- Siege of Boralus
					crit(47167),	-- Temple of Sethral
					crit(47168),	-- The MOTHERLODE!!
					crit(47169),	-- The Underrot
					crit(47170),	-- Tol Dagor
					crit(47171),	-- Waycrest Manor
					crit(47172),	-- Mechagon Junkyard
					crit(47173),	-- Mechagon Workshop
				}),
			})),
		}),
	}),
}));
