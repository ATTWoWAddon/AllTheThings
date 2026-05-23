---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(STORMSONG_VALLEY, {
		n(ACHIEVEMENTS, {
			ach(12940, {	-- Adventurer of Stormsong Valley
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(13047),		-- Clever Use of Mechanical Explosives
			ach(13053, {	-- Deadliest Cache
				["sourceQuests"] = { 52130 },	-- Deadliest Cache: Carpe Diem
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12558),	-- Explore Stormsong Valley
			ach(13045),		-- Every Day I'm Truffling
			ach(13051),		-- Legends of the Tidesages (automated)
			ach(13054, {	-- Sabertron Assemble
				crit(41420, {	-- Red Sabertron slain
					["_quests"] = { 51947, 51956 },	-- Sabertron (RED) / Default Sabertron
					["crs"] = { 139328 },
				}),
				crit(41421, {	-- Yellow Sabertron slain
					["_quests"] = { 51977 },	-- Sabertron (YELLOW)
					["crs"] = { 139335 },
				}),
				crit(41422, {	-- Orange Sabertron slain
					["_quests"] = { 51978 },	-- Sabertron (ORANGE)
					["crs"] = { 139356 },
				}),
				crit(41423, {	-- Green Sabertron slain
					["_quests"] = { 51976 },	-- Sabertron (GREEN)
					["crs"] = { 139336 },
				}),
				crit(41424, {	-- Copper Sabertron slain
					["_quests"] = { 51974 },	-- Sabertron (COPPER)
					["crs"] = { 139359 },
				}),
			}),
			ach(41206, {	-- Songs of Storms
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					12940,	-- Adventurer of Stormsong Valley
					13047,	-- Clever Use of Mechanical Explosives
					13053,	-- Deadliest Cache
					13045,	-- Every Day I'm Truffling
					13062,	-- Let's Bee Friends
					13051,	-- Legends of the Tidesages
					12853,	-- Treasures of Stormsong Valley
					13046,	-- These Hills Sing
				}},
			}),
			ach(12953, {	-- Storm's Wake
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12496, {	-- Stormsong and Dance
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					crit(40160, {	-- The Tidesages of Stormsong
						["sourceQuests"] = { 51401 },	-- Carry On
					}),
					crit(40194, {	-- A House in Peril
						["sourceQuests"] = { 49997 },	-- Storm's Judgment
					}),
					crit(40195, {	-- The Growing Tempest
						["sourceQuests"] = { 50611 },	-- Storm's Vengeance
					}),
					crit(40196, {	-- At the Edge of Madness
						["sourceQuests"] = { 50824 },	-- Storm's End
					}),
					crit(40198, {	-- Cycle of Hatred
						["sourceQuests"] = { 51712 },	-- Eye for an Eye
					}),
					crit(40162, {	-- From the Depths They Come
						["sourceQuests"] = { 49831 },	-- From the Depths
					}),
					crit(40161, {	-- Briarback Kraul
						["sourceQuests"] = { 50640 },	-- A Question of Quillpower
					}),
					crit(40197, {	-- Treasure in Deadwash
						["sourceQuests"] = { 50742 },	-- All Laid Out for Us
					}),
				},
			}),
			ach(13046),		-- These Hills Sing
			ach(12956),		-- Tortollan Seekers
			pvp(ach(12578)),	-- Tour of Duty: Stormsong Valley
			ach(12853),	-- Treasures of Stormsong Valley
		}),
	}),
})));
