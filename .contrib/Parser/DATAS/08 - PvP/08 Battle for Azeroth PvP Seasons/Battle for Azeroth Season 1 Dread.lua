-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
-- TODO: S1 BonusID to say "Elite" instead of "Mythic" (Maybe it's ModID3)
root(ROOTS.PVP, pvp(expansion(EXPANSION.BFA, {
	n(SEASON_DREAD, bubbleDownSelf({
		["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0, ADDED_9_0_2_LAUNCH },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 } }, {
			ach(13199),		-- Combatant: Battle for Azeroth Season 1
			ach(12959),		-- Challenger: Battle for Azeroth Season 1
			ach(12960),		-- Rival: Battle for Azeroth Season 1
			ach(12962, {	-- Duelist: Battle for Azeroth Season 1
				ill(6096),	-- Dreadflame (ILLUSION!)
				i(164575, {	-- Dread Gladiator's Cloak [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(164574, {	-- Dread Gladiator's Cloak [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13465, {	-- Elite: Battle for Azeroth Season 1
				["timeline"] = { ADDED_8_1_5, REMOVED_8_1_5 },
			}),
			ach(12961, {	-- Gladiator: Battle for Azeroth Season 1
				i(156879),	-- Dread Gladiator's Proto-Drake (MOUNT!)
				i(164573, {	-- Dread Gladiator's Tabard [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(164572, {	-- Dread Gladiator's Tabard [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13093, {	-- Dread Gladiator's Proto-Drake (MOUNT!)
				["provider"] = { "i", 156879 },	-- Dread Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(12945, {	-- Dread Gladiator: Battle for Azeroth Season 1
				title(79),	-- Dread Gladiator <Name>
			}),
			-- RBG
			ach(12963, {	-- Hero of the Alliance: Dread
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12964, {	-- Hero of the Horde: Dread
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(12993, {	-- Don't Warfront Me
				["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0, ADDED_9_0_2_LAUNCH }
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 } }, {
			i(163123, {	-- Vicious War Riverbeast [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(163124, {	-- Vicious War Clefthoof [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(184668, {	-- Arsenal: Dread Aspirant's Weapons [A]
							["cost"] = { { "i", MOH, 80 } },
						}),
						iensemble(180178, {	-- Ensemble: Dread Aspirant's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180180, {	-- Ensemble: Dread Aspirant's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180182, {	-- Ensemble: Dread Aspirant's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180184, {	-- Ensemble: Dread Aspirant's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(163724),	-- Dread Aspirant's Cape [A]
					i(163721),	-- Dread Aspirant's Cloak [A]
					i(163723),	-- Dread Aspirant's Drape [A]
					i(163722),	-- Dread Aspirant's Greatcloak [A]
				}),
				filter(CLOTH, {
					i(162925),	-- Dread Aspirant's Silk Cord [A]
					i(162928),	-- Dread Aspirant's Silk Cuffs [A]
					i(162911),	-- Dread Aspirant's Silk Gloves [A]
					i(162913),	-- Dread Aspirant's Silk Hood [A]
					i(162917),	-- Dread Aspirant's Silk Leggings [A]
					i(162922),	-- Dread Aspirant's Silk Mantle [A]
					i(162901),	-- Dread Aspirant's Silk Robe [A]
					i(162906),	-- Dread Aspirant's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(162927),	-- Dread Aspirant's Leather Belt [A]
					i(162931),	-- Dread Aspirant's Leather Bindings [A]
					i(162908),	-- Dread Aspirant's Leather Boots [A]
					i(162909),	-- Dread Aspirant's Leather Gloves [A]
					i(162915),	-- Dread Aspirant's Leather Helm [A]
					i(162919),	-- Dread Aspirant's Leather Legguards [A]
					i(162920),	-- Dread Aspirant's Leather Spaulders [A]
					i(162904),	-- Dread Aspirant's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(162930),	-- Dread Aspirant's Chain Armbands [A]
					i(162903),	-- Dread Aspirant's Chain Armor [A]
					i(162912),	-- Dread Aspirant's Chain Gauntlets [A]
					i(162914),	-- Dread Aspirant's Chain Helm [A]
					i(162918),	-- Dread Aspirant's Chain Leggings [A]
					i(162907),	-- Dread Aspirant's Chain Sabatons [A]
					i(162923),	-- Dread Aspirant's Chain Spaulders [A]
					i(162926),	-- Dread Aspirant's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(162929),	-- Dread Aspirant's Plate Armguards [A]
					i(162902),	-- Dread Aspirant's Plate Chestpiece [A]
					i(162910),	-- Dread Aspirant's Plate Gauntlets [A]
					i(162924),	-- Dread Aspirant's Plate Girdle [A]
					i(162900),	-- Dread Aspirant's Plate Helm [A]
					i(162916),	-- Dread Aspirant's Plate Legguards [A]
					i(162921),	-- Dread Aspirant's Plate Pauldrons [A]
					i(162905),	-- Dread Aspirant's Plate Warboots [A]
				}),
				n(WEAPONS, {
					i(162885),	-- Dread Aspirant's Barrier [A]
					i(162890),	-- Dread Aspirant's Bonegrinder [A]
					i(166729),	-- Dread Aspirant's Cleaver [A]
					i(162871),	-- Dread Aspirant's Gavel [A]
					i(162879),	-- Dread Aspirant's Greatsword [A]
					i(162869),	-- Dread Aspirant's Longbow [A]
					i(162887),	-- Dread Aspirant's Pike [A]
					i(162969),	-- Dread Aspirant's Pummeler [A]
					i(162883),	-- Dread Aspirant's Reprieve [A]
					i(162888),	-- Dread Aspirant's Rifle [A]
					i(162971),	-- Dread Aspirant's Shanker [A]
					i(162884),	-- Dread Aspirant's Shield Wall [A]
					i(162892),	-- Dread Aspirant's Slicer [A]
					i(162870),	-- Dread Aspirant's Spellblade [A]
					i(162886),	-- Dread Aspirant's Staff [A]
					i(162891),	-- Dread Aspirant's Wand [A]
					i(162881),	-- Dread Aspirant's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(184669, {	-- Arsenal: Dread Aspirant's Weapons [H]
							["cost"] = { { "i", MOH, 80 } },
						}),
						iensemble(180179, {	-- Ensemble: Dread Aspirant's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180181, {	-- Ensemble: Dread Aspirant's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180183, {	-- Ensemble: Dread Aspirant's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180185, {	-- Ensemble: Dread Aspirant's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(162968),	-- Dread Aspirant's Cape [H]
					i(162864),	-- Dread Aspirant's Cloak [H]
					i(162967),	-- Dread Aspirant's Drape [H]
					i(162895),	-- Dread Aspirant's Greatcloak [H]
				}),
				filter(CLOTH, {
					i(162963),	-- Dread Aspirant's Silk Cord [H]
					i(162959),	-- Dread Aspirant's Silk Cuffs [H]
					i(162943),	-- Dread Aspirant's Silk Gloves [H]
					i(162945),	-- Dread Aspirant's Silk Hood [H]
					i(162949),	-- Dread Aspirant's Silk Leggings [H]
					i(162954),	-- Dread Aspirant's Silk Mantle [H]
					i(162933),	-- Dread Aspirant's Silk Robe [H]
					i(162938),	-- Dread Aspirant's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(162958),	-- Dread Aspirant's Leather Belt [H]
					i(162962),	-- Dread Aspirant's Leather Bindings [H]
					i(162940),	-- Dread Aspirant's Leather Boots [H]
					i(162941),	-- Dread Aspirant's Leather Gloves [H]
					i(162947),	-- Dread Aspirant's Leather Helm [H]
					i(162951),	-- Dread Aspirant's Leather Legguards [H]
					i(162952),	-- Dread Aspirant's Leather Spaulders [H]
					i(162936),	-- Dread Aspirant's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(162961),	-- Dread Aspirant's Chain Armbands [H]
					i(162935),	-- Dread Aspirant's Chain Armor [H]
					i(162944),	-- Dread Aspirant's Chain Gauntlets [H]
					i(162946),	-- Dread Aspirant's Chain Helm [H]
					i(162950),	-- Dread Aspirant's Chain Leggings [H]
					i(162939),	-- Dread Aspirant's Chain Sabatons [H]
					i(162955),	-- Dread Aspirant's Chain Spaulders [H]
					i(162957),	-- Dread Aspirant's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(162960),	-- Dread Aspirant's Plate Armguards [H]
					i(162934),	-- Dread Aspirant's Plate Chestpiece [H]
					i(162942),	-- Dread Aspirant's Plate Gauntlets [H]
					i(162956),	-- Dread Aspirant's Plate Girdle [H]
					i(162932),	-- Dread Aspirant's Plate Helm [H]
					i(162948),	-- Dread Aspirant's Plate Legguards [H]
					i(162953),	-- Dread Aspirant's Plate Pauldrons [H]
					i(162937),	-- Dread Aspirant's Plate Warboots [H]
				}),
				n(WEAPONS, {
					i(162866),	-- Dread Aspirant's Barrier [H]
					i(162872),	-- Dread Aspirant's Bonegrinder [H]
					i(162868),	-- Dread Aspirant's Cleaver [H]
					i(162877),	-- Dread Aspirant's Decapitator [H]
					i(162893),	-- Dread Aspirant's Gavel [H]
					i(162889),	-- Dread Aspirant's Longbow [H]
					i(162873),	-- Dread Aspirant's Pike [H]
					i(166730),	-- Dread Aspirant's Pummeler [H]
					i(162867),	-- Dread Aspirant's Reprieve [H]
					i(162878),	-- Dread Aspirant's Rifle [H]
					i(162970),	-- Dread Aspirant's Shanker [H]
					i(162882),	-- Dread Aspirant's Shield Wall [H]
					i(162875),	-- Dread Aspirant's Slicer [H]
					i(162894),	-- Dread Aspirant's Spellblade [H]
					i(162874),	-- Dread Aspirant's Staff [H]
					i(162876),	-- Dread Aspirant's Wand [H]
					i(162880),	-- Dread Aspirant's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 } }, {
				filter(FINGER_F, {
					i(162896),	-- Dread Aspirant's Band
					i(162865),	-- Dread Aspirant's Ring
					i(162965),	-- Dread Aspirant's Seal
					i(162964),	-- Dread Aspirant's Signet
				}),
				filter(TRINKET_F, {
					i(162966),	-- Dread Aspirant's Badge
					i(162898),	-- Dread Aspirant's Emblem
					i(162899),	-- Dread Aspirant's Insignia
					i(162897),	-- Dread Aspirant's Medallion
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(184666, {	-- Arsenal: Dread Gladiator's Weapons [A]
							["cost"] = { { "i", MOH, 80 } },
						}),
						iensemble(184419, {	-- Ensemble: Dread Gladiator's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184421, {	-- Ensemble: Dread Gladiator's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184423, {	-- Ensemble: Dread Gladiator's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184425, {	-- Ensemble: Dread Gladiator's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(163732),	-- Dread Gladiator's Cape [A]
					i(163731),	-- Dread Gladiator's Drape [A]
					i(163730),	-- Dread Gladiator's Greatcloak [A]
					i(163729),	-- Dread Gladiator's Shawl [A]
				}),
				filter(CLOTH, {
					i(161731),	-- Dread Gladiator's Silk Amice [A]
					i(161737),	-- Dread Gladiator's Silk Bracers [A]
					i(161625),	-- Dread Gladiator's Silk Cord [A]
					i(161722),	-- Dread Gladiator's Silk Cowl [A]
					i(161628),	-- Dread Gladiator's Silk Cuffs [A]
					i(161611),	-- Dread Gladiator's Silk Gloves [A]
					i(161720),	-- Dread Gladiator's Silk Handguards [A]
					i(161613),	-- Dread Gladiator's Silk Hood [A]
					i(161617),	-- Dread Gladiator's Silk Leggings [A]
					i(161622),	-- Dread Gladiator's Silk Mantle [A]
					i(161710),	-- Dread Gladiator's Silk Raiment [A]
					i(161601),	-- Dread Gladiator's Silk Robe [A]
					i(161657),	-- Dread Gladiator's Silk Sash [A]
					i(161715),	-- Dread Gladiator's Silk Slippers [A]
					i(161606),	-- Dread Gladiator's Silk Treads [A]
					i(161726),	-- Dread Gladiator's Silk Trousers [A]
				}),
				filter(LEATHER, {
					i(161740),	-- Dread Gladiator's Leather Armwraps [A]
					i(161627),	-- Dread Gladiator's Leather Belt [A]
					i(161631),	-- Dread Gladiator's Leather Bindings [A]
					i(161608),	-- Dread Gladiator's Leather Boots [A]
					i(161717),	-- Dread Gladiator's Leather Footguards [A]
					i(161609),	-- Dread Gladiator's Leather Gloves [A]
					i(161718),	-- Dread Gladiator's Leather Handguards [A]
					i(161615),	-- Dread Gladiator's Leather Helm [A]
					i(161724),	-- Dread Gladiator's Leather Hood [A]
					i(161619),	-- Dread Gladiator's Leather Legguards [A]
					i(161729),	-- Dread Gladiator's Leather Mantle [A]
					i(161728),	-- Dread Gladiator's Leather Pants [A]
					i(161620),	-- Dread Gladiator's Leather Spaulders [A]
					i(161604),	-- Dread Gladiator's Leather Tunic [A]
					i(161713),	-- Dread Gladiator's Leather Vest [A]
					i(161736),	-- Dread Gladiator's Leather Waistband [A]
				}),
				filter(MAIL, {
					i(161630),	-- Dread Gladiator's Chain Armbands [A]
					i(161603),	-- Dread Gladiator's Chain Armor [A]
					i(161712),	-- Dread Gladiator's Chain Chestguard [A]
					i(161735),	-- Dread Gladiator's Chain Clasp [A]
					i(161716),	-- Dread Gladiator's Chain Footguards [A]
					i(161612),	-- Dread Gladiator's Chain Gauntlets [A]
					i(161721),	-- Dread Gladiator's Chain Handguards [A]
					i(161723),	-- Dread Gladiator's Chain Headpiece [A]
					i(161614),	-- Dread Gladiator's Chain Helm [A]
					i(161618),	-- Dread Gladiator's Chain Leggings [A]
					i(161727),	-- Dread Gladiator's Chain Legguards [A]
					i(161607),	-- Dread Gladiator's Chain Sabatons [A]
					i(161732),	-- Dread Gladiator's Chain Shoulderguards [A]
					i(161623),	-- Dread Gladiator's Chain Spaulders [A]
					i(161626),	-- Dread Gladiator's Chain Waistguard [A]
					i(161739),	-- Dread Gladiator's Chain Wristguards [A]
				}),
				filter(PLATE, {
					i(161629),	-- Dread Gladiator's Plate Armguards [A]
					i(161711),	-- Dread Gladiator's Plate Chestguard [A]
					i(161602),	-- Dread Gladiator's Plate Chestpiece [A]
					i(161733),	-- Dread Gladiator's Plate Clasp [A]
					i(161610),	-- Dread Gladiator's Plate Gauntlets [A]
					i(161624),	-- Dread Gladiator's Plate Girdle [A]
					i(161719),	-- Dread Gladiator's Plate Gloves [A]
					i(161714),	-- Dread Gladiator's Plate Greaves [A]
					i(161709),	-- Dread Gladiator's Plate Headcover [A]
					i(161600),	-- Dread Gladiator's Plate Helm [A]
					i(161725),	-- Dread Gladiator's Plate Leg Armor [A]
					i(161616),	-- Dread Gladiator's Plate Legguards [A]
					i(161621),	-- Dread Gladiator's Plate Pauldrons [A]
					i(161730),	-- Dread Gladiator's Plate Shoulders [A]
					i(161738),	-- Dread Gladiator's Plate Vambraces [A]
					i(161605),	-- Dread Gladiator's Plate Warboots [A]
				}),
				n(WEAPONS, {
					i(161698),	-- Dread Gladiator's Barrier [A]
					i(161703),	-- Dread Gladiator's Bonegrinder [A]
					i(166334),	-- Dread Gladiator's Cleaver [A]
					i(161692),	-- Dread Gladiator's Greatsword [A]
					i(161683),	-- Dread Gladiator's Gavel [A]
					i(161680),	-- Dread Gladiator's Longbow [A]
					i(161700),	-- Dread Gladiator's Pike [A]
					i(162002),	-- Dread Gladiator's Pummeler [A]
					i(161696),	-- Dread Gladiator's Reprieve [A]
					i(161701),	-- Dread Gladiator's Rifle [A]
					i(162017),	-- Dread Gladiator's Shanker [A]
					i(161697),	-- Dread Gladiator's Shield Wall [A]
					i(161708),	-- Dread Gladiator's Slicer [A]
					i(161681),	-- Dread Gladiator's Spellblade [A]
					i(161699),	-- Dread Gladiator's Staff [A]
					i(161704),	-- Dread Gladiator's Wand [A]
					i(161694),	-- Dread Gladiator's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({
						["cost"] = { { "i", MOH, 12 } },
					}, {
						iensemble(184667, {	-- Arsenal: Dread Gladiator's Weapons [H]
							["cost"] = { { "i", MOH, 80 } },
						}),
						iensemble(184420, {	-- Ensemble: Dread Gladiator's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184422, {	-- Ensemble: Dread Gladiator's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184424, {	-- Ensemble: Dread Gladiator's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184426, {	-- Ensemble: Dread Gladiator's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(161907),	-- Dread Gladiator's Cape [H]
					i(161906),	-- Dread Gladiator's Drape [H]
					i(161669),	-- Dread Gladiator's Greatcloak [H]
					i(161668),	-- Dread Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(161763),	-- Dread Gladiator's Silk Amice [H]
					i(161769),	-- Dread Gladiator's Silk Bracers [H]
					i(161734),	-- Dread Gladiator's Silk Cord [H]
					i(161754),	-- Dread Gladiator's Silk Cowl [H]
					i(161660),	-- Dread Gladiator's Silk Cuffs [H]
					i(161643),	-- Dread Gladiator's Silk Gloves [H]
					i(161752),	-- Dread Gladiator's Silk Handguards [H]
					i(161645),	-- Dread Gladiator's Silk Hood [H]
					i(161649),	-- Dread Gladiator's Silk Leggings [H]
					i(161654),	-- Dread Gladiator's Silk Mantle [H]
					i(161742),	-- Dread Gladiator's Silk Raiment [H]
					i(161633),	-- Dread Gladiator's Silk Robe [H]
					i(161766),	-- Dread Gladiator's Silk Sash [H]
					i(161747),	-- Dread Gladiator's Silk Slippers [H]
					i(161638),	-- Dread Gladiator's Silk Treads [H]
					i(161758),	-- Dread Gladiator's Silk Trousers [H]
				}),
				filter(LEATHER, {
					i(161772),	-- Dread Gladiator's Leather Armwraps [H]
					i(161659),	-- Dread Gladiator's Leather Belt [H]
					i(161663),	-- Dread Gladiator's Leather Bindings [H]
					i(161640),	-- Dread Gladiator's Leather Boots [H]
					i(161749),	-- Dread Gladiator's Leather Footguards [H]
					i(161641),	-- Dread Gladiator's Leather Gloves [H]
					i(161750),	-- Dread Gladiator's Leather Handguards [H]
					i(161647),	-- Dread Gladiator's Leather Helm [H]
					i(161756),	-- Dread Gladiator's Leather Hood [H]
					i(161651),	-- Dread Gladiator's Leather Legguards [H]
					i(161761),	-- Dread Gladiator's Leather Mantle [H]
					i(161760),	-- Dread Gladiator's Leather Pants [H]
					i(161652),	-- Dread Gladiator's Leather Spaulders [H]
					i(161636),	-- Dread Gladiator's Leather Tunic [H]
					i(161745),	-- Dread Gladiator's Leather Vest [H]
					i(161768),	-- Dread Gladiator's Leather Waistband [H]
				}),
				filter(MAIL, {
					i(161662),	-- Dread Gladiator's Chain Armbands [H]
					i(161635),	-- Dread Gladiator's Chain Armor [H]
					i(161744),	-- Dread Gladiator's Chain Chestguard [H]
					i(161767),	-- Dread Gladiator's Chain Clasp [H]
					i(161748),	-- Dread Gladiator's Chain Footguards [H]
					i(161644),	-- Dread Gladiator's Chain Gauntlets [H]
					i(161753),	-- Dread Gladiator's Chain Handguards [H]
					i(161755),	-- Dread Gladiator's Chain Headpiece [H]
					i(161646),	-- Dread Gladiator's Chain Helm [H]
					i(161650),	-- Dread Gladiator's Chain Leggings [H]
					i(161759),	-- Dread Gladiator's Chain Legguards [H]
					i(161639),	-- Dread Gladiator's Chain Sabatons [H]
					i(161764),	-- Dread Gladiator's Chain Shoulderguards [H]
					i(161655),	-- Dread Gladiator's Chain Spaulders [H]
					i(161658),	-- Dread Gladiator's Chain Waistguard [H]
					i(161771),	-- Dread Gladiator's Chain Wristguards [H]
				}),
				filter(PLATE, {
					i(161661),	-- Dread Gladiator's Plate Armguards [H]
					i(161743),	-- Dread Gladiator's Plate Chestguard [H]
					i(161634),	-- Dread Gladiator's Plate Chestpiece [H]
					i(161765),	-- Dread Gladiator's Plate Clasp [H]
					i(161642),	-- Dread Gladiator's Plate Gauntlets [H]
					i(161656),	-- Dread Gladiator's Plate Girdle [H]
					i(161751),	-- Dread Gladiator's Plate Gloves [H]
					i(161746),	-- Dread Gladiator's Plate Greaves [H]
					i(161741),	-- Dread Gladiator's Plate Headcover [H]
					i(161632),	-- Dread Gladiator's Plate Helm [H]
					i(161757),	-- Dread Gladiator's Plate Leg Armor [H]
					i(161648),	-- Dread Gladiator's Plate Legguards [H]
					i(161653),	-- Dread Gladiator's Plate Pauldrons [H]
					i(161762),	-- Dread Gladiator's Plate Shoulders [H]
					i(161770),	-- Dread Gladiator's Plate Vambraces [H]
					i(161637),	-- Dread Gladiator's Plate Warboots [H]
				}),
				n(WEAPONS, {
					i(161677),	-- Dread Gladiator's Barrier [H]
					i(161684),	-- Dread Gladiator's Bonegrinder [H]
					i(161679),	-- Dread Gladiator's Cleaver [H]
					i(161690),	-- Dread Gladiator's Decapitator [H]
					i(161706),	-- Dread Gladiator's Gavel [H]
					i(161702),	-- Dread Gladiator's Longbow [H]
					i(161685),	-- Dread Gladiator's Pike [H]
					i(166335),	-- Dread Gladiator's Pummeler [H]
					i(161678),	-- Dread Gladiator's Reprieve [H]
					i(161691),	-- Dread Gladiator's Rifle [H]
					i(162016),	-- Dread Gladiator's Shanker [H]
					i(161695),	-- Dread Gladiator's Shield Wall [H]
					i(161687),	-- Dread Gladiator's Slicer [H]
					i(161707),	-- Dread Gladiator's Spellblade [H]
					i(161686),	-- Dread Gladiator's Staff [H]
					i(161689),	-- Dread Gladiator's Wand [H]
					i(161693),	-- Dread Gladiator's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH, REMOVED_8_1_0 } }, {
				filter(FINGER_F, {
					i(161672),	-- Dread Gladiator's Band
					i(161671),	-- Dread Gladiator's Ring
					i(161899),	-- Dread Gladiator's Seal
					i(161898),	-- Dread Gladiator's Signet
				}),
				filter(TRINKET_F, {
					i(161902),	-- Dread Gladiator's Badge
					i(161675),	-- Dread Gladiator's Emblem
					i(161676),	-- Dread Gladiator's Insignia
					i(161674),	-- Dread Gladiator's Medallion
				}),
			})),
		}),
		n(PVP_ELITE, bubbleDownSelf({ ["bonusID"] = 450, ["timeline"] = { ADDED_8_0_1, REMOVED_8_1_0 } }, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
				n(BACK, {
					i(163732),	-- Dread Gladiator's Cape [A]
					i(163731),	-- Dread Gladiator's Drape [A]
					i(163730),	-- Dread Gladiator's Greatcloak [A]
					i(163729),	-- Dread Gladiator's Shawl [A]
				}),
				filter(CLOTH, {
					i(161625),	-- Dread Gladiator's Silk Cord [A]
					i(161628),	-- Dread Gladiator's Silk Cuffs [A]
					i(161611),	-- Dread Gladiator's Silk Gloves [A]
					i(161613),	-- Dread Gladiator's Silk Hood [A]
					i(161617),	-- Dread Gladiator's Silk Leggings [A]
					i(161622),	-- Dread Gladiator's Silk Mantle [A]
					i(161601),	-- Dread Gladiator's Silk Robe [A]
					i(161606),	-- Dread Gladiator's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(161627),	-- Dread Gladiator's Leather Belt [A]
					i(161631),	-- Dread Gladiator's Leather Bindings [A]
					i(161608),	-- Dread Gladiator's Leather Boots [A]
					i(161609),	-- Dread Gladiator's Leather Gloves [A]
					i(161615),	-- Dread Gladiator's Leather Helm [A]
					i(161619),	-- Dread Gladiator's Leather Legguards [A]
					i(161620),	-- Dread Gladiator's Leather Spaulders [A]
					i(161604),	-- Dread Gladiator's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(161630),	-- Dread Gladiator's Chain Armbands [A]
					i(161603),	-- Dread Gladiator's Chain Armor [A]
					i(161612),	-- Dread Gladiator's Chain Gauntlets [A]
					i(161614),	-- Dread Gladiator's Chain Helm [A]
					i(161618),	-- Dread Gladiator's Chain Leggings [A]
					i(161607),	-- Dread Gladiator's Chain Sabatons [A]
					i(161623),	-- Dread Gladiator's Chain Spaulders [A]
					i(161626),	-- Dread Gladiator's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(161629),	-- Dread Gladiator's Plate Armguards [A]
					i(161602),	-- Dread Gladiator's Plate Chestpiece [A]
					i(161610),	-- Dread Gladiator's Plate Gauntlets [A]
					i(161624),	-- Dread Gladiator's Plate Girdle [A]
					i(161600),	-- Dread Gladiator's Plate Helm [A]
					i(161616),	-- Dread Gladiator's Plate Legguards [A]
					i(161621),	-- Dread Gladiator's Plate Pauldrons [A]
					i(161605),	-- Dread Gladiator's Plate Warboots [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
				n(BACK, {
					i(161907),	-- Dread Gladiator's Cape [H]
					i(161906),	-- Dread Gladiator's Drape [H]
					i(161669),	-- Dread Gladiator's Greatcloak [H]
					i(161668),	-- Dread Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(161734),	-- Dread Gladiator's Silk Cord [H]
					i(161660),	-- Dread Gladiator's Silk Cuffs [H]
					i(161643),	-- Dread Gladiator's Silk Gloves [H]
					i(161645),	-- Dread Gladiator's Silk Hood [H]
					i(161649),	-- Dread Gladiator's Silk Leggings [H]
					i(161654),	-- Dread Gladiator's Silk Mantle [H]
					i(161633),	-- Dread Gladiator's Silk Robe [H]
					i(161638),	-- Dread Gladiator's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(161659),	-- Dread Gladiator's Leather Belt [H]
					i(161663),	-- Dread Gladiator's Leather Bindings [H]
					i(161640),	-- Dread Gladiator's Leather Boots [H]
					i(161641),	-- Dread Gladiator's Leather Gloves [H]
					i(161647),	-- Dread Gladiator's Leather Helm [H]
					i(161651),	-- Dread Gladiator's Leather Legguards [H]
					i(161652),	-- Dread Gladiator's Leather Spaulders [H]
					i(161636),	-- Dread Gladiator's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(161662),	-- Dread Gladiator's Chain Armbands [H]
					i(161635),	-- Dread Gladiator's Chain Armor [H]
					i(161644),	-- Dread Gladiator's Chain Gauntlets [H]
					i(161646),	-- Dread Gladiator's Chain Helm [H]
					i(161650),	-- Dread Gladiator's Chain Leggings [H]
					i(161639),	-- Dread Gladiator's Chain Sabatons [H]
					i(161655),	-- Dread Gladiator's Chain Spaulders [H]
					i(161658),	-- Dread Gladiator's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(161661),	-- Dread Gladiator's Plate Armguards [H]
					i(161634),	-- Dread Gladiator's Plate Chestpiece [H]
					i(161642),	-- Dread Gladiator's Plate Gauntlets [H]
					i(161656),	-- Dread Gladiator's Plate Girdle [H]
					i(161632),	-- Dread Gladiator's Plate Helm [H]
					i(161648),	-- Dread Gladiator's Plate Legguards [H]
					i(161653),	-- Dread Gladiator's Plate Pauldrons [H]
					i(161637),	-- Dread Gladiator's Plate Warboots [H]
				}),
			})),
		})),
	})),
})));
