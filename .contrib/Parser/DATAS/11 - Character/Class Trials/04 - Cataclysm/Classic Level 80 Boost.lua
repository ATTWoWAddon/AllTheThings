-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------

-- #if ANYCLASSIC
-- Wouter NOTE: level 80 boosts became available in Classic shortly after the launch of Icecrown Citadel, with the Blazing Heroic Pack for Cata
root(ROOTS.Character, n(CLASS_TRIAL, {
	-- Wouter NOTE: these are 187 boosted items made for Classic, they eventually got replaced in Cata by the 232 gear that was originally from Scroll of Resurrection
	expansion(EXPANSION.CATA, bubbleDown({ ["u"] = REAL_MONEY, ["timeline"] = { ADDED_3_4_3, REMOVED_4_4_0 } }, {
		["groups"] = {
			cl(DRUID, {
				i(209529),	-- Secondhand Crown
				i(209530),	-- Secondhand Crown
				i(209584),	-- Secondhand Pads
				i(209587),	-- Secondhand Pads
				i(209607),	-- Secondhand Tunic
				i(209627),	-- Secondhand Tunic
				i(209632),	-- Secondhand Bindings
				i(209633),	-- Secondhand Bindings
				i(209638),	-- Secondhand Gloves
				i(209639),	-- Secondhand Gloves
				i(209645),	-- Secondhand Belt
				i(209646),	-- Secondhand Belt
				i(209651),	-- Secondhand Legguards
				i(209652),	-- Secondhand Legguards
				i(209657),	-- Secondhand Boots
				i(209658),	-- Secondhand Boots
				-- #if BEFORE MOP
				i(209814, {	-- Secondhand Idol of Life
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209813, {	-- Secondhand Idol of the Wild
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209809, {	-- Secondhand Idol of Wrath
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(HUNTER, {
				i(209531),	-- Secondhand Headguard
				i(209585),	-- Secondhand Spaulders
				i(209628),	-- Secondhand Armor
				i(209634),	-- Secondhand Armguards
				i(209640),	-- Secondhand Gauntlets
				i(209647),	-- Secondhand Belt
				i(209653),	-- Secondhand Leggings
				i(209659),	-- Secondhand Boots
			}),
			cl(MAGE, {
				i(209804),	-- Secondhand Wand
				i(209532),	-- Secondhand Cowl
				i(209589),	-- Secondhand Mantle
				i(209606),	-- Secondhand Armor
				i(209631),	-- Secondhand Bracers
				i(209637),	-- Secondhand Gloves
				i(209644),	-- Secondhand Sash
				i(209650),	-- Secondhand Pants
				i(209656),	-- Secondhand Boots
			}),
			cl(PALADIN, {
				i(209787),	-- Secondhand Buckler
				i(209515),	-- Secondhand Faceguard
				i(209528),	-- Secondhand Faceguard
				i(209586),	-- Secondhand Pauldrons
				i(209588),	-- Secondhand Pauldrons
				i(209518),	-- Secondhand Chestguard
				i(209630),	-- Secondhand Chestguard
				i(209516),	-- Secondhand Plate Vambraces
				i(209636),	-- Secondhand Plate Vambraces
				i(209517),	-- Secondhand Plate Gauntlets
				i(209642),	-- Secondhand Plate Gauntlets
				i(209521),	-- Secondhand Plate Girdle
				i(209649),	-- Secondhand Plate Girdle
				i(209522),	-- Secondhand Plate Leggings
				i(209655),	-- Secondhand Plate Leggings
				i(209519),	-- Secondhand Plate Greaves
				i(209661),	-- Secondhand Plate Greaves
				-- #if BEFORE MOP
				i(209807, {	-- Secondhand Book of Healing
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209810, {	-- Secondhand Book of Protection
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209808, {	-- Secondhand Book of Righteousness
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(PRIEST, {
				i(209804),	-- Secondhand Wand
				i(209532),	-- Secondhand Cowl
				i(209589),	-- Secondhand Mantle
				i(209606),	-- Secondhand Armor
				i(209631),	-- Secondhand Bracers
				i(209637),	-- Secondhand Gloves
				i(209644),	-- Secondhand Sash
				i(209650),	-- Secondhand Pants
				i(209656),	-- Secondhand Boots
			}),
			cl(ROGUE, {
				i(209783),	-- Secondhand Shiv
				i(209530),	-- Secondhand Crown
				i(209587),	-- Secondhand Pads
				i(209607),	-- Secondhand Tunic
				i(209632),	-- Secondhand Bindings
				i(209638),	-- Secondhand Gloves
				i(209645),	-- Secondhand Belt
				i(209651),	-- Secondhand Legguards
				i(209657),	-- Secondhand Boots
				i(209803),	-- Secondhand Knives
			}),
			cl(SHAMAN, {
				i(209801),	-- Secondhand Left Claw
				i(209793),	-- Secondhand Right Claw
				i(209531),	-- Secondhand Headguard
				i(209533),	-- Secondhand Headguard
				i(209583),	-- Secondhand Spaulders
				i(209585),	-- Secondhand Spaulders
				i(209628),	-- Secondhand Armor
				i(209629),	-- Secondhand Armor
				i(209634),	-- Secondhand Armguards
				i(209635),	-- Secondhand Armguards
				i(209640),	-- Secondhand Gauntlets
				i(209641),	-- Secondhand Gauntlets
				i(209647),	-- Secondhand Belt
				i(209648),	-- Secondhand Belt
				i(209653),	-- Secondhand Leggings
				i(209654),	-- Secondhand Leggings
				i(209659),	-- Secondhand Boots
				i(209660),	-- Secondhand Boots
				-- #if BEFORE MOP
				i(209815, {	-- Secondhand Totem of Lightning
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209811, {	-- Secondhand Totem of Restoration
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				i(209812, {	-- Secondhand Totem of the Storm
					["timeline"] = { ADDED_3_4_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(WARLOCK, {
				i(209804),	-- Secondhand Wand
				i(209532),	-- Secondhand Cowl
				i(209589),	-- Secondhand Mantle
				i(209606),	-- Secondhand Armor
				i(209631),	-- Secondhand Bracers
				i(209637),	-- Secondhand Gloves
				i(209644),	-- Secondhand Sash
				i(209650),	-- Secondhand Pants
				i(209656),	-- Secondhand Boots
			}),
			cl(WARRIOR, {
				i(209515),	-- Secondhand Faceguard
				i(209586),	-- Secondhand Pauldrons
				i(209518),	-- Secondhand Chestguard
				i(209516),	-- Secondhand Plate Vambraces
				i(209517),	-- Secondhand Plate Gauntlets
				i(209521),	-- Secondhand Plate Girdle
				i(209522),	-- Secondhand Plate Leggings
				i(209519),	-- Secondhand Plate Greaves
				i(209803),	-- Secondhand Knives
			}),
			-- Wouter NOTE: I have no clue to which classes some of these got assigned so I'm leaving them unsorted (it's been 2 years and I don't have data)
			i(209785),	-- Secondhand Blade
			i(209789),	-- Secondhand Bow
			i(209796),	-- Secondhand Dagger
			i(209782),	-- Secondhand Guardian
			i(209794),	-- Secondhand Smasher
			i(209792),	-- Secondhand Staff
			i(209791),	-- Secondhand Stave
			i(209784),	-- Secondhand Sword
			i(209790),	-- Secondhand Warmaul
			i(210135),	-- Secondhand Rose
			i(209556),	-- Secondhand Necklace
			i(209557),	-- Secondhand Necklace
			i(209558),	-- Secondhand Necklace
			i(209599),	-- Secondhand Cloak
			i(209600),	-- Secondhand Cloak
			i(209602),	-- Secondhand Cloak
			i(209603),	-- Secondhand Cloak
			i(209665),	-- Secondhand Band of Defense
			i(209662),	-- Secondhand Band of Devastation
			i(209663),	-- Secondhand Band of Durability
			i(209664),	-- Secondhand Band of Wisdom
			i(209695),	-- Secondhand Stone of Durability
			i(209780),	-- Secondhand Stone of Onslaught
			i(209697),	-- Secondhand Stone of Stoicism
			i(209696),	-- Secondhand Stone of Wisdom
		},
	})),
	expansion(EXPANSION.CATA, bubbleDown({ ["u"] = REAL_MONEY, ["timeline"] = { ADDED_4_4_0, REMOVED_4_4_2 } }, {
		["groups"] = {
			cl(DRUID, {
				i(73012),	-- Wildsoul Spear
				i(73011),	-- Wildsoul Staff
				i(73010),	-- Wildsoul Stave
				i(72692),	-- Wildsoul Headpiece
				i(72675),	-- Wildsoul Helm
				i(72684),	-- Wildsoul Hood
				i(72677),	-- Wildsoul Pauldrons
				i(72686),	-- Wildsoul Shoulders
				i(72694),	-- Wildsoul Spaulders
				i(73016),	-- Wildsoul Choker
				i(73017),	-- Wildsoul Medallion
				i(73130),	-- Wildsoul Necklace
				i(73308),	-- Wildsoul Cloak of Destruction
				i(73306),	-- Wildsoul Cloak of Rage
				i(73307),	-- Wildsoul Cloak of Wisdom
				i(72681),	-- Wildsoul Jerkin
				i(72689),	-- Wildsoul Tunic
				i(72672),	-- Wildsoul Vest
				i(72688),	-- Wildsoul Bindings
				i(72696),	-- Wildsoul Bracers
				i(72679),	-- Wildsoul Cuffs
				i(72683),	-- Wildsoul Gloves
				i(72691),	-- Wildsoul Grips
				i(72674),	-- Wildsoul Handguards
				i(72695),	-- Wildsoul Belt
				i(72678),	-- Wildsoul Cord
				i(72687),	-- Wildsoul Waistband
				i(72685),	-- Wildsoul Britches
				i(72693),	-- Wildsoul Leggings
				i(72676),	-- Wildsoul Legguards
				i(72682),	-- Wildsoul Boots
				i(72673),	-- Wildsoul Footpads
				i(72690),	-- Wildsoul Treads
				i(73026),	-- Wildsoul Band of Destruction
				i(73024),	-- Wildsoul Band of Onslaught
				i(73128),	-- Wildsoul Band of Wisdom
				i(73027),	-- Wildsoul Ring of Destruction
				i(73025),	-- Wildsoul Ring of Onslaught
				i(73127),	-- Wildsoul Ring of Wisdom
				i(73066),	-- Wildsoul Idol of Destruction
				i(73068),	-- Wildsoul Idol of Rage
				i(73129),	-- Wildsoul Idol of Wisdom
				i(73065),	-- Wildsoul Stone of Destruction
				i(73067),	-- Wildsoul Stone of Rage
				i(73126),	-- Wildsoul Stone of Wisdom
				-- #if BEFORE MOP
				i(73339, {	-- Wildsoul Idol of Destruction
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73338, {	-- Wildsoul Idol of Rage
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73337, {	-- Wildsoul Idol of Wisdom
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(HUNTER, {
				i(73000),	-- Beastsoul Rifle
				i(73001),	-- Beastsoul Spear
				i(72913),	-- Beastsoul Helm
				i(72915),	-- Beastsoul Spaulders
				i(73146),	-- Beastsoul Choker
				i(73314),	-- Beastsoul Cloak of Rage
				i(72910),	-- Beastsoul Vest
				i(72917),	-- Beastsoul Bracers
				i(72912),	-- Beastsoul Gauntlets
				i(72916),	-- Beastsoul Belt
				i(72914),	-- Beastsoul Legguards
				i(72911),	-- Beastsoul Greaves
				i(73148),	-- Beastsoul Band of Onslaught
				i(73149),	-- Beastsoul Ring of Onslaught
				i(73147),	-- Beastsoul Idol of Rage
				i(73150),	-- Beastsoul Stone of Rage
			}),
			cl(MAGE, {
				i(73006),	-- Magesoul Staff
				i(73325),	-- Magesoul Wand
				i(72624),	-- Magesoul Hood
				i(72626),	-- Magesoul Shoulderpads
				i(73105),	-- Magesoul Medallion
				i(73323),	-- Magesoul Cloak of Destruction
				i(72621),	-- Magesoul Robe
				i(72628),	-- Magesoul Wristwraps
				i(72623),	-- Magesoul Handwraps
				i(72627),	-- Magesoul Cord
				i(72625),	-- Magesoul Leggings
				i(72622),	-- Magesoul Sandals
				i(73103),	-- Magesoul Band of Destruction
				i(73102),	-- Magesoul Ring of Destruction
				i(73104),	-- Magesoul Idol of Destruction
				i(73101),	-- Magesoul Stone of Destruction
			}),
			cl(PALADIN, {
				i(72983),	-- Zealous Bulwark
				i(72993),	-- Zealous Greatsword
				i(72989),	-- Zealous Scepter
				i(72984),	-- Zealous Shield
				i(72981),	-- Zealous Sword
				i(72966),	-- Zealous Faceguard
				i(72974),	-- Zealous Headpiece
				i(72958),	-- Zealous Helm
				i(72960),	-- Zealous Pauldrons
				i(72968),	-- Zealous Shoulderguards
				i(72976),	-- Zealous Spaulders
				i(73013),	-- Zealous Amulet
				i(73014),	-- Zealous Necklace
				i(73015),	-- Zealous Pendant
				i(73317),	-- Zealous Cloak of Battle
				i(73318),	-- Zealous Cloak of Stoicism
				i(73319),	-- Zealous Cloak of Wisdom
				i(72955),	-- Zealous Battleplate
				i(72971),	-- Zealous Breastplate
				i(72963),	-- Zealous Chestguard
				i(72970),	-- Zealous Armguards
				i(72978),	-- Zealous Armplates
				i(72962),	-- Zealous Vambraces
				i(72957),	-- Zealous Gauntlets
				i(72973),	-- Zealous Gloves
				i(72965),	-- Zealous Handguards
				i(72977),	-- Zealous Belt
				i(72961),	-- Zealous Girdle
				i(72969),	-- Zealous Waistband
				i(72975),	-- Zealous Leggings
				i(72967),	-- Zealous Legguards
				i(72959),	-- Zealous Legplates
				i(72972),	-- Zealous Boots
				i(72964),	-- Zealous Greaves
				i(72956),	-- Zealous Sabatons
				i(73018),	-- Zealous Band of Might
				i(73020),	-- Zealous Band of Stoicism
				i(73022),	-- Zealous Band of Wisdom
				i(73019),	-- Zealous Ring of Might
				i(73021),	-- Zealous Ring of Stoicism
				i(73023),	-- Zealous Ring of Wisdom
				i(73060),	-- Zealous Defender's Idol
				i(73042),	-- Zealous Defender's Stone
				i(73062),	-- Zealous Idol of Battle
				i(73063),	-- Zealous Idol of Wisdom
				i(73061),	-- Zealous Stone of Battle
				i(73064),	-- Zealous Stone of Wisdom
				-- #if BEFORE MOP
				i(73354, {	-- Zealous Libram of Battle
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73355, {	-- Zealous Libram of Stoicism
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73356, {	-- Zealous Libram of Wisdom
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(PRIEST, {
				i(73008),	-- Seraphic Staff
				i(73009),	-- Seraphic Stave
				i(73336),	-- Seraphic Wand
				i(72648),	-- Seraphic Cowl
				i(72657),	-- Seraphic Hood
				i(72651),	-- Seraphic Mantle
				i(72660),	-- Seraphic Shoulderpads
				i(73120),	-- Seraphic Medallion
				i(73115),	-- Seraphic Necklace
				i(73322),	-- Seraphic Cloak of Destruction
				i(73321),	-- Seraphic Cloak of Wisdom
				i(72650),	-- Seraphic Robe
				i(72659),	-- Seraphic Vestments
				i(72653),	-- Seraphic Bindings
				i(72662),	-- Seraphic Wristwraps
				i(72647),	-- Seraphic Gloves
				i(72656),	-- Seraphic Handwraps
				i(72661),	-- Seraphic Cord
				i(72652),	-- Seraphic Sash
				i(72658),	-- Seraphic Leggings
				i(72649),	-- Seraphic Pants
				i(72646),	-- Seraphic Boots
				i(72655),	-- Seraphic Sandals
				i(73118),	-- Seraphic Band of Destruction
				i(73112),	-- Seraphic Band of Wisdom
				i(73117),	-- Seraphic Ring of Destruction
				i(73113),	-- Seraphic Ring of Wisdom
				i(73119),	-- Seraphic Idol of Destruction
				i(73114),	-- Seraphic Idol of Wisdom
				i(73116),	-- Seraphic Stone of Destruction
				i(73111),	-- Seraphic Stone of Wisdom
			}),
			cl(ROGUE, {
				i(72995),	-- Shadowstalking Dagger
				i(72996),	-- Shadowstalking Shiv
				i(72997),	-- Shadowstalking Sword
				i(72667),	-- Shadowstalking Hood
				i(72669),	-- Shadowstalking Shoulders
				i(73125),	-- Shadowstalking Choker
				i(73320),	-- Shadowstalking Cloak of Rage
				i(72664),	-- Shadowstalking Jerkin
				i(72671),	-- Shadowstalking Bindings
				i(72666),	-- Shadowstalking Gloves
				i(72670),	-- Shadowstalking Waistband
				i(72668),	-- Shadowstalking Britches
				i(72665),	-- Shadowstalking Boots
				i(73122),	-- Shadowstalking Band of Onslaught
				i(73123),	-- Shadowstalking Ring of Onslaught
				i(73124),	-- Shadowstalking Idol of Rage
				i(73121),	-- Shadowstalking Stone of Rage
				-- #if BEFORE MOP
				i(73357, {	-- Shadowstalking Knives
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(SHAMAN, {
				i(73005),	-- Stormbinder Aegis
				i(73003),	-- Stormbinder Gavel
				i(72998),	-- Stormbinder Mace
				i(73002),	-- Stormbinder Scepter
				i(73004),	-- Stormbinder Shield
				i(72892),	-- Stormbinder Coif
				i(72905),	-- Stormbinder Cowl
				i(72701),	-- Stormbinder Helm
				i(72894),	-- Stormbinder Pauldrons
				i(72703),	-- Stormbinder Shoulderguards
				i(72907),	-- Stormbinder Spaulders
				i(73131),	-- Stormbinder Choker
				i(73136),	-- Stormbinder Medallion
				i(73141),	-- Stormbinder Necklace
				i(73313),	-- Stormbinder Cloak of Destruction
				i(73311),	-- Stormbinder Cloak of Rage
				i(73312),	-- Stormbinder Cloak of Wisdom
				i(72698),	-- Stormbinder Chestguard
				i(72889),	-- Stormbinder Tunic
				i(72902),	-- Stormbinder Vest
				i(72896),	-- Stormbinder Armbands
				i(72705),	-- Stormbinder Armguard
				i(72909),	-- Stormbinder Bracers
				i(72700),	-- Stormbinder Gauntlets
				i(72891),	-- Stormbinder Gloves
				i(72904),	-- Stormbinder Grips
				i(72895),	-- Stormbinder Belt
				i(72908),	-- Stormbinder Girdle
				i(72704),	-- Stormbinder Waistguard
				i(72906),	-- Stormbinder Leggings
				i(72702),	-- Stormbinder Legguards
				i(72893),	-- Stormbinder Legwraps
				i(72890),	-- Stormbinder Boots
				i(72699),	-- Stormbinder Greaves
				i(72903),	-- Stormbinder Sabatons
				i(73139),	-- Stormbinder Band of Destruction
				i(73133),	-- Stormbinder Band of Onslaught
				i(73144),	-- Stormbinder Band of Wisdom
				i(73138),	-- Stormbinder Ring of Destruction
				i(73134),	-- Stormbinder Ring of Onslaught
				i(73143),	-- Stormbinder Ring of Wisdom
				i(73137),	-- Stormbinder Idol of Destruction
				i(73132),	-- Stormbinder Idol of Rage
				i(73142),	-- Stormbinder Idol of Wisdom
				i(73140),	-- Stormbinder Stone of Destruction
				i(73135),	-- Stormbinder Stone of Rage
				i(73145),	-- Stormbinder Stone of Wisdom
				-- #if BEFORE MOP
				i(73340, {	-- Stormbinder Totem of Destruction
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73342, {	-- Stormbinder Totem of Rage
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(73341, {	-- Stormbinder Totem of Wisdom
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
			cl(WARLOCK, {
				i(73007),	-- Dreadsoul Staff
				i(73326),	-- Dreadsoul Wand
				i(72640),	-- Dreadsoul Cowl
				i(72643),	-- Dreadsoul Shoulderpads
				i(73110),	-- Dreadsoul Medallion
				i(73324),	-- Dreadsoul Cloak of Destruction
				i(72642),	-- Dreadsoul Robe
				i(72645),	-- Dreadsoul Wristwraps
				i(72639),	-- Dreadsoul Handwraps
				i(72644),	-- Dreadsoul Cord
				i(72641),	-- Dreadsoul Leggings
				i(72638),	-- Dreadsoul Sandals
				i(73108),	-- Dreadsoul Band of Destruction
				i(73107),	-- Dreadsoul Ring of Destruction
				i(73109),	-- Dreadsoul Idol of Destruction
				i(73106),	-- Dreadsoul Stone of Destruction
			}),
			cl(WARRIOR, {
				i(72982),	-- Valiant Bulwark
				i(72992),	-- Valiant Greatsword
				i(72999),	-- Valiant Maul
				i(72980),	-- Valiant Sword
				i(72940),	-- Valiant Faceguard
				i(72948),	-- Valiant Helm
				i(72950),	-- Valiant Pauldrons
				i(72942),	-- Valiant Shoulderguards
				i(73166),	-- Valiant Amulet
				i(73161),	-- Valiant Pendant
				i(73310),	-- Valiant Cloak of Battle
				i(73309),	-- Valiant Cloak of Stoicism
				i(72945),	-- Valiant Breastplate
				i(72937),	-- Valiant Chestguard
				i(72944),	-- Valiant Armguards
				i(72952),	-- Valiant Vambraces
				i(72947),	-- Valiant Gauntlets
				i(72939),	-- Valiant Handguards
				i(72951),	-- Valiant Girdle
				i(72943),	-- Valiant Waistband
				i(72941),	-- Valiant Legguards
				i(72949),	-- Valiant Legplates
				i(72938),	-- Valiant Greaves
				i(72946),	-- Valiant Sabatons
				i(73162),	-- Valiant Band of Might
				i(73163),	-- Valiant Ring of Might
				i(73168),	-- Valiant Band of Stoicism
				i(73169),	-- Valiant Ring of Stoicism
				i(73167),	-- Valiant Defender's Idol
				i(73170),	-- Valiant Defender's Stone
				i(73165),	-- Valiant Idol of Battle
				i(73164),	-- Valiant Stone of Battle
				-- #if BEFORE MOP
				i(73358, {	-- Valiant Knives of Battle
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				}),
				i(73359, {	-- Valiant Knives of Stoicism
					["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
				}),
				-- #endif
			}),
		},
	})),
}));
-- #endif
