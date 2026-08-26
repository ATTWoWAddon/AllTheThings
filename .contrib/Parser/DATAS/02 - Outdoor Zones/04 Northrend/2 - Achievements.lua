---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NORTHREND, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 60956, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Northrend
			petbattle(ach(60956, {	-- Family Battler of Northrend (automated)
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60942,	-- Aquatic Battler of Northrend
					60951,	-- Beast Battler of Northrend
					60943,	-- Critter Battler of Northrend
					60944,	-- Dragonkin Battler of Northrend
					60948,	-- Elemental Battler of Northrend
					60949,	-- Flying Battler of Northrend
					60950,	-- Humanoid Battler of Northrend
					60952,	-- Magic Battler of Northrend
					60953,	-- Mechanical Battler of Northrend
					60954,	-- Undead Battler of Northrend
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(222967) },	-- Webbers (PET!)
			})),
			petbattle(ach(60942)),	-- Aquatic Battler of Northrend
			petbattle(ach(60951)),	-- Beast Battler of Northrend
			petbattle(ach(60943)),	-- Critter Battler of Northrend
			petbattle(ach(60944)),	-- Dragonkin Battler of Northrend
			petbattle(ach(60948)),	-- Elemental Battler of Northrend
			petbattle(ach(60949)),	-- Flying Battler of Northrend
			petbattle(ach(60950)),	-- Humanoid Battler of Northrend
			petbattle(ach(60952)),	-- Magic Battler of Northrend
			petbattle(ach(60953)),	-- Mechanical Battler of Northrend
			petbattle(ach(60954)),	-- Undead Battler of Northrend
		})),
	}),
}));
