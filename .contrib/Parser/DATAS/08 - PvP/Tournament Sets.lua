-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

TOURNAMENT_GEAR = createHeader({
	readable = "Tournament Gear",
	icon = 1582146,
	text = {
		en = [[~ITEM_TOURNAMENT_GEAR]],
	},
});

root(ROOTS.PVP, pvp(n(TOURNAMENT_GEAR, {
	["description"] = "These items were available during Warlords of Draenor, but only served as an iLvl booster for players participating in War Games for fun. They could not be transmogged nor used for any purpose other than War Games.",
	["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
	["groups"] = {
		i(117714),	-- Tournament Gladiator's Choker of Cruelty
		i(117915),	-- Tournament Gladiator's Choker of Cruelty
		i(120109),	-- Tournament Gladiator's Choker of Endurance
		i(120110),	-- Tournament Gladiator's Choker of Endurance
		i(117715),	-- Tournament Gladiator's Choker of Prowess
		i(117916),	-- Tournament Gladiator's Choker of Prowess
		i(117736),	-- Tournament Gladiator's Medallion of Cruelty
		i(117937),	-- Tournament Gladiator's Medallion of Cruelty
		i(117738),	-- Tournament Gladiator's Medallion of Meditation
		i(117939),	-- Tournament Gladiator's Medallion of Meditation
		i(117737),	-- Tournament Gladiator's Medallion of Tenacity
		i(117938),	-- Tournament Gladiator's Medallion of Tenacity
		i(127673),	-- Tournament Gladiator's Medallion of Adaptation
		i(127674),	-- Tournament Gladiator's Medallion of Adaptation
		i(117586),	-- Tournament Gladiator's Necklace of Cruelty
		i(117787),	-- Tournament Gladiator's Necklace of Cruelty
		i(117587),	-- Tournament Gladiator's Necklace of Prowess
		i(117788),	-- Tournament Gladiator's Necklace of Prowess
		i(117638),	-- Tournament Gladiator's Pendant of Contemplation
		i(117839),	-- Tournament Gladiator's Pendant of Contemplation
		i(117635),	-- Tournament Gladiator's Pendant of Cruelty
		i(117836),	-- Tournament Gladiator's Pendant of Cruelty
		i(117637),	-- Tournament Gladiator's Pendant of Meditation
		i(117838),	-- Tournament Gladiator's Pendant of Meditation
		i(117636),	-- Tournament Gladiator's Pendant of Prowess
		i(117837),	-- Tournament Gladiator's Pendant of Prowess


		i(117773),	-- Tournament Gladiator's Badge of Adaptation
		i(117774),	-- Tournament Gladiator's Badge of Adaptation
		i(117930),	-- Tournament Gladiator's Badge of Conquest
		i(117729),	-- Tournament Gladiator's Badge of Conquest
		i(117935),	-- Tournament Gladiator's Badge of Dominance
		i(117734),	-- Tournament Gladiator's Badge of Dominance
		i(117739),	-- Tournament Gladiator's Badge of Victory
		i(117940),	-- Tournament Gladiator's Badge of Victory
		i(117731),	-- Tournament Gladiator's Emblem of Cruelty
		i(117932),	-- Tournament Gladiator's Emblem of Cruelty
		i(117733),	-- Tournament Gladiator's Emblem of Meditation
		i(117934),	-- Tournament Gladiator's Emblem of Meditation
		i(117732),	-- Tournament Gladiator's Emblem of Tenacity
		i(117933),	-- Tournament Gladiator's Emblem of Tenacity
		i(117730),	-- Tournament Gladiator's Insignia of Conquest
		i(117931),	-- Tournament Gladiator's Insignia of Conquest
		i(117936),	-- Tournament Gladiator's Insignia of Dominance
		i(117735),	-- Tournament Gladiator's Insignia of Dominance
		i(117740),	-- Tournament Gladiator's Insignia of Victory
		i(117941),	-- Tournament Gladiator's Insignia of Victory
		i(126941),	-- Tournament Gladiator's Accolade of Conquest
		i(126942),	-- Tournament Gladiator's Accolade of Dominance
		i(126945),	-- Tournament Gladiator's Accolade of Endurance
		i(126944),	-- Tournament Gladiator's Accolade of Meditation
		i(126943),	-- Tournament Gladiator's Accolade of Victory
		i(117710),	-- Tournament Gladiator's Bonegrinder
		i(117911),	-- Tournament Gladiator's Bonegrinder
		i(117609),	-- Tournament Gladiator's Dreadplate Chestpiece
		i(117610),	-- Tournament Gladiator's Dreadplate Gauntlets
		i(117611),	-- Tournament Gladiator's Dreadplate Helm
		i(117612),	-- Tournament Gladiator's Dreadplate Legguards
		i(117613),	-- Tournament Gladiator's Dreadplate Shoulders
		i(117676),	-- Tournament Gladiator's Scaled Chestpiece
		i(117677),	-- Tournament Gladiator's Scaled Gauntlets
		i(117678),	-- Tournament Gladiator's Scaled Helm
		i(117679),	-- Tournament Gladiator's Scaled Legguards
		i(117680),	-- Tournament Gladiator's Scaled Shoulders
		i(117681),	-- Tournament Gladiator's Girdle of Cruelty
		i(117682),	-- Tournament Gladiator's Girdle of Prowess
		i(117683),	-- Tournament Gladiator's Girdle of Victory
		i(117684),	-- Tournament Gladiator's Warboots of Cruelty
		i(117685),	-- Tournament Gladiator's Warboots of Prowess
		i(117686),	-- Tournament Gladiator's Warboots of Victory
		i(117687),	-- Tournament Gladiator's Armplates of Cruelty
		i(117688),	-- Tournament Gladiator's Armplates of Prowess
		i(117689),	-- Tournament Gladiator's Armplates of Victory
		i(117716),	-- Tournament Gladiator's Plate Breastplate
		i(117717),	-- Tournament Gladiator's Plate Gloves
		i(117718),	-- Tournament Gladiator's Plate Helmet
		i(117719),	-- Tournament Gladiator's Legplates
		i(117720),	-- Tournament Gladiator's Shoulderplates
		i(117721),	-- Tournament Gladiator's Plate Chestguard
		i(117722),	-- Tournament Gladiator's Plate Grips
		i(117723),	-- Tournament Gladiator's Plate Visor
		i(117724),	-- Tournament Gladiator's Plate Leggings
		i(117725),	-- Tournament Gladiator's Plate Pauldrons
		i(117746),	-- Tournament Gladiator's Plate Chestpiece
		i(117747),	-- Tournament Gladiator's Plate Gauntlets
		i(117748),	-- Tournament Gladiator's Plate Helm
		i(117749),	-- Tournament Gladiator's Plate Legguards
		i(117750),	-- Tournament Gladiator's Plate Shoulders
		i(117810),	-- Tournament Gladiator's Dreadplate Chestpiece
		i(117811),	-- Tournament Gladiator's Dreadplate Gauntlets
		i(117812),	-- Tournament Gladiator's Dreadplate Helm
		i(117813),	-- Tournament Gladiator's Dreadplate Legguards
		i(117814),	-- Tournament Gladiator's Dreadplate Shoulders
		i(117877),	-- Tournament Gladiator's Scaled Chestpiece
		i(117878),	-- Tournament Gladiator's Scaled Gauntlets
		i(117879),	-- Tournament Gladiator's Scaled Helm
		i(117880),	-- Tournament Gladiator's Scaled Legguards
		i(117881),	-- Tournament Gladiator's Scaled Shoulders
		i(117882),	-- Tournament Gladiator's Girdle of Cruelty
		i(117883),	-- Tournament Gladiator's Girdle of Prowess
		i(117884),	-- Tournament Gladiator's Girdle of Victory
		i(117885),	-- Tournament Gladiator's Warboots of Cruelty
		i(117886),	-- Tournament Gladiator's Warboots of Prowess
		i(117887),	-- Tournament Gladiator's Warboots of Victory
		i(117888),	-- Tournament Gladiator's Armplates of Cruelty
		i(117889),	-- Tournament Gladiator's Armplates of Prowess
		i(117890),	-- Tournament Gladiator's Armplates of Victory
		i(117917),	-- Tournament Gladiator's Plate Breastplate
		i(117918),	-- Tournament Gladiator's Plate Gloves
		i(117919),	-- Tournament Gladiator's Plate Helmet
		i(117920),	-- Tournament Gladiator's Legplates
		i(117921),	-- Tournament Gladiator's Shoulderplates
		i(117922),	-- Tournament Gladiator's Plate Chestguard
		i(117923),	-- Tournament Gladiator's Plate Grips
		i(117924),	-- Tournament Gladiator's Plate Visor
		i(117925),	-- Tournament Gladiator's Plate Leggings
		i(117926),	-- Tournament Gladiator's Plate Pauldrons
		i(117947),	-- Tournament Gladiator's Plate Chestpiece
		i(117948),	-- Tournament Gladiator's Plate Gauntlets
		i(117949),	-- Tournament Gladiator's Plate Helm
		i(117950),	-- Tournament Gladiator's Plate Legguards
		i(117951),	-- Tournament Gladiator's Plate Shoulders
		i(117578),	-- Tournament Gladiator's Quickblade
		i(117626),	-- Tournament Gladiator's Mageblade
		i(117708),	-- Tournament Gladiator's Slicer
		i(117779),	-- Tournament Gladiator's Quickblade
		i(117827),	-- Tournament Gladiator's Mageblade
		i(117909),	-- Tournament Gladiator's Slicer
		i(117584),	-- Tournament Gladiator's Cape of Cruelty
		i(117585),	-- Tournament Gladiator's Cape of Prowess
		i(117631),	-- Tournament Gladiator's Drape of Cruelty
		i(117632),	-- Tournament Gladiator's Drape of Prowess
		i(117633),	-- Tournament Gladiator's Drape of Meditation
		i(117634),	-- Tournament Gladiator's Drape of Contemplation
		i(117712),	-- Tournament Gladiator's Cloak of Cruelty
		i(117713),	-- Tournament Gladiator's Cloak of Prowess
		i(117785),	-- Tournament Gladiator's Cape of Cruelty
		i(117786),	-- Tournament Gladiator's Cape of Prowess
		i(117832),	-- Tournament Gladiator's Drape of Cruelty
		i(117833),	-- Tournament Gladiator's Drape of Prowess
		i(117834),	-- Tournament Gladiator's Drape of Meditation
		i(117835),	-- Tournament Gladiator's Drape of Contemplation
		i(117913),	-- Tournament Gladiator's Cloak of Cruelty
		i(117914),	-- Tournament Gladiator's Cloak of Prowess
		i(120101),	-- Tournament Gladiator's Cloak of Endurance
		i(120102),	-- Tournament Gladiator's Cloak of Endurance
		i(117588),	-- Tournament Gladiator's Ring of Cruelty
		i(117589),	-- Tournament Gladiator's Ring of Prowess
		i(117641),	-- Tournament Gladiator's Band of Cruelty
		i(117642),	-- Tournament Gladiator's Band of Prowess
		i(117643),	-- Tournament Gladiator's Band of Victory
		i(117644),	-- Tournament Gladiator's Band of Meditation
		i(117645),	-- Tournament Gladiator's Band of Contemplation
		i(117726),	-- Tournament Gladiator's Signet of Cruelty
		i(117727),	-- Tournament Gladiator's Signet of Accuracy
		i(117751),	-- Tournament Gladiator's Ring of Triumph
		i(117752),	-- Tournament Gladiator's Signet of Ruthlessness
		i(117789),	-- Tournament Gladiator's Ring of Cruelty
		i(117790),	-- Tournament Gladiator's Ring of Prowess
		i(117842),	-- Tournament Gladiator's Band of Cruelty
		i(117843),	-- Tournament Gladiator's Band of Prowess
		i(117844),	-- Tournament Gladiator's Band of Victory
		i(117845),	-- Tournament Gladiator's Band of Meditation
		i(117846),	-- Tournament Gladiator's Band of Contemplation
		i(117927),	-- Tournament Gladiator's Signet of Cruelty
		i(117928),	-- Tournament Gladiator's Signet of Accuracy
		i(117952),	-- Tournament Gladiator's Ring of Triumph
		i(117953),	-- Tournament Gladiator's Signet of Ruthlessness
		i(120105),	-- Tournament Gladiator's Signet of Endurance
		i(120106),	-- Tournament Gladiator's Signet of Endurance
		i(117614),	-- Tournament Gladiator's Dragonhide Gloves
		i(117615),	-- Tournament Gladiator's Dragonhide Helm
		i(117616),	-- Tournament Gladiator's Dragonhide Legguards
		i(117617),	-- Tournament Gladiator's Dragonhide Robes
		i(117618),	-- Tournament Gladiator's Dragonhide Spaulders
		i(117648),	-- Tournament Gladiator's Belt of Prowess
		i(117649),	-- Tournament Gladiator's Belt of Cruelty
		i(117650),	-- Tournament Gladiator's Belt of Victory
		i(117651),	-- Tournament Gladiator's Boots of Cruelty
		i(117652),	-- Tournament Gladiator's Boots of Prowess
		i(117653),	-- Tournament Gladiator's Boots of Victory
		i(117654),	-- Tournament Gladiator's Bindings of Cruelty
		i(117655),	-- Tournament Gladiator's Bindings of Prowess
		i(117656),	-- Tournament Gladiator's Bindings of Victory
		i(117671),	-- Tournament Gladiator's Ironskin Gloves
		i(117672),	-- Tournament Gladiator's Ironskin Helm
		i(117673),	-- Tournament Gladiator's Ironskin Legguards
		i(117674),	-- Tournament Gladiator's Ironskin Spaulders
		i(117675),	-- Tournament Gladiator's Ironskin Tunic
		i(117695),	-- Tournament Gladiator's Leather Tunic
		i(117696),	-- Tournament Gladiator's Leather Gloves
		i(117697),	-- Tournament Gladiator's Leather Helm
		i(117698),	-- Tournament Gladiator's Leather Legguards
		i(117699),	-- Tournament Gladiator's Leather Spaulders
		i(117753),	-- Tournament Gladiator's Tunic
		i(117754),	-- Tournament Gladiator's Gloves
		i(117755),	-- Tournament Gladiator's Helm
		i(117756),	-- Tournament Gladiator's Legguards
		i(117757),	-- Tournament Gladiator's Spaulders
		i(117763),	-- Tournament Gladiator's Chestguard
		i(117764),	-- Tournament Gladiator's Grips
		i(117765),	-- Tournament Gladiator's Headcover
		i(117766),	-- Tournament Gladiator's Leggings
		i(117767),	-- Tournament Gladiator's Pauldrons
		i(117815),	-- Tournament Gladiator's Dragonhide Gloves
		i(117816),	-- Tournament Gladiator's Dragonhide Helm
		i(117817),	-- Tournament Gladiator's Dragonhide Legguards
		i(117818),	-- Tournament Gladiator's Dragonhide Robes
		i(117819),	-- Tournament Gladiator's Dragonhide Spaulders
		i(117849),	-- Tournament Gladiator's Belt of Prowess
		i(117850),	-- Tournament Gladiator's Belt of Cruelty
		i(117851),	-- Tournament Gladiator's Belt of Victory
		i(117852),	-- Tournament Gladiator's Boots of Cruelty
		i(117853),	-- Tournament Gladiator's Boots of Prowess
		i(117854),	-- Tournament Gladiator's Boots of Victory
		i(117855),	-- Tournament Gladiator's Bindings of Cruelty
		i(117856),	-- Tournament Gladiator's Bindings of Prowess
		i(117857),	-- Tournament Gladiator's Bindings of Victory
		i(117872),	-- Tournament Gladiator's Ironskin Gloves
		i(117873),	-- Tournament Gladiator's Ironskin Helm
		i(117874),	-- Tournament Gladiator's Ironskin Legguards
		i(117875),	-- Tournament Gladiator's Ironskin Spaulders
		i(117876),	-- Tournament Gladiator's Ironskin Tunic
		i(117896),	-- Tournament Gladiator's Leather Tunic
		i(117897),	-- Tournament Gladiator's Leather Gloves
		i(117898),	-- Tournament Gladiator's Leather Helm
		i(117899),	-- Tournament Gladiator's Leather Legguards
		i(117900),	-- Tournament Gladiator's Leather Spaulders
		i(117954),	-- Tournament Gladiator's Tunic
		i(117955),	-- Tournament Gladiator's Gloves
		i(117956),	-- Tournament Gladiator's Helm
		i(117957),	-- Tournament Gladiator's Legguards
		i(117958),	-- Tournament Gladiator's Spaulders
		i(117964),	-- Tournament Gladiator's Chestguard
		i(117965),	-- Tournament Gladiator's Grips
		i(117966),	-- Tournament Gladiator's Headcover
		i(117967),	-- Tournament Gladiator's Leggings
		i(117968),	-- Tournament Gladiator's Pauldrons
		i(117583),	-- Tournament Gladiator's Staff
		i(117629),	-- Tournament Gladiator's Battle Staff
		i(117630),	-- Tournament Gladiator's Energy Staff
		i(117784),	-- Tournament Gladiator's Staff
		i(117830),	-- Tournament Gladiator's Battle Staff
		i(117831),	-- Tournament Gladiator's Energy Staff
		i(117582),	-- Tournament Gladiator's Pike
		i(117783),	-- Tournament Gladiator's Pike
		i(117619),	-- Tournament Gladiator's Chain Armor
		i(117620),	-- Tournament Gladiator's Chain Gauntlets
		i(117621),	-- Tournament Gladiator's Chain Helm
		i(117622),	-- Tournament Gladiator's Chain Leggings
		i(117623),	-- Tournament Gladiator's Chain Spaulders
		i(117662),	-- Tournament Gladiator's Waistguard of Cruelty
		i(117663),	-- Tournament Gladiator's Waistguard of Prowess
		i(117664),	-- Tournament Gladiator's Waistguard of Victory
		i(117665),	-- Tournament Gladiator's Footguards of Cruelty
		i(117666),	-- Tournament Gladiator's Footguards of Prowess
		i(117667),	-- Tournament Gladiator's Footguards of Victory
		i(117668),	-- Tournament Gladiator's Armbands of Prowess
		i(117669),	-- Tournament Gladiator's Armbands of Cruelty
		i(117670),	-- Tournament Gladiator's Armbands of Victory
		i(117700),	-- Tournament Gladiator's Ringmail Armor
		i(117701),	-- Tournament Gladiator's Ringmail Gauntlets
		i(117702),	-- Tournament Gladiator's Ringmail Helm
		i(117703),	-- Tournament Gladiator's Ringmail Leggings
		i(117704),	-- Tournament Gladiator's Ringmail Spaulders
		i(117758),	-- Tournament Gladiator's Armor
		i(117759),	-- Tournament Gladiator's Gauntlets
		i(117760),	-- Tournament Gladiator's Helm
		i(117761),	-- Tournament Gladiator's Leggings
		i(117762),	-- Tournament Gladiator's Spaulders
		i(117768),	-- Tournament Gladiator's Chestguard
		i(117769),	-- Tournament Gladiator's Gloves
		i(117770),	-- Tournament Gladiator's Coif
		i(117771),	-- Tournament Gladiator's Leggings
		i(117772),	-- Tournament Gladiator's Pauldrons
		i(117820),	-- Tournament Gladiator's Chain Armor
		i(117821),	-- Tournament Gladiator's Chain Gauntlets
		i(117822),	-- Tournament Gladiator's Chain Helm
		i(117823),	-- Tournament Gladiator's Chain Leggings
		i(117824),	-- Tournament Gladiator's Chain Spaulders
		i(117863),	-- Tournament Gladiator's Waistguard of Cruelty
		i(117864),	-- Tournament Gladiator's Waistguard of Prowess
		i(117865),	-- Tournament Gladiator's Waistguard of Victory
		i(117866),	-- Tournament Gladiator's Footguards of Cruelty
		i(117867),	-- Tournament Gladiator's Footguards of Prowess
		i(117868),	-- Tournament Gladiator's Footguards of Victory
		i(117869),	-- Tournament Gladiator's Armbands of Prowess
		i(117870),	-- Tournament Gladiator's Armbands of Cruelty
		i(117871),	-- Tournament Gladiator's Armbands of Victory
		i(117901),	-- Tournament Gladiator's Ringmail Armor
		i(117902),	-- Tournament Gladiator's Ringmail Gauntlets
		i(117903),	-- Tournament Gladiator's Ringmail Helm
		i(117904),	-- Tournament Gladiator's Ringmail Leggings
		i(117905),	-- Tournament Gladiator's Ringmail Spaulders
		i(117959),	-- Tournament Gladiator's Armor
		i(117960),	-- Tournament Gladiator's Gauntlets
		i(117961),	-- Tournament Gladiator's Helm
		i(117962),	-- Tournament Gladiator's Leggings
		i(117963),	-- Tournament Gladiator's Spaulders
		i(117969),	-- Tournament Gladiator's Chestguard
		i(117970),	-- Tournament Gladiator's Gloves
		i(117971),	-- Tournament Gladiator's Coif
		i(117972),	-- Tournament Gladiator's Leggings
		i(117973),	-- Tournament Gladiator's Pauldrons
		i(117581),	-- Tournament Gladiator's Rifle
		i(117782),	-- Tournament Gladiator's Rifle
		i(117590),	-- Tournament Gladiator's Gloves of Prowess
		i(117591),	-- Tournament Gladiator's Hood of Prowess
		i(117592),	-- Tournament Gladiator's Leggings of Prowess
		i(117593),	-- Tournament Gladiator's Robes of Prowess
		i(117594),	-- Tournament Gladiator's Amice of Prowess
		i(117595),	-- Tournament Gladiator's Handguards of Cruelty
		i(117596),	-- Tournament Gladiator's Cowl of Cruelty
		i(117597),	-- Tournament Gladiator's Trousers of Cruelty
		i(117598),	-- Tournament Gladiator's Raiment of Cruelty
		i(117599),	-- Tournament Gladiator's Mantle of Cruelty
		i(117600),	-- Tournament Gladiator's Cord of Cruelty
		i(117601),	-- Tournament Gladiator's Cord of Prowess
		i(117602),	-- Tournament Gladiator's Cord of Victory
		i(117603),	-- Tournament Gladiator's Treads of Cruelty
		i(117604),	-- Tournament Gladiator's Treads of Prowess
		i(117605),	-- Tournament Gladiator's Treads of Victory
		i(117606),	-- Tournament Gladiator's Cuffs of Prowess
		i(117607),	-- Tournament Gladiator's Cuffs of Cruelty
		i(117608),	-- Tournament Gladiator's Cuffs of Victory
		i(117657),	-- Tournament Gladiator's Silk Handguards
		i(117658),	-- Tournament Gladiator's Silk Cowl
		i(117659),	-- Tournament Gladiator's Silk Trousers
		i(117660),	-- Tournament Gladiator's Silk Robe
		i(117661),	-- Tournament Gladiator's Silk Amice
		i(117690),	-- Tournament Gladiator's Satin Gloves
		i(117691),	-- Tournament Gladiator's Satin Hood
		i(117692),	-- Tournament Gladiator's Satin Leggings
		i(117693),	-- Tournament Gladiator's Satin Robe
		i(117694),	-- Tournament Gladiator's Satin Mantle
		i(117741),	-- Tournament Gladiator's Felweave Handguards
		i(117742),	-- Tournament Gladiator's Felweave Cowl
		i(117743),	-- Tournament Gladiator's Felweave Trousers
		i(117744),	-- Tournament Gladiator's Felweave Raiment
		i(117745),	-- Tournament Gladiator's Felweave Amice
		i(117791),	-- Tournament Gladiator's Gloves of Prowess
		i(117792),	-- Tournament Gladiator's Hood of Prowess
		i(117793),	-- Tournament Gladiator's Leggings of Prowess
		i(117794),	-- Tournament Gladiator's Robes of Prowess
		i(117795),	-- Tournament Gladiator's Amice of Prowess
		i(117796),	-- Tournament Gladiator's Handguards of Cruelty
		i(117797),	-- Tournament Gladiator's Cowl of Cruelty
		i(117798),	-- Tournament Gladiator's Trousers of Cruelty
		i(117799),	-- Tournament Gladiator's Raiment of Cruelty
		i(117800),	-- Tournament Gladiator's Mantle of Cruelty
		i(117801),	-- Tournament Gladiator's Cord of Cruelty
		i(117802),	-- Tournament Gladiator's Cord of Prowess
		i(117803),	-- Tournament Gladiator's Cord of Victory
		i(117804),	-- Tournament Gladiator's Treads of Cruelty
		i(117805),	-- Tournament Gladiator's Treads of Prowess
		i(117806),	-- Tournament Gladiator's Treads of Victory
		i(117807),	-- Tournament Gladiator's Cuffs of Prowess
		i(117808),	-- Tournament Gladiator's Cuffs of Cruelty
		i(117809),	-- Tournament Gladiator's Cuffs of Victory
		i(117858),	-- Tournament Gladiator's Silk Handguards
		i(117859),	-- Tournament Gladiator's Silk Cowl
		i(117860),	-- Tournament Gladiator's Silk Trousers
		i(117861),	-- Tournament Gladiator's Silk Robe
		i(117862),	-- Tournament Gladiator's Silk Amice
		i(117891),	-- Tournament Gladiator's Satin Gloves
		i(117892),	-- Tournament Gladiator's Satin Hood
		i(117893),	-- Tournament Gladiator's Satin Leggings
		i(117894),	-- Tournament Gladiator's Satin Robe
		i(117895),	-- Tournament Gladiator's Satin Mantle
		i(117942),	-- Tournament Gladiator's Felweave Handguards
		i(117943),	-- Tournament Gladiator's Felweave Cowl
		i(117944),	-- Tournament Gladiator's Felweave Trousers
		i(117945),	-- Tournament Gladiator's Felweave Raiment
		i(117946),	-- Tournament Gladiator's Felweave Amice
		i(117627),	-- Tournament Gladiator's Baton of Light
		i(117628),	-- Tournament Gladiator's Touch of Defeat
		i(117828),	-- Tournament Gladiator's Baton of Light
		i(117829),	-- Tournament Gladiator's Touch of Defeat
		i(117577),	-- Tournament Gladiator's Pummeler
		i(117625),	-- Tournament Gladiator's Gavel
		i(117707),	-- Tournament Gladiator's Bonecracker
		i(117778),	-- Tournament Gladiator's Pummeler
		i(117826),	-- Tournament Gladiator's Gavel
		i(117908),	-- Tournament Gladiator's Bonecracker
		i(117646),	-- Tournament Gladiator's Redoubt
		i(117647),	-- Tournament Gladiator's Barrier
		i(117728),	-- Tournament Gladiator's Shield Wall
		i(117847),	-- Tournament Gladiator's Redoubt
		i(117848),	-- Tournament Gladiator's Barrier
		i(117929),	-- Tournament Gladiator's Shield Wall
		i(117711),	-- Tournament Gladiator's Greatsword
		i(117912),	-- Tournament Gladiator's Greatsword
		i(117575),	-- Tournament Gladiator's Shanker
		i(117624),	-- Tournament Gladiator's Spellblade
		i(117776),	-- Tournament Gladiator's Shanker
		i(117825),	-- Tournament Gladiator's Spellblade
		i(117580),	-- Tournament Gladiator's Heavy Crossbow
		i(117781),	-- Tournament Gladiator's Heavy Crossbow
		i(117709),	-- Tournament Gladiator's Decapitator
		i(117910),	-- Tournament Gladiator's Decapitator
		i(117705),	-- Tournament Gladiator's Hacker
		i(117775),	-- Tournament Gladiator's Cleaver
		i(117906),	-- Tournament Gladiator's Hacker
		i(117579),	-- Tournament Gladiator's Longbow
		i(117780),	-- Tournament Gladiator's Longbow
		i(117639),	-- Tournament Gladiator's Endgame
		i(117640),	-- Tournament Gladiator's Reprieve
		i(117840),	-- Tournament Gladiator's Endgame
		i(117841),	-- Tournament Gladiator's Reprieve
		i(117576),	-- Tournament Gladiator's Ripper
		i(117706),	-- Tournament Gladiator's Render
		i(117777),	-- Tournament Gladiator's Ripper
		i(117907),	-- Tournament Gladiator's Render
	},
})));
