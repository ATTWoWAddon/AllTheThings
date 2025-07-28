---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
--	IMPORTANT: if you add coordinates to any part of this file, make sure you verify them manually!  the coordinates listed on wowhead (as of september 2019) are incorrect and probably based on an older version of the krasarang map.  if you use those coordinates instead of manually confirming them, they'll place you outside of /tar range.
root(ROOTS.Zones, {
	m(PANDARIA, {
		m(KRASARANG_WILDS, {
			["lore"] = "The Krasarang Wilds along Pandaria's southern coast conceal many ancient secrets of a lost dynasty that have drawn the attention of prophecy-seekers among the Alliance and Horde. The Wilds are also home to the vicious, domineering mogu, and a more insidious danger still: the Sha of Despair is believed to have escaped from its bindings in the Temple of the Red Crane, and stifling gloom has begun to blanket the land in its path.",
			["icon"] = 623769,
			["maps"] = {
				419,	-- Ruins of Ogudei, Alliance Excavation
				420,	-- Ruins of Ogudei (the map is weird here, and this ID only shows up when you're headed towards the objective for Ogudei's Lieutenants.  for the rest of this floor, when you hit M it registers you on the incorrect level, and displays the wrong floor on the map)
				421,	-- Ruins of Ogudei, Reliquary Incursion
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6975),	-- Explore Krasarang Wilds
					ach(6535, {	-- Mighty Roamin' Krasaranger (Alliance)
						["races"] = ALLIANCE_ONLY,
					}),
					ach(6536, {	-- Mighty Roamin' Krasaranger (Horde)
						["races"] = HORDE_ONLY,
					}),
				}),
				battlepets({
					pet(716),	-- Amethyst Spiderling (PET!)
					pet(714, {	-- Feverbite Hatchling (PET!)
						["coord"] = { 18.0, 43.8, KRASARANG_WILDS },
					}),
					pet(678),	-- Jungle Grub (PET!)
					pet(718),	-- Luyu Moth (PET!)
					pet(708),	-- Malayan Quillrat (PET!)
					pet(722, {	-- Mei Li Sparkler (PET!)
						["coord"] = { 37.6, 44.0, KRASARANG_WILDS },
					}),
					pet(717),	-- Savory Beetle (PET!)
					pet(711, {	-- Sifang Otter (PET!)
						["coord"] = { 86.4, 10.4, KRASARANG_WILDS },
					}),
					pet(712, {	-- Sifang Otter Pup (PET!)
						["coord"] = { 85.8, 16.6, KRASARANG_WILDS },
					}),
					pet(723),	-- Spiny Terrapin (PET!)
				}),
				explorationHeader({
					visit_exploration(6160,{coord={31.9,70.6,KRASARANG_WILDS}}),	-- Angkhal Pavilion
					visit_exploration(6430,{coord={62.3,39.7,KRASARANG_WILDS}}),	-- Anglers Expedition
					exploration(6106),	-- Anglers Wharf
					exploration(6155),	-- Cradle of Chi-Ji
					exploration(6049),	-- Crane Wing Refuge
					exploration(6013),	-- Dawnchaser Retreat
					exploration(6010),	-- Dojani River
					visit_exploration(6162,{coord={34.6,82.7,KRASARANG_WILDS}}),	-- Dome Balrissa
					exploration(6017),	-- Fallsong Village
					visit_exploration(6612,{coord={14.2,59.4,KRASARANG_WILDS}}),	-- Horde Landing Site
					visit_exploration(6147,{coord={46.2,63.9,KRASARANG_WILDS}}),	-- Kea Krak
					exploration(6369),	-- Krasarang Cove
					visit_exploration(6018,{coord={35.9,38.8,KRASARANG_WILDS}}),	-- Krasari Falls
					exploration(6146),	-- Marista
					visit_exploration(6113,{coord={64.9,48.5,KRASARANG_WILDS}}),	-- Narsong Spires
					visit_exploration(6108,{coord={71.6,40.8,KRASARANG_WILDS}}),	-- Narsong Trench
					exploration(6135),	-- Nayeli Lagoon
					visit_exploration(6161,{coord={36.8,75.9,KRASARANG_WILDS}}),	-- Pedestal of Hope
					visit_exploration(6011,{coord={52.5,33.0,KRASARANG_WILDS}}),	-- Pools of Youth
					exploration(6008),	-- Ruins of Dojan
					exploration(6015),	-- Ruins of Korja
					visit_exploration(6158,{coord={60.9,43.5,KRASARANG_WILDS}}),	-- Sandy Shallows
					exploration(6016),	-- Sentinel Basecamp
					exploration(6058),	-- Shattered Convoy
					exploration(6048),	-- Temple of the Red Crane
					exploration(6004),	-- The Deepwild
					exploration(6019),	-- The Forbidden Jungle
					exploration(6009, {	-- The Incursion
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Zhu's Watch, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(6026, {	-- The Krasari Ruins
						-- CRIEVE NOTE: I was initially able to collect this, but if you collect Zhu's Watch, it gets masked behind it.
						["collectible"] = false,
					}),
					exploration(6371, {	-- The Southern Isles
						-- CRIEVE NOTE: I was not able to collect this at all. Might be a phasing issue.
						["collectible"] = false,
					}),
					exploration(6020),	-- The Southern Wall
					exploration(6007),	-- Thunder Cleft
					exploration(6370),	-- Turtle Beach
					exploration(6148),	-- Unga Ingoo
					exploration(6005),	-- Zhu Province
					exploration(6000),	-- Zhu's Watch
				}),
				n(FACTIONS, {
					applyclassicphase(MOP_PHASE_LANDFALL, faction(FACTION_DOMINANCE_OFFENSIVE, {	-- Dominance Offensive
						["timeline"] = { ADDED_5_1_0 },
						["races"] = HORDE_ONLY,
						["icon"] = 464078,
						["groups"] = {
							n(ACHIEVEMENTS, {
								ach(8206, {		-- Dominance Offensive
									["races"] = HORDE_ONLY,
								}),
								h(ach(7929, {	-- Dominance Offensive Campaign
									crit(22438),	-- Domination Point
									crit(22439),	-- The Voice of the Gods
									crit(22440),	-- The Horde Is Family
									crit(22441),	-- Blood For Blood (Ancient Guardians)
									crit(22442),	-- Blood For Blood (Bloodlines)
									crit(22443),	-- Blood For Blood (The Korune)
									crit(22448),	-- The Korune
									crit(22449),	-- Pride
									crit(22450),	-- Rise of the Blood Elves
									crit(22451),	-- Secrets of the Past
									crit(22452),	-- The Divine Bell
									crit(22453),	-- The Darnassus Operation
									crit(22539),	-- The Purge of Dalaran
									crit(22454),	-- Breath of Darkest Shadow
								})),
								ach(7932, {	-- I'm In Your Base, Killing Your Dudes
									crit(22456, {	-- Champion of Arms slain
										["coord"] = { 89.5, 22.7, KRASARANG_WILDS },	-- Dalan Nightbreaker (H)
										["provider"] = { "n", 68318 },	-- Dalan Nightbreaker (H)
									}),
									crit(22458, {	-- Champion of the Shadows slain
										["coord"] = { 89.1, 26.8, KRASARANG_WILDS },	-- Mavis Harms (H)
										["provider"] = { "n", 68317 },	-- Mavis Harms (H)
									}),
									crit(22460, {	-- Champion of the Light slain
										["coord"] = { 92.2, 24.8, KRASARANG_WILDS },	-- Disha Fearwarden (H)
										["provider"] = { "n", 68319 },	-- Disha Fearwarden (H)
									}),
								}),
							}),
							n(RARES, {
								n(68318, {	-- Dalan Nightbreaker
									["questID"] = 34062,
									["isDaily"] = true,
									["races"] = HORDE_ONLY,
									["coord"] = { 89.5, 22.7, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["groups"] = {
										i(92783),	-- Mark of the Hardened Grunt
									},
								}),
								n(68319, {	-- Disha Fearwarden
									["questID"] = 34061,
									["isDaily"] = true,
									["races"] = HORDE_ONLY,
									["coord"] = { 92.2, 24.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["groups"] = {
										i(92787),	-- Horde Insignia of Conquering
									},
								}),
								n(68317, {	-- Mavis Harms
									["questID"] = 34060,
									["isDaily"] = true,
									["coord"] = { 89.1, 26.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92785),	-- Kor'kron Book of Hurting
									},
								}),
							}),
							n(QUESTS, {
								q(32169, {	-- A Colossal Victory
									["qg"] = 67447,	-- Jorn Skyseer (summons the mob)
									["sourceQuests"] = { 32183 },	-- Beastmaster's Quarry: The Crab
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67439 },	-- Colossal Viseclaw (killing the mob procs the quest)
								}),
								q(32352, {	-- A Gathering Storm
									["qg"] = 68287,	-- Baine Bloodhoof
									["sourceQuests"] = { 32351 },	-- Echoes of Thunder
									["coord"] = { 68.3, 44.9, 392 },
									["races"] = HORDE_ONLY,
								}),
								q(32413, {	-- A Return to Krasarang
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuest"] = 32412,	-- One Last Grasp
									["coord"] = { 50.4, 48.4, 502 },
									["description"] = "To be able to pick up this quest, head to Domination Point in Krasarang Wilds and take the flightpath back to Dalaran.",
									["timeline"] = { ADDED_5_1_0 },
									["maps"] = { 501 },	-- Dalaran (Scenario)
									["races"] = HORDE_ONLY,
									["isBreadcrumb"] = true,
								}),
								q(32406, {	-- A Tactical Assault
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32405 },	-- Hand of the Silver Covenant
									["coord"] = { 64.0, 47.9, 502 },
									["races"] = HORDE_ONLY,
								}),
								q(32127, {	-- All Dead, All Dead
									["qg"] = 67767,	-- Brolic
									["sourceQuests"] = {
										32235,	-- Flash! Aaaaaahhhh!
										32126,	-- Tear it Up
									},
									["coord"] = { 9.36, 50.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32191, {	-- Ancient Guardians
									["qg"] = 67603,	-- Fanlyr Silverthorn
									["sourceQuests"] = { 32190 },	-- To Mogujia
									["coord"] = { 57.1, 78.6, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(32167, {	-- Ancient's Fall
									["qg"] = 67447,	-- Jorn Skyseer (summons the mob for you to fight)
									["sourceQuests"] = { 32181 },	-- Beastmaster's Quarry: The Crane
									["coord"] = { 11.7, 60.8, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67436 },	-- Ancient Bloodcrown Crane (killing the mob procs the quest)
								}),
								q(32128, {	-- Another One Bites the Dust
									["qg"] = 67880,	-- Blood Guard Gro'tash
									["sourceQuests"] = {
										32235,	-- Flash! Aaaaaahhhh!
										32126,	-- Tear it Up
									},
									["coord"] = { 9.02, 51.2, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32163, {	-- Beastmaster's Hunt: The Crab
									["provider"] = { "i", 91822 },	-- Sturdy Crab Crate
									["coord"] = { 9.68, 50.9, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32161, {	-- Beastmaster's Hunt: The Crane
									["provider"] = { "i", 91819 },	-- Sturdy Crane Snare
									["coord"] = { 9.67, 50.9, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32162, {	-- Beastmaster's Hunt: The Tiger
									["provider"] = { "i", 91821 },	-- Sturdy Tiger Trap
									["coord"] = { 9.70, 51.0, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32183, {	-- Beastmaster's Quarry: The Crab
									["qg"] = 67508,	-- Colossal Viseclaw
									["sourceQuests"] = { 32163 },	-- Beastmaster's Hunt: The Crab
									["coord"] = { 58.7, 38.7, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32181, {	-- Beastmaster's Quarry: The Crane
									["qg"] = 67503,	-- Ancient Bloodcrown Crane
									["sourceQuests"] = { 32161 },	-- Beastmaster's Hunt: The Crane
									["coord"] = { 40.3, 60.0, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32182, {	-- Beastmaster's Quarry: The Tiger
									["qg"] = 67498,	-- Krasari Elder
									["sourceQuests"] = { 32162 },	-- Beastmaster's Hunt: The Tiger
									["coord"] = { 13.0, 37.7, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32214, {	-- Bilgewater Infiltrators
									["qg"] = 67608,	-- Rivett Clutchpop
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 12.0, 53.7, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32192, {	-- Bloodlines
									["qg"] = 67581,	-- Lor'themar Theron
									["sourceQuests"] = { 32190 },	-- To Mogujia
									["coord"] = { 57.1, 78.9, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(32399, {	-- Breath of Darkest Shadow (H)
									["qg"] = 67844,	-- Malkorok
									["sourceQuests"] = { 32398 },	-- The Bell Speaks
									["coord"] = { 55.9, 33.9, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(93386),	-- Grand Wyvern (MOUNT!)
									},
								}),
								q(32236, {	-- Bug Off!
									["qg"] = 67554,	-- Bixy Buzzsaw
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 22.2, 60.3, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32242, {	-- Buried Secrets
									["qg"] = 67840,	-- Garrosh Hellscream
									["sourceQuests"] = { 32256 },	-- Rise Of An Empire
									["coord"] = { 32.1, 84.9, 392 },
									["races"] = HORDE_ONLY,
								}),
								q(32378, {	-- Clearing a Path
									["qg"] = 68370,	-- Lor'themar Theron
									["sourceQuests"] = { 32376 },	-- To the Valley!
									["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(32251, {	-- Dagger in the Dark
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["maps"] = { 488, 489 },	-- Dagger in the Dark
									["races"] = HORDE_ONLY,
								}),
								q(32372, {	-- De-Subjugation
									["qg"] = 68025,	-- Thrall
									["sourceQuests"] = { 32320 },	-- The Horde is Family
									["coord"] = { 38.2, 46.4, ECHO_ISLES },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92510),	-- Vol'jin's Hearthstone (QI!)
									},
								}),
								q(32123, {	-- Death on Two Legs
									["qg"] = 67618,	-- Shokia
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 9.23, 53.1, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32108, {	-- Domination Point
									["qg"] = 68072,	-- Kor'kron Bodyguard
									["sourceQuests"] = { 32250 },	-- The Might of the Warchief
									["races"] = HORDE_ONLY,
								}),
								q(32351, {	-- Echoes of Thunder
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32384 },	-- Trapping the Leader
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+10750 },
									["races"] = HORDE_ONLY,
								}),
								q(32168, {	-- End of an Elder
									["qg"] = 67447,	-- Jorn Skyseer (summons the mob)
									["sourceQuests"] = { 32182 },	-- Beastmaster's Quarry: The Tiger
									["coord"] = { 11.7, 60.8, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67438 },	-- Krasari Elder (killing the mob procs the quest)
								}),
								q(32319, {	-- Find Thrall!
									["qg"] = 68023,	-- Vol'jin
									["sourceQuests"] = { 32318 },	-- Regeneration Takes Time
									["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92510),	-- Vol'jin's Hearthstone (QI!)
									},
								}),
								q(32235, {	-- Flash! Aaaaaahhhh!
									["qg"] = 67880,	-- Blood Guard Gro'tash
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 9.05, 51.2, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										i(92019),	-- The Bilgewater Molotov (QI!)
									},
								}),
								q(32329, {	-- Get My Results!
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32352 },	-- A Gathering Storm
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+2700 },
									["races"] = HORDE_ONLY,
								}),
								q(32130, {	-- Good Luck, Have Fun
									["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 79.8, 30.1, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32405, {	-- Hand of the Silver Covenant
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32404 },	-- Violence in the Arena
									["coord"] = { 54.3, 28.3, 502 },
									["races"] = HORDE_ONLY,
								}),
								q(32135, {	-- Hero Killer
									["qg"] = 67628,	-- Shademaster Kiryn
									["sourceQuests"] = { 32450 },	-- The Time is Now!
									["coord"] = { 79.7, 30.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32326, {	-- Insertion
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32392 },	-- The Divine Bell
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+14540 },	-- possibly 14530
									["races"] = HORDE_ONLY,
								}),
								q(32344, {	-- It Is A Mystery
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32403, {	-- It Starts in the Sewers
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32402 },	-- The Situation In Dalaran
									["coord"] = { 31.4, 50.4, 502 },
									["races"] = HORDE_ONLY,
								}),
								q(32348, {	-- Kick 'em While They're Down
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32199, {	-- Krasarang Steampot
									["qg"] = 67562,	-- Duke
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32410, {	-- Krasus' Landing
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32406 },	-- A Tactical Assault
									["coord"] = { 50.9, 48.0, 501 },
									["races"] = HORDE_ONLY,
								}),
								q(32120, {	-- Legacy of Ogudei
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32379, {	-- Legacy of the Korune
									["qg"] = 68370,	-- Lor'themar Theron
									["sourceQuests"] = { 32376 },	-- To the Valley!
									["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92801),	-- Korune Orders (QI!)
										i(92802),	-- Legacy of the Korune (QI!)
										i(92803),	-- Sealed Korune Artifact (QI!)
									},
								}),
								q(32368, {	-- Memory Wine
									["qg"] = 68287,	-- Baine Bloodhoof
									["sourceQuests"] = { 32448 },	-- Ties with the Past
									["coord"] = { 60.3, 55.2, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92756),	-- Memory Wine (QI!)
									},
								}),
								q(32197, {	-- Mystery Meatloaf
									["qg"] = 67562,	-- Duke
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32343, {	-- Ogudei's Lieutenants
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32412, {	-- One Last Grasp
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32411 },	-- The Remaining Sunreavers
									["coord"] = { 50.9, 48.0, 501 },
									["races"] = HORDE_ONLY,
								}),
								q(32141, {	-- Power Metal
									["qg"] = 67537,	-- Daxil "The Gem" Oregrind
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 22.4, 60.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32237, {	-- Precious Resource
									["qg"] = 67553,	-- Bixy Buzzsaw
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 25.3, 58.3, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32318, {	-- Regeneration Takes Time
									["qg"] = 67866,	-- Chen Stormstout
									["sourceQuests"] = { 32284 },	-- Someone You Should See
									["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92499),	-- Sturdy Needle (QI!)
									},
								}),
								q(32256, {	-- Rise Of An Empire
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, FRIENDLY+950 },
									["races"] = HORDE_ONLY,
								}),
								q(32137, {	-- Runnin' On Empty
									["qg"] = 67542,	-- Grizzle Gearslip
									["sourceQuests"] = { 32136 },	-- Work Order: Fuel
									["coord"] = { 25.6, 58.3, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32133, {	-- Sentry Wards
									["qg"] = 67628,	-- Shademaster Kiryn
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 79.8, 30.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32284, {	-- Someone You Should See
									["qg"] = 67865,	-- Messenger Grummle
									["sourceQuests"] = { 32257 },	-- Voice of the Gods
									["coord"] = { 9.62, 51.2, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, FRIENDLY+4900 },
									["races"] = HORDE_ONLY,
								}),
								q(32118, {	-- Taking Advantage
									["qg"] = 67847,	-- Belloc Brightblade
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 80.2, 30.0, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32126, {	-- Tear It Up
									["qg"] = 67767,	-- Brolic
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 9.55, 50.9, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32398, {	-- The Bell Speaks
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = {
										32412,	-- One Last Grasp
										32413,	-- A Return to Krasarang
									},
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, EXALTED },
									["races"] = HORDE_ONLY,
								}),
								q(32327, {	-- The Darnassus Mission
									["qg"] = 68077,	-- Fanlyr Silverthorn
									["sourceQuests"] = { 32326 },	-- Insertion
									["coord"] = { 40.0, 50.4, TELDRASSIL },
									["races"] = HORDE_ONLY,
								}),
								q(32392, {	-- The Divine Bell
									["qg"] = 68337,	-- Ishi
									["sourceQuests"] = { 32391 },	-- The Ruins of Korune
									["coord"] = { 32.9, 26.3, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(32320, {	-- The Horde Is Family
									["qg"] = 68025,	-- Thrall
									["sourceQuests"] = { 32319 },	-- Find Thrall!
									["coords"] = {
										{ 38.4, 46.6, ECHO_ISLES },
										{ 44.6, 66.9, VALLEY_OF_TRIALS },
									},
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92510),	-- Vol'jin's Hearthstone (QI!)
									},
								}),
								q(32244, {	-- The Korune
									["qg"] = 67603,	-- Fanlyr Silverthorn
									["sourceQuests"] = { 32190 },	-- To Mogujia
									["coord"] = { 57.1, 78.6, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92072),	-- Korune Codex (QI!)
									},
								}),
								q(32363, {	-- The Kun-Lai Expedition
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32330 },	-- What's in the Box?
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+6650 },
									["races"] = HORDE_ONLY,
								}),
								q(32250, {	-- The Might of the Warchief
									["qgs"] = {
										67867,	-- Garrosh Hellscream
										68072,	-- Kor'kron Bodyguard
									},
									["sourceQuests"] = { 32249 },	-- Meet the Scout
									["coord"] = { 7.41, 62.7, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
								}),
								q(32391, {	-- The Ruins of Korune
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32368 },	-- Memory Wine
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+10515 },	-- possibly up to 10755?  it didn't show up for me until turning in a quest that took me from 10455 to 11145
									["races"] = HORDE_ONLY,
								}),
								q(32449, {	-- The Ruins of Ogudei
									["qg"] = 67880,	-- Blood Guard Gro'tash
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 9.04, 51.2, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32409, {	-- The Kirin Tor's True Colors
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32406 },	-- A Tactical Assault
									["coord"] = { 50.9, 48.0, 501 },
									["races"] = HORDE_ONLY,
								}),
								q(32411, {	-- The Remaining Sunreavers
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = {
										32410,	-- Krasus' Landing
										32409,	-- The Kirin Tor's True Colors
										32408,	-- The Silver Covenant's Stronghold
									},
									["coord"] = { 50.9, 48.0, 501 },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(93124),	-- Tear of the Sin'dorei (QI!)
									},
								}),
								q(32408, {	-- The Silver Covenant's Stronghold
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32406 },	-- A Tactical Assault
									["coord"] = { 50.9, 48.0, 501 },
									["races"] = HORDE_ONLY,
								}),
								q(32402, {	-- The Situation In Dalaran
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32328 },	-- Victorious Return
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+18500 },
									["races"] = HORDE_ONLY,
								}),
								q(32342, {	-- The Spirit Trap
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32450, {	-- The Time Is Now!
									["qg"] = 67880,	-- Blood Guard Gro'tash
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 9.0, 51.3, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32448, {	-- Ties with the Past
									["qg"] = 68287,	-- Baine Bloodhoof
									["sourceQuests"] = { 32363 },	-- The Kun-Lai Expedition
									["coord"] = { 60.3, 55.2, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(93212),	-- Spirit Essence of Varatus (QI!)
									},
								}),
								q(32190, {	-- To Mogujia
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = { 32372 },	-- De-Subjugation
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+2850 },
									["races"] = HORDE_ONLY,
								}),
								q(32376, {	-- To the Valley!
									["qg"] = 67939,	-- General Nazgrim
									["sourceQuests"] = {
										32191,	-- Ancient Guardians
										32192,	-- Bloodlines
										32244,	-- The Korune
									},
									["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
									["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+6800 },
									["races"] = HORDE_ONLY,
								}),
								q(32384, {	-- Trapping the Leader
									["qg"] = 68370,	-- Lor'themar Theron
									["sourceQuests"] = {
										32378,	-- Clearing a Path
										32379,	-- Legacy of the Korune
									},
									["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(32328, {	-- Victorious Return
									["qg"] = 68077,	-- Fanlyr Silverthorn
									["sourceQuests"] = { 32327 },	-- The Darnassus Mission
									["coord"] = { 40.0, 50.4, TELDRASSIL },
									["races"] = HORDE_ONLY,
								}),
								q(32404, {	-- Violence in the Arena
									["qg"] = 68586,	-- Grand Magister Rommath
									["sourceQuests"] = { 32403 },	-- It Starts in the Sewers
									["coord"] = { 45.1, 54.0, 502 },
									["races"] = HORDE_ONLY,
								}),
								q(32257, {	-- Voice of the Gods
									["qg"] = 67834,	-- Fanlyr Silverthorn
									["sourceQuests"] = { 32242 },	-- Buried Secrets
									["coord"] = { 20.9, 15.7, VALE_OF_ETERNAL_BLOSSOMS },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(92425),	-- Ancient Korune Tablet (QI!)
									},
								}),
								q(32222, {	-- Wanted: Chief Engineer Cogwrench
									["provider"] = { "o", 216322 },	-- Bounty Board
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 11.8, 54.3, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32131, {	-- We Require More Minerals!
									["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 79.8, 30.1, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32345, {	-- We're Not Monsters!
									["qg"] = 68274,	-- Kaelis Sunsoar
									["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
									["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32330, {	-- What's in the Box?
									["qg"] = 16802,	-- Lor'themar Theron
									["sourceQuests"] = { 32329 },	-- Get My Results!
									["coord"] = { 54.0, 20.4, SILVERMOON_CITY },
									["races"] = HORDE_ONLY,
								}),
								q(32136, {	-- Work Order: Fuel
									["qg"] = 67535,	-- Boss-Lady Trixel
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32140, {	-- Work Order: Iron
									["qg"] = 67535,	-- Boss-Lady Trixel
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
								q(32132, {	-- Worker Harassment
									["qg"] = 67628,	-- Shademaster Kiryn
									["sourceQuests"] = { 32108 },	-- Domination Point
									["coord"] = { 79.8, 30.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["isDaily"] = true,
								}),
							}),
							n(VENDORS, {
								n(67751, {	-- Ongrom Black Tooth <Collector of Commissions>
									["coord"] = { 9.71, 51.0, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["groups"] = {
										i(122211, {	-- Music Roll: War March
											["cost"] = { { "i", 91838, 500 }, },	-- 500x Lion's Landing Commission
											["timeline"] = { ADDED_6_1_0 },
										}),
										i(92527, {	-- Rodent Crate
											["description"] = "Using the Rodent Crate will spawn 5-7 Sumprush Rodents in the surrounding area. Any players may engage in battle with these wild pets, not just the user of the item.|r",
											["cost"] = { { "i", 91838, 2000 }, },	-- 2,000x Lion's Landing Commission
											["groups"] = {
												pet(1128),	-- Sumprush Rodent (PET!)
											},
										}),
									},
								}),
								n(69060, {	-- Tuskripper Grukna <Dominance Offensive Quartermaster>
									["coord"] = { 10.8, 53.4, KRASARANG_WILDS },
									["races"] = HORDE_ONLY,
									["groups"] = bubbleDownClassicRep(FACTION_DOMINANCE_OFFENSIVE, {
										{		-- Neutral
											i(93342),	-- Dominator's Arcane Badge
											i(93341),	-- Dominator's Deadeye Badge
											i(93345),	-- Dominator's Durable Badge
											i(93344),	-- Dominator's Knightly Badge
											i(93343),	-- Dominator's Mending Badge
										}, {	-- Friendly
										}, {	-- Honored
											i(93249),	-- Dominator's Band
											i(93251),	-- Dominator's Circle
											i(93250),	-- Dominator's Loop
											i(93252),	-- Dominator's Seal
											i(93248),	-- Dominator's Signet
										}, {	-- Revered
											i(93329),	-- Bambrick's Striking Strap
											i(93271),	-- Beach-Born Sandals
											i(93327),	-- Bloodbinder Links
											i(93266),	-- Boots of the Healing Steam
											i(93330),	-- Chang's Changing Cord
											i(93264),	-- Cragchewer Sollerets
											i(93255),	-- Cutstitcher Medallion
											i(93325),	-- Divide's Greatheart Clasp
											i(93232),	-- Grand Commendation of the Dominance Offensive
											i(93267),	-- Greaves of Manifest Destiny
											i(93263),	-- Groundbreaker Sabatons
											i(93324),	-- Immovable Waistplate
											i(93323),	-- Kwon's Crushing Girdle
											i(93257),	-- Medallion of Mystefying Vapors
											i(93328),	-- Prevenge's Dagger-Carrier
											i(93331),	-- Sash of Surehandedness
											i(93265),	-- Scar Swallower Greatboots
											i(93326),	-- Shigi's Chain of Cheerful Summons
											i(93256),	-- Skullrender Medallion
											i(93270),	-- Slippers of Soothing Balm
											i(93254),	-- Static-Caster's Medallion
											i(93268),	-- Treads of Rejuvenating Mists
											i(93269),	-- Troll-Toe Tabi
											i(93253),	-- Woundripper Medallion
										}, {	-- Exalted
											i(93169, {	-- Grand Armored Wyvern (MOUNT!)
												["cost"] = 20000000,	-- 2,000g
											}),
										},
									}),
								}),
							}),
						},
					})),
					applyclassicphase(MOP_PHASE_LANDFALL, faction(FACTION_OPERATION_SHIELDWALL, {	-- Operation: Shieldwall
						["timeline"] = { ADDED_5_1_0 },
						["races"] = ALLIANCE_ONLY,
						["icon"] = 464076,
						["groups"] = {
							n(ACHIEVEMENTS, {
								ach(7932, {	-- I'm In Your Base, Killing Your Dudes
									crit(22455, {	-- Champion of Arms slain
										["coord"] = { 13.5, 54.8, KRASARANG_WILDS },	-- Kar Warmaker
										["provider"] = { "n", 68321 },	-- Kar Warmaker
									}),
									crit(22457, {	-- Champion of the Shadows slain
										["coord"] = { 12.8, 64.7, KRASARANG_WILDS },	-- Ubunti the Shade
										["provider"] = { "n", 68320 },	-- Ubunti the Shade
									}),
									crit(22459, {	-- Champion of the Light slain
										["coord"] = { 9.68, 54.4, KRASARANG_WILDS },	-- Muerta
										["provider"] = { "n", 68322 },	-- Muerta
									}),
								}),
								ach(8205, {		-- Operation: Shieldwall
									["races"] = ALLIANCE_ONLY,
								}),
								a(ach(7928, {	-- Operation: Shieldwall Campaign [Not entered to Pandaria Outdoor Zones files, these criteria are spread over not only the Pandaria zones but also Classic]
									crit(22424),	-- Lion's Landing
									crit(22425),	-- The Man With a Thousand Faces
									crit(22426),	-- The Voice of the Gods
									crit(22427),	-- Jaina's Hope
									crit(22428),	-- The Korune
									crit(22430),	-- The Korune
									crit(22431),	-- Heart of the Alliance
									crit(22432),	-- Secrets of the Past
									crit(22434),	-- The Divine Bell
									crit(22538),	-- The Purge of Dalaran
									crit(22433),	-- An Ancient Ally
									crit(22436),	-- In Search of Harmony
									crit(22735),	-- In Search of Harmony
									crit(22437),	-- Breath of Darkest Shadow
								})),
							}),
							n(QUESTS, {
								q(32172, {	-- A Colossal Victory
									["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
									["sourceQuests"] = { 32186 },	-- Beastmaster's Quarry: The Crab
									["coord"] = { 88.3, 14.0, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67557 },	-- Colossal Viseclaw (killing the mob procs the quest)
								}),
								q(32143, {	-- A Kind of Magic
									["qg"] = 67976,	-- Tinkmaster Overspark
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.0, 78.8, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32247, {	-- A King Among Men
									["qgs"] = {
										68392,	-- King Varian Wrynn
										68399,	-- 7th Legion Champion
									},
									["sourceQuests"] = { 32246 },	-- Meet the Scout
									["coord"] = { 89.9, 24.5, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32377, {	-- A Kor'kron In Our Midst
									["qg"] = 68375,	-- Agent Connelly
									["sourceQuests"] = { 32370 },	-- The Kun-Lai Expedition
									["coord"] = { 65.1, 60.8, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32248, {	-- A Little Patience
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.5, 32.6, KRASARANG_WILDS },
									["maps"] = { 487 },	-- A Little Patience
									["races"] = ALLIANCE_ONLY,
									["lvl"] = 90,	-- 15
								}),
								q(32170, {	-- Ancient's Fall
									["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
									["sourceQuests"] = { 32184 },	-- Beastmaster's Quarry: The Crane
									["coord"] = { 88.8, 13.6, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67555 },	-- Ancient Bloodcrown Crane (killing the mob procs the quest)
								}),
								q(32452, {	-- And Then There Were Goblins
									["qg"] = 68908,	-- Amber Kearnen
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 94.7, 28.3, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32315, {	-- Anduin's Plea
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = {
										32194,	-- Bad Blood
										32243,	-- The Source of Korune Power
									},
									["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+10750 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32148, {	-- Attack! Move!
									["qg"] = 67631,	-- Marshal Troteman
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32194, {	-- Bad Blood
									["qg"] = 67734,	-- Sarannha Skyglaive
									["sourceQuests"] = { 32193 },	-- To Mogujia
									["coord"] = { 59.9, 75.4, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32166, {	-- Beastmaster's Hunt: The Crab
									["provider"] = { "i", 91856 },	-- Sturdy Crab Crate
									["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32164, {	-- Beastmaster's Hunt: The Crane
									["provider"] = { "i", 91854 },	-- Sturdy Crane Snare
									["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32165, {	-- Beastmaster's Hunt: The Tiger
									["provider"] = { "i", 91855 },	-- Sturdy Tiger Trap
									["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32186, {	-- Beastmaster's Quarry: The Crab
									["qg"] = 67508,	-- Colossal Viseclaw
									["sourceQuests"] = { 32166 },	-- Beastmaster's Hunt: The Crab
									["coord"] = { 58.7, 38.7, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32184, {	-- Beastmaster's Quarry: The Crane
									["qg"] = 67503,	-- Ancient Bloodcrown Crane
									["sourceQuests"] = { 32164 },	-- Beastmaster's Hunt: The Crane
									["coord"] = { 40.3, 60.0, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32185, {	-- Beastmaster's Quarry: The Tiger
									["qg"] = 67498,	-- Krasari Elder
									["sourceQuests"] = { 32165 },	-- Beastmaster's Hunt: The Tiger
									["coord"] = { 12.9, 37.7, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32401, {	-- Breath of Darkest Shadow
									["qg"] = 68939,	-- Anduin Wrynn
									["sourceQuests"] = { 32400 },	-- The Bell Speaks
									["coord"] = { 56.3, 34.2, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32383, {	-- Bugging Out
									["qg"] = 68417,	-- Cousin Goottooth
									["sourceQuests"] = { 32382 },	-- He's In Deep
									["coord"] = { 59.2, 84.3, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32154, {	-- Burn Out!
									["qg"] = 68166,	-- Sully "The Pickle" McLeary
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.3, 77.9, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										i(93187),	-- Unstable Explosive (QI!)
									},
								}),
								q(32420, {	-- Cashing Out
									["qg"] = 68687,	-- Vereesa Windrunner
									["sourceQuests"] = { 32416 },	-- Jaina's Resolution
									["coord"] = { 34.5, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32414, {	-- Darnassus Attacked?
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32394 },	-- The Divine Bell
									["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+8600 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32446, {	-- Dis-Assembly Required
									["qg"] = 68166,	-- Sully "The Pickle" McLeary
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.3, 77.9, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										objective(1, {	-- 0/6 Scrap Metal
											["providers"] = {
												{ "i", 93180 },	-- Re-Configured Remote (QI!)
												{ "i", 93179 },	-- Scrap Metal (QI!)
											},
											["cr"] = 67285,	-- Jungle Shredder
										}),
									},
								}),
								q(32145, {	-- Don't Lose Your Head
									["qg"] = 67528,	-- Sully "The Pickle" McLeary
									["sourceQuests"] = { 32143 },	-- A Kind of Magic
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32171, {	-- End of an Elder
									["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
									["sourceQuests"] = { 32185 },	-- Beastmaster's Quarry: The Tiger
									["coord"] = { 88.3, 14.0, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["crs"] = { 67556 },	-- Krasari Elder (killing the mob procs the quest)
								}),
								q(32347, {	-- Eviction Notice
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32146, {	-- Hammer to Fall
									["qg"] = 67386,	-- Sky Admiral Rogers
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32382, {	-- He's In Deep
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32426 },	-- Stirred, Not Shaken
									["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, FRIENDLY+4900 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32397, {	-- He Won't Even Miss It
									["qg"] = 68417,	-- Cousin Goottooth
									["sourceQuests"] = { 32382 },	-- He's In Deep
									["coord"] = { 59.2, 84.3, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32316, {	-- Heart Of The Alliance
									["qg"] = 67948,	-- Anduin Wrynn
									["sourceQuests"] = { 32315 },	-- Anduin's Plea
									["coord"] = { 66.6, 34.1, 394 },	-- Shrine of Seven Stars
									["races"] = ALLIANCE_ONLY,
								}),
								q(32153, {	-- Hero Killer
									["qg"] = 67631,	-- Marshal Troteman
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32119, {	-- It Is A Mystery
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32156, {	-- It's Only Right
									["qg"] = 67444,	-- Mishka
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.1, 77.9, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										objective(1, {	-- 0/7 Shieldwall Soldier Dog Tag
											["provider"] = { "i", 93009 },	-- Shieldwall Soldier Dog Tag (QI!)
											["cr"] = 68700,	-- Fallen Shieldwall Soldier
										}),
									},
								}),
								q(32416, {	-- Jaina's Resolution
									["qg"] = 68651,	-- Lady Jaina Proudmoore
									["sourceQuests"] = { 32460 },	-- Tracking the Thieves
									["coord"] = { 40.0, 50.4, TELDRASSIL },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32109, {	-- Lion's Landing
									["qg"] = 68399,	-- 7th Legion Champion
									["sourceQuests"] = { 32247 },	-- A King Among Men
									["races"] = ALLIANCE_ONLY,
								}),
								q(32371, {	-- Memory Wine
									["qg"] = 68375,	-- Agent Connelly
									["sourceQuests"] = { 32377 },	-- A Kor'kron in Our Midst
									["coord"] = { 65.1, 60.8, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32122, {	-- Ogudei's Lieutenants
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32346, {	-- Oi Ain't Afraid o' No Ghosts!
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32419, {	-- Nowhere to Hide
									["qg"] = 68687,	-- Vereesa Windrunner
									["sourceQuests"] = { 32416 },	-- Jaina's Resolution
									["coord"] = { 34.5, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32421, {	-- Nowhere to Run
									["qg"] = 68687,	-- Vereesa Windrunner
									["sourceQuests"] = { 32416 },	-- Jaina's Resolution
									["coord"] = { 34.5, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										objective(1, {	-- 0/5 Sunreaver Dragonhawk subdued
											["provider"] = { "i", 93159 },	-- Enchanted Sleeping Dust (QI!)
										}),
									},
								}),
								q(32116, {	-- Priorities, People!
									["qg"] = 67631,	-- Marshal Troteman
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32149, {	-- Resource Gathering
									["qg"] = 67630,	-- Mishka
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 94.5, 28.6, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										objective(1, {	-- 0/12 Lion's Landing Lumber
											["providers"] = {
												{ "i", 91907 },	-- Lion's Landing Lumber (QI!)
												{ "o", 216229 },	-- Hastily Abandoned Lumber
											},
										}),
									},
								}),
								q(32451, {	-- Send A Message
									["qg"] = 68908,	-- Amber Kearnen
									["coord"] = { 89.8, 32.4, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32417, {	-- Sewer Cleaning
									["qg"] = 68687,	-- Vereesa Windrunner
									["sourceQuests"] = { 32416 },	-- Jaina's Resolution
									["coord"] = { 34.5, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32115, {	-- Shackles of the Past
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32152, {	-- Siege Damage
									["qg"] = 67631,	-- Marshal Troteman
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										objective(1, {	-- 0/1 Bilgewater Blasting Cap
											["provider"] = { "i", 92493 },	-- Bilgewater Blasting Cap (QI!)
											["cr"] = 67929,	-- Bilgewater Sapper
										}),
									},
								}),
								q(32426, {	-- Stirred, not Shaken
									["qg"] = 68526,	-- Barkeep Townsley
									["sourceQuests"] = { 32381 },	-- To Catch a Spy
									["coord"] = { 67.4, 47.1, 500 },	-- Bizmo's Brawlpub
									["races"] = ALLIANCE_ONLY,
								}),
								q(32150, {	-- Supply Block
									["qg"] = 67630,	-- Mishka
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 94.5, 28.6, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32400, {	-- The Bell Speaks
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = {
										32336,	-- The Handle
										32338,	-- The Harmonic Ointment
										32337,	-- The Head
									},
									["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, EXALTED },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32380, {	-- The Best Around
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.5, 32.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, FRIENDLY+950 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32394, {	-- The Divine Bell
									["qg"] = 67734,	-- Sarannha Skyglaive
									["sourceQuests"] = { 32393 },	-- The Ruins of Korune
									["coord"] = { 32.8, 26.1, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32362, {	-- The Fate of Dalaran
									["qg"] = 68106,	-- Anduin Wrynn
									["sourceQuests"] = { 32331 },	-- The Kirin Tor
									["coord"] = { 26.3, 39.1, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32332, {	-- The First Riddle: Mercy
									["qg"] = 68003,	-- The Monkey King
									["sourceQuests"] = { 32321 },	-- The Monkey King
									["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32335, {	-- The Greatest Prank
									["qg"] = 68538,	-- The Monkey King
									["sourceQuests"] = {
										32332,	-- The First Riddle: Mercy
										32333,	-- The Second Riddle: Fellowship
										32334,	-- The Third Riddle: Strength
									},
									["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32336, {	-- The Handle
									["qg"] = 68538,	-- The Monkey King
									["sourceQuests"] = { 32335 },	-- The Greatest Prank
									["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
									["races"] = ALLIANCE_ONLY,
									["groups"] = { i(92561) },	-- Mallet Handle (QI!)
								}),
								q(32355, {	-- The Harmonic Mallet
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32423 },	-- What Had To Be Done
									["coord"] = { 94.5, 28.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+14540 },	-- possibly 14530
									["races"] = ALLIANCE_ONLY,
								}),
								q(32338, {	-- The Harmonic Ointment
									["qg"] = 68538,	-- The Monkey King
									["sourceQuests"] = { 32335 },	-- The Greatest Prank
									["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
									["races"] = ALLIANCE_ONLY,
									["groups"] = { i(92562) },	-- Harmonic Ointment (QI!)
								}),
								q(32337, {	-- The Head
									["qg"] = 68538,	-- The Monkey King
									["sourceQuests"] = { 32335 },	-- The Greatest Prank
									["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										o(216421, {	-- Mallet Head
											["coord"] = { 30.7, 92.3, VALE_OF_ETERNAL_BLOSSOMS },
											["groups"] = { i(92560) },	-- Mallet Head (QI!)
										}),
									},
								}),
								q(32331, {	-- The Kirin Tor
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = {
										32383,	-- Bugging Out
										32397,	-- He Won't Even Miss It
									},
									["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+2850 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32370, {	-- The Kun-Lai Expedition
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32316 },	-- Heart Of The Alliance
									["coord"] = { 94.4, 28.5, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+2700 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32321, {	-- The Monkey King
									["qg"] = 68004,	-- Anduin Wrynn
									["sourceQuests"] = { 32355 },	-- The Harmonic Mallet
									["coord"] = { 53.0, 46.4, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32157, {	-- The Only Good Goblin...
									["qg"] = 67386,	-- Sky Admiral Rogers
									["sourceQuests"] = { 32452 },	-- And Then There Were Goblins
									["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32393, {	-- The Ruins of Korune
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32371 },	-- Memory Wine
									["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+6650 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32333, {	-- The Second Riddle: Fellowship
									["qg"] = 68003,	-- The Monkey King
									["sourceQuests"] = { 32321 },	-- The Monkey King
									["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32455, {	-- The Silence
									["qg"] = 68987,	-- Anduin Wrynn
									["sourceQuests"] = { 32401 },	-- Breath of Darkest Shadow
									["coord"] = { 55.9, 31.9, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(93385),	-- Grand Gryphon (MOUNT!)
									},
								}),
								q(32243, {	-- The Source of Korune Power
									["qg"] = 67716,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32193 },	-- To Mogujia
									["coord"] = { 59.8, 76.0, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32121, {	-- The Spirit Trap
									["qg"] = 68275,	-- Hilda Hornswaggle
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32334, {	-- The Third Riddle: Strength
									["qg"] = 68003,	-- The Monkey King
									["sourceQuests"] = { 32321 },	-- The Monkey King
									["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										o(216362, {	-- A Keg of Metal Brew
											i(92557),	-- The Metal Brew (QI!)
										}),
									},
								}),
								q(32381, {	-- To Catch a Spy
									["qg"] = 68526,	-- Barkeep Townsley
									["sourceQuests"] = { 32380 },	-- The Best Around
									["coord"] = { 67.4, 47.1, 500 },	-- Bizmo's Brawlpub
									["races"] = ALLIANCE_ONLY,
								}),
								q(32193, {	-- To Mogujia
									["qg"] = 67940,	-- Admiral Taylor
									["sourceQuests"] = { 32331 },	-- The Kirin Tor
									["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
									["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+6800 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32151, {	-- Tower Defense
									["qg"] = 67631,	-- Marshal Troteman
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32460, {	-- Tracking the Thieves
									["qg"] = 68651,	-- Lady Jaina Proudmoore
									["sourceQuests"] = { 32414 },	-- Darnassus Attacked?
									["coord"] = { 39.0, 32.8, DARNASSUS },
									["description"] = "If you leave before completing this quest, you may need to abandon it and pick it near the east gate of Darnassus rather than returning to where you originally picked it up.",
									["races"] = ALLIANCE_ONLY,
								}),
								q(32158, {	-- Two Step Program
									["qg"] = 68182,	-- Seraphine of the Winter
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.1, 77.9, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32144, {	-- Under Pressure
									["qg"] = 67444,	-- Mishka
									["sourceQuests"] = { 32109 },	-- Lion's Landing
									["coord"] = { 16.0, 77.9, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
									["groups"] = {
										objective(1, {	-- 0/8 Horde Supply Crates Destroyed
											["provider"] = { "o", 216150 },	-- Horde Supply Crate
										}),
									},
								}),
								q(32418, {	-- Unfair Trade
									["qg"] = 68687,	-- Vereesa Windrunner
									["sourceQuests"] = { 32416 },	-- Jaina's Resolution
									["coord"] = { 34.5, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
								q(32142, {	-- We Will Rock You
									["qg"] = 67386,	-- Sky Admiral Rogers
									["sourceQuests"] = { 32451 },	-- Send a Message
									["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["isDaily"] = true,
								}),
								q(32423, {	-- What Had To Be Done
									["qg"] = 68687,	-- Vareesa Windrunner
									["sourceQuests"] = {
										32420,	-- Cashing Out
										32419,	-- Nowhere to Hide
										32421,	-- Nowhere to Run
										32417,	-- Sewer Cleaning
										32418,	-- Unfair Trade
									},
									["coord"] = { 34.6, 48.7, 501 },
									["races"] = ALLIANCE_ONLY,
								}),
							}),
							n(RARES, {	-- these aren't available until you unlock the faction
								n(68321, {	-- Kar Warmaker
									["coord"] = { 13.5, 54.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(92782),	-- Steadfast Footman's Medallion
									},
								}),
								n(68322, {	-- Muerta
									["coord"] = { 9.68, 54.4, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(92786),	-- Alliance Insignia of Conquering
									},
								}),
								n(68320, {	-- Ubunti the Shade
									["coord"] = { 12.8, 64.7, KRASARANG_WILDS },	-- manually verified October 19, 2020
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(92784),	-- SI:7 Operative's Manual
									},
								}),
							}),
							n(VENDORS, {
								n(69059, {	-- Agent Malley <Operation: Shieldwall Quartermaster>
									["coord"] = { 94.5, 29.2, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["groups"] = bubbleDownClassicRep(FACTION_OPERATION_SHIELDWALL, {
										{		-- Neutral
											i(93347),	-- Arcane Badge of the Shieldwall
											i(93346),	-- Deadeye Badge of the Shieldwall
											i(93350),	-- Durable Badge of the Shieldwall
											i(93349),	-- Knightly Badge of the Shieldwall
											i(93348),	-- Mending Badge of the Shieldwall
										}, {	-- Friendly
										}, {	-- Honored
											i(93244),	-- Band of the Shieldwall
											i(93246),	-- Circle of the shieldwall
											i(93245),	-- Loop of the Shieldwall
											i(93247),	-- Seal of the Shieldwall
											i(93243),	-- Signet of the Shieldwall
										}, {	-- Revered
											i(93258),	-- Arrowflight Medallion
											i(93339),	-- Bon-iy's Unbreakable Cord
											i(93335),	-- Chain of Flaming Arrows
											i(93278),	-- Crab-Leather Tabi
											i(93334),	-- Divide's Loyal Clasp
											i(93332),	-- Girdle of Crushing Strength
											i(93231),	-- Grand Commendation of Operation: Shieldwall
											i(93274),	-- Greatboots of Flashing Light
											i(93260),	-- Heartwarmer Medallion
											i(93261),	-- Helmbreaker Medallion
											i(93336),	-- Links of Bonded Blood
											i(93276),	-- Odlaw's Everwalkers
											i(93337),	-- Prevenge's Swashbuckling Cinch
											i(93272),	-- Sabatons of the Sullied Shore
											i(93280),	-- Sandals of Oiled Silk
											i(93340),	-- Sash of Bouncing Power
											i(93273),	-- Sea-Soaked Sollerets
											i(93279),	-- Shieldwarden Slippers
											i(93259),	-- Shock-Charger Medallion
											i(93338),	-- Soothing Straps
											i(93277),	-- Statue Summoner's Treads
											i(93275),	-- Totem-Binder Boots
											i(93262),	-- Vaporshield Medallion
											i(93333),	-- Waistplate of Immobility
										}, {	-- Exalted
											i(93168, {	-- Grand Armored Gryphon (MOUNT!)
												["cost"] = 20000000,	-- 2,000g
											}),
										},
									}),
								}),
								n(67881, {	-- Proveditor Grantley <Collector of Commissions>
									["coord"] = { 94.4, 29.3, KRASARANG_WILDS },
									["races"] = ALLIANCE_ONLY,
									["groups"] = {
										i(122202, {	-- Music Roll: High Seas
											["cost"] = { { "i", 91877, 500 }, },	-- 500x Domination Point Commission
											["timeline"] = { ADDED_6_1_0 },
										}),
										i(92532, {	-- Rodent Crate
											["description"] = "Using the Rodent Crate will spawn 5-7 Sumprush Rodents in the surrounding area. Any players may engage in battle with these wild pets, not just the user of the item.|r",
											["cost"] = { { "i", 91877, 2000 }, },	-- 2,000x Domination Point Commission
											["groups"] = {
												pet(1128),	-- Sumprush Rodent (PET!)
											},
										}),
									},
								}),
							}),
						},
					})),
					faction(FACTION_THE_ANGLERS, {	-- The Anglers
						["requireSkill"] = FISHING,	-- doesn't seem like you can even get access to the faction on a non-fisher.  flew/walked all around the area on a character with no professions and nothing, and as soon as i flew up on a character with fishing the faction unlocked and all the NPCs appeared
						["icon"] = 643874,
						["groups"] = {
							n(ACHIEVEMENTS, {
								ach(6547),		-- The Anglers
							}),
							faction(FACTION_NAT_PAGLE, {	-- Nat Pagle
								n(QUESTS, {
									q(31443, {	-- Flying Tiger Gourami
										["provider"] = { "i", 86542 },	-- Flying Tiger Gourami
										["description"] = "Found while fishing in any inland body of water on Pandaria.\n\n",
										["requireSkill"] = FISHING,
										["isDaily"] = true,
									}),
									q(31446, {	-- Mimic Octopus
										["provider"] = { "i", 86545 },	-- Mimic Octopus
										["description"] = "Found while fishing in any inland body of water on Pandaria.",
										["requireSkill"] = FISHING,
										["isDaily"] = true,
									}),
									q(31444, {	-- Spinefish Alpha
										["provider"] = { "i", 86544 },	-- Spinefish Alpha
										["description"] = "Found while fishing in inland water near Sha-touched land.",
										["requireSkill"] = FISHING,
										["isDaily"] = true,
									}),
								}),
							}),
							n(QUESTS, {
								q(30613, {	-- Armored Carp
									["qg"] = 60135,	-- Trawler Yotimo
									["coord"] = { 70.9, 39.0, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80403),	-- Angler's Fishing Spear (QI!)
										i(80437),	-- Armored Carp (QI!)
									},
								}),
								q(30754, {	-- Bright Bait
									["qg"] = 60674,	-- John "Big Hook" Marsock
									["coord"] = { 71.6, 40.0, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(81116),	-- Suncrawler (QI!)
									},
								}),
								q(30588, {	-- Fishing for a Bruising
									["qg"] = 59586,	-- Angler Shen
									["coord"] = { 70.8, 40.1, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
								}),
								q(30658, {	-- Huff & Puff
									["qg"] = 60135,	-- Trawler Yotimo
									["coord"] = { 70.9, 39.0, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80403),	-- Angler's Fishing Spear (QI!)
										i(80529),	-- Prickly Puffer Spine (QI!)
									},
								}),
								q(30586, {	-- Jagged Abalone
									["qg"] = 59584,	-- Fisherman Haito
									["coord"] = { 71.2, 41.9, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80277),	-- Jagged Abalone Meat (QI!)
									},
								}),
								q(30753, {	-- Jumping the Shark
									["qg"] = 60674,	-- John "Big Hook" Marsock
									["coord"] = { 71.6, 40.0, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
								}),
								q(30678, {	-- Like Bombing Fish In A Barrel
									["qg"] = 60136,	-- Fiznix
									["coord"] = { 70.8, 41.3, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80599),	-- Goblin Fishing Bomb (QI!)
										i(80600),	-- Stinger (QI!)
									},
								}),
								q(30763, {	-- Piranha!
									["qg"] = 60675,	-- Fo Fook
									["coord"] = { 70.5, 37.5, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(81122),	-- Wolf Piranha (QI!)
									},
								}),
								q(30698, {	-- Scavenger Hunt
									["qg"] = 60136,	-- Fiznix
									["coord"] = { 70.8, 41.3, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80830),	-- Rusty Shipwreck Debris (QI!)
									},
								}),
								q(30584, {	-- Shocking!
									["qg"] = 59584,	-- Fisherman Haito
									["coord"] = { 71.2, 41.8, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80260),	-- Dojani Eel (QI!)
										i(81175),	-- Crispy Dojani Eel
									},
								}),
								q(30700, {	-- Snapclaw
									["qg"] = 59586,	-- Angler Shen
									["coord"] = { 70.8, 40.2, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80831),	-- Snapclaw's Claw (QI!)
									},
								}),
								q(30701, {	-- Viseclaw Soup
									["qg"] = 60675,	-- Fo Fook
									["coord"] = { 70.5, 37.5, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80832),	-- Viseclaw Fisher Eye (QI!)
									},
								}),
								q(30585, {	-- What Lurks Below
									["qg"] = 60673,	-- Elder Fisherman Rassan
									["coord"] = { 71.7, 38.7, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80262),	-- Beloved Ring (QI!)
									},
								}),
								q(30598, {	-- Who Knew Fish Liked Eggs?
									["qg"] = 60673,	-- Elder Fisherman Rassan
									["coord"] = { 71.6, 38.6, KRASARANG_WILDS },
									["requireSkill"] = FISHING,
									["isDaily"] = true,
									["groups"] = {
										i(80303),	-- Pristine Crane Egg (QI!)
										i(80310),	-- Silver Goby (QI!)
									},
								}),
							}),
							n(VENDORS, {
								n(63721, {	-- Nat Pagle <The Anglers Quartermaster>
									["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
									["groups"] = appendGroups(MOP_FISHING, bubbleDownClassicRep(FACTION_THE_ANGLERS, {
										{		-- Neutral
											i(168416),	-- Angler's Water Striders
											i(86596, {	-- Nat's Fishing Chair (TOY!)
												["description"] = "Requires Best Friend to see.",
											}),
										}, {	-- Friendly
											i(85505),	-- Recipe: Krasarang Fritters (RECIPE!)
											i(85502),	-- Recipe: Viseclaw Soup (RECIPE!)
										}, {	-- Honored
											i(88710),	-- Nat's Hat -- NOT MOGGABLE
											i(84660),	-- Pandaren Fishing Pole -- NOT MOGGABLE
											i(85447),	-- Tiny Goldfish (PET!)
										}, {	-- Revered
											i(85500, {	-- Angler's Fishing Raft (TOY!)
												["cost"] = 8500000,	-- 850g
											}),
											i(107950, {	-- Bipsi's Bobbing Berg
												["classes"] = { MAGE },
												["cost"] = 10000000,	-- 1,000g
											}),
											i(84661),	-- Dragon Fishing Pole -- NOT MOGGABLE
											i(93225),	-- Grand Commendation of the Anglers
											i(88535, {	-- Sharpened Tuskarr Pole -- NOT MOGGABLE
												["cost"] = 12750000,	-- 1,275g
											}),
										}, {	-- Exalted
											i(89401),	-- Angler's Tabard
											i(81354, {	-- Azure Water Strider (MOUNT!)
												["cost"] = 9500000,	-- 950g
											}),
										},
									})),
								}),
							}),
						},
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(992, {	-- Cradle of Chi-Ji, Krasarang Wilds
						["cr"] = 65189,	-- Feather Keeper Li <Flight Master>
						["coord"] = { 31.2, 63.2, KRASARANG_WILDS },
					}),
					fp(990, {	-- Dawnchaser Retreat, Krasarang Wilds
						["cr"] = 59047,	-- Munch Windhoof <Flight Master>
						["coord"] = { 29.0, 50.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					fp(1195, {	-- Domination Point, Krasarang Wilds
						["cr"] = 67785,	-- Kromthar <Flight Master>
						["coord"] = { 9.60, 52.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					fp(1190, {	-- Lion's Landing, Krasarang Wilds
						["cr"] = 68226,	-- Daggin Windbeard <Flight Master>
						["coord"] = { 88.4, 34.6, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(993, {	-- Marista, Krasarang Wilds
						["cr"] = 60441,	-- Nan-Po <Flight Master>
						["coord"] = { 52.4, 76.6, KRASARANG_WILDS },
					}),
					fp(991, {	-- Sentinel Basecamp, Krasarang Wilds
						["cr"] = 59048,	-- Maylen Moonfeather <Flight Master>
						["coord"] = { 25.2, 33.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(988, {	-- The Incursion, Krasarang Wilds
						["cr"] = 59049,	-- Tylen Moonfeather <Flight Master>
						["coord"] = { 67.6, 32.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(987, {	-- Thunder Cleft, Krasarang Wilds
						["cr"] = 59046,	-- Lira Skysplitter <Flight Master>
						["coord"] = { 59.2, 24.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					fp(986, {	-- Zhu's Watch, Krasarang Wilds
						["cr"] = 60232,	-- Gee Hung <Flight Master>
						["coord"] = { 76.6, 8.40, KRASARANG_WILDS },
					}),
				}),
				petbattles({
					n(66733, {	-- Mo'ruk <Grand Master Pet Tamer>
						["coord"] = { 65.0, 42.7, KRASARANG_WILDS },
						["timeline"] = { ADDED_5_0_4 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31954, {	-- Grand Master Mo'ruk
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_0_4 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
				}),
				n(QUESTS, {
				--	TODO:
					-- try to figure out where the alternate versions of "Into the Wilds" come from for each faction.  i picked up 30178 on Alliance and 30133 on Horde after completeing all the Zhu's Watch quests.  the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't.  possibly there are different versions if you abandon/re-pick up, or if you start questing elsewhere in the zone?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
					-- try to figure out where the second version of "Going on the Offensive" comes from.  does it have different SQs?  is it from starting somewhere else in the zone, or doing it in a different order?  the quest text is slightly different (one version says "I want you to look for my scout. I sent her to investigate the Crane Temple but she hasn't returned.  Get her report and rendezvous with us at the Sentinel Basecamp further west."  the other doesn't mention a scout at all, and just says "We are pressing westward and could use your help. Meet us at the Sentinel Basecamp further west when you are ready.")
					-- same as above but with "Going West" for Horde, as opposed to "Going on the Offensive" for Alliance.  i picked up 30132, unsure what needs to happen to pick up 30464
					-- ShadowBrooks -- NOTE FOR CRIEVE see changes for 30132 and 30464
					q(30695, {	-- Ahead on the Way
						["qg"] = 59138,	-- Koro Mistwalker
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
						["groups"] = {
							i(81552),	-- Red Crane Sword
							i(81553),	-- Crane Temple Blade
							i(81554),	-- Ward of Despair
							i(81555),	-- Hope's Shield
							i(81556),	-- Sha-Warped Blade
							i(81557),	-- Maw of Despair
							i(90546),	-- Red Crane Scepter
							i(90547),	-- Lantern of Hope
						},
					}),
					q(30089, {	-- Apply Directly to the Forehead
						["qg"] = 56115,	-- Ken-Ken
						["sourceQuests"] = { 30088 },	-- Why So Serious?
						["coord"] = { 80.1, 0.98, KRASARANG_WILDS },
						["groups"] = {
							i(79021),	-- Ken-Ken's Mask (QI!)
							i(81467),	-- Nayeli Leggings
							i(81468),	-- Mortbreath Legguards
							i(81469),	-- Deepwild Legguards
							i(81470),	-- Narsong Legplates
							i(81471),	-- Angkhal Trousers
							i(81472),	-- Riverblade Legguards
							i(81473),	-- Sarjun Leggings
							i(81474),	-- Korjan Legguards
							i(81475),	-- Dojani Legguards
						},
					}),
					q(30672, {	-- Balance
						["qg"] = 60139,	-- Wise Ana Wu
						["sourceQuests"] = {
							30691,	-- Misery
							30671,	-- Wisdom Has A Price
						},
						["coord"] = { 47.6, 78.2, KRASARANG_WILDS },
						["groups"] = {
							i(81542),	-- Fishmonger's Blade
							i(81543),	-- Waterkeeper's Wand
							i(81544),	-- Marista Halberd
							i(81545),	-- Marista Blade
							i(81546),	-- Cloudfall Sword
							i(81547),	-- Marista Bow
							i(81548),	-- Marista Mace
							i(81549),	-- Marista Axe
							i(81550),	-- Cloudfall Blade
							i(81551),	-- Cloudfall Mace
						},
					}),
					q(30674, {	-- Balance Without Violence
						["sourceQuests"] = {
							30691,	-- Misery
							30671,	-- Wisdom Has A Price
						},
						["coord"] = { 46.9, 84.8, KRASARANG_WILDS },
						["description"] = "Automatically given you while moving through Nayeli Lagoon.",
					}),
					q(30384, {	-- Blind Them! (A)
						["qg"] = 58735,	-- Lyalia
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30124, {	-- Blind Them! (H)
						["qg"] = 58114,	-- Kor Bloodtust
						["sourceQuests"] = { 30179 },	-- Poisoned!
						["coord"] = { 62.6, 20.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30270, {	-- Blinding the Riverblades
						["qg"] = 59138,	-- Koro Mistwalker
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30084, {	-- Borderlands
						["qg"] = 57744,	-- Mei Barrelbottom
						["sourceQuests"] = { 30091 },	-- Tears of Pandaria
						["coord"] = { 79.7, 1.56, KRASARANG_WILDS },
						["groups"] = {
							i(78928),	-- Flame of Zhu's Watch (QI!)
						},
					}),
					q(30668, {	-- Build Your Own Raft
						["qg"] = 60173,	-- Jay Cloudfall
						["sourceQuests"] = { 30666 },	-- Sudden, Unexpected Crocolist Aggression
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
						["groups"] = {
							o(211379, {	-- Spare Plank
								i(80685),	-- Spare Plank (QI!)
							}),
							o(211382, {	-- Tough Kelp
								i(80804),	-- Tough Kelp (QI!)
							}),
						},
					}),
					q(30675, {	-- Buried Hozen Treasure
						["provider"] = { "i", 80827 },	-- Confusing Treasure Map
						["coord"] = { 48.1, 90.8, KRASARANG_WILDS },	-- general midpoint-ish area, since the mobs are spread out around the island
						["crs"] = {
							60299,	-- Unga Fish-Getter
							60357,	-- Unga Treasure-Hider
							60358,	-- Unga Villager
						},
						["groups"] = {
							o(211420, {	-- Lump of Sand
								i(80817),	-- Buried Hozen Treasure (QI!)
							}),
							i(80822),	-- The Golden Banana (TOY!)
						},
					}),
					q(30082, {	-- Cheer Up, Yi-Mo
						["qg"] = 58376,	-- Yi-Mo Longbrow
						["sourceQuests"] = { 30080 },	-- Finding Yi-Mo
						["coord"] = { 85.5, 0.74, KRASARANG_WILDS },
						["groups"] = {
							i(81440),	-- Nayeli Hood
							i(81441),	-- Mortbreath Helm
							i(81442),	-- Deepwild Helm
							i(81443),	-- Narsong Headcover
							i(81444),	-- Angkhal Cowl
							i(81445),	-- Riverblade Helm
							i(81446),	-- Sarjun Helm
							i(81447),	-- Korjan Helm
							i(81448),	-- Dojani Helm
						},
					}),
					q(30352, {	-- Crane Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
					}),
					q(30126, {	-- Crane Mastery
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in the version above
					}),
					q(31262, {	-- Crane Mastery: Needlebeak
						["qg"] = 58779,	-- Daggle Bombstrider
						["sourceQuests"] = { 30352 },	-- Crane Mastery
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(85854),	-- The Needlebeak (QI!)
							i(88052),	-- Nayeli Waistband
							i(88051),	-- Mortbreath Waistband
							i(88050),	-- Deepwild Belt
							i(88049),	-- Narsong Waistband
							i(88048),	-- Angkhal Waistband
							i(88047),	-- Riverblade Waistband
							i(88046),	-- Sarjun Belt
							i(88045),	-- Korjan Waistband
							i(88044),	-- Dojani Waistband
						},
					}),
					q(30080, {	-- Finding Yi-Mo
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.7, 1.57, KRASARANG_WILDS },
					}),
					q(30174, {	-- For Family
						["qg"] = 58607,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30164,	-- The Stoneplow Convoy
							30175,	-- The Mantid (H)
						},
						["coord"] = { 15.3, 36.2, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(81449),	-- Nayeli Mantle
							i(81450),	-- Mortbreath Spaulder
							i(81451),	-- Deepwild Pauldrons
							i(81452),	-- Narsong Spaulders
							i(81453),	-- Angkhal Amice
							i(81454),	-- Riverblade Spaulder
							i(81455),	-- Sarjun Spaulders
							i(81456),	-- Korjan Shoulders
							i(81457),	-- Dojani Shoulders
						},
					}),
					q(30163, {	-- For the Tribe
						["qg"] = 58114,	-- Kor Bloodtusk
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["coord"] = { 29.0, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30363, {	-- Going on the Offensive
						["qg"] = 58735,	-- Lyalia
						["sourceQuests"] = { 30348 },	-- Immortality?
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					--	does this also require "Lotus Tea" (30351) and "Threats from Dojan" (30349)?
						["groups"] = {
							i(79332),	-- Sentinel Scout's Report (QI!)
						},
					}),
					q(30465, {	-- Going on the Offensive
						["qg"] = 58735,	-- Lyalia
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					--	does this have different SQs than the previous version?
					}),
					q(30132, {	-- Going West
						["qg"] = 58113,	-- Sunwalker Dezco
						["sourceQuests"] = { 30131 },	-- Life
						["coord"] = { 63.1, 20.7, KRASARANG_WILDS },
						["description"] = "This version is available if you have not completed the Temple of the Red Crane questline.",
						["races"] = HORDE_ONLY,
						["lockCriteria"] = { 1, "questID", 30273 },	-- In the House of the Red Crane
						["groups"] = {
							i(79745),	-- Sunwalker Scout's Report (QI!)
						},
					}),
					q(30464, {	-- Going West
						["qg"] = 58113,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30131,	-- Life
							30273,	-- In the House of the Red Crane
						},
						["coord"] = { 63.1, 20.7, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30130, {	-- Herbal Remedies
						["qg"] = 58113,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["coord"] = { 62.6, 20.0, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(210209, {	-- Imperial Lotus
								i(78918),	-- Imperial Lotus Leaves (QI!)
							}),
							i(88532),	-- Lotus Water
						},
					}),
					heroscall(q(49558, {	-- Hero's Call: Krasarang Wilds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 81,
					})),
					q(30376, {	-- Hope Springs Eternal
						["qg"] = 59719,	-- Chi-Ji
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							29990,	-- Training and Discipline
						--	TODO: may also require the following quests:
						--	29581,	-- The Golden Dream
						--	29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["coord"] = { 41.6, 46.3, KRASARANG_WILDS },
						["isBreadcrumb"] = true,
					}),
					q(30348, {	-- Immortality?
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = {
							30347,	-- The Pools of Youth
							30349,	-- Threat from Dojan (A)
							30351,	-- Lotus Tea (A)
						},
						["coord"] = { 70.7, 28.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30273, {	-- In the House of the Red Crane
						["qg"] = 59608,	-- Anduin Wrynn
						["sourceQuests"] = {
							30695,	-- Ahead on the Way
							30271,	-- Sha Can Awe
							30272,	-- Striking the Rain
						},
					--	Anduin seems to follow you constantly even if you abandon this, so coords do not appear to be unnecessary
						["groups"] = {
							i(81493),	-- Dojani Girdle
							i(81492),	-- Korjan Girdle
							i(81491),	-- Sarjun Waistguard
							i(81490),	-- Riverblade Belt
							i(81489),	-- Angkhal Cord
							i(81488),	-- Narsong Clasp
							i(81487),	-- Deepwild Waistguard
							i(81486),	-- Mortbreath Belt
							i(81485),	-- Nayeli Cord
						},
					}),
					q(30178, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["sourceQuests"] = { 30090 },	-- Zhu's Despair
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30462, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					--	does this have different SQs than the previous version?
					}),
					q(30133, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["sourceQuests"] = { 30090 },	-- Zhu's Despair
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["groups"] = {
							i(79825),	-- Zhu's Watch Supplies (QI!)
						},
					}),
					q(30461, {	-- Into the Wilds
						["qg"] = 57744,	-- Mei Barrelbottom
						["coord"] = { 79.8, 1.57, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					--	does this have different SQs than the previous version?
					}),
					q(30131, {	-- Life
						["qg"] = 58113,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30128,	-- The Pools of Youth
							30130,	-- Herbal Remedies
						},
						["coord"] = { 62.6, 19.9, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30351, {	-- Lotus Tea
						["qg"] = 56114,	-- Kang Bramblestaff
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(78918),	-- Imperial Lotus Leaves (QI!)
							i(88532),	-- Lotus Water
						},
					}),
					q(30081, {	-- Materia Medica
						["qg"] = 56115,	-- Ken-ken
						["sourceQuests"] = {
							30079,	-- What's Eating Zhu's Watch?
							30082,	-- Cheer Up, Yi-Mo
						},
						["coord"] = { 80.2, 1.00, KRASARANG_WILDS },
						["groups"] = {
							o_repeated({
								i(78877),	-- Slick Mudfish (QI!)
								o(210184),	-- Slick Mudfish
								o(210186),	-- Slick Mudfish
							}),
							o(210188, {	-- Chunk of Honeycomb
								i(78881),	-- Chunk of Honeycomb (QI!)
							}),
							i(78880),	-- Salty Core (QI!)
						},
					}),
					q(30691, {	-- Misery
						["qg"] = 60139,	-- Wise Ana Wu
						["sourceQuests"] = { 30669 },	-- The Lorewalker on the Lake
						["coord"] = { 47.6, 78.1, KRASARANG_WILDS },
					}),
					q(30354, {	-- No Sister Left Behind
						["qg"] = 58821,	-- Lyalia
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30667, {	-- Particular Plumage
						["qg"] = 60182,	-- Tony Tuna
						["coord"] = { 53.7, 74.4, KRASARANG_WILDS },
						["groups"] = {
							i(80677),	-- Emerald Tailfeather (QI!)
							i(80678),	-- Crimson Tailfeather (QI!)
							i(80679),	-- Dusky Tailfeather (QI!)
						},
					}),
					q(30179, {	-- Poisoned!
						["qg"] = 58160,	-- Chizen Dawnchaser
						["sourceQuests"] = {
							30121,	-- Search Party
						},
						["coord"] = { 60.4, 25.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(79252),	-- Mogu Poisoned Blade (QI!)
							i(81522),	-- Ring of the Pools of Youth
							i(81523),	-- Ring of Tears
							i(81524),	-- Toothrow Band
							i(81525),	-- Seal of Lost Centuries
							i(81526),	-- Seal of the Forbidden Jungle
						},
					}),
					q(30353, {	-- Profit Mastery
						["qg"] = 58779,	-- Daggle Bombstrider
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(78914),	-- Vial of Tiger Blood (QI!)
							i(81494),	-- Nayeli Gloves
							i(81495),	-- Mortbreath Gloves
							i(81496),	-- Deepwild Gauntlets
							i(81497),	-- Narsong Gloves
							i(81498),	-- Angkhal Handguards
							i(81499),	-- Riverblade Gloves
							i(81500),	-- Sarjun Gauntlets
							i(81501),	-- Krojan Gauntlets
							i(81502),	-- Dojani Gauntlets
						},
					}),
					q(30125, {	-- Profit Mastery
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in the version above
					}),
					q(31260, {	-- Profit Mastery: Chasheen
						["qg"] = 58779,	-- Daggle Bombstrider
						["sourceQuests"] = { 30353 },	-- Profit Mastery
						["coord"] = { 67.6, 25.6, KRASARANG_WILDS },
						["groups"] = {
							i(85774),	-- Ancient Tiger's Blood (QI!)
						},
					}),
					q(30169, {	-- Raid Leader Slovan
						["qg"] = 58278,	-- Tired Shushen <Waterspeaker>
						["coord"] = { 29.7, 39, KRASARANG_WILDS },
						["groups"] = {
							i(88387),	-- Shushen's Spittoon (TOY!)
						},
					}),
					q(30355, {	-- Re-Reclaim (A)
						["qg"] = 56114,	-- Kang Bramblestaff
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["coord"] = { 25.2, 30.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81503),	-- Nayeli Cuffs
							i(81504),	-- Mortbreath Bindings
							i(81505),	-- Deepwild Armguards
							i(81506),	-- Narsong Bracers
							i(81507),	-- Angkhal Cuffs
							i(81508),	-- Riverblade Armwraps
							i(81509),	-- Sarjun Wristguards
							i(81510),	-- Korjan Armplates
							i(81511),	-- Dojani Bracers
						},
					}),
					q(30230, {	-- Re-Reclaim (H)
						["qg"] = 56112,	-- Kang Bramblestaff
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["races"] = HORDE_ONLY,
						["groups"] = {
							o_repeated({
								i(79120),	-- Mogu Artifact (QI!)
								o(210416),	-- Mogu Artifact
								o(210417),	-- Mogu Artifact
								o(210418),	-- Mogu Artifact
							}),
							i(81503),	-- Nayeli Cuffs
							i(81504),	-- Mortbreateh Bindings
							i(81505),	-- Deepwild Armguards
							i(81506),	-- Narsong Bracers
							i(81507),	-- Angkhal Cuffs
							i(81508),	-- Riverblade Armwaraps
							i(81509),	-- Sarjun Wristguards
							i(81510),	-- Korjan Armplates
							i(81511),	-- Dojani Bracers
						},
					}),
					q(30375, {	-- Sea Snakes
						["u"] = REMOVED_FROM_GAME,	-- triggers when turning in 30268, "The Murksweats"
					}),
					q(30121, {	-- Search Party
						["qg"] = 58113,	-- Sunwalker Dezco
						["coord"] = { 59.8, 24.6, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30083, {	-- Securing the Province
						["qg"] = 57744,	-- Mei Barrelbottom
						["sourceQuests"] = { 30091 },	-- Tears of Pandaria
						["coord"] = { 79.7, 1.56, KRASARANG_WILDS },
						["groups"] = {
							i(81512),	-- Sha-Haunted Locket
							i(81513),	-- Choker of Despair
							i(81514),	-- Wildscale Amulet
							i(81515),	-- Red Crane Pendant
							i(81516),	-- Pendant of the Lost Dynasty
						},
					}),
					q(30356, {	-- Sever Their Supply Line
						["qg"] = 58821,	-- Lyalia
						["sourceQuests"] = { 30363, 30465 },	-- Going on the Offensive
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30271, {	-- Sha Can Awe
						["qgs"] = {
							59188,	-- Anduin Wrynn
							59189,	-- Anduin Wrynn
							59608,	-- Anduin Wrynn
						},
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30123, {	-- Skitterer Stew
						["qg"] = 56112,	-- Kang Bramblestaff
						["sourceQuests"] = { 30179 },	-- Poisoned!
						["coord"] = { 62.7, 20.3, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(78911),	-- Intact Skitterer Glands (QI!)
						},
					}),
					q(30350, {	-- Squirmy Delight
						["qg"] = 56114,	-- Kang Bramblestaff
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(78911),	-- Intact Skitterer Glands (QI!)
							i(88388),	-- Squirmy Delight
						},
					}),
					q(30272, {	-- Striking the Rain
						["qg"] = 59138,	-- Koro Mistwalker
						["sourceQuests"] = {
							30270,	-- Blinding the Riverblades
							30268,	-- The Murksweats
							30694,	-- Tread Lightly
						},
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
					}),
					q(30666, {	-- Sudden, Unexpected Crocolisk Aggression
						["qg"] = 60173,	-- Jay Cloudfall
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
					}),
					q(30091, {	-- Tears of Pandaria
						["qg"] = 57744,	-- Mei Barrelbottom
						["sourceQuests"] = { 30082 },	-- Cheer Up, Yi-Mo
						["coord"] = { 79.7, 1.57, KRASARANG_WILDS },
					}),
					q(30274, {	-- The Arcanic Oubliette
						["coord"] = { 70.6, 28.4, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31058, {	-- The Funky Monkey Brew
						["qg"] = 65289,	-- Brewmaster Bo
						["coord"] = { 54.4, 75.2, KRASARANG_WILDS },
						["maps"] = { 450 },	-- Unga Ingoo
						["lvl"] = 90,	-- 35
					}),
					q(30229, {	-- The Greater Danger
						["qg"] = 58114,	-- Kor Bloodtusk
						["sourceQuests"] = { 30132, 30464 },	-- Going West (two versions)
						["coord"] = { 29.0, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30359, {	-- The Lord Reclaimer
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = {
							30361,	-- The Mantid
							30357,	-- The Stoneplow Convoy
						},
						["coord"] = { 14.3, 35.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30669, {	-- The Lorewalker on the Lake
						["qg"] = 60173,	-- Jay Cloudfall
						["sourceQuests"] = { 30668 },	-- Build Your Own Raft
						["coord"] = { 51.6, 76.8, KRASARANG_WILDS },
					}),
					q(30344, {	-- The Lost Dynasty
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = { 30274 },	-- The Arcanic Oubliette
						["coord"] = { 50.9, 31.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(79713),	-- Dynastic Tablet (QI!)
							i(81522),	-- Ring of the Pools of Youth
							i(81523),	-- Ring of Tears
							i(81524),	-- Toothrow Band
							i(81525),	-- Seal of Lost Centuries
							i(81526),	-- Seal of the Forbidden Jungle
						},
					}),
					q(30361, {	-- The Mantid (A)
						["qg"] = 58630,	-- Ambassador Han
						["sourceQuests"] = {
							30354,	-- No Sister Left Behind
							30355,	-- Re-Reclaim
							30356,	-- Sever Their Supply Line
						},
						["coord"] = { 24.9, 30.2, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81458),	-- Nayeli Robe
							i(81459),	-- Mortbreath Robes
							i(81460),	-- Deepwild Armor
							i(81461),	-- Narsong Chestguard
							i(81462),	-- Angkhal Robe
							i(81463),	-- Riverblade Tunic
							i(81464),	-- Sarjun Chestguard
							i(81465),	-- Korjan Chestpiece
							i(81466),	-- Dojani Chestpiece
						},
					}),
					q(30175, {	-- The Mantid (H)
						["qg"] = 58630,	-- Ambassador Han
						["sourceQuests"] = {
							30230,	-- Re-Reclaim
							30229,	-- The Greater Danger
							30163,	-- For the Tribe
						},
						["coord"] = { 29.3, 48.4, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(81458),	-- Nayeli Robe
							i(81459),	-- Mortbreath Robes
							i(81460),	-- Deepwild Armor
							i(81461),	-- Narsong Chestguard
							i(81462),	-- Angkhal Robe
							i(81463),	-- Riverblade Tunic
							i(81464),	-- Sarjun Chestguard
							i(81465),	-- Korjan Chestpiece
							i(81466),	-- Dojani Chestpiece
						},
					}),
					q(30129, {	-- The Mogu Agenda
						["qg"] = 56112,	-- Kang Bramblestaff
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["coord"] = { 62.7, 20.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(78917),	-- Dojani Orders (QI!)
						},
					}),
					q(30268, {	-- The Murksweats
						["qg"] = 58609,	-- Anduin Wrynn
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["coord"] = { 41.6, 30.5, KRASARANG_WILDS },
						["groups"] = {
							i(79199),	-- Murkscale Head (QI!)
							i(81517),	-- Murksweat Ward
							i(81518),	-- Lory Feather Band
							i(81519),	-- Snakejaw Band
							i(81560),	-- Snakeswarm Ring
							i(81561),	-- Murkscale Band
						},
					}),
					q(30347, {	-- The Pools of Youth (A)
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = { 30346 },	-- Where are the Pools
						["coord"] = { 70.6, 28.4, KRASARANG_WILDS },	-- automatically offered, but this is where it's picked up if you abandon it
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81537),	-- Drape of the Lagoon
							i(81538),	-- Waterfall Drape
							i(81539),	-- Canopy Drape
							i(81540),	-- Greenback Cape
							i(81541),	-- Balmy Drape
						},
					}),
					q(30128, {	-- The Pools of Youth (H)
						["qg"] = 58206,	-- Kang Bramblestaff
						["sourceQuests"] = { 30129 },	-- The Mogu Agenda
						["races"] = HORDE_ONLY,
						["groups"] = {
							o(210229, {	-- Water of Youth
								i(78934),	-- The Water of Youth (QI!)
							}),
							i(81537),	-- Drape of the Lagoon
							i(81538),	-- Waterfall Drape
							i(81539),	-- Canopy Drape
							i(81540),	-- Greenback Cape
							i(81541),	-- Balmy Drape
						},
					}),
					q(30357, {	-- The Stoneplow Convoy (A)
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = {
							30354,	-- No Sister Left Behind
							30355,	-- Re-Reclaim
							30356,	-- Sever Their Supply Line
						},
						["coord"] = { 14.3, 35.7, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(84291),	-- Imperial Lotus Shawl
							i(84292),	-- Imperial Lotus Drape
							i(84293),	-- Imperial Lotus Cape
							i(84294),	-- Imperial Lotus Manteau
							i(84295),	-- Imperial Lotus Cloak
						},
					}),
					q(30164, {	-- The Stoneplow Convoy (H)
						["qg"] = 58607,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30163,	-- For the Tribe
							30230,	-- Re-Reclaim
							30229,	-- The Greater Danger
						},
						["coord"] = { 15.2, 36.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(79163),	-- Imperial Lotus Poultice (QI!)
						},
					}),
					q(30445, {	-- The Waters of Youth
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = { 30359 },	-- The Lord Reclaimer
						["coord"] = { 24.8, 29.8, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(81449),	-- Nayeli Mantle
							i(81450),	-- Mortbreath Spaulder
							i(81451),	-- Deepwild Pauldrons
							i(81452),	-- Narsong Spaulders
							i(81453),	-- Angkhal Amice
							i(81454),	-- Riverblade Spaulder
							i(81455),	-- Sarjun Spaulders
							i(81456),	-- Korjan Shoulders
							i(81457),	-- Dojani Shoulders
						},
					}),
					q(30168, {	-- Thieving Raiders
						["qg"] = 58278,	-- Tired Shushen
						["coord"] = { 29.7, 39, KRASARANG_WILDS },
						["groups"] = {
							i(78958),	-- Pillaged Jinyu Loot (QI!)
							i(81532),	-- Silkspawn Carving
							i(81534),	-- Carp Hunter Feather
							i(81535),	-- Glade Pincher Feather
							i(81536),	-- Jungle Huntress Idol
						},
					}),
					q(30349, {	-- Threat from Dojan (A)
						["qg"] = 58735,	-- Lyalia
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = {
							i(84281),	-- Bramble Locket
							i(84282),	-- Bramble Choker
							i(84283),	-- Bramble Necklace
							i(84284),	-- Bramble Pendant
							i(84285),	-- Bramble Amulet
						},
					}),
					q(30127, {	-- Threat from Dojan (H)
						["qg"] = 58114,	-- Kor Bloodtusk
						["sourceQuests"] = {
							30123,	-- Skitterer Skew
							30124,	-- Blind Them!
						},
						["coord"] = { 62.6, 20.0, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
					}),
					q(30694, {	-- Tread Lightly
						["qg"] = 59138,	-- Koro Mistwalker
						["sourceQuests"] = { 30269 },	-- Unsafe Passage
						["coord"] = { 41.8, 29.6, KRASARANG_WILDS },
						["groups"] = {
							i(80828),	-- "Scrutiny" (QI!)
							i(84272),	-- Mistwalker Satin Leggings
							i(84273),	-- Mistwalker Hide leggaurds
							i(84274),	-- Deepwild Leg Armor
							i(84275),	-- Mistwalker Burnished Legplates
							i(84276),	-- Mistwalker Silk Trousers
							i(84277),	-- Mistwalker Leather Legguards
							i(84278),	-- Sarjun Legguards
							i(84279),	-- Mistwalker Heavy Legguards
							i(84280),	-- Mistwalker Armored Legguards
						},
					}),
					q(30269, {	-- Unsafe Passage
						["qg"] = 58547,	-- Koro Mistwalker
						["sourceQuests"] = {
						--	unclear what the difference is in these.  the quest text is slightly different (one version for each says "I suspect they'll know something about what happened here" and the other says "They should be told of what happened here," and one version for each provides Zhu's Watch Supplies, while the other doesn't.  possibly there are different versions if you abandon/re-pick up?  completing one completed all four of these, so unless there's an issue with one version not doing the same then it should be good for all users.
							30178,	-- Into the Wilds (A)
							30462,	-- Into the Wilds (A)
							30461,	-- Into the Wilds (H)
							30133,	-- Into the Wilds (H)
						},
						["coord"] = { 45.6, 39.5, KRASARANG_WILDS },
					}),
					warchiefscommand(q(49540, {	-- Warchief's Command: Krasarang Wilds!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					})),
					q(30360, {	-- Warn Stoneplow (A)
						["qg"] = 58821,	-- Lyalia
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							30445,	-- The Waters of Youth
							29990,	-- Training and Discipline
						--	TODO: may also require the following quests:
						--	29581,	-- The Golden Dream
						--	29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["coord"] = { 24.7, 29.9, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30241, {	-- Warn Stoneplow (H)
						["qg"] = 58607,	-- Sunwalker Dezco
						["sourceQuests"] = {
							30174,	-- For Family
							30273,	-- In the House of the Red Crane
							30117,	-- Stoneplow Thirsts
							29990,	-- Training and Discipline
						--	TODO: may also require the following quests:
						--	29581,	-- The Golden Dream
						--	29875,	-- Kang Bramblestaff (optional quest leading to Krasarang content, but doesn't function as a breadcrumb and can still be picked up after finishing the zone)
						},
						["coord"] = { 29.1, 48.1, KRASARANG_WILDS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(30079, {	-- What's Eating Zhu's Watch?
						["qg"] = 56115,	-- Ken-Ken
						["sourceQuests"] = {
							29873,	-- Ken-Ken
							-- #if AFTER 7.3.5
							49540,	-- Warchief's Command: Krasarang Wilds!
							49558,	-- Hero's Call: Krasarang Wilds!
							-- #endif
						},
						["coord"] = { 80.2, 1.02, KRASARANG_WILDS },
					}),
					q(30346, {	-- Where are the Pools
						["qg"] = 58745,	-- Lorekeeper Vaeldrin
						["sourceQuests"] = {
							30384,	-- Blind Them!
							30350,	-- Squirmy Delight
							30344,	-- The Lost Dynasty
						},
						["coord"] = { 70.6, 28.5, KRASARANG_WILDS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(30088, {	-- Why So Serious?
						["qg"] = 56115,	-- Ken-Ken
						["sourceQuests"] = { 30081 },	-- Materia Medica
						["coord"] = { 80.2, 0.94, KRASARANG_WILDS },
						["groups"] = {
							i(78941),	-- Huge Panther Fang (QI!)
							o(210228, {	-- Jar of Pigment
								i(78942),	-- Jar of Pigment (QI!)
							}),
							i(88061),	-- Nayeli Handwraps
							i(88060),	-- Mortbreath Handwraps
							i(88059),	-- Deepwild Handguards
							i(88058),	-- Narsong Handwraps
							i(88057),	-- Angkhal Handwraps
							i(88056),	-- Riverblade Handwraps
							i(88055),	-- Sarjun Handwraps
							i(88054),	-- Korjan Handwraps
							i(88053),	-- Dojani Handwraps
						},
					}),
					q(30671, {	-- Wisdom Has A Price
						["qg"] = 60139,	-- Wise Ana Wu
						["sourceQuests"] = { 30669 },	-- The Lorewalker on the Lake
						["coord"] = { 47.6, 78.1, KRASARANG_WILDS },
						["groups"] = {
							i(80810),	-- Shark Fillet (QI!)
							i(88043),	-- Nayeli Shoes
							i(88042),	-- Mortbreath Shoes
							i(88041),	-- Deepwild Greaves
							i(88040),	-- Narsong Shoes
							i(88039),	-- Angkhal Shoes
							i(88038),	-- Riverblade Shoes
							i(88037),	-- Sarjun Boots
							i(88036),	-- Korjan Shoes
							i(88035),	-- Dojani Shoes
						},
					}),
					q(30090, {	-- Zhu's Despair
						["qg"] = 56115,	-- Ken-Ken
						["sourceQuests"] = { 30089 },	-- Apply Directly to the Forehead
						["coord"] = { 80.2, 1.00, KRASARANG_WILDS },
						["groups"] = {
							i(79057),	-- Ken'Ken's Mask (QI!)
							i(88580),	-- Ken-Ken's Mask (TOY!)
						},
					}),


	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------
	-------------------------------------------------------------------------------------------



					q(30740, {	-- Champion of Chi-Ji
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(30739, {	-- Ellia Ravenmane: Redemption
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(30732, {	-- Ellia Ravenmane: Revenge
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(30737, {	-- Fat Long-Fat: Rematch
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(32134, {	-- Hard Counter
						["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(30734, {	-- Huck Wheelbarrow
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(30735, {	-- Mindel Sunspeaker
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(32139, {	-- Stacked!
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(32221, {	-- Storming the Beach
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(36882, {	-- The Great Angler Returns
						["qg"] = 63721,	-- Nat Pagle
						["sourceQuests"] = { 36608 },	-- Finding Nat Pagle
						["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
						["timeline"] = { ADDED_6_0_3_LAUNCH },
						["requireSkill"] = FISHING,
						["races"] = ALLIANCE_ONLY,
					}),
					q(36609, {	-- The Great Angler Returns
						["qg"] = 63721,	-- Nat Pagle
						["sourceQuests"] = { 36608 },	-- Finding Nat Pagle
						["coord"] = { 68.4, 43.5, KRASARANG_WILDS },
						["timeline"] = { ADDED_6_0_3_LAUNCH },
						["requireSkill"] = FISHING,
						["races"] = HORDE_ONLY,
					}),
					q(30738, {	-- Thelonius
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(30733, {	-- Tukka-Tuk
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
					q(32238, {	-- Universal Remote-Explode
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(32223, {	-- Wanted: Lieutenant Ethan Jacobson
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(32138, {	-- Work Order: Lumber
						["races"] = HORDE_ONLY,
						["isDaily"] = true,
					}),
					q(30736, {	-- Yan Quillpaw
						["qg"] = 60506,	-- Thelonius
						["isDaily"] = true,
					}),
	--[[
					The following quests have all been removed from the game
					q(30677, {	-- Shuttle Service
						["u"] = REMOVED_FROM_GAME,
					}),
	]]--
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50787,	-- Arness the Scale
							50768,	-- Cournith Waterstrider
							50331,	-- Go-Kan
							50340,	-- Gaarn the Toxic
							50352,	-- Qu'nas
							50816,	-- Ruun Ghostpaw
							50830,	-- Spriggin
							50388,	-- Torik-Ethis
						},
						["groups"] = {
							i(87612),	-- Ancient Krasari Helm
							i(87604),	-- Beachcomber's Hat
							i(87609),	-- Brushstalker Helm
							i(87610),	-- Deepwild Hunting Helm
							i(87608),	-- Korjan Mystic's Hood
							i(87606),	-- Tidehunter Helm
							i(87607),	-- Unearthed Dojani Headcover
							i(87605),	-- Crest of the Red Crane
							i(87611),	-- Shen-zin Shell Headguard
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50787, {	-- Arness the Scale
						["coord"] = { 58.7, 43.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
						["groups"] = {
							i(90723),	-- Arnness's Scaled Leggings
						},
					}),
					n(66936, {	-- Clawlord Kril'mandar <The Pinch King>
						["provider"] = { "i", 90172, 1 },	-- Clamshell Band
						["description"] = "Summoned with Clamshell Band, which is created by items dropping from makrura along the coast of Pandaria. Akkalou and Akkalar can be found in The Jade Forest, Damlak in Krasarang Wilds, Kishak in Kun-Lai Summit, Odd'nirok in Townlong Steppes and Clamstok in the Dread Wastes.",
						["coord"] = { 12.6, 82, KRASARANG_WILDS },
						["cost"] = {
							{ "i", 90170, 1 },	-- Clamstok's Clamshell [Dread Wastes]
							{ "i", 90169, 1 },	-- Damlak's Clamshell [Krasarang Wilds]
							{ "i", 90168, 1 },	-- Kishak's Clamshell [Kun-Lai Summit]
							{ "i", 90167, 1 },	-- Akkalar's Clamshell [The Jade Forest]
							{ "i", 90166, 1 },	-- Akkalou's Clamshell [The Jade Forest]
							{ "i", 90171, 1 },	-- Odd'nirok's Clamshell [Townlong Steppes]
						},
						["groups"] = {
							i(90087),	-- Lobstmourne
						},
					}),
					n(50768, {	-- Cournith Waterstrider
						["coord"] = { 30.6, 38.2, KRASARANG_WILDS },
						["groups"] = {
							i(90721),	-- Cournith Waterstrider's Silken Finery
						},
					}),
					n(66934, {	-- Damlak <Servant of Kril'mandar>
						["coords"] = {
							{ 40.0, 88.6, KRASARANG_WILDS },
							{ 38.8, 87.4, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90169),	-- Damlak's Clamshell
						},
					}),
					n(50331, {	-- Go-Kan
						["coord"] = { 39.4, 28.8, KRASARANG_WILDS },
						["groups"] = {
							i(90719),	-- Go-Kan's Golden Trousers
						},
					}),
					n(50340, {	-- Gaarn the Toxic
						["coords"] = {
							{ 56.2, 28.0, KRASARANG_WILDS },
							{ 58.6, 31.4, KRASARANG_WILDS },
							{ 58.6, 34.4, KRASARANG_WILDS },
							{ 54.0, 32.2, KRASARANG_WILDS },
							{ 56.2, 35.2, KRASARANG_WILDS },
							{ 56.2, 38.2, KRASARANG_WILDS },
							{ 53.6, 38.8, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90725),	-- Gaarn's Leggings of Infestation
						},
					}),
					n(70323, {	-- Krakkanon
						i(88563, {	-- Nat's Fishing Journal
							["collectible"] = false,
							["repeatable"] = true,
						--	["questID"] = 31664,	-- An Angler's Quest
							["icon"] = 133743,
						}),
					}),
					n(50352, {	-- Qu'nas
						["coord"] = { 67.2, 23, KRASARANG_WILDS },
						["groups"] = {
							i(90717),	-- Qu'nas' Apocryphal Legplates
						},
					}),
					n(50816, {	-- Ruun Ghostpaw
						["coords"] = {
							{ 39.4, 55.2, KRASARANG_WILDS },
							{ 41.6, 55.2, KRASARANG_WILDS },
							{ 40.4, 52.8, KRASARANG_WILDS },
							{ 42.8, 52.8, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90720),	-- Silent Leggings of the Ghostpaw
						},
					}),
					n(50830, {	-- Spriggin
						["coord"] = { 52.2, 88.8, KRASARANG_WILDS },
						["groups"] = {
							i(90724),	-- Spriggin's Sproggin' Leggin'
						},
					}),
					n(50388, {	-- Torik-Ethis
						["coords"] = {
							{ 14.6, 31.0, KRASARANG_WILDS },
							{ 14.4, 35.6, KRASARANG_WILDS },
							{ 15.6, 35.6, KRASARANG_WILDS },
						},
						["groups"] = {
							i(90718),	-- Torik-Ethis' Bloodied Legguards
						},
					}),
				}),
				n(TREASURES, {
					o(214439, {	-- Barrel of Banana Infused Rum
						["questID"] = 31411,	-- Barrel of Banana Infused Rum Quest Tracker
						["coords"] = {
							-- coords vary due to zone phasing
							{ 52.3, 88.7, KRASARANG_WILDS },
							{ 54.0, 88.0, KRASARANG_WILDS },
						},
						["groups"] = {
							i(87266),	-- Recipe: Banana-Infused Rum (RECIPE!)
						},
					}),
					o(213651, {	-- Equipment Locker
						["coord"] = { 43.7, 92.3, KRASARANG_WILDS },
						["icon"] = 985959,
						["questID"] = 31410,
						["description"] = "On the bottom level of the ship. You will have to go down two sets of stairs.\nThis chest may follow the personal loot rule and be based on your current spec, NOT your Loot Spec.",
						["groups"] = {
							i(86122, {	-- Plankwalking Greaves
								["description"] = "Recommended to be in a Strength DPS Spec to guarantee this item.",
							}),
							i(86115, {	-- Swashbuckling Boots
								["description"] = "Recommended to be in a Leather Agility Spec (Rogue/Feral/Guardian/Brewmaster/Windwalker) to guarantee this item.",
							}),
							i(86117, {	-- Seafarer's Treads of Precision
								["description"] = "Recommended to be in a Cloth DPS Spec (Mage/Warlock) to guarantee this item.",
							}),
							i(86116, {	-- Agile Seafarer's Jackboots
								["description"] = "Recommended to be in a Mail Agility Spec (Hunter/Enhancement) to guarantee this item.",
							}),
							i(86123, {	-- Seafarer's Sturdy Boots
								["description"] = "Recommended to be in a Strength Tank Spec to guarantee this item.",
							}),
							i(86118, {	-- Seafaring Advisor's Slippers
								["description"] = "Recommended to be a Priest (ingame class) to guarantee this item.",
							}),
							i(86119, {	-- Seafarer's Boots of Meditation
								["description"] = "Recommended to be in a Leather Intellect Spec (Mistweaver/Balance/Restoration) to guarantee this item.",
							}),
							i(86120, {	-- Seafaring Sabatons of Meditation
								["description"] = "Recommended to be in a Mail Intellect Spec (Elemental/Restoration) to guarantee this item.",
							}),
							i(86121, {	-- Radiant Seafarer's Boots
								["description"] = "Recommended to be a Paladin in Holy Spec to guarantee this item.",
							}),
						},
					}),
					o(211993, {	-- Hozen Maturity
						["coord"] = { 52.4, 87.6, KRASARANG_WILDS },
					}),
					o(215782, {	-- Origins
						["coord"] = { 30.6, 38.5, KRASARANG_WILDS },
					}),
					o(213653, {	-- Pandaren Fishing Spear
						["coord"] = { 50.8, 49.3, KRASARANG_WILDS },
						["questID"] = 31409,
						["groups"] = {
							i(86124),	-- Pandaren Fishing Spear
						},
					}),
					o(213407, {	-- Quan Tou Kuo the Two Fisted
						["coord"] = { 81.4, 11.4, KRASARANG_WILDS },
					}),
					o(213750, {	-- Saurok Stone Tablet
						["questID"] = 31408,
						["coord"] = { 71.0, 9.0, KRASARANG_WILDS },
						["description"] = "Located at the back of the cave, to the right of the junk pile.",
						["groups"] = {
							i(86220),	-- Saurok Stone Tablet
						},
					}),
					o(214403, {	-- Stack of Papers
						["provider"] = { "i", 87798 },	-- Stack of Papers
						["coord"] = { 52.16, 73.42, KRASARANG_WILDS },
						["questID"] = 31863,
					}),
					o(213422, {	-- The Emperor's Burden - Part 4
						["coord"] = { 40.4, 56.6, KRASARANG_WILDS },
					}),
					o(213330, {	-- The Last Stand
						["coord"] = { 33.3, 25.0, KRASARANG_WILDS },
					}),
					o(213332, {	-- The Lost Dynasty
						["coords"] = {
							-- not sure correctness of these based on phasing maybe?
							{ 50.90, 31.67, KRASARANG_WILDS },
							{ 52.96, 27.42, KRASARANG_WILDS },
						},
					}),
					o(215765, {	-- Waiting for the Turtle
						["coord"] = { 72.2, 31.1, KRASARANG_WILDS },
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(KRASARANG_WILDS, {
			n(FACTIONS, {
				header(HEADERS.Faction, FACTION_DOMINANCE_OFFENSIVE, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
					n(QUESTS, {
						q(32361),	-- triggered after turning in #32352, "A Gathering Storm," part of the Dominance Offensive campaign
						q(32364),	-- triggered after turning in #32448, "Ties with the Past," part of the Dominance Offensive campaign
						q(32437),	-- Tracking Event: Saw Sarannha 1 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign
						q(32438),	-- Tracking Event: Saw Sarannha 2 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign
					}),
				})),
				header(HEADERS.Faction, FACTION_OPERATION_SHIELDWALL, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
					n(QUESTS, {
						q(32357),	-- Tracking Event: Event Complete - triggeres after watching the RP after turning in "Heart of the Alliance" (questID 32316)
						q(32356),	-- Tracking Event: Ambassadors Summoned - triggeres  "Heart of the Alliance" completion
						q(32395),	-- Tracking Event: Saw Avartu - triggered while on "The Divine Bell," part of the Operation: Shieldwall campaign (at the end of the quest before killing Avartu)
						q(32339),	-- Rebuilding the Mallet (Tracker) - triggered after turning in The Head and The Harmonic Ointment (The Handle was turned in earlier, but presumably requires all 3), part of the Operation: Shieldwall campaign
						q(32365),	-- Tracking Event: Epilogue Complete - triggered after turning in "The Silence" and watching the RP, part of the Operation: Shieldwall campaign.  didn't go off until I left the area and turned in another quest (which is a daily that doesn't normally have any additional tracking quests attached, so i know it was from the final campaign quest)
					}),
				})),
				header(HEADERS.Faction, FACTION_THE_ANGLERS, {
					n(QUESTS, {
						q(31371),	-- Tracking Event: Player Has Completed One Anglers Daily
					}),
				}),
			}),
			n(QUESTS, {
				q(30087),	-- FLAG - Kung Fu Intro — triggers either when flying close to the magical barrier or after accepting The "Arcanic Oubliette" (questID 30274)
				q(32477, { ["timeline"] = { ADDED_5_1_0 } }),	-- Tracking Event: Player is Back in Time - going back and forth in time via Taradormi
			}),
		}),
	}),
})));