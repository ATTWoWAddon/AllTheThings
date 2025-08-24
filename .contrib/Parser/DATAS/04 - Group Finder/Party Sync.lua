--------------------------------------------------
--    G R O U P   F I N D E R   M O D U L E     --
--------------------------------------------------

root(ROOTS.GroupFinder, n(PARTY_SYNC, bubbleDown({ ["timeline"] = { ADDED_8_2_5 } }, {
	["description"] = "Rewarded from Quest while in Party Sync",
	["groups"] = {
		i(171305, {	-- Salvaged Cache of Goods
			cl(DEATHKNIGHT, {
				i(173566),	-- Bloodcaked Runeblade
				i(173567),	-- Frost-Etched Runeblade
				i(173578),	-- Heart-Lesion Breastplate
				i(173580),	-- Heart-Lesion Gauntlets
				i(173584),	-- Heart-Lesion Girdle
				i(173581),	-- Heart-Lesion Helm
				i(173582),	-- Heart-Lesion Legplates
				i(173583),	-- Heart-Lesion Pauldrons
				i(173579),	-- Heart-Lesion Sabatons
				i(173585),	-- Heart-Lesion Vambraces
				i(173539),	-- Unholy Runeblade
			}),
			cl(DEMONHUNTER, {
				i(173688),	-- Illidari Belt
				i(173683),	-- Illidari Blindfold
				i(173687),	-- Illidari Boots
				i(173686),	-- Illidari Bracers
				i(173684),	-- Illidari Gloves
				i(173682),	-- Illidari Leggings
				i(173685),	-- Illidari Robe
				i(173681),	-- Illidari Shoulders
				i(173676),	-- Illidari Belt
				i(173673),	-- Illidari Blindfold
				i(173680),	-- Illidari Boots
				i(173675),	-- Illidari Bracers
				i(173678),	-- Illidari Gloves
				i(173674),	-- Illidari Leggings
				i(173677),	-- Illidari Robe
				i(173679),	-- Illidari Shoulders
				i(173672),	-- Illidari Warglaive
			}),
			cl(DRUID, {
				i(173568),	-- Guardian's Oaken Spear
				i(173541),	-- Pike of Feral Rage
				i(173542),	-- Restorative Ashwood Staff
				i(173588),	-- Springrain Grips
				i(173589),	-- Springrain Headpiece
				i(173590),	-- Springrain Leggings
				i(173591),	-- Springrain Spaulders
				i(173587),	-- Springrain Treads
				i(173586),	-- Springrain Tunic
				i(173592),	-- Springrain Belt
				i(173593),	-- Springrain Bracers
				i(173540),	-- Staff of Astral Alignment
			}),
			cl(EVOKER, {
				i(203366),	-- Blue Winglord's Staff
				i(203367),	-- Blue Winglord's Hauberk
				i(203368),	-- Blue Winglord's Chain
				i(203369),	-- Blue Winglord's Boots
				i(203370),	-- Blue Winglord's Bracers
				i(203371),	-- Blue Winglord's Grips
				i(203372),	-- Blue Winglord's Coif
				i(203373),	-- Blue Winglord's Greaves
				i(203374),	-- Blue Winglord's Shoulders
			}),
			cl(HUNTER, {
				i(173569),	-- Marksman's Recurve Bow
				i(173543),	-- Packmaster's Rifle
				i(173570),	-- Survivalist's Hunting Spear
				i(173600),	-- Trailseeker Belt
				i(173601),	-- Trailseeker Bracers
				i(173596),	-- Trailseeker Gauntlets
				i(173595),	-- Trailseeker Greaves
				i(173597),	-- Trailseeker Helm
				i(173598),	-- Trailseeker Legguards
				i(173599, {	-- Trailseeker Spaulders
					["collectible"] = false,	-- Nothing works to collect it. June 20th 2025 -- Goldenshacal
				}),
				i(173594),	-- Trailseeker Vest
			}),
			cl(MAGE, {
				i(173544),	-- Frostcore Staff
				i(173608),	-- Mountainsage Cord
				i(173603),	-- Mountainsage Handwraps
				i(173604),	-- Mountainsage Hood
				i(173605),	-- Mountainsage Leggings
				i(173606),	-- Mountainsage Robe
				i(173602),	-- Mountainsage Sandals
				i(173607),	-- Mountainsage Shoulderpads
				i(173609),	-- Mountainsage Wristwraps
				i(173571),	-- Staff of Arcane Power
				i(173545),	-- Staff of Inner Flame
			}),
			cl(MONK, {
				i(173546),	-- Brewmasher's Staff
				i(173616),	-- Mistdancer Cord
				i(173617),	-- Mistdancer Cuffs
				i(173611),	-- Mistdancer Footpads
				i(173612),	-- Mistdancer Handguards
				i(173613),	-- Mistdancer Helm
				i(173614),	-- Mistdancer Legguards
				i(173615, {	-- Mistdancer Pauldrons
					["collectible"] = false,	-- Nothing works to collect it. June 22th 2025 -- Darkal
				}),
				i(173610),	-- Mistdancer Vest
				i(173547),	-- Staff of the Jade Mist
				i(173548),	-- Sword of Singing Wind
			}),
			cl(PALADIN, {
				i(173574),	-- Defender's Bulwark
				i(173550),	-- Defender's Longsword
				i(173549),	-- Justicar's Hammer
				i(173573),	-- Justicar's Shield
				i(173618),	-- Sunsoul Battleplate
				i(173620),	-- Sunsoul Gauntlets
				i(173624),	-- Sunsoul Girdle
				i(173621),	-- Sunsoul Helm
				i(173622),	-- Sunsoul Legplates
				i(173623),	-- Sunsoul Pauldrons
				i(173619),	-- Sunsoul Sabatons
				i(173625),	-- Sunsoul Vambraces
				i(173551),	-- Warhammer of Retribution
			}),
			cl(PRIEST, {
				i(173552),	-- Staff of Dual Convictions
				i(173553),	-- Staff of Radiance
				i(173554),	-- Whispering Staff of the Void
				i(173633),	-- Communal Bindings
				i(173626),	-- Communal Boots
				i(173628),	-- Communal Cowl
				i(173627),	-- Communal Gloves
				i(173631),	-- Communal Mantle
				i(173629),	-- Communal Pants
				i(173630),	-- Communal Robe
				i(173632),	-- Communal Sash
			}),
			cl(ROGUE, {
				i(173556),	-- Assassin's Serrated Dagger
				i(173555),	-- Duskfall Daggers
				i(173557),	-- Outlaw's Cutlass
				i(173641),	-- Lightdrinker Bindings
				i(173635),	-- Lightdrinker Boots
				i(173638),	-- Lightdrinker Britches
				i(173636),	-- Lightdrinker Gloves
				i(173637),	-- Lightdrinker Hood
				i(173634),	-- Lightdrinker Jerkin
				i(173639),	-- Lightdrinker Shoulders
				i(173640),	-- Lightdrinker Waistband
			}),
			cl(SHAMAN, {
				i(203370),	-- Blue Winglord's Bracers
				i(173576),	-- Earthmender's Shield
				i(173560),	-- Earthmender's Talons
				i(173575),	-- Stormshaper's Bulwark
				i(173558),	-- Stormshaper's Claws
				i(173649),	-- Streamtalker Armbands
				i(173648),	-- Streamtalker Belt
				i(173643),	-- Streamtalker Boots
				i(173645),	-- Streamtalker Coif
				i(173646),	-- Streamtalker Legwraps
				i(173647),	-- Streamtalker Pauldrons
				i(173642),	-- Streamtalker Tunic
				i(173559),	-- Talons of Totemic Might
			}),
			cl(WARLOCK, {
				i(173562),	-- Demonologist's Staff
				i(173561),	-- Destructive Spellstaff
				i(173656),	-- Felsoul Cord
				i(173652),	-- Felsoul Cowl
				i(173651),	-- Felsoul Handwraps
				i(173653),	-- Felsoul Leggings
				i(173654),	-- Felsoul Robe
				i(173650),	-- Felsoul Sandals
				i(173655),	-- Felsoul Shoulderpads
				i(173657),	-- Felsoul Wristwraps
				i(173572),	-- Staff of Swelling Agony
			}),
			cl(WARRIOR, {
				i(173563),	-- Armsmaster's Greataxe
				i(173564),	-- Greataxe of Fury
				i(173565),	-- Protector's Axe
				i(173577),	-- Protector's Barrier
				i(173658),	-- Oathsworn Breastplate
				i(173660),	-- Oathsworn Gauntlets
				i(173664),	-- Oathsworn Girdle
				i(173661),	-- Oathsworn Helm
				i(173662),	-- Oathsworn Legplates
				i(173663),	-- Oathsworn Pauldrons
				i(173659),	-- Oathsworn Sabatons
				i(173665),	-- Oathsworn Vambraces
			}),
			filter(CLOAKS, {
				i(173671),	-- Travel-Worn Shawl
			}),
			filter(NECK_F, {
				i(173670),	-- Woven Silver Pendant
			}),
			filter(FINGER_F, {
				i(173668),	-- Dingy Golden Band
				i(173669),	-- Dull Onyx Band
			}),
			filter(TRINKET_F, {
				i(173667),	-- Burnished Charm
				i(173666),	-- Lacquered Carving
			}),
		}),
	},
})));
