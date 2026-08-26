---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local COILED_FILAMENT = 3546;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_CAPTAIN_TOKKA, {
				["lore"] = "Captain Tokka's ship was devoured by the Great White Serpent and his crew corrupted by Ula'tek's Curse. He'll share the secrets of venom fishing, if you help him get his revenge.",
				["icon"] = 2065576,
				["groups"] = {
					faction(FACTION_CAPTAIN_TOKKA),
					n(ACHIEVEMENTS, {
						ach(63629, {	-- Angler of The Coiled Isle
							i(278336),	-- Sinful Pearl (CI!)
						}),
						ach(63631),	-- Captain Tokka's Crew
						ach(63635, {	-- Tokka's Terrible Trials
							title(789),	-- Bloodsworn Mariner <Name>
						}),
						ach(63632),	-- Toxic Trophies
						ach(63512),	-- Treasures of the Damned
						ach(63634, {	-- Where Did You Get That?
							["provider"] = { "i", 244790 },	-- The Coiled Huntress [Fishing Tool]
						}),
					}),
					n(QUESTS, sharedDataSelf({	-- Second Mate Sluggs
						["qg"] = 257598,	-- Second Mate Sluggs
						["coord"] = { 51.6, 49.8, MAP.MIDNIGHT.THE_COILED_ISLE },
						["isDaily"] = true,
					}, {
						q(94804),	-- A Collection of Rot
						q(94800, {	-- Crushed Crabs
							i(277992),	-- Crab Trap Pieces (QI!)
							i(277847),	-- Unbroken Trap Hinge (QI!)
							i(274579),	-- Undamaged Trap Needle (QI!)
							i(277848),	-- Untouched Crab Lure (QI!)
							--
							i(277849),	-- Mushed Crab
						}),
						q(94796, {	-- Curing Curse Resistance
							i(278094),	-- Whole Uncursed Liver (QI!)
							--
							i(278095),	-- Liver Pulp
						}),
						q(94802, {	-- Death from the Dead
							i(277955),	-- Ethereal Bead Strand (QI!)
						}),
						q(94803, {	-- Going for the Crown
							i(277920),	-- Vibrant Crownfeather (QI!)
						}),
						q(94798),	-- Ssak'mozek's Desire
						q(94805),	-- The New Hoard, Poached
						q(94806, {	-- Wriggling and Wet
							i(277935),	-- Pungent Leech Leg (QI!)
						}),
					})),
					n(QUESTS, sharedDataSelf({	-- Brinedrinker Gills
						["qg"] = 268394,	-- Brinedrinker Gills
						["coord"] = { 51.7, 50.2, MAP.MIDNIGHT.THE_COILED_ISLE },
						["isDaily"] = true,
					}, {
						q(97562),	-- Culling the Killifish
						q(97571),	-- Dogging the Darters
						q(97557),	-- Tailing the Tlhapi
					})),
					n(QUESTS, {
						q(97535, {	-- A Bargain You Won't Refuse
							["qg"] = 269313,	-- Three-Eyed Fish
							["provider"] = { "i", 278391 },	-- Eerie Bauble
							["qi"] = 278193,	-- Aqiri Mandible (QI!)
						}),
						q(97559, {	-- The Familiar Taste of Poison
							["sourceQuest"] = 97535,	-- A Bargain You Won't Refuse
							["qg"] = 269313,	-- Three-Eyed Fish
							["provider"] = { "i", 278391 },	-- Eerie Bauble
							["qis"] = {
								279479,	-- Leviathan's Eye (QI!)
								279475,	-- Mutagenitor's Feather (QI!)
								279478,	-- Ori'kassi's Barbed Tail (QI!)
								279477,	-- Ss'akrithos's Forked Tongue (QI!)
								279476,	-- Vassti's Claw (QI!)
							},
						}),
						q(97565, {	-- Tipping the Scaled
							["sourceQuest"] = 97559,	-- The Familiar Taste of Poison
							["qg"] = 269313,	-- Three-Eyed Fish
							["provider"] = { "i", 278391 },	-- Eerie Bauble
							["maps"] = { MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							["qi"] = 280446,	-- Unnerving Bait (QI!)
							["groups"] = { i(279483) },	-- Three-Eyed Fish (PET!)
						}),
						q(97464, {	-- A Dash of Poison
							["qs"] = 278000	-- Sealed Vial of Mysterious Green Liquid (QS!)
						}),
						q(97457, {	-- Bonemail Gauntlet
							["qs"] = 279384,	-- Bonemail Gauntlet (QS!)
						}),
						q(97455, {	-- Call of the Bell
							["qs"] = 277989,	-- Ghostcaller's Bell (QS!)
						}),
						q(97461, {	-- Cursed Fishing 101
							["qs"] = 277997,	-- Malevolent Fishing Codex (QS!)
						}),
						q(97463, {	-- Just a Normal Knife
							["qs"] = 277999,	-- Ritual Dagger (QS!)
						}),
						q(97460, {	-- Lightly Salted
							["qs"] = 277996,	-- Summoning Salt (QS!)
						}),
						q(97462, {	-- Rocky Shores
							["qs"] = 277998,	-- Lump of Crystalline Malachite (QS!)
						}),
						q(97459, {	-- Something Smelly
							["qs"] = 277993,	-- Spiritsurge Incense (QS!)
						}),
						q(97458, {	-- Tackled and Boxed
							["qs"] = 277991,	-- Shrieking Tacklebox (QS!)
						}),
						q(97465, {	-- The Intended Way to Fish
							["qs"] = 278001,	-- Forgotten Amani Fishing Rod (QS!)
						}),
					}),
					prof(FISHING, {
						spell(1306775, { -- Venom Fishing
							["description"] = "Enables fishing in the venomous waters surrounding the Temple of Ula'tek on The Coiled Isle.",
							["sourceQuest"] = 96112,	-- Venom Fishing: Maddening Concoction
							["groups"] = {
								i(274805),	-- Envenomed Chopper (COSMETIC!)
							--	i(274796),	-- Envenomed Deathblade (COSMETIC!) (needs confirmation)
								i(274804),	-- Envenomed Elfcleaver (COSMETIC!)
								i(274816),	-- Envenomed False Promise (COSMETIC!)
								i(274814),	-- Envenomed Game Ripper (COSMETIC!) (can be 100% fished, even when its on vendor for currency)
								i(274802),	-- Envenomed Gavel (COSMETIC!) (can be 100% fished, even when its on vendor for currency)
								i(274806),	-- Envenomed Gut-Puncher (COSMETIC!)
								i(274813),	-- Envenomed Hammer (COSMETIC!)
								i(274812),	-- Envenomed Hunter's Spear (COSMETIC!)
								i(274815),	-- Envenomed Pages (COSMETIC!)
								i(274807),	-- Envenomed Ritualizer (COSMETIC!)
								i(274811),	-- Envenomed Sacrificial Dagger (COSMETIC!)
								i(274801),	-- Envenomed Snakefang (COSMETIC!)
								i(274809),	-- Envenomed Soul Collector (COSMETIC!)
								i(274810),	-- Envenomed Spring's Frenzy (COSMETIC!)
								i(274803),	-- Envenomed Trollsplitter (COSMETIC!)
								i(274808),	-- Envenomed Umbral Claymore (COSMETIC!)
							},
						}),
						filter(QUEST_ITEMS, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
							i(279384, {	-- Bonemail Gauntlet (QS!)
								["description"] = "Can be fished in open waters",
								["sourceQuest"] = 98343,	-- Venom Fishing: My Second-Best
							}),
							i(278001, {	-- Forgotten Amani Fishing Rod (QS!)
								["description"] = "Can be fished in open cursed waters around areas following a successfully completed Cursed Surge event. Look for the Cursed Land and Waters buff.",
								["sourceQuest"] = 96111,	-- Venom Fishing: Shell of Yourself
							}),
							i(277989, {	-- Ghostcaller's Bell (QS!)
								["description"] = "Can be fished from Bubbling Beryl pools.",
								["sourceQuest"] = 96113,	-- Venom Fishing: Maximum Potency
							}),
							i(277998, {	-- Lump of Crystalline Malachite (QS!)
								["description"] = "Can be fished from Willow Sea pools.",
								["sourceQuest"] = 96113,	-- Venom Fishing: Maximum Potency
							}),
							i(277997),	-- Malevolent Fishing Codex (QS!)
							i(277999, {	-- Ritual Dagger (QS!)
								["description"] = "Can be fished in open waters",
								["sourceQuest"] = 98343,	-- Venom Fishing: My Second-Best
							}),
							i(278000, {	-- Sealed Vial of Mysterious Green Liquid (QS!)
								["description"] = "Can be fished in venomous waters surrounding the Temple.",
								["sourceQuest"] = 96112,	-- Venom Fishing: Maddening Concoction
							}),
							i(277991, {	-- Shrieking Tacklebox (QS!)
								["description"] = "Can be fished in venomous waters surrounding the Temple.",
								["sourceQuest"] = 96112,	-- Venom Fishing: Maddening Concoction
							}),
							i(277993, {	-- Spiritsurge Incense (QS!)
								["description"] = "Can be fished in open cursed waters around areas following a successfully completed Cursed Surge event. Look for the Cursed Land and Waters buff.",
								["sourceQuest"] = 96111,	-- Venom Fishing: Shell of Yourself
							}),
							i(277996, {	-- Summoning Salt (QS!)
								["description"] = "Can be fished in open waters",
								["sourceQuest"] = 96113,	-- Venom Fishing: Maximum Potency
							}),
						})),
					}),
					n(RARES, {
						n(270024, {	-- Cook Leathertongue
							["description"] = "Provides 50 Captain Tokka Reputation on kill",
							["provider"] = { "i", 279207 },	-- Blackened Sludgefish
						}),
						n(270222, {	-- Master Grenadier Birdie
							["description"] = "Provides 50 Captain Tokka Reputation on kill",
							["provider"] = { "i", 279210 },	-- Explosive Tlhapi
						}),
						n(269765, {	-- Quartermaster Inktail
							["description"] = "Provides 50 Captain Tokka Reputation on kill",
							["provider"] = { "i", 278848 },	-- Pustulent Blightswarmer
						}),
					}),
					n(VENDORS, {
						n(257598, {	-- Second Mate Sluggs
							["coord"] = { 51.6, 49.8, MAP.MIDNIGHT.THE_COILED_ISLE },
							["groups"] = {
								-- Rank 1: Stranger (Neutral)
								i(281022, {	-- Eerie Lure
									["cost"] = { { "c", VOIDLIGHT_MARL, 10 } },
								}),
								i(262792, {	-- Shredded Bloomline
									["cost"] = { { "c", COILED_FILAMENT, 10 } },
								}),
								i(262797, {	-- Shredded Glimmerline
									["cost"] = { { "c", COILED_FILAMENT, 10 } },
								}),
								-- Rank 2: Doomed Sailor
								i(277923, {	-- Aged Tortollan Scroll Case (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
								}),
								i(278332, {	-- Recipe: Puffer Plate (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(277927, {	-- Yellowed Kelp Pile (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 2 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								-- Rank 3: Cursed Angler
								i(275693, {	-- Design: Opalescent Amani Peridot (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 } },
								}),
								i(277931, {	-- Hanging Yellowed Kelp (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(275336, {	-- Pattern: Mounted Moby (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", ARTISAN_MOXIE.LEATHERWORKING, 150 } },
								}),
								i(271891, {	-- Recipe: Alluring Nostrum (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } },
								}),
								i(275018, {	-- Recipe: Coiled Stargorger Lure (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(275318, {	-- Schematic: Proudmoore Ship-in-a-Bottle (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 3 },
									["cost"] = { { "c", ARTISAN_MOXIE.ENGINEERING, 150 } },
								}),
								-- Rank 4: Venom Trawler
								i(277925, {	-- Blue Tortollan Signpost (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(278391, {	-- Eerie Bauble
									["description"] = "Throw at a pool of fish to summor an eldritch fishy questgiver",
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
								}),
								i(275301, {	-- Recipe: Feast of Knowledge (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(275012, {	-- Recipe: Tokka's Multi-Ward (RECIPE!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 1500 } },
								}),
								i(277929, {	-- Rustic Fishing Rack (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								}),
								i(275020, {	-- Venom Elemental (PET!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
									["cost"] = { { "g", 1000000 } },	-- 100g
								}),
								-- Rank 5: Bloodsworn Crew
								i(274796, {	-- Envenomed Deathblade (COSMETIC!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", COILED_FILAMENT, 500 } },
								}),
								i(274814, {	-- Envenomed Game Ripper (COSMETIC!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", COILED_FILAMENT, 1000 } },
								}),
								i(274802, {	-- Envenomed Gavel (COSMETIC!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", COILED_FILAMENT, 500 } },
								}),
								i(275653, {	-- Sea-Dwelling Isle Serpent (MOUNT!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", COILED_FILAMENT, 2500 } },
								}),
								i(244790, {	-- The Coiled Huntress [Fishing Tool]
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 6000 } },
								}),
								i(277921, {	-- Traditional Tortollan Tent (DECOR!)
									["minReputation"] = { FACTION_CAPTAIN_TOKKA, 5 },
									["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
								}),
							},
						}),
					}),
				},
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			header(HEADERS.Faction, FACTION_CAPTAIN_TOKKA, {
				q(97537),	-- Triggered after turning in 'A Collection of Rot' (94804)
				q(98484, {	-- First Captain Tokka rare fished up (Weekly)
					["name"] = "First Captain Tokka rare fished up (Weekly)",
					["providers"] = {
						{ "n", 270024 },	-- Cook Leathertongue
						{ "n", 270222 },	-- Master Grenadier Birdie
						{ "n", 269765 },	-- Quartermaster Inktail
					},
					["isWeekly"] = true,
				}),
				q(98485, {	-- Second Captain Tokka rare fished up (Weekly)
					["name"] = "Second Captain Tokka rare fished up (Weekly)",
					["providers"] = {
						{ "n", 270024 },	-- Cook Leathertongue
						{ "n", 270222 },	-- Master Grenadier Birdie
						{ "n", 269765 },	-- Quartermaster Inktail
					},
					["isWeekly"] = true,
				}),
				q(98486, {	-- Third Captain Tokka rare fished up (Weekly)
					["name"] = "Third Captain Tokka rare fished up (Weekly)",
					["providers"] = {
						{ "n", 270024 },	-- Cook Leathertongue
						{ "n", 270222 },	-- Master Grenadier Birdie
						{ "n", 269765 },	-- Quartermaster Inktail
					},
					["isWeekly"] = true,
				}),
			}),
		})),
	}),
}));
