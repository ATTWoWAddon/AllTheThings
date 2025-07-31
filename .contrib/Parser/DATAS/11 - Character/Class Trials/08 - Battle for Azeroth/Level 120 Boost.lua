-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.BFA, bubbleDown({["u"] = REMOVED_FROM_GAME}, {
		header(HEADERS.Achievement, 12544, {
			-- Note: [As of October 13th, 2020 These became lvl 50 Boost]
			["description"] = "These are gained by boosting a character to Level 120.  Each class has one default spec except Shamans, Druids and Hunters.",
			["lvl"] = 120,
			["groups"] = {
				cl(DEATHKNIGHT, {
					i(171988, {	-- Adventurer's Footlocker
						i(170591),	-- Heart-Lesion Blade
						i(170604),	-- Heart-Lesion Runeblade
					}),
					cl(DEATHKNIGHT, UNHOLY, {
						i(170604),	-- Heart-Lesion Runeblade
						i(170762),	-- Heart-Lesion Helm
						i(170764),	-- Heart-Lesion Pauldrons
						i(170592),	-- Heart-Lesion Cloak of Battle
						i(170759),	-- Heart-Lesion Breastplate
						i(170766),	-- Heart-Lesion Vambraces
						i(170761),	-- Heart-Lesion Gauntlets
						i(170765),	-- Heart-Lesion Girdle
						i(170763),	-- Heart-Lesion Legplates
						i(170760),	-- Heart-Lesion Sabatons
						i(170595),	-- Heart-Lesion Band of Might
						i(170594),	-- Heart-Lesion Ring of Might
						i(170597),	-- Heart-Lesion Idol of Battle
						i(170596),	-- Heart-Lesion Stone of Battle
					}),
				}),
				cl(DEMONHUNTER, {
					cl(DEMONHUNTER, HAVOC, {
						i(170941),	-- Illidari Warglaives
						i(170929),	-- Illidari Blindfold
						i(170928),	-- Illidari Shoulders
						i(170940),	-- Illidari Drape
						i(170931),	-- Illidari Robe
						i(170932),	-- Illidari Bracers
						i(170930),	-- Illidari Gloves
						i(170934),	-- Illidari Belt
						i(170928),	-- Illidari Leggings
						i(170933),	-- Illidari Boots
						i(170935),	-- Illidari Band
						i(170936),	-- Illidari Ring
						i(170936),	-- Charm of Demonic Fire
						i(170935),	-- Demon Trophy
					}),
				}),
				cl(DRUID, {
					i(171988, {	-- Adventurer's Footlocker
						i(170617),	-- Springrain Spear
						i(170611),	-- Springrain Stave
					}),
					cl(DRUID, BALANCE, {
						i(170611),	-- Springrain Stave
						i(170778),	-- Springrain Headpiece
						i(170780),	-- Springrain Spaulders
						i(170624),	-- Springrain Cloak of Destruction
						i(170775),	-- Springrain Tunic
						i(170782),	-- Springrain Bracers
						i(170777),	-- Springrain Grips
						i(170781),	-- Springrain Belt
						i(170779),	-- Springrain Leggings
						i(170776),	-- Springrain Treads
						i(170614),	-- Springrain Band of Destruction
						i(170615),	-- Springrain Ring of Destruction
						i(170613),	-- Springrain Idol of Destruction
						i(170616),	-- Springrain Stone of Destruction
					}),
					cl(DRUID, FERAL, {
						i(170617),	-- Springrain Spear
						i(170786),	-- Springrain Helm
						i(170788),	-- Springrain Pauldrons
						i(170605),	-- Springrain Cloak of Rage
						i(170783),	-- Springrain Vest
						i(170790),	-- Springrain Cuffs
						i(170785),	-- Springrain Handguards
						i(170789),	-- Springrain Cord
						i(170787),	-- Springrain Legguards
						i(170784),	-- Springrain Footpads
						i(170609),	-- Springrain Band of Onslaught
						i(170608),	-- Springrain Ring of Onslaught
						i(170607),	-- Springrain Idol of Rage
						i(170610),	-- Springrain Stone of Rage
					}),
					cl(DRUID, RESTORATION, {
						i(170611),	-- Springrain Stave
						i(170794),	-- Springrain Hood
						i(170796),	-- Springrain Shoulders
						i(170618),	-- Springrain Cloak of Wisdom
						i(170791),	-- Springrain Jerkin
						i(170798),	-- Springrain Bindings
						i(170793),	-- Springrain Gloves
						i(170797),	-- Springrain Waistband
						i(170795),	-- Springrain Britches
						i(170792),	-- Springrain Boots
						i(170621),	-- Springrain Band of Wisdom
						i(170622),	-- Springrain Ring of Wisdom
						i(170620),	-- Springrain Idol of Wisdom
						i(170623),	-- Springrain Stone of Wisdom
					}),
				}),
				cl(HUNTER, {
					i(171988, {	-- Adventurer's Footlocker
						i(170638),	-- Trailseeker Shotgun
						i(170639),	-- Trailseeker Spear
					}),
					cl(HUNTER, BEAST_MASTERY, {
						i(170638),	-- Trailseeker Shotgun
						i(170802),	-- Trailseeker Helm
						i(170804),	-- Trailseeker Spaulders
						i(170632),	-- Trailseeker Cloak of Rage
						i(170799),	-- Trailseeker Vest
						i(170806),	-- Trailseeker Bracers
						i(170801),	-- Trailseeker Gauntlets
						i(170805),	-- Trailseeker Belt
						i(170803),	-- Trailseeker Legguards
						i(170800),	-- Trailseeker Greaves
						i(170635),	-- Trailseeker Band of Onslaught
						i(170636),	-- Trailseeker Ring of Onslaught
						i(170634),	-- Trailseeker Idol of Rage
						i(170637),	-- Trailseeker Stone of Rage
					}),
					cl(HUNTER, SURVIVAL, {
						i(170639),	-- Trailseeker Spear
						i(170802),	-- Trailseeker Helm
						i(170804),	-- Trailseeker Spaulders
						i(170632),	-- Trailseeker Cloak of Rage
						i(170799),	-- Trailseeker Vest
						i(170806),	-- Trailseeker Bracers
						i(170801),	-- Trailseeker Gauntlets
						i(170805),	-- Trailseeker Belt
						i(170803),	-- Trailseeker Legguards
						i(170800),	-- Trailseeker Greaves
						i(170635),	-- Trailseeker Band of Onslaught
						i(170636),	-- Trailseeker Ring of Onslaught
						i(170634),	-- Trailseeker Idol of Rage
						i(170637),	-- Trailseeker Stone of Rage
					}),
				}),
				cl(MAGE, {
					cl(MAGE, FROST, {
						i(170646),	-- Mountainsage Staff
						i(170809),	-- Mountainsage Hood
						i(170812),	-- Mountainsage Shoulderpads
						i(170645),	-- Mountainsage Cloak of Destruction
						i(170811),	-- Mountainsage Robe
						i(170814),	-- Mountainsage Wristwraps
						i(170808),	-- Mountainsage Handwraps
						i(170813),	-- Mountainsage Cord
						i(170810),	-- Mountainsage Leggings
						i(170807),	-- Mountainsage Sandals
						i(170642),	-- Mountainsage Band of Destruction
						i(170643),	-- Mountainsage Ring of Destruction
						i(170641),	-- Mountainsage Idol of Destruction
						i(170644),	-- Mountainsage Stone of Destruction
					}),
				}),
				cl(MONK, {
					i(171988, {	-- Adventurer's Footlocker
						i(170651),	-- Mistdancer Spire
						i(170659),	-- Mistdancer Staff
						i(170660),	-- Mistdancer Sword
					}),
					cl(MONK, MISTWEAVER, {
						i(170659),	-- Mistdancer Staff
						i(170825),	-- Mistdancer Hood
						i(170827),	-- Mistdancer Shoulders
						i(170653),	-- Mistdancer Cloak of Wisdom
						i(170830),	-- Mistdancer Jerkin
						i(170829),	-- Mistdancer Bindings
						i(170824),	-- Mistdancer Gloves
						i(170828),	-- Mistdancer Waistband
						i(170826),	-- Mistdancer Britches
						i(170823),	-- Mistdancer Boots
						i(170657),	-- Mistdancer Band of Wisdom
						i(170656),	-- Mistdancer Ring of Wisdom
						i(170654),	-- Mistdancer Idol of Wisdom
						i(170658),	-- Mistdancer Stone of Wisdom
					}),
					cl(MONK, WINDWALKER, {
						i(170660),	-- Mistdancer Sword
						i(170818),	-- Mistdancer Helm
						i(170820),	-- Mistdancer Pauldrons
						i(170666),	-- Mistdancer Cloak of Rage
						i(170815),	-- Mistdancer Vest
						i(170822),	-- Mistdancer Cuffs
						i(170817),	-- Mistdancer Handguards
						i(170821),	-- Mistdancer Cord
						i(170819),	-- Mistdancer Legguards
						i(170816),	-- Mistdancer Footpads
						i(170663),	-- Mistdancer Band of Onslaught
						i(170664),	-- Mistdancer Ring of Onslaught
						i(170661),	-- Mistdancer Idol of Rage
						i(170665),	-- Mistdancer Stone of Rage
					}),
				}),
				cl(PALADIN, {
					i(171988, {	-- Adventurer's Footlocker
						i(170676),	-- Sunsoul Bulwark
						i(170673),	-- Sunsoul Scepter
						i(170675),	-- Sunsoul Sword
						i(170677),	-- Sunsoul Warmaul
					}),
					cl(PALADIN, HOLY, {
						i(170676),	-- Sunsoul Bulwark
						i(170675),	-- Sunsoul Sword
						i(170842),	-- Sunsoul Headpiece
						i(170844),	-- Sunsoul Spaulders
						i(170667),	-- Sunsoul Cloak of Wisdom
						i(170839),	-- Sunsoul Breastplate
						i(170846),	-- Sunsoul Armplates
						i(170841),	-- Sunsoul Gloves
						i(170853),	-- Sunsoul Waistband
						i(170843),	-- Sunsoul Leggings
						i(170840),	-- Sunsoul Boots
						i(170671),	-- Sunsoul Band of Wisdom
						i(170670),	-- Sunsoul Ring of Wisdom
						i(170669),	-- Sunsoul Idol of Wisdom
						i(170672),	-- Sunsoul Stone of Wisdom
					}),
					cl(PALADIN, PROTECTION, {
						i(170676),	-- Sunsoul Bulwark
						i(170675),	-- Sunsoul Sword
						i(170850),	-- Sunsoul Faceguard
						i(170852),	-- Sunsoul Shoulderguards
						i(170684),	-- Sunsoul Cloak of Stoicism
						i(170847),	-- Sunsoul Chestguard
						i(170854),	-- Sunsoul Armguards
						i(170849),	-- Sunsoul Handguards
						i(170845),	-- Sunsoul Belt
						i(170851),	-- Sunsoul Legguards
						i(170848),	-- Sunsoul Greaves
						i(170688),	-- Sunsoul Band of Stoicism
						i(170687),	-- Sunsoul Ring of Stoicism
						i(170686),	-- Sunsoul Defender Idol
						i(170689),	-- Sunsoul Defender Stone
					}),
					cl(PALADIN, RETRIBUTION, {
						i(170677),	-- Sunsoul Warmaul
						i(170834),	-- Sunsoul Helm
						i(170836),	-- Sunsoul Pauldrons
						i(170678),	-- Sunsoul Cloak of Battle
						i(170831),	-- Sunsoul Battleplate
						i(170838),	-- Sunsoul Vambraces
						i(170833),	-- Sunsoul Gauntlets
						i(170837),	-- Sunsoul Girdle
						i(170835),	-- Sunsoul Legplates
						i(170832),	-- Sunsoul Sabatons
						i(170681),	-- Sunsoul Band of Might
						i(170680),	-- Sunsoul Ring of Might
						i(170683),	-- Sunsoul Idol of Battle
						i(170682),	-- Sunsoul Stone of Battle
					}),
				}),
				cl(PRIEST, {
					cl(PRIEST, DISCIPLINE, {
						i(170701),	-- Communal Staff
						i(170857),	-- Communal Hood
						i(170860),	-- Communal Shoulderpads
						i(170695),	-- Communal Cloak of Wisdom
						i(170859),	-- Communal Vestments
						i(170862),	-- Communal Wristwraps
						i(170856),	-- Communal Handwraps
						i(170861),	-- Communal Cord
						i(170858),	-- Communal Leggings
						i(170855),	-- Communal Sandals
						i(170698),	-- Communal Band of Wisdom
						i(170699),	-- Communal Ring of Wisdom
						i(170697),	-- Communal Idol of Wisdom
						i(170700),	-- Communal Stone of Wisdom
					}),
				}),
				cl(ROGUE, {
					i(171988, {	-- Adventurer's Footlocker
						i(170710),	-- Lightdrinker Dagger
						i(170711),	-- Lightdrinker Shiv
						i(170712),	-- Lightdrinker Sword
					}),
					cl(ROGUE, ASSASSINATION, {
						i(170710),	-- Lightdrinker Dagger
						i(170711),	-- Lightdrinker Shiv
						i(170874),	-- Lightdrinker Hood
						i(170876),	-- Lightdrinker Shoulders
						i(170704),	-- Lightdrinker Cloak of Rage
						i(170871),	-- Lightdrinker Jerkin
						i(170878),	-- Lightdrinker Bindings
						i(170873),	-- Lightdrinker Gloves
						i(170877),	-- Lightdrinker Waistband
						i(170875),	-- Lightdrinker Britches
						i(170872),	-- Lightdrinker Boots
						i(170707),	-- Lightdrinker Band of Onslaught
						i(170708),	-- Lightdrinker Ring of Onslaught
						i(170706),	-- Lightdrinker Idol of Rage
						i(170709),	-- Lightdrinker Stone of Rage
					}),
				}),
				cl(SHAMAN, {
					i(171988, {	-- Adventurer's Footlocker
						i(170725),	-- Streamtalker Aegis
						i(170724),	-- Streamtalker Claws
						i(170726),	-- Streamtalker Talons
					}),
					cl(SHAMAN, ELEMENTAL, {
						i(170725),	-- Streamtalker Aegis
						i(170724),	-- Streamtalker Claws
						i(170882),	-- Streamtalker Coif
						i(170884),	-- Streamtalker Pauldrons
						i(170733),	-- Streamtalker Cloak of Destruction
						i(170879),	-- Streamtalker Tunic
						i(170886),	-- Streamtalker Armbands
						i(170881),	-- Streamtalker Gloves
						i(170885),	-- Streamtalker Belt
						i(170883),	-- Streamtalker Legwraps
						i(170880),	-- Streamtalker Boots
						i(170722),	-- Streamtalker Band of Destruction
						i(170721),	-- Streamtalker Ring of Destruction
						i(170720),	-- Streamtalker Idol of Destruction
						i(170723),	-- Streamtalker Stone of Destruction
					}),
					cl(SHAMAN, ENHANCEMENT, {
						i(170726),	-- Streamtalker Talons
						i(170890),	-- Streamtalker Helm
						i(170894),	-- Streamtalker Armguard
						i(170887),	-- Streamtalker Chestguard
						i(170713),	-- Streamtalker Cloak of Rage
						i(170892),	-- Streamtalker Shoulderguards
						i(170888),	-- Streamtalker Greaves
						i(170893),	-- Streamtalker Waistguard
						i(170891),	-- Streamtalker Legguards
						i(170889),	-- Streamtalker Handguards
						i(170716),	-- Streamtalker Band of Onslaught
						i(170717),	-- Streamtalker Ring of Onslaught
						i(170715),	-- Streamtalker Idol of Rage
						i(170718),	-- Streamtalker Stone of Rage
					}),
					cl(SHAMAN, RESTORATION, {
						i(170725),	-- Streamtalker Aegis
						i(170724),	-- Streamtalker Claws
						i(170898),	-- Streamtalker Cowl
						i(170902),	-- Streamtalker Bracers
						i(170895),	-- Streamtalker Vest
						i(170727),	-- Streamtalker Cloak of Wisdom
						i(170900),	-- Streamtalker Spaulders
						i(170896),	-- Streamtalker Sabatons
						i(170899),	-- Streamtalker Leggings
						i(170901),	-- Streamtalker Girdle
						i(170897),	-- Streamtalker Grips
						i(170731),	-- Streamtalker Band of Wisdom
						i(170730),	-- Streamtalker Ring of Wisdom
						i(170729),	-- Streamtalker Idol of Wisdom
						i(170732),	-- Streamtalker Stone of Wisdom
					}),
				}),
				cl(WARLOCK, {	-- Level 50 Boost provides the Level 48 items. Confirmed by Timum 24.09.2021
					cl(WARLOCK, AFFLICTION, {
						i(154024),	-- Felsoul Stave
						i(154016),	-- Felsoul Cowl
						i(154009),	-- Felsoul Medallion
						i(154019),	-- Felsoul Shoulderpads
						i(154023),	-- Felsoul Cloak of Destruction
						i(154018),	-- Felsoul Robe
						i(154021),	-- Felsoul Wristwraps
						i(154015),	-- Felsoul Handwraps
						i(154020),	-- Felsoul Cord
						i(154017),	-- Felsoul Leggings
						i(154014),	-- Felsoul Sandals
						i(154011),	-- Felsoul Band of Destruction
						i(154012),	-- Felsoul Ring of Destruction
						i(154010),	-- Felsoul Idol of Destruction
						i(154013),	-- Felsoul Stone of Destruction
					}),
				}),
				cl(WARRIOR, {
					i(171988, {	-- Adventurer's Footlocker
						i(170745),	-- Oathsworn Axe
						i(170743),	-- Oathsworn Greataxe
						i(170744),	-- Oathsworn Headchopper
						i(170746),	-- Oathsworn Bulwark
					}),
					cl(WARRIOR, ARMS, {
						i(170743),	-- Oathsworn Greataxe
						i(170914),	-- Oathsworn Helm
						i(170916),	-- Oathsworn Pauldrons
						i(170758),	-- Oathsworn Cloak of Battle
						i(170911),	-- Oathsworn Breastplate
						i(170918),	-- Oathsworn Vambraces
						i(170913),	-- Oathsworn Gauntlets
						i(170917),	-- Oathsworn Girdle
						i(170915),	-- Oathsworn Legplates
						i(170912),	-- Oathsworn Sabatons
						i(170754),	-- Oathsworn Band of Might
						i(170753),	-- Oathsworn Ring of Might
						i(170755),	-- Oathsworn Idol of Battle
						i(170756),	-- Oathsworn Stone of Battle
					}),
				}),
			},
		}),
	})),
}));
