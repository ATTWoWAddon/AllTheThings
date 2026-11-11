---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(EASTERN_KINGDOMS, SILVERPINE_FOREST, {
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
				coords = {
					{ 45.6, 42.6, SILVERPINE_FOREST },
				},
				races = HORDE_ONLY,
			}),
		}),
		lockpicking({
			o(103815, {	-- Ambermill Strongbox
				coord = { 63.7, 65.2, SILVERPINE_FOREST },
				requireSkill = LOCKPICKING,
				learnedAt = 1,
				groups = {
					i(309),	-- Dalaran Status Report (QI!)
				},
			}),
		}),
		n(QUESTS, {
			q(530, {	-- A Husband's Revenge
				sourceQuest = 441,	-- Raleigh and the Undercity
				qg = 2050,	-- Raleigh Andrean
				coord = { 62.0, 43.0, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {
						provider = { "i", 3613 },	-- Valdred's Hands
						coord = { 46.4, 84.6, SILVERPINE_FOREST },
						cr = 2332,	-- Valdred Moray
					}),
					i(3235),	-- Ring of Scorn
				},
			}),
			q(447, {	-- A Recipe For Death (1/3)
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Grizzled Bear Heart
						provider = { "i", 3253 },	-- Grizzled Bear Heart
						crs = {
							1778,	-- Ferocious Grizzled Bear
							1797,	-- Giant Grizzled Bear
							12432,	-- Old Vicejaw
						},
					}),
					objective(2, {	-- 0/6 Skittering Blood
						provider = { "i", 3254 },	-- Skittering Blood
						crs = {
							12433,	-- Krethis Shadowspinner
							1781,	-- Mist Creeper
							1780,	-- Moss Stalker
						},
					}),
					i(3448),	-- Senggin Root
				},
			}),
			q(450, {	-- A Recipe For Death (2/3)
				sourceQuest = 447,	-- A Recipe For Death (1/3)
				qg = 2055,	-- Master Apothecary Faranell
				coord = { 48.6, 69.4, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Berard's Journal
						providers = {
							{ "i", 3255 },	-- Berard's Journal
							{ "o", 1594 },	-- Berard's Bookshelf
						},
						coord = { 43.0, 73.3, SILVERPINE_FOREST },
					}),
				},
			}),
			q(451, {	-- A Recipe For Death (3/3)
				sourceQuest = 450,	-- A Recipe For Death (2/3)
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Lake Skulker Moss
						provider = { "i", 3256 },	-- Lake Skulker Moss
						crs = {
							1954,	-- Elder Lake Skulker
							1953,	-- Lake Skulker
						},
					}),
					objective(2, {	-- 0/6 Lake Creeper Moss
						provider = { "i", 3257 },	-- Lake Creeper Moss
						crs = {
							1956,	-- Elder Lake Creeper
							1955,	-- Lake Creeper
						},
					}),
					objective(3, {	-- 0/1 Hardened Tumor
						provider = { "i", 3258 },	-- Hardened Tumor
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
				},
			}),
			q(479, {	-- Ambermill Investigations
				sourceQuest = 482,	-- Dalaran's Intentions
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/8 Dalaran Pendant
						provider = { "i", 3354 },	-- Dalaran Pendant
						crs = {
							1915,	-- Dalaran Conjuror
							1914,	-- Dalaran Mage
							1912,	-- Dalaran Protector
						},
					}),
				},
			}),
			q(422, {	-- Arugal's Folly (1/4)
				sourceQuest = 421,	-- Prove Your Worth
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Remedy of Arugal
						providers = {
							{ "i", 3155 },	-- Remedy of Arugal
							{ "o", 1571 },	-- Dusty Spellbooks
						},
						coord = { 52.8, 28.4, SILVERPINE_FOREST },
					}),
				},
			}),
			q(423, {	-- Arugal's Folly (2/4)
				sourceQuest = 422,	-- Arugal's Folly (1/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Glutton Shackle
						provider = { "i", 3156 },	-- Glutton Shackle
						cr = 1779,	-- Moonrage Glutton
					}),
					objective(2, {	-- 0/3 Darksoul Shackle
						provider = { "i", 3157 },	-- Darksoul Shackle
						cr = 1782,	-- Moonrage Darksoul
					}),
				},
			}),
			q(424, {	-- Arugal's Folly (3/4)
				sourceQuest = 423,	-- Arugal's Folly (2/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/1 Head of Grimson
						provider = { "i", 3634 },	-- Head of Grimson
						coord = { 58.6, 44.8, SILVERPINE_FOREST },
						cr = 1972,	-- Grimson the Pale
					}),
				},
			}),
			q(99, {	-- Arugal's Folly (4/4)
				sourceQuest = 424,	-- Arugal's Folly (3/4)
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/6 Pyrewood Shackle
						provider = { "i", 3218 },	-- Pyrewood Shackle
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
			q(442, {	-- Assault on Fenris Isle
				sourceQuest = 448,	-- Report to Hadrec
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Thule's Head
						provider = { "i", 3623 },	-- Thule's Head
						coord = { 65.6, 24.6, SILVERPINE_FOREST },
						cr = 1947,	-- Thule Ravenclaw
					}),
					i(3461),	-- High Robe of the Adjudicator
					i(3462),	-- Talonstrike
				},
			}),
			q(516, {	-- Beren's Peril
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, SILVERPINE_FOREST },
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
			q(477, {	-- Border Crossings
				providers = {
					{ "n", 2121 },	-- Shadow Priest Allister
					{ "o", 1627 },	-- Dalaran Crate
				},
				coord = { 44.0, 41.0, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(481, {	-- Dalar's Analysis
				sourceQuest = 478,	-- Maps and Runes
				qg = 2121,	-- Shadow Priest Allister
				qi = 3353,	-- Rune-inscribed Pendant
				coord = { 44.0, 41.0, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(482, {	-- Dalaran's Intentions
				sourceQuest = 481,	-- Dalar's Analysis
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(435, {	-- Escorting Erland
				qg = 1978,	-- Deathstalker Erland
				coord = { 56.2, 9.2, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(3455),	-- Deathstalker Shortsword
				},
			}),
			q(425, {	-- Ivar the Foul
				sourceQuest = 430,	-- Return to Quinn
				qg = 1950,	-- Rane Yorick
				coord = { 53.4, 13.4, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Ivar's Head
						provider = { "i", 3621 },	-- Ivar's Head
						coord = { 51.8, 13.8, SILVERPINE_FOREST },
						cr = 1971,	-- Ivar the Foul
					}),
					i(3453),	-- Quilted Bracers
					i(3583),	-- Weathered Belt
				},
			}),
			q(493, {	-- Journey to Hillsbrad Foothills
				qg = 1937,	-- Apothecary Renferrel
				qi = 3468,	-- Renferrel's Findings
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 19,
			}),
			q(428, {	-- Lost Deathstalkers
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(478, {	-- Maps and Runes
				sourceQuest = 477,	-- Border Crossings
				providers = {
					{ "o", 1627 },	-- Dalaran Crate
					{ "i", 3353 },	-- Rune-inscribed Pendant
				},
				coord = { 49.9, 60.4, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(421, {	-- Prove Your Worth
				qg = 1938,	-- Dalar Dawnweaver
				coord = { 44.2, 39.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 9,
				groups = {
					objective(1, {	-- 0/5 Moonrage Whitescalp slain
						provider = { "n", 1769 },	-- Moonrage Whitescalp
					}),
				},
			}),
			q(452, {	-- Pyrewood Ambush
				qg = 2058,	-- Deathstalker Faerleia
				coord = { 46.4, 74.2, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
				groups = {
					i(3450),	-- Faerleia's Shield
					i(2818),	-- Stretched Leather Trousers
					i(3449),	-- Mystic Shawl
				},
			}),
			q(441, {	-- Raleigh and the Undercity
				sourceQuest = 440,	-- The Engraved Ring
				qg = 1499,	-- Magistrate Sevren
				qi = 3234,	-- Deliah's Ring
				coord = { 61.2, 50.8, TIRISFAL_GLADES },
				maps = { UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(448, {	-- Report to Hadrec
				sourceQuest = 446,	-- Thule Ravenclaw
				qg = 1937,	-- Apothecary Renferrel
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(3240),	-- Coarse Weightstone
					i(2863),	-- Coarse Sharpening Stone
					i(2313),	-- Medium Armor Kit
				},
			}),
			q(460, {	-- Resting in Pieces
				providers = {
					{ "i", 3317 },	-- A Talking Head
					{ "o", 1599 },	-- Shallow Grave
				},
				coord = { 65.2, 32.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(430, {	-- Return to Quinn
				sourceQuest = 429,	-- Wild Hearts
				qg = 1937,	-- Apothecary Renferrel
				qi = 3165,	-- Quinn's Potion
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(6323, {	-- Ride to the Undercity
				sourceQuest = 6321,	-- Supplying the Sepulcher / Supplying Brill [CATA+]
				qg = 2226,	-- Karos Razok
				qi = 16209,	-- Podrig's Order
				coord = { 45.6, 42.4, SILVERPINE_FOREST },
				races = { UNDEAD },
				lvl = 10,
			}),
			q(439, {	-- Rot Hide Clues
				sourceQuest = 438,	-- The Decrepit Ferry
				providers = {
					{ "o", 1593 },	-- Corpse Laden Boat
					{ "i", 3234 },	-- Deliah's Ring
				},
				coord = { 58.4, 34.9, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(443, {	-- Rot Hide Ichor
				sourceQuest = 439,	-- Rot Hide Clues
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/8 Rot Hide Ichor
						provider = { "i", 3236 },	-- Rot Hide Ichor
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
				qi = 3237,	-- Sample Ichor
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(3221, {	-- Speak with Renferrel
				sourceQuest = 449,	-- The Deathstalkers' Report
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(6321, {	-- Supplying the Sepulcher / Supplying Brill [CATA+]
				qg = 6389,	-- Deathguard Podrig
				qi = 16209,	-- Podrig's Order
				coord = { 43.4, 41.6, SILVERPINE_FOREST },
				races = { UNDEAD },
				lvl = 10,
			}),
			q(437, {	-- The Dead Fields
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/1 Essence of Nightlash
						provider = { "i", 3622 },	-- Essence of Nightlash
						coord = { 45.8, 20.4, SILVERPINE_FOREST },
						cr = 1983,	-- Nightlash
					}),
					i(3454),	-- Reconnaissance Boots
				},
			}),
			q(449, {	-- The Deathstalkers' Report
				sourceQuest = 435,	-- Escorting Erland
				qg = 1950,	-- Rane Yorick
				qi = 3252,	-- Deathstalker Report
				coord = { 53.4, 13.4, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(438, {	-- The Decrepit Ferry
				sourceQuest = 437,	-- The Dead Fields
				qg = 1952,	-- High Executor Hadrec
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(440, {	-- The Engraved Ring
				sourceQuest = 439,	-- Rot Hide Clues
				qg = 1952,	-- High Executor Hadrec
				qi = 3234,	-- Deliah's Ring
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
			}),
			q(461, {	-- The Hidden Niche
				sourceQuest = 460,	-- Resting in Pieces
				providers = {
					{ "o", 1599 },	-- Shallow Grave
					{ "i", 3318 },	-- Alaric's Remains
				},
				coord = { 67.8, 24.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 12,
			}),
			q(480, {	-- The Weaver
				sourceQuest = 479,	-- Ambermill Investigations
				qg = 2121,	-- Shadow Priest Allister
				coord = { 44.0, 41.0, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					-- FIX_ME!!!
					objective(1, {	-- 0/1 Ataeric's Staff
						provider = { "i", 3515 },	-- Ataeric's Staff
						cr = 2120,	-- Archmage Ataeric
					}),
					objective(1, {	-- 0/1 Ataeric's Staff
						provider = { "i", 3515 },	-- Ataeric's Staff
						coord = { 63.6, 64.0, SILVERPINE_FOREST },
						cr = 2120,	-- Archmage Ataeric
					}),
					i(3452),	-- Ceranium Rod
					i(3585),	-- Camouflaged Tunic
				},
			}),
			q(446, {	-- Thule Ravenclaw
				sourceQuest = 444,	-- Rot Hide Origins
				qg = 1498,	-- Bethor Iceshard
				qi = 3250,	-- Bethor's Scroll
				coord = { 84.2, 17.4, UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(3251),	-- Bethor's Potion
				},
			}),
			q(491, {	-- Wand to Bethor
				sourceQuest = 461,	-- The Hidden Niche
				providers = {
					{ "o", 112888 },	-- Dusty Shelf
					{ "i", 3425 },	-- Woven Wand
				},
				coord = { 65.3, 24.8, SILVERPINE_FOREST },
				maps = { UNDERCITY },
				races = HORDE_ONLY,
				lvl = 12,
				groups = {
					i(3457),	-- Stamped Trousers
					i(3458),	-- Rugged Mail Gloves
					i(3581),	-- Serrated Knife
				},
			}),
			q(429, {	-- Wild Hearts
				sourceQuest = 428,	-- Lost Deathstalkers
				qg = 1950,	-- Rane Yorick
				coord = { 53.4, 13.4, SILVERPINE_FOREST },
				cost = { { "i", 3164, 6 } },	-- Discolored Worg Heart
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					i(4597, {	-- Recipe: Discolored Healing Potion (RECIPE!)
						description = "This item can be sold on the Neutral Auction House to Alliance Alchemists for a... nominal fee.\n\nOnly naturally accessible to Horde Alchemists.",
					}),
					i(4596),	-- Discolored Healing Potion
				},
			}),
			q(1359, {	-- Zinge's Delivery
				sourceQuest = 3221,	-- Speak with Renferrel
				qg = 1937,	-- Apothecary Renferrel
				qi = 6016,	-- Wolf Heart Sample
				coord = { 43.4, 40.8, SILVERPINE_FOREST },
				maps = { UNDERCITY },
				races = HORDE_ONLY,
				lvl = 10,
			}),
		}),
		n(RARES, {
			n(1920, {	-- Dalaran Spellscribe / Ambermill Spellscribe [CATA+]
				coord = { 63.4, 65.2, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(8491, {	-- Black Tabby Cat (PET!)
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
						timeline = { ADDED_1_11_1 },
					}),
					i(4437, {	-- Channeler's Staff
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
					}),
					i(4436, {	-- Jewel-encrusted Sash
						description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
					}),
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(211875, {	-- Decayed Elemental
				provider = { "i", 210253 },	-- Rot Totem
				coord = { 46.0, 22.2, SILVERPINE_FOREST },
				classes = { SHAMAN },
				groups = {
					i(208758, {	-- Earthen Rune
						classes = { SHAMAN },
						groups = {
							recipe(410107),	-- Engrave Pants - Way of Earth
						},
					}),
				},
			})),
			n(12431, {	-- Gorefang
				coords = {
					{ 60.2, 10.0, SILVERPINE_FOREST },
					{ 47.6, 17.6, SILVERPINE_FOREST },
					{ 51.8, 19.6, SILVERPINE_FOREST },
					{ 48.0, 25.8, SILVERPINE_FOREST },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(211736, {	-- Grizzled Protector
				description = "Kill Ferocious Grizzled Bears until the protector appears.",
				classes = { HUNTER },
				crs = { 1778 },	-- Ferocious Grizzled Bear
				groups = {
					i(208701, {	-- Rune of Beast Mastery
						classes = { HUNTER },
						groups = {
							recipe(410110),	-- Engrave Gloves - Beast Mastery
						},
					}),
				},
			})),
			n(12433, {	-- Krethis the Shadowspinner
				coords = {
					{ 35.6, 9.0, SILVERPINE_FOREST },
					{ 37.2, 15.6, SILVERPINE_FOREST },
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(211146, {	-- Lost Adventurer
				provider = { "n", 210802 },	-- Webbed Victim
				coord = { 34.8, 7.8, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				groups = {
					i(208741, {	-- Rune of Endless Rage
						classes = { WARRIOR },
						groups = {
							recipe(403489),	-- Engrave Gloves - Endless Rage
						},
					}),
				},
			})),
			n(12432, {	-- Old Vicejaw
				coords = {
					{ 54.6, 52.0, SILVERPINE_FOREST },
					{ 51.6, 63.8, SILVERPINE_FOREST },
					{ 56.2, 62.4, SILVERPINE_FOREST },
				},
			}),
			n(2283, {	-- Ravenclaw Regent
				coords = {
					{ 57.6, 69.8, SILVERPINE_FOREST },
				},
				groups = {
					i(6628),	-- Raven's Claws
					i(5969),	-- Regent's Cloak
				},
			}),
			n(1944, {	-- Rot Hide Bruiser
				-- Moved to Tirisfall in 10.1.7
				coord = { 67.6, 24.4, SILVERPINE_FOREST },
				groups = {
					i(4439),	-- Bruiser Club
					i(5975),	-- Ruffian Belt
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(212763, {	-- Sadistic Fiend
				description = "Cast Curse of Recklessness on him.",
				coord = { 58.2, 45.2, SILVERPINE_FOREST },
				groups = {
					i(208750, {	-- Rune of Channeling
						classes = { WARLOCK },
						groups = {
							recipe(403932),	-- Engrave Chest - Master Channeler
						},
					}),
				},
			})),
			n(1948, {	-- Snarlmane
				coord = { 66.2, 25.0, SILVERPINE_FOREST },
				groups = {
					i(4445),	-- Flesh Carver
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(212753, {	-- Tortured Soul
				provider = { "i", 210713 },	-- Tortured Soul
				coord = { 59.4, 70.8, SILVERPINE_FOREST },
				classes = { WARLOCK },
				groups = {
					i(208744, {	-- Rune of Shadowbolts
						classes = { WARLOCK },
						groups = {
							recipe(403936),	-- Engrave Gloves - Shadow Bolt Volley
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(212809, {	-- Wailing Spirit
				coord = { 60.2, 74.4, SILVERPINE_FOREST },
				groups = {
					i(205905, {	-- Memory of a Devout Champion
						classes = { PRIEST },
						groups = {
							recipe(425215),	-- Engrave Chest - Twisted Faith
						},
					}),
				},
			})),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, i(210177, {	-- Ataeric: On Arcane Curiosities
				provider = { "o", 410299 },	-- Arcane Secrets
				coord = { 43.4, 41.2, SILVERPINE_FOREST },
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205932, {	-- Prophecy of a King's Demise
				provider = { "o", 411674 },	-- Prophecy of a King's Demise
				coord = { 65.8, 23.5, SILVERPINE_FOREST },
				classes = { PRIEST },
				groups = {
					recipe(402849),	-- Engrave Gloves - Shadow Word - Death
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208772, {	-- Rune of Saber Slash
				description = "You will need to use Sprint to make the jump to the platform.",
				provider = { "o", 409131 },	-- Rusty Chest
				coord = { 45.2, 67.2, SILVERPINE_FOREST },
				classes = { ROGUE },
				groups = {
					recipe(424984),	-- Engrave Gloves - Saber Slash
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(209844, {	-- The Dalaran Digest, Vol. 23
				provider = { "o", 409501 },	-- Dalaran Digest
				coord = { 63.5, 63.1, SILVERPINE_FOREST },
			})),
		}),
		n(VENDORS, {
			n(3552, {	-- Alexandre Lefevre <Leather Armor Merchant>
				coords = {
					{ 44.6, 39.2, SILVERPINE_FOREST },
				},
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
				coord = { 44.6, 39.2, SILVERPINE_FOREST },
				races = HORDE_ONLY,
				sym = {{"select","itemID",
					16059,	-- Common Brown Shirt
					3428,	-- Common Grey Shirt
					16060,	-- Common White Shirt
				}},
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
				coord = { 43.2, 40.6, SILVERPINE_FOREST },
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
				coord = { 44.1, 39.7, SILVERPINE_FOREST },
				races = HORDE_ONLY,
			}),
			n(5748, {	-- Killian Sanatha <Fisherman>
				coords = {
					{ 33.0, 17.8, SILVERPINE_FOREST },
				},
				races = HORDE_ONLY,
				groups = {
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
					i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
				},
			}),
			n(5758, {	-- Leo Sarn <Enchanting Supplies>
				coords = {
					{ 54.0, 82.2, SILVERPINE_FOREST },
				},
				races = HORDE_ONLY,
				sym = {
					{ "select","itemID",
						20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
						20752,	-- Formula: Minor Mana Oil (RECIPE!)
						20758,	-- Formula: Minor Wizard Oil (RECIPE!)
						22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
					},
				},
				groups = {
					i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
						isLimited = true,
					}),
				},
			}),
			n(5757, {	-- Lilly <Enchanting Supplies>
				coords = {
					{ 43.0, 50.8, SILVERPINE_FOREST },
				},
				races = HORDE_ONLY,
				sym = {
					{ "select","itemID",
						20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
						20752,	-- Formula: Minor Mana Oil (RECIPE!)
						20758,	-- Formula: Minor Wizard Oil (RECIPE!)
						22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
					},
				},
				groups = {
					i(6346),	-- Formula: Enchant Chest - Lesser Mana (RECIPE!)
				},
			}),
			n(9553, {	-- Nadia Vernon <Bowyer>
				coords = {
					{ 45.0, 39.4, SILVERPINE_FOREST },
				},
				races = HORDE_ONLY,
				groups = {
					i(11304, {	-- Fine Longbow
						isLimited = true,
					}),
				},
			}),
			n(3534, {	-- Wallace the Blind <Weaponsmith>
				coords = {
					{ 46.4, 86.4, SILVERPINE_FOREST },
				},
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
				coord = { 52.0, 40.4, SILVERPINE_FOREST },
				crs = {
					1797,	-- Giant Grizzled Bear
					1778,	-- Ferocious Grizzled Bear
				},
			}),
			-- This was moved to Hillsbrad Foothills!
			i(4767, {	-- Coppercloth Gloves
				description = "This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
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
			i(3164, {	-- Discolored Worg Heart
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
			applyclassicphase(SOD_PHASE_ONE, i(210696, {	-- Rot Bane
				description = "Supposedly this will not drop if you've completed the Quick Strike rune already.",
				coord = { 66.2, 31.0, SILVERPINE_FOREST },
				classes = { WARRIOR },
				cr = 212598,	-- Recke Grinnes
			})),
			applyclassicphase(SOD_PHASE_ONE, i(210253, {	-- Rot Totem
				coord = { 45.6, 22.6, SILVERPINE_FOREST },
				classes = { SHAMAN },
				cr = 1773,	-- Rot Hide Mystic
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208778, {	-- Rune of Quick Strike
				provider = { "i", 210696 },	-- Rot Bane
				coord = { 66.2, 31.0, SILVERPINE_FOREST },
				classes = { WARRIOR },
				crs = {
					1943,	-- Raging Rot Hide
					1944,	-- Rot Hide Bruiser
					1939,	-- Rot Hide Brute
					1940,	-- Rot Hide Plague Weaver
					1942,	-- Rot Hide Savage
				},
				groups = {
					recipe(425443),	-- Engrave Gloves - Quick Strike
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(208754, {	-- Spell Notes: TENGI RONEERA
				coord = { 50.8, 61.6, SILVERPINE_FOREST },
				classes = { MAGE },
				races = HORDE_ONLY,
				cr = 1867,	-- Dalaran Apprentice
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206382, {	-- Tempest Icon
				coord = { 58.6, 44.8, SILVERPINE_FOREST },
				classes = { SHAMAN },
				cr = 1972,	-- Grimson the Pale
				groups = {
					recipe(410097),	-- Engrave Gloves - Water Shield
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(210713, {	-- Tortured Soul
				description = "Use Life Tap in a safe area to summon the Tortured Soul.",
				coord = { 59.4, 70.8, SILVERPINE_FOREST },
				classes = { WARLOCK },
				crs = {
					1974,	-- Ravenclaw Drudger
					1973,	-- Ravenclaw Guardian
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(210195, {	-- Unbalanced Idol
				description = "Moon: Cast Moonfire a lot.\nEmerald Dream: Cast Healing Touch (Rank 1) a lot.\nWild: Shapeshift a lot.",
				coord = { 52.8, 27.4, SILVERPINE_FOREST },
				classes = { DRUID },
				crs = {
					1769,	-- Moonrage Whitescalp
					1770,	-- Moonrage Darkrunner
				},
				groups = {
					recipe(416049),	-- Engrave Gloves - Lacerate
				},
			})),
		}),
	},
});
