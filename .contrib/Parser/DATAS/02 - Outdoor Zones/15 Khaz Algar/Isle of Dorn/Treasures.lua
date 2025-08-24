---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(ISLE_OF_DORN, {
		n(TREASURES, {
			-- Repeatable
			o(444065, {	-- Elemental Geode
				["coords"] = {
					{ 45.6, 60.2, ISLE_OF_DORN },
					{ 77.1, 35.7, ISLE_OF_DORN },
					{ 70.0, 53.8, ISLE_OF_DORN },
				},
			}),
			o(444066, {	-- Keeper's Stash
				["coords"] = {
					{ 62.4, 38.3, ISLE_OF_DORN },
					{ 38.8, 25.0, ISLE_OF_DORN },
				},
			}),
			--
			o(442814, {	-- Boskroot Cap
				["coords"] = {
					{ 52.4, 67.3, ISLE_OF_DORN },
					{ 52.3, 66.4, ISLE_OF_DORN },
					{ 52.2, 66.5, ISLE_OF_DORN },
					{ 52.3, 66.5, ISLE_OF_DORN },
					{ 52.9, 66.0, ISLE_OF_DORN },
					{ 52.5, 65.7, ISLE_OF_DORN },
					{ 52.8, 65.4, ISLE_OF_DORN },
					{ 53.7, 66.9, ISLE_OF_DORN },
					{ 52.6, 67.1, ISLE_OF_DORN },
				},
				["groups"] = {
					i(221550),	-- Boskroot Cap
				},
			}),
			n(212928, {	-- Dalaran Sewer Turtle
				["description"] = "5 min wait after turnin of the Dornish Pike until the Goldengill Trout is available. You will be able to loot the battle pet in Dornogal.",
				["coord"] = { 40.9, 73.8, ISLE_OF_DORN },
				["questID"] = 79586,
				["cost"] = {
					{"i", 220143, 5},	-- 5x Dornish Pike
					{"i", 222533, 1},	-- 1x Goldengill Trout
				},
			}),
			o(443754, {	-- Earthen Coffer
				["coord"] = { 59.2, 27.5, ISLE_OF_DORN },
			}),
			o(442718, {	-- Elemental Pearl
				["coord"] = { 53.0, 18.5, ISLE_OF_DORN },
				["groups"] = {
					i(221504),	-- Elemental Pearl
				},
			}),
			n(222940, {	-- Freysworn Letitia
				["description"] = "Find 6 Pearlescent Shellcrab around Isle of Dorn.",
				["coord"] = { 48.6, 30.0, ISLE_OF_DORN },
				["groups"] = {
					i(224185),	-- Crab-Guiding Branch
					q(82751, {	-- First Crab
						["name"] = "First Crab",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 50.7, 70.6, ISLE_OF_DORN },
					}),
					q(82752, {	-- Second Crab
						["name"] = "Second Crab",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 74.9, 49.4, ISLE_OF_DORN },
					}),
					q(82753, {	-- Third Crab
						["name"] = "Third Crab",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 70.8, 20.0, ISLE_OF_DORN },
					}),
					q(82754, {	-- Fourth Crab
						["name"] = "Fourth Crab",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 41.9, 27.0, ISLE_OF_DORN },
					}),
					q(82755, {	-- Fifth Crab
						["name"] = "Fifth Crab",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 19.7, 58.4, ISLE_OF_DORN },
					}),
					q(82756, {	-- Sixth Crab
						["name"] = "Sixth Crab",
						["description"] = "On tree branch.",
						["providers"] = {
							{ "n", 224548 },	-- Pearlescent Shellcrab
							{ "i", 224185 },	-- Crab-Guiding Branch
						},
						["coord"] = { 38.3, 42.0, ISLE_OF_DORN },
					}),
					o(443318, {	-- Tree's Treasure
						["sourceQuests"] = { 82751, 82752, 82753, 82754, 82755, 82756 },
						["questID"] = 83242,
						["groups"] = {
							i(224585),	-- Hanna's Locket (TOY!)
						},
					}),
				},
			}),
			o(441183, {	-- Galan's Edict
				["coord"] = { 37.3, 52.5, ISLE_OF_DORN },
				["questID"] = 82038,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(446473, {	-- Infused Fire-Honey Milk
				["coord"] = { 56.2, 60.9, ISLE_OF_DORN },
				["questID"] = 82714,
				["groups"] = {
					i(224263),	-- Infused Fire-Honey Milk
				},
			}),
			o(444773, {	-- Jade Pearl
				["coord"] = { 77.2, 24.5, ISLE_OF_DORN },
				["questID"] = 82287,
				["groups"] = {
					i(223280),	-- Jade Pearl
				},
			}),
			o(444899, {	-- Kobold Pickaxe
				["coord"] = { 62.6, 43.3, ISLE_OF_DORN },
				["questID"] = 82325,
				["groups"] = {
					i(223484),	-- Kobold Mastermind's "Pivel"
				},
			}),
			n(223104, {	-- Lionel
				["description"] = "After you kick Lionel back into water, find 5 |cff888888Plump Snapcrabs|r on the shore and feed him.",
				["crs"] = { 223159 },	-- Plump Snapcrab
				["coord"] = { 40.6, 59.9, ISLE_OF_DORN },
				["questID"] = 82212,	-- Weak Lionfish
				["cost"] = {{"i", 222906, 5}},	-- 5x Plump Snapcrab
				["groups"] = {
					o(444022, {	-- Magical Treasure Chest
						["coord"] = { 40.7, 59.7, ISLE_OF_DORN },
						["questID"] = 83243,
						["groups"] = {
							i(224579),	-- Sapphire Crab (PET!)
						},
					}),
				},
			}),
			o(443638, {	-- Mosswool Flower
				["description"] = "Interact with Lost Mosswool 3 times to spawn this treasure.",
				["questID"] = 83246,
				["coord"] = { 59.7, 28.7, ISLE_OF_DORN },
				["groups"] = {
					i(224450),	-- Lil' Moss Rosy (PET!)
					n(222956, {	-- Lost Mosswool
						["description"] = "1st Mosswool spot",
						["questID"] = 82145,	-- The Lost Mosswool
						["coord"] = { 59.6, 24.6, ISLE_OF_DORN },
					}),
					n(222963, {	-- Lost Mosswool
						["description"] = "2nd Mosswool spot",
						["questID"] = 82145,	-- The Lost Mosswool
						["coord"] = { 59.1, 27.1, ISLE_OF_DORN },
					}),
					n(222965, {	-- Lost Mosswool
						["description"] = "3rd Mosswool spot",
						["questID"] = 82145,	-- The Lost Mosswool
						["coord"] = { 59.7, 28.7, ISLE_OF_DORN },
					}),
				},
			}),
			o(444894, {	-- Shimmering Opal Lily
				["description"] = "At the bottom of the cave.\nDespawns after being looted by someone. You may need to wait for it to respawn.",
				["coord"] = { 48.9, 60.9, ISLE_OF_DORN },
				["questID"] = 82326,
			}),
			o(423854, {	-- Soulwell
				["description"] = "Can be obtained only during the Introductory quest chain.",
				["coord"] = { 31.5, 54.2, ISLE_OF_DORN },
				["questID"] = 84494,
				["groups"] = {
					i(228417),	-- Emergency Healthstone
				},
			}),
			o(441223, {	-- Stone of The Unbound
				["coord"] = { 44.1, 30.1, ISLE_OF_DORN },
				["questID"] = 82046,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(223227, {	-- One-Eyed Thak
				["crs"] = { 223247 },	-- One-Eyed Thak
				["coords"] = {
					{ 38.1, 43.5, ISLE_OF_DORN },
					{ 36.9, 42.3, ISLE_OF_DORN },
				},
				["questID"] = 82245,	-- Friendly Thak
				["groups"] = {
					o(444137, {	-- Thak's Treasure
						["coord"] = { 36.9, 42.2, ISLE_OF_DORN },
						["questID"] = 82246,
					}),
				},
			}),
			o(441231, {	-- Titan Console
				["coord"] = { 78.1, 27.9, ISLE_OF_DORN },
				["questID"] = 82045,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222894, {	-- U'llort the Self-Exiled
				["description"] = "Talk to U'llort then bring it |cff888888Boskroot Cap|r from the woods nearby.",
				["coord"] = { 55.0, 65.6, ISLE_OF_DORN },
				["questID"] = 82142,
				["cost"] = {{"i", 221550, 1}},	-- 1x Boskroot Cap
				["groups"] = {
					o(444233, {	-- Mushroom Cap
						["questID"] = 83245,
					}),
				},
			}),
			o(441797, {	-- Void-Scarred Stormhammer
				["coord"] = { 29.0, 36.2, ISLE_OF_DORN },
				["groups"] = {
					i(220770),	-- Void-Scarred Stormhammer
				},
			}),
			o(441284, {	-- Watcher of the North
				["coord"] = { 57.2, 20.0, ISLE_OF_DORN },
				["questID"] = 82047,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			o(441278, {	-- Watcher of the South
				["coord"] = { 42.1, 80.2, ISLE_OF_DORN },
				["questID"] = 82048,
				-- #if AFTER 11.0.2.56313
				-- #if BEFORE 11.0.7
				["description"] = "This object for its achievement is currently disabled by Blizzard and will be readded in a future patch.",
				-- #endif
				-- #endif
				["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
			}),
			n(222847, {	-- Weary Water Elemental
				["coord"] = { 54.1, 19.0, ISLE_OF_DORN },
				["questID"] = 82134,
				["cost"] = {{"i", 221504, 1}},	-- 1x Elemental Pearl
				["groups"] = {
					o(444215, {	-- Mysterious Orb
						["questID"] = 83244,
						["groups"] = {
							i(224373),	-- Waterlord's Iridescent Gem
						},
					}),
				},
			}),
			o(446476, {	-- Web-wrapped Axe
				["coord"] = { 59.1, 23.5, ISLE_OF_DORN },
				["questID"] = 82715,
				["groups"] = {
					i(224290),	-- Storm Defender's Axe
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(ISLE_OF_DORN, {
			n(TREASURES, {
				q(82227),	-- Extra HQT: Magical Treasure Chest
				q(82253),	-- Extra HQT: Mushroom Cap
				q(82251),	-- Extra HQT: Mosswool Flower
				q(82252),	-- Completed with Quest 83244 (Mysterious Orb)
				q(79585),	-- Dalaran Sewer Turtle: Needs more time
				q(82160),	-- Gathered all the Pearlescent Shellcrab.
			}),
		}),
	}),
}));
