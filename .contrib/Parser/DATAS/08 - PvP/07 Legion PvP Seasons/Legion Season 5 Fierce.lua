-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_FIERCE, bubbleDownSelf({
		-- Not the Best Timelining.. /Braghe
		["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2, ADDED_8_0_1_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 } }, {
			ach(12032, {	-- Fierce  Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12031, {	-- Fierce  Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(12036),	-- Challenger: Legion Season 5
			ach(12035),	-- Rival: Legion Season 5
			ach(12034),	-- Duelist: Legion Season 5
			ach(12090),	-- Fierce Elite
			ach(12045, {	-- Gladiator: Legion Season 5
				i(141847),	-- Fierce Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(13450, {	-- Fierce Gladiator's Storm Dragon
				["provider"] = { "i", 141847 },	-- Fierce Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(12010, {	-- Fierce Gladiator: Legion Season 5
				title(363),	-- Fierce Gladiator <Name>
			}),
			-- RBG
			ach(12040, {	-- Soldier of the Alliance: Legion Season 5
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12044, {	-- Soldier of the Horde: Legion Season 5
				["races"] = HORDE_ONLY,
			}),
			ach(12039, {	-- Defender of the Alliance: Legion Season 5
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12043, {	-- Defender of the Horde: Legion Season 5
				["races"] = HORDE_ONLY,
			}),
			ach(12038, {	-- Guardian of the Alliance: Legion Season 5
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12042, {	-- Guardian of the Horde: Legion Season 5
				["races"] = HORDE_ONLY,
			}),
			ach(12037, {	-- Hero of the Alliance: Fierce
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12041, {	-- Hero of the Horde: Fierce
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(12021, {	-- Claws Out
				["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2, ADDED_8_0_1_LAUNCH },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(150252, {	-- Ensemble: Fierce Combatant's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(150255, {	-- Ensemble: Fierce Combatant's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(150250, {	-- Ensemble: Fierce Combatant's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(150264, {	-- Ensemble: Fierce Combatant's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(150271, {	-- Ensemble: Fierce Combatant's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(150259, {	-- Ensemble: Fierce Combatant's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(150268, {	-- Ensemble: Fierce Combatant's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(150263, {	-- Ensemble: Fierce Combatant's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(150260, {	-- Ensemble: Fierce Combatant's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(150249, {	-- Ensemble: Fierce Combatant's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(150257, {	-- Ensemble: Fierce Combatant's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(150267, {	-- Ensemble: Fierce Combatant's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149505),	-- Fierce Combatant's Dreadcloak [A]
						i(149529),	-- Fierce Combatant's Dreadplate Chestpiece [A]
						i(149533),	-- Fierce Combatant's Dreadplate Gauntlets [A]
						i(149541),	-- Fierce Combatant's Dreadplate Girdle [A]
						i(149535),	-- Fierce Combatant's Dreadplate Helm [A]
						i(149537),	-- Fierce Combatant's Dreadplate Legguards [A]
						i(149531),	-- Fierce Combatant's Dreadplate Sabatons [A]
						i(149539),	-- Fierce Combatant's Dreadplate Shoulders [A]
						i(149543),	-- Fierce Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(149507),	-- Fierce Combatant's Demonthread Cloak [A]
						i(149557),	-- Fierce Combatant's Felskin Belt [A]
						i(149547),	-- Fierce Combatant's Felskin Boots [A]
						i(149549),	-- Fierce Combatant's Felskin Gloves [A]
						i(149551),	-- Fierce Combatant's Felskin Helm [A]
						i(149553),	-- Fierce Combatant's Felskin Legguards [A]
						i(149555),	-- Fierce Combatant's Felskin Spaulders [A]
						i(149545),	-- Fierce Combatant's Felskin Tunic [A]
						i(149559),	-- Fierce Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(149573),	-- Fierce Combatant's Dragonhide Belt [A]
						i(149509),	-- Fierce Combatant's Dragonhide Cloak [A]
						i(149565),	-- Fierce Combatant's Dragonhide Gloves [A]
						i(149567),	-- Fierce Combatant's Dragonhide Helm [A]
						i(149569),	-- Fierce Combatant's Dragonhide Legguards [A]
						i(149563),	-- Fierce Combatant's Dragonhide Moccasins [A]
						i(149571),	-- Fierce Combatant's Dragonhide Spaulders [A]
						i(149561),	-- Fierce Combatant's Dragonhide Tunic [A]
						i(149576),	-- Fierce Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(149592),	-- Fierce Combatant's Chain Armband [A]
						i(149578),	-- Fierce Combatant's Chain Armor [A]
						i(149590),	-- Fierce Combatant's Chain Clasp [A]
						i(149582),	-- Fierce Combatant's Chain Gauntlets [A]
						i(149584),	-- Fierce Combatant's Chain Helm [A]
						i(149586),	-- Fierce Combatant's Chain Leggings [A]
						i(149588),	-- Fierce Combatant's Chain Spaulders [A]
						i(149580),	-- Fierce Combatant's Chain Treads [A]
						i(149511),	-- Fierce Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(149604),	-- Fierce Combatant's Silk Amice [A]
						i(149608),	-- Fierce Combatant's Silk Bracers [A]
						i(149606),	-- Fierce Combatant's Silk Cord [A]
						i(149598),	-- Fierce Combatant's Silk Cowl [A]
						i(149596),	-- Fierce Combatant's Silk Handguards [A]
						i(149602),	-- Fierce Combatant's Silk Robe [A]
						i(149594),	-- Fierce Combatant's Silk Treads [A]
						i(149600),	-- Fierce Combatant's Silk Trousers [A]
						i(149513),	-- Fierce Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(149622),	-- Fierce Combatant's Ironskin Belt [A]
						i(149515),	-- Fierce Combatant's Ironskin Cloak [A]
						i(149612),	-- Fierce Combatant's Ironskin Gloves [A]
						i(149614),	-- Fierce Combatant's Ironskin Helm [A]
						i(149616),	-- Fierce Combatant's Ironskin Legguards [A]
						i(149610),	-- Fierce Combatant's Ironskin Slippers [A]
						i(149618),	-- Fierce Combatant's Ironskin Spaulders [A]
						i(149620),	-- Fierce Combatant's Ironskin Tunic [A]
						i(149624),	-- Fierce Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(149517),	-- Fierce Combatant's Greatcloak of Faith [A]
						i(149632),	-- Fierce Combatant's Scaled Chestpiece [A]
						i(149636),	-- Fierce Combatant's Scaled Gauntlets [A]
						i(149644),	-- Fierce Combatant's Scaled Girdle [A]
						i(149638),	-- Fierce Combatant's Scaled Helm [A]
						i(149640),	-- Fierce Combatant's Scaled Legguards [A]
						i(149634),	-- Fierce Combatant's Scaled Sabatons [A]
						i(149642),	-- Fierce Combatant's Scaled Shoulders [A]
						i(149646),	-- Fierce Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(149519),	-- Fierce Combatant's Drape of Piety [A]
						i(149662),	-- Fierce Combatant's Satin Bracers [A]
						i(149660),	-- Fierce Combatant's Satin Cord [A]
						i(149650),	-- Fierce Combatant's Satin Gloves [A]
						i(149652),	-- Fierce Combatant's Satin Hood [A]
						i(149654),	-- Fierce Combatant's Satin Leggings [A]
						i(149658),	-- Fierce Combatant's Satin Mantle [A]
						i(149656),	-- Fierce Combatant's Satin Robe [A]
						i(149648),	-- Fierce Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(149682),	-- Fierce Combatant's Leather Belt [A]
						i(149674),	-- Fierce Combatant's Leather Gloves [A]
						i(149676),	-- Fierce Combatant's Leather Helm [A]
						i(149678),	-- Fierce Combatant's Leather Legguards [A]
						i(149672),	-- Fierce Combatant's Leather Slippers [A]
						i(149680),	-- Fierce Combatant's Leather Spaulders [A]
						i(149670),	-- Fierce Combatant's Leather Tunic [A]
						i(149684),	-- Fierce Combatant's Leather Wristguards [A]
						i(149521),	-- Fierce Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(149700),	-- Fierce Combatant's Ringmail Armband [A]
						i(149688),	-- Fierce Combatant's Ringmail Boots [A]
						i(149698),	-- Fierce Combatant's Ringmail Clasp [A]
						i(149690),	-- Fierce Combatant's Ringmail Gauntlets [A]
						i(149692),	-- Fierce Combatant's Ringmail Helm [A]
						i(149694),	-- Fierce Combatant's Ringmail Leggings [A]
						i(149686),	-- Fierce Combatant's Ringmail Robe [A]
						i(149696),	-- Fierce Combatant's Ringmail Spaulders [A]
						i(149523),	-- Fierce Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(149730),	-- Fierce Combatant's Felweave Amice [A]
						i(149734),	-- Fierce Combatant's Felweave Bracers [A]
						i(149525),	-- Fierce Combatant's Felweave Cloak [A]
						i(149732),	-- Fierce Combatant's Felweave Cord [A]
						i(149724),	-- Fierce Combatant's Felweave Cowl [A]
						i(149722),	-- Fierce Combatant's Felweave Handguards [A]
						i(149728),	-- Fierce Combatant's Felweave Raiment [A]
						i(149720),	-- Fierce Combatant's Felweave Treads [A]
						i(149726),	-- Fierce Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(149527),	-- Fierce Combatant's Cloak of Battle [A]
						i(149736),	-- Fierce Combatant's Plate Chestpiece [A]
						i(149740),	-- Fierce Combatant's Plate Gauntlets [A]
						i(149748),	-- Fierce Combatant's Plate Girdle [A]
						i(149742),	-- Fierce Combatant's Plate Helm [A]
						i(149744),	-- Fierce Combatant's Plate Legguards [A]
						i(149746),	-- Fierce Combatant's Plate Shoulders [A]
						i(149738),	-- Fierce Combatant's Plate Warboots [A]
						i(149750),	-- Fierce Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(149666),	-- Fierce Combatant's Band [A]
					i(149664),	-- Fierce Combatant's Ring [A]
					i(149668),	-- Fierce Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(149630),	-- Fierce Combatant's Choker [A]
					i(149626),	-- Fierce Combatant's Necklace [A]
					i(149628),	-- Fierce Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(149704),	-- Fierce Combatant's Accolade of Conquest [A]
					i(149710),	-- Fierce Combatant's Accolade of Dominance [A]
					i(149716),	-- Fierce Combatant's Accolade of Victory [A]
					i(149702),	-- Fierce Combatant's Badge of Conquest [A]
					i(149708),	-- Fierce Combatant's Badge of Dominance [A]
					i(149714),	-- Fierce Combatant's Badge of Victory [A]
					i(149706),	-- Fierce Combatant's Insignia of Conquest [A]
					i(149712),	-- Fierce Combatant's Insignia of Dominance [A]
					i(149718),	-- Fierce Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(150253, {	-- Ensemble: Fierce Combatant's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(150254, {	-- Ensemble: Fierce Combatant's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(150251, {	-- Ensemble: Fierce Combatant's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(150265, {	-- Ensemble: Fierce Combatant's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(150270, {	-- Ensemble: Fierce Combatant's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(150258, {	-- Ensemble: Fierce Combatant's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(150269, {	-- Ensemble: Fierce Combatant's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(150262, {	-- Ensemble: Fierce Combatant's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(150261, {	-- Ensemble: Fierce Combatant's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(150248, {	-- Ensemble: Fierce Combatant's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(150256, {	-- Ensemble: Fierce Combatant's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(150266, {	-- Ensemble: Fierce Combatant's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(149506),	-- Fierce Combatant's Dreadcloak [H]
						i(149530),	-- Fierce Combatant's Dreadplate Chestpiece [H]
						i(149534),	-- Fierce Combatant's Dreadplate Gauntlets [H]
						i(149542),	-- Fierce Combatant's Dreadplate Girdle [H]
						i(149536),	-- Fierce Combatant's Dreadplate Helm [H]
						i(149538),	-- Fierce Combatant's Dreadplate Legguards [H]
						i(149532),	-- Fierce Combatant's Dreadplate Sabatons [H]
						i(149540),	-- Fierce Combatant's Dreadplate Shoulders [H]
						i(149544),	-- Fierce Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(149508),	-- Fierce Combatant's Demonthread Cloak [H]
						i(149558),	-- Fierce Combatant's Felskin Belt [H]
						i(149548),	-- Fierce Combatant's Felskin Boots [H]
						i(149550),	-- Fierce Combatant's Felskin Gloves [H]
						i(149552),	-- Fierce Combatant's Felskin Helm [H]
						i(149554),	-- Fierce Combatant's Felskin Legguards [H]
						i(149556),	-- Fierce Combatant's Felskin Spaulders [H]
						i(149546),	-- Fierce Combatant's Felskin Tunic [H]
						i(149560),	-- Fierce Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(149575),	-- Fierce Combatant's Dragonhide Belt [H]
						i(149510),	-- Fierce Combatant's Dragonhide Cloak [H]
						i(149566),	-- Fierce Combatant's Dragonhide Gloves [H]
						i(149568),	-- Fierce Combatant's Dragonhide Helm [H]
						i(149570),	-- Fierce Combatant's Dragonhide Legguards [H]
						i(149564),	-- Fierce Combatant's Dragonhide Moccasins [H]
						i(149572),	-- Fierce Combatant's Dragonhide Spaulders [H]
						i(149562),	-- Fierce Combatant's Dragonhide Tunic [H]
						i(149577),	-- Fierce Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(149593),	-- Fierce Combatant's Chain Armband [H]
						i(149579),	-- Fierce Combatant's Chain Armor [H]
						i(149591),	-- Fierce Combatant's Chain Clasp [H]
						i(149583),	-- Fierce Combatant's Chain Gauntlets [H]
						i(149585),	-- Fierce Combatant's Chain Helm [H]
						i(149587),	-- Fierce Combatant's Chain Leggings [H]
						i(149589),	-- Fierce Combatant's Chain Spaulders [H]
						i(149581),	-- Fierce Combatant's Chain Treads [H]
						i(149512),	-- Fierce Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(149605),	-- Fierce Combatant's Silk Amice [H]
						i(149609),	-- Fierce Combatant's Silk Bracers [H]
						i(149607),	-- Fierce Combatant's Silk Cord [H]
						i(149599),	-- Fierce Combatant's Silk Cowl [H]
						i(149597),	-- Fierce Combatant's Silk Handguards [H]
						i(149603),	-- Fierce Combatant's Silk Robe [H]
						i(149595),	-- Fierce Combatant's Silk Treads [H]
						i(149601),	-- Fierce Combatant's Silk Trousers [H]
						i(149514),	-- Fierce Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(149623),	-- Fierce Combatant's Ironskin Belt [H]
						i(149516),	-- Fierce Combatant's Ironskin Cloak [H]
						i(149613),	-- Fierce Combatant's Ironskin Gloves [H]
						i(149615),	-- Fierce Combatant's Ironskin Helm [H]
						i(149617),	-- Fierce Combatant's Ironskin Legguards [H]
						i(149611),	-- Fierce Combatant's Ironskin Slippers [H]
						i(149619),	-- Fierce Combatant's Ironskin Spaulders [H]
						i(149621),	-- Fierce Combatant's Ironskin Tunic [H]
						i(149625),	-- Fierce Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(149518),	-- Fierce Combatant's Greatcloak of Faith [H]
						i(149633),	-- Fierce Combatant's Scaled Chestpiece [H]
						i(149637),	-- Fierce Combatant's Scaled Gauntlets [H]
						i(149645),	-- Fierce Combatant's Scaled Girdle [H]
						i(149639),	-- Fierce Combatant's Scaled Helm [H]
						i(149641),	-- Fierce Combatant's Scaled Legguards [H]
						i(149635),	-- Fierce Combatant's Scaled Sabatons [H]
						i(149643),	-- Fierce Combatant's Scaled Shoulders [H]
						i(149647),	-- Fierce Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(149520),	-- Fierce Combatant's Drape of Piety [H]
						i(149663),	-- Fierce Combatant's Satin Bracers [H]
						i(149661),	-- Fierce Combatant's Satin Cord [H]
						i(149651),	-- Fierce Combatant's Satin Gloves [H]
						i(149653),	-- Fierce Combatant's Satin Hood [H]
						i(149655),	-- Fierce Combatant's Satin Leggings [H]
						i(149659),	-- Fierce Combatant's Satin Mantle [H]
						i(149657),	-- Fierce Combatant's Satin Robe [H]
						i(149649),	-- Fierce Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(149683),	-- Fierce Combatant's Leather Belt [H]
						i(149675),	-- Fierce Combatant's Leather Gloves [H]
						i(149677),	-- Fierce Combatant's Leather Helm [H]
						i(149679),	-- Fierce Combatant's Leather Legguards [H]
						i(149673),	-- Fierce Combatant's Leather Slippers [H]
						i(149681),	-- Fierce Combatant's Leather Spaulders [H]
						i(149671),	-- Fierce Combatant's Leather Tunic [H]
						i(149685),	-- Fierce Combatant's Leather Wristguards [H]
						i(149522),	-- Fierce Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(149701),	-- Fierce Combatant's Ringmail Armband [H]
						i(149689),	-- Fierce Combatant's Ringmail Boots [H]
						i(149699),	-- Fierce Combatant's Ringmail Clasp [H]
						i(149691),	-- Fierce Combatant's Ringmail Gauntlets [H]
						i(149693),	-- Fierce Combatant's Ringmail Helm [H]
						i(149695),	-- Fierce Combatant's Ringmail Leggings [H]
						i(149687),	-- Fierce Combatant's Ringmail Robe [H]
						i(149697),	-- Fierce Combatant's Ringmail Spaulders [H]
						i(149524),	-- Fierce Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(149731),	-- Fierce Combatant's Felweave Amice [H]
						i(149735),	-- Fierce Combatant's Felweave Bracers [H]
						i(149526),	-- Fierce Combatant's Felweave Cloak [H]
						i(149733),	-- Fierce Combatant's Felweave Cord [H]
						i(149725),	-- Fierce Combatant's Felweave Cowl [H]
						i(149723),	-- Fierce Combatant's Felweave Handguards [H]
						i(149729),	-- Fierce Combatant's Felweave Raiment [H]
						i(149721),	-- Fierce Combatant's Felweave Treads [H]
						i(149727),	-- Fierce Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(149528),	-- Fierce Combatant's Cloak of Battle [H]
						i(149737),	-- Fierce Combatant's Plate Chestpiece [H]
						i(149741),	-- Fierce Combatant's Plate Gauntlets [H]
						i(149749),	-- Fierce Combatant's Plate Girdle [H]
						i(149743),	-- Fierce Combatant's Plate Helm [H]
						i(149745),	-- Fierce Combatant's Plate Legguards [H]
						i(149747),	-- Fierce Combatant's Plate Shoulders [H]
						i(149739),	-- Fierce Combatant's Plate Warboots [H]
						i(149751),	-- Fierce Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(149667),	-- Fierce Combatant's Band [H]
					i(149665),	-- Fierce Combatant's Ring [H]
					i(149669),	-- Fierce Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(149631),	-- Fierce Combatant's Choker [H]
					i(149627),	-- Fierce Combatant's Necklace [H]
					i(149629),	-- Fierce Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(149705),	-- Fierce Combatant's Accolade of Conquest [H]
					i(149711),	-- Fierce Combatant's Accolade of Dominance [H]
					i(149717),	-- Fierce Combatant's Accolade of Victory [H]
					i(149703),	-- Fierce Combatant's Badge of Conquest [H]
					i(149709),	-- Fierce Combatant's Badge of Dominance [H]
					i(149715),	-- Fierce Combatant's Badge of Victory [H]
					i(149707),	-- Fierce Combatant's Insignia of Conquest [H]
					i(149713),	-- Fierce Combatant's Insignia of Dominance [H]
					i(149719),	-- Fierce Combatant's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 } }, {
				filter(RELICS_F, {
					i(150282),	-- Alliance of Convenience
					i(150351),	-- Battering Tempest
					i(150292),	-- Battle-Tempered Hilt
					i(150283),	-- Blaze of Glory
					i(150348),	-- Blindside Approach
					i(150290),	-- Brilliant Sunstone
					i(150295),	-- "Borrowed Soul" Essence
					i(150289),	-- Clarity of Conviction
					i(150288),	-- Cold Sweat
					i(150286),	-- Conscience of the Victorious
					i(150350),	-- Dead Man's Tale
					i(150275),	-- Exhaustive Research
					i(150280),	-- Fel-Loaded Dice
					i(150284),	-- Flame of the Fallen
					i(150277),	-- Grisly Souvenir
					i(150281),	-- Performance Enhancing Curio
					i(150297),	-- Petrified Ancient's Thumb
					i(150349),	-- Polished Shadowstone
					i(150291),	-- Radiance of Dawn
					i(150274),	-- Reactive Intuition
					i(150353),	-- Roar of the Crowd
					i(150294),	-- Steadfast Conviction
					i(150287),	-- Superiority's Contempt
					i(150276),	-- Taboo Knowledge
					i(150278),	-- Thirsty Bloodstone
					i(150279),	-- Thrill of Battle
					i(150352),	-- Thundering Impact
					i(150296),	-- Tombweed Bloom
					i(150285),	-- Torch of Competition
					i(150293),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(149483, {	-- Ensemble: Fierce Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(149484, {	-- Ensemble: Fierce Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(149480, {	-- Ensemble: Fierce Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(149479, {	-- Ensemble: Fierce Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(149501, {	-- Ensemble: Fierce Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(149489, {	-- Ensemble: Fierce Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(149498, {	-- Ensemble: Fierce Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(149496, {	-- Ensemble: Fierce Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(149490, {	-- Ensemble: Fierce Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(149494, {	-- Ensemble: Fierce Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(149486, {	-- Ensemble: Fierce Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(149493, {	-- Ensemble: Fierce Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(147909),	-- Fierce Gladiator's Dreadcloak [A]
						i(147933),	-- Fierce Gladiator's Dreadplate Chestpiece [A]
						i(147937),	-- Fierce Gladiator's Dreadplate Gauntlets [A]
						i(147945),	-- Fierce Gladiator's Dreadplate Girdle [A]
						i(147939),	-- Fierce Gladiator's Dreadplate Helm [A]
						i(147941),	-- Fierce Gladiator's Dreadplate Legguards [A]
						i(147935),	-- Fierce Gladiator's Dreadplate Sabatons [A]
						i(147943),	-- Fierce Gladiator's Dreadplate Shoulders [A]
						i(147947),	-- Fierce Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(147911),	-- Fierce Gladiator's Demonthread Cloak [A]
						i(147961),	-- Fierce Gladiator's Felskin Belt [A]
						i(147951),	-- Fierce Gladiator's Felskin Boots [A]
						i(147953),	-- Fierce Gladiator's Felskin Gloves [A]
						i(147955),	-- Fierce Gladiator's Felskin Helm [A]
						i(147957),	-- Fierce Gladiator's Felskin Legguards [A]
						i(147959),	-- Fierce Gladiator's Felskin Spaulders [A]
						i(147949),	-- Fierce Gladiator's Felskin Tunic [A]
						i(147963),	-- Fierce Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(147977),	-- Fierce Gladiator's Dragonhide Belt [A]
						i(147913),	-- Fierce Gladiator's Dragonhide Cloak [A]
						i(147969),	-- Fierce Gladiator's Dragonhide Gloves [A]
						i(147971),	-- Fierce Gladiator's Dragonhide Helm [A]
						i(147973),	-- Fierce Gladiator's Dragonhide Legguards [A]
						i(147967),	-- Fierce Gladiator's Dragonhide Moccasins [A]
						i(147975),	-- Fierce Gladiator's Dragonhide Spaulders [A]
						i(147965),	-- Fierce Gladiator's Dragonhide Vest [A]
						i(147979),	-- Fierce Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(147995),	-- Fierce Gladiator's Chain Armband [A]
						i(147981),	-- Fierce Gladiator's Chain Armor [A]
						i(147993),	-- Fierce Gladiator's Chain Clasp [A]
						i(147985),	-- Fierce Gladiator's Chain Gauntlets [A]
						i(147987),	-- Fierce Gladiator's Chain Helm [A]
						i(147989),	-- Fierce Gladiator's Chain Leggings [A]
						i(147991),	-- Fierce Gladiator's Chain Spaulders [A]
						i(147983),	-- Fierce Gladiator's Chain Treads [A]
						i(147915),	-- Fierce Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(148007),	-- Fierce Gladiator's Silk Amice [A]
						i(148011),	-- Fierce Gladiator's Silk Bracers [A]
						i(148009),	-- Fierce Gladiator's Silk Cord [A]
						i(148001),	-- Fierce Gladiator's Silk Cowl [A]
						i(147999),	-- Fierce Gladiator's Silk Handguards [A]
						i(147997),	-- Fierce Gladiator's Silk Treads [A]
						i(148003),	-- Fierce Gladiator's Silk Trousers [A]
						i(148005),	-- Fierce Gladiator's Silk Tunic [A]
						i(147917),	-- Fierce Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(148025),	-- Fierce Gladiator's Ironskin Belt [A]
						i(147919),	-- Fierce Gladiator's Ironskin Cloak [A]
						i(148015),	-- Fierce Gladiator's Ironskin Gloves [A]
						i(148017),	-- Fierce Gladiator's Ironskin Helm [A]
						i(148019),	-- Fierce Gladiator's Ironskin Legguards [A]
						i(148013),	-- Fierce Gladiator's Ironskin Slippers [A]
						i(148021),	-- Fierce Gladiator's Ironskin Spaulders [A]
						i(148023),	-- Fierce Gladiator's Ironskin Tunic [A]
						i(148027),	-- Fierce Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(147921),	-- Fierce Gladiator's Greatcloak of Faith [A]
						i(148044),	-- Fierce Gladiator's Scaled Breastplate [A]
						i(148038),	-- Fierce Gladiator's Scaled Gauntlets [A]
						i(148047),	-- Fierce Gladiator's Scaled Girdle [A]
						i(148040),	-- Fierce Gladiator's Scaled Helm [A]
						i(148042),	-- Fierce Gladiator's Scaled Legguards [A]
						i(148036),	-- Fierce Gladiator's Scaled Sabatons [A]
						i(148045),	-- Fierce Gladiator's Scaled Shoulders [A]
						i(148049),	-- Fierce Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(147923),	-- Fierce Gladiator's Drape of Piety [A]
						i(148065),	-- Fierce Gladiator's Satin Bracers [A]
						i(148063),	-- Fierce Gladiator's Satin Cord [A]
						i(148053),	-- Fierce Gladiator's Satin Gloves [A]
						i(148055),	-- Fierce Gladiator's Satin Hood [A]
						i(148057),	-- Fierce Gladiator's Satin Leggings [A]
						i(148061),	-- Fierce Gladiator's Satin Mantle [A]
						i(148059),	-- Fierce Gladiator's Satin Robe [A]
						i(148051),	-- Fierce Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(148085),	-- Fierce Gladiator's Leather Belt [A]
						i(148077),	-- Fierce Gladiator's Leather Gloves [A]
						i(148079),	-- Fierce Gladiator's Leather Helm [A]
						i(148081),	-- Fierce Gladiator's Leather Legguards [A]
						i(148075),	-- Fierce Gladiator's Leather Slippers [A]
						i(148083),	-- Fierce Gladiator's Leather Spaulders [A]
						i(148073),	-- Fierce Gladiator's Leather Tunic [A]
						i(148087),	-- Fierce Gladiator's Leather Wristguards [A]
						i(147925),	-- Fierce Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(148103),	-- Fierce Gladiator's Ringmail Armband [A]
						i(148089),	-- Fierce Gladiator's Ringmail Armor [A]
						i(148091),	-- Fierce Gladiator's Ringmail Boots [A]
						i(148101),	-- Fierce Gladiator's Ringmail Clasp [A]
						i(148093),	-- Fierce Gladiator's Ringmail Gauntlets [A]
						i(148095),	-- Fierce Gladiator's Ringmail Helm [A]
						i(148097),	-- Fierce Gladiator's Ringmail Leggings [A]
						i(148099),	-- Fierce Gladiator's Ringmail Spaulders [A]
						i(147927),	-- Fierce Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(148133),	-- Fierce Gladiator's Felweave Amice [A]
						i(148137),	-- Fierce Gladiator's Felweave Bracers [A]
						i(147929),	-- Fierce Gladiator's Felweave Cloak [A]
						i(148135),	-- Fierce Gladiator's Felweave Cord [A]
						i(148127),	-- Fierce Gladiator's Felweave Cowl [A]
						i(148125),	-- Fierce Gladiator's Felweave Handguards [A]
						i(148131),	-- Fierce Gladiator's Felweave Raiment [A]
						i(148123),	-- Fierce Gladiator's Felweave Treads [A]
						i(148129),	-- Fierce Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(147931),	-- Fierce Gladiator's Cloak of Battle [A]
						i(148139),	-- Fierce Gladiator's Plate Chestpiece [A]
						i(148143),	-- Fierce Gladiator's Plate Gauntlets [A]
						i(148151),	-- Fierce Gladiator's Plate Girdle [A]
						i(148145),	-- Fierce Gladiator's Plate Helm [A]
						i(148147),	-- Fierce Gladiator's Plate Legguards [A]
						i(148149),	-- Fierce Gladiator's Plate Shoulders [A]
						i(148141),	-- Fierce Gladiator's Plate Warboots [A]
						i(148153),	-- Fierce Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(148069),	-- Fierce Gladiator's Band [A]
					i(148067),	-- Fierce Gladiator's Ring [A]
					i(148071),	-- Fierce Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(148033),	-- Fierce Gladiator's Choker [A]
					i(148029),	-- Fierce Gladiator's Necklace [A]
					i(148031),	-- Fierce Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(148107),	-- Fierce Gladiator's Accolade of Conquest [A]
					i(148113),	-- Fierce Gladiator's Accolade of Dominance [A]
					i(148119),	-- Fierce Gladiator's Accolade of Victory [A]
					i(148105),	-- Fierce Gladiator's Badge of Conquest [A]
					i(148111),	-- Fierce Gladiator's Badge of Dominance [A]
					i(148117),	-- Fierce Gladiator's Badge of Victory [A]
					i(148109),	-- Fierce Gladiator's Insignia of Conquest [A]
					i(148115),	-- Fierce Gladiator's Insignia of Dominance [A]
					i(148121),	-- Fierce Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(149482, {	-- Ensemble: Fierce Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(149485, {	-- Ensemble: Fierce Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(149481, {	-- Ensemble: Fierce Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(149478, {	-- Ensemble: Fierce Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(149500, {	-- Ensemble: Fierce Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(149488, {	-- Ensemble: Fierce Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(149499, {	-- Ensemble: Fierce Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(149497, {	-- Ensemble: Fierce Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(149491, {	-- Ensemble: Fierce Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(149495, {	-- Ensemble: Fierce Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(149487, {	-- Ensemble: Fierce Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(149492, {	-- Ensemble: Fierce Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(147910),	-- Fierce Gladiator's Dreadcloak [H]
						i(147934),	-- Fierce Gladiator's Dreadplate Chestpiece [H]
						i(147938),	-- Fierce Gladiator's Dreadplate Gauntlets [H]
						i(147946),	-- Fierce Gladiator's Dreadplate Girdle [H]
						i(147940),	-- Fierce Gladiator's Dreadplate Helm [H]
						i(147942),	-- Fierce Gladiator's Dreadplate Legguards [H]
						i(147936),	-- Fierce Gladiator's Dreadplate Sabatons [H]
						i(147944),	-- Fierce Gladiator's Dreadplate Shoulders [H]
						i(147948),	-- Fierce Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(147912),	-- Fierce Gladiator's Demonthread Cloak [H]
						i(147962),	-- Fierce Gladiator's Felskin Belt [H]
						i(147952),	-- Fierce Gladiator's Felskin Boots [H]
						i(147954),	-- Fierce Gladiator's Felskin Gloves [H]
						i(147956),	-- Fierce Gladiator's Felskin Helm [H]
						i(147958),	-- Fierce Gladiator's Felskin Legguards [H]
						i(147960),	-- Fierce Gladiator's Felskin Spaulders [H]
						i(147950),	-- Fierce Gladiator's Felskin Tunic [H]
						i(147964),	-- Fierce Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(147978),	-- Fierce Gladiator's Dragonhide Belt [H]
						i(147914),	-- Fierce Gladiator's Dragonhide Cloak [H]
						i(147970),	-- Fierce Gladiator's Dragonhide Gloves [H]
						i(147972),	-- Fierce Gladiator's Dragonhide Helm [H]
						i(147974),	-- Fierce Gladiator's Dragonhide Legguards [H]
						i(147968),	-- Fierce Gladiator's Dragonhide Moccasins [H]
						i(147976),	-- Fierce Gladiator's Dragonhide Spaulders [H]
						i(147966),	-- Fierce Gladiator's Dragonhide Vest [H]
						i(147980),	-- Fierce Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(147996),	-- Fierce Gladiator's Chain Armband [H]
						i(147982),	-- Fierce Gladiator's Chain Armor [H]
						i(147994),	-- Fierce Gladiator's Chain Clasp [H]
						i(147986),	-- Fierce Gladiator's Chain Gauntlets [H]
						i(147988),	-- Fierce Gladiator's Chain Helm [H]
						i(147990),	-- Fierce Gladiator's Chain Leggings [H]
						i(147992),	-- Fierce Gladiator's Chain Spaulders [H]
						i(147984),	-- Fierce Gladiator's Chain Treads [H]
						i(147916),	-- Fierce Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(148008),	-- Fierce Gladiator's Silk Amice [H]
						i(148012),	-- Fierce Gladiator's Silk Bracers [H]
						i(148010),	-- Fierce Gladiator's Silk Cord [H]
						i(148002),	-- Fierce Gladiator's Silk Cowl [H]
						i(148000),	-- Fierce Gladiator's Silk Handguards [H]
						i(147998),	-- Fierce Gladiator's Silk Treads [H]
						i(148004),	-- Fierce Gladiator's Silk Trousers [H]
						i(148006),	-- Fierce Gladiator's Silk Tunic [H]
						i(147918),	-- Fierce Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(148026),	-- Fierce Gladiator's Ironskin Belt [H]
						i(147920),	-- Fierce Gladiator's Ironskin Cloak [H]
						i(148016),	-- Fierce Gladiator's Ironskin Gloves [H]
						i(148018),	-- Fierce Gladiator's Ironskin Helm [H]
						i(148020),	-- Fierce Gladiator's Ironskin Legguards [H]
						i(148014),	-- Fierce Gladiator's Ironskin Slippers [H]
						i(148022),	-- Fierce Gladiator's Ironskin Spaulders [H]
						i(148024),	-- Fierce Gladiator's Ironskin Tunic [H]
						i(148028),	-- Fierce Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(147922),	-- Fierce Gladiator's Greatcloak of Faith [H]
						i(148035),	-- Fierce Gladiator's Scaled Breastplate [H]
						i(148039),	-- Fierce Gladiator's Scaled Gauntlets [H]
						i(148048),	-- Fierce Gladiator's Scaled Girdle [H]
						i(148041),	-- Fierce Gladiator's Scaled Helm [H]
						i(148043),	-- Fierce Gladiator's Scaled Legguards [H]
						i(148037),	-- Fierce Gladiator's Scaled Sabatons [H]
						i(148046),	-- Fierce Gladiator's Scaled Shoulders [H]
						i(148050),	-- Fierce Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(147924),	-- Fierce Gladiator's Drape of Piety [H]
						i(148066),	-- Fierce Gladiator's Satin Bracers [H]
						i(148064),	-- Fierce Gladiator's Satin Cord [H]
						i(148054),	-- Fierce Gladiator's Satin Gloves [H]
						i(148056),	-- Fierce Gladiator's Satin Hood [H]
						i(148058),	-- Fierce Gladiator's Satin Leggings [H]
						i(148062),	-- Fierce Gladiator's Satin Mantle [H]
						i(148060),	-- Fierce Gladiator's Satin Robe [H]
						i(148052),	-- Fierce Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(148086),	-- Fierce Gladiator's Leather Belt [H]
						i(148078),	-- Fierce Gladiator's Leather Gloves [H]
						i(148080),	-- Fierce Gladiator's Leather Helm [H]
						i(148082),	-- Fierce Gladiator's Leather Legguards [H]
						i(148076),	-- Fierce Gladiator's Leather Slippers [H]
						i(148084),	-- Fierce Gladiator's Leather Spaulders [H]
						i(148074),	-- Fierce Gladiator's Leather Tunic [H]
						i(148088),	-- Fierce Gladiator's Leather Wristguards [H]
						i(147926),	-- Fierce Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(148104),	-- Fierce Gladiator's Ringmail Armband [H]
						i(148090),	-- Fierce Gladiator's Ringmail Armor [H]
						i(148092),	-- Fierce Gladiator's Ringmail Boots [H]
						i(148102),	-- Fierce Gladiator's Ringmail Clasp [H]
						i(148094),	-- Fierce Gladiator's Ringmail Gauntlets [H]
						i(148096),	-- Fierce Gladiator's Ringmail Helm [H]
						i(148098),	-- Fierce Gladiator's Ringmail Leggings [H]
						i(148100),	-- Fierce Gladiator's Ringmail Spaulders [H]
						i(147928),	-- Fierce Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(148134),	-- Fierce Gladiator's Felweave Amice [H]
						i(148138),	-- Fierce Gladiator's Felweave Bracers [H]
						i(147930),	-- Fierce Gladiator's Felweave Cloak [H]
						i(148136),	-- Fierce Gladiator's Felweave Cord [H]
						i(148128),	-- Fierce Gladiator's Felweave Cowl [H]
						i(148126),	-- Fierce Gladiator's Felweave Handguards [H]
						i(148132),	-- Fierce Gladiator's Felweave Raiment [H]
						i(148124),	-- Fierce Gladiator's Felweave Treads [H]
						i(148130),	-- Fierce Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(147932),	-- Fierce Gladiator's Cloak of Battle [H]
						i(148140),	-- Fierce Gladiator's Plate Chestpiece [H]
						i(148144),	-- Fierce Gladiator's Plate Gauntlets [H]
						i(148152),	-- Fierce Gladiator's Plate Girdle [H]
						i(148146),	-- Fierce Gladiator's Plate Helm [H]
						i(148148),	-- Fierce Gladiator's Plate Legguards [H]
						i(148150),	-- Fierce Gladiator's Plate Shoulders [H]
						i(148142),	-- Fierce Gladiator's Plate Warboots [H]
						i(148154),	-- Fierce Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(148070),	-- Fierce Gladiator's Band [H]
					i(148068),	-- Fierce Gladiator's Ring [H]
					i(148072),	-- Fierce Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(148034),	-- Fierce Gladiator's Choker [H]
					i(148030),	-- Fierce Gladiator's Necklace [H]
					i(148032),	-- Fierce Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(148108),	-- Fierce Gladiator's Accolade of Conquest [H]
					i(148114),	-- Fierce Gladiator's Accolade of Dominance [H]
					i(148120),	-- Fierce Gladiator's Accolade of Victory [H]
					i(148106),	-- Fierce Gladiator's Badge of Conquest [H]
					i(148112),	-- Fierce Gladiator's Badge of Dominance [H]
					i(148118),	-- Fierce Gladiator's Badge of Victory [H]
					i(148110),	-- Fierce Gladiator's Insignia of Conquest [H]
					i(148116),	-- Fierce Gladiator's Insignia of Dominance [H]
					i(148122),	-- Fierce Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12045 },	-- Gladiator: Legion Season 5
							["cost"] = {{"i", MOH, 12}},
						}),
						i(149445, {	-- Fierce Gladiator's Cloak [A]
							["sourceAchievements"] = { 12090 },	-- Fierce Elite
							["cost"] = {{"i", MOH, 50}},
						}),
						i(149443, {	-- Fierce Gladiator's Tabard [A]
							["sourceAchievements"] = { 12090 },	-- Fierce Elite
							["cost"] = {{"i", MOH, 50}},
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = {
							12090,	-- Fierce Elite
							12135,	-- Dominant Elite
							12198,	-- Demonic Elite
						},
						["cost"] = {{"i", MOH, 12}},
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(149458, {	-- Ensemble: Elite Fierce Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(149460, {	-- Ensemble: Elite Fierce Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(149456, {	-- Ensemble: Elite Fierce Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(149454, {	-- Ensemble: Elite Fierce Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(149477, {	-- Ensemble: Elite Fierce Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(149465, {	-- Ensemble: Elite Fierce Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(149475, {	-- Ensemble: Elite Fierce Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(149473, {	-- Ensemble: Elite Fierce Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(149467, {	-- Ensemble: Elite Fierce Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(149470, {	-- Ensemble: Elite Fierce Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(149462, {	-- Ensemble: Elite Fierce Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(149469, {	-- Ensemble: Elite Fierce Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148155),	-- Fierce Gladiator's Dreadcloak [A]
						i(148179),	-- Fierce Gladiator's Dreadplate Chestpiece [A]
						i(148183),	-- Fierce Gladiator's Dreadplate Gauntlets [A]
						i(148191),	-- Fierce Gladiator's Dreadplate Girdle [A]
						i(148185),	-- Fierce Gladiator's Dreadplate Helm [A]
						i(148187),	-- Fierce Gladiator's Dreadplate Legguards [A]
						i(148181),	-- Fierce Gladiator's Dreadplate Sabatons [A]
						i(148189),	-- Fierce Gladiator's Dreadplate Shoulders [A]
						i(148193),	-- Fierce Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(148157),	-- Fierce Gladiator's Demonthread Cloak [A]
						i(148207),	-- Fierce Gladiator's Felskin Belt [A]
						i(148197),	-- Fierce Gladiator's Felskin Boots [A]
						i(148199),	-- Fierce Gladiator's Felskin Gloves [A]
						i(148201),	-- Fierce Gladiator's Felskin Helm [A]
						i(148203),	-- Fierce Gladiator's Felskin Legguards [A]
						i(148205),	-- Fierce Gladiator's Felskin Spaulders [A]
						i(148195),	-- Fierce Gladiator's Felskin Tunic [A]
						i(148209),	-- Fierce Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(148223),	-- Fierce Gladiator's Dragonhide Belt [A]
						i(148159),	-- Fierce Gladiator's Dragonhide Cloak [A]
						i(148215),	-- Fierce Gladiator's Dragonhide Gloves [A]
						i(148217),	-- Fierce Gladiator's Dragonhide Helm [A]
						i(148219),	-- Fierce Gladiator's Dragonhide Legguards [A]
						i(148213),	-- Fierce Gladiator's Dragonhide Moccasins [A]
						i(148221),	-- Fierce Gladiator's Dragonhide Spaulders [A]
						i(148211),	-- Fierce Gladiator's Dragonhide Vest [A]
						i(148225),	-- Fierce Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(148241),	-- Fierce Gladiator's Chain Armband [A]
						i(148227),	-- Fierce Gladiator's Chain Armor [A]
						i(148239),	-- Fierce Gladiator's Chain Clasp [A]
						i(148231),	-- Fierce Gladiator's Chain Gauntlets [A]
						i(148233),	-- Fierce Gladiator's Chain Helm [A]
						i(148235),	-- Fierce Gladiator's Chain Leggings [A]
						i(148237),	-- Fierce Gladiator's Chain Spaulders [A]
						i(148229),	-- Fierce Gladiator's Chain Treads [A]
						i(148161),	-- Fierce Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(148253),	-- Fierce Gladiator's Silk Amice [A]
						i(148257),	-- Fierce Gladiator's Silk Bracers [A]
						i(148255),	-- Fierce Gladiator's Silk Cord [A]
						i(148247),	-- Fierce Gladiator's Silk Cowl [A]
						i(148245),	-- Fierce Gladiator's Silk Handguards [A]
						i(148243),	-- Fierce Gladiator's Silk Treads [A]
						i(148249),	-- Fierce Gladiator's Silk Trousers [A]
						i(148251),	-- Fierce Gladiator's Silk Tunic [A]
						i(148163),	-- Fierce Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(148271),	-- Fierce Gladiator's Ironskin Belt [A]
						i(148165),	-- Fierce Gladiator's Ironskin Cloak [A]
						i(148261),	-- Fierce Gladiator's Ironskin Gloves [A]
						i(148263),	-- Fierce Gladiator's Ironskin Helm [A]
						i(148265),	-- Fierce Gladiator's Ironskin Legguards [A]
						i(148259),	-- Fierce Gladiator's Ironskin Slippers [A]
						i(148267),	-- Fierce Gladiator's Ironskin Spaulders [A]
						i(148269),	-- Fierce Gladiator's Ironskin Tunic [A]
						i(148273),	-- Fierce Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(148167),	-- Fierce Gladiator's Greatcloak of Faith [A]
						i(148281),	-- Fierce Gladiator's Scaled Breastplate [A]
						i(148285),	-- Fierce Gladiator's Scaled Gauntlets [A]
						i(148293),	-- Fierce Gladiator's Scaled Girdle [A]
						i(148287),	-- Fierce Gladiator's Scaled Helm [A]
						i(148289),	-- Fierce Gladiator's Scaled Legguards [A]
						i(148283),	-- Fierce Gladiator's Scaled Sabatons [A]
						i(148291),	-- Fierce Gladiator's Scaled Shoulders [A]
						i(148295),	-- Fierce Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(148169),	-- Fierce Gladiator's Drape of Piety [A]
						i(148311),	-- Fierce Gladiator's Satin Bracers [A]
						i(148309),	-- Fierce Gladiator's Satin Cord [A]
						i(148299),	-- Fierce Gladiator's Satin Gloves [A]
						i(148301),	-- Fierce Gladiator's Satin Hood [A]
						i(148303),	-- Fierce Gladiator's Satin Leggings [A]
						i(148307),	-- Fierce Gladiator's Satin Mantle [A]
						i(148305),	-- Fierce Gladiator's Satin Robe [A]
						i(148297),	-- Fierce Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(148331),	-- Fierce Gladiator's Leather Belt [A]
						i(148323),	-- Fierce Gladiator's Leather Gloves [A]
						i(148325),	-- Fierce Gladiator's Leather Helm [A]
						i(148327),	-- Fierce Gladiator's Leather Legguards [A]
						i(148321),	-- Fierce Gladiator's Leather Slippers [A]
						i(148329),	-- Fierce Gladiator's Leather Spaulders [A]
						i(148319),	-- Fierce Gladiator's Leather Tunic [A]
						i(148333),	-- Fierce Gladiator's Leather Wristguards [A]
						i(148171),	-- Fierce Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(148349),	-- Fierce Gladiator's Ringmail Armband [A]
						i(148335),	-- Fierce Gladiator's Ringmail Armor [A]
						i(148337),	-- Fierce Gladiator's Ringmail Boots [A]
						i(148347),	-- Fierce Gladiator's Ringmail Clasp [A]
						i(148339),	-- Fierce Gladiator's Ringmail Gauntlets [A]
						i(148341),	-- Fierce Gladiator's Ringmail Helm [A]
						i(148343),	-- Fierce Gladiator's Ringmail Leggings [A]
						i(148345),	-- Fierce Gladiator's Ringmail Spaulders [A]
						i(148173),	-- Fierce Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(148379),	-- Fierce Gladiator's Felweave Amice [A]
						i(148383),	-- Fierce Gladiator's Felweave Bracers [A]
						i(148175),	-- Fierce Gladiator's Felweave Cloak [A]
						i(148381),	-- Fierce Gladiator's Felweave Cord [A]
						i(148373),	-- Fierce Gladiator's Felweave Cowl [A]
						i(148371),	-- Fierce Gladiator's Felweave Handguards [A]
						i(148377),	-- Fierce Gladiator's Felweave Raiment [A]
						i(148369),	-- Fierce Gladiator's Felweave Treads [A]
						i(148375),	-- Fierce Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(148177),	-- Fierce Gladiator's Cloak of Battle [A]
						i(148385),	-- Fierce Gladiator's Plate Chestpiece [A]
						i(148389),	-- Fierce Gladiator's Plate Gauntlets [A]
						i(148397),	-- Fierce Gladiator's Plate Girdle [A]
						i(148391),	-- Fierce Gladiator's Plate Helm [A]
						i(148393),	-- Fierce Gladiator's Plate Legguards [A]
						i(148395),	-- Fierce Gladiator's Plate Shoulders [A]
						i(148387),	-- Fierce Gladiator's Plate Warboots [A]
						i(148399),	-- Fierce Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(148315),	-- Fierce Gladiator's Band [A]
					i(148313),	-- Fierce Gladiator's Ring [A]
					i(148317),	-- Fierce Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(148279),	-- Fierce Gladiator's Choker [A]
					i(148275),	-- Fierce Gladiator's Necklace [A]
					i(148277),	-- Fierce Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(148353),	-- Fierce Gladiator's Accolade of Conquest [A]
					i(148359),	-- Fierce Gladiator's Accolade of Dominance [A]
					i(148365),	-- Fierce Gladiator's Accolade of Victory [A]
					i(148351),	-- Fierce Gladiator's Badge of Conquest [A]
					i(148357),	-- Fierce Gladiator's Badge of Dominance [A]
					i(148363),	-- Fierce Gladiator's Badge of Victory [A]
					i(148355),	-- Fierce Gladiator's Insignia of Conquest [A]
					i(148361),	-- Fierce Gladiator's Insignia of Dominance [A]
					i(148367),	-- Fierce Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 12045 },	-- Gladiator: Legion Season 5
							["cost"] = {{"i", MOH, 12}},
						}),
						i(149444, {	-- Fierce Gladiator's Cloak [H]
							["sourceAchievements"] = { 12090 },	-- Fierce Elite
							["cost"] = {{"i", MOH, 50}},
						}),
						i(149442, {	-- Fierce Gladiator's Tabard [H]
							["sourceAchievements"] = { 12090 },	-- Fierce Elite
							["cost"] = {{"i", MOH, 50}},
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = {
							12090,	-- Fierce Elite
							12135,	-- Dominant Elite
							12198,	-- Demonic Elite
						},
						["cost"] = {{"i", MOH, 12}},
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(149459, {	-- Ensemble: Elite Fierce Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(149461, {	-- Ensemble: Elite Fierce Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(149457, {	-- Ensemble: Elite Fierce Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(149455, {	-- Ensemble: Elite Fierce Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(149476, {	-- Ensemble: Elite Fierce Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(149464, {	-- Ensemble: Elite Fierce Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(149474, {	-- Ensemble: Elite Fierce Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(149472, {	-- Ensemble: Elite Fierce Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(149466, {	-- Ensemble: Elite Fierce Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(149471, {	-- Ensemble: Elite Fierce Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(149463, {	-- Ensemble: Elite Fierce Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(149468, {	-- Ensemble: Elite Fierce Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0, REMOVED_7_3_2 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(148156),	-- Fierce Gladiator's Dreadcloak [H]
						i(148180),	-- Fierce Gladiator's Dreadplate Chestpiece [H]
						i(148184),	-- Fierce Gladiator's Dreadplate Gauntlets [H]
						i(148192),	-- Fierce Gladiator's Dreadplate Girdle [H]
						i(148186),	-- Fierce Gladiator's Dreadplate Helm [H]
						i(148188),	-- Fierce Gladiator's Dreadplate Legguards [H]
						i(148182),	-- Fierce Gladiator's Dreadplate Sabatons [H]
						i(148190),	-- Fierce Gladiator's Dreadplate Shoulders [H]
						i(148194),	-- Fierce Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(148158),	-- Fierce Gladiator's Demonthread Cloak [H]
						i(148208),	-- Fierce Gladiator's Felskin Belt [H]
						i(148198),	-- Fierce Gladiator's Felskin Boots [H]
						i(148200),	-- Fierce Gladiator's Felskin Gloves [H]
						i(148202),	-- Fierce Gladiator's Felskin Helm [H]
						i(148204),	-- Fierce Gladiator's Felskin Legguards [H]
						i(148206),	-- Fierce Gladiator's Felskin Spaulders [H]
						i(148196),	-- Fierce Gladiator's Felskin Tunic [H]
						i(148210),	-- Fierce Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(148224),	-- Fierce Gladiator's Dragonhide Belt [H]
						i(148160),	-- Fierce Gladiator's Dragonhide Cloak [H]
						i(148216),	-- Fierce Gladiator's Dragonhide Gloves [H]
						i(148218),	-- Fierce Gladiator's Dragonhide Helm [H]
						i(148220),	-- Fierce Gladiator's Dragonhide Legguards [H]
						i(148214),	-- Fierce Gladiator's Dragonhide Moccasins [H]
						i(148222),	-- Fierce Gladiator's Dragonhide Spaulders [H]
						i(148212),	-- Fierce Gladiator's Dragonhide Vest [H]
						i(148226),	-- Fierce Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(148242),	-- Fierce Gladiator's Chain Armband [H]
						i(148228),	-- Fierce Gladiator's Chain Armor [H]
						i(148240),	-- Fierce Gladiator's Chain Clasp [H]
						i(148232),	-- Fierce Gladiator's Chain Gauntlets [H]
						i(148234),	-- Fierce Gladiator's Chain Helm [H]
						i(148236),	-- Fierce Gladiator's Chain Leggings [H]
						i(148238),	-- Fierce Gladiator's Chain Spaulders [H]
						i(148230),	-- Fierce Gladiator's Chain Treads [H]
						i(148162),	-- Fierce Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(148254),	-- Fierce Gladiator's Silk Amice [H]
						i(148258),	-- Fierce Gladiator's Silk Bracers [H]
						i(148256),	-- Fierce Gladiator's Silk Cord [H]
						i(148248),	-- Fierce Gladiator's Silk Cowl [H]
						i(148246),	-- Fierce Gladiator's Silk Handguards [H]
						i(148244),	-- Fierce Gladiator's Silk Treads [H]
						i(148250),	-- Fierce Gladiator's Silk Trousers [H]
						i(148252),	-- Fierce Gladiator's Silk Tunic [H]
						i(148164),	-- Fierce Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(148272),	-- Fierce Gladiator's Ironskin Belt [H]
						i(148166),	-- Fierce Gladiator's Ironskin Cloak [H]
						i(148262),	-- Fierce Gladiator's Ironskin Gloves [H]
						i(148264),	-- Fierce Gladiator's Ironskin Helm [H]
						i(148266),	-- Fierce Gladiator's Ironskin Legguards [H]
						i(148260),	-- Fierce Gladiator's Ironskin Slippers [H]
						i(148268),	-- Fierce Gladiator's Ironskin Spaulders [H]
						i(148270),	-- Fierce Gladiator's Ironskin Tunic [H]
						i(148274),	-- Fierce Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(148168),	-- Fierce Gladiator's Greatcloak of Faith [H]
						i(148282),	-- Fierce Gladiator's Scaled Breastplate [H]
						i(148286),	-- Fierce Gladiator's Scaled Gauntlets [H]
						i(148294),	-- Fierce Gladiator's Scaled Girdle [H]
						i(148288),	-- Fierce Gladiator's Scaled Helm [H]
						i(148290),	-- Fierce Gladiator's Scaled Legguards [H]
						i(148284),	-- Fierce Gladiator's Scaled Sabatons [H]
						i(148292),	-- Fierce Gladiator's Scaled Shoulders [H]
						i(148296),	-- Fierce Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(148170),	-- Fierce Gladiator's Drape of Piety [H]
						i(148312),	-- Fierce Gladiator's Satin Bracers [H]
						i(148310),	-- Fierce Gladiator's Satin Cord [H]
						i(148300),	-- Fierce Gladiator's Satin Gloves [H]
						i(148302),	-- Fierce Gladiator's Satin Hood [H]
						i(148304),	-- Fierce Gladiator's Satin Leggings [H]
						i(148308),	-- Fierce Gladiator's Satin Mantle [H]
						i(148306),	-- Fierce Gladiator's Satin Robe [H]
						i(148298),	-- Fierce Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(148332),	-- Fierce Gladiator's Leather Belt [H]
						i(148324),	-- Fierce Gladiator's Leather Gloves [H]
						i(148326),	-- Fierce Gladiator's Leather Helm [H]
						i(148328),	-- Fierce Gladiator's Leather Legguards [H]
						i(148322),	-- Fierce Gladiator's Leather Slippers [H]
						i(148330),	-- Fierce Gladiator's Leather Spaulders [H]
						i(148320),	-- Fierce Gladiator's Leather Tunic [H]
						i(148334),	-- Fierce Gladiator's Leather Wristguards [H]
						i(148172),	-- Fierce Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(148350),	-- Fierce Gladiator's Ringmail Armband [H]
						i(148336),	-- Fierce Gladiator's Ringmail Armor [H]
						i(148338),	-- Fierce Gladiator's Ringmail Boots [H]
						i(148348),	-- Fierce Gladiator's Ringmail Clasp [H]
						i(148340),	-- Fierce Gladiator's Ringmail Gauntlets [H]
						i(148342),	-- Fierce Gladiator's Ringmail Helm [H]
						i(148344),	-- Fierce Gladiator's Ringmail Leggings [H]
						i(148346),	-- Fierce Gladiator's Ringmail Spaulders [H]
						i(148174),	-- Fierce Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(148380),	-- Fierce Gladiator's Felweave Amice [H]
						i(148384),	-- Fierce Gladiator's Felweave Bracers [H]
						i(148176),	-- Fierce Gladiator's Felweave Cloak [H]
						i(148382),	-- Fierce Gladiator's Felweave Cord [H]
						i(148374),	-- Fierce Gladiator's Felweave Cowl [H]
						i(148372),	-- Fierce Gladiator's Felweave Handguards [H]
						i(148378),	-- Fierce Gladiator's Felweave Raiment [H]
						i(148370),	-- Fierce Gladiator's Felweave Treads [H]
						i(148376),	-- Fierce Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(148178),	-- Fierce Gladiator's Cloak of Battle [H]
						i(148386),	-- Fierce Gladiator's Plate Chestpiece [H]
						i(148390),	-- Fierce Gladiator's Plate Gauntlets [H]
						i(148398),	-- Fierce Gladiator's Plate Girdle [H]
						i(148392),	-- Fierce Gladiator's Plate Helm [H]
						i(148394),	-- Fierce Gladiator's Plate Legguards [H]
						i(148396),	-- Fierce Gladiator's Plate Shoulders [H]
						i(148388),	-- Fierce Gladiator's Plate Warboots [H]
						i(148400),	-- Fierce Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(148316),	-- Fierce Gladiator's Band [H]
					i(148314),	-- Fierce Gladiator's Ring [H]
					i(148318),	-- Fierce Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(148280),	-- Fierce Gladiator's Choker [H]
					i(148276),	-- Fierce Gladiator's Necklace [H]
					i(148278),	-- Fierce Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(148354),	-- Fierce Gladiator's Accolade of Conquest [H]
					i(148360),	-- Fierce Gladiator's Accolade of Dominance [H]
					i(148366),	-- Fierce Gladiator's Accolade of Victory [H]
					i(148352),	-- Fierce Gladiator's Badge of Conquest [H]
					i(148358),	-- Fierce Gladiator's Badge of Dominance [H]
					i(148364),	-- Fierce Gladiator's Badge of Victory [H]
					i(148356),	-- Fierce Gladiator's Insignia of Conquest [H]
					i(148362),	-- Fierce Gladiator's Insignia of Dominance [H]
					i(148368),	-- Fierce Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
	})),
})));
