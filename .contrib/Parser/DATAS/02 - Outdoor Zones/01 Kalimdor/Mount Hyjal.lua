---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(MOUNT_HYJAL, {
		["lore"] = "Mount Hyjal is the zone most players quest in when starting Cataclysm zones. Between Ragnaros attacking Hyjal with the help of the Twilight Cultists and Malfurion Stormrage back from the Emerald Dream, this zone is filled with familiar faces and epic quests from the start. The scenery alternates between lush forests and scorched earth, as the player attempts to heal the land and regrow the forests.",
		["icon"] = 409547,
		["timeline"] = { ADDED_4_0_3 },
		["maps"] = {
			760,	-- Malorne's Nightmare
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(5483, {	-- Bounce
					["description"] = "Requires the regrowth phase of Mount Hyjal.",
				}),
				ach(4870, {	-- Coming Down the Mountain
					-- #IF RETAIL
					["_doautomation"] = true,
					-- #ENDIF
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						25584,	-- The Return of the Ancients
						25298,	-- Free Your Mind, the Rest Follows
						25332,	-- Get Me Outta Here!	-- verify
						25312,	-- Return to Duskwhisper
						25612,	-- Return from the Firelands	-- verify
						25382,	-- Disrupting the Rituals
						29066,	-- Good News... and Bad News
						25520,	-- An Ancient Awakens
						25832,	-- Return to Aviana
						25653,	-- The Ancients are With Us
						25531,	-- Twilight Riot
						25551,	-- The Firelord
					},
					-- #endif
				}),
				explorationAch(4863),	-- Explore Hyjal
				ach(5860, {		-- The 'Unbeatable?' Pterodactyl: BEATEN.
					["description"] = "The daily quest 'Vigilance on Wings' is offered in Firelands Hatchery after completing the intial quests as part of the questline in Shrine of Aviana.",
					["groups"] = {
						i(69838, {		-- Chirping Box (Blue / Gold Mini Jouster - which ever wasnt picked during !Vigilance on Wings)
							["description"] = "Contains either the Blue or Gold Mini Jouster, whichever was not picked during the quest Vigilance on Wings.",
							["groups"] = {
								i(65661),	-- Blue Mini Jouster (PET!)
								i(65662),	-- Gold Mini Jouster (PET!)
							},
						}),
					},
				}),
				achWithRep(4882, FACTION_GUARDIANS_OF_HYJAL),	-- The Guardians of Hyjal
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					487,	-- Alpine Chipmunk (PET!)
					632,	-- Ash Lizard (PET!)
					482,	-- Rock Viper (PET!)
				}},
				["groups"] = {
					pet(540, {	-- Carrion Rat (PET!)
						["description"] = "Only found at the given coords, and as secondary pet.",
						["coords"] = {
							{ 79.1, 49.3, MOUNT_HYJAL },	-- Seat of the Chosen
							{ 55.0, 86.0, MOUNT_HYJAL },	-- Ascendant's Rise, west of.
							{ 31.0, 86.0, MOUNT_HYJAL },	-- Sethria's Roost
						},
					}),
					pet(755, {	-- Death's Head Cockroach (PET!)
						["description"] = "Can be found in areas where the Twilight Hammer have set up camp in Mount Hyjal, as well as common secondary pet to other critters.",
						["coords"] = {
							{ 57.0, 68.75, MOUNT_HYJAL },	-- Ascendant's Rise, north of
							{ 58.4, 80.8, MOUNT_HYJAL },	-- Ascendant's Rise, south
							{ 28.0, 35.6, MOUNT_HYJAL },	-- Gar'gol's Hovel
							{ 29.0, 40.0, MOUNT_HYJAL },	-- Lightning Ledge
							{ 43.7, 21.0, MOUNT_HYJAL },	-- Twilight Command Post
						},
					}),
					pet(479, {	-- Elfin Rabbit (PET!)
						["description"] = "Found mostly around Nordrassil in Mount Hyjal, as well as Teldrassil.",
						["coords"] = {
							{ 40.7, 43.55, MOUNT_HYJAL },	-- Shrine of Aviana
							{ 50.0, 20.0, MOUNT_HYJAL },	-- Ruins of Lar'donir
							{ 62.7, 28.6, MOUNT_HYJAL },	-- Nordrassil south
							{ 58.7, 21.25, MOUNT_HYJAL },	-- Nordrassil west
						},
					}),
					pet(415, {	-- Fire Beetle (PET!)
						["description"] = "Common around fiery and dry areas of Mount Hyjal, as well as around Searing Gorge, Blasted Lands and Burning Steppes",
						["coords"] = {
							{ 60.0, 70.0, MOUNT_HYJAL },	-- Fiery Mount Hyjal
						},
					}),
					pet(541, {	-- Fire-Proof Roach (PET!)
						["description"] = "Common around fiery and dry areas of Mount Hyjal.",
						["coords"] = {
							{ 60.0, 70.0, MOUNT_HYJAL },	-- Fiery Mount Hyjal
						},
					}),
					pet(539, {	-- Grotto Vole (PET!)
						["description"] = "Can be found in the Hyjal Barrow Dens.",
						["coords"] = {
							{ 52.5, 17.3, MOUNT_HYJAL },	-- Hyjal Barrow Dens entrance.
						},
					}),
					pet(547, {	-- Nordrassil Wisp (PET!)
						["description"] = "Can be found around the Nordrassil pond.",
						["coords"] = {
							{ 60.55, 26.35, MOUNT_HYJAL },	-- Nordrassil
						},
					}),
					pet(503, {	-- Silky Moth (PET!)
						["description"] = "Can be found around the Nordrassil pond, as well as in Moonglade and Un'Goro Crater.",
						["coords"] = {
							{ 62.7, 28.6, MOUNT_HYJAL },	-- Nordrassil south
							{ 58.7, 21.25, MOUNT_HYJAL },	-- Nordrassil west
							{ 48.6, 24.3, MOUNT_HYJAL },	-- The Verdant Thicket
						},
					}),
					pet(469, {	-- Twilight Beetle (PET!)
						["description"] = "Can be found in areas where the Twilight Hammer have set up camp.",
						["coords"] = {
							{ 58.4, 80.8, MOUNT_HYJAL },	-- Ascendant's Rise
							{ 57.0, 68.75, MOUNT_HYJAL },	-- Ascendant's Rise, north of
							{ 28.0, 35.6, MOUNT_HYJAL },	-- Gar'gol's Hovel
							{ 29.0, 40.0, MOUNT_HYJAL },	-- Lightning Ledge
							{ 43.7, 21.0, MOUNT_HYJAL },	-- Twilight Command Post
							{ 68.5, 16.0, AZSHARA },	-- Sable Ridge
							{ 40.1, 71.0, DEEPHOLM },	-- Master's Gate
							{ 60.3, 44.9, DEEPHOLM },	-- Lorthuna's Gate
							{ 63.0, 33.1, DEEPHOLM },	-- Twilight's Precipice
						},
					}),
				},
			}),
			explorationHeader({
				visit_exploration(5045,{coord={57.8,77.5,198}}),    -- Ascendant's Rise
				exploration(5018),	-- Ashen Lake
				exploration(5013),	-- Blackhorn's Penance
				exploration(4991),	-- Darkwhisper Gorge
				visit_exploration(4996,{coord={91.2,49.4,198}}),    -- Doom's Vigil
				visit_exploration(4994,{coord={87.3,56.5,198}}),    -- The Forge of Supplication
				visit_exploration(4988,{coord={29.8,35.4,198}}),    -- Gar'gol's Hovel
				exploration(4998),	-- Gates of Sothann
				exploration(4989),	-- Grove of Aessina
				visit_exploration(4999,{coord={32.8,43.1,198}}),    -- Lightning Ledge
				visit_exploration(4980,{coord={33.3,36.1,198}}),    -- Maw of Lycanthoth
				exploration(5038),	-- Nordrassil
				visit_exploration(5022,{coord={37.3,71.5,198}}),    -- Rim of the World
				exploration(5019),	-- Sanctuary of Malorne
				exploration(5087),	-- Sethria's Roost
				exploration(4990),	-- Shrine of Aviana
				exploration(4979),	-- Shrine of Goldrinn
				visit_exploration(5039,{coord={47.8,77.6,198}}),    -- Sulfuron Spire
				exploration(5623),	-- The Circle of Cinders
				exploration(5020),	-- The Flamewake
				visit_exploration(5014,{coord={16.5,48.0,198}}),    -- The Inferno
				exploration(4861),	-- The Regrowth
				exploration(5017),	-- The Scorched Plain
				exploration(5040),	-- The Throne of Flame
				visit_exploration(4984,{coord={79.6,61.1,198}}),    -- The Twilight Gauntlet
				exploration(5622),	-- The Verdant Thicket
				visit_exploration(5033,{coord={38.9,24.6,198}}),    -- Twilight Command Post
				exploration(5016),	-- Whistling Grove
				visit_exploration(4978,{coord={33.5,30.2,198}}),    -- Wolf's Run
			}),
			n(FACTIONS, {
				faction(FACTION_GUARDIANS_OF_HYJAL, {	-- Guardians of Hyjal
					["provider"] = { "i", 65906 },	-- Tabard of the Guardians of Hyjal
				}),
			}),
			-- #if ANYCLASSIC
			prof(FISHING, {
				o(202776, {	-- Mountain Trout School
					i(22739),	-- Tome of Polymorph: Turtle (CI!)
				}),
				i(68050, {	-- Shatterscale Mightfish
					["provider"] = { "i", 68049 },	-- Heat-Treated Spinning Lure
					["coord"] = { 52.4, 77.0, MOUNT_HYJAL },	-- The Throne of Flame
					["description"] = "Can be caught by fishing in lava using a special lure.",
				}),
			}),
			-- #endif
			n(FLIGHT_PATHS, {
				fp(616, {	-- Gates of Sothann
					["cr"] = 43549,	-- Althera <Flight Master>
					["coord"] = { 71.6, 75.3, MOUNT_HYJAL },
				}),
				fp(558, {	-- Grove of Aessina
					["crs"] = {
						41860,	-- Elizil Wintermoth <Flight Master>
						53783,	-- Elizil Wintermoth <Flight Master>
					},
					["coord"] = { 19.6, 36.3, MOUNT_HYJAL },
				}),
				fp(559, {	-- Nordrassil
					["cr"] = 41861,	-- Fayran Elthas <Flight Master>
					["coord"] = { 62.1, 21.5, MOUNT_HYJAL },
				}),
				fp(781, {	-- Sanctuary of Malorne
					["crs"] = {
						54392,	-- Ranela Featherglen <Flight Master>
						54393,	-- Ranela Featherglen <Flight Master>
					},
					["coord"] = { 27.7, 63.6, MOUNT_HYJAL },
				}),
				fp(557, {	-- Shrine of Aviana
					["crs"] = {
						43481,	-- Dinorae Swiftfeather <Flight Master>
						50084,	-- Dinorae Swiftfeather <Flight Master>
						-- #if AFTER 7.2.0
						119843,	-- Dinorae Swiftfeather <Flight Master>
						-- #endif
					},
					["coord"] = { 41.1, 42.5, MOUNT_HYJAL },
				}),
			}),
			n(QUESTS, {
				q(25731, {	-- A Bird in Hand
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuests"] = {
						25656,	-- Scrambling For Eggs
						25655,	-- The Wormwing Problem
					},
					["coord"] = { 42.1, 45.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- Marion Wormwing Captured
							["provider"] = { "o", 203187 },	-- Harpy Signal Fire
							["coord"] = { 38.3, 44.2, MOUNT_HYJAL },
						}),
						objective(2, {	-- Marion Wormwing Interrogated
							["provider"] = { "n", 41112 },	-- Marion Wormwing
							["coord"] = { 38.4, 44.0, MOUNT_HYJAL },
						}),
						i(57333),	-- Punishing Shoulders
						i(57332),	-- Legplates of Persuasion
						i(57334),	-- Pinpoint Choker
					},
				}),
				q(25494, {	-- A Champion's Collar
					["qg"] = 39406,	-- Instructor Devoran
					["sourceQuest"] = 25294,	-- Walking the Dog
					["coord"] = { 90.1, 56.3, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Spiked Basilisk Hide
							["provider"] = { "i", 54610 },	-- Spiked Basilisk Hide
							["coord"] = { 84.5, 46.6, MOUNT_HYJAL },
							["cr"] = 40403,	-- Spinescale Matriarch
						}),
					},
				}),
				q(25758, {	-- A Gap in Their Armor
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25740,	-- Fact-Finding Mission
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Armor Plate
							["providers"] = {
								{ "i",  55809 },	-- Twilight Armor Plate
								{ "o", 203197 },	-- Twilight Armor Plate
								{ "o", 203198 },	-- Twilight Armor Plate
							},
							["coord"] = { 30.8, 79.5, MOUNT_HYJAL },
							["cr"] = 41030,	-- Twilight Dragonkin Armorer
						}),
					},
				}),
				q(25411, {	-- A New Master
					["qg"] = 39933,	-- Tyrus Blackhorn
					["sourceQuest"] = 25408,	-- Seeds of Their Demise
					["coord"] = { 22.2, 44.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Inferno Lord Subjugated
							["provider"] = { "i", 53120 },	-- Bottled Bileberry Brew
							["coord"] = { 12.2, 39.8, MOUNT_HYJAL },
							["cr"] = 39974,	-- Twilight Inferno Lord
						}),
					},
				}),
				q(25665, {	-- A Plea From Beyond
					["qg"] = 41068,	-- Mysterious Winged Spirit
					["sourceQuest"] = 25663,	-- An Offering For Aviana
					["coord"] = { 40.3, 44.3, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
				}),
				q(25664, {	-- A Prayer and a Wing
					["qg"] = 41005,	-- Choluna
					["sourceQuests"] = {
						25663,	-- An Offering For Aviana
						25665,	-- A Plea From Beyond
					},
					["coord"] = { 44.4, 46.2, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Feather
							["providers"] = {
								{ "i",  55210 },	-- Ancient Feather
								{ "i",  55211 },	-- Enormous Bird Call
								{ "o", 203169 },	-- Blaithe's Roost
							},
							["coords"] = {
								{ 35.6, 42.2, MOUNT_HYJAL },
								{ 40.2, 37.2, MOUNT_HYJAL },
								{ 44.6, 38.0, MOUNT_HYJAL },
							},
							["cr"] = 41084,	-- Blaithe <Aviana's Consort>
						}),
						i(57341),	-- Shoulderpads of Dead Memories
						i(57340),	-- Griefsoul Wristguards
						i(57339),	-- Heartcrush Greathammer
					},
				}),
				q(25324, {	-- A Prisoner of Interest
					["qg"] = 38917,	-- Alysra
					["sourceQuest"] = 25424,	-- Return to Alysra
					["coord"] = { 48.4, 18.9, MOUNT_HYJAL },
				}),
				q(25372, {	-- Aessina's Miracle
					["providers"] = {
						{ "n", 41381 },	-- Nordu
						{ "i", 56057 },	-- Heart of the Forest
					},
					["sourceQuests"] = {
						25381,	-- Fighting Fire With ... Anything
						25842,	-- Firefight
					},
					["coord"] = { 27.3, 55.5, MOUNT_HYJAL },
					["groups"] = {
						i(57267),	-- Rebirth Spaulders
						i(57266),	-- Gloves of Nurtured Truth
						i(57265),	-- Treads of Restoration
						i(57264),	-- Chestplate of Viridian Renewal
					},
				}),
				q(25499, {	-- Agility Training: Run Like Hell!
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuest"] = 25509,	-- Physical Training: Forced Labor
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Physical Training
							["provider"] = { "n", 40434 },	-- Blazing Trainer
						}),
					},
				}),
				q(25520, {	-- An Ancient Awakens
					["qg"] = 40341,	-- Tortolla
					["sourceQuests"] = {
						25514,	-- Breaking the Bonds
						25519,	-- Children of Tortolla
					},
					["coord"] = { 24.6, 55.6, MOUNT_HYJAL },
				}),
				q(25807, {	-- An Ancient Reborn
					["qg"] = 41005,	-- Choluna
					["sourceQuest"] = 25795,	-- Return to the Shrine
					["coord"] = { 44.4, 46.2, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Herald's Incense Burned
							["provider"] = { "i", 56016 },	-- Herald's Incense
							["coord"] = { 44.2, 47.6, MOUNT_HYJAL },
							["cr"] = 41300,	-- Aviana's Egg
						}),
						i(57336),	-- Skygrip Handguards
						i(57337),	-- Heraldcall Censer
						i(57335),	-- Signet of Fragrant Summoning
					},
				}),
				q(25663, {	-- An Offering for Aviana
					["qg"] = 41005,	-- Choluna
					["sourceQuests"] = {
						27874,	-- Aviana's Legacy
						25584,	-- The Return of the Ancients
						25985,	-- Wings Over Mount Hyjal
					},
					["coord"] = { 44.4, 46.2, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Nectar Offered
							["providers"] = {
								{ "i",  55208 },	-- Sacred Nectar
								{ "o", 203147 },	-- Aviana's Burial Circle
							},
							["coord"] = { 40, 44, MOUNT_HYJAL },
						}),
					},
				}),
				q(25316, {	-- As Hyjal Burns
					["qg"] = 39865,	-- Emissary Windsong
					["sourceQuests"] = {
						-- #if AFTER 7.3.5.25600
						49855,	-- Disaster at Mount Hyjal
						-- #endif
						27726,	-- Hero's Call: Mount Hyjal!
						27721,	-- Warchief's Command: Mount Hyjal!
					},
					["coord"] = { 45.4, 44.6, MOONGLADE },
					["timeline"] = { ADDED_4_0_3 },
					["isBreadcrumb"] = true,
				}),
				q(27874, {	-- Aviana's Legacy
					["qg"] = 40289,	-- Ysera
					["sourceQuests"] = {
						25611,	-- Return from the Firelands (A)
						25612,	-- Return from the Firelands (H)
					},
					["coord"] = { 62.0, 24.8, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
				}),
				q(25428, {	-- Black Heart of Flame
					["qg"] = 39933,	-- Tyrus Blackhorn
					["sourceQuests"] = {
						25412,	-- The Name Never Spoken
						25443,	-- The Name Never Spoken
					},
					["coord"] = { 22.2, 44.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Black Heart of Thol'embaar
							["providers"] = {
								{ "i", 53454 },	-- Black Heart of Thol'embaar
								{ "i", 53464 },	-- Charred Branch
							},
							["cr"] = 40107,	-- Thol'embaar
						}),
						i(57321),	-- Charbite Hood
						i(57320),	-- Embercrusher Grips
						i(57322),	-- Signet of Nascent Fire
					},
				}),
				q(25514, {	-- Breaking the Bonds
					["qg"] = 40341,	-- Tortolla
					["sourceQuest"] = 25510,	-- Tortolla Speaks
					["coord"] = { 24.6, 55.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 First Rod of Subjugation Disabled
							["provider"] = { "o", 202954 },	-- Rod of Subjugation
							["cr"] = 40551, -- Twilight Dominator
						}),
						objective(2, {	-- 0/1 Second Rod of Subjugation Disabled
							["provider"] = { "o", 202955 },	-- Rod of Subjugation
							["cr"] = 40551, -- Twilight Dominator
						}),
					},
				}),
				q(25899, {	-- Breakthrough
					["qg"] = 41507,	-- Niden
					["sourceQuest"] = 25843,	-- Tortolla's Revenge
					["coord"] = { 42.2, 60.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Scorchlord slain
							["provider"] = { "n", 41500 },	-- Twilight Scorchlord
						}),
					},
				}),
				q(25552, {	-- Brood of Evil
					["qg"] = 40816,	-- Aronus
					["sourceQuest"] = 25644,	-- The Twilight Egg
					["coord"] = { 72.2, 73.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Young Twilight Drake Skull
							["provider"] = { "i", 54973 },	-- Young Twilight Drake Skull
							["crs"] = {
								40687,	-- Young Twilight Drake
								40974,	-- Desperiona
							},
						}),
					},
				}),
				q(25519, {	-- Children of Tortolla
					["qg"] = 40341,	-- Tortolla
					["sourceQuest"] = 25510,	-- Tortolla Speaks
					["coord"] = { 24.6, 55.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/6 Tortolla's Eggs Saved
							["provider"] = { "n", 40561 },	-- Deep Corruptor
						}),
						i(57280),	-- Kilt of Reborn Future
						i(57279),	-- Boots of Infinite Possibility
						i(57278),	-- Shadow-Cleanser Bracers
						i(57277),	-- Crown of Chelonian Freedom
					},
				}),
				q(25599, {	-- Cindermaul, the Portal Master
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuests"] = {
						25577,	-- Crushing the Cores
						25575,	-- Forged of Shadow and Flame
						25576,	-- Rage of the Wolf Ancient
					},
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Cindermaul slain
							["provider"] = { "n", 40844 },	-- Cindermaul
						}),
						objective(2, {	-- 0/1 Tome of Openings
							["provider"] = { "i", 55136 },	-- Tome of Openings
							["cr"] = 40844,	-- Cindermaul
						}),
					},
				}),
				q(25277, {	-- Cleaning House
					["qg"] = 39432,	-- Takrik Ragehowl
					["sourceQuest"] = 25279,	-- The Shrine Reclaimed
					["coord"] = { 28.4, 29.8, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Minion of Gar'gol Slain
							["providers"] = {
								{ "n", 39642},	-- Hovel Brute
								{ "n", 39643},	-- Hovel Shadowcaster
							},
						}),
					},
				}),
				q(25278, {	-- Cleaning House
					["qg"] = 39433,	-- Ian Duran
					["sourceQuest"] = 25280,	-- The Shrine Reclaimed
					["coord"] = { 28.22, 29.74, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Minion of Gar'gol Slain
							["providers"] = {
								{ "n", 39642},	-- Hovel Brute
								{ "n", 39643},	-- Hovel Shadowcaster
							},
						}),
					},
				}),
				q(25597, {	-- Commander Jarod Shadowsong
					["qg"] = 40289,	-- Ysera
					["sourceQuest"] = 25653,	-- The Ancients are With Us
					["coord"] = { 62.0, 24.8, MOUNT_HYJAL },
				}),
				q(25577, {	-- Crushing the Cores
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuests"] = {
						25617,	-- Into the Maw! H1
						25618,	-- Into the Maw! A1
						25623,	-- Into the Maw! A2
						25624,	-- Into the Maw! H2
					},
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Smoldering Core Destroyed
							["providers"] = {
								{ "i",  55123 },	-- Smoldering Corecrusher
								{ "o", 203067 },	-- Twilight Anvil
							},
							["cr"] = 40841,	-- Searing Guardian
						}),
						i(57358),	-- Coreforged Girdle
						i(57357),	-- Anvilcrush Bracers
						i(57359),	-- Drape of Smoldering Dreams
					},
				}),
				q(25553, {	-- Death to the Broodmother
					["qg"] = 40816,	-- Aronus
					["sourceQuest"] = 25552,	-- Brood of Evil
					["coord"] = { 72.2, 73.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Desperiona slain
							["providers"] = {
								{ "n", 40974 },	-- Desperiona
								{ "i", 55173 },	-- Young Twilight Drake Skull
							},
							["coord"] = { 54.2, 85.2, MOUNT_HYJAL },
						}),
						i(57302),	-- Maggotproof Gloves
						i(57301),	-- Matriarch-Hide Wristguards
						i(57300),	-- Greaves of Violent Revenge
					},
				}),
				q(25761, {	-- Disassembly
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25758,	-- A Gap In Their Armor
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/3 Twilight Juggernaut slain
							["providers"] = {
								{ "n", 41031 },	-- Twilight Juggernaut
								{ "i", 55883 },	-- Thisalee's Shiv
							},
						}),
						i(57314),	-- Nimble-Knife Chestguard
						i(57313),	-- Bladerip Girdle
						i(57312),	-- Discarded Juggernaut Plating
						i(57315),	-- Claw of Corroded Hope
					},
				}),
				q(25382, {	-- Disrupting the Rituals
					["qg"] = 39927,	-- Laina Nightsky
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 19.0, 40.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/6 Twilight Inferno Lord slain
							["provider"] = { "n", 39974 },	-- Twilight Inferno Lord
						}),
						i(57331),	-- Ring of the Quenched Inferno
						i(57330),	-- Lordbane Scepter
						i(57329),	-- Firestorm Hackblade
					},
				}),
				q(25491, {	-- Durable Seeds
					["qg"] = 39858,	-- Archdruid Hamuul Runetotem
					["sourceQuest"] = 25490,	-- Smashing Through Ashes
					["coord"] = { 27.1, 62.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Hyjal Seedling
							["providers"] = {
								{ "i", 54574 },	-- Hyjal Seedling
								{ "o", 202884 },	-- Scorched Soil
							},
						}),
					},
				}),
				q(25764, {	-- Egg Hunt
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuests"] = {
						25746,	-- Sethria's Brood
						25763,	-- The Codex of Shadows
					},
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- Aviana's Egg Unveiled and Defended
							["providers"] = {
								{ "n",  41224 },	-- Aviana's Egg
								{ "o", 203208 },	-- Shadow Cloak Generator
							},
							["coord"] = { 31.8, 81.4, MOUNT_HYJAL },
						}),
						i(57319),	-- Lightheart Sandals
						i(57318),	-- Tunic of Soaring Safety
						i(57317),	-- Cloakbreaker Helm
						i(57316),	-- Egg-Lift Talisman
					},
				}),
				q(25560, {	-- Egg Wave
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25544,	-- Wave Two
					["coord"] = { 37.2, 56.1, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/40 Firelands Egg Destroyed
							["provider"] = { "n", 40762 },	-- Firelands Egg
						}),
						ach(4959),	-- Beware of the 'Unbeatable?' Pterodactyl
						i(65662),	-- Gold Mini Jouster (PET!)
						i(65661),	-- Blue Mini Jouster (PET!)
					},
				}),
				q(25303, {	-- Elementary!
					["provider"] = { "o", 202712 },	-- The Twilight Apocrypha
					["sourceQuest"] = 25301,	-- Mastering Puppets
					["coord"] = { 25.8, 41.6, MOUNT_HYJAL },
					["description"] = "Activate in order 1. Fire, 2. Earth, 3. Air and 4. Water.",
					["groups"] = {
						objective(1, {	-- 0/1 Crucible of Earth Activated
							["provider"] = { "n", 39737 },	-- Crucible of Earth
						}),
						objective(2, {	-- 0/1 Crucible of Air Activated
							["provider"] = { "n", 39736 },	-- Crucible of Air
						}),
						objective(3, {	-- 0/1 Crucible of Fire Activated
							["provider"] = { "n", 39730 },	-- Crucible of Fire
						}),
						objective(4, {	-- 0/1 Crucible of Water Activated
							["provider"] = { "n", 39738 },	-- Crucible of Water
						}),
						i(57382),	-- Apocryhphic Bindings
						i(57381),	-- Chestguard of Inscrutability
						i(57380),	-- Girdle of Gar'gol
					},
				}),
				q(25430, {	-- Emerald Allies
					["qg"] = 39869,	-- Windspeaker Tamila
					["sourceQuest"] = 25464,	-- The Return of Baron Geddon
					["coord"] = { 47.6, 35.5, MOUNT_HYJAL },
				}),
				q(25233, {	-- End of the Supply Line
					["qg"] = 39427,	-- Jadi Falaryn
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 35.7, 19.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Twilight Proveditor slain
							["provider"] = { "n", 39436 },	-- Twilight Proveditor
						}),
					},
				}),
				q(25740, {	-- Fact-Finding Mission
					["qg"] = 40997,	-- Skylord Omnuron
					["sourceQuests"] = {
						25731,	-- A Bird In Hand
						25664,	-- A Prayer and a Wing
					},
					["coord"] = { 43.5, 45.8, MOUNT_HYJAL },
				}),
				q(25381, {	-- Fighting Fire With ... Anything
					["qg"] = 39927,	-- Laina Nightsky
					["sourceQuests"] = {
						25584,	-- The Return of the Ancients
						25630,	-- The Fires of Mount Hyjal
					},
					["coord"] = { 19.0, 40.9, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Raging Firestorm slain
							["provider"] = { "n", 39939 },	-- Raging Firestorm
						}),
					},
				}),
				q(25923, {	-- Finish Nemesis
					["qg"] = 41498,	-- Garunda Mountainpeak
					["sourceQuests"] = {
						25915,	-- The Strength of Tortolla
						25910,	-- The Time for Mercy has Passed
					},
					["coord"] = { 64.2, 53.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Nemesis slain
							["providers"] = {
								{ "n", 41614 },	-- Nemesis
								{ "i", 56207 },	-- Totem of Tortolla
							},
						}),
						i(57263),	-- Liberating Crown
						i(57262),	-- Leggings of the Vanquished Usurper
						i(57261),	-- Tortolla's Discarded Scales
						i(57260),	-- Nemesis Crushers
					},
				}),
				q(25492, {	-- Firebreak
					["qg"] = 40331,	-- Rayne Feathersong
					["sourceQuest"] = 25490,	-- Smashing Through Ashes
					["coord"] = { 27.0, 63.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Lava Surger slain
							["provider"] = { "n", 46911 },	-- Lava Surger
						}),
					},
				}),
				q(25842, {	-- Firefight
					["qg"] = 41381,	-- Nordu
					["sourceQuest"] = 25830,	-- The Last Living Lorekeeper
					["coord"] = { 27.3, 55.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Fiery Tormentor slain
							["provider"] = { "n", 41396 },	-- Fiery Tormentor
						}),
					},
				}),
				q(25323, {	-- Flamebreaker
					["qg"] = 39857,	-- Malfurion Stormrage
					["sourceQuests"] = {
						25472,	-- The Flameseer's Staff
						25319,	-- War on the Twilight's Hammer
					},
					["coord"] = { 47.7, 35.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/30 Unbound Flame Spirit slain
							["providers"] = {
								{ "n", 40065 },	-- Unbound Flame Spirit
								{ "i", 53107 },	-- Flameseer's Staff
							},
							["cr"] = 38896,	-- Blazebound Elemental
						}),
					},
				}),
				q(25574, {	-- Flames from Above
					["qg"] = 40278,	-- Tholo Whitehoof
					["sourceQuest"] = 25370,	-- Inciting the Elements
					["coord"] = { 64.0, 22.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Infiltrators' encampment burnt
							["provider"] = { "i", 55122 },	-- Tholo's Horn
							["coord"] = { 56.0, 16.0, MOUNT_HYJAL },
						}),
						i(57296),	-- Girdle of Nullified Infiltration
						i(57295),	-- Hornblower's Legguards
						i(57294),	-- Poisonfire Greatsword
					},
				}),
				q(25523, {	-- Flight in the Firelands
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25810,	-- The Hatchery Must Burn
					["coord"] = { 37.2, 56.2, MOUNT_HYJAL },
					["groups"] = {
						i(52716),	-- Twilight Firelance
					},
				}),
				q(25575, {	-- Forged of Shadow and Flame
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuest"] = 25617,	-- Into the Maw!
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Arms Crate Destroyed
							["provider"] = { "o", 203066 },	-- Twilight Arms Crate
						}),
					},
				}),
				q(25600, {	-- Foremaster Pyrendius
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuest"] = 25599,	-- Cindermaul, the Portal Master
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Forgemaster Pyrendius slain
							["provider"] = { "n", 40845 },	-- Forgemaster Pyrendius
						}),
						i(57270),	-- Wolfking Spaulders
						i(57269),	-- Helm of Terrorizing Fangs
						i(57268),	-- Forgemaster's Shattered Shackle
					},
				}),
				q(25298, {	-- Free Your Mind, the Rest Follows
					["provider"] = { "o", 202706 },	-- Twilight Cauldron
					["sourceQuest"] = 25297,	-- From the Mouth of Madness
					["coord"] = { 28.4, 36.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Servitor Freed
							["providers"] = {
								{ "n", 39644 },	-- Twilight Servitor
								{ "i", 52730 },	-- Cleansing Draught
							},
						}),
						i(57364),	-- Purifying Spaulders
						i(57363),	-- Invidious Casque
						i(57365),	-- Crusher of Bonds
					},
				}),
				q(25493, {	-- Fresh Bait
					["qg"] = 39858,	-- Archdruid Hamuul Runetotem
					["sourceQuest"] = 25490,	-- Smashing Through Ashes
					["coord"] = { 27.1, 62.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Core Hound Entrails
							["provider"] = { "i", 54609 },	-- Core Hound Entrails
							["crs"] = {
								40338,	-- Deeprock Incendosaur
								46910,	-- Core Hound
							},
						}),
						i(57352),	-- Gore-Stained Shoulderpads
						i(57351),	-- Gutrip Gauntlets
						i(57353),	-- Calcified Gizzard
					},
				}),
				q(25297, {	-- From the Mouth of Madness
					["qg"] = 39434,	-- Rio Duran
					["sourceQuest"] = 25272,	-- Lycanthoth the Corruptor
					["coord"] = { 28.1, 29.8, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Stonebloom
							["providers"] = {
								{ "i", 52726 },	-- Stonebloom
								{ "o", 202702 },	-- Stonebloom
							},
						}),
						objective(2, {	-- 0/1 Bitterblossom
							["providers"] = {
								{ "i", 52727 },	-- Bitterblossom
								{ "o", 202703 },	-- Bitterblossom
							},
						}),
						objective(3, {	-- 0/1 Darkflame Ember
							["providers"] = {
								{ "i", 52728 },	-- Darkflame Ember
								{ "o", 202705 },	-- Darkflame Ember
							},
						}),
					},
				}),
				q(25328, {	-- Gar'gol's Gotta Go
					["qg"] = 39640,	-- Kristoff Manheim
					["sourceQuest"] = 25272,	-- Lycanthoth the Corruptor
					["coord"] = { 27.2, 40.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Rusted Skull Key
							["providers"] = {
								{ "i", 52789 },	-- Rusted Skull Key
								{ "o", 204580 },	-- Gar'gol's Personal Treasure Chest
							},
						}),
					},
				}),
				q(25296, {	-- Gather the Intelligence
					["provider"] = { "o", 202701 },	-- Outhouse Hideout
					["sourceQuest"] = 25291,	-- Twilight Training
					["coord"] = { 88.2, 58.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Communique
							["providers"] = {
								{ "i", 52724 },	-- Twilight Communique
								{ "o", 202968 },	-- Crate of Scrolls
							},
						}),
						objective(2, {	-- 0/1 Hyjal Battleplans
							["providers"] = {
								{ "i", 52725 },	-- Hyjal Battleplans
								{ "o", 202969 },	-- Hyjal Battleplans
							},
						}),
					},
				}),
				q(25332, {	-- Get Me Outta Here!
					["qg"] = 39640,	-- Kristoff Manheim
					["sourceQuest"] = 25328,	-- Gar'gol's Gotta Go
					["coord"] = { 27.2, 40.7, MOUNT_HYJAL },
					["groups"] = {
						i(57362),	-- Hood of Misplaced Dreams
						i(57361),	-- Neglected Footpads
						i(57360),	-- Shoulderguards of Empty Memory
					},
				}),
				q(25271, {	-- Goldrinn's Ferocity
					["qg"] = 39433,	-- Ian Duran
					["sourceQuest"] = 25268,	-- The Voice of Goldrinn
					["coord"] = { 30.12, 31.33, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Polluted Incense
							["provider"] = { "i", 52658 },	-- Polluted Incense
							["cr"] = 39445,	-- Lycanthoth Vandal
						}),
					},
				}),
				q(29066, {	-- Good News... and Bad News
					["qg"] = 39928,	-- Matoclaw
					["sourceQuest"] = 25428,	-- Black Heart of Flame
					["coord"] = { 22.2, 44.9, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
				}),
				q(25315, {	-- Graduation Speech
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuest"] = 25601,	-- Head of the Class
					["coord"] = { 59.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- Graduation Speech
							["provider"] = { "o", 202996 },	-- Initiation Podium
							["coord"] = { 95.1, 51.3, MOUNT_HYJAL },
						}),
					},
				}),
				q(25496, {	-- Grudge Match
					["qg"] = 39406,	-- Instructor Devoran
					["sourceQuest"] = 25494,	-- A Champion's Collar
					["coord"] = { 90.1, 56.3, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Grudge Match
							["providers"] = {
								{ "n", 40409 },	-- Gromm'ko
								{ "n", 40412 },	-- Butcher
							},
							["coord"] = { 77.8, 51.2, MOUNT_HYJAL },
						}),
					},
				}),
				q(25255, {	-- Harrying the Hunters
					["qg"] = 39429,	-- Oomla Whitehorn
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 35.6, 19.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/6 Twilight Hunter slain
							["provider"] = { "n", 39437 },	-- Twilight Hunter
						}),
					},
				}),
				q(25601, {	-- Head of the Class
					["provider"] = { "o", 202701 },	-- Outhouse Hideout
					["sourceQuest"] = 25314,	-- Speech Writing for Dummies
					["coord"] = { 88.2, 58.5, MOUNT_HYJAL },
				}),
				q(25507, {	-- Hell's Shells
					["qg"] = 39858,	-- Archdruid Hamuul Runetotem
					["sourceQuest"] = 25493,	-- Fresh Bait
					["coord"] = { 27.1, 62.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Nemesis Shell Fragment
							["providers"] = {
								{ "i", 54745 },	-- Nemesis Shell Fragment
								{ "i", 54744 },	-- Heap of Core Hound Innards
							},
							["cr"] = 40340,	-- Nemesis <The Usurper>
						}),
					},
				}),
				heroscall(q(27726, {	-- Hero's Call: Mount Hyjal! (max level 100)
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 80,
				})),
				q(29386, {	-- Hero's Call: Mount Hyjal!
					-- @Darkal: This might be an HQT
					["u"] = REMOVED_FROM_GAME,	-- triggers when turning in #27726
				}),
				q(25270, {	-- Howling Mad
					["qg"] = 39432,	-- Takrik Ragehowl
					["sourceQuest"] = 25269,	-- The Voice of Lo'Gosh
					["coord"] = { 30.1, 31.7, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Polluted Incense
							["provider"] = { "i", 52658 },	-- Polluted Incense
							["cr"] = 39445,	-- Lycanthoth Vandal
						}),
					},
				}),
				q(25901, {	-- Hyjal Recycling Program
					["qg"] = 41497,	-- Logram
					["sourceQuest"] = 25372,	-- Aessina's Miracle
					["coord"] = { 56.8, 56.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/15 Warden's Arrow
							["providers"] = {
								{ "i", 56176 },	-- Warden's Arrow
								{ "o", 203310 },	-- Warden's Arrow
							},
						}),
						i(57347),	-- Bloodbolt Crossbow
						i(57345),	-- Razorproof Greaves
						i(57346),	-- Mindfletcher Talisman
					},
				}),
				q(25404, {	-- If You're Not Against Us...
					["qg"] = 39928,	-- Matoclaw
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 19.0, 36.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- Blackhorn Persuaded
							["provider"] = { "n", 39933 },	-- Tyrus Blackhorn
							["coord"] = { 22.2, 44.8, MOUNT_HYJAL },
						}),
					},
				}),
				q(25224, {	-- In Bloom
					["qg"] = 39442,	-- Condenna the Pitiless
					["sourceQuest"] = 25276,	-- Your New Identity
					["coord"] = { 76.9, 62.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Flame Blossom
							["providers"] = {
								{ "i", 52537 },	-- Flame Blossom
								{ "o", 202619 },	-- Flame Blossom
							},
						}),
					},
				}),
				q(25234, {	-- In the Rear With the Gear
					["qg"] = 39427,	-- Jadi Falaryn
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 35.7, 19.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/36 Twilight Supplies
							["providers"] = {
								{ "i", 52568 },	-- Twilight Supplies
								{ "o", 202652 },	-- Twilight Supplies
							},
						}),
						i(57385),	-- Repurposed Twilight Girdle
						i(57384),	-- Rust-Scrivened Leggings
						i(57383),	-- Sharptooth Signet
					},
				}),
				q(25370, {	-- Inciting the Elements
					["qg"] = 40278,	-- Tholo Whitehoof
					["coord"] = { 64.0, 22.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Twilight Inciter slain
							["providers"] = {
								{ "n",  39926 },	-- Twilight Inciter
								{ "n",  39921 },	-- Faerie Dragon
								{ "i",  53009 },	-- Juniper Berries
								{ "o", 202754 },	-- Juniper Berries
							},
							["coord"] = { 68.0, 23.4, MOUNT_HYJAL },
						}),
					},
				}),
				q(25624, {	-- Into the Maw!
					["qg"] = 39432,	-- Takrik Ragehowl
					["altQuests"] = { 25617 },	-- Into the Maw!
					["sourceQuest"] = 25355,	-- Lightning in a Bottle
					["coord"] = { 28.4, 29.8, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
				}),
				q(25617, {	-- Into the Maw!
					["qg"] = 39622,	-- Spirit of Lo'Gosh
					["altQuests"] = { 25624 },	-- Into the Maw!
					["sourceQuest"] = 25355,	-- Lightning in a Bottle
					["coord"] = { 28.6, 39.2, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
				}),
				q(25623, {	-- Into the Maw!
					["qg"] = 39433,	-- Ian Duran
					["altQuests"] = { 25618 },	-- Into the Maw!
					["sourceQuest"] = 25353,	-- Lightning in a Bottle
					["races"] = ALLIANCE_ONLY,
				}),
				q(25618, {	-- Into the Maw!
					["qg"] = 39627,	-- Spirit of Goldrinn
					["altQuests"] = { 25623 },	-- Into the Maw!
					["sourceQuest"] = 25353,	-- Lightning in a Bottle
					["races"] = ALLIANCE_ONLY,
				}),
				q(25940, {	-- Last Stand at Whistling Grove
					["providers"] = {
						{ "n", 39927 },	-- Laina Nightsky
						{ "n", 39928 },	-- Matoclaw
					},
					["sourceQuests"] = {
						25382,	-- Disrupting the Rituals
						25392,	-- Oh, Deer!
						25428,	-- Black Heart of Flame
					},
					["coords"] = {
						{ 19.0, 40.9, MOUNT_HYJAL },	-- Laina Nightsky
						{ 19.03, 37.01, MOUNT_HYJAL },	-- Matoclaw
					},
				}),
				q(25355, {	-- Lightning in a Bottle
					["qg"] = 39432,	-- Takrik Ragehowl
					["sourceQuest"] = 25277,	-- Cleaning House
					["description"] = "Before using Totem of Lo'Gosh to turn in the quest, get back to the camp and stand next to Takrik Ragehowl. Summon Spirit of Lo'Gosh, turn in your quest and without going anywhere pick up Into the Maw! from Takrik Ragehowl and then pick up Into the Maw! from Spirit of Lo'Gosh (in this order). Congratulations, you got two quests for the price of one!",
					["coord"] = { 28.22, 29.74, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Charged Condenser Jar
							["providers"] = {
								{ "i",  52834 },	-- Charged Condenser Jar
								{ "o", 202731 },	-- Lightning Channel
								{ "i",  52853 },	-- Totem of Goldrinn
							},
						}),
					},
				}),
				q(25353, {	-- Lightning in a Bottle
					["qg"] = 39433,	-- Ian Duran
					["sourceQuest"] = 25278,	-- Cleaning House
					["description"] = "Before using Totem of Goldrinn to turn in the quest, get back to the camp and stand next to Ian Duran. Summon Goldrinn, turn in your quest and without going anywhere pick up Into the Maw! from Ian Duran and then pick up Into the Maw! from Goldrinn (in this order). Congratulations, you got two quests for the price of one!",
					["coord"] = { 28.22, 29.74, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Charged Condenser Jar
							["providers"] = {
								{ "i",  52834 },	-- Charged Condenser Jar
								{ "o", 202731 },	-- Lightning Channel
								{ "i",  52853 },	-- Totem of Goldrinn
							},
						}),
					},
				}),
				q(25881, {	-- Lost Wardens
					["qg"] = 41507,	-- Niden
					["sourceQuest"] = 25843,	-- Tortolla's Revenge
					["coord"] = { 42.2, 60.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Lost Wardens Rescued
							["provider"] = { "n", 41499 },	-- Lost Warden
						}),
					},
				}),
				q(25273, {	-- Lycanthoth the Corruptor
					["qg"] = 39433,	-- Ian Duran
					["sourceQuest"] = 25271,	-- Goldrinn's Ferocity
					["coord"] = { 30.12, 31.33, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Lycanthoth slain
							["providers"] = {
								{ "n", 39446 },	-- Lycanthoth
								{ "i", 52682 },	-- Lycanthoth's Incense
							},
						}),
						i(57379),	-- Clutches of the Worgen Spirit
						i(57378),	-- Primal Force Girdle
						i(57377),	-- Goldrinn's Locket
					},
				}),
				q(25272, {	-- Lycanthoth the Corruptor
					["qg"] = 39432,	-- Takrik Ragehowl
					["sourceQuest"] = 25270,	-- Howling Mad
					["coord"] = { 30.1, 31.7, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Lycanthoth slain
							["providers"] = {
								{ "n", 39446 },	-- Lycanthoth
								{ "i", 52682 },	-- Lycanthoth's Incense
							},
						}),
						i(57376),	-- Handguards of Restrained Brutality
						i(57375),	-- Wrap of Furious Pride
						i(57374),	-- Choker of Lo'Gosh
					},
				}),
				q(25550, {	-- Magma Monarch
					["qg"] = 40772,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25549,	-- The Sanctum of the Prophets
					["coord"] = { 72.0, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 King Moltron slain
							["providers"] = {
								{ "n", 40998 },	-- King Moltron
								{ "i", 55179 },	-- Drums of the Turtle God
							},
							["coord"] = { 43.4, 83.4, MOUNT_HYJAL },
						}),
					},
				}),
				q(25301, {	-- Mastering Puppets
					["provider"] = { "o", 202697 },	-- Eye of Twilight
					["sourceQuest"] = 25300,	-- The Eye of Twilight
					["coord"] = { 27.1, 35.2, MOUNT_HYJAL },
				}),
				q(25299, {	-- Mental Training: Speaking the Truth to Power
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuest"] = 25499,	-- Agility Training: Run Like Hell!
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Mental Training
							["provider"] = { "i", 52828 },	-- Orb of Ascension
						}),
					},
				}),
				q(25548, {	-- Might of the Firelord
					["providers"] = {
						{ "n", 40772 },	-- Commander Jarod Shadowsong
						{ "n", 40934 },	-- Emerald Drake
					},
					["sourceQuest"] = 25608,	-- Slash and Burn
					["coord"] = { 72.0, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Flame Ascendant slain
							["provider"] = { "n", 40709 },	-- Flame Ascendant
						}),
						objective(2, {	-- 0/5 Twilight Subjugator slain
							["provider"] = { "n", 40463 },	-- Twilight Subjugator
						}),
						i(57289),	-- Flamesear Leggings
						i(57288),	-- Subjugator's Shoulderguards
						i(57287),	-- Gauntlets of Guerilla Fury
					},
				}),
				q(25392, {	-- Oh, Deer!
					["qg"] = 39930,	-- Mylune
					["sourceQuest"] = 25385,	-- Save the Wee Animals
					["coord"] = { 19.2, 37.8, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/3 Injured Fawn Escorted Home
							["provider"] = { "n", 39999 },	-- Injured Fawn
							["coord"] = { 11.0, 39.8, MOUNT_HYJAL },
						}),
						i(57327),	-- Deer-Savior Leggings
						i(57326),	-- Salt-Lick Chestguard
						i(57328),	-- Cloak of Cheerful Flowers
					},
				}),
				q(25509, {	-- Physical Training: Forced Labor
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuest"] = 25291,	-- Twilight Training
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Darkwhisper Lodestone broken
							["providers"] = {
								{ "o", 202952 },	-- Darkwhisper Lodestone
								{ "i",  54788 },	-- Twilight Pick
							},
						}),
					},
				}),
				q(25502, {	-- Prepping the Soil
					["qg"] = 40331,	-- Rayne Feathersong
					["sourceQuest"] = 25492,	-- Firebreak
					["coord"] = { 27.0, 63.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- Flameward Activated
							["provider"] = { "o", 202902 },	-- Flameward
						}),
						objective(2, {	-- Flameward Defended
							["provider"] = { "n", 40460 },	-- Activated Flameward
						}),
						i(57349),	-- Helm of the Mendicant
						i(57348),	-- Flameward Cloak
						i(57350),	-- Kindleprotector Staff
					},
				}),
				q(25886, {	-- Pressing the Advantage
					["qg"] = 41492,	-- Captain Irontree
					["sourceQuest"] = 25881,	-- Lost Wardens
					["coord"] = { 57.1, 55.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Twilight Field Captain slain
							["provider"] = { "n", 41502 },	-- Twilight Field Captain
						}),
					},
				}),
				q(25317, {	-- Protect the World Tree
					["qg"] = 40289,	-- Ysera
					["sourceQuest"] = 25316,	-- As Hyjal Burns
					["coord"] = { 62.0, 24.8, MOUNT_HYJAL },
					-- #if AFTER BFA
					["description"] = "If the NPC is not visible and Magni is there instead, you will need to complete the quest 'Do It the Azerite Way' [55521] to restore the proper phasing to pick up this quest.",
					-- #endif
				}),
				q(25576, {	-- Rage of the Wolf Ancient
					["qg"] = 40837,	-- Yargra Blackscar
					["sourceQuest"] = 25617,	-- Into the Maw!
					["coord"] = { 26.3, 41.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/12 Dark Iron Laborer slain
							["provider"] = { "n", 40838 },	-- Dark Iron Laborer
						}),
					},
				}),
				q(25611, {	-- Return from the Firelands (A)
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuest"] = 25600,	-- Forgemaster Pyrendius
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25612, {	-- Return from the Firelands (H)
					["qg"] = 40834,	-- Jordan Olafson
					["sourceQuest"] = 25600,	-- Forgemaster Pyrendius
					["coord"] = { 26.2, 41.9, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
				}),
				q(25424, {	-- Return to Alysra
					["qg"] = 40096,	-- Scout Larandia
					["sourceQuest"] = 25321,	-- Twilight Captivity
					["coord"] = { 44.4, 18.9, MOUNT_HYJAL },
				}),
				q(25832, {	-- Return to Aviana
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25560,	-- Egg Wave
					["coord"] = { 37.2, 56.1, MOUNT_HYJAL },
					["groups"] = {
						i(57273),	-- Blinkered Hood
						i(57272),	-- Sky-Knight Handguards
						i(57271),	-- Silver Spur Boots
					},
				}),
				q(25312, {	-- Return to Duskwhisper
					["provider"] = { "o", 202712 },	-- The Twilight Apocrypha
					["sourceQuest"] = 25303,	-- Elementary!
					["coord"] = { 25.8, 41.6, MOUNT_HYJAL },
				}),
				q(25578, {	-- Return to Nordrassil
					["qg"] = 40178,	-- Alysra
					["sourceQuest"] = 25325,	-- Through the Dream
					["coord"] = { 52.1, 17.4, MOUNT_HYJAL },
				}),
				q(25795, {	-- Return to the Shrine
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25776,	-- Sethria's Demise
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
				}),
				q(25385, {	-- Save the Wee Animals
					["qg"] = 39930,	-- Mylune
					["sourceQuest"] = 25578,	-- Return to Nordrassil
					["coord"] = { 19.2, 37.8, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Frightened Animal
							["providers"] = {
								{ "i", 53060 },	-- Frightened Animal
								{ "n", 39997 },	-- Panicked Bunny
								{ "n", 39998 },	-- Terrified Squirrel
							},
							["coord"] = { 14.6, 43.0, MOUNT_HYJAL },
						}),
					},
				}),
				q(25656, {	-- Scrambling for Eggs
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25578,	-- Return to Nordrassil
					["coord"] = { 42.1, 45.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Hyjal Egg
							["providers"] = {
								{ "i", 55189 },	-- Hyjal Egg
								{ "o", 203143 },	-- Stolen Hyjal Egg
							},
						}),
					},
				}),
				q(25554, {	-- Secrets of the Flame
					["qg"] = 40773,	-- Cenarius
					["sourceQuest"] = 25608,	-- Slash and Burn
					["coord"] = { 71.9, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Ascendant's Codex
							["providers"] = {
								{ "i", 54907 },	-- Ascendant's Codex
								{ "o", 203048 },	-- Ascendant's Codex
							},
							["coord"] = { 56.9, 83.8, MOUNT_HYJAL },
						}),
						objective(2, {	-- 0/1 The Burning Litanies
							["providers"] = {
								{ "i", 54906 },	-- The Burning Litanies
								{ "o", 203047 },	-- Burning Litanies
							},
							["coord"] = { 59.6, 80.8, MOUNT_HYJAL },
						}),
						objective(3, {	-- 0/1 Tome of Flame
							["providers"] = {
								{ "i", 54905 },	-- Tome of Flame
								{ "o", 203046 },	-- Tome of Flame
							},
							["coord"] = { 58.1, 78.8, MOUNT_HYJAL },
						}),
					},
				}),
				q(25308, {	-- Seeds of Discord
					["provider"] = { "o", 202701 },	-- Outhouse Hideout
					["sourceQuest"] = 25296,	-- Gather the Intelligence
					["coord"] = { 88.2, 58.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 High Cultist Azennios slain
							["providers"] = {
								{ "n",  40491 },	-- High Cultist Azennios
								{ "i",  55137 },	-- Ogre Disguise
								{ "o", 203091 },	-- Ogre Outhouse
							},
							["coord"] = { 77.4, 48.1, MOUNT_HYJAL },
						}),
					},
				}),
				q(25408, {	-- Seeds of Their Demise
					["qg"] = 39933,	-- Tyrus Blackhorn
					["sourceQuest"] = 25404,	-- If You're Not Against Us...
					["coord"] = { 22.2, 44.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Bileberry
							["provider"] = { "i", 53102 },	-- Bileberry
							["cr"] = 40066,	-- Wailing Weed
						}),
						i(57325),	-- Bileberry Smelling Salts
						i(57324),	-- Seedfilter Deflector
						i(57323),	-- Deathseed Crushers
					},
				}),
				q(25746, {	-- Sethria's Brood
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25740,	-- Fact-Finding Mission
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/12 Sethria's Minion Slain
							["providers"] = {
								{ "n", 41029},	-- Twilight Dragonkin
								{ "n", 41030},	-- Twilight Dragonkin Armorer
							},
						}),
					},
				}),
				q(25776, {	-- Sethria's Demise
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuests"] = {
						25761,	-- Disassembly
						25764,	-- Egg Hunt
					},
					["coord"] = { 32.7, 70.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Sethria slain
							["providers"] = {
								{ "n", 41255 },	-- Sethria
								{ "i", 56003 },	-- Thisalee's Signal Rocket
							},
						}),
					},
				}),
				q(25274, {	-- Signed in Blood
					["qg"] = 39621,	-- Elementalist Ortell
					["sourceQuest"] = 25597,	-- Commander Jarod Shadowsong
					["coord"] = { 71.9, 58.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Recruitment Papers
							["providers"] = {
								{ "i", 52685 },	-- Twilight Recruitment Papers
								{ "i", 52683 },	-- Blackjack
							},
							["crs"] = {
								39619,	-- Twilight Recruit
								40185,	-- Twilight Initiate
								40186,	-- Twilight Recruit
								40536,	-- Twilight Cultist
								40540,	-- Maurice
								40562,	-- Twilight Initiate
								40564,	-- Fiery Instructor
								40947,	-- Twilight Cultist
							},
						}),
					},
				}),
				q(25608, {	-- Slash and Burn
					["qg"] = 40772,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25531,	-- Twilight Riot
					["coord"] = { 72.2, 74.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Twilight Stormwaker slain
							["provider"] = { "n", 40573 },	-- Twilight Stormwaker
						}),
						objective(2, {	-- 0/40 Twilight's Hammer unit slain
							["providers"] = {
								{ "n", 40947},	-- Twilight Cultist
								{ "n", 40562},	-- Twilight Initiate
								{ "n", 40563},	-- Twilight Enforcer
								{ "n", 40564},	-- Fiery Instructor
							},
						}),
					},
				}),
				q(25490, {	-- Smashing Through Ashes
					["qg"] = 39932,	-- Keeper Taldros
					["sourceQuest"] = 25462,	-- The Bears Up There
					["coord"] = { 13.6, 32.7, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Charbringer slain
							["provider"] = { "n", 40336 },	-- Charbringer
						}),
					},
				}),
				q(25314, {	-- Speech Writing for Dummies
					["provider"] = { "o", 202701 },	-- Outhouse Hideout
					["sourceQuests"] = {
						25310,	-- The Greater of Two Evils
						25311,	-- Twilight Territory
						25308,	-- Seeds of Discord
					},
					["coord"] = { 88.2, 58.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Okrog slain
							["provider"] = { "n", 40922 },	-- Okrog
						}),
					},
				}),
				q(25309, {	-- Spiritual Training: Mercy is for the Weak
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuest"] = 25299,	-- Mental Training: Speaking the Truth to Power
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Failed Supplicant slain
							["provider"] = { "n", 39752 },	-- Failed Supplicant
						}),
						i(57308),	-- Supplicant's Discarded Bracer
						i(57307),	-- Belt of Swift Failure
						i(57306),	-- Chestguard of Rapid Promotion
					},
				}),
				q(25352, {	-- Sweeping the Shelf
					["qg"] = 39433,	-- Ian Duran
					["sourceQuest"] = 25278,	-- Cleaning House
					["coord"] = { 28.22, 29.74, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Stormcaller slain
							["provider"] = { "n", 39843 },	-- Twilight Stormcaller
						}),
						objective(2, {	-- 0/5 Howling Riftdweller slain
							["provider"] = { "n", 39844 },	-- Howling Riftdweller
						}),
						i(57372),	-- Bracers of the Forlorn Wolf
						i(57371),	-- Wolfcall Stompers
						i(57370),	-- Belt of Binding Purification
						i(57373),	-- Rage of Lo'Gosh
					},
				}),
				q(25354, {	-- Sweeping the Shelf
					["qg"] = 39432,	-- Takrik Ragehowl
					["sourceQuest"] = 25277,	-- Cleaning House
					["coord"] = { 28.22, 29.74, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Twilight Stormcaller slain
							["provider"] = { "n", 39843 },	-- Twilight Stormcaller
						}),
						objective(2, {	-- 0/5 Howling Riftdweller slain
							["provider"] = { "n", 39844 },	-- Howling Riftdweller
						}),
						i(57368),	-- Wolfcaller Bracers
						i(57367),	-- Treads of the Dreamwolf
						i(57366),	-- Girdle of the Ancient Wolf
						i(57369),	-- Goldrinn's Purifier
					},
				}),
				q(25653, {	-- The Ancients are With Us
					["qg"] = 41504,	-- Tortolla
					["sourceQuest"] = 25928,	-- Tortolla's Triumph
					["coord"] = { 41.9, 60.7, MOUNT_HYJAL },
				}),
				q(27398, {	-- The Battle Is Won, The War Goes On
					["qg"] = 40772,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25551,	-- The Firelord
					["coord"] = { 71.9, 74.0, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(27399, {	-- The Battle Is Won, The War Goes On
					["qg"] = 40772,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25551,	-- The Firelord
					["coord"] = { 71.9, 74.0, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25462, {	-- The Bears Up There
					["qg"] = 39932,	-- Keeper Taldros
					["sourceQuest"] = 25940,	-- Last Stand at Whistling Grove
					["coord"] = { 13.6, 32.7, MOUNT_HYJAL },
					["groups"] = {
						i(57356),	-- Stickyfoot Sandals
						i(57355),	-- Treegrip Pants
						i(57354),	-- Wildlife Defender
					},
				}),
				q(25320, {	-- The Captured Scout
					["qg"] = 38917,	-- Alysra
					["sourceQuest"] = 25430,	-- Emerald Allies
					["coord"] = { 48.4, 18.9, MOUNT_HYJAL },
				}),
				q(25763, {	-- The Codex of Shadows
					["provider"] = { "o", 203207 },	-- Codex of Shadows
					["sourceQuest"] = 25740,	-- Fact-Finding Mission
					["coord"] = { 31.2, 76.9, MOUNT_HYJAL },
				}),
				q(25460, {	-- The Earth Rises
					["qg"] = 39925,	-- Anren Shadowseeker
					["coord"] = { 63.9, 22.6, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Scalding Rock Elemental slain
							["provider"] = { "n", 40229 },	-- Scalding Rock Elemental
						}),
						i(57283),	-- Rockbreaker Robes
						i(57282),	-- Corecrusher Gloves
						i(57281),	-- Scalded Rockscale Shoulderpads
					},
				}),
				q(25300, {	-- The Eye of Twilight
					["qg"] = 39435,	-- Royce Duskwhisper
					["sourceQuest"] = 25272,	-- Lycanthoth the Corruptor
					["coord"] = { 28.6, 30.2, MOUNT_HYJAL },
				}),
				q(25551, {	-- The Firelord
					["qg"] = 40773,	-- Cenarius
					["sourceQuests"] = {
						25553,	-- Death to the Broodmother
						25550,	-- Magma Monarch
						25555,	-- The Gatekeeper
					},
					["coord"] = { 71.9, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Ragnaros defeated
							["provider"] = { "n", 40793 },	-- Ragnaros
						}),
						i(57275),	-- Hyjal Savior's Pendant
						i(57276),	-- Hyjal Savior's Signet
						i(57274),	-- Hyjal Savior's Drape
					},
				}),
				q(25630, {	-- The Fires of Mount Hyjal
					["qg"] = 39434,	-- Rio Duran
					["sourceQuest"] = 25612,	-- Return from the Firelands
					["lockCriteria"] = { 1, "questID", 25372 },	-- Aessina's Miracle
					["coord"] = { 28.1, 29.8, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
				}),
				q(25472, {	-- The Flameseer's Staff
					["qg"] = 39869,	-- Windspeaker Tamila
					["sourceQuest"] = 25317,	-- Protect the World Tree
					["coord"] = { 47.6, 35.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Charred Staff Fragment
							["providers"] = {
								{ "i", 54461 },	-- Charred Staff Fragment
								{ "o", 202846 },	-- Charred Staff Fragment
							},
						}),
					},
				}),
				q(25555, {	-- The Gatekeeper
					["qg"] = 40773,	-- Cenarius
					["sourceQuest"] = 25554,	-- Secrets of the Flame
					["coord"] = { 71.9, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Azralon the Gatekeeper slain
							["providers"] = {
								{ "n", 40814 },	-- Azralon the Gatekeeper
								{ "i", 55153 },	-- Horn of Cenarius
							},
							["coord"] = { 57.6, 68.8, MOUNT_HYJAL },
						}),
						i(57299),	-- Torque of the Herald
						i(57298),	-- Gatekeeper Treads
						-- #if BEFORE MOP
						i(57297, {	-- Azralon's Twisted Rune
							["timeline"] = { REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(25310, {	-- The Greater of Two Evils
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuests"] = {
						25496,	-- Grudge Match
						25309,	-- Spiritual Training: Mercy is the for Weak
					},
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Garnoth, Fist of the Legion slain
							["providers"] = {
								{ "n", 39726 },	-- Garnoth, Fist of the Legion
								{ "i", 54814 },	-- Talisman of Flame Ascendancy
							},
							["coord"] = { 65, 64.8, MOUNT_HYJAL },
						}),
					},
				}),
				q(25904, {	-- The Hammer and the Key
					["qg"] = 41504,	-- Tortolla
					["sourceQuest"] = 25843,	-- Tortolla's Revenge
					["coord"] = { 41.9, 60.8, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Glyph of Opening
							["provider"] = { "i", 56177 },	-- Glyph of Opening
							["cr"] = 41502,	-- Twilight Field Captain
						}),
					},
				}),
				q(25810, {	-- The Hatchery Must Burn
					["qg"] = 41003,	-- Morthis Whisperwing
					["sourceQuest"] = 25807,	-- An Ancient Reborn
					["coord"] = { 44.1, 45.9, MOUNT_HYJAL },
				}),
				q(25830, {	-- The Last Living Lorekeeper
					["providers"] = {
						{ "n", 40289 },	-- Ysera
						{ "n", 46987 },	-- Vision of Ysera
						{ "n", 46998 },	-- Vision of Ysera
						{ "n", 47002 },	-- Vision of Ysera
					},
					["sourceQuests"] = {
						25520,	-- An Ancient Awakens
						25807,	-- An Ancient Reborn
						25382,	-- Disrupting the Rituals
						25491,	-- Durable Seeds
						29066,	-- Good News... and Bad News
						25502,	-- Prepping the Soil
						-- 25832,	-- Return to Aviana (picked this up at the same time as the above quest)
						25611,	-- Return from the Firelands (A)
						25612,	-- Return from the Firelands (H)
					},
					["coords"] = {	-- there 4 possible coords here, one for each ancient. Need to determine the remaining two [Pr3vention]
						{ 62.0, 24.8, MOUNT_HYJAL },
						{ 27.0, 62.6, MOUNT_HYJAL },
					},
				}),
				q(25412, {	-- The Name Never Spoken
					["qg"] = 40093,	-- Subjugated Inferno Lord
					["altQuests"] = { 25443 },	-- The Name Never Spoken
					["sourceQuest"] = 25411,	-- A New Master
					["groups"] = {
						objective(1, {	-- 0/1 Northern Firestone Examined
							["provider"] = { "o", 202765 },	-- Northern Firestone
						}),
						objective(2, {	-- 0/1 Central Firestone Examined
							["provider"] = { "o", 202764 },	-- Central Firestone
						}),
						objective(3, {	-- 0/1 Southern Firestone Examined
							["provider"] = { "o", 202763 },	-- Southern Firestone
						}),
					},
				}),
				q(25443, {	-- The Name Never Spoken
					["qg"] = 39933,	-- Tyrus Blackhorn
					["altQuests"] = { 25412 },	-- The Name Never Spoken
					["sourceQuest"] = 25411,	-- A New Master
					["description"] = "To get this quest DO NOT accept another version from Subjugated Inferno Lord after \"A New Master\", instead head back to Tyrus Blackhorn.",
					["coord"] = { 22.2, 44.8, MOUNT_HYJAL },
				}),
				q(25464, {	-- The Return of Baron Geddon
					["qg"] = 39857,	-- Malfurion Stormrage
					["sourceQuest"] = 25323,	-- Flamebreaker
					["coord"] = { 47.7, 35.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/20 Baron Geddon Weakened
							["provider"] = { "i", 54463 },	-- Flameseer's Staff
							["cr"] = 40147,	-- Baron Geddon
						}),
						i(57303),	-- Heatbinder Wristplates
						i(57305),	-- Axe of Grounded Flame
						i(57304),	-- Druidic Channeler's Mace
					},
				}),
				q(25584, {	-- The Return of the Ancients
					["qg"] = 40289,	-- Ysera
					["sourceQuest"] = 25578,	-- Return to Nordrassil
					["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
				}),
				q(25549, {	-- The Sanctum of the Prophets
					["qg"] = 40772,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25548,	-- Might of the Firelord
					["coord"] = { 72.0, 74.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Twilight Augur slain
							["provider"] = { "n", 40713 },	-- Twilight Augur
						}),
						objective(2, {	-- 0/4 Twilight Retainer slain
							["provider"] = { "n", 40767 },	-- Twilight Retainer
						}),
						objective(3, {	-- 0/1 Emissary of Flame slain
							["provider"] = { "n", 40755 },	-- Emissary of Flame
						}),
					},
				}),
				q(25280, {	-- The Shrine Reclaimed
					["qg"] = 39627,	-- Spirit of Goldrinn
					["sourceQuest"] = 25273,	-- Lycanthoth the Corruptor
					["coord"] = { 29.63, 29.30, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25279, {	-- The Shrine Reclaimed
					["qg"] = 39622,	-- Spirit of Lo'Gosh
					["sourceQuest"] = 25272,	-- Lycanthoth the Corruptor
					["coord"] = { 29.6, 29.2, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(25915, {	-- The Strength of Tortolla
					["qg"] = 41498,	-- Garunda Mountainpeak
					["sourceQuest"] = 25906,	-- The Third Flamegate
					["coord"] = { 64.2, 53.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Nemesis Crystal Examined
							["provider"] = { "o", 203375 },	-- Nemesis Crystal
						}),
					},
				}),
				q(25906, {	-- The Third Flamegate
					["qg"] = 41504,	-- Tortolla
					["sourceQuest"] = 25904,	-- The Hammer and the Key
					["coord"] = { 41.9, 60.7, MOUNT_HYJAL },
					["groups"] = {
						i(57343),	-- Leggings of Fiery Travail
						i(57342),	-- Rescuers Shoulderguards
						i(57344),	-- Glyphtrace Ritual Knife
					},
				}),
				q(25910, {	-- The Time for Mercy has Passed
					["qg"] = 41498,	-- Garunda Mountainpeak
					["sourceQuest"] = 25906,	-- The Third Flamegate
					["coord"] = { 64.2, 53.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Shadowflame Master slain
							["provider"] = { "n", 41563 },	-- Shadowflame Master
						}),
						objective(2, {	-- 0/10 Molten Tormentor slain
							["provider"] = { "n", 41565 },	-- Molten Tormentor
						}),
					},
				}),
				q(25644, {	-- The Twilight Egg
					["provider"] = { "o", 207359 },	-- Pure Twilight Egg
					["sourceQuest"] = 25608,	-- Slash and Burn
					["coord"] = { 59.1, 83.8, MOUNT_HYJAL },
				}),
				q(25268, {	-- The Voice of Goldrinn
					["qg"] = 39427,	-- Jadi Falaryn
					["sourceQuest"] = 25233,	-- End of the Supply Line
					["coord"] = { 35.6, 19.6, MOUNT_HYJAL },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25269, {	-- The Voice of Lo'Gosh
					["qg"] = 39429,	-- Oomla Whitehorn
					["sourceQuests"] = {
						25233,	-- End of the Supply Line
						25255,	-- Harrying the Hunters
						25234,	-- In the Rear With the Gear
					},
					["coord"] = { 35.6, 19.4, MOUNT_HYJAL },
					["races"] = HORDE_ONLY,
				}),
				q(25655, {	-- The Wormwing Problem
					["qg"] = 41006,	-- Thisalee Crow
					["sourceQuest"] = 25584,	-- The Return of the Ancients
					["coord"] = { 42.1, 45.4, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Wormwing Harpy
							["providers"] = {
								{ "n", 41027},	-- Wormwing Screecher
								{ "n", 41028},	-- Wormwing Swifttalon
							},
						}),
					},
				}),
				q(25325, {	-- Through the Dream
					["qg"] = 40139,	-- Captain Saynna Stormrunner
					["sourceQuest"] = 25324,	-- A Prisoner of Interest
					["coord"] = { 56.7, 18.8, MOUNT_HYJAL },
					["groups"] = {
						i(57285),	-- Muffling Hood
						i(57284),	-- Grips of Arcane Imprisonment
						i(57286),	-- Dreamrending Dagger
					},
				}),
				q(25510, {	-- Tortolla Speaks
					["qg"] = 39858,	-- Archdruid Hamuul Runetotem
					["sourceQuest"] = 25507,	-- Hell's Shells
					["coord"] = { 27.1, 62.6, MOUNT_HYJAL },
				}),
				q(25843, {	-- Tortolla's Revenge
					["qg"] = 41480,	-- Archdruid Hamuul Runetotem (Shrine of Aessina)
					["sourceQuest"] = 25372,	-- Aessina's Miracle
					["coord"] = { 19.5, 37.8, MOUNT_HYJAL },
				}),
				q(25928, {	-- Tortolla's Triumph
					["qg"] = 41498,	-- Garunda Mountainpeak
					["sourceQuest"] = 25923,	-- Finish Nemesis
					["coord"] = { 64.2, 53.5, MOUNT_HYJAL },
				}),
				q(25223, {	-- Trial By Fire
					["qg"] = 39442,	-- Condenna the Pitiless
					["sourceQuest"] = 25276,	-- Your New Identity
					["coord"] = { 76.9, 62.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/8 Fiery Instructor slain
							["provider"] = { "n", 39344 },	-- Fiery Instructor
						}),
						i(57310),	-- Impressive Greaves
						i(57309),	-- Chestplate of Exceptional Expectations
						-- #if BEFORE MOP
						i(57311, {	-- Firetail Dart
							["timeline"] = { ADDED_4_3_0, REMOVED_5_0_4 },
						}),
						-- #endif
					},
				}),
				q(25321, {	-- Twilight Captivity
					["qg"] = 40096,	-- Scout Larandia
					["sourceQuest"] = 25320,	-- The Captured Scout
					["coord"] = { 44.4, 18.9, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/1 Twilight Overseer's Key
							["provider"] = { "i", 53139 },	-- Twilight Overseer's Key
							["crs"] = {
								40123,	-- Twilight Overseer
								42801,	-- Mor'norokk the Hateful
								42964,	-- Mor'norokk the Hateful
							},
						}),
					},
				}),
				q(25531, {	-- Twilight Riot
					["qg"] = 40619,	-- Commander Jarod Shadowsong
					["sourceQuest"] = 25315,	-- Graduation Speech
					["coord"] = { 95.3, 51.3, MOUNT_HYJAL },
				}),
				q(25311, {	-- Twilight Territory
					["qg"] = 39413,	-- Instructor Mylva
					["sourceQuests"] = {
						25496,	-- Grudge Match
						25309,	-- Spiritual Training: Mercy is the for Weak
					},
					["coord"] = { 89.5, 59.0, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Horrorguard slain
							["provider"] = { "n", 39724 },	-- Horrorguard
						}),
					},
				}),
				q(25291, {	-- Twilight Training
					["qg"] = 39442,	-- Condenna the Pitiless
					["sourceQuests"] = {
						25224,	-- In Bloom
						25223,	-- Trial By Fire
						25330,	-- Waste of Flesh
					},
					["coord"] = { 76.9, 62.0, MOUNT_HYJAL },
				}),
				q(29177, {	-- Vigilance on Wings
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25560,	-- Egg Wave
					["coord"] = { 37.2, 56.1, MOUNT_HYJAL },
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Lancer slain
							["provider"] = { "n", 40660 },	-- Twilight Lancer
						}),
					},
				}),
				q(25294, {	-- Walking the Dog
					["qg"] = 39406,	-- Instructor Devoran
					["sourceQuest"] = 25291,	-- Twilight Training
					["coord"] = { 90.1, 56.3, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/5 Spawn of Smolderos Fed
							["providers"] = {
								{ "i", 52708 },	-- Charred Basilisk Meat
								{ "i", 52717 },	-- Fiery Leash
							},
							["crs"] = {
								39658,	-- Spinescale Basilisk
								40403,	-- Spinescale Matriarch
								48724,	-- Spinescale Basilisk
							},
						}),
					},
				}),
				q(25319, {	-- War on the Twilight's Hammer
					["qg"] = 39857,	-- Malfurion Stormrage
					["sourceQuest"] = 25317,	-- Protect the World Tree
					["coord"] = { 47.7, 35.5, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Twilight Flamecaller slain
							["provider"] = { "n", 38926 },	-- Twilight Flamecaller
						}),
						objective(2, {	-- 0/10 Twilight Vanquisher slain
							["provider"] = { "n", 38913 },	-- Twilight Vanquisher
						}),
						i(57291),	-- Naturelord Helm
						i(57290),	-- Druidic Guardian Plate
						i(57293),	-- Front-Line Blunderbuss
						i(57292),	-- Repurposed Twilight Stave
					},
				}),
				warchiefscommand(q(27721, {	-- Warchief's Command: Mount Hyjal!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 80. (TODO: Confirm this.)
					["lvl"] = 80,
					-- #endif
				})),
				q(25330, {	-- Waste of Flesh
					["qg"] = 39451,	-- Instructor Cargall
					["sourceQuest"] = 25276,	-- Your New Identity
					["coord"] = { 77.0, 62.1, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/4 Immolated Supplicant saved
							["providers"] = {
								{ "n", 39453 },	-- Immolated Supplicant
								{ "i", 52819 },	-- Frostgale Crystal
							},
						}),
					},
				}),
				q(25525, {	-- Wave One
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25523,	-- Flight in the Firelands
					["coord"] = { 37.2, 56.1, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Knight Rider slain
							["provider"] = { "n", 39835 },	-- Twilight Knight Rider
						}),
					},
				}),
				q(25544, {	-- Wave Two
					["qg"] = 40578,	-- Farden Talonshrike
					["sourceQuest"] = 25525,	-- Wave One
					["coord"] = { 37.2, 56.1, MOUNT_HYJAL },
					["groups"] = {
						objective(1, {	-- 0/10 Twilight Lancer slain
							["provider"] = { "n", 40660 },	-- Twilight Lancer
						}),
					},
				}),
				q(25985, {	-- Wings Over Mount Hyjal
					["qg"] = 40833,	-- Tiala Whitemane
					["coord"] = { 63.25, 21.50, MOUNT_HYJAL },
					["isBreadcrumb"] = true,
					["description"] = "If you also need the breadcrumb quest 'Aviana's Legacy', this quest must be completed without accepting any quests in Shrine of Aviana prior to turning in 'Return from the Firelands'.",
				}),
				q(25276, {	-- Your New Identity
					["qg"] = 39621,	-- Elementalist Ortell
					["sourceQuest"] = 25274,	-- Signed in Blood
					["coord"] = { 71.9, 58.0, MOUNT_HYJAL },
				}),
			}),
			petbattles({
				n(66819, {	-- Brok <Master Pet Tamer>
					["coord"] = { 61.4, 32.8, MOUNT_HYJAL },
				}),
			}),
			n(RARES, {
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(54318, {	-- Ankha
					["coords"] = {
						{ 28.0, 52.0, MOUNT_HYJAL },
						{ 30.0, 51.4, MOUNT_HYJAL },
						{ 33.2, 52.0, MOUNT_HYJAL },
						{ 34.8, 53.8, MOUNT_HYJAL },
						{ 37.0, 54.0, MOUNT_HYJAL },
						{ 39.2, 54.8, MOUNT_HYJAL },
						{ 41.2, 54.0, MOUNT_HYJAL },
					},
					["description"] = "This spirit beast is a rare tamable cat with a unique silver spectral skin. It is one of the \"challenge\" tames added in 4.2: Spirit Claw will one-shot players wearing armor.",
					["timeline"] = { ADDED_4_2_0 },
				})),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(54320, {	-- Ban'thalos
					["coords"] = {
						{ 27.2, 64.2, MOUNT_HYJAL },
						{ 28.0, 62.2, MOUNT_HYJAL },
						{ 27.6, 60.2, MOUNT_HYJAL },
						{ 25.8, 61.2, MOUNT_HYJAL },
						{ 26.2, 62.8, MOUNT_HYJAL },
					},
					["description"] = "This spirit beast is a rare tamable spawn with a unique spectral owl model. It is one of the \"challenge\" tames added in 4.2: the challenge is that he flies very high, so you will need to creatively find ways to aggro and tame without taking lethal fall damage.",
					["timeline"] = { ADDED_4_2_0 },
				})),
				n(50057, {	-- Blazewing
					["coords"] = {
						{ 45.0, 60.4, MOUNT_HYJAL },
						{ 65.8, 54.8, MOUNT_HYJAL },
						{ 67.8, 55.0, MOUNT_HYJAL },
					},
					["groups"] = {
						i(67236),	-- Blazewing's Furious Kilt
					},
				}),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(54319, {	-- Magria
					["coords"] = {
						{ 28.0, 52.0, MOUNT_HYJAL },
						{ 30.0, 51.4, MOUNT_HYJAL },
						{ 33.2, 52.0, MOUNT_HYJAL },
						{ 34.8, 53.8, MOUNT_HYJAL },
						{ 37.0, 54.0, MOUNT_HYJAL },
						{ 39.2, 54.8, MOUNT_HYJAL },
						{ 41.2, 54.0, MOUNT_HYJAL },
					},
					["description"] = "This spirit beast is a rare tamable cat with a unique blue/white striped skin. It is one of the \"challenge\" tames added in 4.2: Spirit Claw will one-shot players wearing armor.",
					["timeline"] = { ADDED_4_2_0 },
				})),
				n(50053, {	-- Thartuk the Exile
					["coords"] = {
						{ 59.2, 37.6, MOUNT_HYJAL },
						{ 57.8, 35.8, MOUNT_HYJAL },
						{ 56.2, 34.6, MOUNT_HYJAL },
						{ 56.8, 32.0, MOUNT_HYJAL },
						{ 57.6, 29.6, MOUNT_HYJAL },
						{ 57.4, 28.6, MOUNT_HYJAL },
						{ 54.2, 29.4, MOUNT_HYJAL },
						{ 52.0, 30.8, MOUNT_HYJAL },
						{ 50.2, 33.2, MOUNT_HYJAL },
						{ 47.6, 34.2, MOUNT_HYJAL },
						{ 45.6, 32.4, MOUNT_HYJAL },
						{ 42.6, 31.6, MOUNT_HYJAL },
					},
					["groups"] = {
						i(67234),	-- Thartuk's Inimitable Gauntlets
					},
				}),
				n(50058, {	-- Terrorpene
					["coords"] = {
						{ 51.8, 72.2, MOUNT_HYJAL },
						{ 56.0, 75.4, MOUNT_HYJAL },
						{ 54.0, 78.0, MOUNT_HYJAL },
						{ 54.2, 80.0, MOUNT_HYJAL },
						{ 53.8, 82.0, MOUNT_HYJAL },
						{ 52.2, 83.2, MOUNT_HYJAL },
					},
					["description"] = "This turtle is a rare tamable spawn with a unique fiery shell.",
				}),
			}),
			n(VENDORS, {
				n(50314, {	-- Provisioner Whitecloud <Guardians of Hyjal Quartermaster>
					["coord"] = { 62.7, 23.8, MOUNT_HYJAL },
					["groups"] = bubbleDownClassicRep(FACTION_GUARDIANS_OF_HYJAL, {
						{	-- Neutral
						},
						{	-- Friendly
							i(65906),	-- Tabard of the Guardians of Hyjal
						},
						{	-- Honored
							i(62376),	-- Mountain's Mouth
							i(62377),	-- Cloak of the Dryads
							i(62374),	-- Sly Fox Jerkin
							i(62375),	-- Galrond's Band
						},
						{	-- Revered
							i(62378),	-- Acorn of the Daughter Tree
							i(62381),	-- Aessina- Blessed Gloves
							i(62380),	-- Wilderness Legguards
							i(62382),	-- Waywatcher's Boots
							i(62367, {	-- Arcanum of Hyjal
								["description"] = "This version is only visible on the vendor when you aren't at the required reputation to purchase it yet on your current character.",
								["filterID"] = CONSUMABLES,
							}),
							i(68765, {	-- Arcanum of Hyjal
								["filterID"] = CONSUMABLES,
							}),
							i(138803, {	-- Illusion: Mending (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
						{	-- Exalted
							i(62383),	-- Wrap of the Great Turtle
							i(62384),	-- Belt of the Ferocious Wolf
							i(62386),	-- Cord of the Raven Queen
							i(62385),	-- Treads of Malorne
						},
					}),
				}),
				n(71304, {	-- Iris Moondreamer <Quartermaster>
					["coord"] = { 62.8, 24.2, MOUNT_HYJAL },
					["timeline"] = { ADDED_5_3_0 },
					["groups"] = {
						cl(DEATHKNIGHT, {
							i(72994),	-- Ebonsoul Blade
							i(72990),	-- Ebonsoul Hammer
							i(72991),	-- Ebonsoul Maul
							i(72932),	-- Ebonsoul Faceguard
							i(72921),	-- Ebonsoul Helm
							i(72923),	-- Ebonsoul Pauldrons
							i(72934),	-- Ebonsoul Shoulderguards
							i(73156),	-- Ebonsoul Amulet
							i(73151),	-- Ebonsoul Pendant
							i(73315),	-- Ebonsoul Cloak of Battle
							i(73316),	-- Ebonsoul Cloak of Stoicism
							i(72918),	-- Ebonsoul Breastplate
							i(72929),	-- Ebonsoul Chestguard
							i(72936),	-- Ebonsoul Armguards
							i(72925),	-- Ebonsoul Vambraces
							i(72920),	-- Ebonsoul Gauntlets
							i(72931),	-- Ebonsoul Handguards
							i(72924),	-- Ebonsoul Girdle
							i(72935),	-- Ebonsoul Waistband
							i(72933),	-- Ebonsoul Legguards
							i(72922),	-- Ebonsoul Legplates
							i(72930),	-- Ebonsoul Greaves
							i(72919),	-- Ebonsoul Sabatons
							i(73152),	-- Ebonsoul Band of Might
							i(73159),	-- Ebonsoul Band of Stoicism
							i(73153),	-- Ebonsoul Ring of Might
							i(73158),	-- Ebonsoul Ring of Stoicism
							i(73157),	-- Ebonsoul Defender's Idol
							i(73160),	-- Ebonsoul Defender's Stone
							i(73155),	-- Ebonsoul Idol of Battle
							i(73154),	-- Ebonsoul Stone of Battle
						}),
						cl(DRUID, {
							i(73012),	-- Wildsoul Spear
							i(73011),	-- Wildsoul Staff
							i(73010),	-- Wildsoul Stave
							i(72692),	-- Wildsoul Headpiece
							i(72675),	-- Wildsoul Helm
							i(72684),	-- Wildsoul Hood
							i(72677),	-- Wildsoul Pauldrons
							i(72686),	-- Wildsoul Shoulders
							i(72694),	-- Wildsoul Spaulders
							i(73016),	-- Wildsoul Choker
							i(73017),	-- Wildsoul Medallion
							i(73130),	-- Wildsoul Necklace
							i(73308),	-- Wildsoul Cloak of Destruction
							i(73306),	-- Wildsoul Cloak of Rage
							i(73307),	-- Wildsoul Cloak of Wisdom
							i(72681),	-- Wildsoul Jerkin
							i(72689),	-- Wildsoul Tunic
							i(72672),	-- Wildsoul Vest
							i(72688),	-- Wildsoul Bindings
							i(72696),	-- Wildsoul Bracers
							i(72679),	-- Wildsoul Cuffs
							i(72683),	-- Wildsoul Gloves
							i(72691),	-- Wildsoul Grips
							i(72674),	-- Wildsoul Handguards
							i(72695),	-- Wildsoul Belt
							i(72678),	-- Wildsoul Cord
							i(72687),	-- Wildsoul Waistband
							i(72685),	-- Wildsoul Britches
							i(72693),	-- Wildsoul Leggings
							i(72676),	-- Wildsoul Legguards
							i(72682),	-- Wildsoul Boots
							i(72673),	-- Wildsoul Footpads
							i(72690),	-- Wildsoul Treads
							i(73026),	-- Wildsoul Band of Destruction
							i(73024),	-- Wildsoul Band of Onslaught
							i(73128),	-- Wildsoul Band of Wisdom
							i(73027),	-- Wildsoul Ring of Destruction
							i(73025),	-- Wildsoul Ring of Onslaught
							i(73127),	-- Wildsoul Ring of Wisdom
							i(73066),	-- Wildsoul Idol of Destruction
							i(73068),	-- Wildsoul Idol of Rage
							i(73129),	-- Wildsoul Idol of Wisdom
							i(73065),	-- Wildsoul Stone of Destruction
							i(73067),	-- Wildsoul Stone of Rage
							i(73126),	-- Wildsoul Stone of Wisdom
						}),
						cl(HUNTER, {
							i(73000),	-- Beastsoul Rifle
							--i(73001),	-- Beastsoul Spear (missing on the vendor implementation) [CRIEVE NOTE: It's listed in the Scroll of Resurrection section already.]
							i(72913),	-- Beastsoul Helm
							i(72915),	-- Beastsoul Spaulders
							i(73146),	-- Beastsoul Choker
							i(73314),	-- Beastsoul Cloak of Rage
							i(72910),	-- Beastsoul Vest
							i(72917),	-- Beastsoul Bracers
							i(72912),	-- Beastsoul Gauntlets
							i(72916),	-- Beastsoul Belt
							i(72914),	-- Beastsoul Legguards
							i(72911),	-- Beastsoul Greaves
							i(73148),	-- Beastsoul Band of Onslaught
							i(73149),	-- Beastsoul Ring of Onslaught
							i(73147),	-- Beastsoul Idol of Rage
							i(73150),	-- Beastsoul Stone of Rage
						}),
						cl(MAGE, {
							i(73006),	-- Magesoul Staff
							i(73325),	-- Magesoul Wand
							i(72624),	-- Magesoul Hood
							i(72626),	-- Magesoul Shoulderpads
							i(73105),	-- Magesoul Medallion
							i(73323),	-- Magesoul Cloak of Destruction
							i(72621),	-- Magesoul Robe
							i(72628),	-- Magesoul Wristwraps
							i(72623),	-- Magesoul Handwraps
							i(72627),	-- Magesoul Cord
							i(72625),	-- Magesoul Leggings
							i(72622),	-- Magesoul Sandals
							i(73103),	-- Magesoul Band of Destruction
							i(73102),	-- Magesoul Ring of Destruction
							i(73104),	-- Magesoul Idol of Destruction
							i(73101),	-- Magesoul Stone of Destruction
						}),
						cl(MONK, {
							["timeline"] = { ADDED_5_0_4 },
							["groups"] = {
								i(88648),	-- Monastic Spire
								i(88622),	-- Monastic Staff
								i(88649),	-- Monastic Sword
								i(88626),	-- Monastic Helm
								i(88617),	-- Monastic Hood
								i(88628),	-- Monastic Pauldrons
								i(88619),	-- Monastic Shoulders
								i(88635),	-- Monastic Amulet
								i(88643),	-- Monastic Choker
								i(88667),	-- Monastic Necklace
								i(88633),	-- Monastic Cloak of Rage
								i(88632),	-- Monastic Cloak of Wisdom
								i(88614),	-- Monastic Jerkin
								i(88623),	-- Monastic Vest
								i(88621),	-- Monastic Bindings
								i(88630),	-- Monastic Cuffs
								i(88616),	-- Monastic Gloves
								i(88625),	-- Monastic Handguards
								i(88629),	-- Monastic Cord
								i(88620),	-- Monastic Waistband
								i(88618),	-- Monastic Britches
								i(88627),	-- Monastic Legguards
								i(88615),	-- Monastic Boots
								i(88624),	-- Monastic Footpads
								i(88640),	-- Monastic Band of Onslaught
								i(88637),	-- Monastic Band of Stoicism
								i(88646),	-- Monastic Band of Wisdom
								i(88641),	-- Monastic Ring of Onslaught
								i(88638),	-- Monastic Ring of Stoicism
								i(88645),	-- Monastic Ring of Wisdom
								i(88636),	-- Monastic Defender's Idol
								i(88634),	-- Monastic Defender's Stone
								i(88642),	-- Monastic Idol of Rage
								i(88647),	-- Monastic Idol of Wisdom
								i(88639),	-- Monastic Stone of Rage
								i(88644),	-- Monastic Stone of Wisdom
							},
						}),
						cl(PALADIN, {
							i(72983),	-- Zealous Bulwark
							i(72993),	-- Zealous Greatsword
							i(72989),	-- Zealous Scepter
							i(72984),	-- Zealous Shield
							i(72981),	-- Zealous Sword
							i(72966),	-- Zealous Faceguard
							i(72974),	-- Zealous Headpiece
							i(72958),	-- Zealous Helm
							i(72960),	-- Zealous Pauldrons
							i(72968),	-- Zealous Shoulderguards
							i(72976),	-- Zealous Spaulders
							i(73013),	-- Zealous Amulet
							i(73014),	-- Zealous Necklace
							i(73015),	-- Zealous Pendant
							i(73317),	-- Zealous Cloak of Battle
							i(73318),	-- Zealous Cloak of Stoicism
							i(73319),	-- Zealous Cloak of Wisdom
							i(72955),	-- Zealous Battleplate
							i(72971),	-- Zealous Breastplate
							i(72963),	-- Zealous Chestguard
							i(72970),	-- Zealous Armguards
							i(72978),	-- Zealous Armplates
							i(72962),	-- Zealous Vambraces
							i(72957),	-- Zealous Gauntlets
							i(72973),	-- Zealous Gloves
							i(72965),	-- Zealous Handguards
							i(72977),	-- Zealous Belt
							i(72961),	-- Zealous Girdle
							i(72969),	-- Zealous Waistband
							i(72975),	-- Zealous Leggings
							i(72967),	-- Zealous Legguards
							i(72959),	-- Zealous Legplates
							i(72972),	-- Zealous Boots
							i(72964),	-- Zealous Greaves
							i(72956),	-- Zealous Sabatons
							i(73018),	-- Zealous Band of Might
							i(73020),	-- Zealous Band of Stoicism
							i(73022),	-- Zealous Band of Wisdom
							i(73019),	-- Zealous Ring of Might
							i(73021),	-- Zealous Ring of Stoicism
							i(73023),	-- Zealous Ring of Wisdom
							i(73060),	-- Zealous Defender's Idol
							i(73042),	-- Zealous Defender's Stone
							i(73062),	-- Zealous Idol of Battle
							i(73063),	-- Zealous Idol of Wisdom
							i(73061),	-- Zealous Stone of Battle
							i(73064),	-- Zealous Stone of Wisdom
						}),
						cl(PRIEST, {
							i(73008),	-- Seraphic Staff
							i(73009),	-- Seraphic Stave
							i(73336),	-- Seraphic Wand
							i(72648),	-- Seraphic Cowl
							i(72657),	-- Seraphic Hood
							i(72651),	-- Seraphic Mantle
							i(72660),	-- Seraphic Shoulderpads
							i(73120),	-- Seraphic Medallion
							i(73115),	-- Seraphic Necklace
							i(73322),	-- Seraphic Cloak of Destruction
							i(73321),	-- Seraphic Cloak of Wisdom
							i(72650),	-- Seraphic Robe
							i(72659),	-- Seraphic Vestments
							i(72653),	-- Seraphic Bindings
							i(72662),	-- Seraphic Wristwraps
							i(72647),	-- Seraphic Gloves
							i(72656),	-- Seraphic Handwraps
							i(72661),	-- Seraphic Cord
							i(72652),	-- Seraphic Sash
							i(72658),	-- Seraphic Leggings
							i(72649),	-- Seraphic Pants
							i(72646),	-- Seraphic Boots
							i(72655),	-- Seraphic Sandals
							i(73118),	-- Seraphic Band of Destruction
							i(73112),	-- Seraphic Band of Wisdom
							i(73117),	-- Seraphic Ring of Destruction
							i(73113),	-- Seraphic Ring of Wisdom
							i(73119),	-- Seraphic Idol of Destruction
							i(73114),	-- Seraphic Idol of Wisdom
							i(73116),	-- Seraphic Stone of Destruction
							i(73111),	-- Seraphic Stone of Wisdom
						}),
						cl(ROGUE, {
							i(72995),	-- Shadowstalking Dagger
							--i(72996),	-- Shadowstalking Shiv (missing on the vendor implementation) [CRIEVE NOTE: It's listed in the Scroll of Resurrection section already.]
							i(72997),	-- Shadowstalking Sword
							i(72667),	-- Shadowstalking Hood
							i(72669),	-- Shadowstalking Shoulders
							i(73125),	-- Shadowstalking Choker
							i(73320),	-- Shadowstalking Cloak of Rage
							i(72664),	-- Shadowstalking Jerkin
							i(72671),	-- Shadowstalking Bindings
							i(72666),	-- Shadowstalking Gloves
							i(72670),	-- Shadowstalking Waistband
							i(72668),	-- Shadowstalking Britches
							i(72665),	-- Shadowstalking Boots
							i(73122),	-- Shadowstalking Band of Onslaught
							i(73123),	-- Shadowstalking Ring of Onslaught
							i(73124),	-- Shadowstalking Idol of Rage
							i(73121),	-- Shadowstalking Stone of Rage
						}),
						cl(SHAMAN, {
							i(73005),	-- Stormbinder Aegis
							i(73003),	-- Stormbinder Gavel
							i(72998),	-- Stormbinder Mace
							i(73002),	-- Stormbinder Scepter
							i(73004),	-- Stormbinder Shield
							i(72892),	-- Stormbinder Coif
							i(72905),	-- Stormbinder Cowl
							i(72701),	-- Stormbinder Helm
							i(72894),	-- Stormbinder Pauldrons
							i(72703),	-- Stormbinder Shoulderguards
							i(72907),	-- Stormbinder Spaulders
							i(73131),	-- Stormbinder Choker
							i(73136),	-- Stormbinder Medallion
							i(73141),	-- Stormbinder Necklace
							i(73313),	-- Stormbinder Cloak of Destruction
							i(73311),	-- Stormbinder Cloak of Rage
							i(73312),	-- Stormbinder Cloak of Wisdom
							i(72698),	-- Stormbinder Chestguard
							i(72889),	-- Stormbinder Tunic
							i(72902),	-- Stormbinder Vest
							i(72896),	-- Stormbinder Armbands
							i(72705),	-- Stormbinder Armguard
							i(72909),	-- Stormbinder Bracers
							i(72700),	-- Stormbinder Gauntlets
							i(72891),	-- Stormbinder Gloves
							i(72904),	-- Stormbinder Grips
							i(72895),	-- Stormbinder Belt
							i(72908),	-- Stormbinder Girdle
							i(72704),	-- Stormbinder Waistguard
							i(72906),	-- Stormbinder Leggings
							i(72702),	-- Stormbinder Legguards
							i(72893),	-- Stormbinder Legwraps
							i(72890),	-- Stormbinder Boots
							i(72699),	-- Stormbinder Greaves
							i(72903),	-- Stormbinder Sabatons
							i(73139),	-- Stormbinder Band of Destruction
							i(73133),	-- Stormbinder Band of Onslaught
							i(73144),	-- Stormbinder Band of Wisdom
							i(73138),	-- Stormbinder Ring of Destruction
							i(73134),	-- Stormbinder Ring of Onslaught
							i(73143),	-- Stormbinder Ring of Wisdom
							i(73137),	-- Stormbinder Idol of Destruction
							i(73132),	-- Stormbinder Idol of Rage
							i(73142),	-- Stormbinder Idol of Wisdom
							i(73140),	-- Stormbinder Stone of Destruction
							i(73135),	-- Stormbinder Stone of Rage
							i(73145),	-- Stormbinder Stone of Wisdom
						}),
						cl(WARLOCK, {
							i(73007),	-- Dreadsoul Staff
							i(73326),	-- Dreadsoul Wand
							i(72640),	-- Dreadsoul Cowl
							i(72643),	-- Dreadsoul Shoulderpads
							i(73110),	-- Dreadsoul Medallion
							i(73324),	-- Dreadsoul Cloak of Destruction
							i(72642),	-- Dreadsoul Robe
							i(72645),	-- Dreadsoul Wristwraps
							i(72639),	-- Dreadsoul Handwraps
							i(72644),	-- Dreadsoul Cord
							i(72641),	-- Dreadsoul Leggings
							i(72638),	-- Dreadsoul Sandals
							i(73108),	-- Dreadsoul Band of Destruction
							i(73107),	-- Dreadsoul Ring of Destruction
							i(73109),	-- Dreadsoul Idol of Destruction
							i(73106),	-- Dreadsoul Stone of Destruction
						}),
						cl(WARRIOR, {
							i(72982),	-- Valiant Bulwark
							i(72992),	-- Valiant Greatsword
							i(72999),	-- Valiant Maul
							i(72980),	-- Valiant Sword
							i(72940),	-- Valiant Faceguard
							i(72948),	-- Valiant Helm
							i(72950),	-- Valiant Pauldrons
							i(72942),	-- Valiant Shoulderguards
							i(73166),	-- Valiant Amulet
							i(73161),	-- Valiant Pendant
							i(73310),	-- Valiant Cloak of Battle
							i(73309),	-- Valiant Cloak of Stoicism
							i(72945),	-- Valiant Breastplate
							i(72937),	-- Valiant Chestguard
							i(72944),	-- Valiant Armguards
							i(72952),	-- Valiant Vambraces
							i(72947),	-- Valiant Gauntlets
							i(72939),	-- Valiant Handguards
							i(72951),	-- Valiant Girdle
							i(72943),	-- Valiant Waistband
							i(72941),	-- Valiant Legguards
							i(72949),	-- Valiant Legplates
							i(72938),	-- Valiant Greaves
							i(72946),	-- Valiant Sabatons
							i(73162),	-- Valiant Band of Might
							i(73163),	-- Valiant Ring of Might
							i(73168),	-- Valiant Band of Stoicism
							i(73169),	-- Valiant Ring of Stoicism
							i(73167),	-- Valiant Defender's Idol
							i(73170),	-- Valiant Defender's Stone
							i(73165),	-- Valiant Idol of Battle
							i(73164),	-- Valiant Stone of Battle
						}),
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(KALIMDOR, {
		m(MOUNT_HYJAL, {
			n(QUESTS, {
				q(25829),	-- Mount Hyjal - goldrinn hub complete
				q(27872),	-- Mount Hyjal - tortolla hub complete
				q(27873),	-- Mount Hyjal - aviana hub complete
			}),
		}),
	}),
})));