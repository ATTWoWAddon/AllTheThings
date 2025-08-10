---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(OHNAHRAN_PLAINS, {
		n(ACHIEVEMENTS, {
			ach(16677, {	-- Adventurer of the Ohn'ahran Plains
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(17562, {	-- Ancient Stones of the Ohn'ahran Plains (automated)
				["timeline"] = { ADDED_10_1_0 },
			}),
			ach(16061, {	-- Dragon Glyphs: Dragonsprings Summit
				["coord"] = { 84.1, 77.4, OHNAHRAN_PLAINS },
			}),
			ach(16056, {	-- Dragon Glyphs: Emerald Gardens
				["coord"] = { 30.0, 61.3, OHNAHRAN_PLAINS },
			}),
			ach(16672, {	-- Dragon Glyphs: Forkriver Crossing
				["coord"] = { 70.1, 86.7, OHNAHRAN_PLAINS },
			}),
			ach(16671, {	-- Dragon Glyphs: Mirewood Fen
				["coord"] = { 78.3, 21.3, OHNAHRAN_PLAINS },
			}),
			ach(16059, {	-- Dragon Glyphs: Mirror of the Sky
				["coord"] = { 47.3, 72.4, OHNAHRAN_PLAINS },
			}),
			ach(16055, {	-- Dragon Glyphs: Nokhudon Hold
				["coord"] = { 30.6, 36.3, OHNAHRAN_PLAINS },
			}),
			ach(16054, {	-- Dragon Glyphs: Ohn'ahra's Roost
				["coord"] = { 58.1, 31.5, OHNAHRAN_PLAINS },
			}),
			ach(16060, {	-- Dragon Glyphs: Ohn'iri Springs
				["coord"] = { 57.2, 80.3, OHNAHRAN_PLAINS },
			}),
			ach(16062, {	-- Dragon Glyphs: Rusza'thar Reach
				["coord"] = { 86.5, 39.4, OHNAHRAN_PLAINS },
			}),
			ach(16058, {	-- Dragon Glyphs: Szar Skeleth
				["coord"] = { 44.6, 64.6, OHNAHRAN_PLAINS },
			}),
			ach(16057, {	-- Dragon Glyphs: The Eternal Kurgans
				["coord"] = { 29.6, 75.4, OHNAHRAN_PLAINS },
			}),
			ach(16063, {	-- Dragon Glyphs: Windsong Rise
				["coord"] = { 61.6, 64.4, OHNAHRAN_PLAINS },
			}),
			ach(16457),	-- Explore the Ohn'ahran Plains
			ach(16423, {	-- Honor Our Ancestors
				["provider"] = { "i", 201323 },	-- 1x Essence of Awakening
				["groups"] = {
					i(200630),	-- Ohn'ir Windsage's Hearthstone (TOY!)
					crit(55302, {	-- Maruukai Ancestor
						["crs"] = { 197048 },	-- Mariq Dotur
						["coord"] = { 59.7, 37.7, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 197776, 1 }, },	-- 1x Thrice-Spiced Mammoth Kabob
					}),
					crit(55303, {	-- Timberstep Outpost Ancestor
						["crs"] = { 197050 },	-- Muqur Swiftshot
						["coord"] = { 84.9, 23.4, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 199934, 1 }, },	-- 1x Enchant Boots - Plainsrunner's Breeze tier 1
					}),
					crit(55304, {	-- Horn of Drusahl Ancestor
						["crs"] = { 197051 },	-- Deritetsin the Carver
						["coord"] = { 75.9, 42.1, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 194690, 1 }, },	-- 1x Horn o' Mead
					}),
					crit(55305, {	-- Toghusuq Village Ancestor
						["crs"] = { 197052 },	-- Faraqseng Khan
						["coord"] = { 73.0, 55.0, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 202070, 1 }, },	-- 1x Exceptional Pelt
					}),
					crit(55306, {	-- Shikaar Highlands Ancestor
						["crs"] = { 197053 },	-- Shikari Khan
						["coord"] = { 84.6, 48.4, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 193470, 1 }, },	-- 1x Feral Hide Drums
					}),
					crit(55307, {	-- The Carving Winds Ancestor
						["crs"] = { 197054 },	-- Himia, the Blessed
						["coord"] = { 74.7, 69.8, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 190327, 1 }, },	-- 1x Awakened Air
					}),
					crit(55308, {	-- Sylvan Glade Ancestor
						["crs"] = { 197055 },	-- Talis
						["coord"] = { 63.3, 57.3, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 197788, 2 }, },	-- 2x Braised Bruffalon Brisket
					}),
					crit(55309, {	-- Ohn'iri Springs Ancestor
						["crs"] = { 197056 },	-- Ohn Kanosung
						["coord"] = { 54.7, 78.4, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 202071, 1 }, },	-- 1x Elemental Mote
					}),
					crit(55310, {	-- Teerakai Ancestor
						["crs"] = { 197057 },	-- Jhakan Khan
						["coord"] = { 41.6, 56.7, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 199049, 1 }, },	-- 1x Fire-Blessed Greatsword
					}),
					crit(55311, {	-- The Eternal Kurgans Ancestor
						["crs"] = { 197058 },	-- Dihar the Unyielding
						["coord"] = { 32.8, 70.3, OHNAHRAN_PLAINS },
						["cost"] = { { "i", 191471, 5 }, },	-- 5x Writhebark tier 2
					}),
				},
			}),
			ach(16583, {	-- Knew You Nokhud Do It!
				["crs"] = { 197884 },	-- Training Master Turasa
				["provider"] = { "i", 200201 },	-- Nokhud Battlegear
				["coord"] = { 34.6, 34.6, OHNAHRAN_PLAINS },
			}),
			ach(16576, {	-- Ohn'ahran Plains Glyph Hunter
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					16061,	-- Dragon Glyphs: Dragonsprings Summit
					16056,	-- Dragon Glyphs: Emerald Gardens
					16059,	-- Dragon Glyphs: Mirror of the Sky
					16055,	-- Dragon Glyphs: Nokhudon Hold
					16054,	-- Dragon Glyphs: Ohn'ahra's Roost
					16060,	-- Dragon Glyphs: Ohn'iri Springs
					16670,	-- Dragon Glyphs: Rubyscale Outpost
					16062,	-- Dragon Glyphs: Rusza'thar Reach
					16058,	-- Dragon Glyphs: Szar Skeleth
					16057,	-- Dragon Glyphs: The Eternal Kurgans
					16063,	-- Dragon Glyphs: Windsong Rise
				}},
			}),
			ach(15394, {	-- Ohn'a'Roll
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16574, {	-- Sleeping on the Job
				crit(55776, {	-- Dreamguard Felyasra
					["crs"] = { 198064 },	-- Dreamguard Felyasra
					["coord"] = { 33.5, 53.2, OHNAHRAN_PLAINS },
				}),
				crit(55777, {	-- Dreamguard Erezsra
					["crs"] = { 198068 },	-- Dreamguard Erezsra
					["coord"] = { 29.9, 62.2, OHNAHRAN_PLAINS },
				}),
				crit(55778, {	-- Dreamguard Sayliasra
					["crs"] = { 198069 },	-- Dreamguard Sayliasra
					["coord"] = { 25.3, 65.4, OHNAHRAN_PLAINS },
				}),
				crit(55779, {	-- Dreamguard Aiyelasra
					["crs"] = { 198074 },	-- Dreamguard Aiyelasra
					["coord"] = { 18.0, 53.8, OHNAHRAN_PLAINS },
				}),
				crit(55780, {	-- Dreamguard Lucidra
					["crs"] = { 198073 },	-- Dreamguard Lucidra
					["coord"] = { 19.1, 82.9, OHNAHRAN_PLAINS },
				}),
				crit(55781, {	-- Dreamguard Taelyasra
					["crs"] = { 198075 },	-- Dreamguard Taelyasra
					["coord"] = { 29.4, 41.5, OHNAHRAN_PLAINS },
				}),
			}),
			ach(16405, {	-- Sojourner of Ohn'ahran Plains
				["sym"] = {{ "achievement_criteria" }},
			}),
			pvp(ach(16595)),	-- Tour of Duty: Ohn'ahran Plains
			ach(16299, {	-- Treasures of the Ohn'ahran Plains
				["sym"] = {{ "achievement_criteria" }},
			}),
			ach(16424, {	-- Who's a Good Bakar?
				crit(55348, {	-- Alli
					["crs"] = { 197569 },	-- Alli
					["coord"] = { 40.9, 56.6, OHNAHRAN_PLAINS },
				}),
				crit(55316, {	-- Baba
					["crs"] = { 189274 },	-- Baba
					["coord"] = { 84.3, 24.8, OHNAHRAN_PLAINS },
				}),
				crit(55329, {	-- Baga
					["crs"] = { 196871 },	-- Baga
					["coord"] = { 49.0, 41.1, OHNAHRAN_PLAINS },
				}),
				crit(55326, {	-- Berrel
					["crs"] = { 195669 },	-- Berrel
					["coord"] = { 60.6, 39.9, OHNAHRAN_PLAINS },
				}),
				crit(55317, {	-- Elaichi
					["crs"] = { 187840 },	-- Elaichi
					["coord"] = { 85.1, 22.5, OHNAHRAN_PLAINS },
				}),
				crit(55321, {	-- Ellam
					["description"] = "Only available while the Daily Quest Counting Argali(66698) is up.",
					["crs"] = { 187667 },	-- Ellam
					["coord"] = { 76.7, 30.5, OHNAHRAN_PLAINS },
				}),
				crit(55315, {	-- Fogl
					["crs"] = { 189387 },	-- Fogl
					["coord"] = { 84.6, 24.6, OHNAHRAN_PLAINS },
				}),
				crit(55320, {	-- Gentara
					["crs"] = { 186189 },	-- Gentara
					["coord"] = { 83.9, 25.9, OHNAHRAN_PLAINS },
				}),
				crit(55327, {	-- Hugo
					["description"] = "Only available where camp is at.",
					["crs"] = { 189377 },	-- Hugo
					["coord"] = { 70.6, 63.6, OHNAHRAN_PLAINS },
				}),
				crit(55323, {	-- Katei
					["crs"] = { 196650 },	-- Katei
					["coord"] = { 64.0, 41.2, OHNAHRAN_PLAINS },
				}),
				crit(55331, {	-- Laila
					["crs"] = { 190043 },	-- Laila/Redfur
					["coord"] = { 80.7, 58.9, OHNAHRAN_PLAINS },
				}),
				crit(55328, {	-- Nahma
					["crs"] = { 192687 },	-- Nahma
					["coord"] = { 61.0, 52.3, OHNAHRAN_PLAINS },
				}),
				crit(55319, {	-- Pesca
					["crs"] = { 189278 },	-- Pesca
					["coord"] = { 84.2, 27.1, OHNAHRAN_PLAINS },
				}),
				crit(55330, {	-- Rotti
					["crs"] = { 191405 },	-- Rotti
					["coord"] = { 81.1, 58.4, OHNAHRAN_PLAINS },
				}),
				crit(55347, {	-- Soyoo
					["crs"] = { 197514 },	-- Soyoo
					["coord"] = { 71.6, 49.7, OHNAHRAN_PLAINS },
					["description"] = "This good bakar won't show up until you start |cffffff00The Trouble with Taivan|r.",
				}),
				crit(55325, {	-- Taivan
					["crs"] = { 197518 },	-- Taivan
					["coord"] = { 61.8, 38.7, OHNAHRAN_PLAINS },
					["description"] = "This good (large) bakar will be unavailable to pet until completing |cffffff00Taivan's Purpose|r.",
				}),
				crit(55318, {	-- Tseg
					["crs"] = { 189276 },	-- Tseg
					["coord"] = { 84.1, 22.9, OHNAHRAN_PLAINS },
				}),
				crit(55322, {	-- Vinyu
					["crs"] = { 196651 },	-- Vinyu
					["coord"] = { 64.0, 41.2, OHNAHRAN_PLAINS },
				}),
				crit(55324, {	-- Wish
					["crs"] = { 191408 },	-- Wish
					["coord"] = { 81.0, 59.5, OHNAHRAN_PLAINS },
				}),
				crit(55314, {	-- Zephyr
					["crs"] = { 189388 },	-- Zephyr
					["coord"] = { 84.6, 24.6, OHNAHRAN_PLAINS },
				}),
			}),
		}),
	}),
})));
-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
-- 	m(DRAGON_ISLES, {
-- 		m(OHNAHRAN_PLAINS, {
-- 			n(ACHIEVEMENTS, {
-- 				-- Achievement Honor Our Ancestors
-- 				q(71167, name(HEADERS.AchCriteria, 16423.01)),	-- Maruukai Ancestor (spellID 390535)
-- 				q(71168, name(HEADERS.AchCriteria, 16423.02)),	-- Timberstep Outpost Ancestor (spellID 390536)
-- 				q(71169, name(HEADERS.AchCriteria, 16423.03)),	-- Horn of Drusahl Ancestor (spellID 390538)
-- 				q(71170, name(HEADERS.AchCriteria, 16423.04)),	-- Toghusuq Village Ancestor (spellID 390539)
-- 				q(71171, name(HEADERS.AchCriteria, 16423.05)),	-- Shikaar Highlands Ancestor (spellID 390544)
-- 				q(71172, name(HEADERS.AchCriteria, 16423.06)),	-- The Carving Winds Ancestor (spellID 390545)
-- 				q(71173, name(HEADERS.AchCriteria, 16423.07)),	-- Sylvan Glade Ancestor (spellID 390547)
-- 				q(71174, name(HEADERS.AchCriteria, 16423.08)),	-- Ohn'iri Springs Ancestor (spellID 390549)
-- 				q(71175, name(HEADERS.AchCriteria, 16423.09)),	-- Teerakai Ancestor (spellID 390551)
-- 				q(71176, name(HEADERS.AchCriteria, 16423.10)),	-- The Eternal Kurgans Ancestor (spellID 390553)
-- 			}),
-- 		}),
-- 	}),
-- })));
