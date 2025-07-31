-----------------------------------------------------
--        P R O M O T I O N S   M O D U L E        --
-----------------------------------------------------

-- #if NOT ANYCLASSIC
SCROLL_OF_RESURRECTION = createHeader({
	readable = "Scroll of Resurrection",
	icon = [[~_.asset("Promotion_Scroll_of_Rez")]],
	text = {
		en = [[~SCROLL_OF_RESURRECTION]],
	},
	description = {
		en = "The following item sets were implemented as boosted character rewards for recipients of the Scroll of Resurrection.\n\nThey were later added to vendors in Mount Hyjal and Vash'jir once the Scroll of Resurrection Service was retired.",
		es = "Los siguientes conjuntos de objetos se implementaron como recompensas de mejoras de personaje para los receptores del Pergamino de la Resurrección.\n\nPosteriormente, se añadieron a los vendedores del Monte Hyjal y Vash'jir una vez que se retiró el Servicio del Pergamino de la Resurrección.",
		mx = "Los siguientes conjuntos de objetos se implementaron como recompensas de mejoras de personaje para los receptores del Pergamino de la Resurrección.\n\nPosteriormente, se añadieron a los vendedores del Monte Hyjal y Vash'jir una vez que se retiró el Servicio del Pergamino de la Resurrección.",
	},
});
root(ROOTS.Promotions, n(SCROLL_OF_RESURRECTION, {
	["timeline"] = { ADDED_4_3_0, REMOVED_5_3_0 },
	["groups"] = {
		cl(DEATHKNIGHT, {
			i(72994),	-- Ebonsoul Blade
			i(72990),	-- Ebonsoul Hammer
			i(72991),	-- Ebonsoul Maul
			i(72932),	-- Ebonsoul Faceguard
			i(72921),	-- Ebonsoul Helm
			i(72923),	-- Ebonsoul Pauldrons
			i(72934),	-- Ebonsoul Shoulderguards
			i(73156),	-- Ebonsoul Amulet
			i(73151),	-- Ebonsoul Pendant
			i(73315),	-- Ebonsoul Cloak of Battle
			i(73316),	-- Ebonsoul Cloak of Stoicism
			i(72918),	-- Ebonsoul Breastplate
			i(72929),	-- Ebonsoul Chestguard
			i(72936),	-- Ebonsoul Armguards
			i(72925),	-- Ebonsoul Vambraces
			i(72920),	-- Ebonsoul Gauntlets
			i(72931),	-- Ebonsoul Handguards
			i(72924),	-- Ebonsoul Girdle
			i(72935),	-- Ebonsoul Waistband
			i(72933),	-- Ebonsoul Legguards
			i(72922),	-- Ebonsoul Legplates
			i(72930),	-- Ebonsoul Greaves
			i(72919),	-- Ebonsoul Sabatons
			i(73152),	-- Ebonsoul Band of Might
			i(73159),	-- Ebonsoul Band of Stoicism
			i(73153),	-- Ebonsoul Ring of Might
			i(73158),	-- Ebonsoul Ring of Stoicism
			i(73157),	-- Ebonsoul Defender's Idol
			i(73160),	-- Ebonsoul Defender's Stone
			i(73155),	-- Ebonsoul Idol of Battle
			i(73154),	-- Ebonsoul Stone of Battle
			-- #if BEFORE MOP
			i(73343, {	-- Ebonsoul Sigil of Battle
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(73346, {	-- Ebonsoul Sigil of Stoicism
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			-- #endif
		}),
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
		cl(MONK, {
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(88648),	-- Monastic Spire
				i(88622),	-- Monastic Staff
				i(88649),	-- Monastic Sword
				i(88626),	-- Monastic Helm
				i(88617),	-- Monastic Hood
				i(88628),	-- Monastic Pauldrons
				i(88619),	-- Monastic Shoulders
				i(88635),	-- Monastic Amulet
				i(88643),	-- Monastic Choker
				i(88667),	-- Monastic Necklace
				i(88633),	-- Monastic Cloak of Rage
				i(88632),	-- Monastic Cloak of Wisdom
				i(88614),	-- Monastic Jerkin
				i(88623),	-- Monastic Vest
				i(88621),	-- Monastic Bindings
				i(88630),	-- Monastic Cuffs
				i(88616),	-- Monastic Gloves
				i(88625),	-- Monastic Handguards
				i(88629),	-- Monastic Cord
				i(88620),	-- Monastic Waistband
				i(88618),	-- Monastic Britches
				i(88627),	-- Monastic Legguards
				i(88615),	-- Monastic Boots
				i(88624),	-- Monastic Footpads
				i(88640),	-- Monastic Band of Onslaught
				i(88637),	-- Monastic Band of Stoicism
				i(88646),	-- Monastic Band of Wisdom
				i(88641),	-- Monastic Ring of Onslaught
				i(88638),	-- Monastic Ring of Stoicism
				i(88645),	-- Monastic Ring of Wisdom
				i(88636),	-- Monastic Defender's Idol
				i(88634),	-- Monastic Defender's Stone
				i(88642),	-- Monastic Idol of Rage
				i(88647),	-- Monastic Idol of Wisdom
				i(88639),	-- Monastic Stone of Rage
				i(88644),	-- Monastic Stone of Wisdom
			},
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
		bubbleDown({ ["u"] = REAL_MONEY }, i(77956, bubbleDown({ ["timeline"] = { ADDED_4_3_0, REMOVED_5_4_7 } }, {	-- Spectral Mount Crate
			["description"] = "This crate was given to players whose friends returned to the game by means of the Scroll of Resurrection.",
			["groups"] = {
				a(i(76889)),	-- Spectral Gryphon (MOUNT!)
				h(i(76902)),	-- Spectral Wind Rider (MOUNT!)
			},
		}))),
	},
}));
-- #endif
