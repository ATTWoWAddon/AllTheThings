-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(40138, {	-- Algari Dungeoneer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40139,	-- Algari Dungeon Damage Dealer
				40140,	-- Algari Dungeon Healer
				40141,	-- Algari Dungeon Tank
			}},
			["groups"] = {
				iensemble(219115),	-- Versatile Peddler's Trinkets
			},
		}),
		ach(40139),	-- Algari Dungeon Damage Dealer
		ach(40140),	-- Algari Dungeon Healer
		ach(40141),	-- Algari Dungeon Tank
	}),
})));
