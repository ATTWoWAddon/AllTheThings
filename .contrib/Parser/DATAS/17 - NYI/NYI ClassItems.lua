---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(CLASSES, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			i(4144),	-- Tome of Polymorph: Cow (CI!)
		}),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.0.3
		expansion(EXPANSION.WRATH, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_3 } }, {
			i(44600),	-- Tome of Polymorph: Serpent (CI!)
		})),

		-- 3.3.5
		expansion(EXPANSION.WRATH, patch(3,5), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_5 } }, {
			i(44811),	-- Tome of Polymorph: Turkey (CI!)
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			i(136971),	-- Tome of Hex: Snake (CI!)
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			i(147770),	-- Tome of the PTR Beast (CI!)
		})),
	}),
}));
