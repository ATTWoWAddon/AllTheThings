-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.SL, {
	n(SEASON_UNCHAINED, bubbleDownSelf({
		["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0, ADDED_10_0_2_LAUNCH },
	}, {
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {
			ach(14968),		-- Combatant I: Shadowlands Season 2
			ach(15232, {	-- Combatant II: Shadowlands Season 2
				["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
			}),
			ach(14969),		-- Challenger I: Shadowlands Season 2
			ach(15233, {	-- Challenger II: Shadowlands Season 2
				["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
			}),
			ach(14970),		-- Rival I: Shadowlands Season 2
			ach(15234, {	-- Rival II: Shadowlands Season 2
				["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
			}),
			ach(14971, {	-- Duelist: Shadowlands Season 2
				i(185302),	-- Unchained Gladiator's Prestigious Cloak
				ill(6344),	-- Unchained Fury (ILLUSION!)
			}),
			ach(14974, {	-- Elite: Shadowlands Season 2
				i(185303),	-- Unchained Gladiator's Tabard
			}),
			ach(14972, {	-- Gladiator: Shadowlands Season 2
				i(186177),	-- Unchained Gladiator's Soul Eater (MOUNT!)
			}),
			ach(14999),		-- Unchained Gladiator's Soul Eater
			ach(14973, {	-- Unchained Gladiator: Shadowlands Season 2
				title(441),	-- Unchained Gladiator <Name>
			}),
			-- RBG
			ach(14975, {	-- Hero of the Alliance: Unchained
				["races"] = ALLIANCE_ONLY,
			}),
			ach(14976, {	-- Hero of the Horde: Unchained
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(15102, {	-- It's Off the Chain!
				["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0, ADDED_10_0_2_LAUNCH },
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {
			i(186178, {	-- Vicious War Gorm [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(186179, {	-- Vicious War Gorm [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(164095, {	-- Purveyor Zo'kuul <Assessor of Conflict>
				["coord"] = { 36.0, 58.6, ORIBOS },
				["groups"] = sharedData({
					["cost"] = { { "i", MOH, 12 } },
					["timeline"] = { ADDED_10_0_2_LAUNCH },
				}, {
					iensemble(201877, {	-- Arsenal: Unchained Aspirant's Weapons
						["cost"] = { { "i", MOH, 80 } },
					}),
					iensemble(201860, {	-- Ensemble: Unchained Aspirant's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(201859, {	-- Ensemble: Unchained Aspirant's Leather Armor
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(201858, {	-- Ensemble: Unchained Aspirant's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(201857, {	-- Ensemble: Unchained Aspirant's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(164095, {	-- Purveyor Zo'kuul <Assessor of Conflict>
				["coord"] = { 36.0, 58.6, ORIBOS },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {
					filter(BACK_F, {
						honor(525, i(185240)),	-- Unchained Aspirant's Cape
						honor(525, i(185128)),	-- Unchained Aspirant's Cloak
						honor(525, i(185205)),	-- Unchained Aspirant's Drape
					}),
					filter(CLOTH, {
						honor(700, i(185230)),	-- Unchained Aspirant's Silk Belt
						honor(525, i(185234)),	-- Unchained Aspirant's Silk Bindings
						honor(700, i(185153)),	-- Unchained Aspirant's Silk Cord
						honor(875, i(185218)),	-- Unchained Aspirant's Silk Cover
						honor(700, i(185211)),	-- Unchained Aspirant's Silk Footwraps
						honor(700, i(185139)),	-- Unchained Aspirant's Silk Gloves
						honor(875, i(185206)),	-- Unchained Aspirant's Silk Gown
						honor(700, i(185216)),	-- Unchained Aspirant's Silk Handwraps
						honor(875, i(185141)),	-- Unchained Aspirant's Silk Hood
						honor(875, i(185145)),	-- Unchained Aspirant's Silk Leggings
						honor(875, i(185222)),	-- Unchained Aspirant's Silk Legwraps
						honor(700, i(185150)),	-- Unchained Aspirant's Silk Mantle
						honor(875, i(185129)),	-- Unchained Aspirant's Silk Robe
						honor(700, i(185227)),	-- Unchained Aspirant's Silk Shawl
						honor(700, i(185134)),	-- Unchained Aspirant's Silk Treads
						honor(525, i(185157)),	-- Unchained Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(185233)),	-- Unchained Aspirant's Band
						honor(525, i(185156)),	-- Unchained Aspirant's Ring
						honor(525, i(185241)),	-- Unchained Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(185237)),	-- Unchained Aspirant's Leather Armguards
						honor(700, i(185155)),	-- Unchained Aspirant's Leather Belt
						honor(700, i(185136)),	-- Unchained Aspirant's Leather Boots
						honor(875, i(185147)),	-- Unchained Aspirant's Leather Breeches
						honor(700, i(185232)),	-- Unchained Aspirant's Leather Cord
						honor(700, i(185213)),	-- Unchained Aspirant's Leather Footpads
						honor(700, i(185137)),	-- Unchained Aspirant's Leather Gloves
						honor(700, i(185214)),	-- Unchained Aspirant's Leather Grips
						honor(875, i(185143)),	-- Unchained Aspirant's Leather Helm
						honor(875, i(185224)),	-- Unchained Aspirant's Leather Leggings
						honor(700, i(185225)),	-- Unchained Aspirant's Leather Mantle
						honor(875, i(185220)),	-- Unchained Aspirant's Leather Mask
						honor(700, i(185148)),	-- Unchained Aspirant's Leather Spaulders
						honor(875, i(185209)),	-- Unchained Aspirant's Leather Tunic
						honor(875, i(185132)),	-- Unchained Aspirant's Leather Vest
						honor(525, i(185160)),	-- Unchained Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(185154)),	-- Unchained Aspirant's Chain Belt
						honor(525, i(185236)),	-- Unchained Aspirant's Chain Bracer
						honor(700, i(185231)),	-- Unchained Aspirant's Chain Clasp
						honor(700, i(185140)),	-- Unchained Aspirant's Chain Gauntlets
						honor(700, i(185217)),	-- Unchained Aspirant's Chain Handguards
						honor(875, i(185219)),	-- Unchained Aspirant's Chain Headguard
						honor(875, i(185142)),	-- Unchained Aspirant's Chain Helm
						honor(875, i(185146)),	-- Unchained Aspirant's Chain Leggings
						honor(700, i(185135)),	-- Unchained Aspirant's Chain Sabatons
						honor(700, i(185228)),	-- Unchained Aspirant's Chain Shoulderguards
						honor(700, i(185151)),	-- Unchained Aspirant's Chain Spaulders
						honor(700, i(185212)),	-- Unchained Aspirant's Chain Stompers
						honor(875, i(185208)),	-- Unchained Aspirant's Chain Tunic
						honor(875, i(185131)),	-- Unchained Aspirant's Chain Vest
						honor(875, i(185223)),	-- Unchained Aspirant's Chain Wargreaves
						honor(525, i(185159)),	-- Unchained Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(185239)),	-- Unchained Aspirant's Choker
						honor(525, i(185162)),	-- Unchained Aspirant's Necklace
						honor(525, i(185243)),	-- Unchained Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(525, i(185235)),	-- Unchained Aspirant's Plate Armguards
						honor(875, i(185207)),	-- Unchained Aspirant's Plate Armor
						honor(875, i(185130)),	-- Unchained Aspirant's Plate Chestplate
						honor(525, i(185158)),	-- Unchained Aspirant's Plate Cuffs
						honor(700, i(185138)),	-- Unchained Aspirant's Plate Gauntlets
						honor(700, i(185152)),	-- Unchained Aspirant's Plate Girdle
						honor(700, i(185229)),	-- Unchained Aspirant's Plate Greatbelt
						honor(700, i(185215)),	-- Unchained Aspirant's Plate Handguards
						honor(875, i(185204)),	-- Unchained Aspirant's Plate Headguard
						honor(875, i(185127)),	-- Unchained Aspirant's Plate Helm
						honor(875, i(185144)),	-- Unchained Aspirant's Plate Legguards
						honor(700, i(185226)),	-- Unchained Aspirant's Plate Pauldrons
						honor(700, i(185149)),	-- Unchained Aspirant's Plate Shoulders
						honor(700, i(185210)),	-- Unchained Aspirant's Plate Stompers
						honor(700, i(185133)),	-- Unchained Aspirant's Plate Warboots
						honor(875, i(185221)),	-- Unchained Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(185161)),	-- Unchained Aspirant's Badge of Ferocity
						honor(700, i(185242)),	-- Unchained Aspirant's Emblem
						honor(700, i(185238)),	-- Unchained Aspirant's Insignia of Alacrity
						honor(525, i(185309)),	-- Unchained Aspirant's Medallion
						honor(525, i(185310)),	-- Unchained Aspirant's Relentless Brooch
						honor(525, i(185311)),	-- Unchained Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(425, i(185295)),	-- Unchained Aspirant's Barrier
						honor(875, i(185284)),	-- Unchained Aspirant's Battleaxe
						honor(875, i(185307)),	-- Unchained Aspirant's Blackjack
						honor(875, i(185299)),	-- Unchained Aspirant's Blade
						honor(1325, i(185308)),	-- Unchained Aspirant's Crescent
						honor(875, i(185285)),	-- Unchained Aspirant's Dagger
						honor(1325, i(185294)),	-- Unchained Aspirant's Gavel
						honor(1750, i(185290)),	-- Unchained Aspirant's Greataxe
						honor(1750, i(185291)),	-- Unchained Aspirant's Greatsword
						honor(875, i(185296)),	-- Unchained Aspirant's Hatchet
						honor(1750, i(185298)),	-- Unchained Aspirant's Longspear
						honor(875, i(185286)),	-- Unchained Aspirant's Mace
						honor(425, i(185292)),	-- Unchained Aspirant's Orb
						honor(1750, i(185287)),	-- Unchained Aspirant's Polearm
						honor(1750, i(185297)),	-- Unchained Aspirant's Recurve
						honor(1750, i(185288)),	-- Unchained Aspirant's Staff
						honor(875, i(185289)),	-- Unchained Aspirant's Sword
						honor(875, i(185293)),	-- Unchained Aspirant's Warglaive
					}),
				}),
			}),
		}),
		n(PVP_GLADIATOR, {
			n(168011, {	-- Zo'sorg <Master of Conflict>
				["coord"] = { 35.0, 57.6, ORIBOS },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {
					iensemble(201876, {	-- Arsenal: Unchained Gladiator's Weapons
						["cost"] = { { "i", MOH, 80 } },
						["timeline"] = { ADDED_10_0_2_LAUNCH },
					}),
					iensemble(201864, {	-- Ensemble: Unchained Gladiator's Cloth Armor
						["classes"] = CLOTH_CLASSES,
						["cost"] = { { "i", MOH, 12 } },
						["timeline"] = { ADDED_10_0_2_LAUNCH },
					}),
					iensemble(201863, {	-- Ensemble: Unchained Gladiator's Leather Armor
						["classes"] = LEATHER_CLASSES,
						["cost"] = { { "i", MOH, 12 } },
						["timeline"] = { ADDED_10_0_2_LAUNCH },
					}),
					iensemble(201862, {	-- Ensemble: Unchained Gladiator's Mail Armor
						["classes"] = MAIL_CLASSES,
						["cost"] = { { "i", MOH, 12 } },
						["timeline"] = { ADDED_10_0_2_LAUNCH },
					}),
					iensemble(201861, {	-- Ensemble: Unchained Gladiator's Plate Armor
						["classes"] = PLATE_CLASSES,
						["cost"] = { { "i", MOH, 12 } },
						["timeline"] = { ADDED_10_0_2_LAUNCH },
					}),
				}),
			}),
			n(168011, {	-- Zo'sorg <Master of Conflict>
				["coord"] = { 35.0, 57.6, ORIBOS },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 } }, {
					filter(BACK_F, {
						conquest(525, i(185164)),	-- Unchained Gladiator's Cloak
						conquest(525, i(185245)),	-- Unchained Gladiator's Drape
						conquest(525, i(185313)),	-- Unchained Gladiator's Greatcloak
						conquest(525, i(185280)),	-- Unchained Gladiator's Shawl
					}),
					filter(CLOTH, {
						conquest(700, i(185267)),	-- Unchained Gladiator's Silk Amice
						conquest(525, i(185274)),	-- Unchained Gladiator's Silk Armbands
						conquest(700, i(185270)),	-- Unchained Gladiator's Silk Belt
						conquest(700, i(185189)),	-- Unchained Gladiator's Silk Cord
						conquest(700, i(185175)),	-- Unchained Gladiator's Silk Gloves
						conquest(875, i(185258)),	-- Unchained Gladiator's Silk Guise
						conquest(700, i(185256)),	-- Unchained Gladiator's Silk Handwraps
						conquest(875, i(185177)),	-- Unchained Gladiator's Silk Hood
						conquest(875, i(185181)),	-- Unchained Gladiator's Silk Leggings
						conquest(700, i(185186)),	-- Unchained Gladiator's Silk Mantle
						conquest(875, i(185165)),	-- Unchained Gladiator's Silk Robe
						conquest(700, i(185170)),	-- Unchained Gladiator's Silk Slippers
						conquest(700, i(185251)),	-- Unchained Gladiator's Silk Treads
						conquest(875, i(185262)),	-- Unchained Gladiator's Silk Trousers
						conquest(875, i(185246)),	-- Unchained Gladiator's Silk Vestments
						conquest(525, i(185193)),	-- Unchained Gladiator's Silk Wristwraps
					}),
					filter(FINGER_F, {
						conquest(525, i(185273)),	-- Unchained Gladiator's Band
						conquest(525, i(185192)),	-- Unchained Gladiator's Ring
						conquest(525, i(185281)),	-- Unchained Gladiator's Signet
					}),
					filter(LEATHER, {
						conquest(700, i(185191)),	-- Unchained Gladiator's Leather Belt
						conquest(700, i(185172)),	-- Unchained Gladiator's Leather Boots
						conquest(875, i(185183)),	-- Unchained Gladiator's Leather Breeches
						conquest(700, i(185173)),	-- Unchained Gladiator's Leather Gloves
						conquest(700, i(185254)),	-- Unchained Gladiator's Leather Grips
						conquest(875, i(185179)),	-- Unchained Gladiator's Leather Helm
						conquest(875, i(185249)),	-- Unchained Gladiator's Leather Jerkin
						conquest(875, i(185264)),	-- Unchained Gladiator's Leather Legwraps
						conquest(875, i(185260)),	-- Unchained Gladiator's Leather Mask
						conquest(700, i(185265)),	-- Unchained Gladiator's Leather Shoulderpads
						conquest(700, i(185184)),	-- Unchained Gladiator's Leather Spaulders
						conquest(700, i(185272)),	-- Unchained Gladiator's Leather Strap
						conquest(700, i(185253)),	-- Unchained Gladiator's Leather Treads
						conquest(875, i(185168)),	-- Unchained Gladiator's Leather Vest
						conquest(525, i(185277)),	-- Unchained Gladiator's Leather Wristguards
						conquest(525, i(185196)),	-- Unchained Gladiator's Leather Wristwraps
					}),
					filter(MAIL, {
						conquest(700, i(185190)),	-- Unchained Gladiator's Chain Belt
						conquest(700, i(185252)),	-- Unchained Gladiator's Chain Boots
						conquest(525, i(185276)),	-- Unchained Gladiator's Chain Bracers
						conquest(875, i(185263)),	-- Unchained Gladiator's Chain Breeches
						conquest(875, i(185259)),	-- Unchained Gladiator's Chain Faceguard
						conquest(700, i(185176)),	-- Unchained Gladiator's Chain Gauntlets
						conquest(700, i(185271)),	-- Unchained Gladiator's Chain Girdle
						conquest(700, i(185257)),	-- Unchained Gladiator's Chain Handguards
						conquest(875, i(185178)),	-- Unchained Gladiator's Chain Helm
						conquest(875, i(185182)),	-- Unchained Gladiator's Chain Leggings
						conquest(700, i(185187)),	-- Unchained Gladiator's Chain Monnion
						conquest(700, i(185171)),	-- Unchained Gladiator's Chain Sabatons
						conquest(700, i(185268)),	-- Unchained Gladiator's Chain Shoulderguard
						conquest(875, i(185248)),	-- Unchained Gladiator's Chain Tunic
						conquest(875, i(185167)),	-- Unchained Gladiator's Chain Vest
						conquest(525, i(185195)),	-- Unchained Gladiator's Chain Wristguards
					}),
					filter(NECK_F, {
						conquest(525, i(185283)),	-- Unchained Gladiator's Amulet
						conquest(525, i(185198)),	-- Unchained Gladiator's Necklace
						conquest(525, i(185279)),	-- Unchained Gladiator's Pendant
					}),
					filter(PLATE, {
						conquest(875, i(185166)),	-- Unchained Gladiator's Plate Chestguard
						conquest(875, i(185247)),	-- Unchained Gladiator's Plate Chestplate
						conquest(700, i(185174)),	-- Unchained Gladiator's Plate Gauntlets
						conquest(700, i(185188)),	-- Unchained Gladiator's Plate Girdle
						conquest(700, i(185269)),	-- Unchained Gladiator's Plate Greatbelt
						conquest(700, i(185255)),	-- Unchained Gladiator's Plate Handguards
						conquest(875, i(185163)),	-- Unchained Gladiator's Plate Helm
						conquest(875, i(185244)),	-- Unchained Gladiator's Plate Helmet
						conquest(875, i(185180)),	-- Unchained Gladiator's Plate Legguards
						conquest(700, i(185266)),	-- Unchained Gladiator's Plate Pauldrons
						conquest(700, i(185185)),	-- Unchained Gladiator's Plate Shoulders
						conquest(700, i(185250)),	-- Unchained Gladiator's Plate Stompers
						conquest(525, i(185275)),	-- Unchained Gladiator's Plate Vambraces
						conquest(700, i(185169)),	-- Unchained Gladiator's Plate Warboots
						conquest(875, i(185261)),	-- Unchained Gladiator's Plate Wargreaves
						conquest(525, i(185194)),	-- Unchained Gladiator's Plate Wristguards
					}),
					filter(TRINKET_F, {
						conquest(700, i(185197)),	-- Unchained Gladiator's Badge of Ferocity
						conquest(700, i(185282)),	-- Unchained Gladiator's Emblem
						conquest(700, i(185278)),	-- Unchained Gladiator's Insignia of Alacrity
						conquest(525, i(185304)),	-- Unchained Gladiator's Medallion
						conquest(525, i(185305)),	-- Unchained Gladiator's Relentless Brooch
						conquest(525, i(185306)),	-- Unchained Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(450, i(188660, {	-- Unchained Gladiator's Barrier
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(1350, i(185200)),	-- Unchained Gladiator's Ceremonial Sword
						conquest(450, i(185203)),	-- Unchained Gladiator's Chalice
						conquest(1800, i(185317)),	-- Unchained Gladiator's Dory
						conquest(1800, i(188663, {	-- Unchained Gladiator's Focus Staff
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(1350, i(188661, {	-- Unchained Gladiator's Gavel
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(900, i(185199)),	-- Unchained Gladiator's Gladius
						conquest(1800, i(185301)),	-- Unchained Gladiator's Greataxe
						conquest(1800, i(188662, {	-- Unchained Gladiator's Greatstaff
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(1800, i(188668, {	-- Unchained Gladiator's Greatsword
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(450, i(185126)),	-- Unchained Gladiator's Guard
						conquest(900, i(185314)),	-- Unchained Gladiator's Hacker
						conquest(900, i(185202)),	-- Unchained Gladiator's Knife
						conquest(1800, i(185201)),	-- Unchained Gladiator's Lightbow
						conquest(1350, i(188664, {	-- Unchained Gladiator's Mageblade
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(1800, i(188666, {	-- Unchained Gladiator's Rifle
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(900, i(188667, {	-- Unchained Gladiator's Ripper
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(1350, i(185316)),	-- Unchained Gladiator's Ritual Dagger
						conquest(900, i(188665, {	-- Unchained Gladiator's Slicer
							["timeline"] = { ADDED_9_1_5, REMOVED_9_2_0 },
						})),
						conquest(900, i(185125)),	-- Unchained Gladiator's Splitter
						conquest(1800, i(185300)),	-- Unchained Gladiator's Vesper
						conquest(900, i(185312)),	-- Unchained Gladiator's Warglaive
						conquest(900, i(185315)),	-- Unchained Gladiator's Xiphos
					}),
				}),
			}),
		}),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 }, ["modID"] = 14, ["bonusID"] = 7309 }, {
			filter(BACK_F, {
				i(185164),	-- Unchained Gladiator's Cloak
				i(185245),	-- Unchained Gladiator's Drape
				i(185313),	-- Unchained Gladiator's Greatcloak
				i(185280),	-- Unchained Gladiator's Shawl
			}),
			filter(CLOTH, {
				i(185267),	-- Unchained Gladiator's Silk Amice
				i(185274),	-- Unchained Gladiator's Silk Armbands
				i(185270),	-- Unchained Gladiator's Silk Belt
				i(185189),	-- Unchained Gladiator's Silk Cord
				i(185175),	-- Unchained Gladiator's Silk Gloves
				i(185258),	-- Unchained Gladiator's Silk Guise
				i(185256),	-- Unchained Gladiator's Silk Handwraps
				i(185177),	-- Unchained Gladiator's Silk Hood
				i(185181),	-- Unchained Gladiator's Silk Leggings
				i(185186),	-- Unchained Gladiator's Silk Mantle
				i(185165),	-- Unchained Gladiator's Silk Robe
				i(185170),	-- Unchained Gladiator's Silk Slippers
				i(185251),	-- Unchained Gladiator's Silk Treads
				i(185262),	-- Unchained Gladiator's Silk Trousers
				i(185246),	-- Unchained Gladiator's Silk Vestments
				i(185193),	-- Unchained Gladiator's Silk Wristwraps
			}),
			filter(FINGER_F, {
				i(185273),	-- Unchained Gladiator's Band
				i(185192),	-- Unchained Gladiator's Ring
				i(185281),	-- Unchained Gladiator's Signet
			}),
			filter(LEATHER, {
				i(185191),	-- Unchained Gladiator's Leather Belt
				i(185172),	-- Unchained Gladiator's Leather Boots
				i(185183),	-- Unchained Gladiator's Leather Breeches
				i(185173),	-- Unchained Gladiator's Leather Gloves
				i(185254),	-- Unchained Gladiator's Leather Grips
				i(185179),	-- Unchained Gladiator's Leather Helm
				i(185249),	-- Unchained Gladiator's Leather Jerkin
				i(185264),	-- Unchained Gladiator's Leather Legwraps
				i(185260),	-- Unchained Gladiator's Leather Mask
				i(185265),	-- Unchained Gladiator's Leather Shoulderpads
				i(185184),	-- Unchained Gladiator's Leather Spaulders
				i(185272),	-- Unchained Gladiator's Leather Strap
				i(185253),	-- Unchained Gladiator's Leather Treads
				i(185168),	-- Unchained Gladiator's Leather Vest
				i(185277),	-- Unchained Gladiator's Leather Wristguards
				i(185196),	-- Unchained Gladiator's Leather Wristwraps
			}),
			filter(MAIL, {
				i(185190),	-- Unchained Gladiator's Chain Belt
				i(185252),	-- Unchained Gladiator's Chain Boots
				i(185276),	-- Unchained Gladiator's Chain Bracers
				i(185263),	-- Unchained Gladiator's Chain Breeches
				i(185259),	-- Unchained Gladiator's Chain Faceguard
				i(185176),	-- Unchained Gladiator's Chain Gauntlets
				i(185271),	-- Unchained Gladiator's Chain Girdle
				i(185257),	-- Unchained Gladiator's Chain Handguards
				i(185178),	-- Unchained Gladiator's Chain Helm
				i(185182),	-- Unchained Gladiator's Chain Leggings
				i(185187),	-- Unchained Gladiator's Chain Monnion
				i(185171),	-- Unchained Gladiator's Chain Sabatons
				i(185268),	-- Unchained Gladiator's Chain Shoulderguard
				i(185248),	-- Unchained Gladiator's Chain Tunic
				i(185167),	-- Unchained Gladiator's Chain Vest
				i(185195),	-- Unchained Gladiator's Chain Wristguards
			}),
			filter(NECK_F, {
				i(185283),	-- Unchained Gladiator's Amulet
				i(185198),	-- Unchained Gladiator's Necklace
				i(185279),	-- Unchained Gladiator's Pendant
			}),
			filter(PLATE, {
				i(185166),	-- Unchained Gladiator's Plate Chestguard
				i(185247),	-- Unchained Gladiator's Plate Chestplate
				i(185174),	-- Unchained Gladiator's Plate Gauntlets
				i(185188),	-- Unchained Gladiator's Plate Girdle
				i(185269),	-- Unchained Gladiator's Plate Greatbelt
				i(185255),	-- Unchained Gladiator's Plate Handguards
				i(185163),	-- Unchained Gladiator's Plate Helm
				i(185244),	-- Unchained Gladiator's Plate Helmet
				i(185180),	-- Unchained Gladiator's Plate Legguards
				i(185266),	-- Unchained Gladiator's Plate Pauldrons
				i(185185),	-- Unchained Gladiator's Plate Shoulders
				i(185250),	-- Unchained Gladiator's Plate Stompers
				i(185275),	-- Unchained Gladiator's Plate Vambraces
				i(185169),	-- Unchained Gladiator's Plate Warboots
				i(185261),	-- Unchained Gladiator's Plate Wargreaves
				i(185194),	-- Unchained Gladiator's Plate Wristguards
			}),
			filter(TRINKET_F, {
				i(185197),	-- Unchained Gladiator's Badge of Ferocity
				i(185282),	-- Unchained Gladiator's Emblem
				i(185278),	-- Unchained Gladiator's Insignia of Alacrity
				i(185304),	-- Unchained Gladiator's Medallion
				i(185305),	-- Unchained Gladiator's Relentless Brooch
				i(185306),	-- Unchained Gladiator's Sigil of Adaptation
			}),
			n(WEAPONS, {
				i(188660, {	-- Unchained Gladiator's Barrier
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(185200),	-- Unchained Gladiator's Ceremonial Sword
				i(185203),	-- Unchained Gladiator's Chalice
				i(185317),	-- Unchained Gladiator's Dory
				i(188663, {	-- Unchained Gladiator's Focus Staff
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(188661, {	-- Unchained Gladiator's Gavel
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(185199),	-- Unchained Gladiator's Gladius
				i(185301),	-- Unchained Gladiator's Greataxe
				i(188662, {	-- Unchained Gladiator's Greatstaff
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(188668, {	-- Unchained Gladiator's Greatsword
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(185126),	-- Unchained Gladiator's Guard
				i(185314),	-- Unchained Gladiator's Hacker
				i(185202),	-- Unchained Gladiator's Knife
				i(185201, {	-- Unchained Gladiator's Lightbow
					["modID"] = 44,	-- this item does not use modID 14
				}),
				i(188664, {	-- Unchained Gladiator's Mageblade
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(188666, {	-- Unchained Gladiator's Rifle
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(188667, {	-- Unchained Gladiator's Ripper
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(185316),	-- Unchained Gladiator's Ritual Dagger
				i(188665, {	-- Unchained Gladiator's Slicer
					["timeline"] = { ADDED_9_1_0, REMOVED_9_2_0 },
				}),
				i(185125),	-- Unchained Gladiator's Splitter
				i(185300, {	-- Unchained Gladiator's Vesper
					["modID"] = 40,	-- this item does not use modID 14
				}),
				i(185312),	-- Unchained Gladiator's Warglaive
				i(185315),	-- Unchained Gladiator's Xiphos
			}),
		})),
	})),
})));
