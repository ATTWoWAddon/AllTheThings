---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(KALIMDOR, MULGORE, {
	lore = "A land of windswept mesas and grassy plains, Mulgore is the tauren's ancestral homeland. Centaur often send raiding parties into Mulgore, and the tauren, now with the help of their Horde allies, beat them back. Tauren are naturally a nomadic people, and their tent cities are scattered across the landscape and change with the seasons and the weather.\n\nNow that they are members of the Horde, the tauren have constructed several permanent settlements, including fortified Dalsh-Beran and their capital of Thunder Bluff.",
	icon = 236809,
	maps = {
		8,	-- Palemane Rock
		9,	-- The Venture Co. Mine
	},
	groups = {
		m(CAMP_NARACHE, {
			lore = "Camp Narache is the starting area and town for the Tauren, which is located in southern Mulgore at the northern edge of the Red Cloud Mesa. Tauren Shamans will find their first totem quest here for the Earth Totem. Camp Narache is the main village of the Hawkwind Tribe, and its Chief is a member of that Tribe.",
			icon = 236454,
			zoneTextAreaIDs = {
				221,	-- Camp Narache
			},
			groups = {
				n(QUESTS, {
					q(752, {	-- A Humble Task (1/2)
						qg = 2981,	-- Chief Hawkwind
						coord = { 44.2, 76.0, MULGORE },
						races = HORDE_ONLY,
						isBreadcrumb = true,
					}),
					q(753, {	-- A Humble Task (2/2)
						sourceQuest = 752,	-- A Humble Task (1/2)
						qg = 2991,	-- Greatmother Hawkwind
						coord = { 50.0, 81.0, MULGORE },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/1 Water Pitcher
								providers = {
									{ "i", 4755 },	-- Water Pitcher
									{ "o", 2907 },	-- Water Pitcher
								},
								coord = { 50.2, 81.3, MULGORE },
							}),
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77649, {	-- A Hunter's Strength
						qg = 3061,	-- Lanka Farshot <Hunter Trainer>
						coord = { 44.2, 75.8, MULGORE },
						classes = { HUNTER },
						races = { TAUREN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Chimera Shot
								provider = { "i", 206168 },	-- Rune of the Chimera
								coord = { 62.6, 79.8, MULGORE },
								cr = 2954,	-- Bristleback Battleboar
							}),
							recipe(410121),	-- Engrave Gloves - Chimera Shot
							i(2125),	-- Cracked Leather Gloves
						},
					})),
					q(781, {	-- Attack on Camp Narache
						providers = {
							{ "i", 4851 },	-- Dirt-stained Map
							{ "o", 3076 },	-- Dirt-stained Map
							{ "i", 4850 },	-- Bristleback Attack Plans
						},
						coord = { 63.3, 82.6, MULGORE },
						races = HORDE_ONLY,
						groups = {
							i(4911),	-- Thick Bark Buckler
						},
					}),
					q(3376, {	-- Break Sharptusk!
						qg = 3209,	-- Brave Windfeather
						coord = { 44.8, 76.6, MULGORE },
						races = HORDE_ONLY,
						lvl = 3,
						groups = {
							objective(1, {	-- 0/1 Chief Sharptusk Thornmantle's Head
								provider = { "i", 10459 },	-- Chief Sharptusk Thornmantle's Head
								coord = { 64.6, 77.8, MULGORE },
								cr = 8554,	-- Chief Sharptusk Thornmantle
							}),
							i(10635),	-- Painted Chain Leggings
							i(10636),	-- Nomadic Gloves
						},
					}),
					q(1519, {	-- Call of Earth (1/3)
						altQuests = { 1516 },	-- Call of Earth (1/3 Durotar)
						qg = 5888,	-- Seer Ravenfeather
						coord = { 44.8, 76.2, MULGORE },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
						groups = {
							objective(1, {	-- 0/2 Ritual Salve
								provider = { "i", 6634 },	-- Ritual Salve
								cr = 2953,	-- Bristleback Shaman
							}),
						},
					}),
					q(1520, {	-- Call of Earth (2/3)
						sourceQuest = 1519,	-- Call of Earth (1/3)
						altQuests = { 1517 },	-- Call of Earth (2/3 Durotar)
						qg = 5888,	-- Seer Ravenfeather
						qi = 6635,	-- Earth Sapta
						coord = { 44.8, 76.2, MULGORE },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
					}),
					q(1521, {	-- Call of Earth (3/3)
						sourceQuest = 1520,	-- Call of Earth (2/3)
						altQuests = { 1518 },	-- Call of Earth (3/3 Durotar)
						qg = 5891,	-- Minor Manifestation of Earth
						qi = 6656,	-- Rough Quartz
						coord = { 53.8, 80.4, MULGORE },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						lvl = 4,
						groups = {
							recipe(8071),	-- Stoneskin Totem
							i(5175, {	-- Earth Totem
								description = "You must keep this in your bags forever.",
							}),
						},
					}),
					q(1462, {	-- Earth Sapta
						sourceQuest = 1519,	-- Call of Earth (1/3)
						altQuests = { 1463 },	-- Earth Sapta (Durotar)
						qg = 5888,	-- Seer Ravenfeather
						coord = { 44.8, 76.2, MULGORE },
						races = HORDE_ONLY,
						classes = { SHAMAN },
						repeatable = true,
						lvl = 4,
						groups = {
							i(6635),	-- Earth Sapta
						},
					}),
					q(3092, {	-- Etched Note
						sourceQuest = 747,	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						qi = 9565,	-- Etched Note
						coords = {
							{ 44.9, 77.1, MULGORE },
						},
						races = { TAUREN },
						classes = { HUNTER },
					}),
					applyclassicphase(SOD_PHASE_ONE, q(77652, {	-- Icons of Power
						qg = 3062,	-- Meela Dawnstrider <Shaman Trainer>
						coord = { 45.0, 76.0, MULGORE },
						classes = { SHAMAN },
						races = { TAUREN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Overload
								provider = { "i", 206381 },	-- Dyadic Icon
							}),
							recipe(410094),	-- Engrave Chest - Overload
							i(2127),	-- Cracked Leather Vest
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77651, {	-- Into the Brambles
						qg = 3059,	-- Harutt Thunderhorn <Warrior Trainer>
						coord = { 44.0, 76.0, MULGORE },
						classes = { WARRIOR },
						races = { TAUREN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Gloves - Victory Rush
								provider = { "i", 204806 },	-- Rune of Victory Rush
							}),
							recipe(403470),	-- Engrave Gloves - Victory Rush
							i(2385),	-- Tarnished Chain Gloves
						},
					})),
					applyclassicphase(SOD_PHASE_ONE, q(77648, {	-- Relics of the Tauren
						qg = 3060,	-- Gart Mistrunner <Druid Trainer>
						coord = { 45.0, 76.0, MULGORE },
						classes = { DRUID },
						races = { TAUREN },
						lvl = 2,
						groups = {
							objective(1, {	-- 0/1 Learn Spell: Engrave Chest - Fury of Stormrage
								provider = { "i", 208414 },	-- Lunar Idol
							}),
							recipe(410061),	-- Engrave Chest - Fury of Stormrage
							i(2127),	-- Cracked Leather Vest
						},
					})),
					q(757, {	-- Rite of Strength
						sourceQuest = 755,	-- Rites of the Earthmother (1/3)
						qg = 2982,	-- Seer Graytongue
						coord = { 42.6, 92.0, MULGORE },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/12 Bristleback Belt
								provider = { "i", 4770 },	-- Bristleback Belt
								crs = {
									2952,	-- Bristleback Quilboar
									2953,	-- Bristleback Shaman
								},
							}),
							i(12448, {	-- Light Hunting Rifle
								timeline = { REMOVED_1_7_0 },
							}),
							i(1382),	-- Rock Mace
							i(1383),	-- Stone Tomahawk
							i(2137),	-- Whittling Knife
							i(5776),	-- Elder's Cane
							i(5777),	-- Brave's Axe
						},
					}),
					q(755, {	-- Rites of the Earthmother (1/3)
						sourceQuest = 753,	-- A Humble Task (2/2)
						qg = 2981,	-- Chief Hawkwind
						coord = { 44.2, 76.1, MULGORE },
						races = HORDE_ONLY,
					}),
					q(763, {	-- Rites of the Earthmother (2/3)
						sourceQuest = 757,	-- Rite of Strength
						qg = 2981,	-- Chief Hawkwind
						qi = 4783,	-- Totem of Hawkwind
						coord = { 44.2, 76.1, MULGORE },
						races = HORDE_ONLY,
					}),
					q(3093, {	-- Rune-Inscribed Note
						sourceQuest = 747,	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						qi = 9552,	-- Rune-Inscribed Note
						coords = {
							{ 44.9, 77.1, MULGORE },
						},
						races = { TAUREN },
						classes = { SHAMAN },
					}),
					q(3091, {	-- Simple Note
						sourceQuest = 747,	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						qi = 9547,	-- Simple Note
						coords = {
							{ 44.9, 77.1, MULGORE },
						},
						races = { TAUREN },
						classes = { WARRIOR },
					}),
					q(780, {	-- The Battleboars
						sourceQuest = 750,	-- The Hunt Continues
						qg = 2980,	-- Grull Hawkwind
						coord = { 44.9, 77.1, MULGORE },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/8 Battleboar Snout
								provider = { "i", 4848 },	-- Battleboar Snout
								crs = {
									2966,	-- Battleboar
									2954,	-- Bristleback Battleboar
								},
							}),
							objective(2, {	-- 0/8 Battleboar Flank
								provider = { "i", 4849 },	-- Battleboar Flank
								crs = {
									2966,	-- Battleboar
									2954,	-- Bristleback Battleboar
								},
							}),
							i(6059),	-- Nomadic Vest
						},
					}),
					q(747, {	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						coord = { 44.9, 77.1, MULGORE },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/7 Plainstrider Meat
								provider = { "i", 4739 },	-- Plainstrider Meat
								cr = 2955,	-- Plainstrider
							}),
							objective(2, {	-- 0/7 Plainstrider Feather
								provider = { "i", 4740 },	-- Plainstrider Feather
								cr = 2955,	-- Plainstrider
							}),
							i(4954),	-- Nomadic Belt
							i(4910),	-- Painted Chain Gloves
						},
					}),
					q(750, {	-- The Hunt Continues
						sourceQuest = 747,	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						coord = { 44.9, 77.1, MULGORE },
						races = HORDE_ONLY,
						groups = {
							objective(1, {	-- 0/10 Mountain Cougar Pelt
								provider = { "i", 4742 },	-- Mountain Cougar Pelt
								cr = 2961,	-- Mountain Cougar
							}),
							i(4908),	-- Nomadic Bracers
							i(4913),	-- Painted Chain Belt
						},
					}),
					q(3094, {	-- Verdant Note
						sourceQuest = 747,	-- The Hunt Begins
						qg = 2980,	-- Grull Hawkwind
						qi = 9581,	-- Verdant Note
						coords = {
							{ 44.9, 77.1, MULGORE },
						},
						races = { TAUREN },
						classes = { DRUID },
					}),
				}),
				n(TREASURES, {
					applyclassicphase(SOD_PHASE_ONE, o(403102, {	-- Bristleback Loot Cache
						coord = { 61.6, 76.0, MULGORE },
						groups = {
							i(208414, {	-- Lunar Idol
								classes = { DRUID },
							}),
							i(204806, {	-- Rune of Victory Rush
								classes = { WARRIOR },
							}),
						},
					})),
				}),
				n(ZONE_DROPS, {
					i(1388, {	-- Crooked Staff
						cr = 2953,	-- Bristleback Shaman
					}),
					i(1384, {	-- Dull Blade
						crs = {
							2952,	-- Bristleback Quilboar
						},
					}),
					applyclassicphase(SOD_PHASE_ONE, i(206381, {	-- Dyadic Icon
						coord = { 63.8, 81.0, MULGORE },
						classes = { SHAMAN },
						cr = 2953,	-- Bristleback Shaman
					})),
					i(4951, {	-- Squealer's Belt
						cr = 3229,	-- "Squealer" Thornmantle
					}),
				}),
			},
		}),
		n(ACHIEVEMENTS, {
			ach(736),	-- Explore Mulgore
		}),
		explorationHeader({
			exploration(404),	-- Bael'dun Digsite
			exploration(222),	-- Bloodhoof Village
			exploration(221),	-- Camp Narache
			exploration(818),	-- Palemane Rock
			exploration(224),	-- Ravaged Caravan
			exploration(220),	-- Red Cloud Mesa
			exploration(225),	-- Red Rocks
			exploration(820),	-- The Golden Plains
			visit_exploration(821,{coord={61.9,64.1,MULGORE}}),	-- The Rolling Plains
			exploration(360),	-- The Venture Co. Mine
			exploration(1638),	-- Thunder Bluff
			exploration(397),	-- Thunderhorn Water Well
			exploration(398),	-- Wildmane Water Well
			exploration(819),	-- Windfury Ridge
			exploration(396),	-- Winterhoof Water Well
		}),
		n(QUESTS, {
			q(833, {	-- A Sacred Burial
				qg = 3233,	-- Lorekeeper Raintotem
				coords = {
					{ 59.8, 25.6, MULGORE },
				},
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/8 Bristleback Interloper slain
						provider = { "n", 3232 },	-- Bristleback Interloper
					}),
				},
			}),
			q(1656, {	-- A Task Unfinished
				qg = 6775,	-- Antur Fallow
				qi = 7626,	-- Bundle of Furs
				coord = { 38.6, 81.6, MULGORE },
				races = HORDE_ONLY,
			}),
			q(743, {	-- Dangers of the Windfury
				qg = 2985,	-- Ruul Eagletalon
				coords = {
					{ 47.4, 62.0, MULGORE },
				},
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/8 Windfury Talon
						provider = { "i", 4751 },	-- Windfury Talon
						crs = {
							2962,	-- Windfury Harpy
							2963,	-- Windfury Wind Witch
						},
					}),
				},
			}),
			q(746, {	-- Dwarven Digging
				qg = 2993,	-- Baine Bloodhoof
				coord = { 47.5, 60.2, MULGORE },
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					objective(1, {	-- 0/5 Broken Tools
						providers = {
							{ "i", 4703 },	-- Broken Tools
							{ "o", 1685 },	-- Forge
						},
						cost = { { "i", 4702, 5 } },	-- Prospector's Pick
						coord = { 34.0, 46.0, MULGORE },
						crs = {
							2990,	-- Bael'dun Appraiser
							2989,	-- Bael'dun Digger
						},
					}),
					i(4969),	-- Fortified Bindings
					i(4970),	-- Rough-hewn Kodo Leggings
				},
			}),
			q(5655, {	-- Hex of Weakness [Mulgore]
				altQuests = {
					5652,	-- Hex of Weakness [Orgrimmar]
					5654,	-- Hex of Weakness [Durotar]
					5656,	-- Hex of Weakness [Thunder Bluff]
					5657,	-- Hex of Weakness [Undercity]
				},
				qg = 11407,	-- Var'jun
				coord = { 47.0, 58.8, MULGORE },
				classes = { PRIEST },
				races = { TROLL },
				lvl = 10,
				groups = {
					{
						recipeID = 9035,	-- Hex of Weakness (Rank 1)
						rank = 1,
					},
				},
			}),
			q(775, {	-- Journey into Thunder Bluff
				sourceQuest = 773,	-- Rite of Wisdom
				qg = 2994,	-- Ancestral Spirit
				coord = { 61.4, 21.0, MULGORE },
				maps = { THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 3,
			}),
			q(766, {	-- Mazzranache
				qg = 3055,	-- Maur Raincaller
				coord = { 47.0, 57.0, MULGORE },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Prairie Wolf Heart
						provider = { "i", 4804 },	-- Prairie Wolf Heart
						crs = {
							2959,	-- Prairie Stalker
							2958,	-- Prairie Wolf
							2960,	-- Prairie Wolf Alpha
						},
					}),
					objective(2, {	-- 0/1 Flatland Cougar Femur
						provider = { "i", 4805 },	-- Flatland Cougar Femur
						cr = 3035,	-- Flatland Cougar
					}),
					objective(3, {	-- 0/1 Plainstrider Scale
						provider = { "i", 4806 },	-- Plainstrider Scale
						crs = {
							2956,	-- Adult Plainstrider
							2957,	-- Elder Plainstrider
							3068,	-- Mazzranache
						},
					}),
					objective(4, {	-- 0/1 Swoop Gizzard
						provider = { "i", 4807 },	-- Swoop Gizzard
						crs = {
							2970,	-- Swoop
							2971,	-- Taloned Swoop
							2969,	-- Wiry Swoop
						},
					}),
					i(4972),	-- Cliff Runner Boots
					i(4973),	-- Plains Hunter Wristguards
				},
			}),
			q(7663, {	-- New Kodo - Green
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 3685,	-- Harb Clawhoof
				coords = {
					{ 47.6, 58.4, MULGORE },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 15292, 1 } },	-- Green Kodo (MOUNT!)
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18794, 18795, 18793 } },
			}),
			q(7662, {	-- New Kodo - Teal
				description = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
				qg = 3685,	-- Harb Clawhoof
				coords = {
					{ 47.6, 58.4, MULGORE },
				},
				timeline = { REMOVED_1_4_0 },
				cost = { { "i", 15293, 1 } },	-- Teal Kodo (MOUNT!)
				races = HORDE_ONLY,
				repeatable = true,
				_drop = { "g" },
				sym = { { "select", "itemID", 18794, 18795, 18793 } },
			}),
			q(748, {	-- Poison Water
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Prairie Wolf Paw
						provider = { "i", 4758 },	-- Prairie Wolf Paw
						crs = {
							2959,	-- Prairie Stalker
							2958,	-- Prairie Wolf
							2960,	-- Prairie Wolf Alpha
						},
					}),
					objective(2, {	-- 0/4 Plainstrider Talon
						provider = { "i", 4759 },	-- Plainstrider Talon
						crs = {
							2956,	-- Adult Plainstrider
							2957,	-- Elder Plainstrider
							3068,	-- Mazzranache
						},
					}),
				},
			}),
			q(744, {	-- Preparation for Ceremony
				qg = 2987,	-- Eyahn Eagletalon
				coords = {
					{ 37.6, 59.8, THUNDER_BLUFF },
				},
				races = HORDE_ONLY,
				lvl = 7,
				groups = {
					objective(1, {	-- 0/6 Azure Feather
						provider = { "i", 4752 },	-- Azure Feather
						cr = 2964,	-- Windfury Sorceress
					}),
					objective(2, {	-- 0/6 Bronze Feather
						provider = { "i", 4753 },	-- Bronze Feather
						cr = 2965,	-- Windfury Matriarch
					}),
					i(4968),	-- Bound Harness
					i(4967),	-- Tribal Warrior's Shield
				},
			}),
			q(767, {	-- Rite of Vision (1/3)
				sourceQuest = 763,	-- Rites of the Earthmother (2/3)
				qg = 2993,	-- Baine Bloodhoof
				coord = { 47.5, 60.2, MULGORE },
				races = HORDE_ONLY,
				lvl = 3,
			}),
			q(771, {	-- Rite of Vision (2/3)
				sourceQuest = 767,	-- Rite of Vision (1/3)
				qg = 3054,	-- Zarlman Two-Moons
				coord = { 47.8, 57.5, MULGORE },
				races = HORDE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- 0/2 Well Stone
						providers = {
							{ "i", 4808 },	-- Well Stone
							{ "o", 2910 },	-- Well Stone
						},
					}),
					objective(2, {	-- 0/2 Ambercorn
						providers = {
							{ "i", 4809 },	-- Ambercorn
							{ "o", 2912 },	-- Ambercorn
						},
					}),
				},
			}),
			q(772, {	-- Rite of Vision (3/3)
				sourceQuest = 771,	-- Rite of Vision (2/3)
				qg = 3054,	-- Zarlman Two-Moons
				qi = 4823,	-- Water of the Seers
				coord = { 47.8, 57.5, MULGORE },
				races = HORDE_ONLY,
				lvl = 3,
				groups = {
					i(4906),	-- Rainwalker Boots
					i(4958),	-- Sun-beaten Cloak
				},
			}),
			q(773, {	-- Rite of Wisdom
				sourceQuests = {
					772,	-- Rite of Vision (3/3)
				},
				qgs = {
					2984,	-- Seer Wiserunner
				},
				coords = {
					{ 32.8, 36.0, MULGORE },
				},
				races =
					HORDE_ONLY,
				lvl = 3,
			}),
			q(776, {	-- Rites of the Earthmother (3/3)
				sourceQuest = 775,	-- Journey into Thunder Bluff
				qg = 3057,	-- Cairne Bloodhoof <High Chieftain>
				coord = { 59.8, 51.6, THUNDER_BLUFF },
				races = HORDE_ONLY,
				lvl = 3,
				groups = {
					objective(1, {	-- 0/1 Horn of Arra'chea
						provider = { "i", 4841 },	-- Horn of Arra'chea
						coords = {
							{ 48.4, 15.6, MULGORE },
							{ 53.0, 13.2, MULGORE },
							{ 55.0, 22.0, MULGORE },
							{ 56.4, 29.0, MULGORE },
							{ 52.2, 31.2, MULGORE },
							{ 51.0, 25.8, MULGORE },
							{ 49.6, 20.8, MULGORE },
						},
						cr = 3058,	-- Arra'chea
					}),
					i(4909),	-- Kodo Hunter's Leggings
				},
			}),
			q(745, {	-- Sharing the Land
				qg = 2993,	-- Baine Bloodhoof
				coord = { 47.5, 60.2, MULGORE },
				races = HORDE_ONLY,
				groups = {
					objective(1, {	-- 0/10 Palemane Tanner slain
						provider = { "n", 2949 },	-- Palemane Tanner
					}),
					objective(2, {	-- 0/8 Palemane Skinner slain
						provider = { "n", 2950 },	-- Palemane Skinner
					}),
					objective(3, {	-- 0/5 Palemane Poacher slain
						provider = { "n", 2951 },	-- Palemane Poacher
					}),
					i(4960),	-- Flash Pellet
				},
			}),
			q(765, {	-- Supervisor Fizsprocket
				sourceQuest = 751,	-- The Ravaged Caravan (2/2)
				qg = 2988,	-- Morin Cloudstalker
				coord = { 54.4, 60.4, MULGORE },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/1 Fizsprocket's Clipboard
						provider = { "i", 4819 },	-- Fizsprocket's Clipboard
						coord = { 64.8, 43.4, MULGORE },
						cr = 3051,	-- Supervisor Fizsprocket
					}),
					i(4974),	-- Compact Fighting Knife
					i(4964),	-- Goblin Smasher
				},
			}),
			q(761, {	-- Swoop Hunting
				qg = 2947,	-- Harken Windtotem
				coords = {
					{ 48.7, 59.3, MULGORE },
				},
				races = HORDE_ONLY,
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Trophy Swoop Quill
						provider = { "i", 4769 },	-- Swoop Hunting
						crs = {
							2970,	-- Swoop
							2969,	-- Wiry Swoop
						},
					}),
				},
			}),
			q(6061, {	-- Taming the Beast (1/3)
				sourceQuests = {
					6065,	-- The Hunter's Path [Thunder Bluff]
					6066,	-- The Hunter's Path [Mulgore]
					6067,	-- The Hunter's Path [Durotar]
				},
				qg = 3065,	-- Yaw Sharpmane <Hunter Trainer>
				coord = { 47.8, 55.6, MULGORE },
				races = { TAUREN },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame an Adult Plainstrider
						providers = {
							{ "n", 2956 },	-- Adult Plainstrider
							{ "i", 15914 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6087, {	-- Taming the Beast (2/3)
				sourceQuest = 6061,	-- Taming the Beast (1/3)
				qg = 3065,	-- Yaw Sharpmane <Hunter Trainer>
				coord = { 47.8, 55.6, MULGORE },
				races = { TAUREN },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Prairie Stalker
						providers = {
							{ "n", 2959 },	-- Prairie Stalker
							{ "i", 15915 },	-- Taming Rod
						},
					}),
				},
			}),
			q(6088, {	-- Taming the Beast (3/3)
				sourceQuest = 6087,	-- Taming the Beast (2/3)
				qg = 3065,	-- Yaw Sharpmane <Hunter Trainer>
				coord = { 47.8, 55.6, MULGORE },
				races = { TAUREN },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					objective(1, {	-- Tame a Swoop
						providers = {
							{ "n", 2970 },	-- Swoop
							{ "i", 15916 },	-- Taming Rod
						},
					}),
					recipe(883),	-- Call Pet
					recipe(2641),	-- Dismiss Pet
					recipe(1515),	-- Tame Beast
				},
			}),
			q(770, {	-- The Demon Scarred Cloak
				provider = { "i", 4854 },	-- Demon Scarred Cloak
				races = HORDE_ONLY,
				lvl = 6,
				groups = {
					i(4971),	-- Skorn's Hammer
					i(3079),	-- Skorn's Rifle
				},
			}),
			q(6065, {	-- The Hunter's Path [Thunder Bluff]
				qg = 3038,	-- Kary Thunderhorn <Hunter Trainer>
				coord = { 58.4, 88.0, THUNDER_BLUFF },
				races = { TAUREN },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6066, {	-- The Hunter's Path [Mulgore]
				qg = 3061,	-- Lanka Farshot <Hunter Trainer>
				coord = { 44.3, 75.7, MULGORE },
				races = { TAUREN },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(6067, {	-- The Hunter's Path [Durotar]
				qg = 3171,	-- Thotar <Hunter Trainer>
				coord = { 51.9, 43.5, DUROTAR },
				races = { TAUREN },
				classes = { HUNTER },
				isBreadcrumb = true,
				lvl = 10,
			}),
			q(861, {	-- The Hunter's Way
				altQuests = {
					860,	-- Sergra Darkthorn
					844,	-- Plainstrider Menace
				},
				qg = 3052,	-- Skorn Whitecloud
				coord = { 46.76, 60.22, MULGORE },
				races = HORDE_ONLY,
				lvl = 10,
				groups = {
					objective(1, {	-- 0/4 Flatland Prowler Claw
						provider = { "i", 5203 },	-- Flatland Prowler Claw
						cr = 3566,	-- Flatland Prowler
					}),
				},
			}),
			q(749, {	-- The Ravaged Caravan (1/2)
				qg = 2988,	-- Morin Cloudstalker
				coords = {
					{ 54.4, 60.4, MULGORE },
				},
				races = HORDE_ONLY,
				lvl = 5,
			}),
			q(751, {	-- The Ravaged Caravan (2/2)
				sourceQuest = 749,	-- The Ravaged Caravan (1/2)
				provider = { "o", 2908 },	-- Sealed Supply Crate
				coords = {
					{ 53.8, 48.3, MULGORE },
				},
				races = HORDE_ONLY,
				lvl = 5,
				groups = { i(4834) },	-- Venture Co. Documents (QI!)
			}),
			q(764, {	-- The Venture Co.
				sourceQuest = 751,	-- The Ravaged Caravan (2/2)
				qg = 2988,	-- Morin Cloudstalker
				coord = { 54.4, 60.4, MULGORE },
				races = HORDE_ONLY,
				lvl = 5,
				groups = {
					objective(1, {	-- 0/14 Venture Co. Worker slain
						provider = { "n", 2978 },	-- Venture Co. Worker
					}),
					objective(2, {	-- 0/6 Venture Co. Supervisor slain
						provider = { "n", 2979 },	-- Venture Co. Supervisor
					}),
				},
			}),
			q(758, {	-- Thunderhorn Cleansing
				sourceQuest = 756,	-- Thunderhorn Totem
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- Cleanse the Thunderhorn Water Well
						provider = { "i", 5415 },	-- Thunderhorn Cleansing Totem
						coord = { 44.0, 45.0, MULGORE },
					}),
					i(4963),	-- Thunderhorn Cloak
				},
			}),
			q(756, {	-- Thunderhorn Totem
				sourceQuest = 754,	-- Winterhoof Cleansing
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- 0/6 Stalker Claws
						provider = { "i", 4801 },	-- Stalker Claws
						cr = 2959,	-- Prairie Stalker
					}),
					objective(2, {	-- 0/6 Cougar Claws
						provider = { "i", 4802 },	-- Cougar Claws
						cr = 3035,	-- Flatland Cougar
					}),
				},
			}),
			q(6089, {	-- Training the Beast
				sourceQuest = 6088,	-- Taming the Beast (3/3)
				qg = 3065,	-- Yaw Sharpmane <Hunter Trainer>
				coord = { 47.8, 55.6, MULGORE },
				races = { TAUREN },
				classes = { HUNTER },
				lvl = 10,
				groups = {
					recipe(6991),	-- Feed Pet
					recipe(982),	-- Revive Pet
				},
			}),
			q(760, {	-- Wildmane Cleansing
				sourceQuest = 759,	-- Wildmane Totem
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- Cleanse the Wildmane Well
						provider = { "i", 5416 },	-- Wildmane Cleansing Totem
						coord = { 43.0, 14.0, MULGORE },
					}),
					i(3443),	-- Ceremonial Tomahawk
					i(4961),	-- Dreamwatcher Staff
				},
			}),
			q(759, {	-- Wildmane Totem
				sourceQuest = 758,	-- Thunderhorn Cleansing
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- 0/8 Prairie Alpha Tooth
						provider = { "i", 4803 },	-- Prairie Alpha Tooth
						cr = 2960,	-- Prairie Wolf Alpha
					}),
				},
			}),
			q(754, {	-- Winterhoof Cleansing
				sourceQuest = 748,	-- Poison Water
				qg = 2948,	-- Mull Thunderhorn
				coord = { 48.5, 60.4, MULGORE },
				races = { TAUREN },
				lvl = 4,
				groups = {
					objective(1, {	-- Cleanse the Winterhoof Water Well
						provider = { "i", 5411 },	-- Winterhoof Cleansing Totem
						coord = { 53.0, 66.0, MULGORE },
					}),
				},
			}),
		}),
		n(RARES, {
			n(5787, {	-- Enforcer Emilgund
				coords = {
					{ 40.6, 15.8, MULGORE },
				},
			}),
			n(3056, {	-- Ghost Howl
				coords = {
					{ 50.6, 15.0, MULGORE },
					{ 39.6, 13.8, MULGORE },
					{ 37.4, 17.8, MULGORE },
					{ 32.8, 19.2, MULGORE },
					{ 32.0, 26.0, MULGORE },
					{ 34.0, 29.2, MULGORE },
					{ 37.0, 42.6, MULGORE },
					{ 44.2, 41.2, MULGORE },
				},
				groups = {
					i(4854, {	-- Demon Scarred Cloak
						races = HORDE_ONLY,
					}),
				},
			}),
			n(3068, {	-- Mazzranache
				coords = {
					{ 34.8, 42.2, MULGORE },
					{ 39.4, 44.2, MULGORE },
					{ 44.4, 42.9, MULGORE },
					{ 51.2, 43.6, MULGORE },
					{ 56.6, 44.0, MULGORE },
				},
				groups = {
					i(4861),	-- Sleek Feathered Tunic
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(205382, {	-- Mokwa
				description = "You can tame him and you still get the rune!",
				coord = { 36.0, 57.0, MULGORE },
				cost = { { "i", 205961, 1 } },	-- Mulgore Bird Meat
				groups = {
					i(205979, {	-- Rune of Flanking
						classes = { HUNTER },
						groups = {
							recipe(425762),	-- Engrave Pants - Flanking Strike
						},
					}),
				},
			})),
			n(5785, {	-- Sister Hatelash
				coords = {
					{ 30.6, 21.6, MULGORE },
					{ 36.6, 11.6, MULGORE },
					{ 55.6, 12.0, MULGORE },
				},
				groups = {
					i(4772),	-- Warm Cloak
				},
			}),
			n(5786, {	-- Snagglespear
				coords = {
					{ 48.2, 68.0, MULGORE },
					{ 50.6, 71.4, MULGORE },
					{ 55.2, 72.2, MULGORE },
				},
			}),
			n(5807, {	-- The Rake
				coords = {
					{ 50.6, 26.6, MULGORE },
					{ 55.6, 24.4, MULGORE },
					{ 54.4, 20.2, MULGORE },
					{ 49.6, 22.8, MULGORE },
				},
				groups = {
					i(17922),	-- Lionfur Armor
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(205700, {	-- Venture Co. Poacher
				provider = { "n", 205692 },	-- Rustling Bush
				description = "Cast Hunter's Mark on the bush to spawn the rare.",
				coord = { 59.0, 54.6, MULGORE },
				classes = { HUNTER },
				groups = {
					i(206155, {	-- Rune of Marksmanship
						classes = { HUNTER },
						groups = {
							recipe(410113),	-- Engrave Chest - Master Marksman
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(206245, {	-- Unleashed Nature Spirit
				qg = 206248,	-- Wooden Effigy
				qi = 206466,	-- Prairie Crown
				coord = { 37.8, 49.6, MULGORE },
				cost = { { "i", 206469, 3 } },	-- Prairie Flower
				groups = {
					i(206963, {	-- Rune of Natural Potential
						classes = { DRUID },
						groups = {
							recipe(416050),	-- Engrave Chest - Living Seed
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, n(203079, {	-- Wandering Swordsman
				provider = { "o", 392029 },	-- Swordsman's Reward
				coords = {
					{ 45.6, 36.4, MULGORE },
					{ 51.8, 39.2, MULGORE },
					{ 37.8, 55.0, MULGORE },
					{ 40.6, 53.8, MULGORE },
					{ 60.2, 67.6, MULGORE },
				},
				groups = {
					i(204441, {	-- Rune of Blood Frenzy
						classes = { WARRIOR },
						groups = {
							recipe(403474),	-- Engrave Chest - Blood Frenzy
						},
					}),
				},
			})),
		}),
		n(RIDING_TRAINER, {
			n(3690, {	-- Kar Stormsinger <Kodo Riding Instructor>
				coord = { 47.6, 58.4, MULGORE },
				races = HORDE_ONLY,
				-- Available to Tauren without faction requirements.
				minReputation = { FACTION_THUNDER_BLUFF, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. TAUREN .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				groups = {
					recipe(18995, {	-- Kodo Riding
						cost = 200000,
						lvl = 40,
					}),
				},
			}),
		}),
		n(TREASURES, {
			applyclassicphase(SOD_PHASE_ONE, n(204937, {	-- Adventurer's Spirit
				provider = { "n", 204827 },	-- Adventurer's Remains
				coord = { 60.4, 33.6, MULGORE },
				groups = {
					i(210589, {	-- Echo of the Ancestors
						classes = { SHAMAN },
						groups = {
							recipe(410099),	-- Engrave Pants - Ancestral Guidance
						},
					}),
					i(205944, {	-- Reciprocal Epiphany
						classes = { PRIEST },
						groups = {
							recipe(402848),	-- Engrave Pants - Prayer of Mending
						},
					}),
					i(206264, {	-- Rune of Inspiration
						classes = { PALADIN },
						groups = {
							recipe(410011),	-- Engrave Pants - Inspiration Exemplar
						},
					}),
					i(206970, {	-- Rune of Life
						classes = { DRUID },
						groups = {
							recipe(410033),	-- Engrave Pants - Lifebloom
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, o(404352, {	-- Artifact Storage
				provider = { "i", 206975 },	-- Artifact Storage Key
				coord = { 31.6, 49.5, MULGORE },
				groups = {
					i(206388, {	-- Sulfurous Icon
						classes = { SHAMAN },
						groups = {
							recipe(425344),	-- Engrave Gloves - Molten Blast
						},
					}),
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206386, {	-- Galvanic Icon
				description = "These are random spawn totems on the ground; listen for the lightning cast sound to help you pinpoint the location.",
				-- provider = { "o",  },	-- TODO: I don't have the objectID for this. It's called "Galvanic Icon" just like the item.
				coords = {
					{ 54.07, 55.82, MULGORE },
					{ 36.3, 9.8, MULGORE },
					{ 37.5, 52.5, MULGORE },
					{ 41.65, 55.98, MULGORE },
					{ 38.0, 60.0, MULGORE },
				},
				classes = { SHAMAN },
				groups = {
					recipe(410098),	-- Engrave Chest - Shield Mastery
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206989, {	-- Rune of the Sun
				description = "Cast Moonfire on each of the Lunar Stones to spawn the Lunar Chest nearby.",
				providers = {
					{ "n", 207577 },	-- Lunar Stone
					{ "o", 404433 },	-- Lunar Chest
				},
				coord = { 35.7, 69.6, MULGORE },
				classes = { DRUID },
				groups = {
					recipe(416044),	-- Engrave Gloves - Sunfire
				},
			})),
		}),
		n(VENDORS, {
			n(3685, {	-- Harb Clawhoof <Kodo Mounts>
				coords = {
					{ 47.6, 58.4, MULGORE },
				},
				-- Available to Tauren without faction requirements.
				minReputation = { FACTION_THUNDER_BLUFF, EXALTED },
				OnInit = [[function(t)
					if _.RaceIndex == ]] .. TAUREN .. [[ then
						t.minReputation = nil;
					end
					return t;
				end]],
				races = HORDE_ONLY,
				groups = {
					i(15277),	-- Gray Kodo (MOUNT!)
					i(15290),	-- Brown Kodo (MOUNT!)
					i(18793),	-- Great White Kodo (MOUNT!)
					i(18794),	-- Great Brown Kodo (MOUNT!)
					i(18795),	-- Great Gray Kodo (MOUNT!)
					i(15292, {	-- Green Kodo (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
					i(15293, {	-- Teal Kodo (MOUNT!)
						timeline = { REMOVED_1_4_0 },
					}),
				},
			}),
			n(5940, {	-- Harn Longcast <Fishing Supplies>
				coords = {
					{ 47.6, 55.0, MULGORE },
				},
				races = HORDE_ONLY,
				groups = {
					i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
					i(6328),	-- Recipe: Longjaw Mud Snapper (RECIPE!)
				},
			}),
			applyclassicphase(SOD_PHASE_ONE, n(205635, {	-- Takoda Sunmane <Naturalist>
				description = "Use the musk and tame a prairie dog and then bring it to Takoda.",
				coord = { 46.2, 60.6, MULGORE },
				cost = { { "i", 205995, 1 } },	-- Prairie Dog Musk
				crs = { 2620 },	-- Prairie Dog
				races = HORDE_ONLY,
				groups = {
					i(206032, {	-- Rune of Carve
						classes = { HUNTER },
						groups = {
							recipe(425758),	-- Engrave Gloves - Carve
						},
					}),
				},
			})),
			n(3081, {	-- Wunna Darkmane <Trade Goods>
				coords = {
					{ 46.2, 58.2, MULGORE },
				},
				races = HORDE_ONLY,
				groups = {
					i(5484),	-- Recipe: Roasted Kodo Meat (RECIPE!)
				},
			}),
		}),
		n(ZONE_DROPS, {
			applyclassicphase(SOD_PHASE_ONE, i(206975, {	-- Artifact Storage Key
				coord = { 33.8, 49.8, MULGORE },
				crs = {
					2990,	-- Bael'dun Appraiser
					2989,	-- Bael'dun Digger
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206954, {	-- Idol of Ursine Rage
				coord = { 53.2, 29.6, MULGORE },
				classes = { DRUID },
				crs = {
					2979,	-- Venture Co. Supervisor
					3232,	-- Bristleback Interloper
					2964,	-- Windfury Sorceress
					2971,	-- Taloned Swoop
					2960,	-- Prairie Wolf Alpha
					3566,	-- Flatland Prowler
					2965,	-- Windfury Matriarch
				},
				groups = {
					recipe(410025),	-- Engrave Gloves - Mangle
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205961, {	-- Mulgore Bird Meat
				classes = { HUNTER },
				crs = {
					2956,	-- Adult Plainstrider
					2969,	-- Wiry Swoop
					2970,	-- Swoop
					2957,	-- Elder Plainstrider
					2971,	-- Taloned Swoop
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(205995, {	-- Prairie Dog Musk
				coords = {
					{ 53.6, 72.6, MULGORE },
					{ 31.2, 62.2, MULGORE },
					{ 48.2, 74.0, MULGORE },
					{ 30.8, 61.6, MULGORE },
				},
				classes = { HUNTER },
				crs = {
					2951,	-- Palemane Poacher
					2950,	-- Palemane Skinner
					2949,	-- Palemane Tanner
					207515,	-- Lurkmane
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206469, {	-- Prairie Flower
				description = "These are scattered throughout the zone.",
				provider = { "o", 403718 },	-- Prairie Flower
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206169, {	-- Rune of Explosive Shot
				description = "This can drop from any of the Rare Creatures in the zone.",
				coord = { 51.8, 20.0, MULGORE },
				classes = { HUNTER },
				cr = 3058,	-- Arra'chea
				groups = {
					recipe(410123),	-- Engrave Gloves - Explosive Shot
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204809, {	-- Rune of Furious Thunder
				description = "This can drop from any of the Rare Creatures in the zone.",
				coord = { 30.8, 61.6, MULGORE },
				classes = { WARRIOR },
				cr = 207515,	-- Lurkmane
				groups = {
					recipe(403476),	-- Engrave Pants - Furious Thunder
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(204478, {	-- Severed Gnoll Head
				coord = { 53.6, 73.6, MULGORE },
				classes = { WARRIOR },
				crs = {
					2949,	-- Palemane Tanner
					2950,	-- Palemane Skinner
					2951,	-- Palemane Poacher
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206995, {	-- Severed Harpy Head
				coord = { 33.6, 42.0, MULGORE },
				classes = { WARRIOR },
				crs = {
					2962,	-- Windfury Harpy
					2963,	-- Windfury Wind Witch
					2965,	-- Windfury Matriarch
				},
			})),
			applyclassicphase(SOD_PHASE_ONE, i(206994, {	-- Severed Quilboar Head
				coord = { 61.6, 22.4, MULGORE },
				classes = { WARRIOR },
				cr = 3232,	-- Bristleback Interloper
			})),
		}),
	},
});
