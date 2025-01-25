-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local ADAMANT_SCALES = 193214;
local AWAKENED_FIRE = 190321;
local CONTOURED_FOWLFEATHER = 193053;
local IRIDESCENT_PLUME = 201401;
local NELTHARITE = 192863;
local RESILIENT_LEATHER = 193210;
local SEREVITE_ORE = 190396;
local TALLSTRIDER_SINEW = 201404;
local TUFT_OF_PRIMAL_WOOL = 201405;
local WILDERCLOTH = 193050;
local WILDERTHREAD = 192096;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(DRAGONSCALE_EXPEDITION, {
		n(VENDORS, {
			n(189065, {	-- Boss Magor
				["coord"] = { 46.9, 82.9, THE_WAKING_SHORES },
				["sym"] = {{"select","itemID",
					------ RENOWN 5 ------
					198719,	-- Plans: Sturdy Expedition Shovel (RECIPE!)
					------ RENOWN 9 ------
					199812,	-- Formula: Enchant Boots - Rider's Assurance (RECIPE!)
					199811,	-- Formula: Enchant Cloak - Graceful Avoidance (RECIPE!)
					194606,	-- Design: Energized Malygite (RECIPE!)
					194614,	-- Design: Keen Neltharite (RECIPE!)
					194605,	-- Design: Radiant Malygite (RECIPE!)
					194613,	-- Design: Sensei's Neltharite (RECIPE!)
					198781,	-- Schematic: Gravitational Displacer (RECIPE!)
					198784,	-- Schematic: Primal Deconstruction Charge (RECIPE!)
					------ RENOWN 13 ------
					194635,	-- Design: Idol of the Earth Warder (RECIPE!)
					194632,	-- Design: Idol of the Lifebinder (RECIPE!)
					198101,	-- Recipe: Salad on the Side (RECIPE!)
					------ RENOWN 15 ------
					194661,	-- Design: Magnificent Margin Magnifier (RECIPE!)
					194294,	-- Pattern: Explorer's Banner of Herbology (RECIPE!)
					194295,	-- Pattern: Explorer's Banner of Geology (RECIPE!)
					194289,	-- Pattern: Master's Wildercloth Chef's Hat (RECIPE!)
					194291,	-- Pattern: Master's Wildercloth Fishing Cap (RECIPE!)
					198782,	-- Schematic: Bottomless Mireslush Ore Satchel (RECIPE!)
					198783,	-- Schematic: Spring-Loaded Khaz'gorite Fabric Cutters (RECIPE!)
					198901,	-- Technique: Renewed Proto-Drake Manuscript: Spined Crest (RECIPE!)
					------ RENOWN 17 ------
					194281,	-- Pattern: Cold Cushion (RECIPE!)
					194268,	-- Pattern: Dragonscale Expedition's Expedition Tent (RECIPE!)
					------ RENOWN 19 ------
					194285,	-- Pattern: Azureweave Expedition Pack (RECIPE!)
					198788,	-- Technique: Contract: Dragonscale Expedition (RECIPE!)
					------ RENOWN 21 ------
					200738,	-- Onyx Gem Cluster Map
					194283,	-- Pattern: Duck Stuffed Duck Lovie (RECIPE!)
					198785,	-- Schematic: Quack-E (RECIPE!)
					198909,	-- Technique: Illusion Parchment: Magma Missile (RECIPE!)
				}},
			}),
			n(189226, {	-- Cataloger Jakes
				["coord"] = { 47.1, 82.6, THE_WAKING_SHORES },
				["g"] = bubbleDownRep(FACTION_DRAGONSCALE_EXPEDITION, {
					{		-- RENOWN 1 --
						i(198854, {	-- Archeologist Artifact Notes
							["sourceQuest"] = 72709,	-- Funding a Treasure Hunt
							["questID"] = 70409,
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 10 },
							},
						}),
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
						i(198718, {	-- Excavator's Chisel
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", ADAMANT_SCALES, 3 },
							},
						}),
						i(198387, {	-- Excavator's Mallet
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RESILIENT_LEATHER, 3 },
							},
						}),
						i(198717, {	-- Excavator's Punch
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RESILIENT_LEATHER, 3 },
							},
						}),
						i(199746, {	-- Excavator's Trowel
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", ADAMANT_SCALES, 3 },
							},
						}),
					}, {	-- RENOWN 4 --
						i(199873, {	-- Renowned Expeditioner's Cape
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
								{ "i", WILDERCLOTH, 10 },
							},
						}),
						i(199874, {	-- Renowned Expeditioner's Cloak
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
								{ "i", WILDERCLOTH, 10 },
							},
						}),
						i(199875, {	-- Renowned Expeditioner's Drape
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
								{ "i", WILDERCLOTH, 10 },
							},
						}),
						i(199876, {	-- Renowned Expeditioner's Shawl
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
								{ "i", WILDERCLOTH, 10 },
							},
						}),
					}, {	-- RENOWN 5 --
						i(198719, {	-- Plans: Sturdy Expedition Shovel (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 15 },
							},
						}),
						i(191294, {	-- Small Expedition Shover
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 15 },
							},
						}),
					}, {	-- RENOWN 6 --
					}, {	-- RENOWN 7 --
						i(198083, {	-- Expedition Supply Kit
							["questID"] = 69996,
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
							},
						}),
						i(194102, {	-- Expedition Excavator
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", SEREVITE_ORE, 5 },
							},
						}),
						i(194325, {	-- Researcher's Magnifier
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(194326, {	-- Trusty Sweeper
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
						i(197369, {	-- Renewed Proto-Drake: Brown Hair (MM!)
							["cost"] = {
								{"c", DRAGON_SUPPLIES, 50 },
							},
							["timeline"] = { ADDED_10_1_0 },
						}),
						i(197363, {	-- Renewed Proto-Drake: Maned Crest (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197360, {	-- Renewed Proto-Drake: Spined Brow (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197386, {	-- Renewed Proto-Drake: Spiked Jaw (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199812, {	-- Formula: Enchant Boots - Rider's Assurance (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
								},
							}),
						i(199811, {	-- Formula: Enchant Cloak - Graceful Avoidance (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194606, {	-- Design: Energized Malygite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194614, {	-- Design: Keen Neltharite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194605, {	-- Design: Radiant Malygite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194613, {	-- Design: Sensei's Neltharite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(198781, {	-- Schematic: Gravitational Displacer (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(198784, {	-- Schematic: Primal Deconstruction Charge (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 10 --
					}, {	-- RENOWN 11 --
						i(198725, {	-- Gray Marmoni (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", IRIDESCENT_PLUME, 3 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
						i(198726, {	-- Black Skitterbug (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", IRIDESCENT_PLUME, 3 },
								{ "i", TALLSTRIDER_SINEW, 5 },
							},
						}),
					}, {	-- RENOWN 12 --
						i(198737, {	-- Relic Handler's Gauntlets
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198735, {	-- Relic Handler's Gloves
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198734, {	-- Relic Handler's Gloves
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198736, {	-- Relic Handler's Grips
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 13 --
						i(194635, {	-- Design: Idol of the Earth Warder (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194632, {	-- Design: Idol of the Lifebinder (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(198101, {	-- Recipe: Salad on the Side (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
					}, {	-- RENOWN 14 --
						iensemble(198775, {	-- Ensemble: Renowned Expeditioner's Cloth Armor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", WILDERCLOTH, 40 },
							},
						}),
						iensemble(198776, {	-- Ensemble: Renowned Expeditioner's Leather Armor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						iensemble(198777, {	-- Ensemble: Renowned Expeditioner's Mail Armor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", ADAMANT_SCALES, 20 },
							},
						}),
						iensemble(198778, {	-- Ensemble: Renowned Expeditioner's Plate Armor
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", SEREVITE_ORE, 20 },
							},
						}),
					}, {	-- RENOWN 15 --
						i(197358, {	-- Renewed Proto-Drake: Curved Spiked Brow (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197395, {	-- Renewed Proto-Drake: Harrier Pattern (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197402, {	-- Renewed Proto-Drake: Spiked Club Tail (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197374, {	-- Renewed Proto-Drake: Swept Horns (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(194661, {	-- Design: Magnificent Margin Magnifier (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194294, {	-- Pattern: Explorer's Banner of Herbology (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(194295, {	-- Pattern: Explorer's Banner of Geology (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(194289, {	-- Pattern: Master's Wildercloth Chef's Hat (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194291, {	-- Pattern: Master's Wildercloth Fishing Cap (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198782, {	-- Schematic: Bottomless Mireslush Ore Satchel (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198783, {	-- Schematic: Spring-Loaded Khaz'gorite Fabric Cutters (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198901, {	-- Technique: Renewed Proto-Drake Manuscript: Spined Crest (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 25 },
							},
						}),
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
						i(198721, {	-- Skinny Reliquary Pillow (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", WILDERTHREAD, 2 },
							},
						}),
						i(198722, {	-- Small Triangular Pillow (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", WILDERTHREAD, 2 },
							},
						}),
						i(198720, {	-- Soft Purple Pillow (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", WILDERCLOTH, 20 },
								{ "i", WILDERTHREAD, 2 },
							},
						}),
						i(194281, {	-- Pattern: Cold Cushion (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(194268, {	-- Pattern: Dragonscale Expedition's Expedition Tent (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
					}, {	-- RENOWN 18 --
					}, {	-- RENOWN 19 --
						i(198728, {	-- Explorers' League Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(198729, {	-- Reliquary Banner (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(194285, {	-- Pattern: Azureweave Expedition Pack (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198788, {	-- Technique: Contract: Dragonscale Expedition (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
							},
						}),
					}, {	-- RENOWN 20 --
						i(198727, {	-- Expedition Explosives
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 15 },
							},
						}),
					}, {	-- RENOWN 21 --
						i(198796, {	-- Quack-E Quack Modulator
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 1000 },
							},
						}),
						i(200738, {	-- Onyx Gem Cluster Map
							["questID"] = 72021,
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", NELTHARITE, 3 },
							},
						}),
						i(194283, {	-- Pattern: Duck Stuffed Duck Lovie (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198785, {	-- Schematic: Quack-E (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198909, {	-- Technique: Illusion Parchment: Magma Missile (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
					}, {	-- RENOWN 22 --
						i(197010, {	-- Cliffside Wylderdrake: Red Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FIRE, 1 },
							},
						}),
						i(197144, {	-- Highland Drake: Red Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FIRE, 1 },
							},
						}),
						i(197614, {	-- Windborne Velocidrake: Red Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FIRE, 1 },
							},
						}),
						i(203353, {	-- Winding Slitherdrake: Red Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FIRE, 1 },
							},
							["timeline"] = { ADDED_10_1_0 },
						}),
					}, {	-- RENOWN 23 --
						i(198739, {	-- Dragonscale Expedition Breeches
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198740, {	-- Dragonscale Expedition Greaves
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198738, {	-- Dragonscale Expedition Leggings
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(198741, {	-- Dragonscale Expedition Legguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 24 --
					}, {	-- RENOWN 25 --
						i(192761, {	-- Tamed Skitterfly (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", IRIDESCENT_PLUME, 5 },
								{ "i", CONTOURED_FOWLFEATHER, 20 },
							},
						}),
						i(192762, {	-- Azure Skitterfly (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", IRIDESCENT_PLUME, 5 },
								{ "i", CONTOURED_FOWLFEATHER, 20 },
							},
						}),
					},
				}),
			}),
			n(187408, {	-- Granpap Whiskers
				["coord"] = { 47.7, 83.2, THE_WAKING_SHORES },
				["sym"] = {{"select","itemID",
					------ RENOWN 11 ------
					198725,	-- Gray Marmoni (PET!)
					198726,	-- Black Skitterbug (PET!)
					------ RENOWN 25 ------
					192761,	-- Tamed Skitterfly (MOUNT!)
					192762,	-- Azure Skitterfly (MOUNT!)
				}},
			}),
			n(187444, {	-- Kajithalan
				["coord"] = { 47.1, 82.9, THE_WAKING_SHORES },
				["g"] = {
					i(196440),	-- Dragon Flight
					i(194691),	-- Artisanal Berry Juice
					i(201089),	-- Craft Creche Crowler
				},
			}),
			n(187700, {	-- Pathfinder Jeb
				["coord"] = { 47.3, 83.4, THE_WAKING_SHORES },
				["sym"] = {{"select","itemID",
					------ RENOWN 4 ------
					199873,	-- Renowned Expeditioner's Cape
					199874,	-- Renowned Expeditioner's Cloak
					199875,	-- Renowned Expeditioner's Drape
					199876,	-- Renowned Expeditioner's Shawl
					------ RENOWN 5 ------
					191294,	-- Small Expedition Shover
					------ RENOWN 7 ------
					198083,	-- Expedition Supply Kit
					------ RENOWN 12 ------
					198737,	-- Relic Handler's Gauntlets
					198735,	-- Relic Handler's Gloves
					198734,	-- Relic Handler's Gloves
					198736,	-- Relic Handler's Grips
					------ RENOWN 14 ------
					198775,	-- Ensemble: Renowned Expeditioner's Cloth Armor
					198776,	-- Ensemble: Renowned Expeditioner's Leather Armor
					198777,	-- Ensemble: Renowned Expeditioner's Mail Armor
					198778,	-- Ensemble: Renowned Expeditioner's Plate Armor
					------ RENOWN 20 ------
					198727,	-- Expedition Explosives
					------ RENOWN 21 ------
					198796,	-- Quack-E Quack Modulator
					------ RENOWN 23 ------
					198739,	-- Dragonscale Expedition Breeches
					198740,	-- Dragonscale Expedition Greaves
					198738,	-- Dragonscale Expedition Leggings
					198741,	-- Dragonscale Expedition Legguards
				}},
			}),
			n(188265, {	-- Rae'ana
				["coord"] = { 47.9, 82.1, THE_WAKING_SHORES },
				["sym"] = {{"select","itemID",
					------ RENOWN 3 ------
					198718,	-- Excavator's Chisel
					198387,	-- Excavator's Mallet
					198717,	-- Excavator's Punch
					199746,	-- Excavator's Trowel
					------ RENOWN 7 ------
					194102,	-- Expedition Excavator
					194325,	-- Researcher's Magnifier
					194326,	-- Trusty Sweeper
					------ RENOWN 9 ------
					-- #if AFTER 10.1.0
					197369,	-- Renewed Proto-Drake: Brown Hair (MM!)
					-- #endif
					197363,	-- Renewed Proto-Drake: Maned Crest (MM!)
					197360,	-- Renewed Proto-Drake: Spined Brow (MM!)
					197386,	-- Renewed Proto-Drake: Spiked Jaw (MM!)
					------ RENOWN 15 ------
					-- #if AFTER 10.0.7
					197358,	-- Renewed Proto-Drake: Curved Spiked Brow (MM!)
					-- #endif
					197395,	-- Renewed Proto-Drake: Harrier Pattern (MM!)
					197402,	-- Renewed Proto-Drake: Spiked Club Tail (MM!)
					197374,	-- Renewed Proto-Drake: Swept Horns (MM!)
					------ RENOWN 17 ------
					198721,	-- Skinny Reliquary Pillow (TOY!)
					198722,	-- Small Triangular Pillow (TOY!)
					198720,	-- Soft Purple Pillow (TOY!)
					------ RENOWN 22 ------
					197010,	-- Cliffside Wylderdrake: Red Scales (MM!)
					197144,	-- Highland Drake: Red Scales (MM!)
					197614,	-- Windborne Velocidrake: Red Scales (MM!)
					-- #if AFTER 10.1.0
					203353,	-- Winding Slitherdrake: Red Scales (MM!)
					-- #endif
				}},
			}),
		}),
	}),
})));