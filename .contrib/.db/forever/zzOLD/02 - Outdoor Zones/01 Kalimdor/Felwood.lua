---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.KALIMDOR, {
	m(MAP.FELWOOD, {
		["lore"] = "Once a wooded paradise, Felwood bears a ten-thousand-year-old curse. The trees, land and creatures are twisted and evil, violent and wild. Cursed ancients and furbolg maul any who come close, and satyrs hold depraved court near tainted moonwells. The animals within are mad and brutal and have no fear of humanoids. The undead and demons that survived the Third War fled here as well, and hide in the deep tangles. Felwood is a chaos of battling creatures, and blood soaks the ground. The infamous Shadow Council, a group of orc warlocks loyal to the Burning Legion, hides somewhere within.\n\nAlliance heroes, particularly druids, make forays into the cursed wood in attempts to destroy some of the larger menaces, root out the Shadow Council, and perhaps, some day, restore the land to its former legacy.",
		["icon"] = 236763,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(853),	-- Explore Felwood
			}),
			explorationHeader({
				exploration(1765),	-- Bloodvenom Falls
				exploration(1761),	-- Deadwood Village
				exploration(2479),	-- Emerald Sanctuary
				exploration(1762),	-- Felpaw Village
				exploration(1767),	-- Irontree Woods
				exploration(2480),	-- Jadefire Glen
				exploration(2618),	-- Jadefire Run
				exploration(1763),	-- Jaedenar
				exploration(2478),	-- Morlos'Aran
				exploration(2481),	-- Ruins of Constellas
				exploration(1766),	-- Shatter Scar Vale
				exploration(1998),	-- Talonbranch Glade
				exploration(1769),	-- Timbermaw Hold
			}),
			n(FLIGHT_PATHS, {
				fp(48, {	-- Bloodvenom Post, Felwood
					["cr"] = 11900,	-- Brakkar <Wind Rider Master>
					["coord"] = { 34.4, 53.8, MAP.FELWOOD },
					["races"] = HORDE_ONLY,
				}),
				fp(65, {	-- Talonbranch Glade, Felwood
					["cr"] = 12578,	-- Mishellena <Hippogryph Master>
					["coords"] = {
						{ 62.6, 24.2, MAP.FELWOOD },
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			prof(HERBALISM, {
				i(11514, {	-- Fel Creep
					["description"] = "In order for this to drop while Herbing, you must have the Cenarion Beacon in your bags.",
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
				}),
			}),
			prof(MINING, {
				i(11513, {	-- Tainted Vitriol
					["description"] = "In order for this to drop while Mining, you must have the Cenarion Beacon in your bags.",
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
				}),
			}),
			n(QUESTS, {
				q(5242, {	-- A Final Blow
					["sourceQuest"] = 5165,	-- Dousing the Flames of Protection
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, MAP.FELWOOD },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Moora slain
							["provider"] = { "n", 9861 },	-- Moora
							["coord"] = { 38.8, 46.8, MAP.FELWOOD },
						}),
						objective(2, {	-- 0/1 Salia slain
							["provider"] = { "n", 9860 },	-- Salia
							["coord"] = { 39.6, 47.0, MAP.FELWOOD },
						}),
						objective(3, {	-- 0/1 Shadow Lord Fel'dan's Head
							["provider"] = { "i", 13207 },	-- Shadow Lord Fel'dan's Head
							["coord"] = { 38.8, 46.8, MAP.FELWOOD },
							["cr"] = 9517,	-- Shadow Lord Fel'dan
						}),
						i(15707),	-- Brantwood Sash
						i(15708),	-- Blight Leather Gloves
						i(15709),	-- Gearforge Girdle
					},
				}),
				q(6162, {	-- A Husband's Last Battle
					["qg"] = 9620,	-- Dreka'Sur
					["coord"] = { 34.8, 52.6, MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 46,
					["groups"] = {
						objective(1, {	-- 0/1 Overlord Ror's Claw
							["provider"] = { "i", 15879 },	-- Overlord Ror's Claw
							["coord"] = { 48.6, 93.6, MAP.FELWOOD },
							["cr"] = 9464,	-- Overlord Ror
						}),
					},
				}),
				q(5202, {	-- A Strange Red Key
					["provider"] = { "i", 13140 },	-- Blood Red Key
					["crs"] = {
						7118,	-- Jaedenar Darkweaver
						7114,	-- Jaedenar Enforcer
						9862,	-- Jaedenar Legionnaire
						7120,	-- Jaedenar Warlock
						14523,	-- Ulathek
						14522,	-- Ur'dan
					},
					["lvl"] = 49,
				}),
				q(8419, {	-- An Imp's Request
					["altQuests"] = { 8420 },	-- Hot and Itchy
					["qgs"] = {
						3326,	-- Zevrost <Warlock Trainer>
						5172,	-- Briarthorn <Warlock Trainer>
						461,	-- Demisette Cloyce <Warlock Trainer>
						4563,	-- Kaal Soulreaper <Warlock Trainer>
					},
					["coords"] = {
						{ 48.4, 45.6, MAP.ORGRIMMAR },
						{ 50.2, 6.0, MAP.IRONFORGE },
						{ 28.4, 78.2, MAP.STORMWIND_CITY },
						{ 86.0, 15.6, MAP.UNDERCITY },
					},
					["cost"] = { { "i", 14256, 1 } },	-- Felcloth
					["races"] = HORDE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(4261, {	-- Ancient Spirit
					["sourceQuest"] = 4442,	-- Purified!
					["providers"] = {
						{ "n", 9598 },	-- Arei
						{ "i", 11445 },	-- Flute of the Ancients
					},
					["coord"] = { 49.4, 14.4, MAP.FELWOOD },
					["maps"] = { MAP.ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						i(11873),	-- Ethereal Mist Cape
						i(11874),	-- Clouddrift Mantle
					},
				}),
				q(4005, {	-- Aquementas
					["sourceQuest"] = 4084,	-- Silver Heart
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["coord"] = { 51.2, 81.6, MAP.FELWOOD },
					["maps"] = { MAP.TANARIS, MAP.UNGORO_CRATER },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/1 Silver Totem of Aquementas
							["provider"] = { "i", 11522 },	-- Silver Totem of Aquementas
						}),
						i(11617, {	-- Eridan's Supplies
							i(11169),	-- Book of Aquor
						}),
						i(11522, {	-- Silver Totem of Aquementas
							["providers"] = { "i", 11169 },	-- Book of Aquor
							["coord"] = { 70.0, 49.0, MAP.TANARIS },
							["cr"] = 9453,	-- Aquementas
						}),
					},
				}),
				q(5159, {	-- Cleansed Water Returns to Felwood
					["sourceQuest"] = 5158,	-- Seeking Spiritual Aid
					["providers"] = {
						{ "n", 5901 },	-- Islen Waterseer
						{ "i", 12906 },	-- Purified Moonwell Water
					},
					["coord"] = { 65.8, 43.8, MAP.THE_BARRENS },
					["lvl"] = 48,
				}),
				{	-- Cleansing Felwood
					["allianceQuestData"] = q(4101, {	-- Cleansing Felwood (A)
						["qg"] = 9528,	-- Arathandris Silversky
						["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					}),
					["hordeQuestData"] = q(4102, {	-- Cleansing Felwood (H)
						["qg"] = 9529,	-- Maybess Riverbreeze
						["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					}),
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/15 Blood Amber
							["provider"] = { "i", 11503 },	-- Blood Amber
							["crs"] = {
								7104,	-- Dessecus
								7100,	-- Warpwood Moss Flayer
								7101,	-- Warpwood Shredder
							},
						}),
						i(11511, {	-- Cenarion Beacon
							["description"] = "You must keep this in your bags for the Fel Creep, Patch of Tainted Skin, Tainted Vitriol, and Corrupted Soul Shards to drop from the various means of gathering.",
						}),
					},
				},
				q(5157, {	-- Collection of the Corrupt Water
					["sourceQuest"] = 5155,	-- Forces of Jaedenar
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, MAP.FELWOOD },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 Corrupt Moonwell Water
							["providers"] = {
								{ "i", 12907 },	-- Corrupt Moonwell Water
								{ "i", 12922 },	-- Empty Canteen
							},
							["coord"] = { 35.2, 59.8, MAP.FELWOOD },
						}),
					},
				}),
				q(4119, {	-- Corrupted Night Dragon
					["provider"] = { "o", 164885 },	-- Corrupted Night Dragon
					["coord"] = { 40.7, 78.3, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11952) },	-- Night Dragon's Breath
				}),
				q(4447, {	-- Corrupted Night Dragon
					["provider"] = { "o", 173324 },	-- Corrupted Night Dragon
					["coord"] = { 50.6, 30.4, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11952) },	-- Night Dragon's Breath
				}),
				q(4448, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174608 },	-- Corrupted Night Dragon
					["coord"] = { 42.5, 13.9, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11952) },	-- Night Dragon's Breath
				}),
				q(4462, {	-- Corrupted Night Dragon
					["provider"] = { "o", 174684 },	-- Corrupted Night Dragon
					["coord"] = { 35.1, 59.0, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 4 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11952) },	-- Night Dragon's Breath
				}),
				q(4506, {	-- Corrupted Sabers
					["sourceQuest"] = 4504,	-- Well of Corruption
					["qg"] = 9996,	-- Winna Hazzard
					["coord"] = { 34.2, 52.4, MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- Return the corrupted cat to Winna Hazzard
							["providers"] = {
								{ "n", 10042 },	-- Corrupted Saber
								{ "i", 12565 },	-- Winna's Kitten Carrier
							},
							["coord"] = { 32.0, 66.0, MAP.FELWOOD },
							["description"] = "When you get back to Winna, the cat stops, and you have to TALK TO THE CAT.",
						}),
					},
				}),
				q(2523, {	-- Corrupted Songflower
					["provider"] = { "o", 171942 },	-- Corrupted Songflower
					["coord"] = { 48.3, 75.6, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(2878, {	-- Corrupted Songflower
					["provider"] = { "o", 174594 },	-- Corrupted Songflower
					["coord"] = { 63.3, 22.6, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(3363, {	-- Corrupted Songflower
					["provider"] = { "o", 174595 },	-- Corrupted Songflower
					["coord"] = { 63.9, 6.1, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4113, {	-- Corrupted Songflower
					["provider"] = { "o", 164886 },	-- Corrupted Songflower
					["coord"] = { 52.9, 87.8, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4114, {	-- Corrupted Songflower
					["provider"] = { "o", 174596 },	-- Corrupted Songflower
					["coord"] = { 55.8, 10.5, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4116, {	-- Corrupted Songflower
					["provider"] = { "o", 174597 },	-- Corrupted Songflower
					["coord"] = { 50.6, 13.9, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4118, {	-- Corrupted Songflower
					["provider"] = { "o", 174598 },	-- Corrupted Songflower
					["coord"] = { 34.4, 52.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4401, {	-- Corrupted Songflower
					["provider"] = { "o", 171939 },	-- Corrupted Songflower
					["coord"] = { 46.0, 85.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4464, {	-- Corrupted Songflower
					["provider"] = { "o", 174712 },	-- Corrupted Songflower
					["coord"] = { 40.2, 56.6, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4465, {	-- Corrupted Songflower
					["provider"] = { "o", 174713 },	-- Corrupted Songflower
					["coord"] = { 40.1, 44.4, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
				}),
				q(4117, {	-- Corrupted Whipper Root
					["provider"] = { "o", 164888 },	-- Corrupted Whipper Root
					["coord"] = { 40.2, 85.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(4443, {	-- Corrupted Whipper Root
					["provider"] = { "o", 173284 },	-- Corrupted Whipper Root
					["coord"] = { 50.6, 18.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(4444, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174605 },	-- Corrupted Whipper Root
					["coord"] = { 49.4, 12.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(4445, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174606 },	-- Corrupted Whipper Root
					["coord"] = { 40.7, 19.2, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(4446, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174607 },	-- Corrupted Whipper Root
					["coord"] = { 43.0, 46.9, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(4461, {	-- Corrupted Whipper Root
					["provider"] = { "o", 174686 },	-- Corrupted Whipper Root
					["coord"] = { 34.1, 60.3, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 3 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11951) },	-- Whipper Root Tuber
				}),
				q(996, {	-- Corrupted Windblossom
					["provider"] = { "o", 174600 },	-- Corrupted Windblossom
					["coord"] = { 57.5, 20.0, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(998, {	-- Corrupted Windblossom
					["provider"] = { "o", 174599 },	-- Corrupted Windblossom
					["coord"] = { 55.8, 7.0, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(1514, {	-- Corrupted Windblossom
					["provider"] = { "o", 173327 },	-- Corrupted Windblossom
					["coord"] = { 55.2, 23.5, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4115, {	-- Corrupted Windblossom
					["provider"] = { "o", 164887 },	-- Corrupted Windblossom
					["coord"] = { 50.0, 80.0, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4221, {	-- Corrupted Windblossom
					["provider"] = { "o", 174604 },	-- Corrupted Windblossom
					["coord"] = { 39.0, 59.1, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4222, {	-- Corrupted Windblossom
					["provider"] = { "o", 174603 },	-- Corrupted Windblossom
					["coord"] = { 34.4, 48.8, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4343, {	-- Corrupted Windblossom
					["provider"] = { "o", 174602 },	-- Corrupted Windblossom
					["coord"] = { 38.8, 21.9, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4403, {	-- Corrupted Windblossom
					["provider"] = { "o", 174601 },	-- Corrupted Windblossom
					["coord"] = { 45.4, 18.3, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4466, {	-- Corrupted Windblossom
					["provider"] = { "o", 174708 },	-- Corrupted Windblossom
					["coord"] = { 36.5, 61.9, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(4467, {	-- Corrupted Windblossom
					["provider"] = { "o", 174709 },	-- Corrupted Windblossom
					["coord"] = { 44.8, 41.7, MAP.FELWOOD },
					["cost"] = { { "i", 11516, 2 } },	-- Cenarion Plant Salve
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = { i(11950) },	-- Windblossom Berries
				}),
				q(5165, {	-- Dousing the Flames of Protection
					["sourceQuest"] = 5159,	-- Cleansed Water Returns to Felwood
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, MAP.FELWOOD },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- Extinguish the Brazier of Pain
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176158 },	-- Brazier of Pain
							},
							["coord"] = { 36.3, 56.3, MAP.FELWOOD },
						}),
						objective(2, {	-- Extinguish the Brazier of Malice
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176159 },	-- Brazier of Malice
							},
							["coord"] = { 37.7, 52.7, MAP.FELWOOD },
						}),
						objective(3, {	-- Extinguish the Brazier of Suffering
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176160 },	-- Brazier of Suffering
							},
							["coord"] = { 36.7, 53.3, MAP.FELWOOD },
						}),
						objective(4, {	-- Extinguish the Brazier of Hatred
							["providers"] = {
								{ "i", 12906 },	-- Purified Moonwell Water
								{ "o", 176161 },	-- Brazier of Hatred
							},
							["coord"] = { 36.5, 55.2, MAP.FELWOOD },
						}),
					},
				}),
				q(4441, {	-- Felbound Ancients
					["sourceQuest"] = 939,	-- Flute of Xavaric
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, MAP.FELWOOD },
					["maps"] = { MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Vial of Blessed Water
							["providers"] = {
								{ "i", 5646 },	-- Vial of Blessed Water
								{ "i", 11682 },	-- Eridan's Vial
							},
							["coord"] = { 39.0, 84.0, MAP.DARNASSUS },
						}),
					},
				}),
				q(7602, {	-- Flawless Fel Essence
					["sourceQuest"] = 7601,	-- What Niby Commands
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 44.8, MAP.FELWOOD },
					["maps"] = { MAP.AZSHARA, MAP.BLASTED_LANDS },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Flawless Fel Essence (Azshara)
							["provider"] = { "i", 18624 },	-- Flawless Fel Essence (Azshara)
							["crs"] = {
								6202,	-- Legashi Hellcaller
								6201,	-- Legashi Rogue
								6200,	-- Legashi Satyr
							},
						}),
						objective(2, {	-- 0/1 Flawless Fel Essence (Jaedenar)
							["provider"] = { "i", 18622 },	-- Flawless Fel Essence (Jaedenar)
							["cr"] = 9862,	-- Jaedenar Legionnaire
						}),
						objective(3, {	-- 0/1 Flawless Fel Essence (Dark Portal)
							["provider"] = { "i", 18623 },	-- Flawless Fel Essence (Dark Portal)
							["cr"] = 6011,	-- Felguard Sentry
						}),
					},
				}),
				q(939, {	-- Flute of Xavaric
					["sourceQuest"] = 4906,	-- Further Corruption
					["provider"] = { "i", 11668 },	-- Flute of Xavaric
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/5 Jadefire Felbind
							["provider"] = { "i", 11674 },	-- Jadefire Felbind
							["crs"] = {
								14340,	-- Alshirr Banebreath
								7108,	-- Jadefire Betrayer
								7109,	-- Jadefire Felsworn
								7111,	-- Jadefire Hellcaller
								7106,	-- Jadefire Rogue
								7105,	-- Jadefire Satyr
								7110,	-- Jadefire Shadowstalker
								7107,	-- Jadefire Trickster
							},
						}),
					},
				}),
				q(5155, {	-- Forces of Jaedenar
					["qg"] = 10922,	-- Greta Mosshoof
					["coord"] = { 51.2, 82.2, MAP.FELWOOD },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/4 Jaedenar Hound slain
							["provider"] = { "n", 7125 },	-- Jaedenar Hound
						}),
						objective(2, {	-- 0/4 Jaedenar Guardian slain
							["provider"] = { "n", 7113 },	-- Jaedenar Guardian
						}),
						objective(3, {	-- 0/6 Jaedenar Adept slain
							["provider"] = { "n", 7115 },	-- Jaedenar Adept
						}),
						objective(4, {	-- 0/6 Jaedenar Cultist slain
							["provider"] = { "n", 7112 },	-- Jaedenar Cultist
						}),
					},
				}),
				q(4906, {	-- Further Corruption
					["sourceQuest"] = 4421,	-- Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, MAP.FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/8 Jadefire Hellcaller slain
							["provider"] = { "n", 7111 },	-- Jadefire Hellcaller
						}),
						objective(2, {	-- 0/8 Jadefire Betrayer slain
							["provider"] = { "n", 7108 },	-- Jadefire Betrayer
						}),
						objective(3, {	-- 0/8 Jadefire Trickster slain
							["provider"] = { "n", 7107 },	-- Jadefire Trickster
						}),
						objective(4, {	-- 0/1 Xavaric slain
							["provider"] = { "n", 10648 },	-- Xavaric
						}),
						i(11875),	-- Breezecloud Bracers
					},
				}),
				q(4883, {	-- Guarding Secrets (2/2)
					["sourceQuest"] = 4882,	-- Guarding Secrets (1/2)
					["providers"] = {
						{ "n", 10306 },	-- Trull Failbane
						{ "i", 12558 },	-- Blue-feathered Necklace
					},
					["coord"] = { 34.6, 52.6, MAP.FELWOOD },
					["maps"] = { MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						i(15796),	-- Seaspray Bracers
						i(15797),	-- Shining Armplates
					},
				}),
				q(8420, {	-- Hot and Itchy
					["altQuests"] = { 8419 },	-- An Imp's Request
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, MAP.FELWOOD },
					["cost"] = { { "i", 14256, 1 } },	-- Felcloth
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(7603, {	-- Kroshius' Infernal Core
					["sourceQuest"] = 7602,	-- Flawless Fel Essence
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, MAP.FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Kroshius' Infernal Core
							["providers"] = {
								{ "i", 18625 },	-- Kroshius' Infernal Core
								{ "i", 18626 },	-- Fel Fire
							},
							["coord"] = { 45.4, 35.4, MAP.FELWOOD },
							["cr"] = 14467,	-- Kroshius
						}),
						recipe(1122),	-- Inferno / Summon Infernal
						i(18762),	-- Shard of the Green Flame
					},
				}),
				q(5085, {	-- Mystery Goo
					["sourceQuest"] = 5084,	-- Falling to Corruption
					["providers"] = {
						{ "o", 176091 },	-- Deadwood Cauldron
						{ "i", 12813 },	-- Flask of Mystery Goo
					},
					["coord"] = { 60.2, 5.9, MAP.FELWOOD },
					["lvl"] = 52,
				}),
				q(4442, {	-- Purified!
					["sourceQuest"] = 4441,	-- Felbound Ancients
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["coord"] = { 51.2, 81.6, MAP.FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						{
							["itemID"] = 11445,	-- Flute of the Ancients
							["description"] = "You need to save this flute for the 'Ancient Spirit' escort quest, then you can safely discard it.",
						},
					},
				}),
				q(5203, {	-- Rescue From Jaedenar
					["sourceQuest"] = 5202,	-- A Strange Red Key
					["qg"] = 11016,	-- Captured Arko'narin
					["coord"] = { 36.2, 55.4, MAP.FELWOOD },
					["lvl"] = 49,
				}),
				q(5204, {	-- Retribution of the Light
					["sourceQuest"] = 5203,	-- Rescue from Jaedenar
					["qg"] = 11019,	-- Jessir Moonbow
					["coord"] = { 51.3, 82.0, MAP.FELWOOD },
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Rakaiah slain
							["provider"] = { "n", 9518 },	-- Rakaiah
							["coord"] = { 38.2, 50.4, MAP.FELWOOD },
						}),
					},
				}),
				q(5886, {	-- Salve via Disenchanting (1/2)
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11174, 1 } },	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4107, {	-- Salve via Disenchanting (2/2)
					["sourceQuest"] = 5886,	-- Salve via Disenchanting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11174, 1 } },	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5891, {	-- Salve via Disenchanting (1/2)
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11174, 1 } },	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4112, {	-- Salve via Disenchanting (2/2)
					["sourceQuest"] = 4112,	-- Salve via Disenchanting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11174, 1 } },	-- Lesser Nether Essence
					["requireSkill"] = ENCHANTING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5884, {	-- Salve via Gathering (1/2)
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11514, 4 } },	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4105, {	-- Salve via Gathering (2/2)
					["sourceQuest"] = 5884,	-- Salve via Gathering (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11514, 4 } },	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5889, {	-- Salve via Gathering (1/2)
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11514, 4 } },	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4110, {	-- Salve via Gathering (2/2)
					["sourceQuest"] = 5889,	-- Salve via Gathering (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11514, 4 } },	-- Fel Creep
					["requireSkill"] = HERBALISM,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5882, {	-- Salve via Hunting (1/2)
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11515, 6 } },	-- Corrupted Soul Shard
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4103, {	-- Salve via Hunting (2/2)
					["sourceQuest"] = 5882,	-- Salve via Hunting (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11515, 6 } },	-- Corrupted Soul Shard
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5887, {	-- Salve via Hunting (1/2)
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11515, 6 } },	-- Corrupted Soul Shard
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4108, {	-- Salve via Hunting (2/2)
					["sourceQuest"] = 5887,	-- Salve via Hunting (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11515, 6 } },	-- Corrupted Soul Shard
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5883, {	-- Salve via Mining (1/2)
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11513, 4 } },	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4104, {	-- Salve via Mining (2/2)
					["sourceQuest"] = 5883,	-- Salve via Mining (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11513, 4 } },	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5888, {	-- Salve via Mining (1/2)
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11513, 4 } },	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4109, {	-- Salve via Mining (2/2)
					["sourceQuest"] = 5888,	-- Salve via Mining (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11513, 4 } },	-- Tainted Vitriol
					["requireSkill"] = MINING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5885, {	-- Salve via Skinning (1/2)
					["sourceQuest"] = 4101,	-- Cleansing Felwood (A)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11512, 5 } },	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4106, {	-- Salve via Skinning (2/2)
					["sourceQuest"] = 5885,	-- Salve via Skinning (1/2)
					["qg"] = 9528,	-- Arathandris Silversky
					["coord"] = { 54.2, 86.7, MAP.FELWOOD },
					["cost"] = { { "i", 11512, 5 } },	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["learnedAt"] = 225,
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5890, {	-- Salve via Skinning (1/2)
					["sourceQuest"] = 4102,	-- Cleansing Felwood (H)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11512, 5 } },	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(4111, {	-- Salve via Skinning (2/2)
					["sourceQuest"] = 5890,	-- Salve via Skinning (1/2)
					["qg"] = 9529,	-- Maybess Riverbreeze
					["coord"] = { 46.8, 83.0, MAP.FELWOOD },
					["cost"] = { { "i", 11512, 5 } },	-- Patch of Tainted Skin
					["requireSkill"] = SKINNING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 48,
					["groups"] = {
						i(11516),	-- Cenarion Plant Salve
					},
				}),
				q(5158, {	-- Seeking Spiritual Aid
					["sourceQuest"] = 5157,	-- Collection of the Corrupt Water
					["providers"] = {
						{ "n", 10922 },	-- Greta Mosshoof
						{ "i", 12907 },	-- Corrupt Moonwell Water
					},
					["coord"] = { 51.2, 82.2, MAP.FELWOOD },
					["maps"] = { MAP.THE_BARRENS },
					["lvl"] = 48,
				}),
				q(4084, {	-- Silver Heart
					["sourceQuest"] = 3942,	-- Linken's Memory
					["qg"] = 9116,	-- Eridan Bluewind <Emerald Circle>
					["coord"] = { 51.2, 81.6, MAP.FELWOOD },
					["lvl"] = 47,
					["groups"] = {
						objective(1, {	-- 0/11 Silvery Claws
							["provider"] = { "i", 11172 },	-- Silvery Claws
							["crs"] = {
								8956,	-- Angerclaw Bear
								8957,	-- Angerclaw Grizzly
								8958,	-- Angerclaw Mauler
								14339,	-- Death Howl
								8961,	-- Felpaw Ravager
								8960,	-- Felpaw Scavenger
								8959,	-- Felpaw Wolf
								14344,	-- Mongress
							},
						}),
						objective(2, {	-- 0/1 Irontree Heart
							["provider"] = { "i", 11173 },	-- Irontree Heart
							["crs"] = {
								7139,	-- Irontree Stomper
								7138,	-- Irontree Wanderer
							},
						}),
					},
				}),
				q(4421, {	-- The Corruption of the Jadefire
					["qg"] = 9116,	-- Eridan Bluewind
					["coord"] = { 51.4, 81.5, MAP.FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(4, {	-- 0/1 Xavathras slain
							["provider"] = { "n", 9454 },	-- Xavathras
						}),
						objective(1, {	-- 0/11 Jadefire Felsworn slain
							["provider"] = { "n", 7109 },	-- Jadefire Felsworn
						}),
						objective(2, {	-- 0/9 Jadefire Shadowstalker slain
							["provider"] = { "n", 7110 },	-- Jadefire Shadowstalker
						}),
						objective(3, {	-- 0/9 Jadefire Rogue slain
							["provider"] = { "n", 7106 },	-- Jadefire Rogue
						}),
						objective(4, {	-- 0/1 Xavathras slain
							["provider"] = { "n", 9454 },	-- Xavathras
						}),
					},
				}),
				q(5385, {	-- The Remains of Trey Lightforge
					["sourceQuest"] = 5204,	-- Retribution of the Light
					["providers"] = {
						{ "n", 11020 },	-- Remains of Trey Lightforge
						{ "i", 13562 },	-- Remains of Trey Lightforge
					},
					["coord"] = { 38.4, 50.4, MAP.FELWOOD },
					["lvl"] = 49,
					["groups"] = {
						i(15706),	-- Hunt Tracker Blade
						i(15705),	-- Tidecrest Blade
					},
				}),
				q(8421, {	-- The Wrong Stuff
					["sourceQuests"] = {
						8419,	-- An Imp's Request
						8420,	-- Hot and Itchy
					},
					["qg"] = 14470,	-- Impsy <Niby's Minion>
					["coord"] = { 41.6, 45.0, MAP.FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Rotting Wood
							["provider"] = { "i", 20613 },	-- Rotting Wood
							["crs"] = {
								7139,	-- Irontree Stomper
								7138,	-- Irontree Wanderer
								7149,	-- Withered Protector
							},
						}),
						objective(2, {	-- 0/4 Bloodvenom Essence
							["provider"] = { "i", 20614 },	-- Bloodvenom Essence
							["cr"] = 7092,	-- Tainted Ooze
						}),
					},
				}),
				q(7624, {	-- Ulathek the Traitor
					["sourceQuest"] = 7623,	-- Lord Banehollow
					["qg"] = 9516,	-- Lord Banehollow
					["coord"] = { 36.0, 44.6, MAP.FELWOOD },
					["cost"] = { { "i", 18802, 1 } },	-- Shadowy Potion
					["classes"] = { WARLOCK },
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/1 The Traitor's Heart
							["provider"] = { "i", 18719 },	-- The Traitor's Heart
							["coord"] = { 40.6, 48.4, MAP.FELWOOD },
							["cr"] = 14523,	-- Ulathek
						}),
					},
				}),
				q(5156, {	-- Verifying the Corruption
					["qg"] = 10921,	-- Taronn Redfeather
					["coord"] = { 50.9, 81.6, MAP.FELWOOD },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/2 Entropic Beast slain
							["provider"] = { "n", 9878 },	-- Entropic Beast
						}),
						objective(2, {	-- 0/2 Entropic Horror slain
							["provider"] = { "n", 9879 },	-- Entropic Horror
						}),
					},
				}),
				q(4505, {	-- Well of Corruption
					["sourceQuest"] = 6605,	-- A Strange One
					["qg"] = 9996,	-- Winna Hazzard
					["coord"] = { 34.2, 52.4, MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["lvl"] = 49,
					["groups"] = {
						objective(1, {	-- 0/1 Filled Flasket
							["providers"] = {
								{ "i", 12567 },	-- Filled Flasket
								{ "i", 12566 },	-- Hardened Flasket
							},
							["coord"] = { 32.0, 66.0, MAP.FELWOOD },
						}),
					},
				}),
				q(7601, {	-- What Niby Commands
					["qg"] = 14469,	-- Niby the Almighty
					["coord"] = { 41.4, 44.8, MAP.FELWOOD },
					["classes"] = { WARLOCK },
					["lvl"] = 50,
				}),
				q(4521, {	-- Wild Guardians (1/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, MAP.FELWOOD },
					["maps"] = { MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/15 Raging Owlbeast slain
							["provider"] = { "n", 7451 },	-- Raging Owlbeast
						}),
						objective(2, {	-- 0/15 Ragged Owlbeast slain
							["provider"] = { "n", 7450 },	-- Ragged Owlbeast
						}),
					},
				}),
				q(4741, {	-- Wild Guardians (2/3)
					["sourceQuest"] = 4521,	-- Wild Guardians (1/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, MAP.FELWOOD },
					["maps"] = { MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/13 Moontouched Owlbeast slain
							["provider"] = { "n", 7453 },	-- Moontouched Owlbeast
						}),
					},
				}),
				q(4721, {	-- Wild Guardians (3/3)
					["sourceQuest"] = 4741,	-- Wild Guardians (2/3)
					["qg"] = 10306,	-- Trull Failbane
					["coord"] = { 34.6, 52.6, MAP.FELWOOD },
					["maps"] = { MAP.WINTERSPRING },
					["races"] = HORDE_ONLY,
					["lvl"] = 52,
					["groups"] = {
						objective(1, {	-- 0/10 Berserk Owlbeast slain
							["provider"] = { "n", 7454 },	-- Berserk Owlbeast
						}),
					},
				}),
				q(7625, {	-- Xorothian Stardust
					["sourceQuest"] = 7624,	-- Ulathek the Traitor
					["qg"] = 9516,	-- Lord Banehollow
					["coord"] = { 36.0, 44.6, MAP.FELWOOD },
					["cost"] = {
						{ "i", 18802, 1 },	-- Shadowy Potion
						{ "i", 18687, 1 },	-- Xorothian Stardust
					},
					["classes"] = { WARLOCK },
					["lvl"] = 60,
				}),
			}),
			n(RARES, {
				n(14340, {	-- Alshirr Banebreath
					["coords"] = {
						{ 39.0, 83.0, MAP.FELWOOD },
						{ 40.2, 86.0, MAP.FELWOOD },
						{ 43.0, 88.0, MAP.FELWOOD },
					},
				}),
				n(14339, {	-- Death Howl
					["coords"] = {
						{ 48.2, 79.0, MAP.FELWOOD },
						{ 49.8, 77.2, MAP.FELWOOD },
						{ 56.8, 90.0, MAP.FELWOOD },
					},
				}),
				n(7104, {	-- Dessecus
					["coords"] = {
						{ 57.4, 22.4, MAP.FELWOOD },
						{ 58.0, 17.4, MAP.FELWOOD },
						{ 58.6, 19.6, MAP.FELWOOD },
					},
				}),
				n(7137, {	-- Immolatus
					["coords"] = {
						{ 41.8, 39.4, MAP.FELWOOD },
						{ 46.0, 39.2, MAP.FELWOOD },
						{ 44.6, 42.2, MAP.FELWOOD },
						{ 41.2, 42.6, MAP.FELWOOD },
					},
				}),
				n(14344, {	-- Mongress
					["coords"] = {
						{ 43.6, 77.6, MAP.FELWOOD },
						{ 46.8, 83.0, MAP.FELWOOD },
					},
				}),
				n(14343, {	-- Olm the Wise
					["coords"] = {
						{ 54.6, 26.6, MAP.FELWOOD },
						{ 57.2, 21.4, MAP.FELWOOD },
						{ 58.6, 18.6, MAP.FELWOOD },
						{ 56.6, 9.2, MAP.FELWOOD },
					},
				}),
				n(14342, {	-- Ragepaw
					["coords"] = {
						{ 47.6, 93.6, MAP.FELWOOD },
						{ 49.0, 92.8, MAP.FELWOOD },
						{ 48.4, 91.2, MAP.FELWOOD },
					},
				}),
				n(14345, {	-- The Ongar
					["coords"] = {
						{ 39.0, 48.4, MAP.FELWOOD },
						{ 42.8, 47.6, MAP.FELWOOD },
						{ 43.8, 49.6, MAP.FELWOOD },
					},
				}),
			}),
			prof(SKINNING, {
				i(11512, {	-- Patch of Tainted Skin
					["description"] = "In order for this to drop while Skinning, you must have the Cenarion Beacon in your bags.",
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
					["crs"] = {
						8956,	-- Angerclaw Bear
						8957,	-- Angerclaw Grizzly
						8958,	-- Angerclaw Mauler
						8961,	-- Felpaw Ravager
						8960,	-- Felpaw Scavenger
						8959,	-- Felpaw Wolf
						7125,	-- Jaedenar Hound
						7126,	-- Jaedenar Hunter
					},
				}),
			}),
			n(VENDORS, {
				n(2806, {	-- Bale <General Goods>
					["coord"] = { 34.8, 53.2, MAP.FELWOOD },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				n(2803, {	-- Malygen <General Goods>
					["coords"] = {
						{ 62.2, 25.6, MAP.FELWOOD },
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16110),	-- Recipe: Monster Omelet (RECIPE!)
					},
				}),
				n(14522, {	-- Ur'dan
					["sourceQuest"] = 7625,	-- Xorothian Stardust
					["coord"] = { 36.2, 44.6, MAP.FELWOOD },
					["classes"] = { WARLOCK },
					["groups"] = {
						i(18687, {	-- Xorothian Stardust
							["cost"] = 1500000,	-- 150g
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(13140, {	-- Blood Red Key
					["crs"] = {
						7118,	-- Jaedendar Darkweaver
						7114,	-- Jaedendar Enforcer
						9862,	-- Jaedendar Legionnaire
						7120,	-- Jaedendar Warlock
					},
				}),
				i(11515, {	-- Corrupted Soul Shard
					["description"] = "In order for this to drop by killing mobs, you must have the Cenarion Beacon in your bags.",
					["provider"] = { "i", 11511 },	-- Cenarion Beacon
				}),
				i(21377, {	-- Deadwood Headdress Feather
					["description"] = "Drops commmonly from all Deadwood furbolgs, and can be turned in to the NPCs named Grazle and Nafien for Timbermaw Hold reputation. Each turn in requires 5 Deadwood Headdress Feathers. Grazle can be found in the southmost part of the zone, in the Emerald Sanctuary. Nafien can be found in the northernmost part of the zone, by the entrance to Timbermaw Hold.",
					["crs"] = {
						9462,	-- Chieftain Bloodmaw
						7157,	-- Deadwood Avenger
						7156,	-- Deadwood Den Watcher
						7154,	-- Deadwood Gardener
						7155,	-- Deadwood Pathfinder
						7158,	-- Deadwood Shaman
						7153,	-- Deadwood Warrior
						9464,	-- Overlord Ror
						14342,	-- Ragepaw
					},
				}),
				i(11668, {	-- Flute of Xavaric
					["coord"] = { 39.6, 22.2, MAP.FELWOOD },
					["races"] = ALLIANCE_ONLY,
					["cr"] = 10648,	-- Xavaric
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						7092,	-- Tainted Ooze
						14345,	-- The Ongar
						7093,	-- Vile Ooze
					},
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				i(15752, {	-- Pattern: Living Leggings (RECIPE!)
					["coords"] = {
						{ 62.6, 12.6, MAP.FELWOOD },
						{ 61.6, 7.4, MAP.FELWOOD },
					},
					["cr"] = 7158,	-- Deadwood Shaman
				}),
				i(15739, {	-- Pattern: Runic Leather Bracers
					["cr"] = 7112,	-- Jaedenar Cultist
				}),
				i(15754, {	-- Pattern: Warbear Woolies (RECIPE!)
					["timeline"] = { REMOVED_1_11_1 },
					["crs"] = {
						7158,	-- Deadwood Shaman
						7156,	-- Deadwood Den Watcher
					},
				}),
				i(15744, {	-- Pattern: Wicked Leather Headband (RECIPE!)
					["cr"] = 7107,	-- Jadefire Trickster
				}),
				i(13491, {	-- Recipe: Elixir of the Mongoose (RECIPE!)
					["coords"] = {
						{ 38.6, 69.6, MAP.FELWOOD },
						{ 33.8, 66.6, MAP.FELWOOD },
					},
					["timeline"] = { ADDED_1_11_1 },	-- ATT Discord 05.09.2023
					["cr"] = 7106,	-- Jadefire Rogue
				}),
			}),
		},
	}),
}));
