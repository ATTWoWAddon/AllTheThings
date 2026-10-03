---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 61040, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Eastern Kingdoms
			petbattle(ach(61040, {	-- Family Battler of Eastern Kingdoms (automated)
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61029,	-- Aquatic Battler of Eastern Kingdoms
					61030,	-- Beast Battler of Eastern Kingdoms
					61031,	-- Critter Battler of Eastern Kingdoms
					61032,	-- Dragonkin Battler of Eastern Kingdoms
					61033,	-- Elemental Battler of Eastern Kingdoms
					61034,	-- Flying Battler of Eastern Kingdoms
					61035,	-- Humanoid Battler of Eastern Kingdoms
					61036,	-- Magic Battler of Eastern Kingdoms
					61037,	-- Mechanical Battler of Eastern Kingdoms
					61028,	-- Undead Battler of Eastern Kingdoms
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(205017) },	-- Byrn (PET!)
			})),
			petbattle(ach(61029)),	-- Aquatic Battler of Eastern Kingdoms
			petbattle(ach(61030)),	-- Beast Battler of Eastern Kingdoms
			petbattle(ach(61031)),	-- Critter Battler of Eastern Kingdoms
			petbattle(ach(61032)),	-- Dragonkin Battler of Eastern Kingdoms
			petbattle(ach(61033)),	-- Elemental Battler of Eastern Kingdoms
			petbattle(ach(61034)),	-- Flying Battler of Eastern Kingdoms
			petbattle(ach(61035)),	-- Humanoid Battler of Eastern Kingdoms
			petbattle(ach(61036)),	-- Magic Battler of Eastern Kingdoms
			petbattle(ach(61037)),	-- Mechanical Battler of Eastern Kingdoms
			petbattle(ach(61028)),	-- Undead Battler of Eastern Kingdoms
		})),
	}),
}));
