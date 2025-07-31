-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root("Instances", expansion(EXPANSION.BFA, bubbleDown({ ["timeline"] = { ADDED_9_0_1 } }, {
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
})));
