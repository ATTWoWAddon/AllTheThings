-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.LEGION, {
	n(SEASON_CRUEL, bubbleDownSelf({
		["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5, ADDED_7_3_0 },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 } }, {
			ach(11008, {	-- Cruel Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11005, {	-- Cruel Combatant [H]
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(103533),	-- Vicious Saddle
				},
			}),
			ach(11039),		-- Challenger: Legion Season 3
			ach(11040),		-- Rival: Legion Season 3
			ach(11041),		-- Duelist: Legion Season 3
			ach(11697),		-- Cruel Elite
			ach(11038, {	-- Gladiator: Legion Season 3
				i(141845),	-- Cruel Gladiator's Storm Dragon (MOUNT!)
			}),
			ach(11001, {	-- Cruel Gladiator's Storm Dragon
				["provider"] = { "i", 141845 },	-- Cruel Gladiator's Storm Dragon (MOUNT!)
				["filterID"] = MOUNTS,
			}),
			ach(11037, {	-- Cruel Gladiator: Legion Season 3
				title(359),	-- Cruel Gladiator <Name>
			}),
			-- RBG
			ach(11049, {	-- Soldier of the Alliance: Legion Season 3
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11048, {	-- Soldier of the Horde: Legion Season 3
				["races"] = HORDE_ONLY,
			}),
			ach(11045, {	-- Defender of the Alliance: Legion Season 3
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11044, {	-- Defender of the Horde: Legion Season 3
				["races"] = HORDE_ONLY,
			}),
			ach(11047, {	-- Guardian of the Alliance: Legion Season 3
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11046, {	-- Guardian of the Horde: Legion Season 3
				["races"] = HORDE_ONLY,
			}),
			ach(11043, {	-- Hero of the Alliance: Cruel
				["races"] = ALLIANCE_ONLY,
			}),
			ach(11042, {	-- Hero of the Horde: Cruel
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(11723, {	-- Cruel Intentions
				["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5, ADDED_7_3_0 },
			}),
		})),
		n(PVP_COMBATANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(147677, {	-- Ensemble: Cruel Combatant's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147680, {	-- Ensemble: Cruel Combatant's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147675, {	-- Ensemble: Cruel Combatant's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(147689, {	-- Ensemble: Cruel Combatant's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(147696, {	-- Ensemble: Cruel Combatant's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(147684, {	-- Ensemble: Cruel Combatant's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(147693, {	-- Ensemble: Cruel Combatant's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(147688, {	-- Ensemble: Cruel Combatant's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(147685, {	-- Ensemble: Cruel Combatant's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(147674, {	-- Ensemble: Cruel Combatant's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(147682, {	-- Ensemble: Cruel Combatant's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(147692, {	-- Ensemble: Cruel Combatant's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145026),	-- Cruel Combatant's Dreadcloak [A]
						i(145050),	-- Cruel Combatant's Dreadplate Chestpiece [A]
						i(145054),	-- Cruel Combatant's Dreadplate Gauntlets [A]
						i(145062),	-- Cruel Combatant's Dreadplate Girdle [A]
						i(145056),	-- Cruel Combatant's Dreadplate Helm [A]
						i(145058),	-- Cruel Combatant's Dreadplate Legguards [A]
						i(145052),	-- Cruel Combatant's Dreadplate Sabatons [A]
						i(145060),	-- Cruel Combatant's Dreadplate Shoulders [A]
						i(145064),	-- Cruel Combatant's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(145028),	-- Cruel Combatant's Demonthread Cloak [A]
						i(145078),	-- Cruel Combatant's Felskin Belt [A]
						i(145068),	-- Cruel Combatant's Felskin Boots [A]
						i(145070),	-- Cruel Combatant's Felskin Gloves [A]
						i(145072),	-- Cruel Combatant's Felskin Helm [A]
						i(145074),	-- Cruel Combatant's Felskin Legguards [A]
						i(145076),	-- Cruel Combatant's Felskin Spaulders [A]
						i(145066),	-- Cruel Combatant's Felskin Tunic [A]
						i(145080),	-- Cruel Combatant's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(145094),	-- Cruel Combatant's Dragonhide Belt [A]
						i(145030),	-- Cruel Combatant's Dragonhide Cloak [A]
						i(145086),	-- Cruel Combatant's Dragonhide Gloves [A]
						i(145088),	-- Cruel Combatant's Dragonhide Helm [A]
						i(145090),	-- Cruel Combatant's Dragonhide Legguards [A]
						i(145084),	-- Cruel Combatant's Dragonhide Moccasins [A]
						i(145092),	-- Cruel Combatant's Dragonhide Spaulders [A]
						i(145082),	-- Cruel Combatant's Dragonhide Tunic [A]
						i(145096),	-- Cruel Combatant's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(145112),	-- Cruel Combatant's Chain Armband [A]
						i(145098),	-- Cruel Combatant's Chain Armor [A]
						i(145110),	-- Cruel Combatant's Chain Clasp [A]
						i(145102),	-- Cruel Combatant's Chain Gauntlets [A]
						i(145104),	-- Cruel Combatant's Chain Helm [A]
						i(145106),	-- Cruel Combatant's Chain Leggings [A]
						i(145108),	-- Cruel Combatant's Chain Spaulders [A]
						i(145100),	-- Cruel Combatant's Chain Treads [A]
						i(145032),	-- Cruel Combatant's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(145124),	-- Cruel Combatant's Silk Amice [A]
						i(145128),	-- Cruel Combatant's Silk Bracers [A]
						i(145126),	-- Cruel Combatant's Silk Cord [A]
						i(145118),	-- Cruel Combatant's Silk Cowl [A]
						i(145116),	-- Cruel Combatant's Silk Handguards [A]
						i(145122),	-- Cruel Combatant's Silk Robe [A]
						i(145114),	-- Cruel Combatant's Silk Treads [A]
						i(145120),	-- Cruel Combatant's Silk Trousers [A]
						i(145034),	-- Cruel Combatant's Silken Shawl [A]
					}),
					cl(MONK, {
						i(145142),	-- Cruel Combatant's Ironskin Belt [A]
						i(145036),	-- Cruel Combatant's Ironskin Cloak [A]
						i(145132),	-- Cruel Combatant's Ironskin Gloves [A]
						i(145134),	-- Cruel Combatant's Ironskin Helm [A]
						i(145136),	-- Cruel Combatant's Ironskin Legguards [A]
						i(145130),	-- Cruel Combatant's Ironskin Slippers [A]
						i(145138),	-- Cruel Combatant's Ironskin Spaulders [A]
						i(145140),	-- Cruel Combatant's Ironskin Tunic [A]
						i(145144),	-- Cruel Combatant's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(145038),	-- Cruel Combatant's Greatcloak of Faith [A]
						i(145152),	-- Cruel Combatant's Scaled Chestpiece [A]
						i(145156),	-- Cruel Combatant's Scaled Gauntlets [A]
						i(145164),	-- Cruel Combatant's Scaled Girdle [A]
						i(145158),	-- Cruel Combatant's Scaled Helm [A]
						i(145160),	-- Cruel Combatant's Scaled Legguards [A]
						i(145154),	-- Cruel Combatant's Scaled Sabatons [A]
						i(145162),	-- Cruel Combatant's Scaled Shoulders [A]
						i(145166),	-- Cruel Combatant's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(145040),	-- Cruel Combatant's Drape of Piety [A]
						i(145182),	-- Cruel Combatant's Satin Bracers [A]
						i(145180),	-- Cruel Combatant's Satin Cord [A]
						i(145170),	-- Cruel Combatant's Satin Gloves [A]
						i(145172),	-- Cruel Combatant's Satin Hood [A]
						i(145174),	-- Cruel Combatant's Satin Leggings [A]
						i(145178),	-- Cruel Combatant's Satin Mantle [A]
						i(145176),	-- Cruel Combatant's Satin Robe [A]
						i(145168),	-- Cruel Combatant's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(145202),	-- Cruel Combatant's Leather Belt [A]
						i(145194),	-- Cruel Combatant's Leather Gloves [A]
						i(145196),	-- Cruel Combatant's Leather Helm [A]
						i(145198),	-- Cruel Combatant's Leather Legguards [A]
						i(145192),	-- Cruel Combatant's Leather Slippers [A]
						i(145200),	-- Cruel Combatant's Leather Spaulders [A]
						i(145190),	-- Cruel Combatant's Leather Tunic [A]
						i(145204),	-- Cruel Combatant's Leather Wristguards [A]
						i(145042),	-- Cruel Combatant's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(145220),	-- Cruel Combatant's Ringmail Armband [A]
						i(145206),	-- Cruel Combatant's Ringmail Armor [A]
						i(145208),	-- Cruel Combatant's Ringmail Boots [A]
						i(145218),	-- Cruel Combatant's Ringmail Clasp [A]
						i(145210),	-- Cruel Combatant's Ringmail Gauntlets [A]
						i(145212),	-- Cruel Combatant's Ringmail Helm [A]
						i(145214),	-- Cruel Combatant's Ringmail Kilt [A]
						i(145216),	-- Cruel Combatant's Ringmail Spaulders [A]
						i(145044),	-- Cruel Combatant's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(145250),	-- Cruel Combatant's Felweave Amice [A]
						i(145254),	-- Cruel Combatant's Felweave Bracers [A]
						i(145046),	-- Cruel Combatant's Felweave Cloak [A]
						i(145252),	-- Cruel Combatant's Felweave Cord [A]
						i(145244),	-- Cruel Combatant's Felweave Cowl [A]
						i(145242),	-- Cruel Combatant's Felweave Handguards [A]
						i(145248),	-- Cruel Combatant's Felweave Raiment [A]
						i(145240),	-- Cruel Combatant's Felweave Treads [A]
						i(145246),	-- Cruel Combatant's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(145048),	-- Cruel Combatant's Cloak of Battle [A]
						i(145256),	-- Cruel Combatant's Plate Chestpiece [A]
						i(145260),	-- Cruel Combatant's Plate Gauntlets [A]
						i(145268),	-- Cruel Combatant's Plate Girdle [A]
						i(145262),	-- Cruel Combatant's Plate Helm [A]
						i(145264),	-- Cruel Combatant's Plate Legguards [A]
						i(145266),	-- Cruel Combatant's Plate Shoulders [A]
						i(145258),	-- Cruel Combatant's Plate Warboots [A]
						i(145270),	-- Cruel Combatant's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(145186),	-- Cruel Combatant's Band [A]
					i(145184),	-- Cruel Combatant's Ring [A]
					i(145188),	-- Cruel Combatant's Signet [A]
				}),
				filter(NECK_F, {
					i(145150),	-- Cruel Combatant's Choker [A]
					i(145146),	-- Cruel Combatant's Necklace [A]
					i(145148),	-- Cruel Combatant's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(145224),	-- Cruel Combatant's Accolade of Conquest [A]
					i(145230),	-- Cruel Combatant's Accolade of Dominance [A]
					i(145236),	-- Cruel Combatant's Accolade of Victory [A]
					i(145222),	-- Cruel Combatant's Badge of Conquest [A]
					i(145228),	-- Cruel Combatant's Badge of Dominance [A]
					i(145234),	-- Cruel Combatant's Badge of Victory [A]
					i(145226),	-- Cruel Combatant's Insignia of Conquest [A]
					i(145232),	-- Cruel Combatant's Insignia of Dominance [A]
					i(145238),	-- Cruel Combatant's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(147678, {	-- Ensemble: Cruel Combatant's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147679, {	-- Ensemble: Cruel Combatant's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147676, {	-- Ensemble: Cruel Combatant's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(147690, {	-- Ensemble: Cruel Combatant's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(147695, {	-- Ensemble: Cruel Combatant's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(147683, {	-- Ensemble: Cruel Combatant's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(147694, {	-- Ensemble: Cruel Combatant's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(147687, {	-- Ensemble: Cruel Combatant's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(147686, {	-- Ensemble: Cruel Combatant's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(147673, {	-- Ensemble: Cruel Combatant's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(147681, {	-- Ensemble: Cruel Combatant's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(147691, {	-- Ensemble: Cruel Combatant's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(145027),	-- Cruel Combatant's Dreadcloak [H]
						i(145051),	-- Cruel Combatant's Dreadplate Chestpiece [H]
						i(145055),	-- Cruel Combatant's Dreadplate Gauntlets [H]
						i(145063),	-- Cruel Combatant's Dreadplate Girdle [H]
						i(145057),	-- Cruel Combatant's Dreadplate Helm [H]
						i(145059),	-- Cruel Combatant's Dreadplate Legguards [H]
						i(145053),	-- Cruel Combatant's Dreadplate Sabatons [H]
						i(145061),	-- Cruel Combatant's Dreadplate Shoulders [H]
						i(145065),	-- Cruel Combatant's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(145029),	-- Cruel Combatant's Demonthread Cloak [H]
						i(145079),	-- Cruel Combatant's Felskin Belt [H]
						i(145069),	-- Cruel Combatant's Felskin Boots [H]
						i(145071),	-- Cruel Combatant's Felskin Gloves [H]
						i(145073),	-- Cruel Combatant's Felskin Helm [H]
						i(145075),	-- Cruel Combatant's Felskin Legguards [H]
						i(145077),	-- Cruel Combatant's Felskin Spaulders [H]
						i(145067),	-- Cruel Combatant's Felskin Tunic [H]
						i(145081),	-- Cruel Combatant's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(145095),	-- Cruel Combatant's Dragonhide Belt [H]
						i(145031),	-- Cruel Combatant's Dragonhide Cloak [H]
						i(145087),	-- Cruel Combatant's Dragonhide Gloves [H]
						i(145089),	-- Cruel Combatant's Dragonhide Helm [H]
						i(145091),	-- Cruel Combatant's Dragonhide Legguards [H]
						i(145085),	-- Cruel Combatant's Dragonhide Moccasins [H]
						i(145093),	-- Cruel Combatant's Dragonhide Spaulders [H]
						i(145083),	-- Cruel Combatant's Dragonhide Tunic [H]
						i(145097),	-- Cruel Combatant's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(145113),	-- Cruel Combatant's Chain Armband [H]
						i(145099),	-- Cruel Combatant's Chain Armor [H]
						i(145111),	-- Cruel Combatant's Chain Clasp [H]
						i(145103),	-- Cruel Combatant's Chain Gauntlets [H]
						i(145105),	-- Cruel Combatant's Chain Helm [H]
						i(145107),	-- Cruel Combatant's Chain Leggings [H]
						i(145109),	-- Cruel Combatant's Chain Spaulders [H]
						i(145101),	-- Cruel Combatant's Chain Treads [H]
						i(145033),	-- Cruel Combatant's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(145125),	-- Cruel Combatant's Silk Amice [H]
						i(145129),	-- Cruel Combatant's Silk Bracers [H]
						i(145127),	-- Cruel Combatant's Silk Cord [H]
						i(145119),	-- Cruel Combatant's Silk Cowl [H]
						i(145117),	-- Cruel Combatant's Silk Handguards [H]
						i(145123),	-- Cruel Combatant's Silk Robe [H]
						i(145115),	-- Cruel Combatant's Silk Treads [H]
						i(145121),	-- Cruel Combatant's Silk Trousers [H]
						i(145035),	-- Cruel Combatant's Silken Shawl [H]
					}),
					cl(MONK, {
						i(145143),	-- Cruel Combatant's Ironskin Belt [H]
						i(145037),	-- Cruel Combatant's Ironskin Cloak [H]
						i(145133),	-- Cruel Combatant's Ironskin Gloves [H]
						i(145135),	-- Cruel Combatant's Ironskin Helm [H]
						i(145137),	-- Cruel Combatant's Ironskin Legguards [H]
						i(145131),	-- Cruel Combatant's Ironskin Slippers [H]
						i(145139),	-- Cruel Combatant's Ironskin Spaulders [H]
						i(145141),	-- Cruel Combatant's Ironskin Tunic [H]
						i(145145),	-- Cruel Combatant's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(145039),	-- Cruel Combatant's Greatcloak of Faith [H]
						i(145153),	-- Cruel Combatant's Scaled Chestpiece [H]
						i(145157),	-- Cruel Combatant's Scaled Gauntlets [H]
						i(145165),	-- Cruel Combatant's Scaled Girdle [H]
						i(145159),	-- Cruel Combatant's Scaled Helm [H]
						i(145161),	-- Cruel Combatant's Scaled Legguards [H]
						i(145155),	-- Cruel Combatant's Scaled Sabatons [H]
						i(145163),	-- Cruel Combatant's Scaled Shoulders [H]
						i(145167),	-- Cruel Combatant's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(145041),	-- Cruel Combatant's Drape of Piety [H]
						i(145183),	-- Cruel Combatant's Satin Bracers [H]
						i(145181),	-- Cruel Combatant's Satin Cord [H]
						i(145171),	-- Cruel Combatant's Satin Gloves [H]
						i(145173),	-- Cruel Combatant's Satin Hood [H]
						i(145175),	-- Cruel Combatant's Satin Leggings [H]
						i(145179),	-- Cruel Combatant's Satin Mantle [H]
						i(145177),	-- Cruel Combatant's Satin Robe [H]
						i(145169),	-- Cruel Combatant's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(145203),	-- Cruel Combatant's Leather Belt [H]
						i(145195),	-- Cruel Combatant's Leather Gloves [H]
						i(145197),	-- Cruel Combatant's Leather Helm [H]
						i(145199),	-- Cruel Combatant's Leather Legguards [H]
						i(145193),	-- Cruel Combatant's Leather Slippers [H]
						i(145201),	-- Cruel Combatant's Leather Spaulders [H]
						i(145191),	-- Cruel Combatant's Leather Tunic [H]
						i(145205),	-- Cruel Combatant's Leather Wristguards [H]
						i(145043),	-- Cruel Combatant's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(145221),	-- Cruel Combatant's Ringmail Armband [H]
						i(145207),	-- Cruel Combatant's Ringmail Armor [H]
						i(145209),	-- Cruel Combatant's Ringmail Boots [H]
						i(145219),	-- Cruel Combatant's Ringmail Clasp [H]
						i(145211),	-- Cruel Combatant's Ringmail Gauntlets [H]
						i(145213),	-- Cruel Combatant's Ringmail Helm [H]
						i(145215),	-- Cruel Combatant's Ringmail Leggings [H]
						i(145217),	-- Cruel Combatant's Ringmail Spaulders [H]
						i(145045),	-- Cruel Combatant's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(145251),	-- Cruel Combatant's Felweave Amice [H]
						i(145255),	-- Cruel Combatant's Felweave Bracers [H]
						i(145047),	-- Cruel Combatant's Felweave Cloak [H]
						i(145253),	-- Cruel Combatant's Felweave Cord [H]
						i(145245),	-- Cruel Combatant's Felweave Cowl [H]
						i(145243),	-- Cruel Combatant's Felweave Handguards [H]
						i(145249),	-- Cruel Combatant's Felweave Raiment [H]
						i(145241),	-- Cruel Combatant's Felweave Treads [H]
						i(145247),	-- Cruel Combatant's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(145049),	-- Cruel Combatant's Cloak of Battle [H]
						i(145257),	-- Cruel Combatant's Plate Chestpiece [H]
						i(145261),	-- Cruel Combatant's Plate Gauntlets [H]
						i(145269),	-- Cruel Combatant's Plate Girdle [H]
						i(145263),	-- Cruel Combatant's Plate Helm [H]
						i(145265),	-- Cruel Combatant's Plate Legguards [H]
						i(145267),	-- Cruel Combatant's Plate Shoulders [H]
						i(145259),	-- Cruel Combatant's Plate Warboots [H]
						i(145271),	-- Cruel Combatant's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(145187),	-- Cruel Combatant's Band [H]
					i(145185),	-- Cruel Combatant's Ring [H]
					i(145189),	-- Cruel Combatant's Signet [H]
				}),
				filter(NECK_F, {
					i(145151),	-- Cruel Combatant's Choker [H]
					i(145147),	-- Cruel Combatant's Necklace [H]
					i(145149),	-- Cruel Combatant's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(145225),	-- Cruel Combatant's Accolade of Conquest [H]
					i(145231),	-- Cruel Combatant's Accolade of Dominance [H]
					i(145237),	-- Cruel Combatant's Accolade of Victory [H]
					i(145223),	-- Cruel Combatant's Badge of Conquest [H]
					i(145229),	-- Cruel Combatant's Badge of Dominance [H]
					i(145235),	-- Cruel Combatant's Badge of Victory [H]
					i(145227),	-- Cruel Combatant's Insignia of Conquest [H]
					i(145233),	-- Cruel Combatant's Insignia of Dominance [H]
					i(145239),	-- Cruel Combatant's Insignia of Victory [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 } }, {
				filter(RELICS_F, {
					i(144512),	-- Alliance of Convenience
					i(144531),	-- Battering Tempest
					i(144522),	-- Battle-Tempered Hilt
					i(144513),	-- Blaze of Glory
					i(144528),	-- Blindside Approach
					i(144520),	-- Brilliant Sunstone
					i(144525),	-- "Borrowed Soul" Essence
					i(144519),	-- Clarity of Conviction
					i(144518),	-- Cold Sweat
					i(144516),	-- Conscience of the Victorious
					i(144530),	-- Dead Man's Tale
					i(144505),	-- Exhaustive Research
					i(144510),	-- Fel-Loaded Dice
					i(144514),	-- Flame of the Fallen
					i(144507),	-- Grisly Souvenir
					i(144511),	-- Performance Enhancing Curio
					i(144527),	-- Petrified Ancient's Thumb
					i(144529),	-- Polished Shadowstone
					i(144521),	-- Radiance of Dawn
					i(144504),	-- Reactive Intuition
					i(144533),	-- Roar of the Crowd
					i(144524),	-- Steadfast Conviction
					i(144517),	-- Superiority's Contempt
					i(144506),	-- Taboo Knowledge
					i(144508),	-- Thirsty Bloodstone
					i(144509),	-- Thrill of Battle
					i(144532),	-- Thundering Impact
					i(144526),	-- Tombweed Bloom
					i(144515),	-- Torch of Competition
					i(144523),	-- Unflinching Grit
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(106930, {	-- Lieutenant Surtees <Legion Gladiator>
					["coord"] = { 29.6, 75.0, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(147650, {	-- Ensemble: Cruel Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147651, {	-- Ensemble: Cruel Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147647, {	-- Ensemble: Cruel Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(147646, {	-- Ensemble: Cruel Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(147668, {	-- Ensemble: Cruel Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(147656, {	-- Ensemble: Cruel Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(147665, {	-- Ensemble: Cruel Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(147663, {	-- Ensemble: Cruel Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(147657, {	-- Ensemble: Cruel Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(147661, {	-- Ensemble: Cruel Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(147653, {	-- Ensemble: Cruel Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(147660, {	-- Ensemble: Cruel Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(144534),	-- Cruel Gladiator's Dreadcloak [A]
						i(144558),	-- Cruel Gladiator's Dreadplate Chestpiece [A]
						i(144562),	-- Cruel Gladiator's Dreadplate Gauntlets [A]
						i(144570),	-- Cruel Gladiator's Dreadplate Girdle [A]
						i(144564),	-- Cruel Gladiator's Dreadplate Helm [A]
						i(144566),	-- Cruel Gladiator's Dreadplate Legguards [A]
						i(144560),	-- Cruel Gladiator's Dreadplate Sabatons [A]
						i(144568),	-- Cruel Gladiator's Dreadplate Shoulders [A]
						i(144572),	-- Cruel Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(144536),	-- Cruel Gladiator's Demonthread Cloak [A]
						i(144586),	-- Cruel Gladiator's Felskin Belt [A]
						i(144576),	-- Cruel Gladiator's Felskin Boots [A]
						i(144578),	-- Cruel Gladiator's Felskin Gloves [A]
						i(144580),	-- Cruel Gladiator's Felskin Helm [A]
						i(144582),	-- Cruel Gladiator's Felskin Legguards [A]
						i(144584),	-- Cruel Gladiator's Felskin Spaulders [A]
						i(144574),	-- Cruel Gladiator's Felskin Tunic [A]
						i(144588),	-- Cruel Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(144602),	-- Cruel Gladiator's Dragonhide Belt [A]
						i(144538),	-- Cruel Gladiator's Dragonhide Cloak [A]
						i(144594),	-- Cruel Gladiator's Dragonhide Gloves [A]
						i(144596),	-- Cruel Gladiator's Dragonhide Helm [A]
						i(144598),	-- Cruel Gladiator's Dragonhide Legguards [A]
						i(144592),	-- Cruel Gladiator's Dragonhide Moccasins [A]
						i(144590),	-- Cruel Gladiator's Dragonhide Robe [A]
						i(144600),	-- Cruel Gladiator's Dragonhide Spaulders [A]
						i(144604),	-- Cruel Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(144620),	-- Cruel Gladiator's Chain Armband [A]
						i(144606),	-- Cruel Gladiator's Chain Armor [A]
						i(144618),	-- Cruel Gladiator's Chain Clasp [A]
						i(144610),	-- Cruel Gladiator's Chain Gauntlets [A]
						i(144612),	-- Cruel Gladiator's Chain Helm [A]
						i(144614),	-- Cruel Gladiator's Chain Leggings [A]
						i(144616),	-- Cruel Gladiator's Chain Spaulders [A]
						i(144608),	-- Cruel Gladiator's Chain Treads [A]
						i(144540),	-- Cruel Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(144632),	-- Cruel Gladiator's Silk Amice [A]
						i(144636),	-- Cruel Gladiator's Silk Bracers [A]
						i(144634),	-- Cruel Gladiator's Silk Cord [A]
						i(144626),	-- Cruel Gladiator's Silk Cowl [A]
						i(144624),	-- Cruel Gladiator's Silk Handguards [A]
						i(144630),	-- Cruel Gladiator's Silk Robe [A]
						i(144622),	-- Cruel Gladiator's Silk Treads [A]
						i(144628),	-- Cruel Gladiator's Silk Trousers [A]
						i(144542),	-- Cruel Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(144650),	-- Cruel Gladiator's Ironskin Belt [A]
						i(144544),	-- Cruel Gladiator's Ironskin Cloak [A]
						i(144640),	-- Cruel Gladiator's Ironskin Gloves [A]
						i(144642),	-- Cruel Gladiator's Ironskin Helm [A]
						i(144644),	-- Cruel Gladiator's Ironskin Legguards [A]
						i(144638),	-- Cruel Gladiator's Ironskin Slippers [A]
						i(144646),	-- Cruel Gladiator's Ironskin Spaulders [A]
						i(144648),	-- Cruel Gladiator's Ironskin Tunic [A]
						i(144652),	-- Cruel Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(144546),	-- Cruel Gladiator's Greatcloak of Faith [A]
						i(144669),	-- Cruel Gladiator's Scaled Breastplate [A]
						i(144663),	-- Cruel Gladiator's Scaled Gauntlets [A]
						i(144672),	-- Cruel Gladiator's Scaled Girdle [A]
						i(144665),	-- Cruel Gladiator's Scaled Helm [A]
						i(144667),	-- Cruel Gladiator's Scaled Legguards [A]
						i(144661),	-- Cruel Gladiator's Scaled Sabatons [A]
						i(144670),	-- Cruel Gladiator's Scaled Shoulders [A]
						i(144674),	-- Cruel Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(144548),	-- Cruel Gladiator's Drape of Piety [A]
						i(144690),	-- Cruel Gladiator's Satin Bracers [A]
						i(144688),	-- Cruel Gladiator's Satin Cord [A]
						i(144678),	-- Cruel Gladiator's Satin Gloves [A]
						i(144680),	-- Cruel Gladiator's Satin Hood [A]
						i(144682),	-- Cruel Gladiator's Satin Leggings [A]
						i(144686),	-- Cruel Gladiator's Satin Mantle [A]
						i(144684),	-- Cruel Gladiator's Satin Robe [A]
						i(144676),	-- Cruel Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(144710),	-- Cruel Gladiator's Leather Belt [A]
						i(144702),	-- Cruel Gladiator's Leather Gloves [A]
						i(144704),	-- Cruel Gladiator's Leather Helm [A]
						i(144706),	-- Cruel Gladiator's Leather Legguards [A]
						i(144700),	-- Cruel Gladiator's Leather Slippers [A]
						i(144708),	-- Cruel Gladiator's Leather Spaulders [A]
						i(144698),	-- Cruel Gladiator's Leather Tunic [A]
						i(144712),	-- Cruel Gladiator's Leather Wristguards [A]
						i(144550),	-- Cruel Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(144728),	-- Cruel Gladiator's Ringmail Armband [A]
						i(144714),	-- Cruel Gladiator's Ringmail Armor [A]
						i(144716),	-- Cruel Gladiator's Ringmail Boots [A]
						i(144726),	-- Cruel Gladiator's Ringmail Clasp [A]
						i(144718),	-- Cruel Gladiator's Ringmail Gauntlets [A]
						i(144720),	-- Cruel Gladiator's Ringmail Helm [A]
						i(144722),	-- Cruel Gladiator's Ringmail Kilt [A]
						i(144724),	-- Cruel Gladiator's Ringmail Spaulders [A]
						i(144552),	-- Cruel Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(144758),	-- Cruel Gladiator's Felweave Amice [A]
						i(144762),	-- Cruel Gladiator's Felweave Bracers [A]
						i(144554),	-- Cruel Gladiator's Felweave Cloak [A]
						i(144760),	-- Cruel Gladiator's Felweave Cord [A]
						i(144752),	-- Cruel Gladiator's Felweave Cowl [A]
						i(144750),	-- Cruel Gladiator's Felweave Handguards [A]
						i(144756),	-- Cruel Gladiator's Felweave Raiment [A]
						i(144748),	-- Cruel Gladiator's Felweave Treads [A]
						i(144754),	-- Cruel Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(144556),	-- Cruel Gladiator's Cloak of Battle [A]
						i(144764),	-- Cruel Gladiator's Plate Chestpiece [A]
						i(144768),	-- Cruel Gladiator's Plate Gauntlets [A]
						i(144776),	-- Cruel Gladiator's Plate Girdle [A]
						i(144770),	-- Cruel Gladiator's Plate Helm [A]
						i(144772),	-- Cruel Gladiator's Plate Legguards [A]
						i(144774),	-- Cruel Gladiator's Plate Shoulders [A]
						i(144766),	-- Cruel Gladiator's Plate Warboots [A]
						i(144778),	-- Cruel Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(144694),	-- Cruel Gladiator's Band [A]
					i(144692),	-- Cruel Gladiator's Ring [A]
					i(144696),	-- Cruel Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(144658),	-- Cruel Gladiator's Choker [A]
					i(144654),	-- Cruel Gladiator's Necklace [A]
					i(144656),	-- Cruel Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(144732),	-- Cruel Gladiator's Accolade of Conquest [A]
					i(144738),	-- Cruel Gladiator's Accolade of Dominance [A]
					i(144744),	-- Cruel Gladiator's Accolade of Victory [A]
					i(144730),	-- Cruel Gladiator's Badge of Conquest [A]
					i(144736),	-- Cruel Gladiator's Badge of Dominance [A]
					i(144742),	-- Cruel Gladiator's Badge of Victory [A]
					i(144734),	-- Cruel Gladiator's Insignia of Conquest [A]
					i(144740),	-- Cruel Gladiator's Insignia of Dominance [A]
					i(144746),	-- Cruel Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(119486, {	-- Apothecary Lee <Legion Gladiator>
					["coord"] = { 56.8, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(147649, {	-- Ensemble: Cruel Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147652, {	-- Ensemble: Cruel Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147648, {	-- Ensemble: Cruel Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(147645, {	-- Ensemble: Cruel Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(147667, {	-- Ensemble: Cruel Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(147655, {	-- Ensemble: Cruel Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(147666, {	-- Ensemble: Cruel Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(147664, {	-- Ensemble: Cruel Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(147658, {	-- Ensemble: Cruel Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(147662, {	-- Ensemble: Cruel Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(147654, {	-- Ensemble: Cruel Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(147659, {	-- Ensemble: Cruel Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(144535),	-- Cruel Gladiator's Dreadcloak [H]
						i(144559),	-- Cruel Gladiator's Dreadplate Chestpiece [H]
						i(144563),	-- Cruel Gladiator's Dreadplate Gauntlets [H]
						i(144571),	-- Cruel Gladiator's Dreadplate Girdle [H]
						i(144565),	-- Cruel Gladiator's Dreadplate Helm [H]
						i(144567),	-- Cruel Gladiator's Dreadplate Legguards [H]
						i(144561),	-- Cruel Gladiator's Dreadplate Sabatons [H]
						i(144569),	-- Cruel Gladiator's Dreadplate Shoulders [H]
						i(144573),	-- Cruel Gladiator's Dreadplate Wristplates [H]
					}),
					cl(DEMONHUNTER, {
						i(144537),	-- Cruel Gladiator's Demonthread Cloak [H]
						i(144587),	-- Cruel Gladiator's Felskin Belt [H]
						i(144577),	-- Cruel Gladiator's Felskin Boots [H]
						i(144579),	-- Cruel Gladiator's Felskin Gloves [H]
						i(144581),	-- Cruel Gladiator's Felskin Helm [H]
						i(144583),	-- Cruel Gladiator's Felskin Legguards [H]
						i(144585),	-- Cruel Gladiator's Felskin Spaulders [H]
						i(144575),	-- Cruel Gladiator's Felskin Tunic [H]
						i(144589),	-- Cruel Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(144603),	-- Cruel Gladiator's Dragonhide Belt [H]
						i(144539),	-- Cruel Gladiator's Dragonhide Cloak [H]
						i(144595),	-- Cruel Gladiator's Dragonhide Gloves [H]
						i(144597),	-- Cruel Gladiator's Dragonhide Helm [H]
						i(144599),	-- Cruel Gladiator's Dragonhide Legguards [H]
						i(144593),	-- Cruel Gladiator's Dragonhide Moccasins [H]
						i(144591),	-- Cruel Gladiator's Dragonhide Robe [H]
						i(144601),	-- Cruel Gladiator's Dragonhide Spaulders [H]
						i(144605),	-- Cruel Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(144621),	-- Cruel Gladiator's Chain Armband [H]
						i(144607),	-- Cruel Gladiator's Chain Armor [H]
						i(144619),	-- Cruel Gladiator's Chain Clasp [H]
						i(144611),	-- Cruel Gladiator's Chain Gauntlets [H]
						i(144613),	-- Cruel Gladiator's Chain Helm [H]
						i(144615),	-- Cruel Gladiator's Chain Leggings [H]
						i(144617),	-- Cruel Gladiator's Chain Spaulders [H]
						i(144609),	-- Cruel Gladiator's Chain Treads [H]
						i(144541),	-- Cruel Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(144633),	-- Cruel Gladiator's Silk Amice [H]
						i(144637),	-- Cruel Gladiator's Silk Bracers [H]
						i(144635),	-- Cruel Gladiator's Silk Cord [H]
						i(144627),	-- Cruel Gladiator's Silk Cowl [H]
						i(144625),	-- Cruel Gladiator's Silk Handguards [H]
						i(144631),	-- Cruel Gladiator's Silk Robe [H]
						i(144623),	-- Cruel Gladiator's Silk Treads [H]
						i(144629),	-- Cruel Gladiator's Silk Trousers [H]
						i(144543),	-- Cruel Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(144651),	-- Cruel Gladiator's Ironskin Belt [H]
						i(144545),	-- Cruel Gladiator's Ironskin Cloak [H]
						i(144641),	-- Cruel Gladiator's Ironskin Gloves [H]
						i(144643),	-- Cruel Gladiator's Ironskin Helm [H]
						i(144645),	-- Cruel Gladiator's Ironskin Legguards [H]
						i(144639),	-- Cruel Gladiator's Ironskin Slippers [H]
						i(144647),	-- Cruel Gladiator's Ironskin Spaulders [H]
						i(144649),	-- Cruel Gladiator's Ironskin Tunic [H]
						i(144653),	-- Cruel Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(144547),	-- Cruel Gladiator's Greatcloak of Faith [H]
						i(144660),	-- Cruel Gladiator's Scaled Breastplate [H]
						i(144664),	-- Cruel Gladiator's Scaled Gauntlets [H]
						i(144673),	-- Cruel Gladiator's Scaled Girdle [H]
						i(144666),	-- Cruel Gladiator's Scaled Helm [H]
						i(144668),	-- Cruel Gladiator's Scaled Legguards [H]
						i(144662),	-- Cruel Gladiator's Scaled Sabatons [H]
						i(144671),	-- Cruel Gladiator's Scaled Shoulders [H]
						i(144675),	-- Cruel Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(144549),	-- Cruel Gladiator's Drape of Piety [H]
						i(144691),	-- Cruel Gladiator's Satin Bracers [H]
						i(144689),	-- Cruel Gladiator's Satin Cord [H]
						i(144679),	-- Cruel Gladiator's Satin Gloves [H]
						i(144681),	-- Cruel Gladiator's Satin Hood [H]
						i(144683),	-- Cruel Gladiator's Satin Leggings [H]
						i(144687),	-- Cruel Gladiator's Satin Mantle [H]
						i(144685),	-- Cruel Gladiator's Satin Robe [H]
						i(144677),	-- Cruel Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(144711),	-- Cruel Gladiator's Leather Belt [H]
						i(144703),	-- Cruel Gladiator's Leather Gloves [H]
						i(144705),	-- Cruel Gladiator's Leather Helm [H]
						i(144707),	-- Cruel Gladiator's Leather Legguards [H]
						i(144701),	-- Cruel Gladiator's Leather Slippers [H]
						i(144709),	-- Cruel Gladiator's Leather Spaulders [H]
						i(144699),	-- Cruel Gladiator's Leather Tunic [H]
						i(144713),	-- Cruel Gladiator's Leather Wristguards [H]
						i(144551),	-- Cruel Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(144729),	-- Cruel Gladiator's Ringmail Armband [H]
						i(144715),	-- Cruel Gladiator's Ringmail Armor [H]
						i(144717),	-- Cruel Gladiator's Ringmail Boots [H]
						i(144727),	-- Cruel Gladiator's Ringmail Clasp [H]
						i(144719),	-- Cruel Gladiator's Ringmail Gauntlets [H]
						i(144721),	-- Cruel Gladiator's Ringmail Helm [H]
						i(144723),	-- Cruel Gladiator's Ringmail Kilt [H]
						i(144725),	-- Cruel Gladiator's Ringmail Spaulders [H]
						i(144553),	-- Cruel Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(144759),	-- Cruel Gladiator's Felweave Amice [H]
						i(144763),	-- Cruel Gladiator's Felweave Bracers [H]
						i(144555),	-- Cruel Gladiator's Felweave Cloak [H]
						i(144761),	-- Cruel Gladiator's Felweave Cord [H]
						i(144753),	-- Cruel Gladiator's Felweave Cowl [H]
						i(144751),	-- Cruel Gladiator's Felweave Handguards [H]
						i(144757),	-- Cruel Gladiator's Felweave Raiment [H]
						i(144749),	-- Cruel Gladiator's Felweave Treads [H]
						i(144755),	-- Cruel Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(144557),	-- Cruel Gladiator's Cloak of Battle [H]
						i(144765),	-- Cruel Gladiator's Plate Chestpiece [H]
						i(144769),	-- Cruel Gladiator's Plate Gauntlets [H]
						i(144777),	-- Cruel Gladiator's Plate Girdle [H]
						i(144771),	-- Cruel Gladiator's Plate Helm [H]
						i(144773),	-- Cruel Gladiator's Plate Legguards [H]
						i(144775),	-- Cruel Gladiator's Plate Shoulders [H]
						i(144767),	-- Cruel Gladiator's Plate Warboots [H]
						i(144779),	-- Cruel Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(144695),	-- Cruel Gladiator's Band [H]
					i(144693),	-- Cruel Gladiator's Ring [H]
					i(144697),	-- Cruel Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(144659),	-- Cruel Gladiator's Choker [H]
					i(144655),	-- Cruel Gladiator's Necklace [H]
					i(144657),	-- Cruel Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(144733),	-- Cruel Gladiator's Accolade of Conquest [H]
					i(144739),	-- Cruel Gladiator's Accolade of Dominance [H]
					i(144745),	-- Cruel Gladiator's Accolade of Victory [H]
					i(144731),	-- Cruel Gladiator's Badge of Conquest [H]
					i(144737),	-- Cruel Gladiator's Badge of Dominance [H]
					i(144743),	-- Cruel Gladiator's Badge of Victory [H]
					i(144735),	-- Cruel Gladiator's Insignia of Conquest [H]
					i(144741),	-- Cruel Gladiator's Insignia of Dominance [H]
					i(144747),	-- Cruel Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
		n(PVP_ELITE, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 11038 },	-- Gladiator: Legion Season 3
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(147360, {	-- Cruel Gladiator's Cloak [A]
							["sourceAchievements"] = { 11697 },	-- Cruel Elite
							["cost"] = { { "i", MOH, 50 } },
						}),
						i(147337, {	-- Cruel Gladiator's Tabard [A]
							["sourceAchievements"] = { 11697 },	-- Cruel Elite
							["cost"] = { { "i", MOH, 50 } },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				n(119484, {	-- Captain Roberts <Legion Elite Gladiator>
					["coord"] = { 29.6, 74.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = {
							11697,	-- Cruel Elite
							11698,	-- Ferocious Elite
						},
						["cost"] = { { "i", MOH, 12 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(147625, {	-- Ensemble: Elite Cruel Gladiator's Dreadplate Armor [A]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147627, {	-- Ensemble: Elite Cruel Gladiator's Felskin Armor [A]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147623, {	-- Ensemble: Elite Cruel Gladiator's Dragonhide Armor [A]
							["classes"] = { DRUID },
						}),
						iensemble(147621, {	-- Ensemble: Elite Cruel Gladiator's Chain Armor [A]
							["classes"] = { HUNTER },
						}),
						iensemble(147644, {	-- Ensemble: Elite Cruel Gladiator's Silk Armor [A]
							["classes"] = { MAGE },
						}),
						iensemble(147632, {	-- Ensemble: Elite Cruel Gladiator's Ironskin Armor [A]
							["classes"] = { MONK },
						}),
						iensemble(147642, {	-- Ensemble: Elite Cruel Gladiator's Scaled Armor [A]
							["classes"] = { PALADIN },
						}),
						iensemble(147640, {	-- Ensemble: Elite Cruel Gladiator's Satin Armor [A]
							["classes"] = { PRIEST },
						}),
						iensemble(147634, {	-- Ensemble: Elite Cruel Gladiator's Leather Armor [A]
							["classes"] = { ROGUE },
						}),
						iensemble(147637, {	-- Ensemble: Elite Cruel Gladiator's Ringmail Armor [A]
							["classes"] = { SHAMAN },
						}),
						iensemble(147629, {	-- Ensemble: Elite Cruel Gladiator's Felweave Armor [A]
							["classes"] = { WARLOCK },
						}),
						iensemble(147636, {	-- Ensemble: Elite Cruel Gladiator's Plate Armor [A]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = ALLIANCE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(144780),	-- Cruel Gladiator's Dreadcloak [A]
						i(144804),	-- Cruel Gladiator's Dreadplate Chestpiece [A]
						i(144808),	-- Cruel Gladiator's Dreadplate Gauntlets [A]
						i(144816),	-- Cruel Gladiator's Dreadplate Girdle [A]
						i(144810),	-- Cruel Gladiator's Dreadplate Helm [A]
						i(144812),	-- Cruel Gladiator's Dreadplate Legguards [A]
						i(144806),	-- Cruel Gladiator's Dreadplate Sabatons [A]
						i(144814),	-- Cruel Gladiator's Dreadplate Shoulders [A]
						i(144818),	-- Cruel Gladiator's Dreadplate Wristplates [A]
					}),
					cl(DEMONHUNTER, {
						i(144782),	-- Cruel Gladiator's Demonthread Cloak [A]
						i(144832),	-- Cruel Gladiator's Felskin Belt [A]
						i(144822),	-- Cruel Gladiator's Felskin Boots [A]
						i(144824),	-- Cruel Gladiator's Felskin Gloves [A]
						i(144826),	-- Cruel Gladiator's Felskin Helm [A]
						i(144828),	-- Cruel Gladiator's Felskin Legguards [A]
						i(144830),	-- Cruel Gladiator's Felskin Spaulders [A]
						i(144820),	-- Cruel Gladiator's Felskin Tunic [A]
						i(144834),	-- Cruel Gladiator's Felskin Wristguards [A]
					}),
					cl(DRUID, {
						i(144848),	-- Cruel Gladiator's Dragonhide Belt [A]
						i(144784),	-- Cruel Gladiator's Dragonhide Cloak [A]
						i(144840),	-- Cruel Gladiator's Dragonhide Gloves [A]
						i(144842),	-- Cruel Gladiator's Dragonhide Helm [A]
						i(144844),	-- Cruel Gladiator's Dragonhide Legguards [A]
						i(144838),	-- Cruel Gladiator's Dragonhide Moccasins [A]
						i(144836),	-- Cruel Gladiator's Dragonhide Robe [A]
						i(144846),	-- Cruel Gladiator's Dragonhide Spaulders [A]
						i(144850),	-- Cruel Gladiator's Dragonhide Wristguards [A]
					}),
					cl(HUNTER, {
						i(144866),	-- Cruel Gladiator's Chain Armband [A]
						i(144852),	-- Cruel Gladiator's Chain Armor [A]
						i(144864),	-- Cruel Gladiator's Chain Clasp [A]
						i(144856),	-- Cruel Gladiator's Chain Gauntlets [A]
						i(144858),	-- Cruel Gladiator's Chain Helm [A]
						i(144860),	-- Cruel Gladiator's Chain Leggings [A]
						i(144862),	-- Cruel Gladiator's Chain Spaulders [A]
						i(144854),	-- Cruel Gladiator's Chain Treads [A]
						i(144786),	-- Cruel Gladiator's Drape of the Tracker [A]
					}),
					cl(MAGE, {
						i(144878),	-- Cruel Gladiator's Silk Amice [A]
						i(144882),	-- Cruel Gladiator's Silk Bracers [A]
						i(144880),	-- Cruel Gladiator's Silk Cord [A]
						i(144872),	-- Cruel Gladiator's Silk Cowl [A]
						i(144870),	-- Cruel Gladiator's Silk Handguards [A]
						i(144876),	-- Cruel Gladiator's Silk Robe [A]
						i(144868),	-- Cruel Gladiator's Silk Treads [A]
						i(144874),	-- Cruel Gladiator's Silk Trousers [A]
						i(144788),	-- Cruel Gladiator's Silken Shawl [A]
					}),
					cl(MONK, {
						i(144896),	-- Cruel Gladiator's Ironskin Belt [A]
						i(144790),	-- Cruel Gladiator's Ironskin Cloak [A]
						i(144886),	-- Cruel Gladiator's Ironskin Gloves [A]
						i(144888),	-- Cruel Gladiator's Ironskin Helm [A]
						i(144890),	-- Cruel Gladiator's Ironskin Legguards [A]
						i(144884),	-- Cruel Gladiator's Ironskin Slippers [A]
						i(144892),	-- Cruel Gladiator's Ironskin Spaulders [A]
						i(144894),	-- Cruel Gladiator's Ironskin Tunic [A]
						i(144898),	-- Cruel Gladiator's Ironskin Wristguards [A]
					}),
					cl(PALADIN, {
						i(144792),	-- Cruel Gladiator's Greatcloak of Faith [A]
						i(144906),	-- Cruel Gladiator's Scaled Breastplate [A]
						i(144910),	-- Cruel Gladiator's Scaled Gauntlets [A]
						i(144918),	-- Cruel Gladiator's Scaled Girdle [A]
						i(144912),	-- Cruel Gladiator's Scaled Helm [A]
						i(144914),	-- Cruel Gladiator's Scaled Legguards [A]
						i(144908),	-- Cruel Gladiator's Scaled Sabatons [A]
						i(144916),	-- Cruel Gladiator's Scaled Shoulders [A]
						i(144920),	-- Cruel Gladiator's Scaled Wristplates [A]
					}),
					cl(PRIEST, {
						i(144794),	-- Cruel Gladiator's Drape of Piety [A]
						i(144936),	-- Cruel Gladiator's Satin Bracers [A]
						i(144934),	-- Cruel Gladiator's Satin Cord [A]
						i(144924),	-- Cruel Gladiator's Satin Gloves [A]
						i(144926),	-- Cruel Gladiator's Satin Hood [A]
						i(144928),	-- Cruel Gladiator's Satin Leggings [A]
						i(144932),	-- Cruel Gladiator's Satin Mantle [A]
						i(144930),	-- Cruel Gladiator's Satin Robe [A]
						i(144922),	-- Cruel Gladiator's Satin Treads [A]
					}),
					cl(ROGUE, {
						i(144956),	-- Cruel Gladiator's Leather Belt [A]
						i(144948),	-- Cruel Gladiator's Leather Gloves [A]
						i(144950),	-- Cruel Gladiator's Leather Helm [A]
						i(144952),	-- Cruel Gladiator's Leather Legguards [A]
						i(144946),	-- Cruel Gladiator's Leather Slippers [A]
						i(144954),	-- Cruel Gladiator's Leather Spaulders [A]
						i(144944),	-- Cruel Gladiator's Leather Tunic [A]
						i(144958),	-- Cruel Gladiator's Leather Wristguards [A]
						i(144796),	-- Cruel Gladiator's Shadowcape [A]
					}),
					cl(SHAMAN, {
						i(144974),	-- Cruel Gladiator's Ringmail Armband [A]
						i(144960),	-- Cruel Gladiator's Ringmail Armor [A]
						i(144962),	-- Cruel Gladiator's Ringmail Boots [A]
						i(144972),	-- Cruel Gladiator's Ringmail Clasp [A]
						i(144964),	-- Cruel Gladiator's Ringmail Gauntlets [A]
						i(144966),	-- Cruel Gladiator's Ringmail Helm [A]
						i(144968),	-- Cruel Gladiator's Ringmail Kilt [A]
						i(144970),	-- Cruel Gladiator's Ringmail Spaulders [A]
						i(144798),	-- Cruel Gladiator's Totemic Cloak [A]
					}),
					cl(WARLOCK, {
						i(145004),	-- Cruel Gladiator's Felweave Amice [A]
						i(145008),	-- Cruel Gladiator's Felweave Bracers [A]
						i(144800),	-- Cruel Gladiator's Felweave Cloak [A]
						i(145006),	-- Cruel Gladiator's Felweave Cord [A]
						i(144998),	-- Cruel Gladiator's Felweave Cowl [A]
						i(144996),	-- Cruel Gladiator's Felweave Handguards [A]
						i(145002),	-- Cruel Gladiator's Felweave Raiment [A]
						i(144994),	-- Cruel Gladiator's Felweave Treads [A]
						i(145000),	-- Cruel Gladiator's Felweave Trousers [A]
					}),
					cl(WARRIOR, {
						i(144802),	-- Cruel Gladiator's Cloak of Battle [A]
						i(145010),	-- Cruel Gladiator's Plate Chestpiece [A]
						i(145014),	-- Cruel Gladiator's Plate Gauntlets [A]
						i(145022),	-- Cruel Gladiator's Plate Girdle [A]
						i(145016),	-- Cruel Gladiator's Plate Helm [A]
						i(145018),	-- Cruel Gladiator's Plate Legguards [A]
						i(145020),	-- Cruel Gladiator's Plate Shoulders [A]
						i(145012),	-- Cruel Gladiator's Plate Warboots [A]
						i(145024),	-- Cruel Gladiator's Plate Wristplates [A]
					}),
				}),
				filter(FINGER_F, {
					i(144940),	-- Cruel Gladiator's Band [A]
					i(144938),	-- Cruel Gladiator's Ring [A]
					i(144942),	-- Cruel Gladiator's Signet [A]
				}),
				filter(NECK_F, {
					i(144904),	-- Cruel Gladiator's Choker [A]
					i(144900),	-- Cruel Gladiator's Necklace [A]
					i(144902),	-- Cruel Gladiator's Pendant [A]
				}),
				filter(TRINKET_F, {
					i(144978),	-- Cruel Gladiator's Accolade of Conquest [A]
					i(144984),	-- Cruel Gladiator's Accolade of Dominance [A]
					i(144990),	-- Cruel Gladiator's Accolade of Victory [A]
					i(144976),	-- Cruel Gladiator's Badge of Conquest [A]
					i(144982),	-- Cruel Gladiator's Badge of Dominance [A]
					i(144988),	-- Cruel Gladiator's Badge of Victory [A]
					i(144980),	-- Cruel Gladiator's Insignia of Conquest [A]
					i(144986),	-- Cruel Gladiator's Insignia of Dominance [A]
					i(144992),	-- Cruel Gladiator's Insignia of Victory [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						i(147778, {	-- Enchanter's Illusion - Demonic Tyranny (ILLUSION!)
							["sourceAchievements"] = { 11038 },	-- Gladiator: Legion Season 3
							["cost"] = { { "i", MOH, 12 } },
						}),
						i(147357, {	-- Cruel Gladiator's Cloak [H]
							["sourceAchievements"] = { 11697 },	-- Cruel Elite
							["cost"] = { { "i", MOH, 50 } },
						}),
						i(147336, {	-- Cruel Gladiator's Tabard [H]
							["sourceAchievements"] = { 11697 },	-- Cruel Elite
							["cost"] = { { "i", MOH, 50 } },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 }, ["races"] = HORDE_ONLY }, {
				n(119272, {	-- Sarah the Savage <Legion Elite Gladiator>
					["coord"] = { 57.0, 27.8, LEGION_DALARAN },
					["groups"] = sharedData({
						["sourceAchievements"] = {
							11697,	-- Cruel Elite
							11698,	-- Ferocious Elite
						},
						["cost"] = { { "i", MOH, 12 } },
						["u"] = ELITE_PVP_REQUIREMENT,
					}, {
						iensemble(147626, {	-- Ensemble: Elite Cruel Gladiator's Dreadplate Armor [H]
							["classes"] = { DEATHKNIGHT },
						}),
						iensemble(147628, {	-- Ensemble: Elite Cruel Gladiator's Felskin Armor [H]
							["classes"] = { DEMONHUNTER },
						}),
						iensemble(147624, {	-- Ensemble: Elite Cruel Gladiator's Dragonhide Armor [H]
							["classes"] = { DRUID },
						}),
						iensemble(147622, {	-- Ensemble: Elite Cruel Gladiator's Chain Armor [H]
							["classes"] = { HUNTER },
						}),
						iensemble(147643, {	-- Ensemble: Elite Cruel Gladiator's Silk Armor [H]
							["classes"] = { MAGE },
						}),
						iensemble(147631, {	-- Ensemble: Elite Cruel Gladiator's Ironskin Armor [H]
							["classes"] = { MONK },
						}),
						iensemble(147641, {	-- Ensemble: Elite Cruel Gladiator's Scaled Armor [H]
							["classes"] = { PALADIN },
						}),
						iensemble(147639, {	-- Ensemble: Elite Cruel Gladiator's Satin Armor [H]
							["classes"] = { PRIEST },
						}),
						iensemble(147633, {	-- Ensemble: Elite Cruel Gladiator's Leather Armor [H]
							["classes"] = { ROGUE },
						}),
						iensemble(147638, {	-- Ensemble: Elite Cruel Gladiator's Ringmail Armor [H]
							["classes"] = { SHAMAN },
						}),
						iensemble(147630, {	-- Ensemble: Elite Cruel Gladiator's Felweave Armor [H]
							["classes"] = { WARLOCK },
						}),
						iensemble(147635, {	-- Ensemble: Elite Cruel Gladiator's Plate Armor [H]
							["classes"] = { WARRIOR },
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0, REMOVED_7_2_5 }, ["races"] = HORDE_ONLY }, {
				n(CLASSES, {
					cl(DEATHKNIGHT, {
						i(144781),	-- Cruel Gladiator's Dreadcloak [H]
						i(144805),	-- Cruel Gladiator's Dreadplate Chestpiece [H]
						i(144809),	-- Cruel Gladiator's Dreadplate Gauntlets [H]
						i(144817),	-- Cruel Gladiator's Dreadplate Girdle [H]
						i(144811),	-- Cruel Gladiator's Dreadplate Helm [H]
						i(144813),	-- Cruel Gladiator's Dreadplate Legguards [H]
						i(144807),	-- Cruel Gladiator's Dreadplate Sabatons [H]
						i(144815),	-- Cruel Gladiator's Dreadplate Shoulders [H]
						i(144819),	-- Cruel Gladiator's Dreadplate Wristplates [H],
					}),
					cl(DEMONHUNTER, {
						i(144783),	-- Cruel Gladiator's Demonthread Cloak [H]
						i(144833),	-- Cruel Gladiator's Felskin Belt [H]
						i(144823),	-- Cruel Gladiator's Felskin Boots [H]
						i(144825),	-- Cruel Gladiator's Felskin Gloves [H]
						i(144827),	-- Cruel Gladiator's Felskin Helm [H]
						i(144829),	-- Cruel Gladiator's Felskin Legguards [H]
						i(144831),	-- Cruel Gladiator's Felskin Spaulders [H]
						i(144821),	-- Cruel Gladiator's Felskin Tunic [H]
						i(144835),	-- Cruel Gladiator's Felskin Wristguards [H]
					}),
					cl(DRUID, {
						i(144849),	-- Cruel Gladiator's Dragonhide Belt [H]
						i(144785),	-- Cruel Gladiator's Dragonhide Cloak [H]
						i(144841),	-- Cruel Gladiator's Dragonhide Gloves [H]
						i(144843),	-- Cruel Gladiator's Dragonhide Helm [H]
						i(144845),	-- Cruel Gladiator's Dragonhide Legguards [H]
						i(144839),	-- Cruel Gladiator's Dragonhide Moccasins [H]
						i(144837),	-- Cruel Gladiator's Dragonhide Robe [H]
						i(144847),	-- Cruel Gladiator's Dragonhide Spaulders [H]
						i(144851),	-- Cruel Gladiator's Dragonhide Wristguards [H]
					}),
					cl(HUNTER, {
						i(144867),	-- Cruel Gladiator's Chain Armband [H]
						i(144853),	-- Cruel Gladiator's Chain Armor [H]
						i(144865),	-- Cruel Gladiator's Chain Clasp [H]
						i(144857),	-- Cruel Gladiator's Chain Gauntlets [H]
						i(144859),	-- Cruel Gladiator's Chain Helm [H]
						i(144861),	-- Cruel Gladiator's Chain Leggings [H]
						i(144863),	-- Cruel Gladiator's Chain Spaulders [H]
						i(144855),	-- Cruel Gladiator's Chain Treads [H]
						i(144787),	-- Cruel Gladiator's Drape of the Tracker [H]
					}),
					cl(MAGE, {
						i(144879),	-- Cruel Gladiator's Silk Amice [H]
						i(144883),	-- Cruel Gladiator's Silk Bracers [H]
						i(144881),	-- Cruel Gladiator's Silk Cord [H]
						i(144873),	-- Cruel Gladiator's Silk Cowl [H]
						i(144871),	-- Cruel Gladiator's Silk Handguards [H]
						i(144877),	-- Cruel Gladiator's Silk Robe [H]
						i(144869),	-- Cruel Gladiator's Silk Treads [H]
						i(144875),	-- Cruel Gladiator's Silk Trousers [H]
						i(144789),	-- Cruel Gladiator's Silken Shawl [H]
					}),
					cl(MONK, {
						i(144897),	-- Cruel Gladiator's Ironskin Belt [H]
						i(144791),	-- Cruel Gladiator's Ironskin Cloak [H]
						i(144887),	-- Cruel Gladiator's Ironskin Gloves [H]
						i(144889),	-- Cruel Gladiator's Ironskin Helm [H]
						i(144891),	-- Cruel Gladiator's Ironskin Legguards [H]
						i(144885),	-- Cruel Gladiator's Ironskin Slippers [H]
						i(144893),	-- Cruel Gladiator's Ironskin Spaulders [H]
						i(144895),	-- Cruel Gladiator's Ironskin Tunic [H]
						i(144899),	-- Cruel Gladiator's Ironskin Wristguards [H]
					}),
					cl(PALADIN, {
						i(144793),	-- Cruel Gladiator's Greatcloak of Faith [H]
						i(144907),	-- Cruel Gladiator's Scaled Breastplate [H]
						i(144911),	-- Cruel Gladiator's Scaled Gauntlets [H]
						i(144919),	-- Cruel Gladiator's Scaled Girdle [H]
						i(144913),	-- Cruel Gladiator's Scaled Helm [H]
						i(144915),	-- Cruel Gladiator's Scaled Legguards [H]
						i(144909),	-- Cruel Gladiator's Scaled Sabatons [H]
						i(144917),	-- Cruel Gladiator's Scaled Shoulders [H]
						i(144921),	-- Cruel Gladiator's Scaled Wristplates [H]
					}),
					cl(PRIEST, {
						i(144795),	-- Cruel Gladiator's Drape of Piety [H]
						i(144937),	-- Cruel Gladiator's Satin Bracers [H]
						i(144935),	-- Cruel Gladiator's Satin Cord [H]
						i(144925),	-- Cruel Gladiator's Satin Gloves [H]
						i(144927),	-- Cruel Gladiator's Satin Hood [H]
						i(144929),	-- Cruel Gladiator's Satin Leggings [H]
						i(144933),	-- Cruel Gladiator's Satin Mantle [H]
						i(144931),	-- Cruel Gladiator's Satin Robe [H]
						i(144923),	-- Cruel Gladiator's Satin Treads [H]
					}),
					cl(ROGUE, {
						i(144957),	-- Cruel Gladiator's Leather Belt [H]
						i(144949),	-- Cruel Gladiator's Leather Gloves [H]
						i(144951),	-- Cruel Gladiator's Leather Helm [H]
						i(144953),	-- Cruel Gladiator's Leather Legguards [H]
						i(144947),	-- Cruel Gladiator's Leather Slippers [H]
						i(144955),	-- Cruel Gladiator's Leather Spaulders [H]
						i(144945),	-- Cruel Gladiator's Leather Tunic [H]
						i(144959),	-- Cruel Gladiator's Leather Wristguards [H]
						i(144797),	-- Cruel Gladiator's Shadowcape [H]
					}),
					cl(SHAMAN, {
						i(144975),	-- Cruel Gladiator's Ringmail Armband [H]
						i(144961),	-- Cruel Gladiator's Ringmail Armor [H]
						i(144963),	-- Cruel Gladiator's Ringmail Boots [H]
						i(144973),	-- Cruel Gladiator's Ringmail Clasp [H]
						i(144965),	-- Cruel Gladiator's Ringmail Gauntlets [H]
						i(144967),	-- Cruel Gladiator's Ringmail Helm [H]
						i(144969),	-- Cruel Gladiator's Ringmail Kilt [H]
						i(144971),	-- Cruel Gladiator's Ringmail Spaulders [H]
						i(144799),	-- Cruel Gladiator's Totemic Cloak [H]
					}),
					cl(WARLOCK, {
						i(145005),	-- Cruel Gladiator's Felweave Amice [H]
						i(145009),	-- Cruel Gladiator's Felweave Bracers [H]
						i(144801),	-- Cruel Gladiator's Felweave Cloak [H]
						i(145007),	-- Cruel Gladiator's Felweave Cord [H]
						i(144999),	-- Cruel Gladiator's Felweave Cowl [H]
						i(144997),	-- Cruel Gladiator's Felweave Handguards [H]
						i(145003),	-- Cruel Gladiator's Felweave Raiment [H]
						i(144995),	-- Cruel Gladiator's Felweave Treads [H]
						i(145001),	-- Cruel Gladiator's Felweave Trousers [H]
					}),
					cl(WARRIOR, {
						i(144803),	-- Cruel Gladiator's Cloak of Battle [H]
						i(145011),	-- Cruel Gladiator's Plate Chestpiece [H]
						i(145015),	-- Cruel Gladiator's Plate Gauntlets [H]
						i(145023),	-- Cruel Gladiator's Plate Girdle [H]
						i(145017),	-- Cruel Gladiator's Plate Helm [H]
						i(145019),	-- Cruel Gladiator's Plate Legguards [H]
						i(145021),	-- Cruel Gladiator's Plate Shoulders [H]
						i(145013),	-- Cruel Gladiator's Plate Warboots [H]
						i(145025),	-- Cruel Gladiator's Plate Wristplates [H]
					}),
				}),
				filter(FINGER_F, {
					i(144941),	-- Cruel Gladiator's Band [H]
					i(144939),	-- Cruel Gladiator's Ring [H]
					i(144943),	-- Cruel Gladiator's Signet [H]
				}),
				filter(NECK_F, {
					i(144905),	-- Cruel Gladiator's Choker [H]
					i(144901),	-- Cruel Gladiator's Necklace [H]
					i(144903),	-- Cruel Gladiator's Pendant [H]
				}),
				filter(TRINKET_F, {
					i(144979),	-- Cruel Gladiator's Accolade of Conquest [H]
					i(144985),	-- Cruel Gladiator's Accolade of Dominance [H]
					i(144991),	-- Cruel Gladiator's Accolade of Victory [H]
					i(144977),	-- Cruel Gladiator's Badge of Conquest [H]
					i(144983),	-- Cruel Gladiator's Badge of Dominance [H]
					i(144989),	-- Cruel Gladiator's Badge of Victory [H]
					i(144981),	-- Cruel Gladiator's Insignia of Conquest [H]
					i(144987),	-- Cruel Gladiator's Insignia of Dominance [H]
					i(144993),	-- Cruel Gladiator's Insignia of Victory [H]
				}),
			})),
		}),
	})),
})));
