-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CATA, {
	applyclassicphase(CATA_PHASE_ONE, inst(75, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 }, }, {	-- Baradin Hold
		["mapID"] = 282,
		["coord"] = { 46.1, 47.9, TOL_BARAD },
		["sharedLockout"] = 1,
		["isRaid"] = true,
		["lvl"] = 85,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, ach(5425, {	-- Baradin Hold Guild Run
					crit(15480, {	-- Argaloth
						["_npcs"] = { 47120 },	-- Argaloth
					}),
					crit(18478, {	-- Occu'thar
						["_npcs"] = { 52363 },	-- Occu'thar
					}),
					crit(18479, {	-- Alizabal, Mistress of Hate
						["_npcs"] = { 55869 },	-- Alizabal, Mistress of Hate
					}),
				})),
			}),
			applyclassicphase(CATA_PHASE_ONE, e(139, {	-- Argaloth
				["creatureID"] = 47120,
				["groups"] = {
					ach(5416),	-- Pit Lord Argaloth
					i(60673),	-- Vicious Gladiator's Choker of Accuracy
					i(60670),	-- Vicious Gladiator's Choker of Proficiency
					i(60669),	-- Vicious Gladiator's Necklace of Proficiency
					i(60668),	-- Vicious Gladiator's Necklace of Prowess
					i(60662),	-- Vicious Gladiator's Pendant of Alacrity
					i(60661),	-- Vicious Gladiator's Pendant of Diffusion
					i(60664),	-- Vicious Gladiator's Pendant of Meditation
					i(60783),	-- Vicious Gladiator's Cape of Cruelty
					i(60779),	-- Vicious Gladiator's Cape of Prowess
					i(60776),	-- Vicious Gladiator's Cloak of Alacrity
					i(60778),	-- Vicious Gladiator's Cloak of Prowess
					i(60786),	-- Vicious Gladiator's Drape of Diffusion
					i(60788),	-- Vicious Gladiator's Drape of Meditation
					i(60787),	-- Vicious Gladiator's Drape of Prowess
					i(60628),	-- Vicious Gladiator's Cuffs of Accuracy
					i(60634),	-- Vicious Gladiator's Cuffs of Prowess
					i(60326),	-- Earthen Gauntlets
					i(60332),	-- Earthen Handguards
					i(60247),	-- Firelord's Gloves
					i(60314),	-- Gloves of the Raging Elements
					i(60319),	-- Grips of the Raging Elements
					i(60312),	-- Handwraps of the Raging Elements
					i(60307),	-- Lightning-Charged Gloves
					i(60340),	-- Magma Plated Gauntlets
					i(60350),	-- Magma Plated Handguards
					i(60257),	-- Mercurial Gloves
					i(60275),	-- Mercurial Handwraps
					i(60345),	-- Reinforced Sapphirium Gauntlets
					i(60363),	-- Reinforced Sapphirium Gloves
					i(60355),	-- Reinforced Sapphirium Handguards
					i(60248),	-- Shadowflame Handwraps
					i(60285),	-- Stormrider's Gloves
					i(60290),	-- Stormrider's Grips
					i(60280),	-- Stormrider's Handwraps
					i(60424),	-- Vicious Gladiator's Chain Gauntlets
					i(60443),	-- Vicious Gladiator's Dragonhide Gloves
					i(60409),	-- Vicious Gladiator's Dreadplate Gauntlets
					i(60478),	-- Vicious Gladiator's Felweave Handguards
					i(60448),	-- Vicious Gladiator's Kodohide Gloves
					i(60459),	-- Vicious Gladiator's Leather Gloves
					i(60434),	-- Vicious Gladiator's Linked Gauntlets
					i(60439),	-- Vicious Gladiator's Mail Gauntlets
					i(60468),	-- Vicious Gladiator's Mooncloth Gloves
					i(60602),	-- Vicious Gladiator's Ornamented Gloves
					i(60419),	-- Vicious Gladiator's Plate Gauntlets
					i(60429),	-- Vicious Gladiator's Ringmail Gauntlets
					i(60473),	-- Vicious Gladiator's Satin Gloves
					i(60414),	-- Vicious Gladiator's Scaled Gauntlets
					i(60463),	-- Vicious Gladiator's Silk Handguards
					i(60453),	-- Vicious Gladiator's Wyrmhide Gloves
					i(60298),	-- Wind Dancer's Gloves
					i(60583),	-- Vicious Gladiator's Belt of Cruelty
					i(60580),	-- Vicious Gladiator's Belt of Meditation
					i(60505),	-- Vicious Gladiator's Clasp of Cruelty
					i(60539),	-- Vicious Gladiator's Clasp of Meditation
					i(60626),	-- Vicious Gladiator's Cord of Accuracy
					i(60612),	-- Vicious Gladiator's Cord of Cruelty
					i(60637),	-- Vicious Gladiator's Cord of Meditation
					i(60508),	-- Vicious Gladiator's Girdle of Cruelty
					i(60521),	-- Vicious Gladiator's Girdle of Prowess
					i(60564),	-- Vicious Gladiator's Links of Accuracy
					i(60555),	-- Vicious Gladiator's Links of Cruelty
					i(60589),	-- Vicious Gladiator's Waistband of Accuracy
					i(60586),	-- Vicious Gladiator's Waistband of Cruelty
					i(60536),	-- Vicious Gladiator's Waistguard of Cruelty
					i(60533),	-- Vicious Gladiator's Waistguard of Meditation
					i(60330),	-- Earthen Legguards
					i(60324),	-- Earthen Legplates
					i(60245),	-- Firelord's Leggings
					i(60316),	-- Kilt of the Raging Elements
					i(60321),	-- Legguards of the Raging Elements
					i(60310),	-- Legwraps of the Raging Elements
					i(60305),	-- Lightning-Charged Legguards
					i(60352),	-- Magma Plated Legguards
					i(60342),	-- Magma Plated Legplates
					i(60255),	-- Mercurial Leggings
					i(60261),	-- Mercurial Legwraps
					i(60361),	-- Reinforced Sapphirium Greaves
					i(60357),	-- Reinforced Sapphirium Legguards
					i(60347),	-- Reinforced Sapphirium Legplates
					i(60250),	-- Shadowflame Leggings
					i(60283),	-- Stormrider's Leggings
					i(60288),	-- Stormrider's Legguards
					i(60278),	-- Stormrider's Legwraps
					i(60426),	-- Vicious Gladiator's Chain Leggings
					i(60445),	-- Vicious Gladiator's Dragonhide Legguards
					i(60411),	-- Vicious Gladiator's Dreadplate Legguards
					i(60480),	-- Vicious Gladiator's Felweave Trousers
					i(60450),	-- Vicious Gladiator's Kodohide Legguards
					i(60461),	-- Vicious Gladiator's Leather Legguards
					i(60436),	-- Vicious Gladiator's Linked Leggings
					i(60441),	-- Vicious Gladiator's Mail Leggings
					i(60470),	-- Vicious Gladiator's Mooncloth Leggings
					i(60604),	-- Vicious Gladiator's Ornamented Legplates
					i(60421),	-- Vicious Gladiator's Plate Legguards
					i(60431),	-- Vicious Gladiator's Ringmail Leggings
					i(60475),	-- Vicious Gladiator's Satin Leggings
					i(60416),	-- Vicious Gladiator's Scaled Legguards
					i(60465),	-- Vicious Gladiator's Silk Trousers
					i(60455),	-- Vicious Gladiator's Wyrmhide Legguards
					i(60300),	-- Wind Dancer's Legguards
					i(60593),	-- Vicious Gladiator's Boots of Alacrity
					i(60587),	-- Vicious Gladiator's Boots of Cruelty
					i(60607),	-- Vicious Gladiator's Footguards of Alacrity
					i(60581),	-- Vicious Gladiator's Footguards of Meditation
					i(60516),	-- Vicious Gladiator's Greaves of Alacrity
					i(60540),	-- Vicious Gladiator's Greaves of Meditation
					i(60567),	-- Vicious Gladiator's Sabatons of Alacrity
					i(60557),	-- Vicious Gladiator's Sabatons of Alacrity
					i(60554),	-- Vicious Gladiator's Sabatons of Cruelty
					i(60534),	-- Vicious Gladiator's Sabatons of Meditation
					i(60630),	-- Vicious Gladiator's Treads of Alacrity
					i(60613),	-- Vicious Gladiator's Treads of Cruelty
					i(60636),	-- Vicious Gladiator's Treads of Meditation
					i(60513),	-- Vicious Gladiator's Warboots of Alacrity
					i(60509),	-- Vicious Gladiator's Warboots of Cruelty
					i(60647),	-- Vicious Gladiator's Band of Accuracy
					i(60645),	-- Vicious Gladiator's Band of Cruelty
					i(60649),	-- Vicious Gladiator's Band of Meditation
					i(60658),	-- Vicious Gladiator's Ring of Accuracy
					i(60659),	-- Vicious Gladiator's Ring of Cruelty
					i(60651),	-- Vicious Gladiator's Signet of Accuracy
					i(60650),	-- Vicious Gladiator's Signet of Cruelty
					i(61033),	-- Vicious Gladiator's Badge of Conquest
					i(61026),	-- Vicious Gladiator's Emblem of Cruelty
					i(61031),	-- Vicious Gladiator's Emblem of Meditation
					i(61032),	-- Vicious Gladiator's Emblem of Tenacity
					i(61047),	-- Vicious Gladiator's Insignia of Conquest
					i(61045),	-- Vicious Gladiator's Insignia of Dominance (not in Dungeon Journal)
					i(61046),	-- Vicious Gladiator's Insignia of Victory (not in Dungeon Journal)
					a(i(60794)),	-- Vicious Gladiator's Medallion of Cruelty (Alliance)
					h(i(60801)),	-- Vicious Gladiator's Medallion of Cruelty (Horde)
					a(i(60799)),	-- Vicious Gladiator's Medallion of Meditation (Alliance)
					h(i(60806)),	-- Vicious Gladiator's Medallion of Meditation (Horde)
					a(i(60800)),	-- Vicious Gladiator's Medallion of Tenacity (Alliance)
					h(i(60807)),	-- Vicious Gladiator's Medallion of Tenacity (Horde)
				},
			})),
			applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, e(339, bubbleDownSelf({ ["timeline"] = { ADDED_4_3_0 }, }, {	-- Alizabal, Mistress of Hate
				["creatureID"] = 55869,
				["groups"] = {
					ach(6108),	-- Alizabal
					i(73493),	-- Cataclysmic Gladiator's Choker of Proficiency
					i(73492),	-- Cataclysmic Gladiator's Choker of Prowess
					i(73645),	-- Cataclysmic Gladiator's Necklace of Proficiency
					i(73644),	-- Cataclysmic Gladiator's Necklace of Prowess
					i(73627),	-- Cataclysmic Gladiator's Pendant of Alacrity
					i(73626),	-- Cataclysmic Gladiator's Pendant of Diffusion
					i(73625),	-- Cataclysmic Gladiator's Pendant of Meditation
					i(73647),	-- Cataclysmic Gladiator's Cape of Cruelty
					i(73646),	-- Cataclysmic Gladiator's Cape of Prowess
					i(73495),	-- Cataclysmic Gladiator's Cloak of Alacrity
					i(73494),	-- Cataclysmic Gladiator's Cloak of Prowess
					i(73629),	-- Cataclysmic Gladiator's Drape of Diffusion
					i(73628),	-- Cataclysmic Gladiator's Drape of Meditation
					i(73630),	-- Cataclysmic Gladiator's Drape of Prowess
					i(73518),	-- Cataclysmic Gladiator's Armbands of Meditation
					i(73519),	-- Cataclysmic Gladiator's Armbands of Prowess
					i(73550),	-- Cataclysmic Gladiator's Armplates of Alacrity
					i(73551),	-- Cataclysmic Gladiator's Armplates of Proficiency
					i(73528),	-- Cataclysmic Gladiator's Armwraps of Accuracy
					i(73529),	-- Cataclysmic Gladiator's Armwraps of Alacrity
					i(73608),	-- Cataclysmic Gladiator's Bindings of Meditation
					i(73600),	-- Cataclysmic Gladiator's Bindings of Prowess
					i(73561),	-- Cataclysmic Gladiator's Bracers of Meditation
					i(73562),	-- Cataclysmic Gladiator's Bracers of Prowess
					i(73633),	-- Cataclysmic Gladiator's Cuffs of Accuracy
					i(73631),	-- Cataclysmic Gladiator's Cuffs of Meditation
					i(73632),	-- Cataclysmic Gladiator's Cuffs of Prowess
					i(73585),	-- Cataclysmic Gladiator's Wristguards of Accuracy
					i(73586),	-- Cataclysmic Gladiator's Wristguards of Alacrity
					i(77024),	-- Blackfang Battleweave Gloves
					i(73583),	-- Cataclysmic Gladiator's Chain Gauntlets
					i(73615),	-- Cataclysmic Gladiator's Dragonhide Gloves
					i(73619),	-- Cataclysmic Gladiator's Dreadplate Gauntlets
					i(73487),	-- Cataclysmic Gladiator's Felweave Handguards
					i(73607),	-- Cataclysmic Gladiator's Kodohide Gloves
					i(73526),	-- Cataclysmic Gladiator's Leather Gloves
					i(73511),	-- Cataclysmic Gladiator's Linked Gauntlets
					i(73505),	-- Cataclysmic Gladiator's Mail Gauntlets
					i(73549),	-- Cataclysmic Gladiator's Mooncloth Gloves
					i(73559),	-- Cataclysmic Gladiator's Ornamented Gloves
					i(73481),	-- Cataclysmic Gladiator's Plate Gauntlets
					i(73516),	-- Cataclysmic Gladiator's Ringmail Gauntlets
					i(73544),	-- Cataclysmic Gladiator's Satin Gloves
					i(73570),	-- Cataclysmic Gladiator's Scaled Gauntlets
					i(73576),	-- Cataclysmic Gladiator's Silk Handguards
					i(73599),	-- Cataclysmic Gladiator's Wyrmhide Gloves
					i(76985),	-- Colossal Dragonplate Gauntlets
					i(76989),	-- Colossal Dragonplate Handguards
					i(77018),	-- Deep Earth Gloves
					i(77014),	-- Deep Earth Grips
					i(76749),	-- Deep Earth Handwraps
					i(76875),	-- Gauntlets of Radiant Glory
					i(76348),	-- Gloves of Dying Light
					i(76766),	-- Gloves of Radiant Glory
					i(76343),	-- Gloves of the Faceless Shroud
					i(77004),	-- Handguards of Radiant Glory
					i(76357),	-- Handwraps of Dying Light
					i(76975),	-- Necrotic Boneplate Gauntlets
					i(77009),	-- Necrotic Boneplate Handguards
					i(77038),	-- Spiritwalker's Gloves
					i(77041),	-- Spiritwalker's Grips
					i(76757),	-- Spiritwalker's Handwraps
					i(76212),	-- Time Lord's Gloves
					i(77029),	-- Wyrmstalker's Gloves
					i(73602),	-- Cataclysmic Gladiator's Belt of Cruelty
					i(73610),	-- Cataclysmic Gladiator's Belt of Meditation
					i(73566),	-- Cataclysmic Gladiator's Clasp of Cruelty
					i(73565),	-- Cataclysmic Gladiator's Clasp of Meditation
					i(73638),	-- Cataclysmic Gladiator's Cord of Accuracy
					i(73639),	-- Cataclysmic Gladiator's Cord of Cruelty
					i(73637),	-- Cataclysmic Gladiator's Cord of Meditation
					i(73555),	-- Cataclysmic Gladiator's Girdle of Cruelty
					i(73554),	-- Cataclysmic Gladiator's Girdle of Prowess
					i(73589),	-- Cataclysmic Gladiator's Links of Accuracy
					i(73590),	-- Cataclysmic Gladiator's Links of Cruelty
					i(73532),	-- Cataclysmic Gladiator's Waistband of Accuracy
					i(73533),	-- Cataclysmic Gladiator's Waistband of Cruelty
					i(73507),	-- Cataclysmic Gladiator's Waistguard of Cruelty
					i(73522),	-- Cataclysmic Gladiator's Waistguard of Meditation
					i(77026),	-- Blackfang Battleweave Legguards
					i(73581),	-- Cataclysmic Gladiator's Chain Leggings
					i(73613),	-- Cataclysmic Gladiator's Dragonhide Legguards
					i(73617),	-- Cataclysmic Gladiator's Dreadplate Legguards
					i(73485),	-- Cataclysmic Gladiator's Felweave Trousers
					i(73605),	-- Cataclysmic Gladiator's Kodohide Legguards
					i(73524),	-- Cataclysmic Gladiator's Leather Legguards
					i(73509),	-- Cataclysmic Gladiator's Linked Leggings
					i(73503),	-- Cataclysmic Gladiator's Mail Leggings
					i(73547),	-- Cataclysmic Gladiator's Mooncloth Leggings
					i(73557),	-- Cataclysmic Gladiator's Ornamented Legplates
					i(73479),	-- Cataclysmic Gladiator's Plate Legguards
					i(73514),	-- Cataclysmic Gladiator's Ringmail Leggings
					i(73542),	-- Cataclysmic Gladiator's Satin Leggings
					i(73568),	-- Cataclysmic Gladiator's Scaled Legguards
					i(73574),	-- Cataclysmic Gladiator's Silk Trousers
					i(73597),	-- Cataclysmic Gladiator's Wyrmhide Legguards
					i(76991),	-- Colossal Dragonplate Legguards
					i(76986),	-- Colossal Dragonplate Legplates
					i(77020),	-- Deep Earth Leggings
					i(77016),	-- Deep Earth Legguards
					i(76751),	-- Deep Earth Legwraps
					i(76768),	-- Greaves of Radiant Glory
					i(76346),	-- Leggings of Dying Light
					i(76341),	-- Leggings of the Faceless Shroud
					i(77006),	-- Legguards of Radiant Glory
					i(76877),	-- Legplates of Radiant Glory
					i(76359),	-- Legwraps of Dying Light
					i(76977),	-- Necrotic Boneplate Greaves
					i(77011),	-- Necrotic Boneplate Legguards
					i(77036),	-- Spiritwalker's Kilt
					i(77043),	-- Spiritwalker's Legguards
					i(76759),	-- Spiritwalker's Legwraps
					i(76214),	-- Time Lord's Leggings
					i(77031),	-- Wyrmstalker's Legguards
					i(73530),	-- Cataclysmic Gladiator's Boots of Alacrity
					i(73531),	-- Cataclysmic Gladiator's Boots of Cruelty
					i(73601),	-- Cataclysmic Gladiator's Footguards of Alacrity
					i(73609),	-- Cataclysmic Gladiator's Footguards of Meditation
					i(73564),	-- Cataclysmic Gladiator's Greaves of Alacrity
					i(73563),	-- Cataclysmic Gladiator's Greaves of Meditation
					i(73521),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					i(73587),	-- Cataclysmic Gladiator's Sabatons of Alacrity
					i(73588),	-- Cataclysmic Gladiator's Sabatons of Cruelty
					i(73520),	-- Cataclysmic Gladiator's Sabatons of Meditation
					i(73635),	-- Cataclysmic Gladiator's Treads of Alacrity
					i(73636),	-- Cataclysmic Gladiator's Treads of Cruelty
					i(73634),	-- Cataclysmic Gladiator's Treads of Meditation
					i(73552),	-- Cataclysmic Gladiator's Warboots of Alacrity
					i(73553),	-- Cataclysmic Gladiator's Warboots of Cruelty
					i(73622),	-- Cataclysmic Gladiator's Band of Accuracy
					i(73623),	-- Cataclysmic Gladiator's Band of Cruelty
					i(73621),	-- Cataclysmic Gladiator's Band of Meditation
					i(73640),	-- Cataclysmic Gladiator's Ring of Accuracy
					i(73641),	-- Cataclysmic Gladiator's Ring of Cruelty
					i(73488),	-- Cataclysmic Gladiator's Signet of Accuracy
					i(73489),	-- Cataclysmic Gladiator's Signet of Cruelty
					i(73648),	-- Cataclysmic Gladiator's Badge of Conquest
					i(73498),	-- Cataclysmic Gladiator's Badge of Dominance
					i(73496),	-- Cataclysmic Gladiator's Badge of Victory
					i(73593),	-- Cataclysmic Gladiator's Emblem of Cruelty
					i(73591),	-- Cataclysmic Gladiator's Emblem of Meditation
					i(73592),	-- Cataclysmic Gladiator's Emblem of Tenacity
					i(73643),	-- Cataclysmic Gladiator's Insignia of Conquest
					i(73497),	-- Cataclysmic Gladiator's Insignia of Dominance
					i(73491),	-- Cataclysmic Gladiator's Insignia of Victory
					a(i(73539)),	-- Cataclysmic Gladiator's Medallion of Cruelty (Alliance)
					h(i(73538)),	-- Cataclysmic Gladiator's Medallion of Cruelty (Horde)
					a(i(73535)),	-- Cataclysmic Gladiator's Medallion of Meditation (Alliance)
					h(i(73534)),	-- Cataclysmic Gladiator's Medallion of Meditation (Horde)
					a(i(73536)),	-- Cataclysmic Gladiator's Medallion of Tenacity (Alliance)
					h(i(73537)),	-- Cataclysmic Gladiator's Medallion of Tenacity (Horde)
				},
			}))),
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, e(140, bubbleDownSelf({ ["timeline"] = { ADDED_4_2_0 }, }, {	-- Occu'thar
				["creatureID"] = 52363,
				["groups"] = {
					ach(6045),	-- Occu'thar
					i(70382),	-- Ruthless Gladiator's Choker of Accuracy
					i(70381),	-- Ruthless Gladiator's Choker of Proficiency
					i(70380),	-- Ruthless Gladiator's Necklace of Proficiency
					i(70379),	-- Ruthless Gladiator's Necklace of Prowess
					i(70377),	-- Ruthless Gladiator's Pendant of Alacrity
					i(70376),	-- Ruthless Gladiator's Pendant of Diffusion
					i(70378),	-- Ruthless Gladiator's Pendant of Meditation
					i(70386),	-- Ruthless Gladiator's Cape of Cruelty
					i(70385),	-- Ruthless Gladiator's Cape of Prowess
					i(70383),	-- Ruthless Gladiator's Cloak of Alacrity
					i(70384),	-- Ruthless Gladiator's Cloak of Prowess
					i(70387),	-- Ruthless Gladiator's Drape of Diffusion
					i(70389),	-- Ruthless Gladiator's Drape of Meditation
					i(70388),	-- Ruthless Gladiator's Drape of Prowess
					i(70330),	-- Ruthless Gladiator's Armbands of Meditation
					i(70342),	-- Ruthless Gladiator's Armbands of Prowess
					i(70322),	-- Ruthless Gladiator's Armplates of Alacrity
					i(70327),	-- Ruthless Gladiator's Armplates of Proficiency
					i(70350),	-- Ruthless Gladiator's Armwraps of Accuracy
					i(70352),	-- Ruthless Gladiator's Armwraps of Alacrity
					i(70345),	-- Ruthless Gladiator's Bindings of Meditation
					i(70359),	-- Ruthless Gladiator's Bindings of Prowess
					i(70334),	-- Ruthless Gladiator's Bracers of Meditation
					i(70325),	-- Ruthless Gladiator's Bracers of Prowess
					i(70363),	-- Ruthless Gladiator's Cuffs of Accuracy
					i(70366),	-- Ruthless Gladiator's Cuffs of Meditation
					i(70365),	-- Ruthless Gladiator's Cuffs of Prowess
					i(70340),	-- Ruthless Gladiator's Wristguards of Accuracy
					i(70338),	-- Ruthless Gladiator's Wristguards of Alacrity
					i(71281),	-- Balespider's Handwraps
					i(71046),	-- Dark Phoenix Gloves
					i(71059),	-- Elementium Deathplate Gauntlets
					i(70953),	-- Elementium Deathplate Handguards
					i(71292),	-- Erupting Volcanic Gloves
					i(71302),	-- Erupting Volcanic Grips
					i(71297),	-- Erupting Volcanic Handwraps
					i(71286),	-- Firehawk Gloves
					i(71050),	-- Flamewaker's Gloves
					i(71069),	-- Gauntlets of the Molten Giant
					i(71276),	-- Gloves of the Cleansing Flame
					i(70943),	-- Handguards of the Molten Giant
					i(71271),	-- Handwraps of the Cleansing Flame
					i(71064),	-- Immolation Gauntlets
					i(71092),	-- Immolation Gloves
					i(70949),	-- Immolation Handguards
					i(71107),	-- Obsidian Arborweave Gloves
					i(71097),	-- Obsidian Arborweave Grips
					i(71102),	-- Obsidian Arborweave Handwraps
					i(70260),	-- Ruthless Gladiator's Chain Gauntlets
					i(70279),	-- Ruthless Gladiator's Dragonhide Gloves
					i(70245),	-- Ruthless Gladiator's Dreadplate Gauntlets
					i(70314),	-- Ruthless Gladiator's Felweave Handguards
					i(70284),	-- Ruthless Gladiator's Kodohide Gloves
					i(70295),	-- Ruthless Gladiator's Leather Gloves
					i(70270),	-- Ruthless Gladiator's Linked Gauntlets
					i(70275),	-- Ruthless Gladiator's Mail Gauntlets
					i(71304),	-- Ruthless Gladiator's Mooncloth Gloves
					i(70354),	-- Ruthless Gladiator's Ornamented Gloves
					i(70255),	-- Ruthless Gladiator's Plate Gauntlets
					i(70265),	-- Ruthless Gladiator's Ringmail Gauntlets
					i(70309),	-- Ruthless Gladiator's Satin Gloves
					i(70250),	-- Ruthless Gladiator's Scaled Gauntlets
					i(70299),	-- Ruthless Gladiator's Silk Handguards
					i(70289),	-- Ruthless Gladiator's Wyrmhide Gloves
					i(70346),	-- Ruthless Gladiator's Belt of Cruelty
					i(70343),	-- Ruthless Gladiator's Belt of Meditation
					i(70319),	-- Ruthless Gladiator's Clasp of Cruelty
					i(70332),	-- Ruthless Gladiator's Clasp of Meditation
					i(70362),	-- Ruthless Gladiator's Cord of Accuracy
					i(70360),	-- Ruthless Gladiator's Cord of Cruelty
					i(70368),	-- Ruthless Gladiator's Cord of Meditation
					i(70320),	-- Ruthless Gladiator's Girdle of Cruelty
					i(70326),	-- Ruthless Gladiator's Girdle of Prowess
					i(70339),	-- Ruthless Gladiator's Links of Accuracy
					i(70336),	-- Ruthless Gladiator's Links of Cruelty
					i(70349),	-- Ruthless Gladiator's Waistband of Accuracy
					i(70347),	-- Ruthless Gladiator's Waistband of Cruelty
					i(70331),	-- Ruthless Gladiator's Waistguard of Cruelty
					i(70328),	-- Ruthless Gladiator's Waistguard of Meditation
					i(71283),	-- Balespider's Leggings
					i(71048),	-- Dark Phoenix Legguards
					i(71061),	-- Elementium Deathplate Greaves
					i(70952),	-- Elementium Deathplate Legguards
					i(71294),	-- Erupting Volcanic Kilt
					i(70304),	-- Erupting Volcanic Legguards
					i(71299),	-- Erupting Volcanic Legwraps
					i(71288),	-- Firehawk Leggings
					i(71052),	-- Flamewaker's Legguards
					i(71094),	-- Immolation Greaves
					i(70947),	-- Immolation Legguards
					i(71066),	-- Immolation Legplates
					i(71278),	-- Leggings of the Cleansing Flame
					i(70942),	-- Legguards of the Molten Giant
					i(71071),	-- Legplates of the Molten Giant
					i(71273),	-- Legwraps of the Cleansing Flame
					i(71109),	-- Obsidian Arborweave Leggings
					i(71099),	-- Obsidian Arborweave Legguards
					i(71104),	-- Obsidian Arborweave Legwraps
					i(70262),	-- Ruthless Gladiator's Chain Leggings
					i(70281),	-- Ruthless Gladiator's Dragonhide Legguards
					i(70247),	-- Ruthless Gladiator's Dreadplate Legguards
					i(70316),	-- Ruthless Gladiator's Felweave Trousers
					i(70286),	-- Ruthless Gladiator's Kodohide Legguards
					i(70297),	-- Ruthless Gladiator's Leather Legguards
					i(70272),	-- Ruthless Gladiator's Linked Leggings
					i(70277),	-- Ruthless Gladiator's Mail Leggings
					i(70306),	-- Ruthless Gladiator's Mooncloth Legging
					i(70356),	-- Ruthless Gladiator's Ornamented Legplates
					i(70257),	-- Ruthless Gladiator's Plate Legguards
					i(70267),	-- Ruthless Gladiator's Ringmail Leggings
					i(70311),	-- Ruthless Gladiator's Satin Leggings
					i(70252),	-- Ruthless Gladiator's Scaled Legguards
					i(70301),	-- Ruthless Gladiator's Silk Trousers
					i(70291),	-- Ruthless Gladiator's Wyrmhide Legguards
					i(70351),	-- Ruthless Gladiator's Boots of Alacrity
					i(70348),	-- Ruthless Gladiator's Boots of Cruelty
					i(70358),	-- Ruthless Gladiator's Footguards of Alacrity
					i(70344),	-- Ruthless Gladiator's Footguards of Meditation
					i(70324),	-- Ruthless Gladiator's Greaves of Alacrity
					i(70333),	-- Ruthless Gladiator's Greaves of Meditation
					i(70337),	-- Ruthless Gladiator's Sabatons of Alacrity
					i(70341),	-- Ruthless Gladiator's Sabatons of Alacrity
					i(70335),	-- Ruthless Gladiator's Sabatons of Cruelty
					i(70329),	-- Ruthless Gladiator's Sabatons of Meditation
					i(70364),	-- Ruthless Gladiator's Treads of Alacrity
					i(70361),	-- Ruthless Gladiator's Treads of Cruelty
					i(70367),	-- Ruthless Gladiator's Treads of Meditation
					i(70323),	-- Ruthless Gladiator's Warboots of Alacrity
					i(70321),	-- Ruthless Gladiator's Warboots of Cruelty
					i(70370),	-- Ruthless Gladiator's Band of Accuracy
					i(70369),	-- Ruthless Gladiator's Band of Cruelty
					i(70371),	-- Ruthless Gladiator's Band of Meditation
					i(70374),	-- Ruthless Gladiator's Ring of Accuracy
					i(70375),	-- Ruthless Gladiator's Ring of Cruelty
					i(70373),	-- Ruthless Gladiator's Signet of Accuracy
					i(70372),	-- Ruthless Gladiator's Signet of Cruelty
					i(70399),	-- Ruthless Gladiator's Badge of Conquest
					i(70401),	-- Ruthless Gladiator's Badge of Dominance
					i(70400),	-- Ruthless Gladiator's Badge of Victory
					i(70396),	-- Ruthless Gladiator's Emblem of Cruelty
					i(70397),	-- Ruthless Gladiator's Emblem of Meditation
					i(70398),	-- Ruthless Gladiator's Emblem of Tenacity
					i(70404),	-- Ruthless Gladiator's Insignia of Conquest
					i(70402),	-- Ruthless Gladiator's Insignia of Dominance
					i(70403),	-- Ruthless Gladiator's Insignia of Victory
					a(i(70390)),	-- Ruthless Gladiator's Medallion of Cruelty (Alliance)
					h(i(70393)),	-- Ruthless Gladiator's Medallion of Cruelty (Horde)
					a(i(70391)),	-- Ruthless Gladiator's Medallion of Meditation (Alliance)
					h(i(70394)),	-- Ruthless Gladiator's Medallion of Meditation (Horde)
					a(i(70392)),	-- Ruthless Gladiator's Medallion of Tenacity (Alliance)
					h(i(70395)),	-- Ruthless Gladiator's Medallion of Tenacity (Horde)
				},
			}))),
		},
	}))),
}));
