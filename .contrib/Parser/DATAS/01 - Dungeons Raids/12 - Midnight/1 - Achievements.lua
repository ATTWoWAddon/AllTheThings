-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	n(ACHIEVEMENTS, {
		ach(62193),	-- Midnight Dungeon Damage Dealer
		ach(62194),	-- Midnight Dungeon Healer
		ach(62195),	-- Midnight Dungeon Tank
		ach(62196, {	-- Midnight Dungeoneer
			i(FINERY_FUNDS),
		}),
		ach(61567, {	-- Midnight Dungeon Hero
			i(240840),	-- Niblet (PET!)
		}),
		ach(61568),	-- Glory of the Midnight Hero
	}),
})));
