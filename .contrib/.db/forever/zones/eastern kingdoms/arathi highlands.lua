---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

maproot(MAP.EASTERN_KINGDOMS, MAP.ARATHI_HIGHLANDS, {
	["lore"] = "The Arathi Highlands are located in southeastern Lordaeron, east of Hillsbrad Foothills and south of the Hinterlands. It is a flat but craggy region that has traditionally been the home of the humans of Arathor, who gave the region its name. The main hubs of activity are now Refuge Pointe and Hammerfall, which houses bases for Alliance and Horde, respectively. The large city of Stromgarde lies in ruins to the southwest, and pockets of Syndicate resistance dot the land. The Boulderfist Orges also infest Arathor, and prove to be a constant threat to the Alliance, Horde, and Syndicate factions vying for supremacy.",
	["icon"] = 236712,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(761),	-- Explore Arathi Highlands
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
			exploration(314),	-- Go'Shek Farm
			exploration(321),	-- Hammerfall
			exploration(313),	-- Northfold Manor
			exploration(320),	-- Refuge Pointe
			exploration(324),	-- Stromgarde Keep
			exploration(880),	-- Thandol Span
			exploration(317),	-- Witherbark Village
		}),
		n(FLIGHT_PATHS, {
			fp(17, {	-- Hammerfall, Arathi
				["cr"] = 2851,	-- Urda <Wind Rider Master>
				["coord"] = { 73.0, 32.6, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
			}),
			fp(16, {	-- Refuge Pointe, Arathi
				["cr"] = 2835,	-- Cedrik Prose <Gryphon Master>
				["coord"] = { 45.8, 46.2, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
			}),
		}),
		pickpocketing({
			i(17124, {	-- Syndicate Emblem
				["crs"] = {
					2590,	-- Syndicate Conjuror
					2586,	-- Syndicate Highwayman
					2591,	-- Syndicate Magus
					2589,	-- Syndicate Mercenary
					2587,	-- Syndicate Pathstalker
					2588,	-- Syndicate Prowler
				},
			}),
		}),
		n(PROFESSIONS, {
			prof(FIRST_AID, {
				n(12920, {	-- Doctor Gregory Victor <Trauma Surgeon>
					["coord"] = { 73.4, 36.8, MAP.ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = ARTISAN_FIRST_AID,
				}),
			}),
			prof(FISHING, {
				o(180685),	-- Waterlogged Wreckage
			}),
			prof(LEATHERWORKING, {
				n(7869, {	-- Brumn Winterhoof <Master Elemental Leatherworker>
					["coord"] = { 28.2, 45.0, MAP.ARATHI_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = CLASSIC_TBC_ELEMENTAL,
				}),
			}),
			prof(MINING, {
				o(2653, {	-- Lesser Bloodstone Deposit
					["requireSkill"] = MINING,
					["learnedAt"] = 75,
					["groups"] = {
						i(4278),	-- Lesser Bloodstone Ore
					},
				}),
			}),
		}),
		n(QUESTS, {
			q(695, {	-- An Apprentice's Enchantment
				["sourceQuest"] = 694,	-- Trelane's Defenses
				["qg"] = 2788,	-- Apprentice Kryten
				["qi"] = 4529,	-- Enchanted Agate
				["coord"] = { 46.2, 47.8, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(696, {	-- Attack on the Tower
				["sourceQuest"] = 695,	-- An Apprentice's Enchantment
				["qg"] = 2789,	-- Skuerto
				["coord"] = { 46.65, 47.0, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Trelane's Phylactery
						["providers"] = {
							{ "i", 4530 },	-- Trelane's Phylactery
							{ "o", 2717 },	-- Trelane's Footlocker
						},
						["coord"] = { 18.2, 68.2, MAP.ARATHI_HIGHLANDS },
					}),
					objective(2, {	-- 0/1 Trelane's Orb
						["providers"] = {
							{ "i", 4531 },	-- Trelane's Orb
							{ "o", 2716 },	-- Trelane's Chest
						},
						["coord"] = { 18.1, 69.1, MAP.ARATHI_HIGHLANDS },
					}),
					objective(3, {	-- 0/1 Trelane's Ember Agate
						["providers"] = {
							{ "i", 4532 },	-- Trelane's Ember Agate
							{ "o", 2718 },	-- Trelane's Lockbox
						},
						["coord"] = { 18.0, 67.9, MAP.ARATHI_HIGHLANDS },
					}),
				},
			}),
			q(652, {	-- Breaking the Keystone
				["sourceQuest"] = 651,	-- Stones of Binding
				["provider"] = { "o", 2702 },	-- Stone of Inner Binding
				["coord"] = { 36.2, 57.5, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Rod of Order
						["provider"] = { "i", 4469 },	-- Rod of Order
						["cr"] = 2611,	-- Fozruk
					}),
				},
			}),
			q(677, {	-- Call to Arms (1/3)
				["sourceQuest"] = 676,	-- The Hammer May Fall
				["qg"] = 2771,	-- Drum Fel
				["coord"] = { 74.24, 33.91, MAP.ARATHI_HIGHLANDS },
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
				["sourceQuest"] = 677,	-- Call to Arms (1/3)
				["qg"] = 2771,	-- Drum Fel
				["coord"] = { 74.24, 33.91, MAP.ARATHI_HIGHLANDS },
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
				["sourceQuest"] = 678,	-- Call to Arms (2/3)
				["qg"] = 2771,	-- Drum Fel
				["coord"] = { 74.24, 33.91, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/15 Boulderfist Shaman slain
						["provider"] = { "n", 2570 },	-- Boulderfist Shaman
					}),
					objective(2, {	-- 0/10 Boulderfist Lord slain
						["provider"] = { "n", 2571 },	-- Boulderfist Lord
					}),
					i(9520),	-- Silent Hunter
					i(9521),	-- Skullsplitter
				},
			}),
			q(635, {	-- Crystal in the Mountains
				["description"] = "If you miss out on picking up the necklace first, you can still complete this quest even after finishing the rest of the chain.",
				["provider"] = { "i", 4614 },	-- Pendant of Myzrael
				["lvl"] = 30,
			}),
			q(667, {	-- Death From Below
				["sourceQuest"] = 670,	-- Sunken Treasure (5/5)
				["qg"] = 2610,	-- Shakes O'Breen <Blackwater Raiders>
				["coord"] = { 32.2, 81.6, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
				["groups"] = {
					i(4550),	-- Coldwater Ring
					i(4549),	-- Seafire Band
				},
			}),
			q(662, {	-- Deep Sea Salvage
				["sourceQuest"] = 663,	-- Land Ho!
				["qg"] = 2767,	-- First Mate Nilzlix
				["coord"] = { 32.6, 81.4, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Maiden's Folly Charts
						["providers"] = {
							{ "i", 4487 },	-- Maiden's Folly Charts
							{ "o", 2707 },	-- Maiden's Folly Charts
						},
						["coord"] = { 23.0, 84.5, MAP.ARATHI_HIGHLANDS },
					}),
					objective(2, {	-- 0/1 Maiden's Folly Log
						["providers"] = {
							{ "i", 4489 },	-- Maiden's Folly Log
							{ "o", 2709 },	-- Maiden's Folly Log
						},
						["coord"] = { 23.5, 85.1, MAP.ARATHI_HIGHLANDS },
					}),
					objective(3, {	-- 0/1 Spirit of Silverpine Charts
						["providers"] = {
							{ "i", 4488 },	-- Spirit of Silverpine Charts
							{ "o", 2708 },	-- Spirit of Silverpine Charts
						},
						["coord"] = { 20.5, 85.5, MAP.ARATHI_HIGHLANDS },
					}),
					objective(4, {	-- 0/1 Spirit of Silverpine Log
						["providers"] = {
							{ "i", 4490 },	-- Spirit of Silverpine Log
							{ "o", 2710 },	-- Spirit of Silverpine Log
						},
						["coord"] = { 20.7, 85.1, MAP.ARATHI_HIGHLANDS },
					}),
					i(4511),	-- Black Water Hammer
				},
			}),
			q(664, {	-- Drowned Sorrows
				["qg"] = 2769,	-- Captain Steelgut
				["coord"] = { 33.8, 80.8, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/10 Daggerspine Raider
						["provider"] = { "n", 2595 },	-- Daggerspine Raider
					}),
					objective(2, {	-- 0/3 Daggerspine Sorceress
						["provider"] = { "n", 2596 },	-- Daggerspine Sorceress
					}),
					i(4509),	-- Seawolf Gloves
				},
			}),
			q(671, {	-- Foul Magics (1/2)
				["qg"] = 2706,	-- Tor'gan
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
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
				["sourceQuest"] = 671,	-- Foul Magics (1/2)
				["qg"] = 2706,	-- Tor'gan
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/1 Befouled Bloodstone Orb
						["provider"] = { "i", 4510 },	-- Befouled Bloodstone Orb
						["coord"] = { 29.0, 64.0, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2783,	-- Marez Cowl
					}),
					i(4543),	-- White Drakeskin Cap
					i(4545),	-- Radiant Silver Bracers
				},
			}),
			q(701, {	-- Guile of the Raptor (1/3)
				["sourceQuest"] = 675,	-- Raising Spirits (3/3)
				["qg"] = 2706,	-- Tor'gan
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
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
				["sourceQuest"] = 701,	-- Guile of the Raptor (1/3)
				["qg"] = 2706,	-- Tor'gan
				["qi"] = 4528,	-- Tor'gan's Orb
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 29,
			}),
			q(847, {	-- Guile of the Raptor (3/3)
				["sourceQuest"] = 702,	-- Guile of the Raptor (2/3)
				["qg"] = 2792,	-- Gor'mul
				["coord"] = { 72.6, 34.0, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 29,
				["groups"] = {
					i(4546),	-- Call of the Raptor
				},
			}),
			q(655, {	-- Hammerfall
				["qg"] = 2792,	-- Gor'mul
				["coord"] = { 72.6, 34.0, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 29,
			}),
			q(659, {	-- Hints of a New Plague? (1/5)
				["qg"] = 2711,	-- Phin Odelic
				["coord"] = { 50.3, 59.0, MAP.HILLSBRAD_FOOTHILLS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(658, {	-- Hints of a New Plague? (2/5)
				["sourceQuest"] = 659,	-- Hints of a New Plague? (1/5)
				["qg"] = 2712,	-- Quae
				["coord"] = { 60.2, 53.8, MAP.ARATHI_HIGHLANDS },
				["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Sealed Folder
						["provider"] = { "i", 4482 },	-- Sealed Folder
						["coord"] = { 52.6, 61.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2714,	-- Forsaken Courier
					}),
				},
			}),
			q(657, {	-- Hints of a New Plague? (3/5)
				["sourceQuest"] = 658,	-- Hints of a New Plague? (2/5)
				["qg"] = 2712,	-- Quae
				["coord"] = { 60.2, 53.8, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(660, {	-- Hints of a New Plague? (4/5)
				["sourceQuest"] = 657,	-- Hints of a New Plague? (3/5)
				["qg"] = 2713,	-- Kinelory
				["coord"] = { 60.2, 53.8, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(661, {	-- Hints of a New Plague? (5/5)
				["sourceQuest"] = 660,	-- Hints of a New Plague? (4/5)
				["qg"] = 2712,	-- Quae
				["coord"] = { 60.2, 53.8, MAP.ARATHI_HIGHLANDS },
				["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(15455),	-- Dustfall Robes
					i(15456),	-- Lightstep Leggings
				},
			}),
			q(6623, {	-- Horde Trauma
				["qg"] = 3373,	-- Arnok
				["coord"] = { 34.0, 84.6, MAP.ORGRIMMAR },
				["requireSkill"] = FIRST_AID,
				["learnedAt"] = 225,
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 35,
			}),
			q(663, {	-- Land Ho!
				["qg"] = 2766,	-- Lolo the Lookout
				["coord"] = { 31.6, 82.6, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
			}),
			q(647, {	-- MacKreel's Moonshine
				["qg"] = 2696,	-- Foggy MacKreel
				["qi"] = 4441,	-- MacKreel's Moonshine
				["coord"] = { 43.2, 92.6, MAP.ARATHI_HIGHLANDS },
				["maps"] = { MAP.HILLSBRAD_FOOTHILLS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 28,
			}),
			q(690, {	-- Malin's Request (1/2)
				["qg"] = 2708,	-- Archmage Malin
				["coord"] = { 50.6, 87.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 30,
			}),
			q(697, {	-- Malin's Request (2/2)
				["sourceQuest"] = 696,	-- Attack on the Tower
				["qg"] = 2789,	-- Skuerto
				["qi"] = 4533,	-- Sealed Letter to Archmage Malin
				["coord"] = { 46.6, 47.0, MAP.ARATHI_HIGHLANDS },
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					i(4975),	-- Vigilant Buckler
					i(15104),	-- Wingborne Boots
				},
			}),
			q(653, {	-- Myzrael's Allies [A]
				["sourceQuest"] = 652,	-- Breaking the Keystone
				["provider"] = { "o", 2688 },	-- Keystone
				["coord"] = { 36.1, 57.9, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
			}),
			q(688, {	-- Myzrael's Allies [H]
				["sourceQuest"] = 652,	-- Breaking the Keystone
				["provider"] = { "o", 2688 },	-- Keystone
				["coord"] = { 36.1, 57.9, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
			}),
			q(681, {	-- Northfold Manor
				["qg"] = 2700,	-- Captain Nials
				["coord"] = { 45.9, 47.5, MAP.ARATHI_HIGHLANDS },
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
			q(672, {	-- Raising Spirits (1/3)
				["sourceQuest"] = 655,	-- Hammerfall
				["qg"] = 2706,	-- Tor'gan
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
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
				["sourceQuest"] = 672,	-- Raising Spirits (1/3)
				["qg"] = 2706,	-- Tor'gan
				["qi"] = 4526,	-- Raptor Talon Amulet
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 29,
			}),
			q(675, {	-- Raising Spirits (3/3)
				["sourceQuest"] = 674,	-- Raising Spirits (2/3)
				["qg"] = 2792,	-- Gor'mul
				["coord"] = { 72.6, 34.0, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 29,
			}),
			q(643, {	-- Sigil of Arathor
				["sourceQuest"] = 641,	-- Sigil of Thoradin
				["qg"] = 2703,	-- Zengu
				["coord"] = { 73.8, 33.8, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					objective(1, {	-- 0/1 Sigil of Arathor
						["provider"] = { "i", 4458 },	-- Sigil of Arathor
						["cr"] = 2612,	-- Lieutenant Valorcall
					}),
				},
			}),
			q(639, {	-- Sigil of Strom
				["sourceQuest"] = 638,	-- Trollbane
				["qg"] = 2703,	-- Zengu
				["coord"] = { 73.8, 33.8, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					objective(1, {	-- 0/1 Sigil of Strom
						["provider"] = { "i", 4440 },	-- Sigil of Strom
						["coord"] = { 27.6, 63.4, MAP.ARATHI_HIGHLANDS },
						["crs"] = {
							2590,	-- Syndicate Conjuror
							2591,	-- Syndicate Magus
							2588,	-- Syndicate Prowler
						},
					}),
				},
			}),
			q(641, {	-- Sigil of Thoradin
				["sourceQuest"] = 640,	-- The Broken Sigil
				["qg"] = 2706,	-- Tor'gan
				["qi"] = 4453,	-- Sigil of Thoradin
				["coord"] = { 74.6, 36.4, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
			}),
			q(644, {	-- Sigil of Trollbane
				["sourceQuest"] = 643,	-- Sigil of Arathor
				["qg"] = 2703,	-- Zengu
				["coord"] = { 73.8, 33.8, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					objective(1, {	-- 0/1 Sigil of Trollbane
						["provider"] = { "i", 4466 },	-- Sigil of Trollbane
						["cr"] = 2607,	-- Prince Galen Trollbane
					}),
				},
			}),
			q(651, {	-- Stones of Binding
				["sourceQuest"] = 642,	-- The Princess Trapped
				["provider"] = { "o", 2701 },	-- Iridescent Shards
				["coord"] = { 84.3, 30.9, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Burning Key
						["providers"] = {
							{ "i", 4483 },	-- Burning Key
							{ "o", 2689 },	-- Stone of West Binding
						},
						["coord"] = { 25.5, 30.2, MAP.ARATHI_HIGHLANDS },
					}),
					objective(2, {	-- 0/1 Cresting Key
						["providers"] = {
							{ "i", 4484 },	-- Cresting Key
							{ "o", 2691 },	-- Stone of East Binding
						},
						["coord"] = { 66.7, 29.8, MAP.ARATHI_HIGHLANDS },
					}),
					objective(3, {	-- 0/1 Thundering Key
						["providers"] = {
							{ "i", 4485 },	-- Thundering Key
							{ "o", 2690 },	-- Stone of Outer Binding
						},
						["coord"] = { 52.1, 50.7, MAP.ARATHI_HIGHLANDS },
					}),
				},
			}),
			q(682, {	-- Stromgarde Badges
				["sourceQuest"] = 681,	-- Northfold Manor
				["qg"] = 2700,	-- Captain Nials
				["coord"] = { 45.9, 47.5, MAP.ARATHI_HIGHLANDS },
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
					i(4741),	-- Stromgarde Cavalry Leggings
				},
			}),
			q(637, {	-- Sully Balloo's Letter
				["providers"] = {
					{ "i", 4433 },	-- Waterlogged Envelope
					{ "o", 2656 },	-- Waterlogged Letter
					{ "i", 4432 },	-- Sully Balloo's Letter
				},
				["coord"] = { 44.3, 92.9, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 25,
			}),
			q(656, {	-- Summoning the Princess
				["sourceQuest"] = 692,	-- The Lost Fragments
				["qg"] = 2785,	-- Theldurin the Lost
				["coord"] = { 51.4, 76.8, MAP.BADLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Eldritch Shackles
						["providers"] = {
							{ "i", 4473 },	-- Eldritch Shackles
							{ "i", 4472 },	-- Scroll of Myzrael
							{ "o", 138492 },	-- Shards of Myzrael
						},
						["coord"] = { 62.6, 34.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2755,	-- Myzrael
					}),
					i(4743),	-- Pulsating Crystalline Shard
				},
			}),
			q(665, {	-- Sunken Treasure (1/5)
				["qg"] = 2768,	-- Professor Phizzlethorpe
				["coord"] = { 33.8, 80.6, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
			}),
			q(666, {	-- Sunken Treasure (2/5)
				["sourceQuest"] = 665,	-- Sunken Treasure (1/5)
				["qg"] = 2774,	-- Doctor Draxlegauge
				["qi"] = 4491,	-- Goggles of Gem Hunting
				["coord"] = { 33.8, 80.4, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
				["groups"] = {
					objective(1, {	-- 0/10 Elven Gem
						["providers"] = {
							{ "i", 4492 },	-- Elven Gem
							{ "o", 2712 },	-- Calcified Elven Gem
						},
						["coord"] = { 23.6, 87.4, MAP.ARATHI_HIGHLANDS },
					}),
					i(4547),	-- Gnomish Zapper
					i(4548),	-- Servomechanic Sledgehammer
				},
			}),
			q(668, {	-- Sunken Treasure (3/5)
				["sourceQuest"] = 666,	-- Sunken Treasure (2/5)
				["qg"] = 2774,	-- Doctor Draxlegauge
				["qi"] = 4493,	-- Elven Gems
				["coord"] = { 33.8, 80.4, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 35,
			}),
			q(669, {	-- Sunken Treasure (4/5)
				["sourceQuest"] = 668,	-- Sunken Treasure (3/5)
				["qg"] = 2610,	-- Shakes O'Breen
				["qi"] = 4502,	-- Sample Elven Gem
				["coord"] = { 32.2, 81.4, MAP.ARATHI_HIGHLANDS },
				["maps"] = { MAP.STRANGLETHORN_VALE },
				["lvl"] = 35,
			}),
			q(670, {	-- Sunken Treasure (5/5)
				["sourceQuest"] = 669,	-- Sunken Treasure (4/5)
				["qg"] = 2487,	-- Fleet Master Seahorn <Blackwater Raiders>
				["qi"] = 4494,	-- Seahorn's Sealed Letter
				["coord"] = { 27.2, 77.0, MAP.STRANGLETHORN_VALE },
				["lvl"] = 35,
			}),
			q(640, {	-- The Broken Sigil
				["sourceQuest"] = 639,	-- Sigil of Strom
				["qg"] = 2703,	-- Zengu
				["coord"] = { 73.8, 33.8, MAP.ARATHI_HIGHLANDS },
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
			q(676, {	-- The Hammer May Fall
				["altQuests"] = { 677 },	-- Call to Arms (1/3)
				["qg"] = 2770,	-- Tallow
				["coord"] = { 61.86, 19.58, MAP.HILLSBRAD_FOOTHILLS },

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
				["coord"] = { 62.5, 33.8, MAP.ARATHI_HIGHLANDS },
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/12 Mote of Myzrael
						["provider"] = { "i", 4435 },	-- Mote of Myzrael
						["coord"] = { 83.6, 33.4, MAP.ARATHI_HIGHLANDS },
						["crs"] = {
							2574,	-- Drywhisker Digger
							2572,	-- Drywhisker Kobold
							2573,	-- Drywhisker Surveyor
						},
					}),
				},
			}),
			q(680, {	-- The Real Threat
				["sourceQuest"] = 678,	-- Call to Arms (2/3)
				["qg"] = 2772,	-- Korin Fel
				["coord"] = { 74.0, 33.2, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Or'Kalar's Head
						["provider"] = { "i", 4551 },	-- Or'Kalar's Head
						["coord"] = { 20.8, 65.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2773,	-- Or'Kalar
					}),
					i(4976),	-- Mistspray Kilt
					i(4977),	-- Sword of Hammerfall
				},
			}),
			q(687, {	-- Theldurin the Lost
				["allianceQuestData"] = {
					["qg"] = 2786,	-- Gerrig Bonegrip
					["sourceQuest"] = 653,	-- Myzrael's Allies [A]
					["coord"] = { 50.6, 6.2, MAP.IRONFORGE },
				},
				["hordeQuestData"] = {
					["qg"] = 2787,	-- Zaruk
					["sourceQuest"] = 688,	-- Myzrael's Allies [H]
					["coord"] = { 74.4, 35.6, MAP.ARATHI_HIGHLANDS },
				},
				["maps"] = { MAP.BADLANDS },
				["lvl"] = 30,
			}),
			q(79976, {	-- This Must Be The Place
				sourceQuest = 79975,	-- Eagle's Fist
				providers = {
					{ "o", 406918 },	-- Messenger Bag
					{ "o", 424006 },	-- Hastily Rolled-Up Satchel
				},
				coord = { 22.5, 24.2, ARATHI_HIGHLANDS },
				timeline = { TIMELINE.ADDED_1_60_1 },
				lvl = 14,
				groups = {
					i(211527),	-- Cozy Sleeping Bag
					i(216619),	-- Student Fodder
				},
			}),
			q(694, {	-- Trelane's Defenses
				["sourceQuest"] = 693,	-- Wand over Fist
				["qg"] = 2789,	-- Skuerto
				["coord"] = { 46.6, 47.0, MAP.ARATHI_HIGHLANDS },
				["timeline"] = { REMOVED_4_0_3 },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Azure Agate
						["provider"] = { "i", 4527 },	-- Azure Agate
						["coord"] = { 19.8, 66.4, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2570,	-- Boulderfist Shaman
					}),
				},
			}),
			q(6622, {	-- Triage (H)
				["description"] ="Needs a minimum of 225 skill in First Aid.",
				["sourceQuest"] = 6623,	-- Horde Trauma
				["qg"] = 12920,	-- Doctor Gregory Victor
				["coord"] = { 68.5, 37.8, MAP.ARATHI_HIGHLANDS },
				["requireSkill"] = FIRST_AID,
				["races"] = HORDE_ONLY,
				["lvl"] = 35,
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
					}),
				},
			}),
			q(645, {	-- Trol'kalar (1/2)
				["sourceQuest"] = 644,	-- Sigil of Trollbane
				["providers"] = {
					{ "n", 2703 },	-- Zengu
					{ "i", 4467 },	-- Sigil of Ignaeus
					{ "o", 2703 },	-- Trollbane's Tomb
				},
				["coord"] = { 73.8, 33.8, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
			}),
			q(646, {	-- Trol'kalar (2/2)
				["sourceQuest"] = 645,	-- Trol'kalar (1/2)
				["providers"] = {
					{ "o", 2703 },	-- Trollbane's Tomb
					{ "i", 4468 },	-- Sheathed Trol'kalar
				},
				["coord"] = { 28.9, 59.6, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 32,
				["groups"] = {
					i(4508),	-- Blood-tinged Armor
					i(4507),	-- Pit Fighter's Shield
				},
			}),
			q(638, {	-- Trollbane
				["qg"] = 2497,	-- Nimboya
				["coord"] = { 32.2, 27.8, MAP.STRANGLETHORN_VALE },
				["races"] = HORDE_ONLY,
				["isBreadcrumb"] = true,
				["lvl"] = 32,
			}),
			q(693, {	-- Wand over Fist
				["sourceQuest"] = 691,	-- Worth Its Weight in Gold
				["qg"] = 2789,	-- Skuerto
				["coord"] = { 46.6, 47.0, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Trelane's Wand of Invocation
						["provider"] = { "i", 4525 },	-- Trelane's Wand of Invocation
						["coord"] = { 54.6, 81.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2793,	-- Kor'gresh Coldrage
					}),
				},
			}),
			q(684, {	-- Wanted! Marez Cowl
				["provider"] = { "o", 2713 },	-- Wanted Board
				["coord"] = { 46.0, 47.7, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Marez's Head
						["provider"] = { "i", 4515 },	-- Marez's Head
						["coord"] = { 29.0, 64.0, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2783,	-- Marez Cowl
					}),
					i(4744),	-- Arcane Runed Bracers
				},
			}),
			q(685, {	-- Wanted! Otto and Falconcrest
				["provider"] = { "o", 2713 },	-- Wanted Board
				["coord"] = { 46.0, 47.7, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Otto's Head
						["provider"] = { "i", 4516 },	-- Otto's Head
						["coord"] = { 26.0, 65.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2599,	-- Otto <Bodyguard>
					}),
					objective(2, {	-- 0/1 Falconcrest's Head
						["provider"] = { "i", 4517 },	-- Falconcrest's Head
						["coord"] = { 26.0, 65.6, MAP.ARATHI_HIGHLANDS },
						["cr"] = 2597,	-- Lord Falconcrest <Syndicate Leader>
					}),
					i(5247),	-- Rod of Sorrow
					i(4745),	-- War Rider Bracers
				},
			}),
			q(691, {	-- Worth Its Weight in Gold
				["sourceQuest"] = 690,	-- Malin's Request (1/2)
				["qg"] = 2788,	-- Apprentice Kryten
				["coord"] = { 46.2, 47.8, MAP.ARATHI_HIGHLANDS },
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
		}),
		n(RARES, {
			n(2598, {	-- Darbel Montrose <Shadow Council Warlock>
				["coords"] = {
					{ 29.8, 60.2, MAP.ARATHI_HIGHLANDS },
					{ 27.0, 65.2, MAP.ARATHI_HIGHLANDS },
					{ 27.8, 66.4, MAP.ARATHI_HIGHLANDS },
				},
			}),
			n(2601, {	-- Foulbelly
				["coords"] = {
					{ 19.4, 64.0, MAP.ARATHI_HIGHLANDS },
					{ 20.0, 66.6, MAP.ARATHI_HIGHLANDS },
					{ 21.6, 65.4, MAP.ARATHI_HIGHLANDS },
				},
			}),
			n(2609, {	-- Geomancer Flintdagger
				["coord"] = { 84.6, 28.6, MAP.ARATHI_HIGHLANDS },
				["groups"] = {
					i(5742),	-- Gemstone Dagger
					i(5743),	-- Prismstone Ring
				},
			}),
			n(2603, {	-- Kovork
				["coord"] = { 31.6, 45.8, MAP.ARATHI_HIGHLANDS },
				["groups"] = {
					i(5256),	-- Kovork's Rattle
				},
			}),
			n(2604, {	-- Molok the Crusher
				["coord"] = { 54.6, 79.0, MAP.ARATHI_HIGHLANDS },
			}),
			n(2606, {	-- Nimar the Slayer <Warband Leader>
				["coords"] = {
					{ 66.0, 60.2, MAP.ARATHI_HIGHLANDS },
					{ 72.8, 64.8, MAP.ARATHI_HIGHLANDS },
					{ 66.4, 64.8, MAP.ARATHI_HIGHLANDS },
					{ 63.2, 66.2, MAP.ARATHI_HIGHLANDS },
					{ 62.4, 73.4, MAP.ARATHI_HIGHLANDS },
					{ 64.8, 74.6, MAP.ARATHI_HIGHLANDS },
				},
				["groups"] = {
					i(5257),	-- Dark Hooded Cape
					i(11166),	-- Formula: Enchant Gloves - Skinning (RECIPE!)
					i(2622),	-- Nimar's Tribal Headdress
				},
			}),
			n(2779, {	-- Prince Nazjak
				["coords"] = {
					{ 21.6, 82.8, MAP.ARATHI_HIGHLANDS },
					{ 23.6, 83.8, MAP.ARATHI_HIGHLANDS },
					{ 19.8, 88.8, MAP.ARATHI_HIGHLANDS },
					{ 23.6, 89.4, MAP.ARATHI_HIGHLANDS },
				},
				["groups"] = {
					i(1404),	-- Tidal Charm
				},
			}),
			n(2602, {	-- Ruul Onestone
				["coord"] = { 18.2, 68.6, MAP.ARATHI_HIGHLANDS },
			}),
			n(2600, {	-- Singer
				["coords"] = {
					{ 31.4, 26.6, MAP.ARATHI_HIGHLANDS },
					{ 33.6, 27.8, MAP.ARATHI_HIGHLANDS },
					{ 31.8, 31.8, MAP.ARATHI_HIGHLANDS },
					{ 34.8, 31.4, MAP.ARATHI_HIGHLANDS },
				},
				["groups"] = {
					i(5180),	-- Necklace of Harmony
					i(5181),	-- Vibrant Silk Cape
				},
			}),
			n(2605, {	-- Zalas Witherbark <Warband Leader>
				["coord"] = { 69.2, 79.6, MAP.ARATHI_HIGHLANDS },
			}),
		}),
		n(VENDORS, {
			n(2816, {	-- Androd Fadran <Leatherworking Supplies>
				["coord"] = { 45.1, 46.8, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(13288, {	-- Pattern: Raptor Hide Belt (RECIPE!)
						["description"] = "Horde Players Beware: even if you buy this item off the Auction House, it is currently unlearnable. Only Alliance players are able to properly learn this pattern. Fire up your bug reports.",
						["races"] = ALLIANCE_ONLY,
						["isLimited"] = true,
					}),
				},
			}),
			n(2805, {	-- Deneb Walker <Scrolls & Potions>
				["coord"] = { 27.0, 58.8, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(16084, {	-- Expert First Aid - Under Wraps (RECIPE!)
						["rank"] = 3,
					}),
					i(16112),	-- Manual: Heavy Silk Bandage (RECIPE!)
					i(16113),	-- Manual: Mageweave Bandage (RECIPE!)
				},
			}),
			n(2812, {	-- Drovnar Strongbrew <Alchemy Supplies>
				["coord"] = { 46.4, 47.0, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(6056, {	-- Recipe: Frost Protection Potion (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2810, {	-- Hammon Karwn <Superior Tradesman>
				["coord"] = { 46.5, 47.4, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
						["isLimited"] = true,
					}),
					i(12228),	-- Recipe: Roast Raptor (RECIPE!)
				},
			}),
			n(1471, {	-- Jannos Ironwill <Superior Macecrafter>
				["coord"] = { 46.0, 47.7, MAP.ARATHI_HIGHLANDS },
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
				["coord"] = { 72.8, 36.6, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(7089, {	-- Pattern: Azure Silk Cloak (RECIPE!)
						["isLimited"] = true,
					}),
				},
			}),
			n(2821, {	-- Keena <Trade Goods>
				["coord"] = { 74.0, 32.6, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(11163),	-- Formula: Enchant Bracer - Lesser Deflection (RECIPE!)
					i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
						["isLimited"] = true,
					}),
					i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
					i(12228),	-- Recipe: Roast Raptor (RECIPE!)
				},
			}),
			n(9555, {	-- Mu'uta <Bowyer>
				["coord"] = { 72.6, 33.6, MAP.ARATHI_HIGHLANDS },
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
				["coord"] = { 45.6, 47.6, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(4609),	-- Recipe: Barbecued Buzzard Wing (RECIPE!)
				},
			}),
			n(2819, {	-- Tunkk <Leatherworking Supplies>
				["coord"] = { 74.8, 34.6, MAP.ARATHI_HIGHLANDS },
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
				["cr"] = 2584,	-- Stromgarde Defender
				["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the creatures that drop this item.",
				["coords"] = {
					{ 26.0, 58.0, MAP.ARATHI_HIGHLANDS },
					{ 22.0, 62.2, MAP.ARATHI_HIGHLANDS },
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
					2606,	-- Nimar the Slayer <Warband Leader>
					2558,	-- Witherbark Berserker
					2556,	-- Witherbark Headhunter
					2557,	-- Witherbark Shadow Hunter
				},
			}),
			i(3341, {	-- Gauntlets of Ogre Strength
				["cr"] = 2562,	-- Boulderfist Ogre
				["coords"] = {
					{ 27.4, 46.8, MAP.ARATHI_HIGHLANDS },
					{ 26.2, 46.2, MAP.ARATHI_HIGHLANDS },
				},
			}),
			i(2623, {	-- Holy Diadem
				["crs"] = {
					2782,	-- Caretaker Alaric
					2780,	-- Caretaker Nevlin
					2781,	-- Caretaker Weston
				},
				["description"] = "This item is only naturally accessible to Horde players due to the allegiance of the creatures that drop this item.",
				["coord"] = { 22.8, 61.4, MAP.ARATHI_HIGHLANDS },
			}),
			i(1993, {	-- Ogremind Ring
				["crs"] = {
					2567,	-- Boulderfist Magus
					2570,	-- Boulderfist Shaman
				},
			}),
			i(1297, {	-- Robes of the Shadowcaster
				["cr"] = 2577,	-- Dark Iron Shadowcaster
			}),
			i(5040, {	-- Shadow Hunter Knife
				["cr"] = 2557,	-- Witherbark Shadow Hunter
				["coord"] = { 63.6, 84.2, MAP.ARATHI_HIGHLANDS },
				["collectible"] = false,
			}),
			i(3345, {	-- Silk Wizard Hat
				["cr"] = 2591,	-- Syndicate Magus
				["coords"] = {
					{ 19.6, 67.0, MAP.ARATHI_HIGHLANDS },
					{ 21.8, 62.4, MAP.ARATHI_HIGHLANDS },
					{ 22.8, 63.8, MAP.ARATHI_HIGHLANDS },
				},
			}),
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
});
