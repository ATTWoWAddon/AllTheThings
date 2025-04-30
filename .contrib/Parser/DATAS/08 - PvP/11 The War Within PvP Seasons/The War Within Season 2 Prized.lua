-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0 } }, {
	n(SEASON_PRIZED, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			ach(41128, {	-- Prized Combatant [A]
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(41129, {	-- Prized Combatant [H]
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(41020),		-- Combatant I: The War Within Season 2
			ach(41021),		-- Combatant II: The War Within Season 2
			ach(41022),		-- Challenger I: The War Within Season 2
			ach(41023),		-- Challenger II: The War Within Season 2
			ach(41047, {	-- Prized Weapons of Conquest
				i(232615, {	-- Prized Gladiator's Coin Pouch
					i(230852, {	-- Prized Gladiator's Weapon Token
					--[[ Might need another sym
						["sym"] = {
							{"select", "npcID", 219222 },	-- Lalandi <Conquest Quartermaster>
							{"pop"},
							{"where", "headerID", WEAPONS},
							{"pop"}
						},
						--]]
					}),
				}),
			}),
			ach(41016),		-- Rival I: The War Within Season 2
			ach(41017, {	-- Rival II: The War Within Season 2
				ill(7640),	-- Jackpot (ILLUSION!)
			}),
			ach(41018, {	-- Duelist: The War Within Season 2
				i(231638),	-- Prized Gladiator's Prestigious Cloak
			}),
			ach(41019),		-- Elite: The War Within Season 2
			ach(41032, {	-- Gladiator: The War Within Season 2
				i(229987),	-- Prized Gladiator's Fel Bat (MOUNT!)
			}),
			ach(41362),		-- Prized Gladiator's Fel Bat
			ach(41354, {	-- Prized Gladiator: The War Within Season 2
				title(608),	-- Prized Gladiator <Name>
			}),
			-- RBG
			ach(41361, {	-- Hero of the Alliance: Prized
				["races"] = ALLIANCE_ONLY,
			}),
			ach(41360, {	-- Hero of the Horde: Prized
				["races"] = HORDE_ONLY,
			}),
			ach(41357, {	-- Prized Marshal: The War Within Season 2
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					title(610),	-- Prized Marshal <Name>
				},
			}),
			ach(41356, {	-- Prized Warlord: The War Within Season 2
				["races"] = HORDE_ONLY,
				["g"] = {
					title(609),	-- Prized Warlord <Name>
				},
			}),
			ach(41363, {	-- The Strategist: The War Within Season 2
				i(235519),	-- Prized Legend's Pennant (TOY!)
			}),
			-- Solo
			ach(41358, {	-- Legend: The War Within Season 2
				i(235519),	-- Prized Legend's Pennant (TOY!)
			}),
			ach(41355, {	-- Prized Legend: The War Within Season 2
				title(611),	-- Prized Legend <Name>
			}),
			ach(41359, {	-- Battle Mender: The War Within Season 2
				["classes"] = HEALERS,
			}),
			-- Fashion
			ach(41595),	-- Prized Guise
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			i(229989, {	-- Vicious Electro Eel [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(229988, {	-- Vicious Electro Eel [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			n(219213, {	-- Gilderann <War Mode Quartermaster>
				["coord"] = { 55.2, 76.8, DORNOGAL },
				["g"] = {
					filter(BACK_F, {
						bloody(525, i(230138)),	-- Prized Warmonger's Cape
						bloody(525, i(230140)),	-- Prized Warmonger's Cloak
						bloody(525, i(230141)),	-- Prized Warmonger's Drape
						bloody(525, i(230139)),	-- Prized Warmonger's Shawl
					}),
					filter(CLOTH, {
						bloody(525, i(230112)),	-- Prized Warmonger's Bindings
						bloody(700, i(230111)),	-- Prized Warmonger's Cord
						bloody(875, i(230109)),	-- Prized Warmonger's Crown
						bloody(875, i(230106)),	-- Prized Warmonger's Garb
						bloody(700, i(230108)),	-- Prized Warmonger's Gloves
						bloody(700, i(230113)),	-- Prized Warmonger's Mantle
						bloody(875, i(230110)),	-- Prized Warmonger's Pants
						bloody(700, i(230107)),	-- Prized Warmonger's Slippers
					}),
					filter(LEATHER, {
						bloody(700, i(230118)),	-- Prized Warmonger's Belt
						bloody(700, i(230114)),	-- Prized Warmonger's Boots
						bloody(875, i(230117)),	-- Prized Warmonger's Breeches
						bloody(700, i(230115)),	-- Prized Warmonger's Handwraps
						bloody(875, i(230116)),	-- Prized Warmonger's Hood
						bloody(875, i(230120)),	-- Prized Warmonger's Jerkin
						bloody(700, i(230121)),	-- Prized Warmonger's Shoulderguard
						bloody(525, i(230119)),	-- Prized Warmonger's Wraps
					}),
					filter(MAIL, {
						bloody(525, i(230137)),	-- Prized Warmonger's Armguards
						bloody(875, i(230130)),	-- Prized Warmonger's Chestguard
						bloody(700, i(230136)),	-- Prized Warmonger's Cinch
						bloody(700, i(230135)),	-- Prized Warmonger's Epaulets
						bloody(700, i(230131)),	-- Prized Warmonger's Greaves
						bloody(700, i(230132)),	-- Prized Warmonger's Grips
						bloody(875, i(230133)),	-- Prized Warmonger's Helm
						bloody(875, i(230134)),	-- Prized Warmonger's Leggings
					}),
					filter(PLATE, {
						bloody(525, i(230129)),	-- Prized Warmonger's Bracers
						bloody(700, i(230128)),	-- Prized Warmonger's Clasp
						bloody(875, i(230123)),	-- Prized Warmonger's Cuirass
						bloody(875, i(230122)),	-- Prized Warmonger's Faceplate
						bloody(700, i(230125)),	-- Prized Warmonger's Gauntlets
						bloody(875, i(230126)),	-- Prized Warmonger's Legguards
						bloody(700, i(230124)),	-- Prized Warmonger's Sabatons
						bloody(700, i(230127)),	-- Prized Warmonger's Spaulders
					}),
					n(WEAPONS, {
						bloody(525, i(230156)),		-- Prized Warmonger's Aegis
						bloody(875, i(230142)),		-- Prized Warmonger's Battleaxe
						bloody(1750, i(230149)),	-- Prized Warmonger's Battlestaff
						bloody(1750, i(230151)),	-- Prized Warmonger's Broadsword
						bloody(875, i(230144)),		-- Prized Warmonger's Carver
						bloody(1225, i(230153)),	-- Prized Warmonger's Club
						bloody(875, i(230161)),		-- Prized Warmonger's Crusher
						bloody(1225, i(230163)),	-- Prized Warmonger's Dagger
						bloody(875, i(230164)),		-- Prized Warmonger's Dirk
						bloody(525, i(230147)),		-- Prized Warmonger's Firebomb
						bloody(1750, i(230145)),	-- Prized Warmonger's Flameshot
						bloody(875, i(230155)),		-- Prized Warmonger's Gavel
						bloody(1750, i(230150)),	-- Prized Warmonger's Greatsword
						bloody(875, i(230154)),		-- Prized Warmonger's Hammer
						bloody(1225, i(230143)),	-- Prized Warmonger's Hatchet
						bloody(1750, i(230157)),	-- Prized Warmonger's Impaler
						bloody(875, i(230160)),		-- Prized Warmonger's Mace
						bloody(1225, i(230162)),	-- Prized Warmonger's Scepter
						bloody(1750, i(230158)),	-- Prized Warmonger's Spear
						bloody(1750, i(230148)),	-- Prized Warmonger's Spire
						bloody(875, i(230146)),		-- Prized Warmonger's Twinblade
						bloody(1225, i(230159)),	-- Prized Warmonger's Wand
					}),
				},
			}),
		})),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			n(219217, {	-- Velerd <Honor Quartermaster>
				["coord"] = { 55.0, 76.5, DORNOGAL },
				["g"] = {
					filter(BACK_F, {
						honor(525, i(229504)),	-- Prized Aspirant's Cape
						honor(525, i(229503)),	-- Prized Aspirant's Cloak
						honor(525, i(229502)),	-- Prized Aspirant's Drape
						honor(525, i(229505)),	-- Prized Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(229484)),	-- Prized Aspirant's Silk Belt
						honor(525, i(229487)),	-- Prized Aspirant's Silk Bindings
						honor(700, i(229452)),	-- Prized Aspirant's Silk Cord
						honor(875, i(229472)),	-- Prized Aspirant's Silk Cover
						honor(700, i(229465)),	-- Prized Aspirant's Silk Footwraps
						honor(700, i(229438)),	-- Prized Aspirant's Silk Gloves
						honor(700, i(229470)),	-- Prized Aspirant's Silk Handwraps
						honor(875, i(229440)),	-- Prized Aspirant's Silk Hood
						honor(875, i(229444)),	-- Prized Aspirant's Silk Leggings
						honor(875, i(229476)),	-- Prized Aspirant's Silk Legwraps
						honor(700, i(229449)),	-- Prized Aspirant's Silk Mantle
						honor(875, i(229428)),	-- Prized Aspirant's Silk Robe
						honor(700, i(229481)),	-- Prized Aspirant's Silk Shawl
						honor(875, i(229460)),	-- Prized Aspirant's Silk Shirt
						honor(700, i(229433)),	-- Prized Aspirant's Silk Treads
						honor(525, i(229455)),	-- Prized Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(229497)),	-- Prized Aspirant's Band
						honor(525, i(229496)),	-- Prized Aspirant's Ring i(
						honor(525, i(229498)),	-- Prized Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(229490)),	-- Prized Aspirant's Leather Armguards
						honor(700, i(229454)),	-- Prized Aspirant's Leather Belt
						honor(700, i(229435)),	-- Prized Aspirant's Leather Boots
						honor(875, i(229446)),	-- Prized Aspirant's Leather Breeches
						honor(700, i(229486)),	-- Prized Aspirant's Leather Cord
						honor(700, i(229467)),	-- Prized Aspirant's Leather Footpads
						honor(700, i(229436)),	-- Prized Aspirant's Leather Gloves
						honor(700, i(229468)),	-- Prized Aspirant's Leather Grips
						honor(875, i(229442)),	-- Prized Aspirant's Leather Helm
						honor(875, i(229478)),	-- Prized Aspirant's Leather Leggings
						honor(700, i(229479)),	-- Prized Aspirant's Leather Mantle
						honor(875, i(229474)),	-- Prized Aspirant's Leather Mask
						honor(700, i(229447)),	-- Prized Aspirant's Leather Spaulders
						honor(875, i(229463)),	-- Prized Aspirant's Leather Tunic
						honor(875, i(229431)),	-- Prized Aspirant's Leather Vest
						honor(525, i(229458)),	-- Prized Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(875, i(229462)),	-- Prized Aspirant's Armored Tunic
						honor(875, i(229430)),	-- Prized Aspirant's Armored Vest
						honor(700, i(229453)),	-- Prized Aspirant's Chain Belt
						honor(525, i(229489)),	-- Prized Aspirant's Chain Bracer
						honor(700, i(229485)),	-- Prized Aspirant's Chain Clasp
						honor(700, i(229439)),	-- Prized Aspirant's Chain Gauntlets
						honor(700, i(229471)),	-- Prized Aspirant's Chain Handguards
						honor(875, i(229473)),	-- Prized Aspirant's Chain Headguard
						honor(875, i(229441)),	-- Prized Aspirant's Chain Helm
						honor(875, i(229445)),	-- Prized Aspirant's Chain Leggings
						honor(700, i(229434)),	-- Prized Aspirant's Chain Sabatons
						honor(700, i(229482)),	-- Prized Aspirant's Chain Shoulderguards
						honor(700, i(229450)),	-- Prized Aspirant's Chain Spaulders
						honor(700, i(229466)),	-- Prized Aspirant's Chain Stompers
						honor(875, i(229477)),	-- Prized Aspirant's Chain Wargreaves
						honor(525, i(229457)),	-- Prized Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(229500)),	-- Prized Aspirant's Choker
						honor(525, i(229499)),	-- Prized Aspirant's Necklace
						honor(525, i(229501)),	-- Prized Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(229429)),	-- Prized Aspirant's Chestplate
						honor(525, i(229488)),	-- Prized Aspirant's Plate Armguards
						honor(875, i(229461)),	-- Prized Aspirant's Plate Armor
						honor(525, i(229456)),	-- Prized Aspirant's Plate Cuffs
						honor(700, i(229437)),	-- Prized Aspirant's Plate Gauntlets
						honor(700, i(229451)),	-- Prized Aspirant's Plate Girdle
						honor(700, i(229483)),	-- Prized Aspirant's Plate Greatbelt
						honor(700, i(229469)),	-- Prized Aspirant's Plate Handguards
						honor(875, i(229459)),	-- Prized Aspirant's Plate Headguard
						honor(875, i(229427)),	-- Prized Aspirant's Plate Helm
						honor(875, i(229443)),	-- Prized Aspirant's Plate Legguards
						honor(700, i(229480)),	-- Prized Aspirant's Plate Pauldrons
						honor(700, i(229448)),	-- Prized Aspirant's Plate Shoulders
						honor(700, i(229464)),	-- Prized Aspirant's Plate Stompers
						honor(700, i(229432)),	-- Prized Aspirant's Plate Warboots
						honor(875, i(229475)),	-- Prized Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(229491)),	-- Prized Aspirant's Badge of Ferocity
						honor(700, i(229494)),	-- Prized Aspirant's Emblem
						honor(700, i(229493)),	-- Prized Aspirant's Insignia of Alacrity
						honor(525, i(229492)),	-- Prized Aspirant's Medallion
						honor(525, i(229495)),	-- Prized Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(875, i(229506)),	-- Prized Aspirant's Battleaxe
						honor(1225, i(229521)),	-- Prized Aspirant's Blastoff Rod
						honor(875, i(229520)),	-- Prized Aspirant's Chopper
						honor(875, i(229507)),	-- Prized Aspirant's Dagger
						honor(1225, i(229519)),	-- Prized Aspirant's Drill
						honor(1750, i(229511)),	-- Prized Aspirant's Greatsword
						honor(1750, i(229517)),	-- Prized Aspirant's Halberd
						honor(875, i(229508)),	-- Prized Aspirant's Hammer
						honor(875, i(229518)),	-- Prized Aspirant's Mace
						honor(525, i(229512)),	-- Prized Aspirant's Molotov
						honor(1750, i(229509)),	-- Prized Aspirant's Polearm
						honor(1750, i(229516)),	-- Prized Aspirant's Rifle
						honor(875, i(229513)),	-- Prized Aspirant's Rocketglaive
						honor(1225, i(229514)),	-- Prized Aspirant's Scepter
						honor(525, i(229515)),	-- Prized Aspirant's Shield
						honor(1750, i(229510)),	-- Prized Aspirant's Staff
					}),
				},
			})
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 } }, {
			n(219222, {	-- Lalandi <Conquest Quartermaster>
				["coord"] = { 55.1, 76.2, DORNOGAL },
				["ItemAppearanceModifierID"] = 159,
				["g"] = {
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(525, i(229731)),	-- Prized Gladiator's Cloak
							conquest(525, i(229732)),	-- Prized Gladiator's Drape
							conquest(525, i(229733)),	-- Prized Gladiator's Shawl
							conquest(875, i(229713)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229715)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229718)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229727)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229728)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229719)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229721)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229722)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229723)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229726)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229725)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229717)),	-- Prized Gladiator's Plate Stompers
							conquest(525, i(229730)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229716)),	-- Prized Gladiator's Plate Warboots
							conquest(875, i(229724)),	-- Prized Gladiator's Plate Wargreaves
							conquest(525, i(229729)),	-- Prized Gladiator's Plate Wristguards
						}),
						cl(DEMONHUNTER, {
							conquest(525, i(229615)),	-- Prized Gladiator's Cloak
							conquest(525, i(229616)),	-- Prized Gladiator's Drape
							conquest(525, i(229617)),	-- Prized Gladiator's Shawl
							conquest(700, i(229611)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229601)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229607)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229603)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229604)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229605)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229608)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229606)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229610)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229609)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229612)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229602)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229599)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229600)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229614)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229613)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(DRUID, {
							conquest(525, i(229596)),	-- Prized Gladiator's Cloak
							conquest(525, i(229597)),	-- Prized Gladiator's Drape
							conquest(525, i(229598)),	-- Prized Gladiator's Shawl
							conquest(700, i(229591)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229581)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229587)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229583)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229584)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229585)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229588)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229586)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229590)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229589)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229592)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229582)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229579)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229580)),	-- Prized Gladiator's Leather Vestments
							conquest(525, i(229595)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229594)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(EVOKER, {
							conquest(525, i(229672)),	-- Prized Gladiator's Cloak
							conquest(525, i(229673)),	-- Prized Gladiator's Drape
							conquest(525, i(229674)),	-- Prized Gladiator's Shawl
							conquest(875, i(229656)),	-- Prized Gladiator's Armored Scales
							conquest(700, i(229668)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229659)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229671)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229665)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229663)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229660)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229669)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229661)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229662)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229664)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229666)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229658)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229667)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(525, i(229670)),	-- Prized Gladiator's Chain Wristguards
							conquest(875, i(229657)),	-- Prized Gladiator's Scaleguard
						}),
						cl(HUNTER, {
							conquest(525, i(229691)),	-- Prized Gladiator's Cloak
							conquest(525, i(229692)),	-- Prized Gladiator's Drape
							conquest(525, i(229693)),	-- Prized Gladiator's Shawl
							conquest(700, i(229687)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229678)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229690)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229684)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229682)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229679)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229688)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229680)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229681)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229683)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229685)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229677)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229686)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(875, i(229676)),	-- Prized Gladiator's Chain Tunic
							conquest(875, i(229675)),	-- Prized Gladiator's Chain Vest
							conquest(525, i(229689)),	-- Prized Gladiator's Chain Wristguards
						}),
						cl(MAGE, {
							conquest(525, i(229538)),	-- Prized Gladiator's Cloak
							conquest(525, i(229539)),	-- Prized Gladiator's Drape
							conquest(525, i(229540)),	-- Prized Gladiator's Shawl
							conquest(700, i(229533)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229537)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229535)),	-- Prized Gladiator's Silk Belt
							conquest(875, i(229529)),	-- Prized Gladiator's Silk Cap
							conquest(700, i(229534)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229526)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229523)),	-- Prized Gladiator's Silk Gown
							conquest(700, i(229527)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229528)),	-- Prized Gladiator's Silk Hat
							conquest(875, i(229530)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229532)),	-- Prized Gladiator's Silk Mantle
							conquest(875, i(229522)),	-- Prized Gladiator's Silk Robe
							conquest(700, i(229524)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229525)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229531)),	-- Prized Gladiator's Silk Trousers
							conquest(525, i(229536)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(MONK, {
							conquest(525, i(229634)),	-- Prized Gladiator's Cloak
							conquest(525, i(229635)),	-- Prized Gladiator's Drape
							conquest(525, i(229636)),	-- Prized Gladiator's Shawl
							conquest(700, i(229630)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229620)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229626)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229622)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229623)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229624)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229627)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229625)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229629)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229628)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229631)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229621)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229618)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229619)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229633)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229632)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(PALADIN, {
							conquest(525, i(229751)),	-- Prized Gladiator's Cloak
							conquest(525, i(229752)),	-- Prized Gladiator's Drape
							conquest(525, i(229753)),	-- Prized Gladiator's Shawl
							conquest(875, i(229734)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229735)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229738)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229746)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229747)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229739)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229740)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229741)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229742)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229745)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229744)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229737)),	-- Prized Gladiator's Plate Stompers
							conquest(875, i(229743)),	-- Prized Gladiator's Plate Tasses
							conquest(525, i(229750)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229736)),	-- Prized Gladiator's Plate Warboots
							conquest(525, i(229748)),	-- Prized Gladiator's Plate Wristguards
						}),
						cl(PRIEST, {
							conquest(525, i(229557)),	-- Prized Gladiator's Cloak
							conquest(525, i(229558)),	-- Prized Gladiator's Drape
							conquest(525, i(229559)),	-- Prized Gladiator's Shawl
							conquest(700, i(229552)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229556)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229554)),	-- Prized Gladiator's Silk Belt
							conquest(875, i(229541)),	-- Prized Gladiator's Silk Chestwrap
							conquest(700, i(229553)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229545)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229548)),	-- Prized Gladiator's Silk Guise
							conquest(700, i(229546)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229547)),	-- Prized Gladiator's Silk Hood
							conquest(875, i(229549)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229551)),	-- Prized Gladiator's Silk Mantle
							conquest(700, i(229543)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229544)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229550)),	-- Prized Gladiator's Silk Trousers
							conquest(875, i(229542)),	-- Prized Gladiator's Silk Vest
							conquest(525, i(229555)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(ROGUE, {
							conquest(525, i(229653)),	-- Prized Gladiator's Cloak
							conquest(525, i(229654)),	-- Prized Gladiator's Drape
							conquest(525, i(229655)),	-- Prized Gladiator's Shawl
							conquest(700, i(229649)),	-- Prized Gladiator's Leather Belt
							conquest(700, i(229639)),	-- Prized Gladiator's Leather Boots
							conquest(875, i(229645)),	-- Prized Gladiator's Leather Breeches
							conquest(700, i(229641)),	-- Prized Gladiator's Leather Gloves
							conquest(700, i(229642)),	-- Prized Gladiator's Leather Grips
							conquest(875, i(229643)),	-- Prized Gladiator's Leather Helm
							conquest(875, i(229646)),	-- Prized Gladiator's Leather Legwraps
							conquest(875, i(229644)),	-- Prized Gladiator's Leather Mask
							conquest(700, i(229648)),	-- Prized Gladiator's Leather Shoulderpads
							conquest(700, i(229647)),	-- Prized Gladiator's Leather Spaulders
							conquest(700, i(229650)),	-- Prized Gladiator's Leather Strap
							conquest(700, i(229640)),	-- Prized Gladiator's Leather Treads
							conquest(875, i(229637)),	-- Prized Gladiator's Leather Vest
							conquest(875, i(229638)),	-- Prized Gladiator's Leather Jerkin
							conquest(525, i(229652)),	-- Prized Gladiator's Leather Wristguards
							conquest(525, i(229651)),	-- Prized Gladiator's Leather Wristwraps
						}),
						cl(SHAMAN, {
							conquest(525, i(229710)),	-- Prized Gladiator's Cloak
							conquest(525, i(229711)),	-- Prized Gladiator's Drape
							conquest(525, i(229712)),	-- Prized Gladiator's Shawl
							conquest(700, i(229706)),	-- Prized Gladiator's Chain Belt
							conquest(700, i(229697)),	-- Prized Gladiator's Chain Boots
							conquest(525, i(229709)),	-- Prized Gladiator's Chain Bracers
							conquest(875, i(229703)),	-- Prized Gladiator's Chain Breeches
							conquest(875, i(229701)),	-- Prized Gladiator's Chain Faceguard
							conquest(700, i(229698)),	-- Prized Gladiator's Chain Gauntlets
							conquest(700, i(229707)),	-- Prized Gladiator's Chain Girdle
							conquest(700, i(229699)),	-- Prized Gladiator's Chain Handguards
							conquest(875, i(229700)),	-- Prized Gladiator's Chain Helm
							conquest(875, i(229702)),	-- Prized Gladiator's Chain Leggings
							conquest(700, i(229704)),	-- Prized Gladiator's Chain Monnion
							conquest(700, i(229696)),	-- Prized Gladiator's Chain Sabatons
							conquest(700, i(229705)),	-- Prized Gladiator's Chain Shoulderguard
							conquest(875, i(229695)),	-- Prized Gladiator's Chain Tunic
							conquest(875, i(229694)),	-- Prized Gladiator's Chain Vest
							conquest(525, i(229708)),	-- Prized Gladiator's Chain Wristguards
						}),
						cl(WARLOCK, {
							conquest(525, i(229576)),	-- Prized Gladiator's Cloak
							conquest(525, i(229577)),	-- Prized Gladiator's Drape
							conquest(525, i(229578)),	-- Prized Gladiator's Shawl
							conquest(700, i(229571)),	-- Prized Gladiator's Silk Amice
							conquest(525, i(229575)),	-- Prized Gladiator's Silk Armbands
							conquest(700, i(229573)),	-- Prized Gladiator's Silk Belt
							conquest(700, i(229572)),	-- Prized Gladiator's Silk Cord
							conquest(700, i(229564)),	-- Prized Gladiator's Silk Gloves
							conquest(875, i(229567)),	-- Prized Gladiator's Silk Guise
							conquest(700, i(229565)),	-- Prized Gladiator's Silk Handwraps
							conquest(875, i(229566)),	-- Prized Gladiator's Silk Hood
							conquest(875, i(229568)),	-- Prized Gladiator's Silk Leggings
							conquest(700, i(229570)),	-- Prized Gladiator's Silk Mantle
							conquest(875, i(229560)),	-- Prized Gladiator's Silk Raiment
							conquest(700, i(229562)),	-- Prized Gladiator's Silk Slippers
							conquest(700, i(229563)),	-- Prized Gladiator's Silk Treads
							conquest(875, i(229569)),	-- Prized Gladiator's Silk Trousers
							conquest(875, i(229561)),	-- Prized Gladiator's Silk Vestments
							conquest(525, i(229574)),	-- Prized Gladiator's Silk Wristwraps
						}),
						cl(WARRIOR, {
							conquest(525, i(229771)),	-- Prized Gladiator's Cloak
							conquest(525, i(229772)),	-- Prized Gladiator's Drape
							conquest(525, i(229773)),	-- Prized Gladiator's Shawl
							conquest(875, i(229754)),	-- Prized Gladiator's Chestguard
							conquest(875, i(229755)),	-- Prized Gladiator's Chestplate
							conquest(700, i(229758)),	-- Prized Gladiator's Plate Gauntlets
							conquest(700, i(229767)),	-- Prized Gladiator's Plate Girdle
							conquest(700, i(229768)),	-- Prized Gladiator's Plate Greatbelt
							conquest(700, i(229759)),	-- Prized Gladiator's Plate Handguards
							conquest(875, i(229760)),	-- Prized Gladiator's Plate Helm
							conquest(875, i(229761)),	-- Prized Gladiator's Plate Helmet
							conquest(875, i(229762)),	-- Prized Gladiator's Plate Legguards
							conquest(700, i(229766)),	-- Prized Gladiator's Plate Pauldrons
							conquest(700, i(229765)),	-- Prized Gladiator's Plate Shoulders
							conquest(700, i(229757)),	-- Prized Gladiator's Plate Stompers
							conquest(525, i(229770)),	-- Prized Gladiator's Plate Vambraces
							conquest(700, i(229756)),	-- Prized Gladiator's Plate Warboots
							conquest(875, i(229763)),	-- Prized Gladiator's Plate Wargreaves
							conquest(525, i(229769)),	-- Prized Gladiator's Plate Wristguards
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(229775)),	-- Prized Gladiator's Band
						conquest(525, i(229774)),	-- Prized Gladiator's Ring
						conquest(525, i(229776)),	-- Prized Gladiator's Signet
					}),
					filter(MISC, {
						conquest(700, i(236938)),	-- Conqueror's Prized Lacquer
						conquest(875, i(236936)),	-- Conqueror's Prized Varnish
					}),
					filter(NECK_F, {
						conquest(525, i(229779)),	-- Prized Gladiator's Amulet
						conquest(525, i(229777)),	-- Prized Gladiator's Necklace
						conquest(525, i(229778)),	-- Prized Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(229780)),	-- Prized Gladiator's Badge of Ferocity
						conquest(700, i(229782)),	-- Prized Gladiator's Emblem
						conquest(700, i(229781)),	-- Prized Gladiator's Insignia of Alacrity
						conquest(525, i(229783)),	-- Prized Gladiator's Medallion
						conquest(525, i(229784)),	-- Prized Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(525, i(229792)),	-- Prized Gladiator's Army Knife
						conquest(1750, i(229797)),	-- Prized Gladiator's Blaster
						conquest(1225, i(229791)),	-- Prized Gladiator's Bludgeon
						conquest(1750, i(229790)),	-- Prized Gladiator's Bow
						conquest(525, i(229799)),	-- Prized Gladiator's Bulwark
						conquest(525, i(232620)),	-- Prized Gladiator's Conduit
						conquest(875, i(229786)),	-- Prized Gladiator's Dagger
						conquest(875, i(229796)),	-- Prized Gladiator's Detonator
						conquest(1750, i(229788)),	-- Prized Gladiator's Drill
						conquest(875, i(229794)),	-- Prized Gladiator's Flail
						conquest(525, i(229793)),	-- Prized Gladiator's Gasket
						conquest(1750, i(229800)),	-- Prized Gladiator's Greatsaw
						conquest(1750, i(229798)),	-- Prized Gladiator's Greatstaff
						conquest(875, i(229785)),	-- Prized Gladiator's Last Resort
						conquest(1225, i(229795)),	-- Prized Gladiator's Pincer
						conquest(1750, i(229801)),	-- Prized Gladiator's Pulverizer
						conquest(1750, i(229804)),	-- Prized Gladiator's Pylon
						conquest(900, i(229803)),	-- Prized Gladiator's Skewer
						conquest(1750, i(229789)),	-- Prized Gladiator's Staff
						conquest(900, i(229802)),	-- Prized Gladiator's Torchblade
						conquest(875, i(229787)),	-- Prized Gladiator's Warglaive
					}),
					i(230721, {	-- Prized Equipment Chest
						["timeline"] = { ADDED_11_1_5 },
					}),
				},
			}),
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 }, ["bonusID"] = 7532 }, {
			n(CLASSES, {
				-- TODO: Most likely only 9 pieces will be obtainable, same as TWW Season 1 - when confirmed, move rest to NYI
				cl(DEATHKNIGHT, {
					i(229731),	-- Prized Gladiator's Cloak
					i(229732),	-- Prized Gladiator's Drape
					i(229733),	-- Prized Gladiator's Shawl
					i(229713),	-- Prized Gladiator's Chestguard
					i(229715),	-- Prized Gladiator's Chestplate
					i(229718),	-- Prized Gladiator's Plate Gauntlets
					i(229727),	-- Prized Gladiator's Plate Girdle
					i(229728),	-- Prized Gladiator's Plate Greatbelt
					i(229719),	-- Prized Gladiator's Plate Handguards
					i(229721),	-- Prized Gladiator's Plate Helm
					i(229722),	-- Prized Gladiator's Plate Helmet
					i(229723),	-- Prized Gladiator's Plate Legguards
					i(229726),	-- Prized Gladiator's Plate Pauldrons
					i(229725),	-- Prized Gladiator's Plate Shoulders
					i(229717),	-- Prized Gladiator's Plate Stompers
					i(229730),	-- Prized Gladiator's Plate Vambraces
					i(229716),	-- Prized Gladiator's Plate Warboots
					i(229724),	-- Prized Gladiator's Plate Wargreaves
					i(229729),	-- Prized Gladiator's Plate Wristguards
				}),
				cl(DEMONHUNTER, {
					i(229615),	-- Prized Gladiator's Cloak
					i(229616),	-- Prized Gladiator's Drape
					i(229617),	-- Prized Gladiator's Shawl
					i(229611),	-- Prized Gladiator's Leather Belt
					i(229601),	-- Prized Gladiator's Leather Boots
					i(229607),	-- Prized Gladiator's Leather Breeches
					i(229603),	-- Prized Gladiator's Leather Gloves
					i(229604),	-- Prized Gladiator's Leather Grips
					i(229605),	-- Prized Gladiator's Leather Helm
					i(229608),	-- Prized Gladiator's Leather Legwraps
					i(229606),	-- Prized Gladiator's Leather Mask
					i(229610),	-- Prized Gladiator's Leather Shoulderpads
					i(229609),	-- Prized Gladiator's Leather Spaulders
					i(229612),	-- Prized Gladiator's Leather Strap
					i(229602),	-- Prized Gladiator's Leather Treads
					i(229599),	-- Prized Gladiator's Leather Vest
					i(229600),	-- Prized Gladiator's Leather Jerkin
					i(229614),	-- Prized Gladiator's Leather Wristguards
					i(229613),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(DRUID, {
					i(229596),	-- Prized Gladiator's Cloak
					i(229597),	-- Prized Gladiator's Drape
					i(229598),	-- Prized Gladiator's Shawl
					i(229591),	-- Prized Gladiator's Leather Belt
					i(229581),	-- Prized Gladiator's Leather Boots
					i(229587),	-- Prized Gladiator's Leather Breeches
					i(229583),	-- Prized Gladiator's Leather Gloves
					i(229584),	-- Prized Gladiator's Leather Grips
					i(229585),	-- Prized Gladiator's Leather Helm
					i(229588),	-- Prized Gladiator's Leather Legwraps
					i(229586),	-- Prized Gladiator's Leather Mask
					i(229590),	-- Prized Gladiator's Leather Shoulderpads
					i(229589),	-- Prized Gladiator's Leather Spaulders
					i(229592),	-- Prized Gladiator's Leather Strap
					i(229582),	-- Prized Gladiator's Leather Treads
					i(229579),	-- Prized Gladiator's Leather Vest
					i(229580),	-- Prized Gladiator's Leather Vestments
					i(229595),	-- Prized Gladiator's Leather Wristguards
					i(229594),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(EVOKER, {
					i(229672),	-- Prized Gladiator's Cloak
					i(229673),	-- Prized Gladiator's Drape
					i(229674),	-- Prized Gladiator's Shawl
					i(229656),	-- Prized Gladiator's Armored Scales
					i(229668),	-- Prized Gladiator's Chain Belt
					i(229659),	-- Prized Gladiator's Chain Boots
					i(229671),	-- Prized Gladiator's Chain Bracers
					i(229665),	-- Prized Gladiator's Chain Breeches
					i(229663),	-- Prized Gladiator's Chain Faceguard
					i(229660),	-- Prized Gladiator's Chain Gauntlets
					i(229669),	-- Prized Gladiator's Chain Girdle
					i(229661),	-- Prized Gladiator's Chain Handguards
					i(229662),	-- Prized Gladiator's Chain Helm
					i(229664),	-- Prized Gladiator's Chain Leggings
					i(229666),	-- Prized Gladiator's Chain Monnion
					i(229658),	-- Prized Gladiator's Chain Sabatons
					i(229667),	-- Prized Gladiator's Chain Shoulderguard
					i(229670),	-- Prized Gladiator's Chain Wristguards
					i(229657),	-- Prized Gladiator's Scaleguard
				}),
				cl(HUNTER, {
					i(229691),	-- Prized Gladiator's Cloak
					i(229692),	-- Prized Gladiator's Drape
					i(229693),	-- Prized Gladiator's Shawl
					i(229687),	-- Prized Gladiator's Chain Belt
					i(229678),	-- Prized Gladiator's Chain Boots
					i(229690),	-- Prized Gladiator's Chain Bracers
					i(229684),	-- Prized Gladiator's Chain Breeches
					i(229682),	-- Prized Gladiator's Chain Faceguard
					i(229679),	-- Prized Gladiator's Chain Gauntlets
					i(229688),	-- Prized Gladiator's Chain Girdle
					i(229680),	-- Prized Gladiator's Chain Handguards
					i(229681),	-- Prized Gladiator's Chain Helm
					i(229683),	-- Prized Gladiator's Chain Leggings
					i(229685),	-- Prized Gladiator's Chain Monnion
					i(229677),	-- Prized Gladiator's Chain Sabatons
					i(229686),	-- Prized Gladiator's Chain Shoulderguard
					i(229676),	-- Prized Gladiator's Chain Tunic
					i(229675),	-- Prized Gladiator's Chain Vest
					i(229689),	-- Prized Gladiator's Chain Wristguards
				}),
				cl(MAGE, {
					i(229538),	-- Prized Gladiator's Cloak
					i(229539),	-- Prized Gladiator's Drape
					i(229540),	-- Prized Gladiator's Shawl
					i(229533),	-- Prized Gladiator's Silk Amice
					i(229537),	-- Prized Gladiator's Silk Armbands
					i(229535),	-- Prized Gladiator's Silk Belt
					i(229529),	-- Prized Gladiator's Silk Cap
					i(229534),	-- Prized Gladiator's Silk Cord
					i(229526),	-- Prized Gladiator's Silk Gloves
					i(229523),	-- Prized Gladiator's Silk Gown
					i(229527),	-- Prized Gladiator's Silk Handwraps
					i(229528),	-- Prized Gladiator's Silk Hat
					i(229530),	-- Prized Gladiator's Silk Leggings
					i(229532),	-- Prized Gladiator's Silk Mantle
					i(229522),	-- Prized Gladiator's Silk Robe
					i(229524),	-- Prized Gladiator's Silk Slippers
					i(229525),	-- Prized Gladiator's Silk Treads
					i(229531),	-- Prized Gladiator's Silk Trousers
					i(229536),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(MONK, {
					i(229634),	-- Prized Gladiator's Cloak
					i(229635),	-- Prized Gladiator's Drape
					i(229636),	-- Prized Gladiator's Shawl
					i(229630),	-- Prized Gladiator's Leather Belt
					i(229620),	-- Prized Gladiator's Leather Boots
					i(229626),	-- Prized Gladiator's Leather Breeches
					i(229622),	-- Prized Gladiator's Leather Gloves
					i(229623),	-- Prized Gladiator's Leather Grips
					i(229624),	-- Prized Gladiator's Leather Helm
					i(229627),	-- Prized Gladiator's Leather Legwraps
					i(229625),	-- Prized Gladiator's Leather Mask
					i(229629),	-- Prized Gladiator's Leather Shoulderpads
					i(229628),	-- Prized Gladiator's Leather Spaulders
					i(229631),	-- Prized Gladiator's Leather Strap
					i(229621),	-- Prized Gladiator's Leather Treads
					i(229618),	-- Prized Gladiator's Leather Vest
					i(229619),	-- Prized Gladiator's Leather Jerkin
					i(229633),	-- Prized Gladiator's Leather Wristguards
					i(229632),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(PALADIN, {
					i(229751),	-- Prized Gladiator's Cloak
					i(229752),	-- Prized Gladiator's Drape
					i(229753),	-- Prized Gladiator's Shawl
					i(229734),	-- Prized Gladiator's Chestguard
					i(229735),	-- Prized Gladiator's Chestplate
					i(229738),	-- Prized Gladiator's Plate Gauntlets
					i(229746),	-- Prized Gladiator's Plate Girdle
					i(229747),	-- Prized Gladiator's Plate Greatbelt
					i(229739),	-- Prized Gladiator's Plate Handguards
					i(229740),	-- Prized Gladiator's Plate Helm
					i(229741),	-- Prized Gladiator's Plate Helmet
					i(229742),	-- Prized Gladiator's Plate Legguards
					i(229745),	-- Prized Gladiator's Plate Pauldrons
					i(229744),	-- Prized Gladiator's Plate Shoulders
					i(229737),	-- Prized Gladiator's Plate Stompers
					i(229743),	-- Prized Gladiator's Plate Tasses
					i(229750),	-- Prized Gladiator's Plate Vambraces
					i(229736),	-- Prized Gladiator's Plate Warboots
					i(229748),	-- Prized Gladiator's Plate Wristguards
				}),
				cl(PRIEST, {
					i(229557),	-- Prized Gladiator's Cloak
					i(229558),	-- Prized Gladiator's Drape
					i(229559),	-- Prized Gladiator's Shawl
					i(229552),	-- Prized Gladiator's Silk Amice
					i(229556),	-- Prized Gladiator's Silk Armbands
					i(229554),	-- Prized Gladiator's Silk Belt
					i(229541),	-- Prized Gladiator's Silk Chestwrap
					i(229553),	-- Prized Gladiator's Silk Cord
					i(229545),	-- Prized Gladiator's Silk Gloves
					i(229548),	-- Prized Gladiator's Silk Guise
					i(229546),	-- Prized Gladiator's Silk Handwraps
					i(229547),	-- Prized Gladiator's Silk Hood
					i(229549),	-- Prized Gladiator's Silk Leggings
					i(229551),	-- Prized Gladiator's Silk Mantle
					i(229543),	-- Prized Gladiator's Silk Slippers
					i(229544),	-- Prized Gladiator's Silk Treads
					i(229550),	-- Prized Gladiator's Silk Trousers
					i(229542),	-- Prized Gladiator's Silk Vest
					i(229555),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(ROGUE, {
					i(229653),	-- Prized Gladiator's Cloak
					i(229654),	-- Prized Gladiator's Drape
					i(229655),	-- Prized Gladiator's Shawl
					i(229649),	-- Prized Gladiator's Leather Belt
					i(229639),	-- Prized Gladiator's Leather Boots
					i(229645),	-- Prized Gladiator's Leather Breeches
					i(229641),	-- Prized Gladiator's Leather Gloves
					i(229642),	-- Prized Gladiator's Leather Grips
					i(229643),	-- Prized Gladiator's Leather Helm
					i(229646),	-- Prized Gladiator's Leather Legwraps
					i(229644),	-- Prized Gladiator's Leather Mask
					i(229648),	-- Prized Gladiator's Leather Shoulderpads
					i(229647),	-- Prized Gladiator's Leather Spaulders
					i(229650),	-- Prized Gladiator's Leather Strap
					i(229640),	-- Prized Gladiator's Leather Treads
					i(229637),	-- Prized Gladiator's Leather Vest
					i(229638),	-- Prized Gladiator's Leather Jerkin
					i(229652),	-- Prized Gladiator's Leather Wristguards
					i(229651),	-- Prized Gladiator's Leather Wristwraps
				}),
				cl(SHAMAN, {
					i(229710),	-- Prized Gladiator's Cloak
					i(229711),	-- Prized Gladiator's Drape
					i(229712),	-- Prized Gladiator's Shawl
					i(229706),	-- Prized Gladiator's Chain Belt
					i(229697),	-- Prized Gladiator's Chain Boots
					i(229709),	-- Prized Gladiator's Chain Bracers
					i(229703),	-- Prized Gladiator's Chain Breeches
					i(229701),	-- Prized Gladiator's Chain Faceguard
					i(229698),	-- Prized Gladiator's Chain Gauntlets
					i(229707),	-- Prized Gladiator's Chain Girdle
					i(229699),	-- Prized Gladiator's Chain Handguards
					i(229700),	-- Prized Gladiator's Chain Helm
					i(229702),	-- Prized Gladiator's Chain Leggings
					i(229704),	-- Prized Gladiator's Chain Monnion
					i(229696),	-- Prized Gladiator's Chain Sabatons
					i(229705),	-- Prized Gladiator's Chain Shoulderguard
					i(229695),	-- Prized Gladiator's Chain Tunic
					i(229694),	-- Prized Gladiator's Chain Vest
					i(229708),	-- Prized Gladiator's Chain Wristguards
				}),
				cl(WARLOCK, {
					i(229576),	-- Prized Gladiator's Cloak
					i(229577),	-- Prized Gladiator's Drape
					i(229578),	-- Prized Gladiator's Shawl
					i(229571),	-- Prized Gladiator's Silk Amice
					i(229575),	-- Prized Gladiator's Silk Armbands
					i(229573),	-- Prized Gladiator's Silk Belt
					i(229572),	-- Prized Gladiator's Silk Cord
					i(229564),	-- Prized Gladiator's Silk Gloves
					i(229567),	-- Prized Gladiator's Silk Guise
					i(229565),	-- Prized Gladiator's Silk Handwraps
					i(229566),	-- Prized Gladiator's Silk Hood
					i(229568),	-- Prized Gladiator's Silk Leggings
					i(229570),	-- Prized Gladiator's Silk Mantle
					i(229560),	-- Prized Gladiator's Silk Raiment
					i(229562),	-- Prized Gladiator's Silk Slippers
					i(229563),	-- Prized Gladiator's Silk Treads
					i(229569),	-- Prized Gladiator's Silk Trousers
					i(229561),	-- Prized Gladiator's Silk Vestments
					i(229574),	-- Prized Gladiator's Silk Wristwraps
				}),
				cl(WARRIOR, {
					i(229771),	-- Prized Gladiator's Cloak
					i(229772),	-- Prized Gladiator's Drape
					i(229773),	-- Prized Gladiator's Shawl
					i(229754),	-- Prized Gladiator's Chestguard
					i(229755),	-- Prized Gladiator's Chestplate
					i(229758),	-- Prized Gladiator's Plate Gauntlets
					i(229767),	-- Prized Gladiator's Plate Girdle
					i(229768),	-- Prized Gladiator's Plate Greatbelt
					i(229759),	-- Prized Gladiator's Plate Handguards
					i(229760),	-- Prized Gladiator's Plate Helm
					i(229761),	-- Prized Gladiator's Plate Helmet
					i(229762),	-- Prized Gladiator's Plate Legguards
					i(229766),	-- Prized Gladiator's Plate Pauldrons
					i(229765),	-- Prized Gladiator's Plate Shoulders
					i(229757),	-- Prized Gladiator's Plate Stompers
					i(229770),	-- Prized Gladiator's Plate Vambraces
					i(229756),	-- Prized Gladiator's Plate Warboots
					i(229763),	-- Prized Gladiator's Plate Wargreaves
					i(229769),	-- Prized Gladiator's Plate Wristguards
				}),
			}),
			n(219216, {	-- Rogurn <Elite Conquest Quartermaster>
				["coord"] = { 59.8, 69.3, DORNOGAL },
				["g"] = {
					honor(100, i(231637, {	-- Prized Gladiator's Tabard
						["sourceAchievements"] = { 41019 },	-- Elite: The War Within Season 2
					})),
					moh(5, i(230784)),	-- Prized Gladiator's Army Knife
					moh(10, i(230776)),	-- Prized Gladiator's Blaster
					moh(5, i(230774)),	-- Prized Gladiator's Bludgeon
					moh(10, i(230788)),	-- Prized Gladiator's Bow
					moh(5, i(230785)),	-- Prized Gladiator's Conduit
					moh(10, i(230782)),	-- Prized Gladiator's Dagger
					moh(5, i(230787)),	-- Prized Gladiator's Detonator
					moh(10, i(230778)),	-- Prized Gladiator's Drill
					moh(5, i(230783)),	-- Prized Gladiator's Flail
					moh(5, i(230786)),	-- Prized Gladiator's Gasket
					moh(10, i(230789)),	-- Prized Gladiator's Greatsaw
					moh(5, i(230775)),	-- Prized Gladiator's Pincer
					moh(10, i(230790)),	-- Prized Gladiator's Pulverizer
					moh(10, i(230781)),	-- Prized Gladiator's Pylon
					moh(10, i(230779)),	-- Prized Gladiator's Staff
					moh(10, i(230780)),	-- Prized Gladiator's Torchblade
					moh(5, i(230777)),	-- Prized Gladiator's Warglaive
				},
			}),
		})),
	}),
}))));