---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.BURNING_STEPPES, {
		["lore"] = "The Burning Steppes hold the only accessible land passage from the Kingdom of Stormwind to Khaz Modan and Lordaeron. The highway is thus well traveled, but still very dangerous. Now virtually abandoned by the Kingdom of Stormwind, the Burning Steppes is controlled by minions of the black dragonflight and agents of the firelord Ragnaros.\n\nThis rugged region is full of craggy foothills, scattered boulders and warring factions. Rivers of lava dot the landscape, as well as charred earth and burning ruins. The sky is a red hue here, due to sporadic eruptions from Blackrock Mountain. Blackrock Spire, an orc stronghold in the Second War, stands proud and defiant among the mountains. Dark Iron dwarves control the fortress's deeps, though rumor has it that Ragnaros the Fire Lord still broods in the shadows. Black dragons under Nefarion hold the spire's upper levels, and the two groups battle constantly for supremacy. The surrounding countryside is home to Blackrock orcs and Fire-Gut ogres, all brutal castoffs from the Second War. The Molten Span, a massive stone edifice in the north, bridges a river of fire and leads to Khaz Modan.",
		["icon"] = 236734,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(775),	-- Explore Burning Steppes
			}),
			explorationHeader({
				exploration(255),	-- Altar of Storms
				exploration(254),	-- Blackrock Mountain
				exploration(2417),	-- Blackrock Pass
				exploration(252),	-- Blackrock Stronghold
				exploration(2421),	-- Draco'dar
				exploration(249),	-- Dreadmaul Rock
				exploration(2418),	-- Morgan's Vigil
				exploration(250),	-- Ruins of Thaurissan
				exploration(2420),	-- Terror Wing Path
				exploration(253),	-- The Pillar of Ash
			}),
			n(FLIGHT_PATHS, {
				fp(70, {	-- Flame Crest, Burning Steppes
					["cr"] = 13177,	-- Vahgruk <Wind Rider Master>
					["coord"] = { 65.6, 24.2, MAP.BURNING_STEPPES },
					["races"] = HORDE_ONLY,
				}),
				fp(71, {	-- Morgan's Vigil, Burning Steppes
					["cr"] = 2299,	-- Borgus Stoutarm <Gryphon Master>
					["coord"] = { 84.4, 68.2, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(7630, {	-- Arcanite
					["sourceQuests"] = {
						7626,	-- Bell of Dethmoora
						7627,	-- Wheel of the Black March
						7628,	-- Doomsday Candle
					},
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 12.4, 31.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 12360, 3 },	-- Arcanite Bar
					},
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(7626, {	-- Bell of Dethmoora
					["sourceQuest"] = 7564,	-- Wildeyes
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 9264, 10 },	-- Elixir of Shadow Power
					},
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(4726, {	-- Broodling Essence
					["qg"] = 10267,	-- Tinkee Steamboil
					["coord"] = { 65.2, 23.8, MAP.BURNING_STEPPES },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/8 Broodling Essence
							["providers"] = {
								{ "i",  12283 },	-- Broodling Essence
								{ "i",  12284 },	-- Draco-Incarcinatrix 900
								{ "o", 175264 },	-- Broodling Essence
							},
							["crs"] = {
								7047,	-- Black Broodling
								7049,	-- Flamescale Broodling
								7048,	-- Scalding Broodling
							},
						}),
					},
				}),
				q(7628, {	-- Doomsday Candle
					["sourceQuest"] = 7564,	-- Wildeyes
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 15416, 35},	-- 35x Black Dragonscale
					},
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(3823, {	-- Extinguish the Firegut
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/15 Firegut Ogre Mage slain
							["provider"] = { "n", 7034 },	-- Firegut Ogre Mage
						}),
						objective(2, {	-- 0/7 Firegut Ogre slain
							["provider"] = { "n", 7033 },	-- Firegut Ogre
						}),
						objective(3, {	-- 0/7 Firegut Brute slain
							["provider"] = { "n", 7035 },	-- Firegut Brute
						}),
					},
				}),
				q(4808, {	-- Felnok Steelspring
					["sourceQuest"] = 4726,	-- Broodling Essence
					["providers"] = {
						{ "n", 10267 },	-- Tinkee Steamboil
						{ "i", 12438 },	-- Tinkee's Letter
					},
					["coord"] = { 65.2, 23.8, MAP.BURNING_STEPPES },
					["lvl"] = 50,
				}),
				q(4283, {	-- FIFTY! YEP!
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/50 Blackrock Medallion
							["provider"] = { "i", 11467 },	-- Blackrock Medallion
							["crs"] = {
								7029,	-- Blackrock Battlemaster
								7027,	-- Blackrock Slayer
								7025,	-- Blackrock Soldier
								7026,	-- Blackrock Sorcerer
								7028,	-- Blackrock Warlock
								7055,	-- Blackrock Worg
								10077,	-- Deathmaw
								9690,	-- Ember Worg
								9697,	-- Giant Ember Worg
								9694,	-- Slavering Ember Worg
							},
						}),
					},
				}),
				q(3824, {	-- Gor'tesh the Brute Lord
					["sourceQuest"] = 3823,	-- Extinguish the Firegut
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.6, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Gor'tesh's Lopped Off Head
							["provider"] = { "i", 11080 },	-- Gor'tesh's Lopped Off Head
							["coord"] = { 39.6, 55.6, MAP.BURNING_STEPPES },
							["cr"] = 9176,	-- Gor'tesh
						}),
					},
				}),
				q(7629, {	-- Imp Delivery
					["sourceQuests"] = {
						7625,	-- Xorothian Stardust
						7630,	-- Arcanite
					},
					["providers"] = {
						{ "n", 14437 },	-- Gorzeeki Wildeyes
						{ "i", 18688 },	-- Imp in a Jar
					},
					["coord"] = { 12.4, 31.6, MAP.BURNING_STEPPES },
					["maps"] = { MAP.SCHOLOMANCE },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(3822, {	-- Krom'Grul
					["sourceQuest"] = 3821,	-- Dreadmaul Rock
					["qg"] = 9136,	-- Sha'ni Proudtusk
					["coord"] = { 79.8, 45.4, MAP.BURNING_STEPPES },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Sha'ni's Nose-Ring
							["provider"] = { "i", 11058 },	-- Sha'ni's Nose-Ring
							["cr"] = 8977,	-- Krom'Grul
						}),
						i(11869),	-- Sha'ni's Ring
					},
				}),
				q(4481, {	-- Libram of Constitution
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65.0, 23.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 8411, 1 },	-- Lung Juice Cocktail
						{ "i", 11733, 1 },	-- Libram of Constitution
						{ "i", 11952, 4 },	-- Night Dragon's Breath
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(11642),	-- Lesser Arcanum of Constitution
					},
				}),
				q(4483, {	-- Libram of Resilience
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65.0, 23.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11567, 4 },	-- Crystal Spire
						{ "i", 11751, 1 },	-- Burning Essence
						{ "i", 11736, 1 },	-- Libram of Resilience
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(11644),	-- Lesser Arcanum of Resilience
					},
				}),
				q(4463, {	-- Libram of Rumination
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65.0, 23.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11752, 1 },	-- Black Blood of the Tormented
						{ "i", 8424, 1 },	-- Gizzard Gum
						{ "i", 11732, 1 },	-- Libram of Rumination
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(11622),	-- Lesser Arcanum of Rumination
					},
				}),
				q(4482, {	-- Libram of Tenacity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65.0, 23.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11734, 1 },	-- Libram of Tenacity
						{ "i", 11564, 4 },	-- Crystal Ward
						{ "i", 11753, 1 },	-- Eye of Kajal
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(11643),	-- Lesser Arcanum of Tenacity
					},
				}),
				q(4484, {	-- Libram of Voracity
					["qg"] = 9836,	-- Mathredis Firestar
					["coord"] = { 65.0, 23.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 11754, 1 },	-- Black Diamond
						{ "i", 11737, 1 },	-- Libram of Voracity
						{ "i", 11951, 4 },	-- Whipper Root Tuber
						{ "i", 11563, 4 },	-- Crystal Force
						{ "g", 300000 },	-- 30g
					},
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(11647),	-- Lesser Arcanum of Voracity
						i(11648),	-- Lesser Arcanum of Voracity
						i(11649),	-- Lesser Arcanum of Voracity
						i(11645),	-- Lesser Arcanum of Voracity
						i(11646),	-- Lesser Arcanum of Voracity
					},
				}),
				q(7623, {	-- Lord Banehollow
					["description"] = "Do not leave Burning Steppes without purchasing a Shadowy Potion or two.",
					["sourceQuest"] = 7564,	-- Wildeyes
					["qg"] = 14437,	-- Gorzeeki Wildeyes
					["coord"] = { 12.4, 31.6, MAP.BURNING_STEPPES },
					["maps"] = { MAP.FELWOOD },
					["cost"] = { { "i", 18802, 1 } },	-- Shadowy Potion
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(7562, {	-- Mor'zul Bloodbringer
					["allianceQuestData"] = {
						["qgs"] = {
							6382,	-- Jubahl Corpseseeker <Demon Trainer>
							5520,	-- Spackle Thornberry <Demon Trainer>
						},
						["coords"] = {
							{ 52.8, 6.0, MAP.IRONFORGE },
							{ 25.8, 77.6, MAP.STORMWIND_CITY },
						},
					},
					["hordeQuestData"] = {
						["qgs"] = {
							5815,	-- Kurgul <Demon Trainer>
							5753,	-- Martha Strain <Demon Trainer>
						},
						["coords"] = {
							{ 47.6, 46.8, MAP.ORGRIMMAR },
							{ 85.8, 15.8, MAP.UNDERCITY },
						},
					},
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(3825, {	-- Ogre Head On A Stick = Party
					["sourceQuest"] = 3824,	-- Gor'tesh the Brute Lord
					["qg"] = 9177,	-- Oralius
					["coord"] = { 84.6, 68.8, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Gor'tesh Head Planted
							["providers"] = {
								{ "i",  11079 },	-- Gor'tesh's Lopped Off Head
								{ "o", 160840 },	-- Soft Dirt Mound
							},
							["coord"] = { 81.0, 46.0, MAP.BURNING_STEPPES },
						}),
						i(11867),	-- Maddening Gauntlets
						i(11868),	-- Choking Band
					},
				}),
				q(7563, {	-- Rage of Blood
					["sourceQuest"] = 7562,	-- Mor'zul Bloodbringer
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["maps"] = { MAP.WINTERSPRING },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/30 Raging Beast's Blood
							["provider"] = { "i", 18590 },	-- Raging Beast's Blood
							["crs"] = {
								7453,	-- Moontouched Owlbeast
								7454,	-- Berserk Owlbeast
								7452,	-- Crazed Owlbeast
								7451,	-- Raging Owlbeast
								7450,	-- Ragged Owlbeast
							},
						}),
					},
				}),
				q(4296, {	-- Tablet of the Seven
					["qg"] = 9536,	-- Maxwort Uberglint
					["coord"] = { 65.2, 23.8, MAP.BURNING_STEPPES },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet Transcript
							["providers"] = {
								{ "i",  11470 },	-- Tablet Transcript
								{ "o", 169294 },	-- Tablet of the Seven
							},
							["coord"] = { 53.0, 40.0, MAP.BURNING_STEPPES },
						}),
					},
				}),
				q(7627, {	-- Wheel of the Black March
					["sourceQuest"] = 7564,	-- Wildeyes
					["qg"] = 14436,	-- Mor'zul Bloodbringer
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["cost"] = {
						{ "i", 14344, 6 },	-- Large Brilliant Shard
						{ "i", 11370, 25 },	-- Dark Iron Ore
					},
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
				q(7564, {	-- Wildeyes
					["sourceQuest"] = 7563,	-- Rage of Blood
					["providers"] = {
						{ "n", 14436 },	-- Mor'zul Bloodbringer
						{ "i", 18591 },	-- Case of Blood
					},
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
			}),
			n(RARES, {
				n(10077, {	-- Deathmaw
					["coords"] = {
						{ 75.2, 33.2, MAP.BURNING_STEPPES },
						{ 82.6, 31.0, MAP.BURNING_STEPPES },
						{ 87.6, 50.6, MAP.BURNING_STEPPES },
						{ 81.2, 59.2, MAP.BURNING_STEPPES },
					},
				}),
				n(9604, {	-- Gorgon'och
					["coords"] = {
						{ 77.2, 43.0, MAP.BURNING_STEPPES },
						{ 80.8, 44.8, MAP.BURNING_STEPPES },
					},
				}),
				n(8979, {	-- Gruklash
					["coords"] = {
						{ 16.0, 30.2, MAP.BURNING_STEPPES },
						{ 40.6, 35.8, MAP.BURNING_STEPPES },
						{ 42.6, 51.4, MAP.BURNING_STEPPES },
						{ 48.0, 62.2, MAP.BURNING_STEPPES },
					},
				}),
				n(9602, {	-- Hahk'Zor
					["coords"] = {
						{ 79.2, 42.2, MAP.BURNING_STEPPES },
						{ 78.6, 44.6, MAP.BURNING_STEPPES },
						{ 80.8, 48.6, MAP.BURNING_STEPPES },
						{ 82.8, 42.8, MAP.BURNING_STEPPES },
					},
				}),
				n(8976, {	-- Hematos
					["coords"] = {
						{ 18.2, 46.8, MAP.BURNING_STEPPES },
						{ 16.6, 56.2, MAP.BURNING_STEPPES },
						{ 24.8, 58.6, MAP.BURNING_STEPPES },
						{ 34.2, 53.4, MAP.BURNING_STEPPES },
					},
				}),
				n(8981, {	-- Malfunctioning Reaver
					["coords"] = {
						{ 76.6, 30.6, MAP.BURNING_STEPPES },
						{ 87.4, 31.0, MAP.BURNING_STEPPES },
						{ 90.6, 46.8, MAP.BURNING_STEPPES },
						{ 86.2, 57.4, MAP.BURNING_STEPPES },
					},
				}),
				n(10078, {	-- Terrorspark
					["coords"] = {
						{ 16.4, 24.2, MAP.BURNING_STEPPES },
						{ 42.0, 46.2, MAP.BURNING_STEPPES },
						{ 47.6, 43.2, MAP.BURNING_STEPPES },
						{ 51.8, 43.6, MAP.BURNING_STEPPES },
						{ 63.6, 37.6, MAP.BURNING_STEPPES },
						{ 69.4, 32.6, MAP.BURNING_STEPPES },
					},
				}),
				n(8978, {	-- Thauris Balgarr
					["coords"] = {
						{ 53.2, 40.6, MAP.BURNING_STEPPES },
						{ 56.2, 35.2, MAP.BURNING_STEPPES },
						{ 55.2, 43.2, MAP.BURNING_STEPPES },
						{ 61.8, 37.6, MAP.BURNING_STEPPES },
						{ 66.6, 44.8, MAP.BURNING_STEPPES },
						{ 71.8, 36.4, MAP.BURNING_STEPPES },
					},
				}),
				n(10119, {	-- Volchan
					["coords"] = {
						{ 77.0, 31.2, MAP.BURNING_STEPPES },
						{ 91.2, 33.4, MAP.BURNING_STEPPES },
						{ 90.2, 45.6, MAP.BURNING_STEPPES },
						{ 87.8, 59.0, MAP.BURNING_STEPPES },
						{ 81.8, 61.0, MAP.BURNING_STEPPES },
						{ 72.0, 55.6, MAP.BURNING_STEPPES },
						{ 72.0, 43.6, MAP.BURNING_STEPPES },
						{ 73.8, 35.6, MAP.BURNING_STEPPES },
					},
					["groups"] = {
						i(12828, {	-- Plans: Volcanic Hammer (RECIPE!)
							["timeline"] = { ADDED_1_0_1 },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(1296, {	-- Felder Stover <Weaponsmith>
					["coord"] = { 72.9, 65.8, MAP.BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2528,	-- Falchion
						2530,	-- Francisca
						2531,	-- Great Axe
						2532,	-- Morning Star
						2534,	-- Rondel
						2533,	-- War Maul
						2535,	-- War Staff
						2529,	-- Zweihander
					}},
				}),
				n(14437, {	-- Gorzeeki Wildeyes
					["coord"] = { 12.6, 31.6, MAP.BURNING_STEPPES },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18629, {	-- Black Lodestone
							["cost"] = { { "g", 500000 } },	-- 50g
						}),
						i(18663, {	-- J'eevee's Jar
							["cost"] = { { "g", 1500000 } },	-- 150g
						}),
						i(18802, {	-- Shadowy Potion
							["cost"] = { { "g", 60000 } },	-- 6g
						}),
						i(18670, {	-- Xorothian Glyphs
							["cost"] = { { "g", 500000 } },	-- 50g
						}),
					},
				}),
				n(9544, {	-- Yuka Screwspigot
					["coord"] = { 66.0, 22.0, MAP.BURNING_STEPPES },
					["groups"] = {
						i(10602, {	-- Schematic: Deadly Scope (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(14482, {	-- Pattern: Cindercloth Cloak (RECIPE!)
					["coords"] = {
						{43.8, 39.4, MAP.BURNING_STEPPES},
						{58.8, 37.2, MAP.BURNING_STEPPES},
					},
					["cr"] = 7037,	-- Thaurissan Firewalker
				}),
				i(14490, {	-- Pattern: Cindercloth Pants (RECIPE!)
					["coords"] = {
						{43.8, 39.4, MAP.BURNING_STEPPES},
						{58.8, 37.2, MAP.BURNING_STEPPES},
					},
					["cr"] = 7037,	-- Thaurissan Firewalker (RECIPE!)
				}),
				i(15738, {	-- Pattern: Heavy Scorpid Gauntlets (RECIPE!)
					["coords"] = {
						{ 34.8, 36.3, MAP.BURNING_STEPPES },
						{ 36.0, 36.6, MAP.BURNING_STEPPES },
					},
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						7025,	-- Blackrock Soldier
					},
				}),
				i(15748, {	-- Pattern: Heavy Scorpid Leggings (RECIPE!)
					["coords"] = {
						{ 34.8, 36.3, MAP.BURNING_STEPPES },
						{ 36.0, 36.6, MAP.BURNING_STEPPES },
					},
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						7027,	-- Blackrock Slayer
					},
				}),
				i(15774, {	-- Pattern: Heavy Scorpid Shoulders (RECIPE!)
					["coords"] = {
						{ 34.8, 36.3, MAP.BURNING_STEPPES },
						{ 36.0, 36.6, MAP.BURNING_STEPPES },
					},
					["timeline"] = { ADDED_1_11_1 },
					["crs"] = {
						7029,	-- Blackrock Battlemaster
					},
				}),
				i(15732, {	-- Pattern: Volcanic Leggings (RECIPE!)
					["description"] = "Drops from Firegut Brutes, which are found around Dreadmaul Rock and inside the Firegut Furnace cavern. The entrance to Firegut Furnace is at the southwestern side of Dreadmaulk Rock. Firegut Ogre Mages very often spawn in place of Firegut Brutes.",
					["coords"] = {
						{ 83.6, 40.0, MAP.BURNING_STEPPES },
						{ 80.4, 45.8, MAP.BURNING_STEPPES },
					},
					["cr"] = 7035,	-- Firegut Brute
				}),
				i(13476, {	-- Recipe: Mighty Rage Potion (RECIPE!)
					["cr"] = 7027,	-- Blackrock Slayer
				}),
			}),
		},
	}),
}));
