-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WOD, {
	n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
		n(BUILDINGS, {
			garrisonBuilding(161, pvp({	-- Gladiator's Sanctum (rank 1: 159, rank 2: 160, rank 3: 161)
				n(ACHIEVEMENTS, {
					ach(9495, {		-- The Bone Collector
						["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
						["g"] = {
							i(111981),		-- Gladiator's Sanctum, Level 3 [Blueprints]
						},
					}),
					ach(9725, {	-- The Last of Us
						--title_gendered(302, 303),	-- Lord of War / Lady of War
						title_male(302),	-- Lord of War
						title_female(303),	-- Lady of War
					}),
					ach(9738, {	-- Warlord of Draenor (Alliance) achievements used instead of criteria as criteria are behaving strangely with debug mode on
						["races"] = ALLIANCE_ONLY,
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							9639,	-- Fight, Kill, Salute!
							9522,	-- Nemesis: Troll Hunter
							9521,	-- Nemesis: The Butcher
							9520,	-- Nemesis: Huojin's Fall
							9519,	-- Nemesis: Orcslayer
							9518,	-- Nemesis: Killer of Kezan
							9517,	-- Nemesis: Death Stalker
							9516,	-- Nemesis: Slayer of Sin'dorei
						}},
						["g"] = {
							title(269),	-- , Warlord of Draenor
						},
					}),
					ach(9508, {	-- Warlord of Draenor (Horde) achievements used instead of criteria as criteria are behaving strangely with debug mode on
						["races"] = HORDE_ONLY,
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							9639,	-- Fight, Kill, Salute!
							9515,	-- Nemesis: Worgen Hunter
							9514,	-- Nemesis: Terror of the Tushui
							9513,	-- Nemesis: Scourge of the Kaldorei
							9512,	-- Nemesis: Manslayer
							9511,	-- Nemesis: Gnomebane
							9510,	-- Nemesis: Dwarfstalker
							9509,	-- Nemesis: Draenei Destroyer
						}},
						["g"] = {
							title(269),	-- , Warlord of Draenor
						},
					}),
				}),
				n(QUESTS, {
					q(37082),	-- Call of the Gladiator
					q(37083, {	-- Fight, Kill, Salute!
						["sourceQuest"] = 37082,	-- Call of the Gladiator
						["g"] = {
							ach(9639),	-- Fight, Kill, Salute!
							i(119219, {	-- Warlord's Flag of Victory (TOY!)
								["description"] = "Requires being the last player alive in the coliseum.",
							}),
							i(120142, {	-- Coliseum Champion's Spoils
								i(119217),	-- Alliance Flag of Victory (TOY!)
								i(119218),	-- Horde Flag of Victory (TOY!)
							}),
						},
					}),
				}),
				-- Alliance Quests
				n(QUESTS, bubbleDown({
					["races"] = ALLIANCE_ONLY,
				}, sharedData({
					["provider"] = { "n", 86677 },	-- Kuros
				},{
					q(36957),	-- Nemesis: Becoming Death (Blood Elf)
					q(36959),	-- Nemesis: Becoming Death (Forsaken)
					q(36969),	-- Nemesis: Becoming Death (Goblin)
					q(36963),	-- Nemesis: Becoming Death (Orc)
					q(36967),	-- Nemesis: Becoming Death (Pandaren)
					q(36961),	-- Nemesis: Becoming Death (Tauren)
					q(36965),	-- Nemesis: Becoming Death (Troll)
					q(36960, {	-- Nemesis: Death Stalker
						["sourceQuest"] = 36959,	-- Nemesis: Becoming Death (Forsaken)
						["g"] = {
							ach(9517, {	-- Nemesis: Death Stalker
								title(272),	-- the Death Stalker
							}),
						},
					}),
					q(36968, {	-- Nemesis: Huojin's Fall
						["sourceQuest"] = 36967,	-- Nemesis: Becoming Death (Pandaren)
						["g"] = {
							ach(9520, {	-- Nemesis: Huojin's Fall
								title(276),	-- , Huojin's Fall
							}),
						},
					}),
					q(36970, {	-- Nemesis: Killer of Kezan
						["sourceQuest"] = 36969,	-- Nemesis: Becoming Death (Goblin)
						["g"] = {
							ach(9518, {	-- Nemesis: Killer of Kezan
								title(273),	-- , Killer of Kezan
							}),
						},
					}),
					q(36964, {	-- Nemesis: Orcslayer
						["sourceQuest"] = 36963,	-- Nemesis: Becoming Death (Orc)
						["g"] = {
							ach(9519, {	-- Nemesis: Orcslayer
								title(271),	-- Orcslayer
							}),
						},
					}),
					q(36958, {	-- Nemesis: Slayer of Sin'dorei
						["sourceQuest"] = 36957,	-- Nemesis: Becoming Death (Blood Elf)
						["g"] = {
							ach(9516, {	-- Nemesis: Slayer of Sin'dorei
								title(275),	-- , Slayer of Sin'dorei
							}),
						},
					}),
					q(36962, {	-- Nemesis: The Butcher
						["sourceQuest"] = 36961,	-- Nemesis: Becoming Death (Tauren)
						["g"] = {
							ach(9521, {	-- Nemesis: The Butcher
								title(270),	-- the Butcher
							}),
						},
					}),
					q(36966, {	-- Nemesis: Troll Hunter
						["sourceQuest"] = 36965,	-- Nemesis: Becoming Death (Troll)
						["g"] = {
							ach(9522, {	-- Nemesis: Troll Hunter
								title(274),	-- Troll Hunter
							}),
						},
					}),
					q(36955, {	-- Nemesis: Hunter - Hunted
						["sourceQuest"] = 36876,	-- Warlord of Draenor
						["isRepeatable"] = true,
					}),
					q(36876),	-- Warlord of Draenor
				}))),
				-- Horde Quests
				n(QUESTS, bubbleDown({
					["races"] = HORDE_ONLY,
				}, sharedData({
					["provider"] = { "n", 86629 },	-- Raza'kul
				},{
					q(36929),	-- Nemesis: Becoming Death (Draenei)
					q(36923),	-- Nemesis: Becoming Death (Dwarf)
					q(36925),	-- Nemesis: Becoming Death (Gnome)
					q(36897),	-- Nemesis: Becoming Death (Human)
					q(36931),	-- Nemesis: Becoming Death (Night Elf)
					q(36933),	-- Nemesis: Becoming Death (Pandaren)
					q(36927),	-- Nemesis: Becoming Death (Worgen)
					q(36930, {	-- Nemesis: Draenei Destroyer
						["sourceQuest"] = 36929,	-- Nemesis: Becoming Death (Draenei)
						["g"] = {
							ach(9509, {	-- Nemesis: Draenei Destroyer
								title(267),	-- , Draenei Destroyer
							}),
						},
					}),
					q(36924, {	-- Nemesis: Dwarfstalker
						["sourceQuest"] = 36923,	-- Nemesis: Becoming Death (Dwarf)
						["g"] = {
							ach(9510, {	-- Nemesis: Dwarfstalker
								title(264),	-- the Dwarfstalker
							}),
						},
					}),
					q(36926, {	-- Nemesis: Gnomebane
						["sourceQuest"] = 36925,	-- Nemesis: Becoming Death (Gnome)
						["g"] = {
							ach(9511, {	-- Nemesis: Gnomebane
								title(263),	-- Gnomebane
							}),
						},
					}),
					q(36921, {	-- Nemesis: Manslayer
						["sourceQuest"] = 36897,	-- Nemesis: Becoming Death (Human)
						["g"] = {
							ach(9512, {	-- Nemesis: Manslayer
								title(262),	-- the Manslayer
							}),
						},
					}),
					q(36932, {	-- Nemesis: Scourge of the Kaldorei
						["sourceQuest"] = 36931,	-- Nemesis: Becoming Death (Night Elf)
						["g"] = {
							ach(9513, {	-- Nemesis: Scourge of the Kaldorei
								title(266),	-- , Scourge of the Kaldorei
							}),
						},
					}),
					q(36934, {	-- Nemesis: Terror of the Tushui
						["sourceQuest"] = 36933,	-- Nemesis: Becoming Death (Pandaren)
						["g"] = {
							ach(9514, {	-- Nemesis: Terror of the Tushui
								title(268),	-- , Terror of the Tushui
							}),
						},
					}),
					q(36928, {	-- Nemesis: Worgen Hunter
						["sourceQuest"] = 36927,	-- Nemesis: Becoming Death (Worgen)
						["g"] = {
							ach(9515, {	-- Nemesis: Worgen Hunter
								title(265),	-- Worgen Hunter
							}),
						},
					}),
					q(36889, {	-- Nemesis: Hunter - Hunted
						["sourceQuest"] = 36874,	-- Warlord of Draenor
						["isRepeatable"] = true,
					}),
					q(36874),	-- Warlord of Draenor
				}))),
				n(WORK_ORDERS, {
					n(86639, {	-- Altar of Bones
						i(118043, {	-- Broken Bones
							n(PVP_ASPIRANT, {
								cl(DEATHKNIGHT, {
									i(126184),	-- Warmongering Aspirant's Dreadplate Chestpiece (A)
									i(126185),	-- Warmongering Aspirant's Dreadplate Gauntlets (A)
									i(126186),	-- Warmongering Aspirant's Dreadplate Helm (A)
									i(126187),	-- Warmongering Aspirant's Dreadplate Legguards (A)
									i(126188),	-- Warmongering Aspirant's Dreadplate Shoulders (A)
									i(126661),	-- Warmongering Aspirant's Dreadplate Chestpiece (H)
									i(126662),	-- Warmongering Aspirant's Dreadplate Gauntlets (H)
									i(126663),	-- Warmongering Aspirant's Dreadplate Helm (H)
									i(126664),	-- Warmongering Aspirant's Dreadplate Legguards (H)
									i(126665),	-- Warmongering Aspirant's Dreadplate Shoulders (H)
								}),
								cl(DRUID, {
									i(126189),	-- Warmongering Aspirant's Dragonhide Gloves (A)
									i(126190),	-- Warmongering Aspirant's Dragonhide Helm (A)
									i(126191),	-- Warmongering Aspirant's Dragonhide Legguards (A)
									i(126193),	-- Warmongering Aspirant's Dragonhide Spaulders (A)
									i(126192),	-- Warmongering Aspirant's Dragonhide Tunic (A)
									i(126666),	-- Warmongering Aspirant's Dragonhide Gloves (H)
									i(126667),	-- Warmongering Aspirant's Dragonhide Helm (H)
									i(126668),	-- Warmongering Aspirant's Dragonhide Legguards (H)
									i(126670),	-- Warmongering Aspirant's Dragonhide Spaulders (H)
									i(126669),	-- Warmongering Aspirant's Dragonhide Tunic (H)
								}),
								cl(HUNTER, {
									i(126194),	-- Warmongering Aspirant's Chain Armor (A)
									i(126195),	-- Warmongering Aspirant's Chain Gauntlets (A)
									i(126196),	-- Warmongering Aspirant's Chain Helm (A)
									i(126197),	-- Warmongering Aspirant's Chain Leggings (A)
									i(126198),	-- Warmongering Aspirant's Chain Spaulders (A)
									i(126671),	-- Warmongering Aspirant's Chain Armor (H)
									i(126672),	-- Warmongering Aspirant's Chain Gauntlets (H)
									i(126673),	-- Warmongering Aspirant's Chain Helm (H)
									i(126674),	-- Warmongering Aspirant's Chain Leggings (H)
									i(126675),	-- Warmongering Aspirant's Chain Spaulders (H)
								}),
								cl(MAGE, {
									i(126214),	-- Warmongering Aspirant's Silk Amice (A)
									i(126211),	-- Warmongering Aspirant's Silk Cowl (A)
									i(126210),	-- Warmongering Aspirant's Silk Handguards (A)
									i(126213),	-- Warmongering Aspirant's Silk Robe (A)
									i(126212),	-- Warmongering Aspirant's Silk Trousers (A)
									i(126691),	-- Warmongering Aspirant's Silk Amice (H)
									i(126688),	-- Warmongering Aspirant's Silk Cowl (H)
									i(126687),	-- Warmongering Aspirant's Silk Handguards (H)
									i(126690),	-- Warmongering Aspirant's Silk Robe (H)
									i(126689),	-- Warmongering Aspirant's Silk Trousers (H)
								}),
								cl(MONK, {
									i(126218),	-- Warmongering Aspirant's Ironskin Gloves (A)
									i(126219),	-- Warmongering Aspirant's Ironskin Helm (A)
									i(126220),	-- Warmongering Aspirant's Ironskin Legguards (A)
									i(126221),	-- Warmongering Aspirant's Ironskin Spaulders (A)
									i(126222),	-- Warmongering Aspirant's Ironskin Tunic (A)
									i(126695),	-- Warmongering Aspirant's Ironskin Gloves (H)
									i(126696),	-- Warmongering Aspirant's Ironskin Helm (H)
									i(126697),	-- Warmongering Aspirant's Ironskin Legguards (H)
									i(126698),	-- Warmongering Aspirant's Ironskin Spaulders (H)
									i(126699),	-- Warmongering Aspirant's Ironskin Tunic (H)
								}),
								cl(PALADIN, {
									i(126223),	-- Warmongering Aspirant's Scaled Chestpiece (A)
									i(126224),	-- Warmongering Aspirant's Scaled Gauntlets (A)
									i(126225),	-- Warmongering Aspirant's Scaled Helm (A)
									i(126226),	-- Warmongering Aspirant's Scaled Legguards (A)
									i(126227),	-- Warmongering Aspirant's Scaled Shoulders (A)
									i(126700),	-- Warmongering Aspirant's Scaled Chestpiece (H)
									i(126701),	-- Warmongering Aspirant's Scaled Gauntlets (H)
									i(126702),	-- Warmongering Aspirant's Scaled Helm (H)
									i(126703),	-- Warmongering Aspirant's Scaled Legguards (H)
									i(126704),	-- Warmongering Aspirant's Scaled Shoulders (H)
								}),
								cl(PRIEST, {
									i(126231),	-- Warmongering Aspirant's Satin Gloves (A)
									i(126232),	-- Warmongering Aspirant's Satin Hood (A)
									i(126233),	-- Warmongering Aspirant's Satin Leggings (A)
									i(126235),	-- Warmongering Aspirant's Satin Mantle (A)
									i(126234),	-- Warmongering Aspirant's Satin Robe (A)
									i(126708),	-- Warmongering Aspirant's Satin Gloves (H)
									i(126709),	-- Warmongering Aspirant's Satin Hood (H)
									i(126710),	-- Warmongering Aspirant's Satin Leggings (H)
									i(126712),	-- Warmongering Aspirant's Satin Mantle (H)
									i(126711),	-- Warmongering Aspirant's Satin Robe (H)
								}),
								cl(ROGUE, {
									i(126237),	-- Warmongering Aspirant's Leather Gloves (A)
									i(126238),	-- Warmongering Aspirant's Leather Helm (A)
									i(126239),	-- Warmongering Aspirant's Leather Legguards (A)
									i(126240),	-- Warmongering Aspirant's Leather Spaulders (A)
									i(126236),	-- Warmongering Aspirant's Leather Tunic (A)
									i(126714),	-- Warmongering Aspirant's Leather Gloves (H)
									i(126715),	-- Warmongering Aspirant's Leather Helm (H)
									i(126716),	-- Warmongering Aspirant's Leather Legguards (H)
									i(126717),	-- Warmongering Aspirant's Leather Spaulders (H)
									i(126713),	-- Warmongering Aspirant's Leather Tunic (H)
								}),
								cl(SHAMAN, {
									i(126241),	-- Warmongering Aspirant's Ringmail Armor (A)
									i(126242),	-- Warmongering Aspirant's Ringmail Gauntlets (A)
									i(126243),	-- Warmongering Aspirant's Ringmail Helm (A)
									i(126244),	-- Warmongering Aspirant's Ringmail Leggings (A)
									i(126245),	-- Warmongering Aspirant's Ringmail Spaulders (A)
									i(126718),	-- Warmongering Aspirant's Ringmail Armor (H)
									i(126719),	-- Warmongering Aspirant's Ringmail Gauntlets (H)
									i(126720),	-- Warmongering Aspirant's Ringmail Helm (H)
									i(126721),	-- Warmongering Aspirant's Ringmail Leggings (H)
									i(126722),	-- Warmongering Aspirant's Ringmail Spaulders (H)
								}),
								cl(WARLOCK, {
									i(126262),	-- Warmongering Aspirant's Felweave Amice (A)
									i(126259),	-- Warmongering Aspirant's Felweave Cowl (A)
									i(126258),	-- Warmongering Aspirant's Felweave Handguards (A)
									i(126261),	-- Warmongering Aspirant's Felweave Raiment (A)
									i(126260),	-- Warmongering Aspirant's Felweave Trousers (A)
									i(126739),	-- Warmongering Aspirant's Felweave Amice (H)
									i(126736),	-- Warmongering Aspirant's Felweave Cowl (H)
									i(126735),	-- Warmongering Aspirant's Felweave Handguards (H)
									i(126738),	-- Warmongering Aspirant's Felweave Raiment (H)
									i(126737),	-- Warmongering Aspirant's Felweave Trousers (H)
								}),
								cl(WARRIOR, {
									i(126263),	-- Warmongering Aspirant's Plate Chestpiece (A)
									i(126264),	-- Warmongering Aspirant's Plate Gauntlets (A)
									i(126265),	-- Warmongering Aspirant's Plate Helm (A)
									i(126266),	-- Warmongering Aspirant's Plate Legguards (A)
									i(126267),	-- Warmongering Aspirant's Plate Shoulders (A)
									i(126740),	-- Warmongering Aspirant's Plate Chestpiece (H)
									i(126741),	-- Warmongering Aspirant's Plate Gauntlets (H)
									i(126742),	-- Warmongering Aspirant's Plate Helm (H)
									i(126743),	-- Warmongering Aspirant's Plate Legguards (H)
									i(126744),	-- Warmongering Aspirant's Plate Shoulders (H)
								}),
								n(BACK, {
									i(126177),	-- Warmongering Aspirant's Cape of Cruelty (A)
									i(126246),	-- Warmongering Aspirant's Cloak of Cruelty (A)
									i(126249),	-- Warmongering Aspirant's Cloak of Endurance (A)
									i(126199),	-- Warmongering Aspirant's Drape of Cruelty (A)
									i(126200),	-- Warmongering Aspirant's Drape of Meditation (A)
									i(126654),	-- Warmongering Aspirant's Cape of Cruelty (H)
									i(126723),	-- Warmongering Aspirant's Cloak of Cruelty (H)
									i(126726),	-- Warmongering Aspirant's Cloak of Endurance (H)
									i(126676),	-- Warmongering Aspirant's Drape of Cruelty (H)
									i(126677),	-- Warmongering Aspirant's Drape of Meditation (H)
								}),
								n(WRIST, {
									i(126217),	-- Warmongering Aspirant's Armbands of Prowess (A)
									i(126230),	-- Warmongering Aspirant's Armplates of Cruelty (A)
									i(126209),	-- Warmongering Aspirant's Bindings of Cruelty (A)
									i(126183),	-- Warmongering Aspirant's Cuffs of Prowess (A)
									i(126694),	-- Warmongering Aspirant's Armbands of Prowess (H)
									i(126707),	-- Warmongering Aspirant's Armplates of Cruelty (H)
									i(126686),	-- Warmongering Aspirant's Bindings of Cruelty (H)
									i(126660),	-- Warmongering Aspirant's Cuffs of Prowess (H)
								}),
								n(WAIST, {
									i(126207),	-- Warmongering Aspirant's Belt of Prowess (A)
									i(126181),	-- Warmongering Aspirant's Cord of Cruelty (A)
									i(126228),	-- Warmongering Aspirant's Girdle of Cruelty (A)
									i(126215),	-- Warmongering Aspirant's Waistguard of Cruelty (A)
									i(126684),	-- Warmongering Aspirant's Belt of Prowess (H)
									i(126658),	-- Warmongering Aspirant's Cord of Cruelty (H)
									i(126705),	-- Warmongering Aspirant's Girdle of Cruelty (H)
									i(126692),	-- Warmongering Aspirant's Waistguard of Cruelty (H)
								}),
								n(FEET, {
									i(126208),	-- Warmongering Aspirant's Boots of Cruelty (A)
									i(126216),	-- Warmongering Aspirant's Footguards of Cruelty (A)
									i(126182),	-- Warmongering Aspirant's Treads of Cruelty (A)
									i(126229),	-- Warmongering Aspirant's Warboots of Cruelty (A)
									i(126685),	-- Warmongering Aspirant's Boots of Cruelty (H)
									i(126693),	-- Warmongering Aspirant's Footguards of Cruelty (H)
									i(126659),	-- Warmongering Aspirant's Treads of Cruelty (H)
									i(126706),	-- Warmongering Aspirant's Warboots of Cruelty (H)
								}),
								n(NECK, {
									i(126247),	-- Warmongering Aspirant's Choker of Cruelty (A)
									i(126250),	-- Warmongering Aspirant's Choker of Endurance (A)
									i(126178),	-- Warmongering Aspirant's Necklace of Cruelty (A)
									i(126201),	-- Warmongering Aspirant's Pendant of Cruelty (A)
									i(126202),	-- Warmongering Aspirant's Pendant of Meditation (A)
									i(126724),	-- Warmongering Aspirant's Choker of Cruelty (H)
									i(126727),	-- Warmongering Aspirant's Choker of Endurance (H)
									i(126655),	-- Warmongering Aspirant's Necklace of Cruelty (H)
									i(126678),	-- Warmongering Aspirant's Pendant of Cruelty (H)
									i(126679),	-- Warmongering Aspirant's Pendant of Meditation (H)
								}),
								n(FINGER, {
									i(126206),	-- Warmongering Aspirant's Band of Contemplation (A)
									i(126203),	-- Warmongering Aspirant's Band of Cruelty (A)
									i(126205),	-- Warmongering Aspirant's Band of Meditation (A)
									i(126204),	-- Warmongering Aspirant's Band of Prowess (A)
									i(126179),	-- Warmongering Aspirant's Ring of Cruelty (A)
									i(126180),	-- Warmongering Aspirant's Ring of Prowess (A)
									i(127120),	-- Warmongering Aspirant's Signet of Accuracy (A)
									i(126248),	-- Warmongering Aspirant's Signet of Cruelty (A)
									i(126251),	-- Warmongering Aspirant's Signet of Dedication (A)
									i(126252),	-- Warmongering Aspirant's Signet of Endurance (A)
									i(126683),	-- Warmongering Aspirant's Band of Contemplation (H)
									i(126680),	-- Warmongering Aspirant's Band of Cruelty (H)
									i(126682),	-- Warmongering Aspirant's Band of Meditation (H)
									i(126681),	-- Warmongering Aspirant's Band of Prowess (H)
									i(126656),	-- Warmongering Aspirant's Ring of Cruelty (H)
									i(126657),	-- Warmongering Aspirant's Ring of Prowess (H)
									i(127121),	-- Warmongering Aspirant's Signet of Accuracy (H)
									i(126725),	-- Warmongering Aspirant's Signet of Cruelty (H)
									i(126728),	-- Warmongering Aspirant's Signet of Dedication (H)
									i(126729),	-- Warmongering Aspirant's Signet of Endurance (H)
								}),
								n(TRINKET, {
									i(126253),	-- Warmongering Aspirant's Accolade of Conquest (A)
									i(126254),	-- Warmongering Aspirant's Accolade of Dominance (A)
									i(126257),	-- Warmongering Aspirant's Accolade of Endurance (A)
									i(126256),	-- Warmongering Aspirant's Accolade of Meditation (A)
									i(126255),	-- Warmongering Aspirant's Accolade of Victory (A)
									i(126730),	-- Warmongering Aspirant's Accolade of Conquest (H)
									i(126731),	-- Warmongering Aspirant's Accolade of Dominance (H)
									i(126734),	-- Warmongering Aspirant's Accolade of Endurance (H)
									i(126733),	-- Warmongering Aspirant's Accolade of Meditation (H)
									i(126732),	-- Warmongering Aspirant's Accolade of Victory (H)
								}),
							}),
						}),
					}),
				}),
			})),
		}),
	})),
}));

