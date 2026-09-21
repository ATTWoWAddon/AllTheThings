---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.DUSKWOOD, {
		["lore"] = "Duskwood is a zone in Southern Eastern Kingdoms, warped and cursed due to the Scythe of Elune. Beneath the eternal blanket of darkness which gave Duskwood its current name, the Scythe's effects have transformed what was once a beautiful part of Elwynn Forest into a land covered in gnarled trees and inhabited by the hideous undead and extradimensional Worgen, brought along with the black fog hanging over the woods. Ogres moving in from Deadwind Pass have brought up even more problems.",
		["icon"] = 236757,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(778),	-- Explore Duskwood
			}),
			explorationHeader({
				exploration(536),	-- Addle's Stead
				exploration(576),	-- Beggar's Haunt
				exploration(242),	-- Brightwood Grove
				exploration(42),	-- Darkshire
				exploration(243),	-- Forlorn Rowe
				exploration(1098),	-- Manor Mistmantle
				exploration(94),	-- Raven Hill
				exploration(492),	-- Raven Hill Cemetery
				exploration(799),	-- The Darkened Bank
				exploration(1097),	-- The Hushed Bank
				exploration(241),	-- The Rotting Orchard
				exploration(245),	-- The Yorgen Farmstead
				exploration(121),	-- Tranquil Gardens Cemetery
				exploration(856),	-- Twilight Grove
				exploration(93),	-- Vul'Gol Ogre Mound
			}),
			n(FLIGHT_PATHS, {
				fp(12, {	-- Darkshire, Duskwood
					["cr"] = 2409,	-- Felicia Maline <Gryphon Master>
					["coord"] = { 77.6, 44.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(231, {	-- A Daughter's Love
					["sourceQuest"] = 229,	-- The Daughter Who Lived
					["providers"] = {
						{ "n", 576 },	-- Watcher Ladimore
						{ "i", 2162 },	-- Sarah's Ring
						{ "o", 61 },	-- A Weathered Grave
					},
					["coord"] = { 73.6, 46.8, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(2000),	-- Archeus
					},
				}),
				q(337, {	-- An Old History Book
					["provider"] = { "i", 2794 },	-- An Old History Book
					["maps"] = { MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1044, {	-- Answered Questions
					["sourceQuest"] = 1043,	-- The Scythe of Elune
					["qg"] = 661,	-- Jonathan Carevin
					["coord"] = { 75.3, 49.2, MAP.DUSKWOOD },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						i(5817),	-- Lunaris Bow
						i(5818),	-- Moonbeam Wand
					},
				}),
				q(325, {	-- Armed and Ready
					["sourceQuest"] = 322,	-- Blessed Arm
					["qg"] = 1416,	-- Grimand Elmore
					["coord"] = { 59.7, 33.8, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(7297),	-- Morbent's Bane
					},
				}),
				q(322, {	-- Blessed Arm
					["sourceQuests"] = {
						526,	-- Lightforge Ingots
						324,	-- The Lost Ingots
					},
					["providers"] = {
						{ "n", 1217 },	-- Glorin Steelbrow
						{ "i", 2712 },	-- Crate of Lightforge Ingots
					},
					["coord"] = { 10.6, 60.5, MAP.WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(253, {	-- Bride of the Embalmer
					["sourceQuest"] = 252,	-- Translation to Ello
					["qg"] = 263,	-- Lord Ello Ebonlocke
					["coord"] = { 71.9, 46.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						q(254, {	-- Digging Through the Dirt
							["provider"] = { "o", 51708 },	-- Eliza's Grave Dirt
							["coord"] = { 28.8, 30.8, MAP.DUSKWOOD },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 The Embalmer's Heart
									["questID"] = 253,	-- Bride of the Embalmer
									["provider"] = { "i", 2382 },	-- The Embalmer's Heart
									["cr"] = 314,	-- Eliza <Bride of the Embalmer>
								}),
							},
						}),
						i(3560),	-- Mantle of Honor
						i(6223),	-- Crest of Darkshire
					},
				}),
				q(157, {	-- Deliver the Thread
					["sourceQuest"] = 154,	-- Return the Comb
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1596 },	-- Ghost Hair Thread
					},
					["coord"] = { 75.8, 45.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(164, {	-- Deliveries to Sven
					["providers"] = {
						{ "n", 633 },	-- Elaine Carevin
						{ "i", 1922 },	-- Supplies for Sven
					},
					["coord"] = { 75.3, 48.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(93, {	-- Dusky Crab Cakes
					["sourceQuest"] = 5,	-- Jitters' Growling Gut
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, MAP.DUSKWOOD },
					["cost"] = { { "i", 2251, 6 } },	-- Gooey Spider Leg
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
					},
				}),
				q(245, {	-- Eight-Legged Menaces
					["qg"] = 888,	-- Watcher Dodds
					["coord"] = { 45.1, 67.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/15 Pygmy Venom Web Spider slain
							["provider"] = { "n", 539 },	-- Pygmy Venom Web Spider
							["coords"] = {
								{ 90.8, 16.0, MAP.DUSKWOOD },
								{ 52.0, 12.4, MAP.DUSKWOOD },
								{ 27.8, 29.2, MAP.DUSKWOOD },
								{ 13.0, 28.4, MAP.DUSKWOOD },
								{  9.4, 39.8, MAP.DUSKWOOD },
								{ 13.0, 70.6, MAP.DUSKWOOD },
							},
						}),
						i(3559),	-- Night Watch Gauntlets
					},
				}),
				q(453, {	-- Finding the Shadowy Figure
					["sourceQuest"] = 266,	-- Inquire at the Inn
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["coord"] = { 73.8, 44.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(156, {	-- Gather Rot Blossoms
					["sourceQuest"] = 158,	-- Zombie Juice
					["qg"] = 273,	-- Tavernkeep Smitts
					["coord"] = { 73.8, 44.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/8 Rot Blossom
							["provider"] = { "i", 1598 },	-- Rot Blossom
							["crs"] = {
								531,	-- Skeletal Fiend
								202,	-- Skeletal Horror
							},
						}),
					},
				}),
				q(149, {	-- Ghost Hair Thread
					["sourceQuest"] = 148,	-- Supplies from Darkshire
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 1453 },	-- Spectral Comb
					},
					["coord"] = { 75.8, 45.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(133, {	-- Ghoulish Effigy
					["sourceQuest"] = 159,	-- Juice Delivery
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/7 Ghoul Rib
							["provider"] = { "i", 884 },	-- Ghoul Rib
							["crs"] = {
								210,	-- Bone Chewer
								570,	-- Brain Eater
								3,		-- Flesh Eater
								604,	-- Plague Spreader
								948,	-- Rotted One
							},
						}),
					},
				}),
				q(266, {	-- Inquire at the Inn
					["sourceQuest"] = 265,	-- The Shadowy Search Continues
					["providers"] = {
						{ "n", 267 },	-- Clerk Daltry
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["coord"] = { 72.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(5, {	-- Jitters' Growling Gut
					["sourceQuest"] = 163,	-- Raven Hill
					["qg"] = 288,	-- Jitters
					["coord"] = { 18.2, 56.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(159, {	-- Juice Delivery
					["sourceQuest"] = 156,	-- Gather Rot Blossoms
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 1451 },	-- Bottle of Zombie Juice
					},
					["coord"] = { 73.8, 44.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(174, {	-- Look To The Stars (1/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, MAP.DUSKWOOD },
					["cost"] = { { "i", 4371, 1 } },	-- Bronze Tube
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(175, {	-- Look To The Stars (2/4)
					["sourceQuest"] = 174,	-- Look To The Stars (1/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(177, {	-- Look To The Stars (3/4)
					["sourceQuest"] = 175,	-- Look To The Stars (2/4)
					["qg"] = 302,	-- Blind Mary
					["coord"] = { 81.9, 59.1, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Mary's Looking Glass
							["provider"] = { "i", 1946 },	-- Mary's Looking Glass
							["coord"] = { 80.8, 71.6, MAP.DUSKWOOD },
							["cr"] = 511,	-- Insane Ghoul
						}),
					},
				}),
				q(181, {	-- Look To The Stars (4/4)
					["sourceQuest"] = 177,	-- Look To The Stars (3/4)
					["qg"] = 276,	-- Viktori Prism'Antras
					["coord"] = { 79.8, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ogre's Monocle
							["provider"] = { "i", 1968 },	-- Ogre's Monocle
							["coord"] = { 37.0, 82.4, MAP.DUSKWOOD },
							["cr"] = 300,	-- Zzarc' Vul
						}),
						i(7107),	-- Belt of the Stars
						i(7106),	-- Zodiac Gloves
					},
				}),
				q(228, {	-- Mor'Ladim
					["sourceQuest"] = 227,	-- Morgan Ladimore
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Mor'Ladim's Skull
							["provider"] = { "i", 3514 },	-- Mor'Ladim's Skull
							["coord"] = { 19.4, 34.6, MAP.DUSKWOOD },
							["cr"] = 522,	-- Mor'Ladim
						}),
					},
				}),
				q(55, {	-- Morbent Fel
					["sourceQuest"] = 325,	-- Armed and Ready
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Morbent's Bane
							["provider"] = { "i", 7297 },	-- Morbent's Bane
							["coord"] = { 17.4, 33.6, MAP.DUSKWOOD },
							["cr"] = 1200,	-- Morbent Fel
						}),
						i(2954),	-- Night Watch Pantaloons
						i(1282),	-- Sparkmetal Coif
						i(7344),	-- Torch of Holy Flame
						i(2953),	-- Watch Master's Cloak
					},
				}),
				q(227, {	-- Morgan Ladimore
					["sourceQuest"] = 225,	-- The Weathered Grave
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						i(2154),	-- The Story of Morgan Ladimore
					},
				}),
				q(160, {	-- Note to the Mayor
					["sourceQuest"] = 134,	-- Ogre Thieves
					["providers"] = {
						{ "n", 289 },	-- Abercrombie
						{ "i", 1637 },	-- Letter to Ello
					},
					["coord"] = { 28.0, 31.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1372, {	-- Nothing But The Truth (1/4)
					["qg"] = 5418,	-- Deathstalker Zraedus
					["coord"] = { 87.6, 35.6, MAP.DUSKWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1383, {	-- Nothing But The Truth (2/4)
					["sourceQuest"] = 1372,	-- Nothing But The Truth (1/4)
					["qg"] = 5414,	-- Apothecary Faustin <Royal Apothecary Society>
					["coord"] = { 87.4, 35.4, MAP.DUSKWOOD },
					["maps"] = { MAP.DESOLACE, MAP.SWAMP_OF_SORROWS },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/5 Shadow Panther Heart
							["provider"] = { "i", 6080 },	-- Shadow Panther Heart
							["cr"] = 768,	-- Shadow Panther
						}),
						objective(2, {	-- 0/1 Mire Lord Fungus
							["provider"] = { "i", 6081 },	-- Mire Lord Fungus
							["cr"] = 1081,	-- Mire Lord
						}),
						objective(3, {	-- 0/1 Deepstrider Tumor
							["provider"] = { "i", 6082 },	-- Deepstrider Tumor
							["crs"] = {
								4686,	-- Deepstrider Giant
								4687,	-- Deepstrider Searcher
							},
						}),
						i(6832),	-- Cloak of Blight
						i(11265),	-- Cragwood Maul
					},
				}),
				q(1388, {	-- Nothing But The Truth (3/4)
					["sourceQuest"] = 1383,	-- Nothing But The Truth (2/4)
					["providers"] = {
						{ "n", 5414 },	-- Apothecary Faustin <Royal Apothecary Society>
						{ "i", 6086 },	-- Faustin's Truth Serum
					},
					["coord"] = { 87.4, 35.4, MAP.DUSKWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(1391, {	-- Nothing But The Truth (4/4)
					["sourceQuest"] = 1388,	-- Nothing But The Truth (3/4)
					["providers"] = {
						{ "n", 5418 },	-- Deathstalker Zraedus
						{ "i", 6089 },	-- Zraedus's Brew
					},
					["coord"] = { 87.6, 35.6, MAP.DUSKWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
				}),
				q(134, {	-- Ogre Thieves
					["sourceQuest"] = 133,	-- Ghoulish Effigy
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Abercrombie's Crate
							["providers"] = {
								{ "i", 1349 },	-- Abercrombie's Crate
								{ "o",  119 },	-- Abercrombie's Crate
							},
							["coord"] = { 33.5, 76.5, MAP.DUSKWOOD },
						}),
					},
				}),
				q(323, {	-- Proving Your Worth
					["sourceQuest"] = 268,	-- Return to Sven
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/15 Skeletal Raider slain
							["provider"] = { "n", 1110 },	-- Skeletal Raider
						}),
						objective(2, {	-- 0/3 Skeletal Healer slain
							["provider"] = { "n", 787 },	-- Skeletal Healer
						}),
						objective(3, {	-- 0/3 Skeletal Warder slain
							["provider"] = { "n", 785 },	-- Skeletal Warder
						}),
					},
				}),
				q(163, {	-- Raven Hill
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(154, {	-- Return the Comb
					["sourceQuest"] = 149,	-- Ghost Hair Thread
					["providers"] = {
						{ "n", 302 },	-- Blind Mary
						{ "i", 1518 },	-- Ghost Hair Comb
					},
					["coord"] = { 81.9, 59.1, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(240, {	-- Return to Jitters
					["sourceQuest"] = 93,	-- Dusky Crab Cakes
					["providers"] = {
						{ "n", 272 },	-- Chef Grual
						{ "i", 2250 },	-- Dusky Crab Cakes
					},
					["coord"] = { 73.8, 43.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 17,
				}),
				q(268, {	-- Return to Sven
					["sourceQuest"] = 453,	-- Finding the Shadowy Figure
					["providers"] = {
						{ "n", 288 },	-- Jitters
						{ "i", 2560 },	-- Jitters' Completed Journal
					},
					["coord"] = { 18.2, 56.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(90, {	-- Seasoned Wolf Kabobs
					["description"] = "Buy the Stormwind Seasoning Herbs from Felicia Gump in Stormwind at 64.3, 60.5.",
					["qg"] = 272,	-- Chef Grual
					["coord"] = { 73.8, 43.5, MAP.DUSKWOOD },
					["cost"] = {
						{ "i", 1015, 10 },	-- Lean Wolf Flank
						{ "i", 2665, 1 },	-- Stormwind Seasoning Herbs
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(1017),	-- Seasoned Wolf Kabob
						i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
					},
				}),
				q(269, {	-- Seeking Wisdom
					["sourceQuest"] = 323,	-- Proving Your Worth
					["providers"] = {
						{ "n", 311 },	-- Sven Yorgen
						{ "i", 2560 },	-- Jitters' Completed Journal
					},
					["coord"] = { 7.8, 34.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1395, {	-- Supplies for Nethergarde
					["sourceQuest"] = 1477,	-- Vital Supplies
					["providers"] = {
						{ "n", 5464 },	-- Watchmaster Sorigal
						{ "i", 6091 },	-- Crate of Power Stones
					},
					["coord"] = { 75.8, 46.2, MAP.DUSKWOOD },
					["maps"] = { MAP.BLASTED_LANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(148, {	-- Supplies from Darkshire
					["sourceQuest"] = 165,	-- The Hermit
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(230, {	-- Sven's Camp
					["sourceQuest"] = 95,	-- Sven's Revenge
					["providers"] = {
						{ "o", 59 },	-- Mound of loose dirt
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["coord"] = { 49.9, 77.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(95, {	-- Sven's Revenge
					["sourceQuest"] = 164,	-- Deliveries to Sven
					["qg"] = 311,	-- Sven Yorgen
					["coord"] = { 7.8, 34.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(1042, {	-- The Carevin Family
					["sourceQuest"] = 1041,	-- The Caravan Road
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(229, {	-- The Daughter Who Lived
					["sourceQuest"] = 228,	-- Mor'Ladim
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(270, {	-- The Doomed Fleet
					["sourceQuest"] = 269,	-- Seeking Wisdom
					["qg"] = 1212,	-- Bishop Farthing
					["coord"] = { 39.3, 27.9, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(165, {	-- The Hermit
					["qg"] = 633,	-- Elaine Carevin
					["coord"] = { 75.3, 48.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 17,
				}),
				q(66, {	-- The Legend of Stalvan (1/13)
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(67, {	-- The Legend of Stalvan (2/13)
					["sourceQuest"] = 66,	-- The Legend of Stalvan (1/13)
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(68, {	-- The Legend of Stalvan (3/13)
					["sourceQuest"] = 67,	-- The Legend of Stalvan (2/13)
					["providers"] = {
						{ "o", 3643 },	-- Old Footlocker
						{ "i", 889 },	-- A Dusty Unsent Letter
					},
					["coord"] = { 41.5, 66.7, MAP.WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(69, {	-- The Legend of Stalvan (4/13)
					["sourceQuest"] = 68,	-- The Legend of Stalvan (3/13)
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, MAP.DUSKWOOD },
					["maps"] = { MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(70, {	-- The Legend of Stalvan (5/13)
					["sourceQuest"] = 69,	-- The Legend of Stalvan (4/13)
					["qg"] = 295,	-- Innkeeper Farley
					["coord"] = { 43.8, 65.9, MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 An Undelivered Letter
							["providers"] = {
								{ "i", 910 },	-- An Undelivered Letter
								{ "o", 1560 },	-- Storage Chest
							},
							["coord"] = { 44.2, 65.8, MAP.ELWYNN_FOREST },
						}),
					},
				}),
				q(72, {	-- The Legend of Stalvan (6/13)
					["sourceQuest"] = 70,	-- The Legend of Stalvan (5/13)
					["qg"] = 297,	-- Caretaker Folsom
					["coord"] = { 29.6, 61.9, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(74, {	-- The Legend of Stalvan (7/13)
					["sourceQuest"] = 72,	-- The Legend of Stalvan (6/13)
					["providers"] = {
						{ "o", 1561 },	-- Sealed Crate
						{ "i", 916 },	-- A Torn Journal Page
					},
					["coord"] = { 29.6, 61.9, MAP.STORMWIND_CITY },
					["maps"] = { MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(75, {	-- The Legend of Stalvan (8/13)
					["sourceQuest"] = 74,	-- The Legend of Stalvan (7/13)
					["qg"] = 294,	-- Marshal Haggard
					["coord"] = { 84.6, 69.3, MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 A Faded Journal Page
							["providers"] = {
								{ "i", 921 },	-- A Faded Journal Page
								{ "o", 1562 },	-- Marshal Haggard's Chest
							},
							["coord"] = { 85.6, 69.6, MAP.ELWYNN_FOREST },
						}),
					},
				}),
				q(78, {	-- The Legend of Stalvan (9/13)
					["sourceQuest"] = 75,	-- The Legend of Stalvan (8/13)
					["providers"] = {
						{ "n", 294 },	-- Marshal Haggard
						{ "i", 921 },	-- A Faded Journal Page
					},
					["coord"] = { 84.6, 69.3, MAP.ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(79, {	-- The Legend of Stalvan (10/13)
					["sourceQuest"] = 78,	-- The Legend of Stalvan (9/13)
					["providers"] = {
						{ "n", 273 },	-- Tavernkeep Smitts
						{ "i", 938 },	-- Muddy Journal Pages
					},
					["coord"] = { 73.8, 44.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(80, {	-- The Legend of Stalvan (11/13)
					["sourceQuest"] = 79,	-- The Legend of Stalvan (10/13)
					["providers"] = {
						{ "n", 264 },	-- Commander Althea Ebonlocke
						{ "i", 939 },	-- A Bloodstained Journal Page
					},
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(97, {	-- The Legend of Stalvan (12/13)
					["sourceQuest"] = 80,	-- The Legend of Stalvan (11/13)
					["qg"] = 267,	-- Clerk Daltry
					["coord"] = { 72.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(98, {	-- The Legend of Stalvan (13/13)
					["sourceQuest"] = 97,	-- The Legend of Stalvan (12/13)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						objective(1, {	-- 0/1 Mistmantle Family Ring
							["provider"] = { "i", 3629 },	-- Mistmantle Family Ring
							["coord"] = { 77.6, 34.8, MAP.DUSKWOOD },
							["cr"] = 315,	-- Stalvan Mistmantle
						}),
						i(2044),	-- Crescent of Forlorn Spirits
						i(2043),	-- Ring of Forlorn Spirits
					},
				}),
				q(56, {	-- The Night Watch (1/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/8 Skeletal Warrior slain
							["provider"] = { "n", 48 },	-- Skeletal Warrior
						}),
						objective(2, {	-- 0/6 Skeletal Mage slain
							["provider"] = { "n", 203 },	-- Skeletal Mage
						}),
					},
				}),
				q(57, {	-- The Night Watch (2/3)
					["sourceQuest"] = 56,	-- The Night Watch (1/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/15 Skeletal Fiend slain
							["provider"] = { "n", 531 },	-- Skeletal Fiend
						}),
						objective(2, {	-- 0/15 Skeletal Horror slain
							["provider"] = { "n", 202 },	-- Skeletal Horror
						}),
					},
				}),
				q(58, {	-- The Night Watch (3/3)
					["sourceQuest"] = 57,	-- The Night Watch (2/3)
					["qg"] = 264,	-- Commander Althea Ebonlocke
					["coord"] = { 73.6, 46.9, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/20 Plague Spreader slain
							["provider"] = { "n", 604 },	-- Plague Spreader
						}),
						i(3604),	-- Bandolier of the Night Watch
						i(1729),	-- Gunnysack of the Night Watch
						i(3605),	-- Quiver of the Night Watch
					},
				}),
				q(1043, {	-- The Scythe of Elune
					["sourceQuest"] = 1042,	-- The Carevin Family
					["qg"] = 661,	-- Jonathan Carevin
					["coord"] = { 75.3, 49.2, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- Find evidence of the Scythe of Elune
							["provider"] = { "o", 19030 },	-- Mound of Dirt
							["coord"] = { 73.7, 79.0, MAP.DUSKWOOD },
						}),
					},
				}),
				q(262, {	-- The Shadowy Figure
					["sourceQuest"] = 230,	-- Sven's Camp
					["providers"] = {
						{ "n", 311 },	-- Sven Yorgen
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["coord"] = { 7.8, 34.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(265, {	-- The Shadowy Search Continues
					["sourceQuest"] = 262,	-- The Shadowy Figure
					["providers"] = {
						{ "n", 265 },	-- Madame Eva
						{ "i", 2161 },	-- Book from Sven's Farm
					},
					["coord"] = { 75.8, 45.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(101, {	-- The Totem of Infliction
					["qg"] = 265,	-- Madame Eva
					["coord"] = { 75.8, 45.3, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/10 Ghoul Fang
							["provider"] = { "i", 1129 },	-- Ghoul Fang
							["crs"] = {
								210,	-- Bone Chewer
								570,	-- Brain Eater
								1270,	-- Fetid Corpse
								3,		-- Flesh Eater
								604,	-- Plague Spreader
								948,	-- Rotted One
							},
						}),
						objective(2, {	-- 0/5 Vial of Spider Venom
							["provider"] = { "i", 1130 },	-- Vial of Spider Venom
							["crs"] = {
								930,	-- Black Widow Hatchling
								949,	-- Carrion Recluse
								569,	-- Green Recluse
								574,	-- Naraxis
								539,	-- Pygmy Venom Web Spider
								217,	-- Venom Web Spider
							},
						}),
						objective(3, {	-- 0/10 Skeleton Finger
							["provider"] = { "i", 2378 },	-- Skeleton Finger
							["crs"] = {
								531,	-- Skeletal Fiend
								787,	-- Skeletal Healer
								202,	-- Skeletal Horror
								203,	-- Skeletal Mage
								1110,	-- Skeletal Raider
								785,	-- Skeletal Warder
								48,		-- Skeletal Warrior
							},
						}),
						i(1131),	-- Totem of Infliction
					},
				}),
				q(225, {	-- The Weathered Grave
					["provider"] = { "o", 61 },	-- A Weathered Grave
					["coord"] = { 17.7, 29.2, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(251, {	-- Translate Abercrombie's Note
					["sourceQuest"] = 160,	-- Note to the Mayor
					["providers"] = {
						{ "n", 263 },	-- Lord Ello Ebonlocke
						{ "i", 1637 },	-- Letter to Ello
					},
					["coord"] = { 71.9, 46.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(252, {	-- Translation to Ello
					["sourceQuest"] = 401,	-- Wait for Sirra to Finish
					["providers"] = {
						{ "n", 268 },	-- Sirra Von'Indi
						{ "i", 1656 },	-- Translated Letter
					},
					["coord"] = { 72.6, 47.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(3248),	-- Translated Letter from The Embalmer
					},
				}),
				q(1477,	{	-- Vital Supplies
					["qg"] = 5694,	-- High Sorcerer Andromath
					["coord"] = { 48.7, 87.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(401, {	-- Wait for Sirra to Finish
					["sourceQuest"] = 251,	-- Translate Abercrombie's Note
					["qg"] = 268,	-- Sirra Von'Indi
					["coord"] = { 72.6, 47.7, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(226, {	-- Wolves at Our Heels
					["qg"] = 893,	-- Lars
					["coord"] = { 7.7, 33.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/12 Starving Dire Wolf slain
							["provider"] = { "n", 213 },	-- Starving Dire Wolf
						}),
						objective(2, {	-- 0/8 Rabid Dire Wolf slain
							["provider"] = { "n", 565 },	-- Rabid Dire Wolf
						}),
						i(1127),	-- Flash Bundle
					},
				}),
				q(173, {	-- Worgen in the Woods (1/4)
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/6 Nightbane Shadow Weaver
							["provider"] = { "n", 533 },	-- Nightbane Shadow Weaver
						}),
					},
				}),
				q(221, {	-- Worgen in the Woods (2/4)
					["sourceQuest"] = 173,	-- Worgen in the Woods (1/4)
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/12 Nightbane Dark Runner
							["provider"] = { "n", 205 },	-- Nightbane Dark Runner
						}),
					},
				}),
				q(222, {	-- Worgen in the Woods (3/4)
					["sourceQuest"] = 221,	-- Worgen in the Woods (2/4)
					["qg"] = 663,	-- Calor
					["coord"] = { 75.3, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/8 Nightbane Vile Fang
							["provider"] = { "n", 206 },	-- Nightbane Vile Fang
						}),
						objective(2, {	-- 0/8 Nightbane Tainted One
							["provider"] = { "n", 920 },	-- Nightbane Tainted One
						}),
					},
				}),
				q(223, {	-- Worgen in the Woods (4/4)
					["sourceQuest"] = 222,	-- Worgen in the Woods (3/4)
					["providers"] = {
						{ "n", 663 },	-- Calor
						{ "i", 2113 },	-- Calor's Note
					},
					["coord"] = { 75.3, 48.0, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						i(2902),	-- Cloak of the Faith
						i(1547),	-- Shield of the Faith
						i(5244),	-- Consecrated Wand
					},
				}),
				q(158, {	-- Zombie Juice
					["sourceQuest"] = 157,	-- Deliver the Thread
					["qg"] = 289,	-- Abercrombie
					["coord"] = { 28.0, 31.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
			}),
			n(RARES, {
				n(771, {	-- Commander Felstrom
					["description"] =
						"Spawns in the Dawning Wood Catacombs.",
					["coord"] = { 18.0, 38.0, MAP.DUSKWOOD },
					["groups"] = {
						i(4465),	-- Bonefist Gauntlets [Classic] / Felstrom's Gauntlets [Wrath+]
						i(4464),	-- Trouncing Boots
					},
				}),
				n(507, {	-- Fenros
					["description"] =
						"Patrols between the coordinates.",
					["coords"] = {
						{ 59.8, 26.8, MAP.DUSKWOOD },
						{ 63.8, 51.6, MAP.DUSKWOOD },
					},
					["groups"] = {
						i(4474),	-- Ravenwood Bow
						i(6204),	-- Tribal Worg Helm
					},
				}),
				n(503, {	-- Lord Malathrom
					["description"] =
						"Spawns in the Dawning Wood Catacombs.",
					["coord"] = { 25.6, 30.2, MAP.DUSKWOOD },
					["groups"] = {
						i(4462),	-- Cloak of Rot
						i(1187),	-- Spiked Collar
					},
				}),
				n(521, {	-- Lupos
					["description"] =
						"Spawns randomly in the north-east area of the zone.",
					["coords"] = {
						{ 20.0, 25.4, MAP.DUSKWOOD },
						{ 38.4, 26.2, MAP.DUSKWOOD },
						{ 60.2, 24.4, MAP.DUSKWOOD },
						{ 71.0, 24.4, MAP.DUSKWOOD },
					},
					["groups"] = {
						i(3018),	-- Hide of Lupos
						i(3227),	-- Nightbane Staff
					},
				}),
				n(574, {	-- Naraxis
					["coord"] = { 86.6, 49.6, MAP.DUSKWOOD },
					["groups"] = {
						i(4448),	-- Husk of Naraxis
						i(4449),	-- Naraxis' Fang
					},
				}),
				n(534, {	-- Nefaru
					["description"] = "Spawns randomly in the south and south-eastern part of the zone.",
					["coord"] = { 63.6, 82.4, MAP.DUSKWOOD },
					["groups"] = {
						i(4476),	-- Beastwalker Robe
						i(4477),	-- Nefarious Buckler
					},
				}),
			}),
			n(VENDORS, {
				n(228, {	-- Avette Fellwood <Bowyer>
					["coord"] = { 73.2, 44.8, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11304, {	-- Fine Longbow
							["isLimited"] = true,
						}),
					},
				}),
				n(274, {	-- Barkeep Hann <Bartender>
					["coord"] = { 73.8, 44.2, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1942),	-- Bottle of Moonshine
					},
				}),
				n(2481, {	-- Bliztik <Alchemy Supplies>
					["coord"] = { 18.0, 54.4, MAP.DUSKWOOD },
					["groups"] = {
						i(6068),	-- Recipe: Shadow Oil (RECIPE!)
					},
				}),
				n(2668, {	-- Danielle Zipstitch <Tailoring Supplies>
					["coord"] = { 75.8, 45.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(14627, {	-- Pattern: Bright Yellow Shirt (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(225, {	-- Gavin Gnarltree <Weaponsmith>
					["coord"] = { 73.6, 49.8, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						929,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						925,	-- Flail
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						2209,	-- Kris
						928,	-- Long Staff
						923,	-- Longsword
						924,	-- Maul
						2208,	-- Poniard
						2026,	-- Rock Hammer
						2027,	-- Scimitar
					}},
					["groups"] = {
						i(12247, {	-- Broad Bladed Knife
							["isLimited"] = true,
						}),
						i(12249, {	-- Merciless Axe
							["isLimited"] = true,
						}),
					},
				}),
				n(3134, {	-- Kzixx <Rare Goods>
					["coord"] = { 81.8, 19.8, MAP.DUSKWOOD },
					["groups"] = {
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
						i(4836, {	-- Fireproof Orb
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4838, {	-- Orb of Power
							["isLimited"] = true,
						}),
						i(4837, {	-- Strength of Will
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
						i(6053, {	-- Recipe: Holy Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(7561, {	-- Schematic: Goblin Jumper Cables (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(226, {	-- Morg Gnarltree <Armorer>
					["coord"] = { 73.8, 48.6, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2446,	-- Kite Shield
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
					["groups"] = {
						i(4799, {	-- Antiquated Cloak
							["isLimited"] = true,
						}),
						i(4797, {	-- Fiery Cloak
							["isLimited"] = true,
						}),
						i(4798, {	-- Heavy Runed Cloak
							["isLimited"] = true,
						}),
						i(4816, {	-- Legionnaire's Leggings
							["isLimited"] = true,
						}),
						i(4800, {	-- Mighty Chain Pants
							["isLimited"] = true,
						}),
					},
				}),
				n(3138, {	-- Scott Carevin <Mushroom Seller>
					["coord"] = { 75.7, 47.5, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4607),	-- Delicious Cave Mold
						i(8948),	-- Dried King Bolete
						i(4604),	-- Forest Mushroom Cap
						i(4608),	-- Raw Black Truffle
						i(4605),	-- Red-speckled Mushroom
						i(4606),	-- Spongy Morel
					},
				}),
				n(2669, {	-- Sheri Zipstitch <Tailoring Supplies>
					["coord"] = { 75.6, 45.4, MAP.DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6401, {	-- Pattern: Dark Silk Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(6275, {	-- Pattern: Greater Adept's Robe (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(2794),	-- An Old History Book
				i(885, {	-- Black Metal Axe
					["coords"] = {
						{ 18.6, 33.0, MAP.DUSKWOOD },
						{ 19.8, 45.2, MAP.DUSKWOOD },
					},
					["cr"] = 3,	-- Flesh Eater
				}),
				i(2014, {	-- Black Metal Greatsword
					["coords"] = {
						{ 74.8, 32.8, MAP.DUSKWOOD },
						{ 75.2, 37.6, MAP.DUSKWOOD },
						{ 76.6, 36.6, MAP.DUSKWOOD },
						{ 76.8, 31.0, MAP.DUSKWOOD },
						{ 78.4, 36.0, MAP.DUSKWOOD },
						{ 79.8, 32.8, MAP.DUSKWOOD },
						{ 81.6, 32.2, MAP.DUSKWOOD },
						{ 81.6, 33.6, MAP.DUSKWOOD },
					},
					["cr"] = 1270,	-- Fetid Corpse
				}),
				i(886, {	-- Black Metal Shortsword
					["coords"] = {
						{ 15.8, 35.0, MAP.DUSKWOOD },
						{ 17.0, 31.2, MAP.DUSKWOOD },
						{ 23.4, 35.4, MAP.DUSKWOOD },
						{ 24.4, 37.4, MAP.DUSKWOOD },
						{ 25.6, 32.4, MAP.DUSKWOOD },
					},
					["cr"] = 210,	-- Bone Chewer
				}),
				i(2015, {	-- Black Metal War Axe
					["coords"] = {
						{ 25.4, 35.4, MAP.DUSKWOOD },
						{ 17.8, 33.4, MAP.DUSKWOOD },
						{ 19.8, 46.8, MAP.DUSKWOOD },
						{ 23.4, 35.4, MAP.DUSKWOOD },
					},
					["crs"] = {
						570,	-- Brain Eater
					},
				}),
				i(2013, {	-- Cryptbone Staff
					["coords"] = {
						{ 16.6, 31.6, MAP.DUSKWOOD },
						{ 17.0, 38.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						787,	-- Skeletal Healer
					},
				}),
				i(2232, {	-- Dark Runner Boots
					["coords"] = {
						{ 62.4, 42.6, MAP.DUSKWOOD },
						{ 64.0, 49.6, MAP.DUSKWOOD },
						{ 64.2, 74.0, MAP.DUSKWOOD },
					},
					["cr"] = 205,	-- Nightbane Dark Runner
				}),
				i(1077, {	-- Defias Mage Ring
					["coords"] = {
						{ 23.6, 71.4, MAP.DUSKWOOD },
						{ 50.6, 77.6, MAP.DUSKWOOD },
					},
					["crs"] = {
						910,	-- Defias Enchanter
					},
				}),
				i(2021, {	-- Green Carapace Shield
					["coords"] = {
						{ 72.8, 21.6, MAP.DUSKWOOD },
						{ 56.6, 20.0, MAP.DUSKWOOD },
						{ 17.0, 70.6, MAP.DUSKWOOD },
						{ 12.6, 51.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						569,	-- Green Recluse
					},
				}),
				i(2017, {	-- Glowing Leather Bracers
					["coords"] = {
						{ 16.0, 37.6, MAP.DUSKWOOD },
						{ 17.0, 31.0, MAP.DUSKWOOD },
					},
					["crs"] = {
						785,	-- Skeletal Warder
					},
				}),
				i(2227, {	-- Heavy Ogre War Axe
					["coords"] = {
						{ 40.6, 74.8, MAP.DUSKWOOD },
						{ 37.2, 69.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						892,	-- Splinter Fist Taskmaster
					},
				}),
				i(2020, {	-- Hollowfang Blade
					["coords"] = {
						{ 12.2, 69.8, MAP.DUSKWOOD },
						{ 9.8, 49.6, MAP.DUSKWOOD },
						{ 19.6, 26.4, MAP.DUSKWOOD },
						{ 46.8, 16.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						539,	-- Pygmy Venom Web Spider
					},
				}),
				i(911, {	-- Ironwood Treebranch
					["coords"] = {
						{ 38.4, 72.2, MAP.DUSKWOOD },
						{ 35.2, 71.4, MAP.DUSKWOOD },
						{ 36.6, 79.6, MAP.DUSKWOOD },
					},
					["cr"] = 889,	-- Splinter Fist Ogre
				}),
				i(914, {	-- Large Ogre Chain Armor
					["coords"] = {
						{ 38.0, 80.6, MAP.DUSKWOOD },
						{ 37.4, 84.6, MAP.DUSKWOOD },
					},
					["crs"] = {
						1487,	-- Splinter Fist Enslaver
					},
				}),
				i(897, {	-- Madwolf Bracers
					["coords"] = {
						{ 62.4, 80.4, MAP.DUSKWOOD },
						{ 73.6, 72.0, MAP.DUSKWOOD },
					},
					["cr"] = 206,	-- Nightbane Vile Fang
				}),
				i(2234, {	-- Nightwalker Armor
					["coords"] = {
						{ 74.0, 74.2, MAP.DUSKWOOD },
						{ 62.8, 80.2, MAP.DUSKWOOD },
					},
					["cr"] = 920,	-- Nightbane Tainted One
				}),
				i(2226, {	-- Ogremage Staff
					["coords"] = {
						{ 35.4, 71.4, MAP.DUSKWOOD },
						{ 35.6, 81.0, MAP.DUSKWOOD },
						{ 37.2, 69.8, MAP.DUSKWOOD },
						{ 40.2, 72.0, MAP.DUSKWOOD },
						{ 40.6, 74.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						1251,	-- Splinter Fist Firemonger
						891,	-- Splinter Fist Fire Weaver
					},
				}),
				i(5773, {	-- Pattern: Robes of Arcana (RECIPE!)
					["cr"] = 910,	-- Defias Enchanter
				}),
				i(6211, {	-- Recipe: Elixir of Ogre's Strength (RECIPE!)
					["crs"] = {
						1251,	-- Splinter Fist Firemonger
						891,	-- Splinter Fist Fire Weaver
					},
				}),
				i(2233, {	-- Shadow Weaver Leggings
					["coords"] = {
						{ 67.2, 75.4, MAP.DUSKWOOD },
						{ 63.6, 70.6, MAP.DUSKWOOD },
						{ 64.8, 46.2, MAP.DUSKWOOD },
					},
					["cr"] = 533,	-- Nightbane Shadow Weaver
				}),
				i(2018, {	-- Skeletal Longsword
					["coords"] = {
						{ 17.6, 33.6, MAP.DUSKWOOD },
						{ 16.8, 37.2, MAP.DUSKWOOD },
					},
					["crs"] = {
						1110,	-- Skeletal Raider
					},
				}),
				i(880, {	-- Staff of Horrors
					["coords"] = {
						{ 80.6, 59.6, MAP.DUSKWOOD },
						{ 20.8, 46.8, MAP.DUSKWOOD },
					},
					["cr"] = 202,	-- Skeletal Horror / Rotting Horror
				}),
				i(3360, {	-- Stitches' Femur
					["cr"] = 412,	-- Stitches <Gift from the Embalmer>
				}),
				i(899, {	-- Venom Web Fang
					["coords"] = {
						{ 28.8, 29.6, MAP.DUSKWOOD },
						{ 18.8, 27.8, MAP.DUSKWOOD },
					},
					["cr"] = 217,	-- Venom Web Spider
				}),
				i(920, {	-- Wicked Spiked Mace
					["coords"] = {
						{ 23.6, 71.6, MAP.DUSKWOOD },
						{ 49.8, 77.8, MAP.DUSKWOOD },
					},
					["crs"] = {
						909,	-- Defias Night Blade
						215,	-- Defias Night Runner
					},
				}),
			}),
		},
	}),
}));
