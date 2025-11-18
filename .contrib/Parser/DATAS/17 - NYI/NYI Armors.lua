---------------------------------------------------------------
--     N E V E R    I M P L E M E N T E D    M O D U L E     --
---------------------------------------------------------------
root(ROOTS.NeverImplemented, n(ARMOR, {
	expansion(EXPANSION.CLASSIC, {
		-- 1.x.x
		n(P1xx, {
			filter(BACK_F, {
				i(22230),	-- Frightmaw Hide
			}),
			filter(CLOTH, {
				i(1216),	-- Frost Bracers
				i(4989),	-- Mage Dragon Robe
				i(18341),	-- Quel'dorei Sash
				i(6478),	-- Rat Stompers
				i(4990),	-- Scorched Bands
				i(12107),	-- Whispersilk Leggings
				i(13080),	-- Widow's Clutch
			}),
			filter(FINGER_F, {
				i(17000),	-- Band of the Wraith
				i(4988),	-- Burning Obsidian Band
				i(19065),	-- Emerald Circle
				i(5010),	-- Inscribed Gold Ring
				i(17108),	-- Mark of Deflection
				i(5008),	-- Quicksilver Ring
				i(13812),	-- Ring of the Dawn
			}),
			filter(LEATHER, {
				i(14550),	-- Bladebane Armguards
				i(12104),	-- Brindlethorn Tunic
				i(5821),	-- Darkstalker Boots
				i(20524),	-- Shadowhide Leggings
				i(21614),	-- Wormhide Protector
			}),
			filter(MAIL, {
				i(21584),	-- Bracers of Eternal Reckoning
				i(13090),	-- Breastplate of the Chosen
				i(12105),	-- Pridemail Leggings
				i(12616),	-- Savage Boots
				i(12615),	-- Savage Mail Tunic
				i(12617),	-- Savage Pauldrons
				i(21612),	-- Wormscale Stompers
				i(21588),	-- Wristguards of Elemental Fury
			}),
			filter(NECK_F, {
				i(18023),	-- Blood Ruby Pendant
				i(7427),	-- Cerulean Talisman
				i(5005),	-- Emberspark Pendant
				i(23058),	-- Life Channeling Necklace
				i(13811),	-- Necklace of the Dawn
				i(7548),	-- Onyx Choker
				i(17783),	-- Talisman of Binding Fragment
				i(7467),	-- Vermilion Necklace
				i(7550),	-- Warrior's Honor
				i(19122),	-- Woven Ivy Necklace DEPRECATED
			}),
			filter(PLATE, {
				i(12106),	-- Boulderskin Breastplate
				i(5822),	-- Hedgeseed Gauntlets
				i(21587),	-- Wristguards of Castigation
			}),
			filter(TABARDS, {
				i(746),		-- Lord Brandon's Tabard (Test)
				i(11364),	-- Tabard of Stormwind
				i(7725),	-- Tabard of the Scarlet Crusade DEPRECATED
				i(3557),	-- Unused Tabard of Chow
				i(23710),	-- Upperdeck Tabard #3
			}),
			filter(TRINKET_F, {
				-- #if BEFORE TBC
				i(13503),	-- Alchemists' Stone
				-- #endif
				i(20525),	-- Earthen Sigil
				i(18355),	-- Ferras Collar
				i(20084),	-- Hunting Net
				i(12805),	-- Orb of Fire
				i(18438),	-- Sergeant's Mark
			}),
		}),
	}),
	expansion(EXPANSION.TBC, {
		-- 2.x.x
		n(P2xx, {
			filter(BACK_F, {
				i(28045),	-- Cloak of the Demon Stalker
			}),
			filter(CLOTH, {
				i(26015),	-- Anchorite Neophyte's Cuffs
				i(23433),	-- Blood Robes
				i(25793),	-- Curate's Footwraps
				i(30287),	-- Mantle of Arcane Mastery
				i(27720),	-- Robes of the Aldor
				i(23434),	-- Robes of the Shard
			}),
			filter(FINGER_F, {
				i(33194),	-- Ancient Ceremonial Band
				i(28044),	-- Band of the Demon Stalker
				i(33195),	-- Cracked Stone Band
				i(33193),	-- Mossy Band
				i(33097),	-- Mushroom Ring
				i(33196),	-- Softly-Glowing Ring
			}),
			filter(LEATHER, {
				i(27719),	-- Aldor Leggings of Puissance
				i(30288),	-- Cenarion Warden's Gloves
				i(25795),	-- Gloves of Preservation
				i(25796),	-- Lurking Shadow Spaulders
				i(22273),	-- Moonshadow Hood
				i(19986),	-- Pirate's Eye Patch
				i(28145),	-- Tranquillien Wraps
				i(26029),	-- Watchman's Bracers
			}),
			filter(MAIL, {
				i(25794),	-- Bone Studded Girdle
				i(30289),	-- Cenarion Warden's Belt
				i(33964),	-- Helm of the Stormcaller
			}),
			filter(NECK_F, {
				i(33200),	-- Ancient Ceremonial Necklace
				i(31933),	-- Dark Charm
				i(28043),	-- Demon Stalker Pendant
				i(31930),	-- Enigmatic Charm
				i(31931),	-- Fiery Charm
				i(31934),	-- Frigid Charm
				i(31932),	-- Living Charm
				i(33198),	-- Necklace of Decay
				i(33199),	-- Pendant of Old
				i(33201),	-- Silver Moonstone Pendant
			}),
			filter(PLATE, {
				i(27718),	-- Aldor Defender's Legplates
				i(25797),	-- Crushing Grasp Says
				i(24137),	-- PH Plate Ramparts Reward
				i(26041),	-- Vigilant Vambraces
				i(29237),	-- Warpath Bracers Says
			}),
			filter(SHIRTS, {
				i(23351),	-- Battleworn Shirt
				i(23470),	-- Rugged Trapper's Shirt
			}),
		}),

		-- 2.0.3
		expansion(EXPANSION.TBC, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_2_0_3 } }, {
			filter(MAIL, {
				i(38388),	-- Cap of the North
				i(38389),	-- Comfy Raccoonskin Hat
				i(38387),	-- Grizzled Hat
				i(38390),	-- The Rugged Marksman
			}),
			filter(PLATE, {
				i(27965),	-- TEST 130 Epic Paladin DPS Chest
			}),
		})),

		-- 2.3.0
		expansion(EXPANSION.TBC, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_2_3_0 } }, {
			filter(FINGER_F, {
				i(33959),	-- Ring of Ghoulish Delight
				i(33958),	-- The Horseman's Signet Ring
				i(33957),	-- Witches Band
			}),
		})),
	}),
	expansion(EXPANSION.WRATH, {
		-- 3.x.x
		n(P3xx, {
			filter(BACK_F, {
				i(47058),	-- Pennant Cloak (4.0)
				i(39828),	-- Punisher's Cloak
				i(37174),	-- Rippling Azure Cloak
				i(35876),	-- Talbuk Cape
			}),
			filter(CLOTH, {
				i(37295),	-- HF28 Cloth Spell Head4
				i(37296),	-- BT59 Cloth Spell Gloves4
				i(39364),	-- Hood of the Titan Defender
			}),
			filter(LEATHER, {
				i(37176),	-- Cavern Leather Treads
				i(39410),	-- Gauntlets of Rampant Destruction
				i(37316),	-- HF28 Leather Physical Legs4
				i(38525),	-- Jailor's Padded Cover
				i(43895),	-- Leggings of Silent Echoes
				i(42875),	-- Worg-Hide Pants
			}),
			filter(FINGER_F, {
				i(34712),	-- Prismatic Signet
				i(37531),	-- Circle of Frigid Wind
				i(46842),	-- Crusader's Band
			}),
			filter(MAIL, {
				i(43936),	-- Battlesurgeon's Gauntlets
				i(43460),	-- Giantmaim Girdle
				i(42886),	-- Gloves of the Howling Peaks
				i(39440),	-- Greaves of the Titan Protectorate
				i(43475),	-- Grips of the Chilling Revenant
				i(37454),	-- HF28 Mail Physical Chest4
				i(38527),	-- Onslaught Scalemail Hauberk
				i(54549),	-- Saline-Soaked Spaulders
				i(37444),	-- Wavekeeper's Helm
			}),
			filter(NECK_F, {
				i(44389),	-- Curative Necklace
				i(37544),	-- Drakebone Necklace
				i(42856),	-- Frosthowl Amulet
				i(33197),	-- Mossy Necklace
				i(44390),	-- Venomous Pendant
			}),
			filter(PLATE, {
				i(43938),	-- Belt of Rising Hope
				i(43848),	-- Bracers of Icy Resolve
				i(38524),	-- Carapace of the Scarlet Commander
				i(37175),	-- Glassy Silver Bracers
				i(37468),	-- HF28 Plate Physical Boots Says
				i(37477),	-- Lost Crusader Chestplate
				i(42885),	-- Mountaineer's Helm
				i(39460),	-- Sabatons of the Rampaging Construct
			}),
			filter(TRINKET_F, {
				i(37561),	-- Touch of the Elements
				i(38383),	-- Valonforth's Folly
				i(38526),	-- Binding of the Imprisoned Soul
				i(38572),	-- Bounty Procurement Enhancer
				i(39819),	-- Bloodbinder's Runestone
				i(46839),	-- Frostwolf Insignia Rank 7
				i(46840),	-- Frostwolf Insignia Rank 7
			}),
		}),

		-- 3.0.1
		expansion(EXPANSION.WRATH, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			filter(CLOTH, {
				i(37210),	-- Seafarer Cinch
				i(37225),	-- Sweltering Sandals
				i(37273),	-- Crimson Keeper Mitts
			}),
			filter(FINGER_F, {
				i(41756),	-- Heart's Blood Signet
			}),
			filter(LEATHER, {
				i(37385),	-- Seared Harness
				i(37386),	-- Ruby Heart Spaulders
				i(37400),	-- Whalehunter Cuffs
				i(41757),	-- Vest of Unyielding Companionship
			}),
			filter(MAIL, {
				i(41758),	-- Blood-Bond Helm
				i(37433),	-- Layered Scale Boots
				i(37420),	-- Sharkproof Boots
			}),
			filter(PLATE, {
				i(37485),	-- Clam Collector Gauntlets
				i(37511),	-- Crucible Waistguard
				i(41759),	-- Shackles of Perpetual Friendship
				i(37510),	-- Wristguards of Edification
			}),
		})),

		-- 3.0.2
		expansion(EXPANSION.WRATH, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_0_2 } }, {
			filter(CLOTH, {
				i(43878),	-- Mantle of Unholy Power
				i(44743),	-- Cultist Acolyte's Hood
			}),
			filter(NECK_F, {
				i(44391),	-- Cast Steel Choker
				i(44392),	-- Necklace of Permeation
			}),
		})),

		-- 3.1.0
		expansion(EXPANSION.WRATH, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_1_0 } }, {
			filter(CLOTH, {
				i(45629),	-- Shadoweave Belt
			}),
			filter(TRINKET_F, {
				i(44869),	-- Frenzyheart Insignia of Fury
				i(44870),	-- Oracle Talisman of Ablution
			}),
		})),

		-- 3.2.0
		expansion(EXPANSION.WRATH, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_3_2_0 } }, {
			filter(CLOTH, {
				i(47103),	-- Rotting Handwraps
			}),
		})),

		-- 3.3.0
		expansion(EXPANSION.WRATH, patch(3,3), bubbleDownSelf({ ["timeline"] = { CREATED_3_3_0 } }, {
			filter(NECK_F, {
				i(49312),	-- Purified Onyxia Blood Talisman
				i(49314),	-- Sparkling Onyxia Tooth Pendant
			}),
		})),

		-- 3.4.2
		-- #if ANYCLASSIC
		expansion(EXPANSION.WRATH, patch(4,2), bubbleDownSelf({ ["timeline"] = { CREATED_3_4_2 } }, {
			filter(BACK_F, {
				i(206707),	-- Fleece Cloak
				i(206728),	-- Fleece Cloak
				i(206740),	-- Fleece Cloak
			}),
			filter(CLOTH, {
				i(206699),	-- Oracle Bracelets
				i(206700),	-- Oracle Belt
				i(206701),	-- Oracle Mantle
				i(206702),	-- Oracle Leggings
				i(206703),	-- Oracle Circlet
				i(206704),	-- Oracle Gloves
				i(206705),	-- Oracle Slippers
				i(206706),	-- Oracle Robe
			}),
			filter(FINGER_F, {
				i(206698),	-- Stirrup Ring
				i(206727),	-- Stirrup Ring
				i(206738),	-- Stirrup Ring
			}),
			filter(LEATHER, {
				i(206709),	-- Ghrino Vest
				i(206710),	-- Ghrino Bracers
				i(206711),	-- Ghrino Belt
				i(206712),	-- Ghrino Pauldrons
				i(206713),	-- Ghrino Britches
				i(206714),	-- Ghrino Cover
				i(206715),	-- Ghrino Gloves
				i(206716),	-- Ghrino Boots
				i(206750),	-- Ghrino Belt
				i(206751),	-- Ghrino Boots
				i(206752),	-- Ghrino Vest
				i(206753),	-- Ghrino Gloves
				i(206754),	-- Ghrino Cover
				i(206755),	-- Ghrino Britches
				i(206756),	-- Ghrino Pauldrons
				i(206757),	-- Ghrino Bracers
			}),
			filter(MAIL, {
				i(206725),	-- Wolvar Armor
				i(206735),	-- Wolvar Armor
				i(206719),	-- Wolvar Belt
				i(206737),	-- Wolvar Belt
				i(206718),	-- Wolvar Bindings
				i(206730),	-- Wolvar Bindings
				i(206723),	-- Wolvar Fists
				i(206734),	-- Wolvar Fists
				i(206724),	-- Wolvar Greaves
				i(206736),	-- Wolvar Greaves
				i(206722),	-- Wolvar Helmet
				i(206733),	-- Wolvar Helmet
				i(206721),	-- Wolvar Legguards
				i(206732),	-- Wolvar Legguards
				i(206720),	-- Wolvar Shoulderguards
				i(206731),	-- Wolvar Shoulderguards
			}),
			filter(NECK_F, {
				i(206708),	-- Gold Clasped Chain
				i(206729),	-- Gold Clasped Chain
				i(206739),	-- Gold Clasped Chain
			}),
			filter(PLATE, {
				i(206748),	-- Magnataur Bracers
				i(206743),	-- Magnataur Breastplate
				i(206744),	-- Magnataur Gauntlets
				i(206741),	-- Magnataur Girdle
				i(206745),	-- Magnataur Helm
				i(206746),	-- Magnataur Legplates
				i(206747),	-- Magnataur Pauldrons
				i(206742),	-- Magnataur Sabatons
			}),
		})),
		-- #endif
	}),
	expansion(EXPANSION.CATA, {
		-- 4.x.x
		n(P4xx, {
			filter(BACK_F, {
				i(59791),	-- Giantslayer Cloak
				i(58696),	-- QA Combat Test Healer Cloak 3 \\ QA Combat Test Healer Cloak 2
			}),
			filter(LEATHER, {
				i(59790),	-- Gnash-Crusher Helm
				i(65099),	-- Tsanga's Helm
			}),
			filter(NECK_F, {
				i(59665),	-- Emerald Dragonet Choker
			}),
			filter(PLATE, {
				i(68844),	-- Art Template Plate Hand - Plate_PVPDeathKnight_C_02 - Blue
				i(63056),	-- Fallback Armor - Plate Chest
				i(63055),	-- Fallback Armor - Plate Feet
				i(63057),	-- Fallback Armor - Plate Hand
				i(63058),	-- Fallback Armor - Plate Head
				i(63059),	-- Fallback Armor - Plate Legs
				i(63060),	-- Fallback Armor - Plate Shoulder
				i(63054),	-- Fallback Armor - Plate Waist
				i(63061),	-- Fallback Armor - Plate Wrist
				i(58564),	-- QA Combat Test Paladin Healer Belt
				i(58616),	-- QA Combat Test Paladin Healer Belt 2
				i(58708),	-- QA Combat Test Paladin Healer Boots
				i(58655),	-- QA Combat Test Paladin Healer Bracer
				i(58565),	-- QA Combat Test Paladin Healer Chest
				i(58682),	-- QA Combat Test Paladin Healer Chest 2
				i(58775),	-- QA Combat Test Paladin Healer Chest 3
				i(58532),	-- QA Combat Test Paladin Healer Gloves
				i(58566),	-- QA Combat Test Paladin Healer Gloves 2
				i(58746),	-- QA Combat Test Paladin Healer Helm
				i(58567),	-- QA Combat Test Paladin Healer Helm 2
				i(58568),	-- QA Combat Test Paladin Healer Legs
				i(58697),	-- QA Combat Test Paladin Healer Legs 3
				i(58757),	-- QA Combat Test Paladin Healer Shoulders
				i(58605),	-- QA Combat Test Paladin Healer Shoulders 2
				i(58569),	-- QA Combat Test Paladin Healer Shoulders 3
				i(58570),	-- QA Combat Test Plate DPS Belt
				i(58638),	-- QA Combat Test Plate DPS Belt 2
				i(58702),	-- QA Combat Test Plate DPS Boots
				i(58683),	-- QA Combat Test Plate DPS Bracer
				i(58510),	-- QA Combat Test Plate DPS Bracer 2
				i(58571),	-- QA Combat Test Plate DPS Chest
				i(58677),	-- QA Combat Test Plate DPS Chest 2
				i(58572),	-- QA Combat Test Plate DPS Gloves
				i(58611),	-- QA Combat Test Plate DPS Gloves 2
				i(58763),	-- QA Combat Test Plate DPS Helm
				i(58573),	-- QA Combat Test Plate DPS Helm 2
				i(58574),	-- QA Combat Test Plate DPS Legs
				i(58739),	-- QA Combat Test Plate DPS Legs 2
				i(58778),	-- QA Combat Test Plate DPS Legs 3
				i(58575),	-- QA Combat Test Plate DPS Shoulders
				i(58527),	-- QA Combat Test Plate DPS Shoulders 2
				i(58576),	-- QA Combat Test Plate Tank Belt
				i(58713),	-- QA Combat Test Plate Tank Belt 2
				i(58749),	-- QA Combat Test Plate Tank Boots
				i(58517),	-- QA Combat Test Plate Tank Chest
				i(58577),	-- QA Combat Test Plate Tank Chest 2
				i(58578),	-- QA Combat Test Plate Tank Gloves
				i(58690),	-- QA Combat Test Plate Tank Gloves 2
				i(58730),	-- QA Combat Test Plate Tank Helm
				i(58686),	-- QA Combat Test Plate Tank Helm 2
				i(58579),	-- QA Combat Test Plate Tank Helm 3
				i(58580),	-- QA Combat Test Plate Tank Legs
				i(58768),	-- QA Combat Test Plate Tank Legs 2
				i(58643),	-- QA Combat Test Plate Tank Shoulders
				i(58581),	-- QA Combat Test Plate Tank Shoulders 2
				i(47091),	-- Unfaltering Armguards (4.0)
			}),
		}),

		-- 4.0.1
		expansion(EXPANSION.CATA, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_1 } }, {
			filter(MAIL, {
				i(44428),	-- Dark Frostscale Chestpiece
			}),
		})),

		-- 4.0.3
		expansion(EXPANSION.CATA, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_4_0_3 } }, {
			cl(ROGUE, {
				i(54692),	-- Armor of Thero-Shan
				i(59600),	-- Phosphora Fedora
			}),
			filter(BACK_F, {
				-- #if BEFORE WOD
				-- Wouter NOTE: this is made available with the addition of Crate of Salvage in WoD
				i(55316),	-- Sorrowmurk Cloak
				-- #endif
				i(56355),	-- Skin of Stone
				i(60221),	-- Furlbrow Cloak
				i(65815),	-- Drape of the Mortal Guardians
			}),
			filter(CLOTH, {
				i(59797),	-- Abalone-Linked Robes
				i(62640),	-- Fallback Armor - Cloth Waist
				i(62641),	-- Fallback Armor - Cloth Feet
				i(62642),	-- Fallback Armor - Cloth Chest
				i(62643),	-- Fallback Armor - Cloth Hand
				i(62644),	-- Fallback Armor - Cloth Head
				i(62645),	-- Fallback Armor - Cloth Legs
				i(62646),	-- Fallback Armor - Cloth Robe
				i(62647),	-- Fallback Armor - Cloth Shoulder
				i(62648),	-- Fallback Armor - Cloth Wrist
				-- Wouter NOTE: these are made available with the addition of Crate of Salvage in WoD
				-- #if BEFORE WOD
				i(55775),	-- Galardell Cord
				i(55748),	-- Galardell Cowl
				i(55739),	-- Galardell Handwraps
				i(55757),	-- Galardell Leggings
				i(55721),	-- Galardell Robe
				i(55730),	-- Galardell Sandals
				i(55766),	-- Galardell Shoulderpads
				i(55712),	-- Galardell Wristwraps
				-- #endif
				i(57528),	-- Hogger's Mangy Handgrips
				i(54550),	-- Hood of Vigorous Defense
				i(60728),	-- Keeshan's Burlap Vest
				i(65746),	-- Leggings of Valorous Defense
				i(47102),	-- Manaweave Robe
				i(66013),	-- Mantle of the Glorious Song
				i(54977),	-- Revitalizing Sandals
				i(54542),	-- Robes of Restored Hope
				i(62988),	-- Sash of the Unhonored
				i(60631),	-- Vicious Gladiator's Cord of Dominance
				i(60632),	-- Vicious Gladiator's Cord of Dominance
				i(60629),	-- Vicious Gladiator's Cuffs of Dominance
				i(60614),	-- Vicious Gladiator's Cuffs of Dominance
				i(60627),	-- Vicious Gladiator's Treads of Dominance
				i(60633),	-- Vicious Gladiator's Treads of Dominance
			}),
			filter(FINGER_F, {
				i(57721),	-- QA Test Finger 10000 attack power
				i(57710),	-- QA Test Finger 2000 Strength
				i(58816),	-- QA Test Finger 250 Hit
				i(57738),	-- QA Test Finger 250 Mastery
				i(57713),	-- QA Test Finger 500 Agility
				i(57723),	-- QA Test Finger 500 intellect
				i(57708),	-- QA Test Finger 500 Strength
				i(57727),	-- QA Test Finger Spell Power
				i(57709),	-- QA Test Finger Strength
			}),
			filter(LEATHER, {
				i(54685),	-- Archer's Jerkin
				i(62697),	-- Art Template Leather Belt - Leather_Cataclysm_B_01 - Brown
				i(62698),	-- Art Template Leather Boot - Leather_Cataclysm_B_01 - Brown
				i(62699),	-- Art Template Leather Chest - Leather_Cataclysm_B_01 - Brown
				i(62700),	-- Art Template Leather Hand - Leather_Cataclysm_B_01 - Brown
				i(62701),	-- Art Template Leather Head - Leather_Cataclysm_B_01 - Brown
				i(62702),	-- Art Template Leather Legs - Leather_Cataclysm_B_01 - Brown
				i(62703),	-- Art Template Leather Shoulder - Leather_Cataclysm_B_01 - Brown
				i(62704),	-- Art Template Leather Wrist - Leather_Cataclysm_B_01 - Brown
				i(54686),	-- Barbaric Harness
				i(54673),	-- Barkshell Tunic
				i(54703),	-- Bogwalker Boots
				i(54708),	-- Ceremonial Leather Gloves
				i(54666),	-- Ceremonial Leather Harness
				i(54698),	-- Ceremonial Leather Loincloth
				i(54726),	-- Clouddrift Mantle
				i(54649),	-- Cow King's Hide
				i(54683),	-- Dusky Leather Armor
				i(54650),	-- Forest's Embrace
				i(54674),	-- Gloomshroud Armor
				i(54684),	-- Guardian Armor
				i(54670),	-- Hillman's Leather Vest
				i(56701),	-- Jinxed Vest
				i(54716),	-- Juicy Bracers
				i(54658),	-- Lionfur Armor
				i(54723),	-- Living Leggings
				i(54665),	-- Maatparm's Fungus Lined Vest
				i(54689),	-- Marshwarden's Tunic
				i(54668),	-- Murloc Scale Breastplate
				-- Wouter NOTE: these are made available with the addition of Crate of Salvage in WoD
				-- #if BEFORE WOD
				i(55640),	-- Nighthaven Bindings
				i(55658),	-- Nighthaven Boots
				i(55685),	-- Nighthaven Britches
				i(55667),	-- Nighthaven Gloves
				i(55676),	-- Nighthaven Hood
				i(55649),	-- Nighthaven Jerkin
				i(55694),	-- Nighthaven Shoulders
				i(55703),	-- Nighthaven Waistband
				-- #endif
				i(54691),	-- Nightscape Tunic
				i(54731),	-- not used (yes that's what it's called)
				i(56405),	-- Oasis Bracers
				i(54543),	-- Orca-Tooth Treads
				i(54680),	-- Raptor Hide Harness
				i(54677),	-- Raptorbane Armor
				i(54707),	-- Researcher's Gloves
				i(54652),	-- Righteous Armor
				i(59796),	-- Treads of Decapod Death
				i(54696),	-- Scorpashi Breastplate
				i(54687),	-- Sentinel Breastplate
				i(54724),	-- Shadowcraft Bracers
				i(54725),	-- Shadowcraft Gloves
				i(63012),	-- Skull Kickers
				i(54671),	-- Starsight Tunic
				i(54655),	-- Stormshroud Armor
				i(54695),	-- Surveyor's Tunic
				i(54681),	-- Thick Murloc Armor
				i(54727),	-- Traveler's Boots
				i(54667),	-- Vest of the Dragon Slayer
				i(60592),	-- Vicious Gladiator's Belt of Triumph
				i(60595),	-- Vicious Gladiator's Belt of Triumph
				i(60600),	-- Vicious Gladiator's Belt of Triumph
				i(60596),	-- Vicious Gladiator's Boots of Triumph
				i(60599),	-- Vicious Gladiator's Boots of Triumph
				i(54711),	-- Wendigo Collar
				i(54694),	-- Wolf Rider's Padded Armor
			}),
			filter(MAIL, {
				i(62715),	-- Art Template Mail Belt - Mail_Cataclysm_B_01 - Blue
				i(62716),	-- Art Template Mail Boot - Mail_Cataclysm_B_01 - Blue
				i(62717),	-- Art Template Mail Chest - Mail_Cataclysm_B_01 - Blue
				i(62718),	-- Art Template Mail Hand - Mail_Cataclysm_B_01 - Blue
				i(62719),	-- Art Template Mail Head - Mail_Cataclysm_B_01 - Blue
				i(62720),	-- Art Template Mail Legs - Mail_Cataclysm_B_01 - Blue
				i(62721),	-- Art Template Mail Shoulder - Mail_Cataclysm_B_01 - Blue
				i(62722),	-- Art Template Mail Wrist - Mail_Cataclysm_B_01 - Blue
				i(63002),	-- Bat Claw Boots
				i(54768),	-- Burnished Boots
				i(54778),	-- Burnished Boots (Again)
				i(54767),	-- Burnished Girdle
				i(54766),	-- Burnished Gloves
				i(54765),	-- Burnished Leggings
				i(54551),	-- Defiant Bracers
				i(54757),	-- Double Link Tunic
				-- Wouter NOTE: these are made available with the addition of Crate of Salvage in WoD
				-- #if BEFORE WOD
				i(55631),	-- Frayfeather Belt
				i(55568),	-- Frayfeather Bracers
				i(55595),	-- Frayfeather Gauntlets
				i(55586),	-- Frayfeather Greaves
				i(55604),	-- Frayfeather Helm
				i(55613),	-- Frayfeather Legguards
				i(55622),	-- Frayfeather Spaulders
				i(55577),	-- Frayfeather Vest
				-- #endif
				i(65744),	-- Nimble Command Shoulderguards
				i(54769),	-- Rough Bronze Bracers -- Do Not Remove until somebody provides proof as obtained. Guild Tab shows somebody might be able to craft it, but its a visual bug. 27th Oct 2020 -- Gold
				i(59789),	-- Sea-Snack Footguards
				i(54783),	-- Silvered Bronze Shoulders
				i(54781),	-- Thorbia's Gauntlets
				i(60537),	-- Vicious Gladiator's Sabatons of Dominance
				i(60570),	-- Vicious Gladiator's Sabatons of Salvation
				i(60552),	-- Vicious Gladiator's Sabatons of Triumph
				i(60562),	-- Vicious Gladiator's Sabatons of Triumph
				i(60563),	-- Vicious Gladiator's Sabatons of Triumph
				i(60566),	-- Vicious Gladiator's Waistguard of Salvation
				i(60571),	-- Vicious Gladiator's Waistguard of Salvation
				i(60551),	-- Vicious Gladiator's Waistguard of Triumph
				i(60558),	-- Vicious Gladiator's Waistguard of Triumph
				i(60561),	-- Vicious Gladiator's Waistguard of Triumph
				i(60538),	-- Vicious Gladiator's Wristguards of Dominance
				i(60568),	-- Vicious Gladiator's Wristguards of Salvation
				i(60553),	-- Vicious Gladiator's Wristguards of Triumph
				i(60556),	-- Vicious Gladiator's Wristguards of Triumph
				i(60560),	-- Vicious Gladiator's Wristguards of Triumph
			}),
			filter(PLATE, {
				i(54789),	-- Art Template Plate Belt - Plate_Common_C_01 - Rust
				i(59768),	-- Bracers of Burbling Freedom
				i(59772),	-- Bracers of Burbling Freedom (Yes, Same name)
				i(49450),	-- Defusing Cinch
				i(59795),	-- Harp Shell Shoulderplates
				i(65743),	-- Helm of Vicious Direction
				i(54552),	-- Retaliation Gauntlets
				i(54544),	-- Scrapped Spaulders
				i(54751),	-- Silverscale Chestguard
				-- Wouter NOTE: these are made available with the addition of Crate of Salvage in WoD
				-- #if BEFORE WOD
				i(55505),	-- Steelgrill Breastplate
				i(55523),	-- Steelgrill Gauntlets
				i(55559),	-- Steelgrill Girdle
				i(55532),	-- Steelgrill Helm
				i(55541),	-- Steelgrill Legplates
				i(55550),	-- Steelgrill Pauldrons
				i(55514),	-- Steelgrill Sabatons
				i(55496),	-- Steelgrill Vambraces
				-- #endif
				i(60507),	-- Vicious Gladiator's Bracers of Salvation
				i(60515),	-- Vicious Gladiator's Bracers of Salvation
				i(60510),	-- Vicious Gladiator's Bracers of Triumph
				i(60524),	-- Vicious Gladiator's Bracers of Triumph
				i(60529),	-- Vicious Gladiator's Bracers of Triumph
				i(60517),	-- Vicious Gladiator's Girdle of Salvation
				i(60518),	-- Vicious Gladiator's Girdle of Salvation
				i(60514),	-- Vicious Gladiator's Girdle of Triumph
				i(60526),	-- Vicious Gladiator's Girdle of Triumph
				i(60527),	-- Vicious Gladiator's Girdle of Triumph
				i(60506),	-- Vicious Gladiator's Greaves of Salvation
				i(60519),	-- Vicious Gladiator's Greaves of Salvation
				i(60522),	-- Vicious Gladiator's Greaves of Triumph
				i(60525),	-- Vicious Gladiator's Greaves of Triumph
				i(60528),	-- Vicious Gladiator's Greaves of Triumph
			}),
			filter(SHIRTS, {
				i(63074),	-- "Behind You!" Shirt
				i(54331),	-- Black Velvet Chest
				i(49410),	-- Gilnean Acolyte's Shirt
				i(49414),	-- Gilnean Acolyte's Shirt
				i(49402),	-- Gilnean Apprentice's Shirt
				i(49418),	-- Gilnean Apprentice's Shirt
				i(49405),	-- Gilnean Neophyte's Shirt
				i(49422),	-- Gilnean Neophyte's Shirt
				i(52548),	-- Initiate's Tunic
				i(62061),	-- Irradiated Gnome Shirt
				i(60619),	-- No Shirt
				i(53879),	-- Rugged Work Shirt
				i(55047),	-- Shirt of No Criticals
				i(46103),	-- Shirt of Titanic Scaling
				i(53880),	-- Super Girly Shirt
				i(53869),	-- War Paint (Shirt) NOT GOOD FOR THE LADIES (NYI)
			}),
			filter(TRINKET_F, {
				i(54547),	-- Cracked Jewelry Box
				i(65015),	-- DONTUSEFury of Angerforge
				i(61035),	-- Vicious Gladiator's Badge of Dominance
				i(61034),	-- Vicious Gladiator's Badge of Victory
				i(61030),	-- Vicious Gladiator's Emblem of Proficiency
				i(69781),	-- Vicious Gladiator's Mark of Cruelty
				i(69783),	-- Vicious Gladiator's Mark of Meditation
				i(69782),	-- Vicious Gladiator's Mark of Tenacity
				i(60795),	-- Vicious Gladiator's Medallion of Accuracy (A)
				i(60796),	-- Vicious Gladiator's Medallion of Alacrity (A)
				i(60798),	-- Vicious Gladiator's Medallion of Command (A)
				i(60797),	-- Vicious Gladiator's Medallion of Prowess (A)
				i(69784),	-- Vicious Gladiator's Symbol of Cruelty
				i(69786),	-- Vicious Gladiator's Symbol of Meditation
				i(69785),	-- Vicious Gladiator's Symbol of Tenacity
				i(69785),	-- Vicious Gladiator's Symbol of Tenacity
			}),
		})),

		-- 4.2.0
		expansion(EXPANSION.CATA, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_2_0 } }, {
			filter(LEATHER, {
				i(71569),	-- Flamebinder Bracers
				i(71394),	-- Flamebinding Girdle
				i(71581),	-- Smolderskull Bindings
			}),
			filter(MAIL, {
				i(71570),	-- Bracers of Forked Lightning
				i(71582),	-- Bracers of Misting Ash
			}),
			filter(PLATE, {
				i(71583),	-- Bracers of Imperious Truths
				i(71585),	-- Bracers of Regal Force
				i(71584),	-- Gigantiform Bracers
				i(71400),	-- Girdle of the Indomitable Flame
			}),
			filter(TRINKET_F, {
				i(70411),	-- Ruthless Gladiator's Mark of Meditation
				i(70410),	-- Ruthless Gladiator's Mark of Tenacity
				i(70412),	-- Ruthless Gladiator's Symbol of Cruelty
				i(70414),	-- Ruthless Gladiator's Symbol of Meditation
				i(70413),	-- Ruthless Gladiator's Symbol of Tenacity
			}),
		})),

		-- 4.3.0
		expansion(EXPANSION.CATA, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_4_3_0 } }, {
			-- #if ANYCLASSIC
			filter(BACK_F, {
				i(73315),	-- Ebonsoul Cloak of Battle
				i(73316),	-- Ebonsoul Cloak of Stoicism
			}),
			-- #endif
			filter(CLOTH, {
				i(78532),	-- Clockwinder's Immaculate Gloves
				i(78608),	-- Clockwinder's Immaculate Gloves
				i(78541),	-- Hood of Hidden Flesh
				i(78556),	-- Lightwarper Vestments
				i(78635),	-- Lightwarper Vestments
				i(78555),	-- Robes of Searing Shadow
				i(78542),	-- Soulgaze Cowl
				i(78620),	-- Soulgaze Cowl
				i(78533),	-- The Hands of Gilly
				i(78607),	-- The Hands of Gilly
			}),
			-- #if ANYCLASSIC
			filter(FINGER_F, {
				i(73152),	-- Ebonsoul Band of Might
				i(73159),	-- Ebonsoul Band of Stoicism
				i(73153),	-- Ebonsoul Ring of Might
				i(73158),	-- Ebonsoul Ring of Stoicism
			}),
			-- #endif
			filter(LEATHER, {
				i(78565),	-- Belt of Hidden Keys
				i(78640),	-- Belt of Hidden Keys
				i(78566),	-- Belt of Universal Curing
				i(78641),	-- Belt of Universal Curing
				i(78517),	-- Boots of Fungoid Growth
				i(78592),	-- Boots of Fungoid Growth
				i(78574),	-- Bracers of Manifold Pockets
				i(78654),	-- Bracers of Manifold Pockets
				i(78505),	-- Decaying Herbalist's Robes
				i(78582),	-- Decaying Herbalist's Robes
				i(78531),	-- Fungus-Born Gloves
				i(78604),	-- Fungus-Born Gloves
				i(78540),	-- Helmet of Perpetual Rebirth
				i(78618),	-- Helmet of Perpetual Rebirth
				i(78530),	-- Lightfinger Handwraps
				i(78609),	-- Lightfinger Handwraps
				i(78575),	-- Luminescent Bracers
				i(78652),	-- Luminescent Bracers
				i(78539),	-- Nocturnal Gaze
				i(78617),	-- Nocturnal Gaze
				i(78516),	-- Rooftop Griptoes
				i(78594),	-- Rooftop Griptoes
				i(78504),	-- Shadowbinder Chestguard
				i(78581),	-- Shadowbinder Chestguard
			}),
			filter(MAIL, {
				i(78527),	-- Arrowflick Gauntlets
				i(78610),	-- Arrowflick Gauntlets
				i(78512),	-- Boneshard Boots
				i(78596),	-- Boneshard Boots
				i(78572),	-- Bracers of the Spectral Wolf
				i(78561),	-- Cord of Dragon Sinew
				i(78642),	-- Cord of Dragon Sinew
				i(78571),	-- Dragonbelly Bracers
				i(78653),	-- Dragonbelly Bracers
				i(78501),	-- Dragonflayer Vest
				i(78579),	-- Dragonflayer Vest
				i(78502),	-- Ghostworld Chestguard
				i(78562),	-- Girdle of Shamanic Fury
				i(78528),	-- Gloves of Ghostly Dreams
				i(78513),	-- Sabatons of the Graceful Spirit
				i(78537),	-- Wolfdream Circlet
				i(78536),	-- Zeherah's Dragonskull Crown
				i(78619),	-- Zeherah's Dragonskull Crown
			}),
			-- #if ANYCLASSIC
			filter(NECK_F, {
				i(73156),	-- Ebonsoul Amulet
				i(73151),	-- Ebonsoul Pendant
			}),
			-- #endif
			filter(PLATE, {
				i(78563),	-- Blinding Girdle of Truth
				i(78644),	-- Blinding Girdle of Truth
				i(78499),	-- Bones of the Damned
				i(78583),	-- Bones of the Damned
				i(78650),	-- Bracers of Unrelenting Excellence
				i(78584),	-- Chestplate of the Unshakable Titan
				i(78564),	-- Demonbone Waistguard
				i(78645),	-- Demonbone Waistguard
				-- #if ANYCLASSIC
				i(72936),	-- Ebonsoul Armguards
				i(72918),	-- Ebonsoul Breastplate
				i(72929),	-- Ebonsoul Chestguard
				i(72932),	-- Ebonsoul Faceguard
				i(72920),	-- Ebonsoul Gauntlets
				i(72924),	-- Ebonsoul Girdle
				i(72930),	-- Ebonsoul Greaves
				i(72931),	-- Ebonsoul Handguards
				i(72921),	-- Ebonsoul Helm
				i(72933),	-- Ebonsoul Legguards
				i(72922),	-- Ebonsoul Legplates
				i(72923),	-- Ebonsoul Pauldrons
				i(72919),	-- Ebonsoul Sabatons
				i(72934),	-- Ebonsoul Shoulderguards
				i(72925),	-- Ebonsoul Vambraces
				i(72935),	-- Ebonsoul Waistband
				-- #endif
				i(78573),	-- Flashing Bracers of Warmth
				i(78648),	-- Flashing Bracers of Warmth
				i(78646),	-- Forgesmelter Waistplate
				i(78606),	-- Gauntlets of Feathery Blows
				i(78529),	-- Gleaming Grips of Mending
				i(78612),	-- Gleaming Grips of Mending
				i(78538),	-- Glowing Wings of Hope
				i(78621),	-- Glowing Wings of Hope
				i(78525),	-- Grimfist Crushers
				i(78605),	-- Grimfist Crushers
				i(78569),	-- Heartcrusher Wristplates
				i(78649),	-- Heartcrusher Wristplates
				i(78615),	-- Jaw of Repudiation
				i(78503),	-- Shining Carapace of Glory
				i(78578),	-- Shining Carapace of Glory
				i(78534),	-- Visage of Petrification
				i(78614),	-- Visage of Petrification
			}),
			-- #if BEFORE MOP
			filter(RELICS_F, {
				-- #if ANYCLASSIC
				i(73343),	-- Ebonsoul Sigil of Battle
				i(73346),	-- Ebonsoul Sigil of Stoicism
				-- #endif
				-- These were created for Dragon Soul, but the Normal Mode relics themselves were added to the Valor vendor instead, meaning the LFR and Heroic versions were never available to players
				i(78629),	-- Gutripper Shard (LFR)
				i(78550),	-- Gutripper Shard (Heroic)
				i(78631),	-- Lightning Spirit in a Bottle (LFR)
				i(78552),	-- Lightning Spirit in a Bottle (Heroic)
				i(78630),	-- Mindbender Lens (LFR)
				i(78553),	-- Mindbender Lens (Heroic)
				i(78633),	-- Ripfang Relic (LFR)
				i(78554),	-- Ripfang Relic (Heroic)
				i(78632),	-- Stoutheart Talisman (LFR)
				i(78551),	-- Stoutheart Talisman (Heroic)
			}),
			-- #endif
			-- #if ANYCLASSIC
			filter(TRINKET_F, {
				i(73157),	-- Ebonsoul Defender's Idol
				i(73160),	-- Ebonsoul Defender's Stone
				i(73155),	-- Ebonsoul Idol of Battle
				i(73154),	-- Ebonsoul Stone of Battle
			}),
			-- #endif
		})),
	}),
	expansion(EXPANSION.MOP, {
		-- 5.0.1
		expansion(EXPANSION.MOP, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			filter(BACK_F, {
				i(79790),	-- QA Combat Test Agility DPS Cloak 3
				i(79791),	-- QA Combat Test Healer Cloak 2
				i(80965),	-- Scavenger's Cape
				i(80968),	-- Scavenger's Cloak
				i(80966),	-- Scavenger's Drape
				i(80969),	-- Scavenger's Manteau
				i(80967),	-- Scavenger's Shawl
				i(83336),	-- 5.0 QA PVP Test Agility DPS Cloak
				i(83337),	-- 5.0 QA PVP Test Agility DPS Cloak 2
				i(83338),	-- 5.0 QA PVP Test Agility DPS Cloak 3
				i(83367),	-- 5.0 QA PVP Test Caster DPS Cloak
				i(83368),	-- 5.0 QA PVP Test Caster DPS Cloak 2
				i(83426),	-- 5.0 QA PVP Test Healer Cloak 2
				i(83427),	-- 5.0 QA PVP Test Healer Cloak 3
				i(83582),	-- 5.0 QA PVP Test Strength DPS Cloak
				i(83583),	-- 5.0 QA PVP Test Strength DPS Cloak 2
				i(83584),	-- 5.0 QA PVP Test Strength DPS Cloak 3
				i(83601),	-- 5.0 QA PVP Test Tank Cloak
				i(83602),	-- 5.0 QA PVP Test Tank Cloak 2
				i(83603),	-- 5.0 QA PVP Test Tank Cloak 3
			}),
			filter(CLOTH, {
				i(76865),	-- Art Template Cloth - Belt with Belt Buckle Model
				i(77394),	-- Art Template Cloth Belt - Robe_PanProg_B_01 - Blue
				i(77395),	-- Art Template Cloth Boot - Robe_PanProg_B_01 - Blue
				i(77396),	-- Art Template Cloth Wrist - Robe_PanProg_B_01 - Blue
				i(77397),	-- Art Template Cloth Robe - Robe_PanProg_B_01 - Blue
				i(77398),	-- Art Template Cloth Hand - Robe_PanProg_B_01 - Blue
				i(77399),	-- Art Template Cloth Legs - Robe_PanProg_B_01 - Blue
				i(77400),	-- Art Template Cloth Chest - Robe_PanProg_B_01 - Blue
				i(77420),	-- Art Template Cloth Belt - Robe_Panda_A_02 - Yellow
				i(77421),	-- Art Template Cloth Boot - Robe_Panda_A_02 - Yellow
				i(77422),	-- Art Template Cloth Legs - Robe_Panda_A_02 - Yellow
				i(77423),	-- Art Template Cloth Robe - Robe_Panda_A_02 - Yellow
				i(77427),	-- Art Template Cloth Belt - Robe_Panda_A_02 - Brown
				i(77428),	-- Art Template Cloth Boot - Robe_Panda_A_02 - Brown
				i(77429),	-- Art Template Cloth Legs - Robe_Panda_A_02 - Brown
				i(77430),	-- Art Template Cloth Robe - Robe_Panda_A_02 - Brown
				i(77433),	-- Art Template Cloth Belt - Robe_Panda_A_02 - Red
				i(77434),	-- Art Template Cloth Boot - Robe_Panda_A_02 - Red
				i(77435),	-- Art Template Cloth Legs - Robe_Panda_A_02 - Red
				i(77436),	-- Art Template Cloth Robe - Robe_Panda_A_02 - Red
				i(77437),	-- Art Template Cloth Belt - Robe_Panda_A_02 - Green
				i(77438),	-- Art Template Cloth Boot - Robe_Panda_A_02 - Green
				i(77439),	-- Art Template Cloth Legs - Robe_Panda_A_02 - Green
				i(77440),	-- Art Template Cloth Robe - Robe_Panda_A_02 - Green
				i(77451),	-- Art Template Cloth Head - Cloth_SunHat_B_01
				i(77505),	-- Art Template Cloth Belt - Cloth_PanStart_A_01 - Default
				i(77507),	-- Art Template Cloth Legs - Cloth_PanStart_A_01 - Default
				i(77508),	-- Art Template Cloth Chest - Cloth_PanStart_A_01 - Default
				i(77511),	-- Art Template Cloth Wrist - Robe_PanProg_B_01 - White
				i(77512),	-- Art Template Cloth Robe - Robe_PanProg_B_01 - White
				i(77513),	-- Art Template Cloth Legs - Robe_PanProg_B_01 - White
				i(77514),	-- Art Template Cloth Hand - Robe_PanProg_B_01 - White
				i(77515),	-- Art Template Cloth Chest - Robe_PanProg_B_01 - White
				i(77516),	-- Art Template Cloth Boot - Robe_PanProg_B_01 - White
				i(77517),	-- Art Template Cloth Belt - Robe_PanProg_B_01 - White
				i(77518),	-- Art Template Cloth Wrist - Robe_PanProg_B_01 - Green
				i(77519),	-- Art Template Cloth Robe - Robe_PanProg_B_01 - Green
				i(77520),	-- Art Template Cloth Legs - Robe_PanProg_B_01 - Green
				i(77521),	-- Art Template Cloth Hand - Robe_PanProg_B_01 - Green
				i(77522),	-- Art Template Cloth Chest - Robe_PanProg_B_01 - Green
				i(77523),	-- Art Template Cloth Boot - Robe_PanProg_B_01 - Green
				i(77524),	-- Art Template Cloth Belt - Robe_PanProg_B_01 - Green
				i(79834),	-- Art Template Cloth Belt - Cloth_Panda_B_02 - Default
				i(79835),	-- Art Template Cloth Boot - Cloth_Panda_B_02 - Default
				i(79836),	-- Art Template Cloth Chest - Cloth_Panda_B_02 - Default
				i(79837),	-- Art Template Cloth Hand - Cloth_Panda_B_02 - Default
				i(79838),	-- Art Template Cloth Head - Cloth_Panda_B_02 - Default
				i(79839),	-- Art Template Cloth Legs - Cloth_Panda_B_02 - Default
				i(79840),	-- Art Template Cloth Robe - Cloth_Panda_B_02 - Default
				i(79841),	-- Art Template Cloth Shoulder - Cloth_Panda_B_02 - Default
				i(79842),	-- Art Template Cloth Wrist - Cloth_Panda_B_02 - Default
				i(79843),	-- Art Template Cloth Belt - Cloth_Panda_B_02 - White
				i(79844),	-- Art Template Cloth Boot - Cloth_Panda_B_02 - White
				i(79845),	-- Art Template Cloth Chest - Cloth_Panda_B_02 - White
				i(79846),	-- Art Template Cloth Hand - Cloth_Panda_B_02 - White
				i(79847),	-- Art Template Cloth Head - Cloth_Panda_B_02 - White
				i(79848),	-- Art Template Cloth Legs - Cloth_Panda_B_02 - White
				i(79849),	-- Art Template Cloth Robe - Cloth_Panda_B_02 - White
				i(79850),	-- Art Template Cloth Shoulder - Cloth_Panda_B_02 - White
				i(79851),	-- Art Template Cloth Wrist - Cloth_Panda_B_02 - White
				i(79852),	-- Art Template Cloth Belt - Cloth_Panda_B_02 - Blue
				i(79853),	-- Art Template Cloth Boot - Cloth_Panda_B_02 - Blue
				i(79854),	-- Art Template Cloth Chest - Cloth_Panda_B_02 - Blue
				i(79855),	-- Art Template Cloth Hand - Cloth_Panda_B_02 - Blue
				i(79856),	-- Art Template Cloth Head - Cloth_Panda_B_02 - Blue
				i(79857),	-- Art Template Cloth Legs - Cloth_Panda_B_02 - Blue
				i(79858),	-- Art Template Cloth Robe - Cloth_Panda_B_02 - Blue
				i(79859),	-- Art Template Cloth Shoulder - Cloth_Panda_B_02 - Blue
				i(79860),	-- Art Template Cloth Wrist - Cloth_Panda_B_02 - Blue
				i(79953),	-- Art Template Cloth Belt Robe_RaidMage_E_01 - Test
				i(79954),	-- Art Template Cloth Boot Robe_RaidMage_E_01 - Test
				i(79955),	-- Art Template Cloth Chest Robe_RaidMage_E_01 - Test
				i(79956),	-- Art Template Cloth Hand Robe_RaidMage_E_01 - Test
				i(79957),	-- Art Template Cloth Head Robe_RaidMage_E_01 - Test
				i(79958),	-- Art Template Cloth Legs Robe_RaidMage_E_01 - Test
				i(79959),	-- Art Template Cloth Robe Robe_RaidMage_E_01 - Test
				i(79960),	-- Art Template Cloth Shoulder Robe_RaidMage_E_01 - Test
				i(79961),	-- Art Template Cloth Wrist Robe_RaidMage_E_01 - Test
				i(79962),	-- Art Template Cloth Belt Robe_RaidMage_E_01 - Test2
				i(79963),	-- Art Template Cloth Boot Robe_RaidMage_E_01 - Test2
				i(79964),	-- Art Template Cloth Chest Robe_RaidMage_E_01 - Test2
				i(79965),	-- Art Template Cloth Hand Robe_RaidMage_E_01 - Test2
				i(79966),	-- Art Template Cloth Head Robe_RaidMage_E_01 - Test2
				i(79967),	-- Art Template Cloth Legs Robe_RaidMage_E_01 - Test2
				i(79968),	-- Art Template Cloth Robe Robe_RaidMage_E_01 - Test2
				i(79969),	-- Art Template Cloth Shoulder Robe_RaidMage_E_01 - Test2
				i(79970),	-- Art Template Cloth Wrist Robe_RaidMage_E_01 - Test2
				i(79971),	-- Art Template Cloth Wrist Robe_RaidMage_E_01 - Test3
				i(79972),	-- Art Template Cloth Shoulder Robe_RaidMage_E_01 - Test3
				i(79973),	-- Art Template Cloth Robe Robe_RaidMage_E_01 - Test3
				i(79974),	-- Art Template Cloth Legs Robe_RaidMage_E_01 - Test3
				i(79975),	-- Art Template Cloth Head Robe_RaidMage_E_01 - Test3
				i(79976),	-- Art Template Cloth Hand Robe_RaidMage_E_01 - Test3
				i(79977),	-- Art Template Cloth Chest Robe_RaidMage_E_01 - Test3
				i(79978),	-- Art Template Cloth Boot Robe_RaidMage_E_01 - Test3
				i(79979),	-- Art Template Cloth Belt Robe_RaidMage_E_01 - Test3
				i(80120),	-- Art Template Cloth Head - Helm_Robe_Holiday_Summerfest_A_02
				i(80818),	-- Art Template Cloth Head - Helm_Misc_Beerhat_A_01
				i(81327),	-- Art Template Cloth Belt - Cloth_ChallengePriest_D_01 - Gold
				i(81328),	-- Art Template Cloth Boot - Cloth_ChallengePriest_D_01 - Gold
				i(81329),	-- Art Template Cloth Shoulder - Cloth_ChallengePriest_D_01 - Gold
				i(81330),	-- Art Template Cloth Wrist - Cloth_ChallengePriest_D_01 - Gold
				i(81331),	-- Art Template Cloth Robe - Cloth_ChallengePriest_D_01 - Gold
				i(81332),	-- Art Template Cloth Hand - Cloth_ChallengePriest_D_01 - Gold
				i(81333),	-- Art Template Cloth Head - Cloth_ChallengePriest_D_01 - Gold
				i(81334),	-- Art Template Cloth Legs - Cloth_ChallengePriest_D_01 - Gold
				i(81335),	-- Art Template Cloth Chest - Cloth_ChallengePriest_D_01 - Gold
				i(81336),	-- Art Template Cloth Belt - Cloth_ChallengePriest_D_01 - Green
				i(81337),	-- Art Template Cloth Boot - Cloth_ChallengePriest_D_01 - Green
				i(81338),	-- Art Template Cloth Shoulder - Cloth_ChallengePriest_D_01 - Green
				i(81339),	-- Art Template Cloth Wrist - Cloth_ChallengePriest_D_01 - Green
				i(81340),	-- Art Template Cloth Robe - Cloth_ChallengePriest_D_01 - Green
				i(81341),	-- Art Template Cloth Hand - Cloth_ChallengePriest_D_01 - Green
				i(81342),	-- Art Template Cloth Head - Cloth_ChallengePriest_D_01 - Green
				i(81343),	-- Art Template Cloth Legs - Cloth_ChallengePriest_D_01 - Green
				i(81344),	-- Art Template Cloth Chest - Cloth_ChallengePriest_D_01 - Green
				i(81345),	-- Art Template Cloth Belt - Cloth_ChallengePriest_D_01 - Red
				i(81346),	-- Art Template Cloth Boot - Cloth_ChallengePriest_D_01 - Red
				i(81347),	-- Art Template Cloth Shoulder - Cloth_ChallengePriest_D_01 - Red
				i(81348),	-- Art Template Cloth Wrist - Cloth_ChallengePriest_D_01 - Red
				i(81349),	-- Art Template Cloth Robe - Cloth_ChallengePriest_D_01 - Red
				i(81350),	-- Art Template Cloth Hand - Cloth_ChallengePriest_D_01 - Red
				i(81351),	-- Art Template Cloth Head - Cloth_ChallengePriest_D_01 - Red
				i(81352),	-- Art Template Cloth Legs - Cloth_ChallengePriest_D_01 - Red
				i(81353),	-- Art Template Cloth Chest - Cloth_ChallengePriest_D_01 - Red
				i(81359),	-- Art Template Cloth Belt - Cloth_Shadowpan_A_01
				i(81360),	-- Art Template Cloth Boot - Cloth_Shadowpan_A_01
				i(81361),	-- Art Template Cloth Shoulder - Cloth_Shadowpan_A_01
				i(81362),	-- Art Template Cloth Wrist - Cloth_Shadowpan_A_01
				i(81364),	-- Art Template Cloth Hand - Cloth_Shadowpan_A_01
				i(81365),	-- Art Template Cloth Head - Cloth_Shadowpan_A_01
				i(81366),	-- Art Template Cloth Legs - Cloth_Shadowpan_A_01
				i(81367),	-- Art Template Cloth Chest - Cloth_Shadowpan_A_01
				i(81368),	-- Art Template Cloth Belt - Cloth_Shadowpan_A_01 - Dark
				i(81369),	-- Art Template Cloth Boot - Cloth_Shadowpan_A_01 - Dark
				i(81370),	-- Art Template Cloth Chest - Cloth_Shadowpan_A_01 - Dark
				i(81371),	-- Art Template Cloth Hand - Cloth_Shadowpan_A_01 - Dark
				i(81372),	-- Art Template Cloth Head - Cloth_Shadowpan_A_01 - Dark
				i(81373),	-- Art Template Cloth Legs - Cloth_Shadowpan_A_01 - Dark
				i(81375),	-- Art Template Cloth Shoulder - Cloth_Shadowpan_A_01 - Dark
				i(81376),	-- Art Template Cloth Wrist - Cloth_Shadowpan_A_01 - Dark
				i(81714),	-- Art Template Cloth Belt - Cloth_DungeonCloth_C_06
				i(81715),	-- Art Template Cloth Boot - Cloth_DungeonCloth_C_06
				i(81716),	-- Art Template Cloth Shoulder - Cloth_DungeonCloth_C_06
				i(81717),	-- Art Template Cloth Wrist - Cloth_DungeonCloth_C_06
				i(81718),	-- Art Template Cloth Robe - Cloth_DungeonCloth_C_06
				i(81719),	-- Art Template Cloth Hand - Cloth_DungeonCloth_C_06
				i(81720),	-- Art Template Cloth Head - Cloth_DungeonCloth_C_06
				i(81721),	-- Art Template Cloth Legs - Cloth_DungeonCloth_C_06
				i(81722),	-- Art Template Cloth Chest - Cloth_DungeonCloth_C_06
				i(81723),	-- Art Template Cloth Belt - Cloth_DungeonCloth_C_06 - Purple
				i(81724),	-- Art Template Cloth Boot - Cloth_DungeonCloth_C_06 - Purple
				i(81725),	-- Art Template Cloth Shoulder - Cloth_DungeonCloth_C_06 - Purple
				i(81726),	-- Art Template Cloth Wrist - Cloth_DungeonCloth_C_06 - Purple
				i(81727),	-- Art Template Cloth Robe - Cloth_DungeonCloth_C_06 - Purple
				i(81728),	-- Art Template Cloth Hand - Cloth_DungeonCloth_C_06 - Purple
				i(81729),	-- Art Template Cloth Head - Cloth_DungeonCloth_C_06 - Purple
				i(81730),	-- Art Template Cloth Legs - Cloth_DungeonCloth_C_06 - Purple
				i(81731),	-- Art Template Cloth Chest - Cloth_DungeonCloth_C_06 - Purple
				i(81732),	-- Art Template Cloth Belt - Cloth_DungeonCloth_C_06 - Red
				i(81733),	-- Art Template Cloth Boot - Cloth_DungeonCloth_C_06 - Red
				i(81734),	-- Art Template Cloth Shoulder - Cloth_DungeonCloth_C_06 - Red
				i(81735),	-- Art Template Cloth Wrist - Cloth_DungeonCloth_C_06 - Red
				i(81736),	-- Art Template Cloth Robe - Cloth_DungeonCloth_C_06 - Red
				i(81737),	-- Art Template Cloth Hand - Cloth_DungeonCloth_C_06 - Red
				i(81738),	-- Art Template Cloth Head - Cloth_DungeonCloth_C_06 - Red
				i(81739),	-- Art Template Cloth Legs - Cloth_DungeonCloth_C_06 - Red
				i(81740),	-- Art Template Cloth Chest - Cloth_DungeonCloth_C_06 - Red
				i(82320),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Blue
				i(82321),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Gold
				i(82322),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Green
				i(82323),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Orange
				i(82324),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Purple
				i(82325),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Red
				i(82326),	-- Art Template Cloth Legs - Misc_Panda_A_TailRing_PR_F - Silver
				i(82735),	-- Art Template Cloth Belt - Cloth_RaidPriest_L_01 - Green
				i(82736),	-- Art Template Cloth Boot - Cloth_RaidPriest_L_01 - Green
				i(82737),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_L_01 - Green
				i(82738),	-- Art Template Cloth Wrist - Cloth_RaidPriest_L_01 - Green
				i(82739),	-- Art Template Cloth Robe - Cloth_RaidPriest_L_01 - Green
				i(82740),	-- Art Template Cloth Hand - Cloth_RaidPriest_L_01 - Green
				i(82741),	-- Art Template Cloth Head - Cloth_RaidPriest_L_01 - Green
				i(82742),	-- Art Template Cloth Legs - Cloth_RaidPriest_L_01 - Green
				i(82743),	-- Art Template Cloth Chest - Cloth_RaidPriest_L_01 - Green
				i(82745),	-- Art Template Cloth Belt - Cloth_RaidPriest_L_01 - Red
				i(82746),	-- Art Template Cloth Boot - Cloth_RaidPriest_L_01 - Red
				i(82747),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_L_01 - Red
				i(82748),	-- Art Template Cloth Wrist - Cloth_RaidPriest_L_01 - Red
				i(82749),	-- Art Template Cloth Robe - Cloth_RaidPriest_L_01 - Red
				i(82750),	-- Art Template Cloth Hand - Cloth_RaidPriest_L_01 - Red
				i(82751),	-- Art Template Cloth Head - Cloth_RaidPriest_L_01 - Red
				i(82752),	-- Art Template Cloth Legs - Cloth_RaidPriest_L_01 - Red
				i(82753),	-- Art Template Cloth Chest - Cloth_RaidPriest_L_01 - Red
				i(82754),	-- Art Template Cloth Belt - Cloth_RaidPriest_L_01 - Tan
				i(82755),	-- Art Template Cloth Boot - Cloth_RaidPriest_L_01 - Tan
				i(82756),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_L_01 - Tan
				i(82757),	-- Art Template Cloth Wrist - Cloth_RaidPriest_L_01 - Tan
				i(82758),	-- Art Template Cloth Robe - Cloth_RaidPriest_L_01 - Tan
				i(82759),	-- Art Template Cloth Hand - Cloth_RaidPriest_L_01 - Tan
				i(82760),	-- Art Template Cloth Head - Cloth_RaidPriest_L_01 - Tan
				i(82761),	-- Art Template Cloth Legs - Cloth_RaidPriest_L_01 - Tan
				i(82762),	-- Art Template Cloth Chest - Cloth_RaidPriest_L_01 - Tan
				i(82802),	-- Art Template Cloth Head - Blindfold_A_01 - Leather
				i(82803),	-- Art Template Cloth Head - Blindfold_A_01 - Red
				i(82987),	-- Art Template Cloth Belt - Cloth_RaidWarlock_L_01 - Green
				i(82988),	-- Art Template Cloth Boot - Cloth_RaidWarlock_L_01 - Green
				i(82989),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_L_01 - Green
				i(82990),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_L_01 - Green
				i(82991),	-- Art Template Cloth Robe - Cloth_RaidWarlock_L_01 - Green
				i(82992),	-- Art Template Cloth Hand - Cloth_RaidWarlock_L_01 - Green
				i(82993),	-- Art Template Cloth Head - Cloth_RaidWarlock_L_01 - Green
				i(82994),	-- Art Template Cloth Legs - Cloth_RaidWarlock_L_01 - Green
				i(82995),	-- Art Template Cloth Chest - Cloth_RaidWarlock_L_01 - Green
				i(82997),	-- Art Template Cloth Belt - Cloth_RaidWarlock_L_01 - Purple
				i(82998),	-- Art Template Cloth Boot - Cloth_RaidWarlock_L_01 - Purple
				i(82999),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_L_01 - Purple
				i(83000),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_L_01 - Purple
				i(83001),	-- Art Template Cloth Robe - Cloth_RaidWarlock_L_01 - Purple
				i(83002),	-- Art Template Cloth Hand - Cloth_RaidWarlock_L_01 - Purple
				i(83003),	-- Art Template Cloth Head - Cloth_RaidWarlock_L_01 - Purple
				i(83004),	-- Art Template Cloth Legs - Cloth_RaidWarlock_L_01 - Purple
				i(83005),	-- Art Template Cloth Chest - Cloth_RaidWarlock_L_01 - Purple (Don't use)
				i(83008),	-- Art Template Cloth Belt - Cloth_RaidWarlock_L_01 - Red
				i(83009),	-- Art Template Cloth Boot - Cloth_RaidWarlock_L_01 - Red
				i(83010),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_L_01 - Red
				i(83011),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_L_01 - Red
				i(83012),	-- Art Template Cloth Robe - Cloth_RaidWarlock_L_01 - Red
				i(83013),	-- Art Template Cloth Hand - Cloth_RaidWarlock_L_01 - Red
				i(83014),	-- Art Template Cloth Head - Cloth_RaidWarlock_L_01 - Red
				i(83015),	-- Art Template Cloth Legs - Cloth_RaidWarlock_L_01 - Red
				i(83016),	-- Art Template Cloth Chest - Cloth_RaidWarlock_L_01 - Red
				i(83360),	-- 5.0 QA PVP Test Caster DPS Belt
				i(83361),	-- 5.0 QA PVP Test Caster DPS Belt 2
				i(83362),	-- 5.0 QA PVP Test Caster DPS Belt 3
				i(83363),	-- 5.0 QA PVP Test Caster DPS Boots
				i(83364),	-- 5.0 QA PVP Test Caster DPS Boots 2
				i(83365),	-- 5.0 QA PVP Test Caster DPS Bracer
				i(83366),	-- 5.0 QA PVP Test Caster DPS Bracer 2
				i(83371),	-- 5.0 QA PVP Test Caster DPS Gloves
				i(83372),	-- 5.0 QA PVP Test Caster DPS Gloves 2
				i(83373),	-- 5.0 QA PVP Test Caster DPS Helm
				i(83374),	-- 5.0 QA PVP Test Caster DPS Helm 2
				i(83375),	-- 5.0 QA PVP Test Caster DPS Helm 3
				i(83376),	-- 5.0 QA PVP Test Caster DPS Legs
				i(83377),	-- 5.0 QA PVP Test Caster DPS Legs 2
				i(83389),	-- 5.0 QA PVP Test Caster DPS Robes
				i(83390),	-- 5.0 QA PVP Test Caster DPS Robes 2
				i(83391),	-- 5.0 QA PVP Test Caster DPS Robes 3
				i(83392),	-- 5.0 QA PVP Test Caster DPS Shoulders
				i(83393),	-- 5.0 QA PVP Test Caster DPS Shoulders 2
				i(83523),	-- 5.0 QA PVP Test Priest Healer Belt
				i(83524),	-- 5.0 QA PVP Test Priest Healer Belt 2
				i(83526),	-- 5.0 QA PVP Test Priest Healer Bracer
				i(83527),	-- 5.0 QA PVP Test Priest Healer Bracer 2
				i(83528),	-- 5.0 QA PVP Test Priest Healer Gloves
				i(83529),	-- 5.0 QA PVP Test Priest Healer Gloves 2
				i(85165),	-- Art Template Cloth Belt - Cloth_ChallengeMage_D_01 - Blue
				i(85166),	-- Art Template Cloth Boot - Cloth_ChallengeMage_D_01 - Blue
				i(85167),	-- Art Template Cloth Shoulder - Cloth_ChallengeMage_D_01 - Blue
				i(85168),	-- Art Template Cloth Wrist - Cloth_ChallengeMage_D_01 - Blue
				i(85169),	-- Art Template Cloth Robe - Cloth_ChallengeMage_D_01 - Blue
				i(85170),	-- Art Template Cloth Hand - Cloth_ChallengeMage_D_01 - Blue
				i(85171),	-- Art Template Cloth Head - Cloth_ChallengeMage_D_01 - Blue
				i(85172),	-- Art Template Cloth Legs - Cloth_ChallengeMage_D_01 - Blue
				i(85173),	-- Art Template Cloth Chest - Cloth_ChallengeMage_D_01 - Blue
				i(85232),	-- Art Template Cloth Belt - Cloth_ChallengeMage_D_01 - Purple
				i(85233),	-- Art Template Cloth Boot - Cloth_ChallengeMage_D_01 - Purple
				i(85234),	-- Art Template Cloth Shoulder - Cloth_ChallengeMage_D_01 - Purple
				i(85235),	-- Art Template Cloth Wrist - Cloth_ChallengeMage_D_01 - Purple
				i(85236),	-- Art Template Cloth Robe - Cloth_ChallengeMage_D_01 - Purple
				i(85237),	-- Art Template Cloth Hand - Cloth_ChallengeMage_D_01 - Purple
				i(85238),	-- Art Template Cloth Head - Cloth_ChallengeMage_D_01 - Purple
				i(85239),	-- Art Template Cloth Legs - Cloth_ChallengeMage_D_01 - Purple
				i(85240),	-- Art Template Cloth Chest - Cloth_ChallengeMage_D_01 - Purple
				i(85248),	-- Art Template Cloth Belt - Cloth_ChallengeMage_D_01 - Red
				i(85249),	-- Art Template Cloth Boot - Cloth_ChallengeMage_D_01 - Red
				i(85250),	-- Art Template Cloth Shoulder - Cloth_ChallengeMage_D_01 - Red
				i(85251),	-- Art Template Cloth Wrist - Cloth_ChallengeMage_D_01 - Red
				i(85252),	-- Art Template Cloth Robe - Cloth_ChallengeMage_D_01 - Red
				i(85253),	-- Art Template Cloth Hand - Cloth_ChallengeMage_D_01 - Red
				i(85254),	-- Art Template Cloth Head - Cloth_ChallengeMage_D_01 - Red
				i(85255),	-- Art Template Cloth Legs - Cloth_ChallengeMage_D_01 - Red
				i(85256),	-- Art Template Cloth Chest - Cloth_ChallengeMage_D_01 - Red
				i(85410),	-- Art Template Cloth Belt - Cloth_ChallengeMage_D_01 - White
				i(85411),	-- Art Template Cloth Boot - Cloth_ChallengeMage_D_01 - White
				i(85412),	-- Art Template Cloth Shoulder - Cloth_ChallengeMage_D_01 - White
				i(85413),	-- Art Template Cloth Wrist - Cloth_ChallengeMage_D_01 - White
				i(85414),	-- Art Template Cloth Robe - Cloth_ChallengeMage_D_01 - White
				i(85415),	-- Art Template Cloth Hand - Cloth_ChallengeMage_D_01 - White
				i(85416),	-- Art Template Cloth Head - Cloth_ChallengeMage_D_01 - White
				i(85417),	-- Art Template Cloth Legs - Cloth_ChallengeMage_D_01 - White
				i(85418),	-- Art Template Cloth Chest - Cloth_ChallengeMage_D_01 - White
				i(85419),	-- Art Template Cloth Belt - Cloth_ChallengeMage_D_01 - Black
				i(85420),	-- Art Template Cloth Boot - Cloth_ChallengeMage_D_01 - Black
				i(85421),	-- Art Template Cloth Shoulder - Cloth_ChallengeMage_D_01 - Black
				i(85422),	-- Art Template Cloth Wrist - Cloth_ChallengeMage_D_01 - Black
				i(85423),	-- Art Template Cloth Robe - Cloth_ChallengeMage_D_01 - Black
				i(85424),	-- Art Template Cloth Hand - Cloth_ChallengeMage_D_01 - Black
				i(85425),	-- Art Template Cloth Head - Cloth_ChallengeMage_D_01 - Black
				i(85426),	-- Art Template Cloth Legs - Cloth_ChallengeMage_D_01 - Black
				i(85427),	-- Art Template Cloth Chest - Cloth_ChallengeMage_D_01 - Black
				i(85468),	-- Art Template Cloth Belt - Cloth_RaidMage_L_01 - Green
				i(85469),	-- Art Template Cloth Boot - Cloth_RaidMage_L_01 - Green
				i(85470),	-- Art Template Cloth Shoulder - Cloth_RaidMage_L_01 - Green
				i(85471),	-- Art Template Cloth Wrist - Cloth_RaidMage_L_01 - Green
				i(85472),	-- Art Template Cloth Robe - Cloth_RaidMage_L_01 - Green
				i(85473),	-- Art Template Cloth Hand - Cloth_RaidMage_L_01 - Green
				i(85474),	-- Art Template Cloth Head - Cloth_RaidMage_L_01 - Green
				i(85475),	-- Art Template Cloth Legs - Cloth_RaidMage_L_01 - Green
				i(85476),	-- Art Template Cloth Chest - Cloth_RaidMage_L_01 - Green
				i(85478),	-- Art Template Cloth Belt - Cloth_RaidMage_L_01 - Purple
				i(85479),	-- Art Template Cloth Boot - Cloth_RaidMage_L_01 - Purple
				i(85480),	-- Art Template Cloth Shoulder - Cloth_RaidMage_L_01 - Purple
				i(85481),	-- Art Template Cloth Wrist - Cloth_RaidMage_L_01 - Purple
				i(85482),	-- Art Template Cloth Robe - Cloth_RaidMage_L_01 - Purple
				i(85483),	-- Art Template Cloth Hand - Cloth_RaidMage_L_01 - Purple
				i(85484),	-- Art Template Cloth Head - Cloth_RaidMage_L_01 - Purple
				i(85485),	-- Art Template Cloth Legs - Cloth_RaidMage_L_01 - Purple
				i(85486),	-- Art Template Cloth Chest - Cloth_RaidMage_L_01 - Purple
				i(85487),	-- Art Template Cloth Belt - Cloth_RaidMage_L_01 - Red
				i(85488),	-- Art Template Cloth Boot - Cloth_RaidMage_L_01 - Red
				i(85489),	-- Art Template Cloth Shoulder - Cloth_RaidMage_L_01 - Red
				i(85490),	-- Art Template Cloth Wrist - Cloth_RaidMage_L_01 - Red
				i(85491),	-- Art Template Cloth Robe - Cloth_RaidMage_L_01 - Red
				i(85492),	-- Art Template Cloth Hand - Cloth_RaidMage_L_01 - Red
				i(85493),	-- Art Template Cloth Head - Cloth_RaidMage_L_01 - Red
				i(85494),	-- Art Template Cloth Legs - Cloth_RaidMage_L_01 - Red
				i(85495),	-- Art Template Cloth Chest - Cloth_RaidMage_L_01 - Red
				i(85514),	-- Art Template Cloth Belt - Cloth_PVPWarlock_E_01 - Blue
				i(85515),	-- Art Template Cloth Boot - Cloth_PVPWarlock_E_01 - Blue
				i(85516),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_E_01 - Blue
				i(85517),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_E_01 - Blue
				i(85518),	-- Art Template Cloth Robe - Cloth_PVPWarlock_E_01 - Blue
				i(85519),	-- Art Template Cloth Hand - Cloth_PVPWarlock_E_01 - Blue
				i(85520),	-- Art Template Cloth Head - Cloth_PVPWarlock_E_01 - Blue
				i(85521),	-- Art Template Cloth Legs - Cloth_PVPWarlock_E_01 - Blue
				i(85522),	-- Art Template Cloth Chest - Cloth_PVPWarlock_E_01 - Blue
				i(85523),	-- Art Template Cloth Belt - Cloth_PVPWarlock_E_01 - Brown
				i(85524),	-- Art Template Cloth Boot - Cloth_PVPWarlock_E_01 - Brown
				i(85525),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_E_01 - Brown
				i(85526),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_E_01 - Brown
				i(85527),	-- Art Template Cloth Robe - Cloth_PVPWarlock_E_01 - Brown
				i(85528),	-- Art Template Cloth Hand - Cloth_PVPWarlock_E_01 - Brown
				i(85529),	-- Art Template Cloth Head - Cloth_PVPWarlock_E_01 - Brown
				i(85530),	-- Art Template Cloth Legs - Cloth_PVPWarlock_E_01 - Brown
				i(85531),	-- Art Template Cloth Chest - Cloth_PVPWarlock_E_01 - Brown
				i(85532),	-- Art Template Cloth Belt - Cloth_PVPWarlock_E_01 - Green
				i(85533),	-- Art Template Cloth Boot - Cloth_PVPWarlock_E_01 - Green
				i(85534),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_E_01 - Green
				i(85535),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_E_01 - Green
				i(85536),	-- Art Template Cloth Robe - Cloth_PVPWarlock_E_01 - Green
				i(85537),	-- Art Template Cloth Hand - Cloth_PVPWarlock_E_01 - Green
				i(85538),	-- Art Template Cloth Head - Cloth_PVPWarlock_E_01 - Green
				i(85539),	-- Art Template Cloth Legs - Cloth_PVPWarlock_E_01 - Green
				i(85540),	-- Art Template Cloth Chest - Cloth_PVPWarlock_E_01 - Green
				i(86029),	-- Art Template Cloth Belt - Cloth_Panda_B_01 - Blue
				i(86030),	-- Art Template Cloth Boot - Cloth_Panda_B_01 - Blue
				i(86031),	-- Art Template Cloth Shoulder - Cloth_Panda_B_01 - Blue
				i(86032),	-- Art Template Cloth Wrist - Cloth_Panda_B_01 - Blue
				i(86033),	-- Art Template Cloth Robe - Cloth_Panda_B_01 - Blue
				i(86034),	-- Art Template Cloth Hand - Cloth_Panda_B_01 - Blue
				i(86035),	-- Art Template Cloth Head - Cloth_Panda_B_01 - Blue
				i(86036),	-- Art Template Cloth Legs - Cloth_Panda_B_01 - Blue
				i(86037),	-- Art Template Cloth Chest - Cloth_Panda_B_01 - Blue
				i(86048),	-- Art Template Cloth Belt - Cloth_Panda_B_01 - Green
				i(86049),	-- Art Template Cloth Boot - Cloth_Panda_B_01 - Green
				i(86050),	-- Art Template Cloth Shoulder - Cloth_Panda_B_01 - Green
				i(86051),	-- Art Template Cloth Wrist - Cloth_Panda_B_01 - Green
				i(86052),	-- Art Template Cloth Robe - Cloth_Panda_B_01 - Green
				i(86053),	-- Art Template Cloth Hand - Cloth_Panda_B_01 - Green
				i(86054),	-- Art Template Cloth Head - Cloth_Panda_B_01 - Green
				i(86055),	-- Art Template Cloth Legs - Cloth_Panda_B_01 - Green
				i(86056),	-- Art Template Cloth Chest - Cloth_Panda_B_01 - Green
				i(86058),	-- Art Template Cloth Belt - Cloth_Panda_B_01 - Red
				i(86059),	-- Art Template Cloth Boot - Cloth_Panda_B_01 - Red
				i(86060),	-- Art Template Cloth Shoulder - Cloth_Panda_B_01 - Red
				i(86061),	-- Art Template Cloth Wrist - Cloth_Panda_B_01 - Red
				i(86062),	-- Art Template Cloth Robe - Cloth_Panda_B_01 - Red
				i(86063),	-- Art Template Cloth Hand - Cloth_Panda_B_01 - Red
				i(86064),	-- Art Template Cloth Head - Cloth_Panda_B_01 - Red
				i(86065),	-- Art Template Cloth Legs - Cloth_Panda_B_01 - Red
				i(86066),	-- Art Template Cloth Chest - Cloth_Panda_B_01 - Red
				i(86437),	-- Art Template Cloth Belt - Cloth_PVPPriest_E_01
				i(86438),	-- Art Template Cloth Boot - Cloth_PVPPriest_E_01
				i(86439),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_E_01
				i(86440),	-- Art Template Cloth Wrist - Cloth_PVPPriest_E_01
				i(86441),	-- Art Template Cloth Robe - Cloth_PVPPriest_E_01
				i(86442),	-- Art Template Cloth Hand - Cloth_PVPPriest_E_01
				i(86443),	-- Art Template Cloth Head - Cloth_PVPPriest_E_01
				i(86444),	-- Art Template Cloth Legs - Cloth_PVPPriest_E_01
				i(86445),	-- Art Template Cloth Chest - Cloth_PVPPriest_E_01
				i(86447),	-- Art Template Cloth Belt - Cloth_PVPPriest_E_01 - Light
				i(86448),	-- Art Template Cloth Boot - Cloth_PVPPriest_E_01 - Light
				i(86449),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_E_01 - Light
				i(86450),	-- Art Template Cloth Wrist - Cloth_PVPPriest_E_01 - Light
				i(86451),	-- Art Template Cloth Robe - Cloth_PVPPriest_E_01 - Light
				i(86452),	-- Art Template Cloth Hand - Cloth_PVPPriest_E_01 - Light
				i(86453),	-- Art Template Cloth Head - Cloth_PVPPriest_E_01 - Light
				i(86454),	-- Art Template Cloth Legs - Cloth_PVPPriest_E_01 - Light
				i(86455),	-- Art Template Cloth Chest - Cloth_PVPPriest_E_01 - Light
				i(86456),	-- Art Template Cloth Belt - Cloth_PVPPriest_E_01 - Shadow
				i(86457),	-- Art Template Cloth Boot - Cloth_PVPPriest_E_01 - Shadow
				i(86458),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_E_01 - Shadow
				i(86459),	-- Art Template Cloth Wrist - Cloth_PVPPriest_E_01 - Shadow
				i(86460),	-- Art Template Cloth Robe - Cloth_PVPPriest_E_01 - Shadow
				i(86461),	-- Art Template Cloth Hand - Cloth_PVPPriest_E_01 - Shadow
				i(86462),	-- Art Template Cloth Head - Cloth_PVPPriest_E_01 - Shadow
				i(86463),	-- Art Template Cloth Legs - Cloth_PVPPriest_E_01 - Shadow
				i(86464),	-- Art Template Cloth Chest - Cloth_PVPPriest_E_01 - Shadow
				i(87969),	-- Art Template Cloth Belt - Cloth_ChallengeWarlock_D_01
				i(87970),	-- Art Template Cloth Boot - Cloth_ChallengeWarlock_D_01
				i(87971),	-- Art Template Cloth Shoulder - Cloth_ChallengeWarlock_D_01
				i(87972),	-- Art Template Cloth Wrist - Cloth_ChallengeWarlock_D_01
				i(87973),	-- Art Template Cloth Robe - Cloth_ChallengeWarlock_D_01
				i(87974),	-- Art Template Cloth Hand - Cloth_ChallengeWarlock_D_01
				i(87975),	-- Art Template Cloth Head - Cloth_ChallengeWarlock_D_01
				i(87976),	-- Art Template Cloth Legs - Cloth_ChallengeWarlock_D_01
				i(87977),	-- Art Template Cloth Chest - Cloth_ChallengeWarlock_D_01
				i(87978),	-- Art Template Cloth Belt - Cloth_ChallengeWarlock_D_01 - Purple
				i(87979),	-- Art Template Cloth Boot - Cloth_ChallengeWarlock_D_01 - Purple
				i(87980),	-- Art Template Cloth Shoulder - Cloth_ChallengeWarlock_D_01 - Purple
				i(87981),	-- Art Template Cloth Wrist - Cloth_ChallengeWarlock_D_01 - Purple
				i(87982),	-- Art Template Cloth Robe - Cloth_ChallengeWarlock_D_01 - Purple
				i(87983),	-- Art Template Cloth Hand - Cloth_ChallengeWarlock_D_01 - Purple
				i(87984),	-- Art Template Cloth Head - Cloth_ChallengeWarlock_D_01 - Purple
				i(87985),	-- Art Template Cloth Legs - Cloth_ChallengeWarlock_D_01 - Purple
				i(87986),	-- Art Template Cloth Chest - Cloth_ChallengeWarlock_D_01 - Purple
				i(87987),	-- Art Template Cloth Belt - Cloth_ChallengeWarlock_D_01 - Red
				i(87988),	-- Art Template Cloth Boot - Cloth_ChallengeWarlock_D_01 - Red
				i(87989),	-- Art Template Cloth Shoulder - Cloth_ChallengeWarlock_D_01 - Red
				i(87990),	-- Art Template Cloth Wrist - Cloth_ChallengeWarlock_D_01 - Red
				i(87991),	-- Art Template Cloth Robe - Cloth_ChallengeWarlock_D_01 - Red
				i(87992),	-- Art Template Cloth Hand - Cloth_ChallengeWarlock_D_01 - Red
				i(87993),	-- Art Template Cloth Head - Cloth_ChallengeWarlock_D_01 - Red
				i(87994),	-- Art Template Cloth Legs - Cloth_ChallengeWarlock_D_01 - Red
				i(87995),	-- Art Template Cloth Chest - Cloth_ChallengeWarlock_D_01 - Red
				i(88608),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - Black
				i(88609),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - Blue
				i(88610),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - Green
				i(88611),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - Red
				i(88612),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - White
				i(88613),	-- Art Template Cloth Head - Helm_PandariaTradeskill_D_01 - Yellow
				i(77506),	-- Art Template Cloth Wrist - Cloth_PanStart_A_01 - Default
				i(81007),	-- Honorary Combat Engineer's Satin Leggings
				i(81006),	-- Honorary Combat Engineer's Silk Trousers
				i(81016),	-- Landfall Satin Treads
				i(81015),	-- Landfall Silk Treads
				i(80948),	-- Peacebreaker's Silk Cowl
				i(80949),	-- Peacebreaker's Satin Hood
				i(79792),	-- QA Combat Test Caster DPS Boots 2
				i(79795),	-- QA Combat Test Caster DPS Bracer 2
				i(79799),	-- QA Combat Test Priest Healer Bracer 2
				i(80988),	-- Scavenger's Silk Amice
				i(80989),	-- Scavenger's Satin Mantle
				i(81033),	-- Scavenger's Silk Handguards
				i(81034),	-- Scavenger's Satin Gloves
				i(81042),	-- Scavenger's Silk Cuffs
				i(81043),	-- Scavenger's Satin Cuffs
				i(80997),	-- Silk Robe of Eminent Domain
				i(80998),	-- Satin Robe of Eminent Domain
			}),
			filter(FINGER_F, {
				i(80957),	-- Scavenger's Band
				i(80955),	-- Scavenger's Loop
				i(80956),	-- Scavenger's Ring
				i(80958),	-- Scavenger's Seal
				i(80959),	-- Scavenger's Signet
				i(83343),	-- 5.0 QA PVP Test Agility DPS Ring
				i(83344),	-- 5.0 QA PVP Test Agility DPS Ring 2
				i(83345),	-- 5.0 QA PVP Test Agility DPS Ring 3
				i(83346),	-- 5.0 QA PVP Test Agility DPS Ring 4
				i(83347),	-- 5.0 QA PVP Test Agility DPS Ring 5
				i(83384),	-- 5.0 QA PVP Test Caster DPS Ring
				i(83385),	-- 5.0 QA PVP Test Caster DPS Ring 2
				i(83386),	-- 5.0 QA PVP Test Caster DPS Ring 3
				i(83387),	-- 5.0 QA PVP Test Caster DPS Ring 4
				i(83388),	-- 5.0 QA PVP Test Caster DPS Ring 5
				i(83436),	-- 5.0 QA PVP Test Healer Ring 2
				i(83438),	-- 5.0 QA PVP Test Healer Ring 4
				i(83439),	-- 5.0 QA PVP Test Healer Ring 5
				i(83588),	-- 5.0 QA PVP Test Strength DPS Ring
				i(83589),	-- 5.0 QA PVP Test Strength DPS Ring 2
				i(83590),	-- 5.0 QA PVP Test Strength DPS Ring 3
				i(83591),	-- 5.0 QA PVP Test Strength DPS Ring 4
				i(83592),	-- 5.0 QA PVP Test Strength DPS Ring 5
				i(83607),	-- 5.0 QA PVP Test Tank Ring
				i(83608),	-- 5.0 QA PVP Test Tank Ring 2
				i(83609),	-- 5.0 QA PVP Test Tank Ring 3
				i(83610),	-- 5.0 QA PVP Test Tank Ring 4
			}),
			filter(LEATHER, {
				i(77303),	-- Art Template Leather Belt - Leather_PanProg_B_01 - Blue
				i(77309),	-- Art Template Leather Belt - Leather_PanProg_B_01 - White
				i(77328),	-- Art Template Leather Belt - Leather_PanProg_B_01 - Red
				i(77304),	-- Art Template Leather Boot - Leather_PanProg_B_01 - Blue
				i(77310),	-- Art Template Leather Boot - Leather_PanProg_B_01 - White
				i(77329),	-- Art Template Leather Boot - Leather_PanProg_B_01 - Red
				i(77306),	-- Art Template Leather Hand - Leather_PanProg_B_01 - Blue
				i(77312),	-- Art Template Leather Hand - Leather_PanProg_B_01 - White
				i(77331),	-- Art Template Leather Hand - Leather_PanProg_B_01 - Red
				i(77307),	-- Art Template Leather Legs - Leather_PanProg_B_01 - Blue
				i(77313),	-- Art Template Leather Legs - Leather_PanProg_B_01 - White
				i(77332),	-- Art Template Leather Legs - Leather_PanProg_B_01 - Red
				i(77305),	-- Art Template Leather Chest - Leather_PanProg_B_01 - Blue
				i(77311),	-- Art Template Leather Chest - Leather_PanProg_B_01 - White
				i(77330),	-- Art Template Leather Chest - Leather_PanProg_B_01 - Red
				i(77308),	-- Art Template Leather Wrist - Leather_PanProg_B_01 - Blue
				i(77314),	-- Art Template Leather Wrist - Leather_PanProg_B_01 - White
				i(77333),	-- Art Template Leather Wrist - Leather_PanProg_B_01 - Red
				i(79800),	-- QA Combat Test Rogue Bracer 2
				i(79803),	-- QA Combat Test Rogue Helm 3
				i(80946),	-- Peacebreaker's Leather Helm
				i(80950),	-- Peacebreaker's Hide Helm
				i(80986),	-- Scavenger's Leather Spaulders
				i(80990),	-- Scavenger's Hide Spaulders
				i(80995),	-- Leather Tunic of Eniment Domain
				i(80999),	-- Hide Tunic of Eminent Domain
				i(81004),	-- Honorary Combat Engineer's Leather Trousers
				i(81008),	-- Honorary Combat Engineer's Hide Leggings
				i(81013),	-- Landfall Leather Boots
				i(81017),	-- Landfall Moccasins
				i(81031),	-- Scavenger's Leather Gloves
				i(81035),	-- Scavenger's Hide Gloves
				i(81040),	-- Scavenger's Leather Armwraps
				i(81044),	-- Scavenger's Hide Bindings
				i(83277),	-- Art Template Leather Belt - Leather_ChallengeMonk_D_01 - Blue
				i(83278),	-- Art Template Leather Head - Leather_ChallengeMonk_D_01 - Blue
				i(83279),	-- Art Template Leather Boot - Leather_ChallengeMonk_D_01 - Blue
				i(83280),	-- Art Template Leather Chest - Leather_ChallengeMonk_D_01 - Blue
				i(83281),	-- Art Template Leather Hand - Leather_ChallengeMonk_D_01 - Blue
				i(83282),	-- Art Template Leather Legs - Leather_ChallengeMonk_D_01 - Blue
				i(83283),	-- Art Template Leather Shoulder - Leather_ChallengeMonk_D_01 - Blue
				i(83284),	-- Art Template Leather Wrist - Leather_ChallengeMonk_D_01 - Blue
				i(83285),	-- Art Template Leather Belt - Leather_ChallengeMonk_D_01 - Red
				i(83286),	-- Art Template Leather Head - Leather_ChallengeMonk_D_01 - Red
				i(83287),	-- Art Template Leather Boot - Leather_ChallengeMonk_D_01 - Red
				i(83288),	-- Art Template Leather Chest - Leather_ChallengeMonk_D_01 - Red
				i(83289),	-- Art Template Leather Hand - Leather_ChallengeMonk_D_01 - Red
				i(83290),	-- Art Template Leather Legs - Leather_ChallengeMonk_D_01 - Red
				i(83291),	-- Art Template Leather Shoulder - Leather_ChallengeMonk_D_01 - Red
				i(83292),	-- Art Template Leather Wrist - Leather_ChallengeMonk_D_01 - Red
				i(83293),	-- Art Template Leather Belt - Leather_ChallengeMonk_D_01 - Teal
				i(83294),	-- Art Template Leather Head - Leather_ChallengeMonk_D_01 - Teal
				i(83295),	-- Art Template Leather Boot - Leather_ChallengeMonk_D_01 - Teal
				i(83296),	-- Art Template Leather Chest - Leather_ChallengeMonk_D_01 - Teal
				i(83297),	-- Art Template Leather Hand - Leather_ChallengeMonk_D_01 - Teal
				i(83298),	-- Art Template Leather Legs - Leather_ChallengeMonk_D_01 - Teal
				i(83299),	-- Art Template Leather Shoulder - Leather_ChallengeMonk_D_01 - Teal
				i(83300),	-- Art Template Leather Wrist - Leather_ChallengeMonk_D_01 - Teal
				i(83402),	-- 5.0 QA PVP Test Druid Healer Belt
				i(83416),	-- 5.0 QA PVP Test Druid Healer Shoulders
				i(83418),	-- 5.0 QA PVP Test Druid Healer Shoulders 3
				i(88569),	-- Contender's Boots
				i(88574),	-- Contender's Leggings
				i(88575),	-- Contender's Shoulders
			}),
			filter(MAIL, {
				i(83451),	-- 5.0 QA PVP Test Hunter Belt
				i(83452),	-- 5.0 QA PVP Test Hunter Belt 2
				i(83453),	-- 5.0 QA PVP Test Hunter Boots
				i(83454),	-- 5.0 QA PVP Test Hunter Boots 2
				i(83456),	-- 5.0 QA PVP Test Hunter Bow
				i(83457),	-- 5.0 QA PVP Test Hunter Bracer
				i(83458),	-- 5.0 QA PVP Test Hunter Bracer 2
				i(83459),	-- 5.0 QA PVP Test Hunter Chest
				i(83461),	-- 5.0 QA PVP Test Hunter Gloves
				i(83462),	-- 5.0 QA PVP Test Hunter Gloves 2
				i(83465),	-- 5.0 QA PVP Test Hunter Helm
				i(83466),	-- 5.0 QA PVP Test Hunter Helm 2
				i(83467),	-- 5.0 QA PVP Test Hunter Helm 3
				i(83468),	-- 5.0 QA PVP Test Hunter Legs
				i(83469),	-- 5.0 QA PVP Test Hunter Legs 2
				i(83470),	-- 5.0 QA PVP Test Hunter Shoulders
				i(83471),	-- 5.0 QA PVP Test Hunter Shoulders 2
				i(83562),	-- 5.0 QA PVP Test Shaman Healer Bracer 2
				i(83563),	-- 5.0 QA PVP Test Shaman Healer Chest
				i(83564),	-- 5.0 QA PVP Test Shaman Healer Chest 2
				i(83565),	-- 5.0 QA PVP Test Shaman Healer Chest 3
				i(83566),	-- 5.0 QA PVP Test Shaman Healer Gloves
				i(83567),	-- 5.0 QA PVP Test Shaman Healer Gloves 2
				i(83568),	-- 5.0 QA PVP Test Shaman Healer Helm
				i(83569),	-- 5.0 QA PVP Test Shaman Healer Helm 2
				i(83571),	-- 5.0 QA PVP Test Shaman Healer Legs 2
				i(83572),	-- 5.0 QA PVP Test Shaman Healer Legs 3
				i(83573),	-- 5.0 QA PVP Test Shaman Healer Shoulder 2
				i(83574),	-- 5.0 QA PVP Test Shaman Healer Shoulders
				i(77477),	-- Art Template Mail Wrist - Mail_PanProg_B_01 - Green
				i(77478),	-- Art Template Mail Belt - Mail_PanProg_B_01 - Green
				i(77479),	-- Art Template Mail Boot - Mail_PanProg_B_01 - Green
				i(77480),	-- Art Template Mail Chest - Mail_PanProg_B_01 - Green
				i(77481),	-- Art Template Mail Hand - Mail_PanProg_B_01 - Green
				i(77482),	-- Art Template Mail Legs - Mail_PanProg_B_01 - Green
				i(77483),	-- Art Template Mail Wrist - Mail_PanProg_B_01 - Red
				i(77484),	-- Art Template Mail Belt - Mail_PanProg_B_01 - Red
				i(77485),	-- Art Template Mail Boot - Mail_PanProg_B_01 - Red
				i(77486),	-- Art Template Mail Chest - Mail_PanProg_B_01 - Red
				i(77487),	-- Art Template Mail Hand - Mail_PanProg_B_01 - Red
				i(77488),	-- Art Template Mail Legs - Mail_PanProg_B_01 - Red
				i(77491),	-- Art Template Mail Wrist - Mail_PanProg_B_01 - Yellow
				i(77492),	-- Art Template Mail Belt - Mail_PanProg_B_01 - Yellow
				i(77493),	-- Art Template Mail Boot - Mail_PanProg_B_01 - Yellow
				i(77494),	-- Art Template Mail Chest - Mail_PanProg_B_01 - Yellow
				i(77495),	-- Art Template Mail Hand - Mail_PanProg_B_01 - Yellow
				i(77496),	-- Art Template Mail Legs - Mail_PanProg_B_01 - Yellow
				i(80996),	-- Chain Armor of Eminent Domain (not added version)
				i(81005),	-- Honorary Combat Engineer's Chain Leggings
				i(81009),	-- Honorary Combat Engineer's Ringmail Leggings
				i(81014),	-- Landfall Chain Boots
				i(81018),	-- Landfall Sabatons
				i(80947),	-- Peacebreaker's Chain Helm
				i(80951),	-- Peacebreaker's Ringmail Helm
				i(79793),	-- QA Combat Test Hunter Boots 2
				i(79796),	-- QA Combat Test Hunter Bracer 2
				i(79801),	-- QA Combat Test Shaman Healer Bracer 2
				i(79789),	-- QA Combat Test Shaman Healer Chest 3
				i(81000),	-- Ringmail Armor of Eminent Domain (not added version)
				i(80987),	-- Scavenger's Chain Spaulders
				i(80991),	-- Scavenger's Ringmail Spaulders
				i(81032),	-- Scavenger's Chain Gauntlets
				i(81036),	-- Scavenger's Ringmail Gauntlets
				i(81041),	-- Scavenger's Chain Wristguards
				i(81045),	-- Scavenger's Ringmail Armbands
			}),
			filter(NECK_F, {
				i(81052),	-- Scavenger's Amulet
				i(81050),	-- Scavenger's Choker
				i(81051),	-- Scavenger's Locket
				i(81049),	-- Scavenger's Necklace
				i(81053),	-- Scavenger's Pendant
				i(83339),	-- 5.0 QA PVP Test Agility DPS Neck
				i(83340),	-- 5.0 QA PVP Test Agility DPS Neck 2
				i(83341),	-- 5.0 QA PVP Test Agility DPS Neck 3
				i(83342),	-- 5.0 QA PVP Test Agility DPS Neck 4
				i(83378),	-- 5.0 QA PVP Test Caster DPS Neck
				i(83379),	-- 5.0 QA PVP Test Caster DPS Neck 2
				i(83381),	-- 5.0 QA PVP Test Caster DPS Neck 4
				i(83428),	-- 5.0 QA PVP Test Healer Neck
				i(83429),	-- 5.0 QA PVP Test Healer Neck 2
				i(83430),	-- 5.0 QA PVP Test Healer Neck 3
				i(83431),	-- 5.0 QA PVP Test Healer Neck 4
				i(83585),	-- 5.0 QA PVP Test Strength DPS Neck
				i(83586),	-- 5.0 QA PVP Test Strength DPS Neck 2
				i(83587),	-- 5.0 QA PVP Test Strength DPS Neck 3
				i(83604),	-- 5.0 QA PVP Test Tank Neck
				i(83605),	-- 5.0 QA PVP Test Tank Neck 2
				i(83606),	-- 5.0 QA PVP Test Tank Neck 3
			}),
			filter(PLATE, {
				i(79746),	-- QA Combat Test Tank Bracer
				i(79797),	-- QA Combat Test Paladin Healer Bracer 2
				i(79798),	-- QA Combat Test Plate DPS Bracer 3
				i(80952),	-- Peacebreaker's Burnished Headcover
				i(80953),	-- Peacebreaker's Armored Helm
				i(80954),	-- Peacebreaker's Heavy Helm
				i(80992),	-- Scavenger's Burnished Spaulders
				i(80993),	-- Scavenger's Armored Shoulders
				i(80994),	-- Scavenger's Heavy Shoulders
				i(81001),	-- Burnished Chestguard of Eminent Domain
				i(81002),	-- Armored Chestpiece of Eminent Domain
				i(81003),	-- Heavy Chestpiece of Eminent Domain
				i(81010),	-- Honorary Combat Engineer's Burnished Legplates
				i(81011),	-- Honorary Combat Engineer's Legguards
				i(81012),	-- Honorary Combat Engineer's Heavy Legplates
				i(81019),	-- Landfall Burnished Greaves
				i(81020),	-- Landfall Warboots
				i(81021),	-- Landfall Plate Boots
				i(81037),	-- Scavenger's Burnished Gloves
				i(81038),	-- Scavenger's Armored Gauntlets
				i(81039),	-- Scavenger's Heavy Gauntlets
				i(81046),	-- Scavenger's Burnished Bracers
				i(81047),	-- Scavenger's Armored Bracers
				i(81048),	-- Scavenger's Heavy Armplates
				i(81709),	-- Belt of Broken Bones
				i(81710),	-- Grinning Skull Greatboots
				i(83301),	-- Art Template Plate Belt - Plate_RaidWarrior_L_01 - Black
				i(83302),	-- Art Template Plate Boot - Plate_RaidWarrior_L_01 - Black
				i(83303),	-- Art Template Plate Chest - Plate_RaidWarrior_L_01 - Black
				i(83304),	-- Art Template Plate Hand - Plate_RaidWarrior_L_01 - Black
				i(83305),	-- Art Template Plate Head - Plate_RaidWarrior_L_01 - Black
				i(83306),	-- Art Template Plate Legs - Plate_RaidWarrior_L_01 - Black
				i(83307),	-- Art Template Plate Shoulder - Plate_RaidWarrior_L_01 - Black
				i(83308),	-- Art Template Plate Wrist - Plate_RaidWarrior_L_01 - Black
				i(83309),	-- Art Template Plate Belt - Plate_RaidWarrior_L_01 - Gold
				i(83310),	-- Art Template Plate Boot - Plate_RaidWarrior_L_01 - Gold
				i(83311),	-- Art Template Plate Chest - Plate_RaidWarrior_L_01 - Gold
				i(83312),	-- Art Template Plate Hand - Plate_RaidWarrior_L_01 - Gold
				i(83313),	-- Art Template Plate Head - Plate_RaidWarrior_L_01 - Gold
				i(83314),	-- Art Template Plate Legs - Plate_RaidWarrior_L_01 - Gold
				i(83315),	-- Art Template Plate Shoulder - Plate_RaidWarrior_L_01 - Gold
				i(83316),	-- Art Template Plate Wrist - Plate_RaidWarrior_L_01 - Gold
				i(83317),	-- Art Template Plate Belt - Plate_RaidWarrior_L_01 - Red
				i(83318),	-- Art Template Plate Boot - Plate_RaidWarrior_L_01 - Red
				i(83319),	-- Art Template Plate Chest - Plate_RaidWarrior_L_01 - Red
				i(83320),	-- Art Template Plate Hand - Plate_RaidWarrior_L_01 - Red
				i(83321),	-- Art Template Plate Head - Plate_RaidWarrior_L_01 - Red
				i(83322),	-- Art Template Plate Legs - Plate_RaidWarrior_L_01 - Red
				i(83323),	-- Art Template Plate Shoulder - Plate_RaidWarrior_L_01 - Red
				i(83324),	-- Art Template Plate Wrist - Plate_RaidWarrior_L_01 - Red
				i(83325),	-- Art Template Plate Belt - Plate_RaidWarrior_L_01 - Silver
				i(83326),	-- Art Template Plate Boot - Plate_RaidWarrior_L_01 - Silver
				i(83327),	-- Art Template Plate Chest - Plate_RaidWarrior_L_01 - Silver
				i(83328),	-- Art Template Plate Hand - Plate_RaidWarrior_L_01 - Silver
				i(83329),	-- Art Template Plate Head - Plate_RaidWarrior_L_01 - Silver
				i(83330),	-- Art Template Plate Legs - Plate_RaidWarrior_L_01 - Silver
				i(83331),	-- Art Template Plate Shoulder - Plate_RaidWarrior_L_01 - Silver
				i(83332),	-- Art Template Plate Wrist - Plate_RaidWarrior_L_01 - Silver
				i(83476),	-- 5.0 QA PVP Test Paladin Healer Belt 2
				i(83477),	-- 5.0 QA PVP Test Paladin Healer Boots
				i(83478),	-- 5.0 QA PVP Test Paladin Healer Bracer
				i(83479),	-- 5.0 QA PVP Test Paladin Healer Bracer 2
				i(83480),	-- 5.0 QA PVP Test Paladin Healer Chest
				i(83481),	-- 5.0 QA PVP Test Paladin Healer Chest 2
				i(83482),	-- 5.0 QA PVP Test Paladin Healer Chest 3
				i(83483),	-- 5.0 QA PVP Test Paladin Healer Gloves
				i(83484),	-- 5.0 QA PVP Test Paladin Healer Gloves 2
				i(83485),	-- 5.0 QA PVP Test Paladin Healer Helm
				i(83486),	-- 5.0 QA PVP Test Paladin Healer Helm 2
				i(83487),	-- 5.0 QA PVP Test Paladin Healer Legs
				i(83488),	-- 5.0 QA PVP Test Paladin Healer Legs 3
				i(83489),	-- 5.0 QA PVP Test Paladin Healer Shoulders
				i(83491),	-- 5.0 QA PVP Test Paladin Healer Shoulders 3
				i(83492),	-- 5.0 QA PVP Test Plate DPS Belt
				i(83493),	-- 5.0 QA PVP Test Plate DPS Belt 2
				i(83494),	-- 5.0 QA PVP Test Plate DPS Boots
				i(83495),	-- 5.0 QA PVP Test Plate DPS Bracer
				i(83496),	-- 5.0 QA PVP Test Plate DPS Bracer 2
				i(83497),	-- 5.0 QA PVP Test Plate DPS Bracer 3
				i(83498),	-- 5.0 QA PVP Test Plate DPS Chest
				i(83499),	-- 5.0 QA PVP Test Plate DPS Chest 2
				i(83501),	-- 5.0 QA PVP Test Plate DPS Gloves 2
				i(83502),	-- 5.0 QA PVP Test Plate DPS Helm
				i(83503),	-- 5.0 QA PVP Test Plate DPS Helm 2
				i(83504),	-- 5.0 QA PVP Test Plate DPS Legs
				i(83505),	-- 5.0 QA PVP Test Plate DPS Legs 2
				i(83506),	-- 5.0 QA PVP Test Plate DPS Legs 3
				i(83507),	-- 5.0 QA PVP Test Plate DPS Shoulders
				i(83508),	-- 5.0 QA PVP Test Plate DPS Shoulders 2
				i(83509),	-- 5.0 QA PVP Test Plate Tank Belt
				i(83510),	-- 5.0 QA PVP Test Plate Tank Belt 2
				i(83511),	-- 5.0 QA PVP Test Plate Tank Boots
				i(83512),	-- 5.0 QA PVP Test Plate Tank Chest
				i(83513),	-- 5.0 QA PVP Test Plate Tank Chest 2
				i(83514),	-- 5.0 QA PVP Test Plate Tank Gloves
				i(83515),	-- 5.0 QA PVP Test Plate Tank Gloves 2
				i(83516),	-- 5.0 QA PVP Test Plate Tank Helm
				i(83517),	-- 5.0 QA PVP Test Plate Tank Helm 2
				i(83518),	-- 5.0 QA PVP Test Plate Tank Helm 3
				i(83519),	-- 5.0 QA PVP Test Plate Tank Legs
				i(83520),	-- 5.0 QA PVP Test Plate Tank Legs 2
				i(83521),	-- 5.0 QA PVP Test Plate Tank Shoulders
				i(83522),	-- 5.0 QA PVP Test Plate Tank Shoulders 2
				i(83599),	-- 5.0 QA PVP Test Tank Bracer
			}),
			filter(TRINKET_F, {
				i(80960),	-- Scavenger's Medal
				i(80961),	-- Scavenger's Emblem
				i(80962),	-- Scavenger's Medallion
				i(80963),	-- Scavenger's Badge
				i(80964),	-- Scavenger's Insignia
				i(83348),	-- 5.0 QA PVP Test Agility DPS Trinket
				i(83349),	-- 5.0 QA PVP Test Agility DPS Trinket 2
				i(83350),	-- 5.0 QA PVP Test Agility DPS Trinket 3
				i(83351),	-- 5.0 QA PVP Test Agility DPS Trinket 4
				i(83352),	-- 5.0 QA PVP Test Agility DPS Trinket 5
				i(83397),	-- 5.0 QA PVP Test Caster DPS Trinket
				i(83398),	-- 5.0 QA PVP Test Caster DPS Trinket 2
				i(83446),	-- 5.0 QA PVP Test Healer Trinket
				i(83448),	-- 5.0 QA PVP Test Healer Trinket 3
				i(83449),	-- 5.0 QA PVP Test Healer Trinket 4
				i(83593),	-- 5.0 QA PVP Test Strength DPS Trinket
				i(83594),	-- 5.0 QA PVP Test Strength DPS Trinket 2
				i(83595),	-- 5.0 QA PVP Test Strength DPS Trinket 3
				i(83596),	-- 5.0 QA PVP Test Strength DPS Trinket 4
				i(83597),	-- 5.0 QA PVP Test Strength DPS Trinket 5
				i(83615),	-- 5.0 QA PVP Test Tank Trinket
				i(83616),	-- 5.0 QA PVP Test Tank Trinket 2
				i(83617),	-- 5.0 QA PVP Test Tank Trinket 3
				i(83618),	-- 5.0 QA PVP Test Tank Trinket 4
				i(83619),	-- 5.0 QA PVP Test Tank Trinket 5
				i(83621),	-- 5.0 QA PVP Test CC Break Trinket Crit
				i(83622),	-- 5.0 QA PVP Test CC Break Trinket Crit
				i(83623),	-- 5.0 QA PVP Test CC Break Trinket Expertise
				i(83624),	-- 5.0 QA PVP Test CC Break Trinket Expertise
				i(83626),	-- 5.0 QA PVP Test CC Break Trinket Haste
				i(83627),	-- 5.0 QA PVP Test CC Break Trinket Hit
				i(83628),	-- 5.0 QA PVP Test CC Break Trinket Hit
				i(83629),	-- 5.0 QA PVP Test CC Break Trinket Mastery
				i(83633),	-- 5.0 QA PVP Test CC Break Trinket Spirit
				i(83634),	-- 5.0 QA PVP Test CC Break Trinket Spirit
			}),
		})),

		-- 5.0.3
		expansion(EXPANSION.MOP, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			filter(CLOTH, {
				i(89381),	-- Art Template Cloth Belt - Cloth_Reputation_C_01 - Black
				i(89382),	-- Art Template Cloth Boot - Cloth_Reputation_C_01 - Black
				i(89383),	-- Art Template Cloth Chest - Cloth_Reputation_C_01 - Black
				i(89384),	-- Art Template Cloth Hand - Cloth_Reputation_C_01 - Black
				i(89385),	-- Art Template Cloth Head - Cloth_Reputation_C_01 - Black
				i(89386),	-- Art Template Cloth Legs - Cloth_Reputation_C_01 - Black
				i(89387),	-- Art Template Cloth Robe - Cloth_Reputation_C_01 - Black
				i(89388),	-- Art Template Cloth Shoulder - Cloth_Reputation_C_01 - Black
				i(89389),	-- Art Template Cloth Wrist - Cloth_Reputation_C_01 - Black
				i(89402),	-- Art Template Cloth Belt - Cloth_Reputation_C_01 - Blue
				i(89403),	-- Art Template Cloth Boot - Cloth_Reputation_C_01 - Blue
				i(89404),	-- Art Template Cloth Chest - Cloth_Reputation_C_01 - Blue
				i(89405),	-- Art Template Cloth Hand - Cloth_Reputation_C_01 - Blue
				i(89406),	-- Art Template Cloth Head - Cloth_Reputation_C_01 - Blue
				i(89407),	-- Art Template Cloth Legs - Cloth_Reputation_C_01 - Blue
				i(89408),	-- Art Template Cloth Robe - Cloth_Reputation_C_01 - Blue
				i(89409),	-- Art Template Cloth Shoulder - Cloth_Reputation_C_01 - Blue
				i(89410),	-- Art Template Cloth Wrist - Cloth_Reputation_C_01 - Blue
				i(89411),	-- Art Template Cloth Belt - Cloth_Reputation_C_01 - Yellow
				i(89412),	-- Art Template Cloth Boot - Cloth_Reputation_C_01 - Yellow
				i(89413),	-- Art Template Cloth Chest - Cloth_Reputation_C_01 - Yellow
				i(89414),	-- Art Template Cloth Hand - Cloth_Reputation_C_01 - Yellow
				i(89415),	-- Art Template Cloth Head - Cloth_Reputation_C_01 - Yellow
				i(89416),	-- Art Template Cloth Legs - Cloth_Reputation_C_01 - Yellow
				i(89417),	-- Art Template Cloth Robe - Cloth_Reputation_C_01 - Yellow
				i(89418),	-- Art Template Cloth Shoulder - Cloth_Reputation_C_01 - Yellow
				i(89419),	-- Art Template Cloth Wrist - Cloth_Reputation_C_01 - Yellow
				i(89727),	-- Art Template Cloth Belt - Cloth_PVPMage_E_01
				i(89728),	-- Art Template Cloth Boot - Cloth_PVPMage_E_01
				i(89729),	-- Art Template Cloth Shoulder - Cloth_PVPMage_E_01
				i(89730),	-- Art Template Cloth Wrist - Cloth_PVPMage_E_01
				i(89731),	-- Art Template Cloth Robe - Cloth_PVPMage_E_01
				i(89732),	-- Art Template Cloth Hand - Cloth_PVPMage_E_01
				i(89733),	-- Art Template Cloth Head - Cloth_PVPMage_E_01
				i(89734),	-- Art Template Cloth Legs - Cloth_PVPMage_E_01
				i(89735),	-- Art Template Cloth Chest - Cloth_PVPMage_E_01
				i(89748),	-- Art Template Cloth Belt - Cloth_PVPMage_E_01 - Blue
				i(89749),	-- Art Template Cloth Boot - Cloth_PVPMage_E_01 - Blue
				i(89750),	-- Art Template Cloth Chest - Cloth_PVPMage_E_01 - Blue
				i(89751),	-- Art Template Cloth Hand - Cloth_PVPMage_E_01 - Blue
				i(89752),	-- Art Template Cloth Head - Cloth_PVPMage_E_01 - Blue
				i(89753),	-- Art Template Cloth Legs - Cloth_PVPMage_E_01 - Blue
				i(89754),	-- Art Template Cloth Robe - Cloth_PVPMage_E_01 - Blue
				i(89755),	-- Art Template Cloth Shoulder - Cloth_PVPMage_E_01 - Blue
				i(89756),	-- Art Template Cloth Wrist - Cloth_PVPMage_E_01 - Blue
				i(89757),	-- Art Template Cloth Belt - Cloth_PVPMage_E_01 - Red
				i(89758),	-- Art Template Cloth Boot - Cloth_PVPMage_E_01 - Red
				i(89759),	-- Art Template Cloth Chest - Cloth_PVPMage_E_01 - Red
				i(89760),	-- Art Template Cloth Hand - Cloth_PVPMage_E_01 - Red
				i(89761),	-- Art Template Cloth Head - Cloth_PVPMage_E_01 - Red
				i(89762),	-- Art Template Cloth Legs - Cloth_PVPMage_E_01 - Red
				i(89763),	-- Art Template Cloth Robe - Cloth_PVPMage_E_01 - Red
				i(89764),	-- Art Template Cloth Shoulder - Cloth_PVPMage_E_01 - Red
				i(89765),	-- Art Template Cloth Wrist - Cloth_PVPMage_E_01 - Red
			}),
		})),

		-- 5.0.4
		expansion(EXPANSION.MOP, patch(0,4), bubbleDownSelf({ ["timeline"] = { CREATED_5_0_4 } }, {
			filter(CLOTH, {
				i(90698),	-- Art Template Cloth - Robe_CharCreate_Warlock_B_01 Hand
				i(90699),	-- Art Template Cloth - Robe_CharCreate_Warlock_B_01 Robe
				i(90701),	-- Art Template Cloth - Robe_CharCreate_Warlock_B_01 Boot
				i(90703),	-- Art Template Cloth - Robe_CharCreate_Mage_B_01 Boot
				i(90704),	-- Art Template Cloth - Robe_CharCreate_Mage_B_01 Robe
				i(90705),	-- Art Template Cloth - Robe_CharCreate_Mage_B_01 Hand
				i(90730),	-- Art Template Cloth - CharCreate_Priest_B_01 - Robe
				i(90733),	-- Art Template Cloth - CharCreate_Priest_B_01 - Boot
				i(90847),	-- Art Template Cloth - CharCreate_Priest_B_01 - Shoulder
				i(90848),	-- Art Template Cloth - CharCreate_Mage_B_01 - Shoulder
				i(90849),	-- Art Template Cloth - CharCreate_Warlock_B_01 - Shoulder
			}),
		})),

		-- 5.1.0
		expansion(EXPANSION.MOP, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_1_0 } }, {
			filter(CLOTH, {
				i(91944),	-- Art Template Cloth Belt - Cloth_PVPPriest_F_01 - Alliance
				i(91945),	-- Art Template Cloth Boot - Cloth_PVPPriest_F_01 - Alliance
				i(91946),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_F_01 - Alliance
				i(91947),	-- Art Template Cloth Wrist - Cloth_PVPPriest_F_01 - Alliance
				i(91948),	-- Art Template Cloth Robe - Cloth_PVPPriest_F_01 - Alliance
				i(91949),	-- Art Template Cloth Hand - Cloth_PVPPriest_F_01 - Alliance
				i(91950),	-- Art Template Cloth Head - Cloth_PVPPriest_F_01 - Alliance
				i(91951),	-- Art Template Cloth Legs - Cloth_PVPPriest_F_01 - Alliance
				i(91952),	-- Art Template Cloth Chest - Cloth_PVPPriest_F_01 - Alliance
				i(91953),	-- Art Template Cloth Belt - Cloth_PVPPriest_F_01 - Horde
				i(91954),	-- Art Template Cloth Boot - Cloth_PVPPriest_F_01 - Horde
				i(91955),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_F_01 - Horde
				i(91956),	-- Art Template Cloth Wrist - Cloth_PVPPriest_F_01 - Horde
				i(91957),	-- Art Template Cloth Robe - Cloth_PVPPriest_F_01 - Horde
				i(91958),	-- Art Template Cloth Hand - Cloth_PVPPriest_F_01 - Horde
				i(91959),	-- Art Template Cloth Head - Cloth_PVPPriest_F_01 - Horde
				i(91960),	-- Art Template Cloth Legs - Cloth_PVPPriest_F_01 - Horde
				i(91961),	-- Art Template Cloth Chest - Cloth_PVPPriest_F_01 - Horde
				i(91962),	-- Art Template Cloth Belt - Cloth_PVPPriest_F_01 - Dark
				i(91963),	-- Art Template Cloth Boot - Cloth_PVPPriest_F_01 - Dark
				i(91964),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_F_01 - Dark
				i(91965),	-- Art Template Cloth Wrist - Cloth_PVPPriest_F_01 - Dark
				i(91966),	-- Art Template Cloth Robe - Cloth_PVPPriest_F_01 - Dark
				i(91967),	-- Art Template Cloth Hand - Cloth_PVPPriest_F_01 - Dark
				i(91968),	-- Art Template Cloth Head - Cloth_PVPPriest_F_01 - Dark
				i(91969),	-- Art Template Cloth Legs - Cloth_PVPPriest_F_01 - Dark
				i(91970),	-- Art Template Cloth Chest - Cloth_PVPPriest_F_01 - Dark
				i(91985),	-- Art Template Cloth Belt - Cloth_PVPMage_F_01 - Blue
				i(91986),	-- Art Template Cloth Boot - Cloth_PVPMage_F_01 - Blue
				i(91987),	-- Art Template Cloth Shoulder - Cloth_PVPMage_F_01 - Blue
				i(91988),	-- Art Template Cloth Wrist - Cloth_PVPMage_F_01 - Blue
				i(91989),	-- Art Template Cloth Robe - Cloth_PVPMage_F_01 - Blue
				i(91990),	-- Art Template Cloth Hand - Cloth_PVPMage_F_01 - Blue
				i(91991),	-- Art Template Cloth Head - Cloth_PVPMage_F_01 - Blue
				i(91992),	-- Art Template Cloth Legs - Cloth_PVPMage_F_01 - Blue
				i(91993),	-- Art Template Cloth Chest - Cloth_PVPMage_F_01 - Blue
				i(91994),	-- Art Template Cloth Belt - Cloth_PVPMage_F_01 - Red
				i(91995),	-- Art Template Cloth Boot - Cloth_PVPMage_F_01 - Red
				i(91996),	-- Art Template Cloth Shoulder - Cloth_PVPMage_F_01 - Red
				i(91997),	-- Art Template Cloth Wrist - Cloth_PVPMage_F_01 - Red
				i(91998),	-- Art Template Cloth Robe - Cloth_PVPMage_F_01 - Red
				i(91999),	-- Art Template Cloth Hand - Cloth_PVPMage_F_01 - Red
				i(92000),	-- Art Template Cloth Head - Cloth_PVPMage_F_01 - Red
				i(92001),	-- Art Template Cloth Legs - Cloth_PVPMage_F_01 - Red
				i(92002),	-- Art Template Cloth Chest - Cloth_PVPMage_F_01 - Red
				i(92003),	-- Art Template Cloth Belt - Cloth_PVPMage_F_01 - Purple
				i(92004),	-- Art Template Cloth Boot - Cloth_PVPMage_F_01 - Purple
				i(92005),	-- Art Template Cloth Shoulder - Cloth_PVPMage_F_01 - Purple
				i(92006),	-- Art Template Cloth Wrist - Cloth_PVPMage_F_01 - Purple
				i(92007),	-- Art Template Cloth Robe - Cloth_PVPMage_F_01 - Purple
				i(92008),	-- Art Template Cloth Hand - Cloth_PVPMage_F_01 - Purple
				i(92009),	-- Art Template Cloth Head - Cloth_PVPMage_F_01 - Purple
				i(92010),	-- Art Template Cloth Legs - Cloth_PVPMage_F_01 - Purple
				i(92011),	-- Art Template Cloth Chest - Cloth_PVPMage_F_01 - Purple
				i(92540),	-- Art Template Cloth Belt - Cloth_RaidWarlock_M_01 - Brown
				i(92541),	-- Art Template Cloth Boot - Cloth_RaidWarlock_M_01 - Brown
				i(92542),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_M_01 - Brown
				i(92543),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_M_01 - Brown
				i(92544),	-- Art Template Cloth Robe - Cloth_RaidWarlock_M_01 - Brown
				i(92545),	-- Art Template Cloth Hand - Cloth_RaidWarlock_M_01 - Brown
				i(92546),	-- Art Template Cloth Head - Cloth_RaidWarlock_M_01 - Brown
				i(92547),	-- Art Template Cloth Legs - Cloth_RaidWarlock_M_01 - Brown
				i(92548),	-- Art Template Cloth Chest - Cloth_RaidWarlock_M_01 - Brown
				i(92666),	-- Art Template Cloth Belt - Cloth_RaidWarlock_M_01 - Grey
				i(92667),	-- Art Template Cloth Boot - Cloth_RaidWarlock_M_01 - Grey
				i(92668),	-- Art Template Cloth Chest - Cloth_RaidWarlock_M_01 - Grey
				i(92669),	-- Art Template Cloth Hand - Cloth_RaidWarlock_M_01 - Grey
				i(92670),	-- Art Template Cloth Head - Cloth_RaidWarlock_M_01 - Grey
				i(92671),	-- Art Template Cloth Legs - Cloth_RaidWarlock_M_01 - Grey
				i(92672),	-- Art Template Cloth Robe - Cloth_RaidWarlock_M_01 - Grey
				i(92673),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_M_01 - Grey
				i(92674),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_M_01 - Grey
				i(92991),	-- Art Template Cloth Belt - Cloth_PVPWarlock_F_01 - Alliance
				i(92992),	-- Art Template Cloth Boot - Cloth_PVPWarlock_F_01 - Alliance
				i(92993),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_F_01 - Alliance
				i(92994),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_F_01 - Alliance
				i(92995),	-- Art Template Cloth Robe - Cloth_PVPWarlock_F_01 - Alliance
				i(92996),	-- Art Template Cloth Hand - Cloth_PVPWarlock_F_01 - Alliance
				i(92997),	-- Art Template Cloth Head - Cloth_PVPWarlock_F_01 - Alliance
				i(92998),	-- Art Template Cloth Legs - Cloth_PVPWarlock_F_01 - Alliance
				i(92999),	-- Art Template Cloth Chest - Cloth_PVPWarlock_F_01 - Alliance
				i(93000),	-- Art Template Cloth Belt - Cloth_PVPWarlock_F_01 - Horde
				i(93001),	-- Art Template Cloth Boot - Cloth_PVPWarlock_F_01 - Horde
				i(93002),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_F_01 - Horde
				i(93003),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_F_01 - Horde
				i(93004),	-- Art Template Cloth Robe - Cloth_PVPWarlock_F_01 - Horde
				i(93005),	-- Art Template Cloth Hand - Cloth_PVPWarlock_F_01 - Horde
				i(93006),	-- Art Template Cloth Head - Cloth_PVPWarlock_F_01 - Horde
				i(93007),	-- Art Template Cloth Legs - Cloth_PVPWarlock_F_01 - Horde
				i(93008),	-- Art Template Cloth Chest - Cloth_PVPWarlock_F_01 - Horde
				i(93010),	-- Art Template Cloth Belt - Cloth_PVPWarlock_F_01 - Purple
				i(93011),	-- Art Template Cloth Boot - Cloth_PVPWarlock_F_01 - Purple
				i(93012),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_F_01 - Purple
				i(93013),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_F_01 - Purple
				i(93014),	-- Art Template Cloth Robe - Cloth_PVPWarlock_F_01 - Purple
				i(93015),	-- Art Template Cloth Hand - Cloth_PVPWarlock_F_01 - Purple
				i(93016),	-- Art Template Cloth Head - Cloth_PVPWarlock_F_01 - Purple
				i(93017),	-- Art Template Cloth Legs - Cloth_PVPWarlock_F_01 - Purple
				i(93018),	-- Art Template Cloth Chest - Cloth_PVPWarlock_F_01 - Purple
				i(93285),	-- Art Template Cloth Belt - Cloth_RaidPriest_M_01
				i(93286),	-- Art Template Cloth Boot - Cloth_RaidPriest_M_01
				i(93287),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_M_01
				i(93288),	-- Art Template Cloth Wrist - Cloth_RaidPriest_M_01
				i(93289),	-- Art Template Cloth Robe - Cloth_RaidPriest_M_01
				i(93290),	-- Art Template Cloth Hand - Cloth_RaidPriest_M_01
				i(93291),	-- Art Template Cloth Head - Cloth_RaidPriest_M_01
				i(93292),	-- Art Template Cloth Legs - Cloth_RaidPriest_M_01
				i(93293),	-- Art Template Cloth Chest - Cloth_RaidPriest_M_01
				i(93294),	-- Art Template Cloth Belt - Cloth_RaidPriest_M_01 - Blue
				i(93295),	-- Art Template Cloth Boot - Cloth_RaidPriest_M_01 - Blue
				i(93296),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_M_01 - Blue
				i(93297),	-- Art Template Cloth Wrist - Cloth_RaidPriest_M_01 - Blue
				i(93298),	-- Art Template Cloth Robe - Cloth_RaidPriest_M_01 - Blue
				i(93299),	-- Art Template Cloth Hand - Cloth_RaidPriest_M_01 - Blue
				i(93300),	-- Art Template Cloth Head - Cloth_RaidPriest_M_01 - Blue
				i(93301),	-- Art Template Cloth Legs - Cloth_RaidPriest_M_01 - Blue
				i(93302),	-- Art Template Cloth Chest - Cloth_RaidPriest_M_01 - Blue
				i(93303),	-- Art Template Cloth Belt - Cloth_RaidPriest_M_01 - Dark
				i(93304),	-- Art Template Cloth Boot - Cloth_RaidPriest_M_01 - Dark
				i(93305),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_M_01 - Dark
				i(93306),	-- Art Template Cloth Wrist - Cloth_RaidPriest_M_01 - Dark
				i(93307),	-- Art Template Cloth Robe - Cloth_RaidPriest_M_01 - Dark
				i(93308),	-- Art Template Cloth Hand - Cloth_RaidPriest_M_01 - Dark
				i(93309),	-- Art Template Cloth Head - Cloth_RaidPriest_M_01 - Dark
				i(93310),	-- Art Template Cloth Legs - Cloth_RaidPriest_M_01 - Dark
				i(93311),	-- Art Template Cloth Chest - Cloth_RaidPriest_M_01 - Dark
			}),
			filter(TRINKET_F, {
				i(91329),	-- Tyrannical Gladiator's Medallion of Cruelty [A]
				i(91330),	-- Tyrannical Gladiator's Medallion of Cruelty [H]
				i(91331),	-- Tyrannical Gladiator's Medallion of Tenacity [A]
				i(91332),	-- Tyrannical Gladiator's Medallion of Tenacity [H]
				i(91333),	-- Tyrannical Gladiator's Medallion of Meditation [A]
				i(91334),	-- Tyrannical Gladiator's Medallion of Meditation [H]
			}),
		})),

		-- 5.2.0
		expansion(EXPANSION.MOP, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_2_0 } }, {
			filter(CLOTH, {
				i(93782),	-- Art Template Cloth Belt - Cloth_RaidWarlock_M_01 - Purple
				i(93783),	-- Art Template Cloth Boot - Cloth_RaidWarlock_M_01 - Purple
				i(93784),	-- Art Template Cloth Chest - Cloth_RaidWarlock_M_01 - Purple
				i(93785),	-- Art Template Cloth Hand - Cloth_RaidWarlock_M_01 - Purple
				i(93786),	-- Art Template Cloth Head - Cloth_RaidWarlock_M_01 - Purple
				i(93787),	-- Art Template Cloth Legs - Cloth_RaidWarlock_M_01 - Purple
				i(93788),	-- Art Template Cloth Robe - Cloth_RaidWarlock_M_01 - Purple
				i(93789),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_M_01 - Purple
				i(93790),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_M_01 - Purple
				i(93905),	-- Art Template Cloth Belt - Cloth_RaidMage_M_01 - Green
				i(93906),	-- Art Template Cloth Boot - Cloth_RaidMage_M_01 - Green
				i(93907),	-- Art Template Cloth Shoulder - Cloth_RaidMage_M_01 - Green
				i(93908),	-- Art Template Cloth Wrist - Cloth_RaidMage_M_01 - Green
				i(93909),	-- Art Template Cloth Robe - Cloth_RaidMage_M_01 - Green
				i(93910),	-- Art Template Cloth Hand - Cloth_RaidMage_M_01 - Green
				i(93911),	-- Art Template Cloth Head - Cloth_RaidMage_M_01 - Green
				i(93912),	-- Art Template Cloth Legs - Cloth_RaidMage_M_01 - Green
				i(93913),	-- Art Template Cloth Chest - Cloth_RaidMage_M_01 - Green
				i(93914),	-- Art Template Cloth Belt - Cloth_RaidMage_M_01 - Red
				i(93915),	-- Art Template Cloth Boot - Cloth_RaidMage_M_01 - Red
				i(93916),	-- Art Template Cloth Shoulder - Cloth_RaidMage_M_01 - Red
				i(93917),	-- Art Template Cloth Wrist - Cloth_RaidMage_M_01 - Red
				i(93918),	-- Art Template Cloth Robe - Cloth_RaidMage_M_01 - Red
				i(93919),	-- Art Template Cloth Hand - Cloth_RaidMage_M_01 - Red
				i(93920),	-- Art Template Cloth Head - Cloth_RaidMage_M_01 - Red
				i(93921),	-- Art Template Cloth Legs - Cloth_RaidMage_M_01 - Red
				i(93922),	-- Art Template Cloth Chest - Cloth_RaidMage_M_01 - Red
				i(93923),	-- Art Template Cloth Belt - Cloth_RaidMage_M_01 - Blue
				i(93924),	-- Art Template Cloth Boot - Cloth_RaidMage_M_01 - Blue
				i(93925),	-- Art Template Cloth Shoulder - Cloth_RaidMage_M_01 - Blue
				i(93926),	-- Art Template Cloth Wrist - Cloth_RaidMage_M_01 - Blue
				i(93927),	-- Art Template Cloth Robe - Cloth_RaidMage_M_01 - Blue
				i(93928),	-- Art Template Cloth Hand - Cloth_RaidMage_M_01 - Blue
				i(93929),	-- Art Template Cloth Head - Cloth_RaidMage_M_01 - Blue
				i(93930),	-- Art Template Cloth Legs - Cloth_RaidMage_M_01 - Blue
				i(93931),	-- Art Template Cloth Chest - Cloth_RaidMage_M_01 - Blue
			}),
			-- #if BEFORE 10.2.7
			-- All of these were added with MoP: Remix Throne of Thunder Ensembles
			filter(CLOTH, {	-- (again)
				i(96705),	-- Abandoned Zandalari Firecord
				i(97077),	-- Abandoned Zandalari Firecord
				i(96706),	-- Abandoned Zandalari Shadowgirdle
				i(97078),	-- Abandoned Zandalari Shadowgirdle
				i(96709),	-- Home-Warding Slippers
				i(97081),	-- Home-Warding Slippers
				i(96707),	-- Silentflame Sandals
				i(97079),	-- Silentflame Sandals
			}),
			-- #endif
			-- #if BEFORE 10.2.7
			-- All of these were added with MoP: Remix Throne of Thunder Ensembles
			filter(LEATHER, {
				i(96715),	-- Abandoned Zandalari Moonstrap
				i(97087),	-- Abandoned Zandalari Moonstrap
				i(96714),	-- Abandoned Zandalari Silentbelt
				i(97086),	-- Abandoned Zandalari Silentbelt
				i(96710),	-- Deeproot Treads
				i(97082),	-- Deeproot Treads
				i(96703),	-- Spiderweb Tabi
				i(97075),	-- Spiderweb Tabi
			}),
			-- #endif
			-- #if BEFORE 10.2.7
			-- All of these were added with MoP: Remix Throne of Thunder Ensembles
			filter(MAIL, {
				i(96716),	-- Abandoned Zandalari Arrowlinks
				i(97088),	-- Abandoned Zandalari Arrowlinks
				i(96717),	-- Abandoned Zandalari Waterchain
				i(97089),	-- Abandoned Zandalari Waterchain
				i(96704),	-- Scalehide Spurs
				i(97076),	-- Scalehide Spurs
				i(96711),	-- Spiritbound Boots
				i(97083),	-- Spiritbound Boots
			}),
			-- #endif
			-- #if BEFORE 10.2.7
			-- All of these were added with MoP: Remix Throne of Thunder Ensembles
			filter(PLATE, {
				i(96720),	-- Abandoned Zandalari Bucklebreaker
				i(97092),	-- Abandoned Zandalari Bucklebreaker
				i(96719),	-- Abandoned Zandalari Goreplate
				i(97091),	-- Abandoned Zandalari Goreplate
				i(96718),	-- Abandoned Zandalari Greatbelt
				i(97090),	-- Abandoned Zandalari Greatbelt
				i(96723),	-- Columnbreaker Stompers
				i(97095),	-- Columnbreaker Stompers
				i(96722),	-- Locksmasher Greaves
				i(97094),	-- Locksmasher Greaves
				i(96712),	-- Vaultwalker Sabatons
				i(97084),	-- Vaultwalker Sabatons
			}),
			-- #endif
		})),

		-- 5.3.0
		expansion(EXPANSION.MOP, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_3_0 } }, {
			filter(BACK_F, {
				i(97518),	-- Dreadful Gladiator's Drape of Prowess
				i(97836),	-- Malevolent Gladiator's Drape of Prowess
				i(97926),	-- Malevolent Gladiator's Drape of Prowess
			}),
			filter(CLOTH, {
				i(98705),	-- Art Template Cloth Belt - Cloth_PVPPriest_G_01 - Blue
				i(98706),	-- Art Template Cloth Boot - Cloth_PVPPriest_G_01 - Blue
				i(98707),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_G_01 - Blue
				i(98708),	-- Art Template Cloth Wrist - Cloth_PVPPriest_G_01 - Blue
				i(98709),	-- Art Template Cloth Robe - Cloth_PVPPriest_G_01 - Blue
				i(98710),	-- Art Template Cloth Hand - Cloth_PVPPriest_G_01 - Blue
				i(98711),	-- Art Template Cloth Head - Cloth_PVPPriest_G_01 - Blue
				i(98712),	-- Art Template Cloth Legs - Cloth_PVPPriest_G_01 - Blue
				i(98713),	-- Art Template Cloth Chest - Cloth_PVPPriest_G_01 - Blue
				i(98714),	-- Art Template Cloth Kilt - Cloth_PVPPriest_G_01 - Blue
				i(98718),	-- Art Template Cloth Belt - Cloth_PVPPriest_G_01 - Green
				i(98719),	-- Art Template Cloth Boot - Cloth_PVPPriest_G_01 - Green
				i(98720),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_G_01 - Green
				i(98721),	-- Art Template Cloth Wrist - Cloth_PVPPriest_G_01 - Green
				i(98722),	-- Art Template Cloth Robe - Cloth_PVPPriest_G_01 - Green
				i(98723),	-- Art Template Cloth Hand - Cloth_PVPPriest_G_01 - Green
				i(98724),	-- Art Template Cloth Head - Cloth_PVPPriest_G_01 - Green
				i(98725),	-- Art Template Cloth Legs - Cloth_PVPPriest_G_01 - Green
				i(98726),	-- Art Template Cloth Chest - Cloth_PVPPriest_G_01 - Green
				i(98727),	-- Art Template Cloth Kilt - Cloth_PVPPriest_G_01 - Green
				i(98736),	-- Art Template Cloth Belt - Cloth_PVPPriest_G_01 - Red
				i(98737),	-- Art Template Cloth Boot - Cloth_PVPPriest_G_01 - Red
				i(98738),	-- Art Template Cloth Shoulder - Cloth_PVPPriest_G_01 - Red
				i(98739),	-- Art Template Cloth Wrist - Cloth_PVPPriest_G_01 - Red
				i(98740),	-- Art Template Cloth Robe - Cloth_PVPPriest_G_01 - Red
				i(98741),	-- Art Template Cloth Hand - Cloth_PVPPriest_G_01 - Red
				i(98742),	-- Art Template Cloth Head - Cloth_PVPPriest_G_01 - Red
				i(98743),	-- Art Template Cloth Legs - Cloth_PVPPriest_G_01 - Red
				i(98744),	-- Art Template Cloth Chest - Cloth_PVPPriest_G_01 - Red
				i(98745),	-- Art Template Cloth Kilt - Cloth_PVPPriest_G_01 - Red
			}),
			n(FEET, {
				i(97526),	-- Malevolent Gladiator's Treads of Alacrity
				i(97842),	-- Malevolent Gladiator's Treads of Cruelty
				i(97932),	-- Malevolent Gladiator's Treads of Cruelty
			}),
			filter(FINGER_F, {
				i(97527),	-- Dreadful Gladiator's Band of Meditation
				i(97529),	-- Dreadful Gladiator's Band of Meditation
				i(97844),	-- Malevolent Gladiator's Band of Accuracy
				i(97528),	-- Malevolent Gladiator's Band of Cruelty
				i(97843),	-- Malevolent Gladiator's Band of Cruelty
				i(97933),	-- Malevolent Gladiator's Band of Cruelty
				i(98037),	-- QA Test Finger Dodge
				i(98038),	-- QA Test Finger Parry
			}),
			filter(NECK_F, {
				i(97516),	-- Dreadful Gladiator's Pendant of Meditation
				i(97834),	-- Malevolent Gladiator's Pendant of Cruelty
				i(97924),	-- Malevolent Gladiator's Pendant of Cruelty
			}),
			filter(TRINKET_F, {
				i(97531),	-- Malevolent Gladiator's Badge of Dominance
				i(97532),	-- Malevolent Gladiator's Badge of Dominance
				i(97533),	-- Malevolent Gladiator's Medallion of Cruelty [H]
				i(97845),	-- Malevolent Gladiator's Medallion of Cruelty [H]
				i(97935),	-- Malevolent Gladiator's Medallion of Cruelty [H]
				i(97936),	-- Malevolent Gladiator's Badge of Dominance
			}),
			n(WAIST, {
				i(97840),	-- Malevolent Gladiator's Cord of Accuracy
				i(97930),	-- Malevolent Gladiator's Cord of Accuracy
				i(97523),	-- Malevolent Gladiator's Cord of Cruelty
			}),
			n(WRIST, {
				i(97838),	-- Malevolent Gladiator's Cuffs of Accuracy
				i(97521),	-- Malevolent Gladiator's Cuffs of Meditation
			}),
		})),

		-- 5.4.0
		expansion(EXPANSION.MOP, patch(4,0), bubbleDownSelf({ ["timeline"] = { CREATED_5_4_0 } }, {
			filter(CLOTH, {
				i(101408),	-- Art Template Cloth Belt - RaidMage_N_01 - Blue
				i(101409),	-- Art Template Cloth Boot - RaidMage_N_01 - Blue
				i(101410),	-- Art Template Cloth Shoulder - RaidMage_N_01 - Blue
				i(101411),	-- Art Template Cloth Wrist - RaidMage_N_01 - Blue
				i(101412),	-- Art Template Cloth Robe - RaidMage_N_01 - Blue
				i(101413),	-- Art Template Cloth Hand - RaidMage_N_01 - Blue
				i(101414),	-- Art Template Cloth Head - RaidMage_N_01 - Blue
				i(101415),	-- Art Template Cloth Legs - RaidMage_N_01 - Blue
				i(101416),	-- Art Template Cloth Chest - RaidMage_N_01 - Blue
				i(101417),	-- Art Template Cloth Belt - RaidMage_N_01 - Ice
				i(101418),	-- Art Template Cloth Boot - RaidMage_N_01 - Ice
				i(101419),	-- Art Template Cloth Shoulder - RaidMage_N_01 - Ice
				i(101420),	-- Art Template Cloth Wrist - RaidMage_N_01 - Ice
				i(101421),	-- Art Template Cloth Robe - RaidMage_N_01 - Ice
				i(101422),	-- Art Template Cloth Hand - RaidMage_N_01 - Ice
				i(101423),	-- Art Template Cloth Head - RaidMage_N_01 - Ice
				i(101424),	-- Art Template Cloth Legs - RaidMage_N_01 - Ice
				i(101425),	-- Art Template Cloth Chest - RaidMage_N_01 - Ice
				i(101494),	-- Art Template Cloth Belt - Cloth_PVPWarlock_G_01 - Black
				i(101495),	-- Art Template Cloth Boot - Cloth_PVPWarlock_G_01 - Black
				i(101496),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_G_01 - Black
				i(101497),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_G_01 - Black
				i(101498),	-- Art Template Cloth Robe - Cloth_PVPWarlock_G_01 - Black
				i(101499),	-- Art Template Cloth Hand - Cloth_PVPWarlock_G_01 - Black
				i(101500),	-- Art Template Cloth Head - Cloth_PVPWarlock_G_01 - Black
				i(101501),	-- Art Template Cloth Legs - Cloth_PVPWarlock_G_01 - Black
				i(101502),	-- Art Template Cloth Chest - Cloth_PVPWarlock_G_01 - Black
				i(101503),	-- Art Template Cloth Belt - Cloth_PVPWarlock_G_01 - Red
				i(101504),	-- Art Template Cloth Boot - Cloth_PVPWarlock_G_01 - Red
				i(101505),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_G_01 - Red
				i(101506),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_G_01 - Red
				i(101507),	-- Art Template Cloth Robe - Cloth_PVPWarlock_G_01 - Red
				i(101508),	-- Art Template Cloth Hand - Cloth_PVPWarlock_G_01 - Red
				i(101509),	-- Art Template Cloth Head - Cloth_PVPWarlock_G_01 - Red
				i(101510),	-- Art Template Cloth Legs - Cloth_PVPWarlock_G_01 - Red
				i(101511),	-- Art Template Cloth Chest - Cloth_PVPWarlock_G_01 - Red
				i(101512),	-- Art Template Cloth Belt - Cloth_PVPWarlock_G_01 - Green
				i(101513),	-- Art Template Cloth Boot - Cloth_PVPWarlock_G_01 - Green
				i(101514),	-- Art Template Cloth Shoulder - Cloth_PVPWarlock_G_01 - Green
				i(101515),	-- Art Template Cloth Wrist - Cloth_PVPWarlock_G_01 - Green
				i(101516),	-- Art Template Cloth Robe - Cloth_PVPWarlock_G_01 - Green
				i(101517),	-- Art Template Cloth Hand - Cloth_PVPWarlock_G_01 - Green
				i(101518),	-- Art Template Cloth Head - Cloth_PVPWarlock_G_01 - Green
				i(101519),	-- Art Template Cloth Legs - Cloth_PVPWarlock_G_01 - Green
				i(101520),	-- Art Template Cloth Chest - Cloth_PVPWarlock_G_01 - Green
				i(101572),	-- Art Template Cloth Head - Helm_Robe_B_03earthenring
				i(101700),	-- Art Template Cloth Belt - Cloth_RaidWarlock_N_01 - Blue
				i(101701),	-- Art Template Cloth Boot - Cloth_RaidWarlock_N_01 - Blue
				i(101702),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_N_01 - Blue
				i(101703),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_N_01 - Blue
				i(101704),	-- Art Template Cloth Robe - Cloth_RaidWarlock_N_01 - Blue
				i(101705),	-- Art Template Cloth Hand - Cloth_RaidWarlock_N_01 - Blue
				i(101706),	-- Art Template Cloth Head - Cloth_RaidWarlock_N_01 - Blue
				i(101707),	-- Art Template Cloth Legs - Cloth_RaidWarlock_N_01 - Blue
				i(101708),	-- Art Template Cloth Chest - Cloth_RaidWarlock_N_01 - Blue
				i(101709),	-- Art Template Cloth Belt - Cloth_RaidWarlock_N_01 - Red
				i(101710),	-- Art Template Cloth Boot - Cloth_RaidWarlock_N_01 - Red
				i(101711),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_N_01 - Red
				i(101712),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_N_01 - Red
				i(101713),	-- Art Template Cloth Robe - Cloth_RaidWarlock_N_01 - Red
				i(101714),	-- Art Template Cloth Hand - Cloth_RaidWarlock_N_01 - Red
				i(101715),	-- Art Template Cloth Head - Cloth_RaidWarlock_N_01 - Red
				i(101716),	-- Art Template Cloth Legs - Cloth_RaidWarlock_N_01 - Red
				i(101717),	-- Art Template Cloth Chest - Cloth_RaidWarlock_N_01 - Red
				i(101718),	-- Art Template Cloth Belt - Cloth_RaidWarlock_N_01 - Gold
				i(101719),	-- Art Template Cloth Boot - Cloth_RaidWarlock_N_01 - Gold
				i(101720),	-- Art Template Cloth Shoulder - Cloth_RaidWarlock_N_01 - Gold
				i(101721),	-- Art Template Cloth Wrist - Cloth_RaidWarlock_N_01 - Gold
				i(101722),	-- Art Template Cloth Robe - Cloth_RaidWarlock_N_01 - Gold
				i(101723),	-- Art Template Cloth Hand - Cloth_RaidWarlock_N_01 - Gold
				i(101724),	-- Art Template Cloth Head - Cloth_RaidWarlock_N_01 - Gold
				i(101725),	-- Art Template Cloth Legs - Cloth_RaidWarlock_N_01 - Gold
				i(101726),	-- Art Template Cloth Chest - Cloth_RaidWarlock_N_01 - Gold
				i(102373),	-- Art Template Cloth Belt - Cloth_RaidPriest_N_01 - Holy
				i(102374),	-- Art Template Cloth Boot - Cloth_RaidPriest_N_01 - Holy
				i(102375),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_N_01 - Holy
				i(102376),	-- Art Template Cloth Wrist - Cloth_RaidPriest_N_01 - Holy
				i(102377),	-- Art Template Cloth Robe - Cloth_RaidPriest_N_01 - Holy
				i(102378),	-- Art Template Cloth Hand - Cloth_RaidPriest_N_01 - Holy
				i(102379),	-- Art Template Cloth Head - Cloth_RaidPriest_N_01 - Holy
				i(102380),	-- Art Template Cloth Legs - Cloth_RaidPriest_N_01 - Holy
				i(102381),	-- Art Template Cloth Chest - Cloth_RaidPriest_N_01 - Holy
				i(102382),	-- Art Template Cloth Belt - Cloth_RaidPriest_N_01 - Discipline
				i(102383),	-- Art Template Cloth Boot - Cloth_RaidPriest_N_01 - Discipline
				i(102384),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_N_01 - Discipline
				i(102385),	-- Art Template Cloth Wrist - Cloth_RaidPriest_N_01 - Discipline
				i(102386),	-- Art Template Cloth Robe - Cloth_RaidPriest_N_01 - Discipline
				i(102387),	-- Art Template Cloth Hand - Cloth_RaidPriest_N_01 - Discipline
				i(102388),	-- Art Template Cloth Head - Cloth_RaidPriest_N_01 - Discipline
				i(102389),	-- Art Template Cloth Legs - Cloth_RaidPriest_N_01 - Discipline
				i(102390),	-- Art Template Cloth Chest - Cloth_RaidPriest_N_01 - Discipline
				i(102427),	-- Art Template Cloth Belt - Cloth_RaidPriest_N_01 - Shadow
				i(102428),	-- Art Template Cloth Boot - Cloth_RaidPriest_N_01 - Shadow
				i(102429),	-- Art Template Cloth Shoulder - Cloth_RaidPriest_N_01 - Shadow
				i(102430),	-- Art Template Cloth Wrist - Cloth_RaidPriest_N_01 - Shadow
				i(102431),	-- Art Template Cloth Robe - Cloth_RaidPriest_N_01 - Shadow
				i(102432),	-- Art Template Cloth Hand - Cloth_RaidPriest_N_01 - Shadow
				i(102433),	-- Art Template Cloth Head - Cloth_RaidPriest_N_01 - Shadow
				i(102434),	-- Art Template Cloth Legs - Cloth_RaidPriest_N_01 - Shadow
				i(102435),	-- Art Template Cloth Chest - Cloth_RaidPriest_N_01 - Shadow
				i(102504),	-- Art Template Cloth Belt - Cloth_PVPMage_G_01 - Cool
				i(102505),	-- Art Template Cloth Boot - Cloth_PVPMage_G_01 - Cool
				i(102506),	-- Art Template Cloth Shoulder - Cloth_PVPMage_G_01 - Cool
				i(102507),	-- Art Template Cloth Wrist - Cloth_PVPMage_G_01 - Cool
				i(102508),	-- Art Template Cloth Robe - Cloth_PVPMage_G_01 - Cool
				i(102509),	-- Art Template Cloth Hand - Cloth_PVPMage_G_01 - Cool
				i(102510),	-- Art Template Cloth Head - Cloth_PVPMage_G_01 - Cool
				i(102511),	-- Art Template Cloth Legs - Cloth_PVPMage_G_01 - Cool
				i(102512),	-- Art Template Cloth Chest - Cloth_PVPMage_G_01 - Cool
				i(102515),	-- Art Template Cloth Belt - Cloth_PVPMage_G_01 - Dark
				i(102516),	-- Art Template Cloth Boot - Cloth_PVPMage_G_01 - Dark
				i(102517),	-- Art Template Cloth Shoulder - Cloth_PVPMage_G_01 - Dark
				i(102518),	-- Art Template Cloth Wrist - Cloth_PVPMage_G_01 - Dark
				i(102519),	-- Art Template Cloth Robe - Cloth_PVPMage_G_01 - Dark
				i(102520),	-- Art Template Cloth Hand - Cloth_PVPMage_G_01 - Dark
				i(102521),	-- Art Template Cloth Head - Cloth_PVPMage_G_01 - Dark
				i(102522),	-- Art Template Cloth Legs - Cloth_PVPMage_G_01 - Dark
				i(102523),	-- Art Template Cloth Chest - Cloth_PVPMage_G_01 - Dark
				i(102524),	-- Art Template Cloth Belt - Cloth_PVPMage_G_01 - Warm
				i(102525),	-- Art Template Cloth Boot - Cloth_PVPMage_G_01 - Warm
				i(102526),	-- Art Template Cloth Shoulder - Cloth_PVPMage_G_01 - Warm
				i(102527),	-- Art Template Cloth Wrist - Cloth_PVPMage_G_01 - Warm
				i(102528),	-- Art Template Cloth Robe - Cloth_PVPMage_G_01 - Warm
				i(102529),	-- Art Template Cloth Hand - Cloth_PVPMage_G_01 - Warm
				i(102530),	-- Art Template Cloth Head - Cloth_PVPMage_G_01 - Warm
				i(102531),	-- Art Template Cloth Legs - Cloth_PVPMage_G_01 - Warm
				i(102532),	-- Art Template Cloth Chest - Cloth_PVPMage_G_01 - Warm
			}),
			-- #if BEFORE 10.2.7
			-- All of these were added with MoP: Remix Throne of Thunder Ensembles
			filter(LEATHER, {
				i(104986),	-- Unrepentant Heels
			}),
			-- #endif
			filter(FINGER_F, {
				i(103825),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Wildcard - Int Hit Ring
				i(103897),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Wildcard - Str Tank Ring
			}),
			filter(TRINKET_F, {
				i(102312),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Boss X Loot X - Agi DPS Trinket (5)
				i(102313),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Boss X Loot X - Int Hit Trinket (5)
				i(102314),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Boss X Loot X - Int Versatility Trinket (5)
				i(102315),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Boss X Loot X - Str DPS Trinket (5)
				i(102316),	-- 5.4 Raid - Normal - Siege of Orgrimmar - Boss X Loot X - Tank Trinket (5)
			}),
		})),
	}),
	expansion(EXPANSION.WOD, {
		-- 6.x.x
		n(P6xx, {
			filter(LEATHER, {
				-- Does Not Load In Game --
				i(107889),	-- 7.0 PH Leather Belt
				i(107868),	-- 7.0 PH Leather Boots
				i(107880),	-- 7.0 PH Leather Breeches
				i(107869),	-- 7.0 PH Leather Gloves
				i(107876),	-- 7.0 PH Leather Helm
				i(107882),	-- 7.0 PH Leather Spaulders
				i(107864),	-- 7.0 PH Leather Vest
				i(107893),	-- 7.0 PH Leather Wristwraps
				i(120363),	-- 7.0 QA Combat Test Leather Boots 4
			}),
			filter(PLATE, {
				-- Does Not Load In Game --
				i(107862),	-- 7.0 PH Plate Chestplate
				i(107870),	-- 7.0 PH Plate Gauntlets
				i(107886),	-- 7.0 PH Plate Girdle
				i(107873),	-- 7.0 PH Plate Helm
				i(107877),	-- 7.0 PH Plate Legguards
				i(107883),	-- 7.0 PH Plate Shoulders
				i(107865),	-- 7.0 PH Plate Warboots
				i(107891),	-- 7.0 PH Plate Wristwraps
			}),
			filter(FINGER_F, {
				-- Does Not Load In Game --
				i(109516),	-- 7.0 QA Combat Test Ring 5
			}),
		}),

		-- 6.0.1
		expansion(EXPANSION.WOD, patch(0,1), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			filter(BACK_F, {
				i(114421),	-- Arrowleaf Longcloak
				i(114301),	-- Axebreak Darkcloak
				i(114424),	-- Blade-Ring Greatcloak
				i(114425),	-- Bleak Shore Cloak
				i(114298),	-- Cloak of Bent Dreams
				i(112233),	-- Cloak of Bloody Forces
				i(114362),	-- Cloak of Keening Spirits
				i(114361),	-- Drape of Dark Shadows
				i(114423),	-- Drape of Mindmending
				i(112231),	-- Drape of Nimble Deflection
				i(114360),	-- Eagle Eye Windcloak
				i(114297),	-- Feather-Cord Cloak
				i(114300),	-- Grimchop Greatcloak
				i(114363),	-- Gutwrencher's Greatcloak
				i(114422),	-- Mindbreaker Drape
				i(112230),	-- Storm Scale Cloak
				i(114299),	-- Suture-Slice Cloak
				i(112232),	-- Three-Kodohide Cloak
				i(114364),	-- Towerkin Cloak
				-- Does Not Load In Game --
				i(108814),	-- 6.0 PH Cloak Agi
				i(108823),	-- 6.0 PH Cloak Int
				i(108822),	-- 6.0 PH Cloak STR
				i(109282),	-- 7.0 QA Combat Test Cloak 1
				i(109453),	-- 7.0 QA Combat Test Cloak 2
				i(109538),	-- 7.0 QA Combat Test Cloak 3
				i(109496),	-- 7.0 QA Combat Test Cloak 4
				--
				i(117494),	-- Windfang Drape
				i(117495),	-- Windfang Greatcloak
				i(117496),	-- Windfang Cloak
			}),
			filter(CLOTH, {
				i(114247),	-- Firefly Bracers
				i(114275),	-- Firefly Cord
				i(114255),	-- Firefly Sandals
				-- Does Not Load In Game --
				i(107887),	-- 7.0 PH Cloth Cord
				i(107871),	-- 7.0 PH Cloth Gloves
				i(107874),	-- 7.0 PH Cloth Hood
				i(107878),	-- 7.0 PH Cloth Leggings
				i(107884),	-- 7.0 PH Cloth Mantle
				i(107881),	-- 7.0 PH Cloth Robe
				i(107866),	-- 7.0 PH Cloth Treads
				i(107890),	-- 7.0 PH Cloth Wristwraps
				i(109272),	-- 7.0 QA Combat Test Caster Belt 1
				i(109296),	-- 7.0 QA Combat Test Caster Belt 2
				i(109339),	-- 7.0 QA Combat Test Caster Belt 3
				i(109477),	-- 7.0 QA Combat Test Caster Belt 4
				i(109379),	-- 7.0 QA Combat Test Caster Boots
				i(109451),	-- 7.0 QA Combat Test Caster Boots 2
				i(109540),	-- 7.0 QA Combat Test Caster Boots 3
				i(109398),	-- 7.0 QA Combat Test Caster Bracer 1
				i(109463),	-- 7.0 QA Combat Test Caster Bracer 2
				i(109542),	-- 7.0 QA Combat Test Caster Bracer 3
				i(109546),	-- 7.0 QA Combat Test Caster Bracer 4
				i(109297),	-- 7.0 QA Combat Test Caster Gloves 1
				i(109340),	-- 7.0 QA Combat Test Caster Gloves 2
				i(109363),	-- 7.0 QA Combat Test Caster Gloves 3
				i(109521),	-- 7.0 QA Combat Test Caster Gloves 4
				i(109298),	-- 7.0 QA Combat Test Caster Helm 1
				i(109341),	-- 7.0 QA Combat Test Caster Helm 2
				i(109405),	-- 7.0 QA Combat Test Caster Helm 3
				i(109437),	-- 7.0 QA Combat Test Caster Helm 4
				i(109299),	-- 7.0 QA Combat Test Caster Legs 1
				i(109342),	-- 7.0 QA Combat Test Caster Legs 2
				i(109411),	-- 7.0 QA Combat Test Caster Legs 3
				i(109419),	-- 7.0 QA Combat Test Caster Legs 4
				i(109278),	-- 7.0 QA Combat Test Caster Robes 1
				i(109302),	-- 7.0 QA Combat Test Caster Robes 2
				i(109343),	-- 7.0 QA Combat Test Caster Robes 3
				i(109423),	-- 7.0 QA Combat Test Caster Robes 4
				i(109290),	-- 7.0 QA Combat Test Caster Shoulders 1
				i(109303),	-- 7.0 QA Combat Test Caster Shoulders 2
				i(109344),	-- 7.0 QA Combat Test Caster Shoulders 3
				i(109473),	-- 7.0 QA Combat Test Caster Shoulders 4
				i(114247),	-- Firefly Bracers
				i(114275),	-- Firefly Cord
				i(114255),	-- Firefly Sandals
				i(105710),	-- Lasso Bracers, Humanoid
				i(105928),	-- Magic Bunny Hat
				i(104355),	-- Titan Rocket Boots
			}),
			filter(FINGER_F, {
				-- Does Not Load In Game --
				i(108813),	-- 6.0 PH Ring Agi
				i(108821),	-- 6.0 PH Ring Int
				i(108820),	-- 6.0 PH Ring Str
				i(109391),	-- 6.0 QA Combat Test Agility DPS Ring 2
				i(109418),	-- 6.0 QA Combat Test Agility DPS Ring 3
				i(109478),	-- 6.0 QA Combat Test Agility DPS Ring 4
				i(109365),	-- 6.0 QA Combat Test Caster DPS Ring
				i(109410),	-- 6.0 QA Combat Test Caster DPS Ring 2
				i(109447),	-- 6.0 QA Combat Test Caster DPS Ring 3
				i(109454),	-- 6.0 QA Combat Test Caster DPS Ring 4
				i(109512),	-- 6.0 QA Combat Test Caster DPS Ring 5
				i(109277),	-- 7.0 QA Combat Test Ring 1
			}),
			filter(LEATHER, {
				i(107660),	-- Battle Aged Leather Pauldrons
				i(114276),	-- Bloodthorn Belt
				i(114256),	-- Bloodthorn Boots
				i(114248),	-- Bloodthorn Bracers
				-- Does Not Load In Game --
				i(109294),	-- 6.0 QA Combat Test Leather Belt
				i(109358),	-- 6.0 QA Combat Test Leather Belt 2
				i(109428),	-- 6.0 QA Combat Test Leather Belt 3
				i(109444),	-- 6.0 QA Combat Test Leather Belt 4
				i(109414),	-- 6.0 QA Combat Test Leather Boots
				i(109469),	-- 6.0 QA Combat Test Leather Boots 3
				i(109513),	-- 6.0 QA Combat Test Leather Boots 2
				i(109264),	-- 6.0 QA Combat Test Leather Bracer
				i(109415),	-- 6.0 QA Combat Test Leather Bracer 2
				i(109479),	-- 6.0 QA Combat Test Leather Bracer 3
				i(109547),	-- 6.0 QA Combat Test Leather Bracer 4
				i(109345),	-- 6.0 QA Combat Test Leather Chest
				i(109400),	-- 6.0 QA Combat Test Leather Chest 2
				i(109440),	-- 6.0 QA Combat Test Leather Chest 3
				i(109305),	-- 6.0 QA Combat Test Leather Gloves
				i(109346),	-- 6.0 QA Combat Test Leather Gloves
				i(109366),	-- 6.0 QA Combat Test Leather Gloves 2
				i(109493),	-- 6.0 QA Combat Test Leather Gloves 2
				i(109375),	-- 6.0 QA Combat Test Leather Helm
				i(109287),	-- 6.0 QA Combat Test Leather Helm 2
				i(109306),	-- 6.0 QA Combat Test Leather Helm 3
				i(109347),	-- 6.0 QA Combat Test Leather Helm 4
				i(109276),	-- 6.0 QA Combat Test Leather Legs
				i(109307),	-- 6.0 QA Combat Test Leather Legs 2
				i(109348),	-- 6.0 QA Combat Test Leather Legs 3
				i(109475),	-- 6.0 QA Combat Test Leather Legs 4
				i(109388),	-- 6.0 QA Combat Test Leather Robes
				i(109308),	-- 6.0 QA Combat Test Leather Shoulders
				i(109349),	-- 6.0 QA Combat Test Leather Shoulders 2
				i(109432),	-- 6.0 QA Combat Test Leather Shoulders 3
				i(109486),	-- 6.0 QA Combat Test Leather Shoulders 4
				i(107203),	-- Lasso Bracers, Powerup
			}),
			filter(MAIL, {
				i(114277),	-- Leafscale Belt
				i(114257),	-- Leafscale Boots
				i(114249),	-- Leafscale Bracers
				i(113715),	-- Sparkmail Vest
				-- Does Not Load In Game --
				i(109517),	-- 6.0 QA Combat Test Mail Chest 4
				i(107888),	-- 7.0 PH Mail Belt
				i(107872),	-- 7.0 PH Mail Gauntlets
				i(107875),	-- 7.0 PH Mail Helm
				i(107879),	-- 7.0 PH Mail Leggings
				i(107885),	-- 7.0 PH Mail Monnion
				i(107867),	-- 7.0 PH Mail Sabatons
				i(107863),	-- 7.0 PH Mail Vest
				i(107892),	-- 7.0 PH Mail Wristwraps
				i(109313),	-- 7.0 QA Combat Test Mail Belt 1
				i(109359),	-- 7.0 QA Combat Test Mail Belt 2
				i(109416),	-- 7.0 QA Combat Test Mail Belt 3
				i(109488),	-- 7.0 QA Combat Test Mail Belt 4
				i(109393),	-- 7.0 QA Combat Test Mail Boots 1
				i(109396),	-- 7.0 QA Combat Test Mail Boots 2
				i(109433),	-- 7.0 QA Combat Test Mail Boots 3
				i(109541),	-- 7.0 QA Combat Test Mail Boots 4
				i(109280),	-- 7.0 QA Combat Test Mail Bracer 1
				i(109371),	-- 7.0 QA Combat Test Mail Bracer 2
				i(109543),	-- 7.0 QA Combat Test Mail Bracer 3
				i(109548),	-- 7.0 QA Combat Test Mail Bracer 4
				i(109314),	-- 7.0 QA Combat Test Mail Chest 1
				i(109350),	-- 7.0 QA Combat Test Mail Chest 2
				i(109510),	-- 7.0 QA Combat Test Mail Chest 3
				i(109315),	-- 7.0 QA Combat Test Mail Gloves 1
				i(109351),	-- 7.0 QA Combat Test Mail Gloves 2
				i(109457),	-- 7.0 QA Combat Test Mail Gloves 3
				i(109504),	-- 7.0 QA Combat Test Mail Gloves 4
				i(109265),	-- 7.0 QA Combat Test Mail Helm
				i(109316),	-- 7.0 QA Combat Test Mail Helm 2
				i(109352),	-- 7.0 QA Combat Test Mail Helm 3
				i(109382),	-- 7.0 QA Combat Test Mail Helm 4
				i(109270),	-- 7.0 QA Combat Test Mail Legs 1
				i(109317),	-- 7.0 QA Combat Test Mail Legs 2
				i(109353),	-- 7.0 QA Combat Test Mail Legs 3
				i(109441),	-- 7.0 QA Combat Test Mail Legs 4
				i(109318),	-- 7.0 QA Combat Test Mail Shoulders 1
				i(109354),	-- 7.0 QA Combat Test Mail Shoulders 2
				i(109425),	-- 7.0 QA Combat Test Mail Shoulders 3
				i(109484),	-- 7.0 QA Combat Test Mail Shoulders 4
			}),
			filter(NECK_F, {
				-- Does Not Load In Game --
				i(108812),	-- 6.0 PH Neck Agi
				i(108819),	-- 6.0 PH Neck Int
				i(108818),	-- 6.0 PH Neck Str
				i(109295),	-- 6.0 QA Combat Test Agility DPS Neck
				i(109369),	-- 6.0 QA Combat Test Agility DPS Neck 2
				i(109427),	-- 6.0 QA Combat Test Agility DPS Neck 3
				i(109300),	-- 6.0 QA Combat Test Caster DPS Neck
				i(109452),	-- 6.0 QA Combat Test Caster DPS Neck 2
				i(109459),	-- 6.0 QA Combat Test Caster DPS Neck 3
				i(109522),	-- 6.0 QA Combat Test Caster DPS Neck 4
				i(109267),	-- 6.0 QA Combat Test Healer Neck
				i(109293),	-- 6.0 QA Combat Test Healer Neck 2
				i(109526),	-- 7.0 QA Combat Test Neck 4
			}),
			filter(PLATE, {
				i(114250),	-- Ruby Plate Bracers
				i(114258),	-- Ruby Plate Greaves
				i(114278),	-- Ruby Plate Girdle
				-- Does Not Load In Game --
				i(109321),	-- 7.0 QA Combat Test Plate Belt 1
				i(109327),	-- 7.0 QA Combat Test Plate Belt 2
				i(109333),	-- 7.0 QA Combat Test Plate Belt 3
				i(109372),	-- 7.0 QA Combat Test Plate Belt 4
				i(109455),	-- 7.0 QA Combat Test Plate Boots
				i(109461),	-- 7.0 QA Combat Test Plate Boots 2
				i(109501),	-- 7.0 QA Combat Test Plate Boots 3
				i(109268),	-- 7.0 QA Combat Test Plate Bracer 1
				i(109409),	-- 7.0 QA Combat Test Plate Bracer 2
				i(109422),	-- 7.0 QA Combat Test Plate Bracer 3
				i(109436),	-- 7.0 QA Combat Test Plate Bracer 4
				i(109275),	-- 7.0 QA Combat Test Plate Chest 1
				i(109322),	-- 7.0 QA Combat Test Plate Chest 2
				i(109328),	-- 7.0 QA Combat Test Plate Chest 3
				i(109334),	-- 7.0 QA Combat Test Plate Chest 4
				i(109289),	-- 7.0 QA Combat Test Plate Gloves 1
				i(109323),	-- 7.0 QA Combat Test Plate Gloves 2
				i(109329),	-- 7.0 QA Combat Test Plate Gloves 3
				i(109335),	-- 7.0 QA Combat Test Plate Gloves 4
				i(109324),	-- 7.0 QA Combat Test Plate Helm 1
				i(109330),	-- 7.0 QA Combat Test Plate Helm 2
				i(109336),	-- 7.0 QA Combat Test Plate Helm 3
				i(109439),	-- 7.0 QA Combat Test Plate Helm 4
				i(109325),	-- 7.0 QA Combat Test Plate Legs 1
				i(109331),	-- 7.0 QA Combat Test Plate Legs 2
				i(109337),	-- 7.0 QA Combat Test Plate Legs 3
				i(109450),	-- 7.0 QA Combat Test Plate Legs 4
				i(109284),	-- 7.0 QA Combat Test Plate Shoulders 1
				i(109326),	-- 7.0 QA Combat Test Plate Shoulders 2
				i(109332),	-- 7.0 QA Combat Test Plate Shoulders 3
				i(109338),	-- 7.0 QA Combat Test Plate Shoulders 4
			}),
			filter(TRINKET_F, {
				i(114960),	-- Spires unused
				-- Does Not Load In Game --
				i(109263),	-- 6.0 QA Combat Test Agility DPS Trinket
				i(109360),	-- 6.0 QA Combat Test Agility DPS Trinket 2
				i(109386),	-- 6.0 QA Combat Test Agility DPS Trinket 3
				i(109442),	-- 6.0 QA Combat Test Agility DPS Trinket 4
				i(109407),	-- 6.0 QA Combat Test Caster DPS Trinket 3
				i(109376),	-- 6.0 QA Combat Test Strength DPS Trinket
				i(109403),	-- 6.0 QA Combat Test Strength DPS Trinket 2
				i(109446),	-- 6.0 QA Combat Test Strength DPS Trinket 3
				i(109467),	-- 6.0 QA Combat Test Strength DPS Trinket 4
				i(109378),	-- 6.0 QA Combat Test Tank Trinket
				i(109394),	-- 6.0 QA Combat Test Tank Trinket 2
				i(109480),	-- 6.0 QA Combat Test Tank Trinket 3
				i(109495),	-- 6.0 QA Combat Test Tank Trinket 4
				i(109515),	-- 6.0 QA Combat Test Tank Trinket 5
				i(109286),	-- 7.0 QA Combat Test Caster DPS Trinket 1
				i(109370),	-- 7.0 QA Combat Test Caster DPS Trinket 2
				i(109413),	-- 7.0 QA Combat Test Caster DPS Trinket 4
				i(113020),	-- 7.0 QRP Template PH Agi Trinket #1
				i(113021),	-- 7.0 QRP Template PH Agi Trinket #2
				i(113022),	-- 7.0 QRP Template PH Int Trinket #1
				i(113017),	-- 7.0 QRP Template PH Int Trinket #2
				i(113018),	-- 7.0 QRP Template PH Str Trinket #1
				i(113019),	-- 7.0 QRP Template PH Str Trinket #2
			}),
		})),

		-- 6.0.2
		expansion(EXPANSION.WOD, patch(0,2), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_2 } }, {
			filter(CLOTH, {
				i(116001),	-- Cord of Skulls
			}),
			filter(LEATHER, {
				i(116207),	-- 6.0 LFR - Highmaul Raid - UNUSED - Leather Belt 1
			}),
			filter(MAIL, {
				i(116031),	-- 6.0 LFR - Highmaul Raid - UNUSED - Mail Versatile Belt 1
			}),
			filter(PLATE, {
				i(116232),	-- 6.0 LFR - Highmaul Raid - UNUSED - Plate Versatile Belt 1
			}),
			filter(TRINKET_F, {
				i(125044),	-- Wild Combatant's Accolade of Conquest
				i(125521),	-- Wild Combatant's Accolade of Conquest
				i(125045),	-- Wild Combatant's Accolade of Dominance
				i(125522),	-- Wild Combatant's Accolade of Dominance
				i(125048),	-- Wild Combatant's Accolade of Endurance
				i(125525),	-- Wild Combatant's Accolade of Endurance
				i(125047),	-- Wild Combatant's Accolade of Meditation
				i(125524),	-- Wild Combatant's Accolade of Meditation
				i(125046),	-- Wild Combatant's Accolade of Victory
				i(125523),	-- Wild Combatant's Accolade of Victory
				i(124870),	-- Wild Gladiator's Accolade of Conquest
				i(125347),	-- Wild Gladiator's Accolade of Conquest
				i(124871),	-- Wild Gladiator's Accolade of Dominance
				i(125348),	-- Wild Gladiator's Accolade of Dominance
				i(124874),	-- Wild Gladiator's Accolade of Endurance
				i(125351),	-- Wild Gladiator's Accolade of Endurance
				i(124873),	-- Wild Gladiator's Accolade of Meditation
				i(125350),	-- Wild Gladiator's Accolade of Meditation
				i(124872),	-- Wild Gladiator's Accolade of Victory
				i(125349),	-- Wild Gladiator's Accolade of Victory
			}),
		})),

		-- 6.0.3
		expansion(EXPANSION.WOD, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_6_0_3 } }, {
			filter(CLOTH, {
				-- Does Not Load In Game --
				i(120318),	-- Sol-Shaper's Sandals
			}),
			filter(LEATHER, {
				-- Does Not Load In Game --
				i(107337),	-- Practice Power Bracers
			}),
		})),
	}),
	expansion(EXPANSION.LEGION, {
		-- 7.x.x
		n(P7xx, {
			filter(TRINKET_F, {
				i(150367),	-- Test Trinket
			}),
		}),

		-- 7.0.3
		expansion(EXPANSION.LEGION, patch(0,3), bubbleDownSelf({ ["timeline"] = { CREATED_7_0_3 } }, {
			cl(ROGUE, {
				i(130327),	-- Artful Britches
			}),
			filter(BACK_F, {
				i(134609),	-- Scorching Cape
				i(134617),	-- Scorching Drape
				i(134579),	-- Vanguard Cape
				i(134605),	-- Vanguard Cloak
			}),
			filter(CLOTH, {
				i(134017),	-- Don Carlos' Famous Hat
				i(138420),	-- Pilfered Ettin String
			}),
			filter(FINGER_F, {
				i(141907),	-- Arena Victory Bonus
			}),
			filter(LEATHER, {
				i(129046),	-- 7.0 PH Leather Helm
				i(129127),	-- Ebon Stalker's Boots
			}),
			filter(MAIL, {
				i(129152),	-- Boulderfall Stompers
			}),
			filter(NECK_F, {
				i(131919),	-- Bitestone Incisor
				i(134710),	-- Enveloping Choker
				i(134708),	-- Enveloping Necklace
				i(134628),	-- Scorching Choker
				i(134599),	-- Vanguard Choker
				i(134597),	-- Vanguard Necklace
				i(134598),	-- Vanguard Pendant
			}),
			n(RELICS, {
				i(133018),	-- Azsuna Package 3 - Holy 1 - Unused
				i(138229),	-- Nightmare Boss 3 Relic Storm
				i(130162),	-- Val-Sharah Artifact Gem #1 [Holy]
			}),
			filter(TRINKET_F, {
				i(133062),	-- Demon Trophy of Insanity
				i(131803),	-- Spine of Barax
			}),
		})),

		-- 7.1.0
		expansion(EXPANSION.LEGION, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_1_0 } }, {
			filter(BACK_F, {
				i(134693),	-- Enveloping Cape
				i(134699),	-- Enveloping Drape
			}),
			filter(FINGER_F, {
				i(143604),	-- Rating Min Item Level Reward
			}),
			filter(PLATE, {
				i(138489),	-- Kargath's Sacrified Hands
			}),
			filter(TRINKET_F, {
				i(138084),	-- Iron Wrought Insignia of Conquest
				i(138090),	-- Iron Wrought Insignia of Dominance
				i(138093),	-- Iron Wrought Insignia of Victory
				i(140027),	-- Ley Spark
			}),
		})),

		-- 7.1.5
		expansion(EXPANSION.LEGION, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_1_5 } }, {
			filter(FINGER_F, {
				i(144455),	-- Rating Min Item Level Reward
			}),
		})),

		-- 7.2.0
		expansion(EXPANSION.LEGION, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_0 } }, {
			filter(LEATHER, {
				i(147036),	-- Fel-Stippled Legguards
			}),
			filter(FINGER_F, {
				i(147397),	-- Rating Min Item Level Reward
				i(147421),	-- Rating Min Item Level Reward
			}),
			filter(MAIL, {
				i(147058),	-- Chaos-Calming Wristguards
			}),
			filter(PLATE, {
				i(147074),	-- Vambraces of Resoulte Justice
			}),
			filter(TABARDS, {
				i(147204),	-- Black Apron - TEST
			}),
		})),

		-- 7.2.5
		expansion(EXPANSION.LEGION, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_2_5 } }, {
			filter(BACK_F, {
				i(150489),	-- Shroud of Forgiveness
				i(150714),	-- Travel-Worn Shawl
			}),
			filter(MAIL, {
				i(140011),	-- Duskwatch Adjudicator's Pauldrons
			}),
			n(TRIAL_OF_STYLE_HEADER, {
				i(188240),	-- Augur's Walkers
				i(188246),	-- Bloodbathed Slippers
				i(188247),	-- Boots of the Blightbelcher
				i(188242),	-- Cleric's Sabatons
				i(188245),	-- Cold Cage Moccasins
				i(188251),	-- Corrupted Cleats
				i(188239),	-- Keeper's Strides
				i(188250),	-- Pustule Prancers
				i(188241),	-- Stalker's Treads
				i(188238),	-- Thief's Footpads
			}),
		})),

		-- 7.3.0
		expansion(EXPANSION.LEGION, patch(3,0), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_0 } }, {
			filter(CLOTH, {
				i(153289),	-- Eredar Priestess' Tunic
			}),
			filter(FINGER_F, {
				i(150368),	-- Rating Min Item Level Reward
				i(150369),	-- Rating Min Item Level Reward
				i(150370),	-- Rating Min Item Level Reward
			}),
			filter(MAIL, {
				i(152745),	-- REUSE ME
			}),
			filter(NECK_F, {
				i(153484),	-- Fierce Combatant's Necklace
			}),
			filter(TRINKET_F, {
				i(151967),	-- Electrostatic Lasso
				i(151961),	-- Legionsteel Flywheel
			}),
		})),

		-- 7.3.5
		expansion(EXPANSION.LEGION, patch(3,5), bubbleDownSelf({ ["timeline"] = { CREATED_7_3_5 } }, {
			filter(BACK_F, {
				i(157751),	-- Drape of New Beginnings
			}),
			filter(CLOTH, {
				i(142214),	-- 7.1 Dungeon - Karazhan - Cloth SHOULDER 2
			}),
			filter(FINGER_F, {
				i(157749),	-- Ornate Silver Loop
				i(157748),	-- Simple Golden Ring
			}),
			filter(NECK_F, {
				i(157750),	-- Pendant of Good Fortune
			}),
			filter(TRINKET_F, {
				i(157746),	-- Graven Keepsake
				i(157747),	-- Illuminated Charm
			}),
		})),
	}),

	-- TODO: Sort this /Darkal
	expansion(EXPANSION.BFA, {
		expansion(EXPANSION.BFA, patch(3,0), {	-- Not loading ingame
			i(173391),	-- Belt of the Black Empire
			i(173151),	-- Boots of the Black Empire
			i(173390),	-- Bracers of the Black Empire
			i(173389),	-- Chestpiece of the Black Empire
			i(174240),	-- Cloth Belt - PH
			i(174239),	-- Cloth Boots - PH
			i(174238),	-- Cloth Bracer - PH
			i(174235),	-- Cloth Chest - PH
			i(174241),	-- Cloth Gloves - PH
			i(173833),	-- Cloth Headdress
			i(173857),	-- Cloth Headdress
			i(173832),	-- Cloth Mantle
			i(173856),	-- Cloth Mantle
			i(174236),	-- Cloth Shoulder - PH
			i(173834),	-- Cloth Wraps
			i(173858),	-- Cloth Wraps
			i(173177),	-- Corrupted Greaves
			i(173178),	-- Corrupted Greaves
			i(173181),	-- Corrupted Greaves
			i(173184),	-- Corrupted Greaves
			i(173185),	-- Corrupted Greaves
			i(173176),	-- Corrupted Smashers
			i(173179),	-- Corrupted Smashers
			i(173182),	-- Corrupted Smashers
			i(173183),	-- Corrupted Smashers
			i(173186),	-- Corrupted Smashers
			i(173388),	-- Gloves of the Black Empire
			i(172978),	-- H Vision Buckle
			i(172986),	-- H Vision Buckle
			i(172994),	-- H Vision Buckle
			i(172972),	-- H Vision Chestplate
			i(172980),	-- H Vision Chestplate
			i(172988),	-- H Vision Chestplate
			i(172974),	-- H Vision Crushers
			i(172982),	-- H Vision Crushers
			i(172990),	-- H Vision Crushers
			i(172976),	-- H Vision Greaves
			i(172984),	-- H Vision Greaves
			i(172992),	-- H Vision Greaves
			i(172975),	-- H Vision Headguard
			i(172983),	-- H Vision Headguard
			i(172991),	-- H Vision Headguard
			i(172977),	-- H Vision Shoulderplates
			i(172985),	-- H Vision Shoulderplates
			i(172993),	-- H Vision Shoulderplates
			i(172973),	-- H Vision Smashers
			i(172981),	-- H Vision Smashers
			i(172989),	-- H Vision Smashers
			i(172979),	-- H Vision Wristguards
			i(172987),	-- H Vision Wristguards
			i(172995),	-- H Vision Wristguards
			i(173387),	-- Helm of the Black Empire
			i(174248),	-- Leather Belt - PH
			i(174249),	-- Leather Boots - PH
			i(174246),	-- Leather Bracer - PH
			i(174245),	-- Leather Gloves - PH
			i(173830),	-- Leather Headcover
			i(173854),	-- Leather Headcover
			i(174244),	-- Leather Shoulder - PH
			i(173829),	-- Leather Shoulderpads
			i(173853),	-- Leather Shoulderpads
			i(173831),	-- Leather Wraps
			i(173855),	-- Leather Wraps
			i(173152),	-- Leggings of the Black Empire
			i(174242),	-- Lether Chest - PH
			i(174256),	-- Mail Belt - PH
			i(174257),	-- Mail Boots - PH
			i(174254),	-- Mail Bracer - PH
			i(174251),	-- Mail Chest - PH
			i(174253),	-- Mail Gloves - PH
			i(173827),	-- Mail Helm
			i(173851),	-- Mail Helm
			i(174252),	-- Mail Shoulder - PH
			i(173826),	-- Mail Shoulderguards
			i(173850),	-- Mail Shoulderguards
			i(173828),	-- Mail Vest
			i(173852),	-- Mail Vest
			i(174263),	-- Plate Belt - PH
			i(174265),	-- Plate Boots - PH
			i(174262),	-- Plate Bracer - PH
			i(174259),	-- Plate Chest - PH
			i(173825),	-- Plate Chestplate
			i(173849),	-- Plate Chestplate
			i(173824),	-- Plate Faceguard
			i(173848),	-- Plate Faceguard
			i(174261),	-- Plate Gloves - PH
			i(174260),	-- Plate Shoulder - PH
			i(173823),	-- Plate Shoulderplates
			i(173847),	-- Plate Shoulderplates
			i(173860),	-- Ring
			i(173861),	-- Ring
			i(173865),	-- Ring
			i(173866),	-- Ring
			i(174085),	-- Ring
			i(174086),	-- Ring
			i(174087),	-- Ring
			i(174088),	-- Ring
			i(173386),	-- Spaulders of the Black Empire
			i(173862),	-- Trinket
			i(173863),	-- Trinket
			i(173864),	-- Trinket
			i(173867),	-- Trinket
			i(173868),	-- Trinket
			i(173869),	-- Trinket
			i(174266),	-- Trinket - PH
			i(174267),	-- Trinket - PH
		}),
		d(DIFFICULTY.DUNGEON.TIMEWALKING, {
			expansion(EXPANSION.LEGION, patch(2,5), {
				i(150450),	-- Nether Shadow Tunic
				i(150448),	-- Pauldrons of Abyssal Fury
				i(150461),	-- Praetorian's Legguards
				i(150465),	-- Myrmidon's Treads
				i(150449),	-- Wraps of Precise Flight
				i(150457),	-- Bands of the Coming Storm
				i(150502),	-- Touch of Inspiration
				i(150458),	-- Choker of Endless Nightmares
				i(150501),	-- Translucent Spellthread Necklace
				i(150508),	-- Pendant of Titans
				i(150515),	-- Nadina's Pendant of Purity
			}),
		}),
		filter(BACK_F, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(153397),	-- Salt Starched Shawl
				i(154968),	-- Drape of the Golden City
				i(155384),	-- Singed Skycaller Drape
				i(156755),	-- Drape of Revengeance
				i(158500),	-- Salt Starched Shawl
				i(158552),	-- Drape of the Golden City
				i(158582),	-- Wickerweave Cloak
			}),
			expansion(EXPANSION.BFA, patch(1,0), {
				i(165792),	-- Worn Cloak
			}),
			expansion(EXPANSION.BFA, patch(3,0), {
				i(170741),	-- Felsoul Cloak of Destruction
				i(174857),	-- Hidden Cloak
			}),
			n(P8xx, {
				i(165261),	-- Fallback Armor - Cloak
			}),
		}),
		filter(CLOTH, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(156753),	-- Turnabout Gloves
				--
				i(159170),	-- Freehold Handwraps
				i(159183),	-- Foxhollow Cord
				i(159190),	-- Foxhollow Bracelets
				i(159216),	-- Sagehold Sash
				i(159221),	-- Sagehold Slippers
				i(154866),	-- Heartsbane Cord
				i(154867),	-- Heartsbane Crown
				i(154868),	-- Heartsbane Gloves
				i(154869),	-- Heartsbane Leggings
				i(154870),	-- Heartsbane Robes
				i(154871),	-- Heartsbane Sandals
				i(154873),	-- Heartsbane Cuffs
			}),
			expansion(EXPANSION.BFA, patch(2,0), {
				i(167111, {["sourceID"] = 103263 }),	-- QA Combat Test Caster Belt 1
				i(167112, {["sourceID"] = 103264 }),	-- QA Combat Test Caster Robes 1
				i(167113, {["sourceID"] = 103265 }),	-- QA Combat Test Caster Shoulders 1
				i(167114, {["sourceID"] = 103266 }),	-- QA Combat Test Caster Gloves 1
				i(167115, {["sourceID"] = 103267 }),	-- QA Combat Test Caster Helm 1
				i(167116, {["sourceID"] = 103268 }),	-- QA Combat Test Caster Legs 1
				i(167117, {["sourceID"] = 103269 }),	-- QA Combat Test Caster Boots
				i(167118, {["sourceID"] = 103270 }),	-- QA Combat Test Caster Bracer 1
			}),
			expansion(EXPANSION.BFA, patch(3,0), {
				i(170909),	-- Felsoul Cord
				i(170905),	-- Felsoul Cowl
				i(170904),	-- Felsoul Handwraps
				i(170906),	-- Felsoul Leggings
				i(170907),	-- Felsoul Robe
				i(170903),	-- Felsoul Sandals
				i(170908),	-- Felsoul Shoulderpads
				i(170910),	-- Felsoul Wristwraps
			})
		}),
		filter(LEATHER, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(156751),	-- Nightbinder Grips
				--
				i(154849),	-- Crimsonwood Bracers
				i(154852),	-- Crimsonwood Gloves
				i(154856),	-- Crimsonwood Belt
				i(159201),	-- Briarback Treads
				i(159203),	-- Briarback Gloves
				i(159175),	-- Mistfall Belt
				i(159176),	-- Mistfall Bracers
				i(159177),	-- Mistfall Gloves
				i(159178),	-- Mistfall Boots
				i(159180),	-- Mistfall Legguards
				i(159181),	-- Mistfall Spaulders
				i(159182),	-- Mistfall Chainmail
			}),
			expansion(EXPANSION.BFA, patch(1,0), {
				i(166786),	-- Disenchant Test Item
			}),
			n(P8xx, {
				-- They are leather even tho name is cloth
				i(165253),	-- Fallback Armor - Cloth Waist
				i(165254),	-- Fallback Armor - Cloth Feet
				i(165255),	-- Fallback Armor - Cloth Chest
				i(165256),	-- Fallback Armor - Cloth Hand
				i(165257),	-- Fallback Armor - Cloth Head
				i(165258),	-- Fallback Armor - Cloth Legs
				i(165259),	-- Fallback Armor - Cloth Shoulder
				i(165260),	-- Fallback Armor - Cloth Wrist
				i(167103),	-- QA Combat Test Leather Bracer
				i(167104),	-- QA Combat Test Leather Legs
				i(167105),	-- QA Combat Test Leather Belt
				i(167106),	-- QA Combat Test Leather Gloves 1
				i(167107),	-- QA Combat Test Leather Shoulders
				i(167108),	-- QA Combat Test Leather Chest
				i(167109),	-- QA Combat Test Leather Helm
				i(167110),	-- QA Combat Test Leather Boots
			}),
		}),
		filter(MAIL, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(156754),	-- Throatcrusher Grips
				i(154861),	-- Barrowknoll Boots
				i(159208),	-- Eventide Cinch
				i(159210),	-- Eventide Gloves
				i(159213),	-- Eventide Leggings
			}),
			expansion(EXPANSION.BFA, patch(2,0), {
				i(167119, {["sourceID"] = 103271 }),	-- QA Combat Test Mail Helm
				i(167120, {["sourceID"] = 103272 }),	-- QA Combat Test Mail Legs 1
				i(167121, {["sourceID"] = 103273 }),	-- QA Combat Test Mail Bracer 1
				i(167122, {["sourceID"] = 103274 }),	-- QA Combat Test Mail Belt 1
				i(167123, {["sourceID"] = 103275 }),	-- QA Combat Test Mail Chest 1
				i(167124, {["sourceID"] = 103276 }),	-- QA Combat Test Mail Gloves 1
				i(167125, {["sourceID"] = 103277 }),	-- QA Combat Test Mail Shoulders 1
				i(167126, {["sourceID"] = 103278 }),	-- QA Combat Test Mail Boots 1
			}),
		}),
		filter(PLATE, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(164525),	-- Rattling Bone Greatbelt
				i(156752),	-- Skullbreaker Gauntlets
				--
				i(159159),	-- Ashvane Company Gauntlets
				i(159160),	-- Ashvane Company Girdle
				i(159165),	-- Ashvane Company Bracers
				i(154841),	-- Corlain Gauntlets
				i(154846),	-- Corlain Sabatons
				i(159195),	-- Brineworks Greaves
				i(159197),	-- Brineworks Stompers
			}),
			expansion(EXPANSION.BFA, patch(2,0), {
				i(167127, {["sourceID"] = 103279 }),	-- QA Combat Test Plate Bracer 1
				i(167128, {["sourceID"] = 103280 }),	-- QA Combat Test Plate Chest 1
				i(167129, {["sourceID"] = 103281 }),	-- QA Combat Test Plate Shoulders 1
				i(167130, {["sourceID"] = 103282 }),	-- QA Combat Test Plate Gloves 1
				i(167131, {["sourceID"] = 103283 }),	-- QA Combat Test Plate Belt 1
				i(167132, {["sourceID"] = 103284 }),	-- QA Combat Test Plate Helm 1
				i(167133, {["sourceID"] = 103285 }),	-- QA Combat Test Plate Legs 1
				i(167134, {["sourceID"] = 103286 }),	-- QA Combat Test Plate Boots
			}),
		}),
		filter(NECK_F, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(153399),	-- Shaleshell Pendant
				i(154970),	-- Shaleshell Pendant
				i(158502),	-- Shaleshell Pendant
				i(158554),	-- Shaleshell Pendant
			}),
			n(P8xx, {
				i(167137),	-- QA Combat Test Neck 1
			}),
		}),
		filter(FINGER_F, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(158501),	-- Sea Sapphire Band
				i(158519),	-- Beaten Copper Loop
				i(158553),	-- Sea Sapphire Band
				i(158578),	-- Beaten Copper Loop
				i(158659),	-- Zul Adherent's Ring
				i(158660),	-- Fletcher's Band
				i(161288),	-- Honey-Maker's Ring
				i(162454),	-- Band of the Stormy Coast
			}),
			expansion(EXPANSION.BFA, patch(1,0), {
				i(166490),	-- Shiny Ring
			}),
			expansion(EXPANSION.BFA, patch(3,0), {
				i(174470),	-- Bound Sinew Ring \\ Ring - PH
				i(174053),	-- Corrupted Ring - Overconfident
				i(174050),	-- Corrupted Ring - Revel in Violence
				i(174051),	-- Corrupted Ring - Spontaneous Fury
				i(174056),	-- Corrupted Ring - Face the Truth
				i(174054),	-- Corrupted Ring - Last Grasp
				i(174052),	-- Corrupted Ring - Masochistic
				i(174057),	-- Corrupted Ring - Mesmerizing
				i(174055),	-- Corrupted Ring - Thing From Beyond
				i(170738),	-- Felsoul Band of Destruction
				i(174468),	-- Ring of Deceitful Rumors \\ Ring - PH
			}),
			n(P8xx, {
				i(167135),	-- QA Combat Test Ring 1
				i(167136),	-- QA Combat Test Ring 2
				i(173421),	-- Black Empire Signet
			}),
		}),
		filter(TRINKET_F, {
			expansion(EXPANSION.BFA, patch(0,1), {
				i(161223),	-- Agency Manipulator
				i(157761),	-- Barbaric Mindslaver
				i(154983),	-- Bijou of the Golden City
				i(158574),	-- Bijou of the Golden City
				i(157764),	-- Claw of the Crystalline Scorpid
				i(157765),	-- Draught of Souls
				i(154984),	-- Enchanted Devilsaur Claw
				i(158575),	-- Enchanted Devilsaur Claw
				i(157763),	-- Engine of Eradication
				i(161222),	-- Latency Manipulator
				i(153409),	-- Lucky Braid
				i(154980),	-- Lucky Braid
				i(158512),	-- Lucky Braid
				i(158571),	-- Lucky Braid
				i(153413),	-- Privateer's Spyglass
				i(158516),	-- Privateer's Spyglass
				i(153412),	-- Oceanographer's Weather Log
				i(158515),	-- Oceanographer's Weather Log
				i(153411),	-- Petrified Basilisk Scale
				i(154982),	-- Petrified Basilisk Scale
				i(158514),	-- Petrified Basilisk Scale
				i(158573),	-- Petrified Basilisk Scale
				i(161289),	-- Rikal's Shark Teeth
				i(153408),	-- Seabeast Tusk
				i(154979),	-- Seabeast Tusk
				i(158511),	-- Seabeast Tusk
				i(158570),	-- Seabeast Tusk
				i(153410),	-- Shimmering Rune
				i(154981),	-- Shimmering Rune
				i(158513),	-- Shimmering Rune
				i(158572),	-- Shimmering Rune
				i(157766),	-- Vial of Nightmare Fog
			}),
			expansion(EXPANSION.BFA, patch(3,0), {
				i(173426),	-- Black Empire trinkets
				i(170737),	-- Felsoul Idol of Destruction
				i(170740),	-- Felsoul Stone of Destruction
			}),
			n(P8xx, {
				i(167138),	-- QA Combat Test Trinket 1
				i(167139),	-- QA Combat Test Trinket 2
			}),
		}),
		filter(MISC, {
			i(164287),	-- Plundered Dragonrider Spaulders
			i(164288),	-- Plundered Gjalerbron Pauldrons
			i(164286),	-- Plundered Runecaster's Mantle
			i(164285),	-- Plundered Shoveltusk-Hide Shoulders
		}),
	}),

	-- TODO: Sort this /Darkal
	expansion(EXPANSION.SL, {
		filter(BACK_F, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(175768),	-- 9.0 QRP - Ardenweald - Cloak
				i(169822),	-- Flowing Cloak
			}),
			expansion(EXPANSION.SL, patch(0,5), {
				i(167150),	-- QA Combat Test Cloak 1
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188117),	-- Cypher Attunement Cloak
				i(188186),	-- Drape of Dominion
				i(184123),	-- Sinful Gladiator's Cape
				i(184145),	-- Sinful Aspirant's Greatcloak
			}),
		}),
		filter(CLOTH, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(179587),	-- Drust Mask
				i(179588),	-- Drust Mask
				i(179589),	-- Drust Mask
				i(179590),	-- Drust Mask
				i(179591),	-- Drust Mask
				i(179592),	-- Drust Mask
				i(179595),	-- Drust Mask
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188065, {["sourceID"] = 165453}),	-- Choral Bands
				i(188064, {["sourceID"] = 165452}),	-- Choral Belt
				i(188063, {["sourceID"] = 165451}),	-- Choral Breeches
				i(188062, {["sourceID"] = 165450}),	-- Choral Cowl
				i(188061, {["sourceID"] = 165449}),	-- Choral Gloves
				i(188066, {["sourceID"] = 165454}),	-- Choral Mantle
				i(188060, {["sourceID"] = 165448}),	-- Choral Shoes
				i(188059, {["sourceID"] = 165447}),	-- Choral Tunic
				i(188110),	-- Cypher Attunement Chestpiece
				i(188109),	-- Cypher Attunement Feet
				i(188116),	-- Cypher Attunement Hands
				i(188114),	-- Cypher Attunement Head
				i(188115),	-- Cypher Attunement Legs
				i(188107),	-- Cypher Attunement Shoulder
				i(188108),	-- Cypher Attunement Waist
				i(188113),	-- Cypher Attunement Wrist
				i(190244, {["sourceID"] = 168348}),	-- Enlightened Researcher's Boots
				i(190279, {["sourceID"] = 168383}),	-- Enlightened Researcher's Breeches
				i(190248, {["sourceID"] = 168352}),	-- Enlightened Researcher's Cord
				i(190245, {["sourceID"] = 168349}),	-- Enlightened Researcher's Grips
				i(190277, {["sourceID"] = 168381}),	-- Enlightened Researcher's Handwraps
				i(190247, {["sourceID"] = 168351}),	-- Enlightened Researcher's Leggings
				i(190282, {["sourceID"] = 168386}),	-- Enlightened Researcher's Mantle
				i(190246, {["sourceID"] = 168350}),	-- Enlightened Researcher's Mask
				i(190275, {["sourceID"] = 168379}),	-- Enlightened Researcher's Raiment
				i(190280, {["sourceID"] = 168384}),	-- Enlightened Researcher's Sash
				i(190274, {["sourceID"] = 168378}),	-- Enlightened Researcher's Shawl
				i(190276, {["sourceID"] = 168380}),	-- Enlightened Researcher's Treads
				i(190243, {["sourceID"] = 168347}),	-- Enlightened Researcher's Tunic
				i(190278, {["sourceID"] = 168382}),	-- Enlightened Researcher's Visage
				i(190281, {["sourceID"] = 168385}),	-- Enlightened Researcher's Wraps
				i(190249, {["sourceID"] = 168353}),	-- Enlightened Researcher's Wristbands
			}),
			expansion(EXPANSION.SL, patch(2,5), {
				i(191425),	-- Choral Amice
			}),
		}),
		filter(LEATHER, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(178148),	-- 9.0 Dungeon - PH Item
				i(180559),	-- Boots of Endless Betrayal
				i(180561),	-- Bracers of Impossible Choices
				i(180560),	-- Girdle of Nefarious Strategy
				i(180620),	-- High Shadow Councilor's Wrap
				i(180565),	-- Lifeless Buckled Girdle
				i(180618),	-- Stained Maggot Squishers
				i(180567),	-- Stutterstep Treads
				i(178305),	-- unused
				i(180566),	-- Well-Flattened Wristguards
				i(180619),	-- Wristwraps of Broken Trust
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188182),	-- Cavalier Hat of the First Rogue
				i(188180),	-- Cloak of the First Rogue
				i(188181),	-- Gloves of the First Rogue
				i(188183),	-- Pants of the First Rogue
				i(188184),	-- Shoulderpads of the First Rogue
				i(188179),	-- Vest of the First Rogue
				--
				i(188185),	-- Indomitable Vest
				i(188187),	-- Quickfinger Pocketlifters
				i(188189),	-- Shadowwrap Leggings
				i(188190),	-- Shoulderpads of the Primordial
				i(188188),	-- Worldbinder Tricorne
				--
				i(188069, {["sourceID"] = 165457}),	-- Staccato Cap
				i(188069, {["sourceID"] = 168477}),	-- Staccato Cap
				i(188072, {["sourceID"] = 165460}),	-- Staccato Bracers
				i(188072, {["sourceID"] = 168480}),	-- Staccato Bracers
				i(188090, {["sourceID"] = 165478}),	-- Staccato Pauldrons
				i(188090, {["sourceID"] = 168482}),	-- Staccato Pauldrons
				i(188068, {["sourceID"] = 165456}),	-- Staccato Bands
				i(188068, {["sourceID"] = 168476}),	-- Staccato Bands
				i(188089, {["sourceID"] = 165477}),	-- Staccato Jerkin
				i(188089, {["sourceID"] = 168481}),	-- Staccato Jerkin
				i(188071, {["sourceID"] = 165459}),	-- Staccato Waistband
				i(188071, {["sourceID"] = 168479}),	-- Staccato Waistband
				i(188067, {["sourceID"] = 165455}),	-- Staccato Treads
				i(188067, {["sourceID"] = 168475}),	-- Staccato Treads
				i(188070, {["sourceID"] = 165458}),	-- Staccato Pants
				i(188070, {["sourceID"] = 168478}),	-- Staccato Pants
				i(190254, {["sourceID"] = 168358}),	-- Unbound Explorer's Belt
				i(190255, {["sourceID"] = 168359}),	-- Unbound Explorer's Bindings
				i(190288, {["sourceID"] = 168392}),	-- Unbound Explorer's Bracers
				i(190272, {["sourceID"] = 168376}),	-- Unbound Explorer's Chestguard
				i(190285, {["sourceID"] = 168389}),	-- Unbound Explorer's Cowl
				i(190306, {["sourceID"] = 168410}),	-- Unbound Explorer's Epaulets
				i(190250, {["sourceID"] = 168354}),	-- Unbound Explorer's Footpads
				i(190284, {["sourceID"] = 168388}),	-- Unbound Explorer's Gloves
				i(190251, {["sourceID"] = 168355}),	-- Unbound Explorer's Handlers
				i(190252, {["sourceID"] = 168356}),	-- Unbound Explorer's Headgear
				i(190305, {["sourceID"] = 168409}),	-- Unbound Explorer's Jerkin
				i(190253, {["sourceID"] = 168357}),	-- Unbound Explorer's Legguards
				i(190273, {["sourceID"] = 168377}),	-- Unbound Explorer's Shoulderguards
				i(190283, {["sourceID"] = 168387}),	-- Unbound Explorer's Striders
				i(190286, {["sourceID"] = 168390}),	-- Unbound Explorer's Trousers
				i(190287, {["sourceID"] = 168391}),	-- Unbound Explorer's Waistwrap
			}),
		}),
		filter(MAIL, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(183993),	-- Ye Olde Test Chestguard
				i(183994),	-- Ye Olde Test Chestguard
				i(183999),	-- Ye Olde Test Chestguard
				i(184000),	-- Ye Olde Test Chestguard
				i(184003),	-- Ye Olde Test Chestguard
				i(184005),	-- Ye Olde Test Chestguard
				i(184006),	-- Ye Olde Test Chestguard
				i(184008),	-- Ye Olde Test Chestguard
				i(184009),	-- Ye Olde Test Chestguard
				i(184012),	-- Ye Olde Test Chestguard
				i(178304),	-- unused
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188079, {["sourceID"] = 165467}),	-- Anthemic Clasp
				i(188079, {["sourceID"] = 168497}),	-- Anthemic Clasp
				i(188075, {["sourceID"] = 165463}),	-- Anthemic Grasps
				i(188075, {["sourceID"] = 168493}),	-- Anthemic Grasps
				i(188074, {["sourceID"] = 165462}),	-- Anthemic Boots
				i(188074, {["sourceID"] = 168492}),	-- Anthemic Boots
				i(188073, {["sourceID"] = 165461}),	-- Anthemic Hauberk
				i(188073, {["sourceID"] = 168491}),	-- Anthemic Hauberk
				i(188076, {["sourceID"] = 165464}),	-- Anthemic Helm
				i(188076, {["sourceID"] = 168494}),	-- Anthemic Helm
				i(188077, {["sourceID"] = 165465}),	-- Anthemic Cuisses
				i(188077, {["sourceID"] = 168495}),	-- Anthemic Cuisses
				i(188078, {["sourceID"] = 165466}),	-- Anthemic Pauldrons
				i(188078, {["sourceID"] = 168496}),	-- Anthemic Pauldrons
				i(188080, {["sourceID"] = 165468}),	-- Anthemic Wristlinks
				i(188080, {["sourceID"] = 168498}),	-- Anthemic Wristlinks
				i(190295, {["sourceID"] = 168399}),	-- Transcendent Vagabond's Chain
				i(190263, {["sourceID"] = 168367}),	-- Transcendent Vagabond's Clasps
				i(190259, {["sourceID"] = 168363}),	-- Transcendent Vagabond's Coif
				i(190289, {["sourceID"] = 168393}),	-- Transcendent Vagabond's Cuirass
				i(190257, {["sourceID"] = 168361}),	-- Transcendent Vagabond's Footguards
				i(190293, {["sourceID"] = 168397}),	-- Transcendent Vagabond's Greaves
				i(190291, {["sourceID"] = 168395}),	-- Transcendent Vagabond's Grips
				i(190258, {["sourceID"] = 168362}),	-- Transcendent Vagabond's Handguards
				i(190292, {["sourceID"] = 168396}),	-- Transcendent Vagabond's Helm
				i(190260, {["sourceID"] = 168364}),	-- Transcendent Vagabond's Pants
				i(190256, {["sourceID"] = 168360}),	-- Transcendent Vagabond's Scales
				i(190261, {["sourceID"] = 168365}),	-- Transcendent Vagabond's Shoulderpads
				i(190294, {["sourceID"] = 168398}),	-- Transcendent Vagabond's Spaulders
				i(190290, {["sourceID"] = 168394}),	-- Transcendent Vagabond's Striders
				i(190262, {["sourceID"] = 168366}),	-- Transcendent Vagabond's Waistguard
				i(190296, {["sourceID"] = 168400}),	-- Transcendent Vagabond's Wristguards
			}),
		}),
		filter(PLATE, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(180537),	-- Eredar Warcouncil Sabatons
				i(180538),	-- Nathrezim Battle Girdle
				i(170051),	-- Lost Pauldron of Might
				i(170052),	-- Lost Helm of Might
				i(180539),	-- Vambraces of Life's Assurance
				i(180550),	-- Doomwalker Warboots
				i(180551),	-- Flamelicked Girdle
				i(180552),	-- Wristguards of the Dark Keepers
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(190623),	-- [DNT] 9.2 Raid - Sepulcher of the First Ones - Trash Drops - Armor - Plate Shoulders
				i(188082, {["sourceID"] = 165470}),	-- Harmonium Armor
				i(188082, {["sourceID"] = 168458}),	-- Harmonium Armor
				i(188087, {["sourceID"] = 165475}),	-- Harmonium Belt
				i(188087, {["sourceID"] = 168463}),	-- Harmonium Belt
				i(188088, {["sourceID"] = 165476}),	-- Harmonium Binders
				i(188088, {["sourceID"] = 168464}),	-- Harmonium Binders
				i(188083, {["sourceID"] = 165471}),	-- Harmonium Boots
				i(188083, {["sourceID"] = 168459}),	-- Harmonium Boots
				i(188084, {["sourceID"] = 165472}),	-- Harmonium Grips
				i(188084, {["sourceID"] = 168460}),	-- Harmonium Grips
				i(188085, {["sourceID"] = 165473}),	-- Harmonium Pillars
				i(188085, {["sourceID"] = 168461}),	-- Harmonium Pillars
				i(188086, {["sourceID"] = 165474}),	-- Harmonium Shoulderplates
				i(188086, {["sourceID"] = 168462}),	-- Harmonium Shoulderplates
				i(188081, {["sourceID"] = 165469}),	-- Harmonium Visor
				i(188081, {["sourceID"] = 168457}),	-- Harmonium Visor
				i(190298, {["sourceID"] = 168402}),	-- Eternal Warder's Breastplate
				i(190303, {["sourceID"] = 168407}),	-- Eternal Warder's Buckle
				i(190265, {["sourceID"] = 168369}),	-- Eternal Warder's Chestplate
				i(190300, {["sourceID"] = 168404}),	-- Eternal Warder's Crushers
				i(190268, {["sourceID"] = 168372}),	-- Eternal Warder's Cuisses
				i(190297, {["sourceID"] = 168401}),	-- Eternal Warder's Faceplate
				i(190267, {["sourceID"] = 168371}),	-- Eternal Warder's Gauntlets
				i(190270, {["sourceID"] = 168374}),	-- Eternal Warder's Girdle
				i(190299, {["sourceID"] = 168403}),	-- Eternal Warder's Greaves
				i(190301, {["sourceID"] = 168405}),	-- Eternal Warder's Legplates
				i(190269, {["sourceID"] = 168373}),	-- Eternal Warder's Pauldrons
				i(190266, {["sourceID"] = 168370}),	-- Eternal Warder's Sabatons
				i(190302, {["sourceID"] = 168406}),	-- Eternal Warder's Shoulderplates
				i(190271, {["sourceID"] = 168375}),	-- Eternal Warder's Vambraces
				i(190264, {["sourceID"] = 168368}),	-- Eternal Warder's Visor
				i(190304, {["sourceID"] = 168408}),	-- Eternal Warder's Wristplates
			}),
		}),
		n(LEGENDARIES, {
			-- Stupid Things?
			-- LFR
			i(190467, {	-- Girdle of Unity DK
				["bonusID"] = 6896
			}),
			i(190467, {	-- Girdle of Unity DK
				["modID"] = 4
			}),
			i(190465, {	-- Cinch of Unity Druid
				["bonusID"] = 6896
			}),
			i(190465, {	-- Cinch of Unity Druid
				["modID"] = 4
			}),
			i(190472, {	-- Cinch of Unity Monk
				["bonusID"] = 6896
			}),
			i(190472, {	-- Cinch of Unity Monk
				["modID"] = 4
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 6897
			}),
			i(190468, {	-- Cord of Unity Priest
				["modID"] = 4
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 6896
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["modID"] = 4
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["bonusID"] = 6898
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["modID"] = 4
			}),
			i(190469, {	-- Cord of Unity Warlock
				["bonusID"] = 6896
			}),
			i(190469, {	-- Cord of Unity Warlock
				["modID"] = 4
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["bonusID"] = 6896
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["modID"] = 4
			}),
			-- LFR Alt
			i(190470, {	-- Cinch of Unity DH
				["bonusID"] = 6896
			}),
			i(190470, {	-- Cinch of Unity DH
				["modID"] = 4
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["bonusID"] = 6896
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["modID"] = 4
			}),
			i(190474, {	-- Girdle of Unity Pala
				["modID"] = 4
			}),
			i(190474, {	-- Girdle of Unity Pala
				["bonusID"] = 6896
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 6896
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 6896
			}),
			-- Normal
			i(190467, {	-- Girdle of Unity DK
				["bonusID"] = 8107
			}),
			i(190470, {	-- Cinch of Unity DH
				["bonusID"] = 8107
			}),
			i(190465, {	-- Cinch of Unity Druid
				["bonusID"] = 8107
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["bonusID"] = 8107
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 8107
			}),
			i(190472, {	-- Cinch of Unity Monk
				["bonusID"] = 8107
			}),
			i(190474, {	-- Girdle of Unity Pala
				["bonusID"] = 8107
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 8107
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["bonusID"] = 6895
			}),
			i(190469, {	-- Cord of Unity Warlock
				["bonusID"] = 8107
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["bonusID"] = 8107
			}),
			-- Normal Alt
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 8107
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["modID"] = 2
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["bonusID"] = 8107
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["modID"] = 2
			}),
			-- Heroic
			i(190467, {	-- Girdle of Unity DK
				["bonusID"] = 6898
			}),
			i(190467, {	-- Girdle of Unity DK
				["modID"] = 2
			}),
			i(190470, {	-- Cinch of Unity DH
				["bonusID"] = 6898
			}),
			i(190470, {	-- Cinch of Unity DH
				["modID"] = 2
			}),
			i(190465, {	-- Cinch of Unity Druid
				["bonusID"] = 6898
			}),
			i(190465, {	-- Cinch of Unity Druid
				["modID"] = 2
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["bonusID"] = 6898
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["modID"] = 2
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 6898
			}),
			i(190464, {	-- Cord of Unity Mage
				["modID"] = 2
			}),
			i(190472, {	-- Cinch of Unity Monk
				["bonusID"] = 6898
			}),
			i(190472, {	-- Cinch of Unity Monk
				["modID"] = 2
			}),
			i(190474, {	-- Girdle of Unity Pala
				["bonusID"] = 6898
			}),
			i(190474, {	-- Girdle of Unity Pala
				["modID"] = 2
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 6898
			}),
			i(190468, {	-- Cord of Unity Priest
				["modID"] = 2
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 6898
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["modID"] = 6
			}),
			i(190469, {	-- Cord of Unity Warlock
				["bonusID"] = 6898
			}),
			i(190469, {	-- Cord of Unity Warlock
				["modID"] = 2
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["bonusID"] = 6898
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["modID"] = 2
			}),
			-- Mythic
			i(190467, {	-- Girdle of Unity DK
				["bonusID"] = 6897
			}),
			i(190467, {	-- Girdle of Unity DK
				["modID"] = 6
			}),
			i(190470, {	-- Cinch of Unity DH
				["bonusID"] = 6897
			}),
			i(190470, {	-- Cinch of Unity DH
				["modID"] = 6
			}),
			i(190465, {	-- Cinch of Unity Druid
				["bonusID"] = 6897
			}),
			i(190465, {	-- Cinch of Unity Druid
				["modID"] = 6
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["bonusID"] = 6897
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["modID"] = 6
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 6897
			}),
			i(190464, {	-- Cord of Unity Mage
				["modID"] = 6
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 6895
			}),
			i(190464, {	-- Cord of Unity Mage
				["modID"] = 4
			}),
			i(190472, {	-- Cinch of Unity Monk
				["bonusID"] = 6897
			}),
			i(190472, {	-- Cinch of Unity Monk
				["modID"] = 6
			}),
			i(190474, {	-- Girdle of Unity Pala
				["bonusID"] = 6897
			}),
			i(190474, {	-- Girdle of Unity Pala
				["modID"] = 6
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 6897
			}),
			i(190468, {	-- Cord of Unity Priest
				["modID"] = 6
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 6897
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 6898
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["bonusID"] = 6897
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["modID"] = 6
			}),
			i(190469, {	-- Cord of Unity Warlock
				["bonusID"] = 6897
			}),
			i(190469, {	-- Cord of Unity Warlock
				["modID"] = 6
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["bonusID"] = 6897
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["modID"] = 6
			}),
			-- PvP
			i(190467, {	-- Girdle of Unity DK
				["bonusID"] = 6895
			}),
			i(190470, {	-- Cinch of Unity DH
				["bonusID"] = 6895
			}),
			i(190465, {	-- Cinch of Unity Druid
				["bonusID"] = 6895
			}),
			i(190466, {	-- Clasp of Unity Hunter
				["bonusID"] = 6895
			}),
			i(190464, {	-- Cord of Unity Mage
				["bonusID"] = 6895
			}),
			i(190472, {	-- Cinch of Unity Monk
				["bonusID"] = 6895
			}),
			i(190474, {	-- Girdle of Unity Pala
				["bonusID"] = 6895
			}),
			i(190468, {	-- Cord of Unity Priest
				["bonusID"] = 6895
			}),
			i(190471, {	-- Cinch of Unity Rogue
				["bonusID"] = 6895
			}),
			i(190473, {	-- Clasp of Unity Shaman
				["bonusID"] = 6894
			}),
			i(190469, {	-- Cord of Unity Warlock
				["bonusID"] = 6895
			}),
			i(190475, {	-- Girdle of Unity Warrior
				["bonusID"] = 6895
			}),
		}),
		filter(NECK_F, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(177146),	-- Shaleshell Pendant
				i(177165),	-- Shaleshell Pendant
				i(175735),	-- 9.0 QRP - Bastion - Accessory - Neck
			}),
			expansion(EXPANSION.SL, patch(1,0), {
				i(185943),	-- Lost Adventurer's Medallion
				i(186633),	-- Mawrat Mongrel's Collar
				i(186983),	-- Attendant's Chain
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188111),	-- Cypher Attunement Neck
			}),
		}),
		filter(FINGER_F, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(175717),	-- Inquisitor's Signet
				i(177145),	-- Sea Sapphire Band
				i(177153),	-- Beaten Copper Loop
				i(177164),	-- Sea Sapphire Band
				i(177167),	-- Beaten Copper Loop
				i(175705),	-- 9.0 QRP - Bastion - Accessory - Ring D
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188112),	-- Cypher Attunement Ring
			}),
		}),
		filter(TRINKET_F, {
			expansion(EXPANSION.SL, patch(0,1), {
				i(175726),	-- Primalist's Kelpling
				i(175727),	-- Elder's Stormseed
				i(177147),	-- Seabeast Tusk
				i(177148),	-- Lucky Braid
				i(177149),	-- Shimmering Rune
				i(177150),	-- Petrified Basilisk Scale
				i(177151),	-- Oceanographer's Weather Log
				i(177152),	-- Privateer's Spyglass
				i(177154),	-- Seabeast Tusk
				i(177155),	-- Shimmering Rune
				i(177156),	-- Petrified Basilisk Scale
				i(177157),	-- Bijou of the Golden City
				i(177158),	-- Enchanted Devilsaur Claw
				i(177166),	-- Lucky Braid
				i(175720),	-- 9.0 QRP - Bastion - Accessory - Trinket
				i(175721),	-- 9.0 QRP - Bastion - Accessory - Trinket
				i(177814),	-- 9.0 Zone Uncommon - Revendreth - Accessory - Trinket
				i(179341),	-- Critterbomb Contraption
				i(181332),	-- Sinstone Kernel
			}),
			expansion(EXPANSION.SL, patch(0,5), {
				i(184873),	-- Soul Igniter (Test)
			}),
			expansion(EXPANSION.SL, patch(2,0), {
				i(188105),	-- [PH] Copy Fine Razorwing Quill
				i(188057),	-- [PH] Copy Harmonic Crowd Breaker
				i(188052),	-- [PH] Copy Iron Maiden's Toolkit
				i(188092),	-- [PH] Copy Korthian Anima Vessel
				i(188058),	-- [PH] Copy Tome of Insight
				i(188103),	-- [PH] Copy Vault Attendant's Cape
				--
				i(190622),	-- [DNT] 9.2 Raid - Sepulcher of the First Ones - World Boss - Accessory - Trinket - Omni
			}),
		}),
		n(SEASON_SINFUL, {
			expansion(EXPANSION.SL, patch(0,1), {
				n(FEET, {
					i(180650),	-- Shadowlandy Gladiator's Stompers
				}),
				filter(TRINKET_F, {
					i(174380),	-- Gladiator's Concordance
				}),
			}),
		}),
		-- TODO:
		--- 9.0.1 ---
		i(178768),	-- Binds of the Unwitting Servant
		i(178766),	-- Deranged Surgeon's Band
		i(178776),	-- Ossified Oozebound Waistguard
		i(183788),	-- Placeholder Twisting Corridors Cosmetic
		i(178758),	-- Plague Experimenter's Gloves
	}),

	expansion(EXPANSION.DF, {
		-- 10.0.0
		expansion(EXPANSION.DF, patch(0,0,1), bubbleDown({ ["timeline"] = { CREATED_10_0_0 } }, {
			filter(CLOTH, {
				i(189683),	-- 10.0 Dungeon Template - Cloth - Feet
				i(189641),	-- 10.0 Dungeon Template - Cloth - Hand
				i(189643),	-- 10.0 Dungeon Template - Cloth - Head
				i(189647),	-- 10.0 Dungeon Template - Cloth - Legs
				i(189635),	-- 10.0 Dungeon Template - Cloth - Robe
				i(189652),	-- 10.0 Dungeon Template - Cloth - Shoulder
				i(189655),	-- 10.0 Dungeon Template - Cloth - Waist
				i(189658),	-- 10.0 Dungeon Template - Cloth - Wrist
				i(189012),	-- 10.0 End Game Template <Descriptor> Cord
				i(189010),	-- 10.0 End Game Template <Descriptor> Cowl
				i(189013),	-- 10.0 End Game Template <Descriptor> Cuffs
				i(189009),	-- 10.0 End Game Template <Descriptor> Handwraps
				i(189011),	-- 10.0 End Game Template <Descriptor> Leggings
				i(189008),	-- 10.0 End Game Template <Descriptor> Sandals
				i(189038),	-- 10.0 End Game Template <Descriptor> Shoulderpads
				i(189007),	-- 10.0 End Game Template <Descriptor> Vestment
				i(189116),	-- 10.0 QRP Template <Descriptor> Feet
				i(189070),	-- 10.0 QRP Template <Descriptor> Gloves
				i(189072),	-- 10.0 QRP Template <Descriptor> Hood
				i(189076),	-- 10.0 QRP Template <Descriptor> Leggings
				i(189081),	-- 10.0 QRP Template <Descriptor> Mantle
				i(189084),	-- 10.0 QRP Template <Descriptor> Sash
				i(189064),	-- 10.0 QRP Template <Descriptor> Vestments
				i(189087),	-- 10.0 QRP Template <Descriptor> Wraps
				i(189595),	-- 10.0 Raid Template - Cloth - Chest
				i(189592),	-- 10.0 Raid Template - Cloth - Feet
				i(189617),	-- 10.0 Raid Template - Cloth - Hand
				i(189616),	-- 10.0 Raid Template - Cloth - Head
				i(189610),	-- 10.0 Raid Template - Cloth - Legs
				i(189615),	-- 10.0 Raid Template - Cloth - Shoulder
				i(189606),	-- 10.0 Raid Template - Cloth - Waist
				i(189602),	-- 10.0 Raid Template - Cloth - Wrist
				i(188965),	-- 10.0 Zone Uncommon Template <Descriptor> Cord
				i(188962),	-- 10.0 Zone Uncommon Template <Descriptor> Handwraps
				i(188963),	-- 10.0 Zone Uncommon Template <Descriptor> Hood
				i(188964),	-- 10.0 Zone Uncommon Template <Descriptor> Leggings
				i(188961),	-- 10.0 Zone Uncommon Template <Descriptor> Sandals
				i(188991),	-- 10.0 Zone Uncommon Template <Descriptor> Shoulderpads
				i(188960),	-- 10.0 Zone Uncommon Template <Descriptor> Vestment
				i(188966),	-- 10.0 Zone Uncommon Template <Descriptor> Wristwraps
			}),
			filter(LEATHER, {
				i(189638),	-- 10.0 Dungeon Template - Leather - Chest
				i(189685),	-- 10.0 Dungeon Template - Leather - Feet
				i(189639),	-- 10.0 Dungeon Template - Leather - Hand
				i(189645),	-- 10.0 Dungeon Template - Leather - Head
				i(189649),	-- 10.0 Dungeon Template - Leather - Legs
				i(189650),	-- 10.0 Dungeon Template - Leather - Shoulder
				i(189657),	-- 10.0 Dungeon Template - Leather - Waist
				i(189661),	-- 10.0 Dungeon Template - Leather - Wrist
				i(189017),	-- 10.0 End Game Template <Descriptor> Breeches
				i(189019),	-- 10.0 End Game Template <Descriptor> Bindings
				i(189037),	-- 10.0 End Game Template <Descriptor> Epaulets
				i(189015),	-- 10.0 End Game Template <Descriptor> Grips
				i(189016),	-- 10.0 End Game Template <Descriptor> Helm
				i(189018),	-- 10.0 End Game Template <Descriptor> Sash
				i(189036),	-- 10.0 End Game Template <Descriptor> Vest
				i(189014),	-- 10.0 End Game Template <Descriptor> Waders
				i(189086),	-- 10.0 QRP Template <Descriptor> Belt
				i(189090),	-- 10.0 QRP Template <Descriptor> Bindings
				i(189118),	-- 10.0 QRP Template <Descriptor> Boots
				i(189078),	-- 10.0 QRP Template <Descriptor> Breeches
				i(189117),	-- 10.0 QRP Template <Descriptor> Cover
				i(189068),	-- 10.0 QRP Template <Descriptor> Gloves
				i(189074),	-- 10.0 QRP Template <Descriptor> Hood
				i(189079),	-- 10.0 QRP Template <Descriptor> Spaulders
				i(189067),	-- 10.0 QRP Template <Descriptor> Vest
				i(189609),	-- 10.0 Raid Template - Leather - Chest
				i(189621),	-- 10.0 Raid Template - Leather - Feet
				i(189608),	-- 10.0 Raid Template - Leather - Hand
				i(189593),	-- 10.0 Raid Template - Leather - Head
				i(189599),	-- 10.0 Raid Template - Leather - Legs
				i(189620),	-- 10.0 Raid Template - Leather - Shoulder
				i(189601),	-- 10.0 Raid Template - Leather - Waist
				i(189614),	-- 10.0 Raid Template - Leather - Wrist
				i(188971),	-- 10.0 Zone Uncommon Template <Descriptor> Belt
				i(188972),	-- 10.0 Zone Uncommon Template <Descriptor> Bindings
				i(188970),	-- 10.0 Zone Uncommon Template <Descriptor> Breeches
				i(188990),	-- 10.0 Zone Uncommon Template <Descriptor> Epaulets
				i(188968),	-- 10.0 Zone Uncommon Template <Descriptor> Grips
				i(188969),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
				i(188967),	-- 10.0 Zone Uncommon Template <Descriptor> Treads
				i(188989),	-- 10.0 Zone Uncommon Template <Descriptor> Tunic
			}),
			filter(PLATE, {
				i(189636),	-- 10.0 Dungeon Template - Plate - Chest
				i(189634),	-- 10.0 Dungeon Template - Plate - Feet
				i(189640),	-- 10.0 Dungeon Template - Plate - Hand
				i(189682),	-- 10.0 Dungeon Template - Plate - Head
				i(189646),	-- 10.0 Dungeon Template - Plate - Legs
				i(189651),	-- 10.0 Dungeon Template - Plate - Shoulder
				i(189654),	-- 10.0 Dungeon Template - Plate - Waist
				i(189659),	-- 10.0 Dungeon Template - Plate - Wrist
				i(189035),	-- 10.0 End Game Template <Descriptor> Armplates
				i(189029),	-- 10.0 End Game Template <Descriptor> Breastplate
				i(189031),	-- 10.0 End Game Template <Descriptor> Gauntlets
				i(189034),	-- 10.0 End Game Template <Descriptor> Girdle
				i(189028),	-- 10.0 End Game Template <Descriptor> Helm
				i(189032),	-- 10.0 End Game Template <Descriptor> Legguards
				i(189033),	-- 10.0 End Game Template <Descriptor> Mantle
				i(189030),	-- 10.0 End Game Template <Descriptor> Sabatons
				i(189065),	-- 10.0 QRP Template <Descriptor> ChestPlate
				i(189115),	-- 10.0 QRP Template <Descriptor> Helm
				i(189069),	-- 10.0 QRP Template <Descriptor> Gauntlets
				i(189083),	-- 10.0 QRP Template <Descriptor> Girdle
				i(189075),	-- 10.0 QRP Template <Descriptor> Legguards
				i(189063),	-- 10.0 QRP Template <Descriptor> Sabatons
				i(189080),	-- 10.0 QRP Template <Descriptor> Spaulders
				i(189092),	-- 10.0 QRP Template <Descriptor> Ring
				i(189088),	-- 10.0 QRP Template <Descriptor> Vambraces
				i(197916),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Belt
				i(197912),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Chest
				i(197915),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Feet
				i(197914),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Hands
				i(197913),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Helm
				i(197911),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Legs
				i(197910),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Shoulder
				i(197917),	-- 10.0 Raid - Vault of the Incarnates - DK Set - Armor - Plate Wrist
				i(189619),	-- 10.0 Raid Template - Plate - Feet
				i(189594),	-- 10.0 Raid Template - Plate - Hand
				i(189603),	-- 10.0 Raid Template - Plate - Head
				i(189596),	-- 10.0 Raid Template - Plate - Chest
				i(189598),	-- 10.0 Raid Template - Plate - Legs
				i(189600),	-- 10.0 Raid Template - Plate - Shoulder
				i(189613),	-- 10.0 Raid Template - Plate - Wrist
				i(189618),	-- 10.0 Raid Template - Plate - Waist
				i(188988),	-- 10.0 Zone Uncommon Template <Descriptor> Armplates
				i(188982),	-- 10.0 Zone Uncommon Template <Descriptor> Breastplate
				i(188987),	-- 10.0 Zone Uncommon Template <Descriptor> Cincture
				i(188983),	-- 10.0 Zone Uncommon Template <Descriptor> Footguards
				i(188984),	-- 10.0 Zone Uncommon Template <Descriptor> Gauntlets
				i(188981),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
				i(188985),	-- 10.0 Zone Uncommon Template <Descriptor> Legguards
				i(188986),	-- 10.0 Zone Uncommon Template <Descriptor> Pauldrons
				i(200737),	-- Pauldrons of Infinite Darkness
				i(200230),	-- Terrorclaw Shoulderplates
				i(195467),	-- zzOld(DNT) Test Belt of Molten Metallic Awesomeness
			}),
			filter(MAIL, {
				i(189637),	-- 10.0 Dungeon Template - Mail - Chest
				i(189684),	-- 10.0 Dungeon Template - Mail - Feet
				i(189642),	-- 10.0 Dungeon Template - Mail - Hand
				i(189644),	-- 10.0 Dungeon Template - Mail - Head
				i(189648),	-- 10.0 Dungeon Template - Mail - Legs
				i(189653),	-- 10.0 Dungeon Template - Mail - Shoulder
				i(189656),	-- 10.0 Dungeon Template - Mail - Waist
				i(189660),	-- 10.0 Dungeon Template - Mail - Wrist
				i(189060),	-- 10.0 End Game Template <Descriptor> Belt
				i(189027),	-- 10.0 End Game Template <Descriptor> Bracers
				i(189020),	-- 10.0 End Game Template <Descriptor> Chainmail
				i(189026),	-- 10.0 End Game Template <Descriptor> Cinch
				i(189023),	-- 10.0 End Game Template <Descriptor> Coif
				i(189024),	-- 10.0 End Game Template <Descriptor> Greaves
				i(189022),	-- 10.0 End Game Template <Descriptor> Grips
				i(189025),	-- 10.0 End Game Template <Descriptor> Shoulderguards
				i(189021),	-- 10.0 End Game Template <Descriptor> Striders
				i(189085),	-- 10.0 QRP Template <Descriptor> Belt
				i(189089),	-- 10.0 QRP Template <Descriptor> Bracers
				i(189071),	-- 10.0 QRP Template <Descriptor> Grips
				i(189066),	-- 10.0 QRP Template <Descriptor> Hauberk
				i(189073),	-- 10.0 QRP Template <Descriptor> Helm
				i(189077),	-- 10.0 QRP Template <Descriptor> Leggings
				i(189082),	-- 10.0 QRP Template <Descriptor> Monnion
				i(189597),	-- 10.0 Raid Template - Mail - Chest
				i(189607),	-- 10.0 Raid Template - Mail - Feet
				i(189612),	-- 10.0 Raid Template - Mail - Hand
				i(189604),	-- 10.0 Raid Template - Mail - Head
				i(189611),	-- 10.0 Raid Template - Mail - Legs
				i(189605),	-- 10.0 Raid Template - Mail - Shoulder
				i(189590),	-- 10.0 Raid Template - Mail - Waist
				i(189591),	-- 10.0 Raid Template - Mail - Wrist
				i(188980),	-- 10.0 Zone Uncommon Template <Descriptor> Bracers
				i(188973),	-- 10.0 Zone Uncommon Template <Descriptor> Chainmail
				i(188979),	-- 10.0 Zone Uncommon Template <Descriptor> Cinch
				i(188975),	-- 10.0 Zone Uncommon Template <Descriptor> Gloves
				i(188976),	-- 10.0 Zone Uncommon Template <Descriptor> Helm
				i(188977),	-- 10.0 Zone Uncommon Template <Descriptor> Leggings
				i(188978),	-- 10.0 Zone Uncommon Template <Descriptor> Shoulderguards
				i(188974),	-- 10.0 Zone Uncommon Template <Descriptor> Striders
				i(191942),	-- Belloc's Hat [Added SpellIDs regarding this.. Belloc also lost his hat... In Waking Shores 371683 (Wear Belloc's Hat [DNT]), 371665 (Sit on Belloc's Head [DNT]) /Brage ]
				i(191934),	-- TEMP Event Stream TEMP - No Buckle Fleshscale Belt
			}),
			filter(BACK_F, {
				i(189669),	-- 10.0 Dungeon Template - Generic - Cloak
				i(189061),	-- 10.0 End Game Template <Descriptor> Shawl
				i(192038),	-- 10.0 PH Dragonscale Expedition Shawl
				i(189102),	-- 10.0 QRP Template <Descriptor> Cloak
				i(189101),	-- 10.0 QRP Template <Descriptor> Shroud
				i(189622),	-- 10.0 Raid Template - Generic - Cloak
				i(189006),	-- 10.0 Zone Uncommon Template <Descriptor> Cape
				i(200710),	-- Ashjra'kamas
				i(200708),	-- Polymorphic Cloak of Absorption
			}),
			filter(FINGER_F, {
				i(189662),	-- 10.0 Dungeon Template - Generic - Finger
				i(189049),	-- 10.0 End Game Template <Descriptor> Band
				i(189059),	-- 10.0 End Game Template <Descriptor> Band
				i(189050),	-- 10.0 End Game Template <Descriptor> Signet
				i(192026),	-- 10.0 PH Dragonscale Expedition Band
				i(192036),	-- 10.0 PH Dragonscale Expedition Band
				i(192027),	-- 10.0 PH Dragonscale Expedition Signet
				i(189093),	-- 10.0 QRP Template <Descriptor> Band
				i(189091),	-- 10.0 QRP Template <Descriptor> Signet
				i(189094),	-- 10.0 QRP Template <Descriptor> Signet
				i(189119),	-- 10.0 QRP Template <Descriptor> Signet
				i(189623),	-- 10.0 Raid Template - Generic - Finger
				i(189003),	-- 10.0 Zone Uncommon Template <Descriptor> Band
				i(189002),	-- 10.0 Zone Uncommon Template <Descriptor> Signet
				i(200280),	-- Decaying Ghostly Band
				i(197933),	-- Lutokk's Wedding Ring
			}),
			filter(NECK_F, {
				i(189667),	-- 10.0 Dungeon Template - Generic - Neck
				i(189062),	-- 10.0 End Game Template <Descriptor> Choker
				i(192039),	-- 10.0 PH Dragonscale Expedition Choker
				i(189099),	-- 10.0 QRP Template <Descriptor> Pendant
				i(189100),	-- 10.0 QRP Template <Descriptor> Pendant
				i(189624),	-- 10.0 Raid Template - Generic - Neck
				i(189005),	-- 10.0 Zone Uncommon Template <Descriptor> Necklace
			}),
			filter(TABARDS, {
				i(191271),	-- Black Smith's Tabard
				i(194676),	-- Emboldened Dracthyr's Tabard [Lol they changed model]
			}),
			filter(TRINKET_F, {
				i(189666),	-- 10.0 Dungeon Template - Generic - Trinket
				i(189058),	-- 10.0 End Game Template <Descriptor> Trinket
				i(192035),	-- 10.0 PH Dragonscale Expedition Trinket
				i(189096),	-- 10.0 QRP Template <Descriptor> Trinket
				i(189632),	-- 10.0 Raid Template - AGI - Trinket
				i(189633),	-- 10.0 Raid Template - INT - Trinket
				i(189628),	-- 10.0 Raid Template - Healer - Trinket
				i(189627),	-- 10.0 Raid Template - Int DPS - Trinket
				i(189625),	-- 10.0 Raid Template - Melee DPS - Trinket
				i(189630),	-- 10.0 Raid Template - Omni  - Trinket
				i(189631),	-- 10.0 Raid Template - Physical DPS - Trinket
				i(189629),	-- 10.0 Raid Template - STR - Trinket
				i(189626),	-- 10.0 Raid Template - Tank - Trinket
				i(189004),	-- 10.0 Zone Uncommon Template <Descriptor> Trinket
				i(194398),	-- Crumbling Watcher's Stone (NYI)
				i(200679),	-- Essence of Somnikus's Shade
				i(193058),	-- Sherwood - Test Trinket
				i(198392),	-- zzOldDarkmoon Binding: Awakened Chill
				i(198391),	-- zzOldDarkmoon Binding: Inferno
				i(198393),	-- zzOldDarkmoon Binding: Refreshing Dance
				i(198394),	-- zzOldDarkmoon Binding: Watcher
				i(198433),	-- zzOldDarkmoon Deckbox: Awakened Chill
				i(198434),	-- zzOldDarkmoon Deckbox: Refreshing Dance
				i(198435),	-- zzOldDarkmoon Deckbox: Watcher
			}),
			n(WAIST, {
				i(198681),	-- Luke Test Belt [DNT]
			}),
		})),

		-- 10.0.7
		expansion(EXPANSION.DF, patch(0,7), bubbleDown({ ["timeline"] = { CREATED_10_0_7 } }, {
			filter(TRINKET_F, {
				i(204192),	-- Ascendancy
				i(203680),	-- Totem Toss
			}),
		})),

		-- 10.1.0
		expansion(EXPANSION.DF, patch(1,0), bubbleDown({ ["timeline"] = { CREATED_10_1_0 } }, {
			header(HEADERS.LFGDungeon, 2403, {	-- Aberrus, the Shadowed Crucible
				filter(CLOAKS, {
					i(204087),	-- 10.1 Cloak Test Item
					i(202648),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - CLOAK 2
					i(202666),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - CLOAK 3
				}),
				filter(CLOTH, {
					i(202651),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Cloth - FEET 2
					i(202653),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Cloth - WRIST 2
				}),
				filter(FINGER_F, {
					i(202649),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - FINGER 2
					i(202665),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - FINGER 3
				}),
				filter(LEATHER, {
					i(202654),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - FEET 2
					i(202581),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - WRIST 1
					i(202656),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Leather - WRIST 2
				}),
				filter(MAIL, {
					i(202657),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Mail - FEET 2
					i(202658),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Mail - WAIST 2
				}),
				filter(NECK_F, {
					i(202650),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - NECK 2
					i(202664),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - NECK 3
				}),
				filter(PLATE, {
					i(202660),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - FEET 2
					i(202661),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - WAIST 2
					i(202662),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Armor - Plate - WRIST 2
				}),
				filter(TRINKET_F, {
					i(202609),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - Trinket - INT
					i(202611),	-- 10.1 Raid - Black Dragon Labs - Boss <#> - <Boss Name> - Accessory - Trinket - Physical DPS
					i(204064),	-- PH 10.1 Raid - Black Dragon Labs - Boss 9 - Sarkareth - Accessory - Trinket - Omni
					i(202608),	-- Power-Draining Spire [This was a Trinket /Braghe]
				}),
			}),
		})),

		-- 10.1.5
		expansion(EXPANSION.DF, patch(1,5), bubbleDown({ ["timeline"] = { CREATED_10_1_5 } }, {
			filter(FINGER_F, {
				i(208988),	-- Band of the Petrified Pumpkin [Hallow's End]
				i(208991),	-- Seal of Ghoulish Glee [Hallow's End]
				i(208990),	-- The Horseman's Ring [Hallow's End]
				i(208989),	-- Wicked Witch's Signet [Hallow's End]
			}),
			filter(PLATE, {
				i(208986, {["sourceID"] = 190168}),	-- The Horseman's Horrific Hood [Hallow's End]
				i(209023, {["sourceID"] = 190172}),	-- The Horseman's Horrific Hood [Hallow's End]
			}),
		})),

		-- 10.2.0
		expansion(EXPANSION.DF, patch(2,0), bubbleDown({ ["timeline"] = { CREATED_10_2_0 } }, {
			header(HEADERS.LFGDungeon, 2502, {	-- Amirdrassil, the Dream's Hope
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(207124),	-- Blooming Redeemer's Sash
						i(207118),	-- Elder's Volcanic Wrap
						i(210204),	-- Fading Flame Wristbands
						i(207123),	-- Lifewoven Slippers
						i(207116),	-- Lost Scholar's Timely Hat
						i(207122),	-- Lost Scholar's Belted Treads
						i(208431),	-- Lost Scholar's Temporal Shoulderdials
						i(207117),	-- Requiem Rootmantle
						i(207115),	-- Twisting Shadow Claws
						i(207119),	-- Urctos's Hibernal Dial
						i(207121),	-- Vesture of the Smoldering Serpent
						i(208430),	-- Whispering Fanged Cord
					}),
					filter(LEATHER, {
						i(207131),	-- Bloody Dragonhide Belt
						i(207135),	-- Eternal Sentinel's Cord
						i(207130),	-- Flamewaker's Grips
						i(207132),	-- Frenzied Incarnate Legwraps
						i(207128),	-- Primordial Serpent's Bindings
						i(207133),	-- Silent Tormentor's Hood
						i(207127),	-- Strigine Epaulets
						i(207134),	-- Tasseted Emberwalkers
						i(207126),	-- Twisted Blossom Stompers
						i(208432),	-- Vengeful Bladebeak Girdle
						i(210206),	-- Verdant Sanctuary Bands
						i(208420),	-- Visage of the Devouring Flame
					}),
					filter(MAIL, {
						i(207138),	-- Aerwynn's Ritual Sarong
						i(207142),	-- Ancient Haubark
						i(207145),	-- Boots of the Molten Hoard
						i(207139),	-- Cleats of the Savage Claw
						i(207140),	-- Drakestalker's Trophy Pauldrons
						i(207137),	-- Flameseer's Winged Grasps
						i(207144),	-- Forlorn Leaf Clasp
						i(207146),	-- Jeweled Sash of the Viper
						i(208428),	-- Mantle of Slumbering Sands
						i(208434),	-- Sentinel's Gilded Poulaines
						i(207141),	-- Snake Eater's Cowl
						i(207143),	-- Twisted Flamecuffs
						i(210203),	-- Wellspring Wristlets
					}),
					filter(PLATE, {
						i(207150),	-- Agonizing Manacles
						i(207154),	-- Carapace of the Unbending Flame
						i(207155),	-- Eldermoss Gauntlets
						i(207151),	-- Emerald Guardian's Casque
						i(207156),	-- Fused Obsidian Sabatons
						i(208427),	-- Insurgent Flame Warboots
						i(207148),	-- Lavaforged Sollerets
						i(208426),	-- Mask of the Unbidden Grim
						i(207149),	-- Phlegethic Girdle
						i(207153),	-- Seared Ironwood Greaves
						i(207157),	-- Smoldering Chevalier's Greatbelt
						i(210205),	-- Vigilant Protector's Bracers
						i(207152),	-- Volcanic Spelunker's Vents
					}),
					filter(CLOAKS, {
						i(207160),	-- Inflammable Drapeleaf
						i(207161),	-- Mantle of Blazing Sacrifice
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(207124),	-- Blooming Redeemer's Sash
						i(207118),	-- Elder's Volcanic Wrap
						i(210204),	-- Fading Flame Wristbands
						i(207123),	-- Lifewoven Slippers
						i(207116),	-- Lost Scholar's Timely Hat
						i(207122),	-- Lost Scholar's Belted Treads
						i(208431),	-- Lost Scholar's Temporal Shoulderdials
						i(207117),	-- Requiem Rootmantle
						i(207115),	-- Twisting Shadow Claws
						i(207119),	-- Urctos's Hibernal Dial
						i(207121),	-- Vesture of the Smoldering Serpent
						i(208430),	-- Whispering Fanged Cord
					}),
					filter(LEATHER, {
						i(207131),	-- Bloody Dragonhide Belt
						i(207135),	-- Eternal Sentinel's Cord
						i(207130),	-- Flamewaker's Grips
						i(207132),	-- Frenzied Incarnate Legwraps
						i(207128),	-- Primordial Serpent's Bindings
						i(207133),	-- Silent Tormentor's Hood
						i(207127),	-- Strigine Epaulets
						i(207134),	-- Tasseted Emberwalkers
						i(207126),	-- Twisted Blossom Stompers
						i(208432),	-- Vengeful Bladebeak Girdle
						i(210206),	-- Verdant Sanctuary Bands
						i(208420),	-- Visage of the Devouring Flame
					}),
					filter(MAIL, {
						i(207138),	-- Aerwynn's Ritual Sarong
						i(207142),	-- Ancient Haubark
						i(207145),	-- Boots of the Molten Hoard
						i(207139),	-- Cleats of the Savage Claw
						i(207140),	-- Drakestalker's Trophy Pauldrons
						i(207137),	-- Flameseer's Winged Grasps
						i(207144),	-- Forlorn Leaf Clasp
						i(207146),	-- Jeweled Sash of the Viper
						i(208428),	-- Mantle of Slumbering Sands
						i(208434),	-- Sentinel's Gilded Poulaines
						i(207141),	-- Snake Eater's Cowl
						i(207143),	-- Twisted Flamecuffs
						i(210203),	-- Wellspring Wristlets
					}),
					filter(PLATE, {
						i(207150),	-- Agonizing Manacles
						i(207154),	-- Carapace of the Unbending Flame
						i(207155),	-- Eldermoss Gauntlets
						i(207151),	-- Emerald Guardian's Casque
						i(207156),	-- Fused Obsidian Sabatons
						i(208427),	-- Insurgent Flame Warboots
						i(207148),	-- Lavaforged Sollerets
						i(208426),	-- Mask of the Unbidden Grim
						i(207149),	-- Phlegethic Girdle
						i(207153),	-- Seared Ironwood Greaves
						i(207157),	-- Smoldering Chevalier's Greatbelt
						i(210205),	-- Vigilant Protector's Bracers
						i(207152),	-- Volcanic Spelunker's Vents
					}),
					filter(CLOAKS, {
						i(207160),	-- Inflammable Drapeleaf
						i(207161),	-- Mantle of Blazing Sacrifice
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(207124),	-- Blooming Redeemer's Sash
						i(207118),	-- Elder's Volcanic Wrap
						i(210204),	-- Fading Flame Wristbands
						i(207123),	-- Lifewoven Slippers
						i(207116),	-- Lost Scholar's Timely Hat
						i(207122),	-- Lost Scholar's Belted Treads
						i(208431),	-- Lost Scholar's Temporal Shoulderdials
						i(207117),	-- Requiem Rootmantle
						i(207115),	-- Twisting Shadow Claws
						i(207119),	-- Urctos's Hibernal Dial
						i(207121),	-- Vesture of the Smoldering Serpent
						i(208430),	-- Whispering Fanged Cord
					}),
					filter(LEATHER, {
						i(207131),	-- Bloody Dragonhide Belt
						i(207135),	-- Eternal Sentinel's Cord
						i(207130),	-- Flamewaker's Grips
						i(207132),	-- Frenzied Incarnate Legwraps
						i(207128),	-- Primordial Serpent's Bindings
						i(207133),	-- Silent Tormentor's Hood
						i(207127),	-- Strigine Epaulets
						i(207134),	-- Tasseted Emberwalkers
						i(207126),	-- Twisted Blossom Stompers
						i(208432),	-- Vengeful Bladebeak Girdle
						i(210206),	-- Verdant Sanctuary Bands
						i(208420),	-- Visage of the Devouring Flame
					}),
					filter(MAIL, {
						i(207138),	-- Aerwynn's Ritual Sarong
						i(207142),	-- Ancient Haubark
						i(207145),	-- Boots of the Molten Hoard
						i(207139),	-- Cleats of the Savage Claw
						i(207140),	-- Drakestalker's Trophy Pauldrons
						i(207137),	-- Flameseer's Winged Grasps
						i(207144),	-- Forlorn Leaf Clasp
						i(207146),	-- Jeweled Sash of the Viper
						i(208428),	-- Mantle of Slumbering Sands
						i(208434),	-- Sentinel's Gilded Poulaines
						i(207141),	-- Snake Eater's Cowl
						i(207143),	-- Twisted Flamecuffs
						i(210203),	-- Wellspring Wristlets
					}),
					filter(PLATE, {
						i(207150),	-- Agonizing Manacles
						i(207154),	-- Carapace of the Unbending Flame
						i(207155),	-- Eldermoss Gauntlets
						i(207151),	-- Emerald Guardian's Casque
						i(207156),	-- Fused Obsidian Sabatons
						i(208427),	-- Insurgent Flame Warboots
						i(207148),	-- Lavaforged Sollerets
						i(208426),	-- Mask of the Unbidden Grim
						i(207149),	-- Phlegethic Girdle
						i(207153),	-- Seared Ironwood Greaves
						i(207157),	-- Smoldering Chevalier's Greatbelt
						i(210205),	-- Vigilant Protector's Bracers
						i(207152),	-- Volcanic Spelunker's Vents
					}),
					filter(CLOAKS, {
						i(207160),	-- Inflammable Drapeleaf
						i(207161),	-- Mantle of Blazing Sacrifice
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(207124),	-- Blooming Redeemer's Sash
						i(207118),	-- Elder's Volcanic Wrap
						i(210204),	-- Fading Flame Wristbands
						i(207123),	-- Lifewoven Slippers
						i(207116),	-- Lost Scholar's Timely Hat
						i(207122),	-- Lost Scholar's Belted Treads
						i(208431),	-- Lost Scholar's Temporal Shoulderdials
						i(207117),	-- Requiem Rootmantle
						i(207115),	-- Twisting Shadow Claws
						i(207119),	-- Urctos's Hibernal Dial
						i(207121),	-- Vesture of the Smoldering Serpent
						i(208430),	-- Whispering Fanged Cord
					}),
					filter(LEATHER, {
						i(207131),	-- Bloody Dragonhide Belt
						i(207135),	-- Eternal Sentinel's Cord
						i(207130),	-- Flamewaker's Grips
						i(207132),	-- Frenzied Incarnate Legwraps
						i(207128),	-- Primordial Serpent's Bindings
						i(207133),	-- Silent Tormentor's Hood
						i(207127),	-- Strigine Epaulets
						i(207134),	-- Tasseted Emberwalkers
						i(207126),	-- Twisted Blossom Stompers
						i(208432),	-- Vengeful Bladebeak Girdle
						i(210206),	-- Verdant Sanctuary Bands
						i(208420),	-- Visage of the Devouring Flame
					}),
					filter(MAIL, {
						i(207138),	-- Aerwynn's Ritual Sarong
						i(207142),	-- Ancient Haubark
						i(207145),	-- Boots of the Molten Hoard
						i(207139),	-- Cleats of the Savage Claw
						i(207140),	-- Drakestalker's Trophy Pauldrons
						i(207137),	-- Flameseer's Winged Grasps
						i(207144),	-- Forlorn Leaf Clasp
						i(207146),	-- Jeweled Sash of the Viper
						i(208428),	-- Mantle of Slumbering Sands
						i(208434),	-- Sentinel's Gilded Poulaines
						i(207141),	-- Snake Eater's Cowl
						i(207143),	-- Twisted Flamecuffs
						i(210203),	-- Wellspring Wristlets
					}),
					filter(PLATE, {
						i(207150),	-- Agonizing Manacles
						i(207154),	-- Carapace of the Unbending Flame
						i(207155),	-- Eldermoss Gauntlets
						i(207151),	-- Emerald Guardian's Casque
						i(207156),	-- Fused Obsidian Sabatons
						i(208427),	-- Insurgent Flame Warboots
						i(207148),	-- Lavaforged Sollerets
						i(208426),	-- Mask of the Unbidden Grim
						i(207149),	-- Phlegethic Girdle
						i(207153),	-- Seared Ironwood Greaves
						i(207157),	-- Smoldering Chevalier's Greatbelt
						i(210205),	-- Vigilant Protector's Bracers
						i(207152),	-- Volcanic Spelunker's Vents
					}),
					filter(CLOAKS, {
						i(207160),	-- Inflammable Drapeleaf
						i(207161),	-- Mantle of Blazing Sacrifice
					}),
				})),
				filter(CLOTH, {
					i(210544, {["bonusID"] = 6897, ["modID"] = 0 }),	-- Whispering Fanged Cord
					i(210545, {["bonusID"] = 6897, ["modID"] = 0 }),	-- Lost Scholar's Temporal Shoulderdials
				}),
				filter(LEATHER, {
					i(210540, {["bonusID"] = 6897, ["modID"] = 0 }),	-- Visage of the Devouring Flame

					-- These currenty don't want to take their sourceID, leaving it here uncommented
					--i(207129, {["sourceID"] = 192432 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192433 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192434 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192435 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192436 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192437 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192438 }),	-- Robes of the Ashen Grove
					--i(207129, {["sourceID"] = 192439 }),	-- Robes of the Ashen Grove
				}),
				filter(PLATE, {
					i(210541, {["bonusID"] = 6897, ["modID"] = 0 }),	-- Mask of the Unbidden Grim
				}),
			}),
			n(SEASON_VERDANT, {
				n(PVP_GLADIATOR, {
					filter(MAIL, {
						i(207142, { ["bonusID"] = 6898 }),	-- Ancient Haubark
						i(207142, { ["bonusID"] = 7479 }),	-- Ancient Haubark
						i(207137, { ["bonusID"] = 6898 }),	-- Flameseer's Winged Grasps
						i(207137, { ["bonusID"] = 7479 }),	-- Flameseer's Winged Grasps
						i(208428, { ["bonusID"] = 6898 }),	-- Mantle of Slumbering Sands
						i(208428, { ["bonusID"] = 7479 }),	-- Mantle of Slumbering Sands
						i(207143, { ["bonusID"] = 6898 }),	-- Twisted Flamecuffs
						i(207143, { ["bonusID"] = 7479 }),	-- Twisted Flamecuffs
					}),
					filter(PLATE, {
						i(208427, { ["bonusID"] = 6898 }),	-- Insurgent Flame Warboots
						i(208427, { ["bonusID"] = 7479 }),	-- Insurgent Flame Warboots
						i(208426, { ["bonusID"] = 6898 }),	-- Mask of the Unbidden Grim
						i(208426, { ["bonusID"] = 7479 }),	-- Mask of the Unbidden Grim
					}),
				}),
				n(PVP_ELITE, {
					filter(MAIL, {
						i(207142, { ["bonusID"] = 7532 }),	-- Ancient Haubark
						i(207142, { ["bonusID"] = 8107 }),	-- Ancient Haubark
						i(207137, { ["bonusID"] = 7532 }),	-- Flameseer's Winged Grasps
						i(207137, { ["bonusID"] = 8107 }),	-- Flameseer's Winged Grasps
						i(208428, { ["bonusID"] = 7532 }),	-- Mantle of Slumbering Sands
						i(208428, { ["bonusID"] = 8107 }),	-- Mantle of Slumbering Sands
						i(207143, { ["bonusID"] = 7532 }),	-- Twisted Flamecuffs
						i(207143, { ["bonusID"] = 8107 }),	-- Twisted Flamecuffs
					}),
					filter(PLATE, {
						i(208427, { ["bonusID"] = 7532 }),	-- Insurgent Flame Warboots
						i(208427, { ["bonusID"] = 8107 }),	-- Insurgent Flame Warboots
						i(208426, { ["bonusID"] = 7532 }),	-- Mask of the Unbidden Grim
						i(208426, { ["bonusID"] = 8107 }),	-- Mask of the Unbidden Grim
					}),
				}),
			}),
			filter(CLOTH, {
				i(208979),	-- 10.2 Monster - Merithra - Robe
				i(208982),	-- 10.2 Monster - Merithra - Waist
				i(208981),	-- 10.2 Monster - Merithra - Wrist
			}),
			filter(TRINKET_F, {
				i(211132),	-- Omni Storm
			}),
		})),

		-- 10.2.5
		expansion(EXPANSION.DF, patch(2,5), bubbleDown({ ["timeline"] = { CREATED_10_2_5 } }, {
			filter(CLOAKS, {
				i(210525),	-- Timerunner's Cloak
			}),
			filter(CLOTH, {
				i(210528),	-- Timerunning Belt
				i(210529),	-- Timerunning Boots
				i(210527),	-- Timerunning Bracers
				i(210524),	-- Timerunning Cover
				i(210532),	-- Timerunning Gloves
				i(210530),	-- Timerunning Pants
				i(210531),	-- Timerunning Shoulderpads
			}),
			filter(FINGER_F, {
				i(210257),	-- Bamboo Band
				i(210256),	-- Cloud-Rider Seal
			}),
			filter(LEATHER, {
				i(210279),	-- Thunderpaw Spaulders
			}),
			filter(NECK_F, {
				i(208489),	-- Ankh of Reincarnation
				i(210262),	-- Divine Prayer Beads
				i(211346),	-- Gigantifier
				i(211345),	-- Knick of Time
				i(211344),	-- Miniaturizer
				i(211347),	-- Scarab's Shell
			}),
			filter(TRINKET_F, {
				i(208556),	-- Flicker Blossom
				i(208553),	-- Timerunner's Chalice
			}),
		})),

		-- 10.2.7
		expansion(EXPANSION.DF, patch(2,7), bubbleDown({ ["timeline"] = { CREATED_10_2_7 } }, {
			filter(CLOTH, {
				i(225064),	-- Breezebinder's Shirt
				i(220970),	-- Mindbender Shirt
				i(220971),	-- Mistwalker's Shirt
				i(220969),	-- Passionsilk Vests
				i(215074, {["sourceID"] = 196710 }),	-- REUSE
				i(215085, {["sourceID"] = 196721 }),	-- REUSE
				i(215092, {["sourceID"] = 196728 }),	-- REUSE
				i(220968),	-- Scrollkeeper Shirt
				i(220972),	-- Shaded Wood Vest
				i(220967),	-- Spirit-Waker Shirt
			}),
			filter(LEATHER, {
				i(220985),	-- Vest of the Shattered Vale
			}),
			filter(PLATE, {
				i(219904),	-- Romuul's Controllable Shoulderplate
			}),
		})),
	}),
	expansion(EXPANSION.TWW, {
		-- 11.0.0
		expansion(EXPANSION.TWW, patch(0,0,1), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_0 } }, {
			-- TODO: Sort this /Darkal
			i(211620),	-- 11.0 Dungeon Template - Plate - Feet
			i(211621),	-- 11.0 Dungeon Template - Cloth - Robe
			i(211622),	-- 11.0 Dungeon Template - Plate - Chest
			i(211623),	-- 11.0 Dungeon Template - Mail - Chest
			i(211624),	-- 11.0 Dungeon Template - Leather - Chest
			i(211625),	-- 11.0 Dungeon Template - Leather - Hand
			i(211626),	-- 11.0 Dungeon Template - Plate - Hand
			i(211627),	-- 11.0 Dungeon Template - Cloth - Hand
			i(211628),	-- 11.0 Dungeon Template - Mail - Hand
			i(211629),	-- 11.0 Dungeon Template - Cloth - Head
			i(211630),	-- 11.0 Dungeon Template - Mail - Head
			i(211631),	-- 11.0 Dungeon Template - Leather - Head
			i(211632),	-- 11.0 Dungeon Template - Plate - Legs
			i(211633),	-- 11.0 Dungeon Template - Cloth - Legs
			i(211634),	-- 11.0 Dungeon Template - Mail - Legs
			i(211635),	-- 11.0 Dungeon Template - Leather - Legs
			i(211636),	-- 11.0 Dungeon Template - Leather - Shoulder
			i(211637),	-- 11.0 Dungeon Template - Plate - Shoulder
			i(211638),	-- 11.0 Dungeon Template - Cloth - Shoulder
			i(211639),	-- 11.0 Dungeon Template - Mail - Shoulder
			i(211640),	-- 11.0 Dungeon Template - Plate - Waist
			i(211641),	-- 11.0 Dungeon Template - Cloth - Waist
			i(211642),	-- 11.0 Dungeon Template - Mail - Waist
			i(211643),	-- 11.0 Dungeon Template - Leather - Waist
			i(211644),	-- 11.0 Dungeon Template - Cloth - Wrist
			i(211645),	-- 11.0 Dungeon Template - Plate - Wrist
			i(211646),	-- 11.0 Dungeon Template - Mail - Wrist
			i(211647),	-- 11.0 Dungeon Template - Leather - Wrist
			i(211648),	-- 11.0 Dungeon Template - Generic - Finger
			i(211649),	-- 11.0 Dungeon Template - Generic - Trinket
			i(211650),	-- 11.0 Dungeon Template - Generic - Neck
			i(211651),	-- 11.0 Dungeon Template - Generic - Cloak
			i(211663),	-- 11.0 Dungeon Template - Plate - Head
			i(211664),	-- 11.0 Dungeon Template - Cloth - Feet
			i(211665),	-- 11.0 Dungeon Template - Mail - Feet
			i(211666),	-- 11.0 Dungeon Template - Leather - Feet
			i(211889),	-- 11.0 Poor Item Template - <Descriptor> Leather Cinch
			i(211890),	-- 11.0 Poor Item Template - <Descriptor> Leather Footwraps
			i(211891),	-- 11.0 Poor Item Template - <Descriptor> Leather Handwraps
			i(211892),	-- 11.0 Poor Item Template - <Descriptor> Leather Guise
			i(211893),	-- 11.0 Poor Item Template - <Descriptor> Leather Leggings
			i(211894),	-- 11.0 Poor Item Template - <Descriptor> Leather Shoulderpads
			i(211895),	-- 11.0 Poor Item Template - <Descriptor> Leather Jerkin
			i(211896),	-- 11.0 Poor Item Template - <Descriptor> Leather Bracers
			i(211897),	-- 11.0 Poor Item Template - <Descriptor> Plate Vambraces
			i(211898),	-- 11.0 Poor Item Template - <Descriptor> Plate Warboots
			i(211899),	-- 11.0 Poor Item Template - <Descriptor> Plate Shoulderguards
			i(211900),	-- 11.0 Poor Item Template - <Descriptor> Plate Legguards
			i(211901),	-- 11.0 Poor Item Template - <Descriptor> Plate Faceguard
			i(211902),	-- 11.0 Poor Item Template - <Descriptor> Plate Gloves
			i(211903),	-- 11.0 Poor Item Template - <Descriptor> Plate Chestpiece
			i(211904),	-- 11.0 Poor Item Template - <Descriptor> Plate Greatbelt
			i(211905),	-- 11.0 Poor Item Template - <Descriptor> Cloth Armbands
			i(211906),	-- 11.0 Poor Item Template - <Descriptor> Cloth Vestments
			i(211907),	-- 11.0 Poor Item Template - <Descriptor> Cloth Footpads
			i(211908),	-- 11.0 Poor Item Template - <Descriptor> Cloth Legwraps
			i(211909),	-- 11.0 Poor Item Template - <Descriptor> Cloth Grips
			i(211910),	-- 11.0 Poor Item Template - <Descriptor> Cloth Hood
			i(211911),	-- 11.0 Poor Item Template - <Descriptor> Cloth Cincture
			i(211912),	-- 11.0 Poor Item Template - <Descriptor> Cloth Mantle
			i(211913),	-- 11.0 Poor Item Template - <Descriptor> Chain Armguards
			i(211914),	-- 11.0 Poor Item Template - <Descriptor> Chain Spaulders
			i(211915),	-- 11.0 Poor Item Template - <Descriptor> Chain Footguards
			i(211916),	-- 11.0 Poor Item Template - <Descriptor> Chain Breeches
			i(211917),	-- 11.0 Poor Item Template - <Descriptor> Chain Vest
			i(211918),	-- 11.0 Poor Item Template - <Descriptor> Chain Gauntlets
			i(211919),	-- 11.0 Poor Item Template - <Descriptor> Chain Helm
			i(211920),	-- 11.0 Poor Item Template - <Descriptor> Chain Clasp
			i(212098),	-- 11.0 End Game Template <Descriptor> Vestment
			i(212099),	-- 11.0 End Game Template <Descriptor> Sandals
			i(212100),	-- 11.0 End Game Template <Descriptor> Handwraps
			i(212101),	-- 11.0 End Game Template <Descriptor> Cowl
			i(212102),	-- 11.0 End Game Template <Descriptor> Leggings
			i(212103),	-- 11.0 End Game Template <Descriptor> Cord
			i(212104),	-- 11.0 End Game Template <Descriptor> Cuffs
			i(212105),	-- 11.0 End Game Template <Descriptor> Waders
			i(212106),	-- 11.0 End Game Template <Descriptor> Grips
			i(212108),	-- 11.0 End Game Template <Descriptor> Breeches
			i(212109),	-- 11.0 End Game Template <Descriptor> Sash
			i(212110),	-- 11.0 End Game Template <Descriptor> Bindings
			i(212111),	-- 11.0 End Game Template <Descriptor> Chainmail
			i(212112),	-- 11.0 End Game Template <Descriptor> Striders
			i(212113),	-- 11.0 End Game Template <Descriptor> Grips
			i(212114),	-- 11.0 End Game Template <Descriptor> Coif
			i(212115),	-- 11.0 End Game Template <Descriptor> Greaves
			i(212116),	-- 11.0 End Game Template <Descriptor> Shoulderguards
			i(212117),	-- 11.0 End Game Template <Descriptor> Cinch
			i(212118),	-- 11.0 End Game Template <Descriptor> Bracers
			i(212119),	-- 11.0 End Game Template <Descriptor> Helm
			i(212120),	-- 11.0 End Game Template <Descriptor> Breastplate
			i(212121),	-- 11.0 End Game Template <Descriptor> Sabatons
			i(212122),	-- 11.0 End Game Template <Descriptor> Gauntlets
			i(212123),	-- 11.0 End Game Template <Descriptor> Legguards
			i(212124),	-- 11.0 End Game Template <Descriptor> Mantle
			i(212125),	-- 11.0 End Game Template <Descriptor> Girdle
			i(212126),	-- 11.0 End Game Template <Descriptor> Armplates
			i(212127),	-- 11.0 End Game Template <Descriptor> Vest
			i(212128),	-- 11.0 End Game Template <Descriptor> Epaulets
			i(212129),	-- 11.0 End Game Template <Descriptor> Shoulderpads
			i(212140),	-- 11.0 End Game Template <Descriptor> Band
			i(212141),	-- 11.0 End Game Template <Descriptor> Signet
			i(212148),	-- 11.0 End Game Template <Descriptor> Trinket
			i(212149),	-- 11.0 End Game Template <Descriptor> Band
			i(212150),	-- 11.0 End Game Template <Descriptor> Belt
			i(212151),	-- 11.0 End Game Template <Descriptor> Shawl
			i(212152),	-- 11.0 End Game Template <Descriptor> Choker
			i(206211),	-- Onyx Annulet
			i(210220),	-- Resilient Mask
			i(213099),	-- Test Warbound until equipped (DNT)
			i(215173),	-- Serum of Unconstrained Senses
			i(215175),	-- Belt of Vials
			i(216657),	-- Test Item C
			i(218132),	-- 11.0 Zone Uncommon Template - Vestment
			i(218133),	-- 11.0 Zone Uncommon Template - Sandals
			i(218134),	-- 11.0 Zone Uncommon Template - Handwraps
			i(218135),	-- 11.0 Zone Uncommon Template - Cowl
			i(218136),	-- 11.0 Zone Uncommon Template - Leggings
			i(218137),	-- 11.0 Zone Uncommon Template - Cord
			i(218138),	-- 11.0 Zone Uncommon Template - Cuffs
			i(218139),	-- 11.0 Zone Uncommon Template - Waders
			i(218140),	-- 11.0 Zone Uncommon Template - Grips
			i(218141),	-- 11.0 Zone Uncommon Template - Helm
			i(218142),	-- 11.0 Zone Uncommon Template - Breeches
			i(218143),	-- 11.0 Zone Uncommon Template - Sash
			i(218144),	-- 11.0 Zone Uncommon Template - Bindings
			i(218145),	-- 11.0 Zone Uncommon Template - Chainmail
			i(218146),	-- 11.0 Zone Uncommon Template - Striders
			i(218147),	-- 11.0 Zone Uncommon Template - Grips
			i(218148),	-- 11.0 Zone Uncommon Template - Coif
			i(218149),	-- 11.0 Zone Uncommon Template - Greaves
			i(218150),	-- 11.0 Zone Uncommon Template - Shoulderguards
			i(218151),	-- 11.0 Zone Uncommon Template - Cinch
			i(218152),	-- 11.0 Zone Uncommon Template - Bracers
			i(218153),	-- 11.0 Zone Uncommon Template - Helm
			i(218154),	-- 11.0 Zone Uncommon Template - Breastplate
			i(218155),	-- 11.0 Zone Uncommon Template - Sabatons
			i(218156),	-- 11.0 Zone Uncommon Template - Gauntlets
			i(218157),	-- 11.0 Zone Uncommon Template - Legguards
			i(218158),	-- 11.0 Zone Uncommon Template - Mantle
			i(218159),	-- 11.0 Zone Uncommon Template - Girdle
			i(218160),	-- 11.0 Zone Uncommon Template - Armplates
			i(218161),	-- 11.0 Zone Uncommon Template - Vest
			i(218162),	-- 11.0 Zone Uncommon Template - Epaulets
			i(218163),	-- 11.0 Zone Uncommon Template - Shoulderpads
			i(218174),	-- 11.0 Zone Uncommon Template - Band
			i(218175),	-- 11.0 Zone Uncommon Template - Signet
			i(218182),	-- 11.0 Zone Uncommon Template - Trinket
			i(218183),	-- 11.0 Zone Uncommon Template - Band
			i(218184),	-- 11.0 Zone Uncommon Template - Belt
			i(218185),	-- 11.0 Zone Uncommon Template - Shawl
			i(218186),	-- 11.0 Zone Uncommon Template - Choker
			i(218189),	-- 11.0 Leveling Quest Template - Vestment
			i(218190),	-- 11.0 Leveling Quest Template - Sandals
			i(218191),	-- 11.0 Leveling Quest Template - Handwraps
			i(218192),	-- 11.0 Leveling Quest Template - Cowl
			i(218193),	-- 11.0 Leveling Quest Template - Leggings
			i(218194),	-- 11.0 Leveling Quest Template - Cord
			i(218195),	-- 11.0 Leveling Quest Template - Cuffs
			i(218196),	-- 11.0 Leveling Quest Template - Waders
			i(218197),	-- 11.0 Leveling Quest Template - Grips
			i(218198),	-- 11.0 Leveling Quest Template - Helm
			i(218199),	-- 11.0 Leveling Quest Template - Breeches
			i(218200),	-- 11.0 Leveling Quest Template - Sash
			i(218201),	-- 11.0 Leveling Quest Template - Bindings
			i(218202),	-- 11.0 Leveling Quest Template - Chainmail
			i(218203),	-- 11.0 Leveling Quest Template - Striders
			i(218204),	-- 11.0 Leveling Quest Template - Grips
			i(218205),	-- 11.0 Leveling Quest Template - Coif
			i(218206),	-- 11.0 Leveling Quest Template - Greaves
			i(218207),	-- 11.0 Leveling Quest Template - Shoulderguards
			i(218208),	-- 11.0 Leveling Quest Template - Cinch
			i(218209),	-- 11.0 Leveling Quest Template - Bracers
			i(218210),	-- 11.0 Leveling Quest Template - Helm
			i(218211),	-- 11.0 Leveling Quest Template - Breastplate
			i(218212),	-- 11.0 Leveling Quest Template - Sabatons
			i(218213),	-- 11.0 Leveling Quest Template - Gauntlets
			i(218214),	-- 11.0 Leveling Quest Template - Legguards
			i(218215),	-- 11.0 Leveling Quest Template - Mantle
			i(218216),	-- 11.0 Leveling Quest Template - Girdle
			i(218217),	-- 11.0 Leveling Quest Template - Armplates
			i(218218),	-- 11.0 Leveling Quest Template - Vest
			i(218219),	-- 11.0 Leveling Quest Template - Epaulets
			i(218220),	-- 11.0 Leveling Quest Template - Shoulderpads
			i(218231),	-- 11.0 Leveling Quest Template - Band
			i(218232),	-- 11.0 Leveling Quest Template - Signet
			i(218239),	-- 11.0 Leveling Quest Template - Trinket
			i(218240),	-- 11.0 Leveling Quest Template - Band
			i(218241),	-- 11.0 Leveling Quest Template - Belt
			i(218242),	-- 11.0 Leveling Quest Template - Shawl
			i(218243),	-- 11.0 Leveling Quest Template - Choker
			i(224084),	-- Tentacled Hat
			i(224085),	-- Hightfish Cap
			i(224086),	-- Nat's Drinking Hat
			i(224087),	-- Boots of the Bay
			i(224088),	-- Worn Fishing Hat
			i(224089),	-- Nat Pagle's Extreme Anglin' Boots
			i(224090),	-- Weather-Beaten Fishing Hat
			i(224091),	-- Nat's Hat
			i(224092),	-- Darkmoon Fishing Cap
			i(224093),	-- Anglin' Art's Stompers
			i(224094),	-- Anglin' Art's Waders
			i(224095),	-- Anglin' Art's Treads
			i(224096),	-- Anglin' Art's Sandals
			i(224097),	-- Lucky Fishing Hat
			i(224170, {["sourceID"] = 220286}),	-- Wildercloth Fishing Cap
			i(224171, {["sourceID"] = 220287}),	-- Master's Wildercloth Fishing Cap
			i(225509),	-- [PH] Armor Vestment
			i(225510),	-- [PH] Armor Sandals
			i(225511),	-- [PH] Armor Handwraps
			i(225512),	-- [PH] Armor Cowl
			i(225517),	-- [PH] Armor Grips
			i(225518),	-- [PH] Armor Helm
			i(225519),	-- [PH] Armor Breeches
			i(225522),	-- [PH] Armor Chainmail
			i(225525),	-- [PH] Armor Coif
			i(225527),	-- [PH] Armor Shoulderguards
			i(225528),	-- [PH] Armor Cinch
			i(225531),	-- [PH] Armor Breastplate
			i(225532),	-- [PH] Armor Sabatons
			i(225534),	-- [PH] Armor Legguards
			i(225536),	-- [PH] Armor Girdle
			i(225539),	-- [PH] Armor Epaulets
			i(219942),	-- 11.0 Stalwart's Sandals
			i(221066),	-- Template - Accessory - Finger
			i(221505),	-- [DNT] Rare Cloth - Robe
			i(223944),	-- [PH] Infested Fungal Wristwraps
			i(223945),	-- [PH] Perchfather's Cuffs
			i(223946),	-- [PH] Storm Bindings
			i(223947),	-- [PH] Steam-Powered Wristwatch
			i(207390),	-- Delve Ring
			-- Mail Belt
			i(223458),	-- [PH] 11.0 - Belt
			i(226165),	-- Unseemly Agate Choker

			header(HEADERS.LFGDungeon, 2645, {	-- Nerub-ar Palace
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(212430),	-- Shattered Eye Cincture
						i(212434),	-- Voidspoken Sarong
						i(225582),	-- Assimilated Eggshell Slippers
						i(225584),	-- Skeinspinner's Duplicitous Cuffs
						i(212439),	-- Beacons of the False Dawn
						i(212441),	-- Bindings of the Starless Night
						i(225585),	-- Acrid Ascendant's Sash
						i(225720),	-- Web Acolyte's Hood
						i(225721),	-- Prime Slime Slippers
						i(212416),	-- Cosmic-Tinged Treads
						i(212419),	-- Bile-Soaked Harness
						i(212426),	-- Crunchy Intruder's Wristband
						i(212440),	-- Devotee's Discarded Headdress
					}),
					filter(LEATHER, {
						i(212417),	-- Beyond's Dark Visage
						i(212445),	-- Chitin-Spiked Jackboots
						i(225583),	-- Behemoth's Eroded Cinch
						i(212432),	-- Thousand-Scar Impalers
						i(212433),	-- Omnivore's Venomous Camouflage
						i(225722),	-- Adorned Lynxborne Pauldrons
						i(225723),	-- Venom Stalker's Strap
						i(212423),	-- Rebel's Drained Marrowslacks
						i(212444),	-- Frame of Felled Insurgents
						i(225588),	-- Sanguine Experiment's Bandages
						i(212425),	-- Devourer's Taut Innards
						i(212438),	-- Polluted Spectre's Wraps
						i(225591),	-- Fleeting Massacre Footpads
					}),
					filter(MAIL, {
						i(212421),	-- Goresplattered Membrane
						i(212429),	-- Whispering Voidlight Spaulders
						i(225580),	-- Accelerated Ascension Coil
						i(225586),	-- Rasha'nan's Grotesque Talons
						i(212414),	-- Lost Watcher's Remains
						i(212428),	-- Final Meal's Horns
						i(212431),	-- Undermoth-Lined Footpads
						i(225581),	-- Ky'veza's Covert Clasps
						i(225724),	-- Shrillwing Hunter's Prey
						i(212415),	-- Throne Defender's Bangles
						i(212436),	-- Clutches of Paranoia
						i(225725),	-- Lurking Marauder's Binding
					}),
					filter(PLATE, {
						i(225737, {["bonusID"] = 0, ["modID"] = 4, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Feet
						i(225736, {["bonusID"] = 0, ["modID"] = 4, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Head
						i(225726, {["bonusID"] = 0, ["modID"] = 4, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Waist
						i(212418),	-- Black Blood Injectors
						i(212437),	-- Ravaged Lamplighter's Manacles
						i(212442),	-- Greatbelt of the Hungerer
						i(225590),	-- Boots of the Black Bulwark
						i(225744),	-- Heritage Militia's Stompers
						i(212422),	-- Bloodbound Horror's Legplates
						i(212427),	-- Visor of the Ascended Captain
						i(212443),	-- Shattershell Greaves
						i(225587),	-- Devoted Offering's Irons
						i(212420),	-- Queensguard Carapace
						i(212424),	-- Seasoned Earthen Boulderplates
						i(225589),	-- Nether Bounty's Greatbelt
						i(225727),	-- Captured Earthen's Ironhorns
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(212430),	-- Shattered Eye Cincture
						i(212434),	-- Voidspoken Sarong
						i(225582),	-- Assimilated Eggshell Slippers
						i(225584),	-- Skeinspinner's Duplicitous Cuffs
						i(212439),	-- Beacons of the False Dawn
						i(212441),	-- Bindings of the Starless Night
						i(225585),	-- Acrid Ascendant's Sash
						i(225720),	-- Web Acolyte's Hood
						i(225721),	-- Prime Slime Slippers
						i(212416),	-- Cosmic-Tinged Treads
						i(212419),	-- Bile-Soaked Harness
						i(212426),	-- Crunchy Intruder's Wristband
						i(212440),	-- Devotee's Discarded Headdress
					}),
					filter(LEATHER, {
						i(212417),	-- Beyond's Dark Visage
						i(212445),	-- Chitin-Spiked Jackboots
						i(225583),	-- Behemoth's Eroded Cinch
						i(212432),	-- Thousand-Scar Impalers
						i(212433),	-- Omnivore's Venomous Camouflage
						i(225722),	-- Adorned Lynxborne Pauldrons
						i(225723),	-- Venom Stalker's Strap
						i(212423),	-- Rebel's Drained Marrowslacks
						i(212444),	-- Frame of Felled Insurgents
						i(225588),	-- Sanguine Experiment's Bandages
						i(212425),	-- Devourer's Taut Innards
						i(212438),	-- Polluted Spectre's Wraps
						i(225591),	-- Fleeting Massacre Footpads
					}),
					filter(MAIL, {
						i(212421),	-- Goresplattered Membrane
						i(212429),	-- Whispering Voidlight Spaulders
						i(225580),	-- Accelerated Ascension Coil
						i(225586),	-- Rasha'nan's Grotesque Talons
						i(212414),	-- Lost Watcher's Remains
						i(212428),	-- Final Meal's Horns
						i(212431),	-- Undermoth-Lined Footpads
						i(225581),	-- Ky'veza's Covert Clasps
						i(225724),	-- Shrillwing Hunter's Prey
						i(212415),	-- Throne Defender's Bangles
						i(212436),	-- Clutches of Paranoia
						i(225725),	-- Lurking Marauder's Binding
					}),
					filter(PLATE, {
						i(225737, {["bonusID"] = 0, ["ItemAppearanceModifierID"] = 0}),	-- 11.0 Raid Template - Plate - Feet
						i(225736, {["bonusID"] = 0, ["ItemAppearanceModifierID"] = 0}),	-- 11.0 Raid Template - Plate - Head
						i(225726, {["bonusID"] = 0, ["ItemAppearanceModifierID"] = 0}),	-- 11.0 Raid Template - Plate - Waist
						i(212418),	-- Black Blood Injectors
						i(212437),	-- Ravaged Lamplighter's Manacles
						i(212442),	-- Greatbelt of the Hungerer
						i(225590),	-- Boots of the Black Bulwark
						i(225744),	-- Heritage Militia's Stompers
						i(212422),	-- Bloodbound Horror's Legplates
						i(212427),	-- Visor of the Ascended Captain
						i(212443),	-- Shattershell Greaves
						i(225587),	-- Devoted Offering's Irons
						i(212420),	-- Queensguard Carapace
						i(212424),	-- Seasoned Earthen Boulderplates
						i(225589),	-- Nether Bounty's Greatbelt
						i(225727),	-- Captured Earthen's Ironhorns
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(212430),	-- Shattered Eye Cincture
						i(212434),	-- Voidspoken Sarong
						i(225582),	-- Assimilated Eggshell Slippers
						i(225584),	-- Skeinspinner's Duplicitous Cuffs
						i(212439),	-- Beacons of the False Dawn
						i(212441),	-- Bindings of the Starless Night
						i(225585),	-- Acrid Ascendant's Sash
						i(225720),	-- Web Acolyte's Hood
						i(225721),	-- Prime Slime Slippers
						i(212416),	-- Cosmic-Tinged Treads
						i(212419),	-- Bile-Soaked Harness
						i(212426),	-- Crunchy Intruder's Wristband
						i(212440),	-- Devotee's Discarded Headdress
					}),
					filter(LEATHER, {
						i(212417),	-- Beyond's Dark Visage
						i(212445),	-- Chitin-Spiked Jackboots
						i(225583),	-- Behemoth's Eroded Cinch
						i(212432),	-- Thousand-Scar Impalers
						i(212433),	-- Omnivore's Venomous Camouflage
						i(225722),	-- Adorned Lynxborne Pauldrons
						i(225723),	-- Venom Stalker's Strap
						i(212423),	-- Rebel's Drained Marrowslacks
						i(212444),	-- Frame of Felled Insurgents
						i(225588),	-- Sanguine Experiment's Bandages
						i(212425),	-- Devourer's Taut Innards
						i(212438),	-- Polluted Spectre's Wraps
						i(225591),	-- Fleeting Massacre Footpads
					}),
					filter(MAIL, {
						i(212421),	-- Goresplattered Membrane
						i(212429),	-- Whispering Voidlight Spaulders
						i(225580),	-- Accelerated Ascension Coil
						i(225586),	-- Rasha'nan's Grotesque Talons
						i(212414),	-- Lost Watcher's Remains
						i(212428),	-- Final Meal's Horns
						i(212431),	-- Undermoth-Lined Footpads
						i(225581),	-- Ky'veza's Covert Clasps
						i(225724),	-- Shrillwing Hunter's Prey
						i(212415),	-- Throne Defender's Bangles
						i(212436),	-- Clutches of Paranoia
						i(225725),	-- Lurking Marauder's Binding
					}),
					filter(PLATE, {
						i(225737, {["bonusID"] = 0, ["modID"] = 5, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Feet
						i(225736, {["bonusID"] = 0, ["modID"] = 5, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Head
						i(225726, {["bonusID"] = 0, ["modID"] = 5, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Waist
						i(212418),	-- Black Blood Injectors
						i(212437),	-- Ravaged Lamplighter's Manacles
						i(212442),	-- Greatbelt of the Hungerer
						i(225590),	-- Boots of the Black Bulwark
						i(225744),	-- Heritage Militia's Stompers
						i(212422),	-- Bloodbound Horror's Legplates
						i(212427),	-- Visor of the Ascended Captain
						i(212443),	-- Shattershell Greaves
						i(225587),	-- Devoted Offering's Irons
						i(212420),	-- Queensguard Carapace
						i(212424),	-- Seasoned Earthen Boulderplates
						i(225589),	-- Nether Bounty's Greatbelt
						i(225727),	-- Captured Earthen's Ironhorns
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(212430),	-- Shattered Eye Cincture
						i(212434),	-- Voidspoken Sarong
						i(225582),	-- Assimilated Eggshell Slippers
						i(225584),	-- Skeinspinner's Duplicitous Cuffs
						i(212439),	-- Beacons of the False Dawn
						i(212441),	-- Bindings of the Starless Night
						i(225585),	-- Acrid Ascendant's Sash
						i(225720),	-- Web Acolyte's Hood
						i(225721),	-- Prime Slime Slippers
						i(212416),	-- Cosmic-Tinged Treads
						i(212419),	-- Bile-Soaked Harness
						i(212426),	-- Crunchy Intruder's Wristband
						i(212440),	-- Devotee's Discarded Headdress
					}),
					filter(LEATHER, {
						i(212417),	-- Beyond's Dark Visage
						i(212445),	-- Chitin-Spiked Jackboots
						i(225583),	-- Behemoth's Eroded Cinch
						i(212432),	-- Thousand-Scar Impalers
						i(212433),	-- Omnivore's Venomous Camouflage
						i(225722),	-- Adorned Lynxborne Pauldrons
						i(225723),	-- Venom Stalker's Strap
						i(212423),	-- Rebel's Drained Marrowslacks
						i(212444),	-- Frame of Felled Insurgents
						i(225588),	-- Sanguine Experiment's Bandages
						i(212425),	-- Devourer's Taut Innards
						i(212438),	-- Polluted Spectre's Wraps
						i(225591),	-- Fleeting Massacre Footpads
					}),
					filter(MAIL, {
						i(212421),	-- Goresplattered Membrane
						i(212429),	-- Whispering Voidlight Spaulders
						i(225580),	-- Accelerated Ascension Coil
						i(225586),	-- Rasha'nan's Grotesque Talons
						i(212414),	-- Lost Watcher's Remains
						i(212428),	-- Final Meal's Horns
						i(212431),	-- Undermoth-Lined Footpads
						i(225581),	-- Ky'veza's Covert Clasps
						i(225724),	-- Shrillwing Hunter's Prey
						i(212415),	-- Throne Defender's Bangles
						i(212436),	-- Clutches of Paranoia
						i(225725),	-- Lurking Marauder's Binding
					}),
					filter(PLATE, {
						i(225737, {["bonusID"] = 0, ["modID"] = 6, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Feet
						i(225736, {["bonusID"] = 0, ["modID"] = 6, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Head
						i(225726, {["bonusID"] = 0, ["modID"] = 6, ["ItemAppearanceModifierID"] = 0 }),	-- 11.0 Raid Template - Plate - Waist
						i(212418),	-- Black Blood Injectors
						i(212437),	-- Ravaged Lamplighter's Manacles
						i(212442),	-- Greatbelt of the Hungerer
						i(225590),	-- Boots of the Black Bulwark
						i(225744),	-- Heritage Militia's Stompers
						i(212422),	-- Bloodbound Horror's Legplates
						i(212427),	-- Visor of the Ascended Captain
						i(212443),	-- Shattershell Greaves
						i(225587),	-- Devoted Offering's Irons
						i(212420),	-- Queensguard Carapace
						i(212424),	-- Seasoned Earthen Boulderplates
						i(225589),	-- Nether Bounty's Greatbelt
						i(225727),	-- Captured Earthen's Ironhorns
					}),
				})),
			}),
			filter(CLOTH, {
				i(225730, {["bonusID"] = 6894 }),	-- Stone Gaze Ceinture
			}),
			filter(TRINKET_F, {
				i(213423),	-- Bygone Weapon Charm
				i(213533),	-- Ancient Weapon Charm
				i(213534),	-- Bygone Armor Charm
				i(213535),	-- Ancient Armor Charm
				i(217402),	-- Olden Armor Charm
				i(217403),	-- Olden Weapon Charm
				i(217404),	-- Time-Worn Armor Charm
				i(217405),	-- Time-Worn Weapon Charm
				i(219916),	-- Bronzebeard Family Compass
				i(225669),	-- Brute Force Idol
				i(225682),	-- Time Lost Relic
				i(225683),	-- Grasping Necrotic Relic
				i(225684),	-- Relicblood of Zekvir
				i(225685),	-- Relic of Sentience
				i(212412),	-- 11.0 Raid Template - Wand - RangedRight
				i(212455),	-- 11.0 Raid Template - Physical DPS - Trinket
				i(226695),	-- Cunning Advisor's Favor
				i(226696),	-- Mighty Advisor's Favor
			}),
		})),

		-- 11.0.5
		expansion(EXPANSION.TWW, patch(0,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_5 } }, {
			filter(CLOTH, {
				i(227585),	-- Guardian Serpent Handwraps
				i(227584),	-- Guardian Serpent Legwraps
				i(227219),	-- Hateful Gladiator's Satin Robe
			}),
			filter(FINGER_F, {
				i(225185),	-- [DNT UNUSED] Reforged 1 Ring
			}),
			filter(LEATHER, {
				i(227593),	-- Eternal Blossom Breeches
				i(227563),	-- Eternal Blossom Gloves
				i(227592),	-- Eternal Blossom Handguards
				i(227583),	-- Eternal Blossom Handwraps
				i(227562),	-- Eternal Blossom Leggings
				i(227582),	-- Eternal Blossom Legwraps
				i(227217),	-- Hateful Gladiator's Dragonhide Robes
				i(227216),	-- Hateful Gladiator's Wyrmhide Robes
				i(227595),	-- Red Crane Gauntlets
				i(227596),	-- Red Crane Handwraps
				i(227594),	-- Red Crane Legguards
				i(227597),	-- Red Crane Legwraps
			}),
			filter(MAIL, {
				i(227555),	-- Firebird's Grips
				i(227581),	-- Firebird's Handwraps
				i(227554),	-- Firebird's Legguards
				i(227580),	-- Firebird's Legwraps
			}),
			filter(PLATE, {
				i(227571),	-- Handguards of Resounding Rings
				i(227567),	-- Handguards of the Lost Catacomb
				i(227570),	-- Legguards of Resounding Rings
				i(227566),	-- Legguards of the Lost Catacomb
				i(227579),	-- White Tiger Gloves
				i(227578),	-- White Tiger Greaves
				i(227569),	-- White Tiger Handguards
				i(227568),	-- White Tiger Legguards
			}),
		})),

		-- 11.0.7
		expansion(EXPANSION.TWW, patch(0,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_0_7 } }, {
			filter(BACK_F, {
				i(231751),	-- Earthen Backpack
			}),
			filter(FINGER_F, {
				i(228526),	-- Cyrce's Circlet
			}),
		})),

		-- 11.1.0
		expansion(EXPANSION.TWW, patch(1,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_0 } }, {
			filter(CLOTH, {
				i(235720, {["sourceID"] = 267067 }),	-- Guardian Serpent Cowl
				i(235736, {["sourceID"] = 267083 }),	-- Guardian Serpent Crown
				i(235737, {["sourceID"] = 267084 }),	-- Guardian Serpent Leggings
				i(235738, {["sourceID"] = 267085 }),	-- Guardian Serpent Pants
				i(235753, {["sourceID"] = 267100 }),	-- Raiment of the Chromatic Hydra
			}),
			n(HEAD, {
				i(235219),	-- Fireworks Hat
			}),
			filter(PLATE, {
				i(234511),	-- Corrupted Cuirass
				i(234525),	-- Corrupted Crown
			}),
			filter(TRINKET_F, {
				i(230196),	-- 11.0 Raid Template - Ranged DPS - Trinket
				i(230187),	-- Lucio Boombox
				i(232547),	-- Omega Strike Force
			}),
			header(HEADERS.LFGDungeon, 2779, {	-- Liberation of Undermine
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(228871),	-- Cleanup Crew's Wastemask
						i(232655),	-- Vatwork Janitor's Wasteband
						i(228861),	-- Tune-Up Toolbelt
						i(232656),	-- Psychopath's Ravemantle
						i(228850),	-- Bottom-Dollar Blouse
						i(228857),	-- Underparty Admission Bracelet
						i(228879),	-- Cemented Murloc-Swimmers
						i(228881),	-- Illicit Bankroll Bracers
						i(228847),	-- Hotstep Heel-Turners
						i(228865),	-- Pit Doctor's Petticoat
						i(228870),	-- Underboss's Tailored Mantle
						i(228882),	-- Refiner's Conveyor Belt
					}),
					filter(LEATHER, {
						i(228863),	-- Enforcer's Sticky Fingers
						i(228875),	-- Vandal's Skullplating
						i(228885),	-- Hustler's Ante-Uppers
						i(232657),	-- Mechgineer's Blowtorch Cover
						i(228856),	-- Competitor's Battle Cord
						i(228869),	-- Killer Queen's Wristflickers
						i(228854),	-- Bilgerat's Discarded Slacks
						i(228864),	-- "Streamlined" Cartel Uniform
						i(228888),	-- Rushed Beta Launchers
						i(232658),	-- Firebug's Anklegear
						i(228848),	-- Darkfuse Racketeer's Tricorne
						i(228876),	-- Dragster's Last Stride
						i(228880),	-- Hitman's Holster
					}),
					filter(MAIL, {
						i(228860),	-- Epaulettes of Failed Enforcers
						i(228867),	-- Gravi-Gunk Handlers
						i(228877),	-- Dealer's Covetous Chain
						i(228883),	-- Dubious Table-Runners
						i(232659),	-- Loyalist's Holdout Hood
						i(228846),	-- Galvanic Graffiti Cuffs
						i(228859),	-- Sanitized Scraphood
						i(228866),	-- Deep-Pocketed Pantaloons
						i(232660),	-- Midnight Lounge Cummerbund
						i(228845),	-- Sash of the Fierce Diva
						i(228852),	-- Blazer of Glory
						i(228862),	-- Shrapnel-Ridden Sabatons
						i(228878),	-- Made Manacles
					}),
					filter(PLATE, {
						i(228851),	-- "Bullet-Proof" Vestplate
						i(228853),	-- Hired Muscle's Legguards
						i(228868),	-- Revved-Up Vambraces
						i(228874),	-- Rik's Walkin' Boots
						i(232662),	-- Globlin-Fused Greatbelt
						i(228858),	-- Fullthrottle Facerig
						i(228884),	-- Test Subject's Clasps
						i(228886),	-- Coin-Operated Girdle
						i(232661),	-- Bootleg Wrynn Shoulderplates
						i(228849),	-- Dumpmech Compactors
						i(228855),	-- Paydirt Pauldrons
						i(228873),	-- Heaviestweight Title Belt
						i(228887),	-- Cutthroat Competition Stompers
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(228871),	-- Cleanup Crew's Wastemask
						i(232655),	-- Vatwork Janitor's Wasteband
						i(228861),	-- Tune-Up Toolbelt
						i(232656),	-- Psychopath's Ravemantle
						i(228850),	-- Bottom-Dollar Blouse
						i(228857),	-- Underparty Admission Bracelet
						i(228879),	-- Cemented Murloc-Swimmers
						i(228881),	-- Illicit Bankroll Bracers
						i(228847),	-- Hotstep Heel-Turners
						i(228865),	-- Pit Doctor's Petticoat
						i(228870),	-- Underboss's Tailored Mantle
						i(228882),	-- Refiner's Conveyor Belt
					}),
					filter(LEATHER, {
						i(228863),	-- Enforcer's Sticky Fingers
						i(228875),	-- Vandal's Skullplating
						i(228885),	-- Hustler's Ante-Uppers
						i(232657),	-- Mechgineer's Blowtorch Cover
						i(228856),	-- Competitor's Battle Cord
						i(228869),	-- Killer Queen's Wristflickers
						i(228854),	-- Bilgerat's Discarded Slacks
						i(228864),	-- "Streamlined" Cartel Uniform
						i(228888),	-- Rushed Beta Launchers
						i(232658),	-- Firebug's Anklegear
						i(228848),	-- Darkfuse Racketeer's Tricorne
						i(228876),	-- Dragster's Last Stride
						i(228880),	-- Hitman's Holster
					}),
					filter(MAIL, {
						i(228860),	-- Epaulettes of Failed Enforcers
						i(228867),	-- Gravi-Gunk Handlers
						i(228877),	-- Dealer's Covetous Chain
						i(228883),	-- Dubious Table-Runners
						i(232659),	-- Loyalist's Holdout Hood
						i(228846),	-- Galvanic Graffiti Cuffs
						i(228859),	-- Sanitized Scraphood
						i(228866),	-- Deep-Pocketed Pantaloons
						i(232660),	-- Midnight Lounge Cummerbund
						i(228845),	-- Sash of the Fierce Diva
						i(228852),	-- Blazer of Glory
						i(228862),	-- Shrapnel-Ridden Sabatons
						i(228878),	-- Made Manacles
					}),
					filter(PLATE, {
						i(228851),	-- "Bullet-Proof" Vestplate
						i(228853),	-- Hired Muscle's Legguards
						i(228868),	-- Revved-Up Vambraces
						i(228874),	-- Rik's Walkin' Boots
						i(232662),	-- Globlin-Fused Greatbelt
						i(228858),	-- Fullthrottle Facerig
						i(228884),	-- Test Subject's Clasps
						i(228886),	-- Coin-Operated Girdle
						i(232661),	-- Bootleg Wrynn Shoulderplates
						i(228849),	-- Dumpmech Compactors
						i(228855),	-- Paydirt Pauldrons
						i(228873),	-- Heaviestweight Title Belt
						i(228887),	-- Cutthroat Competition Stompers
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(228871),	-- Cleanup Crew's Wastemask
						i(232655),	-- Vatwork Janitor's Wasteband
						i(228861),	-- Tune-Up Toolbelt
						i(232656),	-- Psychopath's Ravemantle
						i(228850),	-- Bottom-Dollar Blouse
						i(228857),	-- Underparty Admission Bracelet
						i(228879),	-- Cemented Murloc-Swimmers
						i(228881),	-- Illicit Bankroll Bracers
						i(228847),	-- Hotstep Heel-Turners
						i(228865),	-- Pit Doctor's Petticoat
						i(228870),	-- Underboss's Tailored Mantle
						i(228882),	-- Refiner's Conveyor Belt
					}),
					filter(LEATHER, {
						i(228863),	-- Enforcer's Sticky Fingers
						i(228875),	-- Vandal's Skullplating
						i(228885),	-- Hustler's Ante-Uppers
						i(232657),	-- Mechgineer's Blowtorch Cover
						i(228856),	-- Competitor's Battle Cord
						i(228869),	-- Killer Queen's Wristflickers
						i(228854),	-- Bilgerat's Discarded Slacks
						i(228864),	-- "Streamlined" Cartel Uniform
						i(228888),	-- Rushed Beta Launchers
						i(232658),	-- Firebug's Anklegear
						i(228848),	-- Darkfuse Racketeer's Tricorne
						i(228876),	-- Dragster's Last Stride
						i(228880),	-- Hitman's Holster
					}),
					filter(MAIL, {
						i(228860),	-- Epaulettes of Failed Enforcers
						i(228867),	-- Gravi-Gunk Handlers
						i(228877),	-- Dealer's Covetous Chain
						i(228883),	-- Dubious Table-Runners
						i(232659),	-- Loyalist's Holdout Hood
						i(228846),	-- Galvanic Graffiti Cuffs
						i(228859),	-- Sanitized Scraphood
						i(228866),	-- Deep-Pocketed Pantaloons
						i(232660),	-- Midnight Lounge Cummerbund
						i(228845),	-- Sash of the Fierce Diva
						i(228852),	-- Blazer of Glory
						i(228862),	-- Shrapnel-Ridden Sabatons
						i(228878),	-- Made Manacles
					}),
					filter(PLATE, {
						i(228851),	-- "Bullet-Proof" Vestplate
						i(228853),	-- Hired Muscle's Legguards
						i(228868),	-- Revved-Up Vambraces
						i(228874),	-- Rik's Walkin' Boots
						i(232662),	-- Globlin-Fused Greatbelt
						i(228858),	-- Fullthrottle Facerig
						i(228884),	-- Test Subject's Clasps
						i(228886),	-- Coin-Operated Girdle
						i(232661),	-- Bootleg Wrynn Shoulderplates
						i(228849),	-- Dumpmech Compactors
						i(228855),	-- Paydirt Pauldrons
						i(228873),	-- Heaviestweight Title Belt
						i(228887),	-- Cutthroat Competition Stompers
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(228871),	-- Cleanup Crew's Wastemask
						i(232655),	-- Vatwork Janitor's Wasteband
						i(228861),	-- Tune-Up Toolbelt
						i(232656),	-- Psychopath's Ravemantle
						i(228850),	-- Bottom-Dollar Blouse
						i(228857),	-- Underparty Admission Bracelet
						i(228879),	-- Cemented Murloc-Swimmers
						i(228881),	-- Illicit Bankroll Bracers
						i(228847),	-- Hotstep Heel-Turners
						i(228865),	-- Pit Doctor's Petticoat
						i(228870),	-- Underboss's Tailored Mantle
						i(228882),	-- Refiner's Conveyor Belt
					}),
					filter(LEATHER, {
						i(228863),	-- Enforcer's Sticky Fingers
						i(228875),	-- Vandal's Skullplating
						i(228885),	-- Hustler's Ante-Uppers
						i(232657),	-- Mechgineer's Blowtorch Cover
						i(228856),	-- Competitor's Battle Cord
						i(228869),	-- Killer Queen's Wristflickers
						i(228854),	-- Bilgerat's Discarded Slacks
						i(228864),	-- "Streamlined" Cartel Uniform
						i(228888),	-- Rushed Beta Launchers
						i(232658),	-- Firebug's Anklegear
						i(228848),	-- Darkfuse Racketeer's Tricorne
						i(228876),	-- Dragster's Last Stride
						i(228880),	-- Hitman's Holster
					}),
					filter(MAIL, {
						i(228860),	-- Epaulettes of Failed Enforcers
						i(228867),	-- Gravi-Gunk Handlers
						i(228877),	-- Dealer's Covetous Chain
						i(228883),	-- Dubious Table-Runners
						i(232659),	-- Loyalist's Holdout Hood
						i(228846),	-- Galvanic Graffiti Cuffs
						i(228859),	-- Sanitized Scraphood
						i(228866),	-- Deep-Pocketed Pantaloons
						i(232660),	-- Midnight Lounge Cummerbund
						i(228845),	-- Sash of the Fierce Diva
						i(228852),	-- Blazer of Glory
						i(228862),	-- Shrapnel-Ridden Sabatons
						i(228878),	-- Made Manacles
					}),
					filter(PLATE, {
						i(228851),	-- "Bullet-Proof" Vestplate
						i(228853),	-- Hired Muscle's Legguards
						i(228868),	-- Revved-Up Vambraces
						i(228874),	-- Rik's Walkin' Boots
						i(232662),	-- Globlin-Fused Greatbelt
						i(228858),	-- Fullthrottle Facerig
						i(228884),	-- Test Subject's Clasps
						i(228886),	-- Coin-Operated Girdle
						i(232661),	-- Bootleg Wrynn Shoulderplates
						i(228849),	-- Dumpmech Compactors
						i(228855),	-- Paydirt Pauldrons
						i(228873),	-- Heaviestweight Title Belt
						i(228887),	-- Cutthroat Competition Stompers
					}),
				})),
			}),
		})),

		-- 11.1.5
		expansion(EXPANSION.TWW, patch(1,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_5 } }, {
			i(232352, {["sourceID"] = 230225}),	-- Ashjra'kamas, Shroud of Resolve
			i(232352, {["sourceID"] = 230226}),	-- Ashjra'kamas, Shroud of Resolve
			i(232352, {["sourceID"] = 230227}),	-- Ashjra'kamas, Shroud of Resolve
			i(238934),	-- Boots of the Darkwalker
		})),

		-- 11.1.7
		expansion(EXPANSION.TWW, patch(1,7), bubbleDownSelf({ ["timeline"] = { CREATED_11_1_7 } }, {
			filter(CLOTH, {
				i(239023, {["modID"] = 2}),	-- Amice of the Returned
				i(239023, {["modID"] = 23}),	-- Amice of the Returned
				i(239031, {["modID"] = 2}),	-- Brood Cleanser's Amice
				i(239031, {["modID"] = 23}),	-- Brood Cleanser's Amice
				i(239038, {["modID"] = 2}),	-- Mantle of Void-Touched Waters
				i(239038, {["modID"] = 23}),	-- Mantle of Void-Touched Waters
				i(239032, {["modID"] = 2}),	-- Robes of the Reborn Serpent
				i(239032, {["modID"] = 23}),	-- Robes of the Reborn Serpent
				i(239056, {["modID"] = 2}),	-- Ruffled Poet Blouse
				i(239056, {["modID"] = 23}),	-- Ruffled Poet Blouse
				i(239071, {["modID"] = 2}),	-- Secret Spinner's Miter
				i(239071, {["modID"] = 23}),	-- Secret Spinner's Miter
				i(239053, {["modID"] = 2}),	-- Smartly Plumed Cap
				i(239053, {["modID"] = 23}),	-- Smartly Plumed Cap
				i(239024, {["modID"] = 2}),	-- Soulfuel Headdress
				i(239024, {["modID"] = 23}),	-- Soulfuel Headdress
				i(239039, {["modID"] = 2}),	-- Stormlurker's Cowl
				i(239039, {["modID"] = 23}),	-- Stormlurker's Cowl
			}),
			filter(LEATHER, {
				i(239040, {["modID"] = 2}),	-- Cowl of Fluid Machinations
				i(239040, {["modID"] = 23}),	-- Cowl of Fluid Machinations
				i(239057, {["modID"] = 2}),	-- Gold-Tasseled Epaulets
				i(239057, {["modID"] = 23}),	-- Gold-Tasseled Epaulets
				i(239026, {["modID"] = 2}),	-- Gorak Tul's Mantle
				i(239026, {["modID"] = 23}),	-- Gorak Tul's Mantle
				i(239033, {["modID"] = 2}),	-- Hood of the Slithering Loa
				i(239033, {["modID"] = 23}),	-- Hood of the Slithering Loa
				i(239055, {["modID"] = 2}),	-- Irontide Captain's Hat
				i(239055, {["modID"] = 23}),	-- Irontide Captain's Hat
				i(239072, {["modID"] = 2}),	-- Loa Betrayer's Vestments
				i(239072, {["modID"] = 23}),	-- Loa Betrayer's Vestments
				i(239070, {["modID"] = 2}),	-- Mantle of Fastidious Machinations
				i(239070, {["modID"] = 23}),	-- Mantle of Fastidious Machinations
				i(239025, {["modID"] = 2}),	-- Raiment of the Blighted Tribe
				i(239025, {["modID"] = 23}),	-- Raiment of the Blighted Tribe
				i(239068, {["modID"] = 2}),	-- Spymaster's Wrap
				i(239068, {["modID"] = 23}),	-- Spymaster's Wrap
				i(239041, {["modID"] = 2}),	-- Tentacle-Laced Spaulders
				i(239041, {["modID"] = 23}),	-- Tentacle-Laced Spaulders
			}),
			filter(MAIL, {
				i(239073, {["modID"] = 2}),	-- Coif of the Court Spider
				i(239073, {["modID"] = 23}),	-- Coif of the Court Spider
				i(239034, {["modID"] = 2}),	-- Corrupted Hexxer's Vestments
				i(239034, {["modID"] = 23}),	-- Corrupted Hexxer's Vestments
				i(239027, {["modID"] = 2}),	-- Deathslaver's Hauberk
				i(239027, {["modID"] = 23}),	-- Deathslaver's Hauberk
				i(239042, {["modID"] = 2}),	-- Hauberk of Sunken Despair
				i(239042, {["modID"] = 23}),	-- Hauberk of Sunken Despair
				i(239035, {["modID"] = 2}),	-- Sethraliss' Fanged Helm
				i(239035, {["modID"] = 23}),	-- Sethraliss' Fanged Helm
				i(239028, {["modID"] = 2}),	-- Soulscarred Headgear
				i(239028, {["modID"] = 23}),	-- Soulscarred Headgear
				i(239054, {["modID"] = 2}),	-- Sweete's Jeweled Headgear
				i(239054, {["modID"] = 23}),	-- Sweete's Jeweled Headgear
			}),
			filter(PLATE, {
				i(239029, {["modID"] = 2}),	-- Breastplate of the Vengeful
				i(239029, {["modID"] = 23}),	-- Breastplate of the Vengeful
				i(239043, {["modID"] = 2}),	-- Chestguard of the Deep Denizen
				i(239043, {["modID"] = 23}),	-- Chestguard of the Deep Denizen
				i(239037, {["modID"] = 2}),	-- C'thraxxi Binders Pauldrons
				i(239037, {["modID"] = 23}),	-- C'thraxxi Binders Pauldrons
				i(239036, {["modID"] = 2}),	-- Desert Guardian's Breastplate
				i(239036, {["modID"] = 23}),	-- Desert Guardian's Breastplate
				i(239044, {["modID"] = 2}),	-- Helm of Abyssal Malevolence
				i(239044, {["modID"] = 23}),	-- Helm of Abyssal Malevolence
				i(239030, {["modID"] = 2}),	-- Pauldrons of the Horned Horror
				i(239030, {["modID"] = 23}),	-- Pauldrons of the Horned Horror
				i(239052, {["modID"] = 2}),	-- Sea-Brawler's Greathelm
				i(239052, {["modID"] = 23}),	-- Sea-Brawler's Greathelm
				i(239069, {["modID"] = 2}),	-- Soulspun Casque
				i(239069, {["modID"] = 23}),	-- Soulspun Casque
			}),
			filter(FINGER_F, {
				i(246757),	-- Miniature Roulette Wheel
				i(246758),	-- Miniature Roulette Wheel
				i(246759),	-- Miniature Roulette Wheel
				i(246760),	-- Miniature Roulette Wheel
				i(246761),	-- Miniature Roulette Wheel
				i(246762),	-- Miniature Roulette Wheel
				i(246763),	-- Miniature Roulette Wheel
				i(246764),	-- Miniature Roulette Wheel
				i(246765),	-- Miniature Roulette Wheel
				i(246766),	-- Miniature Roulette Wheel
				i(246767),	-- Miniature Roulette Wheel
				i(246768),	-- Miniature Roulette Wheel
			}),
			filter(TRINKET_F, {
				i(242743),	-- Durable Information Securing Container
			}),
		})),

		-- 11.2.0
		expansion(EXPANSION.TWW, patch(2,0), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_0 } }, {
			filter(LEATHER, {
				i(241240),	-- Type II Bomber Jacket
			}),
			filter(MAIL, {
				i(241239),	-- Epaulets of Arcing Power
			}),
			filter(CLOAKS, {
				i(237521),	-- Hemet's Cloak
			}),
			n(HEAD, {
				i(237520),	-- Hemet's Hood
			}),
			header(HEADERS.LFGDungeon, 2805, {	-- Manaforge Omega
				d(DIFFICULTY.RAID.LFR, bubbleDown({ ["bonusID"] = 6894, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(238029, {["bonusID"] = 0, ["modID"] = 4}),	-- 11.2 Raid - Cloth - Waist
						i(237549),	-- Bloodwrath's Gnarled Claws
						i(237558),	-- Conjoined Glass Bracers
						i(237538),	-- Forgeweaver's Journal Holster
						i(237527),	-- Frock of Spirit's Reunion
						i(243305),	-- Interloper's Silken Striders
						i(237524),	-- Laced Lair-Steppers
						i(237547),	-- Mounted Manacannons
						i(237556),	-- Sandals of Scarred Servitude
						i(237534),	-- Singed Sievecuffs
						i(237559),	-- Singularity Cincture
						i(237542),	-- Stellar Navigation Slacks
						i(243048),	-- Technomancer's Service Sandals
						i(237548),	-- Twilight Tyrant's Veil
						i(238033),	-- Zadus's Liturgical Hat
					}),
					filter(LEATHER, {
						i(237533),	-- Atomic Phasebelt
						i(237546),	-- Bindings of Lost Essence
						i(237541),	-- Darksorrow's Corrupted Carapace
						i(237552),	-- Deathbound Shoulderpads
						i(237531),	-- Elite Shadowguard Legwraps
						i(238027),	-- Harvested Creephide Cord
						i(243306),	-- Interloper's Reinforced Sandals
						i(237525),	-- Irradiated Impurity Filter
						i(237565),	-- Kinetic Dunerunners
						i(237553),	-- Laboratory Test Slippers
						i(237557),	-- Reaper's Dreadbelt
						i(237562),	-- Time-Compressed Wristguards
						i(238031),	-- Veiled Manta Vest
						i(237540),	-- Winged Gamma Handlers
					}),
					filter(MAIL, {
						i(238032),	-- Acolyte's Infused Leggings
						i(237523),	-- Arcanotech Wrist-Matrix
						i(237536),	-- Bite of the Astral Wastes
						i(237543),	-- Chambersieve Waistcoat
						i(237554),	-- Clasp of Furious Freedom
						i(237537),	-- Claws of Failed Resistance
						i(237522),	-- Colossal Lifetether
						i(237539),	-- Deathspindle Talons
						i(237560),	-- Greaves of Shattered Space
						i(237529),	-- Harvested Attendant's Uniform
						i(243308),	-- Interloper's Chain Boots
						i(237555),	-- Pactbound Vambraces
						i(237544),	-- Royal Voidscale Gauntlets
						i(238030),	-- Voidhound Trainer's Boots
					}),
					filter(PLATE, {
						i(237535),	-- Artoshion's Abyssal Stare
						i(237532),	-- Beacons of False Righteousness
						i(238028),	-- Bone-Melted Faceplate
						i(237526),	-- Breached Containment Guards
						i(237564),	-- Darkrider Sabatons
						i(237545),	-- Discarded Nutrient Shackles
						i(237550),	-- Fresh Ethereal Fetters
						i(243307),	-- Interloper's Plated Sabatons
						i(238034),	-- Jak'tull's Intruder Stompers
						i(237528),	-- Manaforged Displacement Chassis
						i(237530),	-- Shrapnel-Fused Legguards
						i(237551),	-- Sterilized Expulsion Boots
						i(237563),	-- Ultradense Fission Girdle
						i(237561),	-- Yoke of Enveloping Hatred
					}),
				})),
				d(DIFFICULTY.RAID.NORMAL, bubbleDown({ ["bonusID"] = 6895, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(238029, {["bonusID"] = 0, }),	-- 11.2 Raid - Cloth - Waist
						i(237549),	-- Bloodwrath's Gnarled Claws
						i(237558),	-- Conjoined Glass Bracers
						i(237538),	-- Forgeweaver's Journal Holster
						i(237527),	-- Frock of Spirit's Reunion
						i(243305),	-- Interloper's Silken Striders
						i(237524),	-- Laced Lair-Steppers
						i(237547),	-- Mounted Manacannons
						i(237556),	-- Sandals of Scarred Servitude
						i(237534),	-- Singed Sievecuffs
						i(237559),	-- Singularity Cincture
						i(237542),	-- Stellar Navigation Slacks
						i(243048),	-- Technomancer's Service Sandals
						i(237548),	-- Twilight Tyrant's Veil
						i(238033),	-- Zadus's Liturgical Hat
					}),
					filter(LEATHER, {
						i(237533),	-- Atomic Phasebelt
						i(237546),	-- Bindings of Lost Essence
						i(237541),	-- Darksorrow's Corrupted Carapace
						i(237552),	-- Deathbound Shoulderpads
						i(237531),	-- Elite Shadowguard Legwraps
						i(238027),	-- Harvested Creephide Cord
						i(243306),	-- Interloper's Reinforced Sandals
						i(237525),	-- Irradiated Impurity Filter
						i(237565),	-- Kinetic Dunerunners
						i(237553),	-- Laboratory Test Slippers
						i(237557),	-- Reaper's Dreadbelt
						i(237562),	-- Time-Compressed Wristguards
						i(238031),	-- Veiled Manta Vest
						i(237540),	-- Winged Gamma Handlers
					}),
					filter(MAIL, {
						i(238032),	-- Acolyte's Infused Leggings
						i(237523),	-- Arcanotech Wrist-Matrix
						i(237536),	-- Bite of the Astral Wastes
						i(237543),	-- Chambersieve Waistcoat
						i(237554),	-- Clasp of Furious Freedom
						i(237537),	-- Claws of Failed Resistance
						i(237522),	-- Colossal Lifetether
						i(237539),	-- Deathspindle Talons
						i(237560),	-- Greaves of Shattered Space
						i(237529),	-- Harvested Attendant's Uniform
						i(243308),	-- Interloper's Chain Boots
						i(237555),	-- Pactbound Vambraces
						i(237544),	-- Royal Voidscale Gauntlets
						i(238030),	-- Voidhound Trainer's Boots
					}),
					filter(PLATE, {
						i(237535),	-- Artoshion's Abyssal Stare
						i(237532),	-- Beacons of False Righteousness
						i(238028),	-- Bone-Melted Faceplate
						i(237526),	-- Breached Containment Guards
						i(237564),	-- Darkrider Sabatons
						i(237545),	-- Discarded Nutrient Shackles
						i(237550),	-- Fresh Ethereal Fetters
						i(243307),	-- Interloper's Plated Sabatons
						i(238034),	-- Jak'tull's Intruder Stompers
						i(237528),	-- Manaforged Displacement Chassis
						i(237530),	-- Shrapnel-Fused Legguards
						i(237551),	-- Sterilized Expulsion Boots
						i(237563),	-- Ultradense Fission Girdle
						i(237561),	-- Yoke of Enveloping Hatred
					}),
				})),
				d(DIFFICULTY.RAID.HEROIC, bubbleDown({ ["bonusID"] = 6896, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(238029, {["bonusID"] = 0, ["modID"] = 5}),	-- 11.2 Raid - Cloth - Waist
						i(237549),	-- Bloodwrath's Gnarled Claws
						i(237558),	-- Conjoined Glass Bracers
						i(237538),	-- Forgeweaver's Journal Holster
						i(237527),	-- Frock of Spirit's Reunion
						i(243305),	-- Interloper's Silken Striders
						i(237524),	-- Laced Lair-Steppers
						i(237547),	-- Mounted Manacannons
						i(237556),	-- Sandals of Scarred Servitude
						i(237534),	-- Singed Sievecuffs
						i(237559),	-- Singularity Cincture
						i(237542),	-- Stellar Navigation Slacks
						i(243048),	-- Technomancer's Service Sandals
						i(237548),	-- Twilight Tyrant's Veil
						i(238033),	-- Zadus's Liturgical Hat
					}),
					filter(LEATHER, {
						i(237533),	-- Atomic Phasebelt
						i(237546),	-- Bindings of Lost Essence
						i(237541),	-- Darksorrow's Corrupted Carapace
						i(237552),	-- Deathbound Shoulderpads
						i(237531),	-- Elite Shadowguard Legwraps
						i(238027),	-- Harvested Creephide Cord
						i(243306),	-- Interloper's Reinforced Sandals
						i(237525),	-- Irradiated Impurity Filter
						i(237565),	-- Kinetic Dunerunners
						i(237553),	-- Laboratory Test Slippers
						i(237557),	-- Reaper's Dreadbelt
						i(237562),	-- Time-Compressed Wristguards
						i(238031),	-- Veiled Manta Vest
						i(237540),	-- Winged Gamma Handlers
					}),
					filter(MAIL, {
						i(238032),	-- Acolyte's Infused Leggings
						i(237523),	-- Arcanotech Wrist-Matrix
						i(237536),	-- Bite of the Astral Wastes
						i(237543),	-- Chambersieve Waistcoat
						i(237554),	-- Clasp of Furious Freedom
						i(237537),	-- Claws of Failed Resistance
						i(237522),	-- Colossal Lifetether
						i(237539),	-- Deathspindle Talons
						i(237560),	-- Greaves of Shattered Space
						i(237529),	-- Harvested Attendant's Uniform
						i(243308),	-- Interloper's Chain Boots
						i(237555),	-- Pactbound Vambraces
						i(237544),	-- Royal Voidscale Gauntlets
						i(238030),	-- Voidhound Trainer's Boots
					}),
					filter(PLATE, {
						i(237535),	-- Artoshion's Abyssal Stare
						i(237532),	-- Beacons of False Righteousness
						i(238028),	-- Bone-Melted Faceplate
						i(237526),	-- Breached Containment Guards
						i(237564),	-- Darkrider Sabatons
						i(237545),	-- Discarded Nutrient Shackles
						i(237550),	-- Fresh Ethereal Fetters
						i(243307),	-- Interloper's Plated Sabatons
						i(238034),	-- Jak'tull's Intruder Stompers
						i(237528),	-- Manaforged Displacement Chassis
						i(237530),	-- Shrapnel-Fused Legguards
						i(237551),	-- Sterilized Expulsion Boots
						i(237563),	-- Ultradense Fission Girdle
						i(237561),	-- Yoke of Enveloping Hatred
					}),
				})),
				d(DIFFICULTY.RAID.MYTHIC, bubbleDown({ ["bonusID"] = 6897, ["modID"] = 0, }, {
					filter(CLOTH, {
						i(238029, {["bonusID"] = 0, ["modID"] = 6}),	-- 11.2 Raid - Cloth - Waist
						i(237549),	-- Bloodwrath's Gnarled Claws
						i(237558),	-- Conjoined Glass Bracers
						i(237538),	-- Forgeweaver's Journal Holster
						i(237527),	-- Frock of Spirit's Reunion
						i(243305),	-- Interloper's Silken Striders
						i(237524),	-- Laced Lair-Steppers
						i(237547),	-- Mounted Manacannons
						i(237556),	-- Sandals of Scarred Servitude
						i(237534),	-- Singed Sievecuffs
						i(237559),	-- Singularity Cincture
						i(237542),	-- Stellar Navigation Slacks
						i(243048),	-- Technomancer's Service Sandals
						i(237548),	-- Twilight Tyrant's Veil
						i(238033),	-- Zadus's Liturgical Hat
					}),
					filter(LEATHER, {
						i(237533),	-- Atomic Phasebelt
						i(237546),	-- Bindings of Lost Essence
						i(237541),	-- Darksorrow's Corrupted Carapace
						i(237552),	-- Deathbound Shoulderpads
						i(237531),	-- Elite Shadowguard Legwraps
						i(238027),	-- Harvested Creephide Cord
						i(243306),	-- Interloper's Reinforced Sandals
						i(237525),	-- Irradiated Impurity Filter
						i(237565),	-- Kinetic Dunerunners
						i(237553),	-- Laboratory Test Slippers
						i(237557),	-- Reaper's Dreadbelt
						i(237562),	-- Time-Compressed Wristguards
						i(238031),	-- Veiled Manta Vest
						i(237540),	-- Winged Gamma Handlers
					}),
					filter(MAIL, {
						i(238032),	-- Acolyte's Infused Leggings
						i(237523),	-- Arcanotech Wrist-Matrix
						i(237536),	-- Bite of the Astral Wastes
						i(237543),	-- Chambersieve Waistcoat
						i(237554),	-- Clasp of Furious Freedom
						i(237537),	-- Claws of Failed Resistance
						i(237522),	-- Colossal Lifetether
						i(237539),	-- Deathspindle Talons
						i(237560),	-- Greaves of Shattered Space
						i(237529),	-- Harvested Attendant's Uniform
						i(243308),	-- Interloper's Chain Boots
						i(237555),	-- Pactbound Vambraces
						i(237544),	-- Royal Voidscale Gauntlets
						i(238030),	-- Voidhound Trainer's Boots
					}),
					filter(PLATE, {
						i(237535),	-- Artoshion's Abyssal Stare
						i(237532),	-- Beacons of False Righteousness
						i(238028),	-- Bone-Melted Faceplate
						i(237526),	-- Breached Containment Guards
						i(237564),	-- Darkrider Sabatons
						i(237545),	-- Discarded Nutrient Shackles
						i(237550),	-- Fresh Ethereal Fetters
						i(243307),	-- Interloper's Plated Sabatons
						i(238034),	-- Jak'tull's Intruder Stompers
						i(237528),	-- Manaforged Displacement Chassis
						i(237530),	-- Shrapnel-Fused Legguards
						i(237551),	-- Sterilized Expulsion Boots
						i(237563),	-- Ultradense Fission Girdle
						i(237561),	-- Yoke of Enveloping Hatred
					}),
				})),
			}),
		})),

		-- 11.2.5
		expansion(EXPANSION.TWW, patch(2,5), bubbleDownSelf({ ["timeline"] = { CREATED_11_2_5 } }, {
			header(HEADERS.LFGDungeon, 2831, {	-- The Emerald Nightmare
				d(DIFFICULTY.RAID.LFR, {
					filter(MAIL, {
						i(247539),	-- Greyed Dragonscale Coif
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					filter(MAIL, {
						i(247539),	-- Greyed Dragonscale Coif
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					filter(MAIL, {
						i(247539),	-- Greyed Dragonscale Coif
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					filter(MAIL, {
						i(247539),	-- Greyed Dragonscale Coif
					}),
				}),
			}),
			header(HEADERS.LFGDungeon, 2832, {	-- The Nighthold
				d(DIFFICULTY.RAID.LFR, {
					filter(CLOTH, {
						i(247434),	-- Chaos-Scarred Mantle
						i(247483),	-- Mantle of Prestidigitation
						i(247433),	-- Master Warmage's Leggings
						i(247432),	-- Nighthold Custodian's Hood
						i(247429),	-- Robes of Fluctuating Energy
						i(247468),	-- Scorpid Handler's Gloves
					}),
					filter(LEATHER, {
						i(247478),	-- Gloves of Synchronous Elements
						i(247442),	-- Gnawed Nightfallen Britches¨
						i(247444),	-- Mantle of the Torn Sky
						i(247446),	-- Nightborne Battle-Magus Hood
						i(247443),	-- Temporally Displaced Gloves
						i(247480),	-- Trousers of Cultivation
						i(247445),	-- Tunic of Unwavering Devotion
						i(247474),	-- Vintage Suramar Nobility Hat
					}),
					filter(MAIL, {
						i(247455),	-- Arcanochitin Hauberk
						i(247450),	-- Architect's Coif of Despair
						i(247476),	-- Hood of Fading Opportunity
						i(247487),	-- Netherbranded Shoulderpads
						i(247452),	-- Pauldrons of Warped Memory
						i(247451),	-- Pertinacious Legplates
						i(247449),	-- Sterilizer's Insulated Gauntlets
					}),
					filter(PLATE, {
						i(247485),	-- Breastplate of the Remembered King
						i(247479),	-- Bridgebreaker Gauntlets
						i(247462),	-- Chrono-Tempered Legplates
						i(247461),	-- Eventide Casque
						i(247459),	-- Gauntlets of Fractured Eons
						i(247463),	-- Shoulderguard of the Eclipse
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					filter(CLOTH, {
						i(247434),	-- Chaos-Scarred Mantle
						i(247483),	-- Mantle of Prestidigitation
						i(247433),	-- Master Warmage's Leggings
						i(247432),	-- Nighthold Custodian's Hood
						i(247429),	-- Robes of Fluctuating Energy
						i(247468),	-- Scorpid Handler's Gloves
					}),
					filter(LEATHER, {
						i(247478),	-- Gloves of Synchronous Elements
						i(247442),	-- Gnawed Nightfallen Britches
						i(247444),	-- Mantle of the Torn Sky
						i(247446),	-- Nightborne Battle-Magus Hood
						i(247443),	-- Temporally Displaced Gloves
						i(247480),	-- Trousers of Cultivation
						i(247445),	-- Tunic of Unwavering Devotion
						i(247474),	-- Vintage Suramar Nobility Hat
					}),
					filter(MAIL, {
						i(247455),	-- Arcanochitin Hauberk
						i(247450),	-- Architect's Coif of Despair
						i(247476),	-- Hood of Fading Opportunity
						i(247487),	-- Netherbranded Shoulderpads
						i(247452),	-- Pauldrons of Warped Memory
						i(247451),	-- Pertinacious Legplates
						i(247449),	-- Sterilizer's Insulated Gauntlets
					}),
					filter(PLATE, {
						i(247485),	-- Breastplate of the Remembered King
						i(247479),	-- Bridgebreaker Gauntlets
						i(247462),	-- Chrono-Tempered Legplates
						i(247461),	-- Eventide Casque
						i(247459),	-- Gauntlets of Fractured Eons
						i(247463),	-- Shoulderguard of the Eclipse
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					filter(CLOTH, {
						i(247434),	-- Chaos-Scarred Mantle
						i(247483),	-- Mantle of Prestidigitation
						i(247433),	-- Master Warmage's Leggings
						i(247432),	-- Nighthold Custodian's Hood
						i(247429),	-- Robes of Fluctuating Energy
						i(247468),	-- Scorpid Handler's Gloves
					}),
					filter(LEATHER, {
						i(247478),	-- Gloves of Synchronous Elements
						i(247442),	-- Gnawed Nightfallen Britches
						i(247444),	-- Mantle of the Torn Sky
						i(247446),	-- Nightborne Battle-Magus Hood
						i(247443),	-- Temporally Displaced Gloves
						i(247480),	-- Trousers of Cultivation
						i(247445),	-- Tunic of Unwavering Devotion
						i(247474),	-- Vintage Suramar Nobility Hat
					}),
					filter(MAIL, {
						i(247455),	-- Arcanochitin Hauberk
						i(247450),	-- Architect's Coif of Despair
						i(247476),	-- Hood of Fading Opportunity
						i(247487),	-- Netherbranded Shoulderpads
						i(247452),	-- Pauldrons of Warped Memory
						i(247451),	-- Pertinacious Legplates
						i(247449),	-- Sterilizer's Insulated Gauntlets
					}),
					filter(PLATE, {
						i(247485),	-- Breastplate of the Remembered King
						i(247479),	-- Bridgebreaker Gauntlets
						i(247462),	-- Chrono-Tempered Legplates
						i(247461),	-- Eventide Casque
						i(247459),	-- Gauntlets of Fractured Eons
						i(247463),	-- Shoulderguard of the Eclipse
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					filter(CLOTH, {
						i(247434),	-- Chaos-Scarred Mantle
						i(247483),	-- Mantle of Prestidigitation
						i(247433),	-- Master Warmage's Leggings
						i(247432),	-- Nighthold Custodian's Hood
						i(247429),	-- Robes of Fluctuating Energy
						i(247468),	-- Scorpid Handler's Gloves
					}),
					filter(LEATHER, {
						i(247478),	-- Gloves of Synchronous Elements
						i(247442),	-- Gnawed Nightfallen Britches
						i(247444),	-- Mantle of the Torn Sky
						i(247446),	-- Nightborne Battle-Magus Hood
						i(247443),	-- Temporally Displaced Gloves
						i(247480),	-- Trousers of Cultivation
						i(247445),	-- Tunic of Unwavering Devotion
						i(247474),	-- Vintage Suramar Nobility Hat
					}),
					filter(MAIL, {
						i(247455),	-- Arcanochitin Hauberk
						i(247450),	-- Architect's Coif of Despair
						i(247476),	-- Hood of Fading Opportunity
						i(247487),	-- Netherbranded Shoulderpads
						i(247452),	-- Pauldrons of Warped Memory
						i(247451),	-- Pertinacious Legplates
						i(247449),	-- Sterilizer's Insulated Gauntlets
					}),
					filter(PLATE, {
						i(247485),	-- Breastplate of the Remembered King
						i(247479),	-- Bridgebreaker Gauntlets
						i(247462),	-- Chrono-Tempered Legplates
						i(247461),	-- Eventide Casque
						i(247459),	-- Gauntlets of Fractured Eons
						i(247463),	-- Shoulderguard of the Eclipse
					}),
				}),
			}),
		})),
	}),
}));