root(ROOTS.HiddenQuestTriggers,  expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	n(GARRISONS, {
		n(BUILDINGS, {
			garrisonBuilding(161, pvp({	-- Gladiator's Sanctum (rank 1: 159, rank 2: 160, rank 3: 161)
				q(37294),	-- COLISEUM BOOBY PRIZE FLAG (DAILY RESET)
				q(37283),	-- COLISEUM LOSER FLAG (DAILY RESET)
				q(37255),	-- COLISEUM WINNER FLAG (WEEKLY RESET)
				q(39414),	-- Tracking Quest - Gladiator's Sanctum - Triggers on construction of the gladiator's sanctum (Lunarfall)
				q(36894),	-- Nemesis Flag, Draenei/Blood Elf — burning effigy in the Gladiator Sanctum
				q(36891),	-- Nemesis Flag, Dwarf/Forsaken — burning effigy in the Gladiator Sanctum
				q(36892),	-- Nemesis Flag, Gnome/Tauren — burning effigy in the Gladiator Sanctum
				q(36956),	-- Nemesis Flag, Human — burning effigy in the Gladiator Sanctum
				q(36890),	-- Nemesis Flag, Human/Orc — burning effigy in the Gladiator Sanctum
				q(36893),	-- Nemesis Flag, Night Elf/Troll — burning effigy in the Gladiator Sanctum
				q(36896),	-- Nemesis Flag, Pandaren (A/H) — burning effigy in the Gladiator Sanctum
				q(36895),	-- Nemesis Flag, Worgen/Goblin — burning effigy in the Gladiator Sanctum
			})),
		}),
	}),
})));