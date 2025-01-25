-------------------------------------------
--    C H A R A C T E R   M O D U L E    --
-------------------------------------------
root(ROOTS.Character, n(CLASS_TRIAL, {
	expansion(EXPANSION.BFA, bubbleDown({["u"] = REMOVED_FROM_GAME}, {
		header(HEADERS.Achievement, 10671, {
			-- Note: [As of July 4, 2018 it's Boosted 110's as no 110 trial is available]
			-- Note: [As of August 18th, 2018 110 trials have been implemented and use same itemID's as boosting]
			-- Note: [As of October 13th, 2020 these Became LvL 48 Class Trials ]
			["description"] = "These are gained by boosting a character to Level 100.  Each class has one default spec except Shamans, Druids and Hunters.",
			["lvl"] = 110,
			["sourceIgnored"] = true,
			["groups"] = {
				n(RELICS, {
					un(REMOVED_FROM_GAME, i(156805)),	-- Bloodtotem Band
					un(REMOVED_FROM_GAME, i(156804)),	-- Bloody Kvaldir Pennant
					un(REMOVED_FROM_GAME, i(156821)),	-- Darkened Brulstone
					un(REMOVED_FROM_GAME, i(156810)),	-- Felskorn Mania
					un(REMOVED_FROM_GAME, i(156819)),	-- Fertile Soil
					un(REMOVED_FROM_GAME, i(156812)),	-- Fires of Heaven
					un(REMOVED_FROM_GAME, i(156813)),	-- Frozen Ley Scar
					un(REMOVED_FROM_GAME, i(156811)),	-- Gift of Flame
					un(REMOVED_FROM_GAME, i(156802)),	-- Mana-Saber Eye
					un(REMOVED_FROM_GAME, i(156803)),	-- Seawitch's Foci
					un(REMOVED_FROM_GAME, i(156815)),	-- Shieldmaiden's Prayer
					un(REMOVED_FROM_GAME, i(156814)),	-- Snowmane Totem
					un(REMOVED_FROM_GAME, i(156816)),	-- Hatecoil Badge of Glory
					un(REMOVED_FROM_GAME, i(156820)),	-- Specter of Helheim
					un(REMOVED_FROM_GAME, i(156817)),	-- Stonedark Idol
					un(REMOVED_FROM_GAME, i(156822)),	-- Stormwing's Roar
					un(REMOVED_FROM_GAME, i(156818)),	-- Tranquil Clipping
					un(REMOVED_FROM_GAME, i(156823)),	-- Whirlpool Seed
				}),
				cl(DEATHKNIGHT, {
					i(160439, {	-- Adventurer's Footlocker
						i(153726),	-- Heart-Lesion Blade
						i(153747),	-- Heart-Lesion Runeblade
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
					i(160439, {	-- Adventurer's Footlocker
						i(153773),	-- Springrain Spear
						i(153760),	-- Springrain Stave
					}),
					cl(DRUID, BALANCE, {
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
					i(160439, {	-- Adventurer's Footlocker
						i(153813),	-- Trailseeker Shotgun
						i(153814),	-- Trailseeker Spear
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
					i(160439, {	-- Adventurer's Footlocker
						i(153835),	-- Mistdancer Spire
						i(153856),	-- Mistdancer Staff
						i(153859),	-- Mistdancer Sword
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
					i(160439, {	-- Adventurer's Footlocker
						i(153892),	-- Sunsoul Bulwark
						i(153889),	-- Sunsoul Scepter
						i(153891),	-- Sunsoul Sword
						i(153893),	-- Sunsoul Warmaul
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
					i(160439, {	-- Adventurer's Footlocker
						i(153959),	-- Lightdrinker Dagger
						i(153960),	-- Lightdrinker Shiv
						i(153961),	-- Lightdrinker Sword
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
					i(160439, {	-- Adventurer's Footlocker
						i(153979),	-- Streamtalker Aegis
						i(153973),	-- Streamtalker Claws
						i(154005),	-- Streamtalker Shield
						i(153983),	-- Streamtalker Talons
					}),
					cl(SHAMAN, ELEMENTAL, {
						i(153979),	-- Streamtalker Aegis
						i(153973),	-- Streamtalker Claws
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
					cl(SHAMAN, ENHANCEMENT, {
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
					i(160439, {	-- Adventurer's Footlocker
						i(154035),	-- Oathsworn Axe
						i(154036),	-- Oathsworn Bulwark
						i(154025),	-- Oathsworn Greataxe
						i(154034),	-- Oathsworn Headchopper
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
