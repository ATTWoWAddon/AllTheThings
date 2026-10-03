---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER CATA
root(ROOTS.NeverImplemented, n(HEIRLOOMS, {
	expansion(EXPANSION.CATA, {
		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			i(62035),	-- Antique Myrmidon's Signet
			i(62036),	-- Ornate Band of Accuria
			i(62037),	-- Gleaming seal of the archmagus
		})),

		-- 4.1.0
		expansion(EXPANSION.CATA, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_1_0 } }, {
			i(69891),	-- Burnished Dark Iron Ring
		})),
	}),
	expansion(EXPANSION.SL, {
		-- 9.0.1
		expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
			i(183143),	-- Heirloom Chestpiece
			i(183146),	-- Heirloom Cloak
			i(183144),	-- Heirloom Helm
			i(183147),	-- Heirloom Legs
			i(183148),	-- Heirloom Necklace
			i(183149),	-- Heirloom Ring
			i(183159),	-- Heirloom Ring
			i(183145),	-- Heirloom Shoulders
			i(183150),	-- Heirloom Trinket
			i(183160),	-- Heirloom Trinket
		})),
	}),
}));
-- #endif
