-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_VINDICTIVE, bubbleDownSelf({
		["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0, ADDED_7_2_0 },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0 } }, {
			ach(10998, {	-- Vindictive Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(10997, {	-- Vindictive Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11017),		-- Challenger: Legion Season 1
			ach(11016),		-- Rival: Legion Season 1
			ach(11015),		-- Duelist: Legion Season 1
			ach(11578, {	-- Vindictive Elite
				["timeline"] = { ADDED_7_2_0, REMOVED_7_2_0 },
			}),
			ach(11011, {	-- Gladiator: Legion Season 1
				i(141843),	-- Vindictive Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(10999, {	-- Vindictive Gladiator's Storm Dragon
				["provider"] = { "i", 141843 },	-- Vindictive Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(11012, {	-- Vindictive Gladiator: Legion Season 1
				title(353),	-- Vindictive Gladiator <Name>
			}),
			-- RBG
			ach(11024, {	-- Soldier of the Alliance: Legion Season 1
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11025, {	-- Soldier of the Horde: Legion Season 1
				["races"] = HORDE_ONLY,
			}),
			ach(11022, {	-- Defender of the Alliance: Legion Season 1
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11023, {	-- Defender of the Horde: Legion Season 1
				["races"] = HORDE_ONLY,
			}),
			ach(11020, {	-- Guardian of the Alliance: Legion Season 1
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11021, {	-- Guardian of the Horde: Legion Season 1
				["races"] = HORDE_ONLY,
			}),
			ach(11018, {	-- Hero of the Alliance: Vindictive
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11019, {	-- Hero of the Horde: Vindictive
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(11630, {	-- More Like Win-dictive
				["timeline"] = { ADDED_7_2_0 },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(146164, {	-- Ensemble: Vindictive Combatant's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146264, {	-- Ensemble: Vindictive Combatant's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146168, {	-- Ensemble: Vindictive Combatant's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(146154, {	-- Ensemble: Vindictive Combatant's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(146156, {	-- Ensemble: Vindictive Combatant's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(146170, {	-- Ensemble: Vindictive Combatant's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(146166, {	-- Ensemble: Vindictive Combatant's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(146158, {	-- Ensemble: Vindictive Combatant's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(146172, {	-- Ensemble: Vindictive Combatant's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(146152, {	-- Ensemble: Vindictive Combatant's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(146160, {	-- Ensemble: Vindictive Combatant's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(146162, {	-- Ensemble: Vindictive Combatant's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(135905),	-- Vindictive Combatant's Dreadcloak [A]
						i(135817),	-- Vindictive Combatant's Dreadplate Chestpiece [A]
						i(135819),	-- Vindictive Combatant's Dreadplate Gauntlets [A]
						i(135823),	-- Vindictive Combatant's Dreadplate Girdle [A]
						i(135820),	-- Vindictive Combatant's Dreadplate Helm [A]
						i(135821),	-- Vindictive Combatant's Dreadplate Legguards [A]
						i(135818),	-- Vindictive Combatant's Dreadplate Sabatons [A]
						i(135822),	-- Vindictive Combatant's Dreadplate Shoulders [A]
						i(135824),	-- Vindictive Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(136893),	-- Vindictive Combatant's Demonthread Cloak [A]
						i(136301),	-- Vindictive Combatant's Felskin Belt [A]
						i(136295),	-- Vindictive Combatant's Felskin Boots [A]
						i(136296),	-- Vindictive Combatant's Felskin Gloves [A]
						i(136297),	-- Vindictive Combatant's Felskin Helm [A]
						i(136298),	-- Vindictive Combatant's Felskin Legguards [A]
						i(136300),	-- Vindictive Combatant's Felskin Spaulders [A]
						i(136299),	-- Vindictive Combatant's Felskin Tunic [A]
						i(136302),	-- Vindictive Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(135831),	-- Vindictive Combatant's Dragonhide Belt [A]
						i(135909),	-- Vindictive Combatant's Dragonhide Cloak [A]
						i(135826),	-- Vindictive Combatant's Dragonhide Gloves [A]
						i(135827),	-- Vindictive Combatant's Dragonhide Helm [A]
						i(135828),	-- Vindictive Combatant's Dragonhide Legguards [A]
						i(135825),	-- Vindictive Combatant's Dragonhide Moccasins [A]
						i(135830),	-- Vindictive Combatant's Dragonhide Spaulders [A]
						i(135829),	-- Vindictive Combatant's Dragonhide Tunic [A]
						i(135832),	-- Vindictive Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(135840),	-- Vindictive Combatant's Chain Armband [A]
						i(135833),	-- Vindictive Combatant's Chain Armor [A]
						i(135839),	-- Vindictive Combatant's Chain Clasp [A]
						i(135835),	-- Vindictive Combatant's Chain Gauntlets [A]
						i(135836),	-- Vindictive Combatant's Chain Helm [A]
						i(135837),	-- Vindictive Combatant's Chain Leggings [A]
						i(135838),	-- Vindictive Combatant's Chain Spaulders [A]
						i(135834),	-- Vindictive Combatant's Chain Treads [A]
						i(135913),	-- Vindictive Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(135846),	-- Vindictive Combatant's Silk Amice [A]
						i(135848),	-- Vindictive Combatant's Silk Bracers [A]
						i(135847),	-- Vindictive Combatant's Silk Cord [A]
						i(135843),	-- Vindictive Combatant's Silk Cowl [A]
						i(135842),	-- Vindictive Combatant's Silk Handguards [A]
						i(135841),	-- Vindictive Combatant's Silk Treads [A]
						i(135844),	-- Vindictive Combatant's Silk Trousers [A]
						i(135845),	-- Vindictive Combatant's Silk Tunic [A]
						i(135906),	-- Vindictive Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(135855),	-- Vindictive Combatant's Ironskin Belt [A]
						i(135910),	-- Vindictive Combatant's Ironskin Cloak [A]
						i(135850),	-- Vindictive Combatant's Ironskin Gloves [A]
						i(135851),	-- Vindictive Combatant's Ironskin Helm [A]
						i(135852),	-- Vindictive Combatant's Ironskin Legguards [A]
						i(135849),	-- Vindictive Combatant's Ironskin Slippers [A]
						i(135853),	-- Vindictive Combatant's Ironskin Spaulders [A]
						i(135854),	-- Vindictive Combatant's Ironskin Tunic [A]
						i(135856),	-- Vindictive Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(135914),	-- Vindictive Combatant's Greatcloak of Faith [A]
						i(135857),	-- Vindictive Combatant's Scaled Chestpiece [A]
						i(135859),	-- Vindictive Combatant's Scaled Gauntlets [A]
						i(135863),	-- Vindictive Combatant's Scaled Girdle [A]
						i(135860),	-- Vindictive Combatant's Scaled Helm [A]
						i(135861),	-- Vindictive Combatant's Scaled Legguards [A]
						i(135858),	-- Vindictive Combatant's Scaled Sabatons [A]
						i(135862),	-- Vindictive Combatant's Scaled Shoulders [A]
						i(135864),	-- Vindictive Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(136867),	-- Vindictive Combatant's Drape of Piety [A]
						i(135872),	-- Vindictive Combatant's Satin Bracers [A]
						i(135871),	-- Vindictive Combatant's Satin Cord [A]
						i(135866),	-- Vindictive Combatant's Satin Gloves [A]
						i(135867),	-- Vindictive Combatant's Satin Hood [A]
						i(135868),	-- Vindictive Combatant's Satin Leggings [A]
						i(135870),	-- Vindictive Combatant's Satin Mantle [A]
						i(135865),	-- Vindictive Combatant's Satin Treads [A]
						i(135869),	-- Vindictive Combatant's Satin Tunic [A]
					}),
					cl(ROGUE, {
						i(135879),	-- Vindictive Combatant's Leather Belt [A]
						i(135875),	-- Vindictive Combatant's Leather Gloves [A]
						i(135876),	-- Vindictive Combatant's Leather Helm [A]
						i(135877),	-- Vindictive Combatant's Leather Legguards [A]
						i(135874),	-- Vindictive Combatant's Leather Slippers [A]
						i(135878),	-- Vindictive Combatant's Leather Spaulders [A]
						i(135873),	-- Vindictive Combatant's Leather Tunic [A]
						i(135880),	-- Vindictive Combatant's Leather Wristguards [A]
						i(136868),	-- Vindictive Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(135888),	-- Vindictive Combatant's Ringmail Armband [A]
						i(135881),	-- Vindictive Combatant's Ringmail Armor [A]
						i(135882),	-- Vindictive Combatant's Ringmail Boots [A]
						i(135887),	-- Vindictive Combatant's Ringmail Clasp [A]
						i(135883),	-- Vindictive Combatant's Ringmail Gauntlets [A]
						i(135884),	-- Vindictive Combatant's Ringmail Helm [A]
						i(135885),	-- Vindictive Combatant's Ringmail Kilt [A]
						i(135886),	-- Vindictive Combatant's Ringmail Spaulders [A]
						i(136869),	-- Vindictive Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(135894),	-- Vindictive Combatant's Felweave Amice [A]
						i(135896),	-- Vindictive Combatant's Felweave Bracers [A]
						i(136881),	-- Vindictive Combatant's Felweave Cloak [A]
						i(135895),	-- Vindictive Combatant's Felweave Cord [A]
						i(135891),	-- Vindictive Combatant's Felweave Cowl [A]
						i(135890),	-- Vindictive Combatant's Felweave Handguards [A]
						i(135889),	-- Vindictive Combatant's Felweave Treads [A]
						i(135892),	-- Vindictive Combatant's Felweave Trousers [A]
						i(135893),	-- Vindictive Combatant's Felweave Tunic [A]
					}),
					cl(WARRIOR, {
						i(136887),	-- Vindictive Combatant's Cloak of Battle [A]
						i(135897),	-- Vindictive Combatant's Plate Chestpiece [A]
						i(135899),	-- Vindictive Combatant's Plate Gauntlets [A]
						i(135903),	-- Vindictive Combatant's Plate Girdle [A]
						i(135900),	-- Vindictive Combatant's Plate Helm [A]
						i(135901),	-- Vindictive Combatant's Plate Legguards [A]
						i(135902),	-- Vindictive Combatant's Plate Shoulders [A]
						i(135898),	-- Vindictive Combatant's Plate Warboots [A]
						i(135904),	-- Vindictive Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(135912),	-- Vindictive Combatant's Band [A]
					i(135908),	-- Vindictive Combatant's Ring [A]
					i(135916),	-- Vindictive Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(135915),	-- Vindictive Combatant's Choker [A]
					i(135907),	-- Vindictive Combatant's Necklace [A]
					i(135911),	-- Vindictive Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(135918),	-- Vindictive Combatant's Accolade of Conquest [A]
					i(135924),	-- Vindictive Combatant's Accolade of Dominance [A]
					i(135927),	-- Vindictive Combatant's Accolade of Victory [A]
					i(135929),	-- Vindictive Combatant's Badge of Adaptation [A]
					i(135917),	-- Vindictive Combatant's Badge of Conquest [A]
					i(135923),	-- Vindictive Combatant's Badge of Dominance [A]
					i(135926),	-- Vindictive Combatant's Badge of Victory [A]
					i(135920),	-- Vindictive Combatant's Emblem of Cruelty [A]
					i(135922),	-- Vindictive Combatant's Emblem of Meditation [A]
					i(135921),	-- Vindictive Combatant's Emblem of Tenacity [A]
					i(135919),	-- Vindictive Combatant's Insignia of Conquest [A]
					i(135925),	-- Vindictive Combatant's Insignia of Dominance [A]
					i(135928),	-- Vindictive Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(146165, {	-- Ensemble: Vindictive Combatant's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146265, {	-- Ensemble: Vindictive Combatant's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146169, {	-- Ensemble: Vindictive Combatant's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(146155, {	-- Ensemble: Vindictive Combatant's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(146157, {	-- Ensemble: Vindictive Combatant's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(146171, {	-- Ensemble: Vindictive Combatant's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(146167, {	-- Ensemble: Vindictive Combatant's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(146159, {	-- Ensemble: Vindictive Combatant's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(146173, {	-- Ensemble: Vindictive Combatant's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(146153, {	-- Ensemble: Vindictive Combatant's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(146161, {	-- Ensemble: Vindictive Combatant's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(146163, {	-- Ensemble: Vindictive Combatant's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(136018),	-- Vindictive Combatant's Dreadcloak [H]
						i(135930),	-- Vindictive Combatant's Dreadplate Chestpiece [H]
						i(135932),	-- Vindictive Combatant's Dreadplate Gauntlets [H]
						i(135936),	-- Vindictive Combatant's Dreadplate Girdle [H]
						i(135933),	-- Vindictive Combatant's Dreadplate Helm [H]
						i(135934),	-- Vindictive Combatant's Dreadplate Legguards [H]
						i(135931),	-- Vindictive Combatant's Dreadplate Sabatons [H]
						i(135935),	-- Vindictive Combatant's Dreadplate Shoulders [H]
						i(135937),	-- Vindictive Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(136894),	-- Vindictive Combatant's Demonthread Cloak [H]
						i(136309),	-- Vindictive Combatant's Felskin Belt [H]
						i(136303),	-- Vindictive Combatant's Felskin Boots [H]
						i(136304),	-- Vindictive Combatant's Felskin Gloves [H]
						i(136305),	-- Vindictive Combatant's Felskin Helm [H]
						i(136306),	-- Vindictive Combatant's Felskin Legguards [H]
						i(136308),	-- Vindictive Combatant's Felskin Spaulders [H]
						i(136307),	-- Vindictive Combatant's Felskin Tunic [H]
						i(136310),	-- Vindictive Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(135944),	-- Vindictive Combatant's Dragonhide Belt [H]
						i(136022),	-- Vindictive Combatant's Dragonhide Cloak [H]
						i(135939),	-- Vindictive Combatant's Dragonhide Gloves [H]
						i(135940),	-- Vindictive Combatant's Dragonhide Helm [H]
						i(135941),	-- Vindictive Combatant's Dragonhide Legguards [H]
						i(135938),	-- Vindictive Combatant's Dragonhide Moccasins [H]
						i(135943),	-- Vindictive Combatant's Dragonhide Spaulders [H]
						i(135942),	-- Vindictive Combatant's Dragonhide Tunic [H]
						i(135945),	-- Vindictive Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(135953),	-- Vindictive Combatant's Chain Armband [H]
						i(135946),	-- Vindictive Combatant's Chain Armor [H]
						i(135952),	-- Vindictive Combatant's Chain Clasp [H]
						i(135948),	-- Vindictive Combatant's Chain Gauntlets [H]
						i(135949),	-- Vindictive Combatant's Chain Helm [H]
						i(135950),	-- Vindictive Combatant's Chain Leggings [H]
						i(135951),	-- Vindictive Combatant's Chain Spaulders [H]
						i(135947),	-- Vindictive Combatant's Chain Treads [H]
						i(136026),	-- Vindictive Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(135959),	-- Vindictive Combatant's Silk Amice [H]
						i(135961),	-- Vindictive Combatant's Silk Bracers [H]
						i(135960),	-- Vindictive Combatant's Silk Cord [H]
						i(135956),	-- Vindictive Combatant's Silk Cowl [H]
						i(135955),	-- Vindictive Combatant's Silk Handguards [H]
						i(135954),	-- Vindictive Combatant's Silk Treads [H]
						i(135957),	-- Vindictive Combatant's Silk Trousers [H]
						i(135958),	-- Vindictive Combatant's Silk Tunic [H]
						i(136019),	-- Vindictive Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(135968),	-- Vindictive Combatant's Ironskin Belt [H]
						i(136023),	-- Vindictive Combatant's Ironskin Cloak [H]
						i(135963),	-- Vindictive Combatant's Ironskin Gloves [H]
						i(135964),	-- Vindictive Combatant's Ironskin Helm [H]
						i(135965),	-- Vindictive Combatant's Ironskin Legguards [H]
						i(135962),	-- Vindictive Combatant's Ironskin Slippers [H]
						i(135966),	-- Vindictive Combatant's Ironskin Spaulders [H]
						i(135967),	-- Vindictive Combatant's Ironskin Tunic [H]
						i(135969),	-- Vindictive Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(136027),	-- Vindictive Combatant's Greatcloak of Faith [H]
						i(135970),	-- Vindictive Combatant's Scaled Chestpiece [H]
						i(135972),	-- Vindictive Combatant's Scaled Gauntlets [H]
						i(135976),	-- Vindictive Combatant's Scaled Girdle [H]
						i(135973),	-- Vindictive Combatant's Scaled Helm [H]
						i(135974),	-- Vindictive Combatant's Scaled Legguards [H]
						i(135971),	-- Vindictive Combatant's Scaled Sabatons [H]
						i(135975),	-- Vindictive Combatant's Scaled Shoulders [H]
						i(135977),	-- Vindictive Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(136870),	-- Vindictive Combatant's Drape of Piety [H]
						i(135985),	-- Vindictive Combatant's Satin Bracers [H]
						i(135984),	-- Vindictive Combatant's Satin Cord [H]
						i(135979),	-- Vindictive Combatant's Satin Gloves [H]
						i(135980),	-- Vindictive Combatant's Satin Hood [H]
						i(135981),	-- Vindictive Combatant's Satin Leggings [H]
						i(135983),	-- Vindictive Combatant's Satin Mantle [H]
						i(135978),	-- Vindictive Combatant's Satin Treads [H]
						i(135982),	-- Vindictive Combatant's Satin Tunic [H]
					}),
					cl(ROGUE, {
						i(135992),	-- Vindictive Combatant's Leather Belt [H]
						i(135988),	-- Vindictive Combatant's Leather Gloves [H]
						i(135989),	-- Vindictive Combatant's Leather Helm [H]
						i(135990),	-- Vindictive Combatant's Leather Legguards [H]
						i(135987),	-- Vindictive Combatant's Leather Slippers [H]
						i(135991),	-- Vindictive Combatant's Leather Spaulders [H]
						i(135986),	-- Vindictive Combatant's Leather Tunic [H]
						i(135993),	-- Vindictive Combatant's Leather Wristguards [H]
						i(136871),	-- Vindictive Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(136001),	-- Vindictive Combatant's Ringmail Armband [H]
						i(135994),	-- Vindictive Combatant's Ringmail Armor [H]
						i(135995),	-- Vindictive Combatant's Ringmail Boots [H]
						i(136000),	-- Vindictive Combatant's Ringmail Clasp [H]
						i(135996),	-- Vindictive Combatant's Ringmail Gauntlets [H]
						i(135997),	-- Vindictive Combatant's Ringmail Helm [H]
						i(135998),	-- Vindictive Combatant's Ringmail Kilt [H]
						i(135999),	-- Vindictive Combatant's Ringmail Spaulders [H]
						i(136872),	-- Vindictive Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(136007),	-- Vindictive Combatant's Felweave Amice [H]
						i(136009),	-- Vindictive Combatant's Felweave Bracers [H]
						i(136882),	-- Vindictive Combatant's Felweave Cloak [H]
						i(136008),	-- Vindictive Combatant's Felweave Cord [H]
						i(136004),	-- Vindictive Combatant's Felweave Cowl [H]
						i(136003),	-- Vindictive Combatant's Felweave Handguards [H]
						i(136002),	-- Vindictive Combatant's Felweave Treads [H]
						i(136005),	-- Vindictive Combatant's Felweave Trousers [H]
						i(136006),	-- Vindictive Combatant's Felweave Tunic [H]
					}),
					cl(WARRIOR, {
						i(136888),	-- Vindictive Combatant's Cloak of Battle [H]
						i(136010),	-- Vindictive Combatant's Plate Chestpiece [H]
						i(136012),	-- Vindictive Combatant's Plate Gauntlets [H]
						i(136016),	-- Vindictive Combatant's Plate Girdle [H]
						i(136013),	-- Vindictive Combatant's Plate Helm [H]
						i(136014),	-- Vindictive Combatant's Plate Legguards [H]
						i(136015),	-- Vindictive Combatant's Plate Shoulders [H]
						i(136011),	-- Vindictive Combatant's Plate Warboots [H]
						i(136017),	-- Vindictive Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(136025),	-- Vindictive Combatant's Band [H]
					i(136021),	-- Vindictive Combatant's Ring [H]
					i(136029),	-- Vindictive Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(136028),	-- Vindictive Combatant's Choker [H]
					i(136020),	-- Vindictive Combatant's Necklace [H]
					i(136024),	-- Vindictive Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(136031),	-- Vindictive Combatant's Accolade of Conquest [H]
					i(136037),	-- Vindictive Combatant's Accolade of Dominance [H]
					i(136040),	-- Vindictive Combatant's Accolade of Victory [H]
					i(136042),	-- Vindictive Combatant's Badge of Adaptation [H]
					i(136030),	-- Vindictive Combatant's Badge of Conquest [H]
					i(136036),	-- Vindictive Combatant's Badge of Dominance [H]
					i(136039),	-- Vindictive Combatant's Badge of Victory [H]
					i(136033),	-- Vindictive Combatant's Emblem of Cruelty [H]
					i(136035),	-- Vindictive Combatant's Emblem of Meditation [H]
					i(136034),	-- Vindictive Combatant's Emblem of Tenacity [H]
					i(136032),	-- Vindictive Combatant's Insignia of Conquest [H]
					i(136038),	-- Vindictive Combatant's Insignia of Dominance [H]
					i(136041),	-- Vindictive Combatant's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(146132, {	-- Ensemble: Vindictive Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146262, {	-- Ensemble: Vindictive Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146140, {	-- Ensemble: Vindictive Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(146138, {	-- Ensemble: Vindictive Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(146146, {	-- Ensemble: Vindictive Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(146142, {	-- Ensemble: Vindictive Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(146134, {	-- Ensemble: Vindictive Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(146148, {	-- Ensemble: Vindictive Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(146144, {	-- Ensemble: Vindictive Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(146136, {	-- Ensemble: Vindictive Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(146150, {	-- Ensemble: Vindictive Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(146130, {	-- Ensemble: Vindictive Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(135679),	-- Vindictive Gladiator's Dreadcloak [A]
						i(135591),	-- Vindictive Gladiator's Dreadplate Chestpiece [A]
						i(135593),	-- Vindictive Gladiator's Dreadplate Gauntlets [A]
						i(135597),	-- Vindictive Gladiator's Dreadplate Girdle [A]
						i(135594),	-- Vindictive Gladiator's Dreadplate Helm [A]
						i(135595),	-- Vindictive Gladiator's Dreadplate Legguards [A]
						i(135592),	-- Vindictive Gladiator's Dreadplate Sabatons [A]
						i(135596),	-- Vindictive Gladiator's Dreadplate Shoulders [A]
						i(135598),	-- Vindictive Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(136891),	-- Vindictive Gladiator's Demonthread Cloak [A]
						i(136285),	-- Vindictive Gladiator's Felskin Belt [A]
						i(136279),	-- Vindictive Gladiator's Felskin Boots [A]
						i(136280),	-- Vindictive Gladiator's Felskin Gloves [A]
						i(136281),	-- Vindictive Gladiator's Felskin Helm [A]
						i(136282),	-- Vindictive Gladiator's Felskin Legguards [A]
						i(136284),	-- Vindictive Gladiator's Felskin Spaulders [A]
						i(136283),	-- Vindictive Gladiator's Felskin Tunic [A]
						i(136286),	-- Vindictive Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(135605),	-- Vindictive Gladiator's Dragonhide Belt [A]
						i(135680),	-- Vindictive Gladiator's Dragonhide Cloak [A]
						i(135600),	-- Vindictive Gladiator's Dragonhide Gloves [A]
						i(135601),	-- Vindictive Gladiator's Dragonhide Helm [A]
						i(135602),	-- Vindictive Gladiator's Dragonhide Legguards [A]
						i(135599),	-- Vindictive Gladiator's Dragonhide Moccasins [A]
						i(135603),	-- Vindictive Gladiator's Dragonhide Robe [A]
						i(135604),	-- Vindictive Gladiator's Dragonhide Spaulders [A]
						i(135606),	-- Vindictive Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(135614),	-- Vindictive Gladiator's Chain Armband [A]
						i(135607),	-- Vindictive Gladiator's Chain Armor [A]
						i(135613),	-- Vindictive Gladiator's Chain Clasp [A]
						i(135609),	-- Vindictive Gladiator's Chain Gauntlets [A]
						i(135610),	-- Vindictive Gladiator's Chain Helm [A]
						i(135611),	-- Vindictive Gladiator's Chain Leggings [A]
						i(135612),	-- Vindictive Gladiator's Chain Spaulders [A]
						i(135608),	-- Vindictive Gladiator's Chain Treads [A]
						i(135683),	-- Vindictive Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(135620),	-- Vindictive Gladiator's Silk Amice [A]
						i(135622),	-- Vindictive Gladiator's Silk Bracers [A]
						i(135621),	-- Vindictive Gladiator's Silk Cord [A]
						i(135617),	-- Vindictive Gladiator's Silk Cowl [A]
						i(135616),	-- Vindictive Gladiator's Silk Handguards [A]
						i(135619),	-- Vindictive Gladiator's Silk Robe [A]
						i(135615),	-- Vindictive Gladiator's Silk Treads [A]
						i(135618),	-- Vindictive Gladiator's Silk Trousers [A]
						i(135684),	-- Vindictive Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(135629),	-- Vindictive Gladiator's Ironskin Belt [A]
						i(135687),	-- Vindictive Gladiator's Ironskin Cloak [A]
						i(135624),	-- Vindictive Gladiator's Ironskin Gloves [A]
						i(135625),	-- Vindictive Gladiator's Ironskin Helm [A]
						i(135626),	-- Vindictive Gladiator's Ironskin Legguards [A]
						i(135623),	-- Vindictive Gladiator's Ironskin Slippers [A]
						i(135627),	-- Vindictive Gladiator's Ironskin Spaulders [A]
						i(135628),	-- Vindictive Gladiator's Ironskin Tunic [A]
						i(135630),	-- Vindictive Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(135688),	-- Vindictive Gladiator's Greatcloak of Faith [A]
						i(135631),	-- Vindictive Gladiator's Scaled Battlerobe [A]
						i(135633),	-- Vindictive Gladiator's Scaled Gauntlets [A]
						i(135637),	-- Vindictive Gladiator's Scaled Girdle [A]
						i(135634),	-- Vindictive Gladiator's Scaled Helm [A]
						i(135635),	-- Vindictive Gladiator's Scaled Legguards [A]
						i(135632),	-- Vindictive Gladiator's Scaled Sabatons [A]
						i(135636),	-- Vindictive Gladiator's Scaled Shoulders [A]
						i(135638),	-- Vindictive Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(136861),	-- Vindictive Gladiator's Drape of Piety [A]
						i(135646),	-- Vindictive Gladiator's Satin Bracers [A]
						i(135645),	-- Vindictive Gladiator's Satin Cord [A]
						i(135640),	-- Vindictive Gladiator's Satin Gloves [A]
						i(135641),	-- Vindictive Gladiator's Satin Hood [A]
						i(135642),	-- Vindictive Gladiator's Satin Leggings [A]
						i(135644),	-- Vindictive Gladiator's Satin Mantle [A]
						i(135643),	-- Vindictive Gladiator's Satin Robe [A]
						i(135639),	-- Vindictive Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(135653),	-- Vindictive Gladiator's Leather Belt [A]
						i(135649),	-- Vindictive Gladiator's Leather Gloves [A]
						i(135650),	-- Vindictive Gladiator's Leather Helm [A]
						i(135651),	-- Vindictive Gladiator's Leather Legguards [A]
						i(135648),	-- Vindictive Gladiator's Leather Slippers [A]
						i(135652),	-- Vindictive Gladiator's Leather Spaulders [A]
						i(135647),	-- Vindictive Gladiator's Leather Tunic [A]
						i(135654),	-- Vindictive Gladiator's Leather Wristguards [A]
						i(136862),	-- Vindictive Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(135662),	-- Vindictive Gladiator's Ringmail Armband [A]
						i(135655),	-- Vindictive Gladiator's Ringmail Armor [A]
						i(135656),	-- Vindictive Gladiator's Ringmail Boots [A]
						i(135661),	-- Vindictive Gladiator's Ringmail Clasp [A]
						i(135657),	-- Vindictive Gladiator's Ringmail Gauntlets [A]
						i(135658),	-- Vindictive Gladiator's Ringmail Helm [A]
						i(135659),	-- Vindictive Gladiator's Ringmail Kilt [A]
						i(135660),	-- Vindictive Gladiator's Ringmail Spaulders [A]
						i(136863),	-- Vindictive Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(135668),	-- Vindictive Gladiator's Felweave Amice [A]
						i(135670),	-- Vindictive Gladiator's Felweave Bracers [A]
						i(136879),	-- Vindictive Gladiator's Felweave Cloak [A]
						i(135669),	-- Vindictive Gladiator's Felweave Cord [A]
						i(135665),	-- Vindictive Gladiator's Felweave Cowl [A]
						i(135664),	-- Vindictive Gladiator's Felweave Handguards [A]
						i(135667),	-- Vindictive Gladiator's Felweave Raiment [A]
						i(135663),	-- Vindictive Gladiator's Felweave Treads [A]
						i(135666),	-- Vindictive Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(136885),	-- Vindictive Gladiator's Cloak of Battle [A]
						i(135671),	-- Vindictive Gladiator's Plate Chestpiece [A]
						i(135673),	-- Vindictive Gladiator's Plate Gauntlets [A]
						i(135677),	-- Vindictive Gladiator's Plate Girdle [A]
						i(135674),	-- Vindictive Gladiator's Plate Helm [A]
						i(135675),	-- Vindictive Gladiator's Plate Legguards [A]
						i(135676),	-- Vindictive Gladiator's Plate Shoulders [A]
						i(135672),	-- Vindictive Gladiator's Plate Warboots [A]
						i(135678),	-- Vindictive Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(135686),	-- Vindictive Gladiator's Band [A]
					i(135682),	-- Vindictive Gladiator's Ring [A]
					i(135690),	-- Vindictive Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(135689),	-- Vindictive Gladiator's Choker [A]
					i(135681),	-- Vindictive Gladiator's Necklace [A]
					i(135685),	-- Vindictive Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(135692),	-- Vindictive Gladiator's Accolade of Conquest [A]
					i(135698),	-- Vindictive Gladiator's Accolade of Dominance [A]
					i(135701),	-- Vindictive Gladiator's Accolade of Victory [A]
					i(135703),	-- Vindictive Gladiator's Badge of Adaptation [A]
					i(135691),	-- Vindictive Gladiator's Badge of Conquest [A]
					i(135697),	-- Vindictive Gladiator's Badge of Dominance [A]
					i(135700),	-- Vindictive Gladiator's Badge of Victory [A]
					i(135694),	-- Vindictive Gladiator's Emblem of Cruelty [A]
					i(135696),	-- Vindictive Gladiator's Emblem of Meditation [A]
					i(135695),	-- Vindictive Gladiator's Emblem of Tenacity [A]
					i(135693),	-- Vindictive Gladiator's Insignia of Conquest [A]
					i(135699),	-- Vindictive Gladiator's Insignia of Dominance [A]
					i(135702),	-- Vindictive Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(146133, {	-- Ensemble: Vindictive Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146263, {	-- Ensemble: Vindictive Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146141, {	-- Ensemble: Vindictive Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(146139, {	-- Ensemble: Vindictive Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(146147, {	-- Ensemble: Vindictive Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(146143, {	-- Ensemble: Vindictive Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(146135, {	-- Ensemble: Vindictive Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(146149, {	-- Ensemble: Vindictive Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(146145, {	-- Ensemble: Vindictive Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(146137, {	-- Ensemble: Vindictive Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(146151, {	-- Ensemble: Vindictive Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(146131, {	-- Ensemble: Vindictive Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_7_1_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(135792),	-- Vindictive Gladiator's Dreadcloak [H]
						i(135704),	-- Vindictive Gladiator's Dreadplate Chestpiece [H]
						i(135706),	-- Vindictive Gladiator's Dreadplate Gauntlets [H]
						i(135710),	-- Vindictive Gladiator's Dreadplate Girdle [H]
						i(135707),	-- Vindictive Gladiator's Dreadplate Helm [H]
						i(135708),	-- Vindictive Gladiator's Dreadplate Legguards [H]
						i(135705),	-- Vindictive Gladiator's Dreadplate Sabatons [H]
						i(135709),	-- Vindictive Gladiator's Dreadplate Shoulders [H]
						i(135711),	-- Vindictive Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(136892),	-- Vindictive Gladiator's Demonthread Cloak [H]
						i(136293),	-- Vindictive Gladiator's Felskin Belt [H]
						i(136287),	-- Vindictive Gladiator's Felskin Boots [H]
						i(136288),	-- Vindictive Gladiator's Felskin Gloves [H]
						i(136289),	-- Vindictive Gladiator's Felskin Helm [H]
						i(136290),	-- Vindictive Gladiator's Felskin Legguards [H]
						i(136292),	-- Vindictive Gladiator's Felskin Spaulders [H]
						i(136291),	-- Vindictive Gladiator's Felskin Tunic [H]
						i(136294),	-- Vindictive Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(135718),	-- Vindictive Gladiator's Dragonhide Belt [H]
						i(135796),	-- Vindictive Gladiator's Dragonhide Cloak [H]
						i(135713),	-- Vindictive Gladiator's Dragonhide Gloves [H]
						i(135714),	-- Vindictive Gladiator's Dragonhide Helm [H]
						i(135715),	-- Vindictive Gladiator's Dragonhide Legguards [H]
						i(135712),	-- Vindictive Gladiator's Dragonhide Moccasins [H]
						i(135716),	-- Vindictive Gladiator's Dragonhide Robe [H]
						i(135717),	-- Vindictive Gladiator's Dragonhide Spaulders [H]
						i(135719),	-- Vindictive Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(135727),	-- Vindictive Gladiator's Chain Armband [H]
						i(135720),	-- Vindictive Gladiator's Chain Armor [H]
						i(135726),	-- Vindictive Gladiator's Chain Clasp [H]
						i(135722),	-- Vindictive Gladiator's Chain Gauntlets [H]
						i(135723),	-- Vindictive Gladiator's Chain Helm [H]
						i(135724),	-- Vindictive Gladiator's Chain Leggings [H]
						i(135725),	-- Vindictive Gladiator's Chain Spaulders [H]
						i(135721),	-- Vindictive Gladiator's Chain Treads [H]
						i(135800),	-- Vindictive Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(135733),	-- Vindictive Gladiator's Silk Amice [H]
						i(135735),	-- Vindictive Gladiator's Silk Bracers [H]
						i(135734),	-- Vindictive Gladiator's Silk Cord [H]
						i(135730),	-- Vindictive Gladiator's Silk Cowl [H]
						i(135729),	-- Vindictive Gladiator's Silk Handguards [H]
						i(135732),	-- Vindictive Gladiator's Silk Robe [H]
						i(135728),	-- Vindictive Gladiator's Silk Treads [H]
						i(135731),	-- Vindictive Gladiator's Silk Trousers [H]
						i(135793),	-- Vindictive Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(135742),	-- Vindictive Gladiator's Ironskin Belt [H]
						i(135797),	-- Vindictive Gladiator's Ironskin Cloak [H]
						i(135737),	-- Vindictive Gladiator's Ironskin Gloves [H]
						i(135738),	-- Vindictive Gladiator's Ironskin Helm [H]
						i(135739),	-- Vindictive Gladiator's Ironskin Legguards [H]
						i(135736),	-- Vindictive Gladiator's Ironskin Slippers [H]
						i(135740),	-- Vindictive Gladiator's Ironskin Spaulders [H]
						i(135741),	-- Vindictive Gladiator's Ironskin Tunic [H]
						i(135743),	-- Vindictive Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(135801),	-- Vindictive Gladiator's Greatcloak of Faith [H]
						i(135744),	-- Vindictive Gladiator's Scaled Battlerobe [H]
						i(135746),	-- Vindictive Gladiator's Scaled Gauntlets [H]
						i(135750),	-- Vindictive Gladiator's Scaled Girdle [H]
						i(135747),	-- Vindictive Gladiator's Scaled Helm [H]
						i(135748),	-- Vindictive Gladiator's Scaled Legguards [H]
						i(135745),	-- Vindictive Gladiator's Scaled Sabatons [H]
						i(135749),	-- Vindictive Gladiator's Scaled Shoulders [H]
						i(135751),	-- Vindictive Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(136864),	-- Vindictive Gladiator's Drape of Piety [H]
						i(135759),	-- Vindictive Gladiator's Satin Bracers [H]
						i(135758),	-- Vindictive Gladiator's Satin Cord [H]
						i(135753),	-- Vindictive Gladiator's Satin Gloves [H]
						i(135754),	-- Vindictive Gladiator's Satin Hood [H]
						i(135755),	-- Vindictive Gladiator's Satin Leggings [H]
						i(135757),	-- Vindictive Gladiator's Satin Mantle [H]
						i(135756),	-- Vindictive Gladiator's Satin Robe [H]
						i(135752),	-- Vindictive Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(135766),	-- Vindictive Gladiator's Leather Belt [H]
						i(135762),	-- Vindictive Gladiator's Leather Gloves [H]
						i(135763),	-- Vindictive Gladiator's Leather Helm [H]
						i(135764),	-- Vindictive Gladiator's Leather Legguards [H]
						i(135761),	-- Vindictive Gladiator's Leather Slippers [H]
						i(135765),	-- Vindictive Gladiator's Leather Spaulders [H]
						i(135760),	-- Vindictive Gladiator's Leather Tunic [H]
						i(135767),	-- Vindictive Gladiator's Leather Wristguards [H]
						i(136865),	-- Vindictive Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(136866),	-- Vindictive Gladiator's Totemic Cloak [H]
						i(135775),	-- Vindictive Gladiator's Ringmail Armband [H]
						i(135768),	-- Vindictive Gladiator's Ringmail Armor [H]
						i(135769),	-- Vindictive Gladiator's Ringmail Boots [H]
						i(135774),	-- Vindictive Gladiator's Ringmail Clasp [H]
						i(135770),	-- Vindictive Gladiator's Ringmail Gauntlets [H]
						i(135771),	-- Vindictive Gladiator's Ringmail Helm [H]
						i(135772),	-- Vindictive Gladiator's Ringmail Kilt [H]
						i(135773),	-- Vindictive Gladiator's Ringmail Spaulders [H]
					}),
					cl(WARLOCK, {
						i(135781),	-- Vindictive Gladiator's Felweave Amice [H]
						i(135783),	-- Vindictive Gladiator's Felweave Bracers [H]
						i(136880),	-- Vindictive Gladiator's Felweave Cloak [H]
						i(135782),	-- Vindictive Gladiator's Felweave Cord [H]
						i(135778),	-- Vindictive Gladiator's Felweave Cowl [H]
						i(135777),	-- Vindictive Gladiator's Felweave Handguards [H]
						i(135780),	-- Vindictive Gladiator's Felweave Raiment [H]
						i(135776),	-- Vindictive Gladiator's Felweave Treads [H]
						i(135779),	-- Vindictive Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(136886),	-- Vindictive Gladiator's Cloak of Battle [H]
						i(135784),	-- Vindictive Gladiator's Plate Chestpiece [H]
						i(135786),	-- Vindictive Gladiator's Plate Gauntlets [H]
						i(135790),	-- Vindictive Gladiator's Plate Girdle [H]
						i(135787),	-- Vindictive Gladiator's Plate Helm [H]
						i(135788),	-- Vindictive Gladiator's Plate Legguards [H]
						i(135789),	-- Vindictive Gladiator's Plate Shoulders [H]
						i(135785),	-- Vindictive Gladiator's Plate Warboots [H]
						i(135791),	-- Vindictive Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(135799),	-- Vindictive Gladiator's Band [H]
					i(135795),	-- Vindictive Gladiator's Ring [H]
					i(135803),	-- Vindictive Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(135802),	-- Vindictive Gladiator's Choker [H]
					i(135794),	-- Vindictive Gladiator's Necklace [H]
					i(135798),	-- Vindictive Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(135805),	-- Vindictive Gladiator's Accolade of Conquest [H]
					i(135811),	-- Vindictive Gladiator's Accolade of Dominance [H]
					i(135814),	-- Vindictive Gladiator's Accolade of Victory [H]
					i(135816),	-- Vindictive Gladiator's Badge of Adaptation [H]
					i(135804),	-- Vindictive Gladiator's Badge of Conquest [H]
					i(135810),	-- Vindictive Gladiator's Badge of Dominance [H]
					i(135813),	-- Vindictive Gladiator's Badge of Victory [H]
					i(135807),	-- Vindictive Gladiator's Emblem of Cruelty [H]
					i(135809),	-- Vindictive Gladiator's Emblem of Meditation [H]
					i(135808),	-- Vindictive Gladiator's Emblem of Tenacity [H]
					i(135806),	-- Vindictive Gladiator's Insignia of Conquest [H]
					i(135812),	-- Vindictive Gladiator's Insignia of Dominance [H]
					i(135815),	-- Vindictive Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = bubbleDown({
						["sourceAchievements"] = {
							11578,	-- Vindictive Elite
							11579,	-- Fearless Elite
						},
						["cost"] = { { "i", MOH, 12 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(146220, {	-- Ensemble: Elite Vindictive Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146270, {	-- Ensemble: Elite Vindictive Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146228, {	-- Ensemble: Elite Vindictive Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(146226, {	-- Ensemble: Elite Vindictive Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(146234, {	-- Ensemble: Elite Vindictive Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(146230, {	-- Ensemble: Elite Vindictive Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(146222, {	-- Ensemble: Elite Vindictive Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(146236, {	-- Ensemble: Elite Vindictive Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(146232, {	-- Ensemble: Elite Vindictive Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(146224, {	-- Ensemble: Elite Vindictive Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(146238, {	-- Ensemble: Elite Vindictive Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(146218, {	-- Ensemble: Elite Vindictive Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_7_1_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(136131),	-- Vindictive Gladiator's Dreadcloak [A]
						i(136043),	-- Vindictive Gladiator's Dreadplate Chestpiece [A]
						i(136045),	-- Vindictive Gladiator's Dreadplate Gauntlets [A]
						i(136049),	-- Vindictive Gladiator's Dreadplate Girdle [A]
						i(136046),	-- Vindictive Gladiator's Dreadplate Helm [A]
						i(136047),	-- Vindictive Gladiator's Dreadplate Legguards [A]
						i(136044),	-- Vindictive Gladiator's Dreadplate Sabatons [A]
						i(136048),	-- Vindictive Gladiator's Dreadplate Shoulders [A]
						i(136050),	-- Vindictive Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(136895),	-- Vindictive Gladiator's Demonthread Cloak [A]
						i(136317),	-- Vindictive Gladiator's Felskin Belt [A]
						i(136311),	-- Vindictive Gladiator's Felskin Boots [A]
						i(136312),	-- Vindictive Gladiator's Felskin Gloves [A]
						i(136313),	-- Vindictive Gladiator's Felskin Helm [A]
						i(136314),	-- Vindictive Gladiator's Felskin Legguards [A]
						i(136316),	-- Vindictive Gladiator's Felskin Spaulders [A]
						i(136315),	-- Vindictive Gladiator's Felskin Tunic [A]
						i(136318),	-- Vindictive Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(136057),	-- Vindictive Gladiator's Dragonhide Belt [A]
						i(136135),	-- Vindictive Gladiator's Dragonhide Cloak [A]
						i(136052),	-- Vindictive Gladiator's Dragonhide Gloves [A]
						i(136053),	-- Vindictive Gladiator's Dragonhide Helm [A]
						i(136054),	-- Vindictive Gladiator's Dragonhide Legguards [A]
						i(136051),	-- Vindictive Gladiator's Dragonhide Moccasins [A]
						i(136055),	-- Vindictive Gladiator's Dragonhide Robe [A]
						i(136056),	-- Vindictive Gladiator's Dragonhide Spaulders [A]
						i(136058),	-- Vindictive Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(136066),	-- Vindictive Gladiator's Chain Armband [A]
						i(136059),	-- Vindictive Gladiator's Chain Armor [A]
						i(136065),	-- Vindictive Gladiator's Chain Clasp [A]
						i(136061),	-- Vindictive Gladiator's Chain Gauntlets [A]
						i(136062),	-- Vindictive Gladiator's Chain Helm [A]
						i(136063),	-- Vindictive Gladiator's Chain Leggings [A]
						i(136064),	-- Vindictive Gladiator's Chain Spaulders [A]
						i(136060),	-- Vindictive Gladiator's Chain Treads [A]
						i(136139),	-- Vindictive Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(136072),	-- Vindictive Gladiator's Silk Amice [A]
						i(136074),	-- Vindictive Gladiator's Silk Bracers [A]
						i(136073),	-- Vindictive Gladiator's Silk Cord [A]
						i(136069),	-- Vindictive Gladiator's Silk Cowl [A]
						i(136068),	-- Vindictive Gladiator's Silk Handguards [A]
						i(136071),	-- Vindictive Gladiator's Silk Robe [A]
						i(136067),	-- Vindictive Gladiator's Silk Treads [A]
						i(136070),	-- Vindictive Gladiator's Silk Trousers [A]
						i(136132),	-- Vindictive Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(136081),	-- Vindictive Gladiator's Ironskin Belt [A]
						i(136136),	-- Vindictive Gladiator's Ironskin Cloak [A]
						i(136076),	-- Vindictive Gladiator's Ironskin Gloves [A]
						i(136077),	-- Vindictive Gladiator's Ironskin Helm [A]
						i(136078),	-- Vindictive Gladiator's Ironskin Legguards [A]
						i(136075),	-- Vindictive Gladiator's Ironskin Slippers [A]
						i(136079),	-- Vindictive Gladiator's Ironskin Spaulders [A]
						i(136080),	-- Vindictive Gladiator's Ironskin Tunic [A]
						i(136082),	-- Vindictive Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(136140),	-- Vindictive Gladiator's Greatcloak of Faith [A]
						i(136083),	-- Vindictive Gladiator's Scaled Battlerobe [A]
						i(136085),	-- Vindictive Gladiator's Scaled Gauntlets [A]
						i(136089),	-- Vindictive Gladiator's Scaled Girdle [A]
						i(136086),	-- Vindictive Gladiator's Scaled Helm [A]
						i(136087),	-- Vindictive Gladiator's Scaled Legguards [A]
						i(136084),	-- Vindictive Gladiator's Scaled Sabatons [A]
						i(136088),	-- Vindictive Gladiator's Scaled Shoulders [A]
						i(136090),	-- Vindictive Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(136873),	-- Vindictive Gladiator's Drape of Piety [A]
						i(136098),	-- Vindictive Gladiator's Satin Bracers [A]
						i(136097),	-- Vindictive Gladiator's Satin Cord [A]
						i(136092),	-- Vindictive Gladiator's Satin Gloves [A]
						i(136093),	-- Vindictive Gladiator's Satin Hood [A]
						i(136094),	-- Vindictive Gladiator's Satin Leggings [A]
						i(136096),	-- Vindictive Gladiator's Satin Mantle [A]
						i(136095),	-- Vindictive Gladiator's Satin Robe [A]
						i(136091),	-- Vindictive Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(136105),	-- Vindictive Gladiator's Leather Belt [A]
						i(136101),	-- Vindictive Gladiator's Leather Gloves [A]
						i(136102),	-- Vindictive Gladiator's Leather Helm [A]
						i(136103),	-- Vindictive Gladiator's Leather Legguards [A]
						i(136100),	-- Vindictive Gladiator's Leather Slippers [A]
						i(136104),	-- Vindictive Gladiator's Leather Spaulders [A]
						i(136099),	-- Vindictive Gladiator's Leather Tunic [A]
						i(136106),	-- Vindictive Gladiator's Leather Wristguards [A]
						i(136874),	-- Vindictive Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(136114),	-- Vindictive Gladiator's Ringmail Armband [A]
						i(136107),	-- Vindictive Gladiator's Ringmail Armor [A]
						i(136108),	-- Vindictive Gladiator's Ringmail Boots [A]
						i(136113),	-- Vindictive Gladiator's Ringmail Clasp [A]
						i(136109),	-- Vindictive Gladiator's Ringmail Gauntlets [A]
						i(136110),	-- Vindictive Gladiator's Ringmail Helm [A]
						i(136111),	-- Vindictive Gladiator's Ringmail Kilt [A]
						i(136112),	-- Vindictive Gladiator's Ringmail Spaulders [A]
						i(136875),	-- Vindictive Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(136120),	-- Vindictive Gladiator's Felweave Amice [A]
						i(136122),	-- Vindictive Gladiator's Felweave Bracers [A]
						i(136883),	-- Vindictive Gladiator's Felweave Cloak [A]
						i(136121),	-- Vindictive Gladiator's Felweave Cord [A]
						i(136117),	-- Vindictive Gladiator's Felweave Cowl [A]
						i(136116),	-- Vindictive Gladiator's Felweave Handguards [A]
						i(136119),	-- Vindictive Gladiator's Felweave Raiment [A]
						i(136115),	-- Vindictive Gladiator's Felweave Treads [A]
						i(136118),	-- Vindictive Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(136889),	-- Vindictive Gladiator's Cloak of Battle [A]
						i(136123),	-- Vindictive Gladiator's Plate Chestpiece [A]
						i(136125),	-- Vindictive Gladiator's Plate Gauntlets [A]
						i(136129),	-- Vindictive Gladiator's Plate Girdle [A]
						i(136126),	-- Vindictive Gladiator's Plate Helm [A]
						i(136127),	-- Vindictive Gladiator's Plate Legguards [A]
						i(136128),	-- Vindictive Gladiator's Plate Shoulders [A]
						i(136124),	-- Vindictive Gladiator's Plate Warboots [A]
						i(136130),	-- Vindictive Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(136138),	-- Vindictive Gladiator's Band [A]
					i(136134),	-- Vindictive Gladiator's Ring [A]
					i(136142),	-- Vindictive Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(136141),	-- Vindictive Gladiator's Choker [A]
					i(136133),	-- Vindictive Gladiator's Necklace [A]
					i(136137),	-- Vindictive Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(136144),	-- Vindictive Gladiator's Accolade of Conquest [A]
					i(136150),	-- Vindictive Gladiator's Accolade of Dominance [A]
					i(136153),	-- Vindictive Gladiator's Accolade of Victory [A]
					i(136155),	-- Vindictive Gladiator's Badge of Adaptation [A]
					i(136143),	-- Vindictive Gladiator's Badge of Conquest [A]
					i(136149),	-- Vindictive Gladiator's Badge of Dominance [A]
					i(136152),	-- Vindictive Gladiator's Badge of Victory [A]
					i(136146),	-- Vindictive Gladiator's Emblem of Cruelty [A]
					i(136148),	-- Vindictive Gladiator's Emblem of Meditation [A]
					i(136147),	-- Vindictive Gladiator's Emblem of Tenacity [A]
					i(136145),	-- Vindictive Gladiator's Insignia of Conquest [A]
					i(136151),	-- Vindictive Gladiator's Insignia of Dominance [A]
					i(136154),	-- Vindictive Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = bubbleDown({
						["sourceAchievements"] = {
							11578,	-- Vindictive Elite
							11579,	-- Fearless Elite
						},
						["cost"] = { { "i", MOH, 12 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(146221, {	-- Ensemble: Elite Vindictive Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(146271, {	-- Ensemble: Elite Vindictive Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(146229, {	-- Ensemble: Elite Vindictive Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(146227, {	-- Ensemble: Elite Vindictive Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(146235, {	-- Ensemble: Elite Vindictive Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(146231, {	-- Ensemble: Elite Vindictive Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(146223, {	-- Ensemble: Elite Vindictive Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(146237, {	-- Ensemble: Elite Vindictive Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(146233, {	-- Ensemble: Elite Vindictive Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(146225, {	-- Ensemble: Elite Vindictive Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(146239, {	-- Ensemble: Elite Vindictive Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(146219, {	-- Ensemble: Elite Vindictive Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3, REMOVED_7_1_0 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(136244),	-- Vindictive Gladiator's Dreadcloak [H]
						i(136156),	-- Vindictive Gladiator's Dreadplate Chestpiece [H]
						i(136158),	-- Vindictive Gladiator's Dreadplate Gauntlets [H]
						i(136162),	-- Vindictive Gladiator's Dreadplate Girdle [H]
						i(136159),	-- Vindictive Gladiator's Dreadplate Helm [H]
						i(136160),	-- Vindictive Gladiator's Dreadplate Legguards [H]
						i(136157),	-- Vindictive Gladiator's Dreadplate Sabatons [H]
						i(136161),	-- Vindictive Gladiator's Dreadplate Shoulders [H]
						i(136163),	-- Vindictive Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(136896),	-- Vindictive Gladiator's Demonthread Cloak [H]
						i(136325),	-- Vindictive Gladiator's Felskin Belt [H]
						i(136319),	-- Vindictive Gladiator's Felskin Boots [H]
						i(136320),	-- Vindictive Gladiator's Felskin Gloves [H]
						i(136321),	-- Vindictive Gladiator's Felskin Helm [H]
						i(136322),	-- Vindictive Gladiator's Felskin Legguards [H]
						i(136324),	-- Vindictive Gladiator's Felskin Spaulders [H]
						i(136323),	-- Vindictive Gladiator's Felskin Tunic [H]
						i(136326),	-- Vindictive Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(136170),	-- Vindictive Gladiator's Dragonhide Belt [H]
						i(136248),	-- Vindictive Gladiator's Dragonhide Cloak [H]
						i(136165),	-- Vindictive Gladiator's Dragonhide Gloves [H]
						i(136166),	-- Vindictive Gladiator's Dragonhide Helm [H]
						i(136167),	-- Vindictive Gladiator's Dragonhide Legguards [H]
						i(136164),	-- Vindictive Gladiator's Dragonhide Moccasins [H]
						i(136168),	-- Vindictive Gladiator's Dragonhide Robe [H]
						i(136169),	-- Vindictive Gladiator's Dragonhide Spaulders [H]
						i(136171),	-- Vindictive Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(136179),	-- Vindictive Gladiator's Chain Armband [H]
						i(136172),	-- Vindictive Gladiator's Chain Armor [H]
						i(136178),	-- Vindictive Gladiator's Chain Clasp [H]
						i(136174),	-- Vindictive Gladiator's Chain Gauntlets [H]
						i(136175),	-- Vindictive Gladiator's Chain Helm [H]
						i(136176),	-- Vindictive Gladiator's Chain Leggings [H]
						i(136177),	-- Vindictive Gladiator's Chain Spaulders [H]
						i(136173),	-- Vindictive Gladiator's Chain Treads [H]
						i(136252),	-- Vindictive Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(136185),	-- Vindictive Gladiator's Silk Amice [H]
						i(136187),	-- Vindictive Gladiator's Silk Bracers [H]
						i(136186),	-- Vindictive Gladiator's Silk Cord [H]
						i(136182),	-- Vindictive Gladiator's Silk Cowl [H]
						i(136181),	-- Vindictive Gladiator's Silk Handguards [H]
						i(136184),	-- Vindictive Gladiator's Silk Robe [H]
						i(136180),	-- Vindictive Gladiator's Silk Treads [H]
						i(136183),	-- Vindictive Gladiator's Silk Trousers [H]
						i(136245),	-- Vindictive Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(136194),	-- Vindictive Gladiator's Ironskin Belt [H]
						i(136249),	-- Vindictive Gladiator's Ironskin Cloak [H]
						i(136189),	-- Vindictive Gladiator's Ironskin Gloves [H]
						i(136190),	-- Vindictive Gladiator's Ironskin Helm [H]
						i(136191),	-- Vindictive Gladiator's Ironskin Legguards [H]
						i(136188),	-- Vindictive Gladiator's Ironskin Slippers [H]
						i(136192),	-- Vindictive Gladiator's Ironskin Spaulders [H]
						i(136193),	-- Vindictive Gladiator's Ironskin Tunic [H]
						i(136195),	-- Vindictive Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(136253),	-- Vindictive Gladiator's Greatcloak of Faith [H]
						i(136196),	-- Vindictive Gladiator's Scaled Chestpiece [H]
						i(136198),	-- Vindictive Gladiator's Scaled Gauntlets [H]
						i(136202),	-- Vindictive Gladiator's Scaled Girdle [H]
						i(136199),	-- Vindictive Gladiator's Scaled Helm [H]
						i(136200),	-- Vindictive Gladiator's Scaled Legguards [H]
						i(136197),	-- Vindictive Gladiator's Scaled Sabatons [H]
						i(136201),	-- Vindictive Gladiator's Scaled Shoulders [H]
						i(136203),	-- Vindictive Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(136876),	-- Vindictive Gladiator's Drape of Piety [H]
						i(136211),	-- Vindictive Gladiator's Satin Bracers [H]
						i(136210),	-- Vindictive Gladiator's Satin Cord [H]
						i(136205),	-- Vindictive Gladiator's Satin Gloves [H]
						i(136206),	-- Vindictive Gladiator's Satin Hood [H]
						i(136207),	-- Vindictive Gladiator's Satin Leggings [H]
						i(136209),	-- Vindictive Gladiator's Satin Mantle [H]
						i(136208),	-- Vindictive Gladiator's Satin Robe [H]
						i(136204),	-- Vindictive Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(136218),	-- Vindictive Gladiator's Leather Belt [H]
						i(136214),	-- Vindictive Gladiator's Leather Gloves [H]
						i(136215),	-- Vindictive Gladiator's Leather Helm [H]
						i(136216),	-- Vindictive Gladiator's Leather Legguards [H]
						i(136213),	-- Vindictive Gladiator's Leather Slippers [H]
						i(136217),	-- Vindictive Gladiator's Leather Spaulders [H]
						i(136212),	-- Vindictive Gladiator's Leather Tunic [H]
						i(136219),	-- Vindictive Gladiator's Leather Wristguards [H]
						i(136877),	-- Vindictive Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(136227),	-- Vindictive Gladiator's Ringmail Armband [H]
						i(136220),	-- Vindictive Gladiator's Ringmail Armor [H]
						i(136221),	-- Vindictive Gladiator's Ringmail Boots [H]
						i(136226),	-- Vindictive Gladiator's Ringmail Clasp [H]
						i(136222),	-- Vindictive Gladiator's Ringmail Gauntlets [H]
						i(136223),	-- Vindictive Gladiator's Ringmail Helm [H]
						i(136224),	-- Vindictive Gladiator's Ringmail Kilt [H]
						i(136225),	-- Vindictive Gladiator's Ringmail Spaulders [H]
						i(136878),	-- Vindictive Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(136233),	-- Vindictive Gladiator's Felweave Amice [H]
						i(136235),	-- Vindictive Gladiator's Felweave Bracers [H]
						i(136884),	-- Vindictive Gladiator's Felweave Cloak [H]
						i(136234),	-- Vindictive Gladiator's Felweave Cord [H]
						i(136230),	-- Vindictive Gladiator's Felweave Cowl [H]
						i(136229),	-- Vindictive Gladiator's Felweave Handguards [H]
						i(136232),	-- Vindictive Gladiator's Felweave Raiment [H]
						i(136228),	-- Vindictive Gladiator's Felweave Treads [H]
						i(136231),	-- Vindictive Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(136890),	-- Vindictive Gladiator's Cloak of Battle [H]
						i(136236),	-- Vindictive Gladiator's Plate Chestpiece [H]
						i(136238),	-- Vindictive Gladiator's Plate Gauntlets [H]
						i(136242),	-- Vindictive Gladiator's Plate Girdle [H]
						i(136239),	-- Vindictive Gladiator's Plate Helm [H]
						i(136240),	-- Vindictive Gladiator's Plate Legguards [H]
						i(136241),	-- Vindictive Gladiator's Plate Shoulders [H]
						i(136237),	-- Vindictive Gladiator's Plate Warboots [H]
						i(136243),	-- Vindictive Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(136251),	-- Vindictive Gladiator's Band [H]
					i(136247),	-- Vindictive Gladiator's Ring [H]
					i(136255),	-- Vindictive Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(136254),	-- Vindictive Gladiator's Choker [H]
					i(136246),	-- Vindictive Gladiator's Necklace [H]
					i(136250),	-- Vindictive Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(136257),	-- Vindictive Gladiator's Accolade of Conquest [H]
					i(136263),	-- Vindictive Gladiator's Accolade of Dominance [H]
					i(136266),	-- Vindictive Gladiator's Accolade of Victory [H]
					i(136268),	-- Vindictive Gladiator's Badge of Adaptation [H]
					i(136256),	-- Vindictive Gladiator's Badge of Conquest [H]
					i(136262),	-- Vindictive Gladiator's Badge of Dominance [H]
					i(136265),	-- Vindictive Gladiator's Badge of Victory [H]
					i(136259),	-- Vindictive Gladiator's Emblem of Cruelty [H]
					i(136261),	-- Vindictive Gladiator's Emblem of Meditation [H]
					i(136260),	-- Vindictive Gladiator's Emblem of Tenacity [H]
					i(136258),	-- Vindictive Gladiator's Insignia of Conquest [H]
					i(136264),	-- Vindictive Gladiator's Insignia of Dominance [H]
					i(136267),	-- Vindictive Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
	})),
})));
