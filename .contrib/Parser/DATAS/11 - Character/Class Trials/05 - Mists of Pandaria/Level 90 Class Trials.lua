-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.MOP, bubbleDown({["u"] = REMOVED_FROM_GAME}, {
		header(HEADERS.Achievement, 6193, {
			-- Note: [As of patch 6.0.1 Level 90 Boost does not reward this gear anymore]
			["description"] = "These were obtained by creating a Level 90 Class Trial for each class and specialization.",
			["lvl"] = 90,
			["groups"] = {
				cl(DEATHKNIGHT, {
					cl(DEATHKNIGHT, UNHOLY, {
						i(101006),	-- Heart-Lesion Hammer	- Unholy
						i(100985),	-- Heart-Lesion Blade	- Frost
						i(100980),	-- Heart-Lesion Helm
						i(100987),	-- Heart-Lesion Pendant
						i(100982),	-- Heart-Lesion Pauldrons
						i(100986),	-- Heart-Lesion Cloak of Battle
						i(100977),	-- Heart-Lesion Breastplate
						i(100984),	-- Heart-Lesion Vambraces
						i(100979),	-- Heart-Lesion Gauntlets
						i(100983),	-- Heart-Lesion Girdle
						i(100981),	-- Heart-Lesion Legplates
						i(100978),	-- Heart-Lesion Sabatons
						i(100989),	-- Heart-Lesion Band of Might
						i(100988),	-- Heart-Lesion Ring of Might
						i(100991),	-- Heart-Lesion Idol of Battle
						i(100990),	-- Heart-Lesion Stone of Battle
					}),
					cl(DEATHKNIGHT, BLOOD, {
						i(100976),	-- Heart-Lesion Maul
						i(100996),	-- Heart-Lesion Faceguard
						i(100998),	-- Heart-Lesion Amulet
						i(101003),	-- Heart-Lesion Shoulderguards
						i(100993),	-- Heart-Lesion Cloak of Stoicism
						i(100992),	-- Heart-Lesion Chestguard
						i(101005),	-- Heart-Lesion Armguards
						i(100995),	-- Heart-Lesion Handguards
						i(101004),	-- Heart-Lesion Waistband
						i(100997),	-- Heart-Lesion Legguards
						i(100994),	-- Heart-Lesion Greaves
						i(101001),	-- Heart-Lesion Band of Stoicism
						i(101000),	-- Heart-Lesion Ring of Stoicism
						i(100999),	-- Heart-Lesion Defender Idol
						i(101002),	-- Heart-Lesion Defender Stone
					}),
				}),
				cl(DRUID, {
					cl(DRUID, BALANCE, {
						i(101019),	-- Springrain Stave
						i(101016),	-- Springrain Headpiece
						i(101037),	-- Springrain Necklace
						i(101018),	-- Springrain Spaulders
						i(101042),	-- Springrain Cloak of Destruction
						i(101013),	-- Springrain Tunic
						i(101021),	-- Springrain Bracers
						i(101015),	-- Springrain Grips
						i(101020),	-- Springrain Belt
						i(101017),	-- Springrain Leggings
						i(101014),	-- Springrain Treads
						i(101024),	-- Springrain Band of Destruction
						i(101025),	-- Springrain Ring of Destruction
						i(101023),	-- Springrain Idol of Destruction
						i(101026),	-- Springrain Stone of Destruction
					}),
					cl(DRUID, FERAL, {
						i(101032),	-- Springrain Spear
						i(101030),	-- Springrain Helm
						i(101008),	-- Springrain Choker
						i(101033),	-- Springrain Pauldrons
						i(101007),	-- Springrain Cloak of Rage
						i(101027),	-- Springrain Vest
						i(101035),	-- Springrain Cuffs
						i(101029),	-- Springrain Handguards
						i(101034),	-- Springrain Cord
						i(101031),	-- Springrain Legguards
						i(101028),	-- Springrain Footpads
						i(101011),	-- Springrain Band of Onslaught
						i(101010),	-- Springrain Ring of Onslaught
						i(101009),	-- Springrain Idol of Rage
						i(101012),	-- Springrain Stone of Rage
					}),
					cl(DRUID, RESTORATION, {
						i(101051),	-- Springrain Staff
						i(101046),	-- Springrain Hood
						i(101022),	-- Springrain Medallion
						i(101048),	-- Springrain Shoulders
						i(101036),	-- Springrain Cloak of Wisdom
						i(101043),	-- Springrain Jerkin
						i(101050),	-- Springrain Bindings
						i(101045),	-- Springrain Gloves
						i(101049),	-- Springrain Waistband
						i(101047),	-- Springrain Britches
						i(101044),	-- Springrain Boots
						i(101039),	-- Springrain Band of Wisdom
						i(101040),	-- Springrain Ring of Wisom
						i(101038),	-- Springrain Idol of Wisdom
						i(101041),	-- Springrain Stone of Wisom
					}),
				}),
				cl(HUNTER, {
					cl(HUNTER, BEAST_MASTERY, {
						i(101066),	-- Trailseeker Rifle
						i(101061),	-- Trailseeker Helm
						i(101053),	-- Trailseeker Choker
						i(101063),	-- Trailseeker Spaulders [Hidden Shoulders]
						i(101052),	-- Trailseeker Cloak of Rage
						i(101058),	-- Trailseeker Vest
						i(101065),	-- Trailseeker Bracers
						i(101060),	-- Trailseeker Gauntlets
						i(101064),	-- Trailseeker Belt
						i(101062),	-- Trailseeker Legguards
						i(101059),	-- Trailseeker Greaves
						i(101055),	-- Trailseeker Band of Onslaught
						i(101056),	-- Trailseeker Ring of Onslaught
						i(101054),	-- Trailseeker Idol of Rage
						i(101057),	-- Trailseeker Stone of Rage
					}),
				}),
				cl(MAGE, {
					cl(MAGE, FROST, {
						i(101083),	-- Mountainsage Staff
						i(101081),	-- Mountainsage Wand
						i(101075),	-- Mountainsage Hood
						i(101068),	-- Mountainsage Medallion
						i(101078),	-- Mountainsage Shoulderpads
						i(101082),	-- Mountainsage Cloak of Destruction
						i(101077),	-- Mountainsage Robe
						i(101080),	-- Mountainsage Wristwraps
						i(101074),	-- Mountainsage Handwraps
						i(101079),	-- Mountainsage Cord
						i(101076),	-- Mountainsage Leggings
						i(101073),	-- Mountainsage Sandals
						i(101070),	-- Mountainsage Band of Destruction
						i(101071),	-- Mountainsage Ring of Destruction
						i(101069),	-- Mountainsage Idol of Destruction
						i(101072),	-- Mountainsage Stone of Destruction
					}),
				}),
				cl(MONK, {
					cl(MONK, BREWMASTER, {
						i(101088),	-- Mistdancer Spire
						i(101084),	-- Mistdancer Amulet
						i(101085),	-- Mistdancer Band of Stoicism
						i(101086),	-- Mistdancer Ring of Stoicism
						i(101089),	-- Mistdancer Defender Idol
						i(101087),	-- Mistdancer Defender Stone
					}),
					cl(MONK, MISTWEAVER, {
						i(101109),	-- Mistdancer Staff
						i(101100),	-- Mistdancer Hood
						i(101104),	-- Mistdancer Necklace
						i(101108),	-- Mistdancer Shoulders
						i(101101),	-- Mistdancer Cloak of Wisdom
						i(101119),	-- Mistdancer Jerkin
						i(101111),	-- Mistdancer Bindings
						i(101099),	-- Mistdancer Gloves
						i(101110),	-- Mistdancer Waistband
						i(101103),	-- Mistdancer Britches
						i(101098),	-- Mistdancer Boots
						i(101106),	-- Mistdancer Band of Wisdom
						i(101105),	-- Mistdancer Ring of Wisdom
						i(101102),	-- Mistdancer Idol of Wisdom
						i(101107),	-- Mistdancer Stone of Wisdom
					}),
					cl(MONK, WINDWALKER, {
						i(101112),	-- Mistdancer Sword
						i(101093),	-- Mistdancer Helm
						i(101114),	-- Mistdancer Choker
						i(101095),	-- Mistdancer Pauldrons [Hidden Shoulders]
						i(101118),	-- Mistdancer Cloak of Rage
						i(101090),	-- Mistdancer Vest
						i(101097),	-- Mistdancer Cuffs
						i(101092),	-- Mistdancer Handguards
						i(101096),	-- Mistdancer Cord
						i(101094),	-- Mistdancer Legguards
						i(101091),	-- Mistdancer Footpads
						i(101115),	-- Mistdancer Band of Onslaught
						i(101116),	-- Mistdancer Ring of Onslaught
						i(101113),	-- Mistdancer Idol of Rage
						i(101117),	-- Mistdancer Stone of Rage
					}),
				}),
				cl(PALADIN, {
					cl(PALADIN, HOLY, {
						i(101142),	-- Sunsoul Scepter
						i(101143),	-- Sunsoul Shield
						i(101132),	-- Sunsoul Headpiece
						i(101134),	-- Sunsoul Necklace
						i(101139),	-- Sunsoul Spaulders
						i(101129),	-- Sunsoul Cloak of Wisdom
						i(101128),	-- Sunsoul Breastplate
						i(101141),	-- Sunsoul Armplates
						i(101131),	-- Sunsoul Gloves
						i(101140),	-- Sunsoul Belt
						i(101133),	-- Sunsoul Leggings
						i(101130),	-- Sunsoul Boots
						i(101137),	-- Sunsoul Band of Wisdom
						i(101136),	-- Sunsoul Ring of Wisdom
						i(101135),	-- Sunsoul Idol of Wisome
						i(101138),	-- Sunsoul Stone of Wisdom
					}),
					cl(PALADIN, PROTECTION, {
						i(101144),	-- Sunsoul Sword
						i(101145),	-- Sunsoul Bulwark
						i(101157),	-- Sunsoul Faceguard
						i(101159),	-- Sunsoul Amulet
						i(101164),	-- Sunsoul Shoulderguards
						i(101154),	-- Sunsoul Cloak of Stoicism
						i(101153),	-- Sunsoul Chestguard
						i(101166),	-- Sunsoul Armguards
						i(101156),	-- Sunsoul Handguards
						i(101165),	-- Sunsoul Waistband
						i(101158),	-- Sunsoul Legguards
						i(101155),	-- Sunsoul Greaves
						i(101162),	-- Sunsoul Band of Stoicism
						i(101161),	-- Sunsoul Ring of Stoicism
						i(101160),	-- Oathsworn Defender Idol
						i(101163),	-- Oathsworn Defender Stone
					}),
					cl(PALADIN, RETRIBUTION, {
						i(101146),	-- Sunsoul Greatsword
						i(101123),	-- Sunsoul Helm
						i(101148),	-- Sunsoul Pendant
						i(101125),	-- Sunsoul Pauldrons
						i(101147),	-- Sunsoul Cloak of Battle
						i(101120),	-- Sunsoul Battleplate
						i(101127),	-- Sunsoul Vambraces
						i(101122),	-- Sunsoul Gauntlets
						i(101126),	-- Sunsoul Girdle
						i(101124),	-- Sunsoul Legplates
						i(101121),	-- Sunsoul Sabatons
						i(101150),	-- Sunsoul Band of Might
						i(101149),	-- Sunsoul Ring of Might
						i(101151),	-- Sunsoul Stone of Battle
						i(101152),	-- Sunsoul Idol of Battle
					}),
				}),
				cl(PRIEST, {
					cl(PRIEST, DISCIPLINE, {
						i(101187),	-- Communal Staff	-- Discipline
						i(101172),	-- Communal Wand	-- Holy
						i(101176),	-- Communal Hood
						i(101178),	-- Communal Necklace
						i(101184),	-- Communal Shoulderpads
						i(101173),	-- Communal Cloak of Wisdom
						i(101182),	-- Communal Vestments
						i(101186),	-- Communal Wristwraps
						i(101175),	-- Communal Handwraps
						i(101185),	-- Communal Cord
						i(101177),	-- Communal Leggings
						i(101174),	-- Communal Sandals
						i(101180),	-- Communal Band of Wisdom
						i(101181),	-- Communal Ring of Wisdom
						i(101179),	-- Communal Idol of Wisdom
						i(101183),	-- Communal Stone of Wisdom
					}),
					cl(PRIEST, SHADOW, {
						i(101197),	-- Communal Stave
						i(101191),	-- Communal Cowl
						i(101167),	-- Communal Medallion
						i(101194),	-- Communal Mantle
						i(101188),	-- Communal Cloak of Destruction
						i(101193),	-- Communal Robe
						i(101196),	-- Communal Bindings
						i(101190),	-- Communal Gloves
						i(101195),	-- Communal Sash
						i(101192),	-- Communal Pants
						i(101189),	-- Communal Boots
						i(101169),	-- Communal Band of Destruction
						i(101170),	-- Communal Ring of Destruction
						i(101168),	-- Communal Idol of Destruction
						i(101171),	-- Communal Stone of Destruction
					}),
				}),
				cl(ROGUE, {
					cl(ROGUE, ASSASSINATION, {
						i(101212),	-- Lightdrinker Dagger	-- Assassination / Subtlety
						i(101213),	-- Lightdrinker Shiv	-- Assassination
						i(101214),	-- Lightdrinker Sword	-- Combat
						i(101207),	-- Lightdrinker Hood
						i(101199),	-- Lightdrinker Choker
						i(101209),	-- Lightdrinker Shoulders
						i(101198),	-- Lightdrinker Cloak of Rage
						i(101204),	-- Lightdrinker Jerkin
						i(101211),	-- Lightdrinker Bindings
						i(101206),	-- Lightdrinker Gloves
						i(101210),	-- Lightdrinker Waistband
						i(101208),	-- Lightdrinker Britches
						i(101205),	-- Lightdrinker Boots
						i(101201),	-- Lightdrinker Band of Onslaught
						i(101202),	-- Lightdrinker Ring of Onslaught
						i(101200),	-- Lightdrinker Idol of Rage
						i(101203),	-- Lightdrinker Stone of Rage
					}),
				}),
				cl(SHAMAN, {
					cl(SHAMAN, ELEMENTAL, {
						i(101226),	-- Streamtalker Gavel
						i(101232),	-- Streamtalker Aegis
						i(101230),	-- Streamtalker Coif
						i(101221),	-- Streamtalker Medallion
						i(101233),	-- Streamtalker Pauldrons
						i(101251),	-- Streamtalker Cloak of Destruction
						i(101227),	-- Streamtalker Tunic
						i(101235),	-- Streamtalker Armbands
						i(101229),	-- Streamtalker Gloves
						i(101234),	-- Streamtalker Belt
						i(101231),	-- Streamtalker Legwraps
						i(101228),	-- Streamtalker Boots
						i(101224),	-- Streamtalker Band of Destruction
						i(101223),	-- Streamtalker Ring of Destruction
						i(101222),	-- Streamtalker Idol of Destruction
						i(101225),	-- Streamtalker Stone of Destruction
					}),
					cl(SHAMAN, ENHANCEMENT, {
						i(101236),	-- Streamtalker Mace
						i(101240),	-- Streamtalker Helm
						i(101216),	-- Streamtalker Choker
						i(101242),	-- Streamtalker Shoulderguards
						i(101215),	-- Streamtalker Cloak of Rage
						i(101237),	-- Streamtalker Chestguard
						i(101244),	-- Streamtalker Armguard
						i(101239),	-- Streamtalker Handguards
						i(101243),	-- Streamtalker Waistguard
						i(101241),	-- Streamtalker Legguards
						i(101238),	-- Streamtalker Greaves
						i(101218),	-- Streamtalker Band of Onslaught
						i(101219),	-- Streamtalker Ring of Onslaught
						i(101217),	-- Streamtalker Idol of Rage
						i(101220),	-- Streamtalker Stone of Rage
					}),
					cl(SHAMAN, RESTORATION, {
						i(101252),	-- Streamtalker Scepter
						i(101258),	-- Streamtalker Shield
						i(101256),	-- Streamtalker Cowl
						i(101246),	-- Streamtalker Necklace
						i(101259),	-- Streamtalker Spaulders
						i(101245),	-- Streamtalker Cloak of Wisdom
						i(101253),	-- Streamtalker Vest
						i(101261),	-- Streamtalker Bracers
						i(101255),	-- Streamtalker Grips
						i(101260),	-- Streamtalker Girdle
						i(101257),	-- Streamtalker Leggings
						i(101254),	-- Streamtalker Sabatons
						i(101249),	-- Streamtalker Band of Wisdom
						i(101248),	-- Streamtalker Ring of Wisdom
						i(101247),	-- Streamtalker Idol of Wisdom
						i(101250),	-- Streamtalker Stone of Wisdom
					}),
				}),
				cl(WARLOCK, {
					cl(WARLOCK, AFFLICTION, {
						i(101277),	-- Felsoul Staff
						i(101275),	-- Felsoul Wand
						i(101269),	-- Felsoul Cowl
						i(101262),	-- Felsoul Medallion
						i(101272),	-- Felsoul Shoulderpads
						i(101276),	-- Felsoul Cloak of Destruction
						i(101271),	-- Felsoul Robe
						i(101274),	-- Felsoul Wristwraps
						i(101268),	-- Felsoul Handwraps
						i(101273),	-- Felsoul Cord
						i(101270),	-- Felsoul Leggings
						i(101267),	-- Felsoul Sandals
						i(101264),	-- Felsoul Band of Destruction
						i(101265),	-- Felsoul Ring of Destruction
						i(101263),	-- Felsoul Idol of Destruction
						i(101266),	-- Felsoul Stone of Destruction
					}),
				}),
				cl(WARRIOR, {
					cl(WARRIOR, ARMS, {
						i(101278),	-- Oathsworn Greatsword	- Arms
						i(101287),	-- Oathsworn Maul		- Fury
						i(101282),	-- Oathsworn Helm
						i(101291),	-- Oathsworn Pendant
						i(101284),	-- Oathsworn Pauldrons
						i(101290),	-- Oathsworn Cloak of Battle
						i(101279),	-- Oathsworn Breastplate
						i(101286),	-- Oathsworn Vambraces
						i(101281),	-- Oathsworn Gauntlets
						i(101285),	-- Oathsworn Girdle
						i(101283),	-- Oathsworn Legplates
						i(101280),	-- Oathsworn Sabatons
						i(101292),	-- Oathsworn Band of Might
						i(101293),	-- Oathsworn Ring of Might
						i(101295),	-- Oathsworn Idol of Battle
						i(101294),	-- Oathsworn Stone of Battle
					}),
					cl(WARRIOR, PROTECTION, {
						i(101288),	-- Oathsworn Sword
						i(101289),	-- Oathsworn Bulwark
						i(101300),	-- Oathsworn Faceguard
						i(101302),	-- Oathsworn Amulet
						i(101307),	-- Oathsworn Shoulderguards
						i(101297),	-- Oathsworn Cloak of Stoicism
						i(101296),	-- Oathsworn Chestguard
						i(101309),	-- Oathsworn Armguards
						i(101299),	-- Oathsworn Handguards
						i(101308),	-- Oathsworn Waistband
						i(101301),	-- Oathsworn Legguards
						i(101298),	-- Oathsworn Greaves
						i(101304),	-- Oathsworn Band of Stoicism
						i(101305),	-- Oathsworn Ring of Stoicism
						i(101303),	-- Oathsworn Defender Idol
						i(101306),	-- Oathsworn Defender Stone
					}),
				}),
			},
		}),
	})),
}));