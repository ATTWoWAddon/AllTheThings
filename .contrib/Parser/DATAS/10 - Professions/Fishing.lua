root(ROOTS.Professions, prof(FISHING, bubbleDownSelf({ ["requireSkill"] = FISHING }, {
	n(ACHIEVEMENTS, {
		applyclassicphase(WRATH_PHASE_ONE, ach(1516, {	-- Accomplished Angler
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				1561,		-- 1000 Fish
				1243,		-- Fish Don't Leave Footprints
				130,		-- Grand Master Fisherman / Northrend Fisherman
				306,		-- Master Angler of Azeroth
				726,		-- Mr. Pinchy's Magical Crawdad Box
				1517,		-- Northrend Angler
				905,		-- Old Man Barlowned
				878,		-- One That Didn't Get Away
				1225,		-- Outland Angler
				2096,		-- The Coin Master
				150,		-- The Fishing Diplomat
				144,		-- The Lurker Above
				153,		-- The Old Gnome and the Sea
				1257,		-- The Scavenger
			}},
			["timeline"] = { ADDED_3_0_3 },
			["groups"] = {
				title(51),	-- Salty <Name> (TITLE!)
			},
		})),
		ach(1556, {	-- 25 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 25,
		}),
		ach(1557, {	-- 50 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 50,
		}),
		ach(1558, {	-- 100 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 100,
		}),
		ach(1559, {	-- 250 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 250,
		}),
		ach(1560, {	-- 500 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 500,
		}),
		ach(1561, {	-- 1000 Fish
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 1000,
		}),
		ach(1243, {	-- Fish Don't Leave Footprints
			-- #if BEFORE WRATH
			["timeline"] = { ADDED_2_3_0 },
			["spellID"] = 43308,	-- Find Fish
			-- #else
			["timeline"] = { ADDED_3_0_2 },
			-- #endif
		}),
		ach(878, {	-- One That Didn't Get Away (automated)
			-- #IF ANYCLASSIC
			["providers"] = {
				{ "i", 6295 },	-- 15 Pound Mud Snapper
				{ "i", 13913 },	-- 22 Pound Lobster
				{ "i", 13905 },	-- 29 Pound Salmon
				{ "i", 6364 },	-- 32 Pound Catfish
				{ "i", 13887 },	-- 52 Pound Redgill
				{ "i", 13880 },	-- 68 Pound Grouper
				{ "i", 13917 },	-- 103 Pound Mightfish
				-- #if AFTER WRATH
				{ "i", 44703 },	-- Dark Herring
				-- #endif
				{ "i", 19808 },	-- Rockhide Strongfish
				{ "i", 6360 },	-- Steelscale Crushfish
			},
			-- #ENDIF
			["timeline"] = { ADDED_3_0_2 },	-- NOTE: Players didn't actually get credit for this... Sigh.
		}),
		ach(5478, {	-- The Limnologist
			--["sym"] = {{ "achievement_criteria" }},
			["timeline"] = { ADDED_4_0_3_LAUNCH },
		}),
		ach(5479, {	-- The Oceanographer
			--["sym"] = {{ "achievement_criteria" }},
			["timeline"] = { ADDED_4_0_3_LAUNCH },
		}),
		ach(153, {	-- The Old Gnome and the Sea
			["timeline"] = { ADDED_3_0_2 },
			["_noautomation"] = true,
		}),
		ach(1257, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 }, }, {	-- The Scavenger
			crit(3873, {	-- Bloodsail Wreckage
				["provider"] = { "o", 180901 },	-- Bloodsail Wreckage
				["maps"] = {
					-- #if AFTER CATA
					THE_CAPE_OF_STRANGLETHORN,
					NORTHERN_STRANGLETHORN,
					-- #else
					STRANGLETHORN_VALE,
					-- #endif
				},
			}),
			crit(3876, {	-- Floating Wreckage
				["provider"] = { "o", 180751 },	-- Floating Wreckage
				["maps"] = {
					-- #if AFTER CATA
					BLASTED_LANDS,
					EASTERN_PLAGUELANDS,
					SWAMP_OF_SORROWS,
					TANARIS,
					THOUSAND_NEEDLES,
					-- #else
					AZSHARA,
					FERALAS,
					TANARIS,
					-- #endif
				},
			}),
			crit(3874, {	-- Schooner Wreckage
				["provider"] = { "o", 180662 },	-- Schooner Wreckage
				["maps"] = {
					-- #if AFTER CATA
					ARATHI_HIGHLANDS,
					ASHENVALE,
					-- #endif
					HILLSBRAD_FOOTHILLS,
					STONETALON_MOUNTAINS,
					WETLANDS,
				},
			}),
			crit(3872, {	-- Steam Pump Flotsam
				["provider"] = { "o", 182952 },	-- Steam Pump Flotsam
				["maps"] = { ZANGARMARSH },
			}),
			crit(3875, {	-- Waterlogged Wreckage
				["provider"] = { "o", 180685 },	-- Waterlogged Wreckage
				["maps"] = {
					-- #if AFTER CATA
					DESOLACE,
					DUSTWALLOW_MARSH,
					FERALAS,
					WESTERN_PLAGUELANDS,
					-- #else
					ALTERAC_MOUNTAINS,
					ARATHI_HIGHLANDS,
					DESOLACE,
					DUSTWALLOW_MARSH,
					STRANGLETHORN_VALE,
					-- #endif
				},
			}),
		})),
		applyclassicphase(WRATH_PHASE_ONE, ach(3218, {	-- Turtles All the Way Down
			["provider"] = { "i", 46109 },	-- Sea Turtle
			["timeline"] = { ADDED_3_0_3 },
		})),
	}),
	expansion(EXPANSION.CLASSIC, {
		ach(126, {	-- Journeyman Fisherman
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_2 },
			-- #else
			["spellID"] = 7731,	-- Fishing (Journeyman)
			-- #endif
			["rank"] = 2,
		}),
		ach(127, {	-- Expert Fisherman
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_2 },
			-- #else
			["spellID"] = 7732,	-- Fishing (Expert)
			-- #endif
			["rank"] = 3,
		}),
		ach(128, {	-- Artisan Fisherman
			-- #if NOT ANYCLASSIC
			["timeline"] = { ADDED_3_0_2 },
			-- #else
			["spellID"] = 18248,	-- Fishing (Artisan)
			-- #endif
			["rank"] = 4,
		}),
		ach(150, {	-- The Fishing Diplomat
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { ORGRIMMAR, STORMWIND_CITY },
		}),
	}),
	expansion(EXPANSION.TBC, {
		["timeline"] = {
			-- #if NOT ANYCLASSIC
			ADDED_3_0_2,
			-- #else
			ADDED_2_0_5,
			-- #endif
		},
		["groups"] = {
			applyclassicphase(TBC_PHASE_ONE, ach(129, {	-- Master Fisherman / Outland Fisherman
				-- #if ANYCLASSIC
				["spellID"] = 33095,	-- Fishing (Master)
				-- #endif
				["rank"] = 5,
			})),
			ach(1225, {	-- Outland Angler
				["maps"] = { NAGRAND, TEROKKAR_FOREST, ZANGARMARSH },
				["timeline"] = { ADDED_3_0_2 },
				-- #if ANYCLASSIC
				["sym"] = {{ "achievement_criteria" }},
				-- #else
				["g"] = {
					crit(3623),	-- Brackish Mixed School
					crit(3624),	-- Bluefish School
					crit(3625),	-- Mudfish School
					crit(3626),	-- School of Darter
					crit(3627),	-- Highland Mixed School
					crit(3628),	-- Sporefish School
				},
				-- #endif
			}),
		},
	}),
	expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_ONE, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_3 } }, {
		ach(130, {	-- Grand Master Fisherman
			-- #if ANYCLASSIC
			["spellID"] = 51294,	-- Fishing (Grand Master)
			-- #endif
			["rank"] = 6,
		}),
		ach(1517, {	-- Northrend Angler
			["maps"] = { BOREAN_TUNDRA, DRAGONBLIGHT, HOWLING_FJORD, GRIZZLY_HILLS, CRYSTALSONG_FOREST, SHOLAZAR_BASIN },
			["g"] = {
				crit(5278),	-- Borean Man O' War School
				crit(5279),	-- Deep Sea Monsterbelly School
				crit(5280),	-- Dragonfin Angelfish School
				crit(5281),	-- Fangtooth Herring School
				crit(5282),	-- Glacial Salmon School
				crit(5283),	-- Glassfin Minnow School
				crit(5284),	-- Imperial Manta Ray School
				crit(5285),	-- Moonglow Cuttlefish School
				crit(5286),	-- Musselback Sculpin School
				crit(5287),	-- Nettlefish School
			}
		}),
	}))),
	expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
		ach(4917),	-- Cataclysmic Fisherman
		ach(5851, {	-- Gone Fishin' (A)
			["timeline"] = { ADDED_4_2_0 },
			-- #if BEFORE 5.0.4
			["races"] = ALLIANCE_ONLY,
			-- #endif
			["sym"] = {{"meta_achievement",
				5848,	-- Fish or Cut Bait: Darnassus
				5847,	-- Fish or Cut Bait: Ironforge
				5476,	-- Fish or Cut Bait: Stormwind
				-- #if AFTER 5.0.4
				5477,	-- Fish or Cut Bait: Orgrimmar
				5850,	-- Fish or Cut Bait: Undercity
				5849,	-- Fish or Cut Bait: Thunder Bluff
				-- #endif
			}},
		}),
		ach(5852, {	-- Gone Fishin' (H)
			["timeline"] = { ADDED_4_2_0, REMOVED_5_0_4 },
			["races"] = HORDE_ONLY,
			-- #if BEFORE 5.0.4
			["sym"] = {{"meta_achievement",
				5850,	-- Fish or Cut Bait: Undercity
				5849,	-- Fish or Cut Bait: Thunder Bluff
				5477,	-- Fish or Cut Bait: Orgrimmar
			}},
			-- #endif
		}),
	})),
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		ach(6839),	-- Zen Master Fisherman
		ach(7614, {	-- Locking Down the Docks
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(7611, {	-- Pandarian Angler
			["sym"] = {{ "achievement_criteria" }},
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
		ach(9503),	-- Draenor Fisherman
		ach(9456),	-- Abyssal Gulper Eel Angler
		ach(9457),	-- Blackwater Whiptail Angler
		ach(9458),	-- Blind Lake Sturgeon Angler
		ach(9547, {	-- Everything Is Awesome!
			["cost"] = {{"i", 118414, 20}},	-- 20x Awesomefish
		}),
		ach(9459),	-- Fat Sleeper Angler
		ach(9455),	-- Fire Ammonite Angler
		ach(9460),	-- Jawless Skulker Angler
		ach(9461),	-- Sea Scorpion Angler
	})),
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(10594),	-- Legion Fisherman
			ach(10595, {	-- A Cast Above the Rest
				["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
			}),
			ach(10596, {	-- Bigger Fish to Fry
				crit(29912, {	-- Ancient Black Barracuda
					["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
					["provider"] = { "i", 133742 },
				}),
				crit(29909, {	-- Ancient Highmountain Salmon
					["maps"] = { HIGHMOUNTAIN },
					["provider"] = { "i", 133733 },
				}),
				crit(29921, {	-- Ancient Mossgill
					["maps"] = { VALSHARAH },
					["provider"] = { "i", 133730 },
				}),
				crit(29910, {	-- Axefish
					["maps"] = { AZSUNA },
					["provider"] = { "i", 133740 },
				}),
				crit(29908, {	-- Coldriver Carp
					["maps"] = { HIGHMOUNTAIN },
					["provider"] = { "i", 133732 },
				}),
				crit(29905, {	-- Ghostly Queenfish
					["maps"] = { AZSUNA },
					["provider"] = { "i", 133727 },
				}),
				crit(29914, {	-- Graybelly Lobster
					["maps"] = { STORMHEIM },
					["provider"] = { "i", 133735 },
				}),
				crit(29903, {	-- Leyshimmer Blenny
					["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
					["provider"] = { "i", 133725 },
				}),
				crit(29916, {	-- Magic-Eater Frog
					["maps"] = { SURAMAR },
					["provider"] = { "i", 133737 },
				}),
				crit(29907, {	-- Mountain Puffer
					["maps"] = { HIGHMOUNTAIN },
					["provider"] = { "i", 133731 },
				}),
				crit(29904, {	-- Nar'thalas Hermit
					["maps"] = { AZSUNA },
					["provider"] = { "i", 133726 },
				}),
				crit(29913, {	-- Oodelfjisk
					["maps"] = { STORMHEIM },
					["provider"] = { "i", 133734 },
				}),
				crit(29911, {	-- Seabottom Squid
					["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
					["provider"] = { "i", 133741 },
				}),
				crit(29918, {	-- Tainted Runescale Koi
					["maps"] = { SURAMAR },
					["provider"] = { "i", 133739 },
				}),
				crit(29915, {	-- Thundering Stormray
					["maps"] = { STORMHEIM },
					["provider"] = { "i", 133736 },
				}),
				crit(29917, {	-- Seerspine Puffer
					["maps"] = { SURAMAR },
					["provider"] = { "i", 133738 },
				}),
				crit(29919, {	-- Terrorfin
					["maps"] = { VALSHARAH },
					["provider"] = { "i", 133728 },
				}),
				crit(29920, {	-- Thorned Flounder
					["maps"] = { VALSHARAH },
					["provider"] = { "i", 133729 },
				}),
			}),
			ach(11725, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {	-- Fisherfriend of the Isles
				["description"] = "The Fishing Masters are on a daily rotation, so only one is up at a time.  The order is:\n\n1. Sha'leth\n2. Impus\n3. Ilyssia of the Waters\n4. Keeper Raynae\n5. Akule Riverhorn\n6. Corbyn\n\nMake sure you're close enough to the Fishing Master to get the |cFFFFD700Something's Fishy|r buff, or you won't be able to fish up the items (the buff may not show up until you dismount).\n\nThe quickest way to reach Best Friend is to fish in a group.\n",
				["g"] = {
					i(152583),	-- Underlight Emerald
					crit(36343, {	-- Ilyssia of the Waters
						["_npcs"] = { 120266 },
					}),
					crit(36344, {	-- Corbyn
						["_npcs"] = { 120458 },
					}),
					crit(36345, {	-- Akule Riverhorn
						["_npcs"] = { 120457 },
					}),
					crit(36346, {	-- Impus
						["_npcs"] = { 120460 },
					}),
					crit(36347, {	-- Sha'leth
						["_npcs"] = { 120459 },
					}),
					crit(36348, {	-- Keeper Raynae
						["_npcs"] = { 120456 },
					}),
				},
			})),
			ach(10598),	-- Fishing 'Round the Isles (automated)
			ach(10597),	-- Legion Aquaculture
		}),
		filter(MISC, {
			i(133715, {	-- Ancient Vrykul Ring
				["description"] = "This item will give you a buff that will allow you to see and fish from Oodelfjisk schools.",
				["maps"] = { STORMHEIM },
				["g"] = {
					i(133734),	-- Oodelfjisk
					i(139661),	-- Oodelfjisk [AP]
				},
			}),
			i(133724, {	-- Decayed Whale Blubber
				["description"] = "Using the item will place a whale blob in front of you, as the item describes. Cast your line, and shortly after a silithid wasp will fly down and hover over the whale blubber.  Click on the fly to add Ravenous Fly to your inventory.",
				["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
				["g"] = {
					i(133795, {	-- Ravenous Fly
						["description"] = "You must be in |cffffffffThe Great Sea|r when you use this item to catch the respective rare fish.",
						["g"] = {
							i(133742),	-- Ancient Black Barracuda
							i(139669),	-- Ancient Black Barracuda [AP]
						},
					}),
				}
			}),
			i(133720, {	-- Demonic Detritus
				["description"] = "This item will allow you to catch the rare fish Tainted Runescale Koi in Suramar.",
				["maps"] = { SURAMAR },
				["g"] = {
					i(133739),	-- Tainted Runescale Koi
					i(139666),	-- Tainted Runescale Koi [AP]
				},
			}),
			i(133708, {	-- Drowned Thistleleaf
				["description"] = "This item will summon a Drowned Thistleleaf, which grants the buff Blessing of the Thistleleaf, increasing your chance to fish up Thorned Flounder.",
				["maps"] = { VALSHARAH },
				["g"] = {
					i(133729),	-- Thorned Flounder
					i(139656),	-- Thorned Flounder [AP]
				},
			}),
			i(133717, {	-- Enchanted Lure
				["description"] = "This item will allow you to catch the rare fish Magic-Eater Frog in Suramar.",
				["maps"] = { SURAMAR },
				["g"] = {
					i(133737),	-- Magic-Eater Frog
					i(139664),	-- Magic-Eater Frog [AP]
				},
			}),
			i(133712, {	-- Frost Worm
				["description"] = "This item will allow you to catch the rare fish Coldriver Carp in Highmountain.",
				["maps"] = { HIGHMOUNTAIN },
				["g"] = {
					i(133732),	-- Coldriver Carp
					i(139659),	-- Coldriver Carp [AP]
				},
			}),
			i(133709, {	-- Funky Sea Snail
				["description"] = "When the short buff expires, this item will disappear from your inventory and a Bitestone Fishbrul will spawn.  Kill it for the lure.",
				["maps"] = { HIGHMOUNTAIN },
				["g"] = {
					n(102347, {	-- Bitestone Fishbrul
						i(133710, {	-- Salmon Lure
							["description"] = "This item will allow you to catch the rare fish Ancient Highmountain Salmon in Highmountain.",
							["g"] = {
								i(133733),	-- Ancient Highmountain Salmon
								i(139660),	-- Ancient Highmountain Salmon [AP]
							},
						}),
					}),
				},
			}),
			i(133721, {	-- Message in a Bottle
				["description"] = "I hope that someone gets my...\nI hope that someone gets my...\nMESSAGE IN A BOOOOTTTLE, yeah.",
				["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
				["g"] = {
					i(133722, {	-- Axefish Lure
						["description"] = "You must be in |cffffffffThe Great Sea|r when you use this item to catch the respective rare fish.",
						["g"] = {
							i(133740),	-- Axefish
							i(139667),	-- Axefish [AP]
						},
					}),
				},
			}),
			i(133713, {	-- Moosehorn Hook
				["description"] = "An important note - if you use this item with another bait active (or vice versa) the new buff WILL REPLACE the previous one.  As such, it's best to wait until your bait buff expires before using this item. This does not apply to Arcane Lure, which can be used concurrently with any other bait/lure.",
				["maps"] = { STORMHEIM },
				["g"] = {
					i(133714, {	-- Silverscale Minnow
						["description"] = "This item will allow you to catch the rare fish Thundering Stormray in Stormheim.",
						["g"] = {
							i(133736),	-- Thundering Stormray
							i(139663),	-- Thundering Stormray [AP]
						},
					}),
				},
			}),
			i(133707, {	-- Nightmare Nightcrawler
				["description"] = "This item will allow you to catch the rare fish Terrorfin in Val'sharah.",
				["maps"] = { VALSHARAH },
				["g"] = {
					i(133728),	-- Terrorfin
					i(139655),	-- Terrorfin [AP]
				},
			}),
			i(133703, {	-- Pearlescent Conch
				["description"] = "This item will allow you to catch the rare fish Nar'thalas Hermit in Azsuna.",
				["maps"] = { AZSUNA },
				["g"] = {
					i(133726),	-- Nar'thalas Hermit
					i(139653),	-- Nar'thalas Hermit [AP]
				},
			}),
			i(133705, {	-- Rotten Fishbone
				["description"] = "This item will attract a Lorlathil Druid that will cast The Cat's Meow buff on you, increasing your chance to fish up Ancient Mossgill.",
				["maps"] = { VALSHARAH },
				["g"] = {
					n(102349, {	-- Lorlathil Druid
						i(133730),	-- Ancient Mossgill
						i(139657),	-- Ancient Mossgill [AP]
					}),
				},
			}),
			i(133704, {	-- Rusty Queenfish Brooch
				["description"] = "This item will give you a buff that will allow you to see and fish from Ghostly Queenfish schools.",
				["maps"] = { AZSUNA },
				["g"] = {
					i(133727),	-- Ghostly Queenfish
					i(139654),	-- Ghostly Queenfish [AP]
				},
			}),
			i(133701, {	-- Skrog Toenail
				["description"] = "Upon expiration of the Skrog Toenail buff, a Murloc mob will appear. Kill it for the lure.",
				["maps"] = { AZSUNA },
				["g"] = {
					n(102338, {	-- Salteye Skrog-Hunter
						i(133702, {	-- Aromatic Murloc Slime
							["description"] = "This item will allow you to catch the rare fish Leyshimmer Blenny in Azsuna.",
							["g"] = {
								i(133725),	-- Leyshimmer Blenny
								i(139652),	-- Leyshimmer Blenny [AP]
							},
						}),
					}),
				},
			}),
			i(133719, {	-- Sleeping Murloc
				["description"] = "Using this item will awaken a Confused Seerspine Murloc, which will run around briefly and drop some Seerspine Puffers (as well as other fish) nearby.  Run over the fish to pick them up.\n\nIf you use this item on top of a pillar, the murloc won't have anywhere to run and it will be easier to pick up all the fish it drops.\n",
				["maps"] = { SURAMAR },
				["g"] = {
					n(102350, {	-- Confused Seerspine Murloc
						i(133738),	-- Seerspine Puffer
						i(139665),	-- Seerspine Puffer [AP]
					}),
				},
			}),
			i(133716, {	-- Soggy Drakescale
				["description"] = "This item will allow you to catch the rare fish Graybelly Lobster in Stormheim.",
				["maps"] = { STORMHEIM },
				["g"] = {
					i(133735),	-- Graybelly Lobster
					i(139662),	-- Graybelly Lobster [AP]
				},
			}),
			i(133723, {	-- Stunned, Angry Shark
				["description"] = "This item will spawn a Landlocked Shark, which will drop 7-9 Seabottom Squid when killed.  Note that this item only has a 1-minute duration in your bags, and it will disappear if you don't use it by then!\n\nYou must be in |cffffffffThe Great Sea|r to catch this.",
				["maps"] = { AZSUNA, VALSHARAH, HIGHMOUNTAIN, STORMHEIM, BROKEN_SHORE, SURAMAR, BROKEN_ISLES },
				["g"] = {
					n(102359, {	-- Landlocked Shark
						i(133741),	-- Seabottom Squid
						i(139668),	-- Seabottom Squid [AP]
					})
				},
			}),
			i(133711, {	-- Swollen Murloc Egg
				["description"] = "This item will spawn a Swamprock Tadpole that grants the Blessing of the Murlocs buff, increasing your chance to fish up Mountain Puffer.",
				["maps"] = { HIGHMOUNTAIN },
				["g"] = {
					n(102339, {	-- Swamprock Tadpole
						["description"] = "Casts the Blessing of the Murlocs buff on you, increasing your chance to fish up Mountain Puffer.",
						["g"] = {
							i(133731),	-- Mountain Puffer
							i(139658),	-- Mountain Puffer [AP]
						},
					}),
				},
			}),
		}),
		n(QUESTS, {
			q(40960, {	-- Luminous Pearl
				["provider"] = { "i", 133887 },	-- Luminous Pearl
			}),
			q(40961, {	-- The Dalaran Fountain
				["qg"] = 90417,	-- Archmage Khadgar
				["sourceQuest"] = 40960,	-- Luminous Pearl
				["coord"] = { 28.8, 48.6, LEGION_DALARAN },
			}),
			q(41010, {	-- Fish Frenzy
				["qg"] = 102639,	-- Nat Pagle
				["sourceQuest"] = 40961,	-- The Dalaran Fountain
				["description"] = "If you can't find Nat Pagle to give you this quest, going into the bank just south of the fountain seems to force him to spawn right on you.",
				["maps"] = { LEGION_DALARAN },	-- TODO replace with coord?
				["groups"] = {
					artifact(841),	-- Base Skin
				},
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(12753, {	-- Kul Tiran Fisherman [A]
				["races"] = ALLIANCE_ONLY,
			}),
			ach(12754, {	-- Zandalari Fisherman [H]
				["races"] = HORDE_ONLY,
			}),
			ach(12757),	-- Angling for Battle
			ach(12990),	-- Catchin' Some Rays
			ach(12756),	-- Fish Me In the Moonlight
			ach(12755, {	-- Scent of the Sea
				["cost"] = {{"i", 160711, 100}},	-- 100x Aromatic Fish Oil
			}),
			ach(13502, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Secret Fish and Where to Find Them
				["description"] = "First, acquire the Secret Fish Goggles from Danielle Anglers in Mechagon.\n\nWhen you use the goggles, you gain a 1-hour buff that allows you to see Secret Fish, which appear in bubbles around your character. When you see one, approach it and click on it, and you'll get a fish. That fish will be a BfA, or zone-relevant common fish, or one of the requirements for this achievement (assuming you fulfill the requirements for each fish).",
				["provider"] = { "i", 167698 },	-- Secret Fish Goggles
				["g"] = {
					i(168016),	-- Hyper-Compressed Ocean (TOY!)
					crit(44803, {	-- Ancient Mana Fin
						["itemID"] = 167708,	-- Ancient Mana Fin
						["description"] = "Found in Suramar City Harbor.",
					}),
					crit(44804, {	-- Barbed Fjord Fin
						["itemID"] = 167710,	-- Barbed Fjord Fin
						["description"] = "Found in Howling Fjord.",
					}),
					crit(44805, {	-- Camouflaged Snark
						["itemID"] = 167717,	-- Camouflaged Snark
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44806, {	-- Collectable Saltfin
						["itemID"] = 167718,	-- Collectable Saltfin
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44807, {	-- Dead Fel Bone
						["itemID"] = 167711,	-- Dead Fel Bone
						["description"] = "Found in Krokuun and the Antoran Wastes on Argus.",
					}),
					crit(44821, {	-- Deadeye Wally
						["itemID"] = 167727,	-- Deadeye Wally
						["description"] = "Can be caught anywhere, but only while you're dead.",
					}),
					crit(44808, {	-- Deceptive Maw
						["itemID"] = 167729,	-- Deceptive Maw
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44809, {	-- Drowned Goldfish
						["itemID"] = 167709,	-- Drowned Goldfish
						["description"] = "Found at around |cffffffff46, 50|r, at the Drowned Lands in Stormsong Valley.",
						["coord"] = { 46.0, 50.0, STORMSONG_VALLEY },
					}),
					crit(44810, {	-- Elusive Moonfish
						["itemID"] = 167715,	-- Elusive Moonfish
						["description"] = "Can be caught anywhere at night, from 9:30pm to 8am.",
					}),
					crit(44811, {	-- Golden Sunsoaker
						["itemID"] = 167719,	-- Golden Sunsoaker
						["description"] = "Can be caught anywhere during the day, from 8am to 9:30pm.",
					}),
					crit(44812, {	-- Inconspicuous Catfish
						["itemID"] = 167730,	-- Inconspicuous Catfish
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44813, {	-- Invisible Smelt
						["itemID"] = 167721,	-- Invisible Smelt
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44815, {	-- Jade Story Fish
						["itemID"] = 167706,	-- Jade Story Fish
						["description"] = "Found in the Jade Forest.",
					}),
					crit(44816, {	-- Kirin Tor Clown
						["itemID"] = 167707,	-- Kirin Tor Clown
						["description"] = "Found in Dalaran (Broken Isles or Northrend).",
					}),
					crit(44817, {	-- Mechanized Mackerel
						["itemID"] = 167705,	-- Mechanized Mackerel
						["description"] = "Found in Mechagon.",
					}),
					crit(44814, {	-- Prisoner Fish
						["itemID"] = 167722,	-- Prisoner Fish
						["description"] = "Found in Tol Barad (PvP area).",
					}),
					crit(44818, {	-- Queen's Delight
						["itemID"] = 167728,	-- Queen's Delight
						["description"] = "Found in Nazjatar.",
					}),
					crit(44819, {	-- Quiet Floater
						["itemID"] = 167726,	-- Quiet Floater
						["description"] = "Can be caught anywhere, but only while you're dead.",
					}),
					crit(44820, {	-- Rotted Blood Cod
						["itemID"] = 167712,	-- Rotted Blood Cod
						["description"] = "Found in Zul'Nazman, Nazmir (the area surrounding Uldir).",
					}),
					crit(44822, {	-- Thunderous Flounder
						["itemID"] = 167723,	-- Thunderous Flounder
						["description"] = "Found on the Isle of Thunder.",
					}),
					crit(44828, {	-- Tortollan Tank Dweller
						["itemID"] = 167724,	-- Tortollan Tank Dweller
						["description"] = "Found in Anyport, Drustvar, inside the Tortollan inn named 'The Drunk Tank.'",
						["coord"] = { 19.6, 42.8, DRUSTVAR },
					}),
					crit(44823, {	-- Travelling Goby
						["itemID"] = 167714,	-- Travelling Goby
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44824, {	-- Unseen Mimmic
						["itemID"] = 167716,	-- Unseen Mimmic
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(44825, {	-- Spiritual Salmon
						["itemID"] = 167725,	-- Spiritual Salmon
						["description"] = "Can be caught anywhere, but only while you're dead.",
					}),
					crit(44826, {	-- Veiled Ghost
						["itemID"] = 167713,	-- Veiled Ghost
						["description"] = "Can be caught anywhere, but only while you're dead.",
					}),
					crit(44827, {	-- Very Tiny Whale
						["itemID"] = 167720,	-- Very Tiny Whale
						["description"] = "Can be caught anywhere at any time.",
					}),
					crit(45754, {	-- Green Roughy
						["itemID"] = 169884,	-- Green Roughy
						["description"] = "Can be caught anywhere, but requires the |cffffffff[Painted Green]|r buff from Mechagon. Head over to the painting station at |cffffffff63, 42|r and get the buff.",
						["coord"] = { 63.0, 42.0, MECHAGON },
					}),
					crit(45755, {	-- Displaced Scrapfin
						["itemID"] = 169870,	-- Displaced Scrapfin
						["description"] = "Can be caught in Alternate Mechagon. Wait for Chromie to give you the quest 'The Other Place', or craft a Personal Time Displacer from Mechagon Tinkering.",
					}),
					crit(45952, {	-- Thin Air Flounder
						["itemID"] = 169897,	-- Thin Air Flounder
						["description"] = "Found at Neverest Pinnacle atop Kun-Lai Summit.",
					}),
					crit(45953, {	-- Well Lurker
						["itemID"] = 169898,	-- Well Lurker
						["description"] = "Found in Mount Hyjal, in the lake under Nordrassil.",
					}),
				},
			})),
		}),
		i(168016, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {	-- Hyper-Compressed Ocean (TOY!)
			["crs"] = { 152121 },	-- Hyper-Compressed Ocean NPC
			["groups"] = {	-- Confirmed Drops
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
				i(7188, {	-- Stormwind Guard Shield
					["timeline"] = { CREATED_1_12_1, ADDED_8_2_0 },
				}),
				i(7187, {	-- VanCleef's Boots
					["requireSkill"] = IGNORED_VALUE,	-- not exclusive to fishing, listed under dented boots also
				}),
			}
		})),
	})),
	expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_2_LAUNCH } }, {
		ach(14333),	-- Shadowlands Fisherman
	})),
	expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
		n(ACHIEVEMENTS, {
			ach(16632),	-- Dragon Isles Fisherman
			ach(17207, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {	-- Discombobberlated
				["provider"] = { "i", 136377 },	-- Oversized Bobber
				["g"] = {
					i(202207),	-- Reusable Oversized Bobber (TOY!)
				},
			})),
		}),
		n(QUESTS, {
			q(72252, {	-- Dragon Isles Fishing [A]
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Fishing.",
				["sourceQuests"] = { 67700 },	-- To the Dragon Isles! [A]
				["provider"] = { "n", 191150 },	-- Danielle Anglers
				["coord"] = { 81.3, 31.3, THE_WAKING_SHORES },
				["races"] = ALLIANCE_ONLY,
				["lockCriteria"] = { 1, "spellID", 366253 },	-- Dragon Isles Fishing
			}),
			q(72253, {	-- Dragon Isles Fishing [H]
				["description"] = "This quest can only be picked up PRIOR to learning Dragon Isles Fishing.",
				["sourceQuests"] = { 65444 },	-- To the Dragon Isles! [H]
				["provider"] = { "n", 190524 },	-- Mora Cloudwalker <Fishing Trainer>
				["coord"] = { 81.0, 29.0, THE_WAKING_SHORES },
				["races"] = HORDE_ONLY,
				["lockCriteria"] = { 1, "spellID", 366253 },	-- Dragon Isles Fishing
			}),
			q(72729, {	-- The Great Swog
				["provider"] = { "i", 202105 },	-- Rusted Coin of the Isles
			}),
		}),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_2 } }, {
		n(ACHIEVEMENTS, {
			ach(40494, {	-- 10 Algari Anglerthread
				["cost"] = {{"i", 225770, 10}},	-- 10x Algari Anglerthread
			}),
			ach(40495, {	-- 20 Algari Anglerthread
				["cost"] = {{"i", 225770, 20}},	-- 20x Algari Anglerthread
			}),
			ach(40497, {	-- 30 Algari Anglerthread
				["cost"] = {{"i", 225770, 30}},	-- 30x Algari Anglerthread
			}),
			ach(40499, {	-- 40 Algari Anglerthread
				["cost"] = {{"i", 225770, 40}},	-- 40x Algari Anglerthread
			}),
			ach(40502, {	-- 50 Algari Anglerthread
				["cost"] = {{"i", 225770, 50}},	-- 50x Algari Anglerthread
			}),
			ach(40496, {	-- 60 Algari Anglerthread
				["cost"] = {{"i", 225770, 60}},	-- 60x Algari Anglerthread
			}),
			ach(40498, {	-- 70 Algari Anglerthread
				["cost"] = {{"i", 225770, 70}},	-- 70x Algari Anglerthread
			}),
			ach(40500, {	-- 80 Algari Anglerthread
				["cost"] = {{"i", 225770, 80}},	-- 80x Algari Anglerthread
			}),
			ach(40503, {	-- 90 Algari Anglerthread
				["cost"] = {{"i", 225770, 90}},	-- 90x Algari Anglerthread
			}),
			ach(40501, {	-- 100 Algari Anglerthread
				["cost"] = {{"i", 225770, 100}},	-- 100x Algari Anglerthread
			}),
			ach(40476, {	-- 10 Algari Seekerthread
				["cost"] = {{"i", 225771, 10}},	-- 10x Algari Seekerthread
			}),
			ach(40480, {	-- 20 Algari Seekerthread
				["cost"] = {{"i", 225771, 20}},	-- 20x Algari Seekerthread
			}),
			ach(40484, {	-- 30 Algari Seekerthread
				["cost"] = {{"i", 225771, 30}},	-- 30x Algari Seekerthread
			}),
			ach(40485, {	-- 40 Algari Seekerthread
				["cost"] = {{"i", 225771, 40}},	-- 40x Algari Seekerthread
			}),
			ach(40487, {	-- 50 Algari Seekerthread
				["cost"] = {{"i", 225771, 50}},	-- 50x Algari Seekerthread
			}),
			ach(40488, {	-- 60 Algari Seekerthread
				["cost"] = {{"i", 225771, 60}},	-- 60x Algari Seekerthread
			}),
			ach(40489, {	-- 70 Algari Seekerthread
				["cost"] = {{"i", 225771, 70}},	-- 70x Algari Seekerthread
			}),
			ach(40490, {	-- 80 Algari Seekerthread
				["cost"] = {{"i", 225771, 80}},	-- 80x Algari Seekerthread
			}),
			ach(40491, {	-- 90 Algari Seekerthread
				["cost"] = {{"i", 225771, 90}},	-- 90x Algari Seekerthread
			}),
			ach(40492, {	-- 100 Algari Seekerthread
				["cost"] = {{"i", 225771, 100}},	-- 100x Algari Seekerthread
			}),
			ach(19415, {	-- Algari Fisherman
				["cost"] = {{"i", 224752, 20}},	-- 20x Soaked Journal Entry
			}),
		}),
		filter(COSMETIC, {
			i(225759),	-- Coreway Engineer's Forceps (COSMETIC!)
			i(225762),	-- Coreway Engineer's Screwdriver (COSMETIC!)
			i(225757),	-- Coreway Pickaxe (COSMETIC!)
			i(225756),	-- Coreway Shovel (COSMETIC!)
			i(225755),	-- Coreway Sledgehammer (COSMETIC!)
			i(225752),	-- Dornogal Defender (COSMETIC!)
			i(225754),	-- Dornogal Guard's Hammer (COSMETIC!)
			i(225753),	-- Dornogal Guard's Splitter (COSMETIC!)
			i(225760),	-- Dornogal Spear (COSMETIC!)
			i(225884),	-- Extra Large Leek (COSMETIC!)
			i(225763),	-- Fallen Dalaran Defender (COSMETIC!)
			i(225758),  -- Hallowfall Harvester's Pitchfork (COSMETIC!)
			i(225761),	-- Jeweler's Careful Crusher (COSMETIC!)
			i(226385),	-- Oxidized Wrench	(COSMETIC!)
		}),
		filter(MISC, {
			i(226392),	-- Careless Dasher's Treasure
			i(225768),	-- Crusty Darkmoon Card
		}),
	})),
})));