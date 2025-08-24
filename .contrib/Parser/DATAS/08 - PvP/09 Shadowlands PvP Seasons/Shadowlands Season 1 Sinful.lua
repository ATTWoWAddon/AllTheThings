-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.SL, {
	n(SEASON_SINFUL, bubbleDownSelf({
		["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0, ADDED_10_0_2_LAUNCH },
	},{
		n(ACHIEVEMENTS, bubbleDown({ ["timeline"] = { ADDED_9_0_2, REMOVED_9_1_0 } }, {
			ach(14685),		-- Combatant: Shadowlands Season 1
			ach(14686),		-- Challenger: Shadowlands Season 1
			ach(14687),		-- Rival: Shadowlands Season 1
			ach(14688, {	-- Duelist: Shadowlands Season 1
				ill(6266),	-- Sinful Flame (ILLUSION!)
				i(180424),	-- Sinful Gladiator's Prestigious Cloak
			}),
			ach(14691, {	-- Elite: Shadowlands Season 1
				i(180431),	-- Sinful Gladiator's Tabard
			}),
			ach(14689, {	-- Gladiator: Shadowlands Season 1
				i(183937),	-- Sinful Gladiator's Soul Eater (MOUNT!)
			}),
			ach(14816),		-- Sinful Gladiator's Soul Eater
			ach(14690, {	-- Sinful Gladiator: Shadowlands Season 1
				title(434),	-- Sinful Gladiator <Name>
			}),
			-- RBG
			ach(14692, {	-- Hero of the Alliance: Sinful
				["races"] = ALLIANCE_ONLY,
			}),
			ach(14693, {	-- Hero of the Horde: Sinful
				["races"] = HORDE_ONLY,
			}),
			-- Fashion
			ach(14831, {	-- I Live, I Die, I Queue Again
				["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0, ADDED_10_0_2_LAUNCH }
			}),
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 } }, {
			i(184014, {	-- Vicious War Spider [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(184013, {	-- Vicious War Spider [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_ASPIRANT, {
			n(164095, {	-- Purveyor Zo'kuul <Assessor of Conflict>
				["coord"] = { 36.0, 58.6, ORIBOS },
				["groups"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_10_0_2_LAUNCH },
				}, {
					iensemble(201878, {	-- Arsenal: Sinful Aspirant's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(201868, {	-- Ensemble: Sinful Aspirant's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(201867, {	-- Ensemble: Sinful Aspirant's Leather Armor
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(201866, {	-- Ensemble: Sinful Aspirant's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(201865, {	-- Ensemble: Sinful Aspirant's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(164095, {	-- Purveyor Zo'kuul <Assessor of Conflict>
				["coord"] = { 36.0, 58.6, ORIBOS },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 } }, {
					filter(BACK_F, {
						honor(525, i(178301)),	-- Sinful Aspirant's Cape
						honor(525, i(175851)),	-- Sinful Aspirant's Cloak
						honor(525, i(178265)),	-- Sinful Aspirant's Drape
					}),
					filter(CLOTH, {
						honor(700, i(175876)),	-- Sinful Aspirant's Silk Cord
						honor(700, i(175862)),	-- Sinful Aspirant's Silk Gloves
						honor(875, i(175864)),	-- Sinful Aspirant's Silk Hood
						honor(875, i(175868)),	-- Sinful Aspirant's Silk Leggings
						honor(700, i(175873)),	-- Sinful Aspirant's Silk Mantle
						honor(875, i(175852)),	-- Sinful Aspirant's Silk Robe
						honor(700, i(175857)),	-- Sinful Aspirant's Silk Treads
						honor(525, i(175880)),	-- Sinful Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(178293)),	-- Sinful Aspirant's Band
						honor(525, i(175879)),	-- Sinful Aspirant's Ring
						honor(525, i(178329)),	-- Sinful Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(700, i(175878)),	-- Sinful Aspirant's Leather Belt
						honor(700, i(175859)),	-- Sinful Aspirant's Leather Boots
						honor(875, i(175870)),	-- Sinful Aspirant's Leather Breeches
						honor(700, i(175860)),	-- Sinful Aspirant's Leather Gloves
						honor(875, i(175866)),	-- Sinful Aspirant's Leather Helm
						honor(700, i(175871)),	-- Sinful Aspirant's Leather Spaulders
						honor(875, i(175855)),	-- Sinful Aspirant's Leather Vest
						honor(525, i(175883)),	-- Sinful Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(175877)),	-- Sinful Aspirant's Chain Belt
						honor(700, i(175863)),	-- Sinful Aspirant's Chain Gauntlets
						honor(875, i(175865)),	-- Sinful Aspirant's Chain Helm
						honor(875, i(175869)),	-- Sinful Aspirant's Chain Leggings
						honor(700, i(175858)),	-- Sinful Aspirant's Chain Sabatons
						honor(700, i(175874)),	-- Sinful Aspirant's Chain Spaulders
						honor(875, i(175854)),	-- Sinful Aspirant's Chain Vest
						honor(525, i(175882)),	-- Sinful Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(178299)),	-- Sinful Aspirant's Choker
						honor(525, i(175885)),	-- Sinful Aspirant's Necklace
						honor(525, i(178335)),	-- Sinful Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(175853)),	-- Sinful Aspirant's Plate Chestplate
						honor(525, i(175881)),	-- Sinful Aspirant's Plate Cuffs
						honor(700, i(175861)),	-- Sinful Aspirant's Plate Gauntlets
						honor(700, i(175875)),	-- Sinful Aspirant's Plate Girdle
						honor(875, i(175850)),	-- Sinful Aspirant's Plate Helm
						honor(875, i(175867)),	-- Sinful Aspirant's Plate Legguards
						honor(700, i(175872)),	-- Sinful Aspirant's Plate Shoulders
						honor(700, i(175856)),	-- Sinful Aspirant's Plate Warboots
					}),
					filter(TRINKET_F, {
						honor(525, i(175884)),	-- Sinful Aspirant's Badge of Ferocity
						honor(525, i(178334)),	-- Sinful Aspirant's Emblem
						honor(525, i(178298)),	-- Sinful Aspirant's Insignia of Alacrity
						honor(525, i(184052)),	-- Sinful Aspirant's Medallion
						honor(525, i(184053)),	-- Sinful Aspirant's Relentless Brooch
						honor(525, i(184054)),	-- Sinful Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(425, i(178490)),	-- Sinful Aspirant's Barrier
						honor(875, i(178468)),	-- Sinful Aspirant's Battleaxe
						honor(875, i(183433)),	-- Sinful Aspirant's Blackjack
						honor(875, i(178670)),	-- Sinful Aspirant's Blade
						honor(1325, i(183435)),	-- Sinful Aspirant's Crescent
						honor(875, i(178470)),	-- Sinful Aspirant's Dagger
						honor(1325, i(178481)),	-- Sinful Aspirant's Gavel
						honor(1750, i(178475)),	-- Sinful Aspirant's Greataxe
						honor(1750, i(178476)),	-- Sinful Aspirant's Greatsword
						honor(875, i(178663)),	-- Sinful Aspirant's Hatchet
						honor(1750, i(178668)),	-- Sinful Aspirant's Longspear
						honor(875, i(178471)),	-- Sinful Aspirant's Mace
						honor(425, i(178478)),	-- Sinful Aspirant's Orb
						honor(1750, i(178472)),	-- Sinful Aspirant's Polearm
						honor(1750, i(178664)),	-- Sinful Aspirant's Recurve
						honor(1750, i(178473)),	-- Sinful Aspirant's Staff
						honor(875, i(178474)),	-- Sinful Aspirant's Sword
						honor(875, i(178479)),	-- Sinful Aspirant's Warglaive
					}),
				}),
			}),
		}),
		n(PVP_GLADIATOR, {
			n(168011, {	-- Zo'sorg <Master of Conflict>
				["coord"] = { 35.0, 57.6, ORIBOS },
				["groups"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_10_0_2_LAUNCH },
				}, {
					iensemble(201882, {	-- Arsenal: Sinful Gladiator's Ardenweald Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(201881, {	-- Arsenal: Sinful Gladiator's Bastion Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(201880, {	-- Arsenal: Sinful Gladiator's Maldraxxus Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(201879, {	-- Arsenal: Sinful Gladiator's Revendreth Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(201872, {	-- Ensemble: Sinful Gladiator's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(201871, {	-- Ensemble: Sinful Gladiator's Leather Armor
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(201870, {	-- Ensemble: Sinful Gladiator's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(201869, {	-- Ensemble: Sinful Gladiator's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(168011, {	-- Zo'sorg <Master of Conflict>
				["coord"] = { 35.0, 57.6, ORIBOS },
				["groups"] = bubbleDown({ ["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 } }, {
					filter(BACK_F, {
						conquest(525, i(175888)),	-- Sinful Gladiator's Cloak
						conquest(525, i(178353)),	-- Sinful Gladiator's Drape
						conquest(525, i(184311)),	-- Sinful Gladiator's Greatcloak
						conquest(525, i(178414)),	-- Sinful Gladiator's Shawl
					}),
					filter(CLOTH, {
						conquest(700, i(178375)),	-- Sinful Gladiator's Silk Amice
						conquest(525, i(178382)),	-- Sinful Gladiator's Silk Armbands
						conquest(700, i(178378)),	-- Sinful Gladiator's Silk Belt
						conquest(700, i(175913)),	-- Sinful Gladiator's Silk Cord
						conquest(700, i(175899)),	-- Sinful Gladiator's Silk Gloves
						conquest(875, i(178366)),	-- Sinful Gladiator's Silk Guise
						conquest(700, i(178364)),	-- Sinful Gladiator's Silk Handwraps
						conquest(875, i(175901)),	-- Sinful Gladiator's Silk Hood
						conquest(875, i(175905)),	-- Sinful Gladiator's Silk Leggings
						conquest(700, i(175910)),	-- Sinful Gladiator's Silk Mantle
						conquest(875, i(175889)),	-- Sinful Gladiator's Silk Robe
						conquest(700, i(175894)),	-- Sinful Gladiator's Silk Slippers
						conquest(700, i(178359)),	-- Sinful Gladiator's Silk Treads
						conquest(875, i(178370)),	-- Sinful Gladiator's Silk Trousers
						conquest(875, i(178354)),	-- Sinful Gladiator's Silk Vestments
						conquest(525, i(175917)),	-- Sinful Gladiator's Silk Wristwraps
					}),
					filter(FINGER_F, {
						conquest(525, i(178381)),	-- Sinful Gladiator's Band
						conquest(525, i(175916)),	-- Sinful Gladiator's Ring
						conquest(525, i(178442)),	-- Sinful Gladiator's Signet
					}),
					filter(LEATHER, {
						conquest(700, i(175915)),	-- Sinful Gladiator's Leather Belt
						conquest(700, i(175896)),	-- Sinful Gladiator's Leather Boots
						conquest(875, i(175907)),	-- Sinful Gladiator's Leather Breeches
						conquest(700, i(175897)),	-- Sinful Gladiator's Leather Gloves
						conquest(700, i(178362)),	-- Sinful Gladiator's Leather Grips
						conquest(875, i(175903)),	-- Sinful Gladiator's Leather Helm
						conquest(875, i(178357)),	-- Sinful Gladiator's Leather Jerkin
						conquest(875, i(178372)),	-- Sinful Gladiator's Leather Legwraps
						conquest(875, i(178368)),	-- Sinful Gladiator's Leather Mask
						conquest(700, i(178373)),	-- Sinful Gladiator's Leather Shoulderpads
						conquest(700, i(175908)),	-- Sinful Gladiator's Leather Spaulders
						conquest(700, i(178380)),	-- Sinful Gladiator's Leather Strap
						conquest(700, i(178361)),	-- Sinful Gladiator's Leather Treads
						conquest(875, i(175892)),	-- Sinful Gladiator's Leather Vest
						conquest(525, i(178385)),	-- Sinful Gladiator's Leather Wristguards
						conquest(525, i(175920)),	-- Sinful Gladiator's Leather Wristwraps
					}),
					filter(MAIL, {
						conquest(700, i(175914)),	-- Sinful Gladiator's Chain Belt
						conquest(700, i(178360)),	-- Sinful Gladiator's Chain Boots
						conquest(525, i(178384)),	-- Sinful Gladiator's Chain Bracers
						conquest(875, i(178371)),	-- Sinful Gladiator's Chain Breeches
						conquest(875, i(178367)),	-- Sinful Gladiator's Chain Faceguard
						conquest(700, i(175900)),	-- Sinful Gladiator's Chain Gauntlets
						conquest(700, i(178379)),	-- Sinful Gladiator's Chain Girdle
						conquest(700, i(178365)),	-- Sinful Gladiator's Chain Handguards
						conquest(875, i(175902)),	-- Sinful Gladiator's Chain Helm
						conquest(875, i(175906)),	-- Sinful Gladiator's Chain Leggings
						conquest(700, i(175911)),	-- Sinful Gladiator's Chain Monnion
						conquest(700, i(175895)),	-- Sinful Gladiator's Chain Sabatons
						conquest(700, i(178376)),	-- Sinful Gladiator's Chain Shoulderguard
						conquest(875, i(178356)),	-- Sinful Gladiator's Chain Tunic
						conquest(875, i(175891)),	-- Sinful Gladiator's Chain Vest
						conquest(525, i(175919)),	-- Sinful Gladiator's Chain Wristguards
					}),
					filter(NECK_F, {
						conquest(525, i(178448)),	-- Sinful Gladiator's Amulet
						conquest(525, i(175922)),	-- Sinful Gladiator's Necklace
						conquest(525, i(178387)),	-- Sinful Gladiator's Pendant
					}),
					filter(PLATE, {
						conquest(875, i(175890)),	-- Sinful Gladiator's Plate Chestguard
						conquest(875, i(178355)),	-- Sinful Gladiator's Plate Chestplate
						conquest(700, i(175898)),	-- Sinful Gladiator's Plate Gauntlets
						conquest(700, i(175912)),	-- Sinful Gladiator's Plate Girdle
						conquest(700, i(178377)),	-- Sinful Gladiator's Plate Greatbelt
						conquest(700, i(178363)),	-- Sinful Gladiator's Plate Handguards
						conquest(875, i(175887)),	-- Sinful Gladiator's Plate Helm
						conquest(875, i(178352)),	-- Sinful Gladiator's Plate Helmet
						conquest(875, i(175904)),	-- Sinful Gladiator's Plate Legguards
						conquest(700, i(178374)),	-- Sinful Gladiator's Plate Pauldrons
						conquest(700, i(175909)),	-- Sinful Gladiator's Plate Shoulders
						conquest(700, i(178358)),	-- Sinful Gladiator's Plate Stompers
						conquest(525, i(178383)),	-- Sinful Gladiator's Plate Vambraces
						conquest(700, i(175893)),	-- Sinful Gladiator's Plate Warboots
						conquest(875, i(178369)),	-- Sinful Gladiator's Plate Wargreaves
						conquest(525, i(175918)),	-- Sinful Gladiator's Plate Wristguards
						conquest(525, i(181335)),	-- Sinful Gladiator's Relentless Brooch
					}),
					filter(TRINKET_F, {
						conquest(700, i(175921)),	-- Sinful Gladiator's Badge of Ferocity
						conquest(700, i(178447)),	-- Sinful Gladiator's Emblem
						conquest(700, i(178386)),	-- Sinful Gladiator's Insignia of Alacrity
						conquest(525, i(181333)),	-- Sinful Gladiator's Medallion
						conquest(525, i(181816)),	-- Sinful Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						n(KYRIAN, sharedData({ ["customCollect"] = { "SL_COV_KYR" } }, {
							conquest(1350, i(177851)),	-- Sinful Gladiator's Ceremonial Sword
							conquest(450, i(177866)),	-- Sinful Gladiator's Chalice
							conquest(1800, i(184549)),	-- Sinful Gladiator's Dory
							conquest(900, i(177846)),	-- Sinful Gladiator's Gladius
							conquest(1800, i(180313)),	-- Sinful Gladiator's Greatmallet
							conquest(450, i(174311)),	-- Sinful Gladiator's Guard
							conquest(900, i(184546)),	-- Sinful Gladiator's Hacker
							conquest(900, i(177861)),	-- Sinful Gladiator's Knife
							conquest(1800, i(177856)),	-- Sinful Gladiator's Lightbow
							conquest(1350, i(184548)),	-- Sinful Gladiator's Ritual Dagger
							conquest(900, i(174299)),	-- Sinful Gladiator's Splitter
							conquest(1800, i(178971)),	-- Sinful Gladiator's Vesper
							conquest(900, i(184237)),	-- Sinful Gladiator's Warglaive
							conquest(900, i(184547)),	-- Sinful Gladiator's Xiphos
						})),
						n(NECROLORD, sharedData({ ["customCollect"] = { "SL_COV_NEC" } }, {
							conquest(1800, i(183446)),	-- Sinful Gladiator's Cleaver
							conquest(450, i(183439)),	-- Sinful Gladiator's Crystal
							conquest(1350, i(183449)),	-- Sinful Gladiator's Gavel
							conquest(1800, i(183447)),	-- Sinful Gladiator's Glaive
							conquest(900, i(183448)),	-- Sinful Gladiator's Hacker
							conquest(1800, i(184574)),	-- Sinful Gladiator's Necrostave
							conquest(450, i(183438)),	-- Sinful Gladiator's Redoubt
							conquest(1800, i(183445)),	-- Sinful Gladiator's Rifle
							conquest(1350, i(183443)),	-- Sinful Gladiator's Sacrificial Dagger
							conquest(900, i(183437)),	-- Sinful Gladiator's Shanker
							conquest(900, i(183440)),	-- Sinful Gladiator's Splitter
							conquest(900, i(183441)),	-- Sinful Gladiator's Warglaive
						})),
						n(NIGHT_FAE, sharedData({ ["customCollect"] = { "SL_COV_NFA" } }, {
							conquest(1800, i(179543)),	-- Sinful Gladiator's Bludgeon
							conquest(450, i(179609)),	-- Sinful Gladiator's Bulwark
							conquest(900, i(180261)),	-- Sinful Gladiator's Edge
							conquest(900, i(179495)),	-- Sinful Gladiator's Fang
							conquest(900, i(179578)),	-- Sinful Gladiator's Jaws
							conquest(450, i(179569)),	-- Sinful Gladiator's Lyre
							conquest(1350, i(179559)),	-- Sinful Gladiator's Scepter
							conquest(900, i(182349)),	-- Sinful Gladiator's Shillelagh
							conquest(1800, i(179526)),	-- Sinful Gladiator's Spear
							conquest(1800, i(180004)),	-- Sinful Gladiator's Staff
							conquest(1350, i(180019)),	-- Sinful Gladiator's Wand
							conquest(1800, i(180081)),	-- Sinful Gladiator's Warbow
						})),
						n(VENTHYR, sharedData({ ["customCollect"] = { "SL_COV_VEN" } }, {
							conquest(1800, i(182406)),	-- Sinful Gladiator's Battlestave
							conquest(1800, i(182402)),	-- Sinful Gladiator's Crusaderblade
							conquest(900, i(182403)),	-- Sinful Gladiator's Gargoyle Claw
							conquest(450, i(182412)),	-- Sinful Gladiator's Redoubt
							conquest(1800, i(182411)),	-- Sinful Gladiator's Repeating Crossbow
							conquest(900, i(184568)),	-- Sinful Gladiator's Shortblade
							conquest(1350, i(182409)),	-- Sinful Gladiator's Sineater Blade
							conquest(1350, i(182404)),	-- Sinful Gladiator's Sineater Gavel
							conquest(900, i(182401)),	-- Sinful Gladiator's Sinedged Dirk
							conquest(450, i(182413)),	-- Sinful Gladiator's Spell Foci
							conquest(900, i(182408)),	-- Sinful Gladiator's Swordbreaker
							conquest(1800, i(182405)),	-- Sinful Gladiator's Torch Staff
							conquest(900, i(182407)),	-- Sinful Gladiator's Wingblade
							conquest(900, i(182410)),	-- Sinful Gladiator's Wingglaive
						})),
					}),
				}),
			}),
		}),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH, REMOVED_9_1_0 }, ["modID"] = 45 }, {
			filter(BACK_F, {
				i(175888),	-- Sinful Gladiator's Cloak
				i(178353),	-- Sinful Gladiator's Drape
				i(184311),	-- Sinful Gladiator's Greatcloak
				i(178414),	-- Sinful Gladiator's Shawl
			}),
			filter(CLOTH, {
				i(178375),	-- Sinful Gladiator's Silk Amice
				i(178382),	-- Sinful Gladiator's Silk Armbands
				i(178378),	-- Sinful Gladiator's Silk Belt
				i(175913),	-- Sinful Gladiator's Silk Cord
				i(175899),	-- Sinful Gladiator's Silk Gloves
				i(178366),	-- Sinful Gladiator's Silk Guise
				i(178364),	-- Sinful Gladiator's Silk Handwraps
				i(175901),	-- Sinful Gladiator's Silk Hood
				i(175905),	-- Sinful Gladiator's Silk Leggings
				i(175910),	-- Sinful Gladiator's Silk Mantle
				i(175889),	-- Sinful Gladiator's Silk Robe
				i(175894),	-- Sinful Gladiator's Silk Slippers
				i(178359),	-- Sinful Gladiator's Silk Treads
				i(178370),	-- Sinful Gladiator's Silk Trousers
				i(178354),	-- Sinful Gladiator's Silk Vestments
				i(175917),	-- Sinful Gladiator's Silk Wristwraps
			}),
			filter(FINGER_F, {
				i(178381),	-- Sinful Gladiator's Band
				i(175916),	-- Sinful Gladiator's Ring
				i(178442),	-- Sinful Gladiator's Signet
			}),
			filter(LEATHER, {
				i(175915),	-- Sinful Gladiator's Leather Belt
				i(175896),	-- Sinful Gladiator's Leather Boots
				i(175907),	-- Sinful Gladiator's Leather Breeches
				i(175897),	-- Sinful Gladiator's Leather Gloves
				i(178362),	-- Sinful Gladiator's Leather Grips
				i(175903),	-- Sinful Gladiator's Leather Helm
				i(178357),	-- Sinful Gladiator's Leather Jerkin
				i(178372),	-- Sinful Gladiator's Leather Legwraps
				i(178368),	-- Sinful Gladiator's Leather Mask
				i(178373),	-- Sinful Gladiator's Leather Shoulderpads
				i(175908),	-- Sinful Gladiator's Leather Spaulders
				i(178380),	-- Sinful Gladiator's Leather Strap
				i(178361),	-- Sinful Gladiator's Leather Treads
				i(175892),	-- Sinful Gladiator's Leather Vest
				i(178385),	-- Sinful Gladiator's Leather Wristguards
				i(175920),	-- Sinful Gladiator's Leather Wristwraps
			}),
			filter(MAIL, {
				i(175914),	-- Sinful Gladiator's Chain Belt
				i(178360),	-- Sinful Gladiator's Chain Boots
				i(178384),	-- Sinful Gladiator's Chain Bracers
				i(178371),	-- Sinful Gladiator's Chain Breeches
				i(178367),	-- Sinful Gladiator's Chain Faceguard
				i(175900),	-- Sinful Gladiator's Chain Gauntlets
				i(178379),	-- Sinful Gladiator's Chain Girdle
				i(178365),	-- Sinful Gladiator's Chain Handguards
				i(175902),	-- Sinful Gladiator's Chain Helm
				i(175906),	-- Sinful Gladiator's Chain Leggings
				i(175911),	-- Sinful Gladiator's Chain Monnion
				i(175895),	-- Sinful Gladiator's Chain Sabatons
				i(178376),	-- Sinful Gladiator's Chain Shoulderguard
				i(178356),	-- Sinful Gladiator's Chain Tunic
				i(175891),	-- Sinful Gladiator's Chain Vest
				i(175919),	-- Sinful Gladiator's Chain Wristguards
			}),
			filter(NECK_F, {
				i(178448),	-- Sinful Gladiator's Amulet
				i(175922),	-- Sinful Gladiator's Necklace
				i(178387),	-- Sinful Gladiator's Pendant
			}),
			filter(PLATE, {
				i(175890),	-- Sinful Gladiator's Plate Chestguard
				i(178355),	-- Sinful Gladiator's Plate Chestplate
				i(175898),	-- Sinful Gladiator's Plate Gauntlets
				i(175912),	-- Sinful Gladiator's Plate Girdle
				i(178377),	-- Sinful Gladiator's Plate Greatbelt
				i(178363),	-- Sinful Gladiator's Plate Handguards
				i(175887),	-- Sinful Gladiator's Plate Helm
				i(178352),	-- Sinful Gladiator's Plate Helmet
				i(175904),	-- Sinful Gladiator's Plate Legguards
				i(178374),	-- Sinful Gladiator's Plate Pauldrons
				i(175909),	-- Sinful Gladiator's Plate Shoulders
				i(178358),	-- Sinful Gladiator's Plate Stompers
				i(178383),	-- Sinful Gladiator's Plate Vambraces
				i(175893),	-- Sinful Gladiator's Plate Warboots
				i(178369),	-- Sinful Gladiator's Plate Wargreaves
				i(175918),	-- Sinful Gladiator's Plate Wristguards
			}),
			filter(TRINKET_F, {
				i(175921),	-- Sinful Gladiator's Badge of Ferocity
				i(178447),	-- Sinful Gladiator's Emblem
				i(178386),	-- Sinful Gladiator's Insignia of Alacrity
				i(181333),	-- Sinful Gladiator's Medallion
				i(181335),	-- Sinful Gladiator's Relentless Brooch
				i(181816),	-- Sinful Gladiator's Sigil of Adaptation
			}),
			n(WEAPONS, {
				n(KYRIAN, sharedData({["customCollect"] = { "SL_COV_KYR" }}, {
					i(177851),	-- Sinful Gladiator's Ceremonial Sword
					i(184549),	-- Sinful Gladiator's Dory
					i(177846),	-- Sinful Gladiator's Gladius
					i(180313),	-- Sinful Gladiator's Greatmallet
					i(174311),	-- Sinful Gladiator's Guard
					i(184546),	-- Sinful Gladiator's Hacker
					i(177861),	-- Sinful Gladiator's Knife
					i(177856),	-- Sinful Gladiator's Lightbow
					i(184548),	-- Sinful Gladiator's Ritual Dagger
					i(174299),	-- Sinful Gladiator's Splitter
					i(178971),	-- Sinful Gladiator's Vesper
					i(184237),	-- Sinful Gladiator's Warglaive
					i(184547),	-- Sinful Gladiator's Xiphos
				})),
				n(NECROLORD, sharedData({["customCollect"] = { "SL_COV_NEC" }}, {
					i(183446),	-- Sinful Gladiator's Cleaver
					i(183439),	-- Sinful Gladiator's Crystal
					i(183449),	-- Sinful Gladiator's Gavel
					i(183447),	-- Sinful Gladiator's Glaive
					i(183448),	-- Sinful Gladiator's Hacker
					i(184574),	-- Sinful Gladiator's Necrostave
					i(183438),	-- Sinful Gladiator's Redoubt
					i(183445),	-- Sinful Gladiator's Rifle
					i(183443),	-- Sinful Gladiator's Sacrificial Dagger
					i(183437),	-- Sinful Gladiator's Shanker
					i(183440),	-- Sinful Gladiator's Splitter
					i(183441),	-- Sinful Gladiator's Warglaive
				})),
				n(NIGHT_FAE, sharedData({["customCollect"] = { "SL_COV_NFA" }}, {
					i(179543),	-- Sinful Gladiator's Bludgeon
					i(179609),	-- Sinful Gladiator's Bulwark
					i(180261),	-- Sinful Gladiator's Edge
					i(179495),	-- Sinful Gladiator's Fang
					i(179578),	-- Sinful Gladiator's Jaws
					i(179569),	-- Sinful Gladiator's Lyre
					i(179559),	-- Sinful Gladiator's Scepter
					i(182349),	-- Sinful Gladiator's Shillelagh
					i(179526),	-- Sinful Gladiator's Spear
					i(180004),	-- Sinful Gladiator's Staff
					i(180019),	-- Sinful Gladiator's Wand
					i(180081),	-- Sinful Gladiator's Warbow
				})),
				n(VENTHYR, sharedData({["customCollect"] = { "SL_COV_VEN" }}, {
					i(182406),	-- Sinful Gladiator's Battlestave
					i(182402),	-- Sinful Gladiator's Crusaderblade
					i(182403),	-- Sinful Gladiator's Gargoyle Claw
					i(182412),	-- Sinful Gladiator's Redoubt
					i(182411),	-- Sinful Gladiator's Repeating Crossbow
					i(184568),	-- Sinful Gladiator's Shortblade
					i(182409),	-- Sinful Gladiator's Sineater Blade
					i(182404),	-- Sinful Gladiator's Sineater Gavel
					i(182401),	-- Sinful Gladiator's Sinedged Dirk
					i(182413),	-- Sinful Gladiator's Spell Foci
					i(182408),	-- Sinful Gladiator's Swordbreaker
					i(182405),	-- Sinful Gladiator's Torch Staff
					i(182407),	-- Sinful Gladiator's Wingblade
					i(182410),	-- Sinful Gladiator's Wingglaive
				})),
			}),
		})),
	})),
})));
