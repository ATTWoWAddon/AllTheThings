-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.BFA, {
	n(SEASON_CORRUPTED, bubbleDownSelf({
		["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1, ADDED_9_0_2_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
			ach(13962),		-- Combatant: Battle for Azeroth Season 4
			ach(13959),		-- Challenger: Battle for Azeroth Season 4
			ach(13963),		-- Rival: Battle for Azeroth Season 4
			ach(13964, {	-- Duelist: Battle for Azeroth Season 4
				ill(6096),	-- Dreadflame (ILLUSION!)
				i(172671, {	-- Corrupted Gladiator's Cloak [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(172670, {	-- Corrupted Gladiator's Cloak [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13989, {	-- Elite: Battle for Azeroth Season 4
				i(172652, {	-- Corrupted Gladiator's Tabard [A]
					["races"] = ALLIANCE_ONLY,
				}),
				i(172651, {	-- Corrupted Gladiator's Tabard [H]
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(13967, {	-- Gladiator: Battle for Azeroth Season 4
				i(156884),	-- Corrupted Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13958, {	-- Corrupted Gladiator's Proto-Drake (MOUNT!)
				["provider"] = { "i", 156884 },	-- Corrupted Gladiator's Proto-Drake (MOUNT!)
			}),
			ach(13957, {	-- Corrupted Gladiator: Battle for Azeroth Season 4
				title(411),	-- Corrupted Gladiator <Name>
			}),
			-- RBG
			ach(13966, {	-- Hero of the Alliance: Corrupted
				["races"] = ALLIANCE_ONLY,
			}),
			ach(13965, {	-- Hero of the Horde: Corrupted
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(14059, {	-- The Eyes Have It
				["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1, ADDED_9_0_2_LAUNCH },
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
			i(173714, {	-- Vicious White Warsaber (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(173713, {	-- Vicious White Bonesteed (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(175051, {	-- Alice Fischer <Corrupted Aspirant Vendor>
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					["groups"] = {
						filter(CLOTH, {
							honor(700, i(172837)),	-- Corrupted Aspirant's Silk Cord [A]
							honor(525, i(172840)),	-- Corrupted Aspirant's Silk Cuffs [A]
							honor(700, i(172823)),	-- Corrupted Aspirant's Silk Gloves [A]
							honor(875, i(172825)),	-- Corrupted Aspirant's Silk Hood [A]
							honor(875, i(172829)),	-- Corrupted Aspirant's Silk Leggings [A]
							honor(700, i(172834)),	-- Corrupted Aspirant's Silk Mantle [A]
							honor(875, i(172813)),	-- Corrupted Aspirant's Silk Robe [A]
							honor(700, i(172818)),	-- Corrupted Aspirant's Silk Treads [A]
						}),
						filter(FINGER_F, {
							honor(525, i(172845)),	-- Corrupted Aspirant's Band
							honor(525, i(172844)),	-- Corrupted Aspirant's Ring
						}),
						filter(LEATHER, {
							honor(700, i(172839)),	-- Corrupted Aspirant's Leather Belt [A]
							honor(525, i(172843)),	-- Corrupted Aspirant's Leather Bindings [A]
							honor(700, i(172820)),	-- Corrupted Aspirant's Leather Boots [A]
							honor(700, i(172821)),	-- Corrupted Aspirant's Leather Gloves [A]
							honor(875, i(172827)),	-- Corrupted Aspirant's Leather Helm [A]
							honor(875, i(172831)),	-- Corrupted Aspirant's Leather Legguards [A]
							honor(700, i(172832)),	-- Corrupted Aspirant's Leather Spaulders [A]
							honor(875, i(172816)),	-- Corrupted Aspirant's Leather Tunic [A]
						}),
						filter(MAIL, {
							honor(525, i(172842)),	-- Corrupted Aspirant's Chain Armbands [A]
							honor(875, i(172815)),	-- Corrupted Aspirant's Chain Armor [A]
							honor(700, i(172824)),	-- Corrupted Aspirant's Chain Gauntlets [A]
							honor(875, i(172826)),	-- Corrupted Aspirant's Chain Helm [A]
							honor(875, i(172830)),	-- Corrupted Aspirant's Chain Leggings [A]
							honor(700, i(172819)),	-- Corrupted Aspirant's Chain Sabatons [A]
							honor(700, i(172835)),	-- Corrupted Aspirant's Chain Spaulders [A]
							honor(700, i(172838)),	-- Corrupted Aspirant's Chain Waistguard [A]
						}),
						filter(PLATE, {
							honor(525, i(172841)),	-- Corrupted Aspirant's Plate Armguards [A]
							honor(875, i(172814)),	-- Corrupted Aspirant's Plate Chestpiece [A]
							honor(700, i(172822)),	-- Corrupted Aspirant's Plate Gauntlets [A]
							honor(700, i(172836)),	-- Corrupted Aspirant's Plate Girdle [A]
							honor(875, i(172812)),	-- Corrupted Aspirant's Plate Helm [A]
							honor(875, i(172828)),	-- Corrupted Aspirant's Plate Legguards [A]
							honor(700, i(172833)),	-- Corrupted Aspirant's Plate Pauldrons [A]
							honor(700, i(172817)),	-- Corrupted Aspirant's Plate Warboots [A]
						}),
						filter(TRINKET_F, {
							honor(700, i(172849)),	-- Corrupted Aspirant's Badge
							honor(700, i(172846)),	-- Corrupted Aspirant's Bauble
							honor(700, i(172847)),	-- Corrupted Aspirant's Emblem
							honor(700, i(172848)),	-- Corrupted Aspirant's Insignia
							i(184058),				-- Corrupted Aspirant's Medallion
							i(184059),				-- Corrupted Aspirant's Relentless Brooch
							i(184060),				-- Corrupted Aspirant's Sigil of Adaptation
						}),
						n(WEAPONS, {
							honor(875, i(172880)),	-- Corrupted Aspirant's Chopper [A]
							honor(875, i(174013)),	-- Corrupted Aspirant's Claw [A]
							honor(875, i(172878)),	-- Corrupted Aspirant's Cleaver [A]
							honor(1750, i(174015)),	-- Corrupted Aspirant's Decapitator [A]
							honor(875, i(172872)),	-- Corrupted Aspirant's Gavel [A]
							honor(1750, i(172884)),	-- Corrupted Aspirant's Greatsword [A]
							honor(1750, i(172870)),	-- Corrupted Aspirant's Longbow [A]
							honor(1750, i(172882)),	-- Corrupted Aspirant's Pike [A]
							honor(875, i(172874)),	-- Corrupted Aspirant's Pummeler [A]
							honor(425, i(172866)),	-- Corrupted Aspirant's Reprieve [A]
							honor(1750, i(174017)),	-- Corrupted Aspirant's Rifle [A]
							honor(875, i(172859)),	-- Corrupted Aspirant's Shanker [A]
							honor(425, i(172868)),	-- Corrupted Aspirant's Shield Wall [A]
							honor(875, i(172876)),	-- Corrupted Aspirant's Slicer [A]
							honor(875, i(174011)),	-- Corrupted Aspirant's Spellblade [A]
							honor(875, i(172858)),	-- Corrupted Aspirant's Stabber [A]
							honor(1750, i(172864)),	-- Corrupted Aspirant's Staff [A]
							honor(875, i(172862)),	-- Corrupted Aspirant's Wand [A]
							honor(1750, i(174019)),	-- Corrupted Aspirant's War Staff [A]
							honor(875, i(172886)),	-- Corrupted Aspirant's Warglaive [A]
						}),
					},
				}),
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = {
						moh(80, iensemble(184680)),	-- Arsenal: Corrupted Aspirant's Weapons [A]
					},
				}),
				n(TREASURES, {
					i(172857),	-- Corrupted Aspirant's Cape [A]
					i(172856),	-- Corrupted Aspirant's Drape [A]
					i(172854),	-- Corrupted Aspirant's Shawl [A]
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 }, ["races"] = ALLIANCE_ONLY }, {
				filter(BACK_F, {
					i(172857),	-- Corrupted Aspirant's Cape [A]
					i(172856),	-- Corrupted Aspirant's Drape [A]
					i(172854),	-- Corrupted Aspirant's Shawl [A]
				}),
				filter(CLOTH, {
					i(172837),	-- Corrupted Aspirant's Silk Cord [A]
					i(172840),	-- Corrupted Aspirant's Silk Cuffs [A]
					i(172823),	-- Corrupted Aspirant's Silk Gloves [A]
					i(172825),	-- Corrupted Aspirant's Silk Hood [A]
					i(172829),	-- Corrupted Aspirant's Silk Leggings [A]
					i(172834),	-- Corrupted Aspirant's Silk Mantle [A]
					i(172813),	-- Corrupted Aspirant's Silk Robe [A]
					i(172818),	-- Corrupted Aspirant's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(172839),	-- Corrupted Aspirant's Leather Belt [A]
					i(172843),	-- Corrupted Aspirant's Leather Bindings [A]
					i(172820),	-- Corrupted Aspirant's Leather Boots [A]
					i(172821),	-- Corrupted Aspirant's Leather Gloves [A]
					i(172827),	-- Corrupted Aspirant's Leather Helm [A]
					i(172831),	-- Corrupted Aspirant's Leather Legguards [A]
					i(172832),	-- Corrupted Aspirant's Leather Spaulders [A]
					i(172816),	-- Corrupted Aspirant's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(172842),	-- Corrupted Aspirant's Chain Armbands [A]
					i(172815),	-- Corrupted Aspirant's Chain Armor [A]
					i(172824),	-- Corrupted Aspirant's Chain Gauntlets [A]
					i(172826),	-- Corrupted Aspirant's Chain Helm [A]
					i(172830),	-- Corrupted Aspirant's Chain Leggings [A]
					i(172819),	-- Corrupted Aspirant's Chain Sabatons [A]
					i(172835),	-- Corrupted Aspirant's Chain Spaulders [A]
					i(172838),	-- Corrupted Aspirant's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(172841),	-- Corrupted Aspirant's Plate Armguards [A]
					i(172814),	-- Corrupted Aspirant's Plate Chestpiece [A]
					i(172822),	-- Corrupted Aspirant's Plate Gauntlets [A]
					i(172836),	-- Corrupted Aspirant's Plate Girdle [A]
					i(172812),	-- Corrupted Aspirant's Plate Helm [A]
					i(172828),	-- Corrupted Aspirant's Plate Legguards [A]
					i(172833),	-- Corrupted Aspirant's Plate Pauldrons [A]
					i(172817),	-- Corrupted Aspirant's Plate Warboots [A]
				}),
				n(WEAPONS, {
					i(172880),	-- Corrupted Aspirant's Chopper [A]
					i(174013),	-- Corrupted Aspirant's Claw [A]
					i(172878),	-- Corrupted Aspirant's Cleaver [A]
					i(174015),	-- Corrupted Aspirant's Decapitator [A]
					i(172872),	-- Corrupted Aspirant's Gavel [A]
					i(172884),	-- Corrupted Aspirant's Greatsword [A]
					i(172870),	-- Corrupted Aspirant's Longbow [A]
					i(172882),	-- Corrupted Aspirant's Pike [A]
					i(172874),	-- Corrupted Aspirant's Pummeler [A]
					i(172866),	-- Corrupted Aspirant's Reprieve [A]
					i(174017),	-- Corrupted Aspirant's Rifle [A]
					i(172859),	-- Corrupted Aspirant's Shanker [A]
					i(172868),	-- Corrupted Aspirant's Shield Wall [A]
					i(172876),	-- Corrupted Aspirant's Slicer [A]
					i(174011),	-- Corrupted Aspirant's Spellblade [A]
					i(172858),	-- Corrupted Aspirant's Stabber [A]
					i(172864),	-- Corrupted Aspirant's Staff [A]
					i(172862),	-- Corrupted Aspirant's Wand [A]
					i(174019),	-- Corrupted Aspirant's War Staff [A]
					i(172886),	-- Corrupted Aspirant's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(175050, {	-- Aneka Melae
					["coord"] = { 37.5, 71.4, ORGRIMMAR },
					["groups"] = {
						filter(CLOTH, {
							honor(700, i(172787)),	-- Corrupted Aspirant's Silk Cord [H]
							honor(525, i(172786)),	-- Corrupted Aspirant's Silk Cuffs [H]
							honor(700, i(172782)),	-- Corrupted Aspirant's Silk Gloves [H]
							honor(875, i(172783)),	-- Corrupted Aspirant's Silk Hood [H]
							honor(875, i(172784)),	-- Corrupted Aspirant's Silk Leggings [H]
							honor(700, i(172785)),	-- Corrupted Aspirant's Silk Mantle [H]
							honor(875, i(172780)),	-- Corrupted Aspirant's Silk Robe [H]
							honor(700, i(172781)),	-- Corrupted Aspirant's Silk Treads [H]
						}),
						filter(FINGER_F, {
							honor(525, i(172845)),	-- Corrupted Aspirant's Band
							honor(525, i(172844)),	-- Corrupted Aspirant's Ring
						}),
						filter(LEATHER, {
							honor(700, i(172794)),	-- Corrupted Aspirant's Leather Belt [H]
							honor(525, i(172795)),	-- Corrupted Aspirant's Leather Bindings [H]
							honor(700, i(172789)),	-- Corrupted Aspirant's Leather Boots [H]
							honor(700, i(172790)),	-- Corrupted Aspirant's Leather Gloves [H]
							honor(875, i(172791)),	-- Corrupted Aspirant's Leather Helm [H]
							honor(875, i(172792)),	-- Corrupted Aspirant's Leather Legguards [H]
							honor(700, i(172793)),	-- Corrupted Aspirant's Leather Spaulders [H]
							honor(875, i(172788)),	-- Corrupted Aspirant's Leather Tunic [H]
						}),
						filter(MAIL, {
							honor(525, i(172803)),	-- Corrupted Aspirant's Chain Armbands [H]
							honor(875, i(172796)),	-- Corrupted Aspirant's Chain Armor [H]
							honor(700, i(172798)),	-- Corrupted Aspirant's Chain Gauntlets [H]
							honor(875, i(172799)),	-- Corrupted Aspirant's Chain Helm [H]
							honor(875, i(172800)),	-- Corrupted Aspirant's Chain Leggings [H]
							honor(700, i(172797)),	-- Corrupted Aspirant's Chain Sabatons [H]
							honor(700, i(172801)),	-- Corrupted Aspirant's Chain Spaulders [H]
							honor(700, i(172802)),	-- Corrupted Aspirant's Chain Waistguard [H]
						}),
						filter(PLATE, {
							honor(525, i(172811)),	-- Corrupted Aspirant's Plate Armguards [H]
							honor(875, i(172805)),	-- Corrupted Aspirant's Plate Chestpiece [H]
							honor(700, i(172807)),	-- Corrupted Aspirant's Plate Gauntlets [H]
							honor(700, i(172810)),	-- Corrupted Aspirant's Plate Girdle [H]
							honor(875, i(172804)),	-- Corrupted Aspirant's Plate Helm [H]
							honor(875, i(172808)),	-- Corrupted Aspirant's Plate Legguards [H]
							honor(700, i(172809)),	-- Corrupted Aspirant's Plate Pauldrons [H]
							honor(700, i(172806)),	-- Corrupted Aspirant's Plate Warboots [H]
						}),
						filter(TRINKET_F, {
							honor(700, i(172849)),	-- Corrupted Aspirant's Badge
							honor(700, i(172846)),	-- Corrupted Aspirant's Bauble
							honor(700, i(172847)),	-- Corrupted Aspirant's Emblem
							honor(700, i(172848)),	-- Corrupted Aspirant's Insignia
							i(184058),				-- Corrupted Aspirant's Medallion
							i(184059),				-- Corrupted Aspirant's Relentless Brooch
							i(184060),				-- Corrupted Aspirant's Sigil of Adaptation
						}),
						n(WEAPONS, {
							honor(875, i(172881)),	-- Corrupted Aspirant's Chopper [H]
							honor(875, i(174012)),	-- Corrupted Aspirant's Claw [H]
							honor(875, i(172879)),	-- Corrupted Aspirant's Cleaver [H]
							honor(1750, i(174014)),	-- Corrupted Aspirant's Decapitator [H]
							honor(875, i(172873)),	-- Corrupted Aspirant's Gavel [H]
							honor(1750, i(172885)),	-- Corrupted Aspirant's Greatsword [H]
							honor(1750, i(172871)),	-- Corrupted Aspirant's Longbow [H]
							honor(1750, i(172883)),	-- Corrupted Aspirant's Pike [H]
							honor(875, i(172875)),	-- Corrupted Aspirant's Pummeler [H]
							honor(425, i(172867)),	-- Corrupted Aspirant's Reprieve [H]
							honor(1750, i(174016)),	-- Corrupted Aspirant's Rifle [H]
							honor(875, i(172861)),	-- Corrupted Aspirant's Shanker [H]
							honor(425, i(172869)),	-- Corrupted Aspirant's Shield Wall [H]
							honor(875, i(172877)),	-- Corrupted Aspirant's Slicer [H]
							honor(875, i(174010)),	-- Corrupted Aspirant's Spellblade [H]
							honor(875, i(172860)),	-- Corrupted Aspirant's Stabber [H]
							honor(1750, i(172865)),	-- Corrupted Aspirant's Staff [H]
							honor(875, i(172863)),	-- Corrupted Aspirant's Wand [H]
							honor(1750, i(174018)),	-- Corrupted Aspirant's War Staff [H]
							honor(875, i(172887)),	-- Corrupted Aspirant's Warglaive [H]
						}),
					},
				}),
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = {
						moh(80, iensemble(184681)),	-- Arsenal: Corrupted Aspirant's Weapons [H]
					},
				}),
				n(TREASURES, {
					i(172853),	-- Corrupted Aspirant's Cape [H]
					i(172852),	-- Corrupted Aspirant's Drape [H]
					i(172850),	-- Corrupted Aspirant's Shawl [H]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 }, ["races"] = HORDE_ONLY }, {
				filter(BACK_F, {
					i(172853),	-- Corrupted Aspirant's Cape [H]
					i(172852),	-- Corrupted Aspirant's Drape [H]
					i(172850),	-- Corrupted Aspirant's Shawl [H]
				}),
				filter(CLOTH, {
					i(172787),	-- Corrupted Aspirant's Silk Cord [H]
					i(172786),	-- Corrupted Aspirant's Silk Cuffs [H]
					i(172782),	-- Corrupted Aspirant's Silk Gloves [H]
					i(172783),	-- Corrupted Aspirant's Silk Hood [H]
					i(172784),	-- Corrupted Aspirant's Silk Leggings [H]
					i(172785),	-- Corrupted Aspirant's Silk Mantle [H]
					i(172780),	-- Corrupted Aspirant's Silk Robe [H]
					i(172781),	-- Corrupted Aspirant's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(172794),	-- Corrupted Aspirant's Leather Belt [H]
					i(172795),	-- Corrupted Aspirant's Leather Bindings [H]
					i(172789),	-- Corrupted Aspirant's Leather Boots [H]
					i(172790),	-- Corrupted Aspirant's Leather Gloves [H]
					i(172791),	-- Corrupted Aspirant's Leather Helm [H]
					i(172792),	-- Corrupted Aspirant's Leather Legguards [H]
					i(172793),	-- Corrupted Aspirant's Leather Spaulders [H]
					i(172788),	-- Corrupted Aspirant's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(172803),	-- Corrupted Aspirant's Chain Armbands [H]
					i(172796),	-- Corrupted Aspirant's Chain Armor [H]
					i(172798),	-- Corrupted Aspirant's Chain Gauntlets [H]
					i(172799),	-- Corrupted Aspirant's Chain Helm [H]
					i(172800),	-- Corrupted Aspirant's Chain Leggings [H]
					i(172797),	-- Corrupted Aspirant's Chain Sabatons [H]
					i(172801),	-- Corrupted Aspirant's Chain Spaulders [H]
					i(172802),	-- Corrupted Aspirant's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(172811),	-- Corrupted Aspirant's Plate Armguards [H]
					i(172805),	-- Corrupted Aspirant's Plate Chestpiece [H]
					i(172807),	-- Corrupted Aspirant's Plate Gauntlets [H]
					i(172810),	-- Corrupted Aspirant's Plate Girdle [H]
					i(172804),	-- Corrupted Aspirant's Plate Helm [H]
					i(172808),	-- Corrupted Aspirant's Plate Legguards [H]
					i(172809),	-- Corrupted Aspirant's Plate Pauldrons [H]
					i(172806),	-- Corrupted Aspirant's Plate Warboots [H]
				}),
				n(WEAPONS, {
					i(172881),	-- Corrupted Aspirant's Chopper [H]
					i(174012),	-- Corrupted Aspirant's Claw [H]
					i(172879),	-- Corrupted Aspirant's Cleaver [H]
					i(174014),	-- Corrupted Aspirant's Decapitator [H]
					i(172873),	-- Corrupted Aspirant's Gavel [H]
					i(172885),	-- Corrupted Aspirant's Greatsword [H]
					i(172871),	-- Corrupted Aspirant's Longbow [H]
					i(172883),	-- Corrupted Aspirant's Pike [H]
					i(172875),	-- Corrupted Aspirant's Pummeler [H]
					i(172867),	-- Corrupted Aspirant's Reprieve [H]
					i(174016),	-- Corrupted Aspirant's Rifle [H]
					i(172861),	-- Corrupted Aspirant's Shanker [H]
					i(172869),	-- Corrupted Aspirant's Shield Wall [H]
					i(172877),	-- Corrupted Aspirant's Slicer [H]
					i(174010),	-- Corrupted Aspirant's Spellblade [H]
					i(172860),	-- Corrupted Aspirant's Stabber [H]
					i(172865),	-- Corrupted Aspirant's Staff [H]
					i(172863),	-- Corrupted Aspirant's Wand [H]
					i(174018),	-- Corrupted Aspirant's War Staff [H]
					i(172887),	-- Corrupted Aspirant's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
				filter(FINGER_F, {
					i(172845),	-- Corrupted Aspirant's Band
					i(172844),	-- Corrupted Aspirant's Ring
				}),
				filter(TRINKET_F, {
					i(172849),	-- Corrupted Aspirant's Badge
					i(172847),	-- Corrupted Aspirant's Emblem
					i(172848),	-- Corrupted Aspirant's Insignia
					i(172846),	-- Corrupted Aspirant's Medallion
				}),
			})),
		}),
		n(PVP_GLADIATOR, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = ALLIANCE_ONLY }, {
				n(143560, {	-- Marshal Gabriel <Second-in-Command>
					["coord"] = { 56.4, 25.8, BORALUS },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184678, {	-- Arsenal: Corrupted Gladiator's Weapons [A]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180203, {	-- Ensemble: Corrupted Gladiator's Cloth Armor [A]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180204, {	-- Ensemble: Corrupted Gladiator's Leather Armor [A]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180205, {	-- Ensemble: Corrupted Gladiator's Mail Armor [A]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180206, {	-- Ensemble: Corrupted Gladiator's Plate Armor [A]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 }, ["races"] = ALLIANCE_ONLY }, {
				filter(CLOTH, {
					i(172641),	-- Corrupted Gladiator's Silk Amice [A]
					i(172647),	-- Corrupted Gladiator's Silk Bracers [A]
					i(172710),	-- Corrupted Gladiator's Silk Chestwrap [A]
					i(172580),	-- Corrupted Gladiator's Silk Cord [A]
					i(172687),	-- Corrupted Gladiator's Silk Cover [A]
					i(172632),	-- Corrupted Gladiator's Silk Cowl [A]
					i(172583),	-- Corrupted Gladiator's Silk Cuffs [A]
					i(172728),	-- Corrupted Gladiator's Silk Epaulets [A]
					i(172566),	-- Corrupted Gladiator's Silk Gloves [A]
					i(172630),	-- Corrupted Gladiator's Silk Handguards [A]
					i(172679),	-- Corrupted Gladiator's Silk Helm [A]
					i(172568),	-- Corrupted Gladiator's Silk Hood [A]
					i(172572),	-- Corrupted Gladiator's Silk Leggings [A]
					i(172577),	-- Corrupted Gladiator's Silk Mantle [A]
					i(172620),	-- Corrupted Gladiator's Silk Raiment [A]
					i(172556),	-- Corrupted Gladiator's Silk Robe [A]
					i(172644),	-- Corrupted Gladiator's Silk Sash [A]
					i(172736),	-- Corrupted Gladiator's Silk Shoulderpads [A]
					i(172625),	-- Corrupted Gladiator's Silk Slippers [A]
					i(172561),	-- Corrupted Gladiator's Silk Treads [A]
					i(172636),	-- Corrupted Gladiator's Silk Trousers [A]
					i(172702),	-- Corrupted Gladiator's Silk Vestments [A]
				}),
				filter(LEATHER, {
					i(172650),	-- Corrupted Gladiator's Leather Armwraps [A]
					i(172582),	-- Corrupted Gladiator's Leather Belt [A]
					i(172586),	-- Corrupted Gladiator's Leather Bindings [A]
					i(172563),	-- Corrupted Gladiator's Leather Boots [A]
					i(172681),	-- Corrupted Gladiator's Leather Cap [A]
					i(172713),	-- Corrupted Gladiator's Leather Chestguard [A]
					i(172627),	-- Corrupted Gladiator's Leather Footguards [A]
					i(172564),	-- Corrupted Gladiator's Leather Gloves [A]
					i(172628),	-- Corrupted Gladiator's Leather Handguards [A]
					i(172570),	-- Corrupted Gladiator's Leather Helm [A]
					i(172634),	-- Corrupted Gladiator's Leather Hood [A]
					i(172705),	-- Corrupted Gladiator's Leather Jerkin [A]
					i(172574),	-- Corrupted Gladiator's Leather Legguards [A]
					i(172639),	-- Corrupted Gladiator's Leather Mantle [A]
					i(172638),	-- Corrupted Gladiator's Leather Pants [A]
					i(172734),	-- Corrupted Gladiator's Leather Pauldrons [A]
					i(172726),	-- Corrupted Gladiator's Leather Shoulderguards [A]
					i(172689),	-- Corrupted Gladiator's Leather Skullguard [A]
					i(172575),	-- Corrupted Gladiator's Leather Spaulders [A]
					i(172559),	-- Corrupted Gladiator's Leather Tunic [A]
					i(172623),	-- Corrupted Gladiator's Leather Vest [A]
					i(172646),	-- Corrupted Gladiator's Leather Waistband [A]
				}),
				filter(MAIL, {
					i(172585),	-- Corrupted Gladiator's Chain Armbands [A]
					i(172558),	-- Corrupted Gladiator's Chain Armor [A]
					i(172622),	-- Corrupted Gladiator's Chain Chestguard [A]
					i(172645),	-- Corrupted Gladiator's Chain Clasp [A]
					i(172680),	-- Corrupted Gladiator's Chain Coif [A]
					i(172626),	-- Corrupted Gladiator's Chain Footguards [A]
					i(172567),	-- Corrupted Gladiator's Chain Gauntlets [A]
					i(172631),	-- Corrupted Gladiator's Chain Handguards [A]
					i(172704),	-- Corrupted Gladiator's Chain Hauberk [A]
					i(172688),	-- Corrupted Gladiator's Chain Headgear [A]
					i(172633),	-- Corrupted Gladiator's Chain Headpiece [A]
					i(172569),	-- Corrupted Gladiator's Chain Helm [A]
					i(172573),	-- Corrupted Gladiator's Chain Leggings [A]
					i(172637),	-- Corrupted Gladiator's Chain Legguards [A]
					i(172737),	-- Corrupted Gladiator's Chain Mantle [A]
					i(172729),	-- Corrupted Gladiator's Chain Pauldrons [A]
					i(172562),	-- Corrupted Gladiator's Chain Sabatons [A]
					i(172642),	-- Corrupted Gladiator's Chain Shoulderguards [A]
					i(172578),	-- Corrupted Gladiator's Chain Spaulders [A]
					i(172581),	-- Corrupted Gladiator's Chain Waistguard [A]
					i(172649),	-- Corrupted Gladiator's Chain Wristguards [A]
					i(172712),	-- Corrupted Gladiator's Chainmail [A]
				}),
				filter(PLATE, {
					i(172584),	-- Corrupted Gladiator's Plate Armguards [A]
					i(172703),	-- Corrupted Gladiator's Plate Armor [A]
					i(172711),	-- Corrupted Gladiator's Plate Breastplate [A]
					i(172621),	-- Corrupted Gladiator's Plate Chestguard [A]
					i(172557),	-- Corrupted Gladiator's Plate Chestpiece [A]
					i(172643),	-- Corrupted Gladiator's Plate Clasp [A]
					i(172565),	-- Corrupted Gladiator's Plate Gauntlets [A]
					i(172579),	-- Corrupted Gladiator's Plate Girdle [A]
					i(172686),	-- Corrupted Gladiator's Plate Greathelm [A]
					i(172624),	-- Corrupted Gladiator's Plate Greaves [A]
					i(172619),	-- Corrupted Gladiator's Plate Headcover [A]
					i(172555),	-- Corrupted Gladiator's Plate Helm [A]
					i(172635),	-- Corrupted Gladiator's Plate Leg Armor [A]
					i(172571),	-- Corrupted Gladiator's Plate Legguards [A]
					i(172576),	-- Corrupted Gladiator's Plate Pauldrons [A]
					i(172735),	-- Corrupted Gladiator's Plate Shoulderguards [A]
					i(172640),	-- Corrupted Gladiator's Plate Shoulders [A]
					i(172727),	-- Corrupted Gladiator's Plate Spaulders [A]
					i(172648),	-- Corrupted Gladiator's Plate Vambraces [A]
					i(172560),	-- Corrupted Gladiator's Plate Warboots [A]
					i(172678),	-- Corrupted Gladiator's Plate Warhelm [A]
				}),
				n(WEAPONS, {
					i(172754),	-- Corrupted Gladiator's Chopper [A]
					i(172778),	-- Corrupted Gladiator's Claw [A]
					i(172770),	-- Corrupted Gladiator's Cleaver [A]
					i(172762),	-- Corrupted Gladiator's Decapitator [A]
					i(172773),	-- Corrupted Gladiator's Gavel [A]
					i(172767),	-- Corrupted Gladiator's Greatsword [A]
					i(172758),	-- Corrupted Gladiator's Longbow [A]
					i(172757),	-- Corrupted Gladiator's Pike [A]
					i(172753),	-- Corrupted Gladiator's Pummeler [A]
					i(172765),	-- Corrupted Gladiator's Reprieve [A]
					i(173306),	-- Corrupted Gladiator's Rifle [A]
					i(172751),	-- Corrupted Gladiator's Shanker [A]
					i(172654),	-- Corrupted Gladiator's Shield Wall [A]
					i(172755),	-- Corrupted Gladiator's Slicer [A]
					i(173305),	-- Corrupted Gladiator's Spellblade [A]
					i(172769),	-- Corrupted Gladiator's Stabber [A]
					i(172775),	-- Corrupted Gladiator's Staff [A]
					i(172760),	-- Corrupted Gladiator's Wand [A]
					i(172776),	-- Corrupted Gladiator's War Staff [A]
					i(172752),	-- Corrupted Gladiator's Warglaive [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH }, ["races"] = HORDE_ONLY }, {
				n(143555, {	-- Xander Silberman <War Effort Coordinator>
					["coord"] = { 51.6, 58.2, ZULDAZAR },
					["groups"] = sharedData({ ["cost"] = {{"i", MOH, 12}} }, {
						iensemble(184679, {	-- Arsenal: Corrupted Gladiator's Weapons [H]
							["cost"] = {{"i", MOH, 80}},
						}),
						iensemble(180203, {	-- Ensemble: Corrupted Gladiator's Cloth Armor [H]
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(180204, {	-- Ensemble: Corrupted Gladiator's Leather Armor [H]
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(180205, {	-- Ensemble: Corrupted Gladiator's Mail Armor [H]
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(180206, {	-- Ensemble: Corrupted Gladiator's Plate Armor [H]
							["classes"] = PLATE_CLASSES,
						}),
					}),
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 }, ["races"] = HORDE_ONLY }, {
				filter(CLOTH, {
					i(172592),	-- Corrupted Gladiator's Silk Amice [H]
					i(172593),	-- Corrupted Gladiator's Silk Bracers [H]
					i(172706),	-- Corrupted Gladiator's Silk Chestwrap [H]
					i(172530),	-- Corrupted Gladiator's Silk Cord [H]
					i(172682),	-- Corrupted Gladiator's Silk Cover [H]
					i(172590),	-- Corrupted Gladiator's Silk Cowl [H]
					i(172529),	-- Corrupted Gladiator's Silk Cuffs [H]
					i(172722),	-- Corrupted Gladiator's Silk Epaulets [H]
					i(172525),	-- Corrupted Gladiator's Silk Gloves [H]
					i(172589),	-- Corrupted Gladiator's Silk Handguards [H]
					i(172674),	-- Corrupted Gladiator's Silk Helm [H]
					i(172526),	-- Corrupted Gladiator's Silk Hood [H]
					i(172527),	-- Corrupted Gladiator's Silk Leggings [H]
					i(172528),	-- Corrupted Gladiator's Silk Mantle [H]
					i(172587),	-- Corrupted Gladiator's Silk Raiment [H]
					i(172523),	-- Corrupted Gladiator's Silk Robe [H]
					i(172594),	-- Corrupted Gladiator's Silk Sash [H]
					i(172730),	-- Corrupted Gladiator's Silk Shoulderpads [H]
					i(172588),	-- Corrupted Gladiator's Silk Slippers [H]
					i(172524),	-- Corrupted Gladiator's Silk Treads [H]
					i(172591),	-- Corrupted Gladiator's Silk Trousers [H]
					i(172698),	-- Corrupted Gladiator's Silk Vestments [H]
				}),
				filter(LEATHER, {
					i(172602),	-- Corrupted Gladiator's Leather Armwraps [H]
					i(172537),	-- Corrupted Gladiator's Leather Belt [H]
					i(172538),	-- Corrupted Gladiator's Leather Bindings [H]
					i(172532),	-- Corrupted Gladiator's Leather Boots [H]
					i(172675),	-- Corrupted Gladiator's Leather Cap [H]
					i(172707),	-- Corrupted Gladiator's Leather Chestguard [H]
					i(172596),	-- Corrupted Gladiator's Leather Footguards [H]
					i(172533),	-- Corrupted Gladiator's Leather Gloves [H]
					i(172597),	-- Corrupted Gladiator's Leather Handguards [H]
					i(172534),	-- Corrupted Gladiator's Leather Helm [H]
					i(172598),	-- Corrupted Gladiator's Leather Hood [H]
					i(172699),	-- Corrupted Gladiator's Leather Jerkin [H]
					i(172535),	-- Corrupted Gladiator's Leather Legguards [H]
					i(172600),	-- Corrupted Gladiator's Leather Mantle [H]
					i(172599),	-- Corrupted Gladiator's Leather Pants [H]
					i(172731),	-- Corrupted Gladiator's Leather Pauldrons [H]
					i(172723),	-- Corrupted Gladiator's Leather Shoulderguards [H]
					i(172683),	-- Corrupted Gladiator's Leather Skullguard [H]
					i(172536),	-- Corrupted Gladiator's Leather Spaulders [H]
					i(172531),	-- Corrupted Gladiator's Leather Tunic [H]
					i(172595),	-- Corrupted Gladiator's Leather Vest [H]
					i(172601),	-- Corrupted Gladiator's Leather Waistband [H]
				}),
				filter(MAIL, {
					i(172546),	-- Corrupted Gladiator's Chain Armbands [H]
					i(172539),	-- Corrupted Gladiator's Chain Armor [H]
					i(172603),	-- Corrupted Gladiator's Chain Chestguard [H]
					i(172609),	-- Corrupted Gladiator's Chain Clasp [H]
					i(172676),	-- Corrupted Gladiator's Chain Coif [H]
					i(172604),	-- Corrupted Gladiator's Chain Footguards [H]
					i(172541),	-- Corrupted Gladiator's Chain Gauntlets [H]
					i(172605),	-- Corrupted Gladiator's Chain Handguards [H]
					i(172700),	-- Corrupted Gladiator's Chain Hauberk [H]
					i(172684),	-- Corrupted Gladiator's Chain Headgear [H]
					i(172606),	-- Corrupted Gladiator's Chain Headpiece [H]
					i(172542),	-- Corrupted Gladiator's Chain Helm [H]
					i(172543),	-- Corrupted Gladiator's Chain Leggings [H]
					i(172607),	-- Corrupted Gladiator's Chain Legguards [H]
					i(172732),	-- Corrupted Gladiator's Chain Mantle [H]
					i(172724),	-- Corrupted Gladiator's Chain Pauldrons [H]
					i(172540),	-- Corrupted Gladiator's Chain Sabatons [H]
					i(172608),	-- Corrupted Gladiator's Chain Shoulderguards [H]
					i(172544),	-- Corrupted Gladiator's Chain Spaulders [H]
					i(172545),	-- Corrupted Gladiator's Chain Waistguard [H]
					i(172610),	-- Corrupted Gladiator's Chain Wristguards [H]
					i(172708),	-- Corrupted Gladiator's Chainmail [H]
				}),
				filter(PLATE, {
					i(172554),	-- Corrupted Gladiator's Plate Armguards [H]
					i(172701),	-- Corrupted Gladiator's Plate Armor [H]
					i(172709),	-- Corrupted Gladiator's Plate Breastplate [H]
					i(172612),	-- Corrupted Gladiator's Plate Chestguard [H]
					i(172548),	-- Corrupted Gladiator's Plate Chestpiece [H]
					i(172617),	-- Corrupted Gladiator's Plate Clasp [H]
					i(172550),	-- Corrupted Gladiator's Plate Gauntlets [H]
					i(172553),	-- Corrupted Gladiator's Plate Girdle [H]
					i(172614),	-- Corrupted Gladiator's Plate Gloves [H]
					i(172685),	-- Corrupted Gladiator's Plate Greathelm [H]
					i(172613),	-- Corrupted Gladiator's Plate Greaves [H]
					i(172611),	-- Corrupted Gladiator's Plate Headcover [H]
					i(172547),	-- Corrupted Gladiator's Plate Helm [H]
					i(172615),	-- Corrupted Gladiator's Plate Leg Armor [H]
					i(172551),	-- Corrupted Gladiator's Plate Legguards [H]
					i(172552),	-- Corrupted Gladiator's Plate Pauldrons [H]
					i(172733),	-- Corrupted Gladiator's Plate Shoulderguards [H]
					i(172616),	-- Corrupted Gladiator's Plate Shoulders [H]
					i(172725),	-- Corrupted Gladiator's Plate Spaulders [H]
					i(172618),	-- Corrupted Gladiator's Plate Vambraces [H]
					i(172549),	-- Corrupted Gladiator's Plate Warboots [H]
					i(172677),	-- Corrupted Gladiator's Plate Warhelm [H]
				}),
				n(WEAPONS, {
					i(172746),	-- Corrupted Gladiator's Chopper [H]
					i(172779),	-- Corrupted Gladiator's Claw [H]
					i(172771),	-- Corrupted Gladiator's Cleaver [H]
					i(172777),	-- Corrupted Gladiator's Decapitator [H]
					i(172772),	-- Corrupted Gladiator's Gavel [H]
					i(172763),	-- Corrupted Gladiator's Greatsword [H]
					i(172759),	-- Corrupted Gladiator's Longbow [H]
					i(172756),	-- Corrupted Gladiator's Pike [H]
					i(172747),	-- Corrupted Gladiator's Pummeler [H]
					i(172764),	-- Corrupted Gladiator's Reprieve [H]
					i(173304),	-- Corrupted Gladiator's Rifle [H]
					i(172750),	-- Corrupted Gladiator's Shanker [H]
					i(172653),	-- Corrupted Gladiator's Shield Wall [H]
					i(172748),	-- Corrupted Gladiator's Slicer [H]
					i(173303),	-- Corrupted Gladiator's Spellblade [H]
					i(172768),	-- Corrupted Gladiator's Stabber [H]
					i(172774),	-- Corrupted Gladiator's Staff [H]
					i(172761),	-- Corrupted Gladiator's Wand [H]
					i(172766),	-- Corrupted Gladiator's War Staff [H]
					i(172749),	-- Corrupted Gladiator's Warglaive [H]
				}),
			})),
			n(FACTION_HEADER_NEUTRAL, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
				filter(FINGER_F, {
					i(172664),	-- Corrupted Gladiator's Band
					i(172663),	-- Corrupted Gladiator's Ring
					i(172665),	-- Corrupted Gladiator's Signet
				}),
				filter(TRINKET_F, {
					i(172669),	-- Corrupted Gladiator's Badge
					i(174276),	-- Corrupted Gladiator's Breach
					i(172667),	-- Corrupted Gladiator's Emblem
					i(172668),	-- Corrupted Gladiator's Insignia
					i(172672),	-- Corrupted Gladiator's Maledict
					i(172666),	-- Corrupted Gladiator's Medallion
					i(172673),	-- Corrupted Gladiator's Safeguard
					i(174472),	-- Corrupted Gladiator's Spite
				}),
			})),
		}),
		n(PVP_ELITE, bubbleDown({ ["bonusID"] = 6376, ["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 } }, {
			n(FACTION_HEADER_ALLIANCE, bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
				filter(CLOTH, {
					i(172580),	-- Corrupted Gladiator's Silk Cord [A]
					i(172583),	-- Corrupted Gladiator's Silk Cuffs [A]
					i(172566),	-- Corrupted Gladiator's Silk Gloves [A]
					i(172568),	-- Corrupted Gladiator's Silk Hood [A]
					i(172572),	-- Corrupted Gladiator's Silk Leggings [A]
					i(172577),	-- Corrupted Gladiator's Silk Mantle [A]
					i(172556),	-- Corrupted Gladiator's Silk Robe [A]
					i(172561),	-- Corrupted Gladiator's Silk Treads [A]
				}),
				filter(LEATHER, {
					i(172586),	-- Corrupted Gladiator's Leather Bindings [A]
					i(172582),	-- Corrupted Gladiator's Leather Belt [A]
					i(172627),	-- Corrupted Gladiator's Leather Footguards [A]
					i(172628),	-- Corrupted Gladiator's Leather Handguards [A]
					i(172570),	-- Corrupted Gladiator's Leather Helm [A]
					i(172638),	-- Corrupted Gladiator's Leather Pants [A]
					i(172575),	-- Corrupted Gladiator's Leather Spaulders [A]
					i(172559),	-- Corrupted Gladiator's Leather Tunic [A]
				}),
				filter(MAIL, {
					i(172585),	-- Corrupted Gladiator's Chain Armbands [A]
					i(172558),	-- Corrupted Gladiator's Chain Armor [A]
					i(172567),	-- Corrupted Gladiator's Chain Gauntlets [A]
					i(172569),	-- Corrupted Gladiator's Chain Helm [A]
					i(172573),	-- Corrupted Gladiator's Chain Leggings [A]
					i(172562),	-- Corrupted Gladiator's Chain Sabatons [A]
					i(172578),	-- Corrupted Gladiator's Chain Spaulders [A]
					i(172581),	-- Corrupted Gladiator's Chain Waistguard [A]
				}),
				filter(PLATE, {
					i(172584),	-- Corrupted Gladiator's Plate Armguards [A]
					i(172557),	-- Corrupted Gladiator's Plate Chestpiece [A]
					i(172565),	-- Corrupted Gladiator's Plate Gauntlets [A]
					i(172579),	-- Corrupted Gladiator's Plate Girdle [A]
					i(172555),	-- Corrupted Gladiator's Plate Helm [A]
					i(172571),	-- Corrupted Gladiator's Plate Legguards [A]
					i(172576),	-- Corrupted Gladiator's Plate Pauldrons [A]
					i(172560),	-- Corrupted Gladiator's Plate Warboots [A]
				}),
			})),
			n(FACTION_HEADER_HORDE, bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
				filter(CLOTH, {
					i(172530),	-- Corrupted Gladiator's Silk Cord [H]
					i(172529),	-- Corrupted Gladiator's Silk Cuffs [H]
					i(172525),	-- Corrupted Gladiator's Silk Gloves [H]
					i(172526),	-- Corrupted Gladiator's Silk Hood [H]
					i(172527),	-- Corrupted Gladiator's Silk Leggings [H]
					i(172528),	-- Corrupted Gladiator's Silk Mantle [H]
					i(172523),	-- Corrupted Gladiator's Silk Robe [H]
					i(172524),	-- Corrupted Gladiator's Silk Treads [H]
				}),
				filter(LEATHER, {
					i(172538),	-- Corrupted Gladiator's Leather Bindings [H]
					i(172537),	-- Corrupted Gladiator's Leather Belt [H]
					i(172596),	-- Corrupted Gladiator's Leather Footguards [H]
					i(172597),	-- Corrupted Gladiator's Leather Handguards [H]
					i(172534),	-- Corrupted Gladiator's Leather Helm [H]
					i(172599),	-- Corrupted Gladiator's Leather Pants [H]
					i(172536),	-- Corrupted Gladiator's Leather Spaulders [H]
					i(172531),	-- Corrupted Gladiator's Leather Tunic [H]
				}),
				filter(MAIL, {
					i(172546),	-- Corrupted Gladiator's Chain Armbands [H]
					i(172539),	-- Corrupted Gladiator's Chain Armor [H]
					i(172541),	-- Corrupted Gladiator's Chain Gauntlets [H]
					i(172542),	-- Corrupted Gladiator's Chain Helm [H]
					i(172543),	-- Corrupted Gladiator's Chain Leggings [H]
					i(172540),	-- Corrupted Gladiator's Chain Sabatons [H]
					i(172544),	-- Corrupted Gladiator's Chain Spaulders [H]
					i(172545),	-- Corrupted Gladiator's Chain Waistguard [H]
				}),
				filter(PLATE, {
					i(172554),	-- Corrupted Gladiator's Plate Armguards [H]
					i(172548),	-- Corrupted Gladiator's Plate Chestpiece [H]
					i(172550),	-- Corrupted Gladiator's Plate Gauntlets [H]
					i(172553),	-- Corrupted Gladiator's Plate Girdle [H]
					i(172547),	-- Corrupted Gladiator's Plate Helm [H]
					i(172551),	-- Corrupted Gladiator's Plate Legguards [H]
					i(172552),	-- Corrupted Gladiator's Plate Pauldrons [H]
					i(172549),	-- Corrupted Gladiator's Plate Warboots [H]
				}),
			})),
		})),
	})),
})));
