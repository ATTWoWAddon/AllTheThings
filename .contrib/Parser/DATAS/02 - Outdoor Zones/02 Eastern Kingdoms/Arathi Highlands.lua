---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(ARATHI_HIGHLANDS, {
		["lore"] = "The Arathi Highlands are located in southeastern Lordaeron, east of Hillsbrad Foothills and south of the Hinterlands. It is a flat but craggy region that has traditionally been the home of the humans of Arathor, who gave the region its name. The main hubs of activity are now Refuge Pointe and Hammerfall, which houses bases for Alliance and Horde, respectively. The large city of Stromgarde lies in ruins to the southwest, and pockets of Syndicate resistance dot the land. The Boulderfist Orges also infest Arathor, and prove to be a constant threat to the Alliance, Horde, and Syndicate factions vying for supremacy.",
		["icon"] = 236712,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4896, {	-- Arathi Highlands Quests
					["timeline"] = { ADDED_4_0_3 },
					-- #if AFTER MOP
					["groups"] = {
						crit(38274, {	-- Faldir's Cove
							["sourceQuest"] = 26628,	-- Death From Below
						}),
						crit(38275, {	-- Refuge Pointe (A)
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26117,	-- For Southshore
							},
						}),
						crit(38276, {	-- Refuge Pointe (A)
							["races"] = ALLIANCE_ONLY,
							["sourceQuests"] = {
								26038,	-- Attack on the Tower
							},
						}),
						crit(38277, {	-- Myzrael's Tale (A)
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 26049,	-- The Princess Unleashed (A)
						}),
						crit(38270, {	-- Galen's Fall (H)
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26081,	-- Alina's Reward
							},
						}),
						crit(38271, {	-- Galen's Fall (H)
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26029,	-- The Real Threat
							},
						}),
						crit(38272, {	-- Hammerfall (H)
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26912,	-- The Princess Unleashed (H)
							},
						}),
						crit(38273, {	-- Hammerfall (H)
							["races"] = HORDE_ONLY,
							["sourceQuests"] = {
								26108,	-- Guile of the Raptor
							},
						}),
					},
					-- #else
					["sourceQuests"] = {
						26628,	-- Death From Below
						26117,	-- For Southshore
						26038,	-- Attack on the Tower
						26049,	-- The Princess Unleashed (A)
						26081,	-- Alina's Reward
						26029,	-- The Real Threat
						26912,	-- The Princess Unleashed (H)
						26108,	-- Guile of the Raptor
					},
					-- #endif
				}),
				explorationAch(761),	-- Explore Arathi Highlands
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					386,	-- Prarie Dog (PET!)
					417,	-- Rat (PET!)
					419,	-- Small Frog (PET!)
				}},
				["groups"] = {
					pet(443),	-- Grasslands Cottontail (PET!)
					pet(445, {	-- Tiny Twister (PET!)
						["coord"] = { 47.0, 53.0, ARATHI_HIGHLANDS },
					}),
				},
			}),
			explorationHeader({
				exploration(1858),	-- Boulder'gor
				exploration(316),	-- Boulderfist Hall
				exploration(333),	-- Circle of East Binding
				exploration(335),	-- Circle of Inner Binding
				exploration(336),	-- Circle of Outer Binding
				exploration(334),	-- Circle of West Binding
				exploration(315),	-- Dabyrie's Farmstead
				exploration(318),	-- Drywhisker Gorge
				exploration(327),	-- Faldir's Cove
				-- #if AFTER CATA
				exploration(5121),	-- Galen's Fall
				-- #endif
				exploration(314),	-- Go'Shek Farm
				exploration(321),	-- Hammerfall
				exploration(313),	-- Northfold Manor
				exploration(320),	-- Refuge Pointe
				exploration(324),	-- Stromgarde Keep
				exploration(880),	-- Thandol Span
				-- #if BEFORE CATA
				exploration(1857),	-- Thoradin's Wall
				-- #endif
				exploration(317),	-- Witherbark Village
			}),
			n(FLIGHT_PATHS, {
				fp(601, {	-- Galen's Fall, Arathi
					["cr"] = 43104,	-- Rhoda Bowers <Bat Handler>
					["coord"] = { 13.4, 34.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- TODO: requires sourceQuests/altQuests as it is not collectible for my main
				}),
				fp(17, {	-- Hammerfall, Arathi

					["crs"] = {
						-- #if AFTER BFA
						2851,	-- Urda <Wind Rider Master>
						144069,	-- Urda <Wind Rider Master>
						-- #else
						2851,	-- Urda <Wind Rider Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 68.2, 33.4, ARATHI_HIGHLANDS },
						-- #else
						{ 73.0, 32.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
				fp(16, {	-- Refuge Pointe, Arathi
					["crs"] = {
						-- #if AFTER BFA
						2835,	-- Cedrik Prose <Gryphon Master>
						144055,	-- Cedrik Prose <Gryphon Master>
						-- #else
						2835,	-- Cedrik Prose <Gryphon Master>
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 39.6, 47.0, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 46.2, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(PROFESSIONS, {
				prof(FIRST_AID, {
					n(12920, {	-- Doctor Gregory Victor <Trauma Surgeon>
						["coord"] = { 73.4, 36.8, ARATHI_HIGHLANDS },
						["races"] = HORDE_ONLY,
						-- #if BEFORE 3.1.0
						["groups"] = ARTISAN_FIRST_AID,
						-- #endif
					}),
				}),
				prof(FISHING, {
					-- #if AFTER CATA
					o(180662),	-- Schooner Wreckage
					-- #else
					o(180685),	-- Waterlogged Wreckage
					-- #endif
				}),
				prof(LEATHERWORKING, {
					n(7869, {	-- Brumn Winterhoof <Master Elemental Leatherworker>
						["coord"] = { 28.2, 45.0, ARATHI_HIGHLANDS },
						["races"] = HORDE_ONLY,
						["g"] = CLASSIC_TBC_ELEMENTAL,
					}),
				}),
			}),
			n(QUESTS, {
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79677, {	-- A Quick Grocery Run
					["qg"] = 217300,	-- Skonk <Amateur Chef>
					["sourceQuest"] = 79624,	-- Anyone Can Cook
					["coord"] = { 57.6, 74.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_1_15_1 },
					["maps"] = { HILLSBRAD_FOOTHILLS, SWAMP_OF_SORROWS, BADLANDS },
					["classes"] = { WARRIOR },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Hybrid Haunch
							["provider"] = { "i", 213526 },	-- Hybrid Haunch
							["coord"] = { 83.0, 36.0, HILLSBRAD_FOOTHILLS },
							["cr"] = 2347,	-- Wild Gryphon
						}),
						objective(2, {	-- 0/1 Smuggler's Spice Blend
							["providers"] = {
								{ "i", 213527 },	-- Smuggler's Spice Blend
								{ "o", 422911 },	-- Sealed Barrel
							},
							["coord"] = { 21.5, 83.9, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Balmy Brew
							["providers"] = {
								{ "i", 213528 },	-- Balmy Brew
								{ "o", 422919 },	-- Tapped Shadowforge Keg
							},
							["coord"] = { 41.5, 28.1, BADLANDS },
						}),
						objective(4, {	-- 0/1 Viscous Venom
							["provider"] = { "i", 213529 },	-- Viscous Venom
							["coord"] = { 70.0, 72.0, SWAMP_OF_SORROWS },
							["cr"] = 769,	-- Deathstrike Tarantula
						}),
					},
				})),
				-- #endif
				q(26081, {	-- Alina's Reward
					["qg"] = 41944,	-- Galen Trollbane
					["sourceQuest"] = 26033,	-- Trol'kalar
					["coord"] = { 12.9, 36.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(59194, {	-- Sandals of Satisfaction
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59195, {	-- Bracers of Sensations
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59196, {	-- Alina's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59197, {	-- Lordaeron-Made Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131479, {	-- Cuffs of Feeling
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131480, {	-- Grips of the Forsaken
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(695, {	-- An Apprentice's Enchantment
					["providers"] = {
						{ "n", 2788 },	-- Apprentice Kryten
						{ "i", 4529 },	-- Enchanted Agate
					},
					["sourceQuest"] = 694,	-- Trelane's Defenses
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79624, {	-- Anyone Can Cook
					["providers"] = {
						{ "i", 213422 },	-- Illegible Recipe
						{ "n", 217300 },	-- Skonk <Amateur Chef>
					},
					["coord"] = { 20.0, 67.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_1_15_1 },
					["maps"] = { ALTERAC_MOUNTAINS },
					["classes"] = { WARRIOR },
					["crs"] = {
						2569,	-- Boulderfist Mauler
						2254,	-- Crushridge Mauler
						2570,	-- Boulderfist Shaman
						2255,	-- Crushridge Mage
						2256,	-- Crushridge Enforcer
						2571,	-- Boulderfist Lord
						2287,	-- Crushridge Warmonger
					},
					["lvl"] = 26,
				})),
				-- #endif
				q(696, {	-- Attack on the Tower
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 695,	-- An Apprentice's Enchantment
					["coord"] = { 46.65, 47.0, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Trelane's Phylactery
							["providers"] = {
								{ "i", 4530 },	-- Trelane's Phylactery
								{ "o", 2717 },	-- Trelane's Footlocker
							},
							["coord"] = { 18.2, 68.2, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Trelane's Orb
							["providers"] = {
								{ "i", 4531 },	-- Trelane's Orb
								{ "o", 2716 },	-- Trelane's Chest
							},
							["coord"] = { 18.1, 69.1, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Trelane's Ember Agate
							["providers"] = {
								{ "i", 4532 },	-- Trelane's Ember Agate
								{ "o", 2718 },	-- Trelane's Lockbox
							},
							["coord"] = { 18.0, 67.9, ARATHI_HIGHLANDS },
						}),
					},
				}),
				q(26038, {	-- Attack on the Tower
					["qg"] = 41983,	-- Apprentice Kryten
					["sourceQuest"] = 26037,	-- Trelane's Defenses
					["coord"] = { 13.0, 69.2, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Trelane's Phylactery
							["providers"] = {
								{ "i", 4530 },	-- Trelane's Phylactery
								{ "o", 2717 },	-- Trelane's Footlocker
							},
							["coord"] = { 11.3, 70.3, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Trelane's Orb
							["providers"] = {
								{ "i", 4531 },	-- Trelane's Orb
								{ "o", 2716 },	-- Trelane's Chest
							},
							["coord"] = { 11.3, 71.1, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Trelane's Ember Agate
							["providers"] = {
								{ "i", 4532 },	-- Trelane's Ember Agate
								{ "o", 2718 },	-- Trelane's Lockbox
							},
							["coord"] = { 11.1, 70.0, ARATHI_HIGHLANDS },
						}),
						i(59159, {	-- Highland Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59160, {	-- Trelane's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59161, {	-- Belt of Refuge
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59162, {	-- Lightstep Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59163, {	-- Craig's Steel
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131470, {	-- Refuge Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(652, {	-- Breaking the Keystone
					["provider"] = { "o", 2702 },	-- Stone of Inner Binding
					["sourceQuest"] = 651,	-- Stones of Binding
					["coord"] = { 36.2, 57.5, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Rod of Order
							["provider"] = { "i", 4469 },	-- Rod of Order
							["cr"] = 2611,	-- Fozruk
						}),
					},
				}),
				q(26042, {	-- Breaking the Keystone
					["provider"] = { "o", 2702 },	-- Stone of Inner Binding
					["sourceQuest"] = 26041,	-- Stones of Binding
					["coord"] = { 30.0, 59.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Rod of Order
							["provider"] = { "i", 4469 },	-- Rod of Order
							["coord"] = { 43.6, 66.6, ARATHI_HIGHLANDS },
							["cr"] = 2611,	-- Fozruk
						}),
					},
				}),
				q(677, {	-- Call to Arms (1/3)
					["qg"] = 2771,	-- Drum Fel
					-- #if BEFORE WRATH
					["sourceQuest"] = 676,	-- The Hammer May Fall
					-- #endif
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Witherbark Axe Thrower slain
							["provider"] = { "n", 2554 },	-- Witherbark Axe Thrower
						}),
						objective(2, {	-- 0/10 Witherbark Headhunter slain
							["provider"] = { "n", 2556 },	-- Witherbark Headhunter
						}),
						objective(3, {	-- 0/8 Witherbark Witch Doctor slain
							["provider"] = { "n", 2555 },	-- Witherbark Witch Doctor
						}),
					},
				}),
				q(678, {	-- Call to Arms (2/3)
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 677,	-- Call to Arms (1/3)
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Boulderfist Brute slain
							["provider"] = { "n", 2566 },	-- Boulderfist Brute
						}),
						objective(2, {	-- 0/4 Boulderfist Magus slain
							["provider"] = { "n", 2567 },	-- Boulderfist Magus
						}),
					},
				}),
				q(679, {	-- Call to Arms (3/3)
					["qg"] = 2771,	-- Drum Fel
					["sourceQuest"] = 678,	-- Call to Arms (2/3)
					["coord"] = { 74.24, 33.91, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Boulderfist Shaman slain
							["provider"] = { "n", 2570 },	-- Boulderfist Shaman
						}),
						objective(2, {	-- 0/10 Boulderfist Lord slain
							["provider"] = { "n", 2571 },	-- Boulderfist Lord
						}),
						i(9520, {	-- Silent Hunter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(9521, {	-- Skullsplitter
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26027, {	-- Call to Arms
					["qg"] = 41966,	-- Deathstalker Maudria
					["sourceQuest"] = 26053,	-- Clearing the Highlands
					["coord"] = { 13.3, 33.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Boulderfist Shaman slain
							["provider"] = { "n", 2570 },	-- Boulderfist Shaman
						}),
						objective(2, {	-- 0/3 Boulderfist Lord slain
							["provider"] = { "n", 2571 },	-- Boulderfist Lord
						}),
						i(59178, {	-- Ramshackle Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59179, {	-- Extra Credit Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59180, {	-- Lurking Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59181, {	-- Belt of Gutted Rain
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131467, {	-- Gold Star Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131468, {	-- Chain of Ogre Ruin
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26053, {	-- Clearing the Highlands
					["qg"] = 41966,	-- Deathstalker Maudria
					["coord"] = { 13.3, 34.3, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Boulderfist Ogre slain
							["provider"] = { "n", 2562 },	-- Boulderfist Ogre
						}),
						objective(2, {	-- 0/10 Boulderfist Enforcer slain
							["provider"] = { "n", 2564 },	-- Boulderfist Enforcer
						}),
					},
				}),
				q(26429, {	-- Crush the Witherbark
					["qg"] = 2771,	-- Drum Fel
					-- not required as of 2018/2024
					-- ["sourceQuest"] = 26912,	-- The Princess Unleashed (TODO: verify. Didn't see this until after killing Myzrael)
					["coord"] = { 69.0, 34.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Witherbark Axe Thrower slain
							["provider"] = { "n", 2554 },	-- Witherbark Axe Thrower
						}),
						objective(2, {	-- 0/10 Witherbark Headhunter slain
							["provider"] = { "n", 2556 },	-- Witherbark Headhunter
						}),
						objective(3, {	-- 0/8 Witherbark Witch Doctor slain
							["providers"] = {
								{ "n", 2555 },	-- Witherbark Witch Doctor
								{ "n", 51633 },	-- Witherbark Witch Doctor
							},
						}),
					},
				}),
				q(635, {	-- Crystal in the Mountains
					["provider"] = { "i", 4614 },	-- Pendant of Myzrael
					["description"] = "If you miss out on picking up the necklace first, you can still complete this quest even after finishing the rest of the chain.",
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				}),
				q(667, {	-- Death From Below
					["qg"] = 2610,	-- Shakes O'Breen <Blackwater Raiders>
					["sourceQuest"] = 670,	-- Sunken Treasure (5/5)
					["coord"] = { 32.2, 81.6, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						i(4550, {	-- Coldwater Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4549, {	-- Seafire Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26628, {	-- Death From Below
					["qg"] = 2610,	-- Shakes O'Breen
					["sourceQuest"] = 26052,	-- Speak to Shakes
					["coord"] = { 25.9, 83.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						i(59212, {	-- O'Breen's Dress Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59213, {	-- Faldir's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59214, {	-- Armguards of the Good Captain
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59215, {	-- Legguards of the Promising Hero
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131565, {	-- Seafarer's Chain Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131566, {	-- The Good Captain's Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(662, {	-- Deep Sea Salvage
					["qg"] = 2767,	-- First Mate Nilzlix
					["sourceQuest"] = 663,	-- Land Ho!
					["coord"] = { 32.6, 81.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Maiden's Folly Charts
							["providers"] = {
								{ "i", 4487 },	-- Maiden's Folly Charts
								{ "o", 2707 },	-- Maiden's Folly Charts
							},
							["coord"] = { 23.0, 84.5, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Maiden's Folly Log
							["providers"] = {
								{ "i", 4489 },	-- Maiden's Folly Log
								{ "o", 2709 },	-- Maiden's Folly Log
							},
							["coord"] = { 23.5, 85.1, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Spirit of Silverpine Charts
							["providers"] = {
								{ "i", 4488 },	-- Spirit of Silverpine Charts
								{ "o", 2708 },	-- Spirit of Silverpine Charts
							},
							["coord"] = { 20.5, 85.5, ARATHI_HIGHLANDS },
						}),
						objective(4, {	-- 0/1 Spirit of Silverpine Log
							["providers"] = {
								{ "i", 4490 },	-- Spirit of Silverpine Log
								{ "o", 2710 },	-- Spirit of Silverpine Log
							},
							["coord"] = { 20.7, 85.1, ARATHI_HIGHLANDS },
						}),
						i(4511, {	-- Black Water Hammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(664, {	-- Drowned Sorrows
					["qg"] = 2769,	-- Captain Steelgut
					["coord"] = { 33.8, 80.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Daggerspine Raider
							["provider"] = { "n", 2595 },	-- Daggerspine Raider
						}),
						objective(2, {	-- 0/3 Daggerspine Sorceress
							["provider"] = { "n", 2596 },	-- Daggerspine Sorceress
						}),
						i(4509, {	-- Seawolf Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26055, {	-- Drowned Sorrows
					["qg"] = 2769,	-- Captain Steelgut
					["coord"] = { 27.7, 83.2, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Daggerspine Raider
							["provider"] = { "n", 2595 },	-- Daggerspine Raider
						}),
						objective(2, {	-- 0/3 Daggerspine Sorceress
							["provider"] = { "n", 2596 },	-- Daggerspine Sorceress
						}),
						i(59205, {	-- Folly's Spar
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59206, {	-- Steelgut Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59207, {	-- Maiden's Tattered Sail
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131475, {	-- Steelgut's Undermail
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26022, {	-- First Blood
					["qg"] = 41949,	-- Dark Ranger Alina
					["sourceQuests"] = {
						28572,	-- Warchief's Command: Arathi Highlands! (Undercity, Silvermoon City)
						28619,	-- Warchief's Command: Arathi Highlands! (Hillsbrad)
					},
					["coord"] = { 13.3, 35.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodstone Amulet
							["provider"] = { "i", 4495 },	-- Bloodstone Amulet
							["crs"] = {
								2589,	-- Syndicate Mercenary
								2587,	-- Syndicate Pathstalker
								2586,	-- Syndicate Highwayman
							},
						}),
					},
				}),
				q(26117, {	-- For Southshore
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 26116,	-- Kinelory Strikes
					["coord"] = { 54.8, 55.3, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(59168, {	-- Stromgarde Surcoat
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59169, {	-- Stromgarde Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59170, {	-- Stromgarde Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131487, {	-- Stromgarde Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(671, {	-- Foul Magics (1/2)
					["qg"] = 2706,	-- Tor'gan
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Bloodstone Amulet
							["provider"] = { "i", 4495 },	-- Bloodstone Amulet
							["crs"] = {
								2586,	-- Syndicate Highwayman
								2589,	-- Syndicate Mercenary
								2587,	-- Syndicate Pathstalker
							},
						}),
					},
				}),
				q(673, {	-- Foul Magics (2/2)
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 671,	-- Foul Magics (1/2)
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Befouled Bloodstone Orb
							["provider"] = { "i", 4510 },	-- Befouled Bloodstone Orb
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
							["cr"] = 2783,	-- Marez Cowl
						}),
						i(4543, {	-- White Drakeskin Cap
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4545, {	-- Radiant Silver Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26050, {	-- Goggle Boggle
					["qg"] = 2768,	-- Professor Phizzlethorpe
					["coord"] = { 27.5, 83.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(701, {	-- Guile of the Raptor (1/3)
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 675,	-- Raising Spirits (3/3)
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/12 Raptor Heart
							["provider"] = { "i", 4513 },	-- Raptor Heart
							["cr"] = 2561,	-- Highland Fleshstalker
						}),
					},
				}),
				q(702, {	-- Guile of the Raptor (2/3)
					["providers"] = {
						{ "n", 2706 },	-- Tor'gan
						{ "i", 4528 },	-- Tor'gan's Orb
					},
					["sourceQuest"] = 701,	-- Guile of the Raptor (1/3)
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(847, {	-- Guile of the Raptor (3/3)
					["qg"] = 2792,	-- Gor'mul
					["sourceQuest"] = 702,	-- Guile of the Raptor (2/3)
					["coord"] = { 72.6, 34, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						i(4546, {	-- Call of the Raptor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26108, {	-- Guile of the Raptor
					["qg"] = 42130,	-- Gor'mul
					["sourceQuest"] = 26107,	-- Raising Spirits
					["coord"] = { 67.7, 34.7, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Raptor Heart
							["provider"] = { "i", 4513 },	-- Raptor Heart
							["cr"] = 2561,	-- Highland Fleshstalker
						}),
						i(59203, {	-- Hammerfall Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59204, {	-- Hammerfall Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131485, {	-- Hammerfaul Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156947, {	-- Hammerfall Cudgel
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(156960, {	-- Hammerfall Gavel
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(655, {	-- Hammerfall
					["qg"] = 2792,	-- Gor'mul
					["coord"] = { 72.6, 34, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(26084, {	-- Hammerfall
					["qg"] = 41949,	-- Dark Ranger Alina
					["sourceQuest"] = 26081,	-- Alina's Reward
					["coord"] = { 13.3, 35.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26083, {	-- Hello Lolo
					["qg"] = 42088,	-- Goutgut
					["sourceQuest"] = 26081,	-- Alina's Reward
					["coord"] = { 12.8, 34.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				heroscall(q(28573, {	-- Hero's Call: Arathi Highlands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { IRONFORGE },	-- Only found in Ironforge in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28 (TODO: Test max level between 28 and 35)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				q(659, {	-- Hints of a New Plague? (1/5)
					["qg"] = 2711,	-- Phin Odelic
					["coord"] = { 50.3, 59.0, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(658, {	-- Hints of a New Plague? (2/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 659,	-- Hints of a New Plague? (1/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Folder
							["provider"] = { "i", 4482 },	-- Sealed Folder
							["coord"] = { 52.6, 61.6, ARATHI_HIGHLANDS },
							["cr"] = 2714,	-- Forsaken Courier
						}),
					},
				}),
				q(657, {	-- Hints of a New Plague? (3/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 658,	-- Hints of a New Plague? (2/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(660, {	-- Hints of a New Plague? (4/5)
					["qg"] = 2713,	-- Kinelory
					["sourceQuest"] = 657,	-- Hints of a New Plague? (3/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
				}),
				q(661, {	-- Hints of a New Plague? (5/5)
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 660,	-- Hints of a New Plague? (4/5)
					["coord"] = { 60.2, 53.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(15455, {	-- Dustfall Robes
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15456, {	-- Lightstep Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(6623, {	-- Horde Trauma
					["qgs"] = {
						-- #if AFTER CATA
						45540,	-- Krenk Choplimb
						-- #else
						3373,	-- Arnok
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 36.9, 87.5, ORGRIMMAR },
						-- #else
						{ 34.0, 84.6, ORGRIMMAR },
						-- #endif
					},
					["description"] =
						-- #if AFTER BFA
						"Needs a minimum of 225 skill in Tailoring.\n\nThis quest inadvertently becomes unavailable due to phasing which occurs once an Account has unlocked the allied race: Highmountain Tauren. If you manage to complete this quest while in that situation, please let us know on Discord!",
						-- #else
						"Needs a minimum of 225 skill in First Aid.",
						-- #endif
					["requireSkill"] =
						-- #if AFTER BFA
						TAILORING,
						-- #else
						FIRST_AID,
						-- #endif
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 10),
					-- Horde Trauma (6623) is unavailable permanently, a GM confirmed this to me. Because of the phasing issue, they removed the quest from the NPC entirely.
					["timeline"] = { REMOVED_7_3_5 },
					-- #if AFTER 7.3.5
					-- ["DisablePartySync"] = true,
					-- ["lockCriteria"] = { 1, "achID", 12452 },	-- Allied Races: Highmountain Tauren [Appears to cause a phasing issue with the quest giver]
					-- #endif
				}),
				q(26110, {	-- Just Like Old Times
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 26113,	-- Quae and Kinelory
					["coord"] = { 54.8, 55.3, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sealed Folder
							["provider"] = { "i", 4482 },	-- Sealed Folder
							["coord"] = { 53.6, 64.2, ARATHI_HIGHLANDS },
							["cr"] = 2714,	-- Forsaken Courier
						}),
					},
				}),
				q(26116, {	-- Kinelory Strikes
					["qg"] = 2713,	-- Kinelory
					["sourceQuest"] = 26114,	-- Quae Trusts You
					["coord"] = { 54.8, 55.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(663, {	-- Land Ho!
					["qg"] = 2766,	-- Lolo the Lookout
					["coord"] = { 31.6, 82.6, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(647, {	-- MacKreel's Moonshine
					["providers"] = {
						{ "n", 2696 },	-- Foggy MacKreel
						{ "i", 4441 },	-- MacKreel's Moonshine
					},
					["coord"] = { 43.2, 92.6, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(690, {	-- Malin's Request (1/2)
					["qg"] = 2708,	-- Archmage Malin
					["coord"] = { 39.8, 81.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 30,
				}),
				q(697, {	-- Malin's Request (2/2)
					["providers"] = {
						{ "n", 2789 },	-- Skuerto
						{ "i", 4533 },	-- Sealed Letter to Archmage Malin
					},
					["sourceQuest"] = 696,	-- Attack on the Tower
					["coord"] = { 46.6, 47, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						i(4975, {	-- Vigilant Buckler
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15104, {	-- Wingborne Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				{	-- Myzrael's Allies [A & H]
					["provider"] = { "o", 2688 },	-- Keystone
					["allianceQuestData"] = q(653),	-- Myzrael's Allies [A]
					["hordeQuestData"] = q(688),	-- Myzrael's Allies [H]
					["sourceQuest"] = 652,	-- Breaking the Keystone
					["coord"] = { 36.1, 57.9, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
				},
				{	-- Myzrael's Tale [A & H]
					["provider"] = { "o", 2702 },	-- Stone of Inner Binding
					["allianceQuestData"] = q(26346),	-- Myzrael's Tale [A]
					["hordeQuestData"] = q(26911),	-- Myzrael's Tale [H]
					["sourceQuest"] = 26042,	-- Breaking the Keystone
					["coord"] = { 30.0, 58.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				},
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79242, {	-- No Honor Among Thieves
					["qg"] = 215643,	-- Tokal
					["sourceQuest"] = 79236,	-- Cherry for Your Thoughts?
					["coord"] = { 27.0, 77.2, STRANGLETHORN_VALE },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Found Illari Duskfeather
							["provider"] = { "n", 215655 },	-- Illari Duskfeather
							["coord"] = { 93.8, 71.6, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Illari's Key
							["providers"] = {
								{ "i", 212347 },	-- Illari's Key
								{ "o", 423569 },	-- Dropped Pouch
							},
							["coord"] = { 93.8, 71.6, ARATHI_HIGHLANDS },
						}),
						i(212553, {	-- Jewel-Encrusted Box
							["providers"] = {
								{ "o", 418855 },	-- Illari's Loot Cache
								{ "i", 212347 },	-- Illari's Key
							},
							["coord"] = { 94.1, 69.3, ARATHI_HIGHLANDS },
							["groups"] = {
								i(212552, {	-- Psychosophic Epiphany
									["classes"] = { PRIEST },
									["groups"] = {
										recipe(431663),	-- Engrave Belt - Mind Spike
									},
								}),
								i(212560, {	-- Rune of Ancestral Awakening
									["classes"] = { SHAMAN },
									["groups"] = {
										recipe(425883),	-- Engrave Boots - Ancestral Awakening
									},
								}),
								i(212561, {	-- Rune of Burning Darkness
									["classes"] = { WARLOCK },
									["groups"] = {
										recipe(426452),	-- Engrave Belt - Shadow and Flame
									},
								}),
								i(212548, {	-- Rune of Eclipse
									["classes"] = { DRUID },
									["groups"] = {
										recipe(410029),	-- Engrave Belt - Eclipse
									},
								}),
								i(212562, {	-- Rune of Healing Rage
									["classes"] = { WARRIOR },
									["groups"] = {
										recipe(403467),	-- Engrave Boots - Enraged Regeneration
									},
								}),
								i(212559, {	-- Rune of the Poisoned Blade
									["classes"] = { ROGUE },
									["groups"] = {
										recipe(425102),	-- Engrave Belt - Poisoned Knife
									},
								}),
								i(212549, {	-- Rune of the Trapper
									["classes"] = { HUNTER },
									["groups"] = {
										recipe(410118),	-- Engrave Boots - Trap Launcher
									},
								}),
								i(212551, {	-- Rune of Warfare
									["classes"] = { PALADIN },
									["groups"] = {
										recipe(416031),	-- Engrave Boots - The Art of War
									},
								}),
								i(208853, {	-- Spell Notes: Brain Freeze
									["classes"] = { MAGE },
									["groups"] = {
										recipe(401752),	-- Engrave Boots - Brain Freeze
									},
								}),
							},
						}),
					},
				})),
				-- #endif
				q(681, {	-- Northfold Manor
					["qg"] = 2700,	-- Captain Nials
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Syndicate Highwayman slain
							["provider"] = { "n", 2586 },	-- Syndicate Highwayman
						}),
						objective(2, {	-- 0/6 Syndicate Mercenary slain
							["provider"] = { "n", 2589 },	-- Syndicate Mercenary
						}),
					},
				}),
				q(26093, {	-- Northfold Manor
					["qg"] = 2700,	-- Captain Nials
					["sourceQuests"] = {
						28573,	-- Hero's Call: Arathi Highlands!
						26139,	-- Into Arathi
					},
					["coord"] = { 39.9, 48.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Syndicate Mercenary slain
							["providers"] = {
								{ "n", 2586 },	-- Syndicate Highwayman
								{ "n", 2589 },	-- Syndicate Mercenary
								{ "n", 2587 },	-- Syndicate Pathstalker
								-- #if AFTER 8.0.1
								{ "n", 142703 },	-- Syndicate Highwayman
								-- #endif
							},
						}),
					},
				}),
				q(26113, {	-- Quae and Kinelory
					["qg"] = 2608,	-- Commander Amaren
					["coord"] = { 39.6, 47.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26114, {	-- Quae Trusts You
					["qg"] = 2712,	-- Quae
					["sourceQuest"] = 26110,	-- Just Like Old Times
					["coord"] = { 54.8, 55.3, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(672, {	-- Raising Spirits (1/3)
					["qg"] = 2706,	-- Tor'gan
					["sourceQuest"] = 655,	-- Hammerfall
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
					["groups"] = {
						objective(1, {	-- 0/10 Highland Raptor Eye
							["provider"] = { "i", 4512 },	-- Highland Raptor Eye
							["crs"] = {
								2559,	-- Highland Strider
								2560,	-- Highland Thrasher
							},
						}),
					},
				}),
				q(674, {	-- Raising Spirits (2/3)
					["providers"] = {
						{ "n", 2706 },	-- Tor'gan
						{ "i", 4526 },	-- Raptor Talon Amulet
					},
					["sourceQuest"] = 672,	-- Raising Spirits (1/3)
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(675, {	-- Raising Spirits (3/3)
					["qg"] = 2792,	-- Gor'mul
					["sourceQuest"] = 674,	-- Raising Spirits (2/3)
					["coord"] = { 72.6, 34, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 29,
				}),
				q(26107, {	-- Raising Spirits
					["qg"] = 42130,	-- Gor'mul
					["coord"] = { 67.7, 34.7, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Highland Raptor Eye
							["provider"] = { "i", 4512 },	-- Highland Raptor Eye
							["crs"] = {
								2559,	-- Highland Strider
								2560,	-- Highland Thrasher
							},
						}),
					},
				}),
				q(26430, {	-- Revantusk Village
					["qg"] = 2771,	-- Drum Fel
					["coord"] = { 69.0, 34.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26336, {	-- Shakes O'Breen
					["qg"] = 2789,	-- Skuerto
					["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(643, {	-- Sigil of Arathor
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 641,	-- Sigil of Thoradin
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Sigil of Arathor
							["provider"] = { "i", 4458 },	-- Sigil of Arathor
							["cr"] = 2612,	-- Lieutenant Valorcall
						}),
					},
				}),
				q(26032, {	-- Sigil of Arathor
					["qg"] = 41944,	-- Galen Trollbane
					["sourceQuest"] = 26031,	-- Sigil of Thoradin
					["coord"] = { 12.9, 36.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sigil of Arathor
							["provider"] = { "i", 4458 },	-- Sigil of Arathor
							["coord"] = { 36.4, 56.6, ARATHI_HIGHLANDS },
							["cr"] = 2612,	-- Lieutenant Valorcall
						}),
					},
				}),
				q(639, {	-- Sigil of Strom
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 638,	-- Trollbane
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Sigil of Strom
							["provider"] = { "i", 4440 },	-- Sigil of Strom
							["coord"] = { 27.6, 63.4, ARATHI_HIGHLANDS },
							["crs"] = {
								2590,	-- Syndicate Conjuror
								2591,	-- Syndicate Magus
								2588,	-- Syndicate Prowler
							},
						}),
					},
				}),
				q(26030, {	-- Sigil of Strom
					["qg"] = 41944,	-- Galen Trollbane
					["sourceQuest"] = 26023,	-- The Forsaken Trollbane
					["coord"] = { 12.9, 36.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sigil of Strom
							["provider"] = { "i", 4440 },	-- Sigil of Strom
							["coord"] = { 20.8, 66.4, ARATHI_HIGHLANDS },
							["crs"] = {
								2590,	-- Syndicate Conjuror
								2591,	-- Syndicate Magus
								2588,	-- Syndicate Prowler
							},
						}),
					},
				}),
				q(641, {	-- Sigil of Thoradin
					["providers"] = {
						{ "n", 2706 },	-- Tor'gan
						{ "i", 4453 },	-- Sigil of Thoradin
					},
					["sourceQuest"] = 640,	-- The Broken Sigil
					["coord"] = { 74.6, 36.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(26031, {	-- Sigil of Thoradin
					["qg"] = 41944,	-- Galen Trollbane
					["sourceQuest"] = 26030,	-- Sigil of Strom
					["coord"] = { 12.9, 36.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Sigil Fragment
							["provider"] = { "i", 4450 },	-- Sigil Fragment
							["coord"] = { 15.2, 65, ARATHI_HIGHLANDS },
							["crs"] = {
								2584,	-- Stromgarde Defender
								2583,	-- Stromgarde Troll Hunter
								2585,	-- Stromgarde Vindicator
							},
						}),
					},
				}),
				q(644, {	-- Sigil of Trollbane
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 643,	-- Sigil of Arathor
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/1 Sigil of Trollbane
							["provider"] = { "i", 4466 },	-- Sigil of Trollbane
							["cr"] = 2607,	-- Prince Galen Trollbane
						}),
					},
				}),
				q(26052, {	-- Speak to Shakes
					["providers"] = {
						{ "n", 2774 },	-- Doctor Draxlegauge
						{ "i", 4493 },	-- Elven Gems
					},
					["sourceQuest"] = 26051,	-- Sunken Treasure
					["coord"] = { 27.5, 82.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
				}),
				q(651, {	-- Stones of Binding
					["provider"] = { "o", 2701 },	-- Iridescent Shards
					["sourceQuest"] = 642,	-- The Princess Trapped
					["coord"] = { 84.3, 30.9, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Burning Key
							["providers"] = {
								{ "i", 4483 },	-- Burning Key
								{ "o", 2689 },	-- Stone of West Binding
							},
							["coord"] = { 25.5, 30.2, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Cresting Key
							["providers"] = {
								{ "i", 4484 },	-- Cresting Key
								{ "o", 2691 },	-- Stone of East Binding
							},
							["coord"] = { 66.7, 29.8, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Thundering Key
							["providers"] = {
								{ "i", 4485 },	-- Thundering Key
								{ "o", 2690 },	-- Stone of Outer Binding
							},
							["coord"] = { 52.1, 50.7, ARATHI_HIGHLANDS },
						}),
					},
				}),
				q(26041, {	-- Stones of Binding
					["provider"] = { "o", 2701 },	-- Iridescent Shards
					["sourceQuest"] = 26039,	-- The Princess Trapped
					["coord"] = { 79.8, 31.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Burning Key
							["providers"] = {
								{ "i", 4483 },	-- Burning Key
								{ "o", 2689 },	-- Stone of West Binding
							},
							["coord"] = { 18.9, 30.9, ARATHI_HIGHLANDS },
						}),
						objective(2, {	-- 0/1 Cresting Key
							["providers"] = {
								{ "i", 4484 },	-- Cresting Key
								{ "o", 2691 },	-- Stone of East Binding
							},
							["coord"] = { 61.4, 30.4, ARATHI_HIGHLANDS },
						}),
						objective(3, {	-- 0/1 Thundering Key
							["providers"] = {
								{ "i", 4485 },	-- Thundering Key
								{ "o", 2690 },	-- Stone of Outer Binding
							},
							["coord"] = { 46.4, 52, ARATHI_HIGHLANDS },
						}),
					},
				}),
				q(682, {	-- Stromgarde Badges
					["qg"] = 2700,	-- Captain Nials
					["sourceQuest"] = 681,	-- Northfold Manor
					["coord"] = { 45.9, 47.5, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/15 Stromgarde Badge
							["provider"] = { "i", 4506 },	-- Stromgarde Badge
							["crs"] = {
								2590,	-- Syndicate Conjuror
								2591,	-- Syndicate Magus
								2588,	-- Syndicate Prowler
							},
						}),
						i(4741, {	-- Stromgarde Cavalry Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26095, {	-- Stromgarde Badges
					["qg"] = 2700,	-- Captain Nials
					["sourceQuest"] = 26093,	-- Northfold Manner
					["coord"] = { 39.9, 48.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/7 Stromgarde Badge
							["provider"] = { "i", 4506 },	-- Stromgarde Badge
							["crs"] = {
								2590,	-- Syndicate Conjuror
								2591,	-- Syndicate Magus
								2588,	-- Syndicate Prowler
							},
						}),
						i(59190, {	-- Slippers of Sorrowful Tidings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59191, {	-- Yellow Ribbon Armbands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59192, {	-- Griefstricken Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59193, {	-- Heartsick Breastplate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131481, {	-- Bindings of Longing
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131482, {	-- Grips of the Weary
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(637, {	-- Sully Balloo's Letter
					["providers"] = {
						{ "i", 4433 },	-- Waterlogged Envelope
						{ "o", 2656 },	-- Waterlogged Letter
						{ "i", 4432 },	-- Sully Balloo's Letter
					},
					["coord"] = { 44.3, 92.9, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(656, {	-- Summoning the Princess
					["qg"] = 2785,	-- Theldurin the Lost
					["sourceQuest"] = 692,	-- The Lost Fragments
					["coord"] = { 51.4, 76.8, BADLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Eldritch Shackles
							["providers"] = {
								{ "i", 4473 },	-- Eldritch Shackles
								{ "i", 4472 },	-- Scroll of Myzrael
							},
							["coord"] = { 62.6, 34.6, ARATHI_HIGHLANDS },
							["cr"] = 2755,	-- Myzrael
						}),
						i(4743, {	-- Pulsating Crystalline Shard
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(665, {	-- Sunken Treasure (1/5)
					["qg"] = 2768,	-- Professor Phizzlethorpe
					["coord"] = { 33.8, 80.6, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(666, {	-- Sunken Treasure (2/5)
					["providers"] = {
						{ "n", 2774 },	-- Doctor Draxlegauge
						{ "i", 4491 },	-- Goggles of Gem Hunting
					},
					["sourceQuest"] = 665,	-- Sunken Treasure (1/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/10 Elven Gem
							["providers"] = {
								{ "i", 4492 },	-- Elven Gem
								{ "o", 2712 },	-- Calcified Elven Gem
							},
							["coord"] = { 23.6, 87.4, ARATHI_HIGHLANDS },
						}),
						i(4547, {	-- Gnomish Zapper
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4548, {	-- Servomechanic Sledgehammer
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(668, {	-- Sunken Treasure (3/5)
					["providers"] = {
						{ "n", 2774 },	-- Doctor Draxlegauge
						{ "i", 4493 },	-- Elven Gems
					},
					["sourceQuest"] = 666,	-- Sunken Treasure (2/5)
					["coord"] = { 33.8, 80.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(669, {	-- Sunken Treasure (4/5)
					["providers"] = {
						{ "n", 2610 },	-- Shakes O'Breen
						{ "i", 4502 },	-- Sample Elven Gem
					},
					["sourceQuest"] = 668,	-- Sunken Treasure (3/5)
					["coord"] = { 32.2, 81.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["lvl"] = 35,
				}),
				q(670, {	-- Sunken Treasure (5/5)
					["providers"] = {
						{ "n", 2487 },	-- Fleet Master Seahorn <Blackwater Raiders>
						{ "i", 4494 },	-- Seahorn's Sealed Letter
					},
					["sourceQuest"] = 669,	-- Sunken Treasure (4/5)
					["coord"] = { 27.2, 77.0, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 35,
				}),
				q(26051, {	-- Sunken Treasure
					["providers"] = {
						{ "n", 2774 },	-- Doctor Draxlegauge
						{ "i", 4491 },	-- Goggles of Gem Hunting
					},
					["sourceQuest"] = 26050,	-- Goggle Boggle
					["coord"] = { 27.5, 82.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Elven Gem
							["providers"] = {
								{ "i", 4492 },	-- Elven Gem
								{ "o", 2712 },	-- Calcified Elven Gem
							},
							["coord"] = { 16.1, 91.5, ARATHI_HIGHLANDS },
						}),
						i(59199, {	-- Bottom Waders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59200, {	-- Decalcified Elven Spear
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131474, {	-- Chain Weighted Shoes
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156948, {	-- Waterlogged Elven Spear
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79678, {	-- Taste Testing
					["qg"] = 217300,	-- Skonk <Amateur Chef>
					["sourceQuest"] = 79677,	-- A Quick Grocery Run
					["coord"] = { 57.6, 74.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { WARRIOR },
					["lvl"] = 26,
					["groups"] = {
						i(213103, {	--
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(416004),	-- Engrave Belt - Blood Surge
							},
						}),
						i(213105),	-- Shawarmageddon
					},
				})),
				-- #endif
				q(640, {	-- The Broken Sigil
					["qg"] = 2703,	-- Zengu
					["sourceQuest"] = 639,	-- Sigil of Strom
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						objective(1, {	-- 0/11 Sigil Fragment
							["provider"] = { "i", 4450 },	-- Sigil Fragment
							["crs"] = {
								2584,	-- Stromgarde Defender
								2583,	-- Stromgarde Troll Hunter
								2585,	-- Stromgarde Vindicator
							},
						}),
					},
				}),
				q(26023, {	-- The Forsaken Trollbane
					["qg"] = 41949,	-- Dark Ranger Alina
					["sourceQuest"] = 26022,	-- First Blood
					["coord"] = { 13.3, 35.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(676, {	-- The Hammer May Fall
					["qg"] = 2770,	-- Tallow
					["altQuests"] = { 677 },	-- Call to Arms (1/3)
					["coord"] = { 61.86, 19.58, HILLSBRAD_FOOTHILLS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/8 Boulderfist Ogre slain
							["provider"] = { "n", 2562 },	-- Boulderfist Ogre
						}),
						objective(2, {	-- 0/10 Boulderfist Enforcer slain
							["provider"] = { "n", 2564 },	-- Boulderfist Enforcer
						}),
					},
				}),
				q(642, {	-- The Princess Trapped
					["provider"] = { "o", 138492 },	-- Shards of Myzrael
					["coord"] = { 62.5, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/12 Mote of Myzrael
							["provider"] = { "i", 4435 },	-- Mote of Myzrael
							["coord"] = { 83.6, 33.4, ARATHI_HIGHLANDS },
							["crs"] = {
								2574,	-- Drywhisker Digger
								2572,	-- Drywhisker Kobold
								2573,	-- Drywhisker Surveyor
							},
						}),
					},
				}),
				q(26039, {	-- The Princess Trapped
					["provider"] = { "o", 138492 },	-- Shards of Myzrael
					["sourceQuests"] = { 26341, 26909 },	-- The Stone Shards (A/H versions)
					["coord"] = { 57.2, 34.5, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/12 Mote of Myzrael
							["provider"] = { "i", 4435 },	-- Mote of Myzrael
							["coord"] = { 74.2, 36.6, ARATHI_HIGHLANDS },
							["crs"] = {
								2574,	-- Drywhisker Digger
								2572,	-- Drywhisker Kobold
								2573,	-- Drywhisker Surveyor
							},
						}),
					},
				}),
				{	-- The Princess Unleashed [A & H]
					["allianceQuestData"] = q(26049, {	-- The Princess Unleashed [A]
						["qg"] = 2789,	-- Skuerto
						["sourceQuest"] = 26346,	-- Myzrael's Tale
						["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					}),
					["hordeQuestData"] = q(26912, {	-- The Princess Unleashed [H]
						["qg"] = 2787,	-- Zaruk
						["sourceQuest"] = 26911,	-- Myzrael's Tale
						["coord"] = { 69.6, 36.5, ARATHI_HIGHLANDS },
					}),
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/1 Eldritch Shackles
							["providers"] = {
								{ "i", 4473 },	-- Eldritch Shackles
								{ "i", 4472 },	-- Scroll of Myzrael
							},
							["coord"] = { 57.6, 34.6, ARATHI_HIGHLANDS },
							["cr"] = 2755,	-- Myzrael
						}),
						i(59208, {	-- Wrap of Open Menace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59209, {	-- Eldritch Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59210, {	-- Earthbound Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59211, {	-- Shackling Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131473, {	-- Mantle of the Bound
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				},
				q(680, {	-- The Real Threat
					["qg"] = 2772,	-- Korin Fel
					["sourceQuest"] = 678,	-- Call to Arms (2/3)
					["coord"] = { 74.0, 33.2, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Or'Kalar's Head
							["provider"] = { "i", 4551 },	-- Or'Kalar's Head
							["coord"] = { 20.8, 65.6, ARATHI_HIGHLANDS },
							["cr"] = 2773,	-- Or'Kalar
						}),
						i(4976, {	-- Mistspray Kilt
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4977, {	-- Sword of Hammerfall
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26029, {	-- The Real Threat
					["qg"] = 41966,	-- Deathstalker Maudria
					["sourceQuest"] = 26027,	-- Call to Arms
					["coord"] = { 13.3, 33.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Or'Kalar's Head
							["provider"] = { "i", 4551 },	-- Or'Kalar's Head
							["coord"] = { 14.4, 67.6, ARATHI_HIGHLANDS },
							["cr"] = 2773,	-- Or'Kalar
						}),
						i(59186, {	-- Skullslasher
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59187, {	-- Silent Huntress
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59188, {	-- Belt of Affront
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59189, {	-- Mistspray Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131469, {	-- Seabreeze Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26341, {	-- The Stone Shards
					["qg"] = 2789,	-- Skuerto
					["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26909, {	-- The Stone Shards
					["qg"] = 2787,	-- Zaruk
					["coord"] = { 69.6, 36.5, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26025, {	-- The Traitor Orc
					["qg"] = 41949,	-- Dark Ranger Alina
					["sourceQuest"] = 26022,	-- First Blood
					["coord"] = { 13.3, 35.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Befouled Bloodstone Orb
							["provider"] = { "i", 4510 },	-- Befouled Bloodstone Orb
							["coord"] = { 23.4, 64.4, ARATHI_HIGHLANDS },
							["cr"] = 2783,	-- Marez Cowl
						}),
						i(59171, {	-- Bloodstone-Studded Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59172, {	-- Drakeskin Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59173, {	-- Radiant Silver Armguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131466, {	-- Highland Chain Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(687, {	-- Theldurin the Lost
					["allianceQuestData"] = {
						["qg"] = 2786,	-- Gerrig Bonegrip
						["sourceQuest"] = 653,	-- Myzrael's Allies [A]
						["coord"] = { 50.6, 6.2, IRONFORGE },
					},
					["hordeQuestData"] = {
						["qg"] = 2787,	-- Zaruk
						["sourceQuest"] = 688,	-- Myzrael's Allies [H]
						["coord"] = { 74.4, 35.6, ARATHI_HIGHLANDS },
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { BADLANDS },
					["lvl"] = 30,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79976, {	-- This Must Be The Place
					["providers"] = {
						{ "o", 406918 },	-- Messenger Bag
						{ "o", 424006 },	-- Hastily Rolled-Up Satchel
					},
					["sourceQuest"] = 79975,	-- Eagle's Fist
					["coord"] = { 22.5, 24.2, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_1_15_1 },
					["lvl"] = 14,
					["groups"] = {
						i(211527),	-- Cozy Sleeping Bag
						i(216619),	-- Student Fodder
					},
				})),
				-- #endif
				q(26428, {	-- To Steal From Thieves
					["qg"] = 4486,	-- Genavie Callow
					["coord"] = { 13.7, 33.9, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kenata's Head
							["provider"] = { "i", 5830 },	-- Kenata's Head
							["coord"] = { 50.6, 37.0, ARATHI_HIGHLANDS },
							["cr"] = 4480,	-- Kenata Dabyrie
						}),
						objective(2, {	-- 0/1 Marcel's Head
							["provider"] = { "i", 5832 },	-- Marcel's Head
							["coord"] = { 48.6, 39.6, ARATHI_HIGHLANDS },
							["cr"] = 4481,	-- Marcel Dabyrie
						}),
						objective(3, {	-- 0/1 Fardel's Head
							["provider"] = { "i", 5831 },	-- Fardel's Head
							["coord"] = { 50.8, 39.6, ARATHI_HIGHLANDS },
							["cr"] = 4479,	-- Fardel Dabyrie
						}),
						i(59158, {	-- Craig's Steel
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59164, {	-- Grim Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59165, {	-- Genavie's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59166, {	-- Adulterous Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59167, {	-- Treads of Unforgotten Pain
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131528, {	-- Cheater's Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(694, {	-- Trelane's Defenses
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 693,	-- Wand over Fist
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Azure Agate
							["provider"] = { "i", 4527 },	-- Azure Agate
							["coord"] = { 19.8, 66.4, ARATHI_HIGHLANDS },
							["cr"] = 2570,	-- Boulderfist Shaman
						}),
					},
				}),
				q(26037, {	-- Trelane's Defenses
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 26036,	-- Wand Over Fist
					["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Azure Agate
							["provider"] = { "i", 4527 },	-- Azure Agate
							["coord"] = { 11.8, 68.8, ARATHI_HIGHLANDS },
							["cr"] = 2570,	-- Boulderfist Shaman
						}),
					},
				}),
				q(6622, {	-- Triage (H)
					["qg"] = 12920,	-- Doctor Gregory Victor
					["sourceQuest"] = 6623,	-- Horde Trauma
					["coords"] = {
						-- #if AFTER CATA
						{ 73.4, 36.8, ARATHI_HIGHLANDS },
						-- #else
						{ 68.5, 37.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["description"] =
					-- #if AFTER BFA
					"Needs a minimum of 225 skill in Tailoring.",
					-- #else
					"Needs a minimum of 225 skill in First Aid.",
					-- #endif
					["requireSkill"] =
						-- #if AFTER BFA
						TAILORING,
						-- #else
						FIRST_AID,
						-- #endif
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(35, 35, 15),
					["groups"] = {
						objective(1, {	-- 0/15 Patients Saved!
							["provider"] = { "i", 16991 },	-- Triage Bandage
							["crs"] = {
								12923,	-- Injured Soldier
								12924,	-- Badly Injured Soldier
								12925,	-- Critically Injured Soldier
							},
						}),
						recipe(10846, {	-- First Aid (Artisan)
							["rank"] = 4,
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(49192, {	-- Horde Trauma Certification
							["timeline"] = { ADDED_3_2_0 },
						}),
					},
				}),
				q(645, {	-- Trol'kalar (1/2)
					["providers"] = {
						{ "n", 2703 },	-- Zengu
						{ "i", 4467 },	-- Sigil of Ignaeus
						{ "o", 2703 },	-- Trollbane's Tomb
					},
					["sourceQuest"] = 644,	-- Sigil of Trollbane
					["coord"] = { 73.8, 33.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
				}),
				q(646, {	-- Trol'kalar (2/2)
					["providers"] = {
						{ "o", 2703 },	-- Trollbane's Tomb
						{ "i", 4468 },	-- Sheathed Trol'kalar
					},
					["sourceQuest"] = 645,	-- Trol'kalar (1/2)
					["coord"] = { 28.9, 59.6, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(4508, {	-- Blood-tinged Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4507, {	-- Pit Fighter's Shield
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26033, {	-- Trol'kalar
					["providers"] = {
						{ "n", 41944 },	-- Galen Trollbane
						{ "i", 4466 },	-- Sigil of Trollbane
					},
					["sourceQuest"] = 26032,	-- Sigil of Arathor
					["coord"] = { 12.9, 36.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sheathed Trol'kalar
							["providers"] = {
								{ "i",  56804 },	-- Sheathed Trol'kalar
								{ "o", 203450 },	-- Trollbane's Tomb
							},
							["coord"] = { 22.5, 61.5, ARATHI_HIGHLANDS },
						}),
					},
				}),
				q(638, {	-- Trollbane
					["qg"] = 2497,	-- Nimboya
					["coord"] = { 32.2, 27.8, STRANGLETHORN_VALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 32,
				}),
				q(693, {	-- Wand over Fist
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 691,	-- Worth Its Weight in Gold
					["coord"] = { 46.6, 47.0, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Trelane's Wand of Invocation
							["provider"] = { "i", 4525 },	-- Trelane's Wand of Invocation
							["coord"] = { 54.6, 81.6, ARATHI_HIGHLANDS },
							["cr"] = 2793,	-- Kor'gresh Coldrage
						}),
					},
				}),
				q(26036, {	-- Wand over Fist
					["qg"] = 2789,	-- Skuerto
					["sourceQuest"] = 26035,	-- Worth Its Weight in Gold
					["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Trelane's Wand of Invocation
							["provider"] = { "i", 4525 },	-- Trelane's Wand of Invocation
							["coord"] = { 49.0, 84.0, ARATHI_HIGHLANDS },
							["cr"] = 2793,	-- Kor'gresh Coldrage
						}),
					},
				}),
				q(684, {	-- Wanted! Marez Cowl
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Marez's Head
							["provider"] = { "i", 4515 },	-- Marez's Head
							["coord"] = { 29.0, 64.0, ARATHI_HIGHLANDS },
							["cr"] = 2783,	-- Marez Cowl
						}),
						i(4744, {	-- Arcane Runed Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26024, {	-- Wanted! Marez Cowl
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 40.1, 49.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Marez's Head
							["provider"] = { "i", 4515 },	-- Marez's Head
							["coord"] = { 23.3, 64.8, ARATHI_HIGHLANDS },
							["cr"] = 2783,	-- Marez Cowl
						}),
						i(59182, {	-- Syndicate Dagger
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59183, {	-- Silenced Rifle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59184, {	-- Demon-Trafficker's Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59185, {	-- Vest of Dark Rumors
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131465, {	-- Hauberk of Dire Tidings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(685, {	-- Wanted! Otto and Falconcrest
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 46.0, 47.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/1 Otto's Head
							["provider"] = { "i", 4516 },	-- Otto's Head
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
							["cr"] = 2599,	-- Otto <Bodyguard>
						}),
						objective(2, {	-- 0/1 Falconcrest's Head
							["provider"] = { "i", 4517 },	-- Falconcrest's Head
							["coord"] = { 26.0, 65.6, ARATHI_HIGHLANDS },
							["cr"] = 2597,	-- Lord Falconcrest <Syndicate Leader>
						}),
						i(5247, {	-- Rod of Sorrow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(4745, {	-- War Rider Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26079, {	-- Wanted! Otto and Falconcrest
					["provider"] = { "o", 2713 },	-- Wanted Board
					["coord"] = { 40.1, 49.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Otto's Head
							["provider"] = { "i", 4516 },	-- Otto's Head
							["coord"] = { 19.4, 67.6, ARATHI_HIGHLANDS },
							["cr"] = 2599,	-- Otto <Bodyguard>
						}),
						objective(2, {	-- 0/1 Falconcrest's Head
							["provider"] = { "i", 4517 },	-- Falconcrest's Head
							["coord"] = { 19.4, 66.4, ARATHI_HIGHLANDS },
							["cr"] = 2597,	-- Lord Falconcrest <Syndicate Leader>
						}),
						i(59174, {	-- Dustfall Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59175, {	-- Sandals of Sorrow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59176, {	-- War Rider Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(59177, {	-- Captain Nials' Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131477, {	-- Boots of the Refuge Captain
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(131478, {	-- Battle Rider Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28572, {	-- Warchief's Command: Arathi Highlands! (Undercity, Silvermoon City)
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { SILVERMOON_CITY, UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28 (TODO: Test max level between 26 and 35)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				warchiefscommand(q(28619, {	-- Warchief's Command: Arathi Highlands! (Hillsbrad)
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { HILLSBRAD_FOOTHILLS },
					["races"] = HORDE_ONLY,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- This version apparently doesn't have a max level.
					["lvl"] = 24,
					-- #endif
				})),
				q(691, {	-- Worth Its Weight in Gold
					["qg"] = 2788,	-- Apprentice Kryten
					["sourceQuest"] = 690,	-- Malin's Request (1/2)
					["coord"] = { 46.2, 47.8, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 30,
					["groups"] = {
						objective(1, {	-- 0/10 Witherbark Tusk
							["provider"] = { "i", 4503 },	-- Witherbark Tusk
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
						}),
						objective(2, {	-- 0/4 Witherbark Medicine Pouch
							["provider"] = { "i", 4522 },	-- Witherbark Medicine Pouch
							["cr"] = 2555,	-- Witherbark Witch Doctor
						}),
						objective(3, {	-- 0/1 Shadow Hunter Knife
							["provider"] = { "i", 5040 },	-- Shadow Hunter Knife
							["cr"] = 2557,	-- Witherbark Shadow Hunter
						}),
					},
				}),
				q(26035, {	-- Worth Its Weight in Gold
					["qg"] = 2789,	-- Skuerto
					["coord"] = { 40.3, 49.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Witherbark Tusk
							["provider"] = { "i", 4503 },	-- Witherbark Tusk
							["crs"] = {
								2554,	-- Witherbark Axe Thrower
								2558,	-- Witherbark Berserker
								2556,	-- Witherbark Headhunter
								2557,	-- Witherbark Shadow Hunter
								2553,	-- Witherbark Shadowcaster
								2552,	-- Witherbark Troll
								2555,	-- Witherbark Witch Doctor
								2605,	-- Zalas Witherbark <Warband Leader>
							},
						}),
						objective(2, {	-- 0/4 Witherbark Medicine Pouch
							["provider"] = { "i", 4522 },	-- Witherbark Medicine Pouch
							["cr"] = 2555,	-- Witherbark Witch Doctor
						}),
					},
				}),
			}),
			n(RARES, {
				n(50891, {	-- Boros
					["coord"] = { 48.4, 35.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(50337, {	-- Cackle
					["coord"] = { 21.6, 88.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(2598, {	-- Darbel Montrose <Shadow Council Warlock>
					["coords"] = {
						-- #if AFTER CATA
						{ 19.6, 64.2, ARATHI_HIGHLANDS },
						-- #else
						{ 29.8, 60.2, ARATHI_HIGHLANDS },
						{ 27.0, 65.2, ARATHI_HIGHLANDS },
						{ 27.8, 66.4, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, n(218931, {	-- Dark Rider
					["provider"] = { "i", 216941 },	-- Ariden's Sigil
					["coord"] = { 60, 40, ARATHI_HIGHLANDS },
					["groups"] = {
						i(216947),	-- Whirring Dalaran Relic
					},
				})),
				-- #endif
				n(2601, {	-- Foulbelly
					["coords"] = {
						-- #if AFTER CATA
						{ 15.2, 68.2, ARATHI_HIGHLANDS },
						-- #else
						{ 19.4, 64.0, ARATHI_HIGHLANDS },
						{ 20.0, 66.6, ARATHI_HIGHLANDS },
						{ 21.6, 65.4, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				n(2609, {	-- Geomancer Flintdagger
					["coords"] = {
						-- #if AFTER CATA
						{ 79.6, 29.6, ARATHI_HIGHLANDS },
						-- #else
						{ 84.6, 28.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["groups"] = {
						i(5742, {	-- Gemstone Dagger
							["timeline"] = { CREATED_1_11_1, ADDED_3_0_2, REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5743, {	-- Prismstone Ring
							["timeline"] = { CREATED_1_11_1, ADDED_3_0_2, REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(51067, {	-- Glint
					["coord"] = { 30.6, 61.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(2603, {	-- Kovork
					["coords"] = {
						-- #if AFTER CATA
						{ 24.6, 44.8, ARATHI_HIGHLANDS },
						-- #else
						{ 31.6, 45.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["groups"] = {
						i(5256, {	-- Kovork's Rattle
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(2604, {	-- Molok the Crusher
					["coords"] = {
						-- #if AFTER CATA
						{ 48.0, 76.2, ARATHI_HIGHLANDS },
						-- #else
						{ 54.6, 79.0, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				n(2606, {	-- Nimar the Slayer <Warband Leader>
					["coords"] = {
						-- #if AFTER CATA
						{ 68.6, 66.7, ARATHI_HIGHLANDS },
						-- #else
						{ 66.0, 60.2, ARATHI_HIGHLANDS },
						{ 72.8, 64.8, ARATHI_HIGHLANDS },
						{ 66.4, 64.8, ARATHI_HIGHLANDS },
						{ 63.2, 66.2, ARATHI_HIGHLANDS },
						{ 62.4, 73.4, ARATHI_HIGHLANDS },
						{ 64.8, 74.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["groups"] = {
						i(5257, {	-- Dark Hooded Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(11166, {	-- Formula: Enchant Gloves - Skinning (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2622, {	-- Nimar's Tribal Headdress
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(2779, {	-- Prince Nazjak
					["coords"] = {
						-- #if AFTER CATA
						{ 14.2, 86.1, ARATHI_HIGHLANDS },
						{ 16.8, 91.6, ARATHI_HIGHLANDS },
						{ 14.2, 92.8, ARATHI_HIGHLANDS },
						-- #else
						{ 21.6, 82.8, ARATHI_HIGHLANDS },
						{ 23.6, 83.8, ARATHI_HIGHLANDS },
						{ 19.8, 88.8, ARATHI_HIGHLANDS },
						{ 23.6, 89.4, ARATHI_HIGHLANDS },
						-- #endif
					},
					["groups"] = {
						i(1404, {	-- Tidal Charm
							["timeline"] = { REMOVED_4_0_3 },
							-- #if AFTER 10.1.7
							["isBounty"] = true,
							-- #endif
						}),
					},
				}),
				n(51063, {	-- Phalanax
					["coord"] = { 48.2, 81.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50804, {	-- Ripwing
					["coord"] = { 36.5, 62.1, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(2602, {	-- Ruul Onestone
					["coords"] = {
						-- #if AFTER CATA
						{ 19.6, 30.6, ARATHI_HIGHLANDS },
						-- #else
						{ 18.2, 68.6, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				n(50865, {	-- Saurix
					["coord"] = { 42.2, 35.8, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(2600, {	-- Singer
					["coords"] = {
						-- #if AFTER CATA
						{ 27.4, 27.8, ARATHI_HIGHLANDS },
						-- #else
						{ 31.4, 26.6, ARATHI_HIGHLANDS },
						{ 33.6, 27.8, ARATHI_HIGHLANDS },
						{ 31.8, 31.8, ARATHI_HIGHLANDS },
						{ 34.8, 31.4, ARATHI_HIGHLANDS },
						-- #endif
					},
					["groups"] = {
						i(5180, {	-- Necklace of Harmony
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5181, {	-- Vibrant Silk Cape
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(51040, {	-- Snuffles
					["coord"] = { 26.2, 27.6, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_1_0 },
				}),
				n(50940, {	-- Swee
					["coord"] = { 56.4, 56.4, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_2_0 },
				}),
				n(2605, {	-- Zalas Witherbark <Warband Leader>
					["coords"] = {
						-- #if AFTER CATA
						{ 62.8, 81.0, ARATHI_HIGHLANDS },
						-- #else
						{ 69.2, 79.6, ARATHI_HIGHLANDS },
						-- #endif
					},
				}),
				n(50770, {	-- Zorn
					["coord"] = { 22.0, 14.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_5_2_0 },
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_TWO, i(213447, {	-- Rosary of the Light
					["description"] = "Combine the 3 divine prayer beads and then bring it to Brother Atticus.",
					["timeline"] = { ADDED_1_15_1 },
					["cost"] = {
						{ "i", 213448, 1 },	-- Divine Prayer Bead I
						{ "i", 213449, 1 },	-- Divine Prayer Bead II
						{ "i", 213450, 1 },	-- Divine Prayer Bead III
					},
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(SOD_PHASE_TWO, i(213128, {	-- Rune of Piety
					["providers"] = {
						{ "i", 213447 },	-- Rosary of the Light
						{ "n", 217387 },	-- Brother Atticus
					},
					["coord"] = { 27.0, 57.0, ARATHI_HIGHLANDS },
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						recipe(426175),	-- Engrave Belt - Malleable Protection
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(2816, {	-- Androd Fadran <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.2, 48.1, ARATHI_HIGHLANDS },
						-- #else
						{ 45.1, 46.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13288, {	-- Pattern: Raptor Hide Belt (RECIPE!)
							["races"] = ALLIANCE_ONLY,
							["isLimited"] = true,
							-- #if BEFORE 10.0.5
							["description"] = "Horde Players Beware: even if you buy this item off the Auction House, it is currently unlearnable. Only Alliance players are able to properly learn this pattern. Fire up your bug reports.",
							-- #endif
						}),
					},
				}),
				-- #if AFTER 4.0.3
				n(3180, {	-- Dark Iron Entrepreneur <Speciality Goods>
					["coord"] = { 42.7, 90.3, ARATHI_HIGHLANDS },
					["groups"] = {
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4835, {	-- Elite Shoulders
							["isLimited"] = true,
						}),
						i(11150, {	-- Formula: Enchant Gloves - Mining (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(4833, {	-- Glorious Shoulders
							["isLimited"] = true,
						}),
						i(3429, {	-- Guardsman Belt
							["timeline"] = { ADDED_10_1_7 },
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4832, {	-- Mystic Sarong
							["isLimited"] = true,
						}),
						i(4830, {	-- Saber Leggings
							["isLimited"] = true,
						}),
						i(4831, {	-- Stalking Pants
							["isLimited"] = true,
						}),
					},
				}),
				-- #endif
				-- #if BEFORE 3.1.0.9767
				n(2805, {	-- Deneb Walker <Scrolls & Potions>
					["coord"] = { 27.0, 58.8, ARATHI_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16084, {	-- Expert First Aid - Under Wraps (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
							["rank"] = 3,
						}),
						i(16112, {	-- Manual: Heavy Silk Bandage (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
						}),
						i(16113, {	-- Manual: Mageweave Bandage (RECIPE!)
							["timeline"] = { REMOVED_3_1_0 },
						}),
					},
				}),
				-- #endif
				n(2812, {	-- Drovnar Strongbrew <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.6, 48.2, ARATHI_HIGHLANDS },
						-- #else
						{ 46.4, 47.0, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6056, {	-- Recipe: Frost Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(2810, {	-- Hammon Karwn <Superior Tradesman>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.5, 48.9, ARATHI_HIGHLANDS },
						-- #else
						{ 46.5, 47.4, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21942, {	-- Design: Ruby Crown of Restoration (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(1471, {	-- Jannos Ironwill <Superior Macecrafter>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.8, 48.1, ARATHI_HIGHLANDS },
						-- #else
						{ 46.0, 47.7, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2527,	-- Battle Staff
						2532,	-- Morning Star
						2524,	-- Truncheon
						2525,	-- War Hammer
						2533,	-- War Maul
						2535,	-- War Staff
					}},
					["groups"] = {
						i(10858, {	-- Plans: Solid Iron Maul (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6574, {	-- Jun'ha <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.8, 37.4, ARATHI_HIGHLANDS },
						-- #else
						{ 72.8, 36.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(7089, {	-- Pattern: Azure Silk Cloak
							["isLimited"] = true,
						}),
					},
				}),
				n(2821, {	-- Keena <Trade Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.2, 33.6, ARATHI_HIGHLANDS },
						-- #else
						{ 74.0, 32.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if AFTER TBC
						i(21942, {	-- Design: Ruby Crown of Restoration (RECIPE!)
							["isLimited"] = true,
						}),
						-- #endif
						i(11163, {	-- Formula: Enchant Bracer - Lesser Dodge / CLASSIC: Formula: Enchant Bracer - Lesser Deflection (RECIPE!)
							["timeline"] = { REMOVED_4_1_0 },	-- Learned by trainer
						}),
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
						i(12228),	-- Recipe: Roast Raptor (RECIPE!)
					},
				}),
				n(9555, {	-- Mu'uta <Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 67.6, 34.2, ARATHI_HIGHLANDS },
						-- #else
						{ 72.6, 33.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(2814, {	-- Narj Deepslice <Butcher>
					["coords"] = {
						-- #if AFTER CATA
						{ 39.7, 48.9, ARATHI_HIGHLANDS },
						-- #else
						{ 45.6, 47.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4609),	-- Recipe: Barbecued Buzzard Wing (RECIPE!)
					},
				}),
				n(2819, {	-- Tunkk <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 70.0, 35.4, ARATHI_HIGHLANDS },
						-- #else
						{ 74.8, 34.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13287, {	-- Pattern: Raptor Hide Harness (RECIPE!)
							["races"] = HORDE_ONLY,
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(4479, {	-- Burning Charm
					["crs"] = {
						2760,	-- Burning Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(5624, {	-- Circlet of the Order
					["description"] =
						-- #if AFTER 10.1.7
						"This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
						-- #else
						"This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
						-- #endif
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["cr"] = 2584,	-- Stromgarde Defender
					["coords"] = {
						{ 26.0, 58.0, ARATHI_HIGHLANDS },
						{ 22.0, 62.2, ARATHI_HIGHLANDS },
					},
				}),
				i(4481, {	-- Cresting Charm
					["crs"] = {
						2761,	-- Cresting Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
				i(11166, {	-- Formula: Enchant Gloves - Skinning (RECIPE!)
					["crs"] = {
						-- #if BEFORE 4.0.3
						2606,	-- Nimar the Slayer <Warband Leader>
						-- #endif
						2558,	-- Witherbark Berserker
						2556,	-- Witherbark Headhunter
						2557,	-- Witherbark Shadow Hunter
					},
				}),
				i(3341, {	-- Gauntlets of Ogre Strength
					["crs"] = {
						2564,	-- Boulderfist Enforcer
						-- #if BEFORE 4.0.3
						2562,	-- Boulderfist Ogre
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					["coords"] = {
						{ 27.4, 46.8, ARATHI_HIGHLANDS },
						{ 26.2, 46.2, ARATHI_HIGHLANDS },
					},
				}),
				i(2623, {	-- Holy Diadem
					["crs"] = {
						2782,	-- Caretaker Alaric
						2780,	-- Caretaker Nevlin
						2781,	-- Caretaker Weston
					},
					["description"] =
						-- #if AFTER 10.1.7
						"This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item.",
						-- #else
						"This item is only naturally accessible to Horde players due to the allegiance of the mobs that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
						-- #endif
					["coord"] = { 29.8, 59.4, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
				}),
				i(1993, {	-- Ogremind Ring
					["crs"] = {
						2567,	-- Boulderfist Magus
						2570,	-- Boulderfist Shaman
					},
				}),
				i(1297, {	-- Robes of the Shadowcaster
					["crs"] = {
						2553,	-- Witherbark Shadowcaster
						-- #if BEFORE CATA
						2577,	-- Dark Iron Shadowcaster
						-- #endif
					},
				}),
				i(5040, {	-- Shadow Hunter Knife
					["cr"] = 2557,	-- Witherbark Shadow Hunter
					["coord"] = { 63.6, 84.2, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_4_0_3 },
					["collectible"] = false,
				}),
				i(3345, {	-- Silk Wizard Hat
					["cr"] = 2591,	-- Syndicate Magus
					["coords"] = {
						{ 19.6, 67.0, ARATHI_HIGHLANDS },
						{ 21.8, 62.4, ARATHI_HIGHLANDS },
						{ 22.8, 63.8, ARATHI_HIGHLANDS },
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, i(213444, {	-- Tarnished Prayer Bead I
					["description"] = "With this in your inventory and while in combat, cast Blessing of Might and then kill an enemy that grants XP.",
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(213448),	-- Divine Prayer Bead I
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(213445, {	-- Tarnished Prayer Bead II
					["description"] = "With this in your inventory and while in combat with less than 10% health, cast Divine Shield.",
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(213449),	-- Divine Prayer Bead II
					},
				})),
				applyclassicphase(SOD_PHASE_TWO, i(213446, {	-- Tarnished Prayer Bead III
					["description"] = "With this in your inventory and while in combat, cast Seal of Justice and then cast Judgement AS THE MOB IS RUNNING AWAY. Judging the enemy before they run will not work.",
					["timeline"] = { ADDED_1_15_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(213450),	-- Divine Prayer Bead III
					},
				})),
				-- #endif
				i(4480, {	-- Thundering Charm
					["crs"] = {
						2762,	-- Thundering Exile
						2574,	-- Drywhisker Digger
						2572,	-- Drywhisker Kobold
						2573,	-- Drywhisker Surveyor
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	m(EASTERN_KINGDOMS, {
		m(ARATHI_HIGHLANDS, {
			q(52781),	-- Triggers when speaking with Zidormi in Arathi Highlands to travel back in time
		}),
	})
})));

