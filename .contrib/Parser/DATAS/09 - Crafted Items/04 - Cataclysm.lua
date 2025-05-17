---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
-- Bloodied Crafted Gear was added with Cataclysm and then removed from the game after Firelands was released.
-- In Classic, these items were not removed from the game at all.
local function bloodied(t)
	-- #if ANYCLASSIC
	t.timeline = { ADDED_4_0_3_LAUNCH };
	-- #else
	t.timeline = { ADDED_4_0_3_LAUNCH, REMOVED_4_2_0 };
	-- #endif
	return t;
end

-- Bloodthirsty Crafted Gear was added with Firelands and then removed from the game after Dragon Soul was released.
-- In Classic, these items were not removed from the game at all.
local function bloodthirsty(t)
	-- #if ANYCLASSIC
	t.timeline = { ADDED_4_2_0 };
	-- #else
	t.timeline = { ADDED_4_2_0, REMOVED_4_3_0 };
	-- #endif
	return applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, t);
end

local function moltenfront(t)
	t.timeline = { ADDED_4_2_0 };
	return applyclassicphase(CATA_PHASE_MOLTEN_FRONT, t);
end
local function firelands(t)
	t.timeline = { ADDED_4_2_0 };
	return applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, t);
end
local function dragonsoul(t)
	t.timeline = { ADDED_4_3_0 };
	return applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, t);
end

