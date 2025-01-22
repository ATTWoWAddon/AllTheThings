-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
GEAR_CONVERSION = createHeader({
	readable = "Gear Conversion",
	icon = 1391675,
	text = {
		en = "Gear Conversion",
		tw = "裝備轉換",
	},
});
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_MOP, n(REMIX_MOP, bubbleDown({ ["timeline"] = { ADDED_10_2_7, REMOVED_MOP_REMIX_END } }, {
	n(GEAR_CONVERSION, {
		["description"] = "These items were obtained by characters created during the MoP Remix Event and were automatically transferred to Retail when the event ended.",
		["groups"] = {
			cl(DEATHKNIGHT, {
				i(218130, {	-- Adventurer's Footlocker
					i(170591),	-- Heart-Lesion Blade
					i(170604),	-- Heart-Lesion Runeblade
				}),
				cl(DEATHKNIGHT, BLOOD, {
					i(153717),	-- Heart-Lession Greatsword
					i(153737),	-- Heart-Lesion Faceguard
					i(153739),	-- Heart-Lesion Amulet
					i(153744),	-- Heart-Lesion Shoulderguards
					i(153734),	-- Heart-Lesion Cloak of Stoicism
					i(153733),	-- Heart-Lesion Chestguard
					i(153746),	-- Heart-Lesion Armguards
					i(153736),	-- Heart-Lesion Handguards
					i(153745),	-- Heart-Lesion Waistband
					i(153738),	-- Heart-Lesion Legguards
					i(153735),	-- Heart-Lesion Greaves
					i(153742),	-- Heart-Lesion Band of Stoicism
					i(153741),	-- Heart-Lesion Ring of Stoicism
					i(153740),	-- Heart-Lesion Defender Idol
					i(153743),	-- Heart-Lesion Defender Stone
				}),
				cl(DEATHKNIGHT, FROST, {
					i(153726),	-- Heart-Lesion Blade
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
			cl(DRUID, {
				i(218130, {	-- Adventurer's Footlocker
					i(170617), -- Springrain Spear
					i(170611), -- Springrain Stave
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
				cl(DRUID, GUARDIAN, {
					i(153773),	-- Springrain Spear
					i(153771),	-- Springrain Helm
					i(153794),	-- Springrain Choker
					i(153774),	-- Springrain Pauldrons
					i(153793),	-- Springrain Cloak of Durability
					i(153768),	-- Springrain Vest
					i(153776),	-- Springrain Cuffs
					i(153770),	-- Springrain Handguards
					i(153775),	-- Springrain Cord
					i(153772),	-- Springrain Legguards
					i(153769),	-- Springrain Footpads
					i(153797),	-- Springrain Band of Durability
					i(153796),	-- Springrain Ring of Durability
					i(153795),	-- Springrain Idol of Durability
					i(153798),	-- Springrain Stone of Durability
				}),
				cl(DRUID, RESTORATION, {
					i(153792),	-- Springrain Staff
					i(153787),	-- Springrain Hood
					i(153778),	-- Springrain Necklace
					i(153789),	-- Springrain Shoulders
					i(153777),	-- Springrain Cloak of Wisdom
					i(153784),	-- Springrain Jerkin
					i(153791),	-- Springrain Bindings
					i(153786),	-- Springrain Gloves
					i(153790),	-- Springrain Waistband
					i(153788),	-- Springrain Britches
					i(153785),	-- Springrain Boots
					i(153780),	-- Springrain Band of Wisdom
					i(153781),	-- Springrain Ring of Wisdom
					i(153779),	-- Springrain Idol of Wisdom
					i(153782),	-- Springrain Stone of Wisdom
				}),
			}),
			cl(EVOKER, {
				i(194522),	-- Blue Winglord's Staff
				i(194523),	-- Blue Winglord's Chain
				i(194524),	-- Blue Winglord's Boots
				i(194525),	-- Blue Winglord's Bracers
				i(194526),	-- Blue Winglord's Hauberk
				i(194527),	-- Blue Winglord's Grips
				i(194528),	-- Blue Winglord's Coif
				i(194529),	-- Blue Winglord's Greaves
				i(194530),	-- Blue Winglord's Shoulders
				i(194531),	-- Claw-Carved Figurine
				i(194532),	-- Blue Winglord's Insignia
				i(194533),	-- Blue Winglord's Ring
				i(194534),	-- Blue Winglord's Loop
				i(194535),	-- Cobalt Winglord's Cloak
				i(194536),	-- Blue Winglord's Amulet
			}),
			cl(HUNTER, {
				i(218130, {	-- Adventurer's Footlocker
					i(170638),	-- Trailseeker Shotgun
					i(170639),	-- Trailseekeer Spear
				}),
				cl(HUNTER, BEAST_MASTERY, {
					i(153813),	-- Trailseeker Shotgun
				}),
				cl(HUNTER, MARKSMANSHIP, {
					i(153813),	-- Trailseeker Shotgun
				}),
				cl(HUNTER, SURVIVAL, {
					i(153814),	-- Trailseeker Spear
				}),
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
			cl(MAGE, {
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
			cl(MONK, {
				i(218130, {	-- Adventurer's Footlocker
					i(170651),	-- Mistdancer Spire
					i(170659),	-- Mistdancer Staff
					i(170660),	-- Mistdancer Sword
				}),
				cl(MONK, BREWMASTER, {
					i(153835),	-- Mistdancer Spire
					i(153840),	-- Mistdancer Helm
					i(153831),	-- Mistdancer Amulet
					i(153842),	-- Mistdancer Pauldrons
					i(153865),	-- Mistdancer Cloak of Rage
					i(153837),	-- Mistdancer Vest
					i(153844),	-- Mistdancer Cuffs
					i(153839),	-- Mistdancer Handguards
					i(153843),	-- Mistdancer Cord
					i(153841),	-- Mistdancer Legguards
					i(153838),	-- Mistdancer Footpads
					i(153832),	-- Mistdancer Band of Stoicism
					i(153833),	-- Mistdancer Ring of Stoicism
					i(153836),	-- Mistdancer Defender Idol
					i(153834),	-- Mistdancer Defender Stone
				}),
				cl(MONK, MISTWEAVER, {
					i(153856),	-- Mistdancer Staff
					i(153847),	-- Mistdancer Hood
					i(153851),	-- Mistdancer Necklace
					i(153855),	-- Mistdancer Shoulders
					i(153848),	-- Mistdancer Cloak of Wisdom
					i(153866),	-- Mistdancer Jerkin
					i(153858),	-- Mistdancer Bindings
					i(153846),	-- Mistdancer Gloves
					i(153857),	-- Mistdancer Waistband
					i(153850),	-- Mistdancer Britches
					i(153845),	-- Mistdancer Boots
					i(153853),	-- Mistdancer Band of Wisdom
					i(153852),	-- Mistdancer Ring of Wisdom
					i(153849),	-- Mistdancer Idol of Wisdom
					i(153854),	-- Mistdancer Stone of Wisdom
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
				i(218130, {	-- Adventurer's Footlocker
					i(170676),	-- Sunsoul Bulwark
					i(170673),	-- Sunsoul Scepter
					i(170675),	-- Sunsoul Sword
					i(170677),	-- Sunsoul Warmaul
				}),
				cl(PALADIN, HOLY, {
					i(153889),	-- Sunsoul Scepter
					i(153890),	-- Sunsoul Shield
					i(153879),	-- Sunsoul Headpiece
					i(153881),	-- Sunsoul Necklace
					i(153886),	-- Sunsoul Spaulders
					i(153876),	-- Sunsoul Cloak of Wisdom
					i(153875),	-- Sunsoul Breastplate
					i(153888),	-- Sunsoul Armplates
					i(153878),	-- Sunsoul Gloves
					i(153887),	-- Sunsoul Belt
					i(153880),	-- Sunsoul Leggings
					i(153877),	-- Sunsoul Boots
					i(153884),	-- Sunsoul Band of Wisdom
					i(153883),	-- Sunsoul Ring of Wisdom
					i(153882),	-- Sunsoul Idol of Wisdom
					i(153885),	-- Sunsoul Stone of Wisdom
				}),
				cl(PALADIN, PROTECTION, {
					i(153891),	-- Sunsoul Sword
					i(153892),	-- Sunsoul Bulwark
					i(153904),	-- Sunsoul Faceguard
					i(153906),	-- Sunsoul Amulet
					i(153911),	-- Sunsoul Shoulderguards
					i(153901),	-- Sunsoul Cloak of Stoicism
					i(153900),	-- Sunsoul Chestguard
					i(153913),	-- Sunsoul Armguards
					i(153903),	-- Sunsoul Handguards
					i(153912),	-- Sunsoul Waistband
					i(153905),	-- Sunsoul Legguards
					i(153902),	-- Sunsoul Greaves
					i(153909),	-- Sunsoul Band of Stoicism
					i(153908),	-- Sunsoul Ring of Stoicism
					i(153907),	-- Sunsoul Defender Idol
					i(153910),	-- Sunsoul Defender Stone
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
				-- No Adventurer's Footlocker
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
				cl(PRIEST, HOLY, {
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
				cl(PRIEST, SHADOW, {
					i(153944),	-- Communal Stave
					i(153938),	-- Communal Cowl
					i(153914),	-- Communal Medallion
					i(153941),	-- Communal Mantle
					i(153935),	-- Communal Cloak of Destruction
					i(153940),	-- Communal Robe
					i(153943),	-- Communal Bindings
					i(153937),	-- Communal Gloves
					i(153942),	-- Communal Sash
					i(153939),	-- Communal Pants
					i(153936),	-- Communal Boots
					i(153916),	-- Communal Band of Destruction
					i(153917),	-- Communal Ring of Destruction
					i(153915),	-- Communal Idol of Destruction
					i(153918),	-- Communal Stone of Destruction
				}),
			}),
			cl(ROGUE, {
				i(218130, {	-- Adventurer's Footlocker
					i(170710),	-- Lightdrinker Dagger
					i(170711),	-- Lightdrinker Shiv
					i(170712),	-- Lightdrinker Sword
				}),
				cl(ROGUE, ASSASSINATION, {
					i(153959),	-- Lightdrinker Dagger
					i(153960),	-- Lightdrinker Shiv
				}),
				cl(ROGUE, OUTLAW, {
					i(153961),	-- Lightdrinker Sword
				}),
				cl(ROGUE, SUBTLETY, {
					i(153959),	-- Lightdrinker Dagger
					i(153960),	-- Lightdrinker Shiv
				}),
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
			cl(SHAMAN, {
				i(218130, {	-- Adventurer's Footlocker
					i(170725),	-- Streamtalker Aegis
					i(170724),	-- Streamtalker Claws
					i(170726),	-- Streamtalker Talons
				}),
				cl(SHAMAN, ELEMENTAL, {
					i(153973),	-- Streamtalker Claws
					i(153979),	-- Streamtalker Aegis
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
				cl(SHAMAN, RESTORATION, {
					i(153999),	-- Streamtalker Slicers
					i(154005),	-- Streamtalker Shield
					i(154003),	-- Streamtalker Cowl
					i(153993),	-- Streamtalker Necklace
					i(154006),	-- Streamtalker Spaulders
					i(153992),	-- Streamtalker Cloak of Wisdom
					i(154000),	-- Streamtalker Vest
					i(154008),	-- Streamtalker Bracers
					i(154002),	-- Streamtalker Grips
					i(154007),	-- Streamtalker Girdle
					i(154004),	-- Streamtalker Leggings
					i(154001),	-- Streamtalker Sabatons
					i(153996),	-- Streamtalker Band of Wisdom
					i(153995),	-- Streamtalker Ring of Wisdom
					i(153994),	-- Streamtalker Idol of Wisdom
					i(153997),	-- Streamtalker Stone of Wisdom
				}),
			}),
			cl(WARLOCK, {
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
			cl(WARRIOR, {
				i(218130, {	-- Adventurer's Footlocker
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
				cl(WARRIOR, FURY, {
					i(154034),	-- Oathsworn Headchopper
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
				cl(WARRIOR, PROTECTION, {
					i(154035),	-- Oathsworn Axe
					i(154036),	-- Oathsworn Bulwark
					i(154041),	-- Oathsworn Faceguard
					i(154043),	-- Oathsworn Amulet
					i(154048),	-- Oathsworn Shoulderguards
					i(154038),	-- Oathsworn Cloak of Stoicism
					i(154037),	-- Oathsworn Chestguard
					i(154050),	-- Oathsworn Armguards
					i(154040),	-- Oathsworn Handguards
					i(154049),	-- Oathsworn Waistband
					i(154042),	-- Oathsworn Legguards
					i(154039),	-- Oathsworn Greaves
					i(154045),	-- Oathsworn Band of Stoicism
					i(154046),	-- Oathsworn Ring of Stoicism
					i(154044),	-- Oathsworn Defender Idol
					i(154047),	-- Oathsworn Defender Stone
				}),
			}),
			i(223953),	-- Timerunner's Parting Pack
		},
	}),
}))));