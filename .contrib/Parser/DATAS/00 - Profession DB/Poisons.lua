local i = GetRecipeHelperForProfession(POISONS);

-- #if SEASON_OF_DISCOVERY
------------------
-- PATCH 1.15.2 --
------------------
--- TRAINER ---
i(0, 439503);	-- Atrophic Poison
i(0, 439505);	-- Numbing Poison
i(0, 439500);	-- Sebacious Poison
-- #endif

-----------------
--   CLASSIC   --
-----------------
--- TRAINER ---
i(0, 6510);			-- Blinding Powder
i(0, 3420);			-- Crippling Poison
i(0, 3421);			-- Crippling Poison II
i(0, 2835);			-- Deadly Poison
i(0, 2837);			-- Deadly Poison II
i(0, 11357);		-- Deadly Poison III
i(0, 11358);		-- Deadly Poison IV
i(0, 8687);			-- Instant Poison II
i(0, 8691);			-- Instant Poison III
i(0, 11341);		-- Instant Poison IV
i(0, 11342);		-- Instant Poison V
i(0, 11343);		-- Instant Poison VI
i(0, 5763);			-- Mind-numbing Poison
i(0, 8694);			-- Mind-numbing Poison II
i(0, 11400);		-- Mind-numbing Poison III
i(0, 13220);		-- Wound Poison
i(0, 13228);		-- Wound Poison II
i(0, 13229);		-- Wound Poison III
i(0, 13230);		-- Wound Poison IV
--- ITEM ---
-- #if BEFORE WRATH
i(21302, 25347);	-- Deadly Poison V [TRAINER: 2.0.5]
-- #else
i(21302, 0);		-- Deadly Poison V
-- #endif
--- QUEST ---
i(0, 2842);			-- Poisons
i(0, 8681);			-- Instant Poison
--- NYI ---
i(0, 5395);			-- Death Capsule
i(5657, 6651);		-- Instant Toxin

-----------------
-- PATCH 2.0.5 --
-----------------
i(0, 26786);		-- Anesthetic Poison
i(0, 26969);		-- Deadly Poison VI
i(0, 27282);		-- Deadly Poison VII
i(0, 26892);		-- Instant Poison VII
i(0, 27283);		-- Wound Poison V
