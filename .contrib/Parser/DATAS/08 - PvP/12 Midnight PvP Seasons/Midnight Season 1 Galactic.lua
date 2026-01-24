-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART } }, {
	n(SEASON_GALACTIC, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			ach(61443, {	-- Galactic Weapons of Conquest
				i(255671),	-- Galactic Gladiator's Weapon Token
			}),
			ach(61403, {	-- Galactic Combatant
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(61405, {	-- Galactic Combatant
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(61181),	-- Combatant I: Midnight Season 1
			ach(61182),	-- Combatant II: Midnight Season 1
			ach(61183),	-- Challenger I: Midnight Season 1
			ach(61184),	-- Challenger II: Midnight Season 1
			ach(61187, {	-- Duelist: Midnight Season 1
				i(264164, {	-- Galactic Gladiator's Tabard
					["races"] = ALLIANCE_ONLY,
				}),
				i(260441, {	-- Galactic Gladiator's Tabard
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(61197, {	-- Elite: Midnight Season 1
				i(264010, {	-- Galactic Gladiator's Prestigious Cloak
					["races"] = ALLIANCE_ONLY,
				}),
				i(260443, {	-- Galactic Gladiator's Prestigious Cloak	
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(61180, {	-- Galactic Gladiator: Midnight Season 1
				title(654),	-- Galactic Gladiator <Name>
			}),
			ach(61188, {	-- Gladiator: Midnight Season 1
				i(260228),	-- Galactic Gladiator's Goredrake (MOUNT!)
			}),
			ach(61450),	-- Galactic Gladiator's Goredrake
			ach(61185),	-- Rival I: Midnight Season 1
			ach(61186,	{	-- Rival II: Midnight Season 1
				ill(8553),	-- Galaxy (ILLUSION!)
			}),
			-- RBG
			ach(61177, {	-- Galactic Marshal: Midnight Season 1
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(651),	-- Galactic Marshal <Name>
				},
			}),
			ach(61178, {	-- Galactic Warlord: Midnight Season 1
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(652),	-- Galactic Warlord <Name>
				},
			}),
			ach(61195, {	-- Hero of the Alliance: Galactic
				["races"]= ALLIANCE_ONLY,
			}),
			ach(61196, {	-- Hero of the Horde: Galactic
				["races"]= HORDE_ONLY,
			}),
			ach(61194, {	-- Strategist: Midnight Season 1
				i(255879),	-- Galactic Legend's Pennant (Cosmetic!)
			}),
			-- Solo
			ach(61190, {	-- Legend: Midnight Season 1
				i(255879),	-- Galactic Legend's Pennant (Cosmetic!)
			}),
			ach(61198, {	-- Battle Mender: Midnight Season 1
				["classes"] = HEALERS,
			}),
			ach(61179, {	-- Galactic Legend: Midnight Season 1
				title(653),	-- Galactic Legend <Name>
			}),
			-- Fashion
			ach(61586),	-- Galactic Gala
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			i(257504, {	-- Vicious Snaplizard [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(257502, {	-- Vicious Snaplizard [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			n(243224, {	-- Knight-Lord Bloodvalor <War Mode Quartermaster>
				["coord"] = { 34.1, 81.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				--[[["groups"] = {
					filter(BACK_F, {
						bloody(525, i(255914)),	-- Galactic Warmonger's Cape
						bloody(525, i(255916)),	-- Galactic Warmonger's Cloak
						bloody(525, i(255917)),	-- Galactic Warmonger's Drape
						bloody(525, i(255915)),	-- Galactic Warmonger's Shawl
					}),
					filter(CLOTH, {
						bloody(525, i(255888)),	-- Galactic Warmonger's Bindings
						bloody(700, i(255887)),	-- Galactic Warmonger's Cord
						bloody(875, i(255882)),	-- Galactic Warmonger's Garb
						bloody(700, i(255884)),	-- Galactic Warmonger's Gloves
						bloody(700, i(255889)),	-- Galactic Warmonger's Mantle
						bloody(875, i(255885)),	-- Galactic Warmonger's Mask
						bloody(875, i(255886)),	-- Galactic Warmonger's Pants
						bloody(700, i(255883)),	-- Galactic Warmonger's Slippers
					}),
					filter(LEATHER, {
						bloody(700, i(255894)),	-- Galactic Warmonger's Belt
						bloody(700, i(255890)),	-- Galactic Warmonger's Boots
						bloody(875, i(255893)),	-- Galactic Warmonger's Breeches
						bloody(700, i(255891)),	-- Galactic Warmonger's Handwraps
						bloody(875, i(255892)),	-- Galactic Warmonger's Hood
						bloody(875, i(255896)),	-- Galactic Warmonger's Jerkin
						bloody(700, i(255897)),	-- Galactic Warmonger's Shoulderguard
						bloody(525, i(255895)),	-- Galactic Warmonger's Wraps
					}),
					filter(MAIL, {
						bloody(525, i(255913)),	-- Galactic Warmonger's Armguards
						bloody(875, i(255906)),	-- Galactic Warmonger's Chestguard
						bloody(700, i(255912)),	-- Galactic Warmonger's Cinch
						bloody(700, i(255911)),	-- Galactic Warmonger's Epaulets
						bloody(700, i(255907)),	-- Galactic Warmonger's Greaves
						bloody(700, i(255908)),	-- Galactic Warmonger's Grips
						bloody(875, i(255909)),	-- Galactic Warmonger's Helm
						bloody(875, i(255910)),	-- Galactic Warmonger's Leggings
					}),
					filter(PLATE, {
						bloody(525, i(255905)),	-- Galactic Warmonger's Bracers
						bloody(700, i(255904)),	-- Galactic Warmonger's Clasp
						bloody(875, i(255899)),	-- Galactic Warmonger's Cuirass
						bloody(875, i(255898)),	-- Galactic Warmonger's Faceplate
						bloody(700, i(255901)),	-- Galactic Warmonger's Gauntlets
						bloody(875, i(255902)),	-- Galactic Warmonger's Legguards
						bloody(700, i(255900)),	-- Galactic Warmonger's Sabatons
						bloody(700, i(255903)),	-- Galactic Warmonger's Spaulders
					}),
					n(WEAPONS, {
						bloody(525, i(255931)),	-- Galactic Warmonger's Aegis
						bloody(875, i(255918)),	-- Galactic Warmonger's Battleaxe
						bloody(1750, i(255925)),	-- Galactic Warmonger's Battlestaff
						bloody(1750, i(255927)),	-- Galactic Warmonger's Broadsword
						bloody(875, i(255920)),	-- Galactic Warmonger's Carver
						bloody(1225, i(255928)),	-- Galactic Warmonger's Club
						bloody(875, i(255936)),	-- Galactic Warmonger's Crusher
						bloody(875, i(255930)),	-- Galactic Warmonger's Cudgel
						bloody(1225, i(255938)),	-- Galactic Warmonger's Dagger
						bloody(875, i(255939)),	-- Galactic Warmonger's Dirk
						bloody(1750, i(255921)),	-- Galactic Warmonger's Flameshot
						bloody(1750, i(255926)),	-- Galactic Warmonger's Greatsword
						bloody(875, i(255929)),	-- Galactic Warmonger's Hammer
						bloody(1225, i(255919)),	-- Galactic Warmonger's Hatchet
						bloody(1750, i(255932)),	-- Galactic Warmonger's Impaler
						bloody(525, i(255923)),	-- Galactic Warmonger's Lantern
						bloody(875, i(255935)),	-- Galactic Warmonger's Mace
						bloody(1750, i(255933)),	-- Galactic Warmonger's Spear
						bloody(1750, i(255924)),	-- Galactic Warmonger's Spire
						bloody(1225, i(255937)),	-- Galactic Warmonger's Scepter
						bloody(875, i(255922)),	-- Galactic Warmonger's Twinblade
						bloody(1225, i(255934)),	-- Galactic Warmonger's Wand
					}),
				},]]--
			}),
		})),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			n(243221, {	-- Captain Dawnrunner <Honor Quartermaster>
				["coord"] = { 34.0, 81.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				--[[ ["groups"] = {
					filter(BACK_F, {
						honor(525, i(255339)),	-- Galactic Aspirant's Cape
						honor(525, i(255338)),	-- Galactic Aspirant's Cloak
						honor(525, i(255337)),	-- Galactic Aspirant's Drape
						honor(525, i(255340)),	-- Galactic Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(255319)),	-- Galactic Aspirant's Silk Belt
						honor(525, i(255322)),	-- Galactic Aspirant's Silk Bindings
						honor(700, i(255287)),	-- Galactic Aspirant's Silk Cord
						honor(875, i(255307)),	-- Galactic Aspirant's Silk Cover
						honor(700, i(255300)),	-- Galactic Aspirant's Silk Footwraps
						honor(700, i(255273)),	-- Galactic Aspirant's Silk Gloves
						honor(700, i(255305)),	-- Galactic Aspirant's Silk Handwraps
						honor(875, i(255275)),	-- Galactic Aspirant's Silk Hood
						honor(875, i(255279)),	-- Galactic Aspirant's Silk Leggings
						honor(875, i(255311)),	-- Galactic Aspirant's Silk Legwraps
						honor(700, i(255284)),	-- Galactic Aspirant's Silk Mantle
						honor(875, i(255263)),	-- Galactic Aspirant's Silk Robe
						honor(700, i(255316)),	-- Galactic Aspirant's Silk Shawl
						honor(875, i(255295)),	-- Galactic Aspirant's Silk Shirt
						honor(700, i(255268)),	-- Galactic Aspirant's Silk Treads
						honor(525, i(255290)),	-- Galactic Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(255332)),	-- Galactic Aspirant's Band
						honor(525, i(255331)),	-- Galactic Aspirant's Ring
						honor(525, i(255333)),	-- Galactic Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(255325)),	-- Galactic Aspirant's Leather Armguards
						honor(700, i(255289)),	-- Galactic Aspirant's Leather Belt
						honor(700, i(255270)),	-- Galactic Aspirant's Leather Boots
						honor(875, i(255281)),	-- Galactic Aspirant's Leather Breeches
						honor(700, i(255321)),	-- Galactic Aspirant's Leather Cord
						honor(700, i(255302)),	-- Galactic Aspirant's Leather Footpads
						honor(700, i(255271)),	-- Galactic Aspirant's Leather Gloves
						honor(700, i(255303)),	-- Galactic Aspirant's Leather Grips
						honor(875, i(255277)),	-- Galactic Aspirant's Leather Helm
						honor(875, i(255313)),	-- Galactic Aspirant's Leather Leggings
						honor(700, i(255314)),	-- Galactic Aspirant's Leather Mantle
						honor(875, i(255309)),	-- Galactic Aspirant's Leather Mask
						honor(700, i(255282)),	-- Galactic Aspirant's Leather Spaulders
						honor(875, i(255298)),	-- Galactic Aspirant's Leather Tunic
						honor(875, i(255266)),	-- Galactic Aspirant's Leather Vest
						honor(525, i(255293)),	-- Galactic Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(875, i(255297)),	-- Galactic Aspirant's Armored Tunic
						honor(875, i(255265)),	-- Galactic Aspirant's Armored Vest
						honor(700, i(255320)),	-- Galactic Aspirant's Chain Belt
						honor(525, i(255324)),	-- Galactic Aspirant's Chain Bracer
						honor(700, i(255320)),	-- Galactic Aspirant's Chain Clasp
						honor(700, i(255274)),	-- Galactic Aspirant's Chain Gauntlets
						honor(700, i(255306)),	-- Galactic Aspirant's Chain Handguards
						honor(875, i(255308)),	-- Galactic Aspirant's Chain Headguard
						honor(875, i(255276)),	-- Galactic Aspirant's Chain Helm
						honor(875, i(255280)),	-- Galactic Aspirant's Chain Leggings
						honor(700, i(255301)),	-- Galactic Aspirant's Chain Sabatons
						honor(700, i(255317)),	-- Galactic Aspirant's Chain Shoulderguards
						honor(700, i(255285)),	-- Galactic Aspirant's Chain Spaulders
						honor(700, i(255301)),	-- Galactic Aspirant's Chain Stompers
						honor(875, i(255312)),	-- Galactic Aspirant's Chain Wargreaves
						honor(525, i(255292)),	-- Galactic Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(255335)),	-- Galactic Aspirant's Choker
						honor(525, i(255334)),	-- Galactic Aspirant's Necklace
						honor(525, i(255336)),	-- Galactic Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(255264)),	-- Galactic Aspirant's Chestplate
						honor(525, i(255323)),	-- Galactic Aspirant's Plate Armguards
						honor(875, i(255296)),	-- Galactic Aspirant's Plate Armor
						honor(525, i(255291)),	-- Galactic Aspirant's Plate Cuffs
						honor(700, i(255272)),	-- Galactic Aspirant's Plate Gauntlets
						honor(700, i(255286)),	-- Galactic Aspirant's Plate Girdle
						honor(700, i(255318)),	-- Galactic Aspirant's Plate Greatbelt
						honor(700, i(255304)),	-- Galactic Aspirant's Plate Handguards
						honor(875, i(255294)),	-- Galactic Aspirant's Plate Headguard
						honor(875, i(255262)),	-- Galactic Aspirant's Plate Helm
						honor(875, i(255278)),	-- Galactic Aspirant's Plate Legguards
						honor(700, i(255315)),	-- Galactic Aspirant's Plate Pauldrons
						honor(700, i(255283)),	-- Galactic Aspirant's Plate Shoulders
						honor(700, i(255299)),	-- Galactic Aspirant's Plate Stompers
						honor(700, i(255267)),	-- Galactic Aspirant's Plate Warboots
						honor(875, i(255310)),	-- Galactic Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(255326)),	-- Galactic Aspirant's Badge of Ferocity
						honor(700, i(255329)),	-- Galactic Aspirant's Emblem
						honor(700, i(255328)),	-- Galactic Aspirant's Insignia of Alacrity
						honor(525, i(255327)),	-- Galactic Aspirant's Medallion
						honor(525, i(255330)),	-- Galactic Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(255341)),	-- Galactic Aspirant's Battleaxe
						honor(525, i(255347)),	-- Galactic Aspirant's Censer
						honor(875, i(255355)),	-- Galactic Aspirant's Chopper
						honor(875, i(255342)),	-- Galactic Aspirant's Dagger
						honor(1750, i(255346)),	-- Galactic Aspirant's Greatsword
						honor(1750, i(255352)),	-- Galactic Aspirant's Halberd
						--honor(875, i(229508)),	-- Galactic Aspirant's Hammer // Bad itemid
						honor(1225, i(255354)),	-- Galactic Aspirant's Knife
						honor(875, i(255343)),	-- Galactic Aspirant's Mace
						honor(875, i(255353)),	-- Galactic Aspirant's Morningstar
						honor(1750, i(255344)),	-- Galactic Aspirant's Polearm
						honor(1750, i(255351)),	-- Galactic Aspirant's Rifle
						honor(1225, i(255349)),	-- Galactic Aspirant's Scepter
						honor(525, i(255350)),	-- Galactic Aspirant's Shield
						honor(1750, i(255345)),	-- Galactic Aspirant's Staff
						honor(1225, i(255356)),	-- Galactic Aspirant's Wand
						honor(875, i(255348)),	-- Galactic Aspirant's Warglaive
					}),
				},]]--
			})
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 } }, {
			n(243220, {	-- Irissa Bloodstar <Conquest Quartermaster>
				["coord"] = { 34.1, 80.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["ItemAppearanceModifierID"] = 159,
				--[[ ["groups"] = {
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(875, i(255549)),	-- Galactic Gladiator's Chestguard
							conquest(875, i(255550)),	-- Galactic Gladiator's Chestplate
							conquest(700, i(255551)),	-- Galactic Gladiator's Plate Warboots
							conquest(700, i(255552)),	-- Galactic Gladiator's Plate Stompers
							conquest(700, i(255553)),	-- Galactic Gladiator's Plate Gauntlets
							conquest(700, i(255554)),	-- Galactic Gladiator's Plate Handguards
							conquest(875, i(255555)),	-- Galactic Gladiator's Plate Helm
							conquest(875, i(255556)),	-- Galactic Gladiator's Plate Helmet
							conquest(875, i(255557)),	-- Galactic Gladiator's Plate Legguards
							conquest(875, i(255558)),	-- Galactic Gladiator's Plate Wargreaves
							conquest(700, i(255559)),	-- Galactic Gladiator's Plate Shoulders
							conquest(700, i(255560)),	-- Galactic Gladiator's Plate Pauldrons
							conquest(700, i(255561)),	-- Galactic Gladiator's Plate Girdle
							conquest(700, i(255562)),	-- Galactic Gladiator's Plate Greatbelt
							conquest(525, i(255563)),	-- Galactic Gladiator's Plate Wristguards
							conquest(525, i(255564)),	-- Galactic Gladiator's Plate Vambraces
							conquest(525, i(255565)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255566)),	-- Galactic Gladiator's Drape
							conquest(525, i(255567)),	-- Galactic Gladiator's Shawl
						}),
						cl(DEMONHUNTER, {
							conquest(875, i(255435)),	-- Galactic Gladiator's Leather Vest
							conquest(875, i(255436)),	-- Galactic Gladiator's Leather Jerkin
							conquest(700, i(255437)),	-- Galactic Gladiator's Leather Boots
							conquest(700, i(255438)),	-- Galactic Gladiator's Leather Treads
							conquest(700, i(255439)),	-- Galactic Gladiator's Leather Gloves
							conquest(700, i(255440)),	-- Galactic Gladiator's Leather Grips
							conquest(875, i(255441)),	-- Galactic Gladiator's Leather Helm
							conquest(875, i(255442)),	-- Galactic Gladiator's Leather Mask
							conquest(875, i(255443)),	-- Galactic Gladiator's Leather Breeches
							conquest(875, i(255444)),	-- Galactic Gladiator's Leather Legwraps
							conquest(700, i(255445)),	-- Galactic Gladiator's Leather Spaulders
							conquest(700, i(255446)),	-- Galactic Gladiator's Leather Shoulderpads
							conquest(700, i(255447)),	-- Galactic Gladiator's Leather Belt
							conquest(700, i(255448)),	-- Galactic Gladiator's Leather Strap
							conquest(525, i(255449)),	-- Galactic Gladiator's Leather Wristwraps
							conquest(525, i(255450)),	-- Galactic Gladiator's Leather Wristguards
							conquest(525, i(255451)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255452)),	-- Galactic Gladiator's Drape
							conquest(525, i(255453)),	-- Galactic Gladiator's Shawl
						}),
						cl(DRUID, {
							conquest(875, i(255415)),	-- Galactic Gladiator's Leather Vest
							conquest(875, i(255416)),	-- Galactic Gladiator's Leather Vestments
							conquest(700, i(255417)),	-- Galactic Gladiator's Leather Boots
							conquest(700, i(255418)),	-- Galactic Gladiator's Leather Treads
							conquest(700, i(255419)),	-- Galactic Gladiator's Leather Gloves
							conquest(700, i(255420)),	-- Galactic Gladiator's Leather Grips
							conquest(875, i(255421)),	-- Galactic Gladiator's Leather Helm
							conquest(875, i(255422)),	-- Galactic Gladiator's Leather Mask
							conquest(875, i(255423)),	-- Galactic Gladiator's Leather Breeches
							conquest(875, i(255424)),	-- Galactic Gladiator's Leather Legwraps
							conquest(700, i(255425)),	-- Galactic Gladiator's Leather Spaulders
							conquest(700, i(255426)),	-- Galactic Gladiator's Leather Shoulderpads
							conquest(700, i(255427)),	-- Galactic Gladiator's Leather Belt
							conquest(700, i(255429)),	-- Galactic Gladiator's Leather Strap
							conquest(525, i(255430)),	-- Galactic Gladiator's Leather Wristwraps
							conquest(525, i(255431)),	-- Galactic Gladiator's Leather Wristguards
							conquest(525, i(255432)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255433)),	-- Galactic Gladiator's Drape
							conquest(525, i(255434)),	-- Galactic Gladiator's Shawl
						}),
						cl(EVOKER, {
							conquest(875, i(255492)),	-- Galactic Gladiator's Armored Scales
							conquest(875, i(255493)),	-- Galactic Gladiator's Scaleguard
							conquest(700, i(255494)),	-- Galactic Gladiator's Chain Sabatons
							conquest(700, i(255495)),	-- Galactic Gladiator's Chain Boots
							conquest(700, i(255496)),	-- Galactic Gladiator's Chain Gauntlets
							conquest(700, i(255497)),	-- Galactic Gladiator's Chain Handguards
							conquest(875, i(255498)),	-- Galactic Gladiator's Chain Helm
							conquest(875, i(255499)),	-- Galactic Gladiator's Chain Faceguard
							conquest(875, i(255500)),	-- Galactic Gladiator's Chain Leggings
							conquest(875, i(255501)),	-- Galactic Gladiator's Chain Breeches
							conquest(700, i(255502)),	-- Galactic Gladiator's Chain Monnion
							conquest(700, i(255503)),	-- Galactic Gladiator's Chain Shoulderguard
							conquest(700, i(255504)),	-- Galactic Gladiator's Chain Belt
							conquest(700, i(255505)),	-- Galactic Gladiator's Chain Girdle
							conquest(525, i(255506)),	-- Galactic Gladiator's Chain Wristguards
							conquest(525, i(255507)),	-- Galactic Gladiator's Chain Bracers
							conquest(525, i(255508)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255509)),	-- Galactic Gladiator's Drape
							conquest(525, i(255510)),	-- Galactic Gladiator's Shawl
						}),
						cl(HUNTER, {
							conquest(875, i(255511)),	-- Galactic Gladiator's Chain Vest
							conquest(875, i(255512)),	-- Galactic Gladiator's Chain Tunic
							conquest(700, i(255513)),	-- Galactic Gladiator's Chain Sabatons
							conquest(700, i(255514)),	-- Galactic Gladiator's Chain Boots
							conquest(700, i(255515)),	-- Galactic Gladiator's Chain Gauntlets
							conquest(700, i(255516)),	-- Galactic Gladiator's Chain Handguards
							conquest(875, i(255517)),	-- Galactic Gladiator's Chain Helm
							conquest(875, i(255518)),	-- Galactic Gladiator's Chain Faceguard
							conquest(875, i(255519)),	-- Galactic Gladiator's Chain Leggings
							conquest(875, i(255520)),	-- Galactic Gladiator's Chain Breeches
							conquest(700, i(255521)),	-- Galactic Gladiator's Chain Monnion
							conquest(700, i(255522)),	-- Galactic Gladiator's Chain Shoulderguard
							conquest(700, i(255523)),	-- Galactic Gladiator's Chain Belt
							conquest(700, i(255524)),	-- Galactic Gladiator's Chain Girdle
							conquest(525, i(255525)),	-- Galactic Gladiator's Chain Wristguards
							conquest(525, i(255526)),	-- Galactic Gladiator's Chain Bracers
							conquest(525, i(255527)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255528)),	-- Galactic Gladiator's Drape
							conquest(525, i(255529)),	-- Galactic Gladiator's Shawl
						}),
						cl(MAGE, {
							conquest(875, i(255357)),	-- Galactic Gladiator's Silk Robe
							conquest(875, i(255358)),	-- Galactic Gladiator's Silk Gown
							conquest(700, i(255359)),	-- Galactic Gladiator's Silk Slippers
							conquest(700, i(255360)),	-- Galactic Gladiator's Silk Treads
							conquest(700, i(255361)),	-- Galactic Gladiator's Silk Gloves
							conquest(700, i(255362)),	-- Galactic Gladiator's Silk Handwraps
							conquest(875, i(255363)),	-- Galactic Gladiator's Silk Hat
							conquest(875, i(255364)),	-- Galactic Gladiator's Silk Cap
							conquest(875, i(255365)),	-- Galactic Gladiator's Silk Leggings
							conquest(875, i(255366)),	-- Galactic Gladiator's Silk Trousers
							conquest(700, i(255367)),	-- Galactic Gladiator's Silk Mantle
							conquest(700, i(255368)),	-- Galactic Gladiator's Silk Amice
							conquest(700, i(255369)),	-- Galactic Gladiator's Silk Cord
							conquest(700, i(255370)),	-- Galactic Gladiator's Silk Belt
							conquest(525, i(255371)),	-- Galactic Gladiator's Silk Wristwraps
							conquest(525, i(255372)),	-- Galactic Gladiator's Silk Armbands
							conquest(525, i(255373)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255374)),	-- Galactic Gladiator's Drape
							conquest(525, i(255375)),	-- Galactic Gladiator's Shawl
						}),
						cl(MONK, {
							conquest(875, i(255454)),	-- Galactic Gladiator's Leather Vest
							conquest(875, i(255455)),	-- Galactic Gladiator's Leather Jerkin
							conquest(700, i(255456)),	-- Galactic Gladiator's Leather Boots
							conquest(700, i(255457)),	-- Galactic Gladiator's Leather Treads
							conquest(700, i(255458)),	-- Galactic Gladiator's Leather Gloves
							conquest(700, i(255459)),	-- Galactic Gladiator's Leather Grips
							conquest(875, i(255460)),	-- Galactic Gladiator's Leather Helm
							conquest(875, i(255461)),	-- Galactic Gladiator's Leather Mask
							conquest(875, i(255462)),	-- Galactic Gladiator's Leather Breeches
							conquest(875, i(255463)),	-- Galactic Gladiator's Leather Legwraps
							conquest(700, i(255464)),	-- Galactic Gladiator's Leather Spaulders
							conquest(700, i(255465)),	-- Galactic Gladiator's Leather Shoulderpads
							conquest(700, i(255466)),	-- Galactic Gladiator's Leather Belt
							conquest(700, i(255467)),	-- Galactic Gladiator's Leather Strap
							conquest(525, i(255468)),	-- Galactic Gladiator's Leather Wristwraps
							conquest(525, i(255469)),	-- Galactic Gladiator's Leather Wristguards
							conquest(525, i(255470)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255471)),	-- Galactic Gladiator's Drape
							conquest(525, i(255472)),	-- Galactic Gladiator's Shawl
						}),
						cl(PALADIN, {
							conquest(875, i(255568)),	-- Galactic Gladiator's Chestguard
							conquest(875, i(255569)),	-- Galactic Gladiator's Chestplate
							conquest(700, i(255570)),	-- Galactic Gladiator's Plate Warboots
							conquest(700, i(255571)),	-- Galactic Gladiator's Plate Stompers
							conquest(700, i(255572)),	-- Galactic Gladiator's Plate Gauntlets
							conquest(700, i(255573)),	-- Galactic Gladiator's Plate Handguards
							conquest(875, i(255574)),	-- Galactic Gladiator's Plate Helm
							conquest(875, i(255575)),	-- Galactic Gladiator's Plate Helmet
							conquest(875, i(255576)),	-- Galactic Gladiator's Plate Legguards
							conquest(875, i(255578)),	-- Galactic Gladiator's Plate Tasses
							conquest(700, i(255579)),	-- Galactic Gladiator's Plate Shoulders
							conquest(700, i(255580)),	-- Galactic Gladiator's Plate Pauldrons
							conquest(700, i(255581)),	-- Galactic Gladiator's Plate Girdle
							conquest(700, i(255582)),	-- Galactic Gladiator's Plate Greatbelt
							conquest(525, i(255583)),	-- Galactic Gladiator's Plate Wristguards
							conquest(525, i(255584)),	-- Galactic Gladiator's Plate Vambraces
							conquest(525, i(255585)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255586)),	-- Galactic Gladiator's Drape
							conquest(525, i(255587)),	-- Galactic Gladiator's Shawl
						}),
						cl(PRIEST, {
							conquest(875, i(255376)),	-- Galactic Gladiator's Silk Robes
							conquest(875, i(255377)),	-- Galactic Gladiator's Silk Vestments
							conquest(700, i(255378)),	-- Galactic Gladiator's Silk Slippers
							conquest(700, i(255379)),	-- Galactic Gladiator's Silk Treads
							conquest(700, i(255380)),	-- Galactic Gladiator's Silk Gloves
							conquest(700, i(255381)),	-- Galactic Gladiator's Silk Handwraps
							conquest(875, i(255382)),	-- Galactic Gladiator's Silk Hood
							conquest(875, i(255383)),	-- Galactic Gladiator's Silk Guise
							conquest(875, i(255384)),	-- Galactic Gladiator's Silk Leggings
							conquest(875, i(255385)),	-- Galactic Gladiator's Silk Trousers
							conquest(700, i(255386)),	-- Galactic Gladiator's Silk Mantle
							conquest(700, i(255387)),	-- Galactic Gladiator's Silk Amice
							conquest(700, i(255388)),	-- Galactic Gladiator's Silk Cord
							conquest(700, i(255389)),	-- Galactic Gladiator's Silk Belt
							conquest(525, i(255390)),	-- Galactic Gladiator's Silk Wristwraps
							conquest(525, i(255391)),	-- Galactic Gladiator's Silk Armbands
							conquest(525, i(255392)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255393)),	-- Galactic Gladiator's Drape
							conquest(525, i(255394)),	-- Galactic Gladiator's Shawl
						}),
						cl(ROGUE, {
							i(255473),	-- Galactic Gladiator's Leather Vest
							i(255474),	-- Galactic Gladiator's Leather Jerkin
							i(255475),	-- Galactic Gladiator's Leather Boots
							i(255476),	-- Galactic Gladiator's Leather Treads
							i(255477),	-- Galactic Gladiator's Leather Gloves
							i(255478),	-- Galactic Gladiator's Leather Grips
							i(255479),	-- Galactic Gladiator's Leather Helm
							i(255480),	-- Galactic Gladiator's Leather Mask
							i(255481),	-- Galactic Gladiator's Leather Breeches
							i(255482),	-- Galactic Gladiator's Leather Legwraps
							i(255483),	-- Galactic Gladiator's Leather Spaulders
							i(255484),	-- Galactic Gladiator's Leather Shoulderpads
							i(255485),	-- Galactic Gladiator's Leather Belt
							i(255486),	-- Galactic Gladiator's Leather Strap
							i(255487),	-- Galactic Gladiator's Leather Wristwraps
							i(255488),	-- Galactic Gladiator's Leather Wristguards
							i(255489),	-- Galactic Gladiator's Cloak
							i(255490),	-- Galactic Gladiator's Drape
							i(255491),	-- Galactic Gladiator's Shawl
						}),
						cl(SHAMAN, {
							conquest(875, i(255530)),	-- Galactic Gladiator's Chain Vest
							conquest(875, i(255531)),	-- Galactic Gladiator's Chain Tunic
							conquest(700, i(255532)),	-- Galactic Gladiator's Chain Sabatons
							conquest(700, i(255533)),	-- Galactic Gladiator's Chain Boots
							conquest(700, i(255534)),	-- Galactic Gladiator's Chain Gauntlets
							conquest(700, i(255535)),	-- Galactic Gladiator's Chain Handguards
							conquest(875, i(255536)),	-- Galactic Gladiator's Chain Helm
							conquest(875, i(255537)),	-- Galactic Gladiator's Chain Faceguard
							conquest(875, i(255538)),	-- Galactic Gladiator's Chain Leggings
							conquest(875, i(255539)),	-- Galactic Gladiator's Chain Breeches
							conquest(700, i(255540)),	-- Galactic Gladiator's Chain Monnion
							conquest(700, i(255541)),	-- Galactic Gladiator's Chain Shoulderguard
							conquest(700, i(255542)),	-- Galactic Gladiator's Chain Belt
							conquest(700, i(255543)),	-- Galactic Gladiator's Chain Girdle
							conquest(525, i(255544)),	-- Galactic Gladiator's Chain Wristguards
							conquest(525, i(255545)),	-- Galactic Gladiator's Chain Bracers
							conquest(525, i(255546)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255547)),	-- Galactic Gladiator's Drape
							conquest(525, i(255548)),	-- Galactic Gladiator's Shawl
						}),
						cl(WARLOCK, {
							conquest(875, i(255396)),	-- Galactic Gladiator's Silk Vestments
							conquest(875, i(255395)),	-- Galactic Gladiator's Silk Raiment
							conquest(700, i(255397)),	-- Galactic Gladiator's Silk Slippers
							conquest(700, i(255398)),	-- Galactic Gladiator's Silk Treads
							conquest(700, i(255399)),	-- Galactic Gladiator's Silk Gloves
							conquest(700, i(255400)),	-- Galactic Gladiator's Silk Handwraps
							conquest(875, i(255401)),	-- Galactic Gladiator's Silk Hood
							conquest(875, i(255402)),	-- Galactic Gladiator's Silk Guise
							conquest(875, i(255404)),	-- Galactic Gladiator's Silk Leggings
							conquest(875, i(255405)),	-- Galactic Gladiator's Silk Trousers
							conquest(700, i(255406)),	-- Galactic Gladiator's Silk Mantle
							conquest(700, i(255407)),	-- Galactic Gladiator's Silk Amice
							conquest(700, i(255408)),	-- Galactic Gladiator's Silk Cord
							conquest(700, i(255409)),	-- Galactic Gladiator's Silk Belt
							conquest(525, i(255410)),	-- Galactic Gladiator's Silk Wristwraps
							conquest(525, i(255411)),	-- Galactic Gladiator's Silk Armbands
							conquest(525, i(255412)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255413)),	-- Galactic Gladiator's Drape
							conquest(525, i(255414)),	-- Galactic Gladiator's Shawl
						}),
						cl(WARRIOR, {
							conquest(875, i(255588)),	-- Galactic Gladiator's Chestguard
							conquest(875, i(255589)),	-- Galactic Gladiator's Chestplate
							conquest(700, i(255590)),	-- Galactic Gladiator's Plate Warboots
							conquest(700, i(255591)),	-- Galactic Gladiator's Plate Stompers
							conquest(700, i(255592)),	-- Galactic Gladiator's Plate Gauntlets
							conquest(700, i(255593)),	-- Galactic Gladiator's Plate Handguards
							conquest(875, i(255594)),	-- Galactic Gladiator's Plate Helm
							conquest(875, i(255595)),	-- Galactic Gladiator's Plate Helmet
							conquest(875, i(255596)),	-- Galactic Gladiator's Plate Legguards
							conquest(875, i(255597)),	-- Galactic Gladiator's Plate Wargreaves
							conquest(700, i(255598)),	-- Galactic Gladiator's Plate Shoulders
							conquest(700, i(255599)),	-- Galactic Gladiator's Plate Pauldrons
							conquest(700, i(255600)),	-- Galactic Gladiator's Plate Girdle
							conquest(700, i(255601)),	-- Galactic Gladiator's Plate Greatbelt
							conquest(525, i(255602)),	-- Galactic Gladiator's Plate Wristguards
							conquest(525, i(255603)),	-- Galactic Gladiator's Plate Vambraces
							conquest(525, i(255604)),	-- Galactic Gladiator's Cloak
							conquest(525, i(255605)),	-- Galactic Gladiator's Drape
							conquest(525, i(255606)),	-- Galactic Gladiator's Shawl
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(255608)),	-- Galactic Gladiator's Band
						conquest(525, i(255607)),	-- Galactic Gladiator's Ring
						conquest(525, i(255609)),	-- Galactic Gladiator's Signet
					}),
					filter(MISC, {
						i(254308, {	-- Conqueror's Galactic Lacquer
							["cost"] = {{ "c", CONQUEST, 700 }},
							["timeline"] = { ADDED_11_2_5, REMOVED_12_0_0 },
						}),
						i(254307, {	-- Conqueror's Galactic Varnish
							["cost"] = {{ "c", CONQUEST, 875 }},
							["timeline"] = { ADDED_11_2_5, REMOVED_12_0_0 },
						}),
					}),
					filter(NECK_F, {
						conquest(525, i(255612)),	-- Galactic Gladiator's Amulet
						conquest(525, i(255610)),	-- Galactic Gladiator's Necklace
						conquest(525, i(255611)),	-- Galactic Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(255613)),	-- Galactic Gladiator's Badge of Ferocity
						conquest(700, i(255615)),	-- Galactic Gladiator's Emblem
						conquest(700, i(255614)),	-- Galactic Gladiator's Insignia of Alacrity
						conquest(525, i(255616)),	-- Galactic Gladiator's Medallion
						conquest(525, i(255617)),	-- Galactic Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(875, i(255618)),	-- Galactic Gladiator's Splitter
						conquest(875, i(255619)),	-- Galactic Gladiator's Dagger
						conquest(875, i(255620)),	-- Galactic Gladiator's Warglaive
						conquest(1750, i(255621)),	-- Galactic Gladiator's Spear
						conquest(1750, i(255622)),	-- Galactic Gladiator's Staff
						conquest(1750, i(255623)),	-- Galactic Gladiator's Bow
						conquest(1225, i(255624)),	-- Galactic Gladiator's Scepter
						conquest(525, i(255625)),	-- Galactic Gladiator's Censer
						conquest(525, i(255626)),	-- Galactic Gladiator's Shield
						conquest(875, i(255627)),	-- Galactic Gladiator's Axe
						conquest(1225, i(255628)),	-- Galactic Gladiator's Cinquedea
						conquest(875, i(255629)),	-- Galactic Gladiator's Claws
						conquest(1750, i(255630)),	-- Galactic Gladiator's Crossbow
						conquest(1750, i(255631)),	-- Galactic Gladiator's Greatstaff
						conquest(525, i(255632)),	-- Galactic Gladiator's Bulwark
						conquest(1750, i(255633)),	-- Galactic Gladiator's Greatsword
						conquest(1750, i(255634)),	-- Galactic Gladiator's Pulverizer
						conquest(875, i(255635)),	-- Galactic Gladiator's Sword
						conquest(875, i(255636)),	-- Galactic Gladiator's Skewer
						conquest(1750, i(255637)),	-- Galactic Gladiator's Battlestaff
						conquest(525, i(255638)),	-- Galactic Gladiator's Focus
						conquest(1225, i(255639)),	-- Galactic Gladiator's Mace
					}),
					i(256553, {	-- Galactic Equipment Chest
						["timeline"] = { ADDED_12_0_5 },
					}),
				},]]--
			}),
			o(456208, {	-- The Catalyst
				["description"] = "Help us gather information of what is/isn't available via doing reports in ATT Discord. Especially the alternative sets and if the PvP transmog is available somewhere else.",
				["coord"] = { 40.3, 65.1, MAP.MIDNIGHT.SILVERMOON_CITY },
				["modelScale"] = 4,
			--	["catalystID"] = 11,	-- ItemBonus.Value_0 TWW:S3
				["groups"] = bubbleDown({ ["modID"] = 14 }, {
					cl(DEATHKNIGHT, {
					}),
					cl(DEMONHUNTER, {
					}),
					cl(DRUID, {
					}),
					cl(EVOKER, {
					}),
					cl(HUNTER, {
					}),
					cl(MAGE, {
					}),
					cl(MONK, {
					}),
					cl(PALADIN, {
					}),
					cl(PRIEST, {
					}),
					cl(ROGUE, {
					}),
					cl(SHAMAN, {
					}),
					cl(WARLOCK, {
					}),
					cl(WARRIOR, {
					}),
					-- Elite catalyst gear is not obtainable this season
				}),
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 }, ["bonusID"] = 7532 }, {
			n(CLASSES, {
				-- TODO: Only 9 pieces will be obtainable, move rest to NYI Sets when confirmed
				cl(DEATHKNIGHT, {
				}),
				cl(DEMONHUNTER, {
				}),
				cl(DRUID, {
				}),
				cl(EVOKER, {
				}),
				cl(HUNTER, {
				}),
				cl(MAGE, {
				}),
				cl(MONK, {
				}),
				cl(PALADIN, {
				}),
				cl(PRIEST, {
				}),
				cl(ROGUE, {
				}),
				cl(SHAMAN, {
				}),
				cl(WARLOCK, {
				}),
				cl(WARRIOR, {
				}),
			}),
			n(255844, {	-- Soryn <Elite Conquest Quartermaster>
				["coord"] = { 34.0, 80.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
				--[[honor(100, i(264164, {	-- Galactic Gladiator's Tabard
						["sourceAchievements"] = { 41027 },	-- Elite: Midnight Season 1
					})),
					moh(5, i(248364)),	-- Galactic Gladiator's Axe
					moh(10, i(248349)),	-- Galactic Gladiator's Battlestaff
					moh(10, i(248356)),	-- Galactic Gladiator's Bow
					moh(5, i(248367)),	-- Galactic Gladiator's Censer
					moh(5, i(248365)),	-- Galactic Gladiator's Cinquedea
					moh(5, i(248355)),	-- Galactic Gladiator's Claws
					moh(10, i(248350)),	-- Galactic Gladiator's Crossbow
					moh(5, i(248343)),	-- Galactic Gladiator's Dagger
					moh(5, i(248352)),	-- Galactic Gladiator's Focus
					moh(10, i(248348)),	-- Galactic Gladiator's Greatsword
					moh(5, i(248366)),	-- Galactic Gladiator's Mace
					moh(10, i(248358)),	-- Galactic Gladiator's Pulverizer
					moh(5, i(248351)),	-- Galactic Gladiator's Scepter
					moh(5, i(248353)),	-- Galactic Gladiator's Shield
					moh(10, i(248346)),	-- Galactic Gladiator's Spear
					moh(10, i(248347)),	-- Galactic Gladiator's Staff
					moh(5, i(248359)),	-- Galactic Gladiator's Sword
					moh(5, i(248345)),	-- Galactic Gladiator's Warglaive
				--]]
				},
			}),
		})),
		n(REWARDS, {
			i(257194, {	-- Artisan's Consortium Flyer (QS!/QI!)
				["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
				["description"] = "Rewarded within the first few wins in queued PvP Content.",
			}),
		}),
	}),
}))));
