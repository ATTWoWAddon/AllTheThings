---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	m(BROKEN_ISLES, {
		n(WORLD_QUESTS, {
			i(116415, { ["timeline"] = { REMOVED_10_2_5 } }),	-- Shiny Pet Charm
			currency(ORDER_RESOURCES),	-- Order Resources

			-- Blizzard Achievement data claims these WQ exist to grant credit for 'Variety is the Spice of Life' (ach:11189) but they seem to be NYI
			-- putting them here so that Parser stops complaining they are missing
			qNYI(46307),
			qNYI(42923),
			qNYI(42925),
			qNYI(42095),
			qNYI(41693),
			qNYI(41843),
			qNYI(41830),
			qNYI(41827),
			qNYI(40979),
			qNYI(41758),
			qNYI(41757),
			qNYI(40984),
			qNYI(40981),
			qNYI(41429),
			qNYI(41132),
			qNYI(41133),
			qNYI(41131),
			qNYI(41130),
			qNYI(40895),
			qNYI(41765),
		}),
	}),
}));
