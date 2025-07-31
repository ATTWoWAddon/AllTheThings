---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
-- #if AFTER 10.2.0
root(ROOTS.NeverImplemented, n(PROFESSIONS, {
	prof(SUPPLY_SHIPMENTS, {
		filter(RECIPES, {
			expansion(EXPANSION.DF, {
				-- 10.2.0
				expansion(EXPANSION.DF, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_10_2_0 } }, {
					r(424899),	-- Islefin Dorado Shipment
					r(424881),	-- Hide Shipment
					r(424529),	-- Hochenblume Shipment
					r(427109),	-- Rare Gem Shipment
					r(424694),	-- Serevite Shipment
					r(424538),	-- Uncommon Herbs Shipment
				})),
			}),
		}),
	}),
}));
-- #endif
