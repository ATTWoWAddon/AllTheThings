---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(KORTHIA, {
		n(RARES, sharedData({
			["isDaily"] = true,
		}, {
			n(179769, {	-- Consumption
				["description"] = "Only gives daily kill and achievement credit when it is in Rare or Rare Elite form.\n\nWhen it spawns, there is a zonewide announcement: |cFFf73f3fMawsworn Ruiner yells: Soon it shall feed off the Maw Walkers!|r",
				["crs"] = {
					179755,	-- Consumption (Rare, non-Elite version)
					179768,	-- Consumption (Rare Elite version)
				},
				["coord"] = { 51.1, 41.7, KORTHIA },
				["questID"] = 64243,
				["groups"] = {
					i(187402),	-- All-Consuming Loop
					i(187245),	-- Death-Enveloped Spires
					i(187246),	-- Death-Enveloped Pauldrons
					i(187247),	-- Death-Enveloped Shoulder Spikes
				},
			}),
			n(179913, {	-- Deadsoul Hatcher
				["description"] = "Requires someone to enter the Rift and click the rare, at which point it will pull the player out into the normal phase of Korthia.\n\nWhen the rare has shifted into the normal Korthia phase, there is a zonewide announcement: |cFFff8040Deadsoul Hatcher breaks into Korthia from the Rift!|r",
				["coord"] = { 59.2, 52.0, KORTHIA },
				["questID"] = 64285,
				["groups"] = {
					i(187401),	-- Band of the Shaded Rift
					i(187396),	-- Girdle of the Deadsoul
				},
			}),
			n(177903, {	-- Dominated Protector
				["coord"] = { 51.9, 20.9, KORTHIA },
				["questID"] = 63830,
				["groups"] = {
					i(187390),	-- Dominated Protector's Helm
				},
			}),
			n(180014, {	-- Escaped Wilderling
				["description"] = "Requires a |cFFA330C9Night Fae|r to start.\n\nWhen it spawns, there is a zonewide announcement: |cFFff8040Escaped Wilderling roars defiantly in the distance.|r",
				["crs"] = { 180009 },	-- Alluring Drum
				["coord"] = { 33.1, 39.5, KORTHIA },
				["questID"] = 64320,
				["groups"] = {
					i(187423),	-- Legend of the Animaswell
					i(187278, {	-- Talon-Pierced Mawsworn Lockbox
						i(187395),	-- Reinforced Stygian Spaulders
					}),
					i(187281),	-- Wilderling Saddle
				},
			}),
			n(180042, {	-- Fleshwing
				["description"] = "Help Cadaverous, Dregs, and Lurik burn necromancers' corpses until they summon the rare.\n\nRequires a |cFF40bf40Necrolord|r to start. When the event begins, there is a zonewide announcement: |cFFf73f3fCadaverous yells: Search every crevice for the necromancers' corpses!|r",
				["crs"] = {
					180079,	-- Cadaverous
					180064,	-- Corpse Heap
					180057,	-- Restless Necromancer
				},
				["coord"] = { 59.7, 43.3, KORTHIA },
				["questID"] = 64349,
				["groups"] = {
					i(187424),	-- Legend of the Animaswell
					i(187372),	-- Miasma Filtering Headpiece
					i(187181, bubbleDownSelf({ ["customCollect"] = "SL_COV_NEC" }, {	-- Small Corpsefly Egg
						i(187182, {	-- Hatching Corpsefly Egg
							i(186489),	-- Lord of the Corpseflies (MOUNT!)
						}),
					})),
				},
			}),
			n(179472, {	-- Konthrogz the Obliterator
				["description"] = "Can spawn next to other rares when they die. Defeat the adds that emerge from the portal, and eventually the rare will appear.\n\nWhen the portal spawns, there is a zonewide announcement: |cFFff8040A massive devourer tears an opening into Korthia.|r",
				["crs"] = { 179464 },	-- Devouring Tear
				["questID"] = 64246,
				["groups"] = {
					i(187375),	-- Bound Worldeater Tendrils
					i(187384),	-- Konthrogz's Scaled Handguards
					i(187183),	-- Rampaging Mauler (MOUNT!)
					i(187397),	-- Vambraces of the In-Between
					i(187378),	-- Visage of the Obliterator
				},
			}),
			n(179108, {	-- Kroke the Tormented
				["description"] = "Kill |cFF883325Tormented Demolishers|r for a chance to spawn Kroke.\n\nIf the two on the surface are not up, there is a third Demolisher inside the cave in the bottom-left room.\n\nWhen it spawns, there is a zonewide announcement: |cFFff8040Kroke the Tormented roars triumphantly.|r",
				["crs"] = { 179029 },	-- Tormented Demolisher
				["coords"] = {
					{ 59.8, 37.5, KORTHIA },
					{ 63.0, 35.8, KORTHIA },
				},
				["questID"] = 64428,
				["groups"] = {
					i(187248),	-- Kroke's Gleaming Spaulders
					i(187250),	-- Kroke's Wingspiked Pauldrons
					i(187394),	-- Tormented Giant's Legplates
				},
			}),
			n(179684, {	-- Malbog
				["description"] = "Speak to Caretaker Kah-Kay at Keeper's Respite to enlist the help of Kah-Bear. Follow the footprints all the way to your prey, and summon it by clicking on the |cFFFFFFFFFleshy Remains|r.",
				["crs"] = { 179729 },	-- Caretaker Kah-Kay
				["coords"] = {
					{ 60.6, 23.1, KORTHIA },
					{ 44.3, 29.5, KORTHIA },
				},
				["provider"] = { "o", 369181 },	-- Fleshy Remains
				["questID"] = 64233,
				["groups"] = {
					i(186645),	-- Crimson Shardhide (MOUNT!)
					i(187377),	-- Malbog's Paws
				},
			}),
			n(179931, {	-- Relic Breaker Krelva
				["description"] = "Use the grapple points to access the rare and chase her as she evades you.\n\nWhen the rare has been pulled, there is a zonewide announcement: |cFFff4040Relic Breaker Krelva yells: Not now, fool!  I am searching for something...|r",
				["coord"] = { 22.8, 42.6, KORTHIA },
				["questID"] = 64291,
				["groups"] = {
					i(187403),	-- Relic Breaker's Drape
				},
			}),
			n(180160, {	-- Reliwik the Defiant
				["description"] = "Click the |cFFFFFFFFUncorrupted Razorwing Egg|r to draw the attention of the rare.",
				["provider"] = { "o", 369435 },	-- Uncorrupted Razorwing Egg
				["coord"] = { 56.3, 66.2, KORTHIA },
				["questID"] = 64455,
				["groups"] = {
					i(187388),	-- Barbed Scale Cinch
					i(186652),	-- Garnet Razorwing (MOUNT!)
				},
			}),
			n(179608, {	-- Screaming Shade
				["description"] = "Requires someone to enter the Rift and click the rare, at which point it will pull the player out into the normal phase of Korthia.\n\nWhen the rare has shifted into the normal Korthia phase, there is a zonewide announcement: |cFFff8040Screaming Shade breaks into Korthia from the Rift!|r",
				["coord"] = { 44.6, 42.9, KORTHIA },
				["questID"] = 64263,
				["groups"] = {
					i(187400),	-- Mantle of Screaming Shadows
					i(187362),	-- Stinging Shadow Screamer
				},
			}),
			n(179911, {	-- Silent Soulstalker
				["description"] = "Requires someone to enter the Rift and click the rare, at which point it will pull the player out into the normal phase of Korthia.\n\nWhen the rare has shifted into the normal Korthia phase, there is a zonewide announcement: |cFFff8040Silent Soulstalker breaks into Korthia from the Rift!|r",
				["coord"] = { 57.5, 70.2, KORTHIA },
				["questID"] = 64284,
				["groups"] = {
					i(187381),	-- Rift-Touched Bindings
					i(187383),	-- Silent Soulstalker Sabatons
				},
			}),
			n(179985, {	-- Stygian Stonecrusher
				["description"] = "Speak to Drippy, and then defend the NPCs as they repair the Broken Gatecrasher.\n\nRequires a |cFFfe040fVenthyr|r to start. When the event begins, there is a zonewide announcement: |cFFf73f3fDrippy yells: For Sinfall!|r",
				["crs"] = {
					179974,	-- Drippy
					179969,	-- Broken Gatecrasher [Vignette]
				},
				["coord"] = { 46.3, 79.7, KORTHIA },
				["questID"] = 64313,
				["groups"] = {
					i(187283),	-- Gravewing Crystal
					i(187428),	-- Legend of the Animaswell
					i(187386),	-- Stygian Crystal Studded Legguards
				},
			}),
			n(179760, {	-- Towering Exterminator
				["description"] = "Can spawn next to other rares when they die. Defeat the adds that emerge from the portal, and eventually the rare will appear.\n\nWhen the portal spawns, there is a zonewide announcement: |cFFff8040A powerful mawsworn opens a portal into Korthia.|r",
				["crs"] = {
					179759,	-- Mawsworn Portal [Vignette]
				},
				["questID"] = 64245,
				["groups"] = {
					i(187035),	-- Cold Burden of the Damned
					i(187242),	-- Exterminator's Crest of the Damned
					i(187382),	-- Mawsworn Exterminator's Hauberk
					i(187376),	-- Mawsworn Lieutenant's Treads
					i(187392),	-- Sabatons of the Towering Construct
					i(187373),	-- Soul-Enveloping Leggings
					i(187241),	-- Watchful Eye of the Damned
				},
			}),
			n(180162, {	-- Ve'rayn
				["description"] = "Click on the |cFFFFFFFFPlanted Veilstaff|r and answer Ve'rayn's questions. Eventually, she will attack.",
				["coords"] = {
					{ 32.5, 43.0, KORTHIA },
					{ 43.3, 57.7, KORTHIA },	-- cave entrance
					{ 43.5, 67.5, KORTHIA },
					{ 49.0, 29.0, KORTHIA },
					{ 61.4, 57.8, KORTHIA },
				},
				["questID"] = 64457,
				["groups"] = {
					i(187404),	-- Cartel Ve Amulet
					i(187264),	-- Ve'rayn's Head
					i(187369),	-- Ve'rayn's Formal Robes
				},
			}),
			n(180032, {	-- Wild Worldcracker
				["description"] = "Escort Popo as she helps all her friends, and eventually she will summon the rare. She patrols from east to west.\n\nRequires a |cFF516bfeKyrian|r to start. When the event begins, there is a zonewide announcement: |cFFf73f3fPopo yells: Help is on the way, friends!|r",
				["crs"] = { 180028 },	-- Popo
				["coords"] = {
					{ 56.8, 32.6, KORTHIA },	-- start
					{ 46.9, 35.1, KORTHIA },	-- end
				},
				["questID"] = 64338,
				["groups"] = {
					i(187380),	-- Devourer Hide Belt
					i(187282),	-- Intact Aquilon Core
					i(187426),	-- Legend of the Animaswell
					i(187176),	-- Vesper of Harmony (TOY!)
				},
			}),
			n(179859, {	-- Xyraxz the Unknowable
				["description"] = "Requires someone with Tier 3 Archivist's Codex reputation to repair the teleportation pad.\n\nOnce repaired, there is a zonewide announcement: |cFFff8040[Name] has repaired the ancient teleporter to the Chamber of Wisdom!|r",
				["coord"] = { 45.0, 35.5, KORTHIA },
				["questID"] = 64278,
				["cost"] = { { "i", 186718, 1 } },	-- Teleporter Repair Kit
				["groups"] = {
					i(187104),	-- Obelisk of Dark Tidings
					i(187387),	-- Pauldrons of the Unknown Beyond
					i(187368),	-- Xyraxz's Controlling Rod
				},
			}),
			n(179802, {	-- Yarxhov the Pillager
				["description"] = "Requires someone with Tier 3 Archivist's Codex reputation to repair the teleportation pad.\n\nOnce repaired, there is a zonewide announcement: |cFFff8040[Name] has repaired the ancient teleporter to the Chamber of Knowledge!|r",
				["coord"] = { 39.3, 52.4, KORTHIA },
				["questID"] = 64257,
				["cost"] = { { "i", 186718, 1 } },	-- Teleporter Repair Kit
				["groups"] = {
					i(187103),	-- Everliving Statuette
					i(187366),	-- Fallen Vault Guardian's Spire
					i(187391),	-- Yarxhov's Rib-Cage
				},
			}),
			n(177336, {	-- Zelnithop
				["description"] = "At the bottom of the cave.",
				["coord"] = { 30.2, 54.9, KORTHIA },
				["questID"] = 64442,
				["groups"] = {
					i(186542),	-- Korthian Specimen (PET!)
					i(187371),	-- Velvet Gromit Handwraps
				},
			}),
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {
	m(SHADOWLANDS, {
		m(KORTHIA, {
			n(RARES, {
				q(64572),	-- i think this is a daily lockout for receiving a Soultwining Crescent from a rare (also triggers on treasures)
				q(64699, name(HEADERS.Item, 187327)),	-- popped when looting 48-research item Encrypted Korthian Journal from Fleshwing
				q(64703),	-- popped when looting 48-research item Half-Completed Runeforge Pattern from Xyraxz
			}),
		}),
	}),
})));
