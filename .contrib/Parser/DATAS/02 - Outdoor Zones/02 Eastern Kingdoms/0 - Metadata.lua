---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(EASTERN_KINGDOMS, {
		["lore"] = "The Eastern Kingdoms are the eastern continents on the world of Azeroth. The Eastern Kingdoms is made up from a group of smaller continents (Azeroth, Khaz Modan and Lordaeron) formed from the original continent of Kalimdor following the Great Sundering. The Eastern Kingdoms lie to the east of the Great Sea and to the west of the Forbidding Sea. The central part of the Eastern Kingdoms is dominated by the Khaz Mountains and the Redridge Mountains. Both cover several zones.",
		["icon"] = 236759,
		["zone-text-continent"] = true,
		-- #if ANYCLASSIC
		["maps"] = { 1463 },
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(42),	-- Eastern Kingdoms Explorer [7.0.3] / Explore Eastern Kingdoms (automated)
				petbattle(ach(6586, { ["timeline"] = { ADDED_5_0_4 } })),	-- Eastern Kingdoms Safari (automated)
				petbattle(ach(6613, { ["timeline"] = { ADDED_5_0_4 } })),	-- Eastern Kingdoms Tamer (automated)
				ach(12456, {	-- Loch Modan & Wetlands Quests (automated)
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1676, {	-- Loremaster of Eastern Kingdoms (A) (automated)
					-- #if BEFORE 5.0.4
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				-- #if BEFORE 5.0.4
				ach(1677, {	-- Loremaster of Eastern Kingdoms (H) (automated)
					["timeline"] = { DELETED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				-- #endif
				petbattle(ach(6603, {	-- Taming Eastern Kingdoms (automated)
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				ach(12455, {	-- Westfall & Duskwood Quests (automated)
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_7_3_5 },
				}),
			}),
		},
	}),
});
