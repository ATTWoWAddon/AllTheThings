-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(SEASON_CRIMSON, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {
			ach(15943, {	-- Crimson Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(15942, {	-- Crimson Combatant [H]
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(15960),		-- Combatant I: Dragonflight Season 1
			ach(15961),		-- Combatant II: Dragonflight Season 1
			ach(15955),		-- Challenger I: Dragonflight Season 1
			ach(15956),		-- Challenger II: Dragonflight Season 1
			ach(15952),		-- Rival I: Dragonflight Season 1
			ach(15953),		-- Rival II: Dragonflight Season 1
			ach(15954, {	-- Duelist: Dragonflight Season 1
				ill(6786, {["timeline"] = { ADDED_10_0_7, REMOVED_10_1_0 }}),	-- Primal Storm (ILLUSION!)
				i(202089, {["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 }}),	-- Crimson Gladiator's Prestigious Cloak
			}),
			ach(15984),		-- Elite: Dragonflight Season 1
			ach(15957, {	-- Gladiator: Dragonflight Season 1
				i(202086),	-- Crimson Gladiator's Drake (MOUNT!)
				i(201792),	-- Highland Drake: Embodiment of the Crimson Gladiator (MM!)
			}),
			ach(16730),		-- Crimson Gladiator's Drake
			ach(15951, {	-- Crimson Gladiator: Dragonflight Season 1
				title(468),	-- Crimson Gladiator <Name>
			}),
			-- RBG
			ach(15959, {	-- Hero of the Alliance: Crimson
				["races"] = ALLIANCE_ONLY,
			}),
			ach(15958, {	-- Hero of the Horde: Crimson
				["races"] = HORDE_ONLY,
			}),
			-- Solo
			ach(17339, {	-- Crimson Legend: Dragonflight Season 1
				i(206343, {		-- Crimson Legend's Pennant (TOY!)
					["timeline"] = { ADDED_10_1_0, REMOVED_10_1_0 },
				}),
			}),
			ach(16734, {	-- Crimson Soloist: Dragonflight Season 1
				title(482),	-- Crimson Soloist <Name>
			}),
			-- Fashion
			ach(16764),	-- Crimson Carpet Fashion
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 } }, {
			i(201789, {	-- Vicious Sabertooth [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(201788, {	-- Vicious Sabertooth [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, {
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({ ["timeline"] = { ADDED_10_2_0 } }, {
					-- #if AFTER TWW
					moh(5, iensemble(211148)),	-- Arsenal: Drakebreaker's Axe
					moh(5, iensemble(211144)),	-- Arsenal: Drakebreaker's Club
					moh(5, iensemble(211153)),	-- Arsenal: Drakebreaker's Greatsword
					moh(5, iensemble(211157)),	-- Arsenal: Drakebreaker's Gun
					moh(5, iensemble(211146)),	-- Arsenal: Drakebreaker's Knife
					moh(5, iensemble(211155)),	-- Arsenal: Drakebreaker's Offhand
					moh(5, iensemble(211152)),	-- Arsenal: Drakebreaker's Polearm
					moh(5, iensemble(211150)),	-- Arsenal: Drakebreaker's Shield
					moh(5, iensemble(211143)),	-- Arsenal: Drakebreaker's Spiked Hammer
					moh(5, iensemble(211154)),	-- Arsenal: Drakebreaker's Stave
					moh(5, iensemble(211156)),	-- Arsenal: Drakebreaker's Wand
					moh(5, iensemble(211147)),	-- Arsenal: Drakebreaker's Warglaive
					moh(12, iensemble(211140)),	-- Ensemble: Drakebreaker's Cloth Armor
					moh(12, iensemble(211138)),	-- Ensemble: Drakebreaker's Leather Armor
					moh(12, iensemble(211135)),	-- Ensemble: Drakebreaker's Mail Armor
					moh(12, iensemble(211100)),	-- Ensemble: Drakebreaker's Plate Armor
					-- #endif
					filter(BACK_F, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(200, i(198960)),	-- Drakebreaker's Cape
						bloody(200, i(198961)),	-- Drakebreaker's Cloak
						bloody(200, i(198962)),	-- Drakebreaker's Shroud
						bloody(200, i(198959)),	-- Drakebreaker's Wrap
					})),
					filter(CLOTH, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(350, i(198566)),	-- Drakebreaker's Boots
						bloody(200, i(198570)),	-- Drakebreaker's Cord
						bloody(200, i(198571)),	-- Drakebreaker's Cuffs
						bloody(350, i(198567)),	-- Drakebreaker's Gloves
						bloody(500, i(198568)),	-- Drakebreaker's Hood
						bloody(500, i(198569)),	-- Drakebreaker's Leggings
						bloody(350, i(198572)),	-- Drakebreaker's Shoulderpads
						bloody(500, i(198565)),	-- Drakebreaker's Vestment
					})),
					filter(LEATHER, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(200, i(198578)),	-- Drakebreaker's Bindings
						bloody(500, i(198576)),	-- Drakebreaker's Breeches
						bloody(500, i(198575)),	-- Drakebreaker's Cowl
						bloody(350, i(198580)),	-- Drakebreaker's Epaulets
						bloody(350, i(198574)),	-- Drakebreaker's Handguards
						bloody(200, i(198577)),	-- Drakebreaker's Sash
						bloody(500, i(198579)),	-- Drakebreaker's Vest
						bloody(350, i(198573)),	-- Drakebreaker's Waders
					})),
					filter(MAIL, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(200, i(198596)),	-- Drakebreaker's Bracers
						bloody(500, i(198589)),	-- Drakebreaker's Chestguard
						bloody(200, i(198595)),	-- Drakebreaker's Cinch
						bloody(500, i(198592)),	-- Drakebreaker's Coif
						bloody(500, i(198593)),	-- Drakebreaker's Greaves
						bloody(350, i(198591)),	-- Drakebreaker's Grips
						bloody(350, i(198594)),	-- Drakebreaker's Shoulderguards
						bloody(350, i(198590)),	-- Drakebreaker's Striders
					})),
					filter(PLATE, sharedData({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(200, i(198588)),	-- Drakebreaker's Armplates
						bloody(500, i(198582)),	-- Drakebreaker's Breastplate
						bloody(350, i(198584)),	-- Drakebreaker's Gauntlets
						bloody(200, i(198587)),	-- Drakebreaker's Girdle
						bloody(500, i(198581)),	-- Drakebreaker's Helm
						bloody(500, i(198585)),	-- Drakebreaker's Legguards
						bloody(350, i(198586)),	-- Drakebreaker's Mantle
						bloody(350, i(198583)),	-- Drakebreaker's Sabatons
					})),
					n(WEAPONS, sharedDataSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_2_0 } }, {
						bloody(800, i(199084)),	-- Drakebreaker's Broadsword
						bloody(400, i(199089)),	-- Drakebreaker's Bulwark
						bloody(400, i(199070)),	-- Drakebreaker's Cleaver
						bloody(400, i(199095)),	-- Drakebreaker's Crusher
						bloody(400, i(199088)),	-- Drakebreaker's Cudgel
						bloody(500, i(199077)),	-- Drakebreaker's Dagger
						bloody(400, i(199076)),	-- Drakebreaker's Glaive
						bloody(800, i(199085)),	-- Drakebreaker's Greatsword
						bloody(400, i(199072)),	-- Drakebreaker's Hacker
						bloody(500, i(199071)),	-- Drakebreaker's Hatchet
						bloody(800, i(199075)),	-- Drakebreaker's Heartseeker
						bloody(300, i(199079)),	-- Drakebreaker's Horn
						bloody(800, i(199090)),	-- Drakebreaker's Impaler
						bloody(800, i(199091)),	-- Drakebreaker's Javelin
						bloody(500, i(199096)),	-- Drakebreaker's Mace
						bloody(400, i(199094)),	-- Drakebreaker's Mallet
						bloody(400, i(199087)),	-- Drakebreaker's Maul
						bloody(800, i(199082)),	-- Drakebreaker's Pole
						bloody(500, i(199093)),	-- Drakebreaker's Rod
						bloody(500, i(199086)),	-- Drakebreaker's Scepter
						bloody(400, i(199078)),	-- Drakebreaker's Shiv
						bloody(800, i(199081)),	-- Drakebreaker's Staff
					})),
				}),
			}),
			n(213989, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0 } }, {	-- Warkeeper Gresh
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = {
					-- #if BEFORE TWW
					bloody(500, iensemble(211148)),		-- Arsenal: Drakebreaker's Axe
					bloody(500, iensemble(211144)),		-- Arsenal: Drakebreaker's Club
					bloody(800, iensemble(211153)),		-- Arsenal: Drakebreaker's Greatsword
					bloody(500, iensemble(211157)),		-- Arsenal: Drakebreaker's Gun
					bloody(500, iensemble(211146)),		-- Arsenal: Drakebreaker's Knife
					bloody(300, iensemble(211155)),		-- Arsenal: Drakebreaker's Offhand
					bloody(800, iensemble(211152)),		-- Arsenal: Drakebreaker's Polearm
					bloody(300, iensemble(211150)),		-- Arsenal: Drakebreaker's Shield
					bloody(500, iensemble(211143)),		-- Arsenal: Drakebreaker's Spiked Hammer
					bloody(800, iensemble(211154)),		-- Arsenal: Drakebreaker's Stave
					bloody(500, iensemble(211156)),		-- Arsenal: Drakebreaker's Wand
					bloody(500, iensemble(211147)),		-- Arsenal: Drakebreaker's Warglaive
					bloody(3000, iensemble(211140)),	-- Ensemble: Drakebreaker's Cloth Armor
					bloody(3000, iensemble(211138)),	-- Ensemble: Drakebreaker's Leather Armor
					bloody(3000, iensemble(211135)),	-- Ensemble: Drakebreaker's Mail Armor
					bloody(3000, iensemble(211100)),	-- Ensemble: Drakebreaker's Plate Armor
					-- #endif
				},
			})),
		}),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0, ADDED_11_0_5 } }, {
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(230899, {	-- Arsenal: Crimson Aspirant's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230869, {	-- Ensemble: Crimson Aspirant's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(230870, {	-- Ensemble: Crimson Aspirant's Leather Armor
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(230871, {	-- Ensemble: Crimson Aspirant's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(230872, {	-- Ensemble: Crimson Aspirant's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
				},FILTERFUNC_itemID,{
					filter(BACK_F, {
						honor(525, i(201752)),	-- Crimson Aspirant's Cape
						honor(525, i(201750)),	-- Crimson Aspirant's Cloak
						honor(525, i(201751)),	-- Crimson Aspirant's Drape
						honor(525, i(201753)),	-- Crimson Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(201151)),	-- Crimson Aspirant's Silk Belt
						honor(525, i(201154)),	-- Crimson Aspirant's Silk Bindings
						honor(700, i(201118)),	-- Crimson Aspirant's Silk Cord
						honor(875, i(201139)),	-- Crimson Aspirant's Silk Cover
						honor(700, i(201131)),	-- Crimson Aspirant's Silk Footwraps
						honor(700, i(201104)),	-- Crimson Aspirant's Silk Gloves
						honor(700, i(201137)),	-- Crimson Aspirant's Silk Handwraps
						honor(875, i(201106)),	-- Crimson Aspirant's Silk Hood
						honor(875, i(201110)),	-- Crimson Aspirant's Silk Leggings
						honor(875, i(201143)),	-- Crimson Aspirant's Silk Legwraps
						honor(700, i(201115)),	-- Crimson Aspirant's Silk Mantle
						honor(700, i(201148)),	-- Crimson Aspirant's Silk Shawl
						honor(700, i(201099)),	-- Crimson Aspirant's Silk Treads
						honor(875, i(201094)),	-- Crimson Aspirant's Silk Tunic
						honor(875, i(201126)),	-- Crimson Aspirant's Silk Vest
						honor(525, i(201121)),	-- Crimson Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(201745)),	-- Crimson Aspirant's Band
						honor(525, i(201744)),	-- Crimson Aspirant's Ring
						honor(525, i(201746)),	-- Crimson Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(201157)),	-- Crimson Aspirant's Leather Armguards
						honor(700, i(201120)),	-- Crimson Aspirant's Leather Belt
						honor(700, i(201101)),	-- Crimson Aspirant's Leather Boots
						honor(875, i(201112)),	-- Crimson Aspirant's Leather Breeches
						honor(700, i(201153)),	-- Crimson Aspirant's Leather Cord
						honor(700, i(201133)),	-- Crimson Aspirant's Leather Footpads
						honor(700, i(201102)),	-- Crimson Aspirant's Leather Gloves
						honor(700, i(201135)),	-- Crimson Aspirant's Leather Grips
						honor(875, i(201108)),	-- Crimson Aspirant's Leather Helm
						honor(875, i(201145)),	-- Crimson Aspirant's Leather Leggings
						honor(700, i(201146)),	-- Crimson Aspirant's Leather Mantle
						honor(875, i(201141)),	-- Crimson Aspirant's Leather Mask
						honor(700, i(201113)),	-- Crimson Aspirant's Leather Spaulders
						honor(875, i(201129)),	-- Crimson Aspirant's Leather Tunic
						honor(875, i(201097)),	-- Crimson Aspirant's Leather Vest
						honor(525, i(201124)),	-- Crimson Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(201119)),	-- Crimson Aspirant's Chain Belt
						honor(525, i(201156)),	-- Crimson Aspirant's Chain Bracer
						honor(700, i(201152)),	-- Crimson Aspirant's Chain Clasp
						honor(700, i(201105)),	-- Crimson Aspirant's Chain Gauntlets
						honor(700, i(201138)),	-- Crimson Aspirant's Chain Handguards
						honor(875, i(201140)),	-- Crimson Aspirant's Chain Headguard
						honor(875, i(201107)),	-- Crimson Aspirant's Chain Helm
						honor(875, i(201111)),	-- Crimson Aspirant's Chain Leggings
						honor(700, i(201100)),	-- Crimson Aspirant's Chain Sabatons
						honor(700, i(201149)),	-- Crimson Aspirant's Chain Shoulderguards
						honor(700, i(201116)),	-- Crimson Aspirant's Chain Spaulders
						honor(700, i(201132)),	-- Crimson Aspirant's Chain Stompers
						honor(875, i(201128)),	-- Crimson Aspirant's Chain Tunic
						honor(875, i(201096)),	-- Crimson Aspirant's Chain Vest
						honor(875, i(201144)),	-- Crimson Aspirant's Chain Wargreaves
						honor(525, i(201123)),	-- Crimson Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(201748)),	-- Crimson Aspirant's Choker
						honor(525, i(201747)),	-- Crimson Aspirant's Necklace
						honor(525, i(201749)),	-- Crimson Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(525, i(201155)),	-- Crimson Aspirant's Plate Armguards
						honor(875, i(201127)),	-- Crimson Aspirant's Plate Armor
						honor(875, i(201095)),	-- Crimson Aspirant's Plate Chestplate
						honor(525, i(201122)),	-- Crimson Aspirant's Plate Cuffs
						honor(700, i(201103)),	-- Crimson Aspirant's Plate Gauntlets
						honor(700, i(201117)),	-- Crimson Aspirant's Plate Girdle
						honor(700, i(201150)),	-- Crimson Aspirant's Plate Greatbelt
						honor(700, i(201136)),	-- Crimson Aspirant's Plate Handguards
						honor(875, i(201125)),	-- Crimson Aspirant's Plate Headguard
						honor(875, i(201093)),	-- Crimson Aspirant's Plate Helm
						honor(875, i(201109)),	-- Crimson Aspirant's Plate Legguards
						honor(700, i(201147)),	-- Crimson Aspirant's Plate Pauldrons
						honor(700, i(201114)),	-- Crimson Aspirant's Plate Shoulders
						honor(700, i(201130)),	-- Crimson Aspirant's Plate Stompers
						honor(700, i(201098)),	-- Crimson Aspirant's Plate Warboots
						honor(875, i(201142)),	-- Crimson Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(201449)),	-- Crimson Aspirant's Badge of Ferocity
						honor(700, i(201452)),	-- Crimson Aspirant's Emblem
						honor(700, i(201451)),	-- Crimson Aspirant's Insignia of Alacrity
						honor(525, i(201450)),	-- Crimson Aspirant's Medallion
						honor(525, i(201453)),	-- Crimson Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(201760)),	-- Crimson Aspirant's Battleaxe
						honor(875, i(201965)),	-- Crimson Aspirant's Blade
						honor(875, i(201761)),	-- Crimson Aspirant's Dagger
						honor(1325, i(201768)),	-- Crimson Aspirant's Gavel
						honor(1750, i(201765)),	-- Crimson Aspirant's Greatsword
						honor(875, i(201773)),	-- Crimson Aspirant's Hammer
						honor(1325, i(201774)),	-- Crimson Aspirant's Knife
						honor(1750, i(201772)),	-- Crimson Aspirant's Longspear
						honor(875, i(201762)),	-- Crimson Aspirant's Mace
						honor(1750, i(201763)),	-- Crimson Aspirant's Polearm
						honor(1750, i(201964)),	-- Crimson Aspirant's Pulverizer
						honor(1750, i(201771)),	-- Crimson Aspirant's Recurve
						honor(875, i(201770)),	-- Crimson Aspirant's Ripper
						honor(425, i(201769)),	-- Crimson Aspirant's Shield
						honor(1750, i(201764)),	-- Crimson Aspirant's Staff
						honor(875, i(201963)),	-- Crimson Aspirant's Sword
						honor(425, i(201766)),	-- Crimson Aspirant's Torch
						honor(875, i(201767)),	-- Crimson Aspirant's Warglaive
					}),
				}),
			}),
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0, ADDED_11_0_5 } }, {
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(230900, {	-- Arsenal: Crimson Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230873, {	-- Ensemble: Crimson Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(230874, {	-- Ensemble: Crimson Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(230875, {	-- Ensemble: Crimson Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(230876, {	-- Ensemble: Crimson Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(230877, {	-- Ensemble: Crimson Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(230878, {	-- Ensemble: Crimson Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(230879, {	-- Ensemble: Crimson Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(230880, {	-- Ensemble: Crimson Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(230881, {	-- Ensemble: Crimson Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(230882, {	-- Ensemble: Crimson Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(230883, {	-- Ensemble: Crimson Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(230884, {	-- Ensemble: Crimson Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(230885, {	-- Ensemble: Crimson Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 },
				},FILTERFUNC_itemID,{
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(201911)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201912)),	-- Crimson Gladiator's Drape
							conquest(875, i(201520)),	-- Crimson Gladiator's Plate Chestguard
							conquest(875, i(201521)),	-- Crimson Gladiator's Plate Chestplate
							conquest(700, i(201524)),	-- Crimson Gladiator's Plate Gauntlets
							conquest(700, i(201532)),	-- Crimson Gladiator's Plate Girdle
							conquest(700, i(201533)),	-- Crimson Gladiator's Plate Greatbelt
							conquest(700, i(201525)),	-- Crimson Gladiator's Plate Handguards
							conquest(875, i(201526)),	-- Crimson Gladiator's Plate Helm
							conquest(875, i(201527)),	-- Crimson Gladiator's Plate Helmet
							conquest(875, i(201528)),	-- Crimson Gladiator's Plate Legguards
							conquest(700, i(201531)),	-- Crimson Gladiator's Plate Pauldrons
							conquest(700, i(201530)),	-- Crimson Gladiator's Plate Shoulders
							conquest(700, i(201523)),	-- Crimson Gladiator's Plate Stompers
							conquest(525, i(201535)),	-- Crimson Gladiator's Plate Vambraces
							conquest(700, i(201522)),	-- Crimson Gladiator's Plate Warboots
							conquest(875, i(201529)),	-- Crimson Gladiator's Plate Wargreaves
							conquest(525, i(201534)),	-- Crimson Gladiator's Plate Wristguards
							conquest(525, i(201913)),	-- Crimson Gladiator's Shawl
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(201890)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201891)),	-- Crimson Gladiator's Drape
							conquest(700, i(201580)),	-- Crimson Gladiator's Leather Belt
							conquest(700, i(201570)),	-- Crimson Gladiator's Leather Boots
							conquest(875, i(201576)),	-- Crimson Gladiator's Leather Breeches
							conquest(700, i(201572)),	-- Crimson Gladiator's Leather Gloves
							conquest(700, i(201573)),	-- Crimson Gladiator's Leather Grips
							conquest(875, i(201574)),	-- Crimson Gladiator's Leather Helm
							conquest(875, i(201569)),	-- Crimson Gladiator's Leather Jerkin
							conquest(875, i(201577)),	-- Crimson Gladiator's Leather Legwraps
							conquest(875, i(201575)),	-- Crimson Gladiator's Leather Mask
							conquest(700, i(201579)),	-- Crimson Gladiator's Leather Shoulderpads
							conquest(700, i(201578)),	-- Crimson Gladiator's Leather Spaulders
							conquest(700, i(201581)),	-- Crimson Gladiator's Leather Strap
							conquest(700, i(201571)),	-- Crimson Gladiator's Leather Treads
							conquest(875, i(201568)),	-- Crimson Gladiator's Leather Vest
							conquest(525, i(201583)),	-- Crimson Gladiator's Leather Wristguards
							conquest(525, i(201582)),	-- Crimson Gladiator's Leather Wristwraps
							conquest(525, i(201892)),	-- Crimson Gladiator's Shawl
						}),
						cl(DRUID, {
							conquest(525, i(201893)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201894)),	-- Crimson Gladiator's Drape
							conquest(700, i(201597)),	-- Crimson Gladiator's Leather Belt
							conquest(700, i(201587)),	-- Crimson Gladiator's Leather Boots
							conquest(875, i(201593)),	-- Crimson Gladiator's Leather Breeches
							conquest(700, i(201589)),	-- Crimson Gladiator's Leather Gloves
							conquest(700, i(201590)),	-- Crimson Gladiator's Leather Grips
							conquest(875, i(201591)),	-- Crimson Gladiator's Leather Helm
							conquest(875, i(201586)),	-- Crimson Gladiator's Leather Jerkin
							conquest(875, i(201594)),	-- Crimson Gladiator's Leather Legwraps
							conquest(875, i(201592)),	-- Crimson Gladiator's Leather Mask
							conquest(700, i(201596)),	-- Crimson Gladiator's Leather Shoulderpads
							conquest(700, i(201595)),	-- Crimson Gladiator's Leather Spaulders
							conquest(700, i(201598)),	-- Crimson Gladiator's Leather Strap
							conquest(700, i(201588)),	-- Crimson Gladiator's Leather Treads
							conquest(875, i(201585)),	-- Crimson Gladiator's Leather Vest
							conquest(525, i(201600)),	-- Crimson Gladiator's Leather Wristguards
							conquest(525, i(201599)),	-- Crimson Gladiator's Leather Wristwraps
							conquest(525, i(201895)),	-- Crimson Gladiator's Shawl
						}),
						cl(EVOKER, {
							conquest(700, i(201516)),	-- Crimson Gladiator's Chain Belt
							conquest(700, i(201507)),	-- Crimson Gladiator's Chain Boots
							conquest(525, i(201519)),	-- Crimson Gladiator's Chain Bracers
							conquest(875, i(201513)),	-- Crimson Gladiator's Chain Breeches
							conquest(875, i(201511)),	-- Crimson Gladiator's Chain Faceguard
							conquest(700, i(201508)),	-- Crimson Gladiator's Chain Gauntlets
							conquest(700, i(201517)),	-- Crimson Gladiator's Chain Girdle
							conquest(700, i(201509)),	-- Crimson Gladiator's Chain Handguards
							conquest(875, i(201510)),	-- Crimson Gladiator's Chain Helm
							conquest(875, i(201512)),	-- Crimson Gladiator's Chain Leggings
							conquest(700, i(201514)),	-- Crimson Gladiator's Chain Monnion
							conquest(700, i(201506)),	-- Crimson Gladiator's Chain Sabatons
							conquest(700, i(201515)),	-- Crimson Gladiator's Chain Shoulderguard
							conquest(875, i(201505)),	-- Crimson Gladiator's Chain Tunic
							conquest(875, i(201504)),	-- Crimson Gladiator's Chain Vest
							conquest(525, i(201518)),	-- Crimson Gladiator's Chain Wristguards
							conquest(525, i(201902)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201903)),	-- Crimson Gladiator's Drape
							conquest(525, i(201904)),	-- Crimson Gladiator's Shawl
						}),
						cl(HUNTER, {
							conquest(700, i(201646)),	-- Crimson Gladiator's Chain Belt
							conquest(700, i(201637)),	-- Crimson Gladiator's Chain Boots
							conquest(525, i(201649)),	-- Crimson Gladiator's Chain Bracers
							conquest(875, i(201643)),	-- Crimson Gladiator's Chain Breeches
							conquest(875, i(201641)),	-- Crimson Gladiator's Chain Faceguard
							conquest(700, i(201638)),	-- Crimson Gladiator's Chain Gauntlets
							conquest(700, i(201647)),	-- Crimson Gladiator's Chain Girdle
							conquest(700, i(201639)),	-- Crimson Gladiator's Chain Handguards
							conquest(875, i(201640)),	-- Crimson Gladiator's Chain Helm
							conquest(875, i(201642)),	-- Crimson Gladiator's Chain Leggings
							conquest(700, i(201644)),	-- Crimson Gladiator's Chain Monnion
							conquest(700, i(201636)),	-- Crimson Gladiator's Chain Sabatons
							conquest(700, i(201645)),	-- Crimson Gladiator's Chain Shoulderguard
							conquest(875, i(201635)),	-- Crimson Gladiator's Chain Tunic
							conquest(875, i(201634)),	-- Crimson Gladiator's Chain Vest
							conquest(525, i(201648)),	-- Crimson Gladiator's Chain Wristguards
							conquest(525, i(201905)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201906)),	-- Crimson Gladiator's Drape
							conquest(525, i(201907)),	-- Crimson Gladiator's Shawl
						}),
						cl(MAGE, {
							conquest(525, i(201797)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201798)),	-- Crimson Gladiator's Drape
							conquest(525, i(201799)),	-- Crimson Gladiator's Shawl
							conquest(700, i(201483)),	-- Crimson Gladiator's Silk Amice
							conquest(525, i(201487)),	-- Crimson Gladiator's Silk Armbands
							conquest(700, i(201485)),	-- Crimson Gladiator's Silk Belt
							conquest(875, i(201473)),	-- Crimson Gladiator's Silk Blouse
							conquest(700, i(201484)),	-- Crimson Gladiator's Silk Cord
							conquest(700, i(201476)),	-- Crimson Gladiator's Silk Gloves
							conquest(875, i(201479)),	-- Crimson Gladiator's Silk Guise
							conquest(700, i(201477)),	-- Crimson Gladiator's Silk Handwraps
							conquest(875, i(201478)),	-- Crimson Gladiator's Silk Hood
							conquest(875, i(201480)),	-- Crimson Gladiator's Silk Leggings
							conquest(700, i(201482)),	-- Crimson Gladiator's Silk Mantle
							conquest(700, i(201474)),	-- Crimson Gladiator's Silk Slippers
							conquest(700, i(201475)),	-- Crimson Gladiator's Silk Treads
							conquest(875, i(201481)),	-- Crimson Gladiator's Silk Trousers
							conquest(875, i(201472)),	-- Crimson Gladiator's Silk Tunic
							conquest(525, i(201486)),	-- Crimson Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(201896)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201897)),	-- Crimson Gladiator's Drape
							conquest(700, i(201614)),	-- Crimson Gladiator's Leather Belt
							conquest(700, i(201604)),	-- Crimson Gladiator's Leather Boots
							conquest(875, i(201610)),	-- Crimson Gladiator's Leather Breeches
							conquest(700, i(201606)),	-- Crimson Gladiator's Leather Gloves
							conquest(700, i(201607)),	-- Crimson Gladiator's Leather Grips
							conquest(875, i(201608)),	-- Crimson Gladiator's Leather Helm
							conquest(875, i(201603)),	-- Crimson Gladiator's Leather Jerkin
							conquest(875, i(201611)),	-- Crimson Gladiator's Leather Legwraps
							conquest(875, i(201609)),	-- Crimson Gladiator's Leather Mask
							conquest(700, i(201613)),	-- Crimson Gladiator's Leather Shoulderpads
							conquest(700, i(201612)),	-- Crimson Gladiator's Leather Spaulders
							conquest(700, i(201615)),	-- Crimson Gladiator's Leather Strap
							conquest(700, i(201605)),	-- Crimson Gladiator's Leather Treads
							conquest(875, i(201602)),	-- Crimson Gladiator's Leather Vest
							conquest(525, i(201617)),	-- Crimson Gladiator's Leather Wristguards
							conquest(525, i(201616)),	-- Crimson Gladiator's Leather Wristwraps
							conquest(525, i(201898)),	-- Crimson Gladiator's Shawl
						}),
						cl(PALADIN, {
							conquest(525, i(201914)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201915)),	-- Crimson Gladiator's Drape
							conquest(875, i(201665)),	-- Crimson Gladiator's Plate Chestguard
							conquest(875, i(201666)),	-- Crimson Gladiator's Plate Chestplate
							conquest(700, i(201669)),	-- Crimson Gladiator's Plate Gauntlets
							conquest(700, i(201677)),	-- Crimson Gladiator's Plate Girdle
							conquest(700, i(201678)),	-- Crimson Gladiator's Plate Greatbelt
							conquest(700, i(201670)),	-- Crimson Gladiator's Plate Handguards
							conquest(875, i(201671)),	-- Crimson Gladiator's Plate Helm
							conquest(875, i(201672)),	-- Crimson Gladiator's Plate Helmet
							conquest(875, i(201673)),	-- Crimson Gladiator's Plate Legguards
							conquest(700, i(201676)),	-- Crimson Gladiator's Plate Pauldrons
							conquest(700, i(201675)),	-- Crimson Gladiator's Plate Shoulders
							conquest(700, i(201668)),	-- Crimson Gladiator's Plate Stompers
							conquest(525, i(201680)),	-- Crimson Gladiator's Plate Vambraces
							conquest(700, i(201667)),	-- Crimson Gladiator's Plate Warboots
							conquest(875, i(201674)),	-- Crimson Gladiator's Plate Wargreaves
							conquest(525, i(201679)),	-- Crimson Gladiator's Plate Wristguards
							conquest(525, i(201916)),	-- Crimson Gladiator's Shawl
						}),
						cl(PRIEST, {
							conquest(525, i(201884)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201885)),	-- Crimson Gladiator's Drape
							conquest(525, i(201886)),	-- Crimson Gladiator's Shawl
							conquest(700, i(201547)),	-- Crimson Gladiator's Silk Amice
							conquest(525, i(201551)),	-- Crimson Gladiator's Silk Armbands
							conquest(700, i(201549)),	-- Crimson Gladiator's Silk Belt
							conquest(700, i(201548)),	-- Crimson Gladiator's Silk Cord
							conquest(700, i(201540)),	-- Crimson Gladiator's Silk Gloves
							conquest(875, i(201543)),	-- Crimson Gladiator's Silk Guise
							conquest(700, i(201541)),	-- Crimson Gladiator's Silk Handwraps
							conquest(875, i(201542)),	-- Crimson Gladiator's Silk Hood
							conquest(875, i(201544)),	-- Crimson Gladiator's Silk Leggings
							conquest(700, i(201546)),	-- Crimson Gladiator's Silk Mantle
							conquest(875, i(201536)),	-- Crimson Gladiator's Silk Robe
							conquest(700, i(201538)),	-- Crimson Gladiator's Silk Slippers
							conquest(700, i(201539)),	-- Crimson Gladiator's Silk Treads
							conquest(875, i(201545)),	-- Crimson Gladiator's Silk Trousers
							conquest(875, i(201537)),	-- Crimson Gladiator's Silk Vestments
							conquest(525, i(201550)),	-- Crimson Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(201899)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201900)),	-- Crimson Gladiator's Drape
							conquest(700, i(201630)),	-- Crimson Gladiator's Leather Belt
							conquest(700, i(201620)),	-- Crimson Gladiator's Leather Boots
							conquest(875, i(201626)),	-- Crimson Gladiator's Leather Breeches
							conquest(700, i(201622)),	-- Crimson Gladiator's Leather Gloves
							conquest(700, i(201623)),	-- Crimson Gladiator's Leather Grips
							conquest(875, i(201624)),	-- Crimson Gladiator's Leather Helm
							conquest(875, i(201619)),	-- Crimson Gladiator's Leather Jerkin
							conquest(875, i(201627)),	-- Crimson Gladiator's Leather Legwraps
							conquest(875, i(201625)),	-- Crimson Gladiator's Leather Mask
							conquest(700, i(201629)),	-- Crimson Gladiator's Leather Shoulderpads
							conquest(700, i(201628)),	-- Crimson Gladiator's Leather Spaulders
							conquest(700, i(201631)),	-- Crimson Gladiator's Leather Strap
							conquest(700, i(201621)),	-- Crimson Gladiator's Leather Treads
							conquest(875, i(201618)),	-- Crimson Gladiator's Leather Vest
							conquest(525, i(201633)),	-- Crimson Gladiator's Leather Wristguards
							conquest(525, i(201632)),	-- Crimson Gladiator's Leather Wristwraps
							conquest(525, i(201901)),	-- Crimson Gladiator's Shawl
						}),
						cl(SHAMAN, {
							conquest(700, i(201662)),	-- Crimson Gladiator's Chain Belt
							conquest(700, i(201653)),	-- Crimson Gladiator's Chain Boots
							conquest(525, i(201701)),	-- Crimson Gladiator's Chain Bracers
							conquest(875, i(201659)),	-- Crimson Gladiator's Chain Breeches
							conquest(875, i(201657)),	-- Crimson Gladiator's Chain Faceguard
							conquest(700, i(201654)),	-- Crimson Gladiator's Chain Gauntlets
							conquest(700, i(201663)),	-- Crimson Gladiator's Chain Girdle
							conquest(700, i(201655)),	-- Crimson Gladiator's Chain Handguards
							conquest(875, i(201656)),	-- Crimson Gladiator's Chain Helm
							conquest(875, i(201658)),	-- Crimson Gladiator's Chain Leggings
							conquest(700, i(201660)),	-- Crimson Gladiator's Chain Monnion
							conquest(700, i(201652)),	-- Crimson Gladiator's Chain Sabatons
							conquest(700, i(201661)),	-- Crimson Gladiator's Chain Shoulderguard
							conquest(875, i(201651)),	-- Crimson Gladiator's Chain Tunic
							conquest(875, i(201650)),	-- Crimson Gladiator's Chain Vest
							conquest(525, i(201664)),	-- Crimson Gladiator's Chain Wristguards
							conquest(525, i(201908)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201909)),	-- Crimson Gladiator's Drape
							conquest(525, i(201910)),	-- Crimson Gladiator's Shawl
						}),
						cl(WARLOCK, {
							conquest(525, i(201887)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201888)),	-- Crimson Gladiator's Drape
							conquest(525, i(201889)),	-- Crimson Gladiator's Shawl
							conquest(700, i(201563)),	-- Crimson Gladiator's Silk Amice
							conquest(525, i(201567)),	-- Crimson Gladiator's Silk Armbands
							conquest(700, i(201565)),	-- Crimson Gladiator's Silk Belt
							conquest(700, i(201564)),	-- Crimson Gladiator's Silk Cord
							conquest(700, i(201556)),	-- Crimson Gladiator's Silk Gloves
							conquest(875, i(201559)),	-- Crimson Gladiator's Silk Guise
							conquest(700, i(201557)),	-- Crimson Gladiator's Silk Handwraps
							conquest(875, i(201558)),	-- Crimson Gladiator's Silk Hood
							conquest(875, i(201560)),	-- Crimson Gladiator's Silk Leggings
							conquest(700, i(201562)),	-- Crimson Gladiator's Silk Mantle
							conquest(875, i(201552)),	-- Crimson Gladiator's Silk Robe
							conquest(700, i(201554)),	-- Crimson Gladiator's Silk Slippers
							conquest(700, i(201555)),	-- Crimson Gladiator's Silk Treads
							conquest(875, i(201561)),	-- Crimson Gladiator's Silk Trousers
							conquest(875, i(201553)),	-- Crimson Gladiator's Silk Vestments
							conquest(525, i(201566)),	-- Crimson Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(201917)),	-- Crimson Gladiator's Cloak
							conquest(525, i(201918)),	-- Crimson Gladiator's Drape
							conquest(875, i(201681)),	-- Crimson Gladiator's Plate Chestguard
							conquest(875, i(201682)),	-- Crimson Gladiator's Plate Chestplate
							conquest(700, i(201685)),	-- Crimson Gladiator's Plate Gauntlets
							conquest(700, i(201693)),	-- Crimson Gladiator's Plate Girdle
							conquest(700, i(201694)),	-- Crimson Gladiator's Plate Greatbelt
							conquest(700, i(201686)),	-- Crimson Gladiator's Plate Handguards
							conquest(875, i(201687)),	-- Crimson Gladiator's Plate Helm
							conquest(875, i(201688)),	-- Crimson Gladiator's Plate Helmet
							conquest(875, i(201689)),	-- Crimson Gladiator's Plate Legguards
							conquest(700, i(201692)),	-- Crimson Gladiator's Plate Pauldrons
							conquest(700, i(201691)),	-- Crimson Gladiator's Plate Shoulders
							conquest(700, i(201684)),	-- Crimson Gladiator's Plate Stompers
							conquest(525, i(201696)),	-- Crimson Gladiator's Plate Vambraces
							conquest(700, i(201683)),	-- Crimson Gladiator's Plate Warboots
							conquest(875, i(201690)),	-- Crimson Gladiator's Plate Wargreaves
							conquest(525, i(201695)),	-- Crimson Gladiator's Plate Wristguards
							conquest(525, i(201919)),	-- Crimson Gladiator's Shawl
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(201802)),	-- Crimson Gladiator's Band
						conquest(525, i(201801)),	-- Crimson Gladiator's Ring
						conquest(525, i(201803)),	-- Crimson Gladiator's Signet
					}),
					filter(NECK_F, {
						conquest(525, i(201806)),	-- Crimson Gladiator's Amulet
						conquest(525, i(201804)),	-- Crimson Gladiator's Necklace
						conquest(525, i(201805)),	-- Crimson Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(201807)),	-- Crimson Gladiator's Badge of Ferocity
						conquest(700, i(201809)),	-- Crimson Gladiator's Emblem
						conquest(700, i(201808)),	-- Crimson Gladiator's Insignia of Alacrity
						conquest(525, i(201810)),	-- Crimson Gladiator's Medallion
						conquest(525, i(201811)),	-- Crimson Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(900, i(201983)),	-- Crimson Gladiator's Axe
						conquest(900, i(201973)),	-- Crimson Gladiator's Dagger
						conquest(1350, i(201979)),	-- Crimson Gladiator's Gavel
						conquest(1800, i(201978)),	-- Crimson Gladiator's Greatsword
						conquest(1800, i(201977)),	-- Crimson Gladiator's Hand Cannon
						conquest(450, i(201980)),	-- Crimson Gladiator's Horn
						conquest(1350, i(201984)),	-- Crimson Gladiator's Knife
						conquest(900, i(201985)),	-- Crimson Gladiator's Mace
						conquest(1800, i(201987)),	-- Crimson Gladiator's Polearm
						conquest(450, i(201981)),	-- Crimson Gladiator's Shield
						conquest(1800, i(201975)),	-- Crimson Gladiator's Spear
						conquest(900, i(201972)),	-- Crimson Gladiator's Splitter
						conquest(1800, i(201976)),	-- Crimson Gladiator's Staff
						conquest(1350, i(201982)),	-- Crimson Gladiator's Wand
						conquest(900, i(201974)),	-- Crimson Gladiator's Warglaive
					}),

				}),
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH, REMOVED_10_1_0 }, ["bonusID"] = 7532 }, {
			n(CLASSES, {
				cl(DEATHKNIGHT, {
					i(201911),	-- Crimson Gladiator's Cloak
					i(201912),	-- Crimson Gladiator's Drape
					i(201520),	-- Crimson Gladiator's Plate Chestguard
					i(201521),	-- Crimson Gladiator's Plate Chestplate
					i(201524),	-- Crimson Gladiator's Plate Gauntlets
					i(201532),	-- Crimson Gladiator's Plate Girdle
					i(201533),	-- Crimson Gladiator's Plate Greatbelt
					i(201525),	-- Crimson Gladiator's Plate Handguards
					i(201526),	-- Crimson Gladiator's Plate Helm
					i(201527),	-- Crimson Gladiator's Plate Helmet
					i(201528),	-- Crimson Gladiator's Plate Legguards
					i(201531),	-- Crimson Gladiator's Plate Pauldrons
					i(201530),	-- Crimson Gladiator's Plate Shoulders
					i(201523),	-- Crimson Gladiator's Plate Stompers
					i(201535),	-- Crimson Gladiator's Plate Vambraces
					i(201522),	-- Crimson Gladiator's Plate Warboots
					i(201529),	-- Crimson Gladiator's Plate Wargreaves
					i(201534),	-- Crimson Gladiator's Plate Wristguards
					i(201913),	-- Crimson Gladiator's Shawl
				}),
				cl(DEMONHUNTER, {
					i(201890),	-- Crimson Gladiator's Cloak
					i(201891),	-- Crimson Gladiator's Drape
					i(201580),	-- Crimson Gladiator's Leather Belt
					i(201570),	-- Crimson Gladiator's Leather Boots
					i(201576),	-- Crimson Gladiator's Leather Breeches
					i(201572),	-- Crimson Gladiator's Leather Gloves
					i(201573),	-- Crimson Gladiator's Leather Grips
					i(201574),	-- Crimson Gladiator's Leather Helm
					i(201569),	-- Crimson Gladiator's Leather Jerkin
					i(201577),	-- Crimson Gladiator's Leather Legwraps
					i(201575),	-- Crimson Gladiator's Leather Mask
					i(201579),	-- Crimson Gladiator's Leather Shoulderpads
					i(201578),	-- Crimson Gladiator's Leather Spaulders
					i(201581),	-- Crimson Gladiator's Leather Strap
					i(201571),	-- Crimson Gladiator's Leather Treads
					i(201568),	-- Crimson Gladiator's Leather Vest
					i(201583),	-- Crimson Gladiator's Leather Wristguards
					i(201582),	-- Crimson Gladiator's Leather Wristwraps
					i(201892),	-- Crimson Gladiator's Shawl
				}),
				cl(DRUID, {
					i(201893),	-- Crimson Gladiator's Cloak
					i(201894),	-- Crimson Gladiator's Drape
					i(201597),	-- Crimson Gladiator's Leather Belt
					i(201587),	-- Crimson Gladiator's Leather Boots
					i(201593),	-- Crimson Gladiator's Leather Breeches
					i(201589),	-- Crimson Gladiator's Leather Gloves
					i(201590),	-- Crimson Gladiator's Leather Grips
					i(201591),	-- Crimson Gladiator's Leather Helm
					i(201586),	-- Crimson Gladiator's Leather Jerkin
					i(201594),	-- Crimson Gladiator's Leather Legwraps
					i(201592),	-- Crimson Gladiator's Leather Mask
					i(201596),	-- Crimson Gladiator's Leather Shoulderpads
					i(201595),	-- Crimson Gladiator's Leather Spaulders
					i(201598),	-- Crimson Gladiator's Leather Strap
					i(201588),	-- Crimson Gladiator's Leather Treads
					i(201585),	-- Crimson Gladiator's Leather Vest
					i(201600),	-- Crimson Gladiator's Leather Wristguards
					i(201599),	-- Crimson Gladiator's Leather Wristwraps
					i(201895),	-- Crimson Gladiator's Shawl
				}),
				cl(EVOKER, {
					i(201516),	-- Crimson Gladiator's Chain Belt
					i(201507),	-- Crimson Gladiator's Chain Boots
					i(201519),	-- Crimson Gladiator's Chain Bracers
					i(201513),	-- Crimson Gladiator's Chain Breeches
					i(201511),	-- Crimson Gladiator's Chain Faceguard
					i(201508),	-- Crimson Gladiator's Chain Gauntlets
					i(201517),	-- Crimson Gladiator's Chain Girdle
					i(201509),	-- Crimson Gladiator's Chain Handguards
					i(201510),	-- Crimson Gladiator's Chain Helm
					i(201512),	-- Crimson Gladiator's Chain Leggings
					i(201514),	-- Crimson Gladiator's Chain Monnion
					i(201506),	-- Crimson Gladiator's Chain Sabatons
					i(201515),	-- Crimson Gladiator's Chain Shoulderguard
					i(201505),	-- Crimson Gladiator's Chain Tunic
					i(201504),	-- Crimson Gladiator's Chain Vest
					i(201518),	-- Crimson Gladiator's Chain Wristguards
					i(201902),	-- Crimson Gladiator's Cloak
					i(201903),	-- Crimson Gladiator's Drape
					i(201904),	-- Crimson Gladiator's Shawl
				}),
				cl(HUNTER, {
					i(201646),	-- Crimson Gladiator's Chain Belt
					i(201637),	-- Crimson Gladiator's Chain Boots
					i(201649),	-- Crimson Gladiator's Chain Bracers
					i(201643),	-- Crimson Gladiator's Chain Breeches
					i(201641),	-- Crimson Gladiator's Chain Faceguard
					i(201638),	-- Crimson Gladiator's Chain Gauntlets
					i(201647),	-- Crimson Gladiator's Chain Girdle
					i(201639),	-- Crimson Gladiator's Chain Handguards
					i(201640),	-- Crimson Gladiator's Chain Helm
					i(201642),	-- Crimson Gladiator's Chain Leggings
					i(201644),	-- Crimson Gladiator's Chain Monnion
					i(201636),	-- Crimson Gladiator's Chain Sabatons
					i(201645),	-- Crimson Gladiator's Chain Shoulderguard
					i(201635),	-- Crimson Gladiator's Chain Tunic
					i(201634),	-- Crimson Gladiator's Chain Vest
					i(201648),	-- Crimson Gladiator's Chain Wristguards
					i(201905),	-- Crimson Gladiator's Cloak
					i(201906),	-- Crimson Gladiator's Drape
					i(201907),	-- Crimson Gladiator's Shawl
				}),
				cl(MAGE, {
					i(201797),	-- Crimson Gladiator's Cloak
					i(201798),	-- Crimson Gladiator's Drape
					i(201799),	-- Crimson Gladiator's Shawl
					i(201483),	-- Crimson Gladiator's Silk Amice
					i(201487),	-- Crimson Gladiator's Silk Armbands
					i(201485),	-- Crimson Gladiator's Silk Belt
					i(201473),	-- Crimson Gladiator's Silk Blouse
					i(201484),	-- Crimson Gladiator's Silk Cord
					i(201476),	-- Crimson Gladiator's Silk Gloves
					i(201479),	-- Crimson Gladiator's Silk Guise
					i(201477),	-- Crimson Gladiator's Silk Handwraps
					i(201478),	-- Crimson Gladiator's Silk Hood
					i(201480),	-- Crimson Gladiator's Silk Leggings
					i(201482),	-- Crimson Gladiator's Silk Mantle
					i(201474),	-- Crimson Gladiator's Silk Slippers
					i(201475),	-- Crimson Gladiator's Silk Treads
					i(201481),	-- Crimson Gladiator's Silk Trousers
					i(201472),	-- Crimson Gladiator's Silk Tunic
					i(201486),	-- Crimson Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(201896),	-- Crimson Gladiator's Cloak
					i(201897),	-- Crimson Gladiator's Drape
					i(201614),	-- Crimson Gladiator's Leather Belt
					i(201604),	-- Crimson Gladiator's Leather Boots
					i(201610),	-- Crimson Gladiator's Leather Breeches
					i(201606),	-- Crimson Gladiator's Leather Gloves
					i(201607),	-- Crimson Gladiator's Leather Grips
					i(201608),	-- Crimson Gladiator's Leather Helm
					i(201603),	-- Crimson Gladiator's Leather Jerkin
					i(201611),	-- Crimson Gladiator's Leather Legwraps
					i(201609),	-- Crimson Gladiator's Leather Mask
					i(201613),	-- Crimson Gladiator's Leather Shoulderpads
					i(201612),	-- Crimson Gladiator's Leather Spaulders
					i(201615),	-- Crimson Gladiator's Leather Strap
					i(201605),	-- Crimson Gladiator's Leather Treads
					i(201602),	-- Crimson Gladiator's Leather Vest
					i(201617),	-- Crimson Gladiator's Leather Wristguards
					i(201616),	-- Crimson Gladiator's Leather Wristwraps
					i(201898),	-- Crimson Gladiator's Shawl
				}),
				cl(PALADIN, {
					i(201914),	-- Crimson Gladiator's Cloak
					i(201915),	-- Crimson Gladiator's Drape
					i(201665),	-- Crimson Gladiator's Plate Chestguard
					i(201666),	-- Crimson Gladiator's Plate Chestplate
					i(201669),	-- Crimson Gladiator's Plate Gauntlets
					i(201677),	-- Crimson Gladiator's Plate Girdle
					i(201678),	-- Crimson Gladiator's Plate Greatbelt
					i(201670),	-- Crimson Gladiator's Plate Handguards
					i(201671),	-- Crimson Gladiator's Plate Helm
					i(201672),	-- Crimson Gladiator's Plate Helmet
					i(201673),	-- Crimson Gladiator's Plate Legguards
					i(201676),	-- Crimson Gladiator's Plate Pauldrons
					i(201675),	-- Crimson Gladiator's Plate Shoulders
					i(201668),	-- Crimson Gladiator's Plate Stompers
					i(201680),	-- Crimson Gladiator's Plate Vambraces
					i(201667),	-- Crimson Gladiator's Plate Warboots
					i(201674),	-- Crimson Gladiator's Plate Wargreaves
					i(201679),	-- Crimson Gladiator's Plate Wristguards
					i(201916),	-- Crimson Gladiator's Shawl
				}),
				cl(PRIEST, {
					i(201884),	-- Crimson Gladiator's Cloak
					i(201885),	-- Crimson Gladiator's Drape
					i(201886),	-- Crimson Gladiator's Shawl
					i(201547),	-- Crimson Gladiator's Silk Amice
					i(201551),	-- Crimson Gladiator's Silk Armbands
					i(201549),	-- Crimson Gladiator's Silk Belt
					i(201548),	-- Crimson Gladiator's Silk Cord
					i(201540),	-- Crimson Gladiator's Silk Gloves
					i(201543),	-- Crimson Gladiator's Silk Guise
					i(201541),	-- Crimson Gladiator's Silk Handwraps
					i(201542),	-- Crimson Gladiator's Silk Hood
					i(201544),	-- Crimson Gladiator's Silk Leggings
					i(201546),	-- Crimson Gladiator's Silk Mantle
					i(201536),	-- Crimson Gladiator's Silk Robe
					i(201538),	-- Crimson Gladiator's Silk Slippers
					i(201539),	-- Crimson Gladiator's Silk Treads
					i(201545),	-- Crimson Gladiator's Silk Trousers
					i(201537),	-- Crimson Gladiator's Silk Vestments
					i(201550),	-- Crimson Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(201899),	-- Crimson Gladiator's Cloak
					i(201900),	-- Crimson Gladiator's Drape
					i(201630),	-- Crimson Gladiator's Leather Belt
					i(201620),	-- Crimson Gladiator's Leather Boots
					i(201626),	-- Crimson Gladiator's Leather Breeches
					i(201622),	-- Crimson Gladiator's Leather Gloves
					i(201623),	-- Crimson Gladiator's Leather Grips
					i(201624),	-- Crimson Gladiator's Leather Helm
					i(201619),	-- Crimson Gladiator's Leather Jerkin
					i(201627),	-- Crimson Gladiator's Leather Legwraps
					i(201625),	-- Crimson Gladiator's Leather Mask
					i(201629),	-- Crimson Gladiator's Leather Shoulderpads
					i(201628),	-- Crimson Gladiator's Leather Spaulders
					i(201631),	-- Crimson Gladiator's Leather Strap
					i(201621),	-- Crimson Gladiator's Leather Treads
					i(201618),	-- Crimson Gladiator's Leather Vest
					i(201633),	-- Crimson Gladiator's Leather Wristguards
					i(201632),	-- Crimson Gladiator's Leather Wristwraps
					i(201901),	-- Crimson Gladiator's Shawl
				}),
				cl(SHAMAN, {
					i(201662),	-- Crimson Gladiator's Chain Belt
					i(201653),	-- Crimson Gladiator's Chain Boots
					i(201701),	-- Crimson Gladiator's Chain Bracers
					i(201659),	-- Crimson Gladiator's Chain Breeches
					i(201657),	-- Crimson Gladiator's Chain Faceguard
					i(201654),	-- Crimson Gladiator's Chain Gauntlets
					i(201663),	-- Crimson Gladiator's Chain Girdle
					i(201655),	-- Crimson Gladiator's Chain Handguards
					i(201656),	-- Crimson Gladiator's Chain Helm
					i(201658),	-- Crimson Gladiator's Chain Leggings
					i(201660),	-- Crimson Gladiator's Chain Monnion
					i(201652),	-- Crimson Gladiator's Chain Sabatons
					i(201661),	-- Crimson Gladiator's Chain Shoulderguard
					i(201651),	-- Crimson Gladiator's Chain Tunic
					i(201650),	-- Crimson Gladiator's Chain Vest
					i(201664),	-- Crimson Gladiator's Chain Wristguards
					i(201908),	-- Crimson Gladiator's Cloak
					i(201909),	-- Crimson Gladiator's Drape
					i(201910),	-- Crimson Gladiator's Shawl
				}),
				cl(WARLOCK, {
					i(201887),	-- Crimson Gladiator's Cloak
					i(201888),	-- Crimson Gladiator's Drape
					i(201889),	-- Crimson Gladiator's Shawl
					i(201563),	-- Crimson Gladiator's Silk Amice
					i(201567),	-- Crimson Gladiator's Silk Armbands
					i(201565),	-- Crimson Gladiator's Silk Belt
					i(201564),	-- Crimson Gladiator's Silk Cord
					i(201556),	-- Crimson Gladiator's Silk Gloves
					i(201559),	-- Crimson Gladiator's Silk Guise
					i(201557),	-- Crimson Gladiator's Silk Handwraps
					i(201558),	-- Crimson Gladiator's Silk Hood
					i(201560),	-- Crimson Gladiator's Silk Leggings
					i(201562),	-- Crimson Gladiator's Silk Mantle
					i(201552),	-- Crimson Gladiator's Silk Robe
					i(201554),	-- Crimson Gladiator's Silk Slippers
					i(201555),	-- Crimson Gladiator's Silk Treads
					i(201561),	-- Crimson Gladiator's Silk Trousers
					i(201553),	-- Crimson Gladiator's Silk Vestments
					i(201566),	-- Crimson Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(201917),	-- Crimson Gladiator's Cloak
					i(201918),	-- Crimson Gladiator's Drape
					i(201681),	-- Crimson Gladiator's Plate Chestguard
					i(201682),	-- Crimson Gladiator's Plate Chestplate
					i(201685),	-- Crimson Gladiator's Plate Gauntlets
					i(201693),	-- Crimson Gladiator's Plate Girdle
					i(201694),	-- Crimson Gladiator's Plate Greatbelt
					i(201686),	-- Crimson Gladiator's Plate Handguards
					i(201687),	-- Crimson Gladiator's Plate Helm
					i(201688),	-- Crimson Gladiator's Plate Helmet
					i(201689),	-- Crimson Gladiator's Plate Legguards
					i(201692),	-- Crimson Gladiator's Plate Pauldrons
					i(201691),	-- Crimson Gladiator's Plate Shoulders
					i(201684),	-- Crimson Gladiator's Plate Stompers
					i(201696),	-- Crimson Gladiator's Plate Vambraces
					i(201683),	-- Crimson Gladiator's Plate Warboots
					i(201690),	-- Crimson Gladiator's Plate Wargreaves
					i(201695),	-- Crimson Gladiator's Plate Wristguards
					i(201919),	-- Crimson Gladiator's Shawl
				}),
			}),
			filter(FINGER_F, {
				i(201802),	-- Crimson Gladiator's Band
				i(201801),	-- Crimson Gladiator's Ring
				i(201803),	-- Crimson Gladiator's Signet
			}),
			filter(NECK_F, {
				i(201806),	-- Crimson Gladiator's Amulet
				i(201804),	-- Crimson Gladiator's Necklace
				i(201805),	-- Crimson Gladiator's Pendant
			}),
			filter(TRINKET_F, {
				i(201807),	-- Crimson Gladiator's Badge of Ferocity
				i(201809),	-- Crimson Gladiator's Emblem
				i(201808),	-- Crimson Gladiator's Insignia of Alacrity
				i(201810),	-- Crimson Gladiator's Medallion
				i(201811),	-- Crimson Gladiator's Sigil of Adaptation
			}),
			n(199720, {	-- Glamora
				["coord"] = { 45.9, 38.7, VALDRAKKEN },
				["g"] = {
					honor(100, i(202090, {	-- Crimson Gladiator's Tabard
						["sourceAchievements"] = { 15984 },	-- Elite: Dragonflight Season 1
						["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 },
						["bonusID"] = 0,
					})),
					moh(5, i(202129)),	-- Crimson Gladiator's Barrier
					moh(5, i(202133)),	-- Crimson Gladiator's Blade
					moh(5, i(202130)),	-- Crimson Gladiator's Bulwark
					moh(5, i(202127)),	-- Crimson Gladiator's Censer
					moh(5, i(202140)),	-- Crimson Gladiator's Claw
					moh(10, i(202124)),	-- Crimson Gladiator's Crossbow
					moh(5, i(202134)),	-- Crimson Gladiator's Glaive
					moh(10, i(202137)),	-- Crimson Gladiator's Greataxe
					moh(10, i(202123)),	-- Crimson Gladiator's Greatbow
					moh(10, i(202138)),	-- Crimson Gladiator's Greatmace
					moh(10, i(202125)),	-- Crimson Gladiator's Greatstaff
					moh(10, i(202135)),	-- Crimson Gladiator's Poleaxe
					moh(10, i(202136)),	-- Crimson Gladiator's Quarterstaff
					moh(5, i(202128)),	-- Crimson Gladiator's Rod
					moh(5, i(202139)),	-- Crimson Gladiator's Scepter
					moh(5, i(202126)),	-- Crimson Gladiator's Spellblade
					moh(5, i(202131)),	-- Crimson Gladiator's Sword
					moh(5, i(202132)),	-- Crimson Gladiator's Warhammer
				},
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_5 } }, {
			n(199720, {	-- Glamora
				["coord"] = { 45.9, 38.7, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["u"] = ELITE_PVP_REQUIREMENT,
				}, {
					iensemble(230901, {	-- Arsenal: Elite Crimson Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(230886, {	-- Ensemble: Elite Crimson Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(230887, {	-- Ensemble: Elite Crimson Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(230888, {	-- Ensemble: Elite Crimson Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(230889, {	-- Ensemble: Elite Crimson Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(230890, {	-- Ensemble: Elite Crimson Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(230891, {	-- Ensemble: Elite Crimson Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(230892, {	-- Ensemble: Elite Crimson Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(230893, {	-- Ensemble: Elite Crimson Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(230894, {	-- Ensemble: Elite Crimson Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(230895, {	-- Ensemble: Elite Crimson Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(230896, {	-- Ensemble: Elite Crimson Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(230897, {	-- Ensemble: Elite Crimson Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(230898, {	-- Ensemble: Elite Crimson Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
		})),
		filter(RECIPES, {
			-- #if AFTER 10.1.0
			n(196661, {	-- Korganar Smolderforge
				["coord"] = { 43.6, 42.7, VALDRAKKEN },
				["timeline"] = { ADDED_10_1_0 },
				["g"] = sharedData({ ["cost"] = {{"i", MOH, 3}} }, {
			-- #endif
					i(194637),	-- Design: Crimson Combatant's Jeweled Amulet (RECIPE!)
					i(194638),	-- Design: Crimson Combatant's Jeweled Signet (RECIPE!)
					i(197973),	-- Pattern: Crimson Combatant's Adamant Chainmail (RECIPE!)
					i(197972),	-- Pattern: Crimson Combatant's Adamant Cowl (RECIPE!)
					i(197978),	-- Pattern: Crimson Combatant's Adamant Cuffs (RECIPE!)
					i(197975),	-- Pattern: Crimson Combatant's Adamant Epaulets (RECIPE!)
					i(197977),	-- Pattern: Crimson Combatant's Adamant Gauntlets (RECIPE!)
					i(197979),	-- Pattern: Crimson Combatant's Adamant Girdle (RECIPE!)
					i(197974),	-- Pattern: Crimson Combatant's Adamant Leggings (RECIPE!)
					i(197976),	-- Pattern: Crimson Combatant's Adamant Treads (RECIPE!)
					i(197971),	-- Pattern: Crimson Combatant's Resilient Belt (RECIPE!)
					i(197968),	-- Pattern: Crimson Combatant's Resilient Boots (RECIPE!)
					i(197965),	-- Pattern: Crimson Combatant's Resilient Chestpiece (RECIPE!)
					i(197969),	-- Pattern: Crimson Combatant's Resilient Gloves (RECIPE!)
					i(197964),	-- Pattern: Crimson Combatant's Resilient Mask (RECIPE!)
					i(197967),	-- Pattern: Crimson Combatant's Resilient Shoulderpads (RECIPE!)
					i(197966),	-- Pattern: Crimson Combatant's Resilient Trousers (RECIPE!)
					i(197970),	-- Pattern: Crimson Combatant's Resilient Wristwraps (RECIPE!)
					i(194270),	-- Pattern: Crimson Combatant's Wildercloth Bands (RECIPE!)
					i(194271),	-- Pattern: Crimson Combatant's Wildercloth Cloak (RECIPE!)
					i(194272),	-- Pattern: Crimson Combatant's Wildercloth Gloves (RECIPE!)
					i(194273),	-- Pattern: Crimson Combatant's Wildercloth Hood (RECIPE!)
					i(194274),	-- Pattern: Crimson Combatant's Wildercloth Leggings (RECIPE!)
					i(194275),	-- Pattern: Crimson Combatant's Wildercloth Sash (RECIPE!)
					i(194276),	-- Pattern: Crimson Combatant's Wildercloth Shoulderpads (RECIPE!)
					i(194277),	-- Pattern: Crimson Combatant's Wildercloth Treads (RECIPE!)
					i(194278),	-- Pattern: Crimson Combatant's Wildercloth Tunic (RECIPE!)
					i(194459),	-- Plans: Crimson Combatant's Draconium Armguards (RECIPE!)
					i(194454),	-- Plans: Crimson Combatant's Draconium Breastplate (RECIPE!)
					i(194457),	-- Plans: Crimson Combatant's Draconium Gauntlets (RECIPE!)
					i(194455),	-- Plans: Crimson Combatant's Draconium Greaves (RECIPE!)
					i(194453),	-- Plans: Crimson Combatant's Draconium Helm (RECIPE!)
					i(194456),	-- Plans: Crimson Combatant's Draconium Pauldrons (RECIPE!)
					i(194458),	-- Plans: Crimson Combatant's Draconium Sabatons (RECIPE!)
					i(194460),	-- Plans: Crimson Combatant's Draconium Waistguard (RECIPE!)
			-- #if AFTER 10.1.0
					i(203380),	-- Technique: Crimson Combatant's Emblem (RECIPE!)
					i(203379),	-- Technique: Crimson Combatant's Insignia of Alacrity (RECIPE!)
					i(203378),	-- Technique: Crimson Combatant's Medallion (RECIPE!)
				}),
			}),
			-- #endif
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", 190450, 3}},	-- 3x Awakened Ire
					["timeline"] = { ADDED_10_0_5, REMOVED_10_1_0 },
				}, {
					i(203380),	-- Technique: Crimson Combatant's Emblem (RECIPE!)
					i(203379),	-- Technique: Crimson Combatant's Insignia of Alacrity (RECIPE!)
					i(203378),	-- Technique: Crimson Combatant's Medallion (RECIPE!)
				}),
			}),
		}),
	}),
}))));