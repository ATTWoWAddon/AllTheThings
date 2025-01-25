-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
local ALIERON_SEAMOTH = 194967;
local AQUATIC_MAW = 201400;
local AWAKENED_FROST = 190329;
local CERULEAN_SPINEFISH = 194968;
local CHROMATIC_DUST = 194123;
local LARGE_STURDY_FEMUR = 201402;
local MASTODON_TUSK = 201403;
local PRIMAL_BEAR_SPINE = 201399;
local PEBBLED_ROCK_SALTS = 197756;
local RESILIENT_LEATHER = 193210;
local RUNED_WRITHEBARK = 194863;
local SCALEBELLY_MACKEREL = 194730;
local SEREVITE_ORE = 190396;
local TALLSTRIDER_SINEW = 201404;
local TEMPORAL_DRAGONHEAD = 194969;
local THOUSANDBITE_PIRANHA = 194966;
local TUFT_OF_PRIMAL_WOOL = 201405;
local WILDERCLOTH = 193050;
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.DF, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	n(ISKAARA_TUSKARR, {
		n(VENDORS, {
			n(186449, {	-- Arvik
				["coord"] = { 12.9, 48.8, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 14 ------
					199885,	-- Reinforced Fisherman's Vambraces
					199884,	-- Tuskarr Crafter's Bindings
					199886,	-- Tuskarr Sharkguard Wristguards
					199887,	-- Tuskarr Trapper's Bracers
					------ RENOWN 24 ------
					199889,	-- Tuskarr Boneplate Pauldrons
					199890,	-- Tuskarr Crafter's Mantle
					199891,	-- Tuskarr Sharkguard Shoulderguards
					199888,	-- Tuskarr Trapper's Spaulders
				}},
			}),
			n(186186, {	-- Hanu
				["coord"] = { 12.9, 48.7, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 24 ------
					199879,	-- Tuskarr Fisherman's Dagger
					199881,	-- Tuskarr Fisherman's Harpoon
					199880,	-- Tuskarr Leviathan's Hook
					199878,	-- Tuskarr Timber Splitter
					199883,	-- Tuskarr Sharktooth Bolt-Thrower
					199882,	-- Tuskarr Mystic's Stave
				}},
			}),
			n(186564, {	-- Jiq
				["description"] = "Runs around in the village.",
				["coord"] = { 13.5, 48.7, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 9 ------
					193837,	-- Backswimmer Timbertooth (PET!)
					193225,	-- Whiskuk (PET!)
				}},
			}),
			n(186547, {	-- Lil Ki
				["coord"] = { 13.5, 48.7, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 4 ------
					199892,	-- Tuskarr Traveling Soup Pot (TOY!)
					199650,	-- Whale Bone Tea Set (TOY!)
					200749,	-- Tuskarr Clobbering Board
					200748,	-- Tuskarr Ulu Knife
				}},
			}),
			n(194318, {	-- Kiopo <The Eldest>
				["coord"] = { 24.4, 70.8, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 26 ------
					199899,	-- Iskaara Tug Sled (TOY!)
					198827,	-- Magical Snow Sled (TOY!)
				}},
			}),
			n(196016, {	-- Lontupit
				["coord"] = { 14.0, 49.3, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 12 ------
					199877,	-- Ensemble: Tuskarr Trader's Leather Armor
					------ RENOWN 23 ------
					199547,	-- Spine-Reinforced Spaulders
					------ RENOWN 28 ------
					199548,	-- Rugged Seaspawn Spaulders
					199542,	-- Red Tufted Shoulderpads
					199544,	-- Murky Depths Shoulderguards
					199541,	-- Grey Tufted Shoulderpads
					199545,	-- Grey Depths Shoulderguards
					199540,	-- Green Tufted Shoulderpads
					199549,	-- Depth-Delver's Spaulders
					199546,	-- Crimson Depths Shoulderguards
					199539,	-- Blue Tufted Shoulderpads
					199550,	-- Bloody Shorestalker's Spaulders
					199543,	-- Azure Depths Shoulderguards
					199897,	-- Blue-Covered Beanbag (TOY!)
					199872,	-- Tuskarr Trader's Cloak
				}},
			}),
			n(193006, {	-- Murik
				["coord"] = { 13.16, 49.2, THE_AZURE_SPAN },
				["g"] = bubbleDownRep(FACTION_ISKAARA_TUSKARR, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
					}, {	-- RENOWN 4 --
						i(199892, {	-- Tuskarr Traveling Soup Pot (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", SEREVITE_ORE, 2 },
							},
						}),
						i(199650, {	-- Whale Bone Tea Set (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", AQUATIC_MAW, 1 },
							},
						}),
						i(200749, {	-- Tuskarr Clobbering Board
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", RUNED_WRITHEBARK, 1 },
							},
						}),
						i(200748, {	-- Tuskarr Ulu Knife
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", SEREVITE_ORE, 3 },
							},
						}),
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						i(199538, {	-- Azure Ear Warmer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199534, {	-- Blue Stocking Cap
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199535, {	-- Crimson Ear Warmer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199537, {	-- Forest Green Ear Warmer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199533, {	-- Green Stocking Cap
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199532, {	-- Grey Stocking Cap
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199536, {	-- Ocean Grey Ear Warmer
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
						i(199531, {	-- Red Stocking Cap
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", WILDERCLOTH, 20 },
							},
						}),
					}, {	-- RENOWN 7 --
						i(197101, {	-- Highland Drake: Bushy Brow (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197155, {	-- Highland Drake: Finned Neck (MM!)
							["timeline"] = { ADDED_10_0_7 },
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197114, {	-- Highland Drake: Multi-Horned Head (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(197132, {	-- Highland Drake: Spiked Cheek (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 8 --
					}, {	-- RENOWN 9 --
						i(193837, {	-- Backswimmer Timbertooth (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", RUNED_WRITHEBARK, 1 },
							},
						}),
						i(193225, {	-- Whiskuk (PET!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
							},
						}),
					}, {	-- RENOWN 10 --
						i(194611, {	-- Design: Energized Ysemerald (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194726, {	-- Design: Kalu'ak Figurine (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194610, {	-- Design: Keen Ysemerald (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194603, {	-- Design: Radiant Alexstraszite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(194602, {	-- Design: Sensei's Alexstraszite (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199816, {	-- Formula: Enchant Chest - Accelerated Agility (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
						i(199815, {	-- Formula: Enchant Cloak - Regenerative Leech (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 50 },
							},
						}),
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
						iensemble(199877, {	-- Ensemble: Tuskarr Trader's Leather Armor
							["cost"] = {
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", MASTODON_TUSK, 2 },
								{ "i", RESILIENT_LEATHER, 20 },
							},
						}),
						i(199872, {	-- Tuskarr Trader's Cloak
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 75 },
								{ "i", WILDERCLOTH, 10 },
							},
						}),
					}, {	-- RENOWN 13 --
						i(198894, {	-- Technique: Highland Drake: Black Hair (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 25 },
							},
						}),
						i(197153, {	-- Highland Drake: Bladed Tail (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197139, {	-- Highland Drake: Large Spotted Pattern (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
						i(197123, {	-- Highland Drake: Thorn Horns (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
							},
						}),
					}, {	-- RENOWN 14 --
						i(199885, {	-- Reinforced Fisherman's Vambraces
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199884, {	-- Tuskarr Crafter's Bindings
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199886, {	-- Tuskarr Sharkguard Wristguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199887, {	-- Tuskarr Trapper's Bracers
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 15 --
						i(194634, {	-- Design: Idol of the Dreamer (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(194633, {	-- Design: Idol of the Spell-Weaver (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(193875, {	-- Pattern: Allied Heartwarming Fur Coat (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(193876, {	-- Pattern: Snowball Makers (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
						i(198102, {	-- Recipe: Impossibly Sharp Cutting Knife (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
							},
						}),
					}, {	-- RENOWN 16 --
						i(199855, {	-- Burgandy Fisherman's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", ALIERON_SEAMOTH, 5 },
							},
						}),
						i(199863, {	-- Burgandy Tuskarr Backpack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199859, {	-- Burgandy Tuskarr Traders Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
						i(199854, {	-- Dark Fisherman's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", CERULEAN_SPINEFISH, 5 },
							},
						}),
						i(199862, {	-- Dark Tuskarr Backpack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199858, {	-- Dark Tuskarr Trader's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
						i(199852, {	-- Rustic Fisherman's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", SCALEBELLY_MACKEREL, 5 },
							},
						}),
						i(199860, {	-- Rustic Tuskarr Backpack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199856, {	-- Rustic Tuskarr Trader's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
						i(199853, {	-- Tan Fisherman's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", TEMPORAL_DRAGONHEAD, 5 },
							},
						}),
						i(199861, {	-- Tan Tuskarr Backpack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", TEMPORAL_DRAGONHEAD, 5 },
							},
						}),
						i(199857, {	-- Tan Tuskarr Trader's Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
					}, {	-- RENOWN 17 --
						i(199894, {	-- Fisherman's Folly Rack (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", TALLSTRIDER_SINEW, 5 },
								{ "i", SCALEBELLY_MACKEREL, 10 },
							},
						}),
						i(199896, {	-- Rubbery Fish Head (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", PEBBLED_ROCK_SALTS, 10 },
								{ "i", THOUSANDBITE_PIRANHA, 5 },
							},
						}),
					}, {	-- RENOWN 18 --
						i(194660, {	-- Design: Fine-Print Trifocals (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(194663, {	-- Design: Resonant Focus (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198465, {	-- Pattern: Expert Skinner's Cap (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198459, {	-- Pattern: Lavish Floral Pack (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198458, {	-- Pattern: Resplendent Cover (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
						i(198461, {	-- Pattern: Shockproof Gloves (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
							},
						}),
					}, {	-- RENOWN 19 --
						i(197012, {	-- Cliffside Wylderdrake: Blue Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FROST, 1 },
							},
						}),
						i(197390, {	-- Renewed Proto-Drake: Blue Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FROST, 1 },
							},
						}),
						i(197612, {	-- Windborne Velocidrake: Blue Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FROST, 1 },
							},
						}),
						i(203350, {	-- Winding Slitherdrake: Blue Scales (MM!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", AWAKENED_FROST, 1 },
							},
							["timeline"] = { ADDED_10_1_0 },
						}),
					}, {	-- RENOWN 20 --
					}, {	-- RENOWN 21 --
					}, {	-- RENOWN 22 --
						i(199889, {	-- Tuskarr Boneplate Pauldrons
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199890, {	-- Tuskarr Crafter's Mantle
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199891, {	-- Tuskarr Sharkguard Shoulderguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
						i(199888, {	-- Tuskarr Trapper's Spaulders
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 150 },
							},
						}),
					}, {	-- RENOWN 23 --
						i(194311, {	-- Pattern: Tuskarr Bean Bag (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(199897, {	-- Blue-Covered Beanbag (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 100 },
								{ "i", PEBBLED_ROCK_SALTS, 10 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
					}, {	-- RENOWN 24 --
						i(199879, {	-- Tuskarr Fisherman's Dagger
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(199881, {	-- Tuskarr Fisherman's Harpoon
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199880, {	-- Tuskarr Leviathan's Hook
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199882, {	-- Tuskarr Mystic's Stave
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", RUNED_WRITHEBARK, 3 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
						i(199883, {	-- Tuskarr Sharktooth Bolt-Thrower
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199878, {	-- Tuskarr Timber Splitter
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 600 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
							},
						}),
					}, {	-- RENOWN 25 --
						i(198940, {	-- Technique: Contract: Iskaara Tuskarr (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 200 },
							},
						}),
						i(198872, {	-- Brown Scouting Ottuk (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
						i(200118, {	-- Yellow Scouting Ottuk (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
					}, {	-- RENOWN 26 --
						i(199899, {	-- Iskaara Tug Sled (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", RUNED_WRITHEBARK, 5 },
								{ "i", MASTODON_TUSK, 2 },
							},
						}),
						i(198827, {	-- Magical Snow Sled (TOY!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 400 },
								{ "i", RUNED_WRITHEBARK, 5 },
								{ "i", CHROMATIC_DUST, 5 },
							},
						}),
					}, {	-- RENOWN 27 --
					}, {	-- RENOWN 28 --
						i(199543, {	-- Azure Depths Shoulderguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199550, {	-- Bloody Shorestalker's Spaulders
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199539, {	-- Blue Tufted Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199546, {	-- Crimson Depths Shoulderguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199549, {	-- Depth-Delver's Spaulders
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199540, {	-- Green Tufted Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199545, {	-- Grey Depths Shoulderguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199541, {	-- Grey Tufted Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199544, {	-- Murky Depths Shoulderguards
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", AQUATIC_MAW, 2 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199542, {	-- Red Tufted Shoulderpads
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", RESILIENT_LEATHER, 10 },
							},
						}),
						i(199548, {	-- Rugged Seaspawn Spaulders
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
						i(199547, {	-- Spine-Reinforced Spaulders
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 250 },
								{ "i", TUFT_OF_PRIMAL_WOOL, 3 },
								{ "i", PRIMAL_BEAR_SPINE, 1 },
							},
						}),
					}, {	-- RENOWN 29 --
						i(197981, {	-- Pattern: Finished Prototype Regal Barding (RECIPE!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 750 },
							},
						}),
						i(198337, {	-- Azure Paw Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", 194969, 20 },
							},
						}),
						i(198338, {	-- Black Paw Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", 194968, 20 },
							},
						}),
						i(198339, {	-- Dark Paw Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", 194966, 20 },
							},
						}),
						i(198340, {	-- Red Paw Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", 194967, 20 },
							},
						}),
						i(198341, {	-- Tan Paw Pack
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 500 },
								{ "i", LARGE_STURDY_FEMUR, 1 },
								{ "i", 194730, 20 },
							},
						}),
					}, {	-- RENOWN 30 --
						i(201426, {	-- Brown War Ottuk (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 1000 },
								{ "i", AQUATIC_MAW, 5 },
								{ "i", MASTODON_TUSK, 5 },
							},
						}),
						i(201425, {	-- Yellow War Ottuk (MOUNT!)
							["cost"] = {
								{ "c", DRAGON_SUPPLIES, 1000 },
								{ "i", AQUATIC_MAW, 5 },
								{ "i", MASTODON_TUSK, 5 },
							},
						}),
					},
				}),
			}),
			n(196544, {	-- Norukk
				["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 7 ------
					197101,	-- Highland Drake: Bushy Brow (MM!)
					197155,	-- Highland Drake: Finned Neck (MM!)
					197114,	-- Highland Drake: Multi-Horned Head (MM!)
					197132,	-- Highland Drake: Spiked Cheek (MM!)
					------ RENOWN 13 ------
					197612,	-- Windborne Velocidrake: Blue Scales (MM!)
					197390,	-- Renewed Proto-Drake: Blue Scales (MM!)
					197012,	-- Cliffside Wylderdrake: Blue Scales (MM!)
					------ RENOWN 19 ------
					197123,	-- Highland Drake: Thorn Horns (MM!)
					197139,	-- Highland Drake: Large Spotted Pattern (MM!)
					197153,	-- Highland Drake: Bladed Tail (MM!)
					203350, -- Winding Slitherdrake: Blue Scales (MM!)
				}},
			}),
			n(186554, {	-- Nunvuq
				["coord"] = { 13.9, 49.2, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 17 ------
					199894,	-- Fisherman's Folly Rack (TOY!)
					199896,	-- Rubbery Fish Head (TOY!)
				}},
			}),
			n(196018, {	-- Omapurita
				["coord"] = { 14.0, 49.3, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 6 ------
					199538,	-- Azure Ear Warmer
					199531,	-- Red Stocking Cap
					199536,	-- Ocean Grey Ear Warmer
					199532,	-- Grey Stocking Cap
					199533,	-- Green Stocking Cap
					199537,	-- Forest Green Ear Warmer
					199535,	-- Crimson Ear Warmer
				}},
			}),
			n(194059, {	-- Rokkutuk <Lead Craftsman>
				["coord"] = { 13.8, 50.0, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 10 ------
					194611, -- Design: Energized Ysemerald (RECIPE!)
					194726,	-- Design: Kalu'ak Figurine (RECIPE!)
					194610,	-- Design: Keen Ysemerald (RECIPE!)
					194603,	-- Design: Radiant Alexstraszite (RECIPE!)
					194602,	-- Design: Sensei's Alexstraszite (RECIPE!)
					199816,	-- Formula: Enchant Chest - Accelerated Agility (RECIPE!)
					199815,	-- Formula: Enchant Cloak - Regenerative Leech (RECIPE!)
					------ RENOWN 13 ------
					198894,	-- Technique: Highland Drake: Black Hair (RECIPE!)
					------ RENOWN 15 ------
					194634,	-- Design: Idol of the Dreamer (RECIPE!)
					194633,	-- Design: Idol of the Spell-Weaver (RECIPE!)
					193875,	-- Pattern: Allied Heartwarming Fur Coat (RECIPE!)
					193876,	-- Pattern: Snowball Makers (RECIPE!)
					198102,	-- Recipe: Impossibly Sharp Cutting Knife (RECIPE!)
					------ RENOWN 18 ------
					194660,	-- Design: Fine-Print Trifocals (RECIPE!)
					194663,	-- Design: Resonant Focus (RECIPE!)
					198465,	-- Pattern: Expert Skinner's Cap (RECIPE!)
					198459,	-- Pattern: Lavish Floral Pack (RECIPE!)
					198458,	-- Pattern: Resplendent Cover (RECIPE!)
					198461,	-- Pattern: Shockproof Gloves (RECIPE!)
					------ RENOWN 23 ------
					194311,	-- Pattern: Tuskarr Bean Bag (RECIPE!)
					------ RENOWN 30 ------
					198940,	-- Technique: Contract: Iskaara Tuskarr (RECIPE!)
					197981,	-- Pattern: Finished Prototype Regal Barding (RECIPE!)
				}},
			}),
			n(187680, {	-- Scaps
				["sourceQuests"] = { 66223 },	-- Can We Keep It?
				["coord"] = { 12.9, 48.6, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 29 ------
					198337,	-- Azure Paw Pack
					198338,	-- Black Paw Pack
					198339,	-- Dark Paw Pack
					198340,	-- Red Paw Pack
					198341,	-- Tan Paw Pack
				}},
			}),
			n(186462, {	-- Tatto
				["coord"] = { 13.8, 49.7, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 25 ------
					198872,	-- Brown Scouting Ottuk (MOUNT!)
					200118,	-- Yellow Scouting Ottuk (MOUNT!)
					------ RENOWN 30 ------
					201426,	-- Brown War Ottuk (MOUNT!)
					201425,	-- Yellow War Ottuk (MOUNT!)
				}},
			}),
			n(187869, {	-- Tikukk
				["coord"] = { 12.7, 50.3, THE_AZURE_SPAN },
				["sym"] = {{"select","itemID",
					------ RENOWN 26 ------
					199855,	-- Burgandy Fisherman's Pack
					199863,	-- Burgandy Tuskarr Backpack
					199859,	-- Burgandy Tuskarr Trader's Pack
					199854,	-- Dark Fisherman's Pack
					199862,	-- Dark Tuskarr Backpack
					199858,	-- Dark Tuskarr Trader's Pack
					199852,	-- Rustic Fisherman's Pack
					199860,	-- Rustic Tuskarr Backpack
					199856,	-- Rustic Tuskarr Trader's Pack
					199853,	-- Tan Fisherman's Pack
					199861,	-- Tan Tuskarr Backpack
					199857,	-- Tan Tuskarr Trader's Pack
				}},
			}),
		}),
	}),
})));