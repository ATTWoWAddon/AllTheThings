---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		n(ACHIEVEMENTS, {
			ach(40840),		-- Adventurer of Azj-Kahet (automated)
			ach(41189, {	-- Azj the World Turns
				["timeline"] = { ADDED_11_0_7 },
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40840,	-- Adventurer of Azj-Kahet
					40629,	-- Bookworm
					40624,	-- Itsy Bitsy Spider
					40542,	-- Smelling History
					40633,	-- The Unseeming
					40828,	-- Treasures of Azj-Kahet
					40869,	-- Worm Theory
					40634,	-- You Can't Hang With Us
				}},
			}),
			ach(19559),		-- Azj-Kahet (automated)
			skyriding(ach(40705, {	-- Azj-Kahet Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40691,	-- Skyriding Glyphs: Arathi's End
					40696,	-- Skyriding Glyphs: Deepwalker Pass
					40694,	-- Skyriding Glyphs: Eye of Ansurek
					40695,	-- Skyriding Glyphs: Old Sacrificial Pit
					40698,	-- Skyriding Glyphs: Rak-Ush
					40693,	-- Skyriding Glyphs: Ruptured Lake
					40692,	-- Skyriding Glyphs: Siegehold
					40699,	-- Skyriding Glyphs: Silken Ward
					40697,	-- Skyriding Glyphs: The Maddening Deep
					40700,	-- Skyriding Glyphs: Trickling Abyss
					40701,	-- Skyriding Glyphs: Untamed Valley
				}},
			})),
			ach(40620),		-- Back to the Wall
			ach(40629),		-- Bookworm (automated)
			ach(40822),		-- Explore Azj-Kahet (automated)
			ach(40624, {	-- Itsy Bitsy Spider
				crit(68972, {	-- Webster
					["coord"] = { 39.4, 65.4, NERUBAR },
				}),
				crit(68973, {	-- Spindle
					["coord"] = { 55.6, 43.9, AZJ_KAHET },	-- NPCID: 216213
				}),
				crit(68976, {	-- Ru'murh
					["coord"] = { 41.54, 22.45, NERUBAR },
				}),
				crit(68977, {	-- Thimble
					["coords"] = {
						{ 55.9, 32.4, NERUBAR },
						{ 55.1, 68.8, NERUBAR },	-- NPCID: 220568
						{ 60.6, 10.6, AZJ_KAHET },	-- NPCID: 224894
					},
				}),
				crit(68978, {	-- Scampering Weave-Rat
					["coord"] = { 49.6, 15.7, NERUBAR },
				}),
				crit(3236, {	-- Bobbin
					["coord"] = { 56.4, 43.2, AZJ_KAHET },
				}),
			}),
			ach(40843),		-- Mine Poppin'
			header(HEADERS.Achievement, 40632, {	-- No Harm Ever Came From Reading A Book
				q(83741, {	-- Step 1: Interact with the Fleshy Grimoire
					["name"] = "|cFFFFFFFFStep 1|r: Interact with the Fleshy Grimoire",
					["description"] = "Enter the cave then walk around to the back where you will find a climbable wall marked by three tiny non-targetable spiders on the ledges. Climb up and near the top will be a small hole, fall through then interact with the book on your left.",
					["provider"] = { "o", 455288 },	-- Fleshy Grimoire
					["coords"] = {
						{ 56.7, 85.1, AZJ_KAHET },	-- Cave Entrance
						{ 66.77, 56.26, NERUBAR_LOWER },	-- Void Hole
					},
				}),
				q(83746, {	-- Step 2A: Find Another You in Mmarl
					["name"] = "|cFFFFFFFFStep 2A|r: Find Another You in Mmarl",
					["description"] = "One of your shades escaped to Mmarl, use /target Another to find them then speak with them to send them back. The shades must be interacted with in order, but that order is random. If you cannot see them, try finding another shade first or approach from a different direction.",
					["sourceQuests"] = { 83741 },
					["provider"] = { "n", 227452 },	-- Another You
					["coord"] = { 78.7, 62.1, AZJ_KAHET },
				}),
				q(83747, {	-- Step 2B: Find Another You in The Weaver's Lair
					["name"] = "|cFFFFFFFFStep 2B|r: Find Another You in The Weaver's Lair",
					["description"] = "One of your shades escaped to The Weaver's Lair, use /target Another to find them then speak with them to send them back. The shades must be interacted with in order, but that order is random. If you cannot see them, try finding another shade first or approach from a different direction.",
					["sourceQuests"] = { 83741 },
					["provider"] = { "n", 227452 },	-- Another You
					["coord"] = { 57.1, 44.2, AZJ_KAHET },
				}),
				q(83745, {	-- Step 2C: Fin Another You in Faerin's Advance
					["name"] = "|cFFFFFFFFStep 2C|r: Find Another You in Faerin's Advance",
					["description"] = "One of your shades escaped to The Faerin's Advance, use /target Another to find them then speak with them to send them back. The shades must be interacted with in order, but that order is random. If you cannot see them, try finding another shade first or approach from a different direction.",
					["sourceQuests"] = { 83741 },
					["provider"] = { "n", 227452 },	-- Another You
					["coord"] = { 58.7, 20.1, AZJ_KAHET },
				}),
				q(83744, {	-- Step 2D: Find Another You in Wildcamp Or'lay
					["name"] = "|cFFFFFFFFStep 2D|r: Find Another You in Wildcamp Or'lay",
					["description"] = "One of your shades escaped to Wildcamp Or'lay, use /target Another to find them then speak with them to send them back. The shades must be interacted with in order, but that order is random. If you cannot see them, try finding another shade first or approach from a different direction.",
					["sourceQuests"] = { 83741 },
					["provider"] = { "n", 227452 },	-- Another You
					["coord"] = { 24.1, 52.6, AZJ_KAHET },
				}),
				q(83724, {	-- Step 3: Return to the Grimoire
					["name"] = "|cFFFFFFFFStep 3|r: Return to the Grimoire",
					["description"] = "Return to the grimoire in the void cave and speak to one of your shades to earn the achievement.",
					["sourceQuests"] = {
						83746,	-- Step 2A
						83747,	-- Step 2B
						83745,	-- Step 2C
						83744,	-- Step 2D
					},
					["provider"] = { "n", 227421 },	-- Another You
					["coords"] = {
						{ 56.7, 85.1, AZJ_KAHET },	-- Cave Entrance
						{ 66.77, 56.26, NERUBAR_LOWER },	-- Void Hole
					},
					["groups"] = {
						ach(40632),		-- No Harm Ever Came From Reading A Book
					},
				}),
			}),
			ach(40727, {	-- Skittershaw Spin
				["cr"] = 224973,	-- High Hollows Skittershaw
				["coords"] = {
					{ 65.2, 57.2, NERUBAR },
					{ 71.4, 50.0, NERUBAR },
					{ 76.5, 55.0, NERUBAR },
					{ 75.9, 63.7, NERUBAR },
					{ 71.0, 67.2, NERUBAR },
				},
			}),
			skyriding(ach(40691, {	-- Skyriding Glyphs: Arathi's End
				["coord"] = { 63.4, 13.7, AZJ_KAHET },
			})),
			skyriding(ach(40696, {	-- Skyriding Glyphs: Deepwalker Pass
				["coord"] = { 58.6, 89.8, AZJ_KAHET },
			})),
			skyriding(ach(40694, {	-- Skyriding Glyphs: Eye of Ansurek
				["coord"] = { 43.1, 57.0, AZJ_KAHET },
			})),
			skyriding(ach(40695, {	-- Skyriding Glyphs: Old Sacrificial Pit
				["coord"] = { 13.3, 33.5, NERUBAR },
			})),
			skyriding(ach(40698, {	-- Skyriding Glyphs: Rak-Ush
				["coord"] = { 73.2, 84.1, AZJ_KAHET },
			})),
			skyriding(ach(40693, {	-- Skyriding Glyphs: Ruptured Lake
				["coord"] = { 25.1, 40.6, AZJ_KAHET },
			})),
			skyriding(ach(40692, {	-- Skyriding Glyphs: Siegehold
				["coord"] = { 46.7, 21.3, AZJ_KAHET },
			})),
			skyriding(ach(40699, {	-- Skyriding Glyphs: Silken Ward
				["coord"] = { 57.6, 57.6, AZJ_KAHET },
			})),
			skyriding(ach(40697, {	-- Skyriding Glyphs: The Maddening Deep
				["coord"] = { 66.3, 85.1, AZJ_KAHET },
			})),
			skyriding(ach(40700, {	-- Skyriding Glyphs: Trickling Abyss
				["coord"] = { 70.5, 25.2, AZJ_KAHET },
			})),
			skyriding(ach(40701, {	-- Skyriding Glyphs: Untamed Valley
				["coord"] = { 65.4, 51.7, AZJ_KAHET },
			})),
			ach(40542, {	-- Smelling History (automated)
				--i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),	-- Kaheti Scribe's Records (DECOR!)
			}),
			ach(40636),		-- Sojourner of Azj-Kahet (automated)
			ach(40633, {	-- The Unseeming
				["description"] = "Stand in the pool and acquire 100 stacks of 'Unseeming Shift' debuff.",
				["coord"] = { 67.2, 28.4, AZJ_KAHET },
			}),
			pvp(ach(40086)),	-- Tour of Duty: Azj-Kahet
			ach(40828),		-- Treasures of Azj-Kahet (automated)
			-- TODO: Worm Theory looks like it should have criteria but Blizzard didn't add them yet (Wagotools has them though?). Check this later.
			ach(40869, {	-- Worm Theory (automated)
				i(225934),	-- Lil' Bonechewer (PET!)
			}),
			ach(40634),		-- You Can't Hang With Us
		}),
	}),
}));
