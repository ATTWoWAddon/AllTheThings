-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
	n(SEASON_VENOMOUS_PVP, {
		n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			ach(62497, {	-- Venomous Weapons of Conquest
				i(270560),	-- Venomous Gladiator's Weapon Token
			}),
			ach(63099, {	-- Venomous Combatant
				["races"] = ALLIANCE_ONLY,
				["collectible"] = false,
			}),
			ach(63103, {	-- Venomous Combatant
				["races"] = HORDE_ONLY,
				["collectible"] = false,
			}),
			ach(62926),	-- Combatant I: Midnight Season 2
			ach(62951),	-- Combatant II: Midnight Season 2
			ach(62927),	-- Challenger I: Midnight Season 2
			ach(62952),	-- Challenger II: Midnight Season 2
			ach(62929, {	-- Duelist: Midnight Season 2
				i(272010, {	-- Venomous Gladiator's Prestigious Cloak
					["races"] = ALLIANCE_ONLY,
				}),
				i(272007, {	-- Venomous Gladiator's Prestigious Cloak
					["races"] = HORDE_ONLY,
				}),
			}),
			ach(62931),	-- Elite: Midnight Season 2
			ach(62922, {	-- Venomous Gladiator: Midnight Season 2
				title(767),	-- Venomous Gladiator <Name>
			}),
			ach(62930, {	-- Gladiator: Midnight Season 2
				i(275302),	-- Venomous Gladiator's Goredrake
			}),
			ach(62955),	-- Venomous Gladiator's Goredrake
			ach(62928),	-- Rival I: Midnight Season 2
			ach(62911, {	-- Rival II: Midnight Season 2
				i(275062),	-- Illusion: Venomcoil (ILLUSION!)
			}),
			-- RBG
			ach(62924, {	-- Venomous Marshal: Midnight Season 2
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					title(769),	-- Venomous Marshal <Name>
				},
			}),
			ach(62925, {	-- Venomous Warlord: Midnight Season 2
				["races"] = HORDE_ONLY,
				["groups"] = {
					title(770),	-- Venomous Warlord <Name>
				},
			}),
			ach(62953, {	-- Hero of the Alliance: Venomous
				["races"]= ALLIANCE_ONLY,
			}),
			ach(62954, {	-- Hero of the Horde: Venomous
				["races"]= HORDE_ONLY,
			}),
			ach(62950, {	-- Strategist: Midnight Season 2
				i(275068),	-- Venomous Legend's Pennant (COSMETIC!)
			}),
			-- Solo
			ach(62932, {	-- Legend: Midnight Season 2
				i(275068),	-- Venomous Legend's Pennant (COSMETIC!)
			}),
			ach(62921, {	-- Battle Mender: Midnight Season 2
				["classes"] = HEALERS,
			}),
			ach(62923, {	-- Venomous Legend: Midnight Season 2
				title(768),	-- Venomous Legend <Name>
			}),
			-- Fashion
			ach(63608),	-- Venomous Vestments
		})),
		filter(MOUNTS, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			i(275433, {	-- Vicious Lightbloom Boar [A] (MOUNT!)
				["races"] = ALLIANCE_ONLY,
			}),
			i(275432, {	-- Vicious Lightbloom Boar [H] (MOUNT!)
				["races"] = HORDE_ONLY,
			}),
		})),
		n(PVP_WARMODE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			n(243224, {	-- Knight-Lord Bloodvalor <War Mode Quartermaster>
				["coord"] = { 34.1, 81.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					filter(BACK_F, {
						bloody(525, i(270349)),	-- Venomous Warmonger's Cape
						bloody(525, i(270347)),	-- Venomous Warmonger's Cloak
						bloody(525, i(270348)),	-- Venomous Warmonger's Drape
						bloody(525, i(270350)),	-- Venomous Warmonger's Shawl
					}),
					filter(CLOTH, {
						bloody(525, i(270358)),	-- Venomous Warmonger's Bindings
						bloody(700, i(270357)),	-- Venomous Warmonger's Cord
						bloody(875, i(270351)),	-- Venomous Warmonger's Garb
						bloody(700, i(270353)),	-- Venomous Warmonger's Gloves
						bloody(700, i(270356)),	-- Venomous Warmonger's Mantle
						bloody(875, i(270354)),	-- Venomous Warmonger's Mask
						bloody(875, i(270355)),	-- Venomous Warmonger's Pants
						bloody(700, i(270352)),	-- Venomous Warmonger's Slippers
					}),
					filter(LEATHER, {
						bloody(700, i(270365)),	-- Venomous Warmonger's Belt
						bloody(700, i(270360)),	-- Venomous Warmonger's Boots
						bloody(875, i(270363)),	-- Venomous Warmonger's Breeches
						bloody(700, i(270361)),	-- Venomous Warmonger's Handwraps
						bloody(875, i(270362)),	-- Venomous Warmonger's Hood
						bloody(875, i(270359)),	-- Venomous Warmonger's Jerkin
						bloody(700, i(270364)),	-- Venomous Warmonger's Shoulderguard
						bloody(525, i(270366)),	-- Venomous Warmonger's Wraps
					}),
					filter(MAIL, {
						bloody(525, i(270374)),	-- Venomous Warmonger's Armguards
						bloody(875, i(270367)),	-- Venomous Warmonger's Chestguard
						bloody(700, i(270373)),	-- Venomous Warmonger's Cinch
						bloody(700, i(270372)),	-- Venomous Warmonger's Epaulets
						bloody(700, i(270368)),	-- Venomous Warmonger's Greaves
						bloody(700, i(270369)),	-- Venomous Warmonger's Grips
						bloody(875, i(270370)),	-- Venomous Warmonger's Helm
						bloody(875, i(270371)),	-- Venomous Warmonger's Leggings
					}),
					filter(PLATE, {
						bloody(525, i(270382)),	-- Venomous Warmonger's Bracers
						bloody(700, i(270381)),	-- Venomous Warmonger's Clasp
						bloody(875, i(270375)),	-- Venomous Warmonger's Cuirass
						bloody(875, i(270378)),	-- Venomous Warmonger's Faceplate
						bloody(700, i(270377)),	-- Venomous Warmonger's Gauntlets
						bloody(875, i(270379)),	-- Venomous Warmonger's Legguards
						bloody(700, i(270376)),	-- Venomous Warmonger's Sabatons
						bloody(700, i(270380)),	-- Venomous Warmonger's Spaulders
					}),
					n(WEAPONS, {
						bloody(1750, i(270549)),	-- Venomous Warmonger's Battleaxe
						bloody(1750, i(270399)),	-- Venomous Warmonger's Battlestaff
						bloody(875, i(270542)),		-- Venomous Warmonger's Blade
						bloody(1750, i(270396)),	-- Venomous Warmonger's Bow
						bloody(875, i(270385)),		-- Venomous Warmonger's Chopper
						bloody(1750, i(270402)),	-- Venomous Warmonger's Claymore
						bloody(1750, i(270550)),	-- Venomous Warmonger's Cleaver
						bloody(875, i(270392)),		-- Venomous Warmonger's Crusher
						bloody(1225, i(270390)),	-- Venomous Warmonger's Cudgel
						bloody(1225, i(270387)),	-- Venomous Warmonger's Dagger
						bloody(1750, i(270406)),	-- Venomous Warmonger's Decapitator
						bloody(1750, i(270401)),	-- Venomous Warmonger's Greatblade
						bloody(525, i(270403)),		-- Venomous Warmonger's Horn
						bloody(875, i(270388)),		-- Venomous Warmonger's Mace
						bloody(1750, i(270398)),	-- Venomous Warmonger's Polearm
						bloody(1750, i(270405)),	-- Venomous Warmonger's Rage
						bloody(1750, i(270551)),	-- Venomous Warmonger's Reaper
						bloody(875, i(270386)),		-- Venomous Warmonger's Shank
						bloody(525, i(270404)),		-- Venomous Warmonger's Shield
						bloody(1225, i(270384)),	-- Venomous Warmonger's Slicer
						bloody(1750, i(270397)),	-- Venomous Warmonger's Spear
						bloody(875, i(270407)),		-- Venomous Warmonger's Spellblade
						bloody(875, i(270383)),		-- Venomous Warmonger's Splitter
						bloody(1750, i(270400)),	-- Venomous Warmonger's Stave
						bloody(875, i(270408)),		-- Venomous Warmonger's Sword
						bloody(1225, i(270394)),	-- Venomous Warmonger's Wand
						bloody(1750, i(277970, {	-- Venomous Warmonger's Warblade
							["classes"] = { HUNTER },
						})),
						bloody(875, i(270395)),		-- Venomous Warmonger's Warglaive
					}),
				},
			}),
		})),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			n(243221, {	-- Captain Dawnrunner <Honor Quartermaster>
				["coord"] = { 34.0, 81.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					filter(BACK_F, {
						honor(525, i(270539)),	-- Venomous Aspirant's Cape
						honor(525, i(270540)),	-- Venomous Aspirant's Cloak
						honor(525, i(270541)),	-- Venomous Aspirant's Drape
						honor(525, i(270538)),	-- Venomous Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						honor(700, i(270518)),	-- Venomous Aspirant's Silk Belt
						honor(525, i(270516)),	-- Venomous Aspirant's Silk Bindings
						honor(700, i(270519)),	-- Venomous Aspirant's Silk Cord
						honor(875, i(270524)),	-- Venomous Aspirant's Silk Cover
						honor(700, i(270528)),	-- Venomous Aspirant's Silk Footwraps
						honor(700, i(270527)),	-- Venomous Aspirant's Silk Gloves
						honor(700, i(270526)),	-- Venomous Aspirant's Silk Handwraps
						honor(875, i(270525)),	-- Venomous Aspirant's Silk Hood
						honor(875, i(270523)),	-- Venomous Aspirant's Silk Leggings
						honor(875, i(270522)),	-- Venomous Aspirant's Silk Legwraps
						honor(700, i(270521)),	-- Venomous Aspirant's Silk Mantle
						honor(875, i(270531)),	-- Venomous Aspirant's Silk Robe
						honor(700, i(270520)),	-- Venomous Aspirant's Silk Shawl
						honor(875, i(270530)),	-- Venomous Aspirant's Silk Shirt
						honor(700, i(270529)),	-- Venomous Aspirant's Silk Treads
						honor(525, i(270517)),	-- Venomous Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						honor(525, i(270536)),	-- Venomous Aspirant's Band
						honor(525, i(270537)),	-- Venomous Aspirant's Ring
						honor(525, i(270535)),	-- Venomous Aspirant's Signet
					}),
					filter(LEATHER, {
						honor(525, i(270500)),	-- Venomous Aspirant's Leather Armguards
						honor(700, i(270503)),	-- Venomous Aspirant's Leather Belt
						honor(700, i(270513)),	-- Venomous Aspirant's Leather Boots
						honor(875, i(270507)),	-- Venomous Aspirant's Leather Breeches
						honor(700, i(270502)),	-- Venomous Aspirant's Leather Cord
						honor(700, i(270512)),	-- Venomous Aspirant's Leather Footpads
						honor(700, i(270511)),	-- Venomous Aspirant's Leather Gloves
						honor(700, i(270510)),	-- Venomous Aspirant's Leather Grips
						honor(875, i(270509)),	-- Venomous Aspirant's Leather Helm
						honor(875, i(270506)),	-- Venomous Aspirant's Leather Leggings
						honor(700, i(270504)),	-- Venomous Aspirant's Leather Mantle
						honor(875, i(270508)),	-- Venomous Aspirant's Leather Mask
						honor(700, i(270505)),	-- Venomous Aspirant's Leather Spaulders
						honor(875, i(270514)),	-- Venomous Aspirant's Leather Tunic
						honor(875, i(270515)),	-- Venomous Aspirant's Leather Vest
						honor(525, i(270501)),	-- Venomous Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						honor(700, i(270487)),	-- Venomous Aspirant's Chain Belt
						honor(525, i(270484)),	-- Venomous Aspirant's Chain Bracer
						honor(700, i(270486)),	-- Venomous Aspirant's Chain Clasp
						honor(700, i(270495)),	-- Venomous Aspirant's Chain Gauntlets
						honor(700, i(270494)),	-- Venomous Aspirant's Chain Handguards
						honor(875, i(270492)),	-- Venomous Aspirant's Chain Headguard
						honor(875, i(270493)),	-- Venomous Aspirant's Chain Helm
						honor(875, i(270491)),	-- Venomous Aspirant's Chain Leggings
						honor(700, i(270497)),	-- Venomous Aspirant's Chain Sabatons
						honor(700, i(270488)),	-- Venomous Aspirant's Chain Shoulderguards
						honor(700, i(270489)),	-- Venomous Aspirant's Chain Spaulders
						honor(700, i(270496)),	-- Venomous Aspirant's Chain Stompers
						honor(875, i(270498)),	-- Venomous Aspirant's Chain Tunic
						honor(875, i(270499)),	-- Venomous Aspirant's Chain Vest
						honor(875, i(270490)),	-- Venomous Aspirant's Chain Wargreaves
						honor(525, i(270485)),	-- Venomous Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						honor(525, i(270533)),	-- Venomous Aspirant's Choker
						honor(525, i(270534)),	-- Venomous Aspirant's Necklace
						honor(525, i(270532)),	-- Venomous Aspirant's Pendant
					}),
					filter(PLATE, {
						honor(875, i(270483)),	-- Venomous Aspirant's Chestplate
						honor(525, i(270468)),	-- Venomous Aspirant's Plate Armguards
						honor(875, i(270482)),	-- Venomous Aspirant's Plate Armor
						honor(525, i(270469)),	-- Venomous Aspirant's Plate Cuffs
						honor(700, i(270479)),	-- Venomous Aspirant's Plate Gauntlets
						honor(700, i(270471)),	-- Venomous Aspirant's Plate Girdle
						honor(700, i(270470)),	-- Venomous Aspirant's Plate Greatbelt
						honor(700, i(270478)),	-- Venomous Aspirant's Plate Handguards
						honor(875, i(270476)),	-- Venomous Aspirant's Plate Headguard
						honor(875, i(270477)),	-- Venomous Aspirant's Plate Helm
						honor(875, i(270475)),	-- Venomous Aspirant's Plate Legguards
						honor(700, i(270472)),	-- Venomous Aspirant's Plate Pauldrons
						honor(700, i(270473)),	-- Venomous Aspirant's Plate Shoulders
						honor(700, i(270480)),	-- Venomous Aspirant's Plate Stompers
						honor(700, i(270481)),	-- Venomous Aspirant's Plate Warboots
						honor(875, i(270474)),	-- Venomous Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						honor(700, i(270559)),	-- Venomous Aspirant's Badge of Ferocity
						honor(700, i(270555)),	-- Venomous Aspirant's Emblem
						honor(700, i(270558)),	-- Venomous Aspirant's Insignia of Alacrity
						honor(525, i(270556)),	-- Venomous Aspirant's Medallion
						honor(525, i(270557)),	-- Venomous Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						honor(1750, i(270552)),	-- Venomous Aspirant's Battleaxe
						honor(875, i(270458)),	-- Venomous Aspirant's Blade
						honor(1750, i(270453)),	-- Venomous Aspirant's Bow
						honor(875, i(270466)),	-- Venomous Aspirant's Chopper
						honor(1750, i(270447)),	-- Venomous Aspirant's Claymore
						honor(1750, i(270553)),	-- Venomous Aspirant's Cleaver
						honor(875, i(270459)),	-- Venomous Aspirant's Crusher
						honor(1225, i(270460)),	-- Venomous Aspirant's Cudgel
						honor(1225, i(270464)),	-- Venomous Aspirant's Dagger
						honor(1750, i(270449)),	-- Venomous Aspirant's Greatblade
						honor(875, i(270461)),	-- Venomous Aspirant's Mace
						honor(1750, i(270451)),	-- Venomous Aspirant's Polearm
						honor(1750, i(270554)),	-- Venomous Aspirant's Reaper
						honor(875, i(270465)),	-- Venomous Aspirant's Shank
						honor(525, i(270445)),	-- Venomous Aspirant's Shield
						honor(525, i(270446)),	-- Venomous Aspirant's Sigil
						honor(1225, i(277951)),	-- Venomous Aspirant's Slicer
						honor(1750, i(270452)),	-- Venomous Aspirant's Spear
						honor(1225, i(270456)),	-- Venomous Aspirant's Spellblade
						honor(875, i(270467)),	-- Venomous Aspirant's Splitter
						honor(1750, i(270450)),	-- Venomous Aspirant's Stave
						honor(875, i(270457)),	-- Venomous Aspirant's Sword
						honor(1225, i(270455)),	-- Venomous Aspirant's Wand
						honor(1750, i(270448, {	-- Venomous Aspirant's Warblade
							["classes"] = { HUNTER },
						})),
						honor(875, i(270454)),	-- Venomous Aspirant's Warglaive
					}),
				},
			}),
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			n(243220, {	-- Irissa Bloodstar <Conquest Quartermaster>
				["coord"] = { 34.1, 80.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["ItemAppearanceModifierID"] = 159,
				["groups"] = {
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							conquest(875, i(270773)),	-- Venomous Gladiator's Chestguard
							conquest(875, i(270774)),	-- Venomous Gladiator's Chestplate
							conquest(700, i(270775)),	-- Venomous Gladiator's Plate Warboots
							conquest(700, i(270776)),	-- Venomous Gladiator's Plate Stompers
							conquest(700, i(270777)),	-- Venomous Gladiator's Plate Gauntlets
							conquest(700, i(270778)),	-- Venomous Gladiator's Plate Handguards
							conquest(875, i(270779)),	-- Venomous Gladiator's Plate Helm
							conquest(875, i(270780)),	-- Venomous Gladiator's Plate Helmet
							conquest(875, i(270781)),	-- Venomous Gladiator's Plate Legguards
							conquest(875, i(270782)),	-- Venomous Gladiator's Plate Wargreaves
							conquest(700, i(270783)),	-- Venomous Gladiator's Plate Shoulders
							conquest(700, i(270784)),	-- Venomous Gladiator's Plate Pauldrons
							conquest(700, i(270785)),	-- Venomous Gladiator's Plate Girdle
							conquest(700, i(270786)),	-- Venomous Gladiator's Plate Greatbelt
							conquest(525, i(270787)),	-- Venomous Gladiator's Plate Wristguards
							conquest(525, i(270788)),	-- Venomous Gladiator's Plate Vambraces
							conquest(525, i(270563)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270564)),	-- Venomous Gladiator's Drape
							conquest(525, i(270565)),	-- Venomous Gladiator's Shawl
						}),
						cl(DEMONHUNTER, {
							conquest(875, i(270661)),	-- Venomous Gladiator's Leather Vest
							conquest(875, i(270662)),	-- Venomous Gladiator's Leather Jerkin
							conquest(700, i(270663)),	-- Venomous Gladiator's Leather Boots
							conquest(700, i(270664)),	-- Venomous Gladiator's Leather Treads
							conquest(700, i(270665)),	-- Venomous Gladiator's Leather Gloves
							conquest(700, i(270666)),	-- Venomous Gladiator's Leather Grips
							conquest(875, i(270667)),	-- Venomous Gladiator's Leather Helm
							conquest(875, i(270668)),	-- Venomous Gladiator's Leather Mask
							conquest(875, i(270669)),	-- Venomous Gladiator's Leather Breeches
							conquest(875, i(270670)),	-- Venomous Gladiator's Leather Legwraps
							conquest(700, i(270671)),	-- Venomous Gladiator's Leather Spaulders
							conquest(700, i(270672)),	-- Venomous Gladiator's Leather Shoulderpads
							conquest(700, i(270673)),	-- Venomous Gladiator's Leather Belt
							conquest(700, i(270674)),	-- Venomous Gladiator's Leather Strap
							conquest(525, i(270675)),	-- Venomous Gladiator's Leather Wristwraps
							conquest(525, i(270676)),	-- Venomous Gladiator's Leather Wristguards
							conquest(525, i(270566)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270567)),	-- Venomous Gladiator's Drape
							conquest(525, i(270568)),	-- Venomous Gladiator's Shawl
						}),
						cl(DRUID, {
							conquest(875, i(270677)),	-- Venomous Gladiator's Leather Vest
							conquest(875, i(270678)),	-- Venomous Gladiator's Leather Vestments
							conquest(700, i(270679)),	-- Venomous Gladiator's Leather Boots
							conquest(700, i(270680)),	-- Venomous Gladiator's Leather Treads
							conquest(700, i(270681)),	-- Venomous Gladiator's Leather Gloves
							conquest(700, i(270682)),	-- Venomous Gladiator's Leather Grips
							conquest(875, i(270683)),	-- Venomous Gladiator's Leather Helm
							conquest(875, i(270684)),	-- Venomous Gladiator's Leather Mask
							conquest(875, i(270685)),	-- Venomous Gladiator's Leather Breeches
							conquest(875, i(270686)),	-- Venomous Gladiator's Leather Legwraps
							conquest(700, i(270687)),	-- Venomous Gladiator's Leather Spaulders
							conquest(700, i(270688)),	-- Venomous Gladiator's Leather Shoulderpads
							conquest(700, i(270689)),	-- Venomous Gladiator's Leather Belt
							conquest(700, i(270690)),	-- Venomous Gladiator's Leather Strap
							conquest(525, i(270691)),	-- Venomous Gladiator's Leather Wristwraps
							conquest(525, i(270692)),	-- Venomous Gladiator's Leather Wristguards
							conquest(525, i(270569)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270570)),	-- Venomous Gladiator's Drape
							conquest(525, i(270571)),	-- Venomous Gladiator's Shawl
						}),
						cl(EVOKER, {
							conquest(875, i(270725)),	-- Venomous Gladiator's Armored Scales
							conquest(875, i(270726)),	-- Venomous Gladiator's Scaleguard
							conquest(700, i(270727)),	-- Venomous Gladiator's Chain Sabatons
							conquest(700, i(270728)),	-- Venomous Gladiator's Chain Boots
							conquest(700, i(270729)),	-- Venomous Gladiator's Chain Gauntlets
							conquest(700, i(270730)),	-- Venomous Gladiator's Chain Handguards
							conquest(875, i(270731)),	-- Venomous Gladiator's Chain Helm
							conquest(875, i(270732)),	-- Venomous Gladiator's Chain Faceguard
							conquest(875, i(270733)),	-- Venomous Gladiator's Chain Leggings
							conquest(875, i(270734)),	-- Venomous Gladiator's Chain Breeches
							conquest(700, i(270735)),	-- Venomous Gladiator's Chain Monnion
							conquest(700, i(270736)),	-- Venomous Gladiator's Chain Shoulderguard
							conquest(700, i(270737)),	-- Venomous Gladiator's Chain Belt
							conquest(700, i(270738)),	-- Venomous Gladiator's Chain Girdle
							conquest(525, i(270739)),	-- Venomous Gladiator's Chain Wristguards
							conquest(525, i(270740)),	-- Venomous Gladiator's Chain Bracers
							conquest(525, i(270572)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270573)),	-- Venomous Gladiator's Drape
							conquest(525, i(270574)),	-- Venomous Gladiator's Shawl
						}),
						cl(HUNTER, {
							conquest(875, i(270741)),	-- Venomous Gladiator's Chain Vest
							conquest(875, i(270742)),	-- Venomous Gladiator's Chain Tunic
							conquest(700, i(270743)),	-- Venomous Gladiator's Chain Sabatons
							conquest(700, i(270744)),	-- Venomous Gladiator's Chain Boots
							conquest(700, i(270745)),	-- Venomous Gladiator's Chain Gauntlets
							conquest(700, i(270746)),	-- Venomous Gladiator's Chain Handguards
							conquest(875, i(270747)),	-- Venomous Gladiator's Chain Helm
							conquest(875, i(270748)),	-- Venomous Gladiator's Chain Faceguard
							conquest(875, i(270749)),	-- Venomous Gladiator's Chain Leggings
							conquest(875, i(270750)),	-- Venomous Gladiator's Chain Breeches
							conquest(700, i(270751)),	-- Venomous Gladiator's Chain Monnion
							conquest(700, i(270752)),	-- Venomous Gladiator's Chain Shoulderguard
							conquest(700, i(270753)),	-- Venomous Gladiator's Chain Belt
							conquest(700, i(270754)),	-- Venomous Gladiator's Chain Girdle
							conquest(525, i(270755)),	-- Venomous Gladiator's Chain Wristguards
							conquest(525, i(270756)),	-- Venomous Gladiator's Chain Bracers
							conquest(525, i(270578)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270579)),	-- Venomous Gladiator's Drape
							conquest(525, i(270580)),	-- Venomous Gladiator's Shawl
						}),
						cl(MAGE, {
							conquest(875, i(270613)),	-- Venomous Gladiator's Silk Robe
							conquest(875, i(270614)),	-- Venomous Gladiator's Silk Gown
							conquest(700, i(270615)),	-- Venomous Gladiator's Silk Slippers
							conquest(700, i(270616)),	-- Venomous Gladiator's Silk Treads
							conquest(700, i(270617)),	-- Venomous Gladiator's Silk Gloves
							conquest(700, i(270618)),	-- Venomous Gladiator's Silk Handwraps
							conquest(875, i(270619)),	-- Venomous Gladiator's Silk Hat
							conquest(875, i(270620)),	-- Venomous Gladiator's Silk Cap
							conquest(875, i(270621)),	-- Venomous Gladiator's Silk Leggings
							conquest(875, i(270622)),	-- Venomous Gladiator's Silk Trousers
							conquest(700, i(270623)),	-- Venomous Gladiator's Silk Mantle
							conquest(700, i(270624)),	-- Venomous Gladiator's Silk Amice
							conquest(700, i(270625)),	-- Venomous Gladiator's Silk Cord
							conquest(700, i(270626)),	-- Venomous Gladiator's Silk Belt
							conquest(525, i(270627)),	-- Venomous Gladiator's Silk Wristwraps
							conquest(525, i(270628)),	-- Venomous Gladiator's Silk Armbands
							conquest(525, i(270581)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270582)),	-- Venomous Gladiator's Drape
							conquest(525, i(270583)),	-- Venomous Gladiator's Shawl
						}),
						cl(MONK, {
							conquest(875, i(270693)),	-- Venomous Gladiator's Leather Vest
							conquest(875, i(270694)),	-- Venomous Gladiator's Leather Jerkin
							conquest(700, i(270695)),	-- Venomous Gladiator's Leather Boots
							conquest(700, i(270696)),	-- Venomous Gladiator's Leather Treads
							conquest(700, i(270697)),	-- Venomous Gladiator's Leather Gloves
							conquest(700, i(270698)),	-- Venomous Gladiator's Leather Grips
							conquest(875, i(270699)),	-- Venomous Gladiator's Leather Helm
							conquest(875, i(270700)),	-- Venomous Gladiator's Leather Mask
							conquest(875, i(270701)),	-- Venomous Gladiator's Leather Breeches
							conquest(875, i(270702)),	-- Venomous Gladiator's Leather Legwraps
							conquest(700, i(270703)),	-- Venomous Gladiator's Leather Spaulders
							conquest(700, i(270704)),	-- Venomous Gladiator's Leather Shoulderpads
							conquest(700, i(270705)),	-- Venomous Gladiator's Leather Belt
							conquest(700, i(270706)),	-- Venomous Gladiator's Leather Strap
							conquest(525, i(270707)),	-- Venomous Gladiator's Leather Wristwraps
							conquest(525, i(270708)),	-- Venomous Gladiator's Leather Wristguards
							conquest(525, i(270584)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270585)),	-- Venomous Gladiator's Drape
							conquest(525, i(270586)),	-- Venomous Gladiator's Shawl
						}),
						cl(PALADIN, {
							conquest(875, i(270789)),	-- Venomous Gladiator's Chestguard
							conquest(875, i(270790)),	-- Venomous Gladiator's Chestplate
							conquest(700, i(270791)),	-- Venomous Gladiator's Plate Warboots
							conquest(700, i(270792)),	-- Venomous Gladiator's Plate Stompers
							conquest(700, i(270793)),	-- Venomous Gladiator's Plate Gauntlets
							conquest(700, i(270794)),	-- Venomous Gladiator's Plate Handguards
							conquest(875, i(270795)),	-- Venomous Gladiator's Plate Helm
							conquest(875, i(270796)),	-- Venomous Gladiator's Plate Helmet
							conquest(875, i(270797)),	-- Venomous Gladiator's Plate Legguards
							conquest(875, i(270798)),	-- Venomous Gladiator's Plate Tasses
							conquest(700, i(270799)),	-- Venomous Gladiator's Plate Shoulders
							conquest(700, i(270800)),	-- Venomous Gladiator's Plate Pauldrons
							conquest(700, i(270801)),	-- Venomous Gladiator's Plate Girdle
							conquest(700, i(270802)),	-- Venomous Gladiator's Plate Greatbelt
							conquest(525, i(270803)),	-- Venomous Gladiator's Plate Wristguards
							conquest(525, i(270804)),	-- Venomous Gladiator's Plate Vambraces
							conquest(525, i(270590)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270591)),	-- Venomous Gladiator's Drape
							conquest(525, i(270592)),	-- Venomous Gladiator's Shawl
						}),
						cl(PRIEST, {
							conquest(875, i(270629)),	-- Venomous Gladiator's Silk Robe
							conquest(875, i(270630)),	-- Venomous Gladiator's Silk Vestments
							conquest(700, i(270631)),	-- Venomous Gladiator's Silk Slippers
							conquest(700, i(270632)),	-- Venomous Gladiator's Silk Treads
							conquest(700, i(270633)),	-- Venomous Gladiator's Silk Gloves
							conquest(700, i(270634)),	-- Venomous Gladiator's Silk Handwraps
							conquest(875, i(270635)),	-- Venomous Gladiator's Silk Hood
							conquest(875, i(270636)),	-- Venomous Gladiator's Silk Guise
							conquest(875, i(270637)),	-- Venomous Gladiator's Silk Leggings
							conquest(875, i(270638)),	-- Venomous Gladiator's Silk Trousers
							conquest(700, i(270639)),	-- Venomous Gladiator's Silk Mantle
							conquest(700, i(270640)),	-- Venomous Gladiator's Silk Amice
							conquest(700, i(270641)),	-- Venomous Gladiator's Silk Cord
							conquest(700, i(270642)),	-- Venomous Gladiator's Silk Belt
							conquest(525, i(270643)),	-- Venomous Gladiator's Silk Wristwraps
							conquest(525, i(270644)),	-- Venomous Gladiator's Silk Armbands
							conquest(525, i(270593)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270594)),	-- Venomous Gladiator's Drape
							conquest(525, i(270595)),	-- Venomous Gladiator's Shawl
						}),
						cl(ROGUE, {
							conquest(875, i(270709)),	-- Venomous Gladiator's Leather Vest
							conquest(875, i(270710)),	-- Venomous Gladiator's Leather Jerkin
							conquest(700, i(270711)),	-- Venomous Gladiator's Leather Boots
							conquest(700, i(270712)),	-- Venomous Gladiator's Leather Treads
							conquest(700, i(270713)),	-- Venomous Gladiator's Leather Gloves
							conquest(700, i(270714)),	-- Venomous Gladiator's Leather Grips
							conquest(875, i(270715)),	-- Venomous Gladiator's Leather Helm
							conquest(875, i(270716)),	-- Venomous Gladiator's Leather Mask
							conquest(875, i(270717)),	-- Venomous Gladiator's Leather Breeches
							conquest(875, i(270718)),	-- Venomous Gladiator's Leather Legwraps
							conquest(700, i(270719)),	-- Venomous Gladiator's Leather Spaulders
							conquest(700, i(270720)),	-- Venomous Gladiator's Leather Shoulderpads
							conquest(700, i(270721)),	-- Venomous Gladiator's Leather Belt
							conquest(700, i(270722)),	-- Venomous Gladiator's Leather Strap
							conquest(525, i(270723)),	-- Venomous Gladiator's Leather Wristwraps
							conquest(525, i(270724)),	-- Venomous Gladiator's Leather Wristguards
							conquest(525, i(270596)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270597)),	-- Venomous Gladiator's Drape
							conquest(525, i(270598)),	-- Venomous Gladiator's Shawl
						}),
						cl(SHAMAN, {
							conquest(875, i(270757)),	-- Venomous Gladiator's Chain Vest
							conquest(875, i(270758)),	-- Venomous Gladiator's Chain Tunic
							conquest(700, i(270759)),	-- Venomous Gladiator's Chain Sabatons
							conquest(700, i(270760)),	-- Venomous Gladiator's Chain Boots
							conquest(700, i(270761)),	-- Venomous Gladiator's Chain Gauntlets
							conquest(700, i(270762)),	-- Venomous Gladiator's Chain Handguards
							conquest(875, i(270763)),	-- Venomous Gladiator's Chain Helm
							conquest(875, i(270764)),	-- Venomous Gladiator's Chain Faceguard
							conquest(875, i(270765)),	-- Venomous Gladiator's Chain Leggings
							conquest(875, i(270766)),	-- Venomous Gladiator's Chain Breeches
							conquest(700, i(270767)),	-- Venomous Gladiator's Chain Monnion
							conquest(700, i(270768)),	-- Venomous Gladiator's Chain Shoulderguard
							conquest(700, i(270769)),	-- Venomous Gladiator's Chain Belt
							conquest(700, i(270770)),	-- Venomous Gladiator's Chain Girdle
							conquest(525, i(270771)),	-- Venomous Gladiator's Chain Wristguards
							conquest(525, i(270772)),	-- Venomous Gladiator's Chain Bracers
							conquest(525, i(270599)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270600)),	-- Venomous Gladiator's Drape
							conquest(525, i(270601)),	-- Venomous Gladiator's Shawl
						}),
						cl(WARLOCK, {
							conquest(875, i(270645)),	-- Venomous Gladiator's Silk Raiment
							conquest(875, i(270646)),	-- Venomous Gladiator's Silk Vestments
							conquest(700, i(270647)),	-- Venomous Gladiator's Silk Slippers
							conquest(700, i(270648)),	-- Venomous Gladiator's Silk Treads
							conquest(700, i(270649)),	-- Venomous Gladiator's Silk Gloves
							conquest(700, i(270650)),	-- Venomous Gladiator's Silk Handwraps
							conquest(875, i(270651)),	-- Venomous Gladiator's Silk Hood
							conquest(875, i(270652)),	-- Venomous Gladiator's Silk Guise
							conquest(875, i(270653)),	-- Venomous Gladiator's Silk Leggings
							conquest(875, i(270654)),	-- Venomous Gladiator's Silk Trousers
							conquest(700, i(270655)),	-- Venomous Gladiator's Silk Mantle
							conquest(700, i(270656)),	-- Venomous Gladiator's Silk Amice
							conquest(700, i(270657)),	-- Venomous Gladiator's Silk Cord
							conquest(700, i(270658)),	-- Venomous Gladiator's Silk Belt
							conquest(525, i(270659)),	-- Venomous Gladiator's Silk Wristwraps
							conquest(525, i(270660)),	-- Venomous Gladiator's Silk Armbands
							conquest(525, i(270607)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270608)),	-- Venomous Gladiator's Drape
							conquest(525, i(270609)),	-- Venomous Gladiator's Shawl
						}),
						cl(WARRIOR, {
							conquest(875, i(270805)),	-- Venomous Gladiator's Chestguard
							conquest(875, i(270806)),	-- Venomous Gladiator's Chestplate
							conquest(700, i(270807)),	-- Venomous Gladiator's Plate Warboots
							conquest(700, i(270808)),	-- Venomous Gladiator's Plate Stompers
							conquest(700, i(270809)),	-- Venomous Gladiator's Plate Gauntlets
							conquest(700, i(270810)),	-- Venomous Gladiator's Plate Handguards
							conquest(875, i(270811)),	-- Venomous Gladiator's Plate Helm
							conquest(875, i(270812)),	-- Venomous Gladiator's Plate Helmet
							conquest(875, i(270813)),	-- Venomous Gladiator's Plate Legguards
							conquest(875, i(270814)),	-- Venomous Gladiator's Plate Wargreaves
							conquest(700, i(270815)),	-- Venomous Gladiator's Plate Shoulders
							conquest(700, i(270816)),	-- Venomous Gladiator's Plate Pauldrons
							conquest(700, i(270817)),	-- Venomous Gladiator's Plate Girdle
							conquest(700, i(270818)),	-- Venomous Gladiator's Plate Greatbelt
							conquest(525, i(270819)),	-- Venomous Gladiator's Plate Wristguards
							conquest(525, i(270820)),	-- Venomous Gladiator's Plate Vambraces
							conquest(525, i(270610)),	-- Venomous Gladiator's Cloak
							conquest(525, i(270611)),	-- Venomous Gladiator's Drape
							conquest(525, i(270612)),	-- Venomous Gladiator's Shawl
						}),
					}),
					filter(FINGER_F, {
						conquest(525, i(270576)),	-- Venomous Gladiator's Band
						conquest(525, i(270575)),	-- Venomous Gladiator's Ring
						conquest(525, i(270577)),	-- Venomous Gladiator's Signet
					}),
					filter(MISC, {
						i(281225, {	-- Conqueror's Venomous Lacquer
							["cost"] = { { "c", CONQUEST, 700 } },
						}),
						i(281224, {	-- Conqueror's Venomous Varnish
							["cost"] = { { "c", CONQUEST, 875 } },
						}),
					}),
					filter(NECK_F, {
						conquest(525, i(270589)),	-- Venomous Gladiator's Amulet
						conquest(525, i(270587)),	-- Venomous Gladiator's Necklace
						conquest(525, i(270588)),	-- Venomous Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						conquest(700, i(270602)),	-- Venomous Gladiator's Badge of Ferocity
						conquest(700, i(270606)),	-- Venomous Gladiator's Emblem
						conquest(700, i(270603)),	-- Venomous Gladiator's Insignia of Alacrity
						conquest(525, i(270605)),	-- Venomous Gladiator's Medallion
						conquest(525, i(270604)),	-- Venomous Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						conquest(1750, i(270835)),	-- Venomous Gladiator's Battleaxe
						conquest(875, i(270831)),	-- Venomous Gladiator's Blade
						conquest(1750, i(270838)),	-- Venomous Gladiator's Bow
						conquest(875, i(270828)),	-- Venomous Gladiator's Chopper
						conquest(1750, i(270851)),	-- Venomous Gladiator's Claymore
						conquest(1750, i(270836)),	-- Venomous Gladiator's Cleaver
						conquest(1225, i(270825)),	-- Venomous Gladiator's Crusher
						conquest(1225, i(270827)),	-- Venomous Gladiator's Cudgel
						conquest(875, i(270834)),	-- Venomous Gladiator's Edge
						conquest(1750, i(270853)),	-- Venomous Gladiator's Greatblade
						conquest(875, i(270823)),	-- Venomous Gladiator's Incisors
						conquest(1225, i(270826)),	-- Venomous Gladiator's Mace
						conquest(1750, i(270837)),	-- Venomous Gladiator's Reaper
						conquest(1225, i(270824)),	-- Venomous Gladiator's Rippers
						conquest(525, i(270849)),	-- Venomous Gladiator's Scaleshield
						conquest(525, i(270847)),	-- Venomous Gladiator's Scepter
						conquest(875, i(270821)),	-- Venomous Gladiator's Shank
						conquest(525, i(270848)),	-- Venomous Gladiator's Sigil
						conquest(1225, i(270830)),	-- Venomous Gladiator's Slicer
						conquest(1750, i(284846)),	-- Venomous Gladiator's Smasher
						conquest(1750, i(270843)),	-- Venomous Gladiator's Spear
						conquest(1225, i(270833)),	-- Venomous Gladiator's Spellblade
						conquest(1750, i(270844)),	-- Venomous Gladiator's Spike
						conquest(525, i(270850)),	-- Venomous Gladiator's Spikeshield
						conquest(1225, i(270822)),	-- Venomous Gladiator's Spine
						conquest(1750, i(270839)),	-- Venomous Gladiator's Spitter
						conquest(875, i(270829)),	-- Venomous Gladiator's Splitter
						conquest(1750, i(270845)),	-- Venomous Gladiator's Staff
						conquest(1750, i(270846)),	-- Venomous Gladiator's Stave
						conquest(875, i(270832)),	-- Venomous Gladiator's Sword
						conquest(1750, i(270852, {	-- Venomous Gladiator's Warblade
							["classes"] = { HUNTER },
						})),
					}),
				},
			}),
			--[[o(532226, {	-- The Catalyst
				["description"] = "Help us gather information of what is/isn't available via doing reports in ATT Discord. Especially the alternative sets and if the PvP transmog is available somewhere else.",
				["coord"] = { 40.3, 65.5, MAP.MIDNIGHT.SILVERMOON_CITY },
				["modelScale"] = 4,
				["catalystID"] = 12,	-- ItemBonus.Value_0 MID:S1
				["groups"] = bubbleDown({ ["modID"] = 14, }, {
					-- Blizzard removed all Gladiator and Elite pieces for this Catalyst version during Midnight beta.
					-- Keep this Catalyst here in case gear can be converted into different pieces than in previous seasons.
				}),
			}),--]]
		})),
		n(PVP_ELITE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 }, ["bonusID"] = 7532 }, {
			n(255844, {	-- Soryn <Elite Conquest Quartermaster>
				["coord"] = { 34.0, 80.7, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(272005, {	-- Venomous Gladiator's Tabard
						-- Not displaying Honor Cost, reaching Elite grants you the item automatically
						["races"] = ALLIANCE_ONLY,
						["sourceAchievement"] = 62931,	-- Elite: Midnight Season 2
					}),
					i(272006, {	-- Venomous Gladiator's Tabard
						-- Not displaying Honor Cost, reaching Elite grants you the item automatically
						["races"] = HORDE_ONLY,
						["sourceAchievement"] = 62931,	-- Elite: Midnight Season 2
					}),
					moh(5, i(277312)),	-- Venomous Gladiator's Axe
					moh(10, i(277306)),	-- Venomous Gladiator's Barb
					moh(5, i(277307)),	-- Venomous Gladiator's Basher
					moh(10, i(277302)),	-- Venomous Gladiator's Blaster
					moh(5, i(277300)),	-- Venomous Gladiator's Dagger
					moh(5, i(277301)),	-- Venomous Gladiator's Fangs
					moh(5, i(277298)),	-- Venomous Gladiator's Fetish
					moh(10, i(277308)),	-- Venomous Gladiator's Greataxe
					moh(10, i(277295)),	-- Venomous Gladiator's Greatstaff
					moh(10, i(277303)),	-- Venomous Gladiator's Greatsword
					moh(10, i(277296)),	-- Venomous Gladiator's Longbow
					moh(10, i(277294)),	-- Venomous Gladiator's Polearm
					moh(5, i(277292)),	-- Venomous Gladiator's Rib
					moh(5, i(277299)),	-- Venomous Gladiator's Shield
					moh(10, i(277304)),	-- Venomous Gladiator's Smasher
					moh(5, i(277305)),	-- Venomous Gladiator's Sword
					moh(5, i(277293)),	-- Venomous Gladiator's Warglaive
				},
			}),
		})),
		n(REWARDS, {
			i(275634, {	-- Artisan's Consortium Flyer (QS!)
				["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 },
				["description"] = "Rewarded from the first Arena win, including training grounds.",
			}),
		}),
	}),
}))));
