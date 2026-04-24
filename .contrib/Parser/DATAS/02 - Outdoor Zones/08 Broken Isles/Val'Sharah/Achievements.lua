---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(BROKEN_ISLES, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	m(VALSHARAH, {
		n(ACHIEVEMENTS, {
			ach(11262, {	-- Adventurer of Val'sharah
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(10666),	-- Explore Val'sharah
			ach(10698, {	-- That's Val'sharah Folks!
				["sym"] = {{ "achievement_criteria" }},
				["groups"] = { i(245697, {["timeline"] = { ADDED_11_2_7 }}),},	-- Shala'nir Feather Bed (DECOR!)
			}),
			ach(11258, {	-- Treasures of Val'sharah
				i(245703, {["timeline"] = { ADDED_11_2_7 }}),	-- Kaldorei Treasure Trove (DECOR!)
			}),
		}),
	}),
})));
