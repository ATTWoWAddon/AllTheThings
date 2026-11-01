---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.SILVERPINE_FOREST, {
	lore = "Silverpine Forest is a vast ancient wood that runs along Lordaeron's rugged western coast. The land ranges from fairly flat to hilly, and is nestled among even taller mountains. The forest is eerily silent save for the occasional unnatural howling echoing among the trees. Mossy overhangs shiver in the cold breeze, and the trees are all sickly or dying. Dilapidated farmsteads and abandoned mines dot the land, home now to the darker denizens of the woods.\n\nThis woodland is haunted and wild, characterized by its tall, silver-barked pines towering over grassy knolls. The Alliance once protected Silverpine Forest when it was verdant and lively. Now the place is shrouded in ghostly mists. Forsaken control the northern forest. What remains of the human population retains control of the southern forest, but they are desperate and their forces thinly stretched. Dalaran sends frequent expeditions into Silverpine to defend these people and study the undead plague and worgen curse — a mysterious affliction that causes its victims to transform into bloodthirsty, lycanthropic worgen when the moon rises.",
	icon = 236830,
	groups = {
		n(ACHIEVEMENTS, {
			ach(769),	-- Explore Silverpine Forest
		}),
		explorationHeader({
			exploration(233),	-- Ambermill
			exploration(231),	-- Beren's Peril
			exploration(213),	-- Deep Elem Mine
			exploration(172),	-- Fenris Isle
			exploration(238),	-- Malden's Orchard
			exploration(928),	-- North Tide's Hollow
			exploration(229),	-- Olsen's Farthing
			exploration(204),	-- Pyrewood Village
			exploration(236),	-- Shadowfang Keep
			exploration(232),	-- The Dawning Isles
			exploration(240),	-- The Dead Field
			exploration(237),	-- The Decrepit Ferry
			exploration(230),	-- The Greymane Wall
			exploration(239),	-- The Ivar Patch
			exploration(228),	-- The Sepulcher
			exploration(927),	-- The Shining Strand
			exploration(226),	-- The Skittering Dark
			exploration(227),	-- Valgan's Field
		}),
		n(FLIGHT_PATHS, {
			fp(10, {	-- The Sepulcher, Silverpine Forest
				cr = 2226,	-- Karos Razok <Bat Handler>
				coord = { 45.6, 42.6, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
			}),
		}),
		lockpicking({
			o(103815, {	-- Ambermill Strongbox
				coord = { 63.7, 65.2, MAP.SILVERPINE_FOREST },
				requireSkill = LOCKPICKING,
				learnedAt = 1,
			}),
		}),
		n(PROFESSIONS, {
			prof(ALCHEMY, {
				n(1937, {	-- Apothecary Renferrel <Royal Apothecary Society>
					coord = { 42.8, 40.8, MAP.SILVERPINE_FOREST },
					groups = ALCHEMY_RECIPES.DISCOLORED_HEALING_POTION,
				}),
			}),
		}),
		n(QUESTS, {
			q(99, {	-- Arugal's Folly (4/4)
				sourceQuest = 424,	-- Arugal's Folly (3/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Pyrewood Shackle
						provider = { "i", 3218 },	-- Pyrewood Shackle (QI!)
						crs = {
							3529,	-- Moonrage Armorer
							1896,	-- Moonrage Elder
							3533,	-- Moonrage Leatherworker
							1893,	-- Moonrage Sentry
							3531,	-- Moonrage Tailor
							1892,	-- Moonrage Watcher
							3528,	-- Pyrewood Armorer
							1895,	-- Pyrewood Elder
							3532,	-- Pyrewood Leatherworker
							1894,	-- Pyrewood Sentry
							3530,	-- Pyrewood Tailor
							1891,	-- Pyrewood Watcher
						},
					}),
					i(3586),	-- Logsplitter
					i(3570),	-- Bonegrinding Pestle
					i(5242),	-- Cinder Wand
				},
			}),
			q(421, {	-- Prove Your Worth
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/5 Moonrage Whitescalp slain
						provider = { "n", 1769 },	-- Moonrage Whitescalp
					}),
				},
			}),
			q(422, {	-- Arugal's Folly (1/4)
				sourceQuest = 421,	-- Prove Your Worth
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Remedy of Arugal
						providers = {
							{ "i", 3155 },	-- Remedy of Arugal (QI!)
							{ "o", 1571 },	-- Dusty Spellbooks
						},
						coord = { 52.8, 28.4, MAP.SILVERPINE_FOREST },
					}),
				},
			}),
			q(423, {	-- Arugal's Folly (2/4)
				sourceQuest = 422,	-- Arugal's Folly (1/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Glutton Shackle
						provider = { "i", 3156 },	-- Glutton Shackle (QI!)
						cr = 1779,	-- Moonrage Glutton
					}),
					objective(2, {	-- 0/3 Darksoul Shackle
						provider = { "i", 3157 },	-- Darksoul Shackle (QI!)
						cr = 1782,	-- Moonrage Darksoul
					}),
				},
			}),
			q(424, {	-- Arugal's Folly (3/4)
				sourceQuest = 423,	-- Arugal's Folly (2/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Head of Grimson
						provider = { "i", 3634 },	-- Head of Grimson (QI!)
						coord = { 58.6, 44.8, MAP.SILVERPINE_FOREST },
						cr = 1972,	-- Grimson the Pale
					}),
				},
			}),
			q(425, {	-- Ivar the Foul
				sourceQuest = 430,	-- Return to Quinn
				qg = 1950,	-- Rane Yorick
				coord = { 53.4, 13.4, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Ivar's Head
						provider = { "i", 3621 },	-- Ivar's Head (QI!)
						coord = { 51.8, 13.8, MAP.SILVERPINE_FOREST },
						cr = 1971,	-- Ivar the Foul
					}),
					i(3453),	-- Quilted Bracers
					i(3583),	-- Weathered Belt
				},
			}),
			q(428, {	-- Lost Deathstalkers
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				isBreadcrumb = true,
			}),
			q(429, {	-- Wild Hearts
				sourceQuest = 428,	-- Lost Deathstalkers
				qg = 1950,	-- Rane Yorick
				coord = { 53.4, 13.4, MAP.SILVERPINE_FOREST },
				cost = { { "i", 3164, 6 } },	-- Discolored Worg Heart (QI!)
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(4597),	-- Recipe: Minor Discolored Healing Potion (RECIPE!)
					i(4596),	-- Minor Discolored Healing Potion
				},
			}),
			q(430, {	-- Return to Quinn
				sourceQuest = 429,	-- Wild Hearts
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3165,	-- Quinn's Potion (QI!)
			}),
			q(435, {	-- Escorting Erland
				qg = 1978,	-- Deathstalker Erland
				coord = { 56.2, 9.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(3455),	-- Deathstalker Shortsword
				},
			}),
			q(437, {	-- The Dead Fields
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Essence of Nightlash
						provider = { "i", 3622 },	-- Essence of Nightlash (QI!)
						coord = { 45.8, 20.4, MAP.SILVERPINE_FOREST },
						cr = 1983,	-- Nightlash
					}),
					i(3454),	-- Reconnaissance Boots
				},
			}),
			q(438, {	-- The Decrepit Ferry
				sourceQuest = 437,	-- The Dead Fields
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(439, {	-- Rot Hide Clues
				sourceQuest = 438,	-- The Decrepit Ferry
				providers = {
					{ "o", 1593 },	-- Corpse Laden Boat
					{ "i", 3234 },	-- Deliah's Ring (QI!)
				},
				coord = { 58.4, 34.9, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(440, {	-- The Engraved Ring
				sourceQuest = 439,	-- Rot Hide Clues
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3234,	-- Deliah's Ring (QI!)
			}),
			q(441, {	-- Raleigh and the Undercity
				sourceQuest = 440,	-- The Engraved Ring
				qg = 1499,	-- Magistrate Sevren
				coord = { 61.2, 50.8, MAP.TIRISFAL_GLADES },
				maps = { MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3234,	-- Deliah's Ring (QI!)
			}),
			q(442, {	-- Assault on Fenris Isle
				sourceQuest = 448,	-- Report to Hadrec
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Thule's Head
						provider = { "i", 3623 },	-- Thule's Head (QI!)
						coord = { 65.6, 24.6, MAP.SILVERPINE_FOREST },
						cr = 1947,	-- Thule Ravenclaw
					}),
					i(3461),	-- High Robe of the Adjudicator
					i(3462),	-- Talonstrike
					i(270020, {	-- Gnollhide Pants
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
					i(276722, {	-- Gnoll Shackles
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(443, {	-- Rot Hide Ichor
				sourceQuest = 439,	-- Rot Hide Clues
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/8 Rot Hide Ichor
						provider = { "i", 3236 },	-- Rot Hide Ichor (QI!)
						crs = {
							1943,	-- Raging Rot Hide
							1944,	-- Rot Hide Bruiser
							1939,	-- Rot Hide Brute
							1940,	-- Rot Hide Plague Weaver
							1942,	-- Rot Hide Savage
						},
					}),
				},
			}),
			q(444, {	-- Rot Hide Origins
				sourceQuest = 443,	-- Rot Hide Ichor
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3237,	-- Sample Ichor (QI!)
			}),
			q(446, {	-- Thule Ravenclaw
				sourceQuest = 444,	-- Rot Hide Origins
				qg = 1498,	-- Bethor Iceshard
				coord = { 84.2, 17.4, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3250,	-- Bethor's Scroll (QI!)
				groups = {
					i(3251),	-- Bethor's Potion
				},
			}),
			q(447, {	-- A Recipe For Death (1/3)
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Grizzled Bear Heart
						provider = { "i", 3253 },	-- Grizzled Bear Heart (QI!)
						crs = {
							1778,	-- Ferocious Grizzled Bear
							1797,	-- Giant Grizzled Bear
							12432,	-- Old Vicejaw
						},
					}),
					objective(2, {	-- 0/6 Skittering Blood
						provider = { "i", 3254 },	-- Skittering Blood (QI!)
						crs = {
							12433,	-- Krethis Shadowspinner
							1781,	-- Mist Creeper
							1780,	-- Moss Stalker
						},
					}),
					i(3448),	-- Senggin Root
				},
			}),
			q(448, {	-- Report to Hadrec
				sourceQuest = 446,	-- Thule Ravenclaw
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(3240),	-- Coarse Weightstone
					i(2863),	-- Coarse Sharpening Stone
					i(2313),	-- Medium Armor Kit
				},
			}),
			q(449, {	-- The Deathstalkers' Report
				sourceQuest = 435,	-- Escorting Erland
				qg = 1950,	-- Rane Yorick
				coord = { 53.4, 13.4, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3252,	-- Deathstalker Report (QI!)
			}),
			q(450, {	-- A Recipe For Death (2/3)
				sourceQuest = 447,	-- A Recipe For Death (1/3)
				qg = 2055,	-- Master Apothecary Faranell
				coord = { 48.6, 69.4, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Berard's Journal
						providers = {
							{ "i", 3255 },	-- Berard's Journal (QI!)
							{ "o", 1594 },	-- Berard's Bookshelf
						},
						coord = { 43.0, 73.3, MAP.SILVERPINE_FOREST },
					}),
				},
			}),
			q(451, {	-- A Recipe For Death (3/3)
				sourceQuest = 450,	-- A Recipe For Death (2/3)
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Lake Skulker Moss
						provider = { "i", 3256 },	-- Lake Skulker Moss (QI!)
						crs = {
							1954,	-- Elder Lake Skulker
							1953,	-- Lake Skulker
						},
					}),
					objective(2, {	-- 0/6 Lake Creeper Moss
						provider = { "i", 3257 },	-- Lake Creeper Moss (QI!)
						crs = {
							1956,	-- Elder Lake Creeper
							1955,	-- Lake Creeper
						},
					}),
					objective(3, {	-- 0/1 Hardened Tumor
						provider = { "i", 3258 },	-- Hardened Tumor (QI!)
						crs = {
							1909,	-- Vile Fin Lakestalker
							1908,	-- Vile Fin Oracle
							1957,	-- Vile Fin Shorecreeper
							1767,	-- Vile Fin Shredder
							1958,	-- Vile Fin Tidecaller
							1768,	-- Vile Fin Tidehunter
						},
					}),
					i(3451),	-- Nightglow Concoction
					i(3582),	-- Acidproof Cloak
					i(2458),	-- Elixir of Minor Fortitude
					i(2459),	-- Swiftness Potion
					i(276723, {	-- Wise Gauntlets
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			q(452, {	-- Pyrewood Ambush
				qg = 2058,	-- Deathstalker Faerleia
				coord = { 46.4, 74.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
				groups = {
					i(3450),	-- Faerleia's Shield
					i(2818),	-- Stretched Leather Trousers
					i(3449),	-- Mystic Shawl
				},
			}),
			q(460, {	-- Resting in Pieces
				providers = {
					{ "i", 3317 },	-- A Talking Head
					{ "o", 1599 },	-- Shallow Grave
				},
				coord = { 65.2, 32.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(461, {	-- The Hidden Niche
				sourceQuest = 460,	-- Resting in Pieces
				providers = {
					{ "o", 1599 },	-- Shallow Grave
					{ "i", 3318 },	-- Alaric's Remains (QI!)
				},
				coord = { 67.8, 24.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(477, {	-- Border Crossings
				providers = {
					{ "n", 2121 },	-- Shadow Priest Allister
					{ "o", 1627 },	-- Dalaran Crate
				},
				coord = { 44.0, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(478, {	-- Maps and Runes
				sourceQuest = 477,	-- Border Crossings
				providers = {
					{ "o", 1627 },	-- Dalaran Crate
					{ "i", 3353 },	-- Rune-inscribed Pendant (QI!)
				},
				coord = { 49.9, 60.4, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(479, {	-- Ambermill Investigations
				sourceQuest = 482,	-- Dalaran's Intentions
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/8 Dalaran Pendant
						provider = { "i", 3354 },	-- Dalaran Pendant (QI!)
						crs = {
							1915,	-- Dalaran Conjuror
							1914,	-- Dalaran Mage
							1912,	-- Dalaran Protector
						},
					}),
				},
			}),
			q(480, {	-- The Weaver
				sourceQuest = 479,	-- Ambermill Investigations
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					-- FIX_ME!!!
					objective(1, {	-- 0/1 Ataeric's Staff
						provider = { "i", 3515 },	-- Ataeric's Staff (QI!)
						cr = 2120,	-- Archmage Ataeric
					}),
					objective(1, {	-- 0/1 Ataeric's Staff
						provider = { "i", 3515 },	-- Ataeric's Staff (QI!)
						coord = { 63.6, 64.0, MAP.SILVERPINE_FOREST },
						cr = 2120,	-- Archmage Ataeric
					}),
					i(3452),	-- Ceranium Rod
					i(3585),	-- Camouflaged Tunic
				},
			}),
			q(481, {	-- Dalar's Analysis
				sourceQuest = 478,	-- Maps and Runes
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 3353,	-- Rune-inscribed Pendant (QI!)
			}),
			q(482, {	-- Dalaran's Intentions
				sourceQuest = 481,	-- Dalar's Analysis
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(491, {	-- Wand to Bethor
				sourceQuest = 461,	-- The Hidden Niche
				providers = {
					{ "o", 112888 },	-- Dusty Shelf
					{ "i", 3425 },	-- Woven Wand (QI!)
				},
				coord = { 65.3, 24.8, MAP.SILVERPINE_FOREST },
				maps = { MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 12,
				groups = {
					i(3457),	-- Stamped Trousers
					i(3458),	-- Rugged Mail Gloves
					i(3581),	-- Serrated Knife
				},
			}),
			q(493, {	-- Journey to Hillsbrad Foothills
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 19,
				qi = 3468,	-- Renferrel's Findings (QI!)
			}),
			q(516, {	-- Beren's Peril
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 16,
				groups = {
					objective(1, {	-- 0/6 Ravenclaw Drudger slain
						provider = { "n", 1974 },	-- Ravenclaw Drudger
					}),
					objective(2, {	-- 0/6 Ravenclaw Guardian slain
						provider = { "n", 1973 },	-- Ravenclaw Guardian
					}),
					i(5252),	-- Wand of Decay
				},
			}),
			q(530, {	-- A Husband's Revenge
				sourceQuest = 441,	-- Raleigh and the Undercity
				qg = 2050,	-- Raleigh Andrean
				coord = { 62.0, 43.0, MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {
						provider = { "i", 3613 },	-- Valdred's Hands (QI!)
						coord = { 46.4, 84.6, MAP.SILVERPINE_FOREST },
						cr = 2332,	-- Valdred Moray
					}),
					i(3235),	-- Ring of Scorn
				},
			}),
			q(1359, {	-- Zinge's Delivery
				sourceQuest = 3221,	-- Speak with Renferrel
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				maps = { MAP.UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				qi = 6016,	-- Wolf Heart Sample (QI!)
			}),
			q(3221, {	-- Speak with Renferrel
				sourceQuest = 449,	-- The Deathstalkers' Report
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(6321, {	-- Supplying the Sepulcher / Supplying Brill [CATA+]
				qg = 6389,	-- Deathguard Podrig
				coord = { 43.4, 41.6, MAP.SILVERPINE_FOREST },
				races = { UNDEAD },
				lvl = 10,
				qi = 16209,	-- Podrig's Order (QI!)
			}),
			q(6323, {	-- Ride to the Undercity
				sourceQuest = 6321,	-- Supplying the Sepulcher / Supplying Brill [CATA+]
				qg = 2226,	-- Karos Razok
				coord = { 45.6, 42.4, MAP.SILVERPINE_FOREST },
				races = { UNDEAD },
				lvl = 10,
				qi = 16209,	-- Podrig's Order (QI!)
			}),
			q(78261, {	-- The Horn of Xelthos (1/2)
				provider = { "o", 410369 },	-- Dead Drop
				coord = { 47.1, 71.1, MAP.SILVERPINE_FOREST },
				maps = { MAP.SHADOWFANG_KEEP, MAP.STONETALON_MOUNTAINS },
				classes = { ROGUE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Horn of Xelthos
						providers = {
							{ "i", 210183 },	-- Horn of Xelthos (QI!)
							{ "o", 410528 },	-- Ornamented Chest
						},
					}),
					objective(2, {	-- Find Veenix
						cr = 4086,	-- Veenix <Venture Co. Merchant>
						coord = { 58.2, 51.6, MAP.STONETALON_MOUNTAINS },
					}),
				},
			}),
			q(78307, {	-- The Horn of Xelthos (2/2)
				sourceQuest = 78261,	-- The Horn of Xelthos (1/2)
				provider = { "o", 410369 },	-- Dead Drop
				coord = { 47.1, 71.1, MAP.SILVERPINE_FOREST },
				classes = { ROGUE },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(277210),	-- Pyrewood Signet Ring
				},
			}),
			q(78699, {	-- The Eye of Bhossca
				classes = { ROGUE },
				lvl = 25,
				-- TODO: Wowhead doesn't list how this quest starts. Turned in at the Dead Drop (410369) in Silverpine Forest.
				timeline = { TIMELINE.CREATED_1_60_1 },
				groups = {
					i(277246),	-- Ruby-Adorned Blade
				},
			}),
			q(91859, {	-- A Curious Pair
				qg = 248840,	-- Trevan Rol
				coord = { 43.4, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(91860, {	-- A Grim Fate
				sourceQuest = 91859,	-- A Curious Pair
				qg = 259611,	-- Deathguard Baldren
				coord = { 45.6, 41.8, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(91861, {	-- Into Fenris Keep
				sourceQuest = 91860,	-- A Grim Fate
				provider = { "o", 566037 },	-- Charred Remains
				coord = { 65.0, 34.2, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
			}),
			q(91862, {	-- Lumina Windsinger
				qg = 248755,	-- Lumina Windsinger
				coord = { 64.0, 34.0, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Fenris Isle Key
						provider = { "i", 267412 },	-- Fenris Isle Key (QI!)
					}),
				},
			}),
			q(91920, {	-- Wild Eyes
				sourceQuests = { 430 },	-- Return to Quinn
				qg = 1951,	-- Quinn Yorick <Deathstalker>
				coord = { 53.43, 12.59, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Murloc Eye
						provider = { "i", 730 },	-- Murloc Eye
					}),
					i(4597),	-- Recipe: Discolored Healing Potion (RECIPE!)
				},
			}),
			q(91921, {	-- Return to Quinn (Again)
				sourceQuests = { 91920 },	-- Wild Eyes
				qg = 1937,	-- Apothecary Renferrel <Royal Apothecary Society>
				coord = { 42.8, 40.86, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 248930,	-- Quinn's Potion (QI!)
			}),
			q(94505, {	-- Call of Water
				qg = 5895,	-- Minor Manifestation of Water
				coord = { 38.65, 44.58, MAP.SILVERPINE_FOREST },
				races = ALLIANCE_SHAMANS,
				classes = { SHAMAN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 7813,	-- Shard of Water (QI!)
				groups = { i(5177) },	-- Water Totem
			}),
			q(95034, {	-- The Debt
				qg = 259620,	-- Lumina Windsinger
				coord = { 43.2, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Speak with Lumina Windsinger
						cr = 259620,	-- Lumina Windsinger
						coord = { 43.2, 41.0, MAP.SILVERPINE_FOREST },
					}),
				},
			}),
			q(95036, {	-- A Moon-Kissed Blade
				sourceQuest = 95034,	-- The Debt
				qg = 259620,	-- Lumina Windsinger
				coord = { 43.2, 41.0, MAP.SILVERPINE_FOREST },
				maps = { MAP.ASHENVALE, MAP.BLACKFATHOM_DEEPS, MAP.DEADMINES, MAP.SHADOWFANG_KEEP },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Trevan's Weapon Notes
						provider = { "i", 267454 },	-- Trevan's Weapon Notes
					}),
					objective(2, {	-- 0/1 Whitestone Oak Lumber
						provider = { "i", 6994 },	-- Whitestone Oak Lumber (QI!)
						cr = 641,	-- Goblin Woodcarver
					}),
					objective(3, {	-- 0/1 Enchanted Silver Ingot
						providers = {
							{ "i", 267361 },	-- Enchanted Silver Ingot (QI!)
							{ "o", 629065 },	-- Enchanted Silver Ingot
						},
						description = "Found on the table next to Archmage Arugal in Shadowfang Keep.",
					}),
					q(95042, {	-- Seeking the Kor Gem
						qg = 259649,	-- Ulric Frostveil
						coord = { 11.8, 34.4, MAP.ASHENVALE },
						races = HORDE_PALADINS,
						classes = { PALADIN },
						lvl = 20,
						timeline = { TIMELINE.ADDED_1_60_1 },
						groups = {
							objective(1, {	-- 0/1 Corrupted Kor Gem
								provider = { "i", 6995 },	-- Corrupted Kor Gem (QI!)
								crs = {
									4803,	-- Blackfathom Oracle
									4802,	-- Blackfathom Tide Priestess
								},
							}),
							objective(4, {	-- 0/1 Purified Kor Gem
								provider = { "i", 272448 },	-- Purified Kor Gem (QI!)
								questID = 95036,	-- A Moon-Kissed Blade
							}),
						},
					}),
				},
			}),
			q(95111, {	-- An Underrated Talent
				qg = 248840,	-- Trevan Rol
				coord = { 43.4, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 268192,	-- Bundle of Blacksmithing Materials (QI!)
			}),
			q(95140, {	-- Old Fire-Eye
				qg = 259620,	-- Lumina Windsinger
				coord = { 43.2, 41.0, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Old Fire-Eye slain
						provider = { "n", 259897 },	-- Old Fire-Eye
						coord = { 47.6, 84.8, MAP.SILVERPINE_FOREST },
					}),
					objective(2, {	-- 0/1 Moonsilver Blade
						provider = { "i", 268484 },	-- Moonsilver Blade
					}),
					i(267369),	-- Wolfsbane
				},
			}),
			q(95883, {	-- The Tortured Soul
				sourceQuest = 95884,	-- The Offering Stone
				provider = { "o", 645153 },	-- Offering Stone
				coord = { 58.1, 69.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- 0/1 Tortured Soul
						provider = { "i", 271350 },	-- Tortured Soul (QI!)
						crs = {
							1974,	-- Ravenclaw Drudger
							1973,	-- Ravenclaw Guardian
						},
					}),
				},
			}),
			q(95884, {	-- The Offering Stone
				provider = { "i", 271343 },	-- Note Scrap (QS!)
				coord = { 57.12, 71.02, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Note Scrap
						provider = { "i", 271343 },	-- Note Scrap (QS!)
					}),
				},
			}),
			q(95885, {	-- The Offering of Blood
				sourceQuest = 95883,	-- The Tortured Soul
				provider = { "o", 645153 },	-- Offering Stone
				coord = { 58.1, 69.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 20,
				timeline = { TIMELINE.ADDED_1_60_1 },
				qi = 210713,	-- Tortured Soul (PQI!)
				groups = {
					i(281673),	-- Loop of Sacrifice
				},
			}),
			q(95981, {	-- Watching the Roads
				qg = 2121,	-- Shadow Priest Allister
				coord = { 43.98, 40.93, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Dalaran Watcher
						provider = { "n", 1888 },	-- Dalaran Watcher
					}),
					objective(2, {	-- Dalaran Wizard
						provider = { "n", 1889 },	-- Dalaran Wizard
					}),
					i(281265),	-- Roadwatcher's Confidence
				},
			}),
			q(96204, {	-- The Windshaper's Wrath
				sourceQuest = 91862,	-- Lumina Windsinger
				qg = 248755,	-- Lumina Windsinger
				coord = { 65.4, 32.8, MAP.SILVERPINE_FOREST },
				races = HORDE_PALADINS,
				classes = { PALADIN },
				lvl = 18,
				timeline = { TIMELINE.ADDED_1_60_1 },
				-- TODO: Escort Lumina Windsinger out of Fenris Keep; Wowhead has no IDs for the escort yet.
			}),
			q(98298, {	-- Arugal's Folly
				sourceQuests = { 99 },	-- Arugal's Folly
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.81, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Worgen Bits
						provider = { "i", 280375 },	-- Worgen Bits (QI!)
					}),
					i(281315),	-- Foulfur Gloves
				},
			}),
			q(98299, {	-- Stop the Spread
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.81, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					objective(1, {	-- Haggard Refugee
						provider = { "n", 2053 },	-- Haggard Refugee
					}),
					objective(2, {	-- Sickly Refugee
						provider = { "n", 2054 },	-- Sickly Refugee
					}),
				},
			}),
		}),
		n(RARES, {
			n(1920, {	-- Dalaran Spellscribe / Ambermill Spellscribe [CATA+]
				coord = { 63.4, 65.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(8491, {	-- Black Tabby Cat (PET!)
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
					}),
					i(4437, {	-- Channeler's Staff
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
					}),
					i(4436, {	-- Jewel-encrusted Sash
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
					}),
				},
			}),
			n(12431, {	-- Gorefang
				coords = {
					{ 60.2, 10.0, MAP.SILVERPINE_FOREST },
					{ 47.6, 17.6, MAP.SILVERPINE_FOREST },
					{ 51.8, 19.6, MAP.SILVERPINE_FOREST },
					{ 48.0, 25.8, MAP.SILVERPINE_FOREST },
				},
				groups = {
					i(283361, {	-- Gorefang's Runners
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(12433, {	-- Krethis the Shadowspinner
				coords = {
					{ 35.6, 9.0, MAP.SILVERPINE_FOREST },
					{ 37.2, 15.6, MAP.SILVERPINE_FOREST },
				},
			}),
			n(12432, {	-- Old Vicejaw
				coords = {
					{ 54.6, 52.0, MAP.SILVERPINE_FOREST },
					{ 51.6, 63.8, MAP.SILVERPINE_FOREST },
					{ 56.2, 62.4, MAP.SILVERPINE_FOREST },
				},
				groups = {
					i(283259, {	-- Bearhide Vicegrips
						timeline = { TIMELINE.ADDED_1_60_1 },
					}),
				},
			}),
			n(2283, {	-- Ravenclaw Regent
				coord = { 57.6, 69.8, MAP.SILVERPINE_FOREST },
				groups = {
					i(6628),	-- Raven's Claws
					i(5969),	-- Regent's Cloak
				},
			}),
			n(1944, {	-- Rot Hide Bruiser
				-- Moved to Tirisfall in 10.1.7
				coord = { 67.6, 24.4, MAP.SILVERPINE_FOREST },
				groups = {
					i(4439),	-- Bruiser Club
					i(5975),	-- Ruffian Belt
				},
			}),
			n(1948, {	-- Snarlmane
				coord = { 66.2, 25.0, MAP.SILVERPINE_FOREST },
				groups = {
					i(4445),	-- Flesh Carver
				},
			}),
		}),
		n(TREASURES, {
			o(410299, {	-- Arcane Secrets
				coord = { 43.4, 41.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(210177),	-- Ataeric: On Arcane Curiosities
				},
			}),
			o(409501, {	-- Dalaran Digest
				coord = { 63.4, 63.1, MAP.SILVERPINE_FOREST },
				timeline = { TIMELINE.ADDED_1_60_1 },
				groups = {
					i(209844),	-- The Dalaran Digest, Vol. 23
				},
			}),
		}),
		n(VENDORS, {
			n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
				coord = { 44.6, 39.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(4788, {	-- Agile Boots
						isLimited = true,
					}),
					i(4789, {	-- Stable Boots
						isLimited = true,
					}),
				},
			}),
			n(3554, {	-- Andrea Boynton <Clothier>
				coord = { 44.6, 39.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				sym = { { "select", "itemID",
					16059,	-- Common Brown Shirt
					3428,	-- Common Grey Shirt
					16060,	-- Common White Shirt
				} },
				groups = {
					i(4782, {	-- Solstice Robe
						isLimited = true,
					}),
					i(4781, {	-- Whispering Vest
						isLimited = true,
					}),
					i(4786, {	-- Wise Man's Belt
						isLimited = true,
					}),
				},
			}),
			n(3556, {	-- Andrew Hilbert <Trade Supplies> [CATA+] / Andrew Hilbert <Trade Goods>
				coord = { 43.2, 40.6, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(6272, {	-- Pattern: Blue Linen Robe (RECIPE!)
						isLimited = true,
					}),
					i(5786, {	-- Pattern: Murloc Scale Belt (RECIPE!)
						isLimited = true,
					}),
					i(5787, {	-- Pattern: Murloc Scale Breastplate (RECIPE!)
						isLimited = true,
					}),
					i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
						isLimited = true,
					}),
					i(6892),	-- Recipe: Smoked Bear Meat (RECIPE!)
				},
			}),
			n(2140, {	-- Edwin Harly
				coord = { 44.1, 39.7, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
			}),
			n(5748, {	-- Killian Sanatha <Fisherman>
				coord = { 33.0, 17.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
				},
			}),
			n(5758, {	-- Leo Sarn <Enchanting Supplies>
				coord = { 54.0, 82.2, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				sym = { { "select", "itemID",
					20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
					20752,	-- Formula: Minor Mana Oil (RECIPE!)
					20758,	-- Formula: Minor Wizard Oil (RECIPE!)
					22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
					6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
				} },
				groups = {
					i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(5757, {	-- Lilly <Enchanting Supplies>
				coord = { 43.0, 50.8, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				sym = { { "select", "itemID",
					20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
					20752,	-- Formula: Minor Mana Oil (RECIPE!)
					20758,	-- Formula: Minor Wizard Oil (RECIPE!)
					22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
					6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
				} },
				groups = {
					i(6346),	-- Formula: Enchant Chest - Lesser Intellect (RECIPE!)
				},
			}),
			n(9553, {	-- Nadia Vernon <Bowyer>
				coord = { 45.0, 39.4, MAP.SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(11304, {	-- Fine Longbow
						isLimited = true,
					}),
				},
			}),
			n(3534, {	-- Wallace the Blind <Weaponsmith>
				coord = { 46.4, 86.4, MAP.SILVERPINE_FOREST },
				groups = {
					i(4817, {	-- Blessed Claymore
						isLimited = true,
					}),
					i(4818, {	-- Executioner's Sword
						isLimited = true,
					}),
					i(11304, {	-- Fine Longbow
						isLimited = true,
					}),
					i(4778, {	-- Heavy Spiked Mace
						isLimited = true,
					}),
					i(4777, {	-- Ironwood Maul
						isLimited = true,
					}),
				},
			}),
		}),
		n(ZONE_DROPS, {
			i(3317, {	-- A Talking Head
				races = HORDE_ONLY,
				crs = {
					1943,	-- Raging Rot Hide
					1944,	-- Rot Hide Bruiser
					1939,	-- Rot Hide Brute
					1940,	-- Rot Hide Plague Weaver
					1942,	-- Rot Hide Savage
				},
			}),
			i(3173, {	-- Bear Meat
				coord = { 52.0, 40.4, MAP.SILVERPINE_FOREST },
				crs = {
					1797,	-- Giant Grizzled Bear
					1778,	-- Ferocious Grizzled Bear
				},
			}),
			i(4767, {	-- Coppercloth Gloves
				description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
				cr = 3578,	-- Dalaran Miner
			}),
			i(5110, {	-- Dalaran Wizard's Robe
				description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
				crs = {
					2120,	-- Archmage Ataeric
					1867,	-- Dalaran Apprentice
					3577,	-- Dalaran Brewmaster
					1915,	-- Dalaran Conjuror
					1914,	-- Dalaran Mage
					3578,	-- Dalaran Miner
					1912,	-- Dalaran Protector
					1920,	-- Dalaran Spellscribe
					1913,	-- Dalaran Warder
					1888,	-- Dalaran Watcher
					1889,	-- Dalaran Wizard
				},
			}),
			i(3164, {	-- Discolored Worg Heart (QI!)
				crs = {
					1923,	-- Bloodsnout Worg
					12431,	-- Gorefang
					1766,	-- Mottled Worg
					1765,	-- Worg
				},
			}),
			i(5771, {	-- Pattern: Red Linen Bag (RECIPE!)
				crs = {
					3531,	-- Moonrage Tailor
					3530,	-- Pyrewood Tailor
				},
			}),
		}),
	},
});
