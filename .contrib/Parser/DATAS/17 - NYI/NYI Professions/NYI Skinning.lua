---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(SKINNING, {
		filter(MISC, {
			expansion(EXPANSION.DF, {
				-- 10.0.2
				expansion(EXPANSION.DF, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_2 } }, {
					i(194076),	-- Exotic Resilient Leather
					i(194067),	-- Festering Carcass
					i(194066),	-- Frigid Frostfur Pelt
					i(194077),	-- Pristine Adamant Scales
					i(194068),	-- Progenitor Scales
					i(194040),	-- Slateskin Hide
				})),
			}),
			expansion(EXPANSION.MID, {
				-- 12.0.0
				expansion(EXPANSION.MID, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_12_0_0 } }, {
					i(238609),	-- Arathi Craftsman's Spokeshave
					i(238608),	-- Arathi Tanning Agent
					i(238606),	-- Artisan's Drawing Knife
					i(238611),	-- Carapace Shiner
					i(238604),	-- Dornogal Carving Knife
					i(238605),	-- Earthen Worker's Beams
					i(238607),	-- Fungarian's Rich Tannin
					i(238610),	-- Nerubian's Slicking Iron
				})),
			}),
		}),
		n(CRAFTABLES, {
			expansion(EXPANSION.SL, {
				-- 9.0.1
				expansion(EXPANSION.SL, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_9_0_1 } }, {
					i(177279),	-- Gaunt Sinew
				})),
			}),
		}),
		filter(RECIPES, {
			expansion(EXPANSION.WRATH, {
				-- 3.0.1
				expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
					r(47429),	--
				})),
			}),
			expansion(EXPANSION.LEGION, {
				-- 7.0.3
				expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
					r(205243),	-- Skinning
				})),
			}),
			expansion(EXPANSION.DF, {
				-- 10.0.0
				expansion(EXPANSION.DF, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_10_0_0 } }, {
					r(382587),	-- Opening
				})),
			}),
		}),
	}),
}));
