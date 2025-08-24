-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.BFA, {
	n(SEASON_NOTORIOUS, bubbleDownSelf({
		["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0, ADDED_9_0_2_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
			ach(13639),		-- Combatant: Battle for Azeroth Season 3
			ach(13634),		-- Challenger: Battle for Azeroth Season 3
			ach(13641),		-- Rival: Battle for Azeroth Season 3
			ach(13642, {	-- Duelist: Battle for Azeroth Season 3
				ill(6096),	-- Dreadflame (ILLUSION!)
				i(167382, {	-- Notorious Gladiator's Cloak [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(167381, {	-- Notorious Gladiator's Cloak [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13676, {	-- Elite: Battle for Azeroth Season 3
				i(167363, {	-- Notorious Gladiator's Tabard [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(167362, {	-- Notorious Gladiator's Tabard [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13647, {	-- Gladiator: Battle for Azeroth Season 3
				i(156881),	-- Notorious Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13632, {	-- Notorious Gladiator's Proto-Drake (MOUNT!)
				["provider"] = { "i", 156881 },	-- Notorious Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13630, {	-- Notorious Gladiator: Battle for Azeroth Season 3
				title(402),	-- Notorious Gladiator <Name>
			}),
			-- RBG
			ach(13643, {	-- Hero of the Alliance: Notorious
				["races"] = ALLIANCE_ONLY,
			}),
			ach(13644, {	-- Hero of the Horde: Notorious
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(13585, {	-- Never Lose, Never Choose To
				["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0, ADDED_9_0_2_LAUNCH },
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
			i(163122, {	-- Vicious War Basilisk [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(163121, {	-- Vicious War Basilisk [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184676, {	-- Arsenal: Notorious Aspirant's Weapons [A]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180194, {	-- Ensemble: Notorious Aspirant's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180196, {	-- Ensemble: Notorious Aspirant's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180198, {	-- Ensemble: Notorious Aspirant's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180200, {	-- Ensemble: Notorious Aspirant's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(167536),	-- Notorious Aspirant's Cape [A]
					i(167535),	-- Notorious Aspirant's Drape [A]
					i(167534),	-- Notorious Aspirant's Greatcloak [A]
					i(167533),	-- Notorious Aspirant's Shawl [A]
				}),
				filter(CLOTH, {
					i(167514),	-- Notorious Aspirant's Silk Cord [A]
					i(167517),	-- Notorious Aspirant's Silk Cuffs [A]
					i(167500),	-- Notorious Aspirant's Silk Gloves [A]
					i(167502),	-- Notorious Aspirant's Silk Hood [A]
					i(167506),	-- Notorious Aspirant's Silk Leggings [A]
					i(167511),	-- Notorious Aspirant's Silk Mantle [A]
					i(167490),	-- Notorious Aspirant's Silk Robe [A]
					i(167495),	-- Notorious Aspirant's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(167516),	-- Notorious Aspirant's Leather Belt [A]
					i(167520),	-- Notorious Aspirant's Leather Bindings [A]
					i(167497),	-- Notorious Aspirant's Leather Boots [A]
					i(167498),	-- Notorious Aspirant's Leather Gloves [A]
					i(167504),	-- Notorious Aspirant's Leather Helm [A]
					i(167508),	-- Notorious Aspirant's Leather Legguards [A]
					i(167509),	-- Notorious Aspirant's Leather Spaulders [A]
					i(167493),	-- Notorious Aspirant's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(167519),	-- Notorious Aspirant's Chain Armbands [A]
					i(167492),	-- Notorious Aspirant's Chain Armor [A]
					i(167501),	-- Notorious Aspirant's Chain Gauntlets [A]
					i(167503),	-- Notorious Aspirant's Chain Helm [A]
					i(167507),	-- Notorious Aspirant's Chain Leggings [A]
					i(167496),	-- Notorious Aspirant's Chain Sabatons [A]
					i(167512),	-- Notorious Aspirant's Chain Spaulders [A]
					i(167515),	-- Notorious Aspirant's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(167518),	-- Notorious Aspirant's Plate Armguards [A]
					i(167491),	-- Notorious Aspirant's Plate Chestpiece [A]
					i(167499),	-- Notorious Aspirant's Plate Gauntlets [A]
					i(167513),	-- Notorious Aspirant's Plate Girdle [A]
					i(167489),	-- Notorious Aspirant's Plate Helm [A]
					i(167505),	-- Notorious Aspirant's Plate Legguards [A]
					i(167510),	-- Notorious Aspirant's Plate Pauldrons [A]
					i(167494),	-- Notorious Aspirant's Plate Warboots [A]
				}),
				n(WEAPONS, {
					i(169756),	-- Notorious Aspirant's Blade [A]
					i(169754),	-- Notorious Aspirant's Cutter [A]
					i(169748),	-- Notorious Aspirant's Gavel [A]
					i(169760),	-- Notorious Aspirant's Greatsword [A]
					i(169746),	-- Notorious Aspirant's Longbow [A]
					i(169758),	-- Notorious Aspirant's Pike [A]
					i(169750),	-- Notorious Aspirant's Pummeler [A]
					i(169742),	-- Notorious Aspirant's Reprieve [A]
					i(169735),	-- Notorious Aspirant's Shanker [A]
					i(169744),	-- Notorious Aspirant's Shield Wall [A]
					i(169752),	-- Notorious Aspirant's Slicer [A]
					i(169734),	-- Notorious Aspirant's Stabber [A]
					i(169740),	-- Notorious Aspirant's Staff [A]
					i(169738),	-- Notorious Aspirant's Wand [A]
					i(170080),	-- Notorious Aspirant's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184677, {	-- Arsenal: Notorious Aspirant's Weapons [H]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180195, {	-- Ensemble: Notorious Aspirant's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180197, {	-- Ensemble: Notorious Aspirant's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180199, {	-- Ensemble: Notorious Aspirant's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180201, {	-- Ensemble: Notorious Aspirant's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(167532),	-- Notorious Aspirant's Cape [H]
					i(167531),	-- Notorious Aspirant's Drape [H]
					i(167530),	-- Notorious Aspirant's Greatcloak [H]
					i(167529),	-- Notorious Aspirant's Shawl [H]
				}),
				filter(CLOTH, {
					i(167463),	-- Notorious Aspirant's Silk Cuffs [H]
					i(167459),	-- Notorious Aspirant's Silk Gloves [H]
					i(167460),	-- Notorious Aspirant's Silk Hood [H]
					i(167461),	-- Notorious Aspirant's Silk Leggings [H]
					i(167462),	-- Notorious Aspirant's Silk Mantle [H]
					i(167457),	-- Notorious Aspirant's Silk Robe [H]
					i(167458),	-- Notorious Aspirant's Silk Treads [H]
					i(167464),	-- Notorious Aspirant's Silk Cord [H]
				}),
				filter(LEATHER, {
					i(167471),	-- Notorious Aspirant's Leather Belt [H]
					i(167472),	-- Notorious Aspirant's Leather Bindings [H]
					i(167466),	-- Notorious Aspirant's Leather Boots [H]
					i(167467),	-- Notorious Aspirant's Leather Gloves [H]
					i(167468),	-- Notorious Aspirant's Leather Helm [H]
					i(167469),	-- Notorious Aspirant's Leather Legguards [H]
					i(167470),	-- Notorious Aspirant's Leather Spaulders [H]
					i(167465),	-- Notorious Aspirant's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(167480),	-- Notorious Aspirant's Chain Armbands [H]
					i(167473),	-- Notorious Aspirant's Chain Armor [H]
					i(167475),	-- Notorious Aspirant's Chain Gauntlets [H]
					i(167476),	-- Notorious Aspirant's Chain Helm [H]
					i(167477),	-- Notorious Aspirant's Chain Leggings [H]
					i(167474),	-- Notorious Aspirant's Chain Sabatons [H]
					i(167478),	-- Notorious Aspirant's Chain Spaulders [H]
					i(167479),	-- Notorious Aspirant's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(167488),	-- Notorious Aspirant's Plate Armguards [H]
					i(167482),	-- Notorious Aspirant's Plate Chestpiece [H]
					i(167484),	-- Notorious Aspirant's Plate Gauntlets [H]
					i(167487),	-- Notorious Aspirant's Plate Girdle [H]
					i(167481),	-- Notorious Aspirant's Plate Helm [H]
					i(167485),	-- Notorious Aspirant's Plate Legguards [H]
					i(167486),	-- Notorious Aspirant's Plate Pauldrons [H]
					i(167483),	-- Notorious Aspirant's Plate Warboots [H]
				}),
				n(WEAPONS, {
					i(169757),	-- Notorious Aspirant's Blade [H]
					i(169755),	-- Notorious Aspirant's Cutter [H]
					i(169749),	-- Notorious Aspirant's Gavel [H]
					i(169761),	-- Notorious Aspirant's Greatsword [H]
					i(169747),	-- Notorious Aspirant's Longbow [H]
					i(169759),	-- Notorious Aspirant's Pike [H]
					i(169751),	-- Notorious Aspirant's Pummeler [H]
					i(169743),	-- Notorious Aspirant's Reprieve [H]
					i(169737),	-- Notorious Aspirant's Shanker [H]
					i(169745),	-- Notorious Aspirant's Shield Wall [H]
					i(169753),	-- Notorious Aspirant's Slicer [H]
					i(169736),	-- Notorious Aspirant's Stabber [H]
					i(169741),	-- Notorious Aspirant's Staff [H]
					i(169739),	-- Notorious Aspirant's Wand [H]
					i(170082),	-- Notorious Aspirant's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
				filter(FINGER_F, {
					i(167524),	-- Notorious Aspirant's Band
					i(167523),	-- Notorious Aspirant's Ring
				}),
				filter(TRINKET_F, {
					i(167528),	-- Notorious Aspirant's Badge
					i(167526),	-- Notorious Aspirant's Emblem
					i(167527),	-- Notorious Aspirant's Insignia
					i(167525),	-- Notorious Aspirant's Medallion
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184674, {	-- Arsenal: Notorious Gladiator's Weapons [A]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(184436, {	-- Ensemble: Notorious Gladiator's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184438, {	-- Ensemble: Notorious Gladiator's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184440, {	-- Ensemble: Notorious Gladiator's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184442, {	-- Ensemble: Notorious Gladiator's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(167373),	-- Notorious Gladiator's Cape [A]
					i(167372),	-- Notorious Gladiator's Drape [A]
					i(167371),	-- Notorious Gladiator's Greatcloak [A]
					i(167370),	-- Notorious Gladiator's Shawl [A]
				}),
				filter(CLOTH, {
					i(167352),	-- Notorious Gladiator's Silk Amice [A]
					i(167429),	-- Notorious Gladiator's Silk Armor [A]
					i(167358),	-- Notorious Gladiator's Silk Bracers [A]
					i(167406),	-- Notorious Gladiator's Silk Cap [A]
					i(167421),	-- Notorious Gladiator's Silk Chestwrap [A]
					i(167291),	-- Notorious Gladiator's Silk Cord [A]
					i(167398),	-- Notorious Gladiator's Silk Cover [A]
					i(167343),	-- Notorious Gladiator's Silk Cowl [A]
					i(167294),	-- Notorious Gladiator's Silk Cuffs [A]
					i(167439),	-- Notorious Gladiator's Silk Epaulets [A]
					i(167277),	-- Notorious Gladiator's Silk Gloves [A]
					i(167341),	-- Notorious Gladiator's Silk Handguards [A]
					i(167390),	-- Notorious Gladiator's Silk Helm [A]
					i(167279),	-- Notorious Gladiator's Silk Hood [A]
					i(167283),	-- Notorious Gladiator's Silk Leggings [A]
					i(167288),	-- Notorious Gladiator's Silk Mantle [A]
					i(167331),	-- Notorious Gladiator's Silk Raiment [A]
					i(167267),	-- Notorious Gladiator's Silk Robe [A]
					i(167355),	-- Notorious Gladiator's Silk Sash [A]
					i(167455),	-- Notorious Gladiator's Silk Shoulderguards [A]
					i(167447),	-- Notorious Gladiator's Silk Shoulderpads [A]
					i(167336),	-- Notorious Gladiator's Silk Slippers [A]
					i(167272),	-- Notorious Gladiator's Silk Treads [A]
					i(167347),	-- Notorious Gladiator's Silk Trousers [A]
					i(167413),	-- Notorious Gladiator's Silk Vestments [A]
				}),
				filter(LEATHER, {
					i(167361),	-- Notorious Gladiator's Leather Armwraps [A]
					i(167293),	-- Notorious Gladiator's Leather Belt [A]
					i(167297),	-- Notorious Gladiator's Leather Bindings [A]
					i(167274),	-- Notorious Gladiator's Leather Boots [A]
					i(167392),	-- Notorious Gladiator's Leather Cap [A]
					i(167424),	-- Notorious Gladiator's Leather Chestguard [A]
					i(167338),	-- Notorious Gladiator's Leather Footguards [A]
					i(167275),	-- Notorious Gladiator's Leather Gloves [A]
					i(167339),	-- Notorious Gladiator's Leather Handguards [A]
					i(167432),	-- Notorious Gladiator's Leather Harness [A]
					i(167408),	-- Notorious Gladiator's Leather Headpiece [A]
					i(167281),	-- Notorious Gladiator's Leather Helm [A]
					i(167345),	-- Notorious Gladiator's Leather Hood [A]
					i(167416),	-- Notorious Gladiator's Leather Jerkin [A]
					i(167285),	-- Notorious Gladiator's Leather Legguards [A]
					i(167350),	-- Notorious Gladiator's Leather Mantle [A]
					i(167349),	-- Notorious Gladiator's Leather Pants [A]
					i(167445),	-- Notorious Gladiator's Leather Pauldrons [A]
					i(167437),	-- Notorious Gladiator's Leather Shoulderguards [A]
					i(167453),	-- Notorious Gladiator's Leather Shoulderpads [A]
					i(167400),	-- Notorious Gladiator's Leather Skullguard [A]
					i(167286),	-- Notorious Gladiator's Leather Spaulders [A]
					i(167270),	-- Notorious Gladiator's Leather Tunic [A]
					i(167334),	-- Notorious Gladiator's Leather Vest [A]
					i(167357),	-- Notorious Gladiator's Leather Waistband [A]
				}),
				filter(MAIL, {
					i(167296),	-- Notorious Gladiator's Chain Armbands [A]
					i(167269),	-- Notorious Gladiator's Chain Armor [A]
					i(167333),	-- Notorious Gladiator's Chain Chestguard [A]
					i(167356),	-- Notorious Gladiator's Chain Clasp [A]
					i(167391),	-- Notorious Gladiator's Chain Coif [A]
					i(167456),	-- Notorious Gladiator's Chain Epaulets [A]
					i(167337),	-- Notorious Gladiator's Chain Footguards [A]
					i(167278),	-- Notorious Gladiator's Chain Gauntlets [A]
					i(167342),	-- Notorious Gladiator's Chain Handguards [A]
					i(167415),	-- Notorious Gladiator's Chain Hauberk [A]
					i(167399),	-- Notorious Gladiator's Chain Headgear [A]
					i(167344),	-- Notorious Gladiator's Chain Headpiece [A]
					i(167280),	-- Notorious Gladiator's Chain Helm [A]
					i(167284),	-- Notorious Gladiator's Chain Leggings [A]
					i(167348),	-- Notorious Gladiator's Chain Legguards [A]
					i(167448),	-- Notorious Gladiator's Chain Mantle [A]
					i(167440),	-- Notorious Gladiator's Chain Pauldrons [A]
					i(167273),	-- Notorious Gladiator's Chain Sabatons [A]
					i(167353),	-- Notorious Gladiator's Chain Shoulderguards [A]
					i(167407),	-- Notorious Gladiator's Chain Skullcover [A]
					i(167289),	-- Notorious Gladiator's Chain Spaulders [A]
					i(167431),	-- Notorious Gladiator's Chain Vest [A]
					i(167292),	-- Notorious Gladiator's Chain Waistguard [A]
					i(167360),	-- Notorious Gladiator's Chain Wristguards [A]
					i(167423),	-- Notorious Gladiator's Chainmail [A]
				}),
				filter(PLATE, {
					i(167295),	-- Notorious Gladiator's Plate Armguards [A]
					i(167414),	-- Notorious Gladiator's Plate Armor [A]
					i(167422),	-- Notorious Gladiator's Plate Breastplate [A]
					i(167332),	-- Notorious Gladiator's Plate Chestguard [A]
					i(167268),	-- Notorious Gladiator's Plate Chestpiece [A]
					i(167430),	-- Notorious Gladiator's Plate Chestplate [A]
					i(167354),	-- Notorious Gladiator's Plate Clasp [A]
					i(167276),	-- Notorious Gladiator's Plate Gauntlets [A]
					i(167290),	-- Notorious Gladiator's Plate Girdle [A]
					i(167340),	-- Notorious Gladiator's Plate Gloves [A]
					i(167397),	-- Notorious Gladiator's Plate Greathelm [A]
					i(167335),	-- Notorious Gladiator's Plate Greaves [A]
					i(167330),	-- Notorious Gladiator's Plate Headcover [A]
					i(167266),	-- Notorious Gladiator's Plate Helm [A]
					i(167346),	-- Notorious Gladiator's Plate Leg Armor [A]
					i(167282),	-- Notorious Gladiator's Plate Legguards [A]
					i(167287),	-- Notorious Gladiator's Plate Pauldrons [A]
					i(167446),	-- Notorious Gladiator's Plate Shoulderguards [A]
					i(167351),	-- Notorious Gladiator's Plate Shoulders [A]
					i(167405),	-- Notorious Gladiator's Plate Skullguard [A]
					i(167438),	-- Notorious Gladiator's Plate Spaulders [A]
					i(167359),	-- Notorious Gladiator's Plate Vambraces [A]
					i(167271),	-- Notorious Gladiator's Plate Warboots [A]
					i(167389),	-- Notorious Gladiator's Plate Warhelm [A]
					i(167454),	-- Notorious Gladiator's Shoulderplates [A]
				}),
				n(WEAPONS, {
					i(169720),	-- Notorious Gladiator's Bonegrinder [A]
					i(169712),	-- Notorious Gladiator's Chopper [A]
					i(171160),	-- Notorious Gladiator's Claw [A]
					i(169730),	-- Notorious Gladiator's Cutter [A]
					i(169733),	-- Notorious Gladiator's Gavel [A]
					i(169716),	-- Notorious Gladiator's Longbow [A]
					i(169715),	-- Notorious Gladiator's Pike [A]
					i(169711),	-- Notorious Gladiator's Pummeler [A]
					i(169723),	-- Notorious Gladiator's Reprieve [A]
					i(169709),	-- Notorious Gladiator's Shanker [A]
					i(167365),	-- Notorious Gladiator's Shield Wall [A]
					i(169713),	-- Notorious Gladiator's Slicer [A]
					i(169727),	-- Notorious Gladiator's Stabber [A]
					i(171155),	-- Notorious Gladiator's Staff [A]
					i(171156),	-- Notorious Gladiator's Trident [A]
					i(169718),	-- Notorious Gladiator's Wand [A]
					i(169710),	-- Notorious Gladiator's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184675, {	-- Arsenal: Notorious Gladiator's Weapons [H]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(184437, {	-- Ensemble: Notorious Gladiator's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184439, {	-- Ensemble: Notorious Gladiator's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184441, {	-- Ensemble: Notorious Gladiator's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184443, {	-- Ensemble: Notorious Gladiator's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(167369),	-- Notorious Gladiator's Cape [H]
					i(167368),	-- Notorious Gladiator's Drape [H]
					i(167367),	-- Notorious Gladiator's Greatcloak [H]
					i(167366),	-- Notorious Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(167303),	-- Notorious Gladiator's Silk Amice [H]
					i(167425),	-- Notorious Gladiator's Silk Armor [H]
					i(167304),	-- Notorious Gladiator's Silk Bracers [H]
					i(167401),	-- Notorious Gladiator's Silk Cap [H]
					i(167417),	-- Notorious Gladiator's Silk Chestwrap [H]
					i(167241),	-- Notorious Gladiator's Silk Cord [H]
					i(167393),	-- Notorious Gladiator's Silk Cover [H]
					i(167301),	-- Notorious Gladiator's Silk Cowl [H]
					i(167240),	-- Notorious Gladiator's Silk Cuffs [H]
					i(167433),	-- Notorious Gladiator's Silk Epaulets [H]
					i(167236),	-- Notorious Gladiator's Silk Gloves [H]
					i(167300),	-- Notorious Gladiator's Silk Handguards [H]
					i(167385),	-- Notorious Gladiator's Silk Helm [H]
					i(167237),	-- Notorious Gladiator's Silk Hood [H]
					i(167238),	-- Notorious Gladiator's Silk Leggings [H]
					i(167239),	-- Notorious Gladiator's Silk Mantle [H]
					i(167298),	-- Notorious Gladiator's Silk Raiment [H]
					i(167234),	-- Notorious Gladiator's Silk Robe [H]
					i(167305),	-- Notorious Gladiator's Silk Sash [H]
					i(167449),	-- Notorious Gladiator's Silk Shoulderguards [H]
					i(167441),	-- Notorious Gladiator's Silk Shoulderpads [H]
					i(167299),	-- Notorious Gladiator's Silk Slippers [H]
					i(167235),	-- Notorious Gladiator's Silk Treads [H]
					i(167302),	-- Notorious Gladiator's Silk Trousers [H]
					i(167409),	-- Notorious Gladiator's Silk Vestments [H]
				}),
				filter(LEATHER, {
					i(167313),	-- Notorious Gladiator's Leather Armwraps [H]
					i(167248),	-- Notorious Gladiator's Leather Belt [H]
					i(167249),	-- Notorious Gladiator's Leather Bindings [H]
					i(167243),	-- Notorious Gladiator's Leather Boots [H]
					i(167386),	-- Notorious Gladiator's Leather Cap [H]
					i(167418),	-- Notorious Gladiator's Leather Chestguard [H]
					i(167307),	-- Notorious Gladiator's Leather Footguards [H]
					i(167244),	-- Notorious Gladiator's Leather Gloves [H]
					i(167308),	-- Notorious Gladiator's Leather Handguards [H]
					i(167426),	-- Notorious Gladiator's Leather Harness [H]
					i(167402),	-- Notorious Gladiator's Leather Headpiece [H]
					i(167245),	-- Notorious Gladiator's Leather Helm [H]
					i(167309),	-- Notorious Gladiator's Leather Hood [H]
					i(167410),	-- Notorious Gladiator's Leather Jerkin [H]
					i(167246),	-- Notorious Gladiator's Leather Legguards [H]
					i(167311),	-- Notorious Gladiator's Leather Mantle [H]
					i(167310),	-- Notorious Gladiator's Leather Pants [H]
					i(167442),	-- Notorious Gladiator's Leather Pauldrons [H]
					i(167434),	-- Notorious Gladiator's Leather Shoulderguards [H]
					i(167450),	-- Notorious Gladiator's Leather Shoulderpads [H]
					i(167394),	-- Notorious Gladiator's Leather Skullguard [H]
					i(167247),	-- Notorious Gladiator's Leather Spaulders [H]
					i(167242),	-- Notorious Gladiator's Leather Tunic [H]
					i(167306),	-- Notorious Gladiator's Leather Vest [H]
					i(167312),	-- Notorious Gladiator's Leather Waistband [H]
				}),
				filter(MAIL, {
					i(167257),	-- Notorious Gladiator's Chain Armbands [H]
					i(167250),	-- Notorious Gladiator's Chain Armor [H]
					i(167314),	-- Notorious Gladiator's Chain Chestguard [H]
					i(167320),	-- Notorious Gladiator's Chain Clasp [H]
					i(167387),	-- Notorious Gladiator's Chain Coif [H]
					i(167451),	-- Notorious Gladiator's Chain Epaulets [H]
					i(167315),	-- Notorious Gladiator's Chain Footguards [H]
					i(167252),	-- Notorious Gladiator's Chain Gauntlets [H]
					i(167316),	-- Notorious Gladiator's Chain Handguards [H]
					i(167411),	-- Notorious Gladiator's Chain Hauberk [H]
					i(167395),	-- Notorious Gladiator's Chain Headgear [H]
					i(167317),	-- Notorious Gladiator's Chain Headpiece [H]
					i(167253),	-- Notorious Gladiator's Chain Helm [H]
					i(167254),	-- Notorious Gladiator's Chain Leggings [H]
					i(167318),	-- Notorious Gladiator's Chain Legguards [H]
					i(167443),	-- Notorious Gladiator's Chain Mantle [H]
					i(167435),	-- Notorious Gladiator's Chain Pauldrons [H]
					i(167251),	-- Notorious Gladiator's Chain Sabatons [H]
					i(167319),	-- Notorious Gladiator's Chain Shoulderguards [H]
					i(167403),	-- Notorious Gladiator's Chain Skullcover [H]
					i(167255),	-- Notorious Gladiator's Chain Spaulders [H]
					i(167427),	-- Notorious Gladiator's Chain Vest [H]
					i(167256),	-- Notorious Gladiator's Chain Waistguard [H]
					i(167321),	-- Notorious Gladiator's Chain Wristguards [H]
					i(167419),	-- Notorious Gladiator's Chainmail [H]
				}),
				filter(PLATE, {
					i(167265),	-- Notorious Gladiator's Plate Armguards [H]
					i(167412),	-- Notorious Gladiator's Plate Armor [H]
					i(167420),	-- Notorious Gladiator's Plate Breastplate [H]
					i(167323),	-- Notorious Gladiator's Plate Chestguard [H]
					i(167259),	-- Notorious Gladiator's Plate Chestpiece [H]
					i(167428),	-- Notorious Gladiator's Plate Chestplate [H]
					i(167328),	-- Notorious Gladiator's Plate Clasp [H]
					i(167261),	-- Notorious Gladiator's Plate Gauntlets [H]
					i(167264),	-- Notorious Gladiator's Plate Girdle [H]
					i(167325),	-- Notorious Gladiator's Plate Gloves [H]
					i(167396),	-- Notorious Gladiator's Plate Greathelm [H]
					i(167324),	-- Notorious Gladiator's Plate Greaves [H]
					i(167322),	-- Notorious Gladiator's Plate Headcover [H]
					i(167258),	-- Notorious Gladiator's Plate Helm [H]
					i(167326),	-- Notorious Gladiator's Plate Leg Armor [H]
					i(167262),	-- Notorious Gladiator's Plate Legguards [H]
					i(167263),	-- Notorious Gladiator's Plate Pauldrons [H]
					i(167444),	-- Notorious Gladiator's Plate Shoulderguards [H]
					i(167327),	-- Notorious Gladiator's Plate Shoulders [H]
					i(167404),	-- Notorious Gladiator's Plate Skullguard [H]
					i(167436),	-- Notorious Gladiator's Plate Spaulders [H]
					i(167329),	-- Notorious Gladiator's Plate Vambraces [H]
					i(167260),	-- Notorious Gladiator's Plate Warboots [H]
					i(167388),	-- Notorious Gladiator's Plate Warhelm [H]
					i(167452),	-- Notorious Gladiator's Shoulderplates [H]
				}),
				n(WEAPONS, {
					i(169721),	-- Notorious Gladiator's Bonegrinder [H]
					i(169704),	-- Notorious Gladiator's Chopper [H]
					i(171161),	-- Notorious Gladiator's Claw [H]
					i(169731),	-- Notorious Gladiator's Cutter [H]
					i(169732),	-- Notorious Gladiator's Gavel [H]
					i(169717),	-- Notorious Gladiator's Longbow [H]
					i(169714),	-- Notorious Gladiator's Pike [H]
					i(171157),	-- Notorious Gladiator's Trident [H]
					i(169705),	-- Notorious Gladiator's Pummeler [H]
					i(169722),	-- Notorious Gladiator's Reprieve [H]
					i(169708),	-- Notorious Gladiator's Shanker [H]
					i(167364),	-- Notorious Gladiator's Shield Wall [H]
					i(169706),	-- Notorious Gladiator's Slicer [H]
					i(169726),	-- Notorious Gladiator's Stabber [H]
					i(171154),	-- Notorious Gladiator's Staff [H]
					i(169719),	-- Notorious Gladiator's Wand [H]
					i(169707),	-- Notorious Gladiator's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
				filter(FINGER_F, {
					i(167375),	-- Notorious Gladiator's Band
					i(167374),	-- Notorious Gladiator's Ring
					i(167376),	-- Notorious Gladiator's Signet
				}),
				filter(TRINKET_F, {
					i(167380),	-- Notorious Gladiator's Badge
					i(167378),	-- Notorious Gladiator's Emblem
					i(167379),	-- Notorious Gladiator's Insignia
					i(167383),	-- Notorious Gladiator's Maledict
					i(167377),	-- Notorious Gladiator's Medallion
					i(167384),	-- Notorious Gladiator's Safeguard
				}),
			})),
		}),
		n(PVP_ELITE, bubbleDown({ ["bonusID"] = 5842, ["timeline"] = { ADDED_8_2_0, REMOVED_8_3_0 } }, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
				n(BACK, {
					i(167373),	-- Notorious Gladiator's Cape [A]
					i(167372),	-- Notorious Gladiator's Drape [A]
					i(167371),	-- Notorious Gladiator's Greatcloak [A]
					i(167370),	-- Notorious Gladiator's Shawl [A],
				}),
				filter(CLOTH, {
					i(167291),	-- Notorious Gladiator's Silk Cord [A]
					i(167294),	-- Notorious Gladiator's Silk Cuffs [A]
					i(167277),	-- Notorious Gladiator's Silk Gloves [A]
					i(167279),	-- Notorious Gladiator's Silk Hood [A]
					i(167283),	-- Notorious Gladiator's Silk Leggings [A]
					i(167288),	-- Notorious Gladiator's Silk Mantle [A]
					i(167267),	-- Notorious Gladiator's Silk Robe [A]
					i(167272),	-- Notorious Gladiator's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(167293),	-- Notorious Gladiator's Leather Belt [A]
					i(167297),	-- Notorious Gladiator's Leather Bindings [A]
					i(167274),	-- Notorious Gladiator's Leather Boots [A]
					i(167275),	-- Notorious Gladiator's Leather Gloves [A]
					i(167281),	-- Notorious Gladiator's Leather Helm [A]
					i(167285),	-- Notorious Gladiator's Leather Legguards [A]
					i(167286),	-- Notorious Gladiator's Leather Spaulders [A]
					i(167270),	-- Notorious Gladiator's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(167296),	-- Notorious Gladiator's Chain Armbands [A]
					i(167269),	-- Notorious Gladiator's Chain Armor [A]
					i(167278),	-- Notorious Gladiator's Chain Gauntlets [A]
					i(167280),	-- Notorious Gladiator's Chain Helm [A]
					i(167284),	-- Notorious Gladiator's Chain Leggings [A]
					i(167273),	-- Notorious Gladiator's Chain Sabatons [A]
					i(167289),	-- Notorious Gladiator's Chain Spaulders [A]
					i(167292),	-- Notorious Gladiator's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(167295),	-- Notorious Gladiator's Plate Armguards [A]
					i(167268),	-- Notorious Gladiator's Plate Chestpiece [A]
					i(167276),	-- Notorious Gladiator's Plate Gauntlets [A]
					i(167290),	-- Notorious Gladiator's Plate Girdle [A]
					i(167266),	-- Notorious Gladiator's Plate Helm [A]
					i(167282),	-- Notorious Gladiator's Plate Legguards [A]
					i(167287),	-- Notorious Gladiator's Plate Pauldrons [A]
					i(167271),	-- Notorious Gladiator's Plate Warboots [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
				n(BACK, {
					i(167369),	-- Notorious Gladiator's Cape [H]
					i(167368),	-- Notorious Gladiator's Drape [H]
					i(167367),	-- Notorious Gladiator's Greatcloak [H]
					i(167366),	-- Notorious Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(167241),	-- Notorious Gladiator's Silk Cord [H]
					i(167240),	-- Notorious Gladiator's Silk Cuffs [H]
					i(167236),	-- Notorious Gladiator's Silk Gloves [H]
					i(167237),	-- Notorious Gladiator's Silk Hood [H]
					i(167238),	-- Notorious Gladiator's Silk Leggings [H]
					i(167239),	-- Notorious Gladiator's Silk Mantle [H]
					i(167234),	-- Notorious Gladiator's Silk Robe [H]
					i(167235),	-- Notorious Gladiator's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(167248),	-- Notorious Gladiator's Leather Belt [H]
					i(167249),	-- Notorious Gladiator's Leather Bindings [H]
					i(167243),	-- Notorious Gladiator's Leather Boots [H]
					i(167244),	-- Notorious Gladiator's Leather Gloves [H]
					i(167245),	-- Notorious Gladiator's Leather Helm [H]
					i(167246),	-- Notorious Gladiator's Leather Legguards [H]
					i(167247),	-- Notorious Gladiator's Leather Spaulders [H]
					i(167242),	-- Notorious Gladiator's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(167257),	-- Notorious Gladiator's Chain Armbands [H]
					i(167250),	-- Notorious Gladiator's Chain Armor [H]
					i(167252),	-- Notorious Gladiator's Chain Gauntlets [H]
					i(167253),	-- Notorious Gladiator's Chain Helm [H]
					i(167254),	-- Notorious Gladiator's Chain Leggings [H]
					i(167251),	-- Notorious Gladiator's Chain Sabatons [H]
					i(167255),	-- Notorious Gladiator's Chain Spaulders [H]
					i(167256),	-- Notorious Gladiator's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(167265),	-- Notorious Gladiator's Plate Armguards [H]
					i(167259),	-- Notorious Gladiator's Plate Chestpiece [H]
					i(167261),	-- Notorious Gladiator's Plate Gauntlets [H]
					i(167264),	-- Notorious Gladiator's Plate Girdle [H]
					i(167258),	-- Notorious Gladiator's Plate Helm [H]
					i(167262),	-- Notorious Gladiator's Plate Legguards [H]
					i(167263),	-- Notorious Gladiator's Plate Pauldrons [H]
					i(167260),	-- Notorious Gladiator's Plate Warboots [H]
				}),
			})),
		})),
	})),
})));
