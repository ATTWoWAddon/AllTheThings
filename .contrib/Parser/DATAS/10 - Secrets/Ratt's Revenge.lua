--------------------------------------------
--     S E C R E T S  M O D U L E       --
--------------------------------------------
root(ROOTS.Secrets, header(HEADERS.Achievement, 40967, {	-- Ratts' Revenge
	["description"] = "***Using Debug Mode is recommended.***\n",
	["timeline"] = { ADDED_11_0_5 },
	["groups"] = {
		o(182030, {	-- Inert Peculiar Key
			["description"] = "Inside a rotten tree trunk in the far north of Un'Goro Crater. Use your Torch of Pyrreth to reveal it.",
			["provider"] = { "i", 208092 },	-- Torch of Pyrreth
			["coord"] = { 44.5, 8.0, UNGORO_CRATER },
			["groups"] = { i(228941) },	-- Inert Peculiar Key
		}),
		hqt(84685, {	-- Talk to the Dalaran Survivor while using the Detective title
			["name"] = "Talk to the Dalaran Survivor while using the Detective title",
			["sourceAchievement"] = 40870,	-- Azeroth's Greatest Detective
			["coord"] = { 54.9, 28.9, DORNOGAL },
		}),
		q(84684, {	-- Ratts' Race
			["description"] = "Find 3 notes scattered around Azj-Kahet then confront Ratts in Pillar-nest Vosh.",
			["sourceQuest"]	= 84685,	-- Talk to the Dalaran Survivor with the Detective title
			["provider"] = { "n", 230042 },	-- Dalaran Survivor
			["coord"] = { 54.9, 28.9, DORNOGAL },
			["groups"] = {
				i(228934),	-- Carefully Penned Note (QI!)
				o(466118, {	-- Unfinished Note
					["description"] = "#1. In a cave in Azj'Kahet in the center of 5 Rotglow Settlers.",
					["coord"] = { 69.3, 93.3, AZJ_KAHET },
					["groups"] = { i(228935) },	-- Unfinished Note (QI!)
				}),
				o(466119, {	-- Hastily Scrawled Note
					["description"] = "#2. High up on a ridge overlooking the City of Threads.",
					["coord"] = { 31.5, 20.8, NERUBAR },
					["groups"] = { i(228936) },	-- Hastily Scrawled Note (QI!)
				}),
				o(466120, {	-- Water-Resistant Note
					["description"] = "#3. Underwater in the center of a lake on the right side of the Azj-Kahet-Hallowfall transition.",
					["coord"] = { 50.7, 86.6, HALLOWFALL },
					["groups"] = { i(228937) },	-- Water-Resistant Note (QI!)
				}),
				o(466128, {	-- Peculiar Gem
					["description"] = "#4. To turn in the quest, enter Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall.",
					["coords"] = {
						{ 55.1, 19.0, AZJ_KAHET },	-- Cave Entrance
						{ 56.4, 17.5, AZJ_KAHET },	-- Wall Tunnel
					},
				}),
				i(228938),	-- Peculiar Gem
			},
		}),
		i(44124, {	-- Peculiar Key
			["description"] = "Once reformed, go to the entrance of the Karazhan Catacombs in Deadwind Pass and use your Torch of Pyrreth by the gate to teleport into a secret scenario.",
			["cost"] = {
				{ "i", 228941, 1 },	-- Inert Peculiar Key
				{ "i", 228938, 1 },	-- Peculiar Gem
			},
		}),
		m(46, {	-- Karazhan Catacombs (this makes sense to have as a root map when it's the minilist)
			["description"] = "Deep into the catacombs the bike is just sitting there out of reach, but is surrounded by 12 basins which can light up with orbs if enough actions are performed.",
			["coord"] = { 46.3, 69.1, DEADWIND_PASS },
			["providers"] = {
				{ "i",  44124 },	-- Peculiar Key
				{ "i", 208092 },	-- Torch of Pyrreth
			},
			["groups"] = {
				-- 1 O'clock Basin
				hqt(84676, {	-- The Light of Their Love
					["name"] = "Acquire The Light of Their Love buff stacked 3 times",
					["description"] = "Acquire The Light of Their Love buff (spellID 153715) 3 times from visiting areas relevant to Olgra, Mankrik's wife. Stand at these areas with your Torch of Pyrreth until a stack is gained.\n1. The Humble Monument in Northern Barrens.\n2. Young Olgra in Draenor.\n3. Decimator Olgra in Maldraxxus.\n\nFully lights up the 1 O'clock basin.",
					["sourceQuest"] = 84684,	-- Ratts' Race
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
					["coords"] = {
						{ 55.0, 40.2, NORTHERN_BARRENS },
						{ 74.2, 37.5, DRAENOR_NAGRAND },	-- Before (35170) Consumed by Vengence is completed
						{ 49.2, 48.0, DRAENOR_NAGRAND },	-- After (35170) Consumed by Vengence is completed
						{ 27.3, 61.3, MALDRAXXUS },
					},
					["crs"] = {
						82688,	-- Olgra
						175815,	-- Decimator Olgra
					},
				}),
				-- 2 O'clock Basin
				hqt(84677, {	-- Acquire the Key of Shadows
					["name"] = "Acquire the Key of Shadows from the Ny'Alotha Obelisk",
					["description"] = "Requires the 1 O'clock basin to have been completed to see the obelisk personally.\n1. Acquire the Twitching Eyaball or All-Seeing Eyes toys\n2. Acquire a Perky Pug with either the Dogg-Saron costume from Vashti the Wandering Merchant in Azsuna or the Yipp-Saron costume from Hallow's End (or the AH.)\n3. Bring these items OR find a friend who has them and visit the Ny'Alotha Obelisk above the Seat of Knowledge in the Vale of Eternal Blossoms (BFA).\n4. Have someone summon a perky pug and use the toys, then /pray in front of the obelisk to be granted the Key of Shadows.\n\nThere is a 5-15 minute delay even if you do everything right. Everyone within 10 yards should get the key if anyone in range does it correctly.\n\nFully lights up the 2 O'clock basin",
					["providers"] = {
						{ "n", 153297 },	-- Ny'Alotha Obelisk
						{ "n", 37865 },	-- Perky Pug
					},
					["groups"] = {
						n(153297, {	-- Ny'Alotha Obelisk
							["coord"] = { 83.7, 27.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							["providers"] = {
								{ "i", 175140 },	-- All Seeing Eyes
								{ "i", 168123 },	-- Twitching Eyeball
							},
							["cost"] = {
								{ "i", 229413, 1 },	-- "Dogg-Saron" Costume
								{ "i", 116812, 1 },	-- "Yipp-Saron" Costume
							},
							["groups"] = {
								i(53156, {	-- Key of Shadows
									["description"] = "Opens both doors in the room with the Red Button.",
								}),
							},
						}),
					},
				}),
				-- 3 O'clock Basin
				header(HEADERS.Item, 228967, bubbleDownSelf( {["sourceQuest"] = 84677 }, {	-- Acquire the Key of Shadows
					["description"] = "1. Use the Key of Shadows to enter the room to the left of the Red Button. Fish up an Astral key from the bowl on the left bookshelf. Open the Astral chest in the same room, use the goggles.\n2. Interact with any of the consoles around the catacombs until you get a new actionbar. Can't see it? Look in your spellbook for a Number Sequence spell. Click the console again to submit your code.\n3. Enter the codes on adjacent consoles to open each of the chests, each Piece of Hate will give you an orb at the 3 O'clock basin, fully lighting with 9 orbs.",
					["provider"] = { "i", 53156 },	-- Key of Shadows
					["groups"] = {
						i(228965),	-- Astral Key
						o(466393, {	-- Astral Chest
							["provider"] = { "i", 228965 },	-- Astral Key
							["coord"] = { 48.4, 79.5, 46 },	-- Karazhan Catacombs
							["groups"] = { i(228966) },	-- Starry-Eyed Goggles (TOY!)
						}),
						o(466400, {	-- Property of Elder Ko'nani
							["description"] = "Code to open at the adjacent decryption console: 88224646",
							["coord"] = { 48.9, 80.3, 46 },	-- Karazhan Catacombs
							["questID"] = 84757,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466413, {	-- Encrypted Puzzle Box
							["description"] = "Code to open at the adjacent decryption console: 17112317",
							["coord"] = { 42.9, 70.6, 46 },	-- Karazhan Catacombs
							["questID"] = 84758,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466479, {	-- Encrypted Chest
							["description"] = "Code to open at the adjacent decryption console: 1533, 3457, 8265, or 10638",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 49.5, 65.1, 46 },	-- Karazhan Catacombs
							["questID"] = 84768,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466495, {	-- Encrypted Chest
							["description"] = "Code to open at the adjacent decryption console: 19019",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 67.4, 84.3, 46 },	-- Karazhan Catacombs
							["questID"] = 84771,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466484, {	-- Encrypted Chest
							["description"] = "Code to open at the adjacent decryption console: 5661",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 56.3, 62.6, 46 },	-- Karazhan Catacombs
							["questID"] = 84769,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466420, {	-- Rubenstein's Safe
							["description"] = "Code to open at the adjacent decryption console: 52233",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 64.9, 48.3, 46 },	-- Karazhan Catacombs
							["questID"] = 84766,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466497, {	-- Encrypted Chest
							["description"] = "Code to open at the adjacent decryption console: 51567",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 70.3, 55.4, 46 },	-- Karazhan Catacombs
							["questID"] = 84772,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						o(466489, {	-- Encrypted Chest
							["description"] = "Code to open at the adjacent decryption console: 115",
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 66.3, 15.2, 46 },	-- Karazhan Catacombs
							["questID"] = 84770,	-- Orb
							["groups"] = { i(228967) },	-- Piece of Hate
						}),
						header(HEADERS.Quest, 84786, {	-- Acquire the Piece of Hate from the Lucky slot machine consoles
							["description"] = "In the felcycle room is over a dozen slot machine consoles around the walls, any of them work for this coin. Variations of 777, 888 and 168 are correct answers but the machines only pay out a coin if you are deemed lucky.\nYour luck can be increased by obtaining at least 5 unique lucky things. It's not clear what counts but Blizzard states there are 13 possible lucky sources, some have been listed as a provider for this step. If you see the 'You feel lucky' emote in chat, you should be good, but try at least once anyway, the machine will pay out on first attempt if you're lucky enough, it is not random.\nNo chest will spawn, you will be given the Piece of Hate directly.",
							["providers"] = {
								{ "i", 5373 },		-- Lucky Charm
								{ "i", 200265 },	-- Lucky Dragon's Claw
								{ "i", 198857 },	-- Lucky Duck
								{ "i", 198400 },	-- Lucky Horseshoe
								{ "i", 138382 },	-- Lucky Rat's Tooth
								{ "i", 138385 },	-- Lucky Shirt
								{ "i", 202046 },	-- Lucky Tortollan Charm
							},
							["groups"] = {
								i(228967),	-- Piece of Hate
								hqt(84786, {	-- Orb
									["name"] = "Acquire the Piece of Hate from the Lucky slot machine consoles",
								}),
							},
						}),
					},
				})),
				-- 4 O'clock Basin
				hqt(84780, {	-- Use the Scroll of Fel Binding at Uther's Tomb
					["name"] = "Use the Scroll of Fel Binding at Uther's Tomb",
					["description"] = "1. Use the Scroll of Fel Binding sold by Vashti the Wandering Merchant in Azsuna (Broken Isles) right outside Uther's Tomb in the Western Plaugelands.\n2. You will die, return to your corpse and fight the Doomguard while inspecting the four writings on the floor of the tomb. Anyone can summon the demon and writings will stay visible as long as it lives.\n\nFully lights up the 4 O'clock basin.",
					["cost"] = { { "i", 228987, 1 }	},	-- Scroll of Fel Binding
					["coord"] = { 52.1, 85.1, WESTERN_PLAGUELANDS },
				}),
				-- 5 O'clock Basin
				q(84781, {	-- Master of Secrets
					["description"] = "1. Visit the Timeless isle and find Zarhym in the Cavern of Lost Spirits. Talk to Zarhym, a rare ghostly skull inside the entrance to enter the spirit realm.\n2. Within 5 minutes, Navigate to the back of the cave while avoiding ghosts to find Jeremy Feasel. Stay nearby to him, and you will not exit the spirit realm even if your 5 minutes buff expires.\n3. Defeat Jeremy in a pet battle using only 'secret' pets from the list. If someone in your group beats him in a battle, that also counts and he will grant you the quest too on talking to him. The pets MUST be level 25.\n\nFully lights up the 5 O'clock basin.\n\nValid pets:\nBaa'l, Bumbles, Filthy Slime, Francois, Gizmo the Pure, Glimr, Hungering Claw, Jenafur, Lil' Abom, Nelthara, Phoenix Wishwing, Renny, Snowclaw Cub, Spyragos, Sun Darter Hatchling, Taptaf, Terky, Tobias, Wicker Pup",
					["sourceQuest"] = 84780,	-- Use the Scroll of Fel Binding at Uther's Tomb
					["qgs"] = {
						232048,	-- Jeremy Feasel
						141941,	-- Baa'l
						143730,	-- Bumbles
						160704,	-- Filthy Slime
						134406,	-- Francois
						229779,	-- Gizmo the Pure
						169514,	-- Glimr
						111984,	-- Hungering Claw
						159783,	-- Jenafur
						179008,	-- Lil' Abom
						204367,	-- Nelthara
						189117,	-- Phoenix Wishwing
						163897,	-- Renny
						192343,	-- Snowclaw Cub
						191381,	-- Spyragos
						61087,	-- Sun Darter Hatchling
						139770,	-- Taptaf
						16445,	-- Terky
						208643,	-- Tobias
						143189,	-- Wicker Pup
					},
					["coords"] = {
						{ 43.1, 41.4, TIMELESS_ISLE },
						{ 53.3, 56.8, 555 },	-- Cavern of Lost Spirits
						{ 39.6, 38.4, 555 },	-- Cavern of Lost Spirits
					},
					["crs"] = 71876,
					["groups"] = { i(228995) },	-- Golden Muffin
				}),
				-- 6 O'clock Basin
				hqt(84811, {	-- Acquire the Ancient Shaman Blood
					["name"] = "Acquire the Ancient Shaman Blood",
					["description"] = "Use your Torch of Pyrreth at various alters to summon a Spirit of Collections. Perform several actions to appease the spirits on each alter of acquisition, an action may require summoning a mount, pet, or toy associated with each spirit, emoting in some way, or changing your transmog.\n\nSomeone in your phase can appease a spirit for you if nearby, but they must fulfill each part of a spirit's appeasement themselves. If one person covers mount, and another covers pet for example, it will not work.\n\nEach appeased spirit will add an orb to the 6 O'clock basin, and looting the final chest will light it fully.",
					["provider"] = { "i", 208092 },	-- Torch of Pyrreth
					["groups"] = {
						hqt(84809, {	-- Appease the Spirit of Collections (Blood)
							["description"] = "Confirmed actions to appease:\nMounts: Any with 'blood' in their name\n\nPets: Any with 'blood' in their name\n\nToys: Throbbing Blood Orb",
							["name"] = "Appease the Spirit of Collections (Blood)",
							["coord"] = { 77.1, 46.3, NORTHERN_STRANGLETHORN },
							["crs"] = 230430,
						}),
						hqt(84807, {	-- Appease the Spirit of Collections (Corruption)
							["description"] = "Confirmed actions to appease:\nOutfit: Cloak of Overwhelming Corruption (or a cloak with the same appearance)\n\nEmotes: /cower with the spirit targeted\n\nMounts: Any with 'corrupted' in their name\n\nPets: Any with 'corrupted' in their name\n\nToys: Ring of Broken Promises, Accursed Tome of the Sargerei",
							["name"] = "Appease the Spirit of Collections (Corruption)",
							["coord"] = { 77.5, 43.9, NORTHERN_STRANGLETHORN },
							["crs"] = 230424,
						}),
						hqt(84810, {	-- Appease the Spirit of Collections (Shadow)
							["description"] = "Confirmed actions to appease:\nOutfit: Cloak of the Black Void (or a cloak with the same appearance)\n\nEmotes: /smirk with the spirit targeted\n\nPets: Lesser Voidcaller, Sir Shady Mrrgglton Junior, Voidwiggler\n\nToys: Shadowy Disguise, Void Totem",
							["name"] = "Appease the Spirit of Collections (Shadow)",
							["coord"] = { 78.1, 46.3, NORTHERN_STRANGLETHORN },
							["crs"] = 230440,
						}),
						hqt(84806, {	-- Appease the Spirit of Collections (Sin)
							["description"] = "Confirmed actions to appease:\nOutfit: Any sinstone back cosmetic\n\nPets: Sinheart\n\nToys: Bondable Sinstone",
							["name"] = "Appease the Spirit of Collections (Sin)",
							["coord"] = { 78.3, 44.0, NORTHERN_STRANGLETHORN },
							["crs"] = 230423,
						}),
						hqt(84808, {	-- Appease the Spirit of Collections (Temptation)
							["description"] = "Confirmed actions to appease:\nOutfit: Be naked\n\nEmotes: /flirt with the spirit targeted\n\nPets: Sister of Temptation\n\nToys: Moroes' Famous Polish, Steamy Romance Novel Kit",
							["name"] = "Appease the Spirit of Collections (Temptation)",
							["coord"] = { 77.1, 44.9, NORTHERN_STRANGLETHORN },
							["crs"] = 230425,
						}),
						o(466808, {	-- Chest of Acquisitions
							["description"] ="Appears by the wall nearby the Shadow alter once each spirit has been appeased. Use your goggles to see it.",
							["sourceQuests"] = {
								84809,	-- Appease the Spirit of Collections (Blood)
								84807,	-- Appease the Spirit of Collections (Corruption)
								84810,	-- Appease the Spirit of Collections (Shadow)
								84806,	-- Appease the Spirit of Collections (Sin)
								84808,	-- Appease the Spirit of Collections (Temptation)
								84781,	-- Master of Secrets
							},
							["provider"] = { "i", 228966 },	-- Starry-Eyed Goggles
							["coord"] = { 78.2, 47.7, NORTHERN_STRANGLETHORN },
							["groups"] = { i(229007)	},	-- Ancient Shaman Blood
						}),
					},
				}),
				-- 7 O'clock Basin
				hqt(84823, {	-- Acquire the Warden's Mirror
					["name"] = "Acquire the Warden's Mirror",
					["description"] = "Empower your owl pet with the Owl statues in Azsuna then enter the Vault of the Wardens to find a Sentry Statue. Use it to solve a puzzle to receive the mirror.\n\nEmpowering your owl will add 4 orbs to the 7 O'clock basin, and solving the sentry puzzle will light it fully.",
					["maps"] = { AZSUNA, 710, 711, 712 },	-- Vault of the Wardens
					["groups"] = {
						header(HEADERS.Object, 254262, {	-- Owl of the Watchers
							["description"] = "On the Isle of the Watchers in Azsuna are 9 Owl of the Watchers statues, on any shard, only 4 of them will be interactable at any given time.\n\nYou need an owl pet, the Fledgling Warden Owl sold by the Wardens quartermaster on the same island is confirmed to work, but other owls may work too.\n\nSummon your owl and don't let it disappear by flying too far away. Find an interactable statue and sit in the aura it creates with your pet until an audible sound cue plays and a secret magnifying glass icon appears over your head. Do that again for 4 different statue auras, Red, Green, Blue and Purple.\nYou'll know you're done when your owl has a distinct white orb above their head. Unlocks 4 orbs at Basin 7.",
							["provider"] = { "n", 97128 },	-- Fledgling Warden Owl
							["coords"] = {	-- Likely objectids are 254261 - 254269
								{ 44.18, 72.41, AZSUNA },
								{ 40.54, 73.15, AZSUNA },
								{ 40.52, 75.19, AZSUNA },
								{ 37.10, 82.16, AZSUNA },
								{ 43.24, 85.30, AZSUNA },
								{ 43.66, 87.51, AZSUNA },
								{ 50.45, 91.67, AZSUNA },
								{ 47.48, 84.74, AZSUNA },
								{ 45.97, 84.06, AZSUNA },
							},	-- TODO: if we REALLY want to, we could source objectids for each statue but it'd be trial and error with coordinates since wowhead is missing data and debugger doesn't report.
							["groups"] = {
								hqt(39353, {	-- Empower your owl with the red statue aura
									["name"] = "Empower your owl with the red statue aura",
									["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
								}),
								hqt(26741, {	-- Empower your owl with the green statue aura
									["name"] = "Empower your owl with the green statue aura",
									["description"] = "Unlocks an orb at the 7 O'clock basin.",	-- Orb
									["_drop"] = { "r" },	-- drop Alliance tag from API
								}),
								hqt(40721, {	-- Empower your owl with the blue statue aura
									["name"] = "Empower your owl with the blue statue aura",
									["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
								}),
								hqt(26704, {	-- Empower your owl with the purple statue aura
									["name"] = "Empower your owl with the purple statue aura",
									["description"] = "Unlocks an orb at the 7 O'clock basin."	-- Orb
								}),
							},
						}),
						o(466943, {	-- Sentry Statue
							["description"] = "You must first have completed the previous steps with the watcher statues and empowering your owl.\n1. Clear Vault of the Wardens (any difficulty) with your owl pet summoned through to last boss.\n2. Pick up Elune's light from a statue in the corner of Cordana's arena and QUICKLY get back up to the first boss's room.\n3. Backtrack from the first boss room towards the dungeon entrance, enter the newly opened door on your right, the statue will sit in the center.",
							["provider"] = { "n", 97128 },	-- Fledgling Warden Owl
							["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
							["groups"] = {
								i(229046, {	-- Sentry Statue
									["description"] = "Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors."
								}),
							},
						}),
						hqt(84916, {	-- Place the Sentry Statue in the Vault of Mirrors
							["name"] = "Place the Sentry Statue in the Vault of Mirrors",
							["description"] = "Place in the center platform before the last set of stairs leading to Glazer's platform in the Vault of Mirrors.",
							["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
						}),
						o(466960, {	-- Treasure of the Wardens
							["description"] = "Once you place the Sentry Statue in the Vault of Mirrors, a 5x5 grid of watcher statues will appear. You need to make each statue descend into the floor, but each statue you click will toggle the state of 4 other statues.\n\nThere are addons and website tools to solve this, for your sanity, use one. You may solve this secret in a group.\n\nFully lights up the 7 O'clock basin.",
							["providers"] = {
								{ "n", 97128 },	-- Fledgling Warden Owl
								{ "i", 208092 },	-- Torch of Pyrreth
							},
							["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
							["crs"] = 109300,	-- Sentry
							["groups"] = { i(229054) },	-- Warden's Mirror
						}),
					},
				}),
				-- 8 O'clock Basin
				o(466975, {	-- Enigma Machine
					["description"] = "On the left side of the hallway after the second stairwell.",
					["coord"] = { 59.9, 42.6, 46 },	-- Karazhan Catacombs
					["groups"] = {
						hqt(84829, {	-- Insert the Ancient Shaman Blood into the Enigma Machine
							["name"] = "Insert the Ancient Shaman Blood into the Enigma Machine",
							["sourceQuest"] = 84811,	-- Acquire the Ancient Shaman Blood
							["cost"] = { { "i", 229007, 1 } },	-- Ancient Shaman Blood
						}),
						hqt(84830, {	-- Insert the Warden's Mirror into the Enigma Machine
							["name"] = "Insert the Warden's Mirror into the Enigma Machine",
							["sourceQuest"] = 84823,	-- Acquire the Warden's Mirror
							["cost"] = { { "i", 229054, 1 } },	-- Warden's Mirror
						}),
						hqt(84837, {	-- Decipher the Enigma Machine
							["name"] = "Decipher the Enigma Machine",
							["description"] ="1. Hit begin on the console, then hit submit. A randomized number of rats will spawn in the catacombs.\n2. Count the number of Rats in the whole catacombs, use a targeting macro to make sure you don't miss one. There will also be Catacombs Rats, those DO NOT COUNT. Kill both types of rats once you are sure of your count so they cannot interfere with pressure plates.\n3. Depending on the number of rats, you need to drag a certain number of statues to a specific pressure plate and stack them, the beacon color will shift from Blue->Green->Yellow->Orange->Purple as a plate has 1->2->3->4->5 entities stack on it.\n4. Head back to the Enigma Machine and submit, you will be electrocuted if you get it wrong, leave and reset the instance if you do, restarting at lock 1. Otherwise, continue counting the next set of rats and submitting results using info from the next column until you've completed all 7 locks.\n\nPlate 1 is at 71.6, 20.1 at the top of the map in the felcycle room\nPlate 2 is at 68.5, 34.2 right at the entrance to the felcycle room\nPlate 3 is at 73.6, 43.0 behind the locked gate on the right of the map, use your Relic of Crystal Connections to teleport to the humming crystal in the room by targeting it\nPlate 4 is at 68.8, 50.9 in the center of the hallway opposite the felcycle room\nPlate 5 is at 73.6, 65.3 in the flooded dead end hallway right as you enter the catacombs\nPlate 6 is at 60.2, 71.6 on the left side of the hallway before the cat room\nPlate 7 is at 47.8, 78.9 in the corner of the room with the Astral chest\n\n[# Rats | Lock 1| Lock 2| Lock 3|\n[1 Rats | 1 > P1 | 1 > P2 | 1 > P3 |\n[2 Rats | 1 > P2 | 1 > P4 | 1 > P6 |\n[3 Rats | 1 > P3 | 1 > P6 | 2 > P2 |\n[4 Rats | 1 > P4 | 2 > P1 | 2 > P5 |\n[5 Rats | 1 > P5 | 2 > P3 | 3 > P1 |\n[6 Rats | 1 > P6 | 2 > P3 | 3 > P4 |\n[7 Rats | 1 > P7 | 2 > P7 | 1 > P1 |\n[8 Rats | 2 > P1 | 3 > P2 | 1 > P4 |\n[9 Rats | 2 > P2 | 3 > P4 | 1 > P7 |\n[10Rats| 2 > P3 | 3 > P6 | 2 > P3 |\nExample: Counting 2 rats during Lock 2, stack 1 statue on pressure plate 4.\n\nFully lights up the 8 O'clock basin.",
							["sourceQuests"] = {
								84829,	-- Insert the Ancient Shaman Blood into the Enigma Machine
								84830,	-- Insert the Warden's Mirror into the Enigma Machine
							},
							["provider"] = { "i", 228996 },	-- Relic of Crystal Connections
							["groups"] = {
								n(230653, {	-- Greed Statue
									["description"] = "Right of the entrance of the felcycle room.",
									["coord"] = { 70.6, 34.5, 46 },	-- Karazhan Catacombs
								}),
								n(230654, {	-- Guardian Statue
									["description"] = "Opposite the Enigma Machine.",
									["coord"] = { 61.2, 47.9, 46 },	-- Karazhan Catacombs
								}),
								n(230655, {	-- Watcher  Statue
									["description"] = "On the right inside the room ahead of the Red Button.",
									["coord"] = { 43.4, 64.9, 46 },	-- Karazhan Catacombs
								}),
								n(230652, {	-- Nature Statue
									["description"] = "In the room with the Astral Chest, left of the Red Button.",
									["coord"] = { 49.3, 75.9, 46 },	-- Karazhan Catacombs
								}),
								n(230657, {	-- Rage Statue
									["description"] = "At the bottom of the entrance stairwell.",
									["coord"] = { 70.3, 79.1, 46 },	-- Karazhan Catacombs
								}),
								n(230596, {	-- Rat
									["description"] = "This is a |cff4caf50VALID|r rat, it counts!",
								}),
								n(230599, {	-- Catacombs Rat
									["description"] = "This is an |cffff0000INVALID|r rat, it DOESN'T count!",
								}),
							},
						}),
					},
				}),
				-- 9 O'clock Basin
				o(467191, {	-- Encrypted Chest
					["description"] = "Return to Pillar-nest Vosh to the left of Faerin's advance, navigate toward the back of the cave then turn around to find a wall you can climb, fall into a tunnel hidden in the wall.\n\nUse your Starry-Eyed goggles to reveal a translucent platform, use your Relic of Crystal Connections on the humming crystal to get up to it.\n\nCode to open at the adjacent decryption console: 84847078.\n\nFully lights the 9 O'clock Basin.",
					["sourceQuest"] = 84837,	-- Decipher the Enigma Machine
					["providers"] = {
						{ "i", 228966 },	-- Starry-Eyed Goggles
						{ "i", 228996 },	-- Relic of Crystal Connections
					},
					["coords"] = {
						{ 55.1, 19.0, AZJ_KAHET },	-- Cave Entrance
						{ 56.4, 17.5, AZJ_KAHET },	-- Wall Tunnel
						{ 56.1, 17.9, AZJ_KAHET },	-- Encrypted Chest
					},
					["questID"] = 84854,	-- Fully lights the 9 O'clock basin
					["groups"] = {
						i(229348),	-- Incognitro, the Indecipherable Felcycle (MOUNT!)
						ach(40967),		-- Ratts' Revenge
					},
				}),
				-- 10 O'clock Basin
				n(230070, {	-- Red Button
					["description"] = "Interacting with the button starts a 20 second timer, refreshing on clicking again. The orb to the left of the button reports how many times the button has been clicked within that window.",
					["coord"] = { 47.4, 68.3, 46 },	-- Karazhan Catacombs
					["groups"] = {
						hqt(84702, {	-- Red Button x100
							["name"] = "Press the Red Button 100 times",
							["description"] = "Unlocks an orb at the 10 O'clock basin."	-- Orb
						}),
						hqt(84703, {	-- Red Button x1000
							["name"] = "Press the Red Button 1000 times",
							["description"] = "Unlocks an orb at the 10 O'clock basin."	-- Orb
						}),
					},
				}),
				-- 11 O'clock Basin
				-- 12 O'clock Basin
				o(475116, {	-- Ordinary Pebble
					["description"] = "These pebbles can be found throughout the catacombs.\n1. Halfway down the entrance stairwell, behind a candelabra sitting on the bannister.\n2. Behind the frame of the archway halfway down the entrance stairwell, opposite the skeleton sitting on the other side of the arch.\n3. To the left of the tilted Replica Owl of the Watchers in the first room after the entrance stairs.\n4. On the inside corner of the doorway to the cat room, interactable through the gate.\n5. In the hand of a skeleton in the corner of the hallway leading to the Felcycle.\n6. On a shelf in the back in the Nature statue room.",
					["coords"] = {
						{ 70.1, 90.3, 46 },	-- Stair Pebble
						{ 70.3, 81.0, 46 },	-- Arch Pebble
						{ 70.5, 61.7, 46 },	-- Statue Pebble
						{ 56.3, 73.3, 46 },	-- Catgate Pebble
						{ 70.9, 53.9, 46 },	-- Skelly Pebble
						{ 47.0, 78.1, 46 },	-- Shelf Pebble
					},
				}),
				i(228953),	-- Rosy Spat
			},
		}),
	},
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	header(HEADERS.Achievement, 40967, {
		["timeline"] = { ADDED_11_0_5 },
		["groups"] = {
			-- Felcycle HQTs
			q(84718),	-- Flags and unflags CONSTANTLY all over the catacombs.
			q(85169),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
			q(85170),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
			q(85171),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
			q(85172),	-- Triggered on interacting with an ordinary pebble in the catacombs. Doesn't reliably trigger on first click, or from specific pebble locations, can unflag.
		},
	}),
}))
