---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(THE_MAELSTROM, {
		m(THE_LOST_ISLES, {
			["lore"] = "The Lost Isles are a chain of islands to the south of Azshara that the Bilgewater Cartel goblins reached after their shipwreck. Things get interesting when the orc ship Draka's Fury also crashes. This is a phased area that only leveling goblins can reach.",
			["icon"] = 463874,	-- Achievement_goblinhead
			["races"] = { GOBLIN },
			["maps"] = {
				175,	-- Kaja'mite Cavern
				176,	-- Volcanoth's Lair
				177,	-- Gallywix Labor Mine - Mine Tunnels
				178,	-- Gallywix Labor Mine - Mine Shaft
			},
			["groups"] = {
				n(EXPLORATION, sharedData({
					["races"] = { GOBLIN },
				},{
					exploration(4783),	-- Alliance Beachhead
					exploration(4951),	-- Bilgewater Lumber Yard
					exploration(4954),	-- Gallywix Docks
					exploration(4779),	-- Horde Base Camp
					exploration(4952),	-- KTC Oil Platform
					exploration(4870),	-- Landing Site
					exploration(4909),	-- Lost Caldera
					exploration(4886),	-- Oomlot Village
					exploration(4903),	-- Oostan
					exploration(4873),	-- Raptor Rise
					exploration(4876),	-- Ruins of Vashj'elan
					exploration(4874),	-- Scorched Gully
					exploration(4721),	-- Shipwreck Shore
					exploration(4782),	-- The Savage Glen
					exploration(4956),	-- The Slave Pits
					exploration(4911),	-- Volcanoth's Lair
					exploration(4912),	-- Warchief's Lookout
				})),
				n(QUESTS, {
					q(24817, {	-- A Goblin in Shark's Clothing
						["sourceQuest"] = 24816,	-- Who's Top of the Food Chain Now?
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 45.2, 65.5, THE_LOST_ISLES },
						["groups"] = {
							i(52952),	-- The Hammer
							i(52906),	-- Leftover Mechachicken Legs
						},
					}),
					q(14303, {	-- Back to Aggra
						["sourceQuest"] = 14236,	-- Weed Whacker
						["qg"] = 35893,	-- Kilag Gorefang
						["coord"] = { 35.4, 75.7, THE_LOST_ISLES },
					}),
					q(24858, {	-- Bilgewater Cartel Represent
						["sourceQuest"] = 24856,	-- Invasion Imminent!
						["qg"] = 38432,	-- Megs Dreadshredder
						["coord"] = { 52.2, 73.1, THE_LOST_ISLES },
						["groups"] = {
							i(52953),	-- Banner Cloak
							i(52907),	-- Snake Plate Belt
						},
					}),
					q(25099, {	-- Borrow Bastia
						["sourceQuest"] = 25098,	-- The Warchief Wants You
						["qg"] = 38935,	-- Thrall
						["coord"] = { 36.7, 43.1, THE_LOST_ISLES },
					}),
					q(14031, {	-- Capturing the Unknown
						["sourceQuest"] = 14248,	-- Help Wanted
						["qg"] = 35769,	-- Foreman Dampwick
						["coord"] = { 31.2, 79.2, THE_LOST_ISLES },
					}),
					q(24954, {	-- Children of a Turtle God
						["sourceQuest"] = 24952,	-- Rocket Boot Boost
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 68.9, 46.4, THE_LOST_ISLES },
					}),
					q(24671, {	-- Cluster Cluck
						["sourceQuest"] = 27139,	-- Hobart Needs You
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 45.3, 65.2, THE_LOST_ISLES },
						["groups"] = {
							i(52904),	-- Broken Plunger
							i(52950),	-- Whamo Kablamo
						},
					}),
					q(14239, {	-- Don't Go Into the Light!
						-- ["sourceQuest"] = 14126,	-- Life Savings   NOTE: CRIEVE SAID TO UNLINK FROM KEZAN SINCE YOU HAVE NO CHOICE BUT TO GO TO LOST ISLES FROM KEZAN.
						["qg"] = 36608,	-- Doc Zapnozzle
						["coord"] = { 24.6, 77.9, THE_LOST_ISLES },
					}),
					q(25214, {	-- Escape Velocity
						["sourceQuest"] = 25213,	-- The Slave Pits
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 43.8, 25.2, THE_LOST_ISLES },
						["groups"] = {
							i(52923),	-- Rocket-Fuel Soaked Bracers
							i(52968),	-- Orbital Leggings
							i(131845),	-- Oribital Greaves
							i(52939),	-- Cage-Launcher's Plate
						},
					}),
					q(14445, {	-- Farewell, For Now
						["sourceQuest"] = 14243,	-- Warchief's Revenge
						["qg"] = 36188,	-- Thrall
						["coord"] = { 35.9, 66.7, THE_LOST_ISLES },
					}),
					q(25251, {	-- Final Confrontation
						["sourceQuests"] = {
							25214,	-- Escape Velocity
							25243,	-- She Loves Me, She Loves Me NOT! [Male Version]
							25244,	-- What Kind of Name is Candy, Anyway? [Female Version]
						},
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 43.6, 25.3, THE_LOST_ISLES },
					}),
					q(14237, {	-- Forward Movement
						["sourceQuest"] = 14303,	-- Back to Aggra
						["qg"] = 35875,	-- Aggra
						["coord"] = { 37.6, 78.0, THE_LOST_ISLES },
					}),
					q(24925, {	-- Free the Captives
						["sourceQuest"] = 24924,	-- Oomlot Village
						["qg"] = 38647,	-- Izzy
						["coord"] = { 56.5, 71.9, THE_LOST_ISLES },
					}),
					q(24897, {	-- Get Back to Town
						["sourceQuest"] = 24868,	-- Surrender or Else!
						["qg"] = 38432,	-- Megs Dreadshredder
						["coord"] = { 52.2, 73.1, THE_LOST_ISLES },
					}),
					q(14014, {	-- Get Our Stuff Back!
						["sourceQuest"] = 14001,	-- Goblin Escape Pods
						["qg"] = 35650,	-- Sassy Hardwrench
						["coord"] = { 27.8, 75.5, THE_LOST_ISLES },
						["groups"] = {
							o(195201, {	-- Crate of Tools
								i(46828),	-- Crate of Tools (QI!)
							}),
						},
					}),
					q(14241, {	-- Get to the Gyrochoppa
						["sourceQuest"] = 14240,	-- Get to the Gyrochoppa
						["qg"] = 36112,	-- Scout Brax
						["coord"] = { 25.2, 59.8, THE_LOST_ISLES },
						["groups"] = {
							i(52949),	-- Gyrochoppa Seat Belt
							i(52932),	-- Parachute Wrist Straps
							i(52903),	-- Pilot's Gloves
							i(131841, {	-- Rotor Chain
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(14001, {	-- Goblin Escape Pods
						["sourceQuest"] = 14239,	-- Don't Go Into the Light!
						["qg"] = 36600,	-- Geargrinder Gizmo
						["coord"] = { 24.6, 77.9, THE_LOST_ISLES },
					}),
					q(25207, {	-- Good-bye, Sweet Oil
						["sourceQuest"] = 25204,	-- Release the Valves
						["provider"] = { "o", 202613 },	-- Platform Control Panel
						["coord"] = { 51.4, 13.0, THE_LOST_ISLES },
						["groups"] = {
							i(52922),	-- Demolitionist's Boots
							i(131836),	-- Demolitionist's Footguards
							i(52967),	-- Oil-Stained Leggings
						},
					}),
					q(14248, {	-- Help Wanted
						["sourceQuests"] = {
							14014,	-- Get Our Stuff Back!
							14473,	-- It's Our Problem Now
							14019,	-- Monkey Business
						},
						["qg"] = 35650,	-- Sassy Hardwrench
						["coord"] = { 27.8, 75.5, THE_LOST_ISLES },
					}),
					q(27139, {	-- Hobart Needs You
						["sourceQuest"] = 14245,	-- It's a Town-In-A-Box
						["qg"] = 36471,	-- Foreman Dampwick
						["coord"] = { 45.3, 64.7, THE_LOST_ISLES },
					}),
					q(14238, {	-- Infrared = Infradead
						["sourceQuest"] = 14237,	-- Forward Movement
						["qg"] = 35917,	-- Kilag Gorefang
						["coord"] = { 34.6, 66.8, THE_LOST_ISLES },
						["groups"] = {
							i(52900),	-- Spy Choker Cord
							i(52930),	-- Spy Poker
							i(52946),	-- Spy Strangler Gloves
						},
					}),
					q(24856, {	-- Invasion Imminent!
						["sourceQuest"] = 24817,	-- A Goblin in Shark's Clothing
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 45.3, 65.2, THE_LOST_ISLES },
					}),
					q(24864, {	-- Irresistible Pool Pony
						["sourceQuests"] = {
							24858,	-- Bilgewater Cartel Represent
							24859,	-- Naga Hide
						},
						["qg"] = 38432,	-- Megs Dreadshredder
						["coord"] = { 52.2, 73.1, THE_LOST_ISLES },
						["groups"] = { i(50602) },	-- Irresistible Pool Pony (QI!)
					}),
					q(14245, {	-- It's a Town-In-A-Box
						["sourceQuest"] = 14244,	-- Up, Up, & Away!
						["qg"] = 36470,	-- Foreman Dampwick
						["coord"] = { 44.5, 64.3, THE_LOST_ISLES },
					}),
					q(14473, {	-- It's Our Problem Now
						["sourceQuest"] = 14001,	-- Goblin Escape Pods
						["qg"] = 35786,	-- Maxx Avalanche
						["coord"] = { 27.8, 74.2, THE_LOST_ISLES },
					}),
					q(25110, {	-- Kaja'Cola Gives you IDEAS!™
						["sourceQuest"] = 25109,	-- The Gallywix Labor Mine
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 53.1, 36.5, THE_LOST_ISLES },
						["groups"] = {
							o_repeated({
								o(202552),	-- Kaja'Cola Zero-One
								o(202553),	-- Kaja'Cola Zero-One
								o(202554),	-- Kaja'Cola Zero-One
								i(52483),	-- Kaja'Cola Zero-One (QI!)
							}),
						},
					}),
					q(25100, {	-- Let's Ride
						["sourceQuest"] = 25099,	-- Borrow Bastia
						["qg"] = 39066,	-- Kilag Gorefang
						["coord"] = { 33.7, 38.7, THE_LOST_ISLES },
					}),
					q(25125, {	-- Light at the End of the Tunnel
						["sourceQuests"] = { 25122, 25123 },	-- Morale Boost / Throw It On the Ground!
						["qg"] = 39199,	-- Assistant Greely
						["coord"] = { 53.1, 36.5, THE_LOST_ISLES },
					}),
					q(14326, {	-- Meet Me Up Top
						["sourceQuest"] = 14242,	-- Precious Cargo
						["qg"] = 36145,	-- Thrall
						["coord"] = { 11.8, 62.7, THE_LOST_ISLES },
					}),
					q(25058, {	-- Mine Disposal, the Goblin Way
						["sourceQuest"] = 25024,	-- Old Friends
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 37.3, 41.9, THE_LOST_ISLES },
						["groups"] = { i(52280) },	-- Satchel of Grenades (QI!)
					}),
					q(14021, {  -- Miner Troubles
						["sourceQuest"] = 14248,	-- Help Wanted
						["qg"] = 35769,	-- Foreman Dampwick
						["coord"] = { 31.2, 79.2, THE_LOST_ISLES },
						["groups"] = {
							i(55885),	-- Dampwick's "Best" Robes
							i(131838, {	-- Miner's Overcoat
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(52944),	-- Miner's Vest
						},
					}),
					q(14019, {	-- Monkey Business
						["sourceQuest"] = 14001,	-- Goblin Escape Pods
						["qg"] = 35758,	-- Bamm Megabomb
						["coord"] = { 27.9, 74.4, THE_LOST_ISLES },
						["groups"] = {
							i(52928),	-- Banana Holder
							i(52898),	-- Banana Peel Slippers
							i(131837, {	-- Monkey Handler Fists
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(52943),	-- Monkey Handler Gloves
						},
					}),
					q(25122, {	-- Morale Boost
						["sourceQuest"] = 25110,	-- Kaja'Cola Gives you IDEAS!™
						["qg"] = 39199,	-- Assistant Greely
						["coord"] = { 53.1, 36.5, THE_LOST_ISLES },
					}),
					q(24859, {	-- Naga Hide
						["sourceQuest"] = 24856,	-- Invasion Imminent!
						["qg"] = 38381,	-- Brett "Coins" McQuid
						["coord"] = { 52.2, 73.2, THE_LOST_ISLES },
					}),
					q(25023, {	-- Old Friends
						["sourceQuest"] = 24958,	-- Volcanoth!
						["qg"] = 38928,	-- Sassy Hardwrench
						["coord"] = { 62.5, 50.0, 176 },
					}),
					q(24937, {	-- Oomlot Dealt With
						["sourceQuest"] = 24929,	-- Send a Message
						["qg"] = 38647,	-- Izzy
						["coord"] = { 56.5, 71.9, THE_LOST_ISLES },
					}),
					q(24924, {	-- Oomlot Village
						["sourceQuest"] = 24901,	-- Town-In-A-Box: Under Attack
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 45.1, 64.9, THE_LOST_ISLES },
					}),
					q(14233, {	-- Orcs Can Write?
						["sourceQuest"] = 14248,	-- Help Wanted
						["qg"] = 35837,	-- Dead Orc Scout
						["coord"] = { 41.5, 25.7, 175 },	-- Kaja'mite Cavern
					}),
					q(14242, {	-- Precious Cargo
						["sourceQuest"] = 14241,	-- Get to the Gyrochoppa
						["qg"] = 36127,	-- Gyrochoppa
						["coord"] = { 23.2, 67.5, THE_LOST_ISLES },
					}),
					q(25204, {	-- Release the Valves
						["sourceQuests"] = {
							25200,	-- Shredder Shutdown
							25201,	-- The Ultimate Footbomb Uniform
						},
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 54.3, 16.9, THE_LOST_ISLES },
					}),
					q(25024, {	-- Repel the Paratroopers
						["sourceQuest"] = 25023,	-- Old Friends
						["qg"] = 38935,	-- Thrall
						["coord"] = { 36.7, 43.1, THE_LOST_ISLES },
					}),
					q(24952, {	-- Rocket Boot Boost
						["sourceQuests"] = {
							24942,	-- Zombies vs Super Booster Rocket Boots
							24945,	-- Three Little Pygmies
							24946,	-- Rockin' Powder
						},
						["qg"] = 38738,	-- Coach Crosscheck
						["coord"] = { 51.7, 47.0, THE_LOST_ISLES },
					}),
					q(24946, {	-- Rockin' Powder
						["sourceQuest"] = 24940,	-- Up the Volcano
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 51.7, 47.3, THE_LOST_ISLES },
						["groups"] = { i(52024) },	-- Rockin' Powder (QI!)
					}),
					q(24929, {	-- Send a Message
						["sourceQuest"] = 24924,	-- Oomlot Village
						["qg"] = 38647,	-- Izzy
						["coord"] = { 56.5, 71.9, THE_LOST_ISLES },
						["groups"] = {
							i(52956),	-- Oomlot Staff
							i(52934),	-- Pygmy Cloak
							i(52910),	-- Yngwie's Vest
							i(131831),	-- Yngwie's Tunic
						},
					}),
					q(25243, {	-- She Loves Me, She Loves Me NOT! [Male Version]
						["description"] = "This quest is a character gender-specific quest only available for male/\nbody type 1 characters. Female/body type 2 characters will in this place get\nthe quest 'What Kind of Name is Candy, Anyway?'.\n\nThe quest rewards are also rewarded from the female/body type 2 version of\nthis quest named 'The Fastest Way to His Heart', which is given in place of\nthe male/body type 1 quest 'What Kind of Name is Chip, Anyway?'.",
						["sourceQuest"] = 25213,	-- The Slave Pits
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 43.6, 25.3, THE_LOST_ISLES },
						["groups"] = {
							i(52920),	-- Cardio-Extractor Gloves
							i(131835, {	-- Cardio-Extractor Handguards
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(52937),	-- Chip's Cloak
							-- #if ANYCLASSIC
							i(52969),	-- Heartache Dagger (this ID is used in Classic [we'll probably find out sometime])
							-- #else
							i(52965),	-- Heartache Dagger
							-- #endif
						},
					}),
					q(25200, {	-- Shredder Shutdown
						["sourceQuest"] = 25184,	-- Wild Mine Cart Ride
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 54.3, 16.9, THE_LOST_ISLES },
					}),
					q(24868, {	-- Surrender or Else!
						["sourceQuest"] = 24864,	-- Irresistible Pool Pony
						["qg"] = 38432,	-- Megs Dreadshredder
						["coord"] = { 52.2, 73.1, THE_LOST_ISLES },
						["groups"] = {
							i(52954),	-- Hatchling Prodder
							i(52908),	-- Hathcling Handlers
							i(131830),	-- Hatchling Gloves
						},
					}),
					q(24744, {	-- The Biggest Egg Ever
						["sourceQuest"] = 24741,	-- Trading Up
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 45.3, 65.2, THE_LOST_ISLES },
						["groups"] = {
							o(201977, {	-- The Biggest Egg Ever
								i(50261),	-- The Biggest Egg Ever (QI!)
							}),
							i(52933),	-- Mechachicken Feather Cloak
							i(52951),	-- Chicken Chopper
							i(52905),	-- Best. Bracers. Ever.
							i(131829),	-- Fryer Gloves
						},
					}),
					q(14234, {	-- The Enemy of My Enemy
						["sourceQuests"] = {
							14021,	-- Miner Troubles
							14031,	-- Capturing the Unknown
							14233,	-- The Enemy of My Enemy
						},
						["qg"] = 35650,	-- Sassy Hardwrench
						["coord"] = { 27.8, 75.5, THE_LOST_ISLES },
						["groups"] = {
							i(52931),	-- Orcish Scout Boots
							i(52948),	-- Sailor's Leggings
							i(131840, {	-- Sailor's Legguards
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(52902),	-- Salvaged Bracers
						},
					}),
					q(25202, {	-- The Fastest Way to His Heart [Female Version]
						["description"] = "This quest is a character gender-specific quest only available for female/\nbody type 2 characters. Male/body type 1 characters will in this place get\nthe quest 'What Kind of Name is Chip, Anyway?'.\n\nThe quest rewards are also rewarded from the male/body type 1 version of\nthis quest named 'She Loves Me, She Loves Me NOT!', which is given in place of\nthe female/body type 2 quest 'What Kind of Name is Candy, Anyway?'.",
						["sourceQuests"] = {
							25200,	-- Shredder Shutdown
							25201,	-- The Ultimate Footbomb Uniform
						},
						["qg"] = 38647,	-- Izzy
						["coord"] = { 54.0, 17.0, THE_LOST_ISLES },
						["groups"] = {
							i(52920),	-- Cardio-Extractor Gloves
							i(131835, {	-- Cardio-Extractor Handguards
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(52937),	-- Chip's Cloak
							i(52965),	-- Heartache Dagger
						},
					}),
					q(25109, {	-- The Gallywix Labor Mine
						["sourceQuest"] = 25100,	-- Let's Ride
						["qg"] = 38517,	-- Slinky Sharpshiv
						["coord"] = { 53.7, 34.9, THE_LOST_ISLES },
						["groups"] = {
							i(52962),	-- Greely's Spare Dagger
							i(52917),	-- Gallywix Laborer's Gloves
						},
					}),
					q(25093, {	-- The Heads of the SI:7
						["sourceQuest"] = 25024,	-- Old Friends
						["qg"] = 39065,	-- Aggra
						["coord"] = { 36.2, 43.3, THE_LOST_ISLES },
						["groups"] = {
							i(52349),	-- Alexi Silenthowl's Head (QI!)
							i(52346),	-- Commander Arrington's Head (QI!)
							i(52347),	-- Darkblade Cyn's Head (QI!)
							--
							i(52960),	-- Silver Platter
							i(52915),	-- Aggra's Sash
						},
					}),
					q(25066, {	-- The Pride of Kezan
						["sourceQuests"] = {
							25024,	-- Repel the Paratroopers
							25093,	-- The Heads of SI:7
							25058,	-- Mine Disposal, the Goblin Way
						},
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 37.3, 41.9, THE_LOST_ISLES },
						["groups"] = {
							i(52961),	-- Gnomish Parachute Scrap
							i(52916),	-- Gunner's Gloves
							i(131834),	-- Gunner's Grips
						},
					}),
					q(25213, {	-- The Slave Pits
						["sourceQuests"] = {
							25207,	-- Good-bye, Sweet Oil
							25202,	-- The Fastest Way to His Heart [Female Version]
							25203,	-- What Kind of name is Chip, Anyway? [Male Version]
						},
						["qg"] = 38124,	-- Assistant Greely
						["coord"] = { 54.3, 16.9, THE_LOST_ISLES },
					}),
					q(25201, {	-- The Ultimate Footbomb Uniform
						["sourceQuest"] = 25184,	-- Wild Mine Cart Ride
						["qg"] = 38738,	-- Coach Crosscheck
						["coord"] = { 54.4, 16.9, THE_LOST_ISLES },
						["groups"] = {
							o_repeated({
								o(202607),	-- Spare Shredder Parts
								o(202608),	-- Spare Shredder Parts
								i(52530),	-- Spare Shredder Parts (QI!)
							}),
						},
					}),
					q(14235, {	-- The Vicious Vale
						["sourceQuest"] = 14234,	-- The Enemy of My Enemy
						["qg"] = 35875,	-- Aggra
						["coord"] = { 37.6, 78.0, THE_LOST_ISLES },
					}),
					q(25098, {	-- The Warchief Wants You
						["sourceQuest"] = 25066,	-- The Pride of Kezan
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 37.3, 41.9, THE_LOST_ISLES },
					}),
					q(24945, {	-- Three Little Pygmies
						["sourceQuest"] = 24940,	-- Up the Volcano
						["qg"] = 36471,	-- Foreman Dampwick
						["coord"] = { 51.8, 47.1, THE_LOST_ISLES },
						["groups"] = {
							i(52913),	-- Witchdoctor Leggings
							i(131832),	-- Witchdoctor Legwraps
							i(52959),	-- Oystein Bracers
						},
					}),
					q(25123, {	-- Throw It On the Ground!
						["sourceQuest"] = 25110,	-- Kaja'Cola Gives you IDEAS!™
						["qg"] = 39199,	-- Assistant Greely
						["coord"] = { 53.1, 36.5, THE_LOST_ISLES },
						["groups"] = {
							o(202574, {		-- Blastshadow's Soulstone
								["coord"] = { 56.6, 33.0, THE_LOST_ISLES },
								["groups"] = { i(52481) },	-- Blastshadow's Soulstone (QI!)
							}),
							--
							i(52918),	-- Delicia's Tights
							i(52963),	-- Soulstone Breaker Wristbands
							i(131843),	-- Soulstone Breaker Bracers
						},
					}),
					q(14240, {	-- To the Cliffs
						["sourceQuest"] = 14238,	-- Infrared = Infradead
						["qg"] = 35917,	-- Kilag Gorefang
						["coord"] = { 34.6, 66.8, THE_LOST_ISLES },
					}),
					q(24901, {	-- Town-In-A-Box: Under Attack
						["sourceQuest"] = 24897,	-- Get Back to Town
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 45.1, 64.9, THE_LOST_ISLES },
						["groups"] = {
							i(52955),	-- Town-In-A-Box Lid Fragment
							i(52909),	-- Mini B.C. Eliminator
						},
					}),
					q(24741, {	-- Trading Up
						["sourceQuest"] = 24671,	-- Cluster Cluck
						["qg"] = 38122,	-- Bamm Megabomb
						["coord"] = { 45.2, 64.8, THE_LOST_ISLES },
						["groups"] = {
							o(201974, {	-- Raptor Egg
								i(50239),	-- Spiny Raptor Egg (QI!)
							}),
						},
					}),
					q(14244, {	-- Up, Up & Away!
						["sourceQuest"] = 14445,	-- Farewell, For Now
						["qg"] = 36425,	-- Sassy Hardwrench
						["coord"] = { 36.0, 67.5, THE_LOST_ISLES },
					}),
					q(24940, {	-- Up the Volcano
						["sourceQuest"] = 24937,	-- Oomlot Dealt With
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 45.1, 64.9, THE_LOST_ISLES },
					}),
					q(25265, {	-- Victory!
						["sourceQuest"] = 25251,	-- Final Confrontation
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 43.6, 25.3, THE_LOST_ISLES },
						["groups"] = {
							i(52927),	-- Victor's Robes
							i(52971),	-- Igneous Leggings
							i(62335),	-- Thrall's Gift
							i(58499),	-- Grasp of Victory
							i(131847),	-- Victor's Legguards
							i(131893),	-- Victor's Igneous Cuffs
						},
					}),
					q(24958, {	-- Volcanoth!
						["sourceQuest"] = 24954,	-- Children of a Turtle God
						["qg"] = 38120,	-- Hobart  Grapplehammer
						["coord"] = { 68.9, 46.4, THE_LOST_ISLES },
						["groups"] = {
							i(52914),	-- Rescue Ladder Cord
							i(131833),	-- Rescue Ladder Waistband
						},
					}),
					q(25266, {	-- Warchief's Emissary
						["sourceQuest"] = 25265,	-- Victory!
						["qg"] = 38935,	-- Thrall
						["coord"] = { 42.1, 17.3, THE_LOST_ISLES },
						["isBreadcrumb"] = true,
						-- apparently not necessary for follow up quest 2022-04-17
						["groups"] = { i(52582) },	-- Sealed Package (QI!)
					}),
					q(14243, {	-- Warchief's Revenge
						["sourceQuest"] = 14326,	-- Meet Me Up Top
						["qg"] = 36161,	-- Thrall
						["coord"] = { 12.4, 63.1, THE_LOST_ISLES },
						["groups"] = {
							i(52947),	-- Cyclone Staff
							i(52901),	-- Whirling Axe
						},
					}),
					q(14236, {	-- Weed Whacker
						["sourceQuest"] = 14235,	-- The Vicious Vale
						["qg"] = 35893,	-- Kilag Gorefang
						["coord"] = { 35.4, 75.7, THE_LOST_ISLES },
						["groups"] = {
							i(52929),	-- Kilag's Vest
							i(52899),	-- Weed Fiber Pants
							i(52945),	-- Weed Stompers
							i(131839, {	-- Weed-Flattening Greatboots
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					q(25244, {	-- What Kind of Name is Candy, Anyway? [Female Version]
						-- #if BEFORE 10.2.5
						["description"] = "This quest is a character gender-specific quest only available for female/\nbody type 2 characters. Male/body type 1 characters will in this place\nget the quest 'She Loves Me, She Loves Me NOT!'.\n\nThe quest rewards have shared apperances with the rewards from the male/\nbody type 1 version of this quest named 'What Kind of Name is Chip, Anyway?',\nbut the latter are different items and can might only be obtained by doing these\ntwo gender-specific quests seperately on different characters if logging out from\nthe game does not work.",
						-- #else
						["description"] = "This quest is a character gender-specific quest only available for female/\nbody type 2 characters. Male/body type 1 characters will in this place\nget the quest 'She Loves Me, She Loves Me NOT!'.\n\nThe quest rewards have shared apperances with the rewards from the male/\nbody type 1 version of this quest named 'What Kind of Name is Chip, Anyway?',\nwhich too will be collected after logging out from the game.",
						-- #endif
						["sourceQuest"] = 25213,	-- The Slave Pits
						["qg"] = 38387,	-- Sassy Hardwrench
						["coord"] = { 43.6, 25.3, THE_LOST_ISLES },
						["groups"] = {
							i(52972),	-- Ex-Stealer's Gloves
							i(52970),	-- Fickle Belt
							i(131846),	-- Fickle Cord
							i(52941),	-- Jealousy's Edge
						},
					}),
					q(25203, {	-- What Kind of Name is Chip, Anyway? [Male Version]
						-- #if BEFORE 10.2.5
						["description"] = "This quest is a character gender-specific quest only available for male/\nbody type 1 characters.\nFemale/body type 2 characters will in this place\nget the quest 'The Fastest Way to His Heart'.\n\nThe quest rewards have shared apperances with the rewards from the female/\nbody type 2 version of this quest named 'What Kind of Name is Candy, Anyway?',\nbut the latter are different items and can might only be obtained by doing these\ntwo gender-specific quests seperately on different characters if logging out from\nthe game does not work.",
						-- #else
						["description"] = "This quest is a character gender-specific quest only available for male/\nbody type 1 characters. Female/body type 2 characters will in this place\nget the quest 'The Fastest Way to His Heart'.\n\nThe quest rewards have shared apperances with the rewards from the female/\nbody type 2 version of this quest named 'What Kind of Name is Candy, Anyway?',\nwhich too will be collected after logging out from the game.",
						-- #endif
						["sourceQuests"] = {
							25200,	-- Shredder Shutdown
							25201,	-- The Ultimate Footbomb Uniform
						},
						["qg"] = 38441,	-- Ace
						["coord"] = { 54.1, 17.2, THE_LOST_ISLES },
						["groups"] = {
							i(131844),	-- Fickle Cord
							i(52921),	-- Ex-Stealer's Gloves
							i(52966),	-- Fickle Belt
							i(52938),	-- Jeealousy's Edge
						},
					}),
					q(24816, {	-- Who's Top of the Food Chain Now?
						["sourceQuest"] = 24744,	-- The Biggest Egg Ever
						["qg"] = 38120,	-- Hobart Grapplehammer
						["coord"] = { 45.3, 65.2, THE_LOST_ISLES },
					}),
					q(25184, {	-- Wild Mine Cart Ride
						["sourceQuest"] = 25125,	-- Light at the End of the Tunnel
						["qg"] = 39341,	-- Mine Cart
						["coord"] = { 56.2, 27.3, THE_LOST_ISLES },
						["groups"] = {
							i(52919),	-- Oxidizing Axe
							i(52964),	-- Heeat-Applied Metalalic Cooking Container
						},
					}),
					q(24942, {	-- Zombies vs Super Booster Rocket Boots
						["sourceQuest"] = 24940,	-- Up the Volcano
						["qg"] = 38738,	-- Coach Crosscheck
						["coord"] = { 51.7, 47.1, THE_LOST_ISLES },
						["groups"] = {
							i(52912),	-- S.B.R.B. Prototype 1
							i(52958),	-- S.B.R.B. Prototype 2
							i(131842),	-- S.B.R.B. Prototype 3
							i(52936),	-- S.B.R.B. Prototype 4
							i(52013),	-- Super Booster Rocket Boots (QI!)
						},
					}),
				}),
				n(VENDORS, {
					n(36432, {	-- Chawg <Armor Vendor>
						["coord"] = { 37.0, 77.8, THE_LOST_ISLES },
						["sym"] = { { "sub", "common_vendor", 49884 } },	-- Sally "Salvager" Sandscrew <Armor Vendor>
					}),
					n(36465, {	-- Chawg <Armor Vendor>
						["coord"] = { 35.8, 67.0, THE_LOST_ISLES },
						["sym"] = { { "sub", "common_vendor", 49884 } },	-- Sally "Salvager" Sandscrew <Armor Vendor>
					}),
					n(36464, {	-- Chawg <Armor Vendor>
						["coord"] = { 24.4, 64.2, THE_LOST_ISLES },
						["sym"] = { { "sub", "common_vendor", 49884 } },	-- Sally "Salvager" Sandscrew <Armor Vendor>
					}),
					n(39063, {	-- Chawg <Armor Vendor>
						["coords"] = {
							{ 36.6, 42.4, THE_LOST_ISLES },
							{ 43.6, 25.2, THE_LOST_ISLES },
							{ 42.6, 16.2, THE_LOST_ISLES },
						},
						["sym"] = { { "sub", "common_vendor", 49884 } },	-- Sally "Salvager" Sandscrew <Armor Vendor>
					}),
					n(45286, {	-- KTC Train-a-Tron Deluxe <Professions Trainer & Vendor>
						["coord"] = { 45.7, 65.8, THE_LOST_ISLES },
						["groups"] = {
							i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
							i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
						},
					}),
					n(36430, {	-- Sally "Salvager" Sandscrew <Slightly Damp Salvage>
						["crs"] = {
							36467,	-- Sally "Salvager" Sandscrew <Slightly Damp Salvage>
							38511,	-- Sally "Salvager" Sandscrew <Slightly Damp Salvage>
						},
						["coords"] = {
							{ 28.2, 76.2, THE_LOST_ISLES },
							{ 35.8, 67.4, THE_LOST_ISLES },
							{ 45.2, 65.6, THE_LOST_ISLES },
							{ 42.6, 16.2, THE_LOST_ISLES },
						},
						["groups"] = {
							i(49247),	-- Drenched Leather Belt
							i(49248),	-- Drenched Leather Boots
							i(49249),	-- Drenched Leather Bracers
							i(49250),	-- Drenched Leather Gloves
							i(49251),	-- Drenched Leather Pants
							i(49252),	-- Drenched Leather Vest
							i(49242),	-- Waterlogged Cloth Belt
							i(49244),	-- Waterlogged Cloth Boots
							i(49245),	-- Waterlogged Cloth Bracers
							i(49246),	-- Waterlogged Cloth Gloves
							i(49243),	-- Waterlogged Cloth Pants
							i(49241),	-- Waterlogged Cloth Vest
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(THE_MAELSTROM, {
		m(THE_LOST_ISLES, {
			n(QUESTS, {
				q(26705),	-- Lost Isles - It's a Town-In-A-Box tracking event. Triggers when you use the plunger to spawn the town
				q(26902),	-- Lost Isles - Get Back to Town accepted tracking flag. Triggers the attack on town-in-a-box
				q(28846),	-- Lost Isles - Repel the Paratroopers accepted tracking flag
				q(25226),	-- Lost Isles - Kill Chip Endale tracking flag
				q(25245),	-- Lost Isles - Kill Candy Cane tracking flag
			}),
		}),
	}),
})));

-- #if AFTER 4.0.3
-- These quests never made it in.
root(ROOTS.NeverImplemented, n(QUESTS, {
	expansion(EXPANSION.CATA, {
		q(24936, {	-- Body And Soul
			i(52911),	-- Yngwie's Vest
			i(52957),	-- Oomlot Staff
			i(52935),	-- Pygmy Cloak
		}),
	}),
}));
-- #endif
