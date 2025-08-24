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
			ach(12853, {	-- Treasures of Stormsong Valley
				-- TODO: _quests on crits / move objects to /Treasures.lua
				-- crit(1, {	-- Weathered Treasure Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(2, {	-- Old Ironbound Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(3, {	-- Frosty Treasure Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(4, {	-- Sunken Strongbox
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(5, {	-- Hidden Scholar's Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(6, {	-- Smuggler's Stash
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(7, {	-- Discarded Lunchbox
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(8, {	-- Carved Wooden Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(9, {	-- Venture Co. Supply Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				-- crit(10, {	-- Forgotten Chest
					-- ["_quests"] = { QUESTID },
				-- }),
				o(293350, {	-- Carved Wooden Chest
					["questID"] = 52429,
					["icon"] = 1001977,
					["coord"] = { 44.44, 73.53, STORMSONG_VALLEY },
					["groups"] = {
						i(162000),	-- Pig Nose
					},
				}),
				o(293349, {	-- Discarded Lunchbox
					["questID"] = 52326,
					["icon"] = 1001977,
					["coord"] = { 58.2, 63.7, STORMSONG_VALLEY },
					["groups"] = {
						i(160485),	-- An Unforgettable Luncheon
					},
				}),
				o(294174, {	-- Forgotten Chest
					["questID"] = 52980,
					["icon"] = 1001977,
					["coord"] = { 46.00, 30.69, STORMSONG_VALLEY },
				}),
				o(281494, {	-- Frosty Treasure Chest
					["questID"] = 50526,
					["icon"] = 1001977,
					["coord"] = { 48.96, 84.07, STORMSONG_VALLEY },
				}),
				o(284448, {	-- Hidden Scholar's Chest
					["questID"] = 50937,
					["icon"] = 1001977,
					["coord"] = { 59.9, 39.1, STORMSONG_VALLEY },
				}),
				o(280619, {	-- Old Ironbound Chest
					["questID"] = 50089,
					["icon"] = 1001977,
					["coord"] = { 42.8, 47.2, STORMSONG_VALLEY },
				}),
				o(279042, {	-- Smuggler's Stash
					["icon"] = 1001977,
					["coord"] = { 58.6, 83.8, STORMSONG_VALLEY },
					["questID"] = 49811,
				}),
				o(282153, {	-- Sunken Strongbox
					["questID"] = 50734,
					["icon"] = 1001977,
					["coord"] = { 67.22, 43.2, STORMSONG_VALLEY },
				}),
				o(294173, {	-- Venture Co. Supply Chest
					["questID"] = 52976,
					["icon"] = 1001977,
					["coord"] = { 36.69, 23.23, STORMSONG_VALLEY },
				}),
				o(289647, {	-- Weathered Treasure Chest
					["questID"] = 51449,
					["icon"] = 1001977,
					["coord"] = { 66.92, 12.03, STORMSONG_VALLEY },
				}),
			}),
		}),
	}),
})));
