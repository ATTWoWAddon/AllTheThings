-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.SL, bubbleDown({["timeline"] = { ADDED_9_1_5, REMOVED_10_2_0 } }, {
		header(HEADERS.Achievement, 14782, {
			-- Note: [As of July 4, 2018 it's Boosted 110's as no 110 trial is available]
			-- Note: [As of August 18th, 2018 110 trials have been implemented and use same itemID's as boosting]
			-- Note: [As of October 13th, 2020 Level 110 trials became Level 48 trials]
			-- Note: [As of November 11th, 2021 48 Trials became 50 Trials with a mix of ids from 48 Trials and 50 (SL Char Boost)]
			["description"] = "These are gained by creating a Level 50 Trial of that particular class.  Each class has one default spec except Shamans, Druids and Hunters.",
			["lvl"] = 50,
			["groups"] = {
				i(185940), -- Pristine Survival Kit
				cl(DEATHKNIGHT, {
					i(171988, {	-- Adventurer's Footlocker
						i(170591),	-- Heart-Lesion Blade
						i(170604),	-- Heart-Lesion Runeblade
					}),
					cl(DEATHKNIGHT, UNHOLY, {
						i(153747),	-- Heart-Lesion Runeblade
						i(153721),	-- Heart-Lesion Helm
						i(153728),	-- Heart-Lesion Pendant
						i(153723),	-- Heart-Lesion Pauldrons
						i(153727),	-- Heart-Lesion Cloak of Battle
						i(153718),	-- Heart-Lesion Breastplate
						i(153725),	-- Heart-Lesion Vambraces
						i(153720),	-- Heart-Lesion Gauntlets
						i(153724),	-- Heart-Lesion Girdle
						i(153722),	-- Heart-Lesion Legplates
						i(153719),	-- Heart-Lesion Sabatons
						i(153730),	-- Heart-Lesion Band of Might
						i(153729),	-- Heart-Lesion Ring of Might
						i(153732),	-- Heart-Lesion Idol of Battle
						i(153731),	-- Heart-Lesion Stone of Battle
					}),
				}),
				cl(DEMONHUNTER, {
					cl(DEMONHUNTER, HAVOC, {
						i(160513),	-- Illidari Warglaive
						i(154737),	-- Illidari Blindfold
						i(154747),	-- Illidari Chain
						i(154735),	-- Illidari Shoulders
						i(154748),	-- Illidari Drape
						i(154739),	-- Illidari Robe
						i(154740),	-- Illidari Bracers
						i(154738),	-- Illidari Gloves
						i(154742),	-- Illidari Belt
						i(154736),	-- Illidari Leggings
						i(154741),	-- Illidari Boots
						i(154745),	-- Illidari Band
						i(154746),	-- Illidari Ring
						i(154744),	-- Charm of Demonic Fire
						i(154743),	-- Demon Trophy
					}),
				}),
				cl(DRUID, {
					i(171988, {	-- Adventurer's Footlocker
						i(170617), -- Springrain Spear
						i(170611), -- Springrain Stave
					}),
					cl(DRUID, BALANCE, {
						-- #if BEFORE 9.2.5
						i(153760),	-- Springrain Stave
						i(153757),	-- Springrain Headpiece
						i(153763),	-- Springrain Medallion
						i(153759),	-- Springrain Spaulders
						i(153783),	-- Springrain Cloak of Destruction
						i(153754),	-- Springrain Tunic
						i(153762),	-- Springrain Wrists
						i(153756),	-- Springrain Grips
						i(153761),	-- Springrain Belt
						i(153758),	-- Springrain Leggings
						i(153755),	-- Springrain Treads
						i(153765),	-- Springrain Band of Destruction
						i(153766),	-- Springrain Ring of Destruction
						i(153764),	-- Springrain Idol of Destruction
						i(153767),	-- Springrain Stone of Destruction
						-- #endif
						-- #if AFTER 9.2.5
						i(153760),	-- Springrain Stave
						i(153757),	-- Springrain Headpiece
						i(153763),	-- Springrain Medallion
						i(153759),	-- Springrain Spaulders
						i(153748),	-- Springrain Cloak of Rage	--	changed cloak after 9.2.5
						i(153754),	-- Springrain Tunic
						i(153762),	-- Springrain Wrists
						i(153756),	-- Springrain Grips
						i(153761),	-- Springrain Belt
						i(153758),	-- Springrain Leggings
						i(153755),	-- Springrain Treads
						i(153765),	-- Springrain Band of Destruction
						i(153766),	-- Springrain Ring of Destruction
						i(153764),	-- Springrain Idol of Destruction
						i(153767),	-- Springrain Stone of Destruction
						-- #endif
					}),
					cl(DRUID, FERAL, {
						i(153773),	-- Springrain Spear
						i(153771),	-- Springrain Helm
						i(153749),	-- Springrain Choker
						i(153774),	-- Springrain Pauldrons
						i(153748),	-- Springrain Cloak of Rage
						i(153768),	-- Springrain Vest
						i(153776),	-- Springrain Cuffs
						i(153770),	-- Springrain Handguards
						i(153775),	-- Springrain Cord
						i(153772),	-- Springrain Legguards
						i(153769),	-- Springrain Footpads
						i(153752),	-- Springrain Band of Onslaught
						i(153751),	-- Springrain Ring of Onslaught
						i(153750),	-- Springrain Idol of Rage
						i(153753),	-- Springrain Stone of Rage
					}),
				}),
				cl(HUNTER, {
					i(171988, {	-- Adventurer's Footlocker
						i(170638),	-- Trailseeker Shotgun
						i(170639),	-- Trailseekeer Spear
					}),
					cl(HUNTER, BEAST_MASTERY, {
						i(153813),	-- Trailseeker Shotgun
						i(153808),	-- Trailseeker Helm
						i(153800),	-- Trailseeker Choker
						i(153810),	-- Trailseeker Spaulders
						i(153799),	-- Trailseeker Cloak of Rage
						i(153805),	-- Trailseeker Vest
						i(153812),	-- Trailseeker Bracers
						i(153807),	-- Trailseeker Gauntlets
						i(153811),	-- Trailseeker Belt
						i(153809),	-- Trailseeker Legguards
						i(153806),	-- Trailseeker Greaves
						i(153802),	-- Trailseeker Band of Onslaught
						i(153803),	-- Trailseeker Ring of Onslaught
						i(153801),	-- Trailseeker Idol of Rage
						i(153804),	-- Trailseeker Stone of Rage
					}),
					cl(HUNTER, SURVIVAL, {
						i(153814),	-- Trailseeker Spear
						i(153808),	-- Trailseeker Helm
						i(153800),	-- Trailseeker Choker
						i(153810),	-- Trailseeker Spaulders
						i(153799),	-- Trailseeker Cloak of Rage
						i(153805),	-- Trailseeker Vest
						i(153812),	-- Trailseeker Bracers
						i(153807),	-- Trailseeker Gauntlets
						i(153811),	-- Trailseeker Belt
						i(153809),	-- Trailseeker Legguards
						i(153806),	-- Trailseeker Greaves
						i(153802),	-- Trailseeker Band of Onslaught
						i(153803),	-- Trailseeker Ring of Onslaught
						i(153801),	-- Trailseeker Idol of Rage
						i(153804),	-- Trailseeker Stone of Rage
					}),
				}),
				cl(MAGE, {
					cl(MAGE, FROST, {
						i(153830),	-- Mountainsage Staff
						i(153822),	-- Mountainsage Hood
						i(153815),	-- Mountainsage Medallion
						i(153825),	-- Mountainsage Shoulderpads
						i(153829),	-- Mountainsage Cloak of Destruction
						i(153824),	-- Mountainsage Robe
						i(153827),	-- Mountainsage Wristwraps
						i(153821),	-- Mountainsage Handwraps
						i(153826),	-- Mountainsage Cord
						i(153823),	-- Mountainsage Leggings
						i(153820),	-- Mountainsage Sandals
						i(153817),	-- Mountainsage Band of Destruction
						i(153818),	-- Mountainsage Ring of Destruction
						i(153816),	-- Mountainsage Idol of Destruction
						i(153819),	-- Mountainsage Stone of Destruction
					}),
				}),
				cl(MONK, {
					i(171988, {	-- Adventurer's Footlocker
						i(170651),	-- Mistdancer Spire
						i(170659),	-- Mistdancer Staff
						i(170660),	-- Mistdancer Sword
					}),
					cl(MONK, WINDWALKER, {
						i(153859),	-- Mistdancer Sword
						i(153840),	-- Mistdancer Helm
						i(153861),	-- Mistdancer Choker
						i(153842),	-- Mistdancer Pauldrons
						i(153865),	-- Mistdancer Cloak of Rage
						i(153837),	-- Mistdancer Vest
						i(153844),	-- Mistdancer Cuffs
						i(153839),	-- Mistdancer Handguards
						i(153843),	-- Mistdancer Cord
						i(153841),	-- Mistdancer Legguards
						i(153838),	-- Mistdancer Footpads
						i(153862),	-- Mistdancer Band of Onslaught
						i(153863),	-- Mistdancer Ring of Onslaught
						i(153860),	-- Mistdancer Idol of Rage
						i(153864),	-- Mistdancer Stone of Rage
					}),
				}),
				cl(PALADIN, {
					i(171988, {	-- Adventurer's Footlocker
						i(170676),	-- Sunsoul Bulwark
						i(170673),	-- Sunsoul Scepter
						i(170675),	-- Sunsoul Sword
						i(170677),	-- Sunsoul Warmaul
					}),
					cl(PALADIN, RETRIBUTION, {
						i(153893),	-- Sunsoul Warmaul
						i(153870),	-- Sunsoul Helm
						i(153895),	-- Sunsoul Pendant
						i(153872),	-- Sunsoul Pauldrons
						i(153894),	-- Sunsoul Cloak of Battle
						i(153867),	-- Sunsoul Battleplate
						i(153874),	-- Sunsoul Vambraces
						i(153869),	-- Sunsoul Gauntlets
						i(153873),	-- Sunsoul Girdle
						i(153871),	-- Sunsoul Legplates
						i(153868),	-- Sunsoul Sabatons
						i(153897),	-- Sunsoul Band of Might
						i(153896),	-- Sunsoul Ring of Might
						i(153899),	-- Sunsoul Idol of Battle
						i(153898),	-- Sunsoul Stone of Battle
					}),
				}),
				cl(PRIEST, {
					cl(PRIEST, DISCIPLINE, {
						i(153934),	-- Communal Staff
						i(153923),	-- Communal Hood
						i(153925),	-- Communal Necklace
						i(153931),	-- Communal Shoulderpads
						i(153920),	-- Communal Cloak of Wisdom
						i(153929),	-- Communal Vestments
						i(153933),	-- Communal Wristwraps
						i(153922),	-- Communal Handwraps
						i(153932),	-- Communal Cord
						i(153924),	-- Communal Leggings
						i(153921),	-- Communal Sandals
						i(153927),	-- Communal Band of Wisdom
						i(153928),	-- Communal Ring of Wisdom
						i(153926),	-- Communal Idol of Wisdom
						i(153930),	-- Communal Stone of Wisdom
					}),
				}),
				cl(ROGUE, {
					i(171988, {	-- Adventurer's Footlocker
						i(170710),	-- Lightdrinker Dagger
						i(170711),	-- Lightdrinker Shiv
						i(170712),	-- Lightdrinker Sword
					}),
					cl(ROGUE, ASSASSINATION, {
						i(153959),	-- Lightdrinker Dagger
						i(153960),	-- Lightdrinker Shiv
						i(153954),	-- Lightdrinker Hood
						i(153946),	-- Lightdrinker Choker
						i(153956),	-- Lightdrinker Shoulders
						i(153945),	-- Lightdrinker Cloak of Rage
						i(153951),	-- Lightdrinker Jerkin
						i(153958),	-- Lightdrinker Bindings
						i(153953),	-- Lightdrinker Gloves
						i(153957),	-- Lightdrinker Waistband
						i(153955),	-- Lightdrinker Britches
						i(153952),	-- Lightdrinker Boots
						i(153948),	-- Lightdrinker Band of Onslaught
						i(153949),	-- Lightdrinker Ring of Onslaught
						i(153947),	-- Lightdrinker Idol of Rage
						i(153950),	-- Lightdrinker Stone of Rage
					}),
				}),
				cl(SHAMAN, {
					i(171988, {	-- Adventurer's Footlocker
						i(170725),	-- Streamtalker Aegis
						i(170724),	-- Streamtalker Claws
						i(170726),	-- Streamtalker Talons
					}),
					cl(SHAMAN, ELEMENTAL, {
						i(153973),	-- Streamtalker Claws
						i(154005),	-- Streamtalker Shield - you get the same shield as resto this time
						i(153977),	-- Streamtalker Coif
						i(153968),	-- Streamtalker Medallion
						i(153980),	-- Streamtalker Pauldrons
						i(153998),	-- Streamtalker Cloak of Destruction
						i(153974),	-- Streamtalker Tunic
						i(153982),	-- Streamtalker Armbands
						i(153976),	-- Streamtalker Gloves
						i(153981),	-- Streamtalker Belt
						i(153978),	-- Streamtalker Legwraps
						i(153975),	-- Streamtalker Boots
						i(153971),	-- Streamtalker Band of Destruction
						i(153970),	-- Streamtalker Ring of Destruction
						i(153969),	-- Streamtalker Idol of Destruction
						i(153972),	-- Streamtalker Stone of Destruction
					}),
					cl(SHAMAN, ENHANCEMENT, {	-- Blizzard at its best (changing items between patches)
						-- #if BEFORE 9.2.5
						i(153983),	-- Streamtalker Talons
						i(153987),	-- Streamtalker Helm
						i(153963),	-- Streamtalker Choker
						i(153989),	-- Streamtalker Shoulderguards
						i(153962),	-- Streamtalker Cloak of Rage
						i(153984),	-- Streamtalker Chestguard
						i(153991),	-- Streamtalker Armguard
						i(153986),	-- Streamtalker Handguards
						i(153990),	-- Streamtalker Waistguard
						i(153988),	-- Streamtalker Legguards
						i(153985),	-- Streamtalker Greaves
						i(153965),	-- Streamtalker Band of Onslaught
						i(153966),	-- Streamtalker Ring of Onslaught
						i(153964),	-- Streamtalker Idol of Rage
						i(153967),	-- Streamtalker Stone of Rage
						-- #endif
						-- #if AFTER 9.2.5
						i(153983),	-- Streamtalker Talons
						i(153977),	-- Streamtalker Coif
						i(153968),	-- Streamtalker Medallion
						i(153980),	-- Streamtalker Pauldrons
						i(153962),	-- Streamtalker Cloak of Rage
						i(153974),	-- Streamtalker Tunic
						i(153982),	-- Streamtalker Armbands
						i(153976),	-- Streamtalker Gloves
						i(153981),	-- Streamtalker Belt
						i(153978),	-- Streamtalker Legwraps
						i(153975),	-- Streamtalker Boots
						i(153971),	-- Streamtalker Band of Destruction
						i(153970),	-- Streamtalker Ring of Destruction
						i(153969),	-- Streamtalker Idol of Destruction
						i(153972),	-- Streamtalker Stone of Destruction
						-- #endif
					}),
				}),
				cl(WARLOCK, {
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
						i(170744),	-- Oathsworn Headchopper
						i(170743),	-- Oathsworn Greataxe
						i(170746),	-- Oathsworn Bulwark
					}),
					cl(WARRIOR, ARMS, {
						i(154025),	-- Oathsworn Greataxe
						i(154029),	-- Oathsworn Helm
						i(154118),	-- Oathsworn Pendant
						i(154031),	-- Oathsworn Pauldrons
						i(154119),	-- Oathsworn Cloak of Battle
						i(154026),	-- Oathsworn Breastplate
						i(154033),	-- Oathsworn Vambraces
						i(154028),	-- Oathsworn Gauntlets
						i(154032),	-- Oathsworn Girdle
						i(154030),	-- Oathsworn Legplates
						i(154027),	-- Oathsworn Sabatons
						i(154115),	-- Oathsworn Band of Might
						i(154114),	-- Oathsworn Ring of Might
						i(154116),	-- Oathsworn Idol of Battle
						i(154117),	-- Oathsworn Stone of Battle
					}),
				}),
			},
		}),
	})),
}));