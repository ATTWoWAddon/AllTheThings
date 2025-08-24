-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
-- TODO: S2 BonusID to say "Elite" instead of "Mythic" (Maybe it's ModID3)
root(ROOTS.PVP, pvp(expansion(EXPANSION.BFA, {
	n(SEASON_SINISTER, bubbleDownSelf({
		["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0, ADDED_9_0_2_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
			ach(13204),		-- Combatant: Battle for Azeroth Season 2
			ach(13203),		-- Challenger: Battle for Azeroth Season 2
			ach(13205),		-- Rival: Battle for Azeroth Season 2
			ach(13209, {	-- Duelist: Battle for Azeroth Season 2
				ill(6096),	-- Dreadflame (ILLUSION!)
				i(165060, {	-- Sinister Gladiator's Cloak [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(165059, {	-- Sinister Gladiator's Cloak [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13451, {	-- Elite: Battle for Azeroth Season 2
				i(164910, {	-- Sinister Gladiator's Tabard [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(164909, {	-- Sinister Gladiator's Tabard [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13212, {	-- Gladiator: Battle for Azeroth Season 2
				i(156880),	-- Sinister Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13202, {	-- Sinister Gladiator's Proto-Drake (MOUNT!)
				["provider"] = { "i", 156880 },	-- Sinister Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13200, {	-- Sinister Gladiator: Battle for Azeroth Season 2
				title(80),	-- Sinister Gladiator <Name>
			}),
			-- RBG
			ach(13210, {	-- Hero of the Alliance: Sinister
				["races"] = ALLIANCE_ONLY,
			}),
			ach(13211, {	-- Hero of the Horde: Sinister
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(13433, {	-- Tall, Dark, and Sinister
				["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0, ADDED_9_0_2_LAUNCH },
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
			i(165019, {	-- Vicious Black Warsaber [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(165020, {	-- Vicious Black Bonesteed [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184672, {	-- Arsenal: Sinister Aspirant's Weapons [A]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180186, {	-- Ensemble: Sinister Aspirant's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180188, {	-- Ensemble: Sinister Aspirant's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180190, {	-- Ensemble: Sinister Aspirant's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180192, {	-- Ensemble: Sinister Aspirant's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(165216),	-- Sinister Aspirant's Cape [A]
					i(165215),	-- Sinister Aspirant's Drape [A]
					i(165214),	-- Sinister Aspirant's Greatcloak [A]
					i(165213),	-- Sinister Aspirant's Shawl [A]
				}),
				filter(CLOTH, {
					i(165121),	-- Sinister Aspirant's Cuffs [A]
					i(165118),	-- Sinister Aspirant's Cord [A]
					i(165104),	-- Sinister Aspirant's Gloves [A]
					i(165106),	-- Sinister Aspirant's Hood [A]
					i(165110),	-- Sinister Aspirant's Leggings [A]
					i(165115),	-- Sinister Aspirant's Mantle [A]
					i(165094),	-- Sinister Aspirant's Robe [A]
					i(165099),	-- Sinister Aspirant's Treads [A]
				}),
				filter(LEATHER, {
					i(165120),	-- Sinister Aspirant's Belt [A]
					i(165124),	-- Sinister Aspirant's Bindings [A]
					i(165101),	-- Sinister Aspirant's Boots [A]
					i(165102),	-- Sinister Aspirant's Gloves [A]
					i(165108),	-- Sinister Aspirant's Helm [A]
					i(165112),	-- Sinister Aspirant's Legguards [A]
					i(165113),	-- Sinister Aspirant's Spaulders [A]
					i(165097),	-- Sinister Aspirant's Tunic [A]
				}),
				filter(MAIL, {
					i(165123),	-- Sinister Aspirant's Chain Armbands [A]
					i(165096),	-- Sinister Aspirant's Chain Armor [A]
					i(165105),	-- Sinister Aspirant's Chain Gauntlets [A]
					i(165107),	-- Sinister Aspirant's Chain Helm [A]
					i(165111),	-- Sinister Aspirant's Chain Legs [A]
					i(165100),	-- Sinister Aspirant's Chain Sabatons [A]
					i(165116),	-- Sinister Aspirant's Chain Spaulders [A]
					i(165119),	-- Sinister Aspirant's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(165122),	-- Sinister Aspirant's Plate Armguards [A]
					i(165095),	-- Sinister Aspirant's Plate Chestpiece [A]
					i(165103),	-- Sinister Aspirant's Plate Gauntlets [A]
					i(165117),	-- Sinister Aspirant's Plate Girdle [A]
					i(165093),	-- Sinister Aspirant's Plate Helm [A]
					i(165109),	-- Sinister Aspirant's Plate Legguards [A]
					i(165114),	-- Sinister Aspirant's Plate Pauldrons [A]
					i(165098),	-- Sinister Aspirant's Plate Warboots [A]
				}),
				n(WEAPONS, {
					i(165206),	-- Sinister Aspirant's Bonecracker [A]
					i(166478),	-- Sinister Aspirant's Greatsword [A]
					i(165208),	-- Sinister Aspirant's Longbow [A]
					i(165207),	-- Sinister Aspirant's Mageblade [A]
					i(165202),	-- Sinister Aspirant's Pike [A]
					i(165205),	-- Sinister Aspirant's Pummeler [A]
					i(166476),	-- Sinister Aspirant's Runeaxe [A]
					i(165203),	-- Sinister Aspirant's Shanker [A]
					i(165199),	-- Sinister Aspirant's Shield Wall [A]
					i(166903),	-- Sinister Aspirant's Slicer [A]
					i(165200),	-- Sinister Aspirant's Staff [A]
					i(165204),	-- Sinister Aspirant's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184673, {	-- Arsenal: Sinister Aspirant's Weapons [H]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180187, {	-- Ensemble: Sinister Aspirant's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180189, {	-- Ensemble: Sinister Aspirant's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180191, {	-- Ensemble: Sinister Aspirant's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180193, {	-- Ensemble: Sinister Aspirant's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(165212),	-- Sinister Aspirant's Cape [H]
					i(165211),	-- Sinister Aspirant's Drape [H]
					i(165210),	-- Sinister Aspirant's Greatcloak [H]
					i(165209),	-- Sinister Aspirant's Shawl [H]
				}),
				filter(CLOTH, {
					i(165068),	-- Sinister Aspirant's Cuffs [H]
					i(165067),	-- Sinister Aspirant's Cord [H]
					i(165063),	-- Sinister Aspirant's Gloves [H]
					i(165064),	-- Sinister Aspirant's Hood [H]
					i(165065),	-- Sinister Aspirant's Leggings [H]
					i(165066),	-- Sinister Aspirant's Mantle [H]
					i(165061),	-- Sinister Aspirant's Robe [H]
					i(165062),	-- Sinister Aspirant's Treads [H]
				}),
				filter(LEATHER, {
					i(165075),	-- Sinister Aspirant's Belt [H]
					i(165076),	-- Sinister Aspirant's Bindings [H]
					i(165070),	-- Sinister Aspirant's Boots [H]
					i(165071),	-- Sinister Aspirant's Gloves [H]
					i(165072),	-- Sinister Aspirant's Helm [H]
					i(165073),	-- Sinister Aspirant's Legguards [H]
					i(165074),	-- Sinister Aspirant's Spaulders [H]
					i(165069),	-- Sinister Aspirant's Tunic [H]
				}),
				filter(MAIL, {
					i(165084),	-- Sinister Aspirant's Chain Armbands [H]
					i(165077),	-- Sinister Aspirant's Chain Armor [H]
					i(165079),	-- Sinister Aspirant's Chain Gauntlets [H]
					i(165080),	-- Sinister Aspirant's Chain Helm [H]
					i(165081),	-- Sinister Aspirant's Chain Legs [H]
					i(165078),	-- Sinister Aspirant's Chain Sabatons [H]
					i(165082),	-- Sinister Aspirant's Chain Spaulders [H]
					i(165083),	-- Sinister Aspirant's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(165092),	-- Sinister Aspirant's Plate Armguards [H]
					i(165086),	-- Sinister Aspirant's Plate Chestpiece [H]
					i(165088),	-- Sinister Aspirant's Plate Gauntlets [H]
					i(165091),	-- Sinister Aspirant's Plate Girdle [H]
					i(165085),	-- Sinister Aspirant's Plate Helm [H]
					i(165089),	-- Sinister Aspirant's Plate Legguards [H]
					i(165090),	-- Sinister Aspirant's Plate Pauldrons [H]
					i(165087),	-- Sinister Aspirant's Plate Warboots [H]
				}),
				n(WEAPONS, {
					i(166902),	-- Sinister Aspirant's Bonecracker [H]
					i(165195),	-- Sinister Aspirant's Greatsword [H]
					i(166812),	-- Sinister Aspirant's Mageblade [H]
					i(165196),	-- Sinister Aspirant's Pike [H]
					i(165191),	-- Sinister Aspirant's Pummeler [H]
					i(165189),	-- Sinister Aspirant's Rifle [H]
					i(165190),	-- Sinister Aspirant's Runeaxe [H]
					i(165194),	-- Sinister Aspirant's Shanker [H]
					i(165198),	-- Sinister Aspirant's Shield Wall [H]
					i(165192),	-- Sinister Aspirant's Slicer [H]
					i(165197),	-- Sinister Aspirant's Staff [H]
					i(165193),	-- Sinister Aspirant's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
				filter(FINGER_F, {
					i(165219),	-- Sinister Aspirant's Band
					i(165217),	-- Sinister Aspirant's Ring
				}),
				filter(TRINKET_F, {
					i(165223),	-- Sinister Aspirant's Badge
					i(165221),	-- Sinister Aspirant's Emblem
					i(165222),	-- Sinister Aspirant's Insignia
					i(165220),	-- Sinister Aspirant's Medallion
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184670, {	-- Arsenal: Sinister Gladiator's Weapons [A]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(184427, {	-- Ensemble: Sinister Gladiator's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184429, {	-- Ensemble: Sinister Gladiator's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184431, {	-- Ensemble: Sinister Gladiator's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184433, {	-- Ensemble: Sinister Gladiator's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(165051),	-- Sinister Gladiator's Cape [A]
					i(165050),	-- Sinister Gladiator's Drape [A]
					i(165049),	-- Sinister Gladiator's Greatcloak [A]
					i(165048),	-- Sinister Gladiator's Shawl [A]
				}),
				filter(CLOTH, {
					i(164897),	-- Sinister Gladiator's Silk Amice [A]
					i(164903),	-- Sinister Gladiator's Silk Bracers [A]
					i(166626),	-- Sinister Gladiator's Silk Chestwrap [A]
					i(164836),	-- Sinister Gladiator's Silk Cord [A]
					i(166603),	-- Sinister Gladiator's Silk Cover [A]
					i(164888),	-- Sinister Gladiator's Silk Cowl [A]
					i(164839),	-- Sinister Gladiator's Silk Cuffs [A]
					i(166644),	-- Sinister Gladiator's Silk Epaulets [A]
					i(164822),	-- Sinister Gladiator's Silk Gloves [A]
					i(164886),	-- Sinister Gladiator's Silk Handguards [A]
					i(166595),	-- Sinister Gladiator's Silk Helm [A]
					i(164824),	-- Sinister Gladiator's Silk Hood [A]
					i(164828),	-- Sinister Gladiator's Silk Leggings [A]
					i(164833),	-- Sinister Gladiator's Silk Mantle [A]
					i(164876),	-- Sinister Gladiator's Silk Raiment [A]
					i(164812),	-- Sinister Gladiator's Silk Robe [A]
					i(164900),	-- Sinister Gladiator's Silk Sash [A]
					i(166652),	-- Sinister Gladiator's Silk Shoulderpads [A]
					i(164881),	-- Sinister Gladiator's Silk Slippers [A]
					i(164817),	-- Sinister Gladiator's Silk Treads [A]
					i(164892),	-- Sinister Gladiator's Silk Trousers [A]
					i(166618),	-- Sinister Gladiator's Silk Vestments [A]
				}),
				filter(LEATHER, {
					i(164906),	-- Sinister Gladiator's Leather Armwraps [A]
					i(164838),	-- Sinister Gladiator's Leather Belt [A]
					i(164842),	-- Sinister Gladiator's Leather Bindings [A]
					i(164819),	-- Sinister Gladiator's Leather Boots [A]
					i(166597),	-- Sinister Gladiator's Leather Cap [A]
					i(166629),	-- Sinister Gladiator's Leather Chestguard [A]
					i(164883),	-- Sinister Gladiator's Leather Footguards [A]
					i(164820),	-- Sinister Gladiator's Leather Gloves [A]
					i(164884),	-- Sinister Gladiator's Leather Handguards [A]
					i(164826),	-- Sinister Gladiator's Leather Helm [A]
					i(164890),	-- Sinister Gladiator's Leather Hood [A]
					i(166621),	-- Sinister Gladiator's Leather Jerkin [A]
					i(164830),	-- Sinister Gladiator's Leather Legguards [A]
					i(164895),	-- Sinister Gladiator's Leather Mantle [A]
					i(164894),	-- Sinister Gladiator's Leather Pants [A]
					i(166650),	-- Sinister Gladiator's Leather Pauldrons [A]
					i(166642),	-- Sinister Gladiator's Leather Shoulderguards [A]
					i(166605),	-- Sinister Gladiator's Leather Skullguard [A]
					i(164831),	-- Sinister Gladiator's Leather Spaulders [A]
					i(164815),	-- Sinister Gladiator's Leather Tunic [A]
					i(164879),	-- Sinister Gladiator's Leather Vest [A]
					i(164902),	-- Sinister Gladiator's Leather Waistband [A]
				}),
				filter(MAIL, {
					i(164841),	-- Sinister Gladiator's Chain Armbands [A]
					i(164814),	-- Sinister Gladiator's Chain Armor [A]
					i(164878),	-- Sinister Gladiator's Chain Chestguard [A]
					i(164901),	-- Sinister Gladiator's Chain Clasp [A]
					i(166596),	-- Sinister Gladiator's Chain Coif [A]
					i(164882),	-- Sinister Gladiator's Chain Footguards [A]
					i(164823),	-- Sinister Gladiator's Chain Gauntlets [A]
					i(164887),	-- Sinister Gladiator's Chain Handguards [A]
					i(166620),	-- Sinister Gladiator's Chain Hauberk [A]
					i(166604),	-- Sinister Gladiator's Chain Headgear [A]
					i(164889),	-- Sinister Gladiator's Chain Headpiece [A]
					i(164825),	-- Sinister Gladiator's Chain Helm [A]
					i(164829),	-- Sinister Gladiator's Chain Leggings [A]
					i(164893),	-- Sinister Gladiator's Chain Legguards [A]
					i(166653),	-- Sinister Gladiator's Chain Mantle [A]
					i(166645),	-- Sinister Gladiator's Chain Pauldrons [A]
					i(164818),	-- Sinister Gladiator's Chain Sabatons [A]
					i(164898),	-- Sinister Gladiator's Chain Shoulderguards [A]
					i(164834),	-- Sinister Gladiator's Chain Spaulders [A]
					i(164837),	-- Sinister Gladiator's Chain Waistguard [A]
					i(164905),	-- Sinister Gladiator's Chain Wristguards [A]
					i(166628),	-- Sinister Gladiator's Chainmail [A]
				}),
				filter(PLATE, {
					i(164840),	-- Sinister Gladiator's Plate Armguards [A]
					i(166619),	-- Sinister Gladiator's Plate Armor [A]
					i(166627),	-- Sinister Gladiator's Plate Breastplate [A]
					i(164877),	-- Sinister Gladiator's Plate Chestguard [A]
					i(164813),	-- Sinister Gladiator's Plate Chestpiece [A]
					i(164899),	-- Sinister Gladiator's Plate Clasp [A]
					i(164821),	-- Sinister Gladiator's Plate Gauntlets [A]
					i(164835),	-- Sinister Gladiator's Plate Girdle [A]
					i(164885),	-- Sinister Gladiator's Plate Gloves [A]
					i(166602),	-- Sinister Gladiator's Plate Greathelm [A]
					i(164880),	-- Sinister Gladiator's Plate Greaves [A]
					i(164875),	-- Sinister Gladiator's Plate Headcover [A]
					i(164811),	-- Sinister Gladiator's Plate Helm [A]
					i(164891),	-- Sinister Gladiator's Plate Leg Armor [A]
					i(164827),	-- Sinister Gladiator's Plate Legguards [A]
					i(164832),	-- Sinister Gladiator's Plate Pauldrons [A]
					i(166651),	-- Sinister Gladiator's Plate Shoulderguards [A]
					i(164896),	-- Sinister Gladiator's Plate Shoulders [A]
					i(166643),	-- Sinister Gladiator's Plate Spaulders [A]
					i(164904),	-- Sinister Gladiator's Plate Vambraces [A]
					i(164816),	-- Sinister Gladiator's Plate Warboots [A]
					i(166594),	-- Sinister Gladiator's Plate Warhelm [A]
				}),
				n(WEAPONS, {
					i(165041),	-- Sinister Gladiator's Bonecracker [A]
					i(166479),	-- Sinister Gladiator's Greatsword [A]
					i(165043),	-- Sinister Gladiator's Longbow [A]
					i(165042),	-- Sinister Gladiator's Mageblade [A]
					i(165037),	-- Sinister Gladiator's Pike [A]
					i(165040),	-- Sinister Gladiator's Pummeler [A]
					i(166477),	-- Sinister Gladiator's Runeaxe [A]
					i(165038),	-- Sinister Gladiator's Shanker [A]
					i(165034),	-- Sinister Gladiator's Shield Wall [A]
					i(166901),	-- Sinister Gladiator's Slicer [A]
					i(165035),	-- Sinister Gladiator's Staff [A]
					i(165039),	-- Sinister Gladiator's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184671, {	-- Arsenal: Sinister Gladiator's Weapons [H]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(184428, {	-- Ensemble: Sinister Gladiator's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(184430, {	-- Ensemble: Sinister Gladiator's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(184432, {	-- Ensemble: Sinister Gladiator's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(184434, {	-- Ensemble: Sinister Gladiator's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(165047),	-- Sinister Gladiator's Cape [H]
					i(165046),	-- Sinister Gladiator's Drape [H]
					i(165045),	-- Sinister Gladiator's Greatcloak [H]
					i(165044),	-- Sinister Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(164848),	-- Sinister Gladiator's Silk Amice [H]
					i(164849),	-- Sinister Gladiator's Silk Bracers [H]
					i(166622),	-- Sinister Gladiator's Silk Chestwrap [H]
					i(164786),	-- Sinister Gladiator's Silk Cord [H]
					i(166598),	-- Sinister Gladiator's Silk Cover [H]
					i(164846),	-- Sinister Gladiator's Silk Cowl [H]
					i(164785),	-- Sinister Gladiator's Silk Cuffs [H]
					i(166638),	-- Sinister Gladiator's Silk Epaulets [H]
					i(164781),	-- Sinister Gladiator's Silk Gloves [H]
					i(164845),	-- Sinister Gladiator's Silk Handguards [H]
					i(166590),	-- Sinister Gladiator's Silk Helm [H]
					i(164782),	-- Sinister Gladiator's Silk Hood [H]
					i(164783),	-- Sinister Gladiator's Silk Leggings [H]
					i(164784),	-- Sinister Gladiator's Silk Mantle [H]
					i(164843),	-- Sinister Gladiator's Silk Raiment [H]
					i(164779),	-- Sinister Gladiator's Silk Robe [H]
					i(164850),	-- Sinister Gladiator's Silk Sash [H]
					i(166646),	-- Sinister Gladiator's Silk Shoulderpads [H]
					i(164844),	-- Sinister Gladiator's Silk Slippers [H]
					i(164780),	-- Sinister Gladiator's Silk Treads [H]
					i(164847),	-- Sinister Gladiator's Silk Trousers [H]
					i(166614),	-- Sinister Gladiator's Silk Vestments [H]
				}),
				filter(LEATHER, {
					i(164858),	-- Sinister Gladiator's Leather Armwraps [H]
					i(164793),	-- Sinister Gladiator's Leather Belt [H]
					i(164794),	-- Sinister Gladiator's Leather Bindings [H]
					i(164788),	-- Sinister Gladiator's Leather Boots [H]
					i(166591),	-- Sinister Gladiator's Leather Cap [H]
					i(166623),	-- Sinister Gladiator's Leather Chestguard [H]
					i(164852),	-- Sinister Gladiator's Leather Footguards [H]
					i(164789),	-- Sinister Gladiator's Leather Gloves [H]
					i(164853),	-- Sinister Gladiator's Leather Handguards [H]
					i(164790),	-- Sinister Gladiator's Leather Helm [H]
					i(164854),	-- Sinister Gladiator's Leather Hood [H]
					i(166615),	-- Sinister Gladiator's Leather Jerkin [H]
					i(164791),	-- Sinister Gladiator's Leather Legguards [H]
					i(164856),	-- Sinister Gladiator's Leather Mantle [H]
					i(164855),	-- Sinister Gladiator's Leather Pants [H]
					i(166647),	-- Sinister Gladiator's Leather Pauldrons [H]
					i(166639),	-- Sinister Gladiator's Leather Shoulderguards [H]
					i(166599),	-- Sinister Gladiator's Leather Skullguard [H]
					i(164792),	-- Sinister Gladiator's Leather Spaulders [H]
					i(164787),	-- Sinister Gladiator's Leather Tunic [H]
					i(164851),	-- Sinister Gladiator's Leather Vest [H]
					i(164857),	-- Sinister Gladiator's Leather Waistband [H]
				}),
				filter(MAIL, {
					i(164802),	-- Sinister Gladiator's Chain Armbands [H]
					i(164795),	-- Sinister Gladiator's Chain Armor [H]
					i(164859),	-- Sinister Gladiator's Chain Chestguard [H]
					i(164865),	-- Sinister Gladiator's Chain Clasp [H]
					i(166592),	-- Sinister Gladiator's Chain Coif [H]
					i(164860),	-- Sinister Gladiator's Chain Footguards [H]
					i(164797),	-- Sinister Gladiator's Chain Gauntlets [H]
					i(164861),	-- Sinister Gladiator's Chain Handguards [H]
					i(166616),	-- Sinister Gladiator's Chain Hauberk [H]
					i(166600),	-- Sinister Gladiator's Chain Headgear [H]
					i(164862),	-- Sinister Gladiator's Chain Headpiece [H]
					i(164798),	-- Sinister Gladiator's Chain Helm [H]
					i(164799),	-- Sinister Gladiator's Chain Leggings [H]
					i(164863),	-- Sinister Gladiator's Chain Legguards [H]
					i(166648),	-- Sinister Gladiator's Chain Mantle [H]
					i(166640),	-- Sinister Gladiator's Chain Pauldrons [H]
					i(164796),	-- Sinister Gladiator's Chain Sabatons [H]
					i(164864),	-- Sinister Gladiator's Chain Shoulderguards [H]
					i(164800),	-- Sinister Gladiator's Chain Spaulders [H]
					i(164801),	-- Sinister Gladiator's Chain Waistguard [H]
					i(164866),	-- Sinister Gladiator's Chain Wristguards [H]
					i(166624),	-- Sinister Gladiator's Chainmail [H]
				}),
				filter(PLATE, {
					i(164810),	-- Sinister Gladiator's Plate Armguards [H]
					i(166617),	-- Sinister Gladiator's Plate Armor [H]
					i(166625),	-- Sinister Gladiator's Plate Breastplate [H]
					i(164868),	-- Sinister Gladiator's Plate Chestguard [H]
					i(164804),	-- Sinister Gladiator's Plate Chestpiece [H]
					i(164873),	-- Sinister Gladiator's Plate Clasp [H]
					i(164806),	-- Sinister Gladiator's Plate Gauntlets [H]
					i(164809),	-- Sinister Gladiator's Plate Girdle [H]
					i(164870),	-- Sinister Gladiator's Plate Gloves [H]
					i(166601),	-- Sinister Gladiator's Plate Greathelm [H]
					i(164869),	-- Sinister Gladiator's Plate Greaves [H]
					i(164867),	-- Sinister Gladiator's Plate Headcover [H]
					i(164803),	-- Sinister Gladiator's Plate Helm [H]
					i(164871),	-- Sinister Gladiator's Plate Leg Armor [H]
					i(164807),	-- Sinister Gladiator's Plate Legguards [H]
					i(164808),	-- Sinister Gladiator's Plate Pauldrons [H]
					i(166649),	-- Sinister Gladiator's Plate Shoulderguards [H]
					i(164872),	-- Sinister Gladiator's Plate Shoulders [H]
					i(166641),	-- Sinister Gladiator's Plate Spaulders [H]
					i(164874),	-- Sinister Gladiator's Plate Vambraces [H]
					i(164805),	-- Sinister Gladiator's Plate Warboots [H]
					i(166593),	-- Sinister Gladiator's Plate Warhelm [H]
				}),
				n(WEAPONS, {
					i(166900),	-- Sinister Gladiator's Bonecracker [H]
					i(165030),	-- Sinister Gladiator's Greatsword [H]
					i(166813),	-- Sinister Gladiator's Mageblade [H]
					i(165031),	-- Sinister Gladiator's Pike [H]
					i(165026),	-- Sinister Gladiator's Pummeler [H]
					i(165024),	-- Sinister Gladiator's Rifle [H]
					i(165025),	-- Sinister Gladiator's Runeaxe [H]
					i(165029),	-- Sinister Gladiator's Shanker [H]
					i(165033),	-- Sinister Gladiator's Shield Wall [H]
					i(165027),	-- Sinister Gladiator's Slicer [H]
					i(165032),	-- Sinister Gladiator's Staff [H]
					i(165028),	-- Sinister Gladiator's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
				filter(FINGER_F, {
					i(165053),	-- Sinister Gladiator's Band
					i(165052),	-- Sinister Gladiator's Ring
					i(165054),	-- Sinister Gladiator's Signet
				}),
				filter(TRINKET_F, {
					i(165058),	-- Sinister Gladiator's Badge
					i(165056),	-- Sinister Gladiator's Emblem
					i(165057),	-- Sinister Gladiator's Insignia
					i(165806),	-- Sinister Gladiator's Maledict
					i(165055),	-- Sinister Gladiator's Medallion
					i(165807),	-- Sinister Gladiator's Safeguard
				}),
			})),
		}),
		n(PVP_ELITE, bubbleDownSelf({ ["bonusID"] = 450, ["timeline"] = { ADDED_8_1_0, REMOVED_8_2_0 } }, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
				n(BACK, {
					i(165051),	-- Sinister Gladiator's Cape [A]
					i(165050),	-- Sinister Gladiator's Drape [A]
					i(165049),	-- Sinister Gladiator's Greatcloak [A]
					i(165048),	-- Sinister Gladiator's Shawl [A]
				}),
				filter(CLOTH, {
					i(164836),	-- Sinister Gladiator's Silk Cord [A]
					i(164839),	-- Sinister Gladiator's Silk Cuffs [A]
					i(164822),	-- Sinister Gladiator's Silk Gloves [A]
					i(164824),	-- Sinister Gladiator's Silk Hood [A]
					i(164828),	-- Sinister Gladiator's Silk Leggings [A]
					i(164833),	-- Sinister Gladiator's Silk Mantle [A]
					i(164812),	-- Sinister Gladiator's Silk Robe [A]
					i(164817),	-- Sinister Gladiator's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(164838),	-- Sinister Gladiator's Leather Belt [A]
					i(164842),	-- Sinister Gladiator's Leather Bindings [A]
					i(164819),	-- Sinister Gladiator's Leather Boots [A]
					i(164820),	-- Sinister Gladiator's Leather Gloves [A]
					i(164826),	-- Sinister Gladiator's Leather Helm [A]
					i(164830),	-- Sinister Gladiator's Leather Legguards [A]
					i(164831),	-- Sinister Gladiator's Leather Spaulders [A]
					i(164815),	-- Sinister Gladiator's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(164841),	-- Sinister Gladiator's Chain Armbands [A]
					i(164814),	-- Sinister Gladiator's Chain Armor [A]
					i(164823),	-- Sinister Gladiator's Chain Gauntlets [A]
					i(164825),	-- Sinister Gladiator's Chain Helm [A]
					i(164829),	-- Sinister Gladiator's Chain Leggings [A]
					i(164818),	-- Sinister Gladiator's Chain Sabatons [A]
					i(164834),	-- Sinister Gladiator's Chain Spaulders [A]
					i(164837),	-- Sinister Gladiator's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(164840),	-- Sinister Gladiator's Plate Armguards [A]
					i(164813),	-- Sinister Gladiator's Plate Chestpiece [A]
					i(164821),	-- Sinister Gladiator's Plate Gauntlets [A]
					i(164835),	-- Sinister Gladiator's Plate Girdle [A]
					i(164811),	-- Sinister Gladiator's Plate Helm [A]
					i(164827),	-- Sinister Gladiator's Plate Legguards [A]
					i(164832),	-- Sinister Gladiator's Plate Pauldrons [A]
					i(164816),	-- Sinister Gladiator's Plate Warboots [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
				n(BACK, {
					i(165047),	-- Sinister Gladiator's Cape [H]
					i(165046),	-- Sinister Gladiator's Drape [H]
					i(165045),	-- Sinister Gladiator's Greatcloak [H]
					i(165044),	-- Sinister Gladiator's Shawl [H]
				}),
				filter(CLOTH, {
					i(164786),	-- Sinister Gladiator's Silk Cord [H]
					i(164785),	-- Sinister Gladiator's Silk Cuffs [H]
					i(164781),	-- Sinister Gladiator's Silk Gloves [H]
					i(164782),	-- Sinister Gladiator's Silk Hood [H]
					i(164783),	-- Sinister Gladiator's Silk Leggings [H]
					i(164784),	-- Sinister Gladiator's Silk Mantle [H]
					i(164779),	-- Sinister Gladiator's Silk Robe [H]
					i(164780),	-- Sinister Gladiator's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(164793),	-- Sinister Gladiator's Leather Belt [H]
					i(164794),	-- Sinister Gladiator's Leather Bindings [H]
					i(164788),	-- Sinister Gladiator's Leather Boots [H]
					i(164789),	-- Sinister Gladiator's Leather Gloves [H]
					i(164790),	-- Sinister Gladiator's Leather Helm [H]
					i(164791),	-- Sinister Gladiator's Leather Legguards [H]
					i(164792),	-- Sinister Gladiator's Leather Spaulders [H]
					i(164787),	-- Sinister Gladiator's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(164802),	-- Sinister Gladiator's Chain Armbands [H]
					i(164795),	-- Sinister Gladiator's Chain Armor [H]
					i(164797),	-- Sinister Gladiator's Chain Gauntlets [H]
					i(164798),	-- Sinister Gladiator's Chain Helm [H]
					i(164799),	-- Sinister Gladiator's Chain Leggings [H]
					i(164796),	-- Sinister Gladiator's Chain Sabatons [H]
					i(164800),	-- Sinister Gladiator's Chain Spaulders [H]
					i(164801),	-- Sinister Gladiator's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(164810),	-- Sinister Gladiator's Plate Armguards [H]
					i(164804),	-- Sinister Gladiator's Plate Chestpiece [H]
					i(164806),	-- Sinister Gladiator's Plate Gauntlets [H]
					i(164809),	-- Sinister Gladiator's Plate Girdle [H]
					i(164803),	-- Sinister Gladiator's Plate Helm [H]
					i(164807),	-- Sinister Gladiator's Plate Legguards [H]
					i(164808),	-- Sinister Gladiator's Plate Pauldrons [H]
					i(164805),	-- Sinister Gladiator's Plate Warboots [H]
				}),
			})),
		})),
	})),
})));
