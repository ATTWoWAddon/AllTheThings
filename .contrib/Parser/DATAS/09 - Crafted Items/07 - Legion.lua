---------------------------------------------
--    C R A F T A B L E S   M O D U L E    --
---------------------------------------------
root(ROOTS.Craftables, expansion(EXPANSION.LEGION, applyclassicphase(LEGION_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
	i(180055, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past I
	i(180057, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past II
	i(180058, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past III
	i(180059, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past IV
	i(180060, {["timeline"] = {ADDED_9_0_1}}),	-- Relic of the Past V
	n(DECOR, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
		o_repeated({	-- Fel-Touched Lumber
			["maps"] = {
				AZSUNA,
				BROKEN_SHORE,
				EREDATH,
				HIGHMOUNTAIN,
				652,	-- Thunder Totem
				750,	-- Thunder Totem
				TRUESHOT_LODGE,
				KROKUUN,
				STORMHEIM,
				SURAMAR,
				VALSHARAH,
				THE_DREAMGROVE,
			},
			["groups"] = {
				-- Objects
				o(559409),	-- [Azsuna]
				o(562439),	-- [Broken Shore]
				o(558389),	-- [Eredath]
				o(560822),	-- [Highmountain/Thunder Totem/Trueshot Lodge]
				o(558361),	-- [Krokuun]
				o(560826),	-- [Stormheim]
				o(562159),	-- [Suramar]
				o(560358),	-- [Val'sharah/The Dreamgrove]
				-- Drops
				i(251767),	-- Fel-Touched Lumber
			},
		}),
	})),
	prof(ALCHEMY, {
		n(DISCOVERY, {
			spell(188299, {	-- Ancient Healing Potion [Rank 2]
				i(127935),	-- Recipe: Ancient Healing Potion [Rank 3] (RECIPE!)
			}),
			spell(188301, {	-- Ancient Mana Potion [Rank 1]
				i(127918),	-- Recipe: Ancient Mana Potion [Rank 2] (RECIPE!)
			}),
			spell(188302, {	-- Ancient Mana Potion [Rank 2]
				i(127936),	-- Recipe: Ancient Mana Potion [Rank 3] (RECIPE!)
			}),
			spell(188304, {	-- Ancient Rejuvenation Potion [Rank 1]
				i(127919),	-- Recipe: Ancient Rejuvenation Potion [Rank 2] (RECIPE!)
			}),
			spell(188305, {	-- Ancient Rejuvenation Potion [Rank 2]
				i(127937),	-- Recipe: Ancient Rejuvenation Potion [Rank 3] (RECIPE!)
			}),
			spell(251646, bubbleDownSelf({["timeline"] = { ADDED_7_3_0 } }, {	-- Astral Healing Potion
				i(152617),	-- Recipe: Astral Healing Potion [Rank 2]
			})),
			spell(188314, {	-- Avalanche Elixir [Rank 2]
				i(127940),	-- Recipe: Avalanche Elixir [Rank 3] (RECIPE!)
			}),
			spell(188308, {	-- Draught of Raw Magic [Rank 2]
				i(127938),	-- Recipe: Draught of Raw Magic [Rank 3] (RECIPE!)
			}),
			spell(188347, {	-- Flask of Ten Thousand Scars [Rank 2]
				i(127951),	-- Recipe: Flask of Ten Thousand Scars [Rank 3] (RECIPE!)
			}),
			spell(188344, {	-- Flask of the Countless Armies [Rank 2]
				i(127950),	-- Recipe: Flask of the Countless Armies [Rank 3] (RECIPE!)
			}),
			spell(188341, {	-- Flask of the Seventh Demon [Rank 2]
				i(127949),	-- Recipe: Flask of the Seventh Demon [Rank 3] (RECIPE!)
			}),
			spell(188338, {	-- Flask of the Whispered Pact [Rank 2]
				i(127948),	-- Recipe: Flask of the Whispered Pact [Rank 3] (RECIPE!)
			}),
			spell(188323, {	-- Infernal Alchemist Stone [Rank 2]
				i(127943),	-- Recipe: Infernal Alchemist Stone [Rank 3] (RECIPE!)
			}),
			spell(188335, {	-- Leytorrent Potion [Rank 2]
				i(127947),	-- Recipe: Leytorrent Potion [Rank 3] (RECIPE!)
			}),
			spell(247620, bubbleDownSelf({["timeline"] = { ADDED_7_3_0 } }, {	-- Lightblood Elixir [Rank 2]
				i(151659),	-- Recipe: Lightblood Elixir [Rank 3] (RECIPE!)
			})),
			spell(188326, {	-- Potion of Deadly Grace [Rank 2]
				i(127944),	-- Recipe: Potion of Deadly Grace [Rank 3] (RECIPE!)
			}),
			spell(188329, {	-- Potion of the Old War [Rank 2]
				i(127945),	-- Recipe: Potion of the Old War [Rank 3] (RECIPE!)
			}),
			spell(188317, {	-- Skaggldrynk [Rank 2]
				i(127941),	-- Recipe: Skaggldrynk [Rank 3] (RECIPE!)
			}),
			spell(188320, {	-- Skystep Potion [Rank 2]
				i(127942),	-- Recipe: Skystep Potion [Rank 3] (RECIPE!)
			}),
			spell(188350, {	-- Spirit Cauldron [Rank 2]
				i(127952),	-- Recipe: Spirit Cauldron [Rank 3] (RECIPE!)
			}),
			spell(188311, {	-- Sylvan Elixir [Rank 2]
				i(127939),	-- Recipe: Sylvan Elixir [Rank 3] (RECIPE!)
			}),
			spell(247690, bubbleDownSelf({["timeline"] = { ADDED_7_3_0 } }, {	-- Tears of the Naaru [Rank 2]
				i(151705),	-- Recipe: Tears of the Naaru [Rank 3] (RECIPE!)
			})),
			spell(188332, {	-- Unbending Potion [Rank 2]
				i(127946),	-- Recipe: Unbending Potion [Rank 3] (RECIPE!)
			}),
			spell(188800, {	-- Wild Transformation [Rank 1]
				i(128210),	-- Recipe: Wild Transmutation [Rank 2] (RECIPE!)
				i(128211),	-- Recipe: Wild Transmutation [Rank 3] (RECIPE!)
				r(213257),	-- Transmute: Blood of Sargeras (RECIPE!)
				r(213252),	-- Transmute: Cloth to Herbs (RECIPE!)
				r(213249),	-- Transmute: Cloth to Skins (RECIPE!)
				r(213254),	-- Transmute: Fish to Gems (RECIPE!)
				r(213255),	-- Transmute: Meat to Pants (RECIPE!)
				r(213256),	-- Transmute: Meat to Pet (RECIPE!)
				r(213248),	-- Transmute: Ore to Cloth (RECIPE!)
				r(213251),	-- Transmute: Ore to Herbs (RECIPE!)
				r(213253),	-- Transmute: Skins to Herbs (RECIPE!)
				r(213250),	-- Transmute: Skins to Ore (RECIPE!)
			}),
		}),
		filter(BATTLE_PETS, {
			i(137608, {	-- Growling Sac
				["cost"] = {{ "i", 137599, 1 }},	-- Pulsating Sac
				["sym"] = {{"select","itemID",
					44822,	-- Albino Snake (PET!)
					11023,	-- Ancona Chicken (PET!)
					10360,	-- Black Kingsnake (PET!)
					29958,	-- Blue Dragonhawk Hatchling (PET!)
					70160,	-- Crimson Lasher (PET!)
					8501,	-- Hawk Owl (PET!)
					120051,	-- Kaliri Hatchling (PET!)
					29363,	-- Mana Wyrmling (PET!)
					129826,	-- Nursery Spider (PET!)
					48120,	-- Obsidian Hatchling (PET!)
					29902,	-- Red Moth (PET!)
					29903,	-- Yellow Moth (PET!)
				}},
				["groups"] = {
					i(136905),	-- Ridgeback Piglet (PET!)
					i(136908),	-- Thaumaturgical Piglet (PET!)
					i(139789),	-- Transmutant (PET!)
				},
			}),
			spell(213256, {	-- Transmute: Meat to Pet
				i(137599),	-- Pulsating Sac
			}),
		}),
		filter(CONSUMABLES, {
			i(127834),	-- Ancient Healing Potion
			i(127835),	-- Ancient Mana Potion
			i(152615, {["timeline"] = {ADDED_7_3_0}}),	-- Astral Healing Potion
			i(127839),	-- Avalanche Elixir
			i(127836),	-- Coastal Rejuvenation Potion
			i(127837),	-- Draught of Raw Magic
			i(127850),	-- Flask of Ten Thousand Scars
			i(127849),	-- Flask of the Countless Armies
			i(127848),	-- Flask of the Seventh Demon
			i(127847),	-- Flask of the Whispered Pact
			i(127846),	-- Leytorrent Potion
			i(151608, {["timeline"] = {ADDED_7_3_0}}),	-- Lightblood Elixir
			i(127843),	-- Potion of Deadly Grace
			i(142117, {["timeline"] = {ADDED_7_1_0}}),	-- Potion of Prolonged Power
			i(127844),	-- Potion of the Old War
			i(136653, {["timeline"] = {ADDED_8_0_1}}),	-- Silvery Salve
			i(127840),	-- Skaggldrynk
			i(127841),	-- Skystep Potion
			i(127851, {	-- Spirit Cauldron
				i(127858),	-- Spirit Flask
			}),
			i(127838),	-- Sylvan Elixir
			i(151609, {["timeline"] = {ADDED_7_3_0}}),	-- Tears of the Naaru
			i(127845),	-- Unbending Potion
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(256680),	-- Arcan'dor Cutting Fountain (DECOR!)
			i(257045),	-- Starry Scrying Pool (DECOR!)
		})),
		spell(213255, {	-- Transmute: Meat to Pants
			i(137600, {	-- Pile of Pants
				i(139393),	-- Fizzy Fleece Leggings
				i(139394),	-- Parachute Pants
				i(139392),	-- Greaves of Ten Thousand Links
				i(139395),	-- Reverbium-Flecked Legplates
			}),
		}),
		filter(TRINKET_F, {
			i(151607, {["timeline"] = {ADDED_7_3_0}}),	-- Astral Alchemist Stone
			i(127842),	-- Infernal Alchemist Stone
		}),
	}),
	prof(ARCHAEOLOGY, {
		i(130903),	-- Ancient Suramar Scroll
		i(137867),	-- Design: Shadowruby Band [Rank 3] (RECIPE!)
		i(130904),	-- Highmountain Ritual-Stone
		i(130905),	-- Mark of the Deceiver
		i(87399),	-- Restored Artifact
		header(HEADERS.Currency, ARCH_CURRENCY_DEMONIC, sharedData({["cost"]={{"c",ARCH_CURRENCY_DEMONIC,50}}},{	-- TODO: someone can add different fragment costs within as needed
			["providers"] = {
				{ "o", 246812 },	-- Demonic Archaeology Find
				-- #if AFTER 7.2.5
				{ "o", 268466 },	-- Demonic Archaeology Find
				{ "o", 268451 },	-- Demonic Archaeology Find
				-- #endif
			},
			["maps"] = {
				AZSUNA,
				STORMHEIM,
				SURAMAR,
				VALSHARAH,
			},
			["groups"] = {
				i(130917),	-- Flayed-Skin Chronicle
				i(130920),	-- Houndstooth Hauberk
				i(130916),	-- Imp's Cup
				i(130918),	-- Malformed Abyssal
				i(130919),	-- Orb of Inner Chaos
				i(130932),	-- Pristine Flayed-Skin Chronicle
				i(130935),	-- Pristine Houndstooth Hauberk
				i(130931),	-- Pristine Imp's Cup
				i(130933),	-- Pristine Malformed Abyssal
				i(130934),	-- Pristine Orb of Inner Chaos
			},
		})),
		header(HEADERS.Currency, ARCH_CURRENCY_HIGHBORNE, sharedData({["cost"]={{"c",ARCH_CURRENCY_HIGHBORNE,50}}},{	-- TODO: someone can add different fragment costs within as needed
			["providers"] = {
				{ "o", 246811 },	-- Highborne Archaeology Find
				-- #if AFTER 7.2.0
				{ "o", 268440 },	-- Highborne Archaeology Find
				{ "o", 268453 },	-- Highborne Archaeology Find
				-- #endif
			},
			["maps"] = {
				AZSUNA,
				SURAMAR,
				VALSHARAH,
			},
			["groups"] = {
				i(130907),	-- Inert Leystone Charm
				i(130910),	-- Nobleman's Letter Opener
				i(130909),	-- Pre-War Highborne Tapestry
				i(130922),	-- Pristine Inert Leystone Charm
				i(130925),	-- Pristine Nobleman's Letter Opener
				i(130924),	-- Pristine Pre-War Highborne Tapestry
				i(130923),	-- Pristine Quietwine Vial
				i(130921),	-- Pristine Violetglass Vessel
				i(130908),	-- Quietwine Vial
				i(137782, {["timeline"] = {ADDED_7_1_0}}),	-- Vantus Rune Technique: Grand Magistrix Elisande [Rank 3] (RECIPE!)
				i(130906),	-- Violetglass Vessel
			},
		})),
		header(HEADERS.Currency, ARCH_CURRENCY_HIGHMOUNTAIN, sharedData({["cost"]={{"c",ARCH_CURRENCY_HIGHMOUNTAIN,50}}},{	-- TODO: someone can add different fragment costs within as needed
			["providers"] = {
				{ "o", 246804 },	-- Highmountain Tauren Archaeology Find
				-- #if AFTER 7.2.0
				{ "o", 268450 },	-- Highmountain Tauren Archaeology Find
				-- #endif
			},
			["maps"] = {
				HIGHMOUNTAIN,
				652,	-- Thunder Totem
				750,	-- Thunder Totem
			},
			["groups"] = {
				i(130914),	-- Drogbar Gem-Roller
				i(130913),	-- Hand-Smoothed Pyrestone
				i(130912),	-- Moosebone Fish-Hook
				i(130929),	-- Pristine Drogbar Gem-Roller
				i(130928),	-- Pristine Hand-Smoothed Pyrestone
				i(130927),	-- Pristine Moosebone Fish-Hook
				i(130930),	-- Pristine Stonewood Bow
				i(130926),	-- Pristine Trailhead Drum
				i(130915),	-- Stonewood Bow
				i(130911),	-- Trailhead Drum
			},
		})),
	}),
	prof(BLACKSMITHING, {
		n(ARMOR, {
			i(123917),	-- Demonsteel Armguards
			i(123911),	-- Demonsteel Boots
			i(123910),	-- Demonsteel Breastplate
			i(123912),	-- Demonsteel Gauntlets
			i(123914),	-- Demonsteel Greaves
			i(123913),	-- Demonsteel Helm
			i(123915),	-- Demonsteel Pauldrons
			i(123916),	-- Demonsteel Waistguard
			i(151576, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrial Breastplate
			i(123898),	-- Leystone Armguards
			i(123892),	-- Leystone Boots
			i(123891),	-- Leystone Breastplate
			i(123893),	-- Leystone Gauntlets
			i(123895),	-- Leystone Greaves
			i(123894),	-- Leystone Helm
			i(123896),	-- Leystone Pauldrons
			i(123897),	-- Leystone Waistguard
			i(146667, {["timeline"] = {ADDED_7_2_0}}),	-- Rethu's Incessant Courage
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(247922),	-- Suramar Fence (DECOR!)
			i(247909),	-- Suramar Fencepost (DECOR!)
			i(245408),	-- Tauren Soup Pot (DECOR!)
		})),
		filter(MISC, {
			i(124461),	-- Demonsteel Bar
			i(136708),	-- Demonsteel Stirrups
			i(151239, {["timeline"] = {ADDED_7_3_0}}),	-- Felslate Anchor
			i(123956),	-- Leystone Hoofplates
		}),
		filter(MOUNTS, {
			i(137686, {["timeline"] = {ADDED_7_1_0}}),	-- Steelbound Devourer (MOUNT!)
		}),
		filter(RELICS_F, {
			i(136685),	-- Consecrated Spike
			i(136686),	-- Flamespike
			i(136684),	-- Gleaming Iron Spike
			i(136683),	-- Terrorspike
		}),
	}),
	prof(COOKING, {
		i(133571),	-- Azshari Salad
		i(133567),	-- Barracuda Mrglgagh
		i(133576),	-- Bear Tartare
		i(133681),	-- Crispy Bacon
		i(133561),	-- Deep-Fried Mossgill
		i(133575),	-- Dried Mackerel Strips
		i(133569),	-- Drogbar-Style Salmon
		i(133563),	-- Faronaar Fizz
		i(152564, {["timeline"] = {ADDED_7_3_0}}),	-- Feast of the Fishes
		i(133577),	-- Fighter Chow
		i(133574),	-- Fishbrul Special
		i(133578),	-- Hearty Feast
		i(133568),	-- Koi-Scented Stormray
		i(133579),	-- Lavish Suramar Feast
		i(133565),	-- Leybeque Ribs
		i(133572),	-- Nightborne Delicacy Platter
		i(133562),	-- Pickled Stormray
		i(133557),	-- Salt and Pepper Shank
		i(133573),	-- Seed-Battered Fish Plate
		i(142334, {["timeline"] = {ADDED_7_1_0}}),	-- Spiced Falcosaur Omelet
		i(133564),	-- Spiced Rib Roast
		i(133566),	-- Suramar Surf and Turf
		i(133570),	-- The Hungry Magister
	}),
	prof(ENCHANTING, {
		spell(13262, {	-- Disenchant
			i(124440),	-- Arkhana
			i(124442),	-- Chaos Crystal
			i(124441),	-- Leylight Shard
		}),
		n(ARMOR_ENCHANTMENTS, {
			i(128549),	-- Enchant Cloak - Binding of Agility
			i(128550),	-- Enchant Cloak - Binding of Intellect
			i(128548),	-- Enchant Cloak - Binding of Strength
			i(128546),	-- Enchant Cloak - Word of Agility
			i(128547),	-- Enchant Cloak - Word of Intellect
			i(128545),	-- Enchant Cloak - Word of Strength
			i(128558),	-- Enchant Glove - Legion Herbalism
			i(128559),	-- Enchant Glove - Legion Mining
			i(128560),	-- Enchant Glove - Legion Skinning
			i(128561),	-- Enchant Glove - Legion Surveying
			i(141910),	-- Enchant Neck - Mark of the Ancient Priestess
			i(128551),	-- Enchant Neck - Mark of the Claw
			i(144307, {["timeline"] = {ADDED_7_1_5}}),	-- Enchant Neck - Mark of the Deadly
			i(128552),	-- Enchant Neck - Mark of the Distant Army
			i(141908),	-- Enchant Neck - Mark of the Heavy Hide
			i(128553),	-- Enchant Neck - Mark of the Hidden Satyr
			i(144304, {["timeline"] = {ADDED_7_1_5}}),	-- Enchant Neck - Mark of the Master
			i(144306, {["timeline"] = {ADDED_7_1_5}}),	-- Enchant Neck - Mark of the Quick
			i(141909),	-- Enchant Neck - Mark of the Trained Soldier
			i(144305, {["timeline"] = {ADDED_7_1_5}}),	-- Enchant Neck - Mark of the Versatile
			i(128541),	-- Enchant Ring - Binding of Critical Strike
			i(128542),	-- Enchant Ring - Binding of Haste
			i(128543),	-- Enchant Ring - Binding of Mastery
			i(128544),	-- Enchant Ring - Binding of Versatility
			i(128537),	-- Enchant Ring - Word of Critical Strike
			i(128538),	-- Enchant Ring - Word of Haste
			i(128539),	-- Enchant Ring - Word of Mastery
			i(128540),	-- Enchant Ring - Word of Versatility
			i(128554),	-- Enchant Shoulder - Boon of the Scavenger
		}),
		filter(BATTLE_PETS, {
			i(128533),	-- Enchanted Cauldron (PET!)
			i(128535),	-- Enchanted Pen (PET!)
			i(128534),	-- Enchanted Torch (PET!)
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(256681),	-- Nightspire Fountain (DECOR!)
			i(247923),	-- Suramar Containment Cell (DECOR!)
		})),
		filter(RELICS_F, {
			i(136691),	-- Immaculate Fibril
			i(136689),	-- Soul Fibril
		}),
		filter(TOYS, {
			i(128536),	-- Leylight Brazier (TOY!)
		}),
	}),
	prof(ENGINEERING, {
		n(ARMOR, {
			i(132500),	-- Blink-Trigger Headgun
			i(132502),	-- Bolt-Action Headgun
			i(144333, {["timeline"] = {ADDED_7_1_5}}),	-- Chain Skullblasters
			i(132506),	-- Double-Barreled Cranial Cannon
			i(144334, {["timeline"] = {ADDED_7_1_5}}),	-- Heavy Skullblasters
			i(132507),	-- Ironsight Cranial Cannon
			i(132503),	-- Reinforced Headgun
			i(144332, {["timeline"] = {ADDED_7_1_5}}),	-- Rugged Skullblasters
			i(132505),	-- Sawed-Off Cranial Cannon
			i(132504),	-- Semi-Automagic Cranial Cannon
			i(132501),	-- Tactical Headgun
			i(144331, {["timeline"] = {ADDED_7_1_5}}),	-- Tailored Skullblasters
		}),
		filter(BATTLE_PETS, {
			i(132519),	-- Trigger (PET!)
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258226),	-- Dalaran Auto-Hammer (DECOR!)
			i(258225),	-- Failed Failure Detection Pylon (DECOR!)
		})),
		filter(RELICS_F, {
			i(136687),	-- "The Felic"
			i(136688),	-- Shockinator
		}),
		filter(MISC, {
			i(132514),	-- Auto-Hammer
			i(132509),	-- Deployable Bullet Dispenser
			i(132515),	-- Failure Detection Pylon
			i(151651, {["timeline"] = {ADDED_7_3_0}}),	-- Gravitational Reduction Slippers
			i(132513),	-- Gunpack
			i(132510),	-- Gunpowder Charge
			i(132516),	-- Gunshoes
			i(132517),	-- Intra-Dalaran Wormhole Generator
			i(136606),	-- Leystone Buoy
			i(134125),	-- Mecha-Bond Imprint Matrix (CI!)
			i(132511),	-- Pump-Action Bandage Gun
			i(132523),	-- Reaves Battery
			i(132530, {	-- Reaves Module: Bling Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132526, {	-- Reaves Module: Failure Detection Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132528, {	-- Reaves Module: Fireworks Display Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132531, {	-- Reaves Module: Piloted Combat Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132525, {	-- Reaves Module: Repair Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132529, {	-- Reaves Module: Snack Distribution Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(132524, {	-- Reaves Module: Wormhole Generator Mode (CI!)
				["requireSkill"] = ENGINEERING,
			}),
			i(144341, {["timeline"] = {ADDED_7_1_5}}),	-- Rechargeable Reaves Battery
			i(132982),	-- Sonic Environment Enhancer
		}),
		filter(TOYS, {
			i(132518),	-- Blingtron's Circuit Design Tutorial (TOY!)
			i(151652, {["timeline"] = {ADDED_7_3_0}}),	-- Wormhole Generator: Argus (TOY!)*
		}),
	}),
	-- #if BEFORE BFA
	prof(FIRST_AID, {
		i(142332, {["timeline"] = {ADDED_7_1_0}}),	-- Feathered Luffa
		i(133940),	-- Silkweave Bandage
		i(133942),	-- Silkweave Splint
		i(136653),	-- Silvery Salve
	}),
	-- #endif
	prof(FISHING, {
		i(133742),	-- Ancient Black Barracuda
		i(133733),	-- Ancient Highmountain Salmon
		i(133730),	-- Ancient Mossgill
		i(146960, {["timeline"] = {ADDED_7_3_0}}),	-- Ancient Totem Fragment
		i(133740),	-- Axefish
		i(124112),	-- Black Barracuda
		i(133732),	-- Coldriver Carp
		i(146959, {["timeline"] = {ADDED_7_3_0}}),	-- Corrupted Globule
		i(124107),	-- Cursed Queenfish
		i(146963, {["timeline"] = {ADDED_7_3_0}}),	-- Desecrated Seaweed
		i(138448),	-- Emblem of Margoss
		i(146848, {["timeline"] = {ADDED_7_3_0}}),	-- Fragmented Enchantment
		i(133727),	-- Ghostly Queenfish
		i(146962, {["timeline"] = {ADDED_7_3_0}}),	-- Golden Minnow
		i(133735),	-- Graybelly Lobster
		i(124109),	-- Highmountain Salmon
		i(143748, {["timeline"] = {ADDED_7_1_0}}),	-- Leyscale Koi
		i(133725),	-- Leyshimmer Blenny
		i(133887, {	-- Luminous Pearl
			["description"] = "Pre-requisites:\n\n  Be level 45.\n  Have level 100 Legion Fishing.\n  Complete the achievement 'Bigger Fish to Fry'.\n\nOnce you have all of these things, you can fish from any Fishing Pool on the Broken Isles for this item.",
			["lvl"] = { 45 },
		}),
		i(133737),	-- Magic-Eater Frog
		i(124108),	-- Mossgill Perch
		i(133731),	-- Mountain Puffer
		i(133726),	-- Nar'thalas Hermit
		i(133734),	-- Oodelfjisk
		i(152912, {	-- Pond Nettle (MOUNT!)
			["description"] = "Caught in green pools around Antoran Wastes.",
			["mapID"] = ANTORAN_WASTES,
			["timeline"] = { ADDED_7_3_0 },
		}),
		i(124111),	-- Runescale Koi
		i(133741),	-- Seabottom Squid
		i(133738),	-- Seerspine Puffer
		i(146961, {["timeline"] = {ADDED_7_3_0}}),	-- Shiny Bauble
		i(133607),	-- Silver Mackerel
		i(124110),	-- Stormray
		i(133739),	-- Tainted Runescale Koi
		i(133728),	-- Terrorfin
		i(133729),	-- Thorned Flounder
		i(133736),	-- Thundering Stormray
		filter(RECIPES, {
			i(34109, {	-- Weather-Beaten Journal (RECIPE!)
				["description"] = "Can be fished from schools.",
			}),
		}),
	}),
	prof(HERBALISM, {
		n(DISCOVERY, {
			r(195114, {	-- Herb Gathering (Legion)
				["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
				["collectible"] = false,
			}),
			r(193290),	-- Herbalism Journal
			applyclassicphase(BFA_PHASE_ONE, r(265834, {["timeline"] = {ADDED_8_0_1}})),	-- Herb Gathering (Legion)
		}),
		spell(2366, {	-- Herb Gathering
			i(151857, {["timeline"] = {ADDED_7_3_0}}),	-- Adolescent Astral Glory
			i(124101),	-- Aethril
			i(129117),	-- Aethril Sample
			i(129284),	-- Aethril Seed
			i(151565, {["timeline"] = {ADDED_7_3_0}}),	-- Astral Glory
			i(151858, {["timeline"] = {ADDED_7_3_0}}),	-- Astral Glory Root Cluster
			i(129141),	-- Blight-Choked Herb
			i(129136),	-- Blight-Twisted Herb
			i(124102),	-- Dreamleaf
			i(129118),	-- Dreamleaf Sample
			i(129285),	-- Dreamleaf Seed
			i(153045, {	-- Fel Lasher (PET!)
				["description"] = "This can be looted from any herb on Argus.",
				["timeline"] = { ADDED_7_3_0 }
			}),
			i(124106),	-- Felwort
			i(129122),	-- Felwort Sample
			i(129289),	-- Felwort Seed
			i(124104),	-- Fjarnskaggl
			i(129120),	-- Fjarnskaggl Sample
			i(129287),	-- Fjarnskaggl Seed
			i(124103),	-- Foxflower
			i(129278),	-- Foxflower Scent Gland
			i(129286),	-- Foxflower Seed
			i(129140),	-- Jeweled Spade Handle
			i(129137),	-- Nibbled Foxflower Stem
			i(129135),	-- Ragged Strips of Silk
			i(129138),	-- Ram's-Horn Trowel
			i(129142),	-- Runed Journal Page
			i(129143),	-- Scribbled Ramblings
			i(124105),	-- Starlight Rose
			i(129288),	-- Starlight Rose Seed
			i(129158),	-- Starlight Rosedust
			i(129121),	-- Starlight Rosedust
			i(151856, {["timeline"] = {ADDED_7_3_0}}),	-- Withered Astral Glory
		}),
	}),
	prof(INSCRIPTION, {
		filter(GLYPHS, {
			i(140630),	-- Mark of the Doe (CI!)
			i(129021),	-- Mark of the Sentinel (CI!)
			i(187933, {["timeline"] = {ADDED_9_1_5}}),	-- Mark of the Duskwing Raven (CI!)
			i(139314, {	-- Grimoire of the Abyssal (CI!)
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(129018),	-- Grimoire of the Fel Imp (CI!)
			i(139312, {	-- Grimoire of the Observer (CI!)
				["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_10_1_5 },
			}),
			i(147119, {	-- Grimoire of the Shadow Succubus (CI!)
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(139310),	-- Grimoire of the Shivarra (CI!)
			i(139311),	-- Grimoire of the Voidlord (CI!)
			i(139315, {	-- Grimoire of the Wrathguard (CI!)
				["timeline"] = { ADDED_7_2_0 },
			}),
			i(139339),	-- Glyph of Yu'lon's Grace (CI!)
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(247916),	-- Covered Square Suramar Table (DECOR!)
			i(258224),	-- Dalaran Display Shelves (DECOR!)
			i(247918),	-- Nightborne Jeweler's Table (DECOR!)
			i(245396),	-- Suramar Dresser (DECOR!)
			i(247925),	-- Suramar Storage Crate (DECOR!)
			i(245459),	-- Tauren Storage Chest (DECOR!)

		})),
		category(106, {	-- Tarot Cards
			sp(191659, {	-- Darkmoon Card of the Legion
				sp(191654, {	-- Dominion Deck
					i(128705),	-- Darkmoon Deck: Dominion
				}),
				sp(191655, {	-- Hellfire Deck
					i(128709),	-- Darkmoon Deck: Hellfire
				}),
				sp(191657, {	-- Immortality Deck
					i(128711),	-- Darkmoon Deck: Immortality
				}),
				sp(191656, {	-- Promises Deck
					i(128710),	-- Darkmoon Deck: Promises
				}),
			}),
		}),
		sp(227043, {	-- Tome of the Tranquil Mind
			i(141446),	-- Tome of the Tranquil Mind
		}),
		filter(TOYS, {
			i(129211),	-- Steamy Romance Novel Kit (TOY!)
		}),
		filter(TRINKET_F, {
			i(128978),	-- Prophecy Tarot
		}),
		filter(RELICS_F, {
			i(136692),	-- Aqual Mark
			i(136693),	-- Straszan Mark
		}),
	}),
	prof(FISHING, {
		spell(201943, {	-- Better Luck Next Time
			["maps"] = { AZSUNA, BROKEN_SHORE, EYE_OF_AZSHARA, HIGHMOUNTAIN, STORMHEIM, SURAMAR, VALSHARAH },
			["groups"] = {
				i(142528),	-- Crate of Bobbers: Can of Worms (TOY!)
				i(142529),	-- Crate of Bobbers: Cat Head (TOY!)
				i(142530),	-- Crate of Bobbers: Tugboat (TOY!)
				i(143662),	-- Crate of Bobbers: Wooden Pepe (TOY!)
				i(139408, {	-- Deck Sandals
					["bonusID"] = 1812,
				}),
				i(139407, {	-- Diver's Chain Boots
					["bonusID"] = 1812,
				}),
				i(139405, {	-- Kul'Tiras Marine Issue Boots
					["bonusID"] = 1812,
				}),
				i(139406, {	-- Sea Dog Boots
					["bonusID"] = 1812,
				}),
			},
		}),
	}),
	prof(JEWELCRAFTING, {
		filter(TOYS, {
			i(130254),	-- Chatterstone (TOY!)
			i(130251),	-- JewelCraft (TOY!)
		}),
		n(HEAD, {
			i(151587),	-- Empyrial Cosmic Crown
			i(151588),	-- Empyrial Deep Crown
			i(151589),	-- Empyrial Elemental Crown
			i(151590),	-- Empyrial Titan Crown
		}),
		filter(NECK_F, {
			i(130241),	-- Ancient Maelstrom Amulet
			i(130228),	-- Azsunite Pendant
			i(130234),	-- Blessed Dawnlight Medallion
			i(130226),	-- Deep Amber Pendant
			i(130244),	-- Grim Furystone Gorget
			i(130240),	-- Intrepid Necklace of Prophecy
			i(136712),	-- Queen's Opal Pendant
			i(130243),	-- Raging Furystone Gorget
			i(130242),	-- Righteous Dawnlight Medallion
			i(130227),	-- Skystone Pendant
			i(130233),	-- Sorcerous Shadowruby Pendant
			i(130236),	-- Subtle Shadowruby Pendant
			i(130239),	-- Slyvan Maelstrom Amulet
			i(130237),	-- Tranquil Necklace of Prophecy
			i(130235),	-- Twisted Pandemonite Choker
			i(130238),	-- Vindictive Pandemonite Choker
		}),
		filter(FINGER_F, {
			i(130225),	-- Azsunite Loop
			i(130231),	-- Dawnlight Band
			i(130223),	-- Deep Amber Loop
			i(130230),	-- Maelstrom Band
			i(130229),	-- Prophetic Band
			i(136711),	-- Queen's Opal Loop
			i(136713),	-- Shadowruby Band
			i(130224),	-- Skystone Loop
		}),
		spell(31252, {	-- Prospecting
			i(151718),	-- Argulite
			i(151720),	-- Chemirine
			i(151722),	-- Florid Malachite
			i(151721),	-- Hesselian
			i(151579),	-- Labradorite
			i(151719),	-- Lightsphene
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(245557),	-- Shaded Suramar Window (DECOR!)
			i(258227),	-- Suramar Jeweler's Assortment (DECOR!)
		})),
	}),
	prof(LEATHERWORKING, {
		n(ARMOR, {
			filter(LEATHER, {
				i(128890),	-- Dreadleather Belt
				i(128891),	-- Dreadleather Bindings
				i(128885),	-- Dreadleather Footpads
				i(128886),	-- Dreadleather Gloves
				i(128884),	-- Dreadleather Jerkin
				i(128887),	-- Dreadleather Mask
				i(128888),	-- Dreadleather Pants
				i(128889),	-- Dreadleather Shoulderguard
				i(151577, {["timeline"] = {ADDED_7_3_0}}),	-- Fiendish Shoulderguards
				i(146669, {["timeline"] = {ADDED_7_2_0}}),	-- The Sentinel's Eternal Refuge
				i(128882),	-- Warhide Belt
				i(128883),	-- Warhide Bindings
				i(128877),	-- Warhide Footpads
				i(128878),	-- Warhide Gloves
				i(128876),	-- Warhide Jerkin
				i(128879),	-- Warhide Mask
				i(128880),	-- Warhide Pants
				i(128881),	-- Warhide Shoulderguard
			}),
			filter(MAIL, {
				i(128899),	-- Battlebound Armbands
				i(128898),	-- Battlebound Girdle
				i(128894),	-- Battlebound Grips
				i(128892),	-- Battlebound Hauberk
				i(128896),	-- Battlebound Leggings
				i(128897),	-- Battlebound Spaulders
				i(128893),	-- Battlebound Treads
				i(128895),	-- Battlebound Warhelm
				i(128907),	-- Gravenscale Armbands
				i(128906),	-- Gravenscale Girdle
				i(128902),	-- Gravenscale Grips
				i(128900),	-- Gravenscale Hauberk
				i(128904),	-- Gravenscale Leggings
				i(128905),	-- Gravenscale Spaulders
				i(128901),	-- Gravenscale Treads
				i(128903),	-- Gravenscale Warhelm
				i(151578, {["timeline"] = {ADDED_7_3_0}}),	-- Fiendish Spaulders
				i(146668, {["timeline"] = {ADDED_7_2_0}}),	-- Vigilance Perch
			}),
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(257400),	-- Highmountain Tanner's Frame (DECOR!)
			i(245407),	-- Tauren Fencepost (DECOR!)
			i(245406),	-- Tauren Leather Fence (DECOR!)
		})),
		filter(MISC, {
			i(142406, {["timeline"] = {ADDED_7_1_0}}),	-- Drums of the Mountain
			i(131746),	-- Stonehide Leather Barding
		}),
		filter(MOUNTS, {
			i(129962),	-- Great Northern Elderhorn (MOUNT!)
		}),
		filter(TOYS, {
			i(129961),	-- Flaming Hoop (TOY!)
			i(129956),	-- Leather Love Seat (TOY!)
			i(129960),	-- Leather Pet Bed (TOY!)
			i(129958),	-- Leather Pet Leash (TOY!)
		}),
	}),
	prof(MINING, {
		n(DISCOVERY, {
			r(195122, {	-- Mining (Legion)
				["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
				["collectible"] = false,
			}),
			r(2656),	-- Mining Journal / Smelting
			applyclassicphase(BFA_PHASE_ONE, r(265849, {["timeline"] = {ADDED_8_0_1}})),	-- Mining (Legion)
		}),
		spell(2575, {	-- Mining
			i(124493),	-- Battered Mining Pick
			i(124494),	-- Chunk of Horn
			i(151864, {["timeline"] = {ADDED_7_3_0}}),	-- Embedded Empyrium Ore
			i(151564, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrium
			i(151865, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrium Bits
			i(151860, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrium Deposit Chunk
			i(151861, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrium Dust
			i(151863, {["timeline"] = {ADDED_7_3_0}}),	-- Empyrium Seam Chunk
			i(123919),	-- Felslate
			i(124496),	-- Felslate Deposit Sample
			i(124497),	-- Felslate Seam Sample
			i(124444),	-- Infernal Brimstone
			i(124502),	-- Infernal Brimstone Sample
			i(124489),	-- Leystone Deposit Sample
			i(123918),	-- Leystone Ore
			i(124490),	-- Leystone Seam Sample
			i(124498),	-- Living Felslate Sample
			i(124491),	-- Living Leystone Sample
			i(124499),	-- Ore-Bound Eye
			i(124501),	-- Ore-Choked Heart
			i(124500),	-- Severed Arm
			i(124492),	-- Torn Journal Page
			i(151862, {["timeline"] = {ADDED_7_3_0}}),	-- Unusable Empyrium Core
			-- Not Ore --
			--[[	No need to list Tradegoods w/ many other sources
			i(151718, {["timeline"] = {ADDED_7_3_0}}),	-- Argulite
			i(151720, {["timeline"] = {ADDED_7_3_0}}),	-- Chemirine
			i(151722, {["timeline"] = {ADDED_7_3_0}}),	-- Florid Malachite
			i(151721, {["timeline"] = {ADDED_7_3_0}}),	-- Hesselian
			i(151579, {["timeline"] = {ADDED_7_3_0}}),	-- Labradorite
			i(151719, {["timeline"] = {ADDED_7_3_0}}),	-- Lightsphene
			--]]
		}),
	}),
	prof(SKINNING, {
		filter(BATTLE_PETS, {
			i(153057, {	-- Fossorial Bile Larva (PET!)
				["description"] = "This can be obtained from any skinnable Argus mob.",
				["timeline"] = { ADDED_7_3_0 },
			}),
		}),
		n(DISCOVERY, {
			r(195125, {	-- Skinning (Legion)
				["timeline"] = { ADDED_7_0_3_LAUNCH, REMOVED_8_0_1 },
				["collectible"] = false,
			}),
			r(194174),	-- Skinning Journal
			applyclassicphase(BFA_PHASE_ONE, r(265867, {["timeline"] = {ADDED_8_0_1}})),	-- Skinning (Legion)
		}),
		spell(8613, {	-- Skinning
			i(151566, {["timeline"] = {ADDED_7_3_0}}),	-- Fiendish Leather
			i(124115),	-- Stormscale
			i(124113),	-- Stonehide Leather
		}),
		filter(TOYS, {
			i(130102),	-- Mother's Skinning Knife (TOY!)
		}),
	}),
	prof(TAILORING, {
		n(ARMOR, {
			i(146666, {["timeline"] = {ADDED_7_2_0}}),	-- Celumbra, the Night's Dichotomy
			i(127002),	-- Imbued Silkweave Bracers
			i(127001),	-- Imbued Silkweave Cinch
			i(127019),	-- Imbued Silkweave Cover
			i(127020),	-- Imbued Silkweave Drape
			i(127000),	-- Imbued Silkweave Epaulets
			i(127034),	-- Imbued Silkweave Flourish
			i(126997),	-- Imbued Silkweave Gloves
			i(126998),	-- Imbued Silkweave Hood
			i(126999),	-- Imbued Silkweave Pantaloons
			i(126995),	-- Imbued Silkweave Robe
			i(127033),	-- Imbued Silkweave Shade
			i(126996),	-- Imbued Silkweave Slippers
			i(151571, {["timeline"] = {ADDED_7_3_0}}),	-- Lightweave Breeches
			i(126994),	-- Silkweave Bracers
			i(126993),	-- Silkweave Cinch
			i(127016),	-- Silkweave Cover
			i(127017),	-- Silkweave Drape
			i(126992),	-- Silkweave Epaulets
			i(127032),	-- Silkweave Flourish
			i(126989),	-- Silkweave Gloves
			i(126990),	-- Silkweave Hood
			i(126991),	-- Silkweave Pantaloons
			i(126987),	-- Silkweave Robe
			i(126988),	-- Silkweave Slippers
			i(127031),	-- Silkweave Shade
		}),
		filter(BAGS, {
			i(142075, {["timeline"] = {ADDED_7_1_0}}),	-- Imbued Silkweave Bag
			i(127035),	-- Silkweave Satchel
		}),
		n(DECOR, sharedDataSelf({["timeline"] = { ADDED_11_2_7 }}, {
			i(258557),	-- Beloved Raptor Plushie (DECOR!)
			i(247920),	-- Circular Shal'dorei Rug (DECOR!)
			i(248010),	-- Shal'dorei Open-Air Tent (DECOR!)
		})),
		filter(MISC, {
			i(139503),	-- Bloodtotem Saddle Blanket
			i(137556),	-- Clothes Chest: Dalaran Citizens
			i(137557),	-- Clothes Chest: Karazhan Opera House
			i(137558),	-- Clothes Chest: Molten Core
			-- #if AFTER BFA
			i(133940),	-- Silkweave Bandage
			i(133942),	-- Silkweave Splint
			-- #endif
		}),
		filter(REAGENTS, {
			i(127004),	-- Imbued Silkweave
		}),
	}),
}))));
