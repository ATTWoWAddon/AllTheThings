-----------------------------------------------------
--       W O R L D   D R O P S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldDrops, applyclassicphase(CATA_PHASE_ONE, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
	filter(CLOAKS, {
		i(55308),	-- Moonbrook Cloak
		i(55309),	-- Swamplight Cloak
		i(55310),	-- Sishir Cloak
		i(55311),	-- Mirkfallon Cloak
		i(55312),	-- Nethander Cloak
		i(55313),	-- Mereldar Cloak
		i(55314),	-- Thondroril Cloak
		i(55315),	-- Blackwolf Cloak
		i(66883),	-- Vertigo Cloak
		i(66965),	-- Drape of Fiery Dreams
		i(66991),	-- Cloak of Rich Anger
		i(67069),	-- Shade of Death
		i(67119),	-- Thousand Bandage Drape
		i(67131),	-- Ritssyn's Ruminous Drape
		i(67134),	-- Dory's Finery
		i(67140),	-- Drape of Inimitable Fate
		i(67142),	-- Zom's Electrostatic Cloak
	}),
	filter(CLOTH, {
		i(55767),	-- Ameth'Aran Cord
		i(55740),	-- Ameth'Aran Cowl
		i(55731),	-- Ameth'Aran Handwraps
		i(55749),	-- Ameth'Aran Leggings
		i(55713),	-- Ameth'Aran Robe
		i(55722),	-- Ameth'Aran Sandals
		i(55758),	-- Ameth'Aran Shoulderpads
		i(55704),	-- Ameth'Aran Wristwraps
		i(55769),	-- Baradin Cord
		i(55742),	-- Baradin Cowl
		i(55733),	-- Baradin Handwraps
		i(55751),	-- Baradin Leggings
		i(55715),	-- Baradin Robe
		i(55724),	-- Baradin Sandals
		i(55760),	-- Baradin Shoulderpads
		i(55706),	-- Baradin Wristwraps
		i(55774),	-- Bluefen Cord
		i(55747),	-- Bluefen Cowl
		i(55738),	-- Bluefen Handwraps
		i(55756),	-- Bluefen Leggings
		i(55720),	-- Bluefen Robe
		i(55729),	-- Bluefen Sandals
		i(55765),	-- Bluefen Shoulderpads
		i(55711),	-- Bluefen Wristwraps
		i(55771),	-- Brightwood Cord
		i(55744),	-- Brightwood Cowl
		i(55735),	-- Brightwood Handwraps
		i(55753),	-- Brightwood Leggings
		i(55717),	-- Brightwood Robe
		i(55726),	-- Brightwood Sandals
		i(55762),	-- Brightwood Shoulderpads
		i(55708),	-- Brightwood Wristwraps
		i(55770),	-- Darrowmere Cord
		i(55743),	-- Darrowmere Cowl
		i(55734),	-- Darrowmere Handwraps
		i(55752),	-- Darrowmere Leggings
		i(55716),	-- Darrowmere Robe
		i(55725),	-- Darrowmere Sandals
		i(55761),	-- Darrowmere Shoulderpads
		i(55707),	-- Darrowmere Wristwraps
		i(55772),	-- Everstill Cord
		i(55745),	-- Everstill Cowl
		i(55736),	-- Everstill Handwraps
		i(55754),	-- Everstill Leggings
		i(55718),	-- Everstill Robe
		i(55727),	-- Everstill Sandals
		i(55763),	-- Everstill Shoulderpads
		i(55709),	-- Everstill Wristwraps
		i(55768),	-- Mistmantle Cord
		i(55741),	-- Mistmantle Cowl
		i(55732),	-- Mistmantle Handwraps
		i(55750),	-- Mistmantle Leggings
		i(55714),	-- Mistmantle Robe
		i(55723),	-- Mistmantle Sandals
		i(55759),	-- Mistmantle Shoulderpads
		i(55705),	-- Mistmantle Wristwraps
		i(55773),	-- Mystral Cord
		i(55746),	-- Mystral Cowl
		i(55737),	-- Mystral Handwraps
		i(55755),	-- Mystral Leggings
		i(55719),	-- Mystral Robe
		i(55728),	-- Mystral Sandals
		i(55764),	-- Mystral Shoulderpads
		i(55710),	-- Mystral Wristwraps
	}),
	filter(LEATHER, {
		i(55635),	-- Aboraz Bindings
		i(55653),	-- Aboraz Boots
		i(55680),	-- Aboraz Britches
		i(55662),	-- Aboraz Gloves
		i(55671),	-- Aboraz Hood
		i(55644),	-- Aboraz Jerkin
		i(55689),	-- Aboraz Shoulders
		i(55698),	-- Aboraz Waistband
		i(55637),	-- Dandred Bindings
		i(55655),	-- Dandred Boots
		i(55682),	-- Dandred Britches
		i(55664),	-- Dandred Gloves
		i(55673),	-- Dandred Hood
		i(55646),	-- Dandred Jerkin
		i(55691),	-- Dandred Shoulders
		i(55700),	-- Dandred Waistband
		i(55638),	-- Haldarr Bindings
		i(55656),	-- Haldarr Boots
		i(55683),	-- Haldarr Britches
		i(55665),	-- Haldarr Gloves
		i(55674),	-- Haldarr Hood
		i(55647),	-- Haldarr Jerkin
		i(55692),	-- Haldarr Shoulders
		i(55701),	-- Haldarr Waistband
		i(55633),	-- Mosshide Bindings
		i(55651),	-- Mosshide Boots
		i(55678),	-- Mosshide Britches
		i(55660),	-- Mosshide Gloves
		i(55669),	-- Mosshide Hood
		i(55642),	-- Mosshide Jerkin
		i(55687),	-- Mosshide Shoulders
		i(55696),	-- Mosshide Waistband
		i(55639),	-- Ravenholdt Bindings
		i(55657),	-- Ravenholdt Boots
		i(55684),	-- Ravenholdt Britches
		i(55666),	-- Ravenholdt Gloves
		i(55675),	-- Ravenholdt Hood
		i(55648),	-- Ravenholdt Jerkin
		i(55693),	-- Ravenholdt Shoulders
		i(55702),	-- Ravenholdt Waistband
		i(55636),	-- Rocktusk Bindings
		i(55654),	-- Rocktusk Boots
		i(55681),	-- Rocktusk Britches
		i(55663),	-- Rocktusk Gloves
		i(55672),	-- Rocktusk Hood
		i(55645),	-- Rocktusk Jerkin
		i(55690),	-- Rocktusk Shoulders
		i(55699),	-- Rocktusk Waistband
		i(55632),	-- Stagalbog Bindings
		i(55650),	-- Stagalbog Boots
		i(55677),	-- Stagalbog Britches
		i(55659),	-- Stagalbog Gloves
		i(55668),	-- Stagalbog Hood
		i(55641),	-- Stagalbog Jerkin
		i(55686),	-- Stagalbog Shoulders
		i(55695),	-- Stagalbog Waistband
		i(55634),	-- Yojamba Bindings
		i(55652),	-- Yojamba Boots
		i(55679),	-- Yojamba Britches
		i(55661),	-- Yojamba Gloves
		i(55670),	-- Yojamba Hood
		i(55643),	-- Yojamba Jerkin
		i(55688),	-- Yojamba Shoulders
		i(55697),	-- Yojamba Waistband
	}),
	filter(MAIL, {
		i(55626),	-- Bramblescar Belt
		i(55563),	-- Bramblescar Bracers
		i(55590),	-- Bramblescar Gauntlets
		i(55581),	-- Bramblescar Greaves
		i(55599),	-- Bramblescar Helm
		i(55608),	-- Bramblescar Legguards
		i(55617),	-- Bramblescar Spaulders
		i(55572),	-- Bramblescar Vest
		i(55628),	-- Highperch Belt
		i(55565),	-- Highperch Bracers
		i(55592),	-- Highperch Gauntlets
		i(55583),	-- Highperch Greaves
		i(55601),	-- Highperch Helm
		i(55610),	-- Highperch Legguards
		i(55619),	-- Highperch Spaulders
		i(55574),	-- Highperch Vest
		i(55627),	-- Hiri'watha Belt
		i(55564),	-- Hiri'watha Bracers
		i(55591),	-- Hiri'watha Gauntlets
		i(55582),	-- Hiri'watha Greaves
		i(55600),	-- Hiri'watha Helm
		i(55609),	-- Hiri'watha Legguards
		i(55618),	-- Hiri'watha Spaulders
		i(55573),	-- Hiri'watha Vest
		i(55623),	-- Nazferiti Belt
		i(55560),	-- Nazferiti Bracers
		i(55587),	-- Nazferiti Gauntlets
		i(55578),	-- Nazferiti Greaves
		i(55596),	-- Nazferiti Helm
		i(55605),	-- Nazferiti Legguards
		i(55614),	-- Nazferiti Spaulders
		i(55569),	-- Nazferiti Vest
		i(55624),	-- Southfury Belt
		i(55561),	-- Southfury Bracers
		i(55588),	-- Southfury Gauntlets
		i(55579),	-- Southfury Greaves
		i(55597),	-- Southfury Helm
		i(55606),	-- Southfury Legguards
		i(55615),	-- Southfury Spaulders
		i(55570),	-- Southfury Vest
		i(55625),	-- Sundown Belt
		i(55562),	-- Sundown Bracers
		i(55589),	-- Sundown Gauntlets
		i(55580),	-- Sundown Greaves
		i(55598),	-- Sundown Helm
		i(55607),	-- Sundown Legguards
		i(55616),	-- Sundown Spaulders
		i(55571),	-- Sundown Vest
		i(55630),	-- Talondeep Belt
		i(55567),	-- Talondeep Bracers
		i(55594),	-- Talondeep Gauntlets
		i(55585),	-- Talondeep Greaves
		i(55603),	-- Talondeep Helm
		i(55612),	-- Talondeep Legguards
		i(55621),	-- Talondeep Spaulders
		i(55576),	-- Talondeep Vest
		i(55629),	-- Thornsnarl Belt
		i(55566),	-- Thornsnarl Bracers
		i(55593),	-- Thornsnarl Gauntlets
		i(55584),	-- Thornsnarl Greaves
		i(55602),	-- Thornsnarl Helm
		i(55611),	-- Thornsnarl Legguards
		i(55620),	-- Thornsnarl Spaulders
		i(55575),	-- Thornsnarl Vest
	}),
	filter(PLATE, {
		i(55504),	-- Crystalvein Breastplate
		i(55522),	-- Crystalvein Gauntlets
		i(55558),	-- Crystalvein Girdle
		i(55531),	-- Crystalvein Helm
		i(55540),	-- Crystalvein Legplates
		i(55549),	-- Crystalvein Pauldrons
		i(55513),	-- Crystalvein Sabatons
		i(55495),	-- Crystalvein Vambraces
		i(55500),	-- Direforge Breastplate
		i(55518),	-- Direforge Gauntlets
		i(55554),	-- Direforge Girdle
		i(55527),	-- Direforge Helm
		i(55536),	-- Direforge Legplates
		i(55545),	-- Direforge Pauldrons
		i(55509),	-- Direforge Sabatons
		i(55491),	-- Direforge Vambraces
		i(55497),	-- Dreadmaul Breastplate
		i(55515),	-- Dreadmaul Gauntlets
		i(55551),	-- Dreadmaul Girdle
		i(55524),	-- Dreadmaul Helm
		i(55533),	-- Dreadmaul Legplates
		i(55542),	-- Dreadmaul Pauldrons
		i(55506),	-- Dreadmaul Sabatons
		i(55488),	-- Dreadmaul Vambraces
		i(55501),	-- Fargodeep Breastplate
		i(55519),	-- Fargodeep Gauntlets
		i(55555),	-- Fargodeep Girdle
		i(55528),	-- Fargodeep Helm
		i(55537),	-- Fargodeep Legplates
		i(55546),	-- Fargodeep Pauldrons
		i(55510),	-- Fargodeep Sabatons
		i(55492),	-- Fargodeep Vambraces
		i(55499),	-- Jasperlode Breastplate
		i(55517),	-- Jasperlode Gauntlets
		i(55553),	-- Jasperlode Girdle
		i(55526),	-- Jasperlode Helm
		i(55535),	-- Jasperlode Legplates
		i(55544),	-- Jasperlode Pauldrons
		i(55508),	-- Jasperlode Sabatons
		i(55490),	-- Jasperlode Vambraces
		i(55502),	-- Ravencrest Breastplate
		i(55520),	-- Ravencrest Gauntlets
		i(55556),	-- Ravencrest Girdle
		i(55529),	-- Ravencrest Helm
		i(55538),	-- Ravencrest Legplates
		i(55547),	-- Ravencrest Pauldrons
		i(55511),	-- Ravencrest Sabatons
		i(55493),	-- Ravencrest Vambraces
		i(55498),	-- Rethban Breastplate
		i(55516),	-- Rethban Gauntlets
		i(55552),	-- Rethban Girdle
		i(55525),	-- Rethban Helm
		i(55534),	-- Rethban Legplates
		i(55543),	-- Rethban Pauldrons
		i(55507),	-- Rethban Sabatons
		i(55489),	-- Rethban Vambraces
		i(55503),	-- Stonewrought Breastplate
		i(55521),	-- Stonewrought Gauntlets
		i(55557),	-- Stonewrought Girdle
		i(55530),	-- Stonewrought Helm
		i(55539),	-- Stonewrought Legplates
		i(55548),	-- Stonewrought Pauldrons
		i(55512),	-- Stonewrought Sabatons
		i(55494),	-- Stonewrought Vambraces
	}),
	category(251, {	-- Helms
		i(62103),	-- Pockmarked Hat
		i(62133),	-- Sodden Cloth Hat
		i(62102),	-- Dirt-Caked Leather Helmet
		i(62135),	-- Singed Leather Helmet
		i(62101),	-- Clammy Mail Circlet
		i(62136),	-- Sooty Mail Circlet
		i(62134),	-- Bleached Plate Helmet
		i(62104),	-- Perforated Plate Helmet
		i(66931),	-- Mercury-Coated Hood
		i(66955),	-- Scentsniffer Hood
		i(66975),	-- Hood of the Crying Rogue
		i(66983),	-- Helm of Fatal Vision
		i(67050),	-- Ben-Son's Royal Crown
		i(67122),	-- Helm of Holy Visions
		i(67123),	-- Sinman's Helm of Succor
		i(67147),	-- Je'Tze's Sparkling Tiara
	}),
	category(252, {	-- Shoulders
		i(62092),	-- Pockmarked Cloth Shoulderpads
		i(62110),	-- Sodden Cloth Shoulderpads
		i(62111),	-- Singed Shoulderpads
		i(62079),	-- Dirt-Caked Shoulderpads
		i(62098),	-- Clammy Mail Shoulderpads
		i(62121),	-- Sooty Mail Shoulderpads
		i(62075),	-- Perforated Plate Shoulderpads
		i(62127),	-- Bleached Plate Shoulderpads
		i(66882),	-- Skeletalized Shoulderpads
		i(66959),	-- Toraelian Spaulders
		i(66976),	-- Spaulders of the Savage Beast
		i(66977),	-- Pauldrons of Toil
		i(67112),	-- Brittany's Ceremonial Spaulders
		i(67117),	-- Woundsealer Spaulders
		i(67144),	-- Pauldrons of Edward the Odd
	}),
	category(253, {	-- Chest
		i(62091),	-- Pockmarked Cloth Vest
		i(62109),	-- Sodden Cloth Vest
		i(62108),	-- Singed Armor
		i(62081),	-- Dirt-Caked Armor
		i(62097),	-- Clammy Mail Armor
		i(62132),	-- Sooty Mail Armor
		i(62078),	-- Perforated Plate Chestpiece
		i(62126),	-- Bleached Plate Chestpiece
		i(66919),	-- Robes of Whispering Sands
		i(66992),	-- Harbinger's Breastplate
		i(67024),	-- Breastplate of Solemn Vows
		i(67106),	-- Robes of Broken Dreams
		i(67121),	-- Chestguard of the Caring Ursine
		i(67133),	-- Dizze's Whirling Robe
		i(67135),	-- Morrie's Waywalker Wrap
		i(67143),	-- Icebone Hauberk
	}),
	category(254, {	-- Bracers
		i(62084),	-- Pockmarked Cloth Bracers
		i(62118),	-- Sodden Cloth Bracers
		i(62087),	-- Dirt-Caked Bracers
		i(62114),	-- Singed Bracers
		i(62074),	-- Clammy Mail Bracers
		i(62124),	-- Sooty Mail Bracers
		i(62128),	-- Bleached Plate Bracers
		i(62095),	-- Perforated Plate Bracers
		i(66954),	-- Knife-Concealing Bracers
		i(66958),	-- Bracers of Razor Fletching
		i(66979),	-- Bracers of Bloody Business
		i(67088),	-- Falling Snow Bracers
		i(67115),	-- Soulheart Bindings
		i(67127),	-- Bracers of Caustic Purification
	}),
	category(255, {	-- Gauntlets
		i(62094),	-- Pockmarked Cloth Gloves
		i(62117),	-- Sodden Cloth Gloves
		i(62086),	-- Dirt-Caked Gloves
		i(62113),	-- Singed Gloves
		i(62123),	-- Sooty Mail Gloves
		i(62073),	-- Clammy Mail Gloves
		i(62106),	-- Bleached Plate Gloves
		i(62077),	-- Perforated Plate Gloves
		i(66641),	-- Vonica's Gauntlets
		i(66970),	-- Safecracker's Gloves
		i(66989),	-- Endwyn's Flickering Gauntlets
		i(67057),	-- Oath-Bound Gauntlets
		i(67105),	-- Elementbinder Grips
		i(67109),	-- Gauntlets of Chattering Valves
		i(67126),	-- Roffle's Ruffly Gloves
		i(67132),	-- Grips of the Failed Immortal
		i(67146),	-- Woundsplicer Handwraps
	}),
	category(256, {	-- Belts
		i(62100),	-- Pockmarked Cloth Belt
		i(62120),	-- Sodden Cloth Belt
		i(62089),	-- Dirt-Caked Belt
		i(62107),	-- Singed Belt
		i(62096),	-- Clammy Mail Belt
		i(62131),	-- Sooty Mail Belt
		i(62130),	-- Bleached Plate Belt
		i(62090),	-- Perforated Plate Belt
		i(66941),	-- Triple-Loop Belt
		i(66966),	-- Elekk-Horn Waistguard
		i(66980),	-- Girdle of Heated Deeds
		i(67067),	-- Belt of Guardianship
		i(67099),	-- Waistguard of New Days
		i(67103),	-- Belt of Redeemed Fate
		i(67114),	-- Girdle of Chained Thunder
	}),
	category(257, {	-- Legs
		i(62093),	-- Pockmarked Cloth Pants
		i(62116),	-- Sodden Cloth Pants
		i(62082),	-- Dirt-Caked Pants
		i(62112),	-- Singed Pants
		i(62122),	-- Sooty Mail Pants
		i(62099),	-- Clammy Mail Pants
		i(62105),	-- Bleached Plate Pants
		i(62076),	-- Perforated Plate Pants
		i(66904),	-- Gartic's Resplendent Leggings
		i(66962),	-- Shadowskulk Leggings
		i(66971),	-- Highland Padded Leggings
		i(66982),	-- Greaves of the Outcast Knight
		i(67043),	-- Greaves of Sullen Earth
		i(67102),	-- Kilt of Elemental Mending
		i(67141),	-- Corefire Legplates
		i(67148),	-- Kilt of Trollish Dreams
		i(67150),	-- Arrowsinger Legguards
	}),
	category(258, {	-- Boots
		i(62085),	-- Pockmarked Cloth Boots
		i(62119),	-- Sodden Cloth Boots
		i(62088),	-- Dirt-Caked Boots
		i(62115),	-- Singed Boots
		i(62125),	-- Sooty Mail Boots
		i(62083),	-- Clammy Mail Boots
		i(62080),	-- Perforated Plate Boots
		i(62129),	-- Bleached Plate Boots
		i(55855),	-- Darksky Treads
		i(66963),	-- Treads of the Wyrmhunter
		i(66967),	-- Camelhide Treads
		i(66986),	-- Troubled Steps
		i(67032),	-- Firm-Set Treads
		i(67113),	-- Medic's Bloodstained Sandals
	}),
	category(227, {	-- Weapons
		filter(ONE_HANDED_AXES, {
			i(55283),	-- Angerfang Axe
			i(66981),	-- Axe of the Deadly Price
			i(66952),	-- Belmont's Vampire Hacker
			i(55287),	-- Bladefist Axe
			i(55288),	-- Irontree Axe
			i(55286),	-- Mardenholde Axe
			i(55284),	-- Nethergarde Axe
			i(55281),	-- Razorwind Axe
			i(62070),	-- Rusted Timber Axe
			i(55285),	-- Splinterspear Axe
			i(55282),	-- Steelspark Axe
		}),
		filter(TWO_HANDED_AXES, {
			i(55292),	-- Angerfang Broadaxe
			i(55296),	-- Bladefist Broadaxe
			i(55297),	-- Irontree Broadaxe
			i(55295),	-- Mardenholde Broadaxe
			i(62065),	-- Melted Cleaver
			i(55293),	-- Nethergarde Broadaxe
			i(55290),	-- Razorwind Broadaxe
			i(55294),	-- Splinterspear Broadaxe
			i(55291),	-- Steelspark Broadaxe
			i(66985),	-- Termination Axe
		}),
		filter(BOWS, {
			i(55301),	-- Angerfang Bow
			i(55305),	-- Bladefist Bow
			i(55306),	-- Irontree Bow
			i(62068),	-- Knog's Bow of Ineptitude
			i(55304),	-- Mardenholde Bow
			i(55302),	-- Nethergarde Bow
			i(66973),	-- Ravenheart Longbow
			i(55299),	-- Razorwind Bow
			i(55303),	-- Splinterspear Bow
			i(55300),	-- Steelspark Bow
		}),
		filter(CROSSBOWS, {
			i(55319),	-- Angerfang Crossbow
			i(55323),	-- Bladefist Crossbow
			i(55324),	-- Irontree Crossbow
			i(55322),	-- Mardenholde Crossbow
			i(55320),	-- Nethergarde Crossbow
			i(55317),	-- Razorwind Crossbow
			i(55321),	-- Splinterspear Crossbow
			i(55318),	-- Steelspark Crossbow
		}),
		filter(DAGGERS, {
			i(55328),	-- Angerfang Dagger
			i(55441),	-- Blackwolf Spellblade
			i(55332),	-- Bladefist Dagger
			i(55333),	-- Irontree Dagger
			i(66968),	-- Lhakaz's Swiftblade
			i(55331),	-- Mardenholde Dagger
			i(55439),	-- Mereldar Spellblade
			i(55437),	-- Mirkfallon Spellblade
			i(55434),	-- Moonbrook Spellblade
			i(55438),	-- Nethander Spellblade
			i(55329),	-- Nethergarde Dagger
			i(66880),	-- Potentate's Letter Opener
			i(55326),	-- Razorwind Dagger
			i(55436),	-- Sishir Spellblade
			i(55330),	-- Splinterspear Dagger
			i(55327),	-- Steelspark Dagger
			i(55435),	-- Swamplight Spellblade
			i(55440),	-- Thondroril Spellblade
			i(66956),	-- Trek's Shiv
			i(62066),	-- Wolk's Blunted Shiv
		}),
		filter(FIST_WEAPONS, {
			i(55346),	-- Angerfang Knuckles
			i(55350),	-- Bladefist Knuckles
			i(66972),	-- Crystalline Geoknife
			i(55351),	-- Irontree Knuckles
			i(55349),	-- Mardenholde Knuckles
			i(55347),	-- Nethergarde Knuckles
			i(55344),	-- Razorwind Knuckles
			i(55348),	-- Splinterspear Knuckles
			i(55345),	-- Steelspark Knuckles
		}),
		filter(GUNS, {
			i(67045),	-- Abatement Cannon
			i(55355),	-- Angerfang Gun
			i(55359),	-- Bladefist Gun
			i(55360),	-- Irontree Gun
			i(55358),	-- Mardenholde Gun
			i(55356),	-- Nethergarde Gun
			i(62069),	-- Plugged Rifle
			i(55353),	-- Razorwind Gun
			i(55357),	-- Splinterspear Gun
			i(55354),	-- Steelspark Gun
			i(66953),	-- Snub-Nosed Pistol
		}),
		filter(ONE_HANDED_MACES, {
			i(55382),	-- Angerfang Mace
			i(55369),	-- Blackwolf Scepter
			i(55386),	-- Bladefist Mace
			i(67029),	-- Death Pyre Mace
			i(66990),	-- Downfall Hammer
			i(62067),	-- Flamewashed Mace
			i(55387),	-- Irontree Mace
			i(67120),	-- Mace of Apotheosis
			i(55385),	-- Mardenholde Mace
			i(55367),	-- Mereldar Scepter
			i(55365),	-- Mirkfallon Scepter
			i(55362),	-- Moonbrook Scepter
			i(55366),	-- Nethander Scepter
			i(55383),	-- Nethergarde Mace
			i(55380),	-- Razorwind Mace
			i(55364),	-- Sishir Scepter
			i(55384),	-- Splinterspear Mace
			i(55381),	-- Steelspark Mace
			i(55363),	-- Swamplight Scepter
			i(55368),	-- Thondroril Scepter
		}),
		filter(TWO_HANDED_MACES, {
			i(55391),	-- Angerfang Hammer
			i(55395),	-- Bladefist Hammer
			i(55396),	-- Irontree Hammer
			i(55394),	-- Mardenholde Hammer
			i(55392),	-- Nethergarde Hammer
			i(55389),	-- Razorwind Hammer
			i(62063),	-- Shattered War Mace
			i(55393),	-- Splinterspear Hammer
			i(55390),	-- Steelspark Hammer
			i(66993),	-- Sorrow's End
		}),
		filter(POLEARMS, {
			i(55409),	-- Angerfang Spear
			i(55413),	-- Bladefist Spear
			i(55414),	-- Irontree Spear
			i(55412),	-- Mardenholde Spear
			i(55410),	-- Nethergarde Spear
			i(55407),	-- Razorwind Spear
			i(66964),	-- Sand Tracker's Spear
			i(55411),	-- Splinterspear Spear
			i(55408),	-- Steelspark Spear
		}),
		filter(STAVES, {
			i(55337),	-- Angerfang Staff
			i(55445),	-- Angerfang Staff
			i(55789),	-- Berto's Staff
			i(55341),	-- Bladefist Staff
			i(55449),	-- Bladefist Staff
			i(55342),	-- Irontree Staff
			i(55450),	-- Irontree Staff
			i(55340),	-- Mardenholde Staff
			i(55448),	-- Mardenholde Staff
			i(55338),	-- Nethergarde Staff
			i(55446),	-- Nethergarde Staff
			i(55335),	-- Razorwind Staff
			i(55443),	-- Razorwind Staff
			i(67098),	-- Sealing Heartstaff
			i(55339),	-- Splinterspear Staff
			i(55447),	-- Splinterspear Staff
			i(67071),	-- Staff of Old Woes
			i(66940),	-- Staff of Solemn Secrecy
			i(55336),	-- Steelspark Staff
			i(55444),	-- Steelspark Staff
			i(62072),	-- Robble's Wobbly Staff
		}),
		filter(ONE_HANDED_SWORDS, {
			i(55454),	-- Angerfang Sword
			i(55458),	-- Bladefist Sword
			i(62071),	-- Corroded Blade
			i(66916),	-- Delicate Blade of Meaning
			i(66960),	-- Dirk's Command
			i(55459),	-- Irontree Sword
			i(67052),	-- Loyal Blade
			i(55457),	-- Mardenholde Sword
			i(55455),	-- Nethergarde Sword
			i(55452),	-- Razorwind Sword
			i(55456),	-- Splinterspear Sword
			i(55453),	-- Steelspark Sword
		}),
		filter(TWO_HANDED_SWORDS, {
			i(55463),	-- Angerfang Greatsword
			i(55467),	-- Bladefist Greatsword
			i(55468),	-- Irontree Greatsword
			i(55466),	-- Mardenholde Greatsword
			i(55464),	-- Nethergarde Greatsword
			i(66978),	-- Rage-Possessed Greatsword
			i(55461),	-- Razorwind Greatsword
			i(55465),	-- Splinterspear Greatsword
			i(55462),	-- Steelspark Greatsword
			i(62064),	-- Warped Greatsword
		}),
		filter(WANDS, {
			i(55486),	-- Blackwolf Wand
			i(66920),	-- Cyu's Ornate Wand
			i(55484),	-- Mereldar Wand
			i(55482),	-- Mirkfallon Wand
			i(55479),	-- Moonbrook Wand
			i(55483),	-- Nethander Wand
			i(55481),	-- Sishir Wand
			i(55480),	-- Swamplight Wand
			i(55485),	-- Thondroril Wand
			i(67104),	-- Torchlight Wand
		}),
		-- #if BEFORE MOP
		filter(THROWN, {
			-- TODO: https://www.wowhead.com/cata/items/weapons/thrown?filter=166;4;0#items;0+1+20
			i(55472, {	-- Angerfang Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55476, {	-- Bladefist Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55477, {	-- Irontree Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55475, {	-- Mardenholde Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55473, {	-- Nethergarde Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55470, {	-- Razorwind Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55478, {	-- Rustmaul Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55474, {	-- Splinterspear Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
			i(55471, {	-- Steelspark Knives
				["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			}),
		}),
		-- #endif
	}),
	filter(SHIELDS, {
		i(67145),	-- Blockade's Lost Shield
		i(67061),	-- Bulwark of the Scorned Man
		i(55432),	-- Crystalvein Shield
		i(55428),	-- Direforge Shield
		i(66895),	-- Don Gonzales' Shiny Shield
		i(55425),	-- Dreadmaul Shield
		i(55429),	-- Fargodeep Shield
		i(55427),	-- Jasperlode Shield
		i(55430),	-- Ravencrest Shield
		i(55426),	-- Rethban Shield
		i(55431),	-- Stonewrought Shield
		i(67124),	-- Zulian Swirling Shield
	}),
	filter(HELD_IN_OFF_HAND, {
		i(55378),	-- Blackwolf Crystal
		i(67125),	-- Bone-Inlaid Sarcophagus Key
		i(67149),	-- Heartbound Tome
		i(55376),	-- Mereldar Crystal
		i(55374),	-- Mirkfallon Crystal
		i(55371),	-- Moonbrook Crystal
		i(55375),	-- Nethander Crystal
		i(66924),	-- Petrified Camel Haunch
		i(55373),	-- Sishir Crystal
		i(55372),	-- Swamplight Crystal
		i(55377),	-- Thondroril Crystal
	}),
	filter(NECK_F, {
		i(67040),	-- Amulet of the Howling Watch
		i(55405),	-- Blackwolf Amulet
		i(67138),	-- Buc-Zakai Choker
		i(67137),	-- Don Rodrigo's Fabulous Necklace
		i(67130),	-- Dorian's Lost Necklace
		i(55403),	-- Mereldar Amulet
		i(55401),	-- Mirkfallon Amulet
		i(55398),	-- Moonbrook Amulet
		i(55402),	-- Nethander Amulet
		i(66974),	-- Nightrend Choker
		i(55400),	-- Sishir Amulet
		i(55399),	-- Swamplight Amulet
		i(55404),	-- Thondroril Amulet
	}),
	filter(FINGER_F, {
		i(67047),	-- Band of Pleasant Pain
		i(66987),	-- Band of the Virtuous
		i(55423),	-- Blackwolf Ring
		i(67139),	-- Blauvelt's Family Crest
		i(67136),	-- Gilnean Ring of Ruination
		i(67116),	-- Heartbinder Ring
		i(66942),	-- Immaculate Br'etc Signet
		i(55421),	-- Mereldar Ring
		i(55419),	-- Mirkfallon Ring
		i(55416),	-- Moonbrook Ring
		i(55420),	-- Nethander Ring
		i(66957),	-- Poison Vial Ring
		i(67027),	-- Ring of Cursed Fate
		i(67129),	-- Signet of High Arcanist Savor
		i(55418),	-- Sishir Ring
		i(55417),	-- Swamplight Ring
		i(55422),	-- Thondroril Ring
	}),
	filter(TRINKET_F, {
		i(67037),	-- Binding Promise
		i(66879),	-- Bottled Lightning
		i(67118),	-- Electrospark Heartstarter
		i(66969),	-- Heart of the Vile
		i(66994),	-- Soul's Anguish
		i(67101),	-- Unquenchable Flame
	}),
	filter(MISC, {
		i(68729),	-- Elementium Lockbox
		-- #if BEFORE MOP
		i(66988, {	-- Ashes of Youth
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
		i(66912, {	-- Fetish of the Fiery Sands
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
		i(67110, {	-- Goblin Surgeon's Kit
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
		i(67059, {	-- Halted Clock
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
		i(66961, {	-- Mindbender Bloom
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
		}),
		-- #endif
	}),
	filter(RECIPES, {
		prof(ENCHANTING, {
			i(68787),	-- Formula: Enchant Bracer - Agility (RECIPE!)
			i(68788),	-- Formula: Enchant Bracer - Major Strength (RECIPE!)
			i(68789),	-- Formula: Enchant Bracer - Mighty Intellect (RECIPE!)
		}),
		prof(JEWELCRAFTING, {
			i(68781, {["timeline"] = {ADDED_4_0_6}}),	-- Design: Agile Shadowspirit Diamond (RECIPE!)
			i(68783, {["timeline"] = {ADDED_4_0_6}}),	-- Design: Burning Shadowspirit Diamond (RECIPE!)
			i(52372),	-- Design: Deadly Hessonite (RECIPE!)
			i(52366),	-- Design: Defender's Nightstone (RECIPE!)
			i(52375),	-- Design: Deft Hessonite (RECIPE!)
			i(52374),	-- Design: Fierce Hessonite (RECIPE!)
			i(52376),	-- Design: Fine Hessonite (RECIPE!)
			i(52363),	-- Design: Flashing Carnelian (RECIPE!)
			i(52385),	-- Design: Forceful Jasper (RECIPE!)
			i(52367),	-- Design: Guardian's Nightstone (RECIPE!)
			i(52371),	-- Design: Inscribed Hessonite (RECIPE!)
			i(52496),	-- Design: Jeweler's Amber Monocle (RECIPE!)
			i(52494),	-- Design: Jeweler's Ruby Monocle (RECIPE!)
			i(52495),	-- Design: Jeweler's Sapphire Monocle (RECIPE!)
			i(52377),	-- Design: Keen Hessonite (RECIPE!)
			i(52386),	-- Design: Lightning Jasper (RECIPE!)
			i(52379),	-- Design: Nimble Jasper (RECIPE!)
			i(52382),	-- Design: Piercing Jasper (RECIPE!)
			i(52370),	-- Design: Polished Hessonite (RECIPE!)
			i(52373),	-- Design: Potent Hessonite (RECIPE!)
			i(52368),	-- Design: Purified Nightstone (RECIPE!)
			i(69820, {["timeline"] = {ADDED_4_1_0}}),	-- Design: Reckless Hessonite (RECIPE!)
			i(52378),	-- Design: Regal Jasper (RECIPE!)
			i(52369),	-- Design: Retaliating Nightstone (RECIPE!)
			i(68782, {["timeline"] = {ADDED_4_0_6}}),	-- Design: Reverberating Shadowspirit Diamond (RECIPE!)
			i(71965, {["timeline"] = {ADDED_4_3_0}}),	-- Design: Rhinestone Sunglasses
			i(52383),	-- Design: Steady Jasper (RECIPE!)
			i(52364),	-- Design: Stormy Zephyrite (RECIPE!)
			i(52365),	-- Design: Subtle Alicite (RECIPE!)
			i(52388),	-- Design: Zen Jasper (RECIPE!)
		}),
		prof(TAILORING, {
			i(67541),	-- Pattern: High Society Top Hat (RECIPE!) (drops from rare elites)
		}),
	}),
	filter(REAGENTS, {
		-- Table of Content:
		-- 	Cloth + Silk
		-- 	Elemetal reagents
		-- 	Clams
		-- 	Cooking reagents
		-- 	Other reagents
		-- _________________________________
		-- 
		-- 	Cloth + Silk:
		-- _________________________________
		-- 
		-- 	Elemental reagents:
		i(52328, {	-- Volatile Air
			["coords"] = {
				{ 27.9, 39.9, MOUNT_HYJAL },	-- Lightning Ledge
				{ 38.6, 82.7, TWILIGHT_HIGHLANDS },	-- Alter of Ascension
				{ 40.2, 47.6, TWILIGHT_HIGHLANDS },	-- The Twilight Breach
				{ 39.4, 42.5, ULDUM },	-- Orsis
			},
			["crs"] = {
				46328,	-- Enslaved Tempest
				39844,	-- Howling Riftdweller
				45755,	-- Scion of Al'Akir
				47728,	-- Storm Vortex
				51672,	-- Sweeping Winds
			},
			-- #if AFTER 6.0.3
			["description"] = "The Vortex Pinnacle is the place to farm these on higher levels.\nProtip: Do not forget Potion of Treasure Finding.",
			-- #endif
			["maps"] = { 325 },	-- The Vortex Pinnacle
			["providers"] = {
				{ "i", 67494 },	-- Electrostatic Condenser
				{ "i", 67495 },	-- Strange Bloated Stomach
				{ "i", 67539 },	-- Tiny Treasure Chest
				-- #if AFTER 4.1.0
				{ "i", 69817 },	-- Hive Queen's Honeycomb
				-- #endif
			},
		}),
		i(52327, {	-- Volatile Earth
			["coords"] = {
				{ 27.0, 40.0, THE_MOLTEN_FRONT },	-- Fireplume Peak
				{ 65.8, 22.7, MOUNT_HYJAL },	-- Nordrassil
				{ 64.9, 54.1, MOUNT_HYJAL },	-- The Crucible of Flame
				{ 58.2, 29.8, TWILIGHT_HIGHLANDS },	-- The Black Breach
				-- #if BEFORE 4.2.0
				{ 35.5, 55.4, MOUNT_HYJAL },	-- The Lower Regrowth
				-- #endif
			},
			["crs"] = {
				41565,	-- Molten Tormentor
				47226,	-- Obsidian Stoneslave
				52107,	-- Obsidium Punisher
				40229,	-- Scalding Rock Elemental
				-- #if AFTER 4.1.0
				52414,	-- Tor-Tun
				-- #endif
				-- #if BEFORE 4.2.0
				46911,	-- Lava Surger
				-- #endif
			},
			["description"] = "Access to some of the listed mobs and locations in Mount Hyjal requires quest progression through the zone.",
			["providers"] = {
				{ "i", 67495 },	-- Strange Bloated Stomach
				{ "i", 67539 },	-- Tiny Treasure Chest
			},
		}),
		i(52325, {	-- Volatile Fire
			["coords"] = {
				{ 46.6, 28.2, MOUNT_HYJAL },	-- The Verdant Thicket
				{ 26.0, 41.1, MOUNT_HYJAL },	-- Firelands Forgeworks
				{ 11.6, 39.5, MOUNT_HYJAL },	-- The Upper Regrowth (By Grove of Aessina)
				-- #if AFTER 4.2.0
				{ 50.0, 70.0, THE_MOLTEN_FRONT },	-- Ashen Fields
				{ 20.1, 59.1, MOUNT_HYJAL },	-- Ashen Lakeside
				{ 35.5, 55.4, MOUNT_HYJAL },	-- The Lower Regrowth
				{ 51.9, 77.4, MOUNT_HYJAL },	-- Sethria's Roost
				{ 44.1, 85.7, MOUNT_HYJAL },	-- The Throne of Flame
				{ 58.4, 82.4, MOUNT_HYJAL },	-- Ascendant's Rise
				-- #endif
				{ 39.2, 77.9, TWILIGHT_HIGHLANDS },	-- Cannon's Inferno
				{ 42.4, 23.5, TWILIGHT_HIGHLANDS },	-- Humboldt Conflagration
				{ 40.5, 17.1, TWILIGHT_HIGHLANDS },	-- Ruins of Drakgor
			},
			["crs"] = {
				38876,	-- Blazebound Elemental
				45258,	-- Bound Fleshburner
				46327,	-- Enslaved Inferno
				40841,	-- Searing Guardian
				48016,	-- Unbound Emberfiend
				-- #if BEFORE 4.2.0
				41396,	-- Fiery Tormentor
				39939,	-- Raging Firestorm
				-- #else
				52794,	-- Brimstone Destroyer
				52816,	-- Charred Invader
				52503,	-- Charred Vanquisher
				40709,	-- Flame Ascendant
				52219,	-- Flame Terror
				40464,	-- Magma Giant
				52300,	-- Seething Pyrelord
				-- #endif
			},
			["description"] = "Fishing is the most efficient way to get these. Access to some of the listed mobs and locations in Mount Hyjal requires quest progression through the zone.",
			["providers"] = {
				{ "o", 207734 },	-- Pool of Fire (Fishing school)
				{ "i", 67495 },	-- Strange Bloated Stomach
				{ "i", 67539 },	-- Tiny Treasure Chest
			},
		}),
		i(52329, {	-- Volatile Life
			["providers"] = {
				{ "o", 202749 },	-- Azshara's Veil
				{ "o", 202747 },	-- Cinderbloom
				{ "o", 202750 },	-- Heartblossom
				-- #if AFTER 4.1.0
				{ "i", 69817 },	-- Hive Queen's Honeycomb
				-- #endif
				{ "o", 202748 },	-- Stormvine
				{ "i", 67495 },	-- Strange Bloated Stomach
				{ "i", 67539 },	-- Tiny Treasure Chest
				{ "o", 202751 },	-- Twilight Jasmine
				{ "o", 202752 },	-- Whiptail
			},
		}),
		i(52326, {	-- Volatile Water
			["coords"] = {
				{ 68.1, 48.8, TWILIGHT_HIGHLANDS },	-- Verrall Delta
				{ 33.0, 63.8, TWILIGHT_HIGHLANDS },	-- Loch Verrall
			},
			["crs"] = {
				46329,	-- Enslaved Waterspout
				44011,	-- Muddied Water Elemental
			},
			["description"] = "Protip: Do not forget Potion of Treasure Finding when farming the mobs.",
			["providers"] = {
				{ "o", 207724 },	-- Shipwreck Debris (Fishing school)
				{ "i", 67495 },	-- Strange Bloated Stomach
				{ "i", 67539 },	-- Tiny Treasure Chest
			},
		}),
		-- _________________________________
		-- 
		-- 	Clams:
		i(52340, {	-- Abyssal Clam
			["description"] = "Is a rare drop from humanoid water creatures like gilblins, murlocs and naga.",
			["maps"] = {
				-- THRONE_OF_THE_TIDES,
				VASHJIR_ABYSSAL_DEPTHS,
				VASHJIR_KELPTHAR_FOREST,
				VASHJIR_SHIMMERING_EXPANSE,
			},
			["groups"] = {
				i(62791, {	-- Blood Shrimp
					["provider"] = { "i", 65513 },	-- Crate of tasty Meat
				}),
				i(52338),	-- Darkfathom Pearl
				i(52339),	-- Flawless Pearl
			},
		}),
		-- _________________________________
		-- 
		-- 	Cooking reagents:
		i(62783, {	-- Basilisk "Liver"
			["coords"] = {
				{ 41.8,	20.8, DEEPHOLM },	-- The Pale Roost
				{ 56.0,	86.1, DEEPHOLM },	-- Alabaster Shelf
			},
			["crs"] = {
				43981,	-- Jadecrest Basilisk
				43181,	-- Shalehide Basilisk
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		-- i(62791),	-- Blood Shrimp > Properly sourced under Clams listed above.
		i(62784, {	-- Crocolisk Tail
			["coords"] = {
				{ 41.3,	47.0, TOL_BARAD },	-- Baradin Hold, west of.
				{ 64.0,	78.9, ULDUM },	-- Vir'naal River Delta
				{ 57.0,	49.2, ULDUM },	-- Vir'naal River
				{ 47.7,	29.4, ULDUM },	-- Vir'naal Oasis west
				{ 56.6,	22.0, ULDUM },	-- Vir'naal Oasis east
			},
			["crs"] = {
				46317,	-- Neferset Crocolisk
				51675,	-- Oasis Crocolisk
				45321,	-- Riverbed Crocolisk
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62785, {	-- Delicate Wing
			["coords"] = {
				{ 43.0,	43.4, MOUNT_HYJAL },	-- Shrine of Aviana
				{ 65.5,	29.5, TWILIGHT_HIGHLANDS },	-- Kirthaven mountain, east of.
				{ 54.0,	50.1, TWILIGHT_HIGHLANDS },	-- Bloodgulch, south of.
				{ 44.1,	70.2, ULDUM },	-- Cradle of the Ancients
				{ 68.0,	62.8, ULDUM },	-- Sunstone Terrace, southwest of.
			},
			["crs"] = {
				47202,	-- Diseased Vulture
				42660,	-- Hyjal Darkhawk
				42657,	-- Hyjal Eagle
				42658,	-- Hyjal Roc
				42659,	-- Hyjal Screecher
				46162,	-- Tawny Owl
				46158,	-- Untamed Gryphon
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62782, {	-- Dragon Flank
			["coords"] = {
				{ 40.9,	12.6, DEEPHOLM },	-- The Pale Roost
				{ 56.0,	86.1, DEEPHOLM },	-- Alabaster Shelf
				{ 29.1,	32.0, TWILIGHT_HIGHLANDS },	-- Vermillion Redoubt
				{ 63.2,	77.5, TWILIGHT_HIGHLANDS },	-- Obsidian Forest
			},
			["crs"] = {
				47797,	-- Obsidian Charscale
				46141,	-- Obsidian Pyrewing
				47796,	-- Obsidian Viletongue
				42522,	-- Stone Drake
				43971,	-- Stonescale Drake
				45748,	-- Twilight Wyrmkiller
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62781, {	-- Giant Turtle Tongue
			["coords"] = {
				{ 54.7,	47.3, VASHJIR_ABYSSAL_DEPTHS },	-- Seabrush
				{ 54.2,	62.3, VASHJIR_ABYSSAL_DEPTHS },	-- Korthun's End, higher
				{ 51.6,	72.1, VASHJIR_ABYSSAL_DEPTHS },	-- Korthun's End, lower
				{ 54.8,	49.9, VASHJIR_KELPTHAR_FOREST },	-- Middle Kelp'thar Forest
				{ 55.5,	83.7, VASHJIR_SHIMMERING_EXPANSE },	-- Biel'aran Ridge
			},
			["crs"] = {
				42108,	-- Seabrush Terrapin
				40802,	-- Softshell Sea Turtle
				40223,	-- Speckled Sea Turtle
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62779, {	-- Monstrous Claw
			["coord"] = { 44.5,	57.0, VASHJIR_ABYSSAL_DEPTHS },	-- Underlight Canyon
			["crs"] = {
				39918,	-- Clacksnap Pincer
				39418,	-- Green Sand Crab
				41922,	-- Pyreshell Scuttler
				40276,	-- Sabreclaw Skitterer
				40889,	-- Sandskin Pincer
				41609,	-- Silversand Burrower
				40798,	-- Spineshell Pincer
				40685,	-- Splitclaw Skitterer
			},
			["maps"] = {
				VASHJIR_KELPTHAR_FOREST,
				VASHJIR_SHIMMERING_EXPANSE,
			},
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62780, {	-- Snake Eye
			["coord"] = { 57.2,	37.6, VASHJIR_KELPTHAR_FOREST },	-- Gorrok's Lament
			["cr"] = 39948,	-- Brinescale Serpent
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		i(62778, {	-- Toughened Flesh
			["coords"] = {
				{ 55.1,	70.9, TWILIGHT_HIGHLANDS },	-- Highland Forest
				{ 53.5,	31.5, TWILIGHT_HIGHLANDS },	-- Thundermar Ruins
				{ 65.5,	29.5, TWILIGHT_HIGHLANDS },	-- Kirthaven mountain, east of.
			},
			["crs"] = {
				46970,	-- Highland Elk
				46153,	-- Highland Worg
			},
			["description"] = "Can drop from all Cataclysm red meat animals.",
			["provider"] = { "i", 65513 },	-- Crate of tasty Meat
		}),
		-- __________________________________
		-- 
		-- Other reagents:
		i(52078, {	-- Chaos Orb
			["description"] = "Guaranteed drop from the last boss in any Heroic Cataclysm dungeon.",
		}),
	}),
}))));
