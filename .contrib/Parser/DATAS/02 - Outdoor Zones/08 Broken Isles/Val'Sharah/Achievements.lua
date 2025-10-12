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
				--["groups"] = { i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),},	-- Shala'nir Feather Bed (DECOR!)
			}),
			ach(11258, {	-- Treasures of Val'sharah
				--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Kaldorei Treasure Trove (DECOR!)
			}),
		}),
	}),
})));
