---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_5 } }, {
	m(STORMSONG_VALLEY, {
		n(FACTIONS, {
			header(HEADERS.Faction, FACTION_HONEYBACK_HIVE, {	-- Honeyback Hive
				["races"] = ALLIANCE_ONLY,
				["icon"] = 3066348,
				-- Possible to use HQT's to track unlock
				["description"] = "How to unlock the faction:\n\nStep1: Own either a Seabreeze Bumblebee or Bumbles.\nStep2: Go to Barry in Stormsong Valley at 69.64 with your Bee summoned.\nStep3: Follow the green clouds to 62.26 & watch the interaction between Barry and the Honeyback Hivemother.\nStep4: Loot the Thin Jelly just outside the Cave at 63.28, try to give it to the Hivemother & then talk to Barry again.\nStep5: Follow Barry inside, talk to him for the million'th time & then feed your first Jelly to the Nascent Harvester, which is in the honey pool in front of him. This gives you your first 20 reputation, allowing you to now see Jelly Deposits and earn reputation.\n\nAll Coordinates can be placed via rightclicking the Honeyback Hive Header.",
				["coords"] = {
					{ 69.2, 64.2, STORMSONG_VALLEY },	-- Barry
					{ 62.93, 26.58, STORMSONG_VALLEY },	-- The Hive
					{ 63.2, 28.5, STORMSONG_VALLEY },	-- First Jelly
				},
				["groups"] = {
					n(FACTIONS, {
						faction(FACTION_HONEYBACK_HARVESTER, {	-- Honeyback Harvester
							["races"] = ALLIANCE_ONLY,
						}),
						faction(FACTION_HONEYBACK_HIVE, {	-- Honeyback Hive
							["races"] = ALLIANCE_ONLY,
							["icon"] = 3066348,
						}),
					}),
					n(QUESTS, {
						q(56473, {	-- Envenomed Spider Fang
							["provider"] = { "i", 169656 },	-- Envenomed Spider Fang
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155172,	-- Trapdoor Bee Hunter
							["groups"] = {
								i(172145),	-- Unremarkable Spider-Fang
							},
						}),
						q(56474, {	-- Hivekiller Stinger
							["provider"] = { "i", 169655 },	-- Hivekiller Stinger
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155171,	-- The Hivekiller
							["groups"] = {
								i(172144),	-- Glittering Stinger
							},
						}),
						q(56092, {	-- Hivethief's Jelly Stash
							["provider"] = { "i", 169657 },	-- Hivethief's Jelly Stash
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155055,	-- Gurg the Hivethief
							["groups"] = {
								i(172147),	-- Nugget Honey
							},
						}),
						q(56108, {	-- Leaving the Hive
							["provider"] = { "n", 155745 },	-- Honeyback Harvester
							["coord"] = { 62.5, 26.3, STORMSONG_VALLEY },
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(170069, {	-- Honeyback Harvester (MOUNT!)
									["races"] = ALLIANCE_ONLY,
								}),
							},
						}),
						q(56144, {	-- Old Nasha's Paw
							["provider"] = { "i", 169659 },	-- Old Nasha's Paw
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155176,	-- Old Nasha
							["groups"] = {
								i(172146),	-- Glazed Bear Meat
							},
						}),
						q(56475, {	-- Spiral Yeti Horn
							["provider"] = { "i", 169654 },	-- Spiral Yeti Horn
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155059,	-- Yorag the Jelly Feaster
							["groups"] = {
								i(172143),	-- Perforated Spiral Horn
							},
						}),
						q(57670, {	-- Unbeelievable Quality
							["providers"] = {
								{ "i", 173533 },	-- Collected Tidebloom Honey
								{ "i", 172383 },	-- Collected Tidebloom Honey (changes to this version after you get your mount)
							},
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
						}),
						q(56091, {	-- Usurper's Scent Gland
							["provider"] = { "i", 169658 },	-- Usurper's Scent Gland
							["races"] = ALLIANCE_ONLY,
							["isWeekly"] = true,
							-- ["cr"] = 155173,	-- Honeyback Usurper
							["groups"] = {
								i(172142),	-- Pilfered Beeswax
							},
						}),
					}),
					o(327230, {	-- Jelly Deposit
						["coords"] = {
							{ 33.12, 71.66, STORMSONG_VALLEY },
							{ 31.71, 74.54, STORMSONG_VALLEY },
							{ 28.22, 74.87, STORMSONG_VALLEY },
							{ 63.24, 28.47, STORMSONG_VALLEY },
							{ 61.40, 22.33, STORMSONG_VALLEY },
							{ 58.85, 30.83, STORMSONG_VALLEY },
							{ 55.10, 31.26, STORMSONG_VALLEY },
							{ 54.03, 31.28, STORMSONG_VALLEY },
							{ 55.78, 27.94, STORMSONG_VALLEY },
							{ 56.06, 37.13, STORMSONG_VALLEY },
							{ 53.30, 43.19, STORMSONG_VALLEY },
							{ 49.85, 36.74, STORMSONG_VALLEY },
							{ 56.28, 28.95, STORMSONG_VALLEY },
							{ 58.58, 28.41, STORMSONG_VALLEY },
							{ 63.27, 22.24, STORMSONG_VALLEY },
							{ 61.45, 55.92, STORMSONG_VALLEY },
							{ 55.23, 41.02, STORMSONG_VALLEY },
							{ 56.63, 20.36, STORMSONG_VALLEY },
							{ 56.40, 18.77, STORMSONG_VALLEY },
							{ 47.39, 25.42, STORMSONG_VALLEY },
							{ 37.33, 37.29, STORMSONG_VALLEY },
							{ 35.71, 31.35, STORMSONG_VALLEY },
							{ 46.55, 41.98, STORMSONG_VALLEY },
							{ 66.93, 63.51, STORMSONG_VALLEY },
							{ 64.24, 52.43, STORMSONG_VALLEY },
							{ 62.08, 46.11, STORMSONG_VALLEY },
							{ 58.27, 21.38, STORMSONG_VALLEY },
							{ 56.14, 26.06, STORMSONG_VALLEY },
							{ 52.53, 39.13, STORMSONG_VALLEY },
							{ 63.13, 51.40, STORMSONG_VALLEY },
							{ 58.30, 54.29, STORMSONG_VALLEY },
							{ 54.72, 48.45, STORMSONG_VALLEY },
							{ 56.21, 58.78, STORMSONG_VALLEY },
							{ 66.43, 70.37, STORMSONG_VALLEY },
							{ 71.32, 67.24, STORMSONG_VALLEY },
							{ 66.00, 58.21, STORMSONG_VALLEY },
							{ 68.25, 55.41, STORMSONG_VALLEY },
							{ 61.47, 51.92, STORMSONG_VALLEY },
							{ 64.01, 37.28, STORMSONG_VALLEY },
							{ 62.50, 22.71, STORMSONG_VALLEY },
							{ 53.91, 27.73, STORMSONG_VALLEY },
							{ 52.37, 27.08, STORMSONG_VALLEY },
							{ 49.26, 35.59, STORMSONG_VALLEY },
							{ 58.08, 27.45, STORMSONG_VALLEY },
							{ 63.60, 25.67, STORMSONG_VALLEY },
							{ 31.46, 60.14, STORMSONG_VALLEY },
							{ 60.52, 29.15, STORMSONG_VALLEY },
							{ 63.60, 28.23, STORMSONG_VALLEY },
							{ 57.58, 30.01, STORMSONG_VALLEY },
							{ 55.24, 38.46, STORMSONG_VALLEY },
							{ 53.34, 43.12, STORMSONG_VALLEY },
							{ 44.63, 49.27, STORMSONG_VALLEY },
							{ 44.21, 50.94, STORMSONG_VALLEY },
							{ 40.39, 47.35, STORMSONG_VALLEY },
							{ 36.77, 47.69, STORMSONG_VALLEY },
							{ 35.55, 52.37, STORMSONG_VALLEY },
							{ 35.11, 64.45, STORMSONG_VALLEY },
							{ 33.24, 67.87, STORMSONG_VALLEY },
							{ 33.39, 71.99, STORMSONG_VALLEY },
							{ 29.82, 76.19, STORMSONG_VALLEY },
							{ 25.51, 67.16, STORMSONG_VALLEY },
							{ 56.25, 30.51, STORMSONG_VALLEY },
							{ 53.04, 36.02, STORMSONG_VALLEY },
							{ 40.92, 42.23, STORMSONG_VALLEY },
							{ 38.81, 63.51, STORMSONG_VALLEY },
							{ 45.88, 64.48, STORMSONG_VALLEY },
							{ 72.13, 74.18, STORMSONG_VALLEY },
							{ 67.60, 56.57, STORMSONG_VALLEY },
							{ 63.61, 28.18, STORMSONG_VALLEY },
							{ 63.86, 19.65, STORMSONG_VALLEY },
							{ 46.40, 47.61, STORMSONG_VALLEY },
							{ 41.10, 46.32, STORMSONG_VALLEY },
							{ 31.31, 31.67, STORMSONG_VALLEY },
							{ 35.75, 29.42, STORMSONG_VALLEY },
							{ 35.80, 36.91, STORMSONG_VALLEY },
							{ 37.97, 51.24, STORMSONG_VALLEY },
							{ 33.60, 53.17, STORMSONG_VALLEY },
							{ 27.64, 64.34, STORMSONG_VALLEY },
							{ 28.01, 69.34, STORMSONG_VALLEY },
							{ 27.50, 72.97, STORMSONG_VALLEY },
							{ 62.76, 75.16, STORMSONG_VALLEY },
							{ 71.19, 71.87, STORMSONG_VALLEY },
							{ 70.08, 66.58, STORMSONG_VALLEY },
							{ 67.31, 53.90, STORMSONG_VALLEY },
							{ 66.97, 40.71, STORMSONG_VALLEY },
							{ 55.07, 27.64, STORMSONG_VALLEY },
							{ 44.78, 39.16, STORMSONG_VALLEY },
							{ 42.56, 51.13, STORMSONG_VALLEY },
							{ 32.06, 59.61, STORMSONG_VALLEY },
							{ 30.92, 63.05, STORMSONG_VALLEY },
							{ 49.12, 75.33, STORMSONG_VALLEY },
							{ 52.33, 75.59, STORMSONG_VALLEY },
							{ 72.16, 75.29, STORMSONG_VALLEY },
							{ 56.02, 75.62, STORMSONG_VALLEY },
							{ 56.30, 76.15, STORMSONG_VALLEY },
							{ 64.06, 75.22, STORMSONG_VALLEY },
							{ 59.13, 56.22, STORMSONG_VALLEY },
							{ 47.02, 55.96, STORMSONG_VALLEY },
							{ 48.95, 54.81, STORMSONG_VALLEY },
							{ 49.11, 63.11, STORMSONG_VALLEY },
							{ 44.00, 65.35, STORMSONG_VALLEY },
							{ 37.08, 62.78, STORMSONG_VALLEY },
							{ 36.41, 59.79, STORMSONG_VALLEY },
							{ 26.42, 65.47, STORMSONG_VALLEY },
							{ 26.97, 71.60, STORMSONG_VALLEY },
							{ 26.25, 77.32, STORMSONG_VALLEY },
							{ 53.57, 73.47, STORMSONG_VALLEY },
							{ 52.20, 74.09, STORMSONG_VALLEY },
							{ 63.46, 73.66, STORMSONG_VALLEY },
							{ 68.10, 68.29, STORMSONG_VALLEY },
							{ 61.18, 29.41, STORMSONG_VALLEY },
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(169152),	-- Empty Beehive
							i(168822),	-- Thin Jelly
						},
					}),
					o(327516, {	-- Jelly Deposit
						["description"] = "This is the initial Jelly Deposit you encounter when unlocking the reputation.",
						["coord"] = { 63.2, 28.5, STORMSONG_VALLEY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(169106),	-- Thin Jelly
						},
					}),
					n(RARES, sharedData({
						["sharedDescription"] = "This Rare has a chance to spawn during the Honeyback Harvester Event on either Wave 4, 9, 14, 19 and so on.",
						["coords"] = {
							{ 25.6, 73.2, STORMSONG_VALLEY },
							{ 33.4, 32.8, STORMSONG_VALLEY },
							{ 40.9, 62.1, STORMSONG_VALLEY },
							{ 47.3, 32.1, STORMSONG_VALLEY },
							{ 57.1, 51.2, STORMSONG_VALLEY },
							{ 61.8, 30.9, STORMSONG_VALLEY },
							{ 63.0, 21.2, STORMSONG_VALLEY },
							{ 66.3, 69.9, STORMSONG_VALLEY },
							{ 72.3, 52.2, STORMSONG_VALLEY },
						},
						["crs"] = {
							154944,	-- Lush Flower Bed (vignette)
						},
					}, {
						n(155055, {	-- Gurg the Hivethief
							["groups"] = {
								i(169657),	-- Hivethief's Jelly Stash
							},
						}),
						n(155173, {	-- Honeyback Usurper
							["groups"] = {
								i(169658),	-- Usurper's Scent Gland
							},
						}),
						n(155176, {	-- Old Nasha
							["groups"] = {
								i(169659),	-- Old Nasha's Paw
							},
						}),
						n(155171, {	-- The Hivekiller
							["groups"] = {
								i(169655),	-- Hivekiller Stinger
							},
						}),
						n(155172, {	-- Trapdoor Bee Hunter
							["groups"] = {
								i(169656),	-- Envenomed Spider Fang
							},
						}),
						n(155059, {	-- Yorag the Jelly Feaster
							["groups"] = {
								i(169654),	-- Spiral Yeti Horn
							},
						}),
					})),
					n(VENDORS, {
						n(153393, {	-- Barry
							["coord"] = { 69.2, 64.2, STORMSONG_VALLEY },
							["groups"] = {
								i(169109),	-- Beeholder's Goggles
								i(169141),	-- Butterfly Net
								i(169395),	-- Summit Zephyr
							},
						}),
						n(155176, {	-- Honeyback Hivemother
							i(169862, {	-- Alluring Bloom
								["minReputation"] = { FACTION_HONEYBACK_HIVE, FRIENDLY },	-- Honeyback Hive, Friendly
								["cost"] = { { "i", 168822, 35 } },	-- Thin Jelly x35
							}),
							i(172383, {	-- Collected Tidebloom Honey (QS!)
								["cost"] = { { "i", 168828, 35 } },	-- Royal Jelly x35
							}),
							i(173533, {	-- Collected Tidebloom Honey (QS!)
								["cost"] = { { "i", 168828, 35 } },	-- Royal Jelly x35
							}),
						}),
					}),
				},
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } }, {
	m(KUL_TIRAS, {
		m(STORMSONG_VALLEY, {
			n(FACTIONS, {
				header(HEADERS.Faction, FACTION_HONEYBACK_HIVE, {
					n(QUESTS, {
						q(55906),	-- triggers when pulling out Seabreeze Bumblebee or Bumbles next to Barry at 69.1, 64.2 in Stormsong Valley
						q(55904),	-- triggers when arriving at the hive at 62.9, 26.5 in Stormsong Valley
						q(56104),	-- triggers when feeding Thin Jelly to Honeyback Hive Mother
						q(56105),	-- triggers after Barry dances with Honeyback Hive Mother and you can enter the cave
						q(57704),	-- triggered shortly after 56105 when I entered the cave
						q(56735),	-- triggers after going through Barry's initial dialogue after entering the cave
						q(57528),	-- triggers after feeding first Thin Jelly to Nascent Harvester
						q(57707),	-- triggered shortly after 57528
						q(56413),	-- seemed to trigger when Lush Flower Bed summoned Honeyback Usurper (on a kill when i had not interacted with the bee to start the event) -- rare/daily event?  also popped again specifically when i interacted with the bee (npcID 155069) to summon it at 57.1, 51.2. so maybe just "you're in the area when the event starts," or something?  ETA: ALSO TRIGGERS WHILE ENGAGED WITH HONEY SMASHER. wtf is this quest!!!!!
						q(57726),	-- triggers on Honey Smasher kill together with 57674 so putting it here
						-- ( 57.1, 51.2 )	-- looting honey triggered 56170, 56414, 57702, 57703
						q(56170),	-- \
						q(56414),	-- 	\	all 4 triggered at the same time after i looted the jelly at the end of the Lush Flower Bed event. appears to be repeatable
						q(57702),	-- 	/
						q(57703),	-- /
						q(56113),	-- triggered after Honeyback Harvester event that got to round 23 or 24
						q(57700),	-- triggered after Honeyback Harvester event that got to round 23 or 24
						q(56114),	-- triggered after Honeyback Harvester event that completed round 29
						q(57699),	-- triggered after Honeyback Harvester event that completed round 29
						q(56101),	-- triggered after Honeyback Harvester event that completed round 40
						q(57698),	-- triggered after Honeyback Harvester event that completed round 40
						q(56171),	-- not sure -- i had just done a Honeyback Harvester event and Gurg the Hivethief spawned but ran away because there wasn't enough DPS to kill him. looted the jelly after the event, then ran to turn in since i was closeby. fed the bee ~13 - 14 Thin Jelly (brought me to 1700 Friendly) and ran out of the cave and saw this and 57701 pop in chat.
						q(57701),	-- same as above
						q(56107),	-- when nascent bee changed into Juvenile Harvester
						q(56879),	-- when Juvenile Harvester changed into Honeyback Harvester (max bee friendship)
						q(56169),	-- On finishing Harvester event
					}),
				}),
			}),
		}),
	}),
})));
