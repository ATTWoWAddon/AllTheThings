-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ARMOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_0 } }, {
		filter(CLOTH, {
			i(220314),	-- Moth-Ridden Armlets
			i(220310),	-- Moth-Ridden Hood
			i(220311),	-- Moth-Ridden Leggings
			i(220309),	-- Moth-Ridden Mitts
			i(220307),	-- Moth-Ridden Robe
			i(220308),	-- Moth-Ridden Slippers
			i(220312),	-- Moth-Ridden Stole
			i(220313),	-- Moth-Ridden Waistwrap
		}),
		filter(LEATHER, {
			i(220321),	-- Distressed Belt
			i(220316),	-- Distressed Boots
			i(220322),	-- Distressed Bracers
			i(220319),	-- Distressed Breeches
			i(220317),	-- Distressed Grips
			i(220315),	-- Distressed Jerkin
			i(220320),	-- Distressed Shoulderpads
			i(220318),	-- Distressed Visor
		}),
		filter(MAIL, {
			i(220330),	-- Pierced Armguards
			i(220329),	-- Pierced Clasp
			i(220325),	-- Pierced Gloves
			i(220323),	-- Pierced Hauberk
			i(220326),	-- Pierced Helm
			i(220327),	-- Pierced Jambeaux
			i(220324),	-- Pierced Sabatons
			i(220328),	-- Pierced Spaulders
		}),
		filter(PLATE, {
			i(220331),	-- Begrimed Breastplate
			i(220333),	-- Begrimed Gauntlets
			i(220337),	-- Begrimed Greatbelt
			i(220334),	-- Begrimed Greathelm
			i(220335),	-- Begrimed Legguards
			i(220332),	-- Begrimed Sabatons
			i(220336),	-- Begrimed Spaulders
			i(220338),	-- Begrimed Vambraces
		}),
	})),
	n(ARMOR, {
		filter(BACK_F, {
			i(224624),	-- Spinner's Shawl
		}),
		filter(CLOTH, {
			i(224589),	-- Deep-Dweller's Cincture
			i(224590),	-- Deep-Dweller's Cowl
			i(224597),	-- Deep-Dweller's Kaftan
			i(224598),	-- Deep-Dweller's Leggings
			i(224596),	-- Deep-Dweller's Mitts
			i(224599),	-- Deep-Dweller's Shoulderpads
			i(224595),	-- Deep-Dweller's Slippers
			i(224591),	-- Deep-Dweller's Wraps
		}),
		filter(FINGER_F, {
			i(224592),	-- Spinner's Hoop
		}),
		filter(LEATHER, {
			i(224605),	-- Underscout's Bracers
			i(224602),	-- Underscout's Cap
			i(224604),	-- Underscout's Cord
			i(224601),	-- Underscout's Gloves
			i(224606),	-- Underscout's Jerkin
			i(224607),	-- Underscout's Shoulderguards
			i(224600),	-- Underscout's Striders
			i(224603),	-- Underscout's Trousers
		}),
		filter(MAIL, {
			i(224614),	-- Expeditionary Belt
			i(224609),	-- Expeditionary Boots
			i(224615),	-- Expeditionary Bracers
			i(224608),	-- Expeditionary Brigandine
			i(224613),	-- Expeditionary Epaulets
			i(224610),	-- Expeditionary Gauntlets
			i(224611),	-- Expeditionary Helm
			i(224612),	-- Expeditionary Shinguards
		}),
		filter(PLATE, {
			i(224617),	-- Earthforged Haubergeon
			i(224623),	-- Earthforged Cuffs
			i(224620),	-- Earthforged Faulds
			i(224622),	-- Stalwart Girdle (TODO: re-check name in future build, probably mistypo)
			i(224616),	-- Earthforged Greathelm
			i(224619),	-- Earthforged Handguards
			i(224621),	-- Earthforged Shoulder Scales
			i(224618),	-- Earthforged Sabatons
		}),
	}),
	n(WEAPONS, {
		i(224627),	-- Arathi Arquebus
		i(224628),	-- Arathi Claymore
		i(224633),	-- Arathi Greataxe
		i(224629),	-- Arathi Hatchet
		i(224634),	-- Arathi Mace
		i(227692),	-- Arathi Sword
		i(224630),	-- Deep-Dweller's Battleaxe
		i(224631),	-- Deep-Dweller's Cudgel
		i(224636),	-- Deep-Dweller's Dirk
		i(224637),	-- Deep-Dweller's Orb
		i(224626),	-- Deep-Dweller's Staff
		i(227693),	-- Expeditionary Blade
		i(224635),	-- Expeditionary Bulwark
		i(224639),	-- Expeditionary Chopper
		i(224625),	-- Expeditionary Spear
		i(224632),	-- Underscout's Kukri
		i(224638),	-- Underscout's Glaive
	}),
	filter(MISC, {
		i(220376),	-- Bismuth Lockbox
	}),
	filter(QUEST_ITEMS, {
		i(212493),	-- Odd Glob of Wax // objectID 419696 (Waxy Lump)
		i(228228),	-- Strange Lump of Wax (QS!/QI!)// World drop or from objectID 419696 (Waxy Lump)
	}),
	filter(REAGENTS, {
		i(223512),	-- Basically Beef
		i(225567),	-- Bug Brisket
		i(225911),	-- Cinderbee Belly
		i(225569),	-- Clipped Bird Wing
		i(224826),	-- Dawnweave+
		i(228235),	-- Dawnweave++
		i(228236),	-- Dawnweave+++
		i(224824),	-- Duskweave+
		i(228233),	-- Duskweave++
		i(228234),	-- Duskweave+++
		i(221757),	-- Gloomfathom Hide
		i(225912),	-- Hot Honeycomb
		i(225565),	-- Massive Worm Flank
		i(225564),	-- Meaty Muscle
		i(221758),	-- Profaned Tinderbox
		i(221754),	-- Ringing Deeps Ingot
		i(225568),	-- Slum Shark Scrap
		i(221756),	-- Vial of Kaheti Oils
		i(221763),	-- Viridian Charmcap
		i(225566),	-- Warped Wing
		i(224828),	-- Weavercloth+
		i(228231),	-- Weavercloth++
		i(228232),	-- Weavercloth+++
	}),
	filter(RECIPES, {
		i(223093),	-- Design: Beautification Iris (RECIPE!)
		i(223087),	-- Design: Culminating Blasphemite (RECIPE!)
		i(223088),	-- Design: Elusive Blasphemite (RECIPE!)
		i(223086),	-- Design: Insightful Blasphemite (RECIPE!)
		i(223140),	-- Formula: Enchant Cloak - Chant of Burrowing Rapidity (RECIPE!)
		i(223123),	-- Formula: Enchanted Gilded Harbinger Crest (RECIPE!)
		i(223122),	-- Formula: Enchanted Runed Harbinger Crest (RECIPE!)
		i(223121),	-- Formula: Enchanted Weathered Harbinger Crest (RECIPE!)
		i(223100),	-- Pattern: Vambraces of Deepening Darkness (RECIPE!)
		i(223043),	-- Plans: Sanctified Steps (RECIPE!)
	}),
})));
