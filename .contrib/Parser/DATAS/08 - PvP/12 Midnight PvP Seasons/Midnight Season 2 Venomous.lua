-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, pvp(expansion(EXPANSION.MID, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
	n(SEASON_VENOMOUS, {
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
				ill(8697),	-- Venomcoil
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
					-- bloody(
					filter(BACK_F, {
						i(270349),	-- Venomous Warmonger's Cape
						i(270347),	-- Venomous Warmonger's Cloak
						i(270348),	-- Venomous Warmonger's Drape
						i(270350),	-- Venomous Warmonger's Shawl
					}),
					filter(CLOTH, {
						i(270358),	-- Venomous Warmonger's Bindings
						i(270357),	-- Venomous Warmonger's Cord
						i(270351),	-- Venomous Warmonger's Garb
						i(270353),	-- Venomous Warmonger's Gloves
						i(270356),	-- Venomous Warmonger's Mantle
						i(270354),	-- Venomous Warmonger's Mask
						i(270355),	-- Venomous Warmonger's Pants
						i(270352),	-- Venomous Warmonger's Slippers
					}),
					filter(LEATHER, {
						i(270365),	-- Venomous Warmonger's Belt
						i(270360),	-- Venomous Warmonger's Boots
						i(270363),	-- Venomous Warmonger's Breeches
						i(270361),	-- Venomous Warmonger's Handwraps
						i(270362),	-- Venomous Warmonger's Hood
						i(270359),	-- Venomous Warmonger's Jerkin
						i(270364),	-- Venomous Warmonger's Shoulderguard
						i(270366),	-- Venomous Warmonger's Wraps
					}),
					filter(MAIL, {
						i(270374),	-- Venomous Warmonger's Armguards
						i(270367),	-- Venomous Warmonger's Chestguard
						i(270373),	-- Venomous Warmonger's Cinch
						i(270372),	-- Venomous Warmonger's Epaulets
						i(270368),	-- Venomous Warmonger's Greaves
						i(270369),	-- Venomous Warmonger's Grips
						i(270370),	-- Venomous Warmonger's Helm
						i(270371),	-- Venomous Warmonger's Leggings
					}),
					filter(PLATE, {
						i(270382),	-- Venomous Warmonger's Bracers
						i(270381),	-- Venomous Warmonger's Clasp
						i(270375),	-- Venomous Warmonger's Cuirass
						i(270378),	-- Venomous Warmonger's Faceplate
						i(270377),	-- Venomous Warmonger's Gauntlets
						i(270379),	-- Venomous Warmonger's Legguards
						i(270376),	-- Venomous Warmonger's Sabatons
						i(270380),	-- Venomous Warmonger's Spaulders
					}),
					n(WEAPONS, {
						i(270549),	-- Venomous Warmonger's Battleaxe
						i(270399),	-- Venomous Warmonger's Battlestaff
						i(270542),	-- Venomous Warmonger's Blade
						i(270396),	-- Venomous Warmonger's Bow
						i(270385),	-- Venomous Warmonger's Chopper
						i(270402),	-- Venomous Warmonger's Claymore
						i(270550),	-- Venomous Warmonger's Cleaver
						i(270392),	-- Venomous Warmonger's Crusher
						i(270390),	-- Venomous Warmonger's Cudgel
						i(270387),	-- Venomous Warmonger's Dagger
						i(270406),	-- Venomous Warmonger's Decapitator
						i(270401),	-- Venomous Warmonger's Greatblade
						i(270403),	-- Venomous Warmonger's Horn
						i(270388),	-- Venomous Warmonger's Mace
						i(270398),	-- Venomous Warmonger's Polearm
						i(270405),	-- Venomous Warmonger's Rage
						i(270551),	-- Venomous Warmonger's Reaper
						i(270386),	-- Venomous Warmonger's Shank
						i(270404),	-- Venomous Warmonger's Shield
						i(270384),	-- Venomous Warmonger's Slicer
						i(270397),	-- Venomous Warmonger's Spear
						i(270407),	-- Venomous Warmonger's Spellblade
						i(270383),	-- Venomous Warmonger's Splitter
						i(270400),	-- Venomous Warmonger's Stave
						i(270408),	-- Venomous Warmonger's Sword
						i(270394),	-- Venomous Warmonger's Wand
						i(277970, { ["classes"] = { HUNTER } }),	-- Venomous Warmonger's Warblade
						i(270395),	-- Venomous Warmonger's Warglaive
					}),
				},
			}),
		})),
		n(PVP_ASPIRANT, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			n(243221, {	-- Captain Dawnrunner <Honor Quartermaster>
				["coord"] = { 34.0, 81.0, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					-- honor(
					filter(BACK_F, {
						i(270539),	-- Venomous Aspirant's Cape
						i(270540),	-- Venomous Aspirant's Cloak
						i(270541),	-- Venomous Aspirant's Drape
						i(270538),	-- Venomous Aspirant's Greatcloak
					}),
					filter(CLOTH, {
						i(270518),	-- Venomous Aspirant's Silk Belt
						i(270516),	-- Venomous Aspirant's Silk Bindings
						i(270519),	-- Venomous Aspirant's Silk Cord
						i(270524),	-- Venomous Aspirant's Silk Cover
						i(270528),	-- Venomous Aspirant's Silk Footwraps
						i(270527),	-- Venomous Aspirant's Silk Gloves
						i(270526),	-- Venomous Aspirant's Silk Handwraps
						i(270525),	-- Venomous Aspirant's Silk Hood
						i(270523),	-- Venomous Aspirant's Silk Leggings
						i(270522),	-- Venomous Aspirant's Silk Legwraps
						i(270521),	-- Venomous Aspirant's Silk Mantle
						i(270531),	-- Venomous Aspirant's Silk Robe
						i(270520),	-- Venomous Aspirant's Silk Shawl
						i(270530),	-- Venomous Aspirant's Silk Shirt
						i(270529),	-- Venomous Aspirant's Silk Treads
						i(270517),	-- Venomous Aspirant's Silk Wristwraps
					}),
					filter(FINGER_F, {
						i(270536),	-- Venomous Aspirant's Band
						i(270537),	-- Venomous Aspirant's Ring
						i(270535),	-- Venomous Aspirant's Signet
					}),
					filter(LEATHER, {
						i(270500),	-- Venomous Aspirant's Leather Armguards
						i(270503),	-- Venomous Aspirant's Leather Belt
						i(270513),	-- Venomous Aspirant's Leather Boots
						i(270507),	-- Venomous Aspirant's Leather Breeches
						i(270502),	-- Venomous Aspirant's Leather Cord
						i(270512),	-- Venomous Aspirant's Leather Footpads
						i(270511),	-- Venomous Aspirant's Leather Gloves
						i(270510),	-- Venomous Aspirant's Leather Grips
						i(270509),	-- Venomous Aspirant's Leather Helm
						i(270506),	-- Venomous Aspirant's Leather Leggings
						i(270504),	-- Venomous Aspirant's Leather Mantle
						i(270508),	-- Venomous Aspirant's Leather Mask
						i(270505),	-- Venomous Aspirant's Leather Spaulders
						i(270514),	-- Venomous Aspirant's Leather Tunic
						i(270515),	-- Venomous Aspirant's Leather Vest
						i(270501),	-- Venomous Aspirant's Leather Wristwraps
					}),
					filter(MAIL, {
						i(270487),	-- Venomous Aspirant's Chain Belt
						i(270484),	-- Venomous Aspirant's Chain Bracer
						i(270486),	-- Venomous Aspirant's Chain Clasp
						i(270495),	-- Venomous Aspirant's Chain Gauntlets
						i(270494),	-- Venomous Aspirant's Chain Handguards
						i(270492),	-- Venomous Aspirant's Chain Headguard
						i(270493),	-- Venomous Aspirant's Chain Helm
						i(270491),	-- Venomous Aspirant's Chain Leggings
						i(270497),	-- Venomous Aspirant's Chain Sabatons
						i(270488),	-- Venomous Aspirant's Chain Shoulderguards
						i(270489),	-- Venomous Aspirant's Chain Spaulders
						i(270496),	-- Venomous Aspirant's Chain Stompers
						i(270498),	-- Venomous Aspirant's Chain Tunic
						i(270499),	-- Venomous Aspirant's Chain Vest
						i(270490),	-- Venomous Aspirant's Chain Wargreaves
						i(270485),	-- Venomous Aspirant's Chain Wristwraps
					}),
					filter(NECK_F, {
						i(270533),	-- Venomous Aspirant's Choker
						i(270534),	-- Venomous Aspirant's Necklace
						i(270532),	-- Venomous Aspirant's Pendant
					}),
					filter(PLATE, {
						i(270483),	-- Venomous Aspirant's Chestplate
						i(270468),	-- Venomous Aspirant's Plate Armguards
						i(270482),	-- Venomous Aspirant's Plate Armor
						i(270469),	-- Venomous Aspirant's Plate Cuffs
						i(270479),	-- Venomous Aspirant's Plate Gauntlets
						i(270471),	-- Venomous Aspirant's Plate Girdle
						i(270470),	-- Venomous Aspirant's Plate Greatbelt
						i(270478),	-- Venomous Aspirant's Plate Handguards
						i(270476),	-- Venomous Aspirant's Plate Headguard
						i(270477),	-- Venomous Aspirant's Plate Helm
						i(270475),	-- Venomous Aspirant's Plate Legguards
						i(270472),	-- Venomous Aspirant's Plate Pauldrons
						i(270473),	-- Venomous Aspirant's Plate Shoulders
						i(270480),	-- Venomous Aspirant's Plate Stompers
						i(270481),	-- Venomous Aspirant's Plate Warboots
						i(270474),	-- Venomous Aspirant's Plate Wargreaves
					}),
					filter(TRINKET_F, {
						i(270559),	-- Venomous Aspirant's Badge of Ferocity
						i(270555),	-- Venomous Aspirant's Emblem
						i(270558),	-- Venomous Aspirant's Insignia of Alacrity
						i(270556),	-- Venomous Aspirant's Medallion
						i(270557),	-- Venomous Aspirant's Sigil of Adaptation
					}),
					n(WEAPONS, {
						i(270552),	-- Venomous Aspirant's Battleaxe
						i(270458),	-- Venomous Aspirant's Blade
						i(270453),	-- Venomous Aspirant's Bow
						i(270466),	-- Venomous Aspirant's Chopper
						i(270447),	-- Venomous Aspirant's Claymore
						i(270553),	-- Venomous Aspirant's Cleaver
						i(270459),	-- Venomous Aspirant's Crusher
						i(270460),	-- Venomous Aspirant's Cudgel
						i(270464),	-- Venomous Aspirant's Dagger
						i(270449),	-- Venomous Aspirant's Greatblade
						i(270461),	-- Venomous Aspirant's Mace
						i(270451),	-- Venomous Aspirant's Polearm
						i(270554),	-- Venomous Aspirant's Reaper
						i(270465),	-- Venomous Aspirant's Shank
						i(270445),	-- Venomous Aspirant's Shield
						i(270446),	-- Venomous Aspirant's Sigil
						i(277951),	-- Venomous Aspirant's Slicer
						i(270452),	-- Venomous Aspirant's Spear
						i(270456),	-- Venomous Aspirant's Spellblade
						i(270467),	-- Venomous Aspirant's Splitter
						i(270450),	-- Venomous Aspirant's Stave
						i(270457),	-- Venomous Aspirant's Sword
						i(270455),	-- Venomous Aspirant's Wand
						i(270448, { ["classes"] = { HUNTER } }),	-- Venomous Aspirant's Warblade
						i(270454),	-- Venomous Aspirant's Warglaive
					}),
				},
			}),
		})),
		n(PVP_GLADIATOR, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0, REMOVED_12_2_0 } }, {
			n(243220, {	-- Irissa Bloodstar <Conquest Quartermaster>
				["coord"] = { 34.1, 80.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["ItemAppearanceModifierID"] = 159,
				["groups"] = {
					-- conquest(
					n(CLASSES, {
						cl(DEATHKNIGHT, {
							i(270773),	-- Venomous Gladiator's Chestguard
							i(270774),	-- Venomous Gladiator's Chestplate
							i(270775),	-- Venomous Gladiator's Plate Warboots
							i(270776),	-- Venomous Gladiator's Plate Stompers
							i(270777),	-- Venomous Gladiator's Plate Gauntlets
							i(270778),	-- Venomous Gladiator's Plate Handguards
							i(270779),	-- Venomous Gladiator's Plate Helm
							i(270780),	-- Venomous Gladiator's Plate Helmet
							i(270781),	-- Venomous Gladiator's Plate Legguards
							i(270782),	-- Venomous Gladiator's Plate Wargreaves
							i(270783),	-- Venomous Gladiator's Plate Shoulders
							i(270784),	-- Venomous Gladiator's Plate Pauldrons
							i(270785),	-- Venomous Gladiator's Plate Girdle
							i(270786),	-- Venomous Gladiator's Plate Greatbelt
							i(270787),	-- Venomous Gladiator's Plate Wristguards
							i(270788),	-- Venomous Gladiator's Plate Vambraces
							i(270563),	-- Venomous Gladiator's Cloak
							i(270564),	-- Venomous Gladiator's Drape
							i(270565),	-- Venomous Gladiator's Shawl
						}),
						cl(DEMONHUNTER, {
							i(270661),	-- Venomous Gladiator's Leather Vest
							i(270662),	-- Venomous Gladiator's Leather Jerkin
							i(270663),	-- Venomous Gladiator's Leather Boots
							i(270664),	-- Venomous Gladiator's Leather Treads
							i(270665),	-- Venomous Gladiator's Leather Gloves
							i(270666),	-- Venomous Gladiator's Leather Grips
							i(270667),	-- Venomous Gladiator's Leather Helm
							i(270668),	-- Venomous Gladiator's Leather Mask
							i(270669),	-- Venomous Gladiator's Leather Breeches
							i(270670),	-- Venomous Gladiator's Leather Legwraps
							i(270671),	-- Venomous Gladiator's Leather Spaulders
							i(270672),	-- Venomous Gladiator's Leather Shoulderpads
							i(270673),	-- Venomous Gladiator's Leather Belt
							i(270674),	-- Venomous Gladiator's Leather Strap
							i(270675),	-- Venomous Gladiator's Leather Wristwraps
							i(270676),	-- Venomous Gladiator's Leather Wristguards
							i(270566),	-- Venomous Gladiator's Cloak
							i(270567),	-- Venomous Gladiator's Drape
							i(270568),	-- Venomous Gladiator's Shawl
						}),
						cl(DRUID, {
							i(270677),	-- Venomous Gladiator's Leather Vest
							i(270678),	-- Venomous Gladiator's Leather Vestments
							i(270679),	-- Venomous Gladiator's Leather Boots
							i(270680),	-- Venomous Gladiator's Leather Treads
							i(270681),	-- Venomous Gladiator's Leather Gloves
							i(270682),	-- Venomous Gladiator's Leather Grips
							i(270683),	-- Venomous Gladiator's Leather Helm
							i(270684),	-- Venomous Gladiator's Leather Mask
							i(270685),	-- Venomous Gladiator's Leather Breeches
							i(270686),	-- Venomous Gladiator's Leather Legwraps
							i(270687),	-- Venomous Gladiator's Leather Spaulders
							i(270688),	-- Venomous Gladiator's Leather Shoulderpads
							i(270689),	-- Venomous Gladiator's Leather Belt
							i(270690),	-- Venomous Gladiator's Leather Strap
							i(270691),	-- Venomous Gladiator's Leather Wristwraps
							i(270692),	-- Venomous Gladiator's Leather Wristguards
							i(270569),	-- Venomous Gladiator's Cloak
							i(270570),	-- Venomous Gladiator's Drape
							i(270571),	-- Venomous Gladiator's Shawl
						}),
						cl(EVOKER, {
							i(270725),	-- Venomous Gladiator's Armored Scales
							i(270726),	-- Venomous Gladiator's Scaleguard
							i(270727),	-- Venomous Gladiator's Chain Sabatons
							i(270728),	-- Venomous Gladiator's Chain Boots
							i(270729),	-- Venomous Gladiator's Chain Gauntlets
							i(270730),	-- Venomous Gladiator's Chain Handguards
							i(270731),	-- Venomous Gladiator's Chain Helm
							i(270732),	-- Venomous Gladiator's Chain Faceguard
							i(270733),	-- Venomous Gladiator's Chain Leggings
							i(270734),	-- Venomous Gladiator's Chain Breeches
							i(270735),	-- Venomous Gladiator's Chain Monnion
							i(270736),	-- Venomous Gladiator's Chain Shoulderguard
							i(270737),	-- Venomous Gladiator's Chain Belt
							i(270738),	-- Venomous Gladiator's Chain Girdle
							i(270739),	-- Venomous Gladiator's Chain Wristguards
							i(270740),	-- Venomous Gladiator's Chain Bracers
							i(270572),	-- Venomous Gladiator's Cloak
							i(270573),	-- Venomous Gladiator's Drape
							i(270574),	-- Venomous Gladiator's Shawl
						}),
						cl(HUNTER, {
							i(270741),	-- Venomous Gladiator's Chain Vest
							i(270742),	-- Venomous Gladiator's Chain Tunic
							i(270743),	-- Venomous Gladiator's Chain Sabatons
							i(270744),	-- Venomous Gladiator's Chain Boots
							i(270745),	-- Venomous Gladiator's Chain Gauntlets
							i(270746),	-- Venomous Gladiator's Chain Handguards
							i(270747),	-- Venomous Gladiator's Chain Helm
							i(270748),	-- Venomous Gladiator's Chain Faceguard
							i(270749),	-- Venomous Gladiator's Chain Leggings
							i(270750),	-- Venomous Gladiator's Chain Breeches
							i(270751),	-- Venomous Gladiator's Chain Monnion
							i(270752),	-- Venomous Gladiator's Chain Shoulderguard
							i(270753),	-- Venomous Gladiator's Chain Belt
							i(270754),	-- Venomous Gladiator's Chain Girdle
							i(270755),	-- Venomous Gladiator's Chain Wristguards
							i(270756),	-- Venomous Gladiator's Chain Bracers
							i(270578),	-- Venomous Gladiator's Cloak
							i(270579),	-- Venomous Gladiator's Drape
							i(270580),	-- Venomous Gladiator's Shawl
						}),
						cl(MAGE, {
							i(270613),	-- Venomous Gladiator's Silk Robe
							i(270614),	-- Venomous Gladiator's Silk Gown
							i(270615),	-- Venomous Gladiator's Silk Slippers
							i(270616),	-- Venomous Gladiator's Silk Treads
							i(270617),	-- Venomous Gladiator's Silk Gloves
							i(270618),	-- Venomous Gladiator's Silk Handwraps
							i(270619),	-- Venomous Gladiator's Silk Hat
							i(270620),	-- Venomous Gladiator's Silk Cap
							i(270621),	-- Venomous Gladiator's Silk Leggings
							i(270622),	-- Venomous Gladiator's Silk Trousers
							i(270623),	-- Venomous Gladiator's Silk Mantle
							i(270624),	-- Venomous Gladiator's Silk Amice
							i(270625),	-- Venomous Gladiator's Silk Cord
							i(270626),	-- Venomous Gladiator's Silk Belt
							i(270627),	-- Venomous Gladiator's Silk Wristwraps
							i(270628),	-- Venomous Gladiator's Silk Armbands
							i(270581),	-- Venomous Gladiator's Cloak
							i(270582),	-- Venomous Gladiator's Drape
							i(270583),	-- Venomous Gladiator's Shawl
						}),
						cl(MONK, {
							i(270693),	-- Venomous Gladiator's Leather Vest
							i(270694),	-- Venomous Gladiator's Leather Jerkin
							i(270695),	-- Venomous Gladiator's Leather Boots
							i(270696),	-- Venomous Gladiator's Leather Treads
							i(270697),	-- Venomous Gladiator's Leather Gloves
							i(270698),	-- Venomous Gladiator's Leather Grips
							i(270699),	-- Venomous Gladiator's Leather Helm
							i(270700),	-- Venomous Gladiator's Leather Mask
							i(270701),	-- Venomous Gladiator's Leather Breeches
							i(270702),	-- Venomous Gladiator's Leather Legwraps
							i(270703),	-- Venomous Gladiator's Leather Spaulders
							i(270704),	-- Venomous Gladiator's Leather Shoulderpads
							i(270705),	-- Venomous Gladiator's Leather Belt
							i(270706),	-- Venomous Gladiator's Leather Strap
							i(270707),	-- Venomous Gladiator's Leather Wristwraps
							i(270708),	-- Venomous Gladiator's Leather Wristguards
							i(270584),	-- Venomous Gladiator's Cloak
							i(270585),	-- Venomous Gladiator's Drape
							i(270586),	-- Venomous Gladiator's Shawl
						}),
						cl(PALADIN, {
							i(270789),	-- Venomous Gladiator's Chestguard
							i(270790),	-- Venomous Gladiator's Chestplate
							i(270791),	-- Venomous Gladiator's Plate Warboots
							i(270792),	-- Venomous Gladiator's Plate Stompers
							i(270793),	-- Venomous Gladiator's Plate Gauntlets
							i(270794),	-- Venomous Gladiator's Plate Handguards
							i(270795),	-- Venomous Gladiator's Plate Helm
							i(270796),	-- Venomous Gladiator's Plate Helmet
							i(270797),	-- Venomous Gladiator's Plate Legguards
							i(270798),	-- Venomous Gladiator's Plate Tasses
							i(270799),	-- Venomous Gladiator's Plate Shoulders
							i(270800),	-- Venomous Gladiator's Plate Pauldrons
							i(270801),	-- Venomous Gladiator's Plate Girdle
							i(270802),	-- Venomous Gladiator's Plate Greatbelt
							i(270803),	-- Venomous Gladiator's Plate Wristguards
							i(270804),	-- Venomous Gladiator's Plate Vambraces
							i(270590),	-- Venomous Gladiator's Cloak
							i(270591),	-- Venomous Gladiator's Drape
							i(270592),	-- Venomous Gladiator's Shawl
						}),
						cl(PRIEST, {
							i(270629),	-- Venomous Gladiator's Silk Robe
							i(270630),	-- Venomous Gladiator's Silk Vestments
							i(270631),	-- Venomous Gladiator's Silk Slippers
							i(270632),	-- Venomous Gladiator's Silk Treads
							i(270633),	-- Venomous Gladiator's Silk Gloves
							i(270634),	-- Venomous Gladiator's Silk Handwraps
							i(270635),	-- Venomous Gladiator's Silk Hood
							i(270636),	-- Venomous Gladiator's Silk Guise
							i(270637),	-- Venomous Gladiator's Silk Leggings
							i(270638),	-- Venomous Gladiator's Silk Trousers
							i(270639),	-- Venomous Gladiator's Silk Mantle
							i(270640),	-- Venomous Gladiator's Silk Amice
							i(270641),	-- Venomous Gladiator's Silk Cord
							i(270642),	-- Venomous Gladiator's Silk Belt
							i(270643),	-- Venomous Gladiator's Silk Wristwraps
							i(270644),	-- Venomous Gladiator's Silk Armbands
							i(270593),	-- Venomous Gladiator's Cloak
							i(270594),	-- Venomous Gladiator's Drape
							i(270595),	-- Venomous Gladiator's Shawl
						}),
						cl(ROGUE, {
							i(270709),	-- Venomous Gladiator's Leather Vest
							i(270710),	-- Venomous Gladiator's Leather Jerkin
							i(270711),	-- Venomous Gladiator's Leather Boots
							i(270712),	-- Venomous Gladiator's Leather Treads
							i(270713),	-- Venomous Gladiator's Leather Gloves
							i(270714),	-- Venomous Gladiator's Leather Grips
							i(270715),	-- Venomous Gladiator's Leather Helm
							i(270716),	-- Venomous Gladiator's Leather Mask
							i(270717),	-- Venomous Gladiator's Leather Breeches
							i(270718),	-- Venomous Gladiator's Leather Legwraps
							i(270719),	-- Venomous Gladiator's Leather Spaulders
							i(270720),	-- Venomous Gladiator's Leather Shoulderpads
							i(270721),	-- Venomous Gladiator's Leather Belt
							i(270722),	-- Venomous Gladiator's Leather Strap
							i(270723),	-- Venomous Gladiator's Leather Wristwraps
							i(270724),	-- Venomous Gladiator's Leather Wristguards
							i(270596),	-- Venomous Gladiator's Cloak
							i(270597),	-- Venomous Gladiator's Drape
							i(270598),	-- Venomous Gladiator's Shawl
						}),
						cl(SHAMAN, {
							i(270757),	-- Venomous Gladiator's Chain Vest
							i(270758),	-- Venomous Gladiator's Chain Tunic
							i(270759),	-- Venomous Gladiator's Chain Sabatons
							i(270760),	-- Venomous Gladiator's Chain Boots
							i(270761),	-- Venomous Gladiator's Chain Gauntlets
							i(270762),	-- Venomous Gladiator's Chain Handguards
							i(270763),	-- Venomous Gladiator's Chain Helm
							i(270764),	-- Venomous Gladiator's Chain Faceguard
							i(270765),	-- Venomous Gladiator's Chain Leggings
							i(270766),	-- Venomous Gladiator's Chain Breeches
							i(270767),	-- Venomous Gladiator's Chain Monnion
							i(270768),	-- Venomous Gladiator's Chain Shoulderguard
							i(270769),	-- Venomous Gladiator's Chain Belt
							i(270770),	-- Venomous Gladiator's Chain Girdle
							i(270771),	-- Venomous Gladiator's Chain Wristguards
							i(270772),	-- Venomous Gladiator's Chain Bracers
							i(270599),	-- Venomous Gladiator's Cloak
							i(270600),	-- Venomous Gladiator's Drape
							i(270601),	-- Venomous Gladiator's Shawl
						}),
						cl(WARLOCK, {
							i(270645),	-- Venomous Gladiator's Silk Raiment
							i(270646),	-- Venomous Gladiator's Silk Vestments
							i(270647),	-- Venomous Gladiator's Silk Slippers
							i(270648),	-- Venomous Gladiator's Silk Treads
							i(270649),	-- Venomous Gladiator's Silk Gloves
							i(270650),	-- Venomous Gladiator's Silk Handwraps
							i(270651),	-- Venomous Gladiator's Silk Hood
							i(270652),	-- Venomous Gladiator's Silk Guise
							i(270653),	-- Venomous Gladiator's Silk Leggings
							i(270654),	-- Venomous Gladiator's Silk Trousers
							i(270655),	-- Venomous Gladiator's Silk Mantle
							i(270656),	-- Venomous Gladiator's Silk Amice
							i(270657),	-- Venomous Gladiator's Silk Cord
							i(270658),	-- Venomous Gladiator's Silk Belt
							i(270659),	-- Venomous Gladiator's Silk Wristwraps
							i(270660),	-- Venomous Gladiator's Silk Armbands
							i(270607),	-- Venomous Gladiator's Cloak
							i(270608),	-- Venomous Gladiator's Drape
							i(270609),	-- Venomous Gladiator's Shawl
						}),
						cl(WARRIOR, {
							i(270805),	-- Venomous Gladiator's Chestguard
							i(270806),	-- Venomous Gladiator's Chestplate
							i(270807),	-- Venomous Gladiator's Plate Warboots
							i(270808),	-- Venomous Gladiator's Plate Stompers
							i(270809),	-- Venomous Gladiator's Plate Gauntlets
							i(270810),	-- Venomous Gladiator's Plate Handguards
							i(270811),	-- Venomous Gladiator's Plate Helm
							i(270812),	-- Venomous Gladiator's Plate Helmet
							i(270813),	-- Venomous Gladiator's Plate Legguards
							i(270814),	-- Venomous Gladiator's Plate Wargreaves
							i(270815),	-- Venomous Gladiator's Plate Shoulders
							i(270816),	-- Venomous Gladiator's Plate Pauldrons
							i(270817),	-- Venomous Gladiator's Plate Girdle
							i(270818),	-- Venomous Gladiator's Plate Greatbelt
							i(270819),	-- Venomous Gladiator's Plate Wristguards
							i(270820),	-- Venomous Gladiator's Plate Vambraces
							i(270610),	-- Venomous Gladiator's Cloak
							i(270611),	-- Venomous Gladiator's Drape
							i(270612),	-- Venomous Gladiator's Shawl
						}),
					}),
					filter(FINGER_F, {
						i(270576),	-- Venomous Gladiator's Band
						i(270575),	-- Venomous Gladiator's Ring
						i(270577),	-- Venomous Gladiator's Signet
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
						i(270589),	-- Venomous Gladiator's Amulet
						i(270587),	-- Venomous Gladiator's Necklace
						i(270588),	-- Venomous Gladiator's Pendant
					}),
					filter(TRINKET_F, {
						i(270602),	-- Venomous Gladiator's Badge of Ferocity
						i(270606),	-- Venomous Gladiator's Emblem
						i(270603),	-- Venomous Gladiator's Insignia of Alacrity
						i(270605),	-- Venomous Gladiator's Medallion
						i(270604),	-- Venomous Gladiator's Sigil of Adaptation
					}),
					n(WEAPONS, {
						i(270835),	-- Venomous Gladiator's Battleaxe
						i(270831),	-- Venomous Gladiator's Blade
						i(270838),	-- Venomous Gladiator's Bow
						i(270828),	-- Venomous Gladiator's Chopper
						i(270851),	-- Venomous Gladiator's Claymore
						i(270836),	-- Venomous Gladiator's Cleaver
						i(270825),	-- Venomous Gladiator's Crusher
						i(270827),	-- Venomous Gladiator's Cudgel
						i(270834),	-- Venomous Gladiator's Edge
						i(270853),	-- Venomous Gladiator's Greatblade
						i(270823),	-- Venomous Gladiator's Incisors
						i(270826),	-- Venomous Gladiator's Mace
						i(270837),	-- Venomous Gladiator's Reaper
						i(270824),	-- Venomous Gladiator's Rippers
						i(270849),	-- Venomous Gladiator's Scaleshield
						i(270847),	-- Venomous Gladiator's Scepter
						i(270821),	-- Venomous Gladiator's Shank
						i(270848),	-- Venomous Gladiator's Sigil
						i(270830),	-- Venomous Gladiator's Slicer
						i(270843),	-- Venomous Gladiator's Spear
						i(270833),	-- Venomous Gladiator's Spellblade
						i(270844),	-- Venomous Gladiator's Spike
						i(270850),	-- Venomous Gladiator's Spikeshield
						i(270822),	-- Venomous Gladiator's Spine
						i(270839),	-- Venomous Gladiator's Spitter
						i(270829),	-- Venomous Gladiator's Splitter
						i(270845),	-- Venomous Gladiator's Staff
						i(270846),	-- Venomous Gladiator's Stave
						i(270832),	-- Venomous Gladiator's Sword
						i(270852, { ["classes"] = { HUNTER } }),	-- Venomous Gladiator's Warblade
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
					honor(100, i(272005, {	-- Venomous Gladiator's Tabard
						["races"] = ALLIANCE_ONLY,
						["sourceAchievement"] = 62931,	-- Elite: Midnight Season 2
					})),
					honor(100, i(272006, {	-- Venomous Gladiator's Tabard
						["races"] = HORDE_ONLY,
						["sourceAchievement"] = 62931,	-- Elite: Midnight Season 2
					})),
					-- moh(
					i(277312),	-- Venomous Gladiator's Axe
					i(277306),	-- Venomous Gladiator's Barb
					i(277307),	-- Venomous Gladiator's Basher
					i(277302),	-- Venomous Gladiator's Blaster
					i(277300),	-- Venomous Gladiator's Dagger
					i(277301),	-- Venomous Gladiator's Fangs
					i(277298),	-- Venomous Gladiator's Fetish
					i(277308),	-- Venomous Gladiator's Greataxe
					i(277295),	-- Venomous Gladiator's Greatstaff
					i(277303),	-- Venomous Gladiator's Greatsword
					i(277296),	-- Venomous Gladiator's Longbow
					i(277294),	-- Venomous Gladiator's Polearm
					i(277292),	-- Venomous Gladiator's Rib
					i(277299),	-- Venomous Gladiator's Shield
					i(277304),	-- Venomous Gladiator's Smasher
					i(277305),	-- Venomous Gladiator's Sword
					i(277293),	-- Venomous Gladiator's Warglaive
				},
			}),
		})),
	}),
}))));
