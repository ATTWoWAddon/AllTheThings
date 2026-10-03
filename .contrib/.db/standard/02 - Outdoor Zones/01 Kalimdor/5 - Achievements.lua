---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KALIMDOR, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 61051, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Kalimdor
			petbattle(ach(61051, {	-- Family Battler of Kalimdor (automated)
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61041,	-- Aquatic Battler of Kalimdor
					61042,	-- Beast Battler of Kalimdor
					61043,	-- Critter Battler of Kalimdor
					61044,	-- Dragonkin Battler of Kalimdor
					61045,	-- Elemental Battler of Kalimdor
					61046,	-- Flying Battler of Kalimdor
					61047,	-- Humanoid Battler of Kalimdor
					61048,	-- Magic Battler of Kalimdor
					61049,	-- Mechanical Battler of Kalimdor
					61050,	-- Undead Battler of Kalimdor
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(258737) },	-- Moon Darter (PET!)
			})),
			petbattle(ach(61041)),	-- Aquatic Battler of Kalimdor
			petbattle(ach(61042)),	-- Beast Battler of Kalimdor
			petbattle(ach(61043)),	-- Critter Battler of Kalimdor
			petbattle(ach(61044)),	-- Dragonkin Battler of Kalimdor
			petbattle(ach(61045)),	-- Elemental Battler of Kalimdor
			petbattle(ach(61046)),	-- Flying Battler of Kalimdor
			petbattle(ach(61047)),	-- Humanoid Battler of Kalimdor
			petbattle(ach(61048)),	-- Magic Battler of Kalimdor
			petbattle(ach(61049)),	-- Mechanical Battler of Kalimdor
			petbattle(ach(61050)),	-- Undead Battler of Kalimdor
		})),
	}),
}));
