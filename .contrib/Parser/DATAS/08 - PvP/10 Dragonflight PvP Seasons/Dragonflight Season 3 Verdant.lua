-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_2_0 } }, {
	n(SEASON_VERDANT, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
			ach(19140, {	-- Verdant Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(19141, {	-- Verdant Combatant [H]
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(19157),		-- Combatant I: Dragonflight Season 3
			ach(19158),		-- Combatant II: Dragonflight Season 3
			ach(19159),		-- Challenger I: Dragonflight Season 3
			ach(19160),		-- Challenger II: Dragonflight Season 3
			ach(19133),		-- Rival I: Dragonflight Season 3
			ach(19155),		-- Rival II: Dragonflight Season 3
			ach(19156, {	-- Duelist: Dragonflight Season 3
				ill(7032),	-- Verdant Crush (ILLUSION!)
				i(209609),	-- Verdant Gladiator's Prestigious Cloak
			}),
			ach(19090),	-- Elite: Dragonflight Season 3
			ach(19091, {	-- Gladiator: Dragonflight Season 3
				i(210345),	-- Verdant Gladiator's Slitherdrake (MOUNT!)
				i(210064),	-- Winding Slitherdrake: Embodiment of the Verdant Gladiator (MM!)
			}),
			ach(19295),		-- Verdant Gladiator's Drake
			ach(19132, {	-- Verdant Gladiator: Dragonflight Season 3
				title(526),	-- Verdant Gladiator <Name>
			}),
			-- RBG
			ach(19162, {	-- Hero of the Alliance: Verdant
				["races"] = ALLIANCE_ONLY,
			}),
			ach(19161, {	-- Hero of the Horde: Verdant
				["races"] = HORDE_ONLY,
			}),
			-- Solo
			ach(19443, {	-- Battle Mender: Dragonflight Season 3
				["classes"] = HEALERS,
			}),
			ach(19304, {	-- Legend: Dragonflight Season 3
				i(210497),	-- Verdant Legend's Pennant (TOY!)
			}),
			ach(19131, {	-- Verdant Legend: Dragonflight Season 3
				title(525),	-- Verdant Legend <Name>
			}),
			-- Fashion
			ach(19276),	-- Verdant Vogue
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
			i(210070, {	-- Vicious Moonbeast [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(210069, {	-- Vicious Moonbeast [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, {
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({ ["timeline"] = { ADDED_11_0_0 } }, {
					moh(5, iensemble(224000)),	-- Arsenal: Hellbloom Axe
					moh(5, iensemble(223996)),	-- Arsenal: Hellbloom Bow
					moh(5, iensemble(224001)),	-- Arsenal: Hellbloom Branch
					moh(5, iensemble(223989)),	-- Arsenal: Hellbloom Club
					moh(5, iensemble(223999)),	-- Arsenal: Hellbloom Greatsword
					moh(5, iensemble(223990)),	-- Arsenal: Hellbloom Hammer
					moh(5, iensemble(223991)),	-- Arsenal: Hellbloom Knife
					moh(5, iensemble(223993)),	-- Arsenal: Hellbloom Polearm
					moh(5, iensemble(223994)),	-- Arsenal: Hellbloom Shield
					moh(5, iensemble(223995)),	-- Arsenal: Hellbloom Staff
					moh(5, iensemble(223998)),	-- Arsenal: Hellbloom Sword
					moh(5, iensemble(223992)),	-- Arsenal: Hellbloom Wand
					moh(5, iensemble(223997)),	-- Arsenal: Hellbloom Warglaive
					filter(BACK_F, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(120, i(211243)),	-- Hellbloom Cape
						bloody(120, i(211245)),	-- Hellbloom Cloak
						bloody(120, i(211246)),	-- Hellbloom Drape
						bloody(120, i(211244)),	-- Hellbloom Shawl
					})),
					filter(CLOTH, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(120, i(211217)),	-- Hellbloom Bindings
						bloody(120, i(211216)),	-- Hellbloom Cord
						bloody(300, i(211214)),	-- Hellbloom Crown
						bloody(300, i(211211)),	-- Hellbloom Garb
						bloody(200, i(211213)),	-- Hellbloom Gloves
						bloody(200, i(211218)),	-- Hellbloom Mantle
						bloody(300, i(211215)),	-- Hellbloom Pants
						bloody(200, i(211212)),	-- Hellbloom Slippers
					})),
					filter(LEATHER, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(120, i(211223)),	-- Hellbloom Belt
						bloody(200, i(211219)),	-- Hellbloom Boots
						bloody(300, i(211222)),	-- Hellbloom Breeches
						bloody(200, i(211220)),	-- Hellbloom Handwraps
						bloody(300, i(211221)),	-- Hellbloom Hood
						bloody(300, i(211225)),	-- Hellbloom Jerkin
						bloody(200, i(211226)),	-- Hellbloom Shoulderguard
						bloody(120, i(211224)),	-- Hellbloom Wraps
					})),
					filter(MAIL, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(120, i(211242)),	-- Hellbloom Armguards
						bloody(300, i(211235)),	-- Hellbloom Chainmail
						bloody(120, i(211241)),	-- Hellbloom Cinch
						bloody(200, i(211240)),	-- Hellbloom Epaulets
						bloody(200, i(211236)),	-- Hellbloom Greaves
						bloody(200, i(211237)),	-- Hellbloom Grips
						bloody(300, i(211238)),	-- Hellbloom Helm
						bloody(300, i(211239)),	-- Hellbloom Leggings
					})),
					filter(PLATE, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(120, i(211234)),	-- Hellbloom Bracers
						bloody(120, i(211233)),	-- Hellbloom Clasp
						bloody(300, i(211228)),	-- Hellbloom Cuirass
						bloody(300, i(211227)),	-- Hellbloom Faceplate
						bloody(200, i(211230)),	-- Hellbloom Gauntlets
						bloody(300, i(211231)),	-- Hellbloom Legguards
						bloody(200, i(211229)),	-- Hellbloom Sabatons
						bloody(200, i(211232)),	-- Hellbloom Spaulders
					})),
					n(WEAPONS, sharedData({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR } }, {
						bloody(150, i(211194)),	-- Hellbloom Aegis
						bloody(250, i(211179)),	-- Hellbloom Battleaxe
						bloody(450, i(211188)),	-- Hellbloom Battlestaff
						bloody(150, i(211186)),	-- Hellbloom Branch
						bloody(450, i(211190)),	-- Hellbloom Broadsword
						bloody(250, i(211181)),	-- Hellbloom Carver
						bloody(300, i(211191)),	-- Hellbloom Club
						bloody(250, i(211199)),	-- Hellbloom Crusher
						bloody(250, i(211193)),	-- Hellbloom Cudgel
						bloody(300, i(211202)),	-- Hellbloom Dagger
						bloody(250, i(211203)),	-- Hellbloom Dirk
						bloody(450, i(211182)),	-- Hellbloom Flameshot
						bloody(450, i(211189)),	-- Hellbloom Greatsword
						bloody(250, i(211192)),	-- Hellbloom Hammer
						bloody(300, i(211180)),	-- Hellbloom Hatchet
						bloody(450, i(211195)),	-- Hellbloom Impaler
						bloody(250, i(211198)),	-- Hellbloom Mace
						bloody(250, i(211201)),	-- Hellbloom Sabre
						bloody(300, i(211200)),	-- Hellbloom Scepter
						bloody(250, i(211185)),	-- Hellbloom Shortsword
						bloody(450, i(211196)),	-- Hellbloom Spear
						bloody(300, i(211184)),	-- Hellbloom Spellblade
						bloody(450, i(211187)),	-- Hellbloom Spire
						bloody(250, i(211183)),	-- Hellbloom Twinblade
						bloody(300, i(211197)),	-- Hellbloom Wand
					})),
				}),
			}),
		}),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR, ADDED_11_0_5 } }, {
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(231150, {	-- Arsenal: Verdant Aspirant's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(231120, {	-- Ensemble: Verdant Aspirant's Cloth Armor
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(231121, {	-- Ensemble: Verdant Aspirant's Leather Armor
						["classes"] = LEATHER_CLASSES
					}),
					iensemble(231122, {	-- Ensemble: Verdant Aspirant's Mail Armor
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(231123, {	-- Ensemble: Verdant Aspirant's Plate Armor
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(199601, {	-- Seltherex
				["coord"] = { 44.7, 37.0, VALDRAKKEN },
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				},FILTERFUNC_itemID,{
					filter(BACK_F, {
						honor(525, i(209776)),	-- Verdant Aspirant's Cape
						honor(525, i(209774)),	-- Verdant Aspirant's Cloak
						honor(525, i(209775)),	-- Verdant Aspirant's Drape
						honor(525, i(209777)),	-- Verdant Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(209756)),	-- Verdant Aspirant's Silk Belt
						honor(525, i(209759)),	-- Verdant Aspirant's Silk Bindings
						honor(700, i(209723)),	-- Verdant Aspirant's Silk Cord
						honor(875, i(209743)),	-- Verdant Aspirant's Silk Cover
						honor(700, i(209736)),	-- Verdant Aspirant's Silk Footwraps
						honor(700, i(209709)),	-- Verdant Aspirant's Silk Gloves
						honor(700, i(209741)),	-- Verdant Aspirant's Silk Handwraps
						honor(875, i(209711)),	-- Verdant Aspirant's Silk Hood
						honor(875, i(209715)),	-- Verdant Aspirant's Silk Leggings
						honor(875, i(209747)),	-- Verdant Aspirant's Silk Legwraps
						honor(700, i(209720)),	-- Verdant Aspirant's Silk Mantle
						honor(875, i(209699)),	-- Verdant Aspirant's Silk Robe
						honor(700, i(209753)),	-- Verdant Aspirant's Silk Shawl
						honor(700, i(209704)),	-- Verdant Aspirant's Silk Treads
						honor(875, i(209731)),	-- Verdant Aspirant's Silk Vestments
						honor(525, i(209726)),	-- Verdant Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(209769)),	-- Verdant Aspirant's Band
						honor(525, i(209768)),	-- Verdant Aspirant's Ring
						honor(525, i(209770)),	-- Verdant Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(209762)),	-- Verdant Aspirant's Leather Armguards
						honor(700, i(209725)),	-- Verdant Aspirant's Leather Belt
						honor(700, i(209706)),	-- Verdant Aspirant's Leather Boots
						honor(875, i(209717)),	-- Verdant Aspirant's Leather Breeches
						honor(700, i(209758)),	-- Verdant Aspirant's Leather Cord
						honor(700, i(209738)),	-- Verdant Aspirant's Leather Footpads
						honor(700, i(209707)),	-- Verdant Aspirant's Leather Gloves
						honor(700, i(209739)),	-- Verdant Aspirant's Leather Grips
						honor(875, i(209713)),	-- Verdant Aspirant's Leather Helm
						honor(875, i(209750)),	-- Verdant Aspirant's Leather Leggings
						honor(700, i(209751)),	-- Verdant Aspirant's Leather Mantle
						honor(875, i(209745)),	-- Verdant Aspirant's Leather Mask
						honor(700, i(209718)),	-- Verdant Aspirant's Leather Spaulders
						honor(875, i(209734)),	-- Verdant Aspirant's Leather Tunic
						honor(875, i(209702)),	-- Verdant Aspirant's Leather Vest
						honor(525, i(209729)),	-- Verdant Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(209724)),	-- Verdant Aspirant's Chain Belt
						honor(525, i(209761)),	-- Verdant Aspirant's Chain Bracer
						honor(700, i(209757)),	-- Verdant Aspirant's Chain Clasp
						honor(700, i(209710)),	-- Verdant Aspirant's Chain Gauntlets
						honor(700, i(209742)),	-- Verdant Aspirant's Chain Handguards
						honor(875, i(209744)),	-- Verdant Aspirant's Chain Headguard
						honor(875, i(209712)),	-- Verdant Aspirant's Chain Helm
						honor(875, i(209716)),	-- Verdant Aspirant's Chain Leggings
						honor(700, i(209705)),	-- Verdant Aspirant's Chain Sabatons
						honor(700, i(209754)),	-- Verdant Aspirant's Chain Shoulderguards
						honor(700, i(209721)),	-- Verdant Aspirant's Chain Spaulders
						honor(700, i(209737)),	-- Verdant Aspirant's Chain Stompers
						honor(875, i(209733)),	-- Verdant Aspirant's Chain Tunic
						honor(875, i(209701)),	-- Verdant Aspirant's Chain Vest
						honor(875, i(209749)),	-- Verdant Aspirant's Chain Wargreaves
						honor(525, i(209728)),	-- Verdant Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(209772)),	-- Verdant Aspirant's Choker
						honor(525, i(209771)),	-- Verdant Aspirant's Necklace
						honor(525, i(209773)),	-- Verdant Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(525, i(209760)),	-- Verdant Aspirant's Plate Armguards
						honor(875, i(209732)),	-- Verdant Aspirant's Plate Armor
						honor(875, i(209700)),	-- Verdant Aspirant's Plate Chestplate
						honor(525, i(209727)),	-- Verdant Aspirant's Plate Cuffs
						honor(700, i(209708)),	-- Verdant Aspirant's Plate Gauntlets
						honor(700, i(209722)),	-- Verdant Aspirant's Plate Girdle
						honor(700, i(209755)),	-- Verdant Aspirant's Plate Greatbelt
						honor(700, i(209740)),	-- Verdant Aspirant's Plate Handguards
						honor(875, i(209730)),	-- Verdant Aspirant's Plate Headguard
						honor(875, i(209698)),	-- Verdant Aspirant's Plate Helm
						honor(875, i(209714)),	-- Verdant Aspirant's Plate Legguards
						honor(700, i(209752)),	-- Verdant Aspirant's Plate Pauldrons
						honor(700, i(209719)),	-- Verdant Aspirant's Plate Shoulders
						honor(700, i(209735)),	-- Verdant Aspirant's Plate Stompers
						honor(700, i(209703)),	-- Verdant Aspirant's Plate Warboots
						honor(875, i(209746)),	-- Verdant Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(209763)),	-- Verdant Aspirant's Badge of Ferocity
						honor(700, i(209766)),	-- Verdant Aspirant's Emblem
						honor(700, i(209765)),	-- Verdant Aspirant's Insignia of Alacrity
						honor(525, i(209764)),	-- Verdant Aspirant's Medallion
						honor(525, i(209767)),	-- Verdant Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(210149)),	-- Verdant Aspirant's Battleaxe
						honor(875, i(210166)),	-- Verdant Aspirant's Blade
						honor(875, i(210150)),	-- Verdant Aspirant's Dagger
						honor(1750, i(210154)),	-- Verdant Aspirant's Greatsword
						honor(1750, i(210161)),	-- Verdant Aspirant's Halberd
						honor(875, i(210162)),	-- Verdant Aspirant's Hammer
						honor(1325, i(210163)),	-- Verdant Aspirant's Knife
						honor(875, i(210151)),	-- Verdant Aspirant's Mace
						honor(1750, i(210152)),	-- Verdant Aspirant's Polearm
						honor(1750, i(210160)),	-- Verdant Aspirant's Recurve
						honor(1325, i(210157)),	-- Verdant Aspirant's Scepter
						honor(425, i(210158)),	-- Verdant Aspirant's Shield
						honor(1750, i(210153)),	-- Verdant Aspirant's Staff
						honor(875, i(210164)),	-- Verdant Aspirant's Sword
						honor(425, i(210155)),	-- Verdant Aspirant's Torch
						honor(1325, i(210317)),	-- Verdant Aspirant's Wand
						honor(875, i(210156)),	-- Verdant Aspirant's Warglaive
					}),
				}),
			}),
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR, ADDED_11_0_5 } }, {
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = sharedData({
					["cost"] = {{"i", MOH, 12}},
					["timeline"] = { ADDED_11_0_5 },
				}, {
					iensemble(231151, {	-- Arsenal: Verdant Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(231124, {	-- Ensemble: Verdant Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(231125, {	-- Ensemble: Verdant Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(231126, {	-- Ensemble: Verdant Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(231127, {	-- Ensemble: Verdant Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(231128, {	-- Ensemble: Verdant Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(231129, {	-- Ensemble: Verdant Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(231130, {	-- Ensemble: Verdant Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(231131, {	-- Ensemble: Verdant Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(231132, {	-- Ensemble: Verdant Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(231133, {	-- Ensemble: Verdant Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(231134, {	-- Ensemble: Verdant Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(231135, {	-- Ensemble: Verdant Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(231136, {	-- Ensemble: Verdant Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
			n(199599, {	-- Calderax
				["coord"] = { 44.3, 36.6, VALDRAKKEN },
				["ItemAppearanceModifierID"] = 159,
				["g"] = bubbleDownFiltered({
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				},FILTERFUNC_itemID,{
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(209275)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209276)),	-- Verdant Gladiator's Drape
							conquest(525, i(209277)),	-- Verdant Gladiator's Shawl
							conquest(875, i(209259)),	-- Verdant Gladiator's Plate Chestguard
							conquest(875, i(209260)),	-- Verdant Gladiator's Plate Chestplate
							conquest(700, i(209263)),	-- Verdant Gladiator's Plate Gauntlets
							conquest(700, i(209271)),	-- Verdant Gladiator's Plate Girdle
							conquest(700, i(209272)),	-- Verdant Gladiator's Plate Greatbelt
							conquest(700, i(209264)),	-- Verdant Gladiator's Plate Handguards
							conquest(875, i(209265)),	-- Verdant Gladiator's Plate Helm
							conquest(875, i(209266)),	-- Verdant Gladiator's Plate Helmet
							conquest(875, i(209267)),	-- Verdant Gladiator's Plate Legguards
							conquest(700, i(209270)),	-- Verdant Gladiator's Plate Pauldrons
							conquest(700, i(209269)),	-- Verdant Gladiator's Plate Shoulders
							conquest(700, i(209262)),	-- Verdant Gladiator's Plate Stompers
							conquest(525, i(209274)),	-- Verdant Gladiator's Plate Vambraces
							conquest(700, i(209261)),	-- Verdant Gladiator's Plate Warboots
							conquest(875, i(209268)),	-- Verdant Gladiator's Plate Wargreaves
							conquest(525, i(209273)),	-- Verdant Gladiator's Plate Wristguards
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(209161)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209162)),	-- Verdant Gladiator's Drape
							conquest(525, i(209163)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209157)),	-- Verdant Gladiator's Leather Belt
							conquest(700, i(209147)),	-- Verdant Gladiator's Leather Boots
							conquest(875, i(209153)),	-- Verdant Gladiator's Leather Breeches
							conquest(700, i(209149)),	-- Verdant Gladiator's Leather Gloves
							conquest(700, i(209150)),	-- Verdant Gladiator's Leather Grips
							conquest(875, i(209151)),	-- Verdant Gladiator's Leather Helm
							conquest(875, i(209146)),	-- Verdant Gladiator's Leather Jerkin
							conquest(875, i(209154)),	-- Verdant Gladiator's Leather Legwraps
							conquest(875, i(209152)),	-- Verdant Gladiator's Leather Mask
							conquest(700, i(209156)),	-- Verdant Gladiator's Leather Shoulderpads
							conquest(700, i(209155)),	-- Verdant Gladiator's Leather Spaulders
							conquest(700, i(209158)),	-- Verdant Gladiator's Leather Strap
							conquest(700, i(209148)),	-- Verdant Gladiator's Leather Treads
							conquest(875, i(209145)),	-- Verdant Gladiator's Leather Vest
							conquest(525, i(209160)),	-- Verdant Gladiator's Leather Wristguards
							conquest(525, i(209159)),	-- Verdant Gladiator's Leather Wristwraps
						}),
						cl(DRUID, {
							conquest(525, i(209142)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209143)),	-- Verdant Gladiator's Drape
							conquest(525, i(209144)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209138)),	-- Verdant Gladiator's Leather Belt
							conquest(700, i(209128)),	-- Verdant Gladiator's Leather Boots
							conquest(875, i(209134)),	-- Verdant Gladiator's Leather Breeches
							conquest(700, i(209130)),	-- Verdant Gladiator's Leather Gloves
							conquest(700, i(209131)),	-- Verdant Gladiator's Leather Grips
							conquest(875, i(209132)),	-- Verdant Gladiator's Leather Helm
							conquest(875, i(209127)),	-- Verdant Gladiator's Leather Jerkin
							conquest(875, i(209135)),	-- Verdant Gladiator's Leather Legwraps
							conquest(875, i(209133)),	-- Verdant Gladiator's Leather Mask
							conquest(700, i(209137)),	-- Verdant Gladiator's Leather Shoulderpads
							conquest(700, i(209136)),	-- Verdant Gladiator's Leather Spaulders
							conquest(700, i(209139)),	-- Verdant Gladiator's Leather Strap
							conquest(700, i(209129)),	-- Verdant Gladiator's Leather Treads
							conquest(875, i(209126)),	-- Verdant Gladiator's Leather Vest
							conquest(525, i(209141)),	-- Verdant Gladiator's Leather Wristguards
							conquest(525, i(209140)),	-- Verdant Gladiator's Leather Wristwraps
						}),
						cl(EVOKER, {
							conquest(525, i(209218)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209219)),	-- Verdant Gladiator's Drape
							conquest(525, i(209220)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209214)),	-- Verdant Gladiator's Chain Belt
							conquest(700, i(209205)),	-- Verdant Gladiator's Chain Boots
							conquest(525, i(209217)),	-- Verdant Gladiator's Chain Bracers
							conquest(875, i(209211)),	-- Verdant Gladiator's Chain Breeches
							conquest(875, i(209209)),	-- Verdant Gladiator's Chain Faceguard
							conquest(700, i(209206)),	-- Verdant Gladiator's Chain Gauntlets
							conquest(700, i(209215)),	-- Verdant Gladiator's Chain Girdle
							conquest(700, i(209207)),	-- Verdant Gladiator's Chain Handguards
							conquest(875, i(209208)),	-- Verdant Gladiator's Chain Helm
							conquest(875, i(209210)),	-- Verdant Gladiator's Chain Leggings
							conquest(700, i(209212)),	-- Verdant Gladiator's Chain Monnion
							conquest(875, i(209202)),	-- Verdant Gladiator's Chain Robe
							conquest(700, i(209204)),	-- Verdant Gladiator's Chain Sabatons
							conquest(700, i(209213)),	-- Verdant Gladiator's Chain Shoulderguard
							conquest(875, i(209203)),	-- Verdant Gladiator's Chain Vestments
							conquest(525, i(209216)),	-- Verdant Gladiator's Chain Wristguards
						}),
						cl(HUNTER, {
							conquest(525, i(209237)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209238)),	-- Verdant Gladiator's Drape
							conquest(525, i(209239)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209233)),	-- Verdant Gladiator's Chain Belt
							conquest(700, i(209224)),	-- Verdant Gladiator's Chain Boots
							conquest(525, i(209236)),	-- Verdant Gladiator's Chain Bracers
							conquest(875, i(209230)),	-- Verdant Gladiator's Chain Breeches
							conquest(875, i(209228)),	-- Verdant Gladiator's Chain Faceguard
							conquest(700, i(209225)),	-- Verdant Gladiator's Chain Gauntlets
							conquest(700, i(209234)),	-- Verdant Gladiator's Chain Girdle
							conquest(700, i(209226)),	-- Verdant Gladiator's Chain Handguards
							conquest(875, i(209227)),	-- Verdant Gladiator's Chain Helm
							conquest(875, i(209229)),	-- Verdant Gladiator's Chain Leggings
							conquest(700, i(209231)),	-- Verdant Gladiator's Chain Monnion
							conquest(700, i(209223)),	-- Verdant Gladiator's Chain Sabatons
							conquest(700, i(209232)),	-- Verdant Gladiator's Chain Shoulderguard
							conquest(875, i(209222)),	-- Verdant Gladiator's Chain Tunic
							conquest(875, i(209221)),	-- Verdant Gladiator's Chain Vest
							conquest(525, i(209235)),	-- Verdant Gladiator's Chain Wristguards
						}),
						cl(MAGE, {
							conquest(525, i(209085)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209086)),	-- Verdant Gladiator's Drape
							conquest(525, i(209087)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209080)),	-- Verdant Gladiator's Silk Amice
							conquest(525, i(209084)),	-- Verdant Gladiator's Silk Armbands
							conquest(700, i(209082)),	-- Verdant Gladiator's Silk Belt
							conquest(875, i(209070)),	-- Verdant Gladiator's Silk Blouse
							conquest(875, i(209076)),	-- Verdant Gladiator's Silk Cap
							conquest(700, i(209081)),	-- Verdant Gladiator's Silk Cord
							conquest(700, i(209073)),	-- Verdant Gladiator's Silk Gloves
							conquest(700, i(209074)),	-- Verdant Gladiator's Silk Handwraps
							conquest(875, i(209075)),	-- Verdant Gladiator's Silk Hat
							conquest(875, i(209077)),	-- Verdant Gladiator's Silk Leggings
							conquest(700, i(209079)),	-- Verdant Gladiator's Silk Mantle
							conquest(700, i(209071)),	-- Verdant Gladiator's Silk Slippers
							conquest(700, i(209072)),	-- Verdant Gladiator's Silk Treads
							conquest(875, i(209078)),	-- Verdant Gladiator's Silk Trousers
							conquest(875, i(209069)),	-- Verdant Gladiator's Silk Tunic
							conquest(525, i(209083)),	-- Verdant Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(209180)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209181)),	-- Verdant Gladiator's Drape
							conquest(525, i(209182)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209176)),	-- Verdant Gladiator's Leather Belt
							conquest(700, i(209166)),	-- Verdant Gladiator's Leather Boots
							conquest(875, i(209172)),	-- Verdant Gladiator's Leather Breeches
							conquest(700, i(209168)),	-- Verdant Gladiator's Leather Gloves
							conquest(700, i(209169)),	-- Verdant Gladiator's Leather Grips
							conquest(875, i(209170)),	-- Verdant Gladiator's Leather Helm
							conquest(875, i(209165)),	-- Verdant Gladiator's Leather Jerkin
							conquest(875, i(209173)),	-- Verdant Gladiator's Leather Legwraps
							conquest(875, i(209171)),	-- Verdant Gladiator's Leather Mask
							conquest(700, i(209175)),	-- Verdant Gladiator's Leather Shoulderpads
							conquest(700, i(209174)),	-- Verdant Gladiator's Leather Spaulders
							conquest(700, i(209177)),	-- Verdant Gladiator's Leather Strap
							conquest(700, i(209167)),	-- Verdant Gladiator's Leather Treads
							conquest(875, i(209164)),	-- Verdant Gladiator's Leather Vest
							conquest(525, i(209179)),	-- Verdant Gladiator's Leather Wristguards
							conquest(525, i(209178)),	-- Verdant Gladiator's Leather Wristwraps
						}),
						cl(PALADIN, {
							conquest(525, i(209294)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209295)),	-- Verdant Gladiator's Drape
							conquest(525, i(209296)),	-- Verdant Gladiator's Shawl
							conquest(875, i(209278)),	-- Verdant Gladiator's Plate Chestguard
							conquest(875, i(209279)),	-- Verdant Gladiator's Plate Chestplate
							conquest(700, i(209282)),	-- Verdant Gladiator's Plate Gauntlets
							conquest(700, i(209290)),	-- Verdant Gladiator's Plate Girdle
							conquest(700, i(209291)),	-- Verdant Gladiator's Plate Greatbelt
							conquest(700, i(209283)),	-- Verdant Gladiator's Plate Handguards
							conquest(875, i(209284)),	-- Verdant Gladiator's Plate Helm
							conquest(875, i(209285)),	-- Verdant Gladiator's Plate Helmet
							conquest(875, i(209286)),	-- Verdant Gladiator's Plate Legguards
							conquest(700, i(209289)),	-- Verdant Gladiator's Plate Pauldrons
							conquest(700, i(209288)),	-- Verdant Gladiator's Plate Shoulders
							conquest(700, i(209281)),	-- Verdant Gladiator's Plate Stompers
							conquest(875, i(209287)),	-- Verdant Gladiator's Plate Tasses
							conquest(525, i(209293)),	-- Verdant Gladiator's Plate Vambraces
							conquest(700, i(209280)),	-- Verdant Gladiator's Plate Warboots
							conquest(525, i(209292)),	-- Verdant Gladiator's Plate Wristguards
						}),
						cl(PRIEST, {
							conquest(525, i(209104)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209105)),	-- Verdant Gladiator's Drape
							conquest(525, i(209106)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209099)),	-- Verdant Gladiator's Silk Amice
							conquest(525, i(209103)),	-- Verdant Gladiator's Silk Armbands
							conquest(700, i(209101)),	-- Verdant Gladiator's Silk Belt
							conquest(875, i(209089)),	-- Verdant Gladiator's Silk Blouse
							conquest(700, i(209100)),	-- Verdant Gladiator's Silk Cord
							conquest(700, i(209092)),	-- Verdant Gladiator's Silk Gloves
							conquest(875, i(209095)),	-- Verdant Gladiator's Silk Guise
							conquest(700, i(209093)),	-- Verdant Gladiator's Silk Handwraps
							conquest(875, i(209094)),	-- Verdant Gladiator's Silk Hood
							conquest(875, i(209096)),	-- Verdant Gladiator's Silk Leggings
							conquest(700, i(209098)),	-- Verdant Gladiator's Silk Mantle
							conquest(700, i(209090)),	-- Verdant Gladiator's Silk Slippers
							conquest(700, i(209091)),	-- Verdant Gladiator's Silk Treads
							conquest(875, i(209097)),	-- Verdant Gladiator's Silk Trousers
							conquest(875, i(209088)),	-- Verdant Gladiator's Silk Tunic
							conquest(525, i(209102)),	-- Verdant Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(209199)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209200)),	-- Verdant Gladiator's Drape
							conquest(525, i(209201)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209195)),	-- Verdant Gladiator's Leather Belt
							conquest(700, i(209185)),	-- Verdant Gladiator's Leather Boots
							conquest(875, i(209191)),	-- Verdant Gladiator's Leather Breeches
							conquest(700, i(209187)),	-- Verdant Gladiator's Leather Gloves
							conquest(700, i(209188)),	-- Verdant Gladiator's Leather Grips
							conquest(875, i(209189)),	-- Verdant Gladiator's Leather Helm
							conquest(875, i(209184)),	-- Verdant Gladiator's Leather Jerkin
							conquest(875, i(209192)),	-- Verdant Gladiator's Leather Legwraps
							conquest(875, i(209190)),	-- Verdant Gladiator's Leather Mask
							conquest(700, i(209194)),	-- Verdant Gladiator's Leather Shoulderpads
							conquest(700, i(209193)),	-- Verdant Gladiator's Leather Spaulders
							conquest(700, i(209196)),	-- Verdant Gladiator's Leather Strap
							conquest(700, i(209186)),	-- Verdant Gladiator's Leather Treads
							conquest(875, i(209183)),	-- Verdant Gladiator's Leather Vest
							conquest(525, i(209198)),	-- Verdant Gladiator's Leather Wristguards
							conquest(525, i(209197)),	-- Verdant Gladiator's Leather Wristwraps
						}),
						cl(SHAMAN, {
							conquest(525, i(209256)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209257)),	-- Verdant Gladiator's Drape
							conquest(525, i(209258)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209252)),	-- Verdant Gladiator's Chain Belt
							conquest(700, i(209243)),	-- Verdant Gladiator's Chain Boots
							conquest(525, i(209255)),	-- Verdant Gladiator's Chain Bracers
							conquest(875, i(209249)),	-- Verdant Gladiator's Chain Breeches
							conquest(875, i(209247)),	-- Verdant Gladiator's Chain Faceguard
							conquest(700, i(209244)),	-- Verdant Gladiator's Chain Gauntlets
							conquest(700, i(209253)),	-- Verdant Gladiator's Chain Girdle
							conquest(700, i(209245)),	-- Verdant Gladiator's Chain Handguards
							conquest(875, i(209246)),	-- Verdant Gladiator's Chain Helm
							conquest(875, i(209248)),	-- Verdant Gladiator's Chain Leggings
							conquest(700, i(209250)),	-- Verdant Gladiator's Chain Monnion
							conquest(700, i(209242)),	-- Verdant Gladiator's Chain Sabatons
							conquest(700, i(209251)),	-- Verdant Gladiator's Chain Shoulderguard
							conquest(875, i(209241)),	-- Verdant Gladiator's Chain Tunic
							conquest(875, i(209240)),	-- Verdant Gladiator's Chain Vest
							conquest(525, i(209254)),	-- Verdant Gladiator's Chain Wristguards
						}),
						cl(WARLOCK, {
							conquest(525, i(209123)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209124)),	-- Verdant Gladiator's Drape
							conquest(525, i(209125)),	-- Verdant Gladiator's Shawl
							conquest(700, i(209118)),	-- Verdant Gladiator's Silk Amice
							conquest(525, i(209122)),	-- Verdant Gladiator's Silk Armbands
							conquest(700, i(209120)),	-- Verdant Gladiator's Silk Belt
							conquest(700, i(209119)),	-- Verdant Gladiator's Silk Cord
							conquest(700, i(209111)),	-- Verdant Gladiator's Silk Gloves
							conquest(875, i(209114)),	-- Verdant Gladiator's Silk Guise
							conquest(700, i(209112)),	-- Verdant Gladiator's Silk Handwraps
							conquest(875, i(209113)),	-- Verdant Gladiator's Silk Hood
							conquest(875, i(209115)),	-- Verdant Gladiator's Silk Leggings
							conquest(700, i(209117)),	-- Verdant Gladiator's Silk Mantle
							conquest(875, i(209107)),	-- Verdant Gladiator's Silk Robe
							conquest(700, i(209109)),	-- Verdant Gladiator's Silk Slippers
							conquest(700, i(209110)),	-- Verdant Gladiator's Silk Treads
							conquest(875, i(209116)),	-- Verdant Gladiator's Silk Trousers
							conquest(875, i(209108)),	-- Verdant Gladiator's Silk Vestments
							conquest(525, i(209121)),	-- Verdant Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(209313)),	-- Verdant Gladiator's Cloak
							conquest(525, i(209314)),	-- Verdant Gladiator's Drape
							conquest(525, i(209315)),	-- Verdant Gladiator's Shawl
							conquest(875, i(209297)),	-- Verdant Gladiator's Plate Chestguard
							conquest(875, i(209298)),	-- Verdant Gladiator's Plate Chestplate
							conquest(700, i(209301)),	-- Verdant Gladiator's Plate Gauntlets
							conquest(700, i(209309)),	-- Verdant Gladiator's Plate Girdle
							conquest(700, i(209310)),	-- Verdant Gladiator's Plate Greatbelt
							conquest(700, i(209302)),	-- Verdant Gladiator's Plate Handguards
							conquest(875, i(209303)),	-- Verdant Gladiator's Plate Helm
							conquest(875, i(209304)),	-- Verdant Gladiator's Plate Helmet
							conquest(875, i(209305)),	-- Verdant Gladiator's Plate Legguards
							conquest(700, i(209308)),	-- Verdant Gladiator's Plate Pauldrons
							conquest(700, i(209307)),	-- Verdant Gladiator's Plate Shoulders
							conquest(700, i(209300)),	-- Verdant Gladiator's Plate Stompers
							conquest(525, i(209312)),	-- Verdant Gladiator's Plate Vambraces
							conquest(700, i(209299)),	-- Verdant Gladiator's Plate Warboots
							conquest(875, i(209306)),	-- Verdant Gladiator's Plate Wargreaves
							conquest(525, i(209311)),	-- Verdant Gladiator's Plate Wristguards
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(209338)),	-- Verdant Gladiator's Band
						conquest(525, i(209337)),	-- Verdant Gladiator's Ring
						conquest(525, i(209339)),	-- Verdant Gladiator's Signet
					}),
					filter(NECK_F, {
						conquest(525, i(209342)),	-- Verdant Gladiator's Amulet
						conquest(525, i(209340)),	-- Verdant Gladiator's Necklace
						conquest(525, i(209341)),	-- Verdant Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(209343)),	-- Verdant Gladiator's Badge of Ferocity
						conquest(700, i(209345)),	-- Verdant Gladiator's Emblem
						conquest(700, i(209344)),	-- Verdant Gladiator's Insignia of Alacrity
						conquest(525, i(209346)),	-- Verdant Gladiator's Medallion
						conquest(525, i(209347)),	-- Verdant Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(900, i(209544)),	-- Verdant Gladiator's Axe
						conquest(1800, i(209554)),	-- Verdant Gladiator's Axestaff
						conquest(1800, i(209547)),	-- Verdant Gladiator's Bow
						conquest(450, i(209549)),	-- Verdant Gladiator's Bulwark
						conquest(450, i(209542)),	-- Verdant Gladiator's Censer
						conquest(900, i(209546)),	-- Verdant Gladiator's Claws
						conquest(900, i(209536)),	-- Verdant Gladiator's Dagger
						conquest(1800, i(209548)),	-- Verdant Gladiator's Greatstaff
						conquest(1800, i(209550)),	-- Verdant Gladiator's Greatsword
						conquest(1800, i(209551)),	-- Verdant Gladiator's Pulverizer
						conquest(1800, i(209540)),	-- Verdant Gladiator's Rifle
						conquest(1350, i(209541)),	-- Verdant Gladiator's Scepter
						conquest(1800, i(209538)),	-- Verdant Gladiator's Scythe
						conquest(450, i(209543)),	-- Verdant Gladiator's Shield
						conquest(900, i(209553)),	-- Verdant Gladiator's Shotel
						conquest(1350, i(209545)),	-- Verdant Gladiator's Sickle
						conquest(900, i(209535)),	-- Verdant Gladiator's Splitter
						conquest(1800, i(209539)),	-- Verdant Gladiator's Staff
						conquest(900, i(209552)),	-- Verdant Gladiator's Sword
						conquest(900, i(209537)),	-- Verdant Gladiator's Warglaive
					}),
				}),
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR }, ["bonusID"] = 7532 }, {
			n(CLASSES, {
				cl(DEATHKNIGHT, {
					i(209275),	-- Verdant Gladiator's Cloak
					i(209276),	-- Verdant Gladiator's Drape
					i(209277),	-- Verdant Gladiator's Shawl
					i(209259),	-- Verdant Gladiator's Plate Chestguard
					i(209260),	-- Verdant Gladiator's Plate Chestplate
					i(209263),	-- Verdant Gladiator's Plate Gauntlets
					i(209271),	-- Verdant Gladiator's Plate Girdle
					i(209272),	-- Verdant Gladiator's Plate Greatbelt
					i(209264),	-- Verdant Gladiator's Plate Handguards
					i(209265),	-- Verdant Gladiator's Plate Helm
					i(209266),	-- Verdant Gladiator's Plate Helmet
					i(209267),	-- Verdant Gladiator's Plate Legguards
					i(209270),	-- Verdant Gladiator's Plate Pauldrons
					i(209269),	-- Verdant Gladiator's Plate Shoulders
					i(209262),	-- Verdant Gladiator's Plate Stompers
					i(209274),	-- Verdant Gladiator's Plate Vambraces
					i(209261),	-- Verdant Gladiator's Plate Warboots
					i(209268),	-- Verdant Gladiator's Plate Wargreaves
					i(209273),	-- Verdant Gladiator's Plate Wristguards
				}),
				cl(DEMONHUNTER, {
					i(209161),	-- Verdant Gladiator's Cloak
					i(209162),	-- Verdant Gladiator's Drape
					i(209157),	-- Verdant Gladiator's Leather Belt
					i(209147),	-- Verdant Gladiator's Leather Boots
					i(209153),	-- Verdant Gladiator's Leather Breeches
					i(209149),	-- Verdant Gladiator's Leather Gloves
					i(209150),	-- Verdant Gladiator's Leather Grips
					i(209151),	-- Verdant Gladiator's Leather Helm
					i(209146),	-- Verdant Gladiator's Leather Jerkin
					i(209154),	-- Verdant Gladiator's Leather Legwraps
					i(209152),	-- Verdant Gladiator's Leather Mask
					i(209156),	-- Verdant Gladiator's Leather Shoulderpads
					i(209155),	-- Verdant Gladiator's Leather Spaulders
					i(209158),	-- Verdant Gladiator's Leather Strap
					i(209148),	-- Verdant Gladiator's Leather Treads
					i(209145),	-- Verdant Gladiator's Leather Vest
					i(209160),	-- Verdant Gladiator's Leather Wristguards
					i(209159),	-- Verdant Gladiator's Leather Wristwraps
					i(209163),	-- Verdant Gladiator's Shawl
				}),
				cl(DRUID, {
					i(209142),	-- Verdant Gladiator's Cloak
					i(209143),	-- Verdant Gladiator's Drape
					i(209138),	-- Verdant Gladiator's Leather Belt
					i(209128),	-- Verdant Gladiator's Leather Boots
					i(209134),	-- Verdant Gladiator's Leather Breeches
					i(209130),	-- Verdant Gladiator's Leather Gloves
					i(209131),	-- Verdant Gladiator's Leather Grips
					i(209132),	-- Verdant Gladiator's Leather Helm
					i(209127),	-- Verdant Gladiator's Leather Jerkin
					i(209135),	-- Verdant Gladiator's Leather Legwraps
					i(209133),	-- Verdant Gladiator's Leather Mask
					i(209137),	-- Verdant Gladiator's Leather Shoulderpads
					i(209136),	-- Verdant Gladiator's Leather Spaulders
					i(209139),	-- Verdant Gladiator's Leather Strap
					i(209129),	-- Verdant Gladiator's Leather Treads
					i(209126),	-- Verdant Gladiator's Leather Vest
					i(209141),	-- Verdant Gladiator's Leather Wristguards
					i(209140),	-- Verdant Gladiator's Leather Wristwraps
					i(209144),	-- Verdant Gladiator's Shawl
				}),
				cl(EVOKER, {
					i(209218),	-- Verdant Gladiator's Cloak
					i(209219),	-- Verdant Gladiator's Drape
					i(209220),	-- Verdant Gladiator's Shawl
					i(209214),	-- Verdant Gladiator's Chain Belt
					i(209205),	-- Verdant Gladiator's Chain Boots
					i(209217),	-- Verdant Gladiator's Chain Bracers
					i(209211),	-- Verdant Gladiator's Chain Breeches
					i(209209),	-- Verdant Gladiator's Chain Faceguard
					i(209206),	-- Verdant Gladiator's Chain Gauntlets
					i(209215),	-- Verdant Gladiator's Chain Girdle
					i(209207),	-- Verdant Gladiator's Chain Handguards
					i(209208),	-- Verdant Gladiator's Chain Helm
					i(209210),	-- Verdant Gladiator's Chain Leggings
					i(209212),	-- Verdant Gladiator's Chain Monnion
					i(209202),	-- Verdant Gladiator's Chain Robe
					i(209204),	-- Verdant Gladiator's Chain Sabatons
					i(209213),	-- Verdant Gladiator's Chain Shoulderguard
					i(209203),	-- Verdant Gladiator's Chain Vestments
					i(209216),	-- Verdant Gladiator's Chain Wristguards
				}),
				cl(HUNTER, {
					i(209233),	-- Verdant Gladiator's Chain Belt
					i(209224),	-- Verdant Gladiator's Chain Boots
					i(209236),	-- Verdant Gladiator's Chain Bracers
					i(209230),	-- Verdant Gladiator's Chain Breeches
					i(209228),	-- Verdant Gladiator's Chain Faceguard
					i(209225),	-- Verdant Gladiator's Chain Gauntlets
					i(209234),	-- Verdant Gladiator's Chain Girdle
					i(209226),	-- Verdant Gladiator's Chain Handguards
					i(209227),	-- Verdant Gladiator's Chain Helm
					i(209229),	-- Verdant Gladiator's Chain Leggings
					i(209231),	-- Verdant Gladiator's Chain Monnion
					i(209223),	-- Verdant Gladiator's Chain Sabatons
					i(209232),	-- Verdant Gladiator's Chain Shoulderguard
					i(209222),	-- Verdant Gladiator's Chain Tunic
					i(209221),	-- Verdant Gladiator's Chain Vest
					i(209235),	-- Verdant Gladiator's Chain Wristguards
					i(209237),	-- Verdant Gladiator's Cloak
					i(209238),	-- Verdant Gladiator's Drape
					i(209239),	-- Verdant Gladiator's Shawl
				}),
				cl(MAGE, {
					i(209085),	-- Verdant Gladiator's Cloak
					i(209086),	-- Verdant Gladiator's Drape
					i(209087),	-- Verdant Gladiator's Shawl
					i(209080),	-- Verdant Gladiator's Silk Amice
					i(209084),	-- Verdant Gladiator's Silk Armbands
					i(209082),	-- Verdant Gladiator's Silk Belt
					i(209070),	-- Verdant Gladiator's Silk Blouse
					i(209076),	-- Verdant Gladiator's Silk Cap
					i(209081),	-- Verdant Gladiator's Silk Cord
					i(209073),	-- Verdant Gladiator's Silk Gloves
					i(209074),	-- Verdant Gladiator's Silk Handwraps
					i(209075),	-- Verdant Gladiator's Silk Hat
					i(209077),	-- Verdant Gladiator's Silk Leggings
					i(209079),	-- Verdant Gladiator's Silk Mantle
					i(209071),	-- Verdant Gladiator's Silk Slippers
					i(209072),	-- Verdant Gladiator's Silk Treads
					i(209078),	-- Verdant Gladiator's Silk Trousers
					i(209069),	-- Verdant Gladiator's Silk Tunic
					i(209083),	-- Verdant Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(209180),	-- Verdant Gladiator's Cloak
					i(209181),	-- Verdant Gladiator's Drape
					i(209176),	-- Verdant Gladiator's Leather Belt
					i(209166),	-- Verdant Gladiator's Leather Boots
					i(209172),	-- Verdant Gladiator's Leather Breeches
					i(209168),	-- Verdant Gladiator's Leather Gloves
					i(209169),	-- Verdant Gladiator's Leather Grips
					i(209170),	-- Verdant Gladiator's Leather Helm
					i(209165),	-- Verdant Gladiator's Leather Jerkin
					i(209173),	-- Verdant Gladiator's Leather Legwraps
					i(209171),	-- Verdant Gladiator's Leather Mask
					i(209175),	-- Verdant Gladiator's Leather Shoulderpads
					i(209174),	-- Verdant Gladiator's Leather Spaulders
					i(209177),	-- Verdant Gladiator's Leather Strap
					i(209167),	-- Verdant Gladiator's Leather Treads
					i(209164),	-- Verdant Gladiator's Leather Vest
					i(209179),	-- Verdant Gladiator's Leather Wristguards
					i(209178),	-- Verdant Gladiator's Leather Wristwraps
					i(209182),	-- Verdant Gladiator's Shawl
				}),
				cl(PALADIN, {
					i(209294),	-- Verdant Gladiator's Cloak
					i(209295),	-- Verdant Gladiator's Drape
					i(209278),	-- Verdant Gladiator's Plate Chestguard
					i(209279),	-- Verdant Gladiator's Plate Chestplate
					i(209282),	-- Verdant Gladiator's Plate Gauntlets
					i(209290),	-- Verdant Gladiator's Plate Girdle
					i(209291),	-- Verdant Gladiator's Plate Greatbelt
					i(209283),	-- Verdant Gladiator's Plate Handguards
					i(209284),	-- Verdant Gladiator's Plate Helm
					i(209285),	-- Verdant Gladiator's Plate Helmet
					i(209286),	-- Verdant Gladiator's Plate Legguards
					i(209289),	-- Verdant Gladiator's Plate Pauldrons
					i(209288),	-- Verdant Gladiator's Plate Shoulders
					i(209281),	-- Verdant Gladiator's Plate Stompers
					i(209287),	-- Verdant Gladiator's Plate Tasses
					i(209293),	-- Verdant Gladiator's Plate Vambraces
					i(209280),	-- Verdant Gladiator's Plate Warboots
					i(209292),	-- Verdant Gladiator's Plate Wristguards
					i(209296),	-- Verdant Gladiator's Shawl
				}),
				cl(PRIEST, {
					i(209104),	-- Verdant Gladiator's Cloak
					i(209105),	-- Verdant Gladiator's Drape
					i(209106),	-- Verdant Gladiator's Shawl
					i(209099),	-- Verdant Gladiator's Silk Amice
					i(209103),	-- Verdant Gladiator's Silk Armbands
					i(209101),	-- Verdant Gladiator's Silk Belt
					i(209089),	-- Verdant Gladiator's Silk Blouse
					i(209100),	-- Verdant Gladiator's Silk Cord
					i(209092),	-- Verdant Gladiator's Silk Gloves
					i(209095),	-- Verdant Gladiator's Silk Guise
					i(209093),	-- Verdant Gladiator's Silk Handwraps
					i(209094),	-- Verdant Gladiator's Silk Hood
					i(209096),	-- Verdant Gladiator's Silk Leggings
					i(209098),	-- Verdant Gladiator's Silk Mantle
					i(209090),	-- Verdant Gladiator's Silk Slippers
					i(209091),	-- Verdant Gladiator's Silk Treads
					i(209097),	-- Verdant Gladiator's Silk Trousers
					i(209088),	-- Verdant Gladiator's Silk Tunic
					i(209102),	-- Verdant Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(209199),	-- Verdant Gladiator's Cloak
					i(209200),	-- Verdant Gladiator's Drape
					i(209195),	-- Verdant Gladiator's Leather Belt
					i(209185),	-- Verdant Gladiator's Leather Boots
					i(209191),	-- Verdant Gladiator's Leather Breeches
					i(209187),	-- Verdant Gladiator's Leather Gloves
					i(209188),	-- Verdant Gladiator's Leather Grips
					i(209189),	-- Verdant Gladiator's Leather Helm
					i(209184),	-- Verdant Gladiator's Leather Jerkin
					i(209192),	-- Verdant Gladiator's Leather Legwraps
					i(209190),	-- Verdant Gladiator's Leather Mask
					i(209194),	-- Verdant Gladiator's Leather Shoulderpads
					i(209193),	-- Verdant Gladiator's Leather Spaulders
					i(209196),	-- Verdant Gladiator's Leather Strap
					i(209186),	-- Verdant Gladiator's Leather Treads
					i(209183),	-- Verdant Gladiator's Leather Vest
					i(209198),	-- Verdant Gladiator's Leather Wristguards
					i(209197),	-- Verdant Gladiator's Leather Wristwraps
					i(209201),	-- Verdant Gladiator's Shawl
				}),
				cl(SHAMAN, {
					i(209252),	-- Verdant Gladiator's Chain Belt
					i(209243),	-- Verdant Gladiator's Chain Boots
					i(209255),	-- Verdant Gladiator's Chain Bracers
					i(209249),	-- Verdant Gladiator's Chain Breeches
					i(209247),	-- Verdant Gladiator's Chain Faceguard
					i(209244),	-- Verdant Gladiator's Chain Gauntlets
					i(209253),	-- Verdant Gladiator's Chain Girdle
					i(209245),	-- Verdant Gladiator's Chain Handguards
					i(209246),	-- Verdant Gladiator's Chain Helm
					i(209248),	-- Verdant Gladiator's Chain Leggings
					i(209250),	-- Verdant Gladiator's Chain Monnion
					i(209242),	-- Verdant Gladiator's Chain Sabatons
					i(209251),	-- Verdant Gladiator's Chain Shoulderguard
					i(209241),	-- Verdant Gladiator's Chain Tunic
					i(209240),	-- Verdant Gladiator's Chain Vest
					i(209254),	-- Verdant Gladiator's Chain Wristguards
					i(209256),	-- Verdant Gladiator's Cloak
					i(209257),	-- Verdant Gladiator's Drape
					i(209258),	-- Verdant Gladiator's Shawl
				}),
				cl(WARLOCK, {
					i(209123),	-- Verdant Gladiator's Cloak
					i(209124),	-- Verdant Gladiator's Drape
					i(209125),	-- Verdant Gladiator's Shawl
					i(209118),	-- Verdant Gladiator's Silk Amice
					i(209122),	-- Verdant Gladiator's Silk Armbands
					i(209120),	-- Verdant Gladiator's Silk Belt
					i(209119),	-- Verdant Gladiator's Silk Cord
					i(209111),	-- Verdant Gladiator's Silk Gloves
					i(209114),	-- Verdant Gladiator's Silk Guise
					i(209112),	-- Verdant Gladiator's Silk Handwraps
					i(209113),	-- Verdant Gladiator's Silk Hood
					i(209115),	-- Verdant Gladiator's Silk Leggings
					i(209117),	-- Verdant Gladiator's Silk Mantle
					i(209107),	-- Verdant Gladiator's Silk Robe
					i(209109),	-- Verdant Gladiator's Silk Slippers
					i(209110),	-- Verdant Gladiator's Silk Treads
					i(209116),	-- Verdant Gladiator's Silk Trousers
					i(209108),	-- Verdant Gladiator's Silk Vestments
					i(209121),	-- Verdant Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(209313),	-- Verdant Gladiator's Cloak
					i(209314),	-- Verdant Gladiator's Drape
					i(209297),	-- Verdant Gladiator's Plate Chestguard
					i(209298),	-- Verdant Gladiator's Plate Chestplate
					i(209301),	-- Verdant Gladiator's Plate Gauntlets
					i(209309),	-- Verdant Gladiator's Plate Girdle
					i(209310),	-- Verdant Gladiator's Plate Greatbelt
					i(209302),	-- Verdant Gladiator's Plate Handguards
					i(209303),	-- Verdant Gladiator's Plate Helm
					i(209304),	-- Verdant Gladiator's Plate Helmet
					i(209305),	-- Verdant Gladiator's Plate Legguards
					i(209308),	-- Verdant Gladiator's Plate Pauldrons
					i(209307),	-- Verdant Gladiator's Plate Shoulders
					i(209300),	-- Verdant Gladiator's Plate Stompers
					i(209312),	-- Verdant Gladiator's Plate Vambraces
					i(209299),	-- Verdant Gladiator's Plate Warboots
					i(209306),	-- Verdant Gladiator's Plate Wargreaves
					i(209311),	-- Verdant Gladiator's Plate Wristguards
					i(209315),	-- Verdant Gladiator's Shawl
				}),
			}),
			filter(FINGER_F, {
				i(209338),	-- Verdant Gladiator's Band
				i(209337),	-- Verdant Gladiator's Ring
				i(209339),	-- Verdant Gladiator's Signet
			}),
			filter(NECK_F, {
				i(209342),	-- Verdant Gladiator's Amulet
				i(209340),	-- Verdant Gladiator's Necklace
				i(209341),	-- Verdant Gladiator's Pendant
			}),
			filter(TRINKET_F, {
				i(209343),	-- Verdant Gladiator's Badge of Ferocity
				i(209345),	-- Verdant Gladiator's Emblem
				i(209344),	-- Verdant Gladiator's Insignia of Alacrity
				i(209346),	-- Verdant Gladiator's Medallion
				i(209347),	-- Verdant Gladiator's Sigil of Adaptation
			}),
			n(199720, {	-- Glamora
				["coord"] = { 45.9, 38.7, VALDRAKKEN },
				["g"] = {
					honor(100, i(209610, {	-- Verdant Gladiator's Tabard
						["sourceAchievements"] = { 19090 },	-- Elite: Dragonflight Season 3
						["bonusID"] = 0,
					})),
					moh(5, i(210502)),	-- Verdant Gladiator's Axe
					moh(10, i(210510)),	-- Verdant Gladiator's Axestaff
					moh(10, i(210517)),	-- Verdant Gladiator's Bow
					moh(5, i(210515)),	-- Verdant Gladiator's Bulwark
					moh(5, i(210513)),	-- Verdant Gladiator's Censer
					moh(5, i(210516)),	-- Verdant Gladiator's Claws
					moh(5, i(210503)),	-- Verdant Gladiator's Dagger
					moh(10, i(210509)),	-- Verdant Gladiator's Greatstaff
					moh(10, i(210518)),	-- Verdant Gladiator's Greatsword
					moh(10, i(210519)),	-- Verdant Gladiator's Pulverizer
					moh(10, i(210511)),	-- Verdant Gladiator's Rifle
					moh(5, i(210512)),	-- Verdant Gladiator's Scepter
					moh(10, i(210507)),	-- Verdant Gladiator's Scythe
					moh(5, i(210514)),	-- Verdant Gladiator's Shield
					moh(5, i(210521)),	-- Verdant Gladiator's Shotel
					moh(5, i(210504)),	-- Verdant Gladiator's Sickle
					moh(10, i(210508)),	-- Verdant Gladiator's Staff
					moh(5, i(210520)),	-- Verdant Gladiator's Sword
					moh(5, i(210506)),	-- Verdant Gladiator's Warglaive
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
					iensemble(231152, {	-- Arsenal: Elite Verdant Gladiator's Weapons
						["cost"] = {{"i", MOH, 80}},
					}),
					iensemble(231137, {	-- Ensemble: Elite Verdant Gladiator's Death Knight Armor
						["classes"] = { DEATHKNIGHT },
					}),
					iensemble(231138, {	-- Ensemble: Elite Verdant Gladiator's Demon Hunter Armor
						["classes"] = { DEMONHUNTER },
					}),
					iensemble(231139, {	-- Ensemble: Elite Verdant Gladiator's Druid Armor
						["classes"] = { DRUID },
					}),
					iensemble(231140, {	-- Ensemble: Elite Verdant Gladiator's Evoker Armor
						["classes"] = { EVOKER },
					}),
					iensemble(231141, {	-- Ensemble: Elite Verdant Gladiator's Hunter Armor
						["classes"] = { HUNTER },
					}),
					iensemble(231142, {	-- Ensemble: Elite Verdant Gladiator's Mage Armor
						["classes"] = { MAGE },
					}),
					iensemble(231143, {	-- Ensemble: Elite Verdant Gladiator's Monk Armor
						["classes"] = { MONK },
					}),
					iensemble(231144, {	-- Ensemble: Elite Verdant Gladiator's Paladin Armor
						["classes"] = { PALADIN },
					}),
					iensemble(231145, {	-- Ensemble: Elite Verdant Gladiator's Priest Armor
						["classes"] = { PRIEST },
					}),
					iensemble(231146, {	-- Ensemble: Elite Verdant Gladiator's Rogue Armor
						["classes"] = { ROGUE },
					}),
					iensemble(231147, {	-- Ensemble: Elite Verdant Gladiator's Shaman Armor
						["classes"] = { SHAMAN },
					}),
					iensemble(231148, {	-- Ensemble: Elite Verdant Gladiator's Warlock Armor
						["classes"] = { WARLOCK },
					}),
					iensemble(231149, {	-- Ensemble: Elite Verdant Gladiator's Warrior Armor
						["classes"] = { WARRIOR },
					}),
				}),
			}),
		})),
		filter(RECIPES, {
			-- #if AFTER 10.2.6.54358
			n(214682, { -- Mittzi Threadweave <Verdant Combatant Recipes>
				["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
				["coord"] = { 44.7, 42.7, VALDRAKKEN },
				["g"] = sharedData({ ["cost"] = {{"i", MOH, 3}} }, {
			-- #endif
					i(208289),	-- Design: Verdant Combatant's Jeweled Amulet (RECIPE!)
					i(208290),	-- Design: Verdant Combatant's Jeweled Signet (RECIPE!)
					i(208300),	-- Pattern: Verdant Combatant's Adamant Chainmail (RECIPE!)
					i(208299),	-- Pattern: Verdant Combatant's Adamant Cowl (RECIPE!)
					i(208305),	-- Pattern: Verdant Combatant's Adamant Cuffs (RECIPE!)
					i(208302),	-- Pattern: Verdant Combatant's Adamant Epaulets (RECIPE!)
					i(208304),	-- Pattern: Verdant Combatant's Adamant Gauntlets (RECIPE!)
					i(208306),	-- Pattern: Verdant Combatant's Adamant Girdle (RECIPE!)
					i(208301),	-- Pattern: Verdant Combatant's Adamant Leggings (RECIPE!)
					i(208303),	-- Pattern: Verdant Combatant's Adamant Treads (RECIPE!)
					i(208298),	-- Pattern: Verdant Combatant's Resilient Belt (RECIPE!)
					i(208295),	-- Pattern: Verdant Combatant's Resilient Boots (RECIPE!)
					i(208292),	-- Pattern: Verdant Combatant's Resilient Chestpiece (RECIPE!)
					i(208296),	-- Pattern: Verdant Combatant's Resilient Gloves (RECIPE!)
					i(208291),	-- Pattern: Verdant Combatant's Resilient Mask (RECIPE!)
					i(208294),	-- Pattern: Verdant Combatant's Resilient Shoulderpads (RECIPE!)
					i(208293),	-- Pattern: Verdant Combatant's Resilient Trousers (RECIPE!)
					i(208297),	-- Pattern: Verdant Combatant's Resilient Wristwraps (RECIPE!)
					i(208272),	-- Pattern: Verdant Combatant's Wildercloth Bands (RECIPE!)
					i(208273),	-- Pattern: Verdant Combatant's Wildercloth Cloak (RECIPE!)
					i(208274),	-- Pattern: Verdant Combatant's Wildercloth Gloves (RECIPE!)
					i(208275),	-- Pattern: Verdant Combatant's Wildercloth Hood (RECIPE!)
					i(208276),	-- Pattern: Verdant Combatant's Wildercloth Leggings (RECIPE!)
					i(208277),	-- Pattern: Verdant Combatant's Wildercloth Sash (RECIPE!)
					i(208278),	-- Pattern: Verdant Combatant's Wildercloth Shoulderpads (RECIPE!)
					i(208279),	-- Pattern: Verdant Combatant's Wildercloth Treads (RECIPE!)
					i(208280),	-- Pattern: Verdant Combatant's Wildercloth Tunic (RECIPE!)
					i(208287),	-- Plans: Verdant Combatant's Draconium Armguards (RECIPE!)
					i(208282),	-- Plans: Verdant Combatant's Draconium Breastplate (RECIPE!)
					i(208285),	-- Plans: Verdant Combatant's Draconium Gauntlets (RECIPE!)
					i(208283),	-- Plans: Verdant Combatant's Draconium Greaves (RECIPE!)
					i(208281),	-- Plans: Verdant Combatant's Draconium Helm (RECIPE!)
					i(208284),	-- Plans: Verdant Combatant's Draconium Pauldrons (RECIPE!)
					i(208286),	-- Plans: Verdant Combatant's Draconium Sabatons (RECIPE!)
					i(208288),	-- Plans: Verdant Combatant's Draconium Waistguard (RECIPE!)
					i(208317),	-- Schematic: Verdant Combatant's Cloth Goggles (RECIPE!)
					i(208318),	-- Schematic: Verdant Combatant's Leather Goggles (RECIPE!)
					i(208319),	-- Schematic: Verdant Combatant's Mail Goggles (RECIPE!)
					i(208320),	-- Schematic: Verdant Combatant's Plate Goggles (RECIPE!)
			-- #if AFTER 10.2.6.54358
					i(208312),	-- Technique: Verdant Combatant's Emblem (RECIPE!)
					i(208311),	-- Technique: Verdant Combatant's Insignia of Alacrity (RECIPE!)
					i(208310),	-- Technique: Verdant Combatant's Medallion (RECIPE!)
				}),
			}),
			-- #endif
			n(197553, {	-- Fieldmaster Emberath
				["coord"] = { 43.1, 42.4, VALDRAKKEN },
				["g"] = sharedData({
					["cost"] = {{"i", 190450, 3}},	-- 3x Awakened Ire
					["timeline"] = { ADDED_10_2_0, REMOVED_10_2_6_SEASON_FOUR },
				}, {
					i(208312),	-- Technique: Verdant Combatant's Emblem (RECIPE!)
					i(208311),	-- Technique: Verdant Combatant's Insignia of Alacrity (RECIPE!)
					i(208310),	-- Technique: Verdant Combatant's Medallion (RECIPE!)
				}),
			}),
		}),
	}),
}))));