root(ROOTS.Craftables, expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	prof(ALCHEMY, {
		filter(CONSUMABLES, {
			i(65460),	-- Big Cauldron of Battle
			i(62288),	-- Cauldron of Battle
			i(58142),	-- Deathblood Venom
			i(67415),	-- Draught of War
			i(58090),	-- Earthen Potion
			i(58093),	-- Elixir of Deep Earth
			i(58094),	-- Elixir of Impossible Accuracy
			i(58144),	-- Elixir of Mighty Speed
			i(58092),	-- Elixir of the Cobra
			i(58148),	-- Elixir of the Master
			i(58089),	-- Elixir of the Naga
			i(58149, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_5_0_4}}),	-- Flask of Enhancement
			i(67438),	-- Flask of Flowing Water
			i(58085),	-- Flask of Steelskin
			i(58086),	-- Flask of the Draconic Mind
			i(58087),	-- Flask of the Winds
			i(58088),	-- Flask of Titanic Strength
			i(58084),	-- Ghost Elixir
			i(58146),	-- Golemblood Potion
			i(57193),	-- Mighty Rejuvenation Potion
			i(57099),	-- Mysterious Potion
			i(57191),	-- Mythical Healing Potion
			i(57192),	-- Mythical Mana Potion
			i(57194),	-- Potion of Concentration
			i(58487),	-- Potion of Deepholm
			i(58489),	-- Potion of Illusion
			i(58145),	-- Potion of the Tol'vir
			i(58488, {	-- Potion of Treasure Finding
				-- #if AFTER 6.0.3
				["description"] = "Treasures from Cataclysm dungeons have been nerfed. Still viable farming mobs in raids and the open world.",
				-- #endif
				["group"] = { i(67539) },	-- Tiny Treasure Chest
			}),
			i(58143),	-- Prismatic Elixir
			i(58091),	-- Volcanic Potion
		}),
		filter(MOUNTS, {
			ach(5749, {	-- Vial of the Sands
				["provider"] = { "i", 65891 },	-- Vial of the Sands
			}),
			i(65891),	-- Sandstone Drake (MOUNT!)
		}),
		filter(REAGENTS, {
			i(56850),	-- Deepstone Oil
			i(51950),	-- Pyrium Bar
			i(52303),	-- Shadowspirit Diamond
			i(58480, {	-- Truegold
				["description"] = "Crafted through Transmutation.",
			}),
		}),
		filter(REAGENTS, sharedData({
			["sharedDescription"] = "This reagent is most reliably obtained through Transmutation.",
		}, {
			i(52195),	-- Amberjewel
			i(52194),	-- Demonseye
			i(52192),	-- Dream Emerald
			i(52193),	-- Ember Topaz
			i(52190),	-- Inferno Ruby
			i(52191),	-- Ocean Sapphire
		})),
		filter(TRINKET_F, {
			i(58483),	-- Lifebound Alchemist Stone
			i(68776, {["timeline"] = {ADDED_4_0_6}}),	-- Quicksilver Alchemist Stone
			i(68777, {["timeline"] = {ADDED_4_0_6}}),	-- Vibrant Alchemist Stone
			i(68775, {["timeline"] = {ADDED_4_0_6}}),	-- Volatile Alchemist Stone
		}),
	}),
	prof(ARCHAEOLOGY, {
		i(87399, {["timeline"] = {ADDED_5_0_4}}),	-- Restored Artifact
		i(64397),	-- Tol'vir Hieroglyphic
		header(HEADERS.Currency, ARCH_CURRENCY_TOLVIR, sharedData({["cost"]={{"c",ARCH_CURRENCY_TOLVIR,50}}},{ -- TODO: someone can add different fragment costs within as needed
			["provider"] = { "o", 207190 },	-- Tol'vir Archaeology Find
			["maps"] = { ULDUM },
			["groups"] = {
				i(64657, {	-- Canopic Jar
					i(67538),	-- Recipe: Vial of the Sands (RECIPE!)
				}),
				i(64652),	-- Castle of Sand
				i(64653),	-- Cat Statue with Emerald Eyes
				i(60847),	-- Crawling Claw (PET!)
				i(64656),	-- Engraved Scimitar Hilt
				i(64881),	-- Pendant of the Scarab Storm (TOY!)
				i(64904),	-- Ring of the Boy Emperor
				i(64885),	-- Scimitar of the Sirocco
				i(64658),	-- Sketch of a Desert Palace
				i(64654),	-- Soapstone Scarab Necklace
				i(64880),	-- Staff of Ammunae
				i(64655),	-- Tiny Oasis Mosaic
				i(64883),	-- Ultramarine Qiraji Battle Tank (MOUNT!)
			},
		})),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			bloodied(i(55073)),	-- Bloodied Pyrium Belt
			bloodied(i(55074)),	-- Bloodied Pyrium Boots
			bloodied(i(55071)),	-- Bloodied Pyrium Bracers
			bloodied(i(55078)),	-- Bloodied Pyrium Breastplate
			bloodied(i(55072)),	-- Bloodied Pyrium Gauntlets
			bloodied(i(55077)),	-- Bloodied Pyrium Helm
			bloodied(i(55076)),	-- Bloodied Pyrium Legguards
			bloodied(i(55075)),	-- Bloodied Pyrium Shoulders
			bloodthirsty(i(70018)),	-- Bloodthirsty Ornate Pyrium Belt
			bloodthirsty(i(70013)),	-- Bloodthirsty Ornate Pyrium Boots
			bloodthirsty(i(70019)),	-- Bloodthirsty Ornate Pyrium Bracers
			bloodthirsty(i(70012)),	-- Bloodthirsty Ornate Pyrium Breastplate
			bloodthirsty(i(70014)),	-- Bloodthirsty Ornate Pyrium Gauntlets
			bloodthirsty(i(70015)),	-- Bloodthirsty Ornate Pyrium Helm
			bloodthirsty(i(70016)),	-- Bloodthirsty Ornate Pyrium Legguards
			bloodthirsty(i(70017)),	-- Bloodthirsty Ornate Pyrium Shoulders
			bloodthirsty(i(70010)),	-- Bloodthirsty Pyrium Belt
			bloodthirsty(i(70005)),	-- Bloodthirsty Pyrium Boots
			bloodthirsty(i(70011)),	-- Bloodthirsty Pyrium Bracers
			bloodthirsty(i(70004)),	-- Bloodthirsty Pyrium Breastplate
			bloodthirsty(i(70006)),	-- Bloodthirsty Pyrium Gauntlets
			bloodthirsty(i(70007)),	-- Bloodthirsty Pyrium Helm
			bloodthirsty(i(70008)),	-- Bloodthirsty Pyrium Legguards
			bloodthirsty(i(70009)),	-- Bloodthirsty Pyrium Shoulders
			dragonsoul(i(71992)),	-- Bracers of Destructive Strength
			i(55060),	-- Elementium Deathplate
			i(55061),	-- Elementium Girdle of Pain
			firelands(i(69948)),	-- Emberforged Elementium Boots
			firelands(i(69937)),	-- Eternal Elementium Handguards
			firelands(i(69936)),	-- Fists of Fury
			dragonsoul(i(71984)),	-- Foundations of Courage
			i(55059),	-- Hardened Elementium Girdle
			i(55058),	-- Hardened Elementium Hauberk
			i(54853),	-- Hardened Obsidium Belt
			i(54854),	-- Hardened Obsidium Boots
			i(54850),	-- Hardened Obsidium Bracers
			i(55024),	-- Hardened Obsidium Breastplate
			i(54852),	-- Hardened Obsidium Gauntlets
			i(55023),	-- Hardened Obsidium Helm
			i(55022),	-- Hardened Obsidium Legguards
			i(54876),	-- Hardened Obsidium Shoulders
			firelands(i(69938)),	-- Holy Flame Gauntlets
			i(55063),	-- Light Elementium Belt
			i(55062),	-- Light Elementium Chestguard
			firelands(i(69947)),	-- Mirrored Boots
			bloodied(i(55081)),	-- Ornate Pyrium Belt
			bloodied(i(55082)),	-- Ornate Pyrium Boots
			bloodied(i(55079)),	-- Ornate Pyrium Bracers
			bloodied(i(55086)),	-- Ornate Pyrium Breastplate
			bloodied(i(55080)),	-- Ornate Pyrium Gauntlets
			bloodied(i(55085)),	-- Ornate Pyrium Helm
			bloodied(i(55084)),	-- Ornate Pyrium Legguards
			bloodied(i(55083)),	-- Ornate Pyrium Shoulders
			dragonsoul(i(71982)),	-- Pyrium Legplates of Purified Evil
			i(55027),	-- Redsteel Belt
			i(55028),	-- Redsteel Boots
			i(55025),	-- Redsteel Bracers
			i(55032),	-- Redsteel Breastplate
			i(55026),	-- Redsteel Gauntlets
			i(55031),	-- Redsteel Helm
			i(55030),	-- Redsteel Legguards
			i(55029),	-- Redsteel Shoulders
			dragonsoul(i(71991)),	-- Soul Redeemer Bracers
			i(55035),	-- Stormforged Belt
			i(55036),	-- Stormforged Boots
			i(55033),	-- Stormforged Bracers
			i(55040),	-- Stormforged Breastplate
			i(55034),	-- Stormforged Gauntlets
			i(55039),	-- Stormforged Helm
			i(55038),	-- Stormforged Legguards
			i(55037),	-- Stormforged Shoulders
			dragonsoul(i(71993)),	-- Titanguard Wristplates
			dragonsoul(i(71983)),	-- Unstoppable Destroyer's Legplates
			dragonsoul(i(75118)),	-- Vicious Ornate Pyrium Belt
			dragonsoul(i(75132)),	-- Vicious Ornate Pyrium Boots
			dragonsoul(i(75125)),	-- Vicious Ornate Pyrium Bracers
			dragonsoul(i(75128)),	-- Vicious Ornate Pyrium Breastplate
			dragonsoul(i(75121)),	-- Vicious Ornate Pyrium Gauntlets
			dragonsoul(i(75129)),	-- Vicious Ornate Pyrium Helm
			dragonsoul(i(75133)),	-- Vicious Ornate Pyrium Legguards
			dragonsoul(i(75134)),	-- Vicious Ornate Pyrium Shoulders
			dragonsoul(i(75123)),	-- Vicious Pyrium Belt
			dragonsoul(i(75120)),	-- Vicious Pyrium Boots
			dragonsoul(i(75124)),	-- Vicious Pyrium Bracers
			dragonsoul(i(75135)),	-- Vicious Pyrium Breastplate
			dragonsoul(i(75122)),	-- Vicious Pyrium Gauntlets
			dragonsoul(i(75126)),	-- Vicious Pyrium Helm
			dragonsoul(i(75136)),	-- Vicious Pyrium Legguards
			dragonsoul(i(75119)),	-- Vicious Pyrium Shoulders
			firelands(i(69946)),	-- Warboots of Mighty Lords
		}),
		filter(MISC, {
			i(55054),	-- Ebonsteel Belt Buckle
			i(65365),	-- Folded Obsidium
			i(65358, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_5_0_4}}),	-- Elementium Rod
			i(55055),	-- Elementium Shield Spike
			i(55053),	-- Obsidium Skeleton Key
			i(55056),	-- Pyrium Shield Spike
			i(55057),	-- Pyrium Weapon Chain
		}),
		n(WEAPONS, {
			moltenfront(i(70155)),	-- Brainsplinter
			i(55044),	-- Cold-Forged Shank
			i(55043),	-- Decapitator's Razor
			i(55067),	-- Elementium Bonesplitter
			i(55069),	-- Elementium Earthguard
			i(67602),	-- Elementium Gutslicer
			i(55065),	-- Elementium Hammer
			i(55066),	-- Elementium Poleaxe
			i(55068),	-- Elementium Shank
			i(55064),	-- Elementium Spellblade
			i(55070),	-- Elementium Stormshield
			moltenfront(i(70158)),	-- Elementium-Edged Scalper
			i(55045),	-- Fire-Etched Dagger
			i(67605),	-- Forged Elementium Mindcrusher
			i(55041),	-- Hardened Obsidium Shield
			i(55046),	-- Lifeforce Hammer
			moltenfront(i(70157)),	-- Lightforged Elementium Hammer
			moltenfront(i(70164)),	-- Masterwork Elementium Deathblade
			moltenfront(i(70156)),	-- Masterwork Elementium Spellblade
			i(55246),	-- Obsidium Bladespear
			i(55052),	-- Obsidium Executioner
			moltenfront(i(70162)),	-- Pyrium Spellward
			i(55042),	-- Stormforged Shield
			moltenfront(i(70163)),	-- Unbreakable Guardian
			moltenfront(i(70165)),	-- Witch-Hunter's Harvester
		}),
	}),
	prof(COOKING, {
		i(62661),	-- Baked Rockfish
		i(62665),	-- Basilisk Liverdog
		i(62670),	-- Beer-Basted Crocolisk
		i(62668),	-- Blackbelly Sushi
		i(62676),	-- Blackened Surprise
		i(62289),	-- Broiled Dragon Feast
		i(62655),	-- Broiled Mountain Trout
		i(62680),	-- Chocolate Cookie
		i(62664),	-- Crocolisk Au Gratin
		i(62790),	-- Darkbrew Lager
		i(62666),	-- Delicious Sagefish Tail
		i(62673),	-- Feathered Lure
		i(62677),	-- Fish Fry
		i(62649),	-- Fortune Cookie
		i(62662),	-- Grilled Dragon
		i(62659),	-- Hearty Seafood Soup
		i(62674),	-- Highland Spirits
		i(62654),	-- Lavascale Fillet
		i(62663),	-- Lavascale Minestrone
		i(62651),	-- Lightly Fried Lurker
		i(62657),	-- Lurker Lunch
		i(62667),	-- Mushroom Sauce Mudfish
		i(62660),	-- Pickled Guppy
		i(62653),	-- Salted Eye
		i(68687, {["timeline"] = {ADDED_4_0_6}}),	-- Scalding Murglesnout
		i(62290),	-- Seafood Magnifique Feast
		i(62652),	-- Seasoned Crab
		i(62671),	-- Severed Sagefish Head
		i(62669),	-- Skewered Eel
		i(62672),	-- South Island Iced Tea
		i(62675),	-- Starfire Espresso
		i(62658),	-- Tender Baked Turtle
		i(62656),	-- Whitecrest Gumbo
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(52719),	-- Greater Celestial Essence
			i(52721),	-- Heavenly Shard
			i(52555),	-- Hypnotic Dust
			i(52718),	-- Lesser Celestial Essence
			i(52722),	-- Maelstrom Crystal
			i(52720),	-- Small Heavenly Shard
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(52781),	-- Enchant Boots - Assassin's Step
			i(52743),	-- Enchant Boots - Earthen Vitality
			i(52750),	-- Enchant Boots - Haste
			i(52782),	-- Enchant Boots - Lavawalker
			i(52757),	-- Enchant Boots - Major Agility
			i(52771),	-- Enchant Boots - Mastery
			i(52769),	-- Enchant Boots - Precision
			i(68784),	-- Enchant Bracer - Agility
			i(52752),	-- Enchant Bracer - Critical Strike
			i(52770),	-- Enchant Bracer - Exceptional Versatility
			i(52778),	-- Enchant Bracer - Greater Critical Strike
			i(52772),	-- Enchant Bracer - Greater Haste
			i(52785),	-- Enchant Bracer - Greater Speed
			i(68785),	-- Enchant Bracer - Major Strength
			i(68786),	-- Enchant Bracer - Mighty Intellect
			i(52766),	-- Enchant Bracer - Precision
			i(52746),	-- Enchant Bracer - Speed
			i(52763),	-- Enchant Bracer - Superior Dodge
			i(52765),	-- Enchant Chest - Exceptional Versatility
			i(52780),	-- Enchant Chest - Greater Stamina
			i(52758),	-- Enchant Chest - Mighty Armor / CATA: Mighty Resilience
			i(52744),	-- Enchant Chest - Mighty Stats
			i(52779),	-- Enchant Chest - Peerless Stats
			i(52751),	-- Enchant Chest - Stamina
			i(52764),	-- Enchant Cloak - Critical Strike
			i(52777),	-- Enchant Cloak - Greater Critical Strike
			i(52773),	-- Enchant Cloak - Greater Intellect
			i(52753),	-- Enchant Cloak - Intellect
			i(52745),	-- Enchant Cloak - Lesser Power
			i(52767),	-- Enchant Cloak - Protection
			i(52756),	-- Enchant Gloves - Exceptional Strength
			i(52759),	-- Enchant Gloves - Greater Haste
			i(52784),	-- Enchant Gloves - Greater Mastery
			i(52749),	-- Enchant Gloves - Haste
			i(52687),	-- Enchant Gloves - Mastery
			i(52783),	-- Enchant Gloves - Mighty Strength
		}),
		filter(BATTLE_PETS, {
			i(67274),	-- Enchanted Lantern (PET!)
			i(67275),	-- Magic Lamp (PET!)
		}),
		filter(ILLUSIONS, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
			i(138791, {	-- Tome of Illusions: Cataclysm
				ill(4098),	-- Windwalk (ILLUSION!)
				ill(4084),	-- Heartsong (ILLUSION!)
				ill(5867),	-- Light of the Earth-Warder (ILLUSION!)
			}),
			i(138792, {	-- Tome of Illusions: Elemental Lords
				ill(4067),	-- Avalanche (ILLUSION!)
				ill(4099),	-- Landslide (ILLUSION!)
				ill(4074),	-- Elemental Slayer (ILLUSION!)
			}),
		})),
		filter(MISC, {
			i(52723, {["timeline"] = {ADDED_4_0_3_LAUNCH, REMOVED_5_0_4}}),	-- Runed Elementium Rod
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(52768),	-- Enchant Off-Hand - Superior Intellect
			i(52762),	-- Enchant Shield - Mastery
			i(52754),	-- Enchant Shield - Protection
			i(68134),	-- Enchant 2H Weapon - Mighty Agility
			i(52748),	-- Enchant Weapon - Avalanche
			i(52755),	-- Enchant Weapon - Elemental Slayer
			i(52761),	-- Enchant Weapon - Heartsong
			i(52760),	-- Enchant Weapon - Hurricane
			i(52776),	-- Enchant Weapon - Landslide
			i(52747),	-- Enchant Weapon - Mending
			i(52774),	-- Enchant Weapon - Power Torrent
			i(52775),	-- Enchant Weapon - Windwalk
		}),
	}),
	prof(ENGINEERING, {
		prof(GNOMISH_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Gnomish Engineering quest chain.",
			["groups"] = {
				filter(BATTLE_PETS, {
					i(60216),	-- De-Weaponized Mechanical Companion (PET!)
				}),
				filter(TOYS, {
					i(40727, {	-- Gnomish Gravity Well (TOY!)
						["requireSkill"] = GNOMISH_ENGINEERING,
					}),
				}),
			},
		}),
		prof(GOBLIN_ENGINEERING, {
			["description"] = "These items can only be crafted by Engineers who have completed the Goblin Engineering quest chain.",
			["groups"] = {
				filter(BATTLE_PETS, {
					i(59597),	-- Personal World Destroyer (PET!)
				}),
				filter(MISC, {
					i(63396),	-- Big Daddy
				}),
			},
		}),
		n(DISCOVERY, {
			r(84425),	-- Cardboard Assassin
			r(84427),	-- Grounded Plasma Shield
			r(84424),	-- Invisibility Field
			r(82200),	-- Spinal Healing Injector
		}),
		n(ARMOR, {
			i(59455),	-- Agile Bio-Optic Killshades
			i(60222),	-- Authentic Jr. Engineer Goggles
			i(59453, {	-- Camouflage Bio-Optic Killshades
				-- #if BEFORE 7.3.0
				["classes"] = { DRUID },
				-- #endif
			}),
			i(59456),	-- Deadly Bio-Optic Killshades
			i(59458, {	-- Energized Bio-Optic Killshades
				-- #if BEFORE 7.3.0
				["classes"] = { SHAMAN },
				-- #endif
			}),
			i(59449),	-- Lightweight Bio-Optic Killshades
			i(59359),	-- Reinforced Bio-Optic Killshades
			i(59448, {	-- Specialized Bio-Optic Killshades
				-- #if BEFORE 7.3.0
				["classes"] = { PALADIN },
				-- #endif
			}),
		}),
		filter(MISC, {
			i(67494, {	-- Electrostatic Condenser
				["collectible"] = false,
			}),
			i(60217),	-- Elementium Toolbox
			moltenfront(i(70139)),	-- Flintlocke's Woodchucker
			i(60858),	-- Goblin Barbecue
			i(68049),	-- Heat-Treated Spinning Lure
			i(60223),	-- High-Powered Bolt Gun
			i(60218),	-- Lure Master Tackle Box
			i(60853),	-- Volatile Seaforium Blastpack
		}),
		filter(REAGENTS, {
			i(67749),	-- Electrified Ether
			i(60224),	-- Handful of Obsidium Bolts
		}),
		filter(TOYS, {
			i(60854),	-- Loot-A-Rang (TOY!)
		}),
		filter(TRINKET_F, {
			i(60403),	-- Elementium Dragonling
		}),
		n(WEAPONS, {
			moltenfront(i(71077)),	-- Extreme-Impact Hole Puncher
			i(59598),	-- Finely-Tuned Throat Needler
			i(59367),	-- Kickback 5000
			i(59364),	-- Overpowered Chicken Splitter
			i(59599),	-- Volatile Thunderstick
		}),
		n(WEAPON_ENCHANTMENTS, {
			i(59594),	-- Gnomish X-Ray Scope
			i(59595),	-- R19 Threatfinder
			i(59596),	-- Safety Catch Removal Kit
		}),
	}),
	-- #if BEFORE 8.0.1
	prof(FIRST_AID, {
		i(53051),	-- Dense Embersilk Bandage
		i(53049),	-- Embersilk Bandage
		i(53051),	-- Dense Embersilk Bandage
		i(53050),	-- Heavy Embersilk Bandage
	}),
	-- #endif
	prof(FISHING, {
		-- Fish
		i(53065, {	-- Albino Cavefish
			["coords"] = {
				{ 68.3, 69.9, DEEPHOLM },	-- Lower Silvermarsh
				{ 69.4, 68.1, DEEPHOLM },	-- Lower Silvermarsh cave entrance
				{ 71.8, 63.1, DEEPHOLM },	-- Upper Silvermarsh
				{ 76.8, 41.9, DEEPHOLM },	-- Crimson Expanse
				{ 27.2, 34.8, DEEPHOLM },	-- Needlerock Chasm
			},
			["description"] = "Schools can also spawn in the cavern beneath Upper Silvermarsh, with entrance from Lower Silvermarsh.",
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 202778 },	-- Albino Cavefish School
		}),
		i(53071, {	-- Algaefin Rockfish
			-- Danny Donkey: Wowhead comments indicates that these possibly had dedicated schools before 4.3.0.
			["description"] = "Can be caught on the seaside, though might be more uncommon than other saltwater fish.",
			["maps"] = {
				TOL_BARAD_PENINSULA,
				TWILIGHT_HIGHLANDS,
				VASHJIR_KELPTHAR_FOREST,
				VASHJIR_SHIMMERING_EXPANSE,
			},
			-- #if AFTER 4.1.0
			["provider"] = { "i", 69823 },	-- Gub's Catch
			-- #endif
		}),
		i(53066, {	-- Blackbelly Mudfish
			["description"] = "Schools can be found in inland waterways.",
			["maps"] = { ULDUM },
			["provider"] = { "o", 202779 },	-- Blackbelly Mudfish School
		}),
		i(53072, {	-- Deepsea Sagefish
			-- #if BEFORE 4.3.0
			["description"] = "Can be caught on the seaside.",
			-- #else
			["description"] = "Schools can be found on the seaside.",
			-- #endif
			["maps"] = {
				TOL_BARAD_PENINSULA,
				TWILIGHT_HIGHLANDS,
				VASHJIR_KELPTHAR_FOREST,
				VASHJIR_SHIMMERING_EXPANSE,
			},
			-- #if AFTER 4.1.0
			["providers"] = {
				{ "i", 69823 },	-- Gub's Catch
				-- #if AFTER 4.3.0
				{ "o", 208311 },	-- Deepsea Sagefish School
				-- #endif
			},
			-- #endif
		}),
		i(53070, {	-- Fathom Eel
			["description"] = "Schools can be found on the seaside.",
			["maps"] = {
				TOL_BARAD_PENINSULA,
				ULDUM,
			},
			["providers"] = {
				{ "o", 202780 },	-- Fathom Eel Swarm
				-- #if AFTER 4.1.0
				{ "i", 69823 },	-- Gub's Catch
				-- #endif
			},
		}),
		i(53064, {	-- Highland Guppy
			["description"] = "Schools can be found in inland waterways.",
			["maps"] = { TWILIGHT_HIGHLANDS },
			["provider"] = { "o", 202777 },	-- Highland Guppy School
		}),
		i(53068, {	-- Lavascale Catfish
			["description"] = "Can be caught in inland waterways.",
			["maps"] = {
				DEEPHOLM,
				ULDUM,
			},
			-- #if AFTER 4.1.0
			["provider"] = { "i", 69823 },	-- Gub's Catch
			-- #endif
		}),
		i(53063, {	-- Mountain Trout
			["coords"] = {
				{ 69.6, 68.9, MOUNT_HYJAL },	-- Gates of Sothann
				{ 29.1, 33.0, MOUNT_HYJAL },	-- Shrine of Goldrinn
				{ 41.2, 29.8, MOUNT_HYJAL },	-- The Verdant Thicket
				{ 52.6, 17.3, MOUNT_HYJAL },	-- Hyjal Barrow Dens (entrance)
				{ 60.8, 25.9, MOUNT_HYJAL },	-- Nordrassil
			},
			["_allowObjectProvider"] = true,
			["provider"] = { "o", 202776 },	-- Mountain Trout School
		}),
		i(53069, {	-- Murglesnout
			["description"] = "Can be caught on the seaside.",
			["maps"] = {
				TOL_BARAD_PENINSULA,
				TWILIGHT_HIGHLANDS,
				VASHJIR_KELPTHAR_FOREST,
				VASHJIR_SHIMMERING_EXPANSE,
			},
		}),
		i(46109, {	-- Sea Turtle (MOUNT!)
			-- #if BEFORE 5.0.3
			["maps"] = {
				BOREAN_TUNDRA,
				CRYSTALSONG_FOREST,
				DEEPHOLM,
				DRAGONBLIGHT,
				GRIZZLY_HILLS,
				HOWLING_FJORD,
				MOUNT_HYJAL,
				SHOLAZAR_BASIN,
				TOL_BARAD_PENINSULA,
				TWILIGHT_HIGHLANDS,
				ULDUM,
			},
			["providers"] = {
				{ "o", 202778 },	-- Albino Cavefish School
				{ "o", 202779 },	-- Blackbelly Mudfish School
				{ "o", 192051 },	-- Borean Man O' War School
				{ "o", 192053 },	-- Deep Sea Monsterbelly School
				-- #if AFTER 4.3.0
				{ "o", 208311 },	-- Deepsea Sagefish School
				-- #endif
				{ "o", 192048 },	-- Dragonfin Angelfish School
				{ "o", 192049 },	-- Fangtooth Herring School
				{ "o", 202780 },	-- Fathom Eel Swarm
				{ "o", 192050 },	-- Glacial Salmon School
				{ "o", 192059 },	-- Glassfin Minnow School
				{ "o", 202777 },	-- Highland Guppy School
				{ "o", 192052 },	-- Imperial Manta Ray School
				{ "o", 192054 },	-- Moonglow Cuttlefish School
				{ "o", 202776 },	-- Mountain Trout School
				{ "o", 192046 },	-- Musselback Sculpin School
				{ "o", 192057 },	-- Nettlefish School
				{ "o", 207724 },	-- Shipwreck Debris
			},
			-- #endif
		}),
		i(53062, {	-- Sharptooth
			["description"] = "Can be caught in inland waterways.",
			["maps"] = {
				DEEPHOLM,
				MOUNT_HYJAL,
				TWILIGHT_HIGHLANDS,
				ULDUM,
			},
		}),
		-- #if NOT ANYCLASSIC
		i(68050, {	-- Shatterscale Mightfish
			["coords"] = {
				{ 52.4, 77.0, MOUNT_HYJAL },	-- The Throne of Flame
				{ 41.0, 79.1, TWILIGHT_HIGHLANDS },	-- Cannon's Inferno
			},
			["description"] = "Can be caught by fishing in lava using a special lure.",
			["provider"] = { "i", 68049 },	-- Heat-Treated Spinning Lure
		}),
		-- #endif
		i(53067, {	-- Striped Lurker
			["description"] = "Can be caught in inland waterways.",
			["maps"] = {
				MOUNT_HYJAL,
				TWILIGHT_HIGHLANDS,
			},
		}),
		-- #if NOT ANYCLASSIC
		i(22739, {	-- Tome of Polymorph: Turtle (CI!)
			["maps"] = {
				DEEPHOLM,
				MOUNT_HYJAL,
				TOL_BARAD_PENINSULA,
				TWILIGHT_HIGHLANDS,
				ULDUM,
			},
			["providers"] = {
				{ "o", 202778 },	-- Albino Cavefish School
				{ "o", 202779 },	-- Blackbelly Mudfish School
				-- #if AFTER 4.3.0
				{ "o", 208311 },	-- Deepsea Sagefish School
				-- #endif
				{ "o", 202780 },	-- Fathom Eel Swarm
				{ "o", 202777 },	-- Highland Guppy School
				{ "o", 202776 },	-- Mountain Trout School
				{ "o", 207724 },	-- Shipwreck Debris
			},
		}),
		-- #endif
		-- Schools:
		o(202778, {	-- Albino Cavefish School
			["coords"] = {
				{ 68.3, 69.9, DEEPHOLM },	-- Lower Silvermarsh
				{ 69.4, 68.1, DEEPHOLM },	-- Lower Silvermarsh cave entrance
				{ 71.8, 63.1, DEEPHOLM },	-- Upper Silvermarsh
				{ 76.8, 41.9, DEEPHOLM },	-- Crimson Expanse
				{ 27.2, 34.8, DEEPHOLM },	-- Needlerock Chasm
			},
			["description"] = "Can also spawn in the cavern beneath Upper Silvermarsh, with entrance from Lower Silvermarsh.",
		}),
		o(202781, {	-- Algaefin Rockfish School
			["description"] = "Please let us in the ATT-discord know if this school appears in any iterations of the game.",
			["maps"] = { TWILIGHT_HIGHLANDS },
			["timeline"] = { REMOVED_4_3_0 },
		}),
		o(202779, {	-- Blackbelly Mudfish School
			["description"] = "Can be found in inland waterways.",
			["maps"] = { ULDUM },
		}),
		o(208311, {	-- Deepsea Sagefish School
			["description"] = "Can be found on the seaside.",
			["maps"] = { TWILIGHT_HIGHLANDS },
			["timeline"] = { ADDED_4_3_0 },
		}),
		o(202780, {	-- Fathom Eel Swarm
			["description"] = "Can be found on the seaside.",
			["maps"] = {
				TOL_BARAD_PENINSULA,
				ULDUM,
			},
		}),
		o(202777, {	-- Highland Guppy School
			["description"] = "Can be found in inland waterways.",
			["maps"] = { TWILIGHT_HIGHLANDS },
		}),
		o(202776, {	-- Mountain Trout School
			["coords"] = {
				{ 69.6, 68.9, MOUNT_HYJAL },	-- Gates of Sothann
				{ 29.1, 33.0, MOUNT_HYJAL },	-- Shrine of Goldrinn
				{ 41.2, 29.8, MOUNT_HYJAL },	-- The Verdant Thicket
				{ 52.6, 17.3, MOUNT_HYJAL },	-- Hyjal Barrow Dens (entrance)
				{ 60.8, 25.9, MOUNT_HYJAL },	-- Nordrassil
			},
		}),
		o(207734, {	-- Pool of Fire (Fishing school)
			["coords"] = {
				{ 52.4, 77.0, MOUNT_HYJAL },	-- The Throne of Flame
				{ 41.0, 79.1, TWILIGHT_HIGHLANDS },	-- Cannon's Inferno
			},
		}),
		o(207724, {	-- Shipwreck Debris
			["maps"] = { TOL_BARAD_PENINSULA },
			["groups"] = {
				i(67597),	-- Sealed Crate
			},
		}),
		--	Recipe:
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		spell(2366, {	-- Herb Gathering
			-- Herbs:
			i(52985, {	-- Azshara's Veil
				["description"] = "Can be found near and in waters.",
				["maps"] = {
					TOL_BARAD_PENINSULA,
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
				["provider"] = { "o", 202749 },	-- Azshara's Veil
			}),
			i(108362, {	-- Azshara's Veil Stem
				["group"] = { i(52985) },	-- Azshara's Veil
				["provider"] = { "o", 202749 },	-- Azshara's Veil
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(52983, {	-- Cinderbloom
				["description"] = "Mount Hyjal is the better place to look for these.",
				["maps"] = {
					DEEPHOLM,
					MOUNT_HYJAL,
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
				["provider"] = { "o", 202747 },	-- Cinderbloom
			}),
			i(108360, {	-- Cinderbloom Petal
				["group"] = { i(52983) },	-- Cinderbloom
				["provider"] = { "o", 202747 },	-- Cinderbloom
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(52986, {	-- Heartblossom
				["maps"] = { DEEPHOLM },
				["provider"] = { "o", 202750 },	-- Heartblossom
			}),
			i(108363, {	-- Heartblossom Petal
				["group"] = { i(52986) },	-- Heartblossom
				["provider"] = { "o", 202750 },	-- Heartblossom
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(63122, {	-- Lifegiving Seed
				["providers"] = {
					{ "o", 202749 },	-- Azshara's Veil
					{ "o", 202747 },	-- Cinderbloom
					{ "o", 202750 },	-- Heartblossom
					{ "o", 202748 },	-- Stormvine
					{ "o", 202751 },	-- Twilight Jasmine
					{ "o", 202752 },	-- Whiptail
				},
			}),
			i(52984, {	-- Stormvine
				["coords"] = {
					{ 22.7, 65.4, VASHJIR_ABYSSAL_DEPTHS },	-- Abandoned Reef
					{ 41.0, 36.2, VASHJIR_ABYSSAL_DEPTHS },	-- The Scalding Chasm
					{ 50.4, 35.4, VASHJIR_SHIMMERING_EXPANSE },	-- Silver Tide Trench, beneath
					{ 38.3, 64.1, VASHJIR_SHIMMERING_EXPANSE },	-- Quel'Dormir Gardens
				},
				["description"] = "Can be found near the base of vegetation and structures.",
				["maps"] = {
					MOUNT_HYJAL,
					VASHJIR_KELPTHAR_FOREST,
				},
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 202748 },	-- Stormvine
			}),
			i(108361, {	-- Stormvine Stalk
				["group"] = { i(52984) },	-- Stormvine
				["provider"] = { "o", 202748 },	-- Stormvine
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(52987, {	-- Twilight Jasmine
				["maps"] = { TWILIGHT_HIGHLANDS },
				["providers"] = {
					-- #if AFTER 4.1.0
					{ "i", 69817 },	-- Hive Queen's Honeycomb
					-- #endif
					{ "o", 202751 },	-- Twilight Jasmine
				},
			}),
			i(108364, {	-- Twilight Jasmine Petal
				["group"] = { i(52987) },	-- Twilight Jasmine
				["provider"] = { "o", 202751 },	-- Twilight Jasmine
				["timeline"] = { ADDED_6_0_2 },
			}),
			i(52988, {	-- Whiptail
				["coords"] = {
					{ 39.8, 49.2, TOL_BARAD }, -- Croc swamp
					{ 56.2, 22.6, ULDUM },	-- Vir'naal Oasis, northeast of Ramkahen
					{ 49.7, 32.2, ULDUM },	-- Vir'naal Oasis, west of Ramkahen
					{ 56.6, 48.9, ULDUM },	-- Vir'naal River
					{ 62.0, 77.9, ULDUM },	-- Vir'naal River Delta
				},
				["_allowObjectProvider"] = true,
				["provider"] = { "o", 202752 },	-- Whiptail
			}),
			i(108365, {	-- Whiptail Stem
				["group"] = { i(52988) },	-- Whiptail
				["provider"] = { "o", 202752 },	-- Whiptail
				["timeline"] = { ADDED_6_0_2 },
			}),
			-- Nodes:
			o(202749, {	-- Azshara's Veil
				["description"] = "Can be found near and in waters.",
				["maps"] = {
					MOUNT_HYJAL,
					TOL_BARAD_PENINSULA,
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
			}),
			o(202747, {	-- Cinderbloom
				["description"] = "Mount Hyjal is the better place to look for these.",
				["maps"] = {
					DEEPHOLM,
					MOUNT_HYJAL,
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
			}),
			o(202750, {	-- Heartblossom
				["maps"] = { DEEPHOLM },
			}),
			o(202748, {	-- Stormvine
				["coords"] = {
					{ 22.7, 65.4, VASHJIR_ABYSSAL_DEPTHS },	-- Abandoned Reef
					{ 41.0, 36.2, VASHJIR_ABYSSAL_DEPTHS },	-- The Scalding Chasm
					{ 50.4, 35.4, VASHJIR_SHIMMERING_EXPANSE },	-- Silver Tide Trench, beneath
					{ 38.3, 64.1, VASHJIR_SHIMMERING_EXPANSE },	-- Quel'Dormir Gardens
				},
				["description"] = "Can be found near the base of vegetation and structures.",
				["maps"] = {
					MOUNT_HYJAL,
					VASHJIR_KELPTHAR_FOREST,
				},
			}),
			o(202751, {	-- Twilight Jasmine
				["maps"] = { TWILIGHT_HIGHLANDS },
			}),
			o(202752, {	-- Whiptail
				["coords"] = {
					{ 39.8, 49.2, TOL_BARAD }, -- Croc swamp
					{ 56.2, 22.6, ULDUM },	-- Vir'naal Oasis, northeast of Ramkahen
					{ 49.7, 32.2, ULDUM },	-- Vir'naal Oasis, west of Ramkahen
					{ 56.6, 48.9, ULDUM },	-- Vir'naal River
					{ 62.0, 77.9, ULDUM },	-- Vir'naal River Delta
				},
			}),
		}),
	}),
	prof(INSCRIPTION, {
		i(62237, {	-- Adventurer's Journal
			-- #if CATA
			["description"] = [[Using this item will provide you with a temporary 1-hour buff. This buff is random, and only applies if you are below level 85.

Learning by Example - Quest experience increased by 10%.
The Great Hunt - Damage against beasts increased by 15%
Terrain Expert - Movement speed increased by %15. This does not stack with other movement speed increasing effects.
Living Forever - Chance to heal yourself when dealing damage to an enemy.
Deadly Drive - Damage against humanoids increased by 15%.
Dragonsbane - Damage against Dragonkin increased by 15%.
Mechanical Aptitude - Damage against Mechanicals increased by 15%.
Kneecapper - Damage against Giants increased by 15%.
Fire and Water - Damage against Elementals increased by 15%.
28 Chapters Later - Damage against Undead increased by 15%]];
			-- #endif
			["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
		}),
		-- #if AFTER WOD
		spell(165466, {	-- Research: Blackfallow Ink
			r(64260, {["timeline"]={ADDED_3_1_0}}),	-- Glyph of Mutilate / Glyph of Disguise[MOP+]
			r(64262, {["timeline"]={ADDED_3_1_0,REMOVED_7_0_3}}),	-- Glyph of Totem of Wrath / Glyph of Shamanistic Rage[CATA+]
		}),
		-- #endif
		filter(GLYPHS, {
			-- #if AFTER WOD
			i(43335, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of the Wild / Glyph of Charm Woodland Creature[MOP+]
			i(43390, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Drain Soul / Glyph of Soul Consumption[MOP+]
			i(43334, {["timeline"]={ADDED_3_0_2}}),		-- Glyph of Challenging Roar / Glyph of the Ursol Chameleon[MOP+]
			i(41540, {["timeline"]={ADDED_3_0_2,REMOVED_7_0_3}}),	-- Glyph of Strength of Earth Totem / Glyph of Lava Lash[3.0.3+]
			i(45768, {["timeline"]={ADDED_3_1_0}}),	-- Glyph of Mutilate / Glyph of Disguise[MOP+]
			i(45776, {["timeline"]={ADDED_3_1_0,REMOVED_7_0_3}}),	-- Glyph of Totem of Wrath / Glyph of Shamanistic Rage[CATA+]
			-- #endif
		}),
		category(106, {	-- Tarot Cards
			sp(86615, {	-- Darkmoon Card of Destruction
				i(61988),    -- Ace of Embers
				i(61989),    -- Two of Embers
				i(61990),    -- Three of Embers
				i(61991),    -- Four of Embers
				i(61992),    -- Five of Embers
				i(61993),    -- Six of Embers
				i(61994),    -- Seven of Embers
				i(61995),    -- Eight of Embers

				i(61996),    -- Ace of Stones
				i(61997),    -- Two of Stones
				i(61998),    -- Three of Stones
				i(61999),    -- Four of Stones
				i(62000),    -- Five of Stones
				i(62001),    -- Six of Stones
				i(62002),    -- Seven of Stones
				i(62003),    -- Eight of Stones

				i(62004),    -- Ace of the Winds
				i(62005),    -- Two of the Winds
				i(62006),    -- Three of the Winds
				i(62007),    -- Four of the Winds
				i(62008),    -- Five of the Winds
				i(62009),    -- Six of the Winds
				i(62010),    -- Seven of the Winds
				i(62011),    -- Eight of the Winds

				i(62012),    -- Ace of Waves
				i(62013),    -- Two of Waves
				i(62014),    -- Three of Waves
				i(62015),    -- Four of Waves
				i(62016),    -- Five of Waves
				i(62017),    -- Six of Waves
				i(62018),    -- Seven of Waves
				i(62019),    -- Eight of Waves
			}),
			i(60838, {	-- Mysterious Fortune Card
				["timeline"] = { ADDED_4_0_3 },
				["groups"] = {
					i(60839),	-- Fortune Card
					i(60840),	-- Fortune Card
					i(60841),	-- Fortune Card
					i(60842),	-- Fortune Card
					i(60843),	-- Fortune Card
					i(60844),	-- Fortune Card
					i(60845),	-- Fortune Card
					i(62246),	-- Fortune Card
					i(62247),	-- Fortune Card
					i(62552),	-- Fortune Card
					i(62553),	-- Fortune Card
					i(62554),	-- Fortune Card
					i(62555),	-- Fortune Card
					i(62556),	-- Fortune Card
					i(62557),	-- Fortune Card
					i(62558),	-- Fortune Card
					i(62559),	-- Fortune Card
					i(62560),	-- Fortune Card
					i(62561),	-- Fortune Card
					i(62562),	-- Fortune Card
					i(62563),	-- Fortune Card
					i(62564),	-- Fortune Card
					i(62565),	-- Fortune Card
					i(62566),	-- Fortune Card
					i(62567),	-- Fortune Card
					i(62568),	-- Fortune Card
					i(62569),	-- Fortune Card
					i(62570),	-- Fortune Card
					i(62571),	-- Fortune Card
					i(62572),	-- Fortune Card
					i(62573),	-- Fortune Card
					i(62574),	-- Fortune Card
					i(62575),	-- Fortune Card
					i(62576),	-- Fortune Card
					i(62577),	-- Fortune Card
					i(62578),	-- Fortune Card
					i(62579),	-- Fortune Card
					i(62580),	-- Fortune Card
					i(62581),	-- Fortune Card
					i(62582),	-- Fortune Card
					i(62583),	-- Fortune Card
					i(62584),	-- Fortune Card
					i(62585),	-- Fortune Card
					i(62586),	-- Fortune Card
					i(62587),	-- Fortune Card
					i(62588),	-- Fortune Card
					i(62589),	-- Fortune Card
					i(62590),	-- Fortune Card
					i(62591),	-- Fortune Card
					i(62598),	-- Fortune Card
					i(62599),	-- Fortune Card
					i(62600),	-- Fortune Card
					i(62601),	-- Fortune Card
					i(62602),	-- Fortune Card
					i(62603),	-- Fortune Card
					i(62604),	-- Fortune Card
					i(62605),	-- Fortune Card
					i(62606),	-- Fortune Card
				},
			}),
		}),
		filter(HELD_IN_OFF_HAND, {
			i(62236),	-- Battle Tome
			i(62231),	-- Book of Blood
			i(62235),	-- Divine Companion
			i(62234),	-- Dungeoneering Guide
			i(62233),	-- Lord Rottington's Pressed Wisp Book
		}),
		-- #if BEFORE 5.0.4
		n(RELICS, {
			i(62240, {	-- Etched Horn
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(62241, {	-- Manual of the Planes
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(62243, {	-- Notched Jawbone
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(62242, {	-- Runed Dragonscale
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(62245, {	-- Silver Inlaid Leaf
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(62244, {	-- Tattooed Eyeball
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			-- #if ANYCLASSIC
			-- Blizzard did a dumb when they implemented Cata Classic
			i(75079, {	-- Vicious Charm of Triumph
				["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0, DELETED_5_0_4 },
			}),
			applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(226180, {	-- Vicious Charm of Triumph
				["timeline"] = { ADDED_4_3_0, DELETED_5_0_4 },
			})),
			i(75066, {	-- Vicious Eyeball of Dominance
				["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0, DELETED_5_0_4 },
			}),
			applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(226178, {	-- Vicious Eyeball of Dominance
				["timeline"] = { ADDED_4_3_0, DELETED_5_0_4 },
			})),
			i(75069, {	-- Vicious Jawbone of Conquest
				["timeline"] = { ADDED_4_0_3, REMOVED_4_2_0, DELETED_5_0_4 },
			}),
			applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, i(226179, {	-- Vicious Jawbone of Conquest
				["timeline"] = { ADDED_4_3_0, DELETED_5_0_4 },
			})),
			-- #else
			i(75079, {	-- Vicious Charm of Triumph
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(75066, {	-- Vicious Eyeball of Dominance
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			i(75069, {	-- Vicious Jawbone of Conquest
				["timeline"] = { ADDED_4_0_3, DELETED_5_0_4 },
			}),
			-- #endif
		}),
		-- #endif
		-- #if AFTER 5.0.1
		filter(STAVES, {
			i(87565, {	-- Key to the Planes
				["timeline"] = { ADDED_5_0_4 },
			}),
			i(87562, {	-- Rosethorn Staff
				["timeline"] = { ADDED_5_0_4 },
			}),
			i(87566, {	-- Runed Staff
				["timeline"] = { ADDED_5_0_4 },
			}),
			i(87561, {	-- Silver Inlaid Staff
				["timeline"] = { ADDED_5_0_4 },
			}),
		}),
		-- #endif
	}),
	prof(JEWELCRAFTING, {
		filter(FIST_WEAPONS, {
			i(52492),	-- Carnelian Spikes
			i(52493),	-- The Perforator
		}),
		n(HEAD, {
			i(52487),	-- Jeweler's Amber Monocle
			i(52485),	-- Jeweler's Ruby Monocle
			i(52486),	-- Jeweler's Sapphire Monocle
			i(52489),	-- Rhinestone Sunglasses
		}),
		filter(MISC, {
			i(204356, {["timeline"]={ADDED_10_0_7}}),	-- Illustrious Gemdust
		}),
		filter(NECK_F, {
			i(52307, {	-- Alicite Pendant
				i(52312),	-- Alicite Pendant
			}),
			bloodthirsty(i(70075)),	-- Bloodthirsty Amberjewel Pendant
			bloodthirsty(i(70076)),	-- Bloodthirsty Ruby Choker
			bloodthirsty(i(70074)),	-- Bloodthirsty Sapphire Necklace
			i(52350),	-- Brazen Elementium Medallion
			i(52323),	-- Elementium Guardian
			i(52321),	-- Entwined Elementium Choker
			i(52322),	-- Eye of Many Deaths
			i(52309, {	-- Nightstone Choker
				i(52314),	-- Nightstone Choker
			}),
			-- #if ANYCLASSIC
			-- Blizzard did a dumb when they implemented Cata Classic
			dragonsoul(i(226188)),	-- Vicious Amberjewel Pendant
			dragonsoul(i(226187)),	-- Vicious Ruby Choker
			dragonsoul(i(226189)),	-- Vicious Sapphire Necklace
			bloodied(i(75075)),	-- Vicious Amberjewel Pendant
			bloodied(i(75078)),	-- Vicious Ruby Choker
			bloodied(i(75074)),	-- Vicious Sapphire Necklace
			-- #else
			dragonsoul(i(75075)),	-- Vicious Amberjewel Pendant
			dragonsoul(i(75078)),	-- Vicious Ruby Choker
			dragonsoul(i(75074)),	-- Vicious Sapphire Necklace
			-- #endif
		}),
		filter(FINGER_F, {
			i(52318),	-- Band of Blades
			bloodthirsty(i(70072)),	-- Bloodthirsty Amberjewel Band
			bloodthirsty(i(70073)),	-- Bloodthirsty Ruby Signet
			bloodthirsty(i(70071)),	-- Bloodthirsty Sapphire Ring
			i(52348),	-- Elementium Destroyer's Ring
			i(52320),	-- Elementium Moebius Band
			i(52308, {	-- Hessonite Band
				i(52316),	-- Hessonite Band
			}),
			i(52306, {	-- Jasper Ring
				i(52310),	-- Jasper Ring
			}),
			i(69852),	-- Punisher's Band
			i(52319),	-- Ring of Warring Elements
			-- #if ANYCLASSIC
			-- Blizzard did a dumb when they implemented Cata Classic
			dragonsoul(i(226184)),	-- Vicious Amberjewel Band
			dragonsoul(i(226186)),	-- Vicious Ruby Signet
			dragonsoul(i(226185)),	-- Vicious Sapphire Ring
			bloodied(i(75068)),	-- Vicious Amberjewel Band
			bloodied(i(75071)),	-- Vicious Ruby Signet
			bloodied(i(75067)),	-- Vicious Sapphire Ring
			-- #else
			dragonsoul(i(75068)),	-- Vicious Amberjewel Band
			dragonsoul(i(75071)),	-- Vicious Ruby Signet
			dragonsoul(i(75067)),	-- Vicious Sapphire Ring
			-- #endif
		}),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			n(BACK, {
				-- Crieve NOTE: These cloaks were available with Firelands. We'll see if they get removed later.
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(70068, {	-- Bloodthirsty Fur Cloak
					["timeline"] = {
						ADDED_4_2_0,
						-- #if CATA
						REMOVED_5_0_4,
						-- #else
						REMOVED_4_3_0,
						-- #endif
					},
				})),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(70069, {	-- Bloodthirsty Hide Cloak
					["timeline"] = {
						ADDED_4_2_0,
						-- #if CATA
						REMOVED_5_0_4,
						-- #else
						REMOVED_4_3_0,
						-- #endif
					},
				})),
				i(56518),	-- Cloak of Beasts
				i(56519),	-- Cloak of War
				i(56489),	-- Hardened Scale Cloak
				i(56548),	-- Razor-Edged Cloak
				i(56480),	-- Savage Cloak
				i(56549),	-- Twilight Dragonscale Cloak
				-- #if ANYCLASSIC
				-- Blizzard did a dumb when they implemented Cata Classic, making Dragon Soul PVP cloaks available at launch
				-- and adding new, higher ilvl, cloaks which never got added to the game
				i(226181, { ["timeline"] = { CREATED_4_4_0 } }), -- Vicious Fur Cloak
				i(226183, { ["timeline"] = { CREATED_4_4_0 } }), -- Vicious Hide Cloak
				i(75076, {	-- Vicious Fur Cloak
					["timeline"] = {
						ADDED_4_0_3_LAUNCH,
						-- #if CATA
						REMOVED_5_0_4,
						-- #else
						REMOVED_4_2_0,
						-- #endif
					},
				}),
				i(75077, {	-- Vicious Hide Cloak
					["timeline"] = {
						ADDED_4_0_3_LAUNCH,
						-- #if CATA
						REMOVED_5_0_4,
						-- #else
						REMOVED_4_2_0,
						-- #endif
					},
				}),
				-- #else
				dragonsoul(i(75076)),	-- Vicious Fur Cloak
				dragonsoul(i(75077)),	-- Vicious Hide Cloak
				-- #endif
			}),
			filter(LEATHER, {
				i(56562),	-- Assassin's Chestplate
				i(56537),	-- Belt of Nefarious Whispers
				dragonsoul(i(71985)),	-- Bladeshadow Leggings
				dragonsoul(i(71994)),	-- Bladeshadow Wristguards
				bloodied(i(56542)),	-- Bloodied Leather Belt
				bloodied(i(56530)),	-- Bloodied Leather Boots
				bloodied(i(56522)),	-- Bloodied Leather Bracers
				bloodied(i(56554)),	-- Bloodied Leather Chest
				bloodied(i(56523)),	-- Bloodied Leather Gloves
				bloodied(i(56543)),	-- Bloodied Leather Helm
				bloodied(i(56555)),	-- Bloodied Leather Legs
				bloodied(i(56531)),	-- Bloodied Leather Shoulders
				bloodied(i(56521)),	-- Bloodied Wyrmhide Belt
				bloodied(i(56529)),	-- Bloodied Wyrmhide Boots
				bloodied(i(56520)),	-- Bloodied Wyrmhide Bracers
				bloodied(i(56541)),	-- Bloodied Wyrmhide Chest
				bloodied(i(56528)),	-- Bloodied Wyrmhide Gloves
				bloodied(i(56553)),	-- Bloodied Wyrmhide Helm
				bloodied(i(56552)),	-- Bloodied Wyrmhide Legs
				bloodied(i(56540)),	-- Bloodied Wyrmhide Shoulders
				bloodthirsty(i(70020)),	-- Bloodthirsty Leather Belt
				bloodthirsty(i(70021)),	-- Bloodthirsty Leather Boots
				bloodthirsty(i(70022)),	-- Bloodthirsty Leather Bracers
				bloodthirsty(i(70023)),	-- Bloodthirsty Leather Chest
				bloodthirsty(i(70024)),	-- Bloodthirsty Leather Gloves
				bloodthirsty(i(70025)),	-- Bloodthirsty Leather Helm
				bloodthirsty(i(70026)),	-- Bloodthirsty Leather Legs
				bloodthirsty(i(70027)),	-- Bloodthirsty Leather Shoulders
				bloodthirsty(i(70028)),	-- Bloodthirsty Wyrmhide Belt
				bloodthirsty(i(70029)),	-- Bloodthirsty Wyrmhide Boots
				bloodthirsty(i(70030)),	-- Bloodthirsty Wyrmhide Bracers
				bloodthirsty(i(70031)),	-- Bloodthirsty Wyrmhide Chest
				bloodthirsty(i(70032)),	-- Bloodthirsty Wyrmhide Gloves
				bloodthirsty(i(70033)),	-- Bloodthirsty Wyrmhide Helm
				bloodthirsty(i(70034)),	-- Bloodthirsty Wyrmhide Legs
				bloodthirsty(i(70035)),	-- Bloodthirsty Wyrmhide Shoulders
				dragonsoul(i(71995)),	-- Bracers of Flowing Serenity
				i(56561),	-- Chestguard of Nature's Fury
				firelands(i(69942)),	-- Clutches of Evil
				i(56499),	-- Darkbrand Belt
				i(56491),	-- Darkbrand Boots
				i(56483),	-- Darkbrand Bracers
				i(56509),	-- Darkbrand Chestguard
				i(56484),	-- Darkbrand Gloves
				i(56505),	-- Darkbrand Helm
				i(56513),	-- Darkbrand Leggings
				i(56495),	-- Darkbrand Shoulders
				firelands(i(69952)),	-- Ethereal Footfalls
				firelands(i(69943)),	-- Heavenly Gloves of the Moon
				dragonsoul(i(71986)),	-- Leggings of Nature's Champion
				i(56536),	-- Lightning Lash
				firelands(i(69951)),	-- Treads of the Craft
				dragonsoul(i(75127)),	-- Vicious Leather Belt
				dragonsoul(i(75130)),	-- Vicious Leather Boots
				dragonsoul(i(75131)),	-- Vicious Leather Bracers
				dragonsoul(i(75103)),	-- Vicious Leather Chest
				dragonsoul(i(75104)),	-- Vicious Leather Gloves
				dragonsoul(i(75105)),	-- Vicious Leather Helm
				dragonsoul(i(75112)),	-- Vicious Leather Legs
				dragonsoul(i(75113)),	-- Vicious Leather Shoulders
				dragonsoul(i(75117)),	-- Vicious Wyrmhide Belt
				dragonsoul(i(75101)),	-- Vicious Wyrmhide Boots
				dragonsoul(i(75106)),	-- Vicious Wyrmhide Bracers
				dragonsoul(i(75107)),	-- Vicious Wyrmhide Chest
				dragonsoul(i(75109)),	-- Vicious Wyrmhide Gloves
				dragonsoul(i(75111)),	-- Vicious Wyrmhide Helm
				dragonsoul(i(75080)),	-- Vicious Wyrmhide Legs
				dragonsoul(i(75099)),	-- Vicious Wyrmhide Shoulders
			}),
			filter(MAIL, {
				bloodied(i(56546)),	-- Bloodied Dragonscale Belt
				bloodied(i(56534)),	-- Bloodied Dragonscale Boots
				bloodied(i(56526)),	-- Bloodied Dragonscale Bracers
				bloodied(i(56559)),	-- Bloodied Dragonscale Chest
				bloodied(i(56535)),	-- Bloodied Dragonscale Gloves
				bloodied(i(56547)),	-- Bloodied Dragonscale Helm
				bloodied(i(56558)),	-- Bloodied Dragonscale Legs
				bloodied(i(56527)),	-- Bloodied Dragonscale Shoulders
				bloodied(i(56533)),	-- Bloodied Scale Belt
				bloodied(i(56532)),	-- Bloodied Scale Boots
				bloodied(i(56524)),	-- Bloodied Scale Bracers
				bloodied(i(56556)),	-- Bloodied Scale Chest
				bloodied(i(56525)),	-- Bloodied Scale Gloves
				bloodied(i(56557)),	-- Bloodied Scale Helm
				bloodied(i(56545)),	-- Bloodied Scale Legs
				bloodied(i(56544)),	-- Bloodied Scale Shoulders
				bloodthirsty(i(70044)),	-- Bloodthirsty Charscale Belt
				bloodthirsty(i(70045)),	-- Bloodthirsty Charscale Boots
				bloodthirsty(i(70046)),	-- Bloodthirsty Charscale Bracers
				bloodthirsty(i(70047)),	-- Bloodthirsty Charscale Chest
				bloodthirsty(i(70048)),	-- Bloodthirsty Charscale Gloves
				bloodthirsty(i(70049)),	-- Bloodthirsty Charscale Helm
				bloodthirsty(i(70050)),	-- Bloodthirsty Charscale Legs
				bloodthirsty(i(70051)),	-- Bloodthirsty Charscale Shoulders
				bloodthirsty(i(70036)),	-- Bloodthirsty Dragonscale Belt
				bloodthirsty(i(70037)),	-- Bloodthirsty Dragonscale Boots
				bloodthirsty(i(70038)),	-- Bloodthirsty Dragonscale Bracers
				bloodthirsty(i(70039)),	-- Bloodthirsty Dragonscale Chest
				bloodthirsty(i(70040)),	-- Bloodthirsty Dragonscale Gloves
				bloodthirsty(i(70041)),	-- Bloodthirsty Dragonscale Helm
				bloodthirsty(i(70042)),	-- Bloodthirsty Dragonscale Legs
				bloodthirsty(i(70043)),	-- Bloodthirsty Dragonscale Shoulders
				dragonsoul(i(71996)),	-- Bracers of the Hunter-Killer
				i(56539),	-- Corded Viper Belt
				dragonsoul(i(71988)),	-- Deathscale Leggings
				firelands(i(69939)),	-- Dragonfire Gloves
				i(56564),	-- Dragonkiller Tunic
				firelands(i(69949)),	-- Earthen Scale Sabatons
				firelands(i(69950)),	-- Footwraps of Quenched Fire
				firelands(i(69941)),	-- Gloves of Unforgiving Flame
				dragonsoul(i(71987)),	-- Rended Earth Leggings
				i(56538),	-- Stormleather Sash
				dragonsoul(i(71997)),	-- Thundering Deathscale Wristguards
				i(56482),	-- Tsunami Belt
				i(56494),	-- Tsunami Boots
				i(56481),	-- Tsunami Bracers
				i(56504),	-- Tsunami Chestguard
				i(56490),	-- Tsunami Gloves
				i(56512),	-- Tsunami Helm
				i(56508),	-- Tsunami Leggings
				i(56498),	-- Tsunami Shoulders
				i(56563),	-- Twilight Scale Chestguard
				dragonsoul(i(75083)),	-- Vicious Charscale Belt
				dragonsoul(i(75092)),	-- Vicious Charscale Boots
				dragonsoul(i(75094)),	-- Vicious Charscale Bracers
				dragonsoul(i(75084)),	-- Vicious Charscale Chest
				dragonsoul(i(75085)),	-- Vicious Charscale Gloves
				dragonsoul(i(75090)),	-- Vicious Charscale Helm
				dragonsoul(i(75097)),	-- Vicious Charscale Legs
				dragonsoul(i(75061)),	-- Vicious Charscale Shoulders
				dragonsoul(i(75100)),	-- Vicious Dragonscale Belt
				dragonsoul(i(75110)),	-- Vicious Dragonscale Boots
				dragonsoul(i(75114)),	-- Vicious Dragonscale Bracers
				dragonsoul(i(75115)),	-- Vicious Dragonscale Chest
				dragonsoul(i(75081)),	-- Vicious Dragonscale Gloves
				dragonsoul(i(75102)),	-- Vicious Dragonscale Helm
				dragonsoul(i(75108)),	-- Vicious Dragonscale Legs
				dragonsoul(i(75116)),	-- Vicious Dragonscale Shoulders
			}),
		}),
		filter(MISC, {
			i(56551),	-- Charscale Leg Armor
			i(56550),	-- Dragonscale Leg Armor
			i(71720, {["timeline"] = { ADDED_4_2_0 }}),	-- Drakehide Leg Armor
			i(56517),	-- Heavy Savage Armor Kit
			i(56516),	-- Heavy Savage Leather
			moltenfront(i(70136)),	-- Royal Scribe's Satchel
			i(56477),	-- Savage Armor Kit
			i(52976),	-- Savage Leather
			i(56502),	-- Scorched Leg Armor
			moltenfront(i(70137)),	-- Triple-Reinforced Mining Bag
			i(56503),	-- Twilight Leg Armor
		}),
	}),
	prof(MINING, {
		-- #if NOT ANYCLASSIC
		filter(BATTLE_PETS, {
			i(67282, {	-- Elementium Geode (PET!)
				["description"] = "Elementium Veins (0.05% Drop Rate) and Rich Elementium Veins (0.08% Drop Rate) require a mining skill of 475-500.",
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
				["providers"] = {
					{ "o", 202738 },	-- Elementium Vein
					{ "o", 202741 },	-- Rich Elementium Vein
				},
				["requireSkill"] = MINING,
			}),
		}),
		-- #endif
		spell(2575, {	-- Mining
			-- Nodes
			o(202738, {	-- Elementium Vein
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
			}),
			o(202736, {	-- Obsidium Deposit
				["maps"] = {
					DEEPHOLM,
					MOUNT_HYJAL,
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
			}),
			o(202737, {	-- Pyrite Deposit
				["maps"] = {
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
			}),
			o(202741, {	-- Rich Elementium Vein
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
			}),
			o(202739, {	-- Rich Obsidium Deposit
				["maps"] = {
					DEEPHOLM,
					MOUNT_HYJAL,
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
			}),
			o(202740, {	-- Rich Pyrite Deposit
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
				},
			}),
			-- Ores
			i(52185, {	-- Elementium Ore
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
				["providers"] = {
					{ "o", 202738 },	-- Elementium Vein
					{ "o", 202741 },	-- Rich Elementium Vein
					{ "i", 67539 },	-- Tiny Treasure Chest
				},
			}),
			i(108308, {	-- Elementium Ore Nugget
				["providers"] = {
					{ "o", 202738 },	-- Elementium Vein
					{ "o", 202741 },	-- Rich Elementium Vein
				},
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(52185),	-- Elementium Ore
				},
			}),
			i(53038, {	-- Obsidium Ore
				["maps"] = {
					DEEPHOLM,
					MOUNT_HYJAL,
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
				["providers"] = {
					{ "o", 202736 },	-- Obsidium Deposit
					{ "o", 202739 },	-- Rich Obsidium Deposit
				},
			}),
			i(108307, {	-- Obsidium Ore Nugget
				["providers"] = {
					{ "o", 202736 },	-- Obsidium Deposit
					{ "o", 202739 },	-- Rich Obsidium Deposit
				},
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(53038),	-- Obsidium Ore
				},
			}),
			i(52183, {	-- Pyrite Ore
				["maps"] = {
					TOL_BARAD,
					TOL_BARAD_PENINSULA,
					TWILIGHT_HIGHLANDS,
					ULDUM,
				},
				["providers"] = {
					{ "o", 202737 },	-- Pyrite Deposit
					{ "o", 202740 },	-- Rich Pyrite Deposit
					{ "i", 67539 },	-- Tiny Treasure Chest
				},
			}),
			i(108309, {	-- Pyrite Ore Nugget
				["providers"] = {
					{ "o", 202737 },	-- Pyrite Deposit
					{ "o", 202740 },	-- Rich Pyrite Deposit
				},
				["timeline"] = {ADDED_6_0_2},
				["groups"] = {
					i(52183),	-- Pyrite Ore
				},
			}),
			-- Not Ore --
			--[[	No need to list Tradegoods w/ many other sources
			-- Uncommon gem
			i(52179),	-- Alicite
			i(52177),	-- Carnelian
			i(52181),	-- Hessonite
			i(52182),	-- Jasper
			i(52180),	-- Nightstone
			i(52178),	-- Zephyrite
			--]]
		}),
		spell(2656, {	-- Smelting
			i(52186),	-- Elementium Bar
			i(53039),	-- Hardened Elementium Bar
			i(54849),	-- Obsidium Bar
			i(51950),	-- Pyrium Bar
		}),
	}),
	prof(SKINNING, {
		-- Danny Donkey: Not much here right now, skinned mats is planned to get here soon(tm).
		["groups"] = {
			i(67495),	-- Strange Bloated Stomach
		},
	}),
	prof(TAILORING, {
		filter(BAGS, {
			i(54443),	-- Embersilk Bag
			i(54446),	-- Hyjal Expedition Bag
			i(54444),	-- Illusionary Bag
			moltenfront(i(70138)),	-- Luxurious Silk Gem Bag
			i(54445),	-- Otherworldly Bag
		}),
		filter(CONSUMABLES, {
			i(54447),	-- Enchanted Spellthread
			i(54449),	-- Ghostly Spellthread
		}),
		n(CHEST, {
			i(54441),	-- Black Embersilk Gown
			bloodthirsty(i(70060)),	-- Bloodthirsty Embersilk Robe
			bloodthirsty(i(70058)),	-- Bloodthirsty Fireweave Robe
			i(54475),	-- Deathsilk Robe
			bloodied(i(54495)),	-- Emberfire Robe
			bloodied(i(54494)),	-- Fireweave Robe
			i(54486),	-- Spiritmend Robe
			dragonsoul(i(75093)),	-- Vicious Embersilk Robe
			dragonsoul(i(75088)),	-- Vicious Fireweave Robe
		}),
		n(BACK, {
			bloodthirsty(i(70070)),	-- Bloodthirsty Embersilk Cape
			-- #if ANYCLASSIC
			-- Blizzard did a dumb when they implemented Cata Classic, making Dragon Soul PVP cloaks available at launch
			-- and adding a new, higher ilvl, cloak which never got added to the game
			i(226182, { ["timeline"] = { CREATED_4_4_0 } }), -- Vicious Embersilk Cape
			bloodied(i(75065)),	-- Vicious Embersilk Cape
			-- #else
			dragonsoul(i(75065)),	-- Vicious Embersilk Cape
			-- #endif
		}),
		n(FEET, {
			firelands(i(69954)),	-- Boots of the Black Flame
			bloodthirsty(i(70061)),	-- Bloodthirsty Embersilk Boots
			bloodthirsty(i(70053)),	-- Bloodthirsty Fireweave Boots
			i(54477),	-- Deathsilk Boots
			bloodied(i(54499)),	-- Emberfire Boots
			firelands(i(69953)),	-- Endless Dream Walkers
			bloodied(i(54490)),	-- Fireweave Boots
			i(54482),	-- Spiritmend Boots
			dragonsoul(i(75095)),	-- Vicious Embersilk Boots
			dragonsoul(i(75087)),	-- Vicious Fireweave Boots
		}),
		n(HANDS, {
			bloodthirsty(i(70065)),	-- Bloodthirsty Embersilk Gloves
			bloodthirsty(i(70056)),	-- Bloodthirsty Fireweave Gloves
			i(54478),	-- Deathsilk Gloves
			firelands(i(69945)),	-- Don Tayo's Inferno Mittens
			bloodied(i(54497)),	-- Emberfire Gloves
			bloodied(i(54492)),	-- Fireweave Gloves
			firelands(i(69944)),	-- Grips of Altered Reality
			i(54484),	-- Spiritmend Gloves
			dragonsoul(i(75070)),	-- Vicious Embersilk Gloves
			dragonsoul(i(75063)),	-- Vicious Fireweave Gloves
		}),
		n(HEAD, {
			bloodthirsty(i(70067)),	-- Bloodthirsty Embersilk Cowl
			bloodthirsty(i(70055)),	-- Bloodthirsty Fireweave Cowl
			i(54476),	-- Deathsilk Cowl
			bloodied(i(54496)),	-- Emberfire Cowl
			bloodied(i(54493)),	-- Fireweave Cowl
			i(54451),	-- High Society Top Hat
			i(54485),	-- Spiritmend Cowl
			dragonsoul(i(75073)),	-- Vicious Embersilk Cowl
			dragonsoul(i(75062)),	-- Vicious Fireweave Cowl
		}),
		n(LEGS, {
			bloodthirsty(i(70066)),	-- Bloodthirsty Embersilk Pants
			bloodthirsty(i(70057)),	-- Bloodthirsty Fireweave Pants
			i(54505),	-- Breeches of Mended Nightmares
			i(54472),	-- Deathsilk Leggings
			bloodied(i(54498)),	-- Emberfire Pants
			bloodied(i(54491)),	-- Fireweave Pants
			i(54506),	-- Flame-Ascended Pantaloons
			dragonsoul(i(71980)),	-- Lavaquake Legwraps
			i(54483),	-- Spiritmend Leggings
			dragonsoul(i(75072)),	-- Vicious Embersilk Pants
			dragonsoul(i(75082)),	-- Vicious Fireweave Pants
			dragonsoul(i(71981)),	-- World Mender's Pants
		}),
		n(SHOULDER, {
			bloodthirsty(i(70064)),	-- Bloodthirsty Embersilk Shoulders
			bloodthirsty(i(70059)),	-- Bloodthirsty Fireweave Shoulders
			i(54474),	-- Deathsilk Shoulders
			bloodied(i(54502)),	-- Emberfire Shoulders
			bloodied(i(54487)),	-- Fireweave Shoulders
			i(54479),	-- Spiritmend Shoulders
			dragonsoul(i(75064)),	-- Vicious Embersilk Shoulders
			dragonsoul(i(75091)),	-- Vicious Fireweave Shoulders
		}),
		n(WAIST, {
			i(54504),	-- Belt of the Depths
			bloodthirsty(i(70062)),	-- Bloodthirsty Embersilk Belt
			bloodthirsty(i(70052)),	-- Bloodthirsty Fireweave Belt
			i(54471),	-- Deathsilk Belt
			i(54503),	-- Dreamless Belt
			bloodied(i(54500)),	-- Emberfire Belt
			bloodied(i(54489)),	-- Fireweave Belt
			i(54481),	-- Spiritmend Belt
			dragonsoul(i(75096)),	-- Vicious Embersilk Belt
			dragonsoul(i(75086)),	-- Vicious Fireweave Belt
		}),
		n(WRIST, {
			bloodthirsty(i(70063)),	-- Bloodthirsty Embersilk Bracers
			bloodthirsty(i(70054)),	-- Bloodthirsty Fireweave Bracers
			dragonsoul(i(71989)),	-- Bracers of Unconquered Power
			i(54473),	-- Deathsilk Bracers
			dragonsoul(i(71990)),	-- Dreamwraps of the Light
			bloodied(i(54501)),	-- Emberfire Bracers
			bloodied(i(54488)),	-- Fireweave Bracers
			i(54480),	-- Spiritmend Bracers
			dragonsoul(i(75098)),	-- Vicious Embersilk Bracers
			dragonsoul(i(75089)),	-- Vicious Fireweave Bracers
		}),
	}),
}))));