---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(VALDRAKKEN, {
		n(REWARDS, {
			i(200452, {	-- Dragonscale Expedition Insignia [Rare]
				["minReputation"] = { FACTION_DRAGONSCALE_EXPEDITION, 25 },
				-- #if BEFORE 10.0.7
				["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				-- #endif
			}),
			i(200453, {	-- Iskaara Tuskarr Insignia [Rare]
				["minReputation"] = { FACTION_ISKAARA_TUSKARR, 30 },
				-- #if BEFORE 10.0.7
				["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				-- #endif
			}),
			i(200454, {	-- Maruuk Centaur Insignia [Rare]
				["minReputation"] = { FACTION_MARUUK_CENTAUR, 25 },
				-- #if BEFORE 10.0.7
				["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				-- #endif
			}),
			i(200455, {	-- Valdrakken Accord Insignia [Rare]
				["minReputation"] = { FACTION_VALDRAKKEN_ACCORD, 30 },
				-- #if BEFORE 10.0.7
				["description"] = "This is only awarded if your character is currently max Renown with this reputation.",
				-- #endif
			}),
			--Note: confirm whether this is raid gear or not, copied over the symlink from weekly vault boxes as template for future
			--i(206135, {	-- Heroic Dungeon Delver's Trophy Chest
				--["sym"] = {
						--{"select", "instanceID", 1200},			-- Vault of the Incarnates
						--{"pop"},								-- Discard the Instance Headers and acquire all of their children.
						--{"where", "difficultyID", 14},			-- Select only the Normal Difficulty Headers.
						--{"pop"},								-- Discard the Difficulty Headers and acquire all of their children.
						--{"is","encounterID"},					-- Only Encounter Headers
						--{"pop"},								-- Discard the Encounter Headers and acquire all of their children.
						--{"is", "itemID"},						-- Only Items!
						--{"invtype", "INVTYPE_HEAD", "INVTYPE_NECK", "INVTYPE_SHOULDER", "INVTYPE_CLOAK", "INVTYPE_CHEST", "INVTYPE_ROBE", "INVTYPE_WRIST", "INVTYPE_HAND", "INVTYPE_WAIST", "INVTYPE_LEGS", "INVTYPE_FEET", "INVTYPE_FINGER", "INVTYPE_TRINKET", "INVTYPE_WEAPON", "INVTYPE_SHIELD", "INVTYPE_RANGED", "INVTYPE_2HWEAPON", "INVTYPE_WEAPONMAINHAND", "INVTYPE_WEAPONOFFHAND", "INVTYPE_HOLDABLE", },
					--},
				--}),
			--}),
		}),
		n(QUESTS, {
			header(HEADERS.Achievement, 16556, {	-- Great Gourmand of The Ruby Feast
				["description"] = "Every Day a new sequence of Quests will appear.",
				["g"] = {
					------ Day 1 ------
					q(71238, {	-- The Ruby Feast!
						["provider"] = { "o", 382166 },	-- The Ruby Feast!
						["coords"] = {
							{ 47.8, 46.6, VALDRAKKEN },
							{ 29.2, 67.9, VALDRAKKEN },
							{ 72.6, 51.0, VALDRAKKEN },
						},
						["isBreadcrumb"] = true,
					}),
					q(70930, {	-- All Tea, No Shadeleaf
						["sourceQuests"] = { 71238 },	-- The Ruby Feast!
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67047, {	-- Warm Away These Shivers
						["sourceQuests"] = { 70930 },	-- All Tea, No Shadeleaf
						["provider"] = { "n", 185778 },	-- Lilial Dawnburst
						["coord"] = { 51.7, 62.0, THE_AZURE_SPAN },
						["g"] = {
							i(200759),	-- Aruunem Berrytart
							i(200885),	-- Cinna-Cinderbloom Tea
							i(194550),	-- Coldsnap Sagittate (QI!)
							i(200886),	-- Lemon Silverleaf Tea
						},
					}),
					------ Day 2 ------
					q(70932, {	-- The Life of Spice
						["sourceQuests"] = { 67047 },	-- Warm Away These Shivers
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67063, {	-- 10,000 Years of Roasting
						["sourceQuests"] = { 70932 },	-- The Life of Spice
						["provider"] = { "n", 189207 },	-- Griftah
						["coord"] = { 25.6, 54.3, THE_WAKING_SHORES },
						["g"] = {
							i(200887),	-- Charred Porter
							i(200888),	-- Coal-Fired Rib Rack
							i(200889),	-- Highly Spiced Haunch
							i(194551),	-- Spicy Lava Spice (QI!)
						},
					}),
					------ Day 3 ------
					q(70957, {	-- The Sea Out West
						["sourceQuests"] = { 67063 },	-- 10,000 Years of Roasting
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67064, {	-- Rambling Delight
						["sourceQuests"] = { 70957 },	-- The Sea Out West
						["provider"] = { "n", 186502 },	-- Sugarbough
						["coord"] = { 28.6, 60.5, OHNAHRAN_PLAINS },
						["g"] = {
							i(200892),	-- Dragonfruit Punch
							i(200891),	-- Druidic Dreamsalad
							i(194552),	-- Glimmering Ramblekelp Bulb (QI!)
							i(200890),	-- Stonetalon Bloom Skewer
						},
					}),
					------ Day 4 ------
					q(70958, {	-- Finest Fungi at the Feast
						["sourceQuests"] = { 67064 },	-- Rambling Delight
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67065, {	-- Future-Fresh Fungi
						["sourceQuests"] = { 70958 },	-- Finest Fungi at the Feast
						["provider"] = { "n", 187025 },	-- Warden Captain Sinjoirmi
						["coord"] = { 60.2, 82.2, THALDRASZUS },
						["g"] = {
							i(200893),	-- Azsunian Poached Lobster
							i(200895),	-- Fine Taladorian Cheese Platter
							i(200894),	-- Rare Vintage Arcwine
							i(194553),	-- Time-Blasted Trufflette (QI!)
						},
					}),
					------ Day 5 ------
					q(70981, {	-- Savory Seas
						["sourceQuests"] = { 67065 },	-- Future-Fresh Fungi
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67066, {	-- Delights to Delve For
						["sourceQuests"] = { 70981 },	-- Savory Seas
						["provider"] = { "n", 186212 },	-- Wayun
						["coord"] = { 7.4, 44.2, THE_AZURE_SPAN },
						["g"] = {
							i(200896),	-- Captain's Caramelized Catfish
							i(200898),	-- Mantis Shrimp Cocktail
							i(194554),	-- Savory Deviant Dealfish (QI!)
							i(200897),	-- Venrik's Goat Milk
						},
					}),
					------ Day 6 ------
					q(70987, {	-- Hearts of Starch
						["sourceQuests"] = { 67066 },	-- Delights to Delve For
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67067, {	-- Navigating the Leapmaize
						["sourceQuests"] = { 70987 },	-- Hearts of Starch
						["provider"] = { "n", 189400 },	-- Meliane Enorath
						["coord"] = { 65.2, 58.0, THE_WAKING_SHORES },
						["g"] = {
							i(200900),	-- Fried Emperor Wraps
							i(200899),	-- Seared Sea Mist Noodles
							i(200901),	-- Roquefort-Stuffed Peppers
							i(194555),	-- Wild Leapmaize (QI!)
						},
					}),
					------ Day 7 ------
					q(70988, {	-- The Egg's the Thing
						["sourceQuests"] = { 67067 },	-- Navigating the Leapmaize
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
					}),
					q(67068, {	-- Anything But a Breeze
						["sourceQuests"] = { 70988 },	-- The Egg's the Thing
						["provider"] = { "n", 196161 },	-- Ilana
						["coord"] = { 85.8, 35.2, OHNAHRAN_PLAINS },
						["g"] = {
							i(194556),	-- Breezehunter Egg (QI!)
							i(200902),	-- Ravenberry Panacotta Delight
							i(200903),	-- Moira's Choice Espresso
							i(200904),	-- Picante Pomfruit Cake
						},
					}),
					------ Day 8 ------
					q(67071, {	-- What a Long, Sweet Trip It's Been
						["sourceQuests"] = { 67068 },	-- Anything But a Breeze
						["provider"] = { "n", 189479 },	-- Rumiastrasza
						["coord"] = { 61.5, 11.8, VALDRAKKEN },
						["altQuests"] = { 72258 },	-- Daily Lockout
						["g"] = {
							i(198132),	-- Recipe: Hoard of Draconic Delicacies (RECIPE!)
							i(202013),	-- Ruby Recipe Journal VIII (QI!)
						},
					}),
				},
			}),
			------ Dryad Storyline ------
			q(67094, {	-- A Dryad's Work Is Never Done
				["sourceQuests"] = {
					66244,	-- To Valdrakken
					70125,	-- Where is Wrathion? (A)
					69910,	-- Where is Wrathion? (H)
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
			}),
			q(67606, {	-- A Dryadic Remedy
				["sourceQuests"] = { 67094 },	-- A Dryad's Work Is Never Done
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
				["cost"] = { { "i", 197769, 1 }, },	-- 1x Tasty Hatchling's Treat
				["g"] = {
					title(467, {	-- <Name>, Honorary Dryad
						["collectible"] = false,
					}),
				},
			}),
			q(69937, {	-- Sylvan Succor
				["sourceQuests"] = { 67094 },	-- A Dryad's Work Is Never Done
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
				["cost"] = { { "i", 197769, 1 }, },	-- 1x Tasty Hatchling's Treat
				["isDaily"] = true,
				["timeline"] = { ADDED_10_0_5 },
				["g"] = {
					title(467, {	-- <Name>, Honorary Dryad
						["collectible"] = false,
					}),
				},
			}),
			q(69939, {	-- Sylvan Succor
				["sourceQuests"] = { 67094 },	-- A Dryad's Work Is Never Done
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
				["cost"] = { { "i", 197766, 1 }, },	-- 1x Snow in a Cone
				["isDaily"] = true,
				["timeline"] = { ADDED_10_0_5 },
				["g"] = {
					title(467, {	-- <Name>, Honorary Dryad
						["collectible"] = false,
					}),
				},
			}),
			q(69940, {	-- Sylvan Succor
				["sourceQuests"] = { 67094 },	-- A Dryad's Work Is Never Done
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
				["cost"] = { { "i", 197767, 1 }, },	-- 1x Blubbery Muffin
				["isDaily"] = true,
				["timeline"] = { ADDED_10_0_5 },
				["g"] = {
					title(467, {	-- <Name>, Honorary Dryad
						["collectible"] = false,
					}),
				},
			}),
			q(69950, {	-- Sylvan Succor
				["sourceQuests"] = { 67094 },	-- A Dryad's Work Is Never Done
				["provider"] = { "n", 192522 },	-- Thalendra
				["coord"] = { 72.8, 66.2, VALDRAKKEN },
				["cost"] = { { "i", 197768, 1 }, },	-- 1x Tasty Hatchling's Treat
				["isDaily"] = true,
				["timeline"] = { ADDED_10_0_5 },
				["g"] = {
					title(467, {	-- <Name>, Honorary Dryad
						["collectible"] = false,
					}),
				},
			}),
			------ Evoker ------
			q(75408, {	-- Calling All Dracthyr!
				["sourceQuests"] = { 75417 },	-- Symbol of Hope
				["provider"] = { "o", 398674 },	-- Vibrant Flyer
				["coord"] = { 55.1, 40.0, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
			}),
			q(73092, {	-- Something Like Family
				["sourceQuests"] = {
					75408,	-- Calling All Dracthyr!
					76597,	-- On New Wings
					73085,	-- Cold Feet
				},
				["provider"] = { "n", 201764 },	-- Talon Scaralesh
				["coord"] = { 23.1, 32.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
			}),
			q(73086, {	-- Healthy Competition
				["sourceQuests"] = { 73092 },	-- Something Like Family
				["provider"] = { "n", 203325 },	-- Amythora
				["coord"] = { 26.3, 35.9, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
			}),
			q(73093, {	-- Empty Chairs
				["sourceQuests"] = { 73086 },	-- Healthy Competition
				["provider"] = { "n", 203629 },	-- Marithos
				["coord"] = { 24.0, 35.8, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["races"] = { DRACTHYR_ALLIANCE, DRACTHYR_HORDE },
				["classes"] = { EVOKER },
				["g"] = {
					i(205252),	-- Momento of Rekindled Bonds
					i(204830),	-- Shattered Horn Signet (QI!)
					i(204824),	-- Torn Journal Entry (QI!)
				},
			}),
			------ Miscellaneous ------
			q(67007, {	-- Archival Assistance
				["provider"] = { "o", 381687 },	-- Discarded Note
				["coord"] = { 47.8, 46.6, VALDRAKKEN },
			}),
			q(72585, {	-- Open Orientation
					["qgs"] = {
						196499,	-- Therazal <Dragon Isles Emissary>
						199336,	-- Kerazal  <Dragon Isles Emissary>
						-- #if AFTER 10.2.0
						213930,	-- Koszaru
						-- #endif
					},
					["coords"] = {
						{ 50.2, 55.9, VALDRAKKEN },
						{ 76.6, 34.2, THE_WAKING_SHORES },
						-- #if AFTER 10.2.0
						{ 48.0, 58.8, VALDRAKKEN },
						-- #endif
					},
			}),
			q(72354, {	-- The Great Vault
				["provider"] = { "n", 196499 },	-- Therazal
				["coord"] = { 49.9, 56, VALDRAKKEN },
				["g"] = {
					i(201793),	-- Resplendent Gemstone
				},
			}),
			------ 10.2.6
			q(79448, {	-- Leave No Flightstone Unturned
				["provider"] = { "n", 216449 },	-- Vaskarn
				["coord"] = { 45.5, 55.9, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_11_0_2 },
			}),
			q(79453, {	-- Awakened Crests, Unlimited Possibilities
				["sourceQuests"] = { 79448 },	-- Leave No Flightstone Unturned
				["provider"] = { "n", 216449 },	-- Vaskarn
				["coord"] = { 45.5, 55.9, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR, REMOVED_11_0_2 },
				["g"] = {
					i(212458),	-- Awakened Flightstone
					i(211951),	-- Pouch of Whelpling's Awakened Crests
				},
			}),
			------ 10.2.7
			q(79511, {	-- Identity Crisis
				["provider"] = { "n", 216946 },	-- Chromie
				["coord"] = { 48.5, 60.4, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
				--["isBreadcrumb"] = xx, TODO: re-check it
			}),
			q(79512, {	-- Who Are You?
				["sourceQuests"] = { 79511 },	-- Identity Crisis
				["provider"] = { "n", 216945 },	-- Scalecommander Emberthal
				["coord"] = { 29.4, 49.8, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
			}),
			q(79515, {	-- Gather Your Rosebuds
				["sourceQuests"] = { 79512 },	-- Who Are You?
				["provider"] = { "n", 216951 },	-- Kalecgos
				["coord"] = { 29.5, 49.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
				["g"] = {
					i(224296, {	-- Basket of Draconic Flowers (QI!)
						i(219283),	-- Obsidian Iris (QI!)
						i(219285),	-- Azure Lily (QI!)
						i(219287),	-- Time-Touched Daisy (QI!)
						i(219288),	-- Viridian Bloom (QI!)
						i(219290),	-- Ruby Blossom (QI!)
					}),
				},
			}),
			q(79514, {	-- Don't Threaten Me With a Good Time
				["sourceQuests"] = { 79512 },	-- Who Are You?
				["provider"] = { "n", 216967 },	-- Scalecommander Cindrethresh
				["coord"] = { 29.6, 49.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
				["g"] = {
					i(217348),	-- Arcane Residue (QI!)
				},
			}),
			q(79513, {	-- Dragon Isles Adventuring: Being Yourself
				["sourceQuests"] = {
					79514,	-- Don't Threaten Me With a Good Time
					79515,	-- Gather Your Rosebuds
					-- Requires quest completions for proper NPC dialogs
					65920,	-- For the Ward! (unlocks dialog with Zuttiki)
					-- maybe more?
				},
				["provider"] = { "n", 216950 },	-- Scalecommander Viridia
				["coord"] = { 29.5, 49.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
				["g"] = {
					i(210469),	-- Personal Tabard
				},
			}),
			q(82762, {	-- Keeping a Close Tabard
				["sourceQuests"] = { 79513 },	-- Dragon Isles Adventuring: Being Yourself
				["provider"] = { "n", 216946 },	-- Chromie
				["coord"] = { 29.6, 49.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_2_7 },
			}),
		}),
		n(QUESTS, sharedData({
			["provider"] = { "n", 194026 },	-- Azley
			["coord"] = { 35.4, 58.8, VALDRAKKEN },
			["repeatable"] = true,
			["g"] = {
				i(200285),	-- Dragonscale Expedition Insignia [Uncommon]
				i(200288),	-- Maruuk Centaur Insignia [Uncommon]
				i(200287),	-- Iskaara Tuskarr Insignia [Uncommon]
				i(200289),	-- Valdrakken Accord Insignia [Uncommon]
			},
		}, bubbleDown({
			["timeline"] = { ADDED_10_0_7 },
		}, {
			------ Repeatables ------
			q(75164, {	-- In Need of Primal Foci
				["cost"] = { { "i", 200686, 2 } },	-- 2x Primal Focus
			}),
			q(75166, {	-- In Need of Many Primal Foci
				["cost"] = { { "i", 200686, 10 } },	-- 10x Primal Focus
			}),
			q(75165, {	-- In Need of Concentrated Primal Foci
				["cost"] = { { "i", 190455, 1 } },	-- 1x Concentrated Primal Focus
			}),
			q(75167, {	-- In Need of Many Concentrated Primal Foci
				["cost"] = { { "i", 190455, 10 } },	-- 10x Concentrated Primal Focus
			}),
		}))),
		n(QUESTS, sharedData({
				["isWeekly"] = true,
			}, {
			q(76122, {	-- Fighting Is Its Own Reward
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["g"] = {
					i(206135),	-- Heroic Dungeon Delver's Trophy Chest
					i(206136),	-- Heroic Dungeon Delver's Trophy Crest
					------ Reputation ------
					i(200285),	-- Dragonscale Expedition Insignia [Uncommon]
					i(200288),	-- Maruuk Centaur Insignia [Uncommon]
					i(200287),	-- Iskaara Tuskarr Insignia [Uncommon]
					i(205365),	-- Loamm Niffen Insignia [Uncommon]
					i(200289),	-- Valdrakken Accord Insignia [Uncommon]
				},
			}),
			q(66867, {	-- Relic Recovery: Algeth'ar Academy
				["provider"] = { "n", 191957 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66864, {	-- Relic Recovery: Brackenhide Hollow
				["provider"] = { "n", 191958 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66866, {	-- Relic Recovery: Halls of Infusion
				["provider"] = { "n", 191957 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66860, {	-- Relic Recovery: Legacy of Tyr
				["provider"] = { "n", 191958 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66861, {	-- Relic Recovery: Neltharus
				["provider"] = { "n", 191958 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66865, {	-- Relic Recovery: The Azure Vault
				["provider"] = { "n", 191957 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66863, {	-- Relic Recovery: The Nokhud Offensive
				["provider"] = { "n", 191957 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66862, {	-- Relic Recovery: Ruby Life Pools
				["provider"] = { "n", 191957 },	-- Theldren
				["coord"] = { 35.1, 27.5, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66875, {	-- Preserving the Past: Algeth'ar Academy
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66872, {	-- Preserving the Past: Brackenhide Hollow
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66874, {	-- Preserving the Past: Halls of Infusion
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66868, {	-- Preserving the Past: Legacy of Tyr
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66869, {	-- Preserving the Past: Neltharus
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66870, {	-- Preserving the Past: Ruby Life Pools
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66873, {	-- Preserving the Past: The Azure Vault
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
			q(66871, {	-- Preserving the Past: The Nokhud Offensive
				["provider"] = { "n", 189973 },	-- Kemora
				["coord"] = { 35.0, 28.1, VALDRAKKEN },
				["timeline"] = { ADDED_10_0_2, REMOVED_10_1_0 },
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(VALDRAKKEN, {
			n(QUESTS, {
				q(72596),	-- After Open Orientation (spellID 396185)
				q(69935),	-- triggered with 'A Dryadic Remedy' (questID 67606 & 69937) (spellID 381859)
				q(72011),	-- triggeres when accepting 'The Ruby Feast!' (questID 71238) (spellID 391778 & 377492)
				q(72009),	-- triggered with 'Warm Away These Shivers' (questID 67047) (spellID 377492 & 377494 & 377495 & 377496 & 377497 & 377498 & 377499 & 391779)
				q(72258, {["name"] = "Ruby Feast Daily Lockout",["isDaily"] = true}),	-- daily lockout of Ruby Feast quest progression (spellID 393805)
				q(67055),	-- triggered with 'Warm Away These Shivers' (questID 67047) (spellID 377492)
				q(67056),	-- triggered after '10,000 Years of Roasting' (questID 67063) (spellID 377494)
				q(67057),	-- triggered after 'Rambling Delight' (questID 67064) (spellID 377495)
				q(67058),	-- triggered after 'Future-Fresh Fungi' (questID 67065) (spellID 377496)
				q(67059),	-- triggered after 'Delights to Delve For' (questID 67066) (spellID 377497)
				q(67060),	-- triggered after 'Navigating the Leapmaize' (questID 67067) (spellID 377498)
				q(67061),	-- triggered after 'Anything But a Breeze' (questID 67068) (spellID 377499)
				q(72010),	-- triggered after 'What a Long, Sweet Trip It's Been' (questID 67071) (spellID 391779)
				q(65041),	-- Talked with Scalecommanders Cindretresh and Azurathel (spellID 388943)
				hqt(79652, {["timeline"] = {ADDED_10_2_5}}),	-- 'Stay awhile and listen' with Kalecgos and Khadgar
				hqt(79632, {["timeline"] = {ADDED_10_2_5}}),	-- 'Stay awhile and listen' with Wrathion and Sabellian
				hqt(79666, {["timeline"] = {ADDED_10_2_5}}),	-- 'Stay awhile and listen' with Master Mathias Shaw
				hqt(79668, {["timeline"] = {ADDED_10_2_5}}),	-- 'Stay awhile and listen' with Scalecommander Emberthal
				q(82833, {["timeline"] = {ADDED_10_2_7}}),	-- triggered after turn in questID 79513 (Dragon Isles Adventuring: Being Yourself)
			}),
		}),
	}),
})));