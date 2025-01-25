-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local ADAMANT_SCALES = 193214;
local AWAKENED_FIRE = 190321;
local AWAKENED_ORDER = 190324;
local DRACONIUM_ORE = 188658;
local ETERNITY_AMBER = 192850;
local GLIMMERING_ALEXSTRASZITE_CLUTER = 200864;
local GLIMMERING_NOZDORITE_CLUSTER = 200863;
local GLIMMERING_YSERMERALD_CLUSTER = 200865;
local GLOWING_TITAN_ORB = 201406;
local LARGE_STURDY_FEMUR = 201402;
local MYSTIC_SAPPHIRE = 192841;
local PRIMAL_BEAR_SPINE = 201399;
local QUEENS_RUBY = 192838;
local RAINBOW_PEARL = 198397;
local RESILIENT_LEATHER = 193210;
local SEREVITE_ORE = 190396;
local SUNDERED_ONYX = 192847;
local TALLSTRIDER_SINEW = 201404;
local VIBRANT_EMERALD = 192844;
local WILDERCLOTH = 193050;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(VALDRAKKEN_ACCORD, {
		n(VENDORS, {
			n(195770, {	-- Armorsmith Terisk
				["coord"] = { 36.0, 49.7, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 10 ------
					199655,	-- Black Dragonspawn Shoulderpads
					199656,	-- Blue Dragonspawn Shoulderpads
					199657,	-- Bronze Dragonspawn Shoulderpads
					199658,	-- Green Dragonspawn Shoulderpads
					199659,	-- Red Dragonspawn Shoulderpads
					------ RENOWN 17 ------
					199682,	-- Bronze Drakonid Helmet
					199681,	-- Cobalt Drakonid Helmet
					199684,	-- Crimson Drakonid Helmet
					199680,	-- Obsidian Drakonid Helmet
					199683,	-- Verdant Drakonid Helmet
					------ RENOWN 28 ------
					199662,	-- Amber Jeweled Shoulderpads
					199661,	-- Azure Jeweled Shoulderpads
					199670,	-- Black Drakonid Shoulderplates
					199672,	-- Bronze Drakonid Shoulderplates
					199671,	-- Cobalt Drakonid Shoulderplates
					199674,	-- Crimson Drakonid Shoulderplates
					199663,	-- Emerald Jeweled Shoulderpads
					199660,	-- Obsidian Jeweled Shoulderpads
					199664,	-- Ruby Jeweled Shoulderpads
					199673,	-- Verdant Drakonid Shoulderplates
				}},
			}),
			n(191000, {	-- Dothenos
				["coord"] = { 36.5, 62.8, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 11 ------
					199818,	-- Formula: Enchant Boots - Watcher's Loam (RECIPE!)
					199817,	-- Formula: Enchant Cloak - Homebound Speed (RECIPE!)
					199246,	-- Schematic: Tinker: Grounded Circuitry (RECIPE!)
					------ RENOWN 14 ------
					191545,	-- Recipe: Sustaining Alchemist's Stone (RECIPE!)
					194482,	-- Plans: Obsidian Seared Invoker (RECIPE!)
					194479,	-- Plans: Obsidian Seared Claymore (RECIPE!)
					194280,	-- Pattern: Chronocloth Sash (RECIPE!)
					194279,	-- Pattern: Azureweave Slippers (RECIPE!)
					------ RENOWN 15 ------
					198892,	-- Technique: Cliffside Wylderdrake: Red Hair (RECIPE!)
					------ RENOWN 19 ------
					194500,	-- Plans: Khaz'gorite Leatherworker's Toolset (RECIPE!)
					194498,	-- Plans: Khaz'gorite Needle Set (RECIPE!)
					194495,	-- Plans: Khaz'gorite Sickle (RECIPE!)
					199244,	-- Schematic: Khaz'gorite Delver's Helmet  (RECIPE!)
					199245,	-- Schematic: Lapidary's Khaz'gorite Clamps  (RECIPE!)
					194288,	-- Pattern: Master's Wildercloth Alchemist's Robe (RECIPE!)
					194290,	-- Pattern: Master's Wildercloth Enchanter's Hat (RECIPE!)
					194292,	-- Pattern: Master's Wildercloth Gradening Hat (RECIPE!)
					------ RENOWN 23 ------
					194287,	-- Pattern: Chronocloth Reagent Bag (RECIPE!)
					198941,	-- Technique: Contract: Valdrakken Accord (RECIPE!)
					------ RENOWN 28 ------
					194282,	-- Pattern: Cushion of Time Travel (RECIPE!)
					198912,	-- Technique: Illusion Parchment: Whirling Breeze (RECIPE!)
				}},
			}),
			n(185556, {	-- Erugosa
				["coord"] = { 46.5, 46.2, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 3 ------
					199648,	-- Dragon Dinner Fork
					200750,	-- Dragon Dinner Knife
					199649,	-- Dragon Tea Set (TOY!)
					200754,	-- Jeweled Gold Dragon Goblet
					200752,	-- Jeweled Silver Dragon Goblet
					200753,	-- Simple Gold Dragon Goblet
					200751,	-- Simple Silver Dragon Goblet
				}},
			}),
			n(195782, {	-- Giera
				["coord"] = { 31.6, 69.3, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 20 ------
					199754,	-- Ensemble: Azure Valdrakken Clothing
					199753,	-- Ensemble: Black Valdrakken Clothing
					199756,	-- Ensemble: Bronze Valdrakken Clothing
					199752,	-- Ensemble: Crimson Valdrakken Clothing
					199755,	-- Ensemble: Green Valdrakken Clothing
					------ RENOWN 25 ------
					199742,	-- A Mender's Mentality
					199744,	-- Academy Student's Journal
					199741,	-- Compendium of Advanced Spells
					199745,	-- Everflame Night Touch
					194320,	-- Reinforced Lavender Bottle
					199743,	-- Runic Symbols and their Meaning
					198388,	-- Swirling Draconian Concoction
					198389,	-- Weighted Potion Cylinder
				}},
			}),
			n(189197, {	-- Groundkeeper Kama
				["coord"] = { 74.5, 63.1, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 18 ------
					199758,	-- Crimson Proto-Whelp (PET!)
					199757,	-- Magic Nibbler (PET!)
				}},
			}),
			n(187300, {	-- Gryrmpech
				["coord"] = { 37.9, 75.4, THALDRASZUS },
				["sym"] = {{"select","itemID",
					------ RENOWN 6 ------
					199647,	-- Dragon Garden Fork
					199653,	-- Dragon Garden Hand Shovel
					199651,	-- Dragon Garden Hoe
					199652,	-- Dragon Garden Rake
					199654,	-- Dragon Garden Shovel
				}},
			}),
			n(185561, {	-- Kaestrasz
				["coord"] = { 46.8, 78.9, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 9 ------
					-- #if AFTER 10.0.7
					197015,	-- Cliffside Wylderdrake: Dark Skin Variation (MM!)
					-- #endif
					196972,	-- Cliffside Wylderdrake: Plated Brow (MM!)
					197003,	-- Cliffside Wylderdrake: Spiked Cheek (MM!)
					196977,	-- Cliffside Wylderdrake: Split Head Horns (MM!)
					------ RENOWN 15 ------
					-- #if AFTER 10.0.7
					196974,	-- Cliffside Wylderdrake: Four-Horned Chin (MM!)
					-- #endif
					196998,	-- Cliffside Wylderdrake: Hook Horns (MM!)
					197009,	-- Cliffside Wylderdrake: Scaled Pattern (MM!)
					-- #if AFTER 10.0.7
					197004,	-- Cliffside Wylderdrake: Spiked Legs (MM!)
					-- #endif
					197020,	-- Cliffside Wylderdrake: Spear Tail (MM!)
					196989,	-- Cliffside Wylderdrake: White Hair (MM!)
					------ RENOWN 21 ------
					197145,	-- Highland Drake: Bronze Scales (MM!)
					197391,	-- Renewned Proto-Drake: Bronze Scales (MM!)
					197613,	-- Windborne Velocidrake: Bronze Scales (MM!)
					203351,	-- Winding Slitherdrake: Bronze Scales (MM!)
					------ RENOWN 26 ------
					196962,	-- Cliffside Wylderdrake: Silver and Purple Armor (MM!)
					197093,	-- Highland Drake: Silver and Purple Armor (MM!)
					197350,	-- Renewned Proto-Drake: Silver and Purple Armor (MM!)
					197581,	-- Windborne Velocidrake: Silver and Purple Armor (MM!)
					203302,	-- Winding Slitherdrake: Purple and Silver Armor (MM!)
					196961,	-- Cliffside Wylderdrake: Armor (MM!)
					197099,	-- Highland Drake: Armor (MM!)
					197357,	-- Renewed Proto-Drake: Armor (MM!)
					197588,	-- Windborne Velocidrake: Armor (MM!)
					-- #if AFTER 10.1.0
					203305,	-- Winding Slitherdrake: Armor (MM!)
					-- #endif
				}},
				["g"] = {
					i(203432, {	-- Bag of Spicy Pet Snacks (QI!)
						["timeline"] = { ADDED_10_1_5 },
					}),
				},
			}),
			n(193659, {	-- Provisioner Thom
				["coord"] = { 36.5, 50.6, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 16 ------
					199761,	-- Valdrakken Dragonspawn Waistguard
					199762,	-- Valdrakken Guards Belt
					199759,	-- Valdrakken Plate Girdle
					199760,	-- Valdrakken Spellweaver's Cord
					------ RENOWN 22 ------
					199766,	-- Expedition Guard's Helm
					199764,	-- Expedition Mercenary's Helm
					199763,	-- Expedition Researcher's Hood
					199765,	-- Field Scout's Helmet
				}},
			}),
			n(195768, {	-- Sorotis
				["coord"] = { 26.1, 40.1, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 13 ------
					199774,	-- Ancient Titan Blunderbus
					199772,	-- Titan Gatekeeper's Shield
					199776,	-- Titan Watcher's Broadsword
					199775,	-- Titan Watcher's Gladius
					199773,	-- Titan Watcher's Scepter
				}},
			}),
			n(193015, {	-- Unatos
				["coord"] = { 58.1, 35.2, VALDRAKKEN },
				["g"] = bubbleDownRep(FACTION_VALDRAKKEN_ACCORD, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
						i(199648, {	-- Dragon Dinner Fork
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", ADAMANT_SCALES, 3 },
							},
						}),
						i(200750, {	-- Dragon Dinner Knife
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", ADAMANT_SCALES, 3 },
							},
						}),
						i(199649, {	-- Dragon Tea Set (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", SEREVITE_ORE, 3 },
							},
						}),
						i(200754, {	-- Jeweled Gold Dragon Goblet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", SEREVITE_ORE, 5 },
								{ "i", QUEENS_RUBY, 2 },
							},
						}),
						i(200752, {	-- Jeweled Silver Dragon Goblet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", DRACONIUM_ORE, 3 },
								{ "i", QUEENS_RUBY, 2 },
							},
						}),
						i(200753, {	-- Simple Gold Dragon Goblet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
						i(200751, {	-- Simple Silver Dragon Goblet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", DRACONIUM_ORE, 5 },
							},
						}),
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						i(199647, {	-- Dragon Garden Fork
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RAINBOW_PEARL, 1 },
							},
						}),
						i(199653, {	-- Dragon Garden Hand Shovel
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RAINBOW_PEARL, 1 },
							},
						}),
						i(199651, {	-- Dragon Garden Hoe
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RAINBOW_PEARL, 1 },
							},
						}),
						i(199652, {	-- Dragon Garden Rake
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RAINBOW_PEARL, 1 },
							},
						}),
						i(199654, {	-- Dragon Garden Shovel
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RAINBOW_PEARL, 1 },
							},
						}),
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
						i(197015, {	-- Cliffside Wylderdrake: Dark Skin Variation (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(196972, {	-- Cliffside Wylderdrake: Plated Brow (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197003, {	-- Cliffside Wylderdrake: Spiked Cheek (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(196977, {	-- Cliffside Wylderdrake: Split Head Horns (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 10 --
						i(199655, {	-- Black Dragonspawn Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199656, {	-- Blue Dragonspawn Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199657, {	-- Bronze Dragonspawn Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199658, {	-- Green Dragonspawn Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199659, {	-- Red Dragonspawn Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
					}, {	-- RENOWN 11 --
						i(199818, {	-- Formula: Enchant Boots - Watcher's Loam (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199817, {	-- Formula: Enchant Cloak - Homebound Speed (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199246, {	-- Schematic: Tinker: Grounded Circuitry (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 12 --
					}, {	-- RENOWN 13 --
						i(199774, {	-- Ancient Titan Blunderbus
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", GLOWING_TITAN_ORB, 1 },
							},
						}),
						i(199772, {	-- Titan Gatekeeper's Shield
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", GLOWING_TITAN_ORB, 1 },
							},
						}),
						i(199776, {	-- Titan Watcher's Broadsword
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", ETERNITY_AMBER, 1 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199775, {	-- Titan Watcher's Gladius
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", GLOWING_TITAN_ORB, 1 },
							},
						}),
						i(199773, {	-- Titan Watcher's Scepter
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", ETERNITY_AMBER, 1 },
								{ "i", GLOWING_TITAN_ORB, 1 },
							},
						}),
					}, {	-- RENOWN 14 --
						i(191545, {	-- Recipe: Sustaining Alchemist's Stone (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194482, {	-- Plans: Obsidian Seared Invoker (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194479, {	-- Plans: Obsidian Seared Claymore (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194280, {	-- Pattern: Chronocloth Sash (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194279, {	-- Pattern: Azureweave Slippers (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
					}, {	-- RENOWN 15 --
						i(196974, {	-- Cliffside Wylderdrake: Four-Horned Chin (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(196998, {	-- Cliffside Wylderdrake: Hook Horns (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197009, {	-- Cliffside Wylderdrake: Scaled Pattern (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197020, {	-- Cliffside Wylderdrake: Spear Tail (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197004, {	-- Cliffside Wylderdrake: Spiked Legs (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(196989, {	-- Cliffside Wylderdrake: White Hair (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(198892, {	-- Technique: Cliffside Wylderdrake: Red Hair (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 25 },
							},
						}),
					}, {	-- RENOWN 16 --
						i(199761, {	-- Valdrakken Dragonspawn Waistguard
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199762, {	-- Valdrakken Guards Belt
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199759, {	-- Valdrakken Plate Girdle
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199760, {	-- Valdrakken Spellweaver's Cord
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 17 --
						i(199682, {	-- Bronze Drakonid Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(199681, {	-- Cobalt Drakonid Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(199684, {	-- Crimson Drakonid Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(199680, {	-- Obsidian Drakonid Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
						i(199683, {	-- Verdant Drakonid Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", SEREVITE_ORE, 10 },
							},
						}),
					}, {	-- RENOWN 18 --
						i(199758, {	-- Crimson Proto-Whelp (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", PRIMAL_BEAR_SPINE, 3 },
							},
						}),
						i(199757, {	-- Magic Nibbler (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", PRIMAL_BEAR_SPINE, 3 },
							},
						}),
					}, {	-- RENOWN 19 --
						i(194500, {	-- Plans: Khaz'gorite Leatherworker's Toolset (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194498, {	-- Plans: Khaz'gorite Needle Set (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194495, {	-- Plans: Khaz'gorite Sickle (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(199244, {	-- Schematic: Khaz'gorite Delver's Helmet  (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(199245, {	-- Schematic: Lapidary's Khaz'gorite Clamps  (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194288, {	-- Pattern: Master's Wildercloth Alchemist's Robe (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194290, {	-- Pattern: Master's Wildercloth Enchanter's Hat (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194292, {	-- Pattern: Master's Wildercloth Gradening Hat (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
					}, {	-- RENOWN 20 --
						iensemble(199754, {	-- Ensemble: Azure Valdrakken Clothing
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 25 },
								{ "i", MYSTIC_SAPPHIRE, 1 },
							},
						}),
						iensemble(199753, {	-- Ensemble: Black Valdrakken Clothing
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 25 },
								{ "i", SUNDERED_ONYX, 1 },
							},
						}),
						iensemble(199756, {	-- Ensemble: Bronze Valdrakken Clothing
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 25 },
								{ "i", ETERNITY_AMBER, 1 },
							},
						}),
						iensemble(199752, {	-- Ensemble: Crimson Valdrakken Clothing
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 25 },
								{ "i", QUEENS_RUBY, 1 },
							},
						}),
						iensemble(199755, {	-- Ensemble: Green Valdrakken Clothing
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 25 },
								{ "i", VIBRANT_EMERALD, 1 },
							},
						}),
					}, {	-- RENOWN 21 --
						i(197145, {	-- Highland Drake: Bronze Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_ORDER, 1 },
							},
						}),
						i(197391, {	-- Renewned Proto-Drake: Bronze Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_ORDER, 1 },
							},
						}),
						i(197613, {	-- Windborne Velocidrake: Bronze Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_ORDER, 1 },
							},
						}),
						i(203351, {	-- Winding Slitherdrake: Bronze Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_ORDER, 1 },
							},
							["timeline"] = { ADDED_10_1_0 },
						}),
					}, {	-- RENOWN 22 --
						i(199766, {	-- Expedition Guard's Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199764, {	-- Expedition Mercenary's Helm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199763, {	-- Expedition Researcher's Hood
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199765, {	-- Field Scout's Helmet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 23 --
						i(194287, {	-- Pattern: Chronocloth Reagent Bag (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198941, {	-- Technique: Contract: Valdrakken Accord (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
							},
						}),
					}, {	-- RENOWN 24 --
					}, {	-- RENOWN 25 --
						i(199742, {	-- A Mender's Mentality
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RAINBOW_PEARL, 2 },
							},
						}),
						i(199744, {	-- Academy Student's Journal
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
						i(199741, {	-- Compendium of Advanced Spells
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RAINBOW_PEARL, 2 },
							},
						}),
						i(199745, {	-- Everflame Night Touch
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", AWAKENED_FIRE, 1 },
							},
						}),
						i(194320, {	-- Reinforced Lavender Bottle
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199743, {	-- Runic Symbols and their Meaning
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
							},
						}),
						i(198388, {	-- Swirling Draconian Concoction
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RAINBOW_PEARL, 2 },
							},
						}),
						i(198389, {	-- Weighted Potion Cylinder
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
					}, {	-- RENOWN 26 --
						i(196962, {	-- Cliffside Wylderdrake: Silver and Purple Armor (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", DRACONIUM_ORE, 20 },
								{ "i", TALLSTRIDER_SINEW, 10 },
							},
						}),
						i(197093, {	-- Highland Drake: Silver and Purple Armor (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", DRACONIUM_ORE, 20 },
								{ "i", TALLSTRIDER_SINEW, 10 },
							},
						}),
						i(197350, {	-- Renewned Proto-Drake: Silver and Purple Armor (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", DRACONIUM_ORE, 20 },
								{ "i", TALLSTRIDER_SINEW, 10 },
							},
						}),
						i(197581, {	-- Windborne Velocidrake: Silver and Purple Armor (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", DRACONIUM_ORE, 20 },
								{ "i", TALLSTRIDER_SINEW, 10 },
							},
						}),
					}, {	-- RENOWN 27 --
						i(199768, {	-- Black Dragon Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", SUNDERED_ONYX, 1 },
							},
						}),
						i(199769, {	-- Blue Dragon Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", MYSTIC_SAPPHIRE, 1 },
							},
						}),
						i(199770, {	-- Bronze Dragon Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", ETERNITY_AMBER, 1 },
							},
						}),
						i(199771, {	-- Green Dragon Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", VIBRANT_EMERALD, 1 },
							},
						}),
						i(199767, {	-- Red Dragon Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", QUEENS_RUBY, 1 },
							},
						}),
					}, {	-- RENOWN 28 --
						i(199662, {	-- Amber Jeweled Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", ETERNITY_AMBER, 1 },
							},
						}),
						i(199661, {	-- Azure Jeweled Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", MYSTIC_SAPPHIRE, 1 },
							},
						}),
						i(199670, {	-- Black Drakonid Shoulderplates
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", SUNDERED_ONYX, 1 },
							},
						}),
						i(199672, {	-- Bronze Drakonid Shoulderplates
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", ETERNITY_AMBER, 1 },
							},
						}),
						i(199671, {	-- Cobalt Drakonid Shoulderplates
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", MYSTIC_SAPPHIRE, 1 },
							},
						}),
						i(199674, {	-- Crimson Drakonid Shoulderplates
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", QUEENS_RUBY, 1 },
							},
						}),
						i(199663, {	-- Emerald Jeweled Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", VIBRANT_EMERALD, 1 },
							},
						}),
						i(199660, {	-- Obsidian Jeweled Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", SUNDERED_ONYX, 1 },
							},
						}),
						i(199664, {	-- Ruby Jeweled Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", QUEENS_RUBY, 1 },
							},
						}),
						i(199673, {	-- Verdant Drakonid Shoulderplates
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", VIBRANT_EMERALD, 1 },
							},
						}),
						i(194282, {	-- Pattern: Cushion of Time Travel (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198912, {	-- Technique: Illusion Parchment: Whirling Breeze (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
					}, {	-- RENOWN 29 --
						i(199736, {	-- Amber Dragonflame Blade
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", GLIMMERING_NOZDORITE_CLUSTER, 1 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199739, {	-- Emerald Dragonflame Blade
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", GLIMMERING_YSERMERALD_CLUSTER, 1 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199738, {	-- Ruby Dragonflame Blade
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", GLIMMERING_ALEXSTRASZITE_CLUTER, 1 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(200456, {	-- Valdrakken Armor Opener
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199825, {	-- Valdrakken Belt Knife
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199700, {	-- Valdrakken Bladewing Decapitator
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RAINBOW_PEARL, 1 },
								{ "i", ADAMANT_SCALES, 10 },
							},
						}),
						i(199730, {	-- Valdrakken Bladewing Staff
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199806, {	-- Valdrakken Drakeclaw Barrier
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(201796, {	-- Valdrakken Drakonid's Claw
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199823, {	-- Valdrakken Gatekeeper's Polearm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199702, {	-- Valdrakken Guard's Barrier
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RAINBOW_PEARL, 1 },
								{ "i", ADAMANT_SCALES, 10 },
							},
						}),
						i(201795, {	-- Valdrakken Guard's Claw
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199734, {	-- Valdrakken Guard's Cutlass
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", ETERNITY_AMBER, 1 },
							},
						}),
						i(199820, {	-- Valdrakken Guard's Skullsplitter
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199705, {	-- Valdrakken Guard's Spear
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", ADAMANT_SCALES, 10 },
							},
						}),
						i(199821, {	-- Valdrakken Serrated Shortsword
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", DRACONIUM_ORE, 5 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199726, {	-- Valdrakken Spellweaver's Scepter
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199728, {	-- Valdrakken Spellweaver's Stave
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199732, {	-- Valdrakken Wing Glaive
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(199707, {	-- Valdrakken Wingguard Polearm
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 10 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
					}, {	-- RENOWN 30 --
					}
				}),
			}),
			n(195769, {	-- Weaponsmith Koref
				["coord"] = { 36.2, 51.9, VALDRAKKEN },
				["sym"] = {{"select","itemID",
					------ RENOWN 29 ------
					199736,	-- Amber Dragonflame Blade
					199739,	-- Emerald Dragonflame Blade
					199738,	-- Ruby Dragonflame Blade
					200456,	-- Valdrakken Armor Opener
					199825,	-- Valdrakken Belt Knife
					199700,	-- Valdrakken Bladewing Decapitator
					199730,	-- Valdrakken Bladewing Staff
					199806,	-- Valdrakken Drakeclaw Barrier
					201796,	-- Valdrakken Drakonid's Claw
					199823,	-- Valdrakken Gatekeeper's Polearm
					199702,	-- Valdrakken Guard's Barrier
					201795,	-- Valdrakken Guard's Claw
					199734,	-- Valdrakken Guard's Cutlass
					199820,	-- Valdrakken Guard's Skullsplitter
					199705,	-- Valdrakken Guard's Spear
					199821,	-- Valdrakken Serrated Shortsword
					199726,	-- Valdrakken Spellweaver's Scepter
					199728,	-- Valdrakken Spellweaver's Stave
					199732,	-- Valdrakken Wing Glaive
					199707,	-- Valdrakken Wingguard Polearm
				}},
			}),
		}),
	}),
})));