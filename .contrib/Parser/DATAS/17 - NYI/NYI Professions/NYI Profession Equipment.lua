---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	filter(PROFESSION_EQUIPMENT, {
		expansion(EXPANSION.MID, {
			-- 12.0.0
			expansion(EXPANSION.MID, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_12_0_0 } }, {
				i(246521),	-- Super Elegant Artisan's Alchemy Coveralls
				i(246522),	-- Super Elegant Artisan's Cooking Hat
				i(246523),	-- Super Elegant Artisan's Enchanting Hat
				i(246515),	-- Super Elegant Artisan's Herbalism Hat
				i(246514),	-- Super Elegant Artisan's Tailoring Robe
				i(248245),	-- Super Sin'dorei Gilded Hardhat
			})),
		}),
	}),
}));
