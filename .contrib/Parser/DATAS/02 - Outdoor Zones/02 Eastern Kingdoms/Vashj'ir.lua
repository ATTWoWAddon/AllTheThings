---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
-- Crieve NOTE: I have my eyes on this file. I don't like how disconnected everything is. Sorta feels like the subzones are pointless. and only make it so that parts and pieces are split up unnecessarily. When Cata Classic comes out I'll think about rearranging things.
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(VASHJIR, {
		["lore"] = "Vashj'ir is an underwater zone. Players receive underwater breathing, swim speed buffs, and eventually a sea horse mount early on in questing to make transportation easier. Players learn about the history of the Highborne, as this city was home to Lady Vashj before the Sundering. Players learn about the threat of Ozumat, culminating in a battle between Neptulon and the naga.",
		["icon"] = 409551,
		["timeline"] = { ADDED_4_0_3 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5318, {	-- 20,000 Leagues Under the Sea (A)
					["sourceQuests"] = {
						26193,	-- Defending the Rift (A)
						-- TODO: There are a lot more source quests than just this, but no good info on what they are
					},
					["races"] = ALLIANCE_ONLY,
				}),
				ach(5319, {	-- 20,000 Leagues Under the Sea (H)
					["sourceQuests"] = {
						26194,	-- Defending the Rift (H)
						-- TODO: There are a lot more source quests than just this, but no good info on what they are
					},
					["races"] = HORDE_ONLY,
				}),
				explorationAch(4825, {	-- Explore Vashj'ir
					["maps"] = {
						VASHJIR_KELPTHAR_FOREST,
						VASHJIR_ABYSSAL_DEPTHS,
						VASHJIR_SHIMMERING_EXPANSE,
					},
				}),
				ach(4975, {	-- From Hell's Heart I Stab at Thee
					["cr"] = 40728,	-- Whale Shark
					["maps"] = {
						VASHJIR_KELPTHAR_FOREST,
						VASHJIR_ABYSSAL_DEPTHS,
						VASHJIR_SHIMMERING_EXPANSE,
					},
				}),
				ach(4869, {	-- Sinking into Vashj'ir (A)
					["races"] = ALLIANCE_ONLY,
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25558,	-- All or Nothing
						25638,	-- A Desperate Plea
						25743,	-- Decisions, Decisions
						25888,	-- Decompression
						27708,	-- The Warden's Time
						25885,	-- What? What? In My Gut...?
						25456,	-- Back in One Piece
						25922,	-- Waking the Beast
						25626,	-- Visions of the Past: Rise from the Deep
						25987,	-- Put It On
						26143,	-- All That Rises
						26193,	-- Defending the Rift
					},
					-- #endif
				}),
				ach(4982, {	-- Sinking into Vashj'ir (H)
					["races"] = HORDE_ONLY,
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25949,	-- Blood and Thunder!
						25638,	-- A Desperate Plea
						25743,	-- Decisions, Decisions
						26008,	-- Decompression
						27708,	-- The Warden's Time
						26040,	-- What? What? In My Gut...?
						25456,	-- Back in One Piece
						25996,	-- Waking the Beast
						26135,	-- Visions of the Past: Rise from the Deep
						25988,	-- Put It On
						26143,	-- All That Rises
						26194,	-- Defending the Rift
					},
					-- #endif
				}),
				achWithRep(4881, FACTION_THE_EARTHEN_RING, {	-- The Earthen Ring
					["maps"] = {
						VASHJIR_ABYSSAL_DEPTHS,
						VASHJIR_KELPTHAR_FOREST,
						VASHJIR_SHIMMERING_EXPANSE,
					},
				}),
			}),
			n(FACTIONS, {
				faction(FACTION_THE_EARTHEN_RING, {	-- The Earthen Ring
					["provider"] = { "i", 65905 },	-- Tabard of the Earthen Ring
					["maps"] = {
						VASHJIR_ABYSSAL_DEPTHS,
						VASHJIR_KELPTHAR_FOREST,
						VASHJIR_SHIMMERING_EXPANSE,
					},
				}),
			}),
			m(VASHJIR_ABYSSAL_DEPTHS, {
				["lore"] = "Abyssal Depths is the last, and darkest zone, players reach when questing in Vash'jir. They are home to the ancient god L'ghorek, which the Twilight Hammer is siphoning energy from to be prepared when fighting Neptulon in the future.",
				["icon"] = 409551,
				["groups"] = {
					explorationHeader({
						exploration(5135),	-- Abandoned Reef
						exploration(5047),	-- Abyssal Breach
						exploration(4976),	-- Darkbreak Cove
						exploration(5101),	-- Deepfin Ridge
						exploration(4977),	-- Korthun's End
						exploration(4971),	-- L'ghorek
						exploration(4975),	-- Tenebrous Cavern
						exploration(4974),	-- Underlight Canyon
					}),
					n(FLIGHT_PATHS, {
						fp(524, {	-- Daybreak Cove, Vashj'ir
							["cr"] = 40866,	-- Swift Seahorse <Flight Master>
							["coord"] = { 56.8, 75.4, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
						}),
						fp(526, {	-- Tenebrous Cavern, Vashj'ir
							["cr"] = 40873,	-- Swift Seahorse <Flight Master>
							["coord"] = { 53.8, 59.6, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
						}),
					}),
					n(QUESTS, {
						q(26017, {	-- A Lure
							["qg"] = 41910,	-- Humphrey Digsong
							["sourceQuest"] = 26015,	-- Phosphora Hunting
							["coord"] = { 47.3, 49.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(56572),	-- Phosphora Fedora
							},
						}),
						q(25977, {	-- A Standard Day for Azrajar (A)
							["qg"] = 41667,	-- Lieutenant "Foxy" Topper
							["sourceQuest"] = 26080,	-- One Last Favor
							["coord"] = { 55.4, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Banner planted in Fathom-Caller Azrajar's corpse
									["providers"] = {
										{ "n", 41590},	-- Fathom-Caller Azrajar
										{ "i", 56250},	-- Alliance Standard
									},
								}),
								i(59639),	-- Spikemender Shoulderplates
								i(59638),	-- Necklace of the Furious Standard
								-- #if BEFORE MOP
								i(59640, {	-- Fetish of Azrajar
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								-- #endif
							},
						}),
						q(25980, {	-- A Standard Day for Azrajar (H)
							["qg"] = 41670,	-- Sergeant Gertrude
							["sourceQuest"] = 26092,	-- Orako's Report
							["coord"] = { 51.4, 60.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Banner planted in Fathom-Caller Azrajar's corpse
									["providers"] = {
										{ "n", 41590},	-- Fathom-Caller Azrajar
										{ "i", 56255},	-- Horde Standard
									},
								}),
								i(59636),	-- Spikemender Shoulderplates
								i(59635),	-- Necklace of the Furious Standard
								-- #if BEFORE MOP
								i(59637, {	-- Fetish of Azrajar
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								-- #endif
							},
						}),
						q(26143, {	-- All that Rises
							["qg"] = 42197,	-- L'ghorek
							["sourceQuest"] = 26154,	-- Twilight Extermination
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/1 Hallazeal the Ascended slain
									["provider"] = { "n", 41659 },	-- Hallazeal the Ascended
								}),
								i(59609),	-- Bracers of the Vanquished God
								i(59608),	-- Chestguard of the Expired Duty
								i(59610),	-- Bottled Neurons
								i(59607),	-- Hallazeal's Demise
							},
						}),
						q(26142, {	-- Ascend No More!
							["qg"] = 42197,	-- L'ghorek
							["sourceQuest"] = 26140,	-- Communing with the Ancient
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/5 Ancient Conduits destroyed
									["provider"] = { "o", 203699 },	-- Ancient Conduit
								}),
							},
						}),
						q(26181, {	-- Back to Darkbreak Cove
							["qg"] = 42197,	-- L'ghorek
							["sourceQuest"] = 26143,	-- All That Rises
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(26182, {	-- Back to Tenebrous Cavern
							["qg"] = 42197,	-- L'ghorek
							["sourceQuest"] = 26143,	-- All That Rises
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(26103, {	-- Bio-Fuel
							["qg"] = 41666,	-- Engineer Hexascrub
							["sourceQuest"] = 26219,	-- Full Circle (A)
							["coord"] = { 55.5, 72.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(26105, {	-- Claim Korthun's End
							["qg"] = 42115,	-- Hellscream Seadog
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Hellscream Seadog slain
									["provider"] = { "n", 42115 },	-- Hellscream Seadog
								}),
							},
						}),
						q(26121, {	-- Claim Korthun's End
							["qg"] = 41665,	-- Jorlan Trueblade
							["coord"] = { 54.4, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["description"] = "This version is provided if you abandon the quest granted by killing a |cFFFFD700Hellscream Seadog|r.",
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Hellscream Seadog slain
									["provider"] = { "n", 42115 },	-- Hellscream Seadog
								}),
							},
						}),
						q(26070, {	-- Clearing the Defiled (A)
							["qg"] = 41598,	-- Captain Taylor
							["sourceQuests"] = {
								25983,	-- Promontory Point (breadcrumb)
								25987,	-- Put It On
							},
							["coord"] = { 42.7, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Defiled Scalding Chasm wildlife
									["providers"] = {
										{ "n", 41646},	-- Crushing Eel
										{ "n", 41645},	-- Chasm Stalker
										{ "n", 41647},	-- Deep Remora
									},
								}),
								i(59624),	-- Eel-Slayer Legguards
								i(59625),	-- Remora-Crusher Staff
								i(59623),	-- Trench-Stalker Shotgun
							},
						}),
						q(26071, {	-- Clearing the Defiled (H)
							["qg"] = 41636,	-- Legionnaire Nazgrim
							["sourceQuests"] = {
								25984,	-- Promontory Point (breadcrumb)
								25988,	-- Put It On
							},
							["coord"] = { 42.6, 37.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Defiled Scalding Chasm wildlife
									["providers"] = {
										{ "n", 41646},	-- Crushing Eel
										{ "n", 41645},	-- Chasm Stalker
										{ "n", 41647},	-- Deep Remora
									},
								}),
								i(59621),	-- Eel-Slayer Legguards
								i(59622),	-- Remora-Crusher Staff
								i(59620),	-- Trench-Stalker Shotgun
							},
						}),
						q(26018, {	-- Coldlights Out
							["qg"] = 41910,	-- Humphrey Digsong
							["sourceQuest"] = 26015,	-- Phosphora Hunting
							["coord"] = { 47.3, 49.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/4 Coldlight Hunter slain
									["provider"] = { "n", 41925 },	-- Coldlight Hunter
								}),
								objective(2, {	-- 0/4 Coldlight Oracle slain
									["provider"] = { "n", 41926 },	-- Coldlight Oracle
								}),
							},
						}),
						q(26140, {	-- Communing with the Ancient
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuest"] = 26130,	-- Unplug L'ghorek
							["coord"] = { 42.6, 37.9, VASHJIR_ABYSSAL_DEPTHS },
						}),
						q(26193, {	-- Defending the Rift (A)
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuests"] = {
								26181,	-- Back to Darkbreak Cave (breadcrumb)
								-- 26143,	-- All That Rises (26193 appears on world map without completing this quest)
							},
							["coord"] = { 42.6, 37.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59604),	-- Submariner's Weighted Treads
								i(59605),	-- Signet of the Lookout
								i(59606),	-- Drape of the Helmsman
							},
						}),
						q(26194, {	-- Defending the Rift (H)
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuests"] = {
								26182,	-- Back to the Tenebrous Cavern (breadcrumb)
								-- 26143,	-- All that Rises (26194 appears on world map without completing this quest)
							},
							["coord"] = { 51.5, 60.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59601),	-- Submariner's Weighted Treads
								i(59602),	-- Signet of the Lookout
								i(59603),	-- Drape of the Helmsman
							},
						}),
						q(26089, {	-- Die Fisherman Die
							["qg"] = 41908,	-- Orako
							["sourceQuest"] = 26087,	-- "Glow-Juice"
							["coord"] = { 42.8, 51.0, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
						}),
						q(26019, {	-- Enormous Eel Egg (A)
							["provider"] = { "i", 56571 },	-- Enormous Eel Egg
							["sourceQuest"] = 26015,	-- Phosphora Hunting
							["crs"] = {
								41925,	-- Coldlight Hunters
								41926,	-- Coldlight Oracles
							},
							["races"] = ALLIANCE_ONLY,
						}),
						q(26122, {	-- Environmental Awareness
							["qg"] = 41669,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 26221,	-- Full Circle
							["coord"] = { 51.4, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
						}),
						q(26132, {	-- Fiends from the Netherworld (A)
							["qg"] = 41598,	-- Captain Taylor
							["sourceQuest"] = 26111,	-- ... It Will Come
							["coord"] = { 42.7, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Nether Fiend slain
									["provider"] = { "n", 41650 },	-- Nether Fiend
								}),
							},
						}),
						q(26133, {	-- Fiends from the Netherworld (H)
							["qg"] = 41636,	-- Legionnaire Nazgrim
							["sourceQuest"] = 26111,	-- ... It Will Come
							["coord"] = { 42.6, 37.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Nether Fiend slain
									["provider"] = { "n", 41650 },	-- Nether Fiend
								}),
							},
						}),
						q(26065, {	-- Free Wil'hai
							["qg"] = 41640,	-- Wavespeaker Valoren
							["sourceQuests"] = {
								26219,	-- Full Circle (A)
								26221,	-- Full Circle (H)
								26056,	-- The Wavespeaker (A)
								26057,	-- The Wavespeaker (H)
							},
							["coord"] = { 52.6, 27.8, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/1 Free Wil'hai
									["provider"] = { "i", 57409 },	-- Valoren's Shrinkage Totem
									["cr"] = 41641,	-- Tentacle Horror
								}),
								i(59628),	-- Hood of Teeming Horror
								i(59627),	-- Tentacle-Slayer Bracers
								-- #if BEFORE MOP
								i(59626, {	-- Wil'hai's Extraneous Tooth
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								-- #endif
							},
						}),
						q(26106, {	-- Fuel-ology 101
							["qg"] = 41666,	-- Engineer Hexascrub
							["sourceQuest"] = 26103,	-- Bio-Fuel
							["coord"] = { 55.5, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["description"] = "2 Remora, 3 Hammerhead",
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59646),	-- Gloves of Delicate Mixture
								i(59645),	-- Vapor-Proof Headcover
								i(59644),	-- Chemical-Stained Shoulderplates
							},
						}),
						q(26087, {	-- "Glow-Juice"
							["qg"] = 41908,	-- Orako
							["sourceQuest"] = 26086,	-- Orako
							["coord"] = { 42.8, 51.0, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Glow-Juice
									["provider"] = { "i", 56573 },	-- Glow-Juice
									["crs"] = {
										41922,	-- Pyreshell Scuttler
										41923,	-- Luxscale Grouper
									},
								}),
							},
						}),
						q(26088, {	-- Here Fishie Fishie
							["qg"] = 41908,	-- Orako
							["sourceQuest"] = 26087,	-- "Glow-Juice"
							["coord"] = { 42.8, 51.0, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
						}),
						q(26091, {	-- Here Fishie Fishie 2: Eel-Egg-Trick Boogaloo
							["qg"] = 41908,	-- Orako
							["sourceQuest"] = 26090,	-- I Brought You This Egg
							["coord"] = { 42.8, 51.0, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59654),	-- Shoulderpads of Anguilliform Extinction
								i(59653),	-- Explosively Decompressed Stompers
								i(59655),	-- Eel Cutter
							},
						}),
						q(26090, {	-- I Brought You This Egg
							["provider"] = { "i", 56570 },	-- Enormous Eel Egg
							["sourceQuest"] = 26087,	-- "Glow-Juice"
							["crs"] = {
								41925,	-- Coldlight Hunters
								41926,	-- Coldlight Oracles
							},
							["races"] = HORDE_ONLY,
						}),
						q(26072, {	-- Into the Totem
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuests"] = {
								25987,	-- Put It On (A)
								25988,	-- Put It On (H)
							},
							["coord"] = { 42.6, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/5 Faceless Defilers energies confined
									["providers"] = {
										{ "i", 56801},	-- Erunak's Confinement Totem
										{ "n", 41644},	-- Faceless Defiler
										{ "n", 42051},	-- Faceless Defiler
									},
								}),
							},
						}),
						q(26111, {	-- ... It Will Come
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuests"] = {
								26096,	-- Scalding Shrooms
								26072,	-- Into the Totem
							},
							["coord"] = { 42.6, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/1 The Brain of the Unfathomable
									["provider"] = { "i", 56822 },	-- The Brain of the Unfathomable
									["cr"] = 41648,	-- Ick'thys the Unfathomable
								}),
								i(59618),	-- Chestguard of Cognitive Dissonance
								i(59619),	-- Brain-Connector Chain
								i(59617),	-- Mentalist's Protective Bottle
							},
						}),
						q(26080, {	-- One Last Favor
							["qg"] = 41910,	-- Humphrey Digsong
							["sourceQuests"] = {
								26017,	-- A Lure
								26018,	-- Coldlights Out
							},
							["coord"] = { 47.3, 49.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59652),	-- Drag-Resistant Robes
								i(59651),	-- Grips of the Severed Starfish
								i(59650),	-- Glovaal's Choppink Svord
							},
						}),
						q(26086, {	-- Orako
							["qg"] = 41663,	-- Captain "Jewels" Verne
							["sourceQuest"] = 26126,	-- The Perfect Fuel
							["coord"] = { 51.4, 61.5, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
						}),
						q(26092, {	-- Orako's Report
							["qg"] = 41908,	-- Orako
							["sourceQuests"] = {
								26089,	-- Die Fishman Die
								26088,	-- Here Fishie Fishie
							},
							["coord"] = { 42.8, 51.0, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59649),	-- Chum-Coated Robes
								i(59648),	-- Handguards of the Severed Starfish
								i(59647),	-- Captain Verne's Splitter
							}
						}),
						q(26015, {	-- Phosphora Hunting
							["qg"] = 41910,	-- Humphrey Digsong
							["sourceQuest"] = 26014,	-- The Brothers Digsong
							["coord"] = { 47.3, 49.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Underlight Phosphora
									["provider"] = { "i", 56568 },	-- Underlight Phosphora
									["crs"] = {
										41922,	-- Pyreshell Scuttler
										41923,	-- Luxscale Grouper
									},
								}),
							},
						}),
						q(26144, {	-- Prisoners (A)
							["provider"] = { "i", 57102 },	-- Twilight Cage Key
							["sourceQuest"] = 26140,	-- Communing with the Ancient
							["description"] = "Only drops when the |cFFFFD700Ascend No More!|r quest has been accepted or completed.",
							["crs"] = { 41652 },	-- Twilight Champion
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Alliance Prisoners rescued
									["provider"] = { "o", 203705 },	-- Cage
								}),
								i(59615),	-- Gnomeregan Mindslicer
								i(59616),	-- Gilnean Slicer
								i(59614),	-- Draenic Shacklebreaker
							},
						}),
						q(26149, {	-- Prisoners (H)
							["provider"] = { "i", 57118 },	-- Twilight Cage Key
							["sourceQuest"] = 26140,	-- Communing with the Ancient
							["description"] = "Only drops when the |cFFFFD700Ascend No More!|r quest has been accepted or completed.",
							["crs"] = { 41652 },	-- Twilight Champion
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Horde Prisoners rescued
									["provider"] = { "o", 203709 },	-- Cage
								}),
								i(59612),	-- Darkspear Ritual Blade
								i(59613),	-- Goblin Shanker
								i(59611),	-- Grimhorn Pummeler
							},
						}),
						q(25983, {	-- Promontory Point (A)
							["qg"] = 41666,	-- Engineer Hexascrub
							["sourceQuest"] = 25987,	-- Put It On (A)
							["coord"] = { 55.5, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25984, {	-- Promontory Point (H)
							["qg"] = 41669,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25988,	-- Put It On (H)
							["coord"] = { 51.4, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25987, {	-- Put It On (A)
							["qg"] = 41666,	-- Engineer Hexascrub
							["sourceQuest"] = 25981,	-- Those Aren't Masks
							["coord"] = { 55.5, 72.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59634, {	-- Beak of the Merciless One
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								i(59632),	-- Riptide Legguards
								i(59633),	-- Severed Visionary Tentacle
							},
						}),
						q(25988, {	-- Put It On (H)
							["qg"] = 41669,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25982,	-- Those Aren't Masks
							["coord"] = { 51.4, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59631, {	-- Beak of the Merciless One
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								i(59629),	-- Riptide Legguards
								i(59630),	-- Severed Visionary Tentacle
							},
						}),
						q(26141, {	-- Runestones of Binding
							["qg"] = 42197,	-- L'ghorek
							["sourceQuest"] = 26140,	-- Communing with the Ancient
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/7 Runestone of Binding
									["provider"] = { "i", 57096 },	-- Runestone of Binding
									["cr"] = 41657,	-- Twilight Candidate
								}),
							},
						}),
						q(26096, {	-- Scalding Shrooms
							["qg"] = 41639,	-- Wavespeaker Tulra
							["sourceQuests"] = {
								25987,	-- Put It On (A)
								25988,	-- Put It On (H)
							},
							["coord"] = { 42.7, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/5 Scalding Shroom
									["providers"] = {
										{ "i", 56810 },	-- Scalding Shroom
										{ "o", 203453 },	-- Scalding Shroom
									},
								}),
							},
						}),
						q(26124, {	-- Secure Seabrush (Auto-Accept)
							["qg"] = 42114,	-- Alliance Sea-Scout
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Alliance Sea-Scout slain
									["provider"] = { "n", 42114 },	-- Alliance Sea-Scout
								}),
							},
						}),
						q(26125, {	-- Secure Seabrush (Pickup)
							["qg"] = 41663,	-- Captain "Jewels" Verne
							["coord"] = { 51.4, 61.5, VASHJIR_ABYSSAL_DEPTHS },
							["description"] = "This version is provided if you abandon the quest granted by killing an |cFFFFD700Alliance Sea-Scout|r.",
							-- Completed 26105,26121,26124 as well
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Alliance Sea-Scout slain
									["provider"] = { "n", 42114 },	-- Alliance Sea-Scout
								}),
							},
						}),
						q(25950, {	-- Sira'Kess Slaying (A)
							["qg"] = 41667,	-- Lieutenant "Foxy" Topper
							["sourceQuest"] = 26080,	-- One Last Favor
							["coord"] = { 55.4, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Sira'kess naga slain
									["providers"] = {
										{ "n", 41586},	-- Sira'kess Guardian
										{ "n", 41588},	-- Sira'kess Sea Witch
										{ "n", 41589},	-- Sira'kess Tide Priestess
										{ "n", 41590},	-- Fathom-Caller Azrajar
									},
								}),
							},
						}),
						q(25974, {	-- Sira'Kess Slaying (H)
							["qg"] = 41670,	-- Sergeant Gertrude
							["sourceQuest"] = 26092,	-- Orako's Report
							["coord"] = { 51.4, 60.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Sira'kess naga slain
									["providers"] = {
										{ "n", 41586},	-- Sira'kess Guardian
										{ "n", 41588},	-- Sira'kess Sea Witch
										{ "n", 41589},	-- Sira'kess Tide Priestess
										{ "n", 41590},	-- Fathom-Caller Azrajar
									},
								}),
							},
						}),
						q(26014, {	-- The Brothers Digsong
							["qg"] = 41662,	-- Captain Glovaal
							["sourceQuest"] = 26106,	-- Fuel-ology 101
							["coord"] = { 54.4, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
						}),
						q(26021, {	-- The Brothers Digsong 2: Ell-Egg-Trick Boogaloo
							["qg"] = 41910,	-- Humphrey Digsong
							["sourceQuest"] = 26019,	-- Enormous Eel Egg
							["coord"] = { 47.3, 49.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59657),	-- Shoulderpads of Anguilliform Extinction
								i(59656),	-- Explosively Decompressed Stompers
								i(59658),	-- Eel Cutter
							},
						}),
						q(26126, {	-- The Perfect Fuel
							["qg"] = 41669,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 26122,	-- Environmental Awareness
							["description"] = "2 Remora, 3 Hammerhead",
							["coord"] = { 51.4, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59643),	-- Gloves of Delicate Mixture
								i(59642),	-- Vapor-Proof Headcover
								i(59641),	-- Chemical-Stained Shoulderplates
							},
						}),
						q(26056, {	-- The Wavespeaker (A)
							["qg"] = 41598,	-- Captain Taylor
							["sourceQuest"] = 25987,	-- Put It On (A)
							["coord"] = { 42.7, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(26057, {	-- The Wavespeaker (H)
							["qg"] = 41636,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25988,	-- Put It On (H)
							["coord"] = { 42.6, 37.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25981, {	-- Those Aren't Masks (A)
							["qg"] = 41666,	-- Engineer Hexascrub
							["sourceQuest"] = 26080,	-- One Last Favor
							["coord"] = { 55.5, 72.8, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Merciless Head
									["provider"] = { "i", 56254 },	-- Merciless Head
									["cr"] = 41601,	-- Merciless One
								}),
							},
						}),
						q(25982, {	-- Those Aren't Masks (H)
							["qg"] = 41669,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 26092,	-- Orako's Report
							["coord"] = { 51.4, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Merciless Head
									["provider"] = { "i", 56254 },	-- Merciless Head
									["cr"] = 41601,	-- Merciless One
								}),
							},
						}),
						q(25975, {	-- Treasure Reclamation (A)
							["qg"] = 41665,	-- Jorlan Trueblade
							["sourceQuest"] = 26080,	-- One Last Favor
							["coord"] = { 55.6, 72.9, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Deepfin Plunder
									["provider"] = { "i", 56235 },	-- Deepfin Plunder
									["cr"] = 41593,	-- Deepfin Scrounger
								}),
							},
						}),
						q(25976, {	-- Treasure Reclamation (H)
							["qg"] = 41668,	-- Blood Guard Toldrek
							["sourceQuest"] = 26092,	-- Orako's Report
							["coord"] = { 51.5, 60.7, VASHJIR_ABYSSAL_DEPTHS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Deepfin Plunder
									["provider"] = { "i", 56235 },	-- Deepfin Plunder
									["cr"] = 41593,	-- Deepfin Scrounger
								}),
							},
						}),
						q(26154, {	-- Twilight Extermination
							["qg"] = 42197,	-- L'ghorek
							["sourceQuests"] = {
								26142,	-- Ascend No More!
								26141,	-- Runestones of Binding
							},
							["coord"] = { 38.4, 45.3, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/1 Bound Torrent possessed
									["provider"] = { "i", 57172 },	-- Attuned Runestone of Binding
									["cr"] = 47969,	-- Bound Torrent
								}),
								objective(2, {	-- 0/50 Twilight Devotee slain
									["providers"] = {
										{ "n", 42280},	-- Twilight Devotee
										{ "n", 42281},	-- Twilight Devotee
									},
								}),
								objective(3, {	-- 0/3 Faceless Overseer slain
									["provider"] = { "n", 42285 },	-- Faceless Overseer
								}),
							},
						}),
						q(26130, {	-- Unplug L'ghorek
							["qg"] = 41600,	-- Erunak Stonespeaker
							["sourceQuest"] = 26111,	-- ... It Will Come
							["coord"] = { 42.6, 37.9, VASHJIR_ABYSSAL_DEPTHS },
							["groups"] = {
								objective(1, {	-- 0/1 Ur'Goz slain
									["provider"] = { "n", 41654 },	-- Ur'Goz
								}),
								objective(2, {	-- 0/1 Sku'Bu slain
									["provider"] = { "n", 41655 },	-- Sku'Bu
								}),
								objective(3, {	-- 0/1 Neph'Lahim slain
									["provider"] = { "n", 41656 },	-- Neph'Lahim
								}),
							},
						}),
					}),
					n(RARES, {
						n(50050, {	-- Shok'sharak
							["coords"] = {
								{ 41.8, 32.8, VASHJIR_ABYSSAL_DEPTHS },
								{ 48.2, 34.4, VASHJIR_ABYSSAL_DEPTHS },
								{ 51.0, 32.2, VASHJIR_ABYSSAL_DEPTHS },
								{ 48.4, 26.4, VASHJIR_ABYSSAL_DEPTHS },
								{ 46.2, 29.8, VASHJIR_ABYSSAL_DEPTHS },
							},
							["groups"] = {
								i(67233)	-- Sussurating Treads of Shok'sharak
							},
						}),
						n(50051, {	-- Ghostcrawler: Hunter Pet Tamable
							["description"] = "Tameable Spirit Beast for hunters.",
							["coords"] = {
								{ 20.0, 58.0, VASHJIR_ABYSSAL_DEPTHS },
								{ 22.0, 65.0, VASHJIR_ABYSSAL_DEPTHS },
								{ 24.2, 71.8, VASHJIR_ABYSSAL_DEPTHS },
								{ 31.4, 80.6, VASHJIR_ABYSSAL_DEPTHS },
								{ 26.0, 81.4, VASHJIR_ABYSSAL_DEPTHS },
								{ 15.0, 87.4, VASHJIR_ABYSSAL_DEPTHS },
								{ 12.8, 82.6, VASHJIR_ABYSSAL_DEPTHS },
								{ 15.0, 77.4, VASHJIR_ABYSSAL_DEPTHS },
								{ 19.0, 77.4, VASHJIR_ABYSSAL_DEPTHS },
							},
						}),
					}),
				},
			}),
			m(VASHJIR_KELPTHAR_FOREST, {
				["lore"] = "Kelp'thar Forest is the first subzone players reach when questing in Vash'jir. It has tropical underwater life and is closer to the surface than other subzones. Quests introduce the threat of the naga while also reacquainting the player with stranded members of the Zul'Aman exploratory crew.",
				["icon"] = 409551,
				["groups"] = {
					explorationHeader({
						exploration(5055),	-- Gnaws' Boneyard
						exploration(5053),	-- Gurboggle's Ledge
						exploration(5052),	-- Legion's Fate
						exploration(5051),	-- Seafarer's Tomb
						exploration(5030),	-- Shallow's End
						exploration(5057),	-- Smuggler's Scar
						exploration(5059),	-- The Clutch
						exploration(5054),	-- The Skeletal Reef
					}),
					n(FLIGHT_PATHS, {
						fp(607, {	-- Sandy Beach, Vashj'ir
							["cr"] = 43287,	-- Swift Seahorse <Flight Master>
							["description"] = "Underwater.",
							["coord"] = { 42.4, 66.2, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
						}),
						fp(609, {	-- Sandy Beach, Vashj'ir
							["cr"] = 43216,	-- Swift Seahorse <Flight Master>
							["description"] = "Underwater.",
							["coord"] = { 49.2, 87.8, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
						}),
						fp(521, {	-- Smuggler's Scar, Vashj'ir
							["cr"] = 40852,	-- Swift Seahorse <Flight Master>
							["coord"] = { 56.2, 31.0, VASHJIR_KELPTHAR_FOREST },
						}),
					}),
					n(QUESTS, {
						q(25732, {	-- A Bone To Pick
							["qg"] = 46458,	-- Budd
							["sourceQuest"] = 25670,	-- DUN-dun-DUN-dun-DUN-dun
							["coord"] = { 58.3, 48.6, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								-- FIX_ME!!!
								objective(1, {	-- 0/1 The Pewter Pounder
									["provider"] = { "i", 55805 },	-- The Pewter Pounder
									["cr"] = 41018,	-- King Gurboggle
								}),
								objective(1, {	-- 0/1 The Pewter Pounder
									["provider"] = { "i", 55805 },	-- The Pewter Pounder
									["coord"] = { 53.6, 57.6, VASHJIR_KELPTHAR_FOREST },
									["cr"] = 41018,	-- King Gurboggle
								}),
							}
						}),
						q(25471, {	-- Across the Great Divide
							["qg"] = 41341,	-- Erunak Stonespeaker
							["sourceQuest"] = 27708,	-- The Warden's Time
							["coord"] = { 63.8, 59.9, VASHJIR_KELPTHAR_FOREST },
							["maps"] = { VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25638, {	-- A Desperate Plea
							["providers"] = {
								{ "o", 203128 },	-- Broken Bottle
								{ "i",  62137 },	-- Soggy Note
							},
							["sourceQuest"] = 25459,	-- Ophidophobia
							["coord"] = { 56.4, 30.0, VASHJIR_KELPTHAR_FOREST },
						}),
						q(25390, {	-- A Girl's Best Friend
							["qg"] = 39883,	-- Adarrah
							["sourceQuest"] = 25598,	-- Ain't Too Proud to Beg
							["coord"] = { 57.1, 28.7, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/6 Adarrah's Keepsake
									["providers"] = {
										{ "i",  53074 },	-- Adarrah's Keepsake
										{ "o", 202775 },	-- Adarrah's Jewelry Box
									},
									["coord"] = { 50.5, 42.6, VASHJIR_KELPTHAR_FOREST },
								}),
								i(59793),	-- Hippolyte's Glittering Necklace
								i(59794),	-- Signet of Galathea
								i(59792),	-- Petrified Spider Crab
							},
						}),
						q(25389, {	-- A Taste For Tail
							["qg"] = 39883,	-- Adarrah
							["sourceQuest"] = 25598,	-- Ain't Too Proud to Beg
							["coord"] = { 57.1, 28.7, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/4 Clacksnap Tail
									["provider"] = { "i", 53073 },	-- Clacksnap Tail
									["coord"] = { 49.6, 43.0, VASHJIR_KELPTHAR_FOREST },
									["cr"] = 39918,	-- Clacksnap Pincer
								}),
							}
						}),
						q(25598, {	-- Ain't Too Proud to Beg
							["qg"] = 39883,	-- Adarrah
							["sourceQuest"] = 25587,	-- Gimme Shelter
							["coord"] = { 57.1, 28.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- Mack and Samir Rescued
									["provider"] = { "n", 39669 },	-- Captain Samir
									["coord"] = { 48.2, 39.6, VASHJIR_KELPTHAR_FOREST },
								}),
							},
						}),
						q(25558, {	-- All or Nothing
							["qg"] = 40690,	-- Captain Taylor
							["sourceQuest"] = 25547,	-- On Our Own Terms
							["coord"] = { 45.0, 23.5, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59804),	-- Cowl of the Lost Cutter
								i(59803),	-- Bracers of the Sunken Dream
								i(59802),	-- Wheelman's Shattered Grasp
							},
						}),
						q(27687, {	-- An Opened Can of Whoop Gnash
							["provider"] = { "i", 62138 },	-- Gnash's Head
							["sourceQuest"] = 25598,	-- Ain't Too Proud to Beg
							["coords"] = {	-- pats up and down
								{ 51.6, 42.4, VASHJIR_KELPTHAR_FOREST },
								{ 54.0, 49.0, VASHJIR_KELPTHAR_FOREST },
								{ 55.8, 53.0, VASHJIR_KELPTHAR_FOREST },
							},
							["cr"] = 40987,	-- Gnash
						}),
						q(25477, {	-- Better Late Than Dead
							["qg"] = 41248,	-- Moanah Stormhoof
							["sourceQuests"] = {
								25558,	-- All or Nothing (A)
								25949,	-- Blood and Thunder! (H)
							},
							["coord"] = { 46.0, 46.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- Sea Turtle Mounted
									["provider"] = { "i", 54462 },	-- Moanah's Baitstick
									["coord"] = { 53.6, 46.6, VASHJIR_KELPTHAR_FOREST },
									["cr"] = 40223,	-- Speckled Sea Turtle
								}),
							},
						}),
						q(25503, {	-- Blackfin's Booty
							["provider"] = { "i", 54639 },	-- Waterlogged Journal
							["coord"] = { 51.1, 52.0, VASHJIR_KELPTHAR_FOREST },
							["cr"] = 41183,	-- Gilblingle
							["groups"] = {
								objective(1, {	-- 0/1 Gilblingle's Map
									["provider"] = { "i", 54640 },	-- Gilblingle's Map
									["coord"] = { 56.6, 54.8, VASHJIR_KELPTHAR_FOREST },
									["cr"] = 40466,	-- Blackfin
								}),
								i(59781),	-- Calanoid Shoulders
								i(59780),	-- Polychaete Leggings
								i(59779),	-- Girdle of Calcified Blackfin
							},
						}),
						q(25949, {	-- Blood and Thunder!
							["qgs"] = {
								41750,	-- Legionnaire Nazgrim
								41769,	-- Legionnaire Nazgrim
								41793,	-- Legionnaire Nazgrim
							},
							["sourceQuest"] = 25948,	-- Bring It On!
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59801),	-- Hood of the Shuffled Coil
								i(59800),	-- Bracers of Breached Integrity
								i(59799),	-- Schooner-Savior's Grips
							},
						}),
						q(25948, {	-- Bring It On!
							["qg"] = 41711,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25947,	-- Finders, Keepers
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
						}),
						{	-- Buy Us Some Time
							["allianceQuestData"] = q(25357, {	-- Buy Us Some Time (A)
								["qg"] = 39887,	-- Captain Taylor
								["sourceQuest"] = 25405,	-- Rest For the Weary (A)
								["coord"] = { 44.7, 22.5, VASHJIR_KELPTHAR_FOREST },
							}),
							["hordeQuestData"] = q(25942, {	-- Buy Us Some Time (A)
								["qg"] = 41711,	-- Legionnaire Nazgrim
								["sourceQuest"] = 25941,	-- Rest For the Weary (H)
								["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							}),
							["groups"] = {
								objective(1, {	-- 0/8 Zin'jatar Raider slain
									["provider"] = { "n", 39313 },	-- Zin'jatar Raider
								}),
							},
						},
						q(14482, {	-- Call of Duty (A)
							["qg"] = 36799,	-- Recruiter Burns
							["sourceQuests"] = {
								14481,	-- Into The Abyss
								27724,	-- Hero's Call: Vashj'ir!
								28827,	-- To the Depths (A)
							},
							["coord"] = { 27.4, 24.2, STORMWIND_CITY },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							-- #if AFTER 9.0.3
							["groups"] = {
								n(36799, { -- Recruiter Burns
									["description"] = "Accepting the quest 'Call of Duty' will instantly teleport you to Vashj'ir. Although the old event and cutscene is skipped, the questline is still intact.\n\nIf Burns do not offer you the quest, you might be phased due to Legion intro questline (even by being within the eligible level range!).",
								}),
							},
							-- #endif
						}),
						q(25924, {	-- Call of Duty (H)
							["qg"] = 41621,	-- Commander Thorak
							["sourceQuests"] = {
								28816,	-- To the Depths (H)
								27718,	-- Warchief's Command: Vashj'ir!
							},
							["coord"] = { 55.9, 12.3, DUROTAR },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = HORDE_ONLY,
						}),
						q(25602, {	-- Can't Start a Fire Without a Spark
							["qg"] = 39884,	-- Captain Samir
							["sourceQuest"] = 25598,	-- Ain't Too Proud to Beg
							["coord"] = { 57.3, 28.9, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/1 Keg of Gunpowder
									["providers"] = {
										{ "i",  55143 },	-- Keg of Gunpowder
										{ "o", 203113 },	-- Keg of Gunpowder
									},
									["coord"] = { 55.5, 38.9, VASHJIR_KELPTHAR_FOREST },
								}),
							},
						}),
						q(25884, {	-- Come Hell or High Water
							["qg"] = 41344,	-- Rendel Firetongue
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 64.2, 59.9, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/12 Zin'jatar Naga Slain
									["providers"] = {
										{ "n", 41477 },	-- Zin'jatar Pearlbinder
										{ "n", 41481 },	-- Zin'jatar Guardian
										{ "n", 41549 },	-- Zin'jatar Overseer
									},
									["coord"] = { 58.6, 74.6, VASHJIR_KELPTHAR_FOREST },
								}),
								i(59778),	-- Medusoid Staff
								i(59777),	-- Conch-Inlaid Gauntlets
								i(59776),	-- Pipefish Bracers
							},
						}),
						q(25388, {	-- Crate of Crab Meat
							["providers"] = {
								{ "o", 202871 },	-- Sunken Crate
								{ "i",  53061 },	-- Crate of Crab Meat
							},
							["sourceQuest"] = 25587,	-- Gimme Shelter
							["coord"] = { 49.6, 40.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								-- #if BEFORE MOP
								i(68609, {	-- Fine-Toothed Comb
									["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
								}),
								-- #endif
							},
						}),
						q(25657, {	-- Dah, Nunt.. Dah, Nunt...
							["qg"] = 46338,	-- Budd
							["sourceQuest"] = 25651,	-- Oh, the Insanity!
							["coord"] = { 55.2, 38.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- Explosive Grub fed to Gnaws
									["provider"] = { "i", 55190 },	-- Booby-Trapped Bait
									["cr"] = 41057,	-- Gnaws
								}),
							},
						}),
						q(25824, {	-- Debriefing (A)
							["qg"] = 41341,	-- Erunak Stonespeaker
							["sourceQuest"] = 25812,	-- Spelunking
							["coord"] = { 63.8, 59.9, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- Private Pollard Debriefed
									["provider"] = { "n", 41340 },	-- Private Pollard
									["coord"] = { 63.8, 59.8, VASHJIR_KELPTHAR_FOREST },
								}),
							}
						}),
						q(26007, {	-- Debriefing (H)
							["qg"] = 41341,	-- Erunak Stonespeaker
							["sourceQuest"] = 26000,	-- Spelunking
							["coord"] = { 63.8, 59.9, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- Gurrok Debriefed
									["provider"] = { "n", 41885 },	-- Gurrok
									["coord"] = { 63.8, 59.8, VASHJIR_KELPTHAR_FOREST },
								}),
							}
						}),
						q(25743, {	-- Decisions, Decisions
							["qg"] = 46458,	-- Budd
							["sourceQuest"] = 25732,	-- A Bone To Pick
							["coord"] = { 58.3, 48.6, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- The Pewter Prophet Destroyed
									["provider"] = { "i", 55806 },	-- The Pewter Pounder
									["coord"] = { 58.3, 48.6, VASHJIR_KELPTHAR_FOREST },
									["cr"] = 41192,	-- The Pewter Prophet
								}),
								i(59787),	-- God-Grinding Grips
								i(59786),	-- Wristguards of Prophetic Perishing
								i(59785),	-- Pounded Pewter Links
							},
						}),
						q(25888, {	-- Decompression (A)
							["qg"] = 41347,	-- Moanah Stormhoof
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 63.8, 59.3, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Imprisoned Soldiers Released
									["provider"] = { "i", 56169 },	-- Breathstone
									["cr"] = 41548,	-- Imprisoned Soldier
								}),
								i(59774),	-- Cone-Snail Cinch
								i(59773),	-- Pteropod Robes
								i(59775),	-- Breathstone-Infused Longbow
							},
						}),
						q(26008, {	-- Decompression (H)
							["qg"] = 41347,	-- Moanah Stormhoof
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 63.8, 59.3, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Imprisoned Warriors Freed
									["provider"] = { "i", 56169 },	-- Breathstone
									["cr"] = 41955,	-- Imprisoned Warrior
								}),
								i(59770),	-- Cone-Snail Cinch
								i(59769),	-- Pteropod Robes
								i(59771),	-- Breathstone-Infused Longbow
							},
						}),
						q(25670, {	-- DUN-dun-DUN-dun-DUN-dun
							["qg"] = 46338,	-- Budd
							["sourceQuest"] = 27699,	-- Shark Weak
							["coord"] = { 55.2, 38.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/1 Gnaws Slain
									["provider"] = { "i", 55220 },	-- Budd's Chain (QI!)
								}),
							},
						}),
						q(25947, {	-- Finders, Keepers
							["qg"] = 41711,	-- Legionnaire Nazgrim
							["sourceQuests"] = {
								25944,	-- Girding Our Loins
								25946,	-- Helm's Deep
							},
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Stormwind S.E.A.L. Equipment
									["providers"] = {
										{ "i", 54957 },	-- Stormwind S.E.A.L. Equipment
										{ "o", 203061 },	-- Stormwind Locker
									},
								}),
							},
						}),
						q(25587, {	-- Gimme Shelter
							["qg"] = 39667,	-- Adarrah
							["sourceQuest"] = 27685,	-- Good Deed Left Undone
							["coord"] = { 53.4, 43.0, VASHJIR_KELPTHAR_FOREST },
						}),
						q(25944, {	-- Girding Our Loins
							["qg"] = 41711,	-- Legionnaire Nazgrim
							["sourceQuests"] = {
								25942,	-- Buy Us Some Time
								25943,	-- Traveling on Our Stomachs
							},
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Orgrimmar Axe
									["provider"] = { "i", 56243 },	-- Orgrimmar Axe
									["cr"] = 41746,	-- Gilblin Plunderer
								}),
								objective(2, {	-- 0/5 Orgrimmar Helm
									["provider"] = { "i", 56244 },	-- Orgrimmar Helm
									["cr"] = 41746,	-- Gilblin Plunderer
								}),
								objective(3, {	-- 0/5 Orgrimmar Breastplate
									["provider"] = { "i", 56245 },	-- Orgrimmar Breastplate
									["cr"] = 41746,	-- Gilblin Plunderer
								}),
								i(59806),	-- Shipwrecked Leggings
								i(59805),	-- Whelk Shell Shoulderguards
								i(59807),	-- Legionnaire Nazgrim's Hacker
							},
						}),
						q(27685, {	-- Good Deed Left Undone
							["qg"] = 41252,	-- Rendel Firetongue
							["sourceQuest"] = 25371,	-- The Abyssal Ride
							["coord"] = { 46.6, 46.6, VASHJIR_KELPTHAR_FOREST },
							["isBreadcrumb"] = true,
						}),
						q(25946, {	-- Helm's Deep
							["icon"] = 133151,
							["sourceQuests"] = {
								25942,	-- Buy Us Some Time
								27668,	-- Pay Attention
								25943,	-- Traveling on Our Stomachs
							},
							["coord"] = { 38.8, 26.7, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
						}),
						heroscall(q(27724, {	-- Hero's Call: Vashj'ir!
							["timeline"] = { ADDED_4_0_3 },
							["isBreadcrumb"] = true,
							["lvl"] = 80,
						})),
						q(25883, {	-- How Disarming
							["provider"] = { "o", 203301 },	-- Naga Tridents
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 60.3, 69.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/6 Naga Weapons Destroyed
									["provider"] = { "o", 203300 },	-- Naga Tridents
								}),
							},
						}),
						q(25467, {	-- Kliklak's Craw
							["provider"] = { "i", 54345 },	-- Crumpled Treasure Map
							["crs"] = { 40276 },	-- Sabreclaw Skitterer
							["groups"] = {
								objective(1, {	-- 0/1 Corroded Key
									["provider"] = { "i", 54344 },	-- Corroded Key
									["cr"] = 40282,	-- Kliklak
								}),
								i(59798),	-- Barnacle-Coated Greataxe
							},
						}),
						q(25419, {	-- Lady La-La's Medallion
							["provider"] = { "i", 55186 },	-- Lady La-La's Necklace
							["description"] = "Take the quest 'Oh, the Insanity!' from Budd, turn in all quests at the Smuggler's Scar cave, and then start killing Gilbin Collectors to get the quest 'Lady La-La's Medallion.'",
							["crs"] = { 41017 },	-- Gilblin Collector
							["groups"] = {
								i(59784),	-- Dreamfrond Skirt
								i(59783),	-- Damselfish Shoulderguards
								i(59782),	-- Prismatic Periwinkle Band
							},
						}),
						q(25358, {	-- Nerve Tonic
							["qg"] = 40983,	-- Mack Fearsen
							["sourceQuest"] = 25602,	-- Can't Start a Fire Without a Spark
							["coord"] = { 57.3, 29.2, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/5 Sunken Cargo
									["providers"] = {
										{ "i", 52973 },	-- Sunken Cargo (QI!)
										{ "o", 205161 },	-- Sunken Cargo
									},
								}),
							},
						}),
						q(25651, {	-- Oh, the Insanity!
							["qg"] = 46338,	-- Budd
							["sourceQuest"] = 25602,	-- Can't Start a Fire Without a Spark
							["coord"] = { 55.2, 38.8, VASHJIR_KELPTHAR_FOREST },
							["description"] = "Take the quest 'Oh, the Insanity!' from Budd, turn in all quests at the Smuggler's Scar cave, and then start killing Gilbin Collectors to get the quest 'Lady La-La's Medallion.'",
							["groups"] = {
								objective(1, {	-- 0/1 Barrel of Gunpowder
									["providers"] = {
										{ "i", 55185 },	-- Pilfered Cannonball (QI!)
										{ "i", 62228 },	-- Barrel of Gunpowder (QI!)
										{ "o", 203139 },	-- Pilfered Cannonballs
									},
									["crs"] = 41016,	-- Gilblin Horder
								}),
							},
						}),
						q(25547, {	-- On Our Own Terms
							["qg"] = 39887,	-- Captain Taylor
							["sourceQuests"] = {
								25564,	-- Stormwind Elite Aquatic and Land Forces
								25545,	-- To Arms!
							},
							["coord"] = { 44.7, 22.5, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
						}),
						q(27729, {	-- Once More, With Eeling
							["description"] = "Granted automatically from killing any eel.",
							["providers"] = {
								{ "n", 40855},	-- Slitherfin Eel
								{ "n", 41002},	-- Slickskin Eel
							},
							["groups"] = {
								objective(1, {	-- 0/8 Disgusting Eels Justifiably Slain
									["providers"] = {
										{ "n", 40855},	-- Slitherfin Eel
										{ "n", 41002},	-- Slickskin Eel
									},
								}),
							},
						}),
						q(25459, {	-- Ophidophobia
							["qg"] = 39883,	-- Adarrah
							["sourceQuest"] = 25602,	-- Can't Start a Fire Without a Spark
							["coord"] = { 57.1, 28.7, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/4 Brinescale Serpents Slain
									["provider"] = { "n", 39948 },	-- Brinescale Serpent
								}),
							},
						}),
						q(27668, {	-- Pay Attention!
							["qg"] = 41711,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25944,	-- Girding Our Loins
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25281, {	-- Pay It Forward (A)
							["qg"] = 36915,	-- Erunak Stonespeaker
							["sourceQuest"] = 24432,	-- Sea Legs (A)
							["coord"] = { 45.2, 23.2, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Soldiers Rescued
									["provider"] = { "i", 52710 },	-- Enchanted Conch
									["cr"] = 39663,	-- Drowning Soldier
								}),
							},
						}),
						q(25936, {	-- Pay It Forward (H)
							["qg"] = 41618,	-- Erunak Stonespeaker
							["sourceQuest"] = 25929,	-- Sea Legs (H)
							["coord"] = { 38.8, 31.6, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Drowning Warriors Rescued
									["provider"] = { "i", 56227 },	-- Enchanted Conch
									["cr"] = 41672,	-- Drowning Warrior
								}),
							},
						}),
						q(25405, {	-- Rest For the Weary (A)
							["qg"] = 36915,	-- Erunak Stonespeaker
							["sourceQuest"] = 25281,	-- Pay It Forward (A)
							["coord"] = { 45.2, 23.2, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25941, {	-- Rest For the Weary (H)
							["qg"] = 41618,	-- Erunak Stonespeaker
							["sourceQuest"] = 25936,	-- Pay It Forward (H)
							["coord"] = { 38.8, 31.6, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
						}),
						q(24432, {	-- Sea Legs (A)
							["qg"] = 36915,	-- Erunak Stonespeaker
							["sourceQuest"] = 14482,	-- Call of Duty (A)
							["coord"] = { 45.2, 23.2, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/3 Saltwater Starfish
									["providers"] = {
										{ "i", 54828 },	-- Saltwater Starfish
										{ "o", 205989 },	-- Saltwater Star
							},
								}),
								objective(2, {	-- 0/1 Conch Shell
									["providers"] = {
										{ "i", 52504 },	-- Conch Shell
										{ "o", 202560 },	-- Conch Shell
									},
								}),
							},
						}),
						q(25929, {	-- Sea Legs (H)
							["qg"] = 41618,	-- Erunak Stonespeaker
							["sourceQuest"] = 25924,	-- Call of Duty (H)
							["coord"] = { 38.7, 31.7, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/3 Saltwater Starfish
									["providers"] = {
										{ "i", 54828 },	-- Saltwater Starfish
										{ "o", 205989 },	-- Saltwater Star
							},
								}),
								objective(2, {	-- 0/1 Conch Shell
									["providers"] = {
										{ "i", 52504 },	-- Conch Shell
										{ "o", 202560 },	-- Conch Shell
									},
								}),
							},
						}),
						q(27699, {	-- Shark Weak
							["description"] = "If you abandon this quest, leave the area and swim back to the boat. You must NOT use a mount.",
							["sourceQuest"] = 25657,	-- Dah, Nunt.. Dah, Nunt...
							["coord"] = { 58.3, 48.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/5 Gnaws' Tooth
									["providers"] = {
										{ "i", 55212 },	-- Gnaws' Tooth (QI!)
										{ "o", 203170 },	-- Gnaws' Tooth
									},
								}),
							},
						}),
						q(25812, {	-- Spelunking (A)
							["qg"] = 40105,	-- Erunak Stonespeaker
							["sourceQuest"] = 25794,	-- Undersea Sanctuary
							["coord"] = { 46.3, 46.8, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
						}),
						q(26000, {	-- Spelunking (H)
							["qg"] = 40105,	-- Erunak Stonespeaker
							["sourceQuest"] = 25794,	-- Undersea Sanctuary
							["coord"] = { 46.3, 46.8, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
						}),
						q(25564, {	-- Stormwind Elite Aquatic and Land Forces
							["qg"] = 39887,	-- Captain Taylor
							["sourceQuests"] = {
								25357,	-- Buy Us Some Time
								25546,	-- Traveling on Our Stomachs
							},
							["coord"] = { 44.7, 22.5, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Stormwind S.E.A.L. Equipment
									["providers"] = {
										{ "i", 54957 },	-- Stormwind S.E.A.L. Equipment
										{ "o", 203061 },	-- Stormwind Locker
									},
								}),
							},
						}),
						q(25371, {	-- The Abyssal Ride
							["qg"] = 41248,	-- Moanah Stormhoof
							["sourceQuest"] = 25477,	-- Better Late Than Dead
							["coord"] = { 46.0, 46.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								i(54465),	-- Vashj'ir Seahorse (MOUNT!)
							},
						}),
						q(25377, {	-- The Horde's Hoard
							["provider"] = { "i", 53053 },	-- Tattered Treasure Map
							["crs"] = { 39918 },	-- Clacksnap Pincer
							["groups"] = {
								objective(1, {	-- 0/1 Horde Chest Key
									["provider"] = { "i", 53054 },	-- Horde Chest Key
									["cr"] = 39964,	-- Akasha
								}),
								i(59788),	-- Bioluminescent Buckler
							},
						}),
						q(27708, {	-- The Warden's Time
							["qg"] = 41344,	-- Rendel Firetongue
							["sourceQuest"] = 25884,	-- Come Hell or High Water
							["coord"] = { 64.2, 59.9, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/1 Zin'jatar Warden Slain
									["provider"] = { "n", 41530 },	-- Warden Azjakir
								}),
							},
						}),
						q(25545, {	-- To Arms!
							["qg"] = 39887,	-- Captain Taylor
							["sourceQuests"] = {
								25357,	-- Buy Us Some Time
								25546,	-- Traveling on Our Stomachs
							},
							["coord"] = { 44.7, 22.5, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/4 Stormwind Breastplate
									["provider"] = { "i", 54843 },	-- Stormwind Breastplate
									["cr"] = 40811,	-- Gilblin Scavenger
								}),
								objective(2, {	-- 0/4 Stormwind Helm
									["provider"] = { "i", 54842 },	-- Stormwind Helm
									["cr"] = 40811,	-- Gilblin Scavenger
								}),
								objective(3, {	-- 0/4 Stormwind Spear
									["provider"] = { "i", 54958 },	-- Stormwind Spear
									["cr"] = 40677,	-- Gilblin Scavenger
								}),
								objective(4, {	-- 0/4 Stormwind Shield
									["provider"] = { "i", 54844 },	-- Stormwind Shield
									["crs"] = {
										40677,	-- Gilblin Scavenger
										40810,	-- Gilblin Scavenger
										40811,	-- Gilblin Scavenger
									},
								}),
								i(59809),	-- Leftover Leggings
								i(59808),	-- Scavenged Stormwind Spaulders
								i(59810),	-- Captain Taylor's Chopper
							},
						}),
						q(28827, {	-- To the Depths (A)
							["qg"] = 45226,	-- Naraat the Earthspeaker
							["sourceQuest"] = 28826,	-- The Eye of the Storm
							["coord"] = { 74.4, 18.8, STORMWIND_CITY },
							["timeline"] = { ADDED_4_0_3 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(28816, {	-- To the Depths (H)
							["qg"] = 45244,	-- Farseer Krogar
							["sourceQuest"] = 28805,	-- The Eye of the Storm
							["coord"] = { 50.4, 38.2, ORGRIMMAR },
							["timeline"] = { ADDED_4_0_3 },
							["maps"] = { DUROTAR },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25546, {	-- Traveling on Our Stomachs (A)
							["qg"] = 39887,	-- Captain Taylor
							["sourceQuest"] = 25405,	-- Rest For the Weary
							["coord"] = { 44.7, 22.5, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Succulent Crab Meat
									["provider"] = { "i", 54845 },	-- Succulent Crab Meat
									["cr"] = 40685,	-- Splitclaw Skitterer
								}),
							},
						}),
						q(25943, {	-- Traveling on Our Stomachs (H)
							["qg"] = 41711,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25941,	-- Rest For the Weary
							["coord"] = { 39.0, 32.0, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Succulent Crab Meat
									["provider"] = { "i", 54845 },	-- Succulent Crab Meat
									["cr"] = 40685,	-- Splitclaw Skitterer
								}),
							},
						}),
						q(25794, {	-- Undersea Sanctuary
							["qg"] = 40105,	-- Erunak Stonespeaker
							["sourceQuest"] = 25638,	-- A Desperate Plea
							["coord"] = { 46.3, 46.8, VASHJIR_KELPTHAR_FOREST },
							["groups"] = {
								objective(1, {	-- 0/1 Erunak's Scrying Orb Used
									["provider"] = { "i", 56020 },	-- Erunak's Scrying Orb
								}),
							},
						}),
						q(25887, {	-- Wake of Destruction
							["qg"] = 41341,	-- Erunak Stonespeaker
							["sourceQuests"] = {
								25824,	-- Debriefing (A)
								26007,	-- Debriefing (H)
							},
							["coord"] = { 63.8, 59.9, VASHJIR_KELPTHAR_FOREST },
						}),
						warchiefscommand(q(27718, {	-- Warchief's Command: Vashj'ir!
							["timeline"] = { ADDED_4_0_3 },
							["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },	-- Only found in Orgrimmar, Thunder Bluff, & Undercity in Cataclysm.
							["isBreadcrumb"] = true,
							-- #if BEFORE 7.3.5
							-- Cataclysm: Minimum is level 80. (TODO: Confirm this.)
							["lvl"] = 80,
							-- #endif
						})),
						q(25885, {	-- What? What? In My Gut...? (A)
							["qg"] = 41340,	-- Private Pollard
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 63.9, 59.8, VASHJIR_KELPTHAR_FOREST },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Wiggleweed Sprout
									["provider"] = { "i", 56167 },	-- Wiggleweed Sprout
									["crs"] = {
										41477,	-- Zin'jatar Pearlbinder
										41481,	-- Zin'jatar Guardian
										41549,	-- Zin'jatar Overseer
										46474,	-- Shimmerspine Harvester
									},
								}),
							},
						}),
						q(26040, {	-- What? What? In My Gut...? (H)
							["qg"] = 41885,	-- Gurrok
							["sourceQuest"] = 25887,	-- Wake of Destruction
							["coord"] = { 63.9, 59.8, VASHJIR_KELPTHAR_FOREST },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Wiggleweed Sprout
									["provider"] = { "i", 56167 },	-- Wiggleweed Sprout
									["coord"] = { 58.4, 74.5, VASHJIR_KELPTHAR_FOREST },
									["crs"] = {
										46474,	-- Shimmerspine Harvester
										41481,	-- Zin'jatar Guardian
										41549,	-- Zin'jatar Overseer
										41477,	-- Zin'jatar Pearlbinder
									},
								}),
							},
						}),
					}),
					n(RARES, {
						n(49913, {	-- Lady La-La
							["coords"] = {
								{ 56.4, 77.0, VASHJIR_KELPTHAR_FOREST },
								{ 57.6, 80.8, VASHJIR_KELPTHAR_FOREST },
								{ 60.0, 76.8, VASHJIR_KELPTHAR_FOREST },
								{ 61.6, 75.4, VASHJIR_KELPTHAR_FOREST },
								{ 60.6, 70.8, VASHJIR_KELPTHAR_FOREST },
								{ 59.8, 68.8, VASHJIR_KELPTHAR_FOREST },
							},
							["groups"] = {
								i(67152),	-- Lady La-La's Singing Shell
							},
						}),
					}),
					-- #if AFTER 5.3.0
					-- These vendors have nothing useful to show until after 5.3.0.
					n(VENDORS, {
						["sharedDescription"] = "You can only buy gear from Erunak during the early questing when the shipwreck is the quest hub. His wares is also available at Iris Moondreamer in Nordrassil Inn, at the top of Mount Hyjal.",
						["groups"] = {
							n(36915, {	-- Erunak Stonespeaker <The Earthen Ring>
								["coord"] = { 45.0, 23.2, VASHJIR_KELPTHAR_FOREST },
								["races"] = ALLIANCE_ONLY,
								["sym"] = {
									{ "select", "npcID", 71304 },	-- Iris Moondreamer <Quartermaster> },
									{ "pop" },						-- Pop the Headers
								},
							}),
							n(41618, {	-- Erunak Stonespeaker <The Earthen Ring>
								["coord"] = { 38.8, 31.6, VASHJIR_KELPTHAR_FOREST },
								["races"] = HORDE_ONLY,
								["sym"] = {
									{ "select", "npcID", 71304 },	-- Iris Moondreamer <Quartermaster> },
									{ "pop" },						-- Pop the Headers
								},
							}),
						},
					}),
					-- #endif
				},
			}),
			m(VASHJIR_SHIMMERING_EXPANSE, {
				["lore"] = "The Shimmering Expanse is a subzone of Vash'jir. It contains The Earthen Ring quartermaster in Silver Tide Hollow, the only flight points in the zone, and tons of  Azshara's Veil. In this section, players learn about the highborne's past and the threat of the naga through the eyes of Battlemaidens.",
				["icon"] = 409551,
				["groups"] = {
					explorationHeader({
						exploration(4966),	-- Biel'aran Ridge
						exploration(4963),	-- Glimmerdeep Gorge
						exploration(4962),	-- Nespirah
						exploration(5007),	-- Ruins of Thelserai Temple
						exploration(4967),	-- Ruins of Vashj'ir
						exploration(5008),	-- Shimmering Grotto
						exploration(5005),	-- Silver Tide Hollow
						exploration(4961),	-- Silver Tide Trench
					}),
					n(FLIGHT_PATHS, {
						fp(525, {	-- Legion's Rest, Vashj'ir
							["cr"] = 40871,	-- Swift Seahorse <Flight Master>
							["coord"] = { 50.8, 63.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						fp(606, {	-- Sandy Beach, Vashj'ir (Alliance - Flight Master)
							["cr"] = 43290,	-- Francis Greene <Gryphon Master>
							["coord"] = { 57.0, 17.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						fp(608, {	-- Sandy Beach, Vashj'ir (Horde - Flight Master)
							["cr"] = 43220,	-- Briglar <Flight Master>
							["coord"] = { 61.0, 28.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						fp(522, {	-- Silver Tide Hollow, Vashj'ir
							["cr"] = 40851,	-- Swift Seahorse <Flight Master>
							["coord"] = { 49.6, 41.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						fp(610, {	-- Stygian Bounty, Vashj'ir (Horde - Flight Master)
							["cr"] = 43225,	-- Brogdul <Flight Master>
							["sourceQuest"] = 26135,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 64.8, 68.0, VASHJIR },
							["races"] = HORDE_ONLY,
						}),
						fp(612, {	-- Stygian Bounty, Vashj'ir (Horde - Seahorse)
							["cr"] = 43293,	-- Swift Seahorse <Flight Master>
							["sourceQuest"] = 26135,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 49.4, 65.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						fp(523, {	-- Tranquil Wash Hollow, Vashj'ir
							["cr"] = 40867,	-- Swift Seahorse <Flight Master>
							["coord"] = { 48.6, 57.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						fp(605, {	-- Voldrin's Hold, Vashj'ir (Alliance - Flight Master)
							["cr"] = 43295,	-- Salty McTavish <Gryphon Master>
							["sourceQuest"] = 25626,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 69.4, 75.2, VASHJIR },
							["races"] = ALLIANCE_ONLY,
						}),
						fp(611, {	-- Voldrin's Hold, Vashj'ir (Alliance - Seahorse)
							["cr"] = 43289,	-- Swift Seahorse <Flight Master>
							["sourceQuest"] = 25626,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 57.0, 75.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
					}),
					n(QUESTS, {
						q(25582, {	-- A Better Vantage (A)
							["qg"] = 40643,	-- Admiral Dvorek
							["sourceQuest"] = 25540,	-- Bellies Await
							["coord"] = { 49.1, 56.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25955, {	-- A Better Vantage (H)
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuests"] = {
								25595,	-- Something Edible
								25593,	-- Shelled Salvation
							},
							["coord"] = { 51.1, 62.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(26005, {	-- A Breath of Fresh Air (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25626,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 49.4, 57.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(26006, {	-- A Breath of Fresh Air (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 26135,	-- Visions of the Past: Rise from the Deep
							["coord"] = { 51.6, 62.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25215, {	-- A Distracting Scent
							["qg"] = 39876,	-- Felora Firewreath
							["sourceQuest"] = 25222,	-- Silver Tide Hollow
							["coord"] = { 49.3, 42.7, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								i(59764),	-- Cowl of the Leptochelae
								i(59763),	-- Aquasear Waistguard
								i(59762),	-- Wentletrap Legplates
							},
						}),
						q(25442, {	-- A Pearl of Wisdom
							["provider"] = { "i", 54614 },	-- Luminescent Pearl
							["coord"] = { 67.3, 49.7, VASHJIR_SHIMMERING_EXPANSE },
							["crs"] = { 40510 },	-- Fathom-Lord Zin'jatar
							["groups"] = {
								i(59752),	-- Tilefish Crown
								i(59751),	-- Triggerfish Girdle
								i(59750),	-- Starfish Gauntlets
							},
						}),
						q(25535, {	-- A Powerful Need To Eat
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25922,	-- Waking the Beast
							["coord"] = { 49.5, 57.3, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25581, {	-- An Occupation of Time (A)
							["qg"] = 40644,	-- Levia Dreamwalker
							["sourceQuest"] = 25540,	-- Bellies Await
							["coord"] = { 49.6, 57.1, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Lestharia Vashj statue
									["provider"] = { "o", 203386 },	-- Lestharia Vashj
								}),
								objective(2, {	-- 0/1 Queen Azshara statue
									["provider"] = { "o", 203388 },	-- Queen Azshara
								}),
								objective(3, {	-- 0/1 Ranger Valarian statue
									["provider"] = { "o", 203390 },	-- Ranger Valarian
								}),
								objective(4, {	-- 0/1 High Priestess Siralen statue
									["provider"] = { "o", 203391 },	-- High Priestess Siralen
								}),
								i(59716),	-- Time-Clearing Bracers
								i(59715),	-- Legguards of Revelation
								i(59714),	-- Improvisational Historian's Cloak
							},
						}),
						q(25954, {	-- An Occupation of Time (H)
							["qg"] = 40920,	-- Elendri Goldenbrow
							["sourceQuests"] = {
								25595,	-- Something Edible (definitely required)
								25593,	-- Shelled Salvation (probably required)
								25592,	-- Deep Attraction (probably required)
							},
							["coord"] = { 51.2, 62.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Lestharia Vashj statue
									["provider"] = { "o", 203386 },	-- Lestharia Vashj
								}),
								objective(2, {	-- 0/1 Queen Azshara statue
									["provider"] = { "o", 203388 },	-- Queen Azshara
								}),
								objective(3, {	-- 0/1 Ranger Valarian statue
									["provider"] = { "o", 203390 },	-- Ranger Valarian
								}),
								objective(4, {	-- 0/1 High Priestess Siralen statue
									["provider"] = { "o", 203391 },	-- High Priestess Siralen
								}),
								i(59713),	-- Time-Clearing Bracers
								i(59712),	-- Legguards of Revelation
								i(59711),	-- Improvisational Historian's Cloak
							},
						}),
						q(25537, {	-- Art of Attraction
							["qg"] = 40639,	-- Engineer Hexascrub
							["sourceQuest"] = 25535,	-- A Powerful Need to Eat
							["coord"] = { 48.9, 49.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25860, {	-- At All Costs
							["qg"] = 41456,	-- Lady Sira'kess
							["sourceQuests"] = {
								25896,	-- Devout Assembly
								25629,	-- Her Lady's Hands
							},
							["coord"] = { 33.1, 77.9, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/20 Attacking Kvaldir slain
									["providers"] = {
										{ "n", 42057},	-- Kvaldir Bonesnapper
										{ "n", 42058},	-- Kvaldir Sandreaper
										{ "n", 42102},	-- Kvaldir Bonesnapper
									},
								}),
							},
						}),
						q(25164, {	-- Backed Into a Corner
							["qg"] = 39226,	-- Farseer Gadra
							["sourceQuest"] = 25334,	-- The Looming Threat
							["coord"] = { 55.9, 13.6, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								i(59767),	-- Ostracod Sandals
								i(59766),	-- Shoulderguards of Caridean Might
								i(59765),	-- Damplight Chestplate
							},
						}),
						q(25456, {	-- Back in One Piece
							["qg"] = 39882,	-- The Great Sambino
							["sourceQuest"] = 25217,	-- Totem Modification
							["coord"] = { 41.3, 34.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25540, {	-- Bellies Await
							["qg"] = 40641,	-- Divemaster Birmingham
							["sourceQuests"] = {
								25538,	-- Odor Coater
								25539,	-- Clamming Up
							},
							["coord"] = { 48.9, 49.1, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59727),	-- Queen Conch Chestguard
								i(59726),	-- Sea Star Wristwraps
								i(59728),	-- Clam Shucker
							},
						}),
						q(25919, {	-- Body Blows (A)
							["qg"] = 41540,	-- Captain Taylor
							["sourceQuest"] = 25917,	-- We Are Not Alone (A)
							["coord"] = { 62.6, 49.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Nespirah Abscess attacked
									["provider"] = { "o", 203309 },	-- Nespirah Abscess
								}),
							},
						}),
						q(25993, {	-- Body Blows (H)
							["qg"] = 41810,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25991,	-- We Are Not Alone (H)
							["coord"] = { 60.2, 63.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/7 Nespirah Abscess attacked
									["provider"] = { "o", 203309 },	-- Nespirah Abscess
								}),
							},
						}),
						q(25916, {	-- Breaking Through (A)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25909,	-- Capture the Crab (A)
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25990, {	-- Breaking Through (H)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25989,	-- Capture the Crab (H)
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25658, {	-- Built to Last
							["qg"] = 41050,	-- Sira'kess Tide Priestess
							["sourceQuest"] = 25620,	-- The Revered Lady
							["coord"] = { 38.9, 58.5, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/6 Nar'shola Wards activated
									["provider"] = { "o", 203185 },	-- Nar'shola Ward
								}),
							},
						}),
						q(25858, {	-- By Her Lady's Word
							["qg"] = 42076,	-- Lady Naz'jar
							["sourceQuests"] = {
								25753,	-- Fallen But Not Forgotten (A)
								25964,	-- Fallen But Not Forgotten (H)
								25754,	-- Gauging Success (A)
								25965,	-- Gauging Success (H)
							},
							["coord"] = { 29.0, 78.4, VASHJIR_SHIMMERING_EXPANSE },
							["description"] = "Must be on |cFFFFD700Visions of the Past: The Slaughter of Biel'aran Ridge|r to accept this quest.",
							["groups"] = {
								objective(1, {	-- 0/1 Speak to Fathom-Lord Zin'jatar
									["provider"] = { "n", 41049 },	-- Fathom-Lord Zin'jatar
								}),
								objective(2, {	-- 0/1 Speak to Lady Sira'kess
									["provider"] = { "n", 41456 },	-- Lady Sira'kess
								}),
								objective(3, {	-- 0/1 Speak to Overseer Idra'kess
									["provider"] = { "n", 41455 },	-- Overseer Idra'kess
								}),
							},
						}),
						q(25909, {	-- Capture the Crab (A)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuests"] = {
								25907,	-- Slave Labor
								25908,	-- Stick it to Them
							},
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25989, {	-- Capture the Crab (H)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuests"] = {
								25907,	-- Slave Labor
								25908,	-- Stick it to Them
							},
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25579, {	-- Caught Off-Guard (A)
							["qg"] = 40643,	-- Admiral Dvorek
							["sourceQuest"] = 25540,	-- Bellies Await
							["coord"] = { 49.1, 56.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Azsh'ir Patroller slain
									["provider"] = { "n", 39638 },	-- Azsh'ir Patroller
								}),
							},
						}),
						q(25952, {	-- Caught Off-Guard (H)
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuests"] = {
								25595,	-- Something Edible
								25593,	-- Shelled Salvation
							},
							["coord"] = { 51.1, 62.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Azsh'ir Patroller slain
									["provider"] = { "n", 39638 },	-- Azsh'ir Patroller
								}),
							},
						}),
						q(25863, {	-- Chosen Burden
							["provider"] = { "o", 203305 },	-- Crucible of Nazsharin
							["sourceQuest"] = 25862,	-- Stolen Property
							["coord"] = { 57.2, 89.9, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25539, {	-- Clamming Up
							["qg"] = 40641,	-- Divemaster Birmingham
							["sourceQuest"] = 25535,	-- A Powerful Need to Eat
							["coord"] = { 48.9, 49.1, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/16 Glimmerdeep Clam
									["providers"] = {
										{ "i", 54861 },	-- Glimmerdeep Clam
										{ "o", 203032 },	-- Glimmerdeep Clam
									},
								}),
							},
						}),
						q(25748, {	-- Clear Goals (A)
							["qg"] = 40643,	-- Admiral Dvorek
							["sourceQuest"] = 25747,	-- Looking Forward
							["coord"] = { 32.9, 67.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Southern Naga Forces slain
									["providers"] = {
										{ "n", 41227},	-- Azsh'ir Infantry
										{ "n", 41228},	-- Naz'jar Serpent Guard
										{ "n", 42453},	-- Azsh'ir Abyss Priestess
									},
								}),
							},
						}),
						q(25959, {	-- Clear Goals (H)
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuest"] = 25958,	-- Looking Forward
							["coord"] = { 39.7, 54.1, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Southern Naga Forces
									["providers"] = {
										{ "n", 41227},	-- Azsh'ir Infantry
										{ "n", 41228},	-- Naz'jar Serpent Guard
										{ "n", 42453},	-- Azsh'ir Abyss Priestess
									},
								}),
							},
						}),
						q(25536, {	-- Cold Welcome
							["qg"] = 42411,	-- Captain Taylor
							["sourceQuest"] = 25922,	-- Waking the Beast
							["coord"] = { 56.9, 75.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Glimmerdeep Tidehunter slain
									["provider"] = { "n", 39664 },	-- Glimmerdeep Tidehunter
								}),
							},
						}),
						q(25895, {	-- Come Prepared (A)
							["qg"] = 41535,	-- Engineer Hexascrub
							["sourceQuest"] = 25893,	-- Desperate Plan
							["coord"] = { 56.9, 80.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Alliance Survival Kit
									["providers"] = {
										{ "i", 56181 },	-- Alliance Survival Kit
										{ "o", 203311 },	-- Alliance Survival Kit
									},
								}),
								i(59683),	-- Anomuran Footpads
								i(59682),	-- Nephropsis Treads
								i(59684),	-- Staff of Post-Facto Preparation
							},
						}),
						q(25970, {	-- Come Prepared (H)
							["qg"] = 41770,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25968,	-- Desperate Plan
							["coord"] = { 50.3, 78.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Horde Survival Kit
									["providers"] = {
										{ "i", 56251 },	-- Horde Survival Kit
										{ "o", 203409 },	-- Horde Survival Kit
									},
								}),
								i(59680),	-- Anomuran Footpads
								i(59679),	-- Nephropsis Treads
								i(59681),	-- Staff of Post-Facto Preparation
							},
						}),
						q(25360, {	-- Crabby Patrons
							["qg"] = 40227,	-- Felice
							["coord"] = { 41.1, 34.1, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/10 Green Sand Crab slain
									["providers"] = {
										{ "n", 39418},	-- Green Sand Crab
										{ "n", 40238},	-- Agitated Green Sand Crab
									},
								}),
								i(59761),	-- Leggings of the Albino Brachyura
								i(59760),	-- Crabcracker Chestguard
								i(59759),	-- Super-Sized Stompers
							},
						}),
						q(25594, {	-- Crafty Crabs
							["qg"] = 40918,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25996,	-- Waking the Beast
							["coord"] = { 51.7, 62.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/12 Fiasco's Stray Parts
									["provider"] = { "i", 55139 },	-- Fiasco's Stray Parts
									["cr"] = 40889,	-- Sandskin Pincer
								}),
								i(59731),	-- Part-Picker Wraps
								i(59730),	-- Oddly Revealing Chestguard
								i(59729),	-- Pocket-Sized Mace
							},
						}),
						q(25750, {	-- Curious Distraction (A)
							["u"] = REMOVED_FROM_GAME,
							["races"] = ALLIANCE_ONLY,
							["groups"] = {	-- rewards were moved to another quest so they're still collectible
								objective(1, {	-- 0/1 Messy Rubbing
									["provider"] = { "o", 203210 },	-- Highborne Tablet
								}),
								objective(2, {	-- 0/1 Smeared Rubbing
									["provider"] = { "o", 203212 },	-- Highborne Tablet
								}),
								objective(3, {	-- 0/1 Smudged Rubbing
									["provider"] = { "o", 203213 },	-- Highborne Tablet
								}),
								objective(4, {	-- 0/1 Torn Rubbing
									["provider"] = { "o", 203211 },	-- Highborne Tablet
								}),
								i(59697),	-- Keenstone Helm
								i(59696),	-- Gloves of Transcription
								i(59698),	-- Scribe's Quill
							},
						}),
						q(25961, {	-- Curious Distraction (H)
							["u"] = REMOVED_FROM_GAME,
							["races"] = HORDE_ONLY,
							["groups"] = {	-- rewards were moved to another quest so they're still collectible
								objective(1, {	-- 0/1 Messy Rubbing
									["provider"] = { "o", 203210 },	-- Highborne Tablet
								}),
								objective(2, {	-- 0/1 Torn Rubbing
									["provider"] = { "o", 203212 },	-- Highborne Tablet
								}),
								objective(3, {	-- 0/1 Smudged Rubbing
									["provider"] = { "o", 203213 },	-- Highborne Tablet
								}),
								objective(4, {	-- 0/1 Smeared Rubbing
									["provider"] = { "o", 203211 },	-- Highborne Tablet
								}),
								i(59694),	-- Keenstone Helm
								i(59693),	-- Gloves of Transcription
								i(59695),	-- Scribe's Quill
							},
						}),
						q(25592, {	-- Deep Attraction
							["qg"] = 40917,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25996,	-- Waking the Beast
							["coord"] = { 51.2, 63.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Redgill Scavenger slain
									["provider"] = { "n", 40911 },	-- Redgill Scavenger
								}),
							},
						}),
						q(25893, {	-- Desperate Plan (A)
							["qg"] = 40642,	-- Captain Taylor
							["sourceQuest"] = 25892,	-- Losing Ground
							["coord"] = { 49.1, 56.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25968, {	-- Desperate Plan (H)
							["qg"] = 40917,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25967,	-- Losing Ground
							["coord"] = { 51.2, 62.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25896, {	-- Devout Assembly
							["qg"] = 41456,	-- Lady Sira'kess
							["sourceQuest"] = 25973,	-- Welcome News
							["coord"] = { 33.1, 77.9, VASHJIR_SHIMMERING_EXPANSE },
							["description"] = "Must be on |cFFFFD700Visions of the Past: Rise from the Deep|r to accept this quest.",
						}),
						q(25219, {	-- Don't be Shellfish
							["qg"] = 39875,	-- Earthmender Duarn
							["sourceQuest"] = 25222,	-- Silver Tide Hollow
							["coord"] = { 49.2, 42.5, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25753, {	-- Fallen But Not Forgotten (A)
							["qg"] = 40642,	-- Captain Taylor
							["sourceQuest"] = 25752,	-- Swift Action
							["coord"] = { 39.0, 78.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Injured Assault Volunteers rescued
									["provider"] = { "n", 41281 },	-- Injured Assault Volunteer
								}),
							},
						}),
						q(25964, {	-- Fallen But Not Forgotten (H)
							["qg"] = 40917,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25963,	-- Swift Action
							["coord"] = { 39.0, 78.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/6 Injured Assault Volunteers rescued
									["provider"] = { "n", 41281 },	-- Injured Assault Volunteer
								}),
							},
						}),
						q(25440, {	-- Fathom-Lord Zin'jatar
							["qg"] = 40221,	-- Toshe Chaosrender
							["sourceQuest"] = 25439,	-- Vengeful Heart
							["coord"] = { 64.0, 42.2, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/1 Fathom-Lord Zin'jatar slain
									["provider"] = { "n", 40510 },	-- Fathom-Lord Zin'jatar
								}),
								i(59755),	-- Priapulid Bracers
								i(59754),	-- Sea-Bending Gloves
								i(59753),	-- Displaced Crown of Azrakir
							},
						}),
						q(25951, {	-- Final Judgment
							["qg"] = 41456,	-- Lady Sira'kess
							["sourceQuest"] = 25860,	-- At All Costs
							["coord"] = { 33.1, 77.9, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								ach(5452),	-- Visions of Vashj'ir Past
							},
						}),
						q(26219, {	-- Full Circle (A)
							["qg"] = 42411,	-- Captain Taylor
							["sourceQuest"] = 26005,	-- A Breath of Fresh Air
							["coord"] = { 56.9, 75.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(26221, {	-- Full Circle (H)
							["qg"] = 42410,	-- Legionnaire Nazgrim
							["sourceQuest"] = 26006,	-- A Breath of Fresh Air
							["coord"] = { 49.6, 66.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25754, {	-- Gauging Success (A)
							["qg"] = 40643,	-- Admiral Dvorek
							["sourceQuest"] = 25752,	-- Swift Action
							["coord"] = { 39.1, 78.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25965, {	-- Gauging Success (H)
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuest"] = 25963,	-- Swift Action
							["coord"] = { 39.1, 78.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25629, {	-- Her Lady's Hand
							["qg"] = 42077,	-- Lady Naz'jar
							["sourceQuest"] = 25973,	-- Welcome News
							["description"] = "Must be on |cFFFFD700Visions of the Past: Rise from the Deep|r to accept this quest.",
							["coord"] = { 33.1, 75.9, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25898, {	-- Honor and Privilege (A)
							["qg"] = 41535,	-- Engineer Hexascrub
							["sourceQuests"] = {
								25895,	-- Come Prepared
								25894,	-- Hostile Waters
								25897,	-- Unfurling Plan
							},
							["coord"] = { 56.9, 80.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25972, {	-- Honor and Privilege (H)
							["qg"] = 41770,	-- Fiasco Sizzlegrin
							["sourceQuests"] = {
								25970,	-- Come Prepared
								25969,	-- Hostile Waters
								25971,	-- Unfurling Plan
							},
							["coord"] = { 50.3, 78.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25918, {	-- Hopelessly Gearless (A)
							["qg"] = 41541,	-- Admiral Dvorek
							["sourceQuest"] = 25917,	-- We Are Not Alone
							["coord"] = { 62.7, 49.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/4 Purloined Polearm
									["providers"] = {
										{ "i", 56185 },	-- Purloined Polearm
										{ "o", 203373 },	-- Idra'kess Weapon Rack
									},
								}),
								i(59746),	-- Beakless Polearm
								i(59745),	-- Dusky Pearl Ring
								i(59744),	-- Sand-Scoured Protector
							},
						}),
						q(25992, {	-- Hopelessly Gearless (H)
							["qg"] = 41811,	-- Captain Vilethorn
							["sourceQuest"] = 25991,	-- We Are Not Alone
							["coord"] = { 60.1, 63.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/4 Purloined Polearm
									["providers"] = {
										{ "i", 56185 },	-- Purloined Polearm
										{ "o", 203373 },	-- Idra'kess Weapon Rack
									},
								}),
								i(59743),	-- Beakless Polearm
								i(59742),	-- Dusky Pearl Ring
								i(59741),	-- Sand-Scoured Protector
							},
						}),
						q(25894, {	-- Hostile Waters (A)
							["qg"] = 40645,	-- Jorlan Trueblade
							["sourceQuest"] = 25893,	-- Desperate Plan
							["coord"] = { 56.9, 80.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Muckskin Scrounger slain
									["provider"] = { "n", 41566 },	-- Muckskin Scrounger
								}),
							},
						}),
						q(25969, {	-- Hostile Waters (H)
							["qg"] = 40921,	-- Blood Guard Toldrek
							["sourceQuest"] = 25968,	-- Desperate Plan
							["coord"] = { 50.4, 79.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/10 Muckskin Scrounger slain
									["provider"] = { "n", 41566 },	-- Muckskin Scrounger
								}),
							},
						}),
						q(25747, {	-- Looking Forward (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25760,	-- Visions of the Past: The Invasion of Vashj'ir
							["coord"] = { 40.5, 75.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25958, {	-- Looking Forward (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 25957,	-- Visions of the Past: The Invasion of Vashj'ir
							["coord"] = { 40.6, 75.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25892, {	-- Losing Ground (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25755,	-- Visions of the Past: The Slaughter of Biel'aran Ridge
							["coord"] = { 29.5, 78.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25967, {	-- Losing Ground (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 25966,	-- Visions of the Past: The Slaughter of Biel'aran Ridge
							["coord"] = { 29.5, 78.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25900, {	-- Making Contact
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25890,	-- Nespirah
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25890, {	-- Nespirah
							["qg"] = 39875,	-- Earthmender Duarn
							["sourceQuest"] = 25440,	-- Fathom-Lord Zin'jatar
							["coord"] = { 49.2, 42.5, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25859, {	-- No Trespass Forgiven
							["qg"] = 42074,	-- Fathom-Stalker Azjentus
							["sourceQuest"] = 25858,	-- By Her Lady's Word
							["coord"] = { 46.1, 79.5, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/20 Vrykul Ledge Kvaldir slain
									["providers"] = {
										{ "n", 41105},	-- Kvaldir Limbripper
										{ "n", 41451},	-- Kvaldir Sandterror
										{ "n", 41537},	-- Kvaldir High-Shaman
									},
								}),
							},
						}),
						q(25749, {	-- Not Entirely Unprepared (A)
							["qg"] = 40642,	-- Captain Taylor
							["sourceQuest"] = 25747,	-- Looking Forward
							["coord"] = { 33.2, 68.3, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Alliance Lookout restocked
									["provider"] = { "i", 56247 },	-- Box of Crossbow Bolts
									["cr"] = 41235,	-- Alliance Lookout
								}),
								i(59704),	-- Treads of Dependability
								i(59703),	-- Seafletcher Shoulderpads
								i(59702),	-- Liminal Greathelm
							},
						}),
						q(25960, {	-- Not Entirely Unprepared (H)
							["qg"] = 40917,	-- Legionnaire Nazgrim
							["sourceQuest"] = 25958,	-- Looking Forward
							["coord"] = { 39.5, 54.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Horde Lookout restocked
									["provider"] = { "i", 56247 },	-- Box of Crossbow Bolts
									["cr"] = 41780,	-- Horde Lookout
								}),
								i(59701),	-- Treads of Dependability
								i(59700),	-- Seafletcher Shoulderpads
								i(59699),	-- Liminal Greathelm
							},
						}),
						q(25659, {	-- Not Soon Forgotten
							["qg"] = 41049,	-- Fathom-Lord Zin'jatar
							["sourceQuests"] = {
								25658,	-- Built to Last
								25637,	-- To the Fathom-Lord's Call
							},
							["coord"] = { 36.4, 78.6, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/1 Varkul the Unrelenting slain
									["provider"] = { "n", 41115 },	-- Varkul the Unrelenting
								}),
							},
						}),
						q(25538, {	-- Odor Coater
							["qg"] = 40639,	-- Engineer Hexascrub
							["sourceQuest"] = 25537,	-- Art of Attraction
							["coord"] = { 48.9, 49.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Clam Divers Odorfied
									["provider"] = { "i", 54851 },	-- Anemone Chemical Application Device
									["cr"] = 40646,	-- Glimmerdeep Diver
								}),
								i(59734),	-- Gloves of Piscine Attraction
								i(59733),	-- Chestplate of Fragrant Desire
								i(59732),	-- Prototype Chemical Applicator
							},
						}),
						q(25921, {	-- Overseer Idra'kess (A)
							["qg"] = 41540,	-- Captain Taylor
							["sourceQuests"] = {
								25919,	-- Body Blows
								25918,	-- Hopelessly Gearless
								25920,	-- Still Valuable
							},
							["coord"] = { 62.6, 49.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Overseer Idra'kess slain
									["provider"] = { "n", 41731 },	-- Overseer Idra'kess
								}),
								i(59740),	-- Earthmender's Sawfish Girdle
								i(59739),	-- Gorgonian Belt
								i(59738),	-- Helm of the Crushed Overseer
							},
						}),
						q(25995, {	-- Overseer Idra'kess (H)
							["qg"] = 41810,	-- Legionnaire Nazgrim
							["sourceQuests"] = {
								25993,	-- Body Blows
								25992,	-- Hopelessly Gearless
								25994,	-- Still Valuable
							},
							["coord"] = { 60.2, 63.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Overseer Idra'kess slain
									["provider"] = { "n", 41731 },	-- Overseer Idra'kess
								}),
								i(59737),	-- Eaerthmender's Sawfish Girdle
								i(59736),	-- Gorgonian Belt
								i(59735),	-- Helm of the Crushed Overseer
							},
						}),
						q(27716, {	-- Piece of the Past (A)
							["provider"] = { "i", 62281 },	-- Ancient Elven Etching (A)
							["sourceQuest"] = 25540,	-- Bellies Await
							["races"] = ALLIANCE_ONLY,
							["crs"] = {
								41227,	-- Azsh'ir Infantry
								39638,	-- Azsh'ir Patroller
							},
							["groups"] = {
								i(59697),	-- Keenstone Helm
								i(59696),	-- Gloves of Transcription
								i(59698),	-- Scribe's Quill
							},
						}),
						q(27717, {	-- Piece of the Past (H)
							["provider"] = { "i", 62282 },	-- Ancient Elven Etching (H)
							["sourceQuest"] = 25958,	-- Looking Forward
							["races"] = HORDE_ONLY,
							["crs"] = {
								41227,	-- Azsh'ir Infantry
								39638,	-- Azsh'ir Patroller
							},
							["groups"] = {
								i(59694),	-- Keenstone Helm
								i(59693),	-- Gloves of Transcription
								i(59695),	-- Scribe's Quill
							},
						}),
						q(25751, {	-- Properly Inspired (A)
							["qg"] = 40639,	-- Engineer Hexascrub
							["sourceQuest"] = 25747,	-- Looking Forward
							["coord"] = { 32.9, 69.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Bloated Kelp Bulb
									["providers"] = {
										{ "i", 55965 },	-- Bloated Kelp Bulb
										{ "o", 203209 },	-- Bloated Kelp Bulb
									},
								}),
							},
						}),
						q(25962, {	-- Properly Inspired (H)
							["qg"] = 40918,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25958,	-- Looking Forward
							["coord"] = { 39.4, 54.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Bloated Kelp Bulb
									["providers"] = {
										{ "i", 55965 },	-- Bloated Kelp Bulb
										{ "o", 203209 },	-- Bloated Kelp Bulb
									},
								}),
							},
						}),
						q(25619, {	-- Reoccupation (this shows up on the map after "Back in One Piece" but isn't actually available yet)
							["qg"] = 40978,	-- Fathom-Stalker Azjentus
							["sourceQuests"] = {
								27393,	-- The Call of the Blade (A)
								27394,	-- The Call of the Blade (H)
							},
							["coord"] = { 40.4, 75.3, VASHJIR_SHIMMERING_EXPANSE },
							["description"] = "Must be on |cFFFFD700Visions of the Past: The Invasion of Vashj'ir|r to get this quest.",
							["groups"] = {
								objective(1, {	-- 0/10 Kvaldir defenders
									["providers"] = {
										{ "n", 39602},	-- Kvaldir Marauder
										{ "n", 41107},	-- Kvaldir Deepwalker
									},
								}),
							},
						}),
						q(25221, {	-- Rundown
							["qg"] = 39877,	-- Toshe Chaosrender
							["sourceQuest"] = 25164,	-- Backed Into a Corner
							["coord"] = { 55.5, 12.5, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/20 Fleeing Zin'jatar Fathom-Stalker slain
									["provider"] = { "n", 40174 },	-- Fleeing Zin'jatar Fathom-Stalker
								}),
							},
						}),
						q(25861, {	-- Setting An Example
							["qg"] = 41457,	-- Executioner Verathress
							["sourceQuest"] = 25858,	-- By Her Lady's Word
							["coord"] = { 57.1, 85.1, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25593, {	-- Shelled Salvation
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuest"] = 25996,	-- Waking the Beast
							["coord"] = { 51.1, 62.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25222, {	-- Silver Tide Hollow
							["qg"] = 39877,	-- Toshe Chaosrender
							["sourceQuest"] = 25221,	-- Rundown
							["coord"] = { 53.2, 33.1, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25907, {	-- Slave Labor
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25900,	-- Making Contact
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25220, {	-- Slippery Threat
							["qg"] = 39878,	-- Caretaker Movra
							["sourceQuest"] = 25222,	-- Silver Tide Hollow
							["coord"] = { 49.1, 41.9, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/12 Spiketooth Eel slain
									["providers"] = {
										{ "n", 40200},	-- Spiketooth Eel
										{ "n", 40237},	-- Spiketooth Eel
									},
								}),
							},
						}),
						q(25595, {	-- Something Edible
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 25996,	-- Waking the Beast
							["coord"] = { 51.6, 62.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Snapjaw Grouper Meat
									["provider"] = { "i", 55140 },	-- Snapjaw Grouper Meat
									["cr"] = 40912,	-- Snapjaw Grouper
								}),
								i(59724),	-- Grouper-Skin Chestwrap
								i(59723),	-- Meiofauna Wristguards
								i(59725),	-- Filet Knife
							},
						}),
						q(25908, {	-- Stick it to Them
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25900,	-- Making Contact
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/7 Idra'kess Sentinel slain
									["provider"] = { "n", 41466 },	-- Idra'kess Sentinel
								}),
								objective(2, {	-- 0/7 Idra'kess Enchantress slain
									["provider"] = { "n", 41467 },	-- Idra'kess Enchantress
								}),
								i(59748),	-- Kilt of Shamanic Dreams
								i(59747),	-- Polychaete Footguards
								i(59749),	-- Stolen Idra'kess Drape
							},
						}),
						q(25920, {	-- Still Valuable (A)
							["qg"] = 41802,	-- Wavespeaker Valoren
							["sourceQuest"] = 25917,	-- We Are Not Alone
							["coord"] = { 62.5, 49.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Mysterious Pearl
									["provider"] = { "i", 56194 },	-- Mysterious Pearl
									["crs"] = {
										41607,	-- Idra'kess Warlord
										41608,	-- Idra'kess Prophet
									},
								}),
							},
						}),
						q(25994, {	-- Still Valuable (H)
							["qg"] = 41813,	-- Wavespeaker Tulra
							["sourceQuest"] = 25991,	-- We Are Not Alone
							["coord"] = { 60.2, 63.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/5 Mysterious Pearl
									["provider"] = { "i", 56194 },	-- Mysterious Pearl
									["crs"] = {
										41607,	-- Idra'kess Warlord
										41608,	-- Idra'kess Prophet
									},
								}),
							},
						}),
						q(25862, {	-- Stolen Property
							["qg"] = 41476,	-- Naz'jar Honor Guard
							["sourceQuest"] = 25858,	-- By Her Lady's Word
							["coord"] = { 46.3, 78.5, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25752, {	-- Swift Action (A)
							["qg"] = 40643,	-- Admiral Dvorek
							["sourceQuests"] = {
								25748,	-- Clear Goals
								25749,	-- Not Entirely Unprepared
								25751,	-- Properly Inspired
							},
							["coord"] = { 49.1, 56.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Speak to Engineer Hexascrub
									["provider"] = { "n", 40639 },	-- Engineer Hexascrub
								}),
								objective(2, {	-- 0/100 Azsh'ir Soldier slain
									["provider"] = { "n", 41249 },	-- Azsh'ir Soldier
								}),
								objective(3, {	-- 0/20 Azsh'ir Wave Screamer slain
									["provider"] = { "n", 41250 },	-- Azsh'ir Wave Screamer
								}),
								objective(4, {	-- 0/12 Azsh'ir Archaean slain
									["provider"] = { "n", 42549 },	-- Azsh'ir Archaean
								}),
								i(59663),	-- Tiger Shark Belt
								i(59662),	-- Atoll Treaders
								i(59664),	-- Pelagic Prism
							},
						}),
						q(25963, {	-- Swift Action (H)
							["qg"] = 40916,	-- Captain Vilethorn
							["sourceQuests"] = {
								25959,	-- Clear Goals
								25960,	-- Not Entirely Unprepared
								25962,	-- Properly Inspired
							},
							["coord"] = { 39.7, 53.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/1 Speak to Fiasco Sizzlegrin
									["provider"] = { "n", 40918 },	-- Fiasco Sizzlegrin
								}),
								objective(2, {	-- 0/100 Azsh'ir Soldier slain
									["provider"] = { "n", 41249 },	-- Azsh'ir Soldier
								}),
								objective(3, {	-- 0/20 Azsh'ir Wave Screamer slain
									["provider"] = { "n", 41250 },	-- Azsh'ir Wave Screamer
								}),
								objective(4, {	-- 0/12 Azsh'ir Archaean slain
									["provider"] = { "n", 42549 },	-- Azsh'ir Archaean
								}),
								i(59660),	-- Tiger Shark Belt
								i(59659),	-- Atoll Treaders
								i(59661),	-- Pelagic Prism
							},
						}),
						q(25580, {	-- Swift Approach (A)
							["qg"] = 40642,	-- Captain Taylor
							["sourceQuest"] = 25540,	-- Bellies Await
							["coord"] = { 49.1, 56.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Azsh'ir Monitor destroyed
									["provider"] = { "n", 40877 },	-- Azsh'ir Monitor
								}),
								i(59721),	-- Gulper Eel Sandals
								i(59720),	-- Chestguard of Alarming Dreams
								i(59722),	-- Cowry-Shell Pendant
							},
						}),
						q(25953, {	-- Swift Approach (H)
							["qg"] = 40917,	-- Legionnaire Nazgrim
							["sourceQuests"] = {
								25595,	-- Something Edible
								25593,	-- Shelled Salvation
							},
							["coord"] = { 51.2, 63.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Azsh'ir Monitor destroyed
									["provider"] = { "n", 40877 },	-- Azsh'ir Monitor
								}),
								i(59718),	-- Gulper Eel Sandals
								i(59717),	-- Chestguard of Alarming Dreams
								i(59719),	-- Cowry-Shell Pendant
							},
						}),
						q(27393, {	-- The Call of the Blade (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuests"] = {
								25582,	-- A Better Vantage (probably required)
								25579,	-- Caught Off-Guard (probably required)
								25580,	-- Swift Approach (definitely required)
							},
							["coord"] = { 49.5, 57.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(27394, {	-- The Call of the Blade (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuests"] = {
								25955,	-- A Better Vantage
								25952,	-- Caught Off-Guard
								25953,	-- Swift Approach (defintely required)
							},
							["coord"] = { 51.6, 62.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(26191, {	-- The Culmination of Our Efforts
							["qg"] = 42076,	-- Lady Naz'jar
							["sourceQuests"] = {
								25863,	-- Chosen Burden
								25859,	-- No Trespass Forgiven
								25861,	-- Setting An Example
							},
							["coord"] = { 46.4, 79.0, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25216, {	-- The Great Sambino
							["qg"] = 39876,	-- Felora Firewreath
							["sourceQuest"] = 25222,	-- Silver Tide Hollow
							["coord"] = { 49.3, 42.7, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25334, {	-- The Looming Threat
							["qg"] = 39226,	-- Farseer Gadra
							["sourceQuest"] = 25471,	-- Across the Great Divide
							["coord"] = { 55.9, 13.6, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25620, {	-- The Revered Lady
							["qg"] = 40978,	-- Fathom-Stalker Azjentus
							["sourceQuest"] = 25619,	-- Reoccupation
							["coord"] = { 40.5, 75.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25637, {	-- To the Fathom-Lord's Call
							["qg"] = 40640,	-- Lady Naz'jar
							["sourceQuest"] = 25620,	-- The Revered Lady
							["coord"] = { 39.4, 58.9, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/16 Kvaldir invaders on the terrace slain
									["providers"] = {
										{ "n", 41108},	-- Kvaldir Plunderer
										{ "n", 41102},	-- Kvaldir Pillager
										{ "n", 41106},	-- Kvaldir Wasteroamer
									},
								}),
							},
						}),
						q(25359, {	-- Toshe's Vengeance
							["qg"] = 39876,	-- Felora Firewreath
							["sourceQuest"] = 25456,	-- Back in One Piece (TODO:: does this require any other quest from Silver Tide Hollow?)
							["coord"] = { 49.5, 42.3, VASHJIR_SHIMMERING_EXPANSE },
							["isBreadcrumb"] = true,
						}),
						q(25217, {	-- Totem Modification
							["qg"] = 39882,	-- The Great Sambino
							["sourceQuest"] = 25218,	-- Undersea Inflation
							["coord"] = { 41.3, 34.2, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								i(59756),	-- Drill-Guide Belt
								i(59758),	-- Rockbite Slicer
								i(59757),	-- Sambino's Old Hammer
							},
						}),
						q(25218, {	-- Undersea Inflation
							["qg"] = 39882,	-- The Great Sambino
							["sourceQuest"] = 25216,	-- The Great Sambino
							["coord"] = { 41.3, 34.2, VASHJIR_SHIMMERING_EXPANSE },
						}),
						q(25897, {	-- Unfurling Plan (A)
							["qg"] = 41535,	-- Engineer Hexascrub
							["sourceQuest"] = 25893,	-- Desperate Plan
							["coord"] = { 56.9, 80.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Coil of Kvaldir Rope
									["provider"] = { "i", 56183 },	-- Coil of Kvaldir Rope
									["crs"] = {
										41569,	-- Kvaldir Fleshcarver
										41606,	-- Kvaldir Seahorror
									},
								}),
							},
						}),
						q(25971, {	-- Unfurling Plan (H)
							["qg"] = 41770,	-- Fiasco Sizzlegrin
							["sourceQuest"] = 25968,	-- Desperate Plan
							["coord"] = { 50.3, 78.9, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								objective(1, {	-- 0/8 Coil of Kvaldir Rope
									["provider"] = { "i", 56183 },	-- Coil of Kvaldir Rope
									["crs"] = {
										41569,	-- Kvaldir Fleshcarver
										41606,	-- Kvaldir Seahorror
									},
								}),
							},
						}),
						q(25583, {	-- Upon the Scene of Battle (A)
							["provider"] = { "o", 203140 },	-- Broken Prong
							["sourceQuests"] = {
								25540,	-- Bellies Await
								27393,	-- The Call of the Blade (breadcrumb)
							},
							["coord"] = { 40.4, 75.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25956, {	-- Upon the Scene of Battle (H)
							["provider"] = { "o", 203140 },	-- Broken Prong
							["sourceQuests"] = {
								25595,	-- Something Edible
								27394,	-- The Call of the Blade (breadcrumb)
							},
							["coord"] = { 40.4, 75.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25439, {	-- Vengeful Heart
							["qg"] = 40221,	-- Toshe Chaosrender
							["sourceQuest"] = 25359,	-- Toshe's Vengeance
							["coord"] = { 64.0, 42.2, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/10 Zin'jatar Ravager slain
									["provider"] = { "n", 40275 },	-- Zin'jatar Ravager
								}),
							},
						}),
						q(25626, {	-- Visions of the Past: Rise from the Deep (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25911,	-- Welcome News
							["coord"] = { 49.4, 57.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59671),	-- Pearlescent Spaulders
								i(59670),	-- Volaran's Handguards
								i(59672),	-- Quel'Dormir Signet Ring
								i(59669),	-- Emerald Dragonet Choker
							},
						}),
						q(26135, {	-- Visions of the Past: Rise from the Deep (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 25973,	-- Welcome News
							["coord"] = { 51.6, 62.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59667),	-- Pearlescent Spaulders
								i(59666),	-- Volaren's Handguards
								i(59668),	-- Quel'Dormir Signet Ring
							},
						}),
						q(25760, {	-- Visions of the Past: Invasion of Vashj'ir (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuest"] = 25583,	-- Upon the Scene of Battle
							["coord"] = { 49.4, 57.4, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59709),	-- Wound-Binding Girdle
								i(59708),	-- Chestguard of the Naz'jar
								i(59710),	-- Wavespeaker's Focus
							},
						}),
						q(25957, {	-- Visions of the Past: Invasion of Vashj'ir (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuest"] = 25956,	-- Upon the Scene of Battle
							["coord"] = { 51.6, 62.7, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59706),	-- Wound-Binding Girdle
								i(59705),	-- Chestguard of the Naz'jar
								i(59707),	-- Wavespeaker's Focus
							},
						}),
						q(25755, {	-- Visions of the Past: The Slaughter of Biel'aran Ridge (A)
							["qg"] = 39881,	-- Wavespeaker Valoren
							["sourceQuests"] = {
								25753,	-- Fallen But Not Forgotten
								25754,	-- Gauging Success
							},
							["coord"] = { 39.2, 78.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59691),	-- Battlemaiden's Vision
								i(59690),	-- Grips of the Kvaldir
								i(59689),	-- Kvaldir Battle Standard
								i(59692),	-- Ancient Beth'moran Cloak
							},
						}),
						q(25966, {	-- Visions of the Past: The Slaughter of Biel'aran Ridge (H)
							["qg"] = 40919,	-- Wavespeaker Tulra
							["sourceQuests"] = {
								25964,	-- Fallen But Not Forgotten
								25965,	-- Gauging Success
							},
							["coord"] = { 39.1, 78.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59687),	-- Battlemaiden's Vision
								i(59686),	-- Grips of the Kvaldir
								i(59685),	-- Kvaldir Battle Standard
								i(59688),	-- Ancient Beth'moran Cloak
							},
						}),
						q(25441, {	-- Vortex
							["qg"] = 40221,	-- Toshe Chaosrender
							["coord"] = { 64.0, 42.2, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								objective(1, {	-- 0/30 Swarming Serpents trapped
									["provider"] = { "i", 54785 },	-- Globes of Tumultuous Water
									["cr"] = 40280,	-- Swarming Serpent
								}),
							},
						}),
						q(25922, {	-- Waking the Beast (A)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25921,	-- Overseer Idra'kess
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25996, {	-- Waking the Beast (H)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25995,	-- Overseer Idra'kess
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(27443, {	-- The War Has Many Fronts (A)
							["qg"] = 45462,	-- Toshe Chaosrender
							["sourceQuest"] = 26005,	-- A Breath of Fresh Air
							["coord"] = { 57.2, 75.5, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(27442, {	-- The War Has Many Fronts (H)
							["qg"] = 45460,	-- Earthmender Duarn
							["sourceQuest"] = 26006,	-- A Breath of Fresh Air
							["coord"] = { 64.4, 68.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
						}),
						q(25917, {	-- We Are Not Alone (A)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25916,	-- Breaking Through
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
						q(25991, {	-- We Are Not Alone (H)
							["qg"] = 41531,	-- Earthmender Duarn
							["sourceQuest"] = 25990,	-- Breaking Through
							["coord"] = { 51.6, 52.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						q(25911, {	-- Welcome News (A)
							["qg"] = 40645,	-- Jorlan Trueblade
							["sourceQuest"] = 25898,	-- Honor and Privilege
							["coord"] = { 56.5, 80.2, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(59678),	-- Robes of the Watery Savior
								i(59677),	-- Harp Shell Wristguards
								i(59676),	-- True Beacon Shoulderplates
							},
						}),
						q(25973, {	-- Welcome News (H)
							["qg"] = 40921,	-- Blood Guard Toldrek
							["sourceQuest"] = 25972,	-- Honor and Privilege
							["coord"] = { 50.4, 79.0, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(59675),	-- Robes of the Watery Savior
								i(59674),	-- Harp Shell Wristguards
								i(59673),	-- True Beacon Shoulderplates
							},
						}),
					}),
					n(RARES, {
						n(50052, {	-- Burgy Blackheart
							["coord"] = { 57.0, 69.6, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = {
								i(65665, {	-- Burgy Blackheart's Handsome Hat
									["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
								}),
								i(134022, {	-- Burgy Blackheart's Handsome Hat (TOY!)
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						n(51071, {	-- Captain Florence: Does not drop collectible loot.
							["coord"] = { 55.2, 73.8, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = HORDE_ONLY,
						}),
						n(51079, {	-- Captain Foulwind: Does not drop collectible loot.
							["coord"] = { 66.8, 69.6, VASHJIR_SHIMMERING_EXPANSE },
							["races"] = ALLIANCE_ONLY,
						}),
					}),
					-- #if AFTER 9.2.5
					n(SPECIAL, {
						o(373438, {	-- Coilclutch Vine
							["coord"] = { 34.7, 75, VASHJIR_SHIMMERING_EXPANSE },
							["cost"] = {{"i",187662,1}},	-- Strange Goop
							["timeline"] = { ADDED_9_2_5 },
							["g"] = {
								i(187916),	-- Coilclutch Vine
							},
						}),
					}),
					-- #endif
					n(VENDORS, {
						n(50324, {	-- Provisioner Arok <Earthen Ring Quartermaster>
							["coord"] = { 49.1, 42.1, VASHJIR_SHIMMERING_EXPANSE },
							["groups"] = bubbleDownClassicRep(FACTION_THE_EARTHEN_RING, {
								{	-- Neutral
								},
								{	-- Friendly
									i(65905),	-- Tabard of the Earthen Ring
								},
								{	-- Honored
									i(62356),	-- Helm of Temperance
									i(62354),	-- Pendant of Elemental Balance
									i(62353),	-- Mantle of Moss
									i(62355),	-- Stone-Wrapped Greaves
								},
								{	-- Revered
									i(62357),	-- Cloak of Ancient Wisdom
									i(62361),	-- Softwind Cape
									i(62359),	-- Peacemaker's Breastplate
									i(62358),	-- Leggings of Clutching Roots
									i(62366, {	-- Arcanum of the Earthen Ring
										["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
										["filterID"] = CONSUMABLES,
									}),
									i(68764, {	-- Arcanum of the Earthen Ring
										["filterID"] = CONSUMABLES,
									}),
								},
								{	-- Exalted
									i(62364),	-- Flamebloom Gloves
									i(62365),	-- World Keeper's Gauntlets
									i(62363),	-- Earthmender's Boots
									i(62362),	-- Signet of the Elder Council
								},
							}),
						}),
					}),
				},
			}),
			n(ZONE_DROPS, {
				["maps"] = {
					VASHJIR_ABYSSAL_DEPTHS,
					VASHJIR_KELPTHAR_FOREST,
					VASHJIR_SHIMMERING_EXPANSE,
				},
				["groups"] = {
					i(65649),	-- Technique: Origami Slime
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(EASTERN_KINGDOMS, {
		m(VASHJIR, {
			n(QUESTS, {
				q(26119),	-- Vashj'ir - FLAG - Claim Our Stake Launched
			}),
		}),
	}),
})));