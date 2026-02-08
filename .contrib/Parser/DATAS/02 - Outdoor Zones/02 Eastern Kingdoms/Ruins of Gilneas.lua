---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(RUINS_OF_GILNEAS, {
		-- #if AFTER 8.3.0
		["icon"] = 462338,
		-- #else
		["icon"] = 462671,
		-- #endif
		["maps"] = { 218 },	-- Ruins of Gilneas City
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			explorationHeader({
				exploration(5442),	-- Emberstone Mine
				exploration(5440),	-- Northern Headlands
				exploration(4706, {	-- Ruins of Gilneas
					-- CRIEVE NOTE: I was initially able to collect this, but if you collect Emberstone Mine, it gets masked behind it.
					["collectible"] = false,
				}),
				exploration(5436),	-- Tempest's Reach
			}),
			n(FLIGHT_PATHS, {
				fp(646, {	-- Forsaken Forward Command, Gilneas
					["cr"] = 45479,	-- Bat Handler Doomair <Flight Master>
					["altQuests"] = { 27438 },	-- The Great Escape
					["sourceQuest"] = 27290,	-- To Forsaken Forward Command
					["description"] = "Becomes available during |cFFFFD700To Forsaken Forward Command|r and is no longer available after |cFFFFD700The Great Escape|r.",
					["coord"] = { 57.2, 17.8, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(27406, {	-- A Man Named Godfrey
					["sourceQuest"] = 27405,	-- Fall Back!
					["qg"] = 45312,	-- Deathstalker Commander Belmont (secondary QG ID 45474)
					["coord"] = { 72.9, 30.1, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Lord Vincent Godfrey's corpse found
							["provider"] = { "n", 44369 },	-- Lord Godfrey
							["coord"] = { 79.6, 75.6, RUINS_OF_GILNEAS },
						}),
					},
				}),
				q(27349, {	-- Break in Communications: Dreadwatch Outpost
					["sourceQuests"] = {
						27342,	-- In Time, All Will Be Revealed
						27333,	-- Losing Ground
						27345,	-- The F.C.D.
					},
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
				}),
				q(27350, {	-- Break in Communications: Rutsak's Guard
					["sourceQuest"] = 27349,	-- Break in Communications: Dreadwatch Outpost
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
				}),
				q(27405, {	-- Fall Back!
					["sourceQuest"] = 27401,	-- What Tomorrow Brings
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62865),	-- Emberstone Breastplate
						i(62864),	-- Bracers of the Final Transmission
						i(62863),	-- Wild Howl Dagger
					},
				}),
				q(27342, {	-- In Time, All Will Be Revealed
					["sourceQuest"] = 27290,	-- To Forsaken Forward Command
					["qg"] = 45312,	-- Deathstalker Commander Belmont
					["coord"] = { 57.4, 18.9, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Wolfsbane
							["providers"] = {
								{ "i",  60958 },	-- Wolfsbane
								{ "o", 205367 },	-- Wolfsbane
							},
							["coord"] = { 63.4, 28.5, RUINS_OF_GILNEAS },
						}),
						i(62862),	-- Belmont's Bracers
						i(62861),	-- Wolfsbane Vest
						i(62860),	-- Watched Watcher's Slippers
						i(131665, {	-- Wolfsbane Harness
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27322, {	-- Korok's Second Head
					["description"] = "If Forward Commander Onslaught is dead, you can turn this quest in to |cFFFFD700Deathguard Podrig|r at |cFFFFD700The Sepulcher|r.",
					["sourceQuest"] = 27290,	-- To Forsaken Forward Command
					["provider"] = { "i", 60956 },	-- Korok's Second Head
					["races"] = HORDE_ONLY,
					["crs"] = { 45301, 46657 },	-- Korok the Colossus
					["groups"] = {
						i(62867),	-- Belt of the Second Head
						i(62866),	-- Cromush's Cloak
						i(62868),	-- Korok's Ring
					},
				}),
				q(27333, {	-- Losing Ground
					["sourceQuest"] = 27290,	-- To Forsaken Forward Command
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Worgen Rebel slain
							["provider"] = { "n", 45292 },	-- Worgen Rebel <Gilneas Liberation Front>
						}),
					},
				}),
				q(27364, {	-- On Whose Orders?
					["sourceQuest"] = 27350,	-- Break in Communications: Rutsak's Guard
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Orders from High Command
							["provider"] = { "i", 60977 },	-- Orders from High Command
							["coord"] = { 58.8, 47.0, RUINS_OF_GILNEAS },
							["cr"] = 45405,	-- Master Sergeant Pietro Zaren <7th Legion>
						}),
					},
				}),
				q(27423, {	-- Resistance is Futile
					["sourceQuest"] = 27405,	-- Fall Back!
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Worgen Combatant slain
							["providers"] = {
								{ "n", 45481 },	-- Bloodfang Scout <Gilneas Liberation Front>
								{ "n", 45536 },	-- Bloodfang Scout <Gilneas Liberation Front>
								{ "n", 45499 },	-- Gilnean Warhound
								{ "n", 45538 },	-- Gilnean Warhound
								{ "n", 45483 },	-- Worgen Battlemage <Gilneas Liberation Front>
								{ "n", 45537 },	-- Worgen Battlemage <Gilneas Liberation Front>
							},
						}),
					},
				}),
				q(27345, {	-- The F.C.D.
					["sourceQuest"] = 27290,	-- To Forsaken Forward Command
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Forsaken Communication Device
							["providers"] = {
								{ "i",  60953 },	-- Forsaken Communication Device
								{ "o", 205363 },	-- Forsaken Communication Device
							},
							["coord"] = { 45.8, 21.9, RUINS_OF_GILNEAS },
						}),
					},
				}),
				q(27438, {	-- The Great Escape (awards "Ruins of Gilneas" criteria for zone achievement)
					["sourceQuests"] = {
						27406,	-- A Man Named Godfrey
						27423,	-- Resistance is Futile
					},
					["qg"] = 45312,	-- Deathstalker Commander Belmont
					["coord"] = { 79.7, 75.7, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62874),	-- Treads of the True Plan
						i(62873),	-- Godfrey's Belt
						i(62872),	-- Cloak of Secret Purpose
						i(131677, {	-- Godfrey's Waistband
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27360, {	-- Vengeance for Our Soldiers
					["sourceQuest"] = 27350,	-- Break in Communication: Rutsak's Guard
					["qg"] = 45389,	-- Captain Rutsak
					["coord"] = { 65.6, 34.1, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 7th Legion Submariner slain
							["provider"] = { "n", 45403 },	-- 7th Legion Submariner
						}),
						i(62871),	-- War Blood Cloak
						i(62870),	-- Rutsak Carriers
						i(62869),	-- Submariner Killer
						i(131667, {	-- War Blood Gloves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(27401, {	-- What Tomorrow Brings
					["sourceQuests"] = {
						27364,	-- On Whose Orders?
						27360,	-- Vengeance for Our Soldiers
					},
					["qg"] = 45315,	-- Forward Commander Onslaught
					["coord"] = { 57.5, 18.2, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
				}),
			}),
			header(HEADERS.Achievement, 19719, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Reclamation of Gilneas
				ach(19719, {	-- Reclamation of Gilneas
					["sourceQuests"] = {
						78190,	-- What We Left Behind (A)
						79137,	-- The Wall between Us (H)
					},
					["groups"] = {
						i(245520, {	-- Gilnean Celebration Keg (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				q(78596, {	-- Summons to Lord Greymane
					["qg"] = 212899,	-- Greyguard Elite
					["coords"] = {
						{ 59.0, 42.3, VALDRAKKEN },
						{ 62.4, 71.9, STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(78597, {	-- Clandestine Movements
					["qg"] = 212916,	-- Deathguard Elite
					["coords"] = {
						{ 56.1, 39.4, VALDRAKKEN },
						{ 52.2, 88.6, ORGRIMMAR },
					},
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(78177, {	-- To Gilneas (A)
					["sourceQuest"] = 78596,	-- Summons to Lord Greymane
					["qg"] = 214538,	-- Genn Greymane
					["coord"] = { 35.7, 28.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(78178, {	-- To Gilneas (H)
					["sourceQuest"] = 78597,	-- Clandestine Movements
					["qg"] = 210965,	-- Calia Menethil <The Pallid Lady>
					["coord"] = { 43.5, 73.2, SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
				}),
				q(78180, {	-- A Crusade of Red
					["sourceQuests"] = {
						78177,	-- To Gilneas (A)
						78178,	-- To Gilneas (H)
					},
					["qg"] = 210905,	-- Princess Tess Greymane
					["coord"] = { 41.5, 36.1, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/10 Members of the Scarlet Crusade slain
							["providers"] = {
								{ "n", 210969 },	-- Scarlet Purifier
								{ "n", 210972 },	-- Scarlet Recruit
								{ "n", 210970 },	-- Scarlet Gravedigger
								{ "n", 210973 },	-- Scarlet Scout
							},
						}),
					},
				}),
				q(78181, {	-- Aderic's Retort
					["sourceQuests"] = {
						78177,	-- To Gilneas (A)
						78178,	-- To Gilneas (H)
					},
					["qg"] = 210904,	-- Genn Greymane
					["coord"] = { 41.5, 36.1, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/1 Consecrator Hennas slain
							["provider"] = { "n", 211231 },	-- Consecrator Hennas
						}),
					},
				}),
				q(78182, {	-- Knee-High
					["sourceQuests"] = {
						78180,	-- A Crusade of Red
						78181,	-- Aderic's Retort
					},
					["qg"] = 212187,	-- Genn Greymane
					["coord"] = { 49.6, 56.9, RUINS_OF_GILNEAS },
				}),
				q(78183, {	-- Scarlet Blood
					["sourceQuest"] = 78182,	-- Knee-High
					["qg"] = 210964,	-- Lillian Voss
					["coord"] = { 57.0, 53.0, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/12 Scarlet forces slain
							["providers"] = {
								{ "n", 211882 },	-- Scarlet Houndsmaster
								{ "n", 211919 },	-- Scarlet Reserve
								{ "n", 214580 },	-- Injured Scarlet Reserve
								{ "n", 211884 },	-- Scarlet Technician
								{ "n", 214577 },	-- Scarlet Acolyte
							},
						}),
					},
				}),
				q(78184, {	-- Smokepowder and Mirrors
					["sourceQuests"] = 78182,	-- Knee-High
					["qg"] = 210905,	-- Princess Tess Greymane
					["coord"] = { 57.0, 53.0, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/8 Scarlet Explosives
							["providers"] = {
								{ "i", 211248 },	-- Scarlet Explosives
								{ "o", 410877 },	-- Scarlet Munitions
							},
							["coord"] = { 55.7, 56.8, RUINS_OF_GILNEAS },
						}),
					},
				}),
				q(78185, {	-- Hounds of War
					["sourceQuests"] = {
						78183,	-- Scarlet Blood
						78184,	-- Smokepowder and Mirrors
					},
					["qg"] = 210905,	-- Princess Tess Greymane
					-- ["coord"] = { 57.0, 53.0, RUINS_OF_GILNEAS },	-- Spawns with you.
				}),
				q(78186, {	-- Crushing the Crusade
					["sourceQuest"] = 78185,	-- Hounds of War
					["qg"] = 210964,	-- Lillian Voss
					["coord"] = { 55.8, 58.3, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/12 Scarlet elite slain
							["providers"] = {
								{ "n", 211935 },	-- Scarlet Champion
								{ "n", 211936 },	-- Scarlet High Priest
								{ "n", 211937 },	-- Scarlet Siegemaster
							},
						}),
					},
				}),
				q(78187, {	-- Artillerist Arsonist
					["sourceQuest"] = 78185,	-- Hounds of War
					["qg"] = 213995,	-- Princess Tess Greymane
					["coord"] = { 55.8, 58.7, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/6 Explosives set
							["provider"] = { "o", 411762 },	-- Bomb Location
						}),
					},
				}),
				q(78188, {	-- Righteous Fire, Righteous Fury
					["sourceQuests"] = {
						78186,	-- Crushing the Crusade
						78187,	-- Artillerist Arsonist
					},
					["qg"] = 210905,	-- Princess Tess Greymane
					["coord"] = { 59.4, 48.7, RUINS_OF_GILNEAS },
					["groups"] = {
						objective(1, {	-- 0/1 Inquisitor Fairbell slain
							["provider"] = { "n", 211930 },	-- Inquisitor Fairbell
						}),
						objective(2, {	-- 0/1 Hallowed Monstrosity slain
							["provider"] = { "n", 211933 },	-- Hallowed Monstrosity
						}),
					},
				}),
				q(78189, {	-- Beginning a New Dawn
					["sourceQuest"] = 78188,	-- Righteous Fire, Righteous Fury
					["qg"] = 210904,	-- Genn Greymane
					["coord"] = { 58.7, 47.8, RUINS_OF_GILNEAS },
					["groups"] = {
						i(211873),	-- Gilnean Prowler (MOUNT!)
						-- Ensemble: Gilnean Noble's Suit
						i(211791),	-- Gilnean Nobles Buckle
						i(211795),	-- Gilnean Nobles Mantle
						i(211790),	-- Gilnean Nobles Shoes
						i(211793),	-- Gilnean Nobles Top Hat
						i(211794),	-- Gilnean Nobles Trousers
						i(211792),	-- Gilnean Nobles Vest
					},
				}),
				q(79137, {	-- The Wall between Us
					["sourceQuest"] = 78189,	-- Beginning a New Dawn
					["qg"] = 210965,	-- Calia Menethil <The Pallid Lady>
					["coord"] = { 58.8, 48.4, RUINS_OF_GILNEAS },
					["races"] = HORDE_ONLY,
				}),
				q(78190, {	-- What We Left Behind
					["sourceQuest"] = 78189,	-- Beginning a New Dawn
					["qg"] = 210905,	-- Princess Tess Greymane
					["coord"] = { 58.8, 47.7, RUINS_OF_GILNEAS },
					["races"] = ALLIANCE_ONLY,
				}),
			})),
			prof(FISHING, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
				i(67108),	-- Lord Godfrey's Old Spectacles
			})),
			n(TREASURES, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
				["description"] = "Upon completing the quest chain, non-Worgen players can relog and the toy will appear in your Toy Box automatically. As a worgan you can loot the bouquet.",
				["sourceQuests"] = {
					79137,	-- The Wall between Us
					78190,	-- What We Left Behind
				},
				["groups"] = {
					o(421360, {	-- Memorial Bouquet
						["coord"] = { 48.8, 53.0, RUINS_OF_GILNEAS },
						["groups"] = {
							i(211788),	-- Tess's Peacebloom (TOY!)
						},
					}),
				},
			})),
			n(VENDORS, {
				n(211065, {	-- Marie Allen <General Goods Vendor>
					["coord"] = { 60.4, 92.3, RUINS_OF_GILNEAS },
					["timeline"] = { ADDED_10_2_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({
						["timeline"] = { ADDED_11_2_7 },
					}, {
						i(245604, {	-- Arched Rose Trellis (DECOR!)
							["cost"] = 1000000,	-- 100g
						}),
						i(245516, {	-- Gilnean Bench (DECOR!)
							["cost"] = 750000,	-- 75g
						}),
						i(245520, {	-- Gilnean Celebration Keg (DECOR!)
							["races"] = WORGEN,
							["cost"] = 1500000,	-- 150g
						}),
						i(245617, {	-- Gilnean Stocks (DECOR!)
							["cost"] = 1000000,	-- 100g
						}),
						i(258301, {	-- Gilnean Washing Line (DECOR!)
							["cost"] = 1250000,	-- 125g
						}),
						i(245515, {	-- Gilnean Wooden Bed (DECOR!)
							["cost"] = 750000,	-- 75g
						}),
					}),
				}),
				n(216888, {	-- Samantha Buckley <General Goods Vendor>
					["coord"] = { 65.4, 47.2, RUINS_OF_GILNEAS },
					["timeline"] = { ADDED_10_2_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({
						["timeline"] = { ADDED_11_2_7 },
					}, {
						i(245604, {	-- Arched Rose Trellis (DECOR!)
							["cost"] = 1000000,	-- 100g
						}),
						i(245516, {	-- Gilnean Bench (DECOR!)
							["cost"] = 750000,	-- 75g
						}),
						i(245520, {	-- Gilnean Celebration Keg (DECOR!)
							["cost"] = 1500000,	-- 150g
						}),
						i(245617, {	-- Gilnean Stocks (DECOR!)
							["cost"] = 1000000,	-- 100g
						}),
						i(258301, {	-- Gilnean Washing Line (DECOR!)
							["cost"] = 1250000,	-- 125g
						}),
						i(245515, {	-- Gilnean Wooden Bed (DECOR!)
							["cost"] = 750000,	-- 75g
						}),
					}),
				}),
			}),
			n(ZONE_DROPS, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
				i(211939),	-- Worn Scarlet Cloak
			})),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {
	m(RUINS_OF_GILNEAS, {
		q(79474),	-- Loot Tess's Peacebloom (211788)
		q(80080),	-- Ensemble: Gilnean Noble's Suit
		q(78903, {	-- Ask Greymane Seneschal by Cathedral or Manor to leave for the day
			["isDaily"] = true,
		}),
	}),
})));
