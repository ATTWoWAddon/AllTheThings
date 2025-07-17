-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.LEGION, {
	inst(716, {	-- Eye of Azshara
		["mapID"] = 713,
		["coord"] = { 61.2, 41.1, AZSUNA },
		["lvl"] = 98,
		["g"] = {
			n(ZONE_DROPS, {
				i(137726),	-- Schematic: Leystone Buoy (RECIPE!)
				prof(INSCRIPTION, {
					i(141051, {	-- Technique: Glyph of the Trident (RECIPE!)
						["description"] = "Drops from Naga in any Broken Isles zone. Recommended to farm the Naga before the first Boss in the Eye of Azshara Dungeon.",
					}),
				}),
			}),
			n(QUESTS, {
				q(42213, {	-- Eye of Azshara: The Tidestone of Golganneth
					["provider"] = { "n", 106780 },	-- Tidestone of Golganneth
					["sourceQuest"] = 38286,	-- Eye of Azshara: Wrath of Azshara
					["modelScale"] = 3,
					["g"] = {
						i(140622),	-- Hardshell Greatbelt
						i(140623),	-- Brightscale Waistguard
						i(140624),	-- Bitterbrine Binding
						i(140625),	-- Waistband of the Hatecoil Oracles
					},
				}),
			}),
			n(WORLD_QUESTS, {
				q(42723, {	-- Eye of Azshara: A Tough Shell
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42755, {	-- Eye of Azshara: Azsunian Pearls
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42746, {	-- Eye of Azshara: Dread End
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42713, {	-- Eye of Azshara: Slug It Out
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
				q(42712, {	-- Eye of Azshara: Termination Claws
					["isWorldQuest"] = true,
					["lvl"] = 110,
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_PLUS, {
				cr(91784, e(1480, {	-- Warlord Parjesh
					i(139574),	-- Coil of the Drowned Queen (shaman appearance)
				})),
				cr(91789, e(1490, {	-- Lady Hatecoil
					i(139574),	-- Coil of the Drowned Queen (shaman appearance)
				})),
				cr(96028, e(1492, {	-- Wrath of Azshara
					ach(10780),	-- Eye of Azshara
					i(137825),	-- Design: Dawnlight Band [Rank 2] (RECIPE!)
					i(141916),	-- Formula: Enchant Neck - Mark of the Ancient Priestess [Rank 2] (RECIPE!)
					i(127929),	-- Recipe: Leytorrent Potion [Rank 2] (RECIPE!)
					i(137877),	-- Pattern: Warhide Pants [Rank 3] (RECIPE!)
					i(136705),	-- Technique: Aqual Mark (RECIPE!)
				})),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				cr(91784, e(1480, {	-- Warlord Parjesh
					i(134240),	-- Brinewashed Leather Cowl
					i(134223),	-- Coralplate Chestguard
					i(134484),	-- Crestrider Conduit Bracers
					i(134492),	-- Hatecoil Commander's Amulet
					i(137362),	-- Parjesh's Medallion
					i(137361),	-- Roaring Shellbreaker Greatbelt
					i(134251),	-- Sea Stalker's Cinch
					i(134261),	-- Seawitch Gloves
					i(134441),	-- Shellshock Footguards
					i(137360),	-- Shoulderpads of Crashing Waves
					i(137363),	-- Bloodied Spearhead
				})),
				cr(91789, e(1490, {	-- Lady Hatecoil
					i(134238),	-- Brinewashed Leather Pants
					i(134230),	-- Coralplate Wristguard
					i(134433),	-- Cord of the Sea-Caller
					i(137364),	-- Crashing Oceantide Mantle
					i(134471),	-- Helm of Endless Dunes
					i(134505),	-- Horizon Line Warboots
					i(134253),	-- Sea Stalker's Gloves
					i(134525),	-- Seal of the Nazjatar Empire
					i(134263),	-- Seawitch Robes
					i(137367),	-- Stormsinger Fulmination Charge
					i(137365),	-- Condensed Saltsea Globule
					i(137366),	-- Gift of the Ocean Empress
				})),
				cr(91808, e(1479, {	-- Serpentrix
					i(134239),	-- Brinewashed Leather Grips
					i(134228),	-- Coraplate Pauldrons
					i(134465),	-- Hydra Scale Sabatons
					i(134256),	-- Sea Stalker's Leggings
					i(134260),	-- Seawitch Hood
					i(134508),	-- Stormwake Handguards
					i(137373),	-- Tempered Egg of Serpentrix
					i(134438),	-- Tunic of the Pitiless Monstrosity
					i(137372),	-- Wristbands of the Swirling Deeps
					i(137375),	-- Blazing Hydra Flame Sac
					i(137377),	-- Serpentrix's Guile
				})),
				cr(91797, e(1491, {	-- King Deepbeard
					i(134539),	-- Braided Silver Ring
					i(137368),	-- Breastplate of Ten Lashes
					i(137369),	-- Giant Ornamental Pearl
					i(134514),	-- Keelhauler Legplates
					i(134406),	-- Mainsail Cloak
					i(134428),	-- Rising Ocean Legwraps
					i(134456),	-- Taut Halyard Waistband
					i(137370),	-- Heart of the Sea
					i(137371),	-- Tumultuous Aftershock
				})),
				cr(96028, e(1492, {	-- Wrath of Azshara
					i(134532),	-- Band of Fused Coral
					i(134237),	-- Brinewashed Leather Boots
					i(137378),	-- Bottled Hurricane
					i(134512),	-- Casque of the Deep
					i(134225),	-- Coralplate Girdle
					i(134459),	-- Cuffs of the Arcane Storm
					i(134255),	-- Sea Stalker's Hood
					i(134259),	-- Seawitch Cinch
					i(134417),	-- Slippers of Martyrdom
					i(134497),	-- Stormcharged Choker
					i(134478),	-- Thundercrush Pauldrons
					i(137381),	-- Pact of Vengeful Service
					i(137380),	-- Rage of the Tides
					i(137379),	-- Tempestbinder's Crystal
				})),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				["lvl"] = 110,
				["g"] = {
					cr(91784, e(1480, {	-- Warlord Parjesh
						i(134240),	-- Brinewashed Leather Cowl
						i(134223),	-- Coralplate Chestguard
						i(134484),	-- Crestrider Conduit Bracers
						i(134492),	-- Hatecoil Commander's Amulet
						i(137362),	-- Parjesh's Medallion
						i(137361),	-- Roaring Shellbreaker Greatbelt
						i(134251),	-- Sea Stalker's Cinch
						i(134261),	-- Seawitch Gloves
						i(134441),	-- Shellshock Footguards
						i(137360),	-- Shoulderpads of Crashing Waves
						i(137363),	-- Bloodied Spearhead
					})),
					cr(91789, e(1490, {	-- Lady Hatecoil
						i(134238),	-- Brinewashed Leather Pants
						i(134230),	-- Coralplate Wristguard
						i(134433),	-- Cord of the Sea-Caller
						i(137364),	-- Crashing Oceantide Mantle
						i(134471),	-- Helm of Endless Dunes
						i(134505),	-- Horizon Line Warboots
						i(134253),	-- Sea Stalker's Gloves
						i(134525),	-- Seal of the Nazjatar Empire
						i(134263),	-- Seawitch Robes
						i(137367),	-- Stormsinger Fulmination Charge
						i(137365),	-- Condensed Saltsea Globule
						i(137366),	-- Gift of the Ocean Empress
					})),
					cr(91808, e(1479, {	-- Serpentrix
						i(134239),	-- Brinewashed Leather Grips
						i(134228),	-- Coraplate Pauldrons
						i(134465),	-- Hydra Scale Sabatons
						i(134256),	-- Sea Stalker's Leggings
						i(134260),	-- Seawitch Hood
						i(134508),	-- Stormwake Handguards
						i(137373),	-- Tempered Egg of Serpentrix
						i(134438),	-- Tunic of the Pitiless Monstrosity
						i(137372),	-- Wristbands of the Swirling Deeps
						i(137375),	-- Blazing Hydra Flame Sac
						i(137377),	-- Serpentrix's Guile
					})),
					cr(91797, e(1491, {	-- King Deepbeard
						i(134539),	-- Braided Silver Ring
						i(137368),	-- Breastplate of Ten Lashes
						i(137369),	-- Giant Ornamental Pearl
						i(134514),	-- Keelhauler Legplates
						i(134406),	-- Mainsail Cloak
						i(134428),	-- Rising Ocean Legwraps
						i(134456),	-- Taut Halyard Waistband
						i(137370),	-- Heart of the Sea
						i(137371),	-- Tumultuous Aftershock
					})),
					cr(96028, e(1492, {	-- Wrath of Azshara
						ach(10781),	-- Heroic: Eye of Azshara
						i(134532),	-- Band of Fused Coral
						i(134237),	-- Brinewashed Leather Boots
						i(137378),	-- Bottled Hurricane
						i(134512),	-- Casque of the Deep
						i(134225),	-- Coralplate Girdle
						i(134459),	-- Cuffs of the Arcane Storm
						i(134255),	-- Sea Stalker's Hood
						i(134259),	-- Seawitch Cinch
						i(134417),	-- Slippers of Martyrdom
						i(134497),	-- Stormcharged Choker
						i(134478),	-- Thundercrush Pauldrons
						i(137381),	-- Pact of Vengeful Service
						i(137380),	-- Rage of the Tides
						i(137379),	-- Tempestbinder's Crystal
					}))
				},
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["lvl"] = 110,
				["g"] = {
					cr(91784, e(1480, {	-- Warlord Parjesh
						ach(10456, {	-- But You Say He's Just a Friend
							["crs"] = { 97264 },	-- Hatecoil Shellbreaker
						}),
						i(134240),	-- Brinewashed Leather Cowl
						i(134223),	-- Coralplate Chestguard
						i(134484),	-- Crestrider Conduit Bracers
						i(134492),	-- Hatecoil Commander's Amulet
						i(137362),	-- Parjesh's Medallion
						i(137361),	-- Roaring Shellbreaker Greatbelt
						i(134251),	-- Sea Stalker's Cinch
						i(134261),	-- Seawitch Gloves
						i(134441),	-- Shellshock Footguards
						i(137360),	-- Shoulderpads of Crashing Waves
						i(137363),	-- Bloodied Spearhead
					})),
					cr(91789, e(1490, {	-- Lady Hatecoil
						ach(10457, {	-- Stay Salty
							["crs"] = { 98293 },	-- Saltsea Globule
						}),
						i(134238),	-- Brinewashed Leather Pants
						i(134230),	-- Coralplate Wristguard
						i(134433),	-- Cord of the Sea-Caller
						i(137364),	-- Crashing Oceantide Mantle
						i(134471),	-- Helm of Endless Dunes
						i(134505),	-- Horizon Line Warboots
						i(134253),	-- Sea Stalker's Gloves
						i(134525),	-- Seal of the Nazjatar Empire
						i(134263),	-- Seawitch Robes
						i(137367),	-- Stormsinger Fulmination Charge
						i(137365),	-- Condensed Saltsea Globule
						i(137366),	-- Gift of the Ocean Empress
					})),
					cr(91808, e(1479, {	-- Serpentrix
						i(134239),	-- Brinewashed Leather Grips
						i(134228),	-- Coraplate Pauldrons
						i(134465),	-- Hydra Scale Sabatons
						i(134256),	-- Sea Stalker's Leggings
						i(134260),	-- Seawitch Hood
						i(134508),	-- Stormwake Handguards
						i(137373),	-- Tempered Egg of Serpentrix
						i(134438),	-- Tunic of the Pitiless Monstrosity
						i(137372),	-- Wristbands of the Swirling Deeps
						i(137375),	-- Blazing Hydra Flame Sac
						i(137377),	-- Serpentrix's Guile
					})),
					cr(91797, e(1491, {	-- King Deepbeard
						i(134539),	-- Braided Silver Ring
						i(137368),	-- Breastplate of Ten Lashes
						i(137369),	-- Giant Ornamental Pearl
						i(134514),	-- Keelhauler Legplates
						i(134406),	-- Mainsail Cloak
						i(134428),	-- Rising Ocean Legwraps
						i(134456),	-- Taut Halyard Waistband
						i(137370),	-- Heart of the Sea
						i(137371),	-- Tumultuous Aftershock
					})),
					cr(96028, e(1492, {	-- Wrath of Azshara
						ach(10782),	-- Mythic: Eye of Azshara
						ach(10856),	-- Mythic: Eye of Azshara Guild Run
						ach(10458),	-- Ready for Raiding V
						i(134532),	-- Band of Fused Coral
						i(134237),	-- Brinewashed Leather Boots
						i(137378),	-- Bottled Hurricane
						i(134512),	-- Casque of the Deep
						i(134225),	-- Coralplate Girdle
						i(134459),	-- Cuffs of the Arcane Storm
						i(134255),	-- Sea Stalker's Hood
						i(134259),	-- Seawitch Cinch
						i(134417),	-- Slippers of Martyrdom
						i(134497),	-- Stormcharged Choker
						i(134478),	-- Thundercrush Pauldrons
						i(137381),	-- Pact of Vengeful Service
						i(137380),	-- Rage of the Tides
						i(137379),	-- Tempestbinder's Crystal
					})),
				},
			}),
		},
	}),
}));
