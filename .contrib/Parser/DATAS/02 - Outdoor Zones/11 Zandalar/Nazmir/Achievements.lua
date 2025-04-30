---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(ACHIEVEMENTS, {
			ach(12942, {	-- Adventurer of Nazmir
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(41203, {	-- Bwon Voyage
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					13021,	-- A Most Efficient Apocalypse
					12942,	-- Adventurer of Nazmir
					13024,	-- Carved in Stone, Written in Blood
					12588,	-- Eat Your Greens
					13028,	-- Hoppin' Sad
					13023,	-- It's Really Getting Out of Hand
					13022,	-- Revenge is Best Served Speedily
					12771,	-- Treasures of Nazmir
				}},
			}),
			ach(13024),		-- Carved in Stone, Written in Blood (automated)
			ach(12588, {	-- Eat Your Greens
				crit(40542, {	-- Saurolisk Tail
					["provider"] = {"o",291233},	-- Saurolisk Tail
					["coords"] = {
						{ 30.3, 52.7, NAZMIR },
						{ 30.1, 39.7, NAZMIR },
						{ 47.5, 35.1, NAZMIR },
					},
					["icon"] = 459041,
				}),
				crit(40543, {	-- Bwonsamdi's Tears
					["provider"] = {"o",291238},	-- Bwonsamdi's Tears
					["coords"] = {
						{ 55.6, 74.7, NAZMIR },
						{ 46.1, 71.9, NAZMIR },
					},
					["icon"] = 1785788,
				}),
				crit(40544, {	-- Gnarl Root
					["provider"] = {"o",291241},	-- Gnarl Root
					["coords"] = {
						{ 28.0, 35.3, NAZMIR },
						{ 35.2, 66.4, NAZMIR },
						{ 48.7, 74.9, NAZMIR },
					},
					["icon"] = 134187,
				}),
				crit(40546, {	-- Sapphire Amaraina
					["provider"] = {"o",292812},	-- Sapphire Amaraina
					["coords"] = {
						{ 73.7, 39.7, NAZMIR },
						{ 81.9, 55.9, NAZMIR },
					},
					["icon"] = 959805,
				}),
				crit(40549, {	-- Krag'wa's Ire
					["provider"] = {"o",292823},	-- Krag'wa's Ire
					["coords"] = {
						{ 52.6, 35.8, NAZMIR },
						{ 50.4, 39.7, NAZMIR },
					},
					["icon"] = 960694,
				}),
				crit(40550, {	-- Stonebloom
					["provider"] = {"o",292825},	-- Stonebloom
					["coords"] = {
						{ 54.5, 56.1, NAZMIR },
						{ 55.4, 67.1, NAZMIR },
						{ 76.3, 61.0, NAZMIR },
						{ 49.4, 48.9, NAZMIR },
						{ 51.8, 24.3, NAZMIR },
					},
					["icon"] = 134439,
				}),
			}),
			explorationAch(12561),	-- Explore Nazmir
			ach(13028, {	-- Hoppin' Sad
				["cr"] = 143317,	-- Lost Spawn of Krag'wa
				["g"] = {
					hqt(53417, {
						["name"] = "Lost Spawn of Krag'wa (The Shattered River)",
						["coord"] = { 69.5, 58.6, NAZMIR },
					}),
					hqt(53418, {
						["name"] = "Lost Spawn of Krag'wa (Razorjaw River)",
						["coord"] = { 65.5, 50.9, NAZMIR },
					}),
					hqt(53419, {
						["name"] = "Lost Spawn of Krag'wa (Zul'Nazman)",
						["coord"] = { 56.0, 65.0, NAZMIR },
					}),
					hqt(53421, {
						["name"] = "Lost Spawn of Krag'wa (Grimwatt's Crash)",
						["coord"] = { 33.4, 61.5, NAZMIR },
					}),
					hqt(53420, {
						["name"] = "Lost Spawn of Krag'wa (Ruins)",
						["coord"] = { 52.8, 42.8, NAZMIR },
					}),
					hqt(53422, {
						["name"] = "Lost Spawn of Krag'wa (Drenched Cavern)",
						["coord"] = { 44.6, 92.7, NAZMIR },
					}),
					hqt(53423, {
						["name"] = "Lost Spawn of Krag'wa (Primal Wetlands)",
						["coord"] = { 28.8, 83.1, NAZMIR },
					}),
					hqt(53424, {
						["name"] = "Lost Spawn of Krag'wa (Antul'Mita Plateau)",
						["coord"] = { 24.1, 91.7, NAZMIR },
					}),
					hqt(53425, {
						["name"] = "Lost Spawn of Krag'wa (Plains of Tojek)",
						["coord"] = { 21.8, 69.3, NAZMIR },
					}),
					hqt(53426, {
						["name"] = "Lost Spawn of Krag'wa (Sethrak Front)",
						["coord"] = { 25.6, 40.5, NAZMIR },
					}),
				},
			}),
			ach(12948, {	-- Talanji's Expedition
				["races"] = HORDE_ONLY,
			}),
			ach(11868, {	-- The Dark Heart of Nazmir
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(36955, {	-- Deep in the Swamp
						["sourceQuests"] = { 47188 },	-- The Aid of the Loa
					}),
					crit(36956, {	-- A Pact with Death
						["sourceQuests"] = { 47250 },	-- We'll Meet Again
					}),
					crit(37971, {	-- Undercover Sista
						["sourceQuests"] = { 49082 },	-- Upward and Onward
					}),
					crit(37970, {	-- Turtle Power
						["sourceQuests"] = { 49160 },	-- Torga's Eternal Return
					}),
					crit(36957, {	-- A Friend in the Frogs
						["sourceQuests"] = { 47696 },	-- Krag'wa the Terrible
					}),
					crit(36979, {	-- Bring the Boom
						["sourceQuests"] = { 47601 },	-- Field Evaluation
					}),
					crit(36958, {	-- Everything Contained
						["sourceQuests"] = { 49985 },	-- Return to Gloom Hollow
					}),
					crit(36978, {	-- Bleeding the Blood Trolls
						["sourceQuests"] = { 50087 },	-- Ateena's Fall
					}),
				},
			}),
			ach(13263, {	-- The Shadow Hunter
				["sourceQuests"] = { 53782 },	-- Mysteries of Death
				["races"] = HORDE_ONLY,
			}),
			pvp(ach(12574)),	-- Tour of Duty: Nazmir
			ach(12771, {	-- Treasures of Nazmir
				crit(40857, {		-- Lucky Horace's Lucky Chest
					["_quests"] = { 49867 },
				}),
				crit(40858, {		-- Partially-Digested Treasure
					["_quests"] = { 50061 },
				}),
				crit(40859, {		-- Cursed Nazmani Chest
					["_quests"] = { 49979 },
				}),
				crit(40860, {		-- Cleverly Disguised Chest
					["_quests"] = { 49885 },
				}),
				crit(40861, {		-- Lost Nazmani Treasure
					["_quests"] = { 49891 },
				}),
				crit(40862, {		-- Offering to Bwonsamdi
					["_quests"] = { 49484 },
				}),
				crit(40863, {		-- Shipwrecked Chest
					["_quests"] = { 49483 },
				}),
				crit(40864, {		-- Venomous Seal
					["_quests"] = { 49889 },
				}),
				crit(40865, {		-- Swallowed Naga Chest
					["_quests"] = { 50045 },
				}),
				crit(40866, {		-- Wunja's Trove
					["_quests"] = { 49313 },
				}),
			}),
		}),
	}),
})));