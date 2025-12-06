---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(AZSUNA, {
			n(VENDORS, {
				n(89939, {	-- Berazus
					["coord"] = { 47.8, 23.3, AZSUNA },
					["groups"] = {
						i(246864, {	-- Tome of the Lost Dragon (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = { { "c", ORDER_RESOURCES, 1000 } },
						}),
					},
				}),
				n(107139, {	-- Enchantress Ilyana
					["coord"] = { 46.8, 40.8, AZSUNA },
					["groups"] = {
						i(144317),	-- Formula: Enchant Neck - Mark of the Deadly [Rank 1] (RECIPE!)
						i(144308),	-- Formula: Enchant Neck - Mark of the Master [Rank 1] (RECIPE!)
						i(144314),	-- Formula: Enchant Neck - Mark of the Quick [Rank 1] (RECIPE!)
						i(144311),	-- Formula: Enchant Neck - Mark of the Versatile [Rank 1] (RECIPE!)
					},
				}),
				n(102196, {	-- Fargo Flintlocke
					["coord"] = { 43.0, 62.84, AZSUNA },
					["groups"] = {
						i(136630),	-- "Twirling Bottom" Repeater
						i(136632),	-- Chaos Blaster
						i(136629),	-- Felgibber Shotgun
						i(137703, {	-- Schematic: Double-Barreled Cranial Cannon [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(137704, {	-- Schematic: Ironsight Cranial Cannon [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(137702, {	-- Schematic: Sawed-Off Cranial Cannon [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(137701, {	-- Schematic: Semi-Automagic Cranial Cannon [Rank 2] (RECIPE!)
							["sourceQuests"] = { 40882 },	-- Court of Stars: Revamping the Recoil
						}),
						i(136631),	-- Surface-to-Infernal Rocket Launcher
					},
				}),
				n(107963, {	-- Kharmeera
					["coord"] = { 47.2, 26.6, AZSUNA },
					["crs"] = { 99420 },	-- Kharmeera (after completion of Quests)
					["groups"] = sharedData({ ["sourceQuest"] = 39923 }, {	-- Down to the Core
						i(128574, {	-- Formula: Enchant Cloak - Binding of Agility [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124442, 1 } },	-- 1x Chaos Crystal
						}),
						i(128575, {	-- Formula: Enchant Cloak - Binding of Intellect [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124442, 1 } },	-- 1x Chaos Crystal
						}),
						i(128573, {	-- Formula: Enchant Cloak - Binding of Strength [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124442, 1 } },	-- 1x Chaos Crystal
						}),
					}),
				}),
				n(93973, {	-- Leyweaver Phaxondus
					["coord"] = { 29.0, 46.0, AZSUNA },
					["groups"] = {
						i(127023, {	-- Pattern: Imbued Silkweave Epaulets [Rank 1] (RECIPE!)
							["cost"] = { { "i", 124437, 100 }, },	-- 100x Shal'dorei Silk
						}),
					},
				}),
				n(107379, {	-- Marin Bladewing <Wardens Emissary>
					["coord"] = { 48.2, 73.9, AZSUNA },
					["groups"] = bubbleDownClassicRep(FACTION_THE_WARDENS, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
							i(142333, {	-- Manual: Feathered Luffa (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 6000000,		-- 600g
							}),
							i(137713, {	-- Schematic: Bolt-Action Headgun [Rank 3] (RECIPE!)
								["cost"] = 5500000,		-- 550g
							}),
							i(137714, {	-- Schematic: Reinforced Headgun [Rank 3] (RECIPE!)
								["cost"] = 5500000,		-- 550g
							}),
							i(130191),	-- Trapped Treasure Chest Kit (TOY!)
						}, {	-- Revered
							i(140219, {	-- Boon of the Bloodhunter
								["cost"] = 2000000,	-- 200g
								["groups"] = {
									i(140227),	-- Bloodhunter's Quarry
								},
							}),
							i(136898, {	-- Fledgling Warden Owl (PET!)
								["cost"] = 5000000,		-- 500g
							}),
							i(142331, {	-- Recipe: Spiced Falcosaur Omelet (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 10000000,	-- 1,000g
							}),
							i(130157, {	-- Syxsehnz Rod (TOY!)
								["cost"] = 5000000,		-- 500g
							}),
							i(137773, {	-- Vantus Rune Technique: Cenarius [Rank 3] (RECIPE!)
								["cost"] = 20000000,	-- 2,000g
							}),
							i(137777, {	-- Vantus Rune Technique: Spellblade Aluriel [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(137781, {	-- Vantus Rune Technique: Star Augur Etraeus [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(139603, {	-- Vault Patroller's Warboots
								["cost"] = 10000000,	-- 1,000g
							}),
						}, {	-- Exalted
							i(137849, {	-- Design: Twisted Pandemonite Choker [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(139607, {	-- Drape of the Patient Hunter
								["cost"] = 50000000,	-- 5,000g
							}),
							i(137716, {	-- Schematic: Sawed-Off Cranial Cannon [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137715, {	-- Schematic: Semi-Automagic Cranial Cannon [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(140580),	-- Warden's Tabard
						},
					}),
				}),
				n(107376, {	-- Veridis Fallon <Court of Farondis Emissary>
					["coord"] = { 46.9, 41.4, AZSUNA },
					["groups"] = bubbleDownClassicRep(FACTION_COURT_OF_FARONDIS, {
						{		-- Neutral
						}, {	-- Friendly
						}, {	-- Honored
							i(129279),	-- Enchanted Stone Whistle (TOY!)
							i(138015, {	-- Pattern: Silkweave Pantaloons [Rank 3] (RECIPE!)
								["cost"] = 5500000,	-- 550g
							}),
							i(139631, {	-- Vainglorious Draught
								["cost"] = 1500000,	-- 150g
							}),
						}, {	-- Revered
							i(129276, {	-- Beginner's Guide to Dimensional Rifting
								["cost"] = 5000000,	-- 500g
								["groups"] = {
									ach(11175, {	-- Higher Dimensional Learning (Azsuna)
										i(140493),		-- Adept's Guide to Dimensional Rifting
										crit(32196),		-- Beginner's Guide to Dimensional Rifting Ch. 1 - Navigating Through Time
										crit(32197),		-- Beginner's Guide to Dimensional Rifting Ch. 2 - Holy Places to Many
										crit(32198),		-- Beginner's Guide to Dimensional Rifting Ch. 3 - Water, Just Water
										crit(32199),		-- Beginner's Guide to Dimensional Rifting Ch. 4 - Risks and Rewards
										crit(32200),		-- Beginner's Guide to Dimensional Rifting Ch. 5 - Finding Others Along the Way
										crit(32201),		-- Beginner's Guide to Dimensional Rifting Ch. 6 - Pent up Energy
										crit(32202),		-- Beginner's Guide to Dimensional Rifting Ch. 7 - Our Legacy
									}),
								},
							}),
							i(140213, {	-- Boon of the Gemfinder
								["cost"] = 1500000,	-- 150g
							}),
							i(139606, {	-- Cadet's Gaudy Scarf
								["cost"] = 10000000,	-- 1,000g
							}),
							i(140672, {	-- Court Scribe (PET!)
								["cost"] = 5000000,	-- 500g
							}),
							i(139556, {	-- Syriel Crescentfall's Notes: Ravenguard
								["cost"] = 20000000,	-- 2,000g
								["groups"] = {
									artifact(224),	-- Marksmanship Hunter Hidden Appearance
								},
							}),
							i(137779, {	-- Vantus Rune Technique: High Botanist Tel'arn [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(137780, {	-- Vantus Rune Technique: Krosus [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(137774, {	-- Vantus Rune Technique: Skorpyron [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
							i(137776, {	-- Vantus Rune Technique: Trilliax [Rank 3] (RECIPE!)
								["timeline"] = { ADDED_7_1_0 },
								["cost"] = 20000000,	-- 2,000g
							}),
						}, {	-- Exalted
							i(140577),	-- Court of Farondis Tabard
							i(139595, {	-- Once-Fashionable Nar'thalas Leggings
								["cost"] = 50000000,	-- 5,000g
							}),
							i(137978, {	-- Pattern: Imbued Silkweave Gloves [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137977, {	-- Pattern: Imbued Silkweave Hood [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(137980, {	-- Pattern: Imbued Silkweave Robe [Rank 3] (RECIPE!)
								["cost"] = 30000000,	-- 3,000g
							}),
						},
					}),
				}),
			}),
		}),
	}),
});
