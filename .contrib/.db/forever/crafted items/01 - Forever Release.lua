---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, sharedData({ timeline = { TIMELINE.ADDED_1_60_1 } }, {
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
			i(250955),	-- Potion of Beast Slaying
			i(250954),	-- Potion of Elemental Purging
		}),
		filter(MISC, {
			i(279990),	-- Alchemy Laboratory
			i(279970),	-- Fermenter
			i(279956),	-- Mana Well
		}),
		filter(REAGENTS, {
			i(249409),	-- Cerulean Dye
			i(251290),	-- Legionite Bar
			i(249430),	-- Magenta Dye
			i(249410),	-- Sulfuric Acid
			i(249431),	-- Viridian Dye
		}),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			cl(PALADIN, {
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
			}),
			cl(WARRIOR, {
				i(273945),	-- Gauntlets of Glory
				i(273947),	-- Greaves of Glory
				i(273949),	-- Handguards of Glory
				i(273948),	-- Legguards of Glory
				i(273944),	-- Legplates of Glory
				i(273946),	-- Shoulders of Glory
				i(273951),	-- Sabatons of Glory
				i(273950),	-- Pauldrons of Glory
			}),
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
			i(277021),	-- Azure Skyforged Greaves
			i(277048),	-- Azure Skyforged Helm
			i(277020),	-- Azure Skyforged Legguards
			i(277049),	-- Azure Skyforged Pauldrons
			i(277017),	-- Azure Skyforged Wristguards
			i(250588),	-- Blessed Plate Gauntlet
			i(250601),	-- Breastplate of Salvation
			i(276995),	-- Cloudy Skyforged Chain
			i(276992),	-- Cloudy Skyforged Chainmail
			i(276994),	-- Cloudy Skyforged Gauntlets
			i(276997),	-- Cloudy Skyforged Greaves
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
			i(279263),	-- Depleted Thorium Sabatons
			i(250595),	-- Enriched Thorium Breastplate
			i(250597),	-- Enriched Thorium Helm
			i(250596),	-- Enriched Thorium Leggings
			i(250620),	-- Gemmed Copper Boots
			i(250482),	-- Glowing Copper Boots
			i(275622),	-- Goregasher Grips
			i(275624),	-- Goregasher Stompers
			i(275623),	-- Goregasher Support
			i(250504),	-- Guard's Boots
			i(250514),	-- Guard's Chain Belt
			i(250499),	-- Guard's Chain Helm
			i(250494),	-- Guard's Chain Leggings
			i(250509),	-- Guard's Gloves
			i(250529),	-- Guard's Silvered Chain Helm
			i(250524),	-- Guard's Silvered Chain Leggings
			i(250519),	-- Guard's Silvered Chain Shirt
			i(250538),	-- Hard Gold Gauntlet
			i(250550),	-- Justicar's Boots
			i(250570),	-- Justicar's Gauntlet
			i(250580),	-- Justicar's Pauldrons
			i(250565),	-- Justicar's Sabatons
			i(250575),	-- Justicar's Waistguard
			i(250585),	-- Justicar's Wristguards
			i(250546),	-- Officer's Boots
			i(250566),	-- Officer's Gauntlet
			i(250576),	-- Officer's Pauldrons
			i(250561),	-- Officer's Sabatons
			i(250571),	-- Officer's Waistguard
			i(250581),	-- Officer's Wristguards
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
			i(277672),	-- Rough Copper Chain Boots
			i(250547),	-- Sentinel's Boots
			i(250567),	-- Sentinel's Gauntlet
			i(250577),	-- Sentinel's Pauldrons
			i(250562),	-- Sentinel's Sabatons
			i(250572),	-- Sentinel's Waistguard
			i(250582),	-- Sentinel's Wristguards
			i(250543),	-- Shining Mithril Helm
			i(250544),	-- Shining Mithril Pants
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
			i(250610),	-- Mithril Claymore
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
	prof(COOKING, {
		n(COMMON_VENDOR_ITEMS, {
			i(10284, {	-- Simple Flour
				description = "Can be bought from Cooking Suppliers and Chefs around the world.",
			}),
			i(272941, {	-- Thick Logs
				description = "Can be bought from Cooking Suppliers and Chefs around the world.",
			}),
		}),
		filter(CONSUMABLES, {
			i(250067),	-- Bat Hachee
			i(250074),	-- Bear Brisket
			i(250070),	-- Bear Bruscitti
			i(250080),	-- Breakfast Omelette
			i(274971),	-- Briny Seafood Stew
			i(249874),	-- Calcified Smoothie
			i(250081),	-- Clam Linguine
			i(250069),	-- Flank au Poivre
			i(250078),	-- Giant Scrambled Eggs
			i(249873),	-- Mrrggl Smrrthle
			i(249865),	-- Peace Tea
			i(274976),	-- Plain Ol' Paletusk
			i(286152),	-- Plated Armorfish
			i(250075),	-- Prehistoric Pulled Raptor
			i(250073),	-- Raging Raptor Ribs
			i(250076),	-- Raptor Rouladen
			i(249867),	-- Root Tea
			i(249866),	-- Royal Tea
			i(249870),	-- Sage's Tea
			i(250065),	-- Savory Stag Sliders
			i(250068),	-- Savory Turtle Stew
			i(251525),	-- Savory Whimsyfin Delight
			i(249872),	-- Slimy Smoothie
			i(250066),	-- Soaring Pamplona
			i(249875),	-- Spicy Smoothie
			i(250071),	-- Steaming Stag Steak
			i(249869),	-- Sunny Tea
			i(267341),	-- Sweetpaw Jam
			i(250072),	-- Swiftstrike Steak
			i(250079),	-- Tasty Raptor Bites
			i(249868),	-- Triage Tea
			i(249871),	-- Venomous Smoothie
			i(249876),	-- Wicked Smoothie
		}),
		filter(MISC, {
			i(279981),	-- Basic Campfire Kit
			i(279957),	-- Cookie's Feast
			i(279974),	-- Expert Campfire Kit
			i(279982),	-- Iron Oven
			i(279961),	-- Journeyman Campfire Kit
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
			i(249443),	-- Totem of Ancestral Protection
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
	prof(ENGINEERING, {
		filter(AMMO, {
			-- Unknown
			i(274387),	-- Swiftfeather Arrow
			i(274388),	-- Swiftstrike Shot
		}),
		n(ARMOR, {
			i(280311),	-- Bent Goggles
			i(280308),	-- Clanking Cord
			i(280313),	-- Dented Goggles
			i(280310),	-- Floppy Goggles
			i(280307),	-- Gizmo Girdle
			i(260810),	-- SAF-T Disposable Parachute
			i(280312),	-- Stuckbutton Goggles
			i(280306),	-- Whimsical Waistwrap
			-- Unknown
			i(260829),	-- EZ-Thro Magnetic Displacer
			i(260828),	-- SAF-T Nitro Boosts
			i(260830),	-- SAF-T Teleport
		}),
		filter(MISC, {
			-- Bombs
			i(260795),	-- EZ-Thro Copper Bomb XL
			i(260793),	-- SAF-T Copper Bomb
			i(260792),	-- SAF-T Dynamite
			-- Misc
			i(274048),	-- 9-60 Battery Pack
			i(279989),	-- Anarchist's Workbench
			i(260807),	-- Compact Critter Carrier
			i(260823),	-- Dimensional Transporter - Mt. Hyjal
			i(260811),	-- Gnomish Army Knife
			i(269902),	-- Hoof-Shaped Foot Pedal
			i(260812),	-- Loot-A-Rang
			i(279950),	-- Reagent Bot
			i(279949),	-- Repair Bot
			i(210147),	-- Shredder Autosalvage Unit
			i(260827),	-- Stealthman 52
			i(260825),	-- Ultralight Goblin Glider
			i(260822),	-- Ultrasafe Rechargeable Battery
			-- Unknown
			-- Bombs
			i(260802),	-- EZ-Thro Bronze Mortar
			i(260817),	-- EZ-Thro Dark Bomb
			i(260803),	-- EZ-Thro Grenade
			i(260818),	-- EZ-Thro Mana Bomb
			i(260816),	-- EZ-Thro Thorium Grenade
			i(284868),	-- Holy Hand Grenade of Alterac
			i(260805),	-- SAF-T Bomb
			i(260797),	-- SAF-T Bronze Bomb
			i(260814),	-- SAF-T Clever Dynamite
			i(260798),	-- SAF-T Jumbo Dynamite
			i(260800),	-- Shafety Sheep
			i(260809),	-- Tru-Trigger Frag Bomb
			i(284869),	-- Unsanctified Grenade
			-- Fireworks
			i(21591),	-- Large Purple Rocket
			i(21717),	-- Large Purple Rocket Cluster
			i(21593),	-- Large White Rocket
			i(21719),	-- Large White Rocket Cluster
			i(21595),	-- Large Yellow Rocket
			i(21720),	-- Large Yellow Rocket Cluster
			i(21575),	-- Purple Rocket Cluster
			i(21560),	-- Small Purple Rocket
			i(21561),	-- Small White Rocket
			i(21562),	-- Small Yellow Rocket
			i(21577),	-- White Rocket Cluster
			i(21578),	-- Yellow Rocket Cluster
		}),
		filter(REAGENTS, {
			i(260801),	-- EZ-Thro Fireproof Fuse
			i(260794),	-- EZ-Thro Wrap
			i(260796),	-- No Slip SAF-T Padding
			i(260799),	-- SAF-T Bell
			i(260784),	-- SAF-T Tabs
			i(249432),	-- Sandpaper
			-- Unknown
			i(260815),	-- EZ-Thro Shell
			i(260808),	-- EZ-Thro Tru-Trigger
			i(260804),	-- SAF-T Casing
			i(260813),	-- SAF-T Tube
		}),
		filter(THROWN, {
			i(285276),	-- Satchel of Bronze Bombs
			i(285275),	-- Satchel of Copper Bombs
			i(285278),	-- Satchel of Dark Iron Bombs
			i(285277),	-- Satchel of Iron Bombs
		}),
		filter(TOYS, {
			i(269900),	-- Centaur Banner Deployment Device (TOY!)
		}),
		filter(TRINKET_F, {
			i(260806),	-- Emergency Field Cloak
			i(260824),	-- Gnomish Poultryizer
			-- Unknown
			i(260821),	-- EZ and SAF Field Transporter: Mt. Hyjal
			i(260819),	-- EZ-Thro Field Transporter: Gadgetzan
			i(260820),	-- SAF-T Emergency Ripper: Everlook
		}),
		n(WEAPONS, {
			-- Unknown
			i(279273),	-- Hyper Deluxe Sniper Rifle Mk XVII
		}),
		n(WEAPON_ENCHANTMENTS, {
			-- Unknown
			i(279272),	-- SAF-T Ultra Precision Scope
		}),
	}),
	prof(FIRST_AID, {
		i(255717),	-- Clever Poultice
		i(279968),	-- First Aid Kit
		i(279951),	-- Plague Doctor's Laboratory
		i(255715),	-- Potent Anti-Venom
		i(255716),	-- Simple Poultice
		i(279940),	-- Toxin Study
		i(255720),	-- Woolen Tourniquet
		-- Unknown
		i(255721),	-- Leather Tourniquet
		i(255719),	-- Powerful Poultice
		i(255718),	-- Superior Poultice
		i(255722),	-- Surgical Tourniquet
	}),
	prof(FISHING, {
		filter(MISC, {
			i(279967),	-- Fish Bowl
			i(279966),	-- Fishing Hut
			i(279965),	-- Fishing Rack
		}),
	}),
	prof(HERBALISM, {
		i(268415, {	-- Commonplace Herb Seeds
			description = "Gathered from Peacebloom and Silverleaf.",
		}),
		i(268416, {	-- Uncommon Herb Seeds
			description = "Gathered from Briarthorn.",
		}),
		n(COMMON_VENDOR_ITEMS, {
			i(277113, {	-- Apprentice's Herb Pouch
				description = "Can be bought from General Goods and Trade Supplies vendors around the world.",
			}),
		}),
		filter(MISC, {
			i(279964),	-- Greenhouse
			i(279962),	-- Incense Candle
			i(279947),	-- Seed Hybridizer
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			cl(DRUID, {
				i(273895),	-- Grovekeeper Boots
				i(273897),	-- Grovekeeper Gauntlets
				i(273885),	-- Grovekeeper Grips
				i(273893),	-- Grovekeeper Handguards
				i(273888),	-- Grovekeeper Kilt
				i(273896),	-- Grovekeeper Leggings
				i(273892),	-- Grovekeeper Legguards
				i(273890),	-- Grovekeeper Mantle
				i(273889),	-- Grovekeeper Mitts
				i(273894),	-- Grovekeeper Pauldrons
				i(273891),	-- Grovekeeper Sandals
				i(273886),	-- Grovekeeper Shoulderpads
				i(273898),	-- Grovekeeper Spaulders
				i(273887),	-- Grovekeeper Stompers
				i(273899),	-- Grovekeeper Treads
				i(273884),	-- Grovekeeper Trousers
			}),
			cl(HUNTER, {
				i(273901),	-- Wildstalker's Gauntlets
				i(273903),	-- Wildstalker's Greaves
				i(273900),	-- Wildstalker's Legguards
				i(273902),	-- Wildstalker's Spaulders
			}),
			cl(ROGUE, {
				i(273931),	-- Grimstitch Boots
				i(273929),	-- Grimstitch Gloves
				i(273928),	-- Grimstitch Pants
				i(273930),	-- Grimstitch Spaulders
			}),
			cl(SHAMAN, {
				i(276541),	-- Spiritcaller Boots
				i(273938),	-- Spiritcaller Epaulets
				i(273937),	-- Spiritcaller Gauntlets
				i(276539),	-- Spiritcaller Gloves
				i(273939),	-- Spiritcaller Greaves
				i(273933),	-- Spiritcaller Grips
				i(276538),	-- Spiritcaller Kilt
				i(273932),	-- Spiritcaller Leggings
				i(276540),	-- Spiritcaller Mantle
				i(273936),	-- Spiritcaller Pants
				i(273934),	-- Spiritcaller Spaulders
				i(273935),	-- Spiritcaller Treads
			}),
			filter(LEATHER, {
				i(277025),	-- Azure Gustwoven Belt
				i(277027),	-- Azure Gustwoven Boots
				i(277023),	-- Azure Gustwoven Bracers
				i(277024),	-- Azure Gustwoven Gloves
				i(277022),	-- Azure Gustwoven Harness
				i(277050),	-- Azure Gustwoven Hood
				i(277051),	-- Azure Gustwoven Spaulders
				i(277026),	-- Azure Gustwoven Trousers
				i(277029),	-- Azure Windraveled Armguards
				i(277052),	-- Azure Windraveled Cover
				i(277053),	-- Azure Windraveled Drapes
				i(277033),	-- Azure Windraveled Footwraps
				i(277028),	-- Azure Windraveled Jerkin
				i(277030),	-- Azure Windraveled Mitts
				i(277032),	-- Azure Windraveled Pants
				i(277031),	-- Azure Windraveled Strap
				i(252424),	-- Black Whelp Slippers
				i(252490),	-- Brawler's Leather Armor
				i(252428),	-- Brawler's Leather Belt
				i(252439),	-- Brawler's Leather Boots
				i(252512),	-- Brawler's Leather Helm
				i(252504),	-- Brawler's Leather Hood
				i(252516),	-- Brawler's Leather Legguards
				i(252500),	-- Brawler's Leather Pants
				i(252508),	-- Brawler's Leather Tunic
				i(277001),	-- Cloudy Gustwoven Belt
				i(277003),	-- Cloudy Gustwoven Boots
				i(276999),	-- Cloudy Gustwoven Bracers
				i(277000),	-- Cloudy Gustwoven Gloves
				i(276998),	-- Cloudy Gustwoven Harness
				i(277042),	-- Cloudy Gustwoven Hood
				i(277043),	-- Cloudy Gustwoven Spaulders
				i(277002),	-- Cloudy Gustwoven Trousers
				i(277005),	-- Cloudy Windraveled Armguards
				i(277044),	-- Cloudy Windraveled Cover
				i(277045),	-- Cloudy Windraveled Drapes
				i(277009),	-- Cloudy Windraveled Footwraps
				i(277004),	-- Cloudy Windraveled Jerkin
				i(277006),	-- Cloudy Windraveled Mitts
				i(277008),	-- Cloudy Windraveled Pants
				i(277007),	-- Cloudy Windraveled Strap
				i(252425),	-- Dark Leather Boots
				i(252434),	-- Defender's Leather Armor
				i(252430),	-- Defender's Leather Belt
				i(252441),	-- Defender's Leather Boots
				i(252455),	-- Defender's Leather Helm
				i(252447),	-- Defender's Leather Hood
				i(252457),	-- Defender's Leather Kilt
				i(252445),	-- Defender's Leather Pants
				i(252450),	-- Defender's Leather Tunic
				i(252449),	-- Hillman's Leather Boots
				i(252523),	-- Mender's Leather Belt
				i(252472),	-- Mender's Leather Boots
				i(252543),	-- Mender's Leather Bracers
				i(252530),	-- Mender's Leather Gloves
				i(252538),	-- Mender's Leather Shoulder
				i(252477),	-- Mender's Leather Waistguard
				i(252427),	-- Moonglow Boots
				i(252426),	-- Murloc Scale Shoes
				i(252459),	-- Prowler's Leather Belt
				i(252468),	-- Prowler's Leather Boots
				i(252539),	-- Prowler's Leather Bracers
				i(252524),	-- Prowler's Leather Gloves
				i(252534),	-- Prowler's Leather Shoulder
				i(252473),	-- Prowler's Leather Waistguard
				i(252461),	-- Skirmisher's Leather Belt
				i(252528),	-- Skirmisher's Leather Gloves
				i(252520),	-- Skulker's Leather Belt
				i(252469),	-- Skulker's Leather Boots
				i(252540),	-- Skulker's Leather Bracers
				i(252525),	-- Skulker's Leather Gloves
				i(252535),	-- Skulker's Leather Shoulder
				i(252474),	-- Skulker's Leather Waistguard
				i(252522),	-- Skycaller's Leather Belt
				i(252471),	-- Skycaller's Leather Boots
				i(252542),	-- Skycaller's Leather Bracers
				i(252529),	-- Skycaller's Leather Gloves
				i(252537),	-- Skycaller's Leather Shoulder
				i(252476),	-- Skycaller's Leather Waistguard
				i(252521),	-- Stalker's Leather Belt
				i(252526),	-- Stalker's Leather Gloves
				i(252492),	-- Stormrider's Leather Armor
				i(252432),	-- Stormrider's Leather Belt
				i(252443),	-- Stormrider's Leather Boots
				i(252514),	-- Stormrider's Leather Helm
				i(252506),	-- Stormrider's Leather Hood
				i(252518),	-- Stormrider's Leather Kilt
				i(252502),	-- Stormrider's Leather Pants
				i(252510),	-- Stormrider's Leather Tunic
				i(252552),	-- Tooled Leather Armor
				i(252435),	-- Totemic Leather Armor
				i(252431),	-- Totemic Leather Belt
				i(252442),	-- Totemic Leather Boots
				i(252456),	-- Totemic Leather Helm
				i(252448),	-- Totemic Leather Hood
				i(252458),	-- Totemic Leather Leggings
				i(252446),	-- Totemic Leather Pants
				i(252451),	-- Totemic Leather Tunic
				i(252491),	-- Trapper's Leather Armor
				i(252429),	-- Trapper's Leather Belt
				i(252440),	-- Trapper's Leather Boots
				i(252513),	-- Trapper's Leather Helm
				i(252505),	-- Trapper's Leather Hood
				i(252517),	-- Trapper's Leather Legguards
				i(252501),	-- Trapper's Leather Pants
				i(252509),	-- Trapper's Leather Tunic
				i(252460),	-- Warden's Leather Belt
				i(252470),	-- Warden's Leather Boots
				i(252541),	-- Warden's Leather Bracers
				i(252527),	-- Warden's Leather Gloves
				i(252536),	-- Warden's Leather Shoulder
				i(252475),	-- Warden's Leather Waistguard
				i(252493),	-- Wisdom's Leather Armor
				i(252433),	-- Wisdom's Leather Belt
				i(252444),	-- Wisdom's Leather Boots
				i(252515),	-- Wisdom's Leather Helm
				i(252507),	-- Wisdom's Leather Hood
				i(252519),	-- Wisdom's Leather Leggings
				i(252503),	-- Wisdom's Leather Pants
				i(252511),	-- Wisdom's Leather Tunic
				-- Unknown
				i(275612),	-- Bileblister Boots
				i(275610),	-- Bileblister Claws
				i(275611),	-- Bileblister Girdle
				i(252480),	-- Blue Suede Armor
				i(252481),	-- Blue Suede Belt
				i(252559),	-- Blue Suede Bracers
				i(252546),	-- Blue Suede Gloves
				i(252482),	-- Blue Suede Hat
				i(252478),	-- Blue Suede Pants
				i(252467),	-- Blue Suede Shoes
				i(252554),	-- Blue Suede Shoulder
				i(252494),	-- Brawler's Leather Gloves
				i(252483),	-- Dawn Armor
				i(252496),	-- Defender's Leather Gloves
				i(279254),	-- Elderwild Pants
				i(279252),	-- Elderwild Waistcord
				i(275615),	-- Hivethrasher's Boots
				i(275613),	-- Hivethrasher's Claws
				i(275614),	-- Hivethrasher's Girdle
				i(252486),	-- Ironfeather Leggings
				i(252561),	-- Living Crown
				i(252551),	-- Mender's Leather Gauntlets
				i(252533),	-- Mender's Leather Shoes
				i(279253),	-- Outlaw's Collar
				i(252547),	-- Prowler's Leather Gauntlets
				i(252465),	-- Prowler's Leather Shoes
				i(252548),	-- Skulker's Leather Gauntlets
				i(252531),	-- Skulker's Leather Shoes
				i(252550),	-- Skycaller's Leather Gauntlets
				i(252532),	-- Skycaller's Leather Shoes
				i(252498),	-- Stormrider's Leather Gloves
				i(252484),	-- Timbermaw Tunic
				i(252544),	-- Tooled Leather Belt
				i(252545),	-- Tooled Leather Boots
				i(252557),	-- Tooled Leather Bracers
				i(252555),	-- Tooled Leather Crown
				i(252558),	-- Tooled Leather Epaulets
				i(252553),	-- Tooled Leather Gauntlets
				i(252560),	-- Tooled Leather Pants
				i(252497),	-- Totemic Leather Gloves
				i(252495),	-- Trapper's Leather Gloves
				i(252485),	-- Warbear Helm
				i(252549),	-- Warden's Leather Gauntlets
				i(252466),	-- Warden's Leather Shoes
				i(252479),	-- Wicked Leather Boots
				i(252556),	-- Wicked Leather Shoulder
				i(252499),	-- Wisdom's Leather Gloves
			}),
			filter(MAIL, {
				i(252591),	-- Mender's Mail Belt
				i(252573),	-- Mender's Mail Bracers
				i(252579),	-- Mender's Mail Sabatons
				i(252569),	-- Mender's Mail Shoulder
				i(252590),	-- Skirmisher's Mail Belt
				i(252572),	-- Skirmisher's Mail Bracers
				i(252578),	-- Skirmisher's Mail Sabatons
				i(252568),	-- Skirmisher's Mail Shoulder
				i(252589),	-- Skycaller's Mail Belt
				i(252571),	-- Skycaller's Mail Bracers
				i(252577),	-- Skycaller's Mail Sabatons
				i(252567),	-- Skycaller's Mail Shoulder
				i(252588),	-- Stalker's Mail Belt
				i(252570),	-- Stalker's Mail Bracers
				i(252576),	-- Stalker's Mail Sabatons
				i(252566),	-- Stalker's Mail Shoulder
				-- Unknown
				i(252605),	-- Black Dragonscale Helm
				i(252604),	-- Blue Dragonscale Helm
				i(275620),	-- Broodwatcher's Belt
				i(275619),	-- Broodwatcher's Clenchers
				i(275621),	-- Broodwatcher's Treaders
				i(252575),	-- Charged Scorpid Belt
				i(252602),	-- Charged Scorpid Boots
				i(252593),	-- Charged Scorpid Bracers
				i(252596),	-- Charged Scorpid Gauntlets
				i(252581),	-- Charged Scorpid Helm
				i(252600),	-- Charged Scorpid Leggings
				i(252583),	-- Charged Scorpid Shoulder
				i(252598),	-- Charged Scorpid Vest
				i(279255),	-- Eternity Pauldrons
				i(252594),	-- Heavy Scorpid Boots
				i(252565),	-- Mender's Mail Boots
				i(252587),	-- Mender's Mail Gauntlets
				i(279257),	-- Mourning Handguards
				i(252606),	-- Pristine Scorpid Leggings
				i(252603),	-- Red Dragonscale Leggings
				i(275617),	-- Scalegut Belt
				i(275616),	-- Scalegut Clenchers
				i(275618),	-- Scalegut Treaders
				i(252564),	-- Skirmisher's Mail Boots
				i(252586),	-- Skirmisher's Mail Gauntlets
				i(252563),	-- Skycaller's Mail Boots
				i(252585),	-- Skycaller's Mail Gauntlets
				i(252562),	-- Stalker's Mail Boots
				i(252584),	-- Stalker's Mail Gauntlets
				i(252595),	-- Supple Scorpid Belt
				i(252574),	-- Supple Scorpid Boots
				i(252582),	-- Supple Scorpid Bracers
				i(252597),	-- Supple Scorpid Helm
				i(252580),	-- Supple Scorpid Leggings
				i(252601),	-- Supple Scorpid Sabatons
				i(252592),	-- Supple Scorpid Shoulder
				i(252599),	-- Supple Scorpid Vest
				i(279256),	-- Tranquil Wristguards
			}),
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(252453),	-- Forceful Heavy Armor Kit
			i(252437),	-- Forceful Medium Armor Kit
			i(252463),	-- Forceful Thick Armor Kit
			i(252452),	-- Mystic Heavy Armor Kit
			i(252436),	-- Mystic Medium Armor Kit
			i(252487),	-- Mystic Rugged Armor Kit
			i(252462),	-- Mystic Thick Armor Kit
			-- Unknown
			i(252488),	-- Forceful Rugged Armor Kit
			i(279258),	-- Wild Leather Armor Kit
		}),
		filter(BAGS, {
			i(277715),	-- Light Leather Reagent Bag
		}),
		filter(MISC, {
			i(279978),	-- Camp Tent
			i(279945),	-- Sewing Machine
			i(279941),	-- Tanning Rack
			i(34086),	-- Winter Boots
		}),
	}),
	prof(MINING, {
		n(COMMON_VENDOR_ITEMS, {
			i(277115, {	-- Apprentice's Mining Pack
				description = "Can be bought from General Goods and Trade Supplies vendors and Junior Mining Trainers around the world.",
			}),
		}),
		header(HEADERS.Spell, 2656, {
			i(249726, {	-- Azerothium Bar
				cost = { { "i", 249426, 2 }, { "i", 3857, 1 } },	-- 2x Pitchblende, 1x Coal
			}),
			i(251291, {	-- Heavy Thorium Bar
				cost = { { "i", 248815, 1 } },	-- Heavy Thorium Ore
			}),
		}),
		filter(MISC, {
			i(279960),	-- Lodestone
			i(279952),	-- Molten Foundry
			i(279948),	-- Rock Garden
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			cl(WARLOCK, {
				i(273943),	-- Demonheart Boots
				i(273941),	-- Demonheart Gloves
				i(273940),	-- Demonheart Leggings
				i(273942),	-- Demonheart Spaulders
			}),
			cl(MAGE, {
				i(273907),	-- Manaflare Boots
				i(273905),	-- Manaflare Gloves
				i(273906),	-- Manaflare Mantle
				i(273904),	-- Manaflare Pants
			}),
			cl(PRIEST, {
				i(273927),	-- Boots of Conviction
				i(273921),	-- Gloves of Conviction
				i(273925),	-- Handguards of Conviction
				i(273924),	-- Leggings of Conviction
				i(273922),	-- Mantle of Conviction
				i(273920),	-- Pants of Conviction
				i(273926),	-- Pauldrons of Conviction
				i(273923),	-- Treads of Conviction
			}),
			filter(CLOAKS, {
				-- Unknown
				i(279270),	-- Cloak of Earth and Sky
				i(279269),	-- Fel Cape
			}),
			filter(CLOTH, {
				i(277037),	-- Azure Stormsewn Cord
				i(277054),	-- Azure Stormsewn Cowl
				i(277035),	-- Azure Stormsewn Cuffs
				i(277055),	-- Azure Stormsewn Epaulets
				i(277036),	-- Azure Stormsewn Handwraps
				i(277038),	-- Azure Stormsewn Leggings
				i(277039),	-- Azure Stormsewn Shoes
				i(277034),	-- Azure Stormsewn Vest
				i(254027),	-- Black Handwraps
				i(254113),	-- Black Sandals
				i(254007),	-- Black Slippers
				i(254087),	-- Black Waistcord
				i(277013),	-- Cloudy Stormsewn Cord
				i(277046),	-- Cloudy Stormsewn Cowl
				i(277011),	-- Cloudy Stormsewn Cuffs
				i(277047),	-- Cloudy Stormsewn Epaulets
				i(277012),	-- Cloudy Stormsewn Handwraps
				i(277014),	-- Cloudy Stormsewn Leggings
				i(277015),	-- Cloudy Stormsewn Shoes
				i(277010),	-- Cloudy Stormsewn Vest
				i(254025),	-- Fiery Handwraps
				i(254111),	-- Fiery Sandals
				i(254005),	-- Fiery Slippers
				i(254085),	-- Fiery Waistcord
				i(253979),	-- Filigreed Flame Circlet
				i(253905),	-- Filigreed Flame Gown
				i(253941),	-- Filigreed Flame Leggings
				i(253983),	-- Filigreed Pearly Circlet
				i(253909),	-- Filigreed Pearly Gown
				i(253945),	-- Filigreed Pearly Leggings
				i(253975),	-- Filigreed Pristine Circlet
				i(253901),	-- Filigreed Pristine Gown
				i(253937),	-- Filigreed Pristine Leggings
				i(253981),	-- Filigreed Shadow Circlet
				i(253907),	-- Filigreed Shadow Gown
				i(253943),	-- Filigreed Shadow Leggings
				i(253985),	-- Filigreed Shining Circlet
				i(253911),	-- Filigreed Shining Gown
				i(253947),	-- Filigreed Shining Leggings
				i(253977),	-- Filigreed Silky Circlet
				i(253903),	-- Filigreed Silky Gown
				i(253939),	-- Filigreed Silky Leggings
				i(253893),	-- Flame Boots
				i(253953),	-- Flame Circlet
				i(253917),	-- Flame Gloves
				i(253965),	-- Flame Gown
				i(253991),	-- Flame Leggings
				i(253929),	-- Flame Sash
				i(254023),	-- Frothing Handwraps
				i(254109),	-- Frothing Sandals
				i(254003),	-- Frothing Slippers
				i(254083),	-- Frothing Waistcord
				i(254107),	-- Gilded Sandals
				i(254001),	-- Gilded Slippers
				i(254081),	-- Gilded Waistcord
				i(254029),	-- Golden Handwraps
				i(254115),	-- Golden Sandals
				i(254009),	-- Golden Slippers
				i(254089),	-- Golden Waistcord
				i(254065),	-- Netherflame Cuffs
				i(254053),	-- Netherflame Shoulders
				i(254063),	-- Netherfroth Cuffs
				i(254051),	-- Netherfroth Shoulders
				i(254061),	-- Nethergeld Cuffs
				i(254049),	-- Nethergeld Shoulders
				i(254071),	-- Netherlight Cuffs
				i(254059),	-- Netherlight Shoulders
				i(254067),	-- Netherpearl Cuffs
				i(254055),	-- Netherpearl Shoulders
				i(254069),	-- Nethershine Cuffs
				i(254057),	-- Nethershine Shoulders
				i(253885),	-- Novice Arcanist's Sash
				i(253887),	-- Novice Ardent's Sash
				i(253897),	-- Pearly Boots
				i(253957),	-- Pearly Circlet
				i(253921),	-- Pearly Gloves
				i(253969),	-- Pearly Gown
				i(253995),	-- Pearly Leggings
				i(253933),	-- Pearly Sash
				i(253889),	-- Pristine Boots
				i(253949),	-- Pristine Circlet
				i(253913),	-- Pristine Gloves
				i(253961),	-- Pristine Gown
				i(253987),	-- Pristine Leggings
				i(253925),	-- Pristine Sash
				i(254031),	-- Radiant Handwraps
				i(254117),	-- Radiant Sandals
				i(254011),	-- Radiant Slippers
				i(254091),	-- Radiant Waistcord
				i(254123),	-- Runecloth Cuffs
				i(253895),	-- Shadow Boots
				i(253955),	-- Shadow Circlet
				i(253919),	-- Shadow Gloves
				i(253967),	-- Shadow Gown
				i(253993),	-- Shadow Leggings
				i(253931),	-- Shadow Sash
				i(253899),	-- Shining Boots
				i(253959),	-- Shining Circlet
				i(253923),	-- Shining Gloves
				i(253971),	-- Shining Gown
				i(253997),	-- Shining Leggings
				i(253935),	-- Shining Sash
				i(253891),	-- Silky Boots
				i(253951),	-- Silky Circlet
				i(253915),	-- Silky Gloves
				i(253963),	-- Silky Gown
				i(253989),	-- Silky Leggings
				i(253927),	-- Silky Sash
				-- Unknown
				i(254043),	-- Black Cord
				i(254101),	-- Black Gloves
				i(253999),	-- Earthen Leggings
				i(254019),	-- Earthen Silk Cuffs
				i(254017),	-- Earthen Silk Gloves
				i(254015),	-- Earthen Silk Hood
				i(254033),	-- Earthen Silk Shoulders
				i(254013),	-- Earthen Silk Slippers
				i(254093),	-- Earthenweave Boots
				i(254077),	-- Earthenweave Cord
				i(254137),	-- Earthenweave Crown
				i(254131),	-- Earthenweave Cuffs
				i(254075),	-- Earthenweave Gloves
				i(254125),	-- Earthenweave Leggings
				i(254119),	-- Earthenweave Mantle
				i(254121),	-- Earthenweave Vest
				i(254041),	-- Fiery Cord
				i(254099),	-- Fiery Gloves
				i(254039),	-- Frothing Cord
				i(254097),	-- Frothing Gloves
				i(254129),	-- Ghostweave Boots
				i(254073),	-- Ghostweave Cord
				i(254135),	-- Ghostweave Hood
				i(254127),	-- Ghostweave Mantle
				i(254037),	-- Gilded Cord
				i(254095),	-- Gilded Gloves
				i(254021),	-- Gilded Handwraps
				i(254045),	-- Golden Cord
				i(254103),	-- Golden Gloves
				i(279267),	-- Mana-infused Cord
				i(254047),	-- Radiant Cord
				i(254105),	-- Radiant Gloves
				i(279268),	-- Rime-encrusted Boots
				i(279266),	-- Robes of Fiery Devastation
				i(275608),	-- Swarmtender's Cord
				i(275609),	-- Swarmtender's Footpads
				i(275607),	-- Swarmtender's Gloves
				i(275605),	-- Venomspew Cord
				i(275606),	-- Venomspew Footpads
				i(275604),	-- Venomspew Gloves
				-- Unknown (Changed.... But was NYI in classic)
				i(10039),	-- Stormcloth Boots
				i(10011),	-- Stormcloth Gloves
				i(10032),	-- Stormcloth Headband
				i(10010),	-- Stormcloth Pants
				i(10038),	-- Stormcloth Shoulders
				i(10020),	-- Stormcloth Vest
			}),
		}),
		filter(BAGS, {
			i(253664),	-- Linen Reagent Bag
			i(254035),	-- Mageweave Reagent Bag
			i(254079),	-- Runecloth Reagent Bag
			i(253973),	-- Silk Reagent Bag
			i(253667),	-- Woolen Reagent Bag
			-- Unknown
			i(254139),	-- Bottomless Reagent Bag
			i(279271),	-- Felblood Soul Bag
			i(254133),	-- Mooncloth Reagent Bag
		}),
		filter(MISC, {
			i(279973, {	-- Faction Banner [A]
				races = ALLIANCE_ONLY,
			}),
			i(279972, {	-- Faction Banner [H]
				races = HORDE_ONLY,
			}),
			i(34087),	-- Green Winter Clothes
			i(279959),	-- Loom
			i(34085),	-- Red Winter Clothes
			i(279943),	-- Spinning Wheel
		}),
	}),
}));
