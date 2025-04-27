---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(TWILIGHT_HIGHLANDS, {
		["lore"] = "Twilight Highlands is a new zone in Cataclysm. It is currently home of the Wildhammer dwarves and the Dragonmaw Orcs, both whom inhabited Grim Batol in the recent past. Twilight Cultists have also inhabited the area, sensing the presence of the Old Gods nearby, which is explored in the questline related to Consumed by Nightmare. There's also a Ring of Blood-style quest series that rewards a good weapon: Round Three. Fight!",
		["timeline"] = { ADDED_4_0_3 },
		["icon"] = 409549,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5451, {	-- Consumed by Nightmare
					["sourceQuest"] = 27380,	-- Nightmare
					["timeline"] = { ADDED_4_0_3 },
				}),
				achWithRep(4886, FACTION_DRAGONMAW_CLAN, {	-- Dragonmaw Clan
					["races"] = HORDE_ONLY,
				}),
				ach(5482, {	-- Dragonmaw Tour of Duty
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(15952, {	-- High Shaman MacKilligan slain
							["provider"] = { "n", 46885 },	-- High Shaman MacKilligan
							["coord"] = { 45.8, 33.6, TWILIGHT_HIGHLANDS },
						}),
						crit(15953, {	-- Dillan MacHurley slain
							["provider"] = { "n", 46378 },	-- Dillan MacHurley
							["coords"] = {
								{ 45.0, 37.6, TWILIGHT_HIGHLANDS },
								{ 46.8, 36.8, TWILIGHT_HIGHLANDS },
							},
						}),
						crit(15954, {	-- Gunwald Greybeard slain
							["provider"] = { "n", 46376 },	-- Gunwald Greybeard
							["coord"] = { 45.2, 42.8, TWILIGHT_HIGHLANDS },
						}),
						crit(15955, {	-- Cliff Thundermar slain
							["provider"] = { "n", 46377 },	-- Cliff Thundermar
							["coord"] = { 52.8, 28.2, TWILIGHT_HIGHLANDS },
						}),
						crit(15950, {	-- The Black Recluse spider slain
							["provider"] = { "n", 47115 },	-- The Black Recluse spider
							["coord"] = { 45.8, 31.6, TWILIGHT_HIGHLANDS },
						}),
						crit(15951, {	-- Korthalon the Black slain
							["provider"] = { "n", 47171 },	-- Korthalon the Black
							["coord"] = { 52.0, 27.6, TWILIGHT_HIGHLANDS },
						}),
					},
				}),
				explorationAch(4866, {	-- Explore Twilight Highlands
					["timeline"] = { ADDED_4_0_3 },
				}),
				ach(4873, {	-- Fading into Twilight (Alliance)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						27468,	-- Siege Tank Rescue
						27545,	-- The Way is Open
						27817,	-- Dropping the Hammer
						27649,	-- A Steady Supply
						27651,	-- Doing It Like a Dunwald
						27642,	-- Sifting Through The Wreckage
						27641,	-- While Meeting The Family
						28244,	-- Eye Spy
						28655,	-- Wild, Wild, Wildhammer Wedding
						28413,	-- Words and Music By...
						28247,	-- Last of Her Kind
						27787,	-- Skullcrusher the Mountain
					},
					-- #endif
				}),
				ach(5501, {	-- Fading into Twilight (Horde)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						26337,	-- Beating the Market
						26840,	-- Return to the Highlands
						28595,	-- Krazz Works!
						28133,	-- Fury Unbound
						27945,	-- Paint it Black
						27955,	-- Eye Spy
						28247,	-- Last of Her Kind
						27788,	-- Skullcrusher the Mountain
					},
					-- #endif
				}),
				ach(4960, {	-- Round Three. Fight!
					["sourceQuest"] = 27868,	-- The Crucible of Carnage: The Twilight Terror!
					["timeline"] = { ADDED_4_0_3 },
				}),
				ach(4958, {	-- The First Rule of Ring of Blood is You Don't Talk About Ring of Blood
					["timeline"] = { ADDED_4_0_3 },
					["collectible"] = false,	-- not all criteria are available in this zone, so the header shouldn't be collectible here.
					["groups"] = {
						crit(13918, {	-- Crucible of Carnage in Twilight Highlands
							["sourceQuest"] = 27868,	-- The Crucible of Carnage: The Twilight Terror!
						}),
					},
				}),
				achWithRep(4885, FACTION_WILDHAMMER_CLAN, {	-- Wildhammer Clan
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5481, {	-- Wildhammer Tour of Duty
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(15948, {	-- Warlord Halthar slain
							["provider"] = { "n", 46493 },	-- Warlord Halthar
							["coord"] = { 49.0, 37.2, TWILIGHT_HIGHLANDS },
						}),
						crit(15949, {	-- Karkrog the Exterminator slain
							["provider"] = { "n", 46756 },	-- Karkrog the Exterminator
							["coords"] = {
								{ 50.8, 33.8, TWILIGHT_HIGHLANDS },
								{ 51.6, 33.0, TWILIGHT_HIGHLANDS },
							},
						}),
						crit(15950, {	-- The Black Recluse spider slain
							["provider"] = { "n", 47115 },	-- The Black Recluse spider
							["coord"] = { 45.8, 31.6, TWILIGHT_HIGHLANDS },
						}),
						crit(15951, {	-- Korthalon the Black slain
							["provider"] = { "n", 47171 },	-- Korthalon the Black
							["coord"] = { 52.0, 27.6, TWILIGHT_HIGHLANDS },
						}),
					},
				}),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					398,	-- Black Rat (PET!)
					393,	-- Cockroach (PET!)
					647,	-- Grizzly Squirrel (PET!)
					648,	-- Huge Toad (PET!)
					414,	-- Scorpid (PET!)
					388,	-- Shore Crab (PET!)
					418,	-- Water Snake (PET!)
				}},
				["groups"] = {
					pet(550, {	-- Highlands Mouse (PET!)
						["description"] = "Most common as secondary pet in Twilight Highlands. The given coordinates only indicates the wider areas where they can be found as primary pets.",
						["coords"] = {
							{ 45.6, 41.3, TWILIGHT_HIGHLANDS },	-- Southwestern Ruins of Thundermar
							{ 50.6, 32.2, TWILIGHT_HIGHLANDS },	-- Northeastern Ruins of Thundermar
							{ 38.5, 30.1, TWILIGHT_HIGHLANDS },	-- Glopgut's Hollow
							{ 19.65, 17.45, TWILIGHT_HIGHLANDS },	-- Northwestern Vermillion Redoubt
							{ 44.6, 26.0, STORMHEIM },	-- Nastrondir
						},
					}),
					pet(823, {	-- Highlands Skunk (PET!)
						["description"] = "Commonly found in the forests of Twilight Highlands.",
						["coords"] = {
							{ 45.6, 41.3, TWILIGHT_HIGHLANDS },	-- Southwestern Ruins of Thundermar
							{ 50.6, 32.2, TWILIGHT_HIGHLANDS },	-- Northeastern Ruins of Thundermar
							{ 46.5, 25.1, TWILIGHT_HIGHLANDS },	-- North of Thundermaw
							{ 65.5, 58.0, TWILIGHT_HIGHLANDS },	-- East of Firebeards Patrol
							{ 71.6, 66.65, TWILIGHT_HIGHLANDS },	-- West of Beach Head
							{ 56.6, 71.0, TWILIGHT_HIGHLANDS },	-- East of Dunwald Ruins
						},
					}),
					pet(645, {	-- Highlands Turkey (PET!)
						["description"] = "Commonly found around Vermillion Redoubt in Twilight Highlands.",
						["coords"] = {
							{ 46.5, 25.1, TWILIGHT_HIGHLANDS },	-- North of Thundermaw
							{ 29.8, 25.13, TWILIGHT_HIGHLANDS },	-- Vermillion Redoubt
							{ 68.25, 40.0, STORMHEIM },	-- Northern Field of Fallen Kings
							{ 60.78, 54.4, STORMHEIM },	-- South of Valdisdall
						},
					}),
					pet(431, {	-- Rattlesnake (PET!)
						["description"] = "Most commonly found thorough the Verall River valley in Twilight Highlands. Can also be found scattered around north of the river valley, as well as around Badlands and Tanaris.",
						["coords"] = {
							{ 48.9, 36.55, TANARIS },	-- South of Gadgetzan
							{ 65.75, 41.0, TWILIGHT_HIGHLANDS },	-- Verall Delta
							{ 57.0, 38.7, TWILIGHT_HIGHLANDS },	-- Lower Verall River
							{ 42.85, 53.3, TWILIGHT_HIGHLANDS },	-- Upper Verall River
						},
					}),
					pet(552, {	-- Twilight Fiendling (PET!)
						["description"] = "Found within the breaches caused by Twilight cultists.",
						["coords"] = {
							{ 59.6, 51.0, TWILIGHT_HIGHLANDS },	-- The Devouring Breach
							{ 40.2, 47.6, TWILIGHT_HIGHLANDS },	-- The Twilight Breach
							{ 58.2, 29.8, TWILIGHT_HIGHLANDS },	-- The Black Breach
						},
					}),
					pet(470, {	-- Twilight Spider (PET!)
						["description"] = "Commonly found in areas defiled by Twilight cultists or their allies in Twilight Highlands and Deepholm.",
						["coords"] = {
							{ 68.5, 16.0, AZSHARA },	-- Sable Ridge
							{ 40.1, 71.0, DEEPHOLM },	-- Master's Gate
							{ 60.3, 44.9, DEEPHOLM },	-- Lorthuna's Gate
							{ 63.0, 33.1, DEEPHOLM },	-- Twilight's Precipice
							{ 59.6, 51.0, TWILIGHT_HIGHLANDS },	-- The Devouring Breach
							{ 40.2, 47.6, TWILIGHT_HIGHLANDS },	-- The Twilight Breach
							{ 58.2, 29.8, TWILIGHT_HIGHLANDS },	-- The Black Breach
							{ 63.9, 77.0, TWILIGHT_HIGHLANDS },	-- Obsidian Forest
							{ 36.6, 74.0, TWILIGHT_HIGHLANDS },	-- The Twilight Citadel
						},
					}),
					pet(2677, {	-- Twilight Whelpling (PET!)
						["description"] = "Found outside Grim Batol, phasing might require questing through Twilight Highlands. Only spawns as Uncommon pets, if you want a Rare quality pet you have to upgrade with a battlestone.",
						["coord"] = { 19.5, 58.6, TWILIGHT_HIGHLANDS },	-- Outside Grim Batol
						["timeline"] = { ADDED_8_2_0 },
					}),
					pet(548, {	-- Wildhammer Gryphon Hatchling (PET!)
						["description"] = "Found in the Alliance villages Kirthaven and Thundermar. Horde players CANNOT interact with the hatchlings to intitiate pet battle due to faction alignment, any attempts will only attack them. If you absolutely want to get this pet with a Horde character, they can appear as secondary pets near the villages.",
						["coords"] = {
							{ 56.4, 15.8, TWILIGHT_HIGHLANDS },	-- Kirthaven
							{ 48.4, 28.6, TWILIGHT_HIGHLANDS },	-- Thundermar
						},
					}),
					pet(549, {	-- Yellow-Bellied Marmot (PET!)
						["description"] = "Very common pet in the forests of Twilight Highlands.",
						["coords"] = {
							{ 45.6, 41.3, TWILIGHT_HIGHLANDS },	-- Southwestern Ruins of Thundermar
							{ 50.6, 32.2, TWILIGHT_HIGHLANDS },	-- Northeastern Ruins of Thundermar
							{ 46.5, 25.1, TWILIGHT_HIGHLANDS },	-- North of Thundermaw
							{ 65.5, 58.0, TWILIGHT_HIGHLANDS },	-- East of Firebeards Patrol
							{ 71.6, 66.65, TWILIGHT_HIGHLANDS },	-- West of Beach Head
							{ 56.6, 71.0, TWILIGHT_HIGHLANDS },	-- East of Dunwald Ruins
						},
					}),
				},
			}),
			explorationHeader({
				exploration(5138),	-- Bloodgulch
				exploration(5527),	-- Crucible of Carnage
				exploration(5471),	-- Crushblow
				exploration(5461),	-- Dragonmaw Pass
				exploration(5136),	-- Dragonmaw Port
				exploration(5483),	-- Dunwald Ruins
				exploration(5141),	-- Firebeard's Patrol
				exploration(5639),	-- Glopgut's Hollow
				exploration(5488),	-- Gorshak War Camp
				exploration(1037),	-- Grim Batol
				exploration(5140),	-- Highbank
				exploration(5594),	-- Highland Forest
				exploration(5640),	-- Humboldt Conflagration
				exploration(5143),	-- Kirthaven
				visit_exploration(5563,{coord={35.2,57.4,TWILIGHT_HIGHLANDS}}),	-- Loch Verrall
				exploration(5595),	-- Obsidian Forest
				exploration(5439),	-- Ruins of Drakgor
				exploration(5479),	-- Slithering Cove
				exploration(5609),	-- The Black Breach
				exploration(5489),	-- The Boneyard
				exploration(5139),	-- The Gullet
				exploration(5137),	-- The Krazworks
				exploration(5438),	-- The Maw of Madness
				exploration(5641),	-- The Twilight Breach
				exploration(5473),	-- The Twilight Citadel
				exploration(5142),	-- Thundermar
				exploration(5425),	-- Twilight Shore
				exploration(5155),	-- Vermillion Redoubt
				exploration(5470),	-- Victor's Point
				exploration(5462),	-- Wyrms' Bend
			}),
			n(FACTIONS, {
				faction(FACTION_DRAGONMAW_CLAN, {	-- Dragonmaw Clan
					["provider"] = { "i", 65909 },	-- Tabard of the Dragonmaw Clan
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_WILDHAMMER_CLAN, {	-- Wildhammer Clan
					["provider"] = { "i", 65908 },	-- Tabard of the Wildhammer Clan
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(659, {	-- Bloodgulch, Twilight Highlands
					["cr"] = 47156,	-- Bramok Gorewing <Wind Rider Master>
					["coord"] = { 54.0, 42.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(656, {	-- Crushblow, Twilight Highlands
					["cr"] = 47116,	-- Tokrog <Wind Rider Master>
					["coord"] = { 45.6, 76.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(661, {	-- Dragonmaw Port, Twilight Highlands
					["cr"] = 47174,	-- Gorthul <Dragonmaw Flight Master>
					["coord"] = { 73.8, 52.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(664, {	-- Firebeard's Patrol, Twilight Highlands
					["cr"] = 47147,	-- Farstad Stonegrip <Gryphon Master>
					["coord"] = { 60.4, 57.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(662, {	-- Highbank, Twilight Highlands
					["cr"] = 47119,	-- Glenn Arbuckle <Gryphon Master>
					["coord"] = { 81.6, 77.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(666, {	-- Kirthaven, Twilight Highlands
					["cr"] = 47155,	-- Shaina Talonheart <Gryphon Master>
					["coord"] = { 56.6, 15.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(657, {	-- The Gullet, Twilight Highlands
					["cr"] = 47133,	-- San'shigo <Wind Rider Master>
					["coord"] = { 36.8, 38.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(660, {	-- The Krazzworks, Twilight Highlands
					["cr"] = 47061,	-- Harpo Boltknuckle <Flight Master>
					["coord"] = { 75.4, 18.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				fp(665, {	-- Thundermar, Twilight Highlands
					["cr"] = 47154,	-- Doran Talonheart <Gryphon Master>
					["coord"] = { 48.4, 28.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(658, {	-- Vermillion Redoubt, Twilight Highlands
					["cr"] = 47121,	-- Aquinastrasz <Vermillion Redoubt Flight Master>
					["coord"] = { 28.4, 24.8, TWILIGHT_HIGHLANDS },
				}),
				fp(663, {	-- Victor's Point, Twilight Highlands
					["cr"] = 47118,	-- Desmond Chadsworth <Gryphon Master>
					["coord"] = { 43.8, 57.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			petbattles({
				n(66822, {	-- Goz Banefury <Master Pet Tamer>
					["coord"] = { 56.6, 56.8, TWILIGHT_HIGHLANDS },
				}),
			}),
			-- #if ANYCLASSIC
 			n(PROFESSIONS, {
				prof(FISHING, {
					o(208311, {	-- Deepsea Sagefish School
						i(22739),	-- Tome of Polymorph: Turtle (CI!)
					}),
					o(202777, {	-- Highland Guppy School
						i(22739),	-- Tome of Polymorph: Turtle (CI!)
					}),
					i(68050, {	-- Shatterscale Mightfish
						["provider"] = { "i", 68049 },	-- Heat-Treated Spinning Lure
						["coord"] = { 41.0, 79.1, TWILIGHT_HIGHLANDS },	-- Cannon's Inferno
						["description"] = "Can be caught by fishing in lava using a special lure.",
					}),
				}),
				prof(MINING, {
					["description"] = "Elementium Veins (0.05% Drop Rate) and Rich Elementium Veins (0.08% Drop Rate) require a mining skill of 475-500.",
					["groups"] = {
						i(67282),	-- Elementium Geode (PET!)
					},
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(28001, {	-- A Coward's Due
					["sourceQuest"] = 27817,	-- Dropping the Hammer
					["coord"] = { 60.1, 57.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
				}),
				q(27745, {	-- A Fiery Reunion
					["sourceQuests"] = {
						27742,	-- A Little on the Side
						27744,	-- Rune Ruination
						27743,	-- While We're Here
					},
					["coord"] = { 34.2, 86.6, TWILIGHT_HIGHLANDS },
					["qg"] = 46513,	-- Initiate Goldmine
					["groups"] = {
						i(63711),	-- Magma-Proof Sandals
						i(63710),	-- Widener's Bracers
						i(63709),	-- Lava-Melted Legplates
					},
				}),
				q(28191, {	-- A Fitting End
					["sourceQuest"] = 28171,	-- And the Sky Streaked Red
					["coord"] = { 59.0, 69.8, TWILIGHT_HIGHLANDS },
					["qg"] = 47902,	-- Lirastrasza
					["groups"] = {
						objective(1, {	-- 0/10 Obsidian Dragonkin slain
							["providers"] = {
								{ "n", 47797},	-- Obsidian Charscale
								{ "n", 47796},	-- Obsidian Viletongue
							},
						}),
					},
				}),
				q(27742, {	-- A Little on the Side
					["sourceQuests"] = { 27720, 28885 },	-- Mr. Goldmine's Wild Ride (A/H)
					["coord"] = { 38.2, 93.9, TWILIGHT_HIGHLANDS },
					["qg"] = 46513,	-- Initiate Goldmine
					["groups"] = {
						objective(1, {	-- 0/6 Elementium Shard
							["providers"] = {
								{ "i", 62331 },	-- Elementium Shard
								{ "o", 206295 },	-- Elementium Shard
								{ "o", 206297 },	-- Elementium Shard
								{ "o", 206298 },	-- Elementium Shard
								{ "o", 206299 },	-- Elementium Shard
							},
						}),
						i(63713),	-- Shard-Keeper Helm
						i(63712),	-- Bracers of Gleaming Shards
						i(63714),	-- Giltstone Necklace
					},
				}),
				q(27649, {	-- A Steady Supply
					["sourceQuest"] = 27647,	-- Anything But Water
					["coord"] = { 52.4, 70.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46583,	-- Eoin Dunwald
					["groups"] = {
						objective(1, {	-- 0/6 Wildhammer Ale
							["providers"] = {
								{ "i", 62327 },	-- Wildhammer Ale
								{ "o", 206199 },	-- Wildhammer Ale Cask
								{ "o", 206292 },	-- Wildhammer Ale Cask
							},
						}),
						i(63837),	-- Bubble-Brew Hood
						i(63836),	-- Barrel-Belly Gauntlets
						i(63835),	-- Dunwald's Finest Bindings
					},
				}),
				q(28241, {	-- A Vision of Twilight (A)
					["sourceQuests"] = {
						27752,	-- Fight Like a Wildhammer
						27753,	-- Never Leave a Dinner Behind
						27754,	-- Dragonmaw Takedown
					},
					["coord"] = { 49.7, 29.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48010,	-- Low Shaman Blundy
				}),
				q(27947, {	-- A Vision of Twilight (H)
					["sourceQuest"] = 28043,	-- How to Maim Your Dragon (TODO: Verify SQ, may appear earlier)
					["qg"] = 46323,	-- Garona Halforcen
					["coord"] = { 53.2, 42.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(28598, {	-- Aiming High
					["sourceQuest"] = 28597,	-- Burnin' at Both Ends
					["coord"] = { 78.7, 76.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 49020,	-- Fargo Flintlocke
					["groups"] = {
						i(68014),	-- Flintlocke's Chuckshooter
					},
				}),
				q(28171, {	-- And the Sky Streaked Red
					["sourceQuest"] = 28758,	-- Battle of Life and Death
					["coord"] = { 22.1, 56.5, TWILIGHT_HIGHLANDS },
					["qg"] = 47605,	-- Calen
				}),
				q(28873, {	-- Another Maw to Feed
					["qg"] = 46319,	-- Griff
					["coord"] = { 53.8, 43.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28133,	-- Fury Unbound (TODO: Verify sourcequest)
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer Food Stores
							["providers"] = {
								{ "i", 62324 },	-- Wildhammer Food Stores
								{ "o", 206289 },	-- Wildhammer Food Stores
								{ "o", 206290 },	-- Wildhammer Food Stores
								{ "o", 206291 },	-- Wildhammer Food Stores
							},
						}),
					},
				}),
				q(27537, {	-- Any Portal in a Storm
					["sourceQuest"] = 27516,	-- Wings Over Highbank
					["coord"] = { 79.0, 78.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45167,	-- Kurdran Wildhammer
					["groups"] = {
						objective(1, {	-- 0/5 Whirlpool Core
							["provider"] = { "i", 60333 },	-- Whirlpool Core
							["cr"] = 44011,	-- Muddied Water Elemental
						}),
						i(63899),	-- Water-Drill Treads
						i(63898),	-- Whirlpool Bracers
						i(63897),	-- Coregrip Gauntlets
					},
				}),
				q(27647, {	-- Anything But Water
					["sourceQuest"] = 27644,	-- Eoin Dunwald
					["coord"] = { 52.8, 74.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46175,	-- Eoin Dunwald
					["groups"] = {
						objective(1, {	-- 0/1 Sacred Wildhammer Ale
							["providers"] = {
								{ "i", 62317 },	-- Sacred Wildhammer Ale
								{ "o", 206203 },	-- Sacred Ale Tap
							},
						}),
						i(63849),	-- Aledrinker Shoulderpads
						i(63848),	-- Brewtaster Bracers
						i(63847),	-- Keg-Sized Chestplate
					},
				}),
				q(27814, {	-- Anything We Can Get
					["sourceQuest"] = 27809,	-- Firebeard Bellows
					["coord"] = { 62.6, 48.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46806,	-- Brom Forgehammer
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Weapon
							["providers"] = {
								{ "i", 62511 },	-- Dragonmaw Weapon
								{ "o", 206389 },	-- Dragonmaw Weapon Crate
								{ "o", 206672 },	-- Dragonmaw Weapon Rack
								{ "o", 206673 },	-- Dragonmaw Weapon Axe
							},
						}),
					},
				}),
				q(27711, {	-- Back to the Elementium Depths (A)
					["sourceQuest"] = 27719,	-- Water of Life
					["coord"] = { 36.3, 66.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["isBreadcrumb"] = true,
				}),
				q(27712, {	-- Back to the Elementium Depths (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27798,	-- Water of Life
						27703,	-- Coup de Grace
						27659,	-- Portal Overload
						27662,	-- Unbinding
					},
					["isBreadcrumb"] = true,
				}),
				q(28041, {	-- Bait and Throttle
					["qg"] = 46313,	-- Narkrall Rakeclaw
					["coord"] = { 54.8, 44.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27751,	-- Crushing the Wildhammer
						27929,	-- Drag 'em Down
					},
					["groups"] = {
						objective(1, {	-- 0/1 Fresh Gryphon Carcass
							["provider"] = { "i", 62915 },	-- Fresh Gryphon Carcass
							["cr"] = 46158,	-- Untamed Gryphon
						}),
					},
				}),
				q(28758, {	-- Battle of Life and Death
					["sourceQuest"] = 28712,	-- Enter the Dragon Queen
					["coord"] = { 14.1, 15.5, TWILIGHT_HIGHLANDS },
					["qg"] = 49810,	-- Calen
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Shadowdrake slain
							["provider"] = { "n", 49873 },	-- Twilight Shadowdrake
						}),
						i(63761),	-- Red Dragonheart Ring
						i(63762),	-- Pendant of Victorious Fury
						i(63760),	-- Cloak of the Red Flight
					},
				}),
				q(28864, {	-- Beer Run
					["qg"] = 46591,	-- Colin Thundermar
					["coord"] = { 49.0, 29.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
				}),
				q(27514, {	-- Bird Down! Bird Down!
					["sourceQuests"] = {
						27366,	-- Landgrab
						27341,	-- Scouting the Shore
					},
					["coord"] = { 76.7, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45169,	-- Lieutenant Emry
				}),
				q(28173, {	-- Blackout
					["sourceQuest"] = 28171,	-- And the Sky Streaked Red
					["coord"] = { 59.0, 69.8, TWILIGHT_HIGHLANDS },
					["qg"] = 47902,	-- Lirastrasza
					["groups"] = {
						objective(1, {	-- 0/8 Obsidian Pyrewing slain
							["provider"] = { "n", 46141 },	-- Obsidian Pyrewing
						}),
						i(63759),	-- Dragonwing Leggings
						i(63758),	-- Nightscale Girdle
						i(63757),	-- Wyrmhunter Spaulders
					},
				}),
				q(27606, {	-- Blast Him!
					["qg"] = 45983,	-- Fergus Gearchum
					["coord"] = { 70.3, 43.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27584,	-- Blood in the Surf
						27586,	-- Shells on the Sea Shore
					},
					["groups"] = {
						objective(1, {	-- 0/1 Fathom-Lord Heth'Jatar slain
							["provider"] = { "n", 46009 },	-- Fathom-Lord Heth'Jatar
						}),
						i(63908),	-- Bracers of the Fallen Fathom-Lord
						i(63907),	-- Heth'jatari Battlegloves
						i(63906),	-- Conch-Sounc Waistguard
					},
				}),
				q(28038, {	-- Blood in the Highlands
					["sourceQuests"] = {
						27751,	-- Crushing the Wildhammer
						27929,	-- Drag 'em Down
					},
					["isBreadcrumb"] = true,
					["qg"] = 46318,	-- Harkkan
					["coord"] = { 55.1, 43.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27584, {	-- Blood in the Surf
					["qg"] = 45982,	-- Gralok
					["coord"] = { 70.2, 43.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27583,	-- The Northern Flank
					["groups"] = {
						objective(1, {	-- 0/15 Blackscale Naga Slain
							["providers"] = {
								{ "n", 45998},	-- Blackscale Naga Quest Tracker Horde
								{ "n", 45984},	-- Blackscale Raider
								{ "n", 45985},	-- Blackscale Mistress
							},
						}),
					},
				}),
				q(27611, {	-- Blood on the Sand
					["qg"] = 46089,	-- Rok'tar
					["coord"] = { 78.2, 62.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27607,	-- The Southern Flank
					["groups"] = {
						objective(1, {	-- 0/12 Highbank Marine slain
							["provider"] = { "n", 45174 },	-- Highbank Marine
						}),
					},
				}),
				q(27509, {	-- Breach in the Defenses
					["qg"] = 45528,	-- Calen
					["sourceQuest"] = 27564,	-- In Defense of the Redoubt
					["coord"] = { 29.3, 26.0, TWILIGHT_HIGHLANDS },
					["groups"] = {
						i(63780),	-- Dragonmender Waistguard
						i(63775),	-- Helm of Verdant Explosion
						-- #if BEFORE MOP
						i(63776, {	-- Exhausted Flashgrowth Mote
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28875, {	-- Bring Down the High Shaman
					["qg"] = 49387,	-- Grot Deathblow
					["coord"] = { 53.8, 42.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28133,	-- Fury Unbound (TODO: Verify sourcequest)
					["groups"] = {
						objective(1, {	-- 0/1 High Shaman MacKilligan slain
							["provider"] = { "n", 46885 },	-- High Shaman MacKilligan
						}),
					},
				}),
				q(27654, {	-- Bring the Hammer Down (A)
					["sourceQuests"] = {
						27636,	-- Just You and Mathias (Automatically granted)
						27637,	-- Just You and Mathias (Cassius the White)
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Citadel cultists slain
							["providers"] = {
								{ "n", 46205},	-- Citadel Veteran
								{ "n", 46203},	-- Twilight Vindicator
								{ "n", 46204},	-- Corrupted Elementalist
							},
						}),
					},
				}),
				q(27655, {	-- Bring the Hammer Down (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27638,	-- Just You and Garona (Automatically granted)
						27639,	-- Just You and Garona (Lady Cozwynn)
					},
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Citadel cultists slain
							["providers"] = {
								{ "n", 46205},	-- Citadel Veteran
								{ "n", 46203},	-- Twilight Vindicator
								{ "n", 46204},	-- Corrupted Elementalist
							},
						}),
					},
				}),
				q(28597, {	-- Burnin' at Both Ends
					["sourceQuest"] = 28596,	-- Welcome to Highbank!
					["coord"] = { 81.0, 79.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 49252,	-- Fargo Flintlocke
				}),
				q(27496, {	-- Call in the Artillery (A)
					["sourceQuest"] = 28248,	-- Victors' Point
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45669,	-- Cassius the White
					["groups"] = {
						i(63753),	-- Flarefire Bracers
						i(63752),	-- Marker's Hauberk
						i(63751),	-- Signal Smoke Shoulderpads
					},
				}),
				q(27497, {	-- Call in the Artillery (H)
					["qg"] = 45665,	-- Lady Cozwynn
					["coord"] = { 45.3, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28249,	-- Crushblow
					["groups"] = {
						i(63750),	-- Buildingblast Bracers
						i(63749),	-- Smokeflare Chestguard
						i(63748),	-- Gatecrasher Shoulderguards
					},
				}),
				q(27645, {	-- Cayden Dunwald
					["sourceQuest"] = 27640,	-- Dunwalds Don't Die
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46177,	-- Keely Dunwald
				}),
				q(26788, {	-- Cementing Our Victory
					["qg"] = 44042,	-- Ornak
					["coord"] = { 74.2, 53.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Verrall River Muck
							["providers"] = {
								{ "i", 60337 },	-- Verrall River Muck
								{ "o", 204880 },	-- Verrall River Muck
							},
						}),
					},
				}),
				q(27807, {	-- Clan Mullan
					["sourceQuest"] = 27806,	-- Honorable Bearing
					["coord"] = { 57.4, 58.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46805,	-- Iain Firebeard
				}),
				q(27702, {	-- Coup de Grace (A)
					["sourceQuest"] = 27700,	-- Dragon, Unchained
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/5 Coup de Grace delivered
							["provider"] = { "n", 46416 },	-- Twilight Skyterror
						}),
						i(63725),	-- Throat-Slitter Gauntlets
						i(63724),	-- Lifecrusher Treads
						i(63726),	-- Redistributed Signet
					},
				}),
				q(27703, {	-- Coup de Grace (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27701,	-- Dragon, Unchained
					["groups"] = {
						objective(1, {	-- 0/5 Coup de Grace delivered
							["provider"] = { "n", 46416 },	-- Twilight Skyterror
						}),
						i(63722),	-- Throat-Slitter Gauntlets
						i(63721),	-- Lifecrusher Treads
						i(63723),	-- Redestributed Signet
					},
				}),
				q(28249, {	-- Crushblow
					["qg"] = 47902,	-- Lirastrasza
					["coord"] = { 59.0, 69.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28247,	-- Last of Her Kind
				}),
				q(27751, {	-- Crushing the Wildhammer (A)
					["qg"] = 46313,	-- Narkrall Rakeclaw
					["coord"] = { 54.8, 44.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27690,	-- Narkrall, the Drake-Tamer
					["groups"] = {
						objective(1, {	-- 0/8 Wildhammer Insignia
							["provider"] = { "i", 62325 },	-- Wildhammer Insignia
							["crs"] = {
								46320,	-- Wildhammer Warbrand
								46376,	-- Gunwald Greybeard
								46377,	-- Cliff Thundermar
								46378,	-- Dillan MacHurley
								46885,	-- High Shaman MacKilligan
							},
						}),
						i(63823),	-- Hammered Bracers
						i(63822),	-- Belt of Smashed Feathers
						i(63821),	-- Dead-Dwarf Shoulderpads
					},
				}),
				q(28871, {	-- Crushing the Wildhammer (H)
					["qg"] = 50622,	-- Malkar
					["coord"] = { 53.9, 41.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28133,	-- Fury Unbound (TODO: Verify sourcequest)
					["groups"] = {
						objective(1, {	-- 0/8 Wildhammer Insignia
							["provider"] = { "i", 62325 },	-- Wildhammer Insignia
							["crs"] = {
								46320,	-- Wildhammer Warbrand
								46376,	-- Gunwald Greybeard
								46377,	-- Cliff Thundermar
								46378,	-- Dillan MacHurley
								46885,	-- High Shaman MacKilligan
							},
						}),
					},
				}),
				q(26540, {	-- Dangerous Compassion
					["qg"] = 43191,	-- Gregor
					["coord"] = { 76.6, 49.4, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26538,	-- Emergency Aid
					["groups"] = {
						i(63896),	-- Blood-Bind Sandals
						i(63895),	-- Dragonheart Bracers
						i(63894),	-- Heartblood Gauntlets
					},
				}),
				q(27652, {	-- Dark Assassins (A)
					["sourceQuests"] = {
						27636,	-- Just You and Mathias (Automatically granted)
						27637,	-- Just You and Mathias (Cassius the White)
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/5 Dark Assassin's Pendant
							["provider"] = { "i", 62033 },	-- Dark Assassin's Pendant
							["cr"] = 46202,	-- Dark Assassin
						}),
						i(63741),	-- Fencer's Nimblefingers
						i(63740),	-- Muffled Bracers
						i(63739),	-- Silenced Blunderbuss
					},
				}),
				q(27653, {	-- Dark Assassins (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27638,	-- Just You and Garona (Automatically granted)
						27639,	-- Just You and Garona (Lady Cozwynn)
					},
					["groups"] = {
						objective(1, {	-- 0/5 Dark Assassin's Pendant
							["provider"] = { "i", 62033 },	-- Dark Assassin's Pendant
							["cr"] = 46202,	-- Dark Assassin
						}),
						i(63738),	-- Needle-Threader Gauntlets
						i(63737),	-- Wound-Heart Bracers
						i(63736),	-- Muffled Blunderbuss
					},
				}),
				q(26622, {	-- Death to Mor'ghor
					["qg"] = 43581,	-- Zaela
					["coord"] = { 76.6, 49.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26621,	-- Insurrection
					["groups"] = {
						objective(1, {	-- 0/1 Warchief Mor'ghor slain
							["provider"] = { "n", 43189 },	-- Warchief Mor'ghor
						}),
						i(63884),	-- Merchant-Rise Shoulderguards
						i(63883),	-- Helm of Furious Uprising
						i(63882),	-- Treads of the Common Man
					},
				}),
				q(27813, {	-- Death Worthy of a Dragonmaw
					["sourceQuest"] = 27809,	-- Firebeard Bellows
					["coord"] = { 62.5, 48.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46850,	-- Mackay Firebeard
					["groups"] = {
						objective(1, {	-- 0/6 Dragonmaw Straggler defeated
							["providers"] = {
								{ "n", 46851},	-- Dragonmaw Straggler
								{ "n", 47465},	-- Injured Dragonmaw Straggler
								{ "n", 48102},	-- Gorosh the Pant Stealer
							},
						}),
					},
				}),
				q(27377, {	-- Devoured
					["sourceQuest"] = 27376,	-- The Maw of Iso'rath
					["description"] = "You must die for this quest to continue.",
					["coord"] = { 48.3, 14.5, TWILIGHT_HIGHLANDS },
					["qg"] = 47991,	-- Earthcaller Yevaa
					-- #if AFTER 9.0.3
					["sharedDescription"] = "Welcome to the buggy part of the questline!\n\nYou are supposed to become overwhelmed and die during the quest 'Devoured'. Then you spawn by Thrall in The Maelstrom for a bugged nightmare scenario. Get gaslighted during the whole quest event 'The Worldbreaker', and get stuck there after accepting 'The Terrors of Iso'rath'. Use your hearthstone to leave the place, and return to Twilight Highlands.",
					["groups"] = {
						n(47991),	-- Earthcaller Yevaa
						n(45435),	-- Earthen Ring Gryphon
					},
					-- #endif
				}),
				q(27688, {	-- Distract Them for Me (A)
					["sourceQuests"] = {
						27654,	-- Bring the Hammer Down
						27652,	-- Dark Assassins
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/1 Dame Alys Finnsson slain
							["provider"] = { "n", 46341 },	-- Dame Alys Finnsson
						}),
						objective(2, {	-- 0/1 Master Klem slain
							["provider"] = { "n", 46342 },	-- Master Klem
						}),
						objective(3, {	-- 0/1 Mia the Rose slain
							["provider"] = { "n", 46343 },	-- Mia the Rose
						}),
						i(63732),	-- Rose-Scented Hood
						i(63731),	-- Dame's Scaled Greaves
						i(63730),	-- Klem's Rusted Gauntlets
					},
				}),
				q(27689, {	-- Distract Them for Me (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27655,	-- Bring the Hammer Down
						27653,	-- Dark Assassins
					},
					["groups"] = {
						objective(1, {	-- 0/1 Dame Alys Finnsson slain
							["provider"] = { "n", 46341 },	-- Dame Alys Finnsson
						}),
						objective(2, {	-- 0/1 Master Klem slain
							["provider"] = { "n", 46342 },	-- Master Klem
						}),
						objective(3, {	-- 0/1 Mia the Rose slain
							["provider"] = { "n", 46343 },	-- Mia the Rose
						}),
						i(63729),	-- Rose-Scented Hood
						i(63728),	-- Dame's Scaled Greaves
						i(63727),	-- Klem's Rusted Gauntlets
					},
				}),
				q(27651, {	-- Doing It Like a Dunwald
					["sourceQuest"] = 27650,	-- Home Again
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46177,	-- Keely Dunwald
					["groups"] = {
						objective(1, {	-- 0/1 Darunga slain
							["provider"] = { "n", 46624 },	-- Darunga
						}),
						i(63833),	-- Dunwald Winged Helm
						i(63832),	-- Gryphon-Grip Leggings
						i(63831),	-- Flynn's Favorite Chestplate
						i(63834),	-- Skyflight Beacon
					},
				}),
				q(27643, {	-- Donnelly Dunwald
					["sourceQuest"] = 27640,	-- Dunwalds Don't Die
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46177,	-- Keely Dunwald
				}),
				q(27505, {	-- Draconic Mending
					["sourceQuest"] = 27504,	-- Even Dragons Bleed
					["coord"] = { 29.8, 31.2, TWILIGHT_HIGHLANDS },
					["qg"] = 45522,	-- Velastrasza
					["groups"] = {
						i(63777),	-- Flashseal Sandals
						i(63779),	-- Vermillion Belt
						i(63778),	-- Safeguard Spaulders
					},
				}),
				q(27929, {	-- Drag 'em Down
					["qg"] = 46313,	-- Narkrall Rakeclaw
					["coord"] = { 54.8, 44.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27690,	-- Narkrall, the Drake-Tamer
					["groups"] = {
						objective(1, {	-- 0/4 Thundermar Gryphon Rider slain
							["provider"] = { "n", 46321 },	-- Thundermar Gryphon Rider
						}),
					},
				}),
				q(27700, {	-- Dragon, Unchained (A)
					["sourceQuests"] = {
						27688,	-- Distract Them for Me
						27695,	-- The Elementium Axe
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/1 Lirastrasza freed
							["provider"] = { "n", 46456 },	-- Lirastrasza
						}),
					},
				}),
				q(27701, {	-- Dragon, Unchained (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27689,	-- Garona Halforcen
						27696,	-- The Elementium Axe
					},
					["groups"] = {
						objective(1, {	-- 0/1 Lirastrasza freed
							["provider"] = { "n", 46456 },	-- Lirastrasza
						}),
					},
				}),
				q(27754, {	-- Dragonmaw Takedown
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46591,	-- Colin Thundermar
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Insignia
							["provider"] = { "i", 62332 },	-- Dragonmaw Insignia
							["crs"] = {
								46310,	-- Dragonmaw Marauder
								46493,	-- Warlord Halthar
								46756,	-- Karkrog the Exterminator
							},
						}),
						i(63826),	-- Trophy-Taker Bracers
						i(63825),	-- Belt of Bloody Dreams
						i(63824),	-- Orc-Shock Spaulders
					},
				}),
				q(28151, {	-- Dressed to Kill
					["qg"] = 47723,	-- Rotgrum
					["coord"] = { 36.7, 37.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28147,	-- Purple Is Your Color
					["groups"] = {
						objective(1, {	-- 0/10 Glopgut Ogres Slain
							["providers"] = {
								{ "n", 47765},	-- Glopgut Pounder
								{ "n", 47768},	-- Glopgut Hurler
								{ "n", 47770},	-- Thog
								{ "n", 48475},	-- Glopgut Hurler
								{ "n", 48480},	-- Brogg Glopgut
							},
						}),
						i(63846),	-- Cult-Hide Spaulders
						i(63845),	-- Bracers of False Night
						i(63844),	-- Ogre-Slayer Chestplate
					},
				}),
				q(27817, {	-- Dropping the Hammer
					["sourceQuest"] = 27816,	-- Personal Request
					["coord"] = { 60.1, 57.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
					["groups"] = {
						objective(1, {	-- 0/12 Twilight Stormbender slain
							["provider"] = { "n", 47199 },	-- Twilight Stormbender
						}),
						objective(2, {	-- 0/1 Servias Windterror slain
							["provider"] = { "n", 46839 },	-- Servias Windterror
						}),
						i(63861),	-- Keegan's Windswept Chestguard
						i(63860),	-- Hammerhead Helm
						i(63859),	-- Stormhammer Gauntlets
					},
				}),
				q(27640, {	-- Dunwalds Don't Die
					["sourceQuest"] = 27817,	-- Dropping the Hammer
					["coord"] = { 60.1, 57.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
				}),
				q(28103, {	-- Easy Pickings (A)
					["sourceQuest"] = 28101,	-- Mathias' Command
					["coord"] = { 26.0, 38.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47592,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Spearwarder slain
							["providers"] = {
								{ "n", 47490},	-- Twilight Spearwarder
								{ "n", 47458},	-- Twilight Spearwarder
							},
						}),
					},
				}),
				q(28091, {	-- Easy Pickings (H)
					["qg"] = 47492,	-- Patch
					["coord"] = { 27.3, 36.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27576,	-- Patchwork Command
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Spearwarder slain
							["providers"] = {
								{ "n", 47490},	-- Twilight Spearwarder
								{ "n", 47458},	-- Twilight Spearwarder
							},
						}),
					},
				}),
				q(26538, {	-- Emergency Aid
					["qg"] = 43193,	-- Warlord Krogg
					["sourceQuest"] = 26388,	-- Twilight Skies (2/2)
					["coord"] = { 82.4, 49.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27507, {	-- Encroaching Twilight
					["sourceQuest"] = 27564,	-- In Defense of the Redoubt
					["coord"] = { 29.3, 26.0, TWILIGHT_HIGHLANDS },
					["qg"] = 45528,	-- Calen
					["groups"] = {
						objective(1, {	-- 0/12 Twilight invaders slain
							["providers"] = {
								{ "n", 45616},	-- Twilight Abductor
								{ "n", 45618},	-- Twilight Flamequencher
								{ "n", 45642},	-- Twilight Abductor
								{ "n", 45648},	-- Twilight Abductor
								{ "n", 45649},	-- Twilight Abductor
							},
						}),
					},
				}),
				q(28712, {	-- Enter the Dragon Queen
					["coord"] = { 21.8, 57.0, TWILIGHT_HIGHLANDS },
					["qg"] = 47603,	-- Alextrasza the Life-Binder
					["sourceQuests"] = {
						28109,	-- Pressing Forward (A)
						28093,	-- Pressing Forward (H)
					},
				}),
				q(27644, {	-- Eoin Dunwald
					["sourceQuest"] = 27640,	-- Dunwalds Don't Die
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46177,	-- Keely Dunwald
				}),
				q(27504, {	-- Even Dragons Bleed
					["sourceQuests"] = { 27485, 27486 },	-- Warm Welcome (A/H)
					["coord"] = { 29.3, 25.9, TWILIGHT_HIGHLANDS },
					["qg"] = 45528,	-- Calen
				}),
				q(28589, {	-- Everything But the Kitchen Sink
					["qg"] = 48993,	-- Captain Krazz
					["coord"] = { 77.6, 16.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28586,	-- Pool Pony Rescue
						28584,	-- Quality Construction
						28588,	-- Wildhammer Infestation
					},
					["groups"] = {
						i(63864),	-- Gunnery Gloves
						i(63863),	-- Rivetproof Chestguard
						i(63862),	-- Tool-Bracing Armguards
					},
				}),
				q(28244, {	-- Eye Spy (A)
					["qg"] = 48010,	-- Low Shaman Blundy
					["sourceQuest"] = 28243,	-- The Eyes Have It
					["coord"] = { 49.7, 29.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63797),	-- Eye of Despair
						i(63796),	-- Dark-Eye Ring
						-- #if BEFORE MOP
						i(63798, {	-- Winged Axe
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(27955, {	-- Eye Spy (H)
					["qg"] = 46323,	-- Garona Halforcen
					["sourceQuest"] = 27954,	-- The Eyes Have It
					["coord"] = { 53.2, 42.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63794),	-- Eye of Reversal
						i(63793),	-- Shard-Heart Ring
						-- #if BEFORE MOP
						i(63795, {	-- Garona's Spare Star
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(27508, {	-- Far from the Nest
					["sourceQuest"] = 27564,	-- In Defense of the Redoubt
					["coord"] = { 29.3, 26.0, TWILIGHT_HIGHLANDS },
					["qg"] = 45518,	-- Lirastrasza
				}),
				q(27752, {	-- Fight Like a Wildhammer
					["coord"] = { 49.7, 29.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48010,	-- Low Shaman Blundy
					["groups"] = {
						i(63819),	-- Keg-Stealer Bracers
						i(63818),	-- Blundy's Breastplate
						i(63820),	-- Barrel Opener
					},
				}),
				q(28861, {	-- Fight Like a Wildhammer
					["qg"] = 48010,	-- Low Shaman Blundy
					["coord"] = { 49.6, 29.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
				}),
				q(28378, {	-- Find Fanny
					["sourceQuest"] = 28377,	-- Rescue at Glopgut's Hollow
					["coord"] = { 38.1, 34.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48472,	-- Colin Thundermar
				}),
				q(27646, {	-- Finding Beak
					["sourceQuest"] = 27643,	-- Donnelly Dunwald
					["coord"] = { 46.5, 59.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46176,	-- Donnelly Dunwald
					["groups"] = {
						i(63855),	-- Beak's Torn Feedbag
						i(63854),	-- Friendfinder Treads
						i(63853),	-- Gryphon-Seeker Waistplate
					},
				}),
				q(27809, {	-- Firebeard Bellows
					["sourceQuest"] = 27806,	-- Honorable Bearing
					["coord"] = { 57.4, 58.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46805,	-- Iain Firebeard
				}),
				q(27621, {	-- Firebeard's Patrol
					["sourceQuest"] = 27545,	-- The Way is Open
					["coord"] = { 79.2, 78.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45172,	-- Thordun Hammerblow
				}),
				q(27661, {	-- Fire the Cannon
					["sourceQuest"] = 27660,	-- Spirit of the Loch
					["coord"] = { 27.7, 63.8, TWILIGHT_HIGHLANDS },
					["qg"] = 46413,	-- Countess Verrall
					["groups"] = {
						objective(1, {	-- 0/1 Lord Cannon slain
							["provider"] = { "n", 46785 },	-- Lord Cannon
						}),
					},
				}),
				q(28176, {	-- Following the Young Home
					["sourceQuests"] = {
						28191,	-- A Fitting End
						28173,	-- Blackout
						28175,	-- Shining Through the Dark
					},
					["coord"] = { 59.0, 69.8, TWILIGHT_HIGHLANDS },
					["qg"] = 47902,	-- Lirastrasza
				}),
				q(27500, {	-- Four Heads are Better Than None (A)
					["sourceQuests"] = {
						27498,	-- Signal the Attack (Automatically granted)
						27588,	-- Signal the Attack (Kurdran Wildhammer)
					},
					["description"] = "Automatically granted.",
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Za's Head
							["provider"] = { "i", 61924 },	-- Za's Head
							["cr"] = 46017,	-- Za'brox
						}),
						objective(2, {	-- 0/1 Phod's Head
							["provider"] = { "i", 61927 },	-- Phod's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(3, {	-- 0/1 Beeble's Head
							["provider"] = { "i", 61926 },	-- Beeble's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(4, {	-- 0/1 Brox's Head
							["provider"] = { "i", 61925 },	-- Brox's Head
							["cr"] = 46017,	-- Za'brox
						}),
						i(63747),	-- Spaulders of Gruesome Accomplishment
						i(63745),	-- Za'brox's Lucky Tooth
						i(63746),	-- Skull Carrier
					},
				}),
				q(27608, {	-- Four Heads are Better than None (A)
					["qg"] = 45669,	-- Cassius the White
					["coord"] = { 43.4, 57.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuests"] = {
						27498,	-- Signal the Attack (Automatically granted)
						27588,	-- Signal the Attack (Kurdran Wildhammer)
					},
					["groups"] = {
						objective(1, {	-- 0/1 Za's Head
							["provider"] = { "i", 61924 },	-- Za's Head
							["cr"] = 46017,	-- Za'brox
						}),
						objective(2, {	-- 0/1 Phod's Head
							["provider"] = { "i", 61927 },	-- Phod's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(3, {	-- 0/1 Beeble's Head
							["provider"] = { "i", 61926 },	-- Beeble's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(4, {	-- 0/1 Brox's Head
							["provider"] = { "i", 61925 },	-- Brox's Head
							["cr"] = 46017,	-- Za'brox
						}),
						i(63747),	-- Spaulders of Gruesome Accomplishment
						i(63745),	-- Za'brox's Lucky Tooth
						i(63746),	-- Skull Carrier
					},
				}),
				q(27501, {	-- Four Heads are Better than None (H)
					["races"] = HORDE_ONLY,
					["description"] = "Automatically granted.",
					["sourceQuests"] = {
						27499,	-- Signal the Attack (Automatically granted)
						27590,	-- Signal the Attack (Warlord Zaela)
					},
					["groups"] = {
						objective(1, {	-- 0/1 Za's Head
							["provider"] = { "i", 61924 },	-- Za's Head
							["cr"] = 46017,	-- Za'brox
						}),
						objective(2, {	-- 0/1 Phod's Head
							["provider"] = { "i", 61927 },	-- Phod's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(3, {	-- 0/1 Beeble's Head
							["provider"] = { "i", 61926 },	-- Beeble's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(4, {	-- 0/1 Brox's Head
							["provider"] = { "i", 61925 },	-- Brox's Head
							["cr"] = 46017,	-- Za'brox
						}),
						i(63744),	-- Spaulders of Gruesome Glory
						i(63742),	-- Za'brox's Lucky Tooth
						i(63743),	-- Skull Carrier
					},
				}),
				q(27609, {	-- Four Heads are Better than None (H)
					["qg"] = 45665,	-- Lady Cozwynn
					["coord"] = { 45.3, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27499,	-- Signal the Attack (Automatically granted)
						27590,	-- Signal the Attack (Warlord Zaela)
					},
					["groups"] = {
						objective(1, {	-- 0/1 Za's Head
							["provider"] = { "i", 61924 },	-- Za's Head
							["cr"] = 46017,	-- Za'brox
						}),
						objective(2, {	-- 0/1 Phod's Head
							["provider"] = { "i", 61927 },	-- Phod's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(3, {	-- 0/1 Beeble's Head
							["provider"] = { "i", 61926 },	-- Beeble's Head
							["cr"] = 46018,	-- Beeble'phod
						}),
						objective(4, {	-- 0/1 Brox's Head
							["provider"] = { "i", 61925 },	-- Brox's Head
							["cr"] = 46017,	-- Za'brox
						}),
						i(63744),	-- Spaulders of Gruesome Glory
						i(63742),	-- Za'brox's Lucky Tooth
						i(63743),	-- Skull Carrier
					},
				}),
				q(28133, {	-- Fury Unbound
					["qg"] = 47417,	-- Zaela
					["coord"] = { 54.3, 43.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28123,	-- The Demon Chain
					["groups"] = {
						objective(1, {	-- 0/1 Torth slain
							["provider"] = { "n", 47669 },	-- Torth
						}),
						i(63802),	-- Bastion-Clearing Leggings
						i(63801),	-- Gauntlets of Dragonwrath
						i(63800),	-- Clear-Eyed Waistguard
						i(63803),	-- Torth-Slayer's Staff
						i(63799),	-- Mace of the Gullet
					},
				}),
				q(27783, {	-- Garona Needs You
					["qg"] = 46243,	-- Initiate Goldmine
					["coord"] = { 37.5, 88.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27745,	-- A Fiery Reunion
				}),
				q(27657, {	-- Help from the Earthcaller (A)
					["sourceQuests"] = {
						27636,	-- Just You and Mathias (Automatically granted)
						27637,	-- Just You and Mathias (Cassius the White)
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
				}),
				q(27658, {	-- Help from the Earthcaller (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27638,	-- Just You and Garona (Automatically granted)
						27639,	-- Just You and Garona (Lady Cozwynn)
					},
				}),
				heroscall(q(28716, {	-- Hero's Call: Twilight Highlands! (breadcrumb quest for 26960) (max level 93)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 84,
				})),
				q(28594, {	-- Highbank, Crybank
					["qg"] = 49378,	-- Patch
					["coord"] = { 81.5, 80.1, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28591,	-- Off the Wall
					["groups"] = {
						objective(1, {	-- 0/10 Highbank Defenders slain
							["providers"] = {
								{ "n", 49023},	-- Highbank Guardsman
								{ "n", 49024},	-- Highbank Marksman
								{ "n", 49028},	-- Tidebreaker Sailor
								{ "n", 49029},	-- Highbank Prison Guard
								{ "n", 49350},	-- Tidebreaker Sailor
							},
						}),
					},
				}),
				q(27650, {	-- Home Again
					["races"] = ALLIANCE_ONLY,
					["providers"] = {
						{ "n", 46174 },	-- Cayden Dunwald
						{ "n", 46176 },	-- Donnelly Dunwald
						{ "n", 46626 },	-- Donnelly Dunwald
						{ "n", 46583 },	-- Eoin Dunwald
					},
					["sourceQuests"] = {
						27647,	-- Anything But Water
						27646,	-- Finding Beak
						27648,	-- Once More Into The Fire
					},
					["coords"] = {
						{ 52.4, 70.3, TWILIGHT_HIGHLANDS },	-- Eoin Dunwald
						{ 45.9, 58.6, TWILIGHT_HIGHLANDS },	-- Donnelly Dunwald
						{ 47.8, 74.4, TWILIGHT_HIGHLANDS },	-- Cayden Dunwald
					},
				}),
				q(27806, {	-- Honorable Bearing
					["sourceQuests"] = {
						27804,	-- The Only Homes We Have
						27803,	-- Welcome Relief
					},
					["coord"] = { 60.1, 57.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
				}),
				q(28874, {	-- Hook 'em High
					["qg"] = 46318,	-- Harkkan
					["coord"] = { 55.1, 43.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28133,	-- Fury Unbound (TODO: Verify sourcequest)
					["groups"] = {
						objective(1, {	-- 0/4 Thundermar Gryphon Rider slain
							["provider"] = { "n", 46321 },	-- Thundermar Gryphon Rider
						}),
					},
				}),
				q(28212, {	-- Hot Stuff
					["sourceQuests"] = {
						27752,	-- Fight Like a Wildhammer
						27753,	-- Never Leave a Dinner Behind
						27754,	-- Dragonmaw Takedown
					},
					["coord"] = { 49.1, 29.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48014,	-- Nivvet Channelock
					["groups"] = {
						objective(1, {	-- 0/5 Molten Fury
							["provider"] = { "i", 63283 },	-- Molten Fury
							["cr"] = 48016,	-- Unbound Emberfiend
						}),
					},
				}),
				q(28043, {	-- How to Maim Your Dragon
					["qg"] = 46313,	-- Narkrall Rakeclaw
					["coord"] = { 54.8, 44.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28041,	-- Bait and Throttle
				}),
				q(28108, {	-- If The Key Fits (A)
					["sourceQuests"] = {
						28104,	-- Precious Goods
						28103,	-- Easy Pickings
					},
					["coord"] = { 26.0, 38.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47592,	-- Master Mathias Shaw
				}),
				q(28092, {	-- If The Key Fits (H)
					["qg"] = 47493,	-- Warlord Krogg
					["coord"] = { 29.6, 40.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28097,	-- The Gates of Grim Batol
				}),
				q(27564, {	-- In Defense of the Redoubt
					["sourceQuests"] = {
						27505,	-- Draconic Mending
						27506,	-- Life From Death
					},
					["coord"] = { 29.8, 31.2, TWILIGHT_HIGHLANDS },
					["qg"] = 45522,	-- Velastrasza
				}),
				q(26621, {	-- Insurrection
					["qg"] = 43581,	-- Zaela
					["coord"] = { 76.6, 49.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26619,	-- You Say You Want a Revolution
					["groups"] = {
						i(63889),	-- Shackle-Shatter Wand
						i(63890),	-- Ring of Rebellion
						-- #if BEFORE MOP
						i(63888, {	-- Blackblood Freedom Standard
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(27638, {	-- Just You and Garona
					["races"] = HORDE_ONLY,
					["description"] = "Automatically granted.",
					["sourceQuest"] = 27503,	-- Up to the Citadel
				}),
				q(27639, {	-- Just You and Garona
					["qg"] = 45665,	-- Lady Cozwynn
					["coord"] = { 45.3, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27503,	-- Up to the Citadel
				}),
				q(27636, {	-- Just You and Mathias
					["sourceQuest"] = 27502,	-- Up to the Citadel
					["description"] = "Automatically granted.",
					["races"] = ALLIANCE_ONLY,
				}),
				q(27637, {	-- Just You and Mathias
					["sourceQuest"] = 27502,	-- Up to the Citadel
					["races"] = ALLIANCE_ONLY,
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["qg"] = 45669,	-- Cassius the White
				}),
				q(28860, {	-- Keeping the Dragonmaw at Bay
					["qg"] = 46591,	-- Colin Thundermar
					["coord"] = { 49.0, 29.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Insignia
							["provider"] = { "i", 62332 },	-- Dragonmaw Insignia
							["crs"] = {
								46310,	-- Dragonmaw Marauder
								46493,	-- Warlord Halthar
								46756,	-- Karkrog the Exterminator
							},
						}),
					},
				}),
				q(27491, {	-- Kor'kron Drop
					["qg"] = 45665,	-- Lady Cozwynn
					["coord"] = { 45.3, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28249,	-- Crushblow
				}),
				q(28595, {	-- Krazz Works!
					["qg"] = 49000,	-- Patch
					["coord"] = { 82.1, 80.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28594,	-- Highbank, Crybank
						28593,	-- Of Utmost Importance
						28592,	-- Parting Packages
					},
					["groups"] = {
						i(63829),	-- Shocktrooper Hood
						i(63828),	-- Aerial Assault Legguards
						i(63827),	-- Skyshredder Battleplate
						i(63830),	-- Air Raid Beacon
					},
				}),
				q(28583, {	-- Krazzworks
					["qg"] = 46090,	-- Juice Gnugat
					["coord"] = { 78.4, 62.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27622,	-- Mo' Better Shredder
				}),
				q(28599, {	-- Kurdran's Waitin'
					["sourceQuest"] = 28598,	-- Aiming High
					["coord"] = { 78.9, 76.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 49020,	-- Fargo Flintlocke
				}),
				q(27366, {	-- Landgrab
					["sourceQuest"] = 27338,	-- Our Boys on the Shore
					["coord"] = { 76.7, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45169,	-- Lieutenant Emry
					["groups"] = {
						objective(1, {	-- 0/12 Axebite Marine slain
							["provider"] = { "n", 45175 },	-- Axebite Marine
						}),
						i(63893),	-- Signet of Bloody Sands
						i(63892),	-- Beach-Sweeper Wand
						-- #if BEFORE MOP
						i(63891, {	-- Shore-Cleansing Standard
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28247, {	-- Last of Her Kind
					["sourceQuest"] = 28176,	-- Following the Young Home
					["coord"] = { 45.0, 90.8, TWILIGHT_HIGHLANDS },
					["qg"] = 47905,	-- Baleflame
					["groups"] = {
						i(63756),	-- Bracers of Final Memories
						i(63755),	-- Hood of Lost Solitude
						i(63754),	-- Waistguard of Twilight Finality
					},
				}),
				q(28281, {	-- Last Stand at Thundermar
					["sourceQuest"] = 28280,	-- Tear Them From the Sky
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48173,	-- Colin Thundermar
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Skyclaw slain
							["provider"] = { "n", 48194 },	-- Dragonmaw Skyclaw
						}),
					},
				}),
				q(27506, {	-- Life from Death
					["sourceQuest"] = 27504,	-- Even Dragons Bleed
					["coord"] = { 29.7, 31.3, TWILIGHT_HIGHLANDS },
					["qg"] = 45562,	-- Baleflame
				}),
				q(26549, {	-- Madness
					["qg"] = 43187,	-- Ornak
					["coord"] = { 78.8, 51.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26539,	-- Stalled Negotiations
				}),
				q(28216, {	-- Magmalord Falthazar
					["sourceQuests"] = {
						27754,	-- Dragonmaw Takedown
						27753,	-- Never Leave a Dinner Behind
					},
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46591,	-- Colin Thundermar
					["groups"] = {
						objective(1, {	-- 0/1 Magmalord Falthazar's Head
							["provider"] = { "i", 63286 },	-- Magmalord Falthazar's Head
							["cr"] = 48015,	-- Magmalord Falthazar
						}),
						i(63814),	-- Corruption Resistant Gloves
						i(63813),	-- Flameproof Treads
						i(63812),	-- Lepglates of Cooled Magma
					},
				}),
				q(28101, {	-- Mathias' Command
					["sourceQuests"] = {
						27507,	-- Encroaching Twilight
						27508,	-- Far From the Nest
						27509,	-- Breach in the Defenses
					},
					["coord"] = { 29.3, 26.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45528,	-- Calen
				}),
				q(27782, {	-- Mathias Needs You
					["sourceQuest"] = 27745,	-- A Fiery Reunion
					["coord"] = { 37.5, 88.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46243,	-- Initiate Goldmine
				}),
				q(27303, {	-- Mercy for the Bound
					["sourceQuest"] = 27301,	-- Unbroken
					["coord"] = { 44.2, 18.1, TWILIGHT_HIGHLANDS },
					["qg"] = 45362,	-- Earthcaller Yevaa
					["groups"] = {
						objective(1, {	-- 0/5 Fleshburner Heart
							["provider"] = { "i", 60981 },	-- Fleshburner Heart
							["cr"] = 45358,	-- Bound Fleshburner
						}),
						i(63786),	-- Fleshburned Robes
						i(63785),	-- Smoking Stride Treads
						i(63784),	-- Heartsmoke Legplates
					},
				}),
				q(27622, {	-- Mo' Better Shredder
					["qg"] = 46090,	-- Juice Gnugat
					["coord"] = { 78.4, 62.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27611,	-- Blood on the Sand
						27610,	-- Scouting the Shore
					},
					["groups"] = {
						i(63902),	-- Mechano-Assembler Headguard
						i(63901),	-- Leggings of Shredded Protection
						i(63900),	-- Shredder-Salvage Spaulders
					},
				}),
				q(27494, {	-- Move the Mountain (A)
					["sourceQuests"] = {
						27496,	-- Call in the Artillery
						27492,	-- Ogres & Ettins
						27490,	-- SI:7 Drop
					},
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45668,	-- Kurdran Wildhammer
					["groups"] = {
						objective(1, {	-- 0/1 Hidden explosives detonated
							["provider"] = { "o", 205590 },	-- Hidden Explosives
						}),
					},
				}),
				q(27495, {	-- Move the Mountain (H)
					["qg"] = 45658,	-- Warlord Zaela
					["coord"] = { 45.2, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27497,	-- Call in the Artillery
						27491,	-- Kor'kron Drop
						27493,	-- Ogres & Ettins
					},
					["groups"] = {
						objective(1, {	-- 0/1 Hidden explosives detonated
							["provider"] = { "o", 205590 },	-- Hidden Explosives
						}),
					},
				}),
				q(27720, {	-- Mr. Goldmine's Wild Ride (A)
					["sourceQuests"] = {
						27711,	-- Back to the Elementium Depths
						27659,	-- Portal Overload
						27662,	-- Unbinding
					},
					["coord"] = { 37.5, 88.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46243,	-- Initiate Goldmine
				}),
				q(28885, {	-- Mr. Goldmine's Wild Ride (H)
					["qg"] = 46243,	-- Initiate Goldmine
					["coord"] = { 37.5, 88.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27712,	-- Back to the Elementium Depths
						27659,	-- Portal Overload
						27662,	-- Unbinding
					},
				}),
				q(26784, {	-- Muddied Waters
					["qg"] = 44024,	-- Artesh
					["coord"] = { 73.8, 53.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26786,	-- Securing the Beach Head
					["groups"] = {
						objective(1, {	-- 0/5 Whirlpool Core
							["provider"] = { "i", 60333 },	-- Whirlpool Core
							["cr"] = 44011,	-- Muddied Water Elemental
						}),
					},
				}),
				q(28369, {	-- My Sister, Fanny
					["isBreadcrumb"] = true,	-- for "Never Leave a Dinner Behind"
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46591,	-- Colin Thundermar
				}),
				q(27178, {	-- Naga Reinforcements
					["sourceQuest"] = 28599,	-- Kurdran's Waitin'
					["coord"] = { 79.2, 78.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45170,	-- Simon Chandler
					["groups"] = {
						objective(1, {	-- 0/10 Blackscale Naga Slain
							["providers"] = {
								{ "n", 45179},	-- Blackscale Myrmidon
								{ "n", 45182},	-- Blackscale Seacaller
							},
						}),
						i(63911),	-- Myrmidon-Slaying Bracers
						i(63910),	-- Blackscale Wraps
						i(63909),	-- Chill-Tail Waistguard
					},
				}),
				q(28282, {	-- Narkrall, The Drake-Tamer (A)
					["sourceQuest"] = 28281,	-- Last Stand at Thundermar
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48173,	-- Colin Thundermar
					["groups"] = {
						objective(1, {	-- 0/1 Narkrall Rakeclaw slain
							["provider"] = { "n", 48257 },	-- Narkrall Rakeclaw
						}),
						i(63807),	-- Narkrall's Leggings
						i(63806),	-- Ale Soaked Grips
						i(63805),	-- Furybound Waistplate
						i(63808),	-- Staff of Draconic Pacification
						i(63804),	-- Dragonscorn Mace
					},
				}),
				q(27690, {	-- Narkrall, the Drake-Tamer (H)
					["qg"] = 45982,	-- Gralok
					["coord"] = { 70.2, 43.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27606,	-- Blast Him!
				}),
				q(26608, {	-- Negotiations Terminated
					["qg"] = 43190,	-- Zaela
					["coord"] = { 73.6, 53.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26549,	-- Madness
				}),
				q(27753, {	-- Never Leave a Dinner Behind
					["sourceQuest"] = 28369,	-- My Sister, Fanny
					["coord"] = { 49.7, 29.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48013,	-- Fanny Thundermar
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer Food Stores
							["providers"] = {
								{ "i", 62324 },	-- Wildhammer Food Stores
								{ "o", 206289 },	-- Wildhammer Food Stores
								{ "o", 206290 },	-- Wildhammer Food Stores
								{ "o", 206291 },	-- Wildhammer Food Stores
							},
						}),
					},
				}),
				q(28862, {	-- Never Leave a Dinner Behind
					["qg"] = 48010,	-- Low Shaman Blundy
					["coord"] = { 49.6, 29.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer Food Stores
							["providers"] = {
								{ "i", 62324 },	-- Wildhammer Food Stores
								{ "o", 206289 },	-- Wildhammer Food Stores
								{ "o", 206290 },	-- Wildhammer Food Stores
								{ "o", 206291 },	-- Wildhammer Food Stores
							},
						}),
					},
				}),
				q(28170, {	-- Night Terrors
					["qg"] = 47751,	-- Buunu
					["coord"] = { 36.3, 37.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28166,	-- Thog's Nightlight
					["groups"] = {
						i(63840),	-- Juju of Nimbleness
						i(63839),	-- Harmlight Token
						i(63838),	-- Shrine-Cleansing Purifier
					},
				}),
				q(27380, {	-- Nightmare
					["sourceQuest"] = 27379,	-- The Terrors of Iso'rath
					["coord"] = { 48.7, 16.6, TWILIGHT_HIGHLANDS },
					["qg"] = 48059,	-- Earthcaller Yevaa
					["groups"] = {
						objective(1, {	-- 0/1 Kill Iso'rath
							["provider"] = { "n", 47960 },	-- Brain of Iso'rath
						}),
						i(63783),	-- Woundseal Leggings
						i(63782),	-- Weeping Scar Cover
						i(63781),	-- Nightmare Choker
					},
				}),
				q(28593, {	-- Of Utmost Importance
					["qg"] = 49378,	-- Patch
					["coord"] = { 81.9, 79.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28591,	-- Off the Wall
					["groups"] = {
						objective(1, {	-- 0/1 Induction Samophlange
							["providers"] = {
								{ "i", 64584 },	-- Induction Samophlange
								{ "o", 207259 },	-- Induction Samophlange
							},
						}),
					},
				}),
				q(28591, {	-- Off The Wall
					["qg"] = 49378,	-- Patch
					["coord"] = { 77.2, 74.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28590,	-- Reprisal
					["groups"] = {
						objective(1, {	-- 0/80 Highbank Marksman slain
							["provider"] = { "n", 49124 },	-- Highbank Marksman
						}),
						objective(2, {	-- 0/12 Highbank Cannoneer slain
							["provider"] = { "n", 49025 },	-- Highbank Cannoneer
						}),
						objective(3, {	-- 0/4 Highbank Cannon slain
							["providers"] = {
								{ "n", 49060},	-- Highbank Cannon
								{ "n", 49631},	-- Highbank Cannon Bunny
							},
						}),
					},
				}),
				q(28379, {	-- Ogre Bashin'
					["sourceQuest"] = 28377,	-- Rescue at Glopgut's Hollow
					["coord"] = { 38.1, 34.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48472,	-- Colin Thundermar
					["groups"] = {
						objective(1, {	-- 0/10 Glopgut Ogre Slain
							["providers"] = {
								{ "n", 48474},	-- Glopgut Pounder
								{ "n", 48498},	-- Glopgut Basher
								{ "n", 47768},	-- Glopgut Hurler
								{ "n", 48475},	-- Glopgut Hurler
							},
						}),
					},
				}),
				q(27492, {	-- Ogres & Ettins (A)
					["sourceQuest"] = 28248,	-- Victors' Point
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45668,	-- Kurdran Wildhammer
					["groups"] = {
						objective(1, {	-- 0/10 Bloodeye Clan ogres & ettins slain
							["providers"] = {
								{ "n", 45787},	-- Bloodeye Brute
								{ "n", 45795},	-- Bloodeye Magelord
								{ "n", 45838},	-- Twilight Ettin
							},
						}),
					},
				}),
				q(27493, {	-- Ogres & Ettins (H)
					["qg"] = 45658,	-- Warlord Zaela
					["coord"] = { 45.2, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28249,	-- Crushblow
					["groups"] = {
						objective(1, {	-- 0/10 Bloodeye Clan ogres & ettins slain
							["providers"] = {
								{ "n", 45787},	-- Bloodeye Brute
								{ "n", 45795},	-- Bloodeye Magelord
								{ "n", 45838},	-- Twilight Ettin
							},
						}),
					},
				}),
				q(27648, {	-- Once More Into The Fire
					["sourceQuest"] = 27645,	-- Cayden Dunwald
					["coord"] = { 45.7, 71.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46174,	-- Cayden Dunwald
					["groups"] = {
						i(63843),	-- Blood-Soaked Ale Mug
						i(63842),	-- World-Queller Focus
						i(63841),	-- Tank-Commander Insignia
					},
				}),
				q(27338, {	-- Our Boys on the Shore
					["sourceQuest"] = 28599,	-- Kurdran's Waitin'
					["coord"] = { 79.1, 78.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45167,	-- Kurdran Wildhammer
				}),
				q(27945, {	-- Paint it Black
					["sourceQuest"] = 28043,	-- How to Maim Your Dragon (TODO: Verify SQ, may appear earlier)
					["qg"] = 46324,	-- Mallia
					["coord"] = { 53.2, 42.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Black Diamond Heart
							["provider"] = { "i", 62796 },	-- Black Diamond Heart
							["cr"] = 47226,	-- Obsidian Stoneslave
						}),
						i(63811),	-- Diamond Clutching Gloves
						i(63810),	-- Heartstone Treads
						i(63809),	-- Legplates of Riven Futures
					},
				}),
				q(28592, {	-- Parting Packages
					["qg"] = 49379,	-- Ticker
					["coord"] = { 80.6, 80.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28591,	-- Off the Wall
					["groups"] = {
						i(63852),	-- Sharkshield Cover
						i(63851),	-- Repair Crew Treads
						i(63850),	-- Krazzworks Climbing Belt
					},
				}),
				q(27576, {	-- Patchwork Command
					["qg"] = 45528,	-- Calen
					["coord"] = { 29.3, 25.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27509,	-- Breach in the Defenses
						27507,	-- Encroaching Twilight
						27508,	-- Far from the Nest
					},
				}),
				q(28107, {	-- Paving the Way (A)
					["sourceQuest"] = 28108,	-- If the Key Fits
					["description"] = "Must be on |cFFFFD700If the Key Fits|r to receieve this quest.",
					["coord"] = { 26.0, 38.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47611,	-- Highbank Lieutenant
					["groups"] = {
						objective(1, {	-- 0/30 Wyrms' Bend cultists killed
							["providers"] = {
								{ "n", 47406},	-- Twilight Sentinel
								{ "n", 47394},	-- Twilight Guardsman
								{ "n", 47401},	-- Twilight Stalker
								{ "n", 47407},	-- Twilight Earthbinder
								{ "n", 47408},	-- Twilight Shadowmender
								{ "n", 47409},	-- Twilight Cryomagus
								{ "n", 47410},	-- Bound Groundshaker
							},
						}),
					},
				}),
				q(28094, {	-- Paving the Way (H)
					["qg"] = 47374,	-- Patch
					["coord"] = { 29.6, 40.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28097,	-- The Gates of Grim Batol
					["groups"] = {
						objective(1, {	-- 0/30 Wyrms' Bend cultists killed
							["providers"] = {
								{ "n", 47406},	-- Twilight Sentinel
								{ "n", 47394},	-- Twilight Guardsman
								{ "n", 47401},	-- Twilight Stalker
								{ "n", 47407},	-- Twilight Earthbinder
								{ "n", 47408},	-- Twilight Shadowmender
								{ "n", 47409},	-- Twilight Cryomagus
								{ "n", 47410},	-- Bound Groundshaker
							},
						}),
					},
				}),
				q(27816, {	-- Personal Request
					["sourceQuests"] = {
						27815,	-- Somethin' For the Boys
						27999,	-- The Fate of the Doyles
						27812,	-- The Loyalty of Clan Mullan
					},
					["coord"] = { 57.4, 58.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46805,	-- Iain Firebeard
				}),
				q(28586, {	-- Pool Pony Rescue
					["qg"] = 49441,	-- Flashbang Rothman
					["coord"] = { 77.6, 16.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28583,	-- Krazzworks
				}),
				q(27659, {	-- Portal Overlord
					["sourceQuests"] = { 27657, 27658 },	-- Help From the Earthcaller (A/H)
					["coord"] = { 37.5, 88.6, TWILIGHT_HIGHLANDS },
					["qg"] = 46242,	-- Earthcaller Yevaa
					["description"] = "Aetharon can be found on a floating island above the ground.",
					["groups"] = {
						objective(1, {	-- 0/1 Debilitated Apexar slain
							["provider"] = { "n", 46273 },	-- Debilitated Apexar
						}),
						objective(2, {	-- 0/1 Debilitated Aetharon slain
							["provider"] = { "n", 46270 },	-- Debilitated Aetharon
						}),
						objective(3, {	-- 0/1 Debilitated Edemantus slain
							["provider"] = { "n", 46272 },	-- Debilitated Edemantus
						}),
						i(63734),	-- Portal-Sealer's Breastplate
						i(63733),	-- Deepdigger Helm
						i(63735),	-- Darklight Torch
					},
				}),
				q(28215, {	-- Potential Energy
					["sourceQuests"] = {
						27752,	-- Fight Like a Wildhammer
						27753,	-- Never Leave a Dinner Behind
						27754,	-- Dragonmaw Takedown
					},
					["coord"] = { 49.1, 29.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48014,	-- Nivvet Channelock
					["groups"] = {
						objective(1, {	-- 0/10 Twisted Elementium Loop
							["provider"] = { "i", 63285 },	-- Twisted Elementium Loop
							["cr"] = 47226,	-- Obsidian Stoneslave
						}),
					},
				}),
				q(28104, {	-- Precious Goods (A)
					["qg"] = 47592,	-- Master Mathias Shaw
					["sourceQuest"] = 28101,	-- Mathias' Command
					["coord"] = { 26.0, 38.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Caravan Cargo Key
							["provider"] = { "i", 62926 },	-- Twilight Caravan Cargo Key
							["crs"] = {
								47458,	-- Twilight Spearwarder
								47490,	-- Twilight Spearwarder
							},
						}),
						objective(2, {	-- 0/1 Twilight's Hammer Gatestone
							["providers"] = {
								{ "i", 62927 },	-- Twilight's Hammer Gatestone
								{ "o", 206674 },	-- Twilight Caravan Chest
								{ "o", 206675 },	-- Twilight Caravan Chest
							},
						}),
						i(63774),	-- Spear-Impaled Leggings
						i(63773),	-- Gatekeeper's Helm
						-- #if BEFORE MOP
						i(63772, {	-- Spearwarden's "Lucky" Charm
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28090, {	-- Precious Goods (H)
					["qg"] = 47492,	-- Patch
					["sourceQuest"] = 27576,	-- Patchwork Command
					["coord"] = { 27.3, 36.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Caravan Cargo Key
							["provider"] = { "i", 62926 },	-- Twilight Caravan Cargo Key
							["crs"] = {
								47458,	-- Twilight Spearwarder
								47490,	-- Twilight Spearwarder
							},
						}),
						objective(2, {	-- 0/1 Twilight's Hammer Gatestone
							["providers"] = {
								{ "i", 62927 },	-- Twilight's Hammer Gatestone
								{ "o", 206674 },	-- Twilight Caravan Chest
								{ "o", 206675 },	-- Twilight Caravan Chest
							},
						}),
						i(63771),	-- Crushchest Leggings
						i(63770),	-- Helm of Durable Hatred
						-- #if BEFORE MOP
						i(63769, {	-- Spearwarden's Unlucky Charm
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(28109, {	-- Pressing Forward (A)
					["sourceQuest"] = 28108,	-- If the Key Fits
					["coord"] = { 29.6, 51.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47611,	-- Highbank Lieutenant
					["groups"] = {
						i(63767),	-- Gatesmashing Gauntlets
						i(63766),	-- Commander's Stompers
						i(63768),	-- Cloak of Grand Leadership
					},
				}),
				q(28093, {	-- Pressing Forward (H)
					["qg"] = 47374,	-- Patch
					["coord"] = { 29.1, 51.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28092,	-- If The Key Fits
					["groups"] = {
						i(63764),	-- Squadron Leader's Gloves
						i(63763),	-- Gate-Breaker Treads
						i(63765),	-- Cloak of Valorous Direction
					},
				}),
				q(28147, {	-- Purple is Your Color -- aa
					["qg"] = 47723,	-- Rotgrum
					["coord"] = { 36.7, 37.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Garment Scrap
							["provider"] = { "i", 63087 },	-- Twilight Garment Scrap
							["cr"] = 47724,	-- Twilight Windwarper
						}),
					},
				}),
				q(27300, {	-- Pushing Back
					["sourceQuest"] = 27299,	-- Torn Ground
					["coord"] = { 44.0, 10.5, TWILIGHT_HIGHLANDS },
					["qg"] = 45332,	-- Earthcaller Torunscar
					["groups"] = {
						objective(1, {	-- 0/12 Drakgor cultists slain
							["providers"] = {
								{ "n", 45334},	-- Twilight Bonebreaker
								{ "n", 45359},	-- Twilight Captivator
								{ "n", 45360},	-- Omak'Tul
							},
						}),
					},
				}),
				q(28584, {	-- Quality Construction
					["qg"] = 49439,	-- Brett the Bomber
					["coord"] = { 77.6, 16.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28583,	-- Krazzworks
					["groups"] = {
						i(63858),	-- Cartographer's Chestguard
						i(63857),	-- Techie's Hard Hat
						i(63856),	-- Crazed Pilot's Gloves
					},
				}),
				q(28590, {	-- Reprisal
					["qg"] = 48993,	-- Captain Krazz
					["coord"] = { 77.6, 16.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28589,	-- Everything But the Kitchen Sink
				}),
				q(28377, {	-- Rescue at Glopgut's Hollow
					["sourceQuest"] = 28346,	-- The Bachelor
					["coord"] = { 54.4, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48364,	-- Keegan Firebeard
				}),
				q(27515, {	-- Roots'll Do 'Er
					["sourceQuest"] = 27514,	-- Bird Down! Bird Down!
					["coord"] = { 67.6, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45172,	-- Thordun Hammerblow
					["groups"] = {
						objective(1, {	-- 0/8 Thorny Stankroot
							["providers"] = {
								{ "i", 61319 },	-- Thorny Stankroot
								{ "o", 205538 },	-- Thorny Stankroot
							},
						}),
					},
				}),
				q(27744, {	-- Rune Ruination
					["sourceQuests"] = { 27720, 28885 },	-- Mr. Goldmine's Wild Ride (A/H)
					["coord"] = { 37.4, 93.2, TWILIGHT_HIGHLANDS },
					["qg"] = 46671,	-- Twilight Rune of Earth
					["groups"] = {
						objective(1, {	-- 0/1 Rune of Earth destroyed
							["provider"] = { "n", 46671 },	-- Twilight Rune of Earth
						}),
						objective(2, {	-- 0/1 Rune of Water destroyed
							["provider"] = { "o", 206314 },	-- Twilight Rune of Water
						}),
						objective(3, {	-- 0/1 Rune of Air destroyed
							["provider"] = { "o", 206312 },	-- Twilight Rune of Air
						}),
						objective(4, {	-- 0/1 Rune of Fire destroyed
							["provider"] = { "o", 206313 },	-- Twilight Rune of Fire
						}),
					},
				}),
				q(27177, {	-- Salvage Operation
					["sourceQuest"] = 28599,	-- Kurdran's Waitin'
					["coord"] = { 79.2, 78.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45170,	-- Simon Chandler
					["groups"] = {
						objective(1, {	-- 0/8 Recovered Supplies
							["providers"] = {
								{ "i", 60857 },	-- Recovered Supplies
								{ "o", 205250 },	-- Water-Logged Crate
							},
						}),
					},
				}),
				q(26798, {	-- Saurfang Will be Pleased
					["qg"] = 44024,	-- Artesh
					["coord"] = { 73.8, 53.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						26784,	-- Muddied Waters
						26788,	-- Cementing Our Victory
					},
				}),
				q(27341, {	-- Scouting the Shore (A)
					["sourceQuest"] = 27338,	-- Our Boys on the Shore
					["coord"] = { 76.7, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45169,	-- Lieutenant Emry
				}),
				q(27610, {	-- Scouting the Shore (H)
					["qg"] = 46089,	-- Rok'tar
					["coord"] = { 78.2, 62.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27607,	-- The Southern Flank
				}),
				q(26786, {	-- Securing the Beach Head
					["qg"] = 43943,	-- Garrosh Hellscream
					["coord"] = { 74.8, 53.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 26622,	-- Death to Mor'ghor
				}),
				q(27586, {	-- Shells on the Sea Shore
					["qg"] = 45983,	-- Fergus Gearchum
					["coord"] = { 70.3, 43.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27583,	-- The Northern Flank
					["groups"] = {
						objective(1, {	-- 0/8 Unexploded Mortar Shell
							["providers"] = {
								{ "i", 61634 },	-- Unexploded Mortar Shell
								{ "o", 205823 },	-- Unexploded Mortar Shell
							},
						}),
					},
				}),
				q(28175, {	-- Shining Through the Dark
					["sourceQuest"] = 28171,	-- And the Sky Streaked Red
					["coord"] = { 59.0, 69.8, TWILIGHT_HIGHLANDS },
					["qg"] = 47904,	-- Velastrasza
				}),
				q(27433, {	-- Shredderectomy
					["sourceQuest"] = 27338,	-- Our Boys on the Shore
					["coord"] = { 77.0, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45168,	-- Fargo Flintlocke
					["groups"] = {
						objective(1, {	-- 0/5 Abused Shredder Parts
							["provider"] = { "i", 61048 },	-- Abused Shredder Parts
							["crs"] = {
								45185,	-- Diamond-Blade Shredder
								46098,	-- Deathblade Shredder
							},
						}),
					},
				}),
				q(27490, {	-- SI:7 Drop
					["sourceQuest"] = 28248,	-- Victors' Point
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45669,	-- Cassius the White
				}),
				q(27468, {	-- Siege Tank Rescue
					["sourceQuest"] = 27433,	-- Shredderectomy
					["coord"] = { 77.0, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45168,	-- Fargo Flintlocke
					["groups"] = {
						i(63887),	-- Tread-Bind Spaulders
						i(63886),	-- Nature-Crush Helm
						i(63885),	-- Tank-Defending Treads
					},
				}),
				q(27642, {	-- Sifting Through The Wreckage
					["sourceQuest"] = 27640,	-- Dunwalds Don't Die
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46143,	-- Flynn Dunwald
				}),
				q(27588, {	-- Signal the Attack (A)
					["qg"] = 45668,	-- Kurdran Wildhammer
					["coord"] = { 43.3, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["sourceQuest"] = 27494,	-- Move the Mountain
				}),
				q(27498, {	-- Signal the Attack (A)
					["sourceQuest"] = 27494,	-- Move the Mountain
					["races"] = ALLIANCE_ONLY,
					["description"] = "Automatically granted.",
				}),
				q(27499, {	-- Signal the Attack (H)
					["races"] = HORDE_ONLY,
					["description"] = "Automatically granted.",
					["sourceQuest"] = 27495,	-- Move the Mountain
				}),
				q(27590, {	-- Signal the Attack (H)
					["qg"] = 45658,	-- Warlord Zaela
					["coord"] = { 45.2, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27495,	-- Move the Mountain
				}),
				q(27302, {	-- Simple Solutions
					["sourceQuest"] = 27299,	-- Torn Ground
					["coord"] = { 44.4, 11.5, TWILIGHT_HIGHLANDS },
					["qg"] = 45432,	-- Initiate Goldmine
					["groups"] = {
						objective(1, {	-- 0/10 Pyreburn Oil
							["providers"] = {
								{ "i", 60982 },	-- Pyreburn Oil
								{ "o", 205422 },	-- Barrel of Pyreburn Oil
							},
						}),
					},
				}),
				q(27200, {	-- Siren's Song
					["sourceQuest"] = 28599,	-- Kurdran's Waitin'
					["coord"] = { 75.9, 79.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45171,	-- Ephram Hardstone
					["groups"] = {
						i(63905),	-- Wax-Filled Hood
						i(63904),	-- Mast-Bound Leggings
						i(63903),	-- Song-Reflecting Spaulders
					},
				}),
				q(27787, {	-- Skullcrusher the Mountain (A)
					["qg"] = 46717,	-- The Hammer of Twilight
					["sourceQuest"] = 27784,	-- The Hammer of Twilight
					["coord"] = { 45.2, 87.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						a(ach(5320)),	-- King of the Mountain (Alliance)
						i(63708),	-- Overly Intelligent Robe
						i(63707),	-- Shaw's Finest Leggings
						i(63706),	-- Coulton's Crushers
						i(63705),	-- Treads of Terror
					},
				}),
				q(27788, {	-- Skullcrusher the Mountain (H)
					["qg"] = 46717,	-- The Hammer of Twilight
					["sourceQuest"] = 27786,	-- The Hammer of Twilight
					["coord"] = { 45.3, 87.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						h(ach(5321)),	-- King of the Mountain (Horde)
						i(63704),	-- Overly Intelligent Robes
						i(63703),	-- Garona's Finest Leggings
						i(63702),	-- Coulton's Crushers
						i(63701),	-- Treads of Terror
					},
				}),
				q(27805, {	-- Small Comforts
					["sourceQuest"] = 27621,	-- Firebeard's Patrol
					["coord"] = { 60.4, 58.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46814,	-- Cailin Longfellow
					["groups"] = {
						objective(1, {	-- 0/1 Meara's Dried Roses
							["providers"] = {
								{ "i", 62545 },	-- Meara's Dried Roses
								{ "o", 206408 },	-- Meara's Dried Roses
							},
						}),
						objective(2, {	-- 0/1 Parlan's Ivory Hammer
							["providers"] = {
								{ "i", 62546 },	-- Parlan's Ivory Hammer
								{ "o", 206411 },	-- Parlan's Ivory Hammer
							},
						}),
						objective(3, {	-- 0/1 Aprika's Doll
							["providers"] = {
								{ "i", 62543 },	-- Aprika's Doll
								{ "o", 206410 },	-- Aprika's Lost Doll
							},
						}),
						i(63880),	-- Fire-Dodged Shoulderpads
						i(63879),	-- Waistguard of Salvaged Happiness
						i(63878),	-- Legplates of Remnants
						i(63881),	-- Drape of Lost Valuables
					},
				}),
				q(27815, {	-- Somethin' for the Boys
					["sourceQuests"] = {
						27813,	-- Death Worthy of a Dragonmaw
						27814,	-- Anything We Can Get
						28234,	-- They Took Me Pants!
					},
					["coord"] = { 62.5, 48.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46850,	-- Mackay Firebeard
					["groups"] = {
						i(63867),	-- Forge-Hold Gloves
						i(63866),	-- Camp-Cleaner Chestguard
						i(63865),	-- Weapon-Bearer Bracers
					},
				}),
				q(28408, {	-- Something Bold
					["sourceQuest"] = 28407,	-- The Bachelorette
					["coord"] = { 54.3, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48367,	-- Lachlan MacGraff
					["groups"] = {
						objective(1, {	-- 0/12 Pristine Owl Feather
							["providers"] = {
								{ "i", 64317 },	-- Pristine Owl Feather
								{ "o", 207158 },	-- Pristine Owl Feather
							},
						}),
					},
				}),
				q(28409, {	-- Something Brewed
					["sourceQuest"] = 28407,	-- The Bachelorette
					["coord"] = { 54.3, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48367,	-- Lachlan MacGraff
				}),
				q(28411, {	-- Something Stewed
					["sourceQuest"] = 28407,	-- The Bachelorette
					["coord"] = { 54.3, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48367,	-- Lachlan MacGraff
					["groups"] = {
						objective(1, {	-- 0/8 Fresh Venison
							["provider"] = { "i", 64319 },	-- Fresh Venison
							["crs"] = {
								46970,	-- Highland Elk
								46971,	-- Highland Doe
							},
						}),
						objective(2, {	-- 0/5 Worg Rib
							["provider"] = { "i", 64320 },	-- Worg Rib
							["cr"] = 46153,	-- Highland Worg
						}),
					},
				}),
				q(28410, {	-- Something Stolen
					["sourceQuest"] = 28407,	-- The Bachelorette
					["coord"] = { 54.3, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48367,	-- Lachlan MacGraff
					["groups"] = {
						objective(1, {	-- 0/1 Fine Dark Cloth
							["providers"] = {
								{ "i", 64318 },	-- Fine Dark Cloth
								{ "o", 207162 },	-- Crate of Fine Cloth
							},
						}),
					},
				}),
				q(27660, {	-- Spirit of the Loch
					["sourceQuests"] = { 27657, 27658 },	-- Help From the Earthcaller (A/H)
					["coord"] = { 37.5, 88.6, TWILIGHT_HIGHLANDS },
					["qg"] = 46242,	-- Earthcaller Yevaa
				}),
				q(26539, {	-- Stalled Negotiations
					["qg"] = 42978,	-- Admiral Stonefist
					["sourceQuest"] = 26388,	-- Twilight Skies (2/2)
					["coord"] = { 82.4, 49.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27808, {	-- Stubborn as a Doyle
					["sourceQuest"] = 27806,	-- Honorable Bearing
					["coord"] = { 57.4, 58.1, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46805,	-- Iain Firebeard
				}),
				q(28280, {	-- Tear Them From the Sky!
					["sourceQuests"] = {
						28212,	-- Hot Stuff
						28215,	-- Potential Energy
						28211,	-- Tempered in Elemental Flame
					},
					["coord"] = { 49.1, 29.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48174,	-- Nivvet Channelock
					["groups"] = {
						objective(1, {	-- 0/8 Dragonmaw Black Drake slain
							["provider"] = { "n", 48197 },	-- Dragonmaw Black Drake
						}),
					},
				}),
				q(28211, {	-- Tempered in Elemental Flame
					["sourceQuests"] = {
						27752,	-- Fight Like a Wildhammer
						27753,	-- Never Leave a Dinner Behind
						27754,	-- Dragonmaw Takedown
					},
					["coord"] = { 49.1, 29.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48014,	-- Nivvet Channelock
					["groups"] = {
						objective(1, {	-- 0/8 Tempered Spear
							["providers"] = {
								{ "i", 63282 },	-- Tempered Spear
								{ "o", 206952 },	-- Tempered Spear
							},
						}),
					},
				}),
				q(28346, {	-- The Bachelor
					["sourceQuest"] = 28294,	-- The Kirthaven Summit
					["coord"] = { 54.8, 17.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48365,	-- Kurdran Wildhammer
				}),
				q(28407, {	-- The Bachelorette
					["sourceQuests"] = {
						28378,	-- Find Fanny
						28379,	-- Ogre Bashin'
					},
					["coord"] = { 38.1, 34.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48472,	-- Colin Thundermar
				}),
				q(27866, {	-- The Crucible of Carnage: Calder's Creation!
					["sourceQuests"] = {
						27864,	-- The Crucible of Carnage: The Deadly Dragonmaw!
						27865,	-- The Crucible of Carnage: The Wayward Wildhammer!
					},
					["coord"] = { 50.6, 58.3, TWILIGHT_HIGHLANDS },
					["qg"] = 46935,	-- Gurgthock
				}),
				q(27863, {	-- The Crucible of Carnage: The Bloodeye Bruiser!
					["coord"] = { 50.7, 58.2, TWILIGHT_HIGHLANDS },
					["qg"] = 46935,	-- Gurgthock
					["sourceQuest"] = 28038,	-- Blood in the Highlands
				}),
				q(27864, {	-- The Crucible of Carnage: The Deadly Dragonmaw!
					["sourceQuest"] = 27863,	-- The Crucible of Carnage: The Bloodeye Bruiser!
					["coord"] = { 50.7, 58.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46935,	-- Gurgthock
				}),
				q(27867, {	-- The Crucible of Carnage: The Earl of Evisceration!
					["sourceQuest"] = 27866,	-- The Crucible of Carnage: Calder's Creation!
					["coord"] = { 50.6, 58.3, TWILIGHT_HIGHLANDS },
					["qg"] = 46935,	-- Gurgthock
				}),
				q(27868, {	-- The Crucible of Carnage: The Twilight Terror!
					["sourceQuest"] = 27867,	-- The Crucible of Carnage: The Earl of Evisceration!
					["coord"] = { 50.6, 58.3, TWILIGHT_HIGHLANDS },
					["qg"] = 46935,	-- Gurgthock
					["groups"] = {
						i(63790),	-- Gurgthock's Garish Gorebat
						i(63792),	-- Laquered Lung-Leak Longknife
						i(63788),	-- Calder's Coated Carrion Carver
						i(63787),	-- Oversized Oblique Ogre Obliterator
						i(63789),	-- Very Manly Staff
						i(63791),	-- Big Bendy Blasting Bow
					},
				}),
				q(27865, {	-- The Crucible of Carnage: The Wayward Wildhammer!
					["qg"] = 46935,	-- Gurgthock
					["coord"] = { 50.7, 58.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27863,	-- The Crucible of Carnage: The Bloodeye Bruiser!
				}),
				q(28123, {	-- The Demon Chain
					["qg"] = 47417,	-- Zaela
					["coord"] = { 54.3, 43.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28043,	-- How to Maim Your Dragon
					["groups"] = {
						objective(1, {	-- 0/1 The Demon Chain
							["providers"] = {
								{ "i", 63036 },	-- The Demon Chain
								{ "o", 206724 },	-- The Demon Chain
							},
						}),
					},
				}),
				q(27695, {	-- The Elementium Axe (A)
					["sourceQuests"] = {
						27654,	-- Bring the Hammer Down
						27652,	-- Dark Assassins
					},
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
					["groups"] = {
						objective(1, {	-- 0/1 The Elementium Axe
							["provider"] = { "i", 62230 },	-- The Elementium Axe
							["cr"] = 46399,	-- Blindeye the Guardian
						}),
					},
				}),
				q(27696, {	-- The Elementium Axe (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27655,	-- Bring the Hammer Down
						27653,	-- Dark Assassins
					},
					["groups"] = {
						objective(1, {	-- 0/1 The Elementium Axe
							["provider"] = { "i", 62230 },	-- The Elementium Axe
							["cr"] = 46399,	-- Blindeye the Guardian
						}),
					},
				}),
				q(28243, {	-- The Eyes Have It (A)
					["sourceQuest"] = 28242,	-- We All Must Sacrifice
					["coord"] = { 57.9, 33.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 206569 },	-- Eye of Twilight
				}),
				q(27954, {	-- The Eyes Have It (H)
					["coord"] = { 57.9, 33.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 206569 },	-- Eye of Twilight
					["sourceQuest"] = 27951,	-- We All Must Sacrifice
				}),
				q(27999, {	-- The Fate of the Doyles
					["sourceQuest"] = 27808,	-- Stubborn as a Doyle
					["coord"] = { 61.4, 67.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47317,	-- Keeland Doyle
				}),
				q(27810, {	-- The Fighting Spirit
					["sourceQuest"] = 27807,	-- Clan Mullan
					["coord"] = { 50.7, 60.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46811,	-- Duglas Mullan
					["groups"] = {
						objective(1, {	-- 0/1 Mullan Gryphon Rider defeated
							["provider"] = { "n", 46813 },	-- Mullan Gryphon Rider
						}),
					},
				}),
				q(28097, {	-- The Gates of Grim Batol
					["qg"] = 47492,	-- Patch
					["coord"] = { 27.3, 36.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						28091,	-- Easy Pickings
						28090,	-- Precious Goods
					},
				}),
				q(27784, {	-- The Hammer of Twilight (A)
					["sourceQuest"] = 27782,	-- Mathias Needs You
					["coord"] = { 36.3, 66.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45796,	-- Master Mathias Shaw
				}),
				q(27786, {	-- The Hammer of Twilight (H)
					["qg"] = 45675,	-- Garona Halforcen
					["coord"] = { 36.3, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27783,	-- Garona Needs You
				}),
				q(28294, {	-- The Kirthaven Summit
					["sourceQuest"] = 28282,	-- Narkrall, the Drake-Tamer
					["coord"] = { 49.0, 29.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48173,	-- Colin Thundermar
				}),
				q(28233, {	-- The Lost Brother
					["sourceQuest"] = 27809,	-- Firebeard Bellows
					["coord"] = { 62.5, 48.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48046,	-- Ella Forgehammer
				}),
				q(27812, {	-- The Loyalty of Clan Mullan
					["sourceQuests"] = {
						27810,	-- The Fighting Spirit
						27811	-- The Scent of Battle
					},
					["coord"] = { 50.7, 60.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46811,	-- Duglas Mullan
					["groups"] = {
						i(63873),	-- Clan-Heart Shoulders
						i(63872),	-- Loyalty-Seeker Bracers
						i(63871),	-- Stoutwaist Girdle
					},
				}),
				q(27376, {	-- The Maw of Iso'rath
					["sourceQuests"] = {
						27300,	-- Pushing Back
						27302,	-- Simple Solutions
						27303,	-- Mercy for the Bound
					},
					["coord"] = { 44.0, 10.5, TWILIGHT_HIGHLANDS },
					["qg"] = 45332,	-- Earthcaller Torunscar
				}),
				q(27374, {	-- The Maw of Madness
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
					["coord"] = { 55.2, 17.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 49374,	-- Lachlan MacGraff
					["isBreadcrumb"] = true,
				}),
				q(27583, {	-- The Northern Flank
					["sourceQuest"] = 26840,	-- Return to the Highlands
					["qg"] = 44169,	-- Zaela
					["coord"] = { 75.3, 54.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27804, {	-- The Only Homes We Have
					["sourceQuest"] = 27621,	-- Firebeard's Patrol
					["coord"] = { 60.1, 57.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
				}),
				q(27538, {	-- The Perfect Poultice
					["sourceQuest"] = 27516,	-- Wings Over Highbank
					["coord"] = { 79.2, 78.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45172,	-- Thordun Hammerblow
					["groups"] = {
						objective(1, {	-- 0/10 Verrall River Muck
							["providers"] = {
								{ "i", 60337 },	-- Verrall River Muck
								{ "o", 204880 },	-- Verrall River Muck
							},
						}),
					},
				}),
				q(27811, {	-- The Scent of Battle
					["sourceQuest"] = 27807,	-- Clan Mullan
					["coord"] = { 50.8, 60.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46812,	-- Edana Mullan
				}),
				q(27607, {	-- The Southern Flank
					["sourceQuest"] = 26840,	-- Return to the Highlands
					["qg"] = 44169,	-- Zaela
					["coord"] = { 75.3, 54.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(27379, {	-- The Terrors of Iso'rath
					["sourceQuest"] = 27378,	-- The Worldbreaker
					["coord"] = { 48.7, 16.6, TWILIGHT_HIGHLANDS },
					["qg"] = 48059,	-- Earthcaller Yevaa
				}),
				q(27545, {	-- The Way is Open
					["sourceQuest"] = 27537,	-- Any Portal in a Storm
					["coord"] = { 79.4, 77.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45173,	-- Talaa
				}),
				q(27375, {	-- The Weeping Wound
					["qg"] = 46324,	-- Mallia
					["coord"] = { 53.2, 42.7, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27945,	-- Paint it Black
					["isBreadcrumb"] = true,
				}),
				q(27378, {	-- The Worldbreaker
					["sourceQuest"] = 27377,	-- Devoured
					["coord"] = { 33.3, 50.3, 276 },	-- in The Maelstrom
					["qg"] = 48051,	-- Thrall
				}),
				q(28234, {	-- They Took Me Pants!
					["sourceQuest"] = 28233,	-- The Lost Brother
					["coord"] = { 63.1, 47.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48053,	-- Bahrum Forgehammer
					["groups"] = {
						objective(1, {	-- 0/1 Bahrum's Pants
							["provider"] = { "i", 63374 },	-- Bahrum's Pants
							["cr"] = 48102,	-- Gorosh the Pant Stealer
						}),
					},
				}),
				q(28166, {	-- Thog's Nightlight
					["qg"] = 47751,	-- Buunu
					["coord"] = { 36.3, 37.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28149,	-- Whispers in the Wind
					["groups"] = {
						objective(1, {	-- 0/1 The Light of Souls
							["providers"] = {
								{ "i", 63107 },	-- The Light of Souls
								{ "o", 206839 },	-- The Light of Souls
							},
						}),
					},
				}),
				q(27299, {	-- Torn Ground
					["sourceQuests"] = {
						27374,	-- The Maw of Madness (A)
						27375,	-- The Weeping Wound (H)
					},
					["coord"] = { 44.0, 10.5, TWILIGHT_HIGHLANDS },
					["qg"] = 45332,	-- Earthcaller Torunscar
					["groups"] = {
						objective(1, {	-- 0/3 Tentacle of Iso'rath slain
							["provider"] = { "n", 45394 },	-- Tentacle of Iso'rath
						}),
					},
				}),
				q(27747, {	-- Total War
					["qg"] = 46318,	-- Harkkan
					["coord"] = { 55.1, 43.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27690,	-- Narkrall, the Drake-Tamer
					["groups"] = {
						i(63816),	-- Alefire Bracers
						i(63815),	-- Wound-Binder Chestguard
						i(63817),	-- Keg Smasher
					},
				}),
				q(28872, {	-- Total War
					["qg"] = 46318,	-- Harkkan
					["coord"] = { 55.1, 43.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28133,	-- Fury Unbound (TODO: Verify sourcequest)
				}),
				q(28238, {	-- Twilight Shores (1/2)
					["qgs"] = {
						1750,	-- Grand Admiral Jes-Tereth
						29611,	-- King Varian Wrynn
						107574,	-- Anduin Wrynn
					},
					["sourceQuest"] = 28716,	-- Hero's Call: Twilight Highlands!
					["coord"] = { 85.9, 32.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(28832, {	-- Twilight Shores (2/2)
					["qg"] = 44806,	-- Fargo Flintlocke
					["sourceQuest"] = 28238,	-- Twilight Shores (1/2)
					["coord"] = { 26.2, 47.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27662, {	-- Unbinding
					["sourceQuests"] = { 27657, 27658 },	-- Help From the Earthcaller (A/H)
					["coord"] = { 37.5, 88.6, TWILIGHT_HIGHLANDS },
					["qg"] = 46243,	-- Initiate Goldmine
					["groups"] = {
						objective(1, {	-- 0/10 Enslaved elementals freed
							["providers"] = {
								{ "n", 46327},	-- Enslaved Inferno
								{ "n", 46328},	-- Enslaved Tempest
								{ "n", 46329},	-- Enslaved Waterspout
							},
						}),
					},
				}),
				q(27301, {	-- Unbroken
					["sourceQuest"] = 27299,	-- Torn Ground
					["coord"] = { 43.9, 11.2, TWILIGHT_HIGHLANDS },
					["qg"] = 45391,	-- Earthmender Duarn
				}),
				q(27502, {	-- Up to the Citadel (A)
					["sourceQuests"] = {
						27500,	-- Four Heads are Better Than None (Automatically granted)
						27608,	-- Four Heads are Better Than None (Cassius the White)
					},
					["coord"] = { 43.4, 57.3, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45669,	-- Cassius the White
				}),
				q(27503, {	-- Up to the Citadel (H)
					["qg"] = 45665,	-- Lady Cozwynn
					["coord"] = { 45.3, 75.3, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuests"] = {
						27501,	-- Four Heads are Better than None (Automatically granted)
						27609,	-- Four Heads are Better than None (Lady Cozwynn)
					},
				}),
				q(28248, {	-- Victors' Point
					["sourceQuest"] = 28247,	-- Last of Her Kind
					["coord"] = { 59.0, 69.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 47902,	-- Lirastrasza
				}),
				q(27750, {	-- War Forage
					["qg"] = 46319,	-- Griff
					["coord"] = { 53.8, 43.2, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27690,	-- Narkrall, the Drake-Tamer
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer Food Stores
							["providers"] = {
								{ "i", 62324 },	-- Wildhammer Food Stores
								{ "o", 206289 },	-- Wildhammer Food Stores
								{ "o", 206290 },	-- Wildhammer Food Stores
								{ "o", 206291 },	-- Wildhammer Food Stores
							},
						}),
					},
				}),
				q(28863, {	-- Warlord Halthar is Back
					["qg"] = 49386,	-- Craw MacGraw
					["coord"] = { 48.6, 30.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["sourceQuest"] = 28655,	-- Wild, Wild, Wildhammer Wedding
					["groups"] = {
						objective(1, {	-- 0/1 Warlord Halthar slain
							["provider"] = { "n", 46493 },	-- Warlord Halthar
						}),
					},
				}),
				q(27485, {	-- Warm Welcome (A)
					["sourceQuest"] = 27380,	-- Nightmare
					["coord"] = { 44.0, 10.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48265,	-- Lauriel Trueblade
					["groups"] = {
						objective(1, {	-- 0/1 Meet with Lirastrasza
							["provider"] = { "n", 45708 },	-- Lirastrasza
						}),
					},
				}),
				q(27486, {	-- Warm Welcome (H)
					["qg"] = 48264,	-- Golluck Rockfist
					["coord"] = { 44.0, 10.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27380,	-- Nightmare
					["groups"] = {
						objective(1, {	-- 0/1 Meet with Lirastrasza
							["provider"] = { "n", 45708 },	-- Lirastrasza
						}),
					},
				}),
				q(27719, {	-- Water of Life (A)
					["sourceQuest"] = 27661,	-- Fire the Cannon
					["coord"] = { 27.7, 63.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46413,	-- Countess Verrall
					["groups"] = {
						i(63719),	-- Soulgrowth Spaulders
						i(63718),	-- Grips of the Damned Mind
						i(63720),	-- Mindsear Shanker
					},
				}),
				q(27798, {	-- Water of Life (H)
					["qg"] = 46413,	-- Countess Verrall
					["coord"] = { 27.6, 63.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 27661,	-- Fire the Cannon
					["groups"] = {
						i(63716),	-- Soulgrowth Spaulders
						i(63715),	-- Grips of the Damned Mind
						i(63717),	-- Mindsear Shanker
					},
				}),
				q(28242, {	-- We All Must Sacrifice (A)
					["sourceQuest"] = 28241,	-- A Vision of Twilight
					["coord"] = { 57.9, 33.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["provider"] = { "o", 206569 },	-- Eye of Twilight
					["groups"] = {
						objective(1, {	-- 0/10 Shaman of the Black slain
							["provider"] = { "n", 46322 },	-- Shaman of the Black
						}),
					},
				}),
				q(27951, {	-- We All Must Sacrifice (H)
					["coord"] = { 57.9, 33.5, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["provider"] = { "o", 206569 },	-- Eye of Twilight
					["sourceQuest"] = 27947,	-- A Vision of Twilight
					["groups"] = {
						objective(1, {	-- 0/10 Shaman of the Black slain
							["provider"] = { "n", 46322 },	-- Shaman of the Black
						}),
					},
				}),
				q(27803, {	-- Welcome Relief
					["sourceQuest"] = 27621,	-- Firebeard's Patrol
					["coord"] = { 60.1, 57.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46804,	-- Keegan Firebeard
					["groups"] = {
						objective(1, {	-- 0/8 Subjugated Firestarter slain
							["provider"] = { "n", 46838 },	-- Subjugated Firestarter
						}),
					},
				}),
				q(28596, {	-- Welcome to Highbank!
					["qg"] = 49022,	-- Lieutenant Fawkes
					["sourceQuest"] = 28832,	-- Twilight Shores (2/2)
					["coord"] = { 80.9, 79.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Horde Attackers slain
							["providers"] = {
								{ "n", 49008},	-- Axebite Infantry
								{ "n", 49009},	-- Bilgewater Gunman
							},
						}),
					},
				}),
				q(27641, {	-- While Meeting The Family
					["sourceQuest"] = 27640,	-- Dunwalds Don't Die
					["coord"] = { 45.9, 65.4, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 46143,	-- Flynn Dunwald
				}),
				q(27743, {	-- While We're Here
					["sourceQuests"] = { 27720, 28885 },	-- Mr. Goldmine's Wild Ride (A/H)
					["coord"] = { 38.2, 93.9, TWILIGHT_HIGHLANDS },
					["qg"] = 46513,	-- Initiate Goldmine
					["groups"] = {
						objective(1, {	-- 0/12 Elementium Depths cultists slain
							["providers"] = {
								{ "n", 46579},	-- Depths Overseer
								{ "n", 46578},	-- Twilight Miner
								{ "n", 46610},	-- Twilight Miner
							},
						}),
					},
				}),
				q(28655, {	-- Wild, Wild, Wildhammer Wedding
					["sourceQuests"] = {
						28408,	-- Something Bold
						28409,	-- Something Brewed
						28411,	-- Something Stewed
						28410,	-- Something Stolen
					},
					["coord"] = { 54.2, 16.7, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48368,	-- Grundy MacGraff
				}),
				q(28149, {	-- Whispers in the Wind
					["qg"] = 47751,	-- Buunu
					["coord"] = { 36.3, 37.9, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28133,	-- Fury Unbound
				}),
				q(28588, {	-- Wildhammer Infestation
					["qg"] = 48993,	-- Captain Krazz
					["coord"] = { 77.6, 16.6, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sourceQuest"] = 28583,	-- Krazzworks
					["groups"] = {
						objective(1, {	-- 0/10 Wildhammer Raider slain
							["providers"] = {
								{ "n", 49628},	-- Wildhammer Raider
								{ "n", 49632},	-- Wildhammer Raider
							},
						}),
					},
				}),
				q(27516, {	-- Wings Over Highbank
					["sourceQuest"] = 27515,	-- Roots'll Do 'Er
					["coord"] = { 67.6, 65.9, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 45172,	-- Thordun Hammerblow
				}),
				q(28413, {	-- Words and Music By...
					["sourceQuest"] = 28407,	-- The Bachelorette
					["coord"] = { 54.6, 17.5, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["qg"] = 48366,	-- Russell Brower
				}),
				q(26619, {	-- You Say You Want a Revolution
					["sourceQuest"] = 26608,	-- Negotiations Terminated
					["qg"] = 43193,	-- Warlord Krogg
					["coord"] = { 82.4, 49.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
				}),
				q(56371, {	-- Young Twilight Scale
					["qg"] = 169346,	-- Young Twilight Scale
					["timeline"] = { ADDED_8_2_0 },
				}),
			}),
			n(RARES, {
				n(50085, {	-- Overlord Sunderfury
					["coord"] = { 58.0, 33.8, TWILIGHT_HIGHLANDS },
					["groups"] = {
						i(67244),	-- Sunderfury's Sundries
					},
				}),
				n(50086, {	-- Tarvus the Vile
					["coord"] = { 51.0, 82.4, TWILIGHT_HIGHLANDS },
					["groups"] = {
						i(67245),	-- Tarvus's Poison-Scarred Boots
					},
				}),
			}),
			n(VENDORS, {
				n(50146, {	-- Agatian Fallanos <Shard Trader>
					["coord"] = { 76.8, 49.4, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3346},	-- Kithas <Enchanting Supplies>
						{"select", "itemID", 67312},	-- Formula: Magic Lamp (RECIPE!)
						{"exclude","itemID",6343},	-- Formula: Enchant Chest - Lesser Mana
					},
				}),
				n(50433, {	-- Aristaleon Sunweaver <Cloth Trader>
					["coord"] = { 75.3, 50.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3364},	-- Borya <Tailoring Supplies>
					},
				}),
				n(49605, {	-- Brian Terrel <Bowyer>
					["coord"] = { 43.8, 57.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44643),	-- Dalaran Bow
						i(44637),	-- Dalaran Crossbow
						i(11308, {	-- Sylvan Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(50382, {	-- Brundall Chiselgut <Metal Trader>
					["coord"] = { 79.0, 76.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 4.3.0
					["sym"] = {{ "sub", "common_recipes_vendor", 55684 }},	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					-- #endif
				}),
				-- #if BEFORE 6.0.2
				n(49703, {	-- Casandra Downs <Alchemy & Inscription Supplies>
					["coord"] = { 78.6, 76.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(68810, {	-- Technique: Glyph of Colossus Smash
							["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
						}),
					},
				}),
				-- #endif
				n(49386, {	-- Craw MacGraw <Wildhammer Clan Quartermaster>
					["coord"] = { 48.6, 30.6, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_WILDHAMMER_CLAN, {
						{	-- Neutral
						},
						{	-- Friendly
							i(65908),	-- Tabard of the Wildhammer Clan
						},
						{	-- Honored
							i(62423),	-- Helm of the Skyborne
							i(62426),	-- Mantle of Wild Feathers
							i(62424),	-- Gloves of Aetherial Rumors
							i(62425),	-- Swiftflight Leggings
						},
						{	-- Revered
							i(62428),	-- Crown of Wings
							i(62429),	-- Windhome Helm
							i(62430),	-- Gryphon Talon Gauntlets
							i(62427),	-- Band of Singing Grass
							i(62422, {	-- Arcanum of the Wildhammer
								["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
								["filterID"] = CONSUMABLES,
							}),
							i(68767, {	-- Arcanum of the Wildhammer
								["filterID"] = CONSUMABLES,
							}),
						},
						{	-- Exalted
							i(62434),	-- Lightning Flash Pendant
							i(62433),	-- Stormbolt Gloves
							i(62431),	-- Belt of the Untamed
							i(62432),	-- Gryphon Rider's Boots
						},
					}),
				}),
				n(49387, {	-- Grot Deathblow <Dragonmaw Clan Quartermaster>
					["coord"] = { 53.8, 42.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_DRAGONMAW_CLAN, {
						{	-- Neutral
						},
						{	-- Friendly
							i(65909),	-- Tabard of the Dragonmaw Clan
						},
						{	-- Honored
							i(62407),	-- Helm of the Brown Lands
							i(62404),	-- Spaulders of the Endless Plains
							i(62406),	-- Bone Fever Gloves
							i(62405),	-- Leggings of the Impenitent
						},
						{	-- Revered
							i(62416),	-- Yellow Smoke Pendant
							i(62417),	-- Liar's Handwraps
							i(62420),	-- Withered Dream Belt
							i(62418),	-- Boots of Sullen Rock
							i(62368, {	-- Arcanum of the Dragonmaw
								["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
								["filterID"] = CONSUMABLES,
							}),
							i(68763, {	-- Arcanum of the Dragonmaw
								["filterID"] = CONSUMABLES,
							}),
						},
						{	-- Exalted
							i(62410),	-- Grinning Fang Helm
							i(62409),	-- Snarling Helm
							i(62408),	-- Gauntlets of Rattling Bones
							i(62415),	-- Band of Lamentation
						},
					}),
				}),
				n(49549, {	-- Jodan <Dragonmaw Armorsmith>
					["coord"] = { 77.2, 52.8, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						62260,	-- Grunts Chain Belt
						62261,	-- Grunts Chain Boots
						62262,	-- Grunts Chain Bracers
						62266,	-- Grunts Chain Circlet
						62263,	-- Grunts Chain Gloves
						62264,	-- Grunts Chain Leggings
						62265,	-- Grunts Chain Vest
						62253,	-- Grunts Plate Armor
						62254,	-- Grunts Plate Belt
						62255,	-- Grunts Plate Boots
						62256,	-- Grunts Plate Bracers
						62257,	-- Grunts Plate Gloves
						62259,	-- Grunts Plate Helm
						62258,	-- Grunts Plate Leggings
						17190,	-- Ornate Buckler
					}},
				}),
				n(50375, {	-- Kuldar Steeltooth <Metal Trader>
					["coord"] = { 77.2, 53.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3356},	-- Sumi <Blacksmithing Supplies>
					},
				}),
				n(50381, {	-- Misty Merriweather <Hide & Leather Trader>
					["coord"] = { 78.6, 76.2, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3366},	-- Tamar <Leatherworking Supplies>
					},
				}),
				n(50386, {	-- Sal Ferraga <Cloth Trader>
					["coord"] = { 78.6, 76.8, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3364},	-- Borya <Tailoring Supplies>
					},
				}),
				n(50134, {	-- Senthii <Shard Trader>
					["coord"] = { 78.6, 77.0, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3346},	-- Kithas <Enchanting Supplies>
						{"select", "itemID", 67312},	-- Formula: Magic Lamp (RECIPE!)
						{"exclude","itemID",
							6343,	-- Formula: Enchant Chest - Lesser Mana
							67308,	-- Formula: Enchanted Lantern (RECIPE!)
						},
					},
				}),
				n(50172, {	-- Threm Blackscalp <Hide & Leather Trader>
					["coord"] = { 75.2, 50.0, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3366},	-- Tamar <Leatherworking Supplies>
					},
				}),
				-- #if BEFORE 6.0.2
				n(50248, {	-- Una Kobuna <Alchemy and Inscription Supplies>
					["coord"] = { 76.6, 49.4, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(68810, {	-- Technique: Glyph of Colossus Smash
							["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
						}),
					},
				}),
				-- #endif
			}),
			n(ZONE_DROPS, {
				i(169346, {	-- Young Twilight Scale
					["crs"] = { 154803 },	-- Twilight Whelpling
					["timeline"] = { ADDED_8_2_0 },
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(EASTERN_KINGDOMS, {
		m(TWILIGHT_HIGHLANDS, {
			n(QUESTS, {
				q(28106),	-- Twilight Highlands - triggers when the Grim Batol gates are broken open during "If The Key Fits"
			}),
		}),
	}),
})));