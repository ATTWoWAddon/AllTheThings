---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, sharedData({ timeline = { TIMELINE.ADDED_1_60_1 }}, {
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(250951),	-- Caustic Smog Potion
			i(247240),	-- Discolored Healing Potion
			i(250952),	-- Disorienting Smog Potion
			i(250953),	-- Dragonfire Potion
			i(250328),	-- Elixir of Cunning
			i(250350),	-- Elixir of Ferocity
			i(250335),	-- Elixir of Greater Fortitude
			i(250347),	-- Elixir of Greater Spirit
			i(250353),	-- Elixir of Lesser Intellect
			i(250345),	-- Elixir of Lesser Spirit
			i(247755),	-- Elixir of Minor Force
			i(250344),	-- Elixir of Minor Spirit
			i(250343),	-- Elixir of Nature Power
			i(250338),	-- Elixir of Sages
			i(250351),	-- Elixir of the Grizzly
			i(250337),	-- Elixir of the Owl
			i(250329),	-- Elixir of the Phalanx
			i(250348),	-- Elixir of the Whale
			i(250336),	-- Elixir of Wicked Regeneration
			i(274273),	-- Flask of Natural Accuracy
			i(274274),	-- Flask of Natural Aggression
			i(274275),	-- Flask of Natural Precision
			i(274276),	-- Flask of Natural Swiftness
			i(250940),	-- Frenzy Potion
			i(250333),	-- Greater Cleric's Elixir
			i(247241),	-- Greater Discolored Healing Potion
			i(250941),	-- Greater Frenzy Potion
			i(250341),	-- Greater Mageblood Elixir
			i(250947),	-- Greater Mender's Potion
			i(250935),	-- Greater Spellblasting Potion
			i(250342),	-- Lesser Arcane Elixir
			i(250331),	-- Lesser Cleric's Elixir
			i(247239),	-- Lesser Discolored Healing Potion
			i(250939),	-- Lesser Frenzy Potion
			i(250340),	-- Lesser Mageblood Elixir
			i(250945),	-- Lesser Mender's Potion
			i(250933),	-- Lesser Spellblasting Potion
			i(250943),	-- Major Frenzy Potion
			i(250949),	-- Major Mender's Potion
			i(250937),	-- Major Spellblasting Potion
			i(250946),	-- Mender's Potion
			i(247754),	-- Minor Arcane Elixir
			i(250330),	-- Minor Cleric's Elixir
			i(250938),	-- Minor Frenzy Potion
			i(250339),	-- Minor Mageblood Elixir
			i(250944),	-- Minor Mender's Potion
			i(250932),	-- Minor Spellblasting Potion
			i(250950),	-- Potion of Venomous Blood
			i(250934),	-- Spellblasting Potion
			i(247242),	-- Superior Discolored Healing Potion
			-- Unknown
			i(250346),	-- Elixir of Spirit
			i(250354),	-- Elixir of Intellect
			i(250334),	-- Elixir of Fortitude
			i(250332),	-- Cleric's Elixir
			i(250349),	-- Elixir of Strength
			i(250327),	-- Draught of Predatory Senses
			i(250948),	-- Superior Mender's Potion
			i(250936),	-- Superior Spellblasting Potion
			i(250942),	-- Superior Frenzy Potion
			i(246948),	-- Distilled Firewater
			i(250955),	-- Potion of Beast Culling
			i(250954),	-- Potion of Elemental Siphoning
		}),
		filter(MISC, {
			i(279990),	-- Alchemy Laboratory
			i(279970),	-- Fermenter
			i(279956),	-- Mana Well
		}),
		filter(REAGENTS, {
			i(249409),	-- Cerulean Dyel
			i(251290),	-- Legionite Bar
			i(249430),	-- Magenta Dye
			i(249410),	-- Sulfuric Acid
			i(249431),	-- Viridian Dye
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(250506),	-- Acolyte's Boots
			i(250516),	-- Acolyte's Chain Belt
			i(250501),	-- Acolyte's Chain Helm
			i(250496),	-- Acolyte's Chain Leggings
			i(250491),	-- Acolyte's Chain Shirt
			i(250511),	-- Acolyte's Gloves
			i(250531),	-- Acolyte's Silvered Chain Helm
			i(250526),	-- Acolyte's Silvered Chain Leggings
			i(250521),	-- Acolyte's Silvered Chain Shirt
			i(277019),	-- Azure Skyforged Chain
			i(277016),	-- Azure Skyforged Chainmail
			i(277018),	-- Azure Skyforged Gauntlets
			i(277048),	-- Azure Skyforged Helm
			i(277020),	-- Azure Skyforged Legguards
			i(277049),	-- Azure Skyforged Pauldrons
			i(277017),	-- Azure Skyforged Wristguards
			i(276995),	-- Cloudy Skyforged Chain
			i(276992),	-- Cloudy Skyforged Chainmail
			i(276994),	-- Cloudy Skyforged Gauntlets
			i(277040),	-- Cloudy Skyforged Helm
			i(276996),	-- Cloudy Skyforged Legguards
			i(277041),	-- Cloudy Skyforged Pauldrons
			i(276993),	-- Cloudy Skyforged Wristguards
			i(275625),	-- Clutchlord's Grips
			i(275627),	-- Clutchlord's Stompers
			i(275626),	-- Clutchlord's Support
			i(250507),	-- Crusader's Boots
			i(250517),	-- Crusader's Chain Belt
			i(250502),	-- Crusader's Chain Helm
			i(250497),	-- Crusader's Chain Leggings
			i(250492),	-- Crusader's Chain Shirt
			i(250512),	-- Crusader's Gloves
			i(250532),	-- Crusader's Silvered Chain Helm
			i(250527),	-- Crusader's Silvered Chain Leggings
			i(250522),	-- Crusader's Silvered Chain Shirt
			i(250595),	-- Enriched Thorium Breastplate
			i(250597),	-- Enriched Thorium Helm
			i(273945),	-- Gauntlets of Glory
			i(250620),	-- Gemmed Copper Boots
			i(250482),	-- Glowing Copper Boots
			i(275622),	-- Goregasher Grips
			i(275624),	-- Goregasher Stompers
			i(275623),	-- Goregasher Support
			i(273947),	-- Greaves of Glory
			i(250504),	-- Guard's Boots
			i(250514),	-- Guard's Chain Belt
			i(250499),	-- Guard's Chain Helm
			i(250494),	-- Guard's Chain Leggings
			i(250509),	-- Guard's Gloves
			i(250529),	-- Guard's Silvered Chain Helm
			i(250524),	-- Guard's Silvered Chain Leggings
			i(250519),	-- Guard's Silvered Chain Shirt
			i(273949),	-- Handguards of Glory
			i(250538),	-- Hard Gold Gauntlet
			i(250550),	-- Justicar's Boots
			i(250570),	-- Justicar's Gauntlet
			i(250580),	-- Justicar's Pauldrons
			i(250565),	-- Justicar's Sabatons
			i(250575),	-- Justicar's Waistguard
			i(250585),	-- Justicar's Wristguards
			i(273914),	-- Justice Epaulets
			i(273909),	-- Justice Gauntlets
			i(273913),	-- Justice Gloves
			i(273911),	-- Justice Greaves
			i(273917),	-- Justice Handguards
			i(273908),	-- Justice Leggings
			i(273916),	-- Justice Legguards
			i(273912),	-- Justice Legplates
			i(273918),	-- Justice Pauldrons
			i(273919),	-- Justice Sabatons
			i(273910),	-- Justice Spaulders
			i(273915),	-- Justice Treads
			i(273948),	-- Legguards of Glory
			i(273944),	-- Legplates of Glory
			i(250546),	-- Officer's Boots
			i(250566),	-- Officer's Gauntlet
			i(250576),	-- Officer's Pauldrons
			i(250561),	-- Officer's Sabatons
			i(250571),	-- Officer's Waistguard
			i(250581),	-- Officer's Wristguards
			i(273950),	-- Pauldrons of Glory
			i(250549),	-- Prefect's Boots
			i(250569),	-- Prefect's Gauntlet
			i(250579),	-- Prefect's Pauldrons
			i(250564),	-- Prefect's Sabatons
			i(250574),	-- Prefect's Waistguard
			i(250584),	-- Prefect's Wristguards
			i(250505),	-- Protector's Boots
			i(250515),	-- Protector's Chain Belt
			i(250500),	-- Protector's Chain Helm
			i(250495),	-- Protector's Chain Leggings
			i(250490),	-- Protector's Chain Shirt
			i(250510),	-- Protector's Gloves
			i(250530),	-- Protector's Silvered Chain Helm
			i(250525),	-- Protector's Silvered Chain Leggings
			i(250520),	-- Protector's Silvered Chain Shirt
			i(273951),	-- Sabatons of Glory
			i(250547),	-- Sentinel's Boots
			i(250567),	-- Sentinel's Gauntlet
			i(250577),	-- Sentinel's Pauldrons
			i(250562),	-- Sentinel's Sabatons
			i(250572),	-- Sentinel's Waistguard
			i(250582),	-- Sentinel's Wristguards
			i(250543),	-- Shining Mithril Helm
			i(250544),	-- Shining Mithril Pants
			i(273946),	-- Shoulders of Glory
			i(250483),	-- Sterling Silver Boots
			i(250487),	-- Sterling Silver Breastplate
			i(250485),	-- Sterling Silver Gauntlet
			i(250484),	-- Sterling Silver Leggings
			i(250486),	-- Sterling Silver Shoulders
			i(250621),	-- Strange Copper Boots
			i(250503),	-- Veteran's Boots
			i(250513),	-- Veteran's Chain Belt
			i(250498),	-- Veteran's Chain Helm
			i(250493),	-- Veteran's Chain Leggings
			i(250488),	-- Veteran's Chain Shirt
			i(250508),	-- Veteran's Gloves
			i(250528),	-- Veteran's Silvered Chain Helm
			i(250523),	-- Veteran's Silvered Chain Leggings
			i(250518),	-- Veteran's Silvered Chain Shirt
			i(250548),	-- Warder's Boots
			i(250568),	-- Warder's Gauntlet
			i(250578),	-- Warder's Pauldrons
			i(250563),	-- Warder's Sabatons
			i(250573),	-- Warder's Waistguard
			i(250583),	-- Warder's Wristguards
			-- Unknown
			i(279265),	-- Azerothium Legplates
			i(250592),	-- Blessed Plate Belt
			i(250587),	-- Blessed Plate Boots
			i(250590),	-- Blessed Plate Bracers
			i(250594),	-- Blessed Plate Chest
			i(250593),	-- Blessed Plate Helm
			i(250591),	-- Blessed Plate Leggings
			i(250586),	-- Blessed Plate Pauldrons
			i(250598),	-- Champion's Legplates
			i(250489),	-- Guard's Chain Shirt
			i(250534),	-- Hard Gold Boots
			i(250535),	-- Hard Gold Bracers
			i(250537),	-- Hard Gold Coif
			i(250533),	-- Hard Gold Cuirass
			i(250536),	-- Hard Gold Leggings
			i(250539),	-- Hard Gold Pauldrons
			i(279264),	-- Heavy Thorium Gauntlets
			i(250589),	-- Imperial Plate Gauntlets
			i(250560),	-- Justicar's Belt
			i(250555),	-- Justicar's Gloves
			i(250600),	-- Martyr's Legplates
			i(250556),	-- Officer's Belt
			i(250551),	-- Officer's Gloves
			i(250559),	-- Prefect's Belt
			i(250554),	-- Prefect's Gloves
			i(250557),	-- Sentinel's Belt
			i(250552),	-- Sentinel's Gloves
			i(250542),	-- Shining Mithril Boots
			i(250540),	-- Shining Mithril Breastplate
			i(250545),	-- Shining Mithril Gauntlet
			i(250541),	-- Shining Mithril Pauldrons
			i(250599),	-- Stalwart Helm
			i(250558),	-- Warder's Belt
			i(250553),	-- Warder's Gloves
		}),
		filter(MISC, {
			i(279988),	-- Anvil
			i(279955),	-- Master Forge
			i(279944),	-- Sharpening Wheel
		}),
		n(WEAPONS, {
			i(250618),	-- Bagh Nakh
			i(250616),	-- Bold Dirk
			i(250602),	-- Brass Knuckles
			i(250606),	-- Iron Morningstar
			i(250619),	-- Legionite Glaive
			i(250608),	-- Mithril Warhammer
			i(250617),	-- Stormcarver
			i(250614),	-- Thorium Cestus
			i(250613),	-- Thorium Greatmace
			-- Unknown
			i(285281),	-- Arcanite Blacksmith Hammer
			i(250603),	-- Bronze Dory
			i(250612),	-- Charged Mithril Battleaxe
			i(285279),	-- Cracked Blacksmith Hammer
			i(279262),	-- Evergreen Shield
			i(279260),	-- Forest Defender's Axe
			i(279261),	-- Greenhammer
			i(250604),	-- Iron Fists
			i(279259),	-- Ironwood Blade
			i(285280),	-- Mithril Blacksmith Hammer
			i(250609),	-- Mithril Claws
			i(250607),	-- Mithril Shortsword
			i(250611),	-- Mithril Stiletto
			i(250605),	-- Steel Spear
			i(250615),	-- Thorium Poleaxe
		}),
	}),
	prof(ENCHANTING, {
		filter(REAGENTS, {
			i(247786),	-- Mote of Magic
		}),
		filter(RELICS_F, {
			i(220606),	-- Idol of the Dream
			i(228175),	-- Libram of Holy Alacrity
			i(249442),	-- Libram of Invocation
			i(249396),	-- Mystic Mushroom
			i(249398),	-- Polished Driftwood Icon
			i(249441),	-- Talons of Wrath
			i(249397),	-- Tenets of the Silver Hand
			i(249443),	-- Totem of Ancestral Protectio
			i(228176),	-- Totem of Thunder
			-- Unknown
			i(279250),	-- Idol of Swiftness
			i(279251),	-- Idol of the Ursine Twins
			i(279248),	-- Libram of Infusion
			i(279247),	-- Steadfast Libram
			i(279249),	-- Totem of Urgency
		}),
		filter(MISC, {
			i(279987),	-- Arcane Forge
			i(279985),	-- Arcane Salvager
			i(279976),	-- Enchanted Lute
		}),
		filter(TRINKET_F, {
			-- Unknown
			i(249473),	-- Dormant Heart of the Mountain
			i(249469),	-- Frozen Heart of the Mountain
			i(249470),	-- Molten Heart of the Mountain
		}),
		n(WEAPONS, {
			i(249385),	-- Brilliant Wand
			i(249454),	-- Dreamstaff
			i(249392),	-- Glimmering Staff
			i(247789),	-- Novice's Practice Wand
			i(249394),	-- Orb of Mystic Insight
			i(249395),	-- Orb of Souls
			i(249453),	-- Radiant Staff
			i(249393),	-- Soulstaff
			i(249455),	-- Truesilver Conduit
			i(249144),	-- Twisted Nether Wand
			i(249456),	-- Twisting Essence Jar
			-- unknown
			i(249234),	-- Dreambough Wand
			i(249237),	-- Greater Eternal Wand
			i(249232),	-- Lesser Eternal Wand
			i(279246),	-- Torch of Light
		}),
	}),
}));
