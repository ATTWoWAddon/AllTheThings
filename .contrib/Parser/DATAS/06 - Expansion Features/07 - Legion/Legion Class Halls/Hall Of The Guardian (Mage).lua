-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
DAILY_EVENT_ROLL = createHeader({
	readable = "Daily Event Roll",
	icon = 1031536,
	text = {
		en = "Event Roll",
		de = "Ereignisliste",
		es = "Rollo de eventos",
		-- TODO: mx = "",
		fr = "Rouleau d'événement",
		it = "Rotolo di eventi",
		ko = "이벤트 롤",
		pt = "Lista de Eventos",
		ru = "Ролл События",
		cn = "事件掷骰",
		-- TODO: tw = "",
	},
	description = {
		en = "If this quest has a checkmark next to it, then check below to see if you are eligible for the scenario portal. If not, that means that you should come back tomorrow.",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
			["maps"] = { HALL_OF_THE_GUARDIAN, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
			["groups"] = {
				n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_11_2_7 } }, {
					ach(42291, {	-- Hidden Potential of the Archmage
						i(250306),	-- Conjured Altar of the Guardian (DECOR!)
					}),
					ach(60966, {	-- Legendary Research of the Tirisgarde
						i(256674),	-- Conjured Archive of the Tirisgarde (DECOR!)
					}),
					ach(60985, {	-- Raise an Army for the Hall of the Guardian
						i(250131),	-- Tirisgarde War Map (DECOR!)
					}),
					ach(42274, {	-- The Archmage's Campaign
						i(245429),	-- Tirisgarde Book Tempest (DECOR!)
					}),
				})),
				n(ARTIFACTS, {
					cl(MAGE, ARCANE, {
						q(43787, {	-- Zone Targets Polymorphed: Azsuna
							["name"] = "Polymorph: Cliffwing Hippogryph",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Azsuna Teleportation Nexus.",
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { AZSUNA },
							["crs"] = { 89386 },	-- Cliffwing Hippogryph [Azsuna]
						}),
						q(43791, {	-- Zone Targets Polymorphed: Suramar
							["name"] = "Polymorph: Heartwood Doe",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Suramar Teleportation Nexus.",
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { SURAMAR },
							["crs"] = { 110043 },	-- Heartwood Doe [Suramar]
						}),
						q(43788, {	-- Zone Targets Polymorphed: Highmountain
							["name"] = "Polymorph: Highpeak Goat",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Highmountain Teleportation Nexus.",
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { HIGHMOUNTAIN },
							["crs"] = { 99636 },	-- Highpeak Goat [Highmountain]
						}),
						q(43789, {	-- Zone Targets Polymorphed: Stormheim
							["name"] = "Polymorph: Plains Runehorn Calf",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Stormheim Teleportation Nexus.",
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { STORMHEIM },
							["crs"] = { 107808 },	-- Plains Runehorn Calf [Stormheim]
						}),
						q(43790, {	-- Zone Targets Polymorphed: Val'sharah
							["name"] = "Polymorph: Wild Dreamrunner",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Val'Sharah Teleportation Nexus.",
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { VALSHARAH },
							["crs"] = { 109819 },	-- Wild Dreamrunner [Val'Sharah]
						}),
						q(43828, {	-- Sheep Summon Daily Roll
							["name"] = "Sheep Summon Daily Roll",
							["description"] = "If the event roll was successful, you'll see an emote from Cote \"Shepherd\" Metcalf saying \"Success!\".\n\nYou should find a Volatile Sheep on the stairs at the entrance to the class hall. Spam click it.\n\nIf this quest has a checkmark next to it and you didn't see Cote's dialogue emote, then that means that you should come back tomorrow.",
							["icon"] = 1384069,
							["sourceQuests"] = {
								43787,	-- Cliffwing Hippogryph [Azsuna]
								43791,	-- Heartwood Doe [Suramar]
								43788,	-- Highpeak Goat [Highmountain]
								43789,	-- Plains Runehorn Calf [Stormheim]
								43790,	-- Wild Dreamrunner [Val'Sharah]
							},
							["provider"] = { "n", 111704 },	-- Cote "Shepherd" Metcalf
							["isDaily"] = true,
							["groups"] = {
								q(43799, {	-- Summoned Sheep Exploded
									["name"] = "Summoned Sheep Exploded",
									["description"] = "The next step is pure RNG - when you teleport to your class order hall you have (once a day) chance to trigger a spawn of Volatile Sheep. If it does spawn for you, you will see Cote's dialogue box saying 'Success!' - the sheep will be standing just next to Dalaran portal, all you have to do is to right-click it couple times to make it explode. After you do you'll get another speech box, this time Extemely Volatile Stormheim Sheep bleating '...' - for some reason you can see someone else's sheep dialogue box, so if you see that one in Hall of the guardian without doing previous mob sheeping, means someone just made their sheep explode in the class hall :) As I said this step is pure luck, so it may take some time until you get your sheep to spawn (for me it was around 3 weeks).",
									["sourceQuests"] = { 43828 },	-- Sheep Summon Daily Roll
									["crs"] = { 111107 },	-- Volatile Sheep
								}),
							},
						}),
						q(43800, {	-- Stormheim Sheep Exploded
							["name"] = "Stormheim Sheep Exploded",
							["description"] = "After that you just need to go to Stormheim in search of Extremely Volatile Stormheim Sheep. This is usually spawning somewhere around Runewood - the best way to find it would be to make /target macro, go to Valdisdall and just run around Runewood spamming macro - it didn't take me even 2 minutes until I got my sheep. Just as the previous one, click it couple times to make it explode, which should result in getting an angry bleat '...' from Enraged Volatile Elwynn Sheep.",
							["sourceQuests"] = { 43799 },	-- Volatile Sheep
							["coords"] = {
								{ 60.0, 55.0, STORMHEIM },
								{ 64.8, 44.8, STORMHEIM },
								{ 70.8, 37.8, STORMHEIM },
								{ 66.6, 53.8, STORMHEIM },
								{ 72.2, 49.2, STORMHEIM },
								{ 70.2, 56.8, STORMHEIM },
								{ 76.8, 62.6, STORMHEIM },
								{ 79.4, 67.8, STORMHEIM },
							},
							["crs"] = { 111691 },	-- Extremely Volatile Stormheim Sheep
						}),
						q(43658, {	-- Hidden Appearance Unlocked
							["name"] = "Hidden Appearance Unlocked",
							["description"] = "Now you need to go to the Tower of Azora in Elwynn Forest. Once there you will see Cote talking to Theocritus. After a short RP bit, he will become hostile and when you kill him, he drops the item.",
							["sourceQuests"] = { 43800 },	-- Extremely Volatile Stormheim Sheep
							["maps"] = { ELWYNN_FOREST },
							["crs"] = { 111704 },	-- Cote "Shepherd" Metcalf
							["groups"] = {
								i(139558, {	-- The Woolomancer's Charge
									artifact(846),	-- Aluneth
								}),
							}
						}),
					}),
					cl(MAGE, FIRE, {
						i(139559, {	-- The Stars' Design
							artifact(893),	-- Felo'melorn
							artifact(893),	-- Heart of the Phoenix
						}),
					}),
					cl(MAGE, FROST, {
						gt(386, {		-- Teleportation Nexus
							["description"] = "A set of 5 portals is generated in the Class Hall; there is a small daily chance instead you will be phased to Frostfire Ridge where you can loot Everburning Crystal. You will be alerted to this chance by an emote when walking around on the stairs of your class hall.",
							["groups"] = {
								n(DAILY_EVENT_ROLL, {
									["questID"] = 44384,	-- "Daily Portal Event Roll" on WoWHead
									["isDaily"] = true,
								}),
								n(113513, {	-- Asher <Fury of Frostfire>
									["description"] = "If this quest has a checkmark next to it, then that means the scenario portal is active. He only appears in a special phase in Frostfire Ridge upon taking the portal.",
									["sourceQuest"] = 44384,	-- Daily Portal Event Roll
									["groups"] = {
										o(255953, {	-- Everburning Crystal
											["coord"] = { 70.0, 38.1, FROSTFIRE_RIDGE },
											["groups"] = {
												i(139560, {	-- Everburning Crystal
													artifact(180),	-- Ebonchill
												}),
											},
										}),
									},
								}),
							},
						}),
					}),
				}),
				n_TrainingFollowers({
					follower(769),	-- Arcane Golems
					follower(817),	-- Arcane Golems
					follower(818),	-- Arcane Golems
					follower(819),	-- Arcane Golems
					follower(1004),	-- Kirin Tor Guardians
					follower(1005),	-- Kirin Tor Guardians
					follower(1006),	-- Kirin Tor Guardians
					follower(1007),	-- Kirin Tor Guardians
					follower(768),	-- Kirin Tor Invokers
					follower(823),	-- Kirin Tor Invokers
					follower(824),	-- Kirin Tor Invokers
					follower(825),	-- Kirin Tor Invokers
					follower(659),	-- Tirisgarde Apprentices
					follower(820),	-- Tirisgarde Apprentices
					follower(821),	-- Tirisgarde Apprentices
					follower(822),	-- Tirisgarde Apprentices
					follower(660),	-- Water Elemental
					follower(814),	-- Water Elemental
					follower(815),	-- Water Elemental
					follower(816),	-- Water Elemental
				}),
				n(QUESTS, {
					-- Intro
					q(41035, {	-- Felstorm's Plea
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["maps"] = { LEGION_DALARAN },
					}),
					q(41036, {	-- The Dreadlord's Prize
						["sourceQuest"] = 41035,	-- Felstorm's Plea
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["maps"] = { LEGION_DALARAN },
						["groups"] = { spell(204287) },	-- Teleport: Hall of the Guardian
					}),
					-- Artifact
					q(41085, {	-- A Mage's Weapon
						["sourceQuest"] = 41036,	-- The Dreadlord's Prize
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 59.0, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(43441, {	-- A Second Weapon
						["sourceQuest"] = 41085,	-- A Mage's Weapon
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(44310, {	-- Thrice the Power
						["sourceQuest"] = 43441,	-- A Second Weapon
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					cl(MAGE, ARCANE, {
						q(42001, {	-- Aluneth, Greatstaff of the Magna
							["sourceQuests"] = {
								41085,	-- A Mage's Weapon
								43441,	-- A Second Weapon
								44310,	-- Thrice the Power
							},
							["sourceQuestNumRequired"] = 1,
							["qgs"] = {
								102700,	-- Meryl Felstorm
								109222,	-- Meryl Felstorm
							},
							["coords"] = {
								{ 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
								{ 71.6, 60.2, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							},
							["groups"] = { i(136694) },	-- Ancient Scrolls of Meitre (QI!)
						}),
						q(42006, {	-- A New Threat
							["sourceQuests"] = { 42001 },	-- Aluneth, Greatstaff of the Magna
							["provider"] = { "n", 105081 },	-- Archmage Kalec
							["coord"] = { 28.6, 49.9, LEGION_DALARAN },
							["groups"] = { i(136410) },	-- Kalec's Image Crystal (PQI!)
						}),
						q(42007, {	-- A Forgotten Enemy
							["sourceQuest"] = 42006,	-- A New Threat
							["provider"] = { "o", 248398 },	-- Ethereal Communication Device
							["coord"] = { 56.7, 69.1, DRAGONBLIGHT },
						}),
						q(42008, {	-- Eyes of the Dragon
							["sourceQuest"] = 42007,	-- A Forgotten Enemy
							["provider"] = { "n", 105917 },	-- Image of Kalec
							["coord"] = { 56.6, 69.1, DRAGONBLIGHT },
							["groups"] = { i(173430) },	-- Nexus Teleport Scroll (QI!)
						}),
						q(42009, {	-- Harnessing the Arcane
							["sourceQuest"] = 42008,	-- Eyes of the Dragon
							["provider"] = { "n", 105917 },	-- Image of Kalec
							["coord"] = { 27.8, 26.7, BOREAN_TUNDRA },
						}),
						q(42010, {	-- Arcane Unleashed
							["sourceQuest"] = 42009,	-- Harnessing the Arcane
							["provider"] = { "n", 105917 },	-- Image of Kalec
							["coord"] = { 27.8, 26.7, BOREAN_TUNDRA },
						}),
						q(42011, {	-- The Nexus Vault
							["sourceQuest"] = 42010,	-- Arcane Unleashed
							["provider"] = { "n", 105917 },	-- Image of Kalec
							["coord"] = { 27.8, 26.7, BOREAN_TUNDRA },
							["maps"] = { 736 },	-- The Nexus (Scenario Map)
							["groups"] = {
								o(249814, {	-- Aluneth
									i(127857, {	-- Aluneth
										["ItemAppearanceModifierID"] = 9,
										["groups"] = { artifact(126) },	-- Aluneth
									}),
								}),
							},
						}),
					}),
					cl(MAGE, FIRE, {
						q(40267, {	-- An Unexpected Message
							["sourceQuests"] = {
								41085,	-- A Mage's Weapon
								43441,	-- A Second Weapon
								44310,	-- Thrice the Power
							},
							["sourceQuest"] = 41085,	-- A Mage's Weapon
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["groups"] = { i(130131) },	-- Glowing Resonate Crystal (PQI!)
						}),
						q(40270, {	-- The Path of Atonement
							["sourceQuest"] = 40267,	-- An Unexpected Message
							["provider"] = { "n", 99398 },	-- Archmage Modera
							["coord"] = { 28.7, 37.3, HILLSBRAD_FOOTHILLS },
						}),
						q(11997, {	-- The Frozen Flame
							["sourceQuest"] = 40270,	-- The Path of Atonement
							["provider"] = { "n", 99415 },	-- Aethas Sunreaver
							["coord"] = { 28.7, 37.2, HILLSBRAD_FOOTHILLS },
							["maps"] = { 700 },	-- Icecrown Citadel (Scenario Map)
							["groups"] = {
								o(247494, {	-- Felo'melorn
									["coord"] = { 51.9, 16.2, 700 },	-- Icecrown Citadel (Scenario Map)
									["groups"] = {
										i(128820, {	-- Felo'melorn
											["ItemAppearanceModifierID"] = 9,
											["groups"] = { artifact(124) },	-- Felo'melorn
										}),
									},
								}),
								i(133959, {	-- Heart of the Phoenix
									["ItemAppearanceModifierID"] = 9,
									["groups"] = { artifact(124) },	-- Heart of the Phoenix
								}),
							},
						}),
					}),
					cl(MAGE, FROST, {
						q(42452, {	-- Finding Ebonchill
							["sourceQuests"] = {
								41085,	-- A Mage's Weapon
								43441,	-- A Second Weapon
								44310,	-- Thrice the Power
							},
							["sourceQuest"] = 41085,	-- A Mage's Weapon
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
						q(42455, {	-- Alodi's Gems
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102846 },	-- Alodi
							["coord"] = { 60.6, 43.4, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["groups"] = {
								o(250576, {	-- Powerful Mana Gem
									["coords"] = {
										{ 51.0, 15.4, LEGION_DALARAN },
										{ 53.8, 18.6, LEGION_DALARAN },
										{ 54.0, 15.6, LEGION_DALARAN },
									},
									["groups"] = { i(141317) },	-- Powerful Mana Gem (QI!)
								}),
							},
						}),
						q(42476, {	-- The Deadwind Site
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["groups"] = {
								o(250602, {	-- Functional Ward
									["coord"] = { 35.9, 64.2, DEADWIND_PASS },
									["groups"] = { i(141327) },	-- Functional Ward (QI!)
								}),
								i(173698, {	-- Karazhan Scroll (PQI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
								o(250611, {	-- Ritual Focusing Crystal
									["coord"] = { 34.2, 59.9, DEADWIND_PASS },
									["groups"] = { i(141329) },	-- Ritual Focusing Crystal (QI!)
								}),
								o(250600, {
									["coord"] = { 35.1, 62.3, DEADWIND_PASS },
									["groups"] = { i(141328) },	-- Ritual Notes (QI!)
								}),
							},
						}),
						q(42477, {	-- Daio the Decrepit
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["groups"] = {
								i(173699, {	-- Blasted Lands Scroll (PQI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
								i(141330),	-- Demon Stone (QI!)
							},
						}),
						q(42479, {	-- The Mage Hunter
							["sourceQuests"] = {
								42455,	-- Alodi's Gems
								42477,	-- Daio the Decrepit
								42476,	-- The Deadwind Site
							},
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["groups"] = {
								o(251049, {	-- Ebonchill
									["coord"] = { 67.1, 92.8, BROKEN_ISLES },
									["groups"] = {
										i(128862, {	-- Ebonchill
											["ItemAppearanceModifierID"] = 9,
											["groups"] = { artifact(168) },	-- Ebonchill
										}),
									},
								}),
							},
						}),
						q(42429, {	-- Memories of Ebonchill
							["description"] = "You need to have Ebonchill equipped.",
							["sourceQuest"] = 42479,	-- The Mage Hunter
							["provider"] = { "n", 107452 },	-- Old Fillmaff
							["coord"] = { 53.2, 41.5, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
					}),
					q(44240, {	-- Orange is the New Purple
						["sourceQuests"] = {
							42011,	-- The Nexus Vault
							11997,	-- The Frozen Flame
							42479,	-- The Mage Hunter
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 112440 },	-- Jackson Watkins
						["coord"] = { 44.8, 57.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { i(139749) },	-- Cowl of Tirisgarde
					}),
					q(41114, {	-- The Champion's Return
						["sourceQuests"] = {
							42011,	-- The Nexus Vault
							11997,	-- The Frozen Flame
							42479,	-- The Mage Hunter
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 105081 },	-- Archmage Kalec
						["coord"] = { 28.6, 49.9, LEGION_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(41125, {	-- Unlocked Potential
						["sourceQuest"] = 41114,	-- The Champion's Return
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Choose Zone
					q(41112, {	-- The Great Akazamzarak
						["sourceQuests"] = {
							-- #if BEFORE 8.0.1
							41125,	-- Unlocked Potential
							-- #else
							41114,	-- The Champion's Return
							-- #endif
						},
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 56.5, 33.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { i(134060) },	-- A Sizeable Pouch of Gold (QI!)
					}),
					q(41113, {	-- The Only Way to Travel
						["sourceQuest"] = 41112,	-- The Great Akazamzarak
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 48.5, 63.4, LEGION_DALARAN },
					}),
					q(41124, {	-- The Tirisgarde Reborn
						["sourceQuest"] = 41113,	-- The Only Way to Travel
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 60.4, 34.6, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(41141, {	-- A Conjuror's Duty
						["sourceQuest"] = 41124,	-- The Tirisgarde Reborn
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.6, 60.2, HALL_OF_THE_GUARDIAN },
					}),
					-- Learn Mission Table & Research
					q(42175, {	-- Growing Power
						["sourceQuest"] = 41141,	-- A Conjuror's Duty
						["provider"] = { "n", 112688 },	-- Meryl Felstorm
						["maps"] = { LEGION_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(42663, {	-- Rise, Champions
						["sourceQuests"] = { 42175 },	-- Growing Power
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42662, {	-- Champion: Archmage Kalec
						["sourceQuest"] = 42663,	-- Rise, Champions
						["provider"] = { "n", 108247 },	-- Archmage Kalec <Kirin Tor>
						["coord"] = { 56.3, 37.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(716) },	-- Archmage Kalec
					}),
					q(42685, {	-- Champion: Archmage Modera
						["sourceQuest"] = 42663,	-- Rise, Champions
						["provider"] = { "n", 108248 },	-- Archmage Modera <Kirin Tor>
						["coord"] = { 55.3, 39.6, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(717) },	-- Archmage Modera
					}),
					q(42703, {	-- Technical Wizardry
						["sourceQuest"] = 42663,	-- Rise, Champions
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42126, {	-- Archmage Omniara
						["sourceQuest"] = 42703,	-- Technical Wizardry
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.8, 63.1, HALL_OF_THE_GUARDIAN },
					}),
					q(42687, {	-- Troops in the Field
						["sourceQuest"] = 42127,	-- Building Our Troops
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.9, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					q(44098, {	-- Recruiting Apprentices
						["sourceQuest"] = 42171,	-- Final Exit
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.8, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					q(42696, {	-- Tech It Up A Notch
						["sourceQuest"] = 42687,	-- Troops in the Field
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.9, 63.1, HALL_OF_THE_GUARDIAN },
					}),
					-- Chapter 1
					q(42433, {	-- Ancient Magic
						["sourceQuest"] = 42696,	-- Tech It Up a Notch
						["provider"] = { "n", 107482 },	-- Archmage Vargoth (mobileNPC)
						["coord"] = { 78.0, 58.5, HALL_OF_THE_GUARDIAN },	-- Walks around the room
					}),
					q(42418, {	-- An Unexpected Visitor
						["sourceQuest"] = 42433,	-- Ancient Magic
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.9, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					q(42434, {	-- A Covert Operation
						["sourceQuest"] = 42418,	-- An Unexpected Visitor
						["provider"] = { "n", 107341 },	-- Ravandwyr
						["coord"] = { 61.8, 59.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42435, {	-- Prepare To Be Assimilated
						["sourceQuest"] = 42434,	-- A Covert Operation
						["provider"] = { "n", 107532 },	-- Ravandwyr
						["coord"] = { 64.8, 37.9, AZSUNA },
						["groups"] = {
							i(139185),	-- Nar'thalas Scroll (QI!)
							i(137598),	-- Pearl of Arcane Wisdom (QI!)
						},
					}),
					q(42166, {	-- What Is Going On Here?
						["sourceQuest"] = 42435,	-- Prepare To Be Assimilated
						["provider"] = { "n", 106530 },	-- Ravandwyr
						["coord"] = { 64.3, 31.3, AZSUNA },
					}),
					q(42149, {	-- Some Knowledge Shouldn't Be Shared
						["sourceQuest"] = 42166,	-- What Is Going On Here?
						["provider"] = { "n", 106656 },	-- Esara Verrinde
						["coord"] = { 66.4, 33.5, AZSUNA },
						["groups"] = {
							o(249739, {	-- Empyrean Fel Tome
								["coords"] = {
									{ 64.4, 33.4, AZSUNA },
									{ 64.9, 32.4, AZSUNA },
									{ 65.2, 32.6, AZSUNA },
									{ 65.9, 33.8, AZSUNA },
									{ 66.0, 32.6, AZSUNA },
								},
								["groups"] = { i(136981) },	-- Empyrean Fel Tome (QI!)
							}),
						},
					}),
					q(42206, {	-- The Next Level Has Arrived
						["sourceQuest"] = 42166,	-- What Is Going On Here?
						["provider"] = { "n", 106656 },	-- Esara Verrinde
						["coord"] = { 66.4, 33.5, AZSUNA },
						["groups"] = { i(137190) },	-- Rune of Opening (QI!)
					}),
					q(42171, {	-- Final Exit
						["sourceQuests"] = {
							42149,	-- Some Knowledge Shouldn't Be Shared
							42206,	-- The Next Level Has Arrived
						},
						["provider"] = { "n", 106656 },	-- Esara Verrinde
						["coord"] = { 66.4, 33.5, AZSUNA },
						["groups"] = {
							o(265474, {	-- Fel Chest
								["coord"] = { 66.1, 32.6, AZSUNA },
								["groups"] = { i(137210) },	-- A Missive from Archmage Vargoth (QI!)
							}),
						},
					}),
					q(42222, {	-- Empyrean Society Report
						["sourceQuest"] = 42171,	-- Final Exit
						["provider"] = { "n", 106530 },	-- Ravandwyr
						["coord"] = { 66.0, 32.3, AZSUNA },
					}),
					q(42706, {	-- Champion: Esara Verrinde
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 108380 },	-- Esara Verrinde <Magisters>
						["coord"] = { 74.0, 59.4, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(726) },	-- Esara Verrinde
					}),
					q(42705, {	-- Champion: Ravandwyr
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 108377 },	-- Ravandwyr <Senior Kirin Tor Apprentice>
						["coord"] = { 70.4, 53.3, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(725) },	-- Ravandwyr
					}),
					q(42127, {	-- Building Our Troops
						["sourceQuest"] = 42126,	-- Archmage Omniara
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.8, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					-- Chapter 2
					q(42416, {	-- The Council is in Session
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42423, {	-- Archmage Vargoth's Retreat
						["sourceQuest"] = 42416,	-- The Council is in Session
						["provider"] = { "n", 90431 },	-- Archmage Ansirem Runeweaver
						["coord"] = { 28.4, 49.4, LEGION_DALARAN },
						["groups"] = {
							o(250417, {	-- Archmage Vargoth's Journal
								["coord"] = { 21.8, 53.2, LEGION_DALARAN },
								["groups"] = { i(137571) },	-- Archmage Vargoth's Journal (QI!)
							}),
						}
					}),
					q(42424, {	-- Following In His Footsteps
						["sourceQuest"] = 42423,	-- Archmage Vargoth's Retreat
						["provider"] = { "n", 107423 },	-- Archmage Kalec
						["coord"] = { 22.2, 55.1, LEGION_DALARAN },
					}),
					q(42451, {	-- Kalec's Plan
						["sourceQuest"] = 42424,	-- Following In His Footsteps
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.9, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					q(42508, {	-- Not A Toothless Dragon
						["sourceQuest"] = 42451,	-- Kalec's Plan
						["provider"] = { "n", 42508 },	-- Kalecgos
						["coord"] = { 29.2, 87.6, SURAMAR },
					}),
					q(42521, {	-- The Enemy of My Enemy...
						["sourceQuest"] = 42508,	-- Not a Toothless Dragon
						["provider"] = { "n", 111553 },	-- Kalecgos
						["coord"] = { 34.1, 83.4, SURAMAR },
						["groups"] = { i(137659) },	-- Rusty Key (QI!)
					}),
					q(42494, {	-- More Than Just A Food Vendor
						["sourceQuest"] = 42508,	-- Not a Toothless Dragon
						["provider"] = { "n", 111553 },	-- Kalecgos
						["coord"] = { 34.1, 83.4, SURAMAR },
						["groups"] = { i(138115) },	-- Kalec's Image Crystal
					}),
					q(42493, {	-- Impending Dooooooom!
						["sourceQuest"] = 42521,	-- The Enemy of My Enemy...
						["provider"] = { "n", 108085 },	-- Image of Kalec
						["coord"] = { 64.2, 29.5, 683 },	-- The Arcway Vaults
						["maps"] = { SURAMAR },
					}),
					q(42520, {	-- A Terrible Loss
						["sourceQuests"] = {
							42493,	-- Impending Dooooooom!
							42494,	-- More Than Just A Food Vendor
						},
						["provider"] = { "n", 108085 },	-- Image of Kalec
						["coord"] = { 42.0, 60.8, 683 },	-- The Arcway Vaults
						["maps"] = { SURAMAR },
						["groups"] = {
							i(139754),	-- Bracers of Tirisgarde
							artifact(128),	-- Aluneth
							artifact(492),	-- Felo'melorn
							artifact(492),	-- Heart of the Phoenix
							artifact(171),	-- Ebonchill
						},
					}),
					q(42702, {	-- Champion: Millhouse Manastorm
						["sourceQuests"] = {
							42493,	-- Impending Doooooooom!
							42494,	-- More Than just A Food Vendor
						},
						["provider"] = { "n", 108342 },	-- Millhouse Manastorm
						["coord"] = { 56.0, 58.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(723) },	-- Millhouse Manastorm
					}),
					-- Chapter 3
					q(42707, {	-- Eye of Azshara: A Magical Affliction
						["sourceQuest"] = 42520,	-- A Terrible Loss
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["maps"] = { 713 },	-- Eye of Azshara
						["groups"] = {
							i(138272),	-- Khadgar's Vial (PQI!)
							--
							i(138271),	-- Vial of Arcane Water (QI!)
						},
					}),
					q(42940, {	-- When There's a Will, There's a Way
						["sourceQuest"] = 42520,	-- A Terrible Loss
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(44689, {	-- The Might of the Tirisgarde
						["sourceQuest"] = 42520,	-- A Terrible Loss
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42734, {	-- Into the Oculus
						["sourceQuest"] = 44689,	-- The Might of the Tirisgarde
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["maps"] = { 799, 800, 801, 802, 803 },	-- The Oculus (Scenario Map)
						["groups"] = {
							i(139751),	-- Robes of Tirisgarde
							title(61),	-- Archmage <Name>
						},
					}),
					q(42914, {	-- Champion: Meryl Felstorm
						["sourceQuest"] = 42734,	-- Into the Oculus
						["provider"] = { "n", 109222 },	-- Meryl Felstorm
						["coord"] = { 72.8, 61.7, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(761) },	-- Meryl Felstorm
					}),
					q(42917, {	-- Champion: Archmage Vargoth
						["sourceQuest"] = 42734,	-- Into the Oculus
						["provider"] = { "n", 109226 },	-- Archmage Vargoth <Kirin Tor>
						["coords"] = {
							{ 67.5, 54.3, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							{ 71.2, 63.5, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						},
						["groups"] = { follower(762) },	-- Archmage Vargoth
					}),
					q(43415, {	-- A Hero's Weapon
						["sourceQuest"] = 42914,	-- Champion: Meryl Felstorm
						["provider"] = { "n", 109222 },	-- Meryl Felstorm
						["coord"] = { 72.8, 61.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = {
							artifact(132),	-- Aluneth
							artifact(495),	-- Felo'melorn
							artifact(495),	-- Heart of the Phoenix
							artifact(172),	-- Ebonchill
						},
					}),
					-- Interlude
					q(45997, {	-- An Urgent Warning
						["sourceQuest"] = 43415,	-- A Hero's Weapon
						["provider"] = { "n", 118428 },	-- Injured Conjuror
						["coord"] = { 80.9, 63.1, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
						["isBreadcrumb"] = true,
					}),
					q(45998, {	-- Investigate the Broken Shore
						["sourceQuest"] = 45997,	-- An Urgent Warning
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.9, 63.1, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45437, {	-- An Urgent Situation
						["description"] = "Granted immediately upon return to the order hall.",
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							-- #IF AFTER 7.2.0
							43415,	-- A Hero's Weapon
							-- #ELSE
							45998,	-- Investigate the Broken Shore
							-- #ENDIF
						},
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44766, {	-- Backup Plan
						["sourceQuest"] = 45437,	-- An Urgent Situation
						["provider"] = { "n", 118242 },	-- Aethas Sunreaver
						["coord"] = { 72.2, 62.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46335, {	-- The Vault of the Tirisgarde
						["sourceQuest"] = 44766,	-- Backup Plan
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.2, 37.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							o(268476, {	-- Cache of the Sin'dorei
								["coord"] = { 58.6, 67.6, HALL_OF_THE_GUARDIAN },
								["groups"] = { i(146404) },	-- Coronet of the Lu'minellia (QI!)
							}),
							o(268477, {	-- Crystallized Sillithid Essence
								["coord"] = { 63.1, 43.1, HALL_OF_THE_GUARDIAN },
								["groups"] = { i(146405) },	-- Crystallized Silithid Essence (QI!)
							}),
							o(268474, {	-- Erno's Enigma
								["coord"] = { 82.6, 25.8, HALL_OF_THE_GUARDIAN },
								["groups"] = { i(146402) },	-- Erno's Enigma (QI!)
							}),
							o(268479, {	-- Nightborne Soulstone
								["coord"] = { 72.8, 60.5, HALL_OF_THE_GUARDIAN },
								["groups"] = { i(146409) },	-- Nightborne Soulstone (QI!)
							}),
							o(268475, {	-- Twilight Reliquary
								["coords"] = {
									{ 50.0, 58.5, HALL_OF_THE_GUARDIAN },
									{ 50.0, 58.5, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
								},
								["groups"] = { i(146403) },	-- Twilight Device (QI!)
							}),
						},
					}),
					q(46338, {	-- A Creative Solution
						["sourceQuest"] = 46335,	-- The Vault of the Tirisgarde
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.2, 37.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45207, {	-- The Nightborne Apprentice
						["sourceQuest"] = 46338,	-- A Creative Solution
						["provider"] = { "n", 118242 },	-- Aethas Sunreaver
						["coord"] = { 72.2, 62.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46705, {	-- Retaliation
						["sourceQuest"] = 45207,	-- The Nightborne Apprentice
						["provider"] = { "n", 121357 },	-- Arcanist Ryanna
						["coord"] = { 55.8, 41.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46339, {	-- Keymaster Orlis
						["sourceQuest"] = 45207,	-- The Nightborne Apprentice
						["provider"] = { "n", 121357 },	-- Arcanist Ryanna
						["coord"] = { 55.8, 41.9, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = { i(142241) },	-- Unusual Crystal (QI!)
					}),
					q(46345, {	-- Into the Hornet's Nest
						["sourceQuests"] = {
							46339,	-- Keymaster Orlis
							46705,	-- Retaliation
						},
						["provider"] = { "n", 121358 },	-- Arcanist Ryanna
						["coord"] = { 54.5, 39.1, SURAMAR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(44768, {	-- Nyell's Workshop
						["sourceQuest"] = 46345,	-- Into the Hornet's Nest
						["provider"] = { "n", 116321 },	-- Arcanist Ryanna
						["coord"] = { 47.1, 23.5, 691 },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = { i(142212) },	-- Nighborne Construct Progenitor (QI!)
					}),
					q(44770, {	-- Secrets of the Shal'dorei
						["sourceQuest"] = 46345,	-- Into the Hornet's Nest
						["provider"] = { "n", 116321 },	-- Arcanist Ryanna
						["coord"] = { 47.1, 23.5, 691 },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							o(266092, {	-- Nightborne Scroll
								i(142211),	-- Ancient Shal'dorei Scroll (QI!)
							}),
						},
					}),
					q(46351, {	-- Keep it Secret, Keep it Safe
						["sourceQuests"] = {
							44768,	-- Nyell's Workshop
							44770,	-- Secrets of the Shal'dorei
						},
						["provider"] = { "n", 116321 },	-- Arcanist Ryanna
						["coord"] = { 47.1, 23.5, 691 },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45251, {	-- Redundancy
						["sourceQuest"] = 46351,	-- Keep it Secret, Keep it Safe
						["provider"] = { "n", 118242 },	-- Aethas Sunreaver
						["coord"] = { 72.3, 62.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45614, {	-- Lady Remor'za
						["sourceQuest"] = 45251,	-- Redundancy
						["provider"] = { "n", 117331 },	-- Aethas Sunreaver
						["coord"] = { 49.2, 18.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45586, {	-- Shield Amplification
						["sourceQuest"] = 45251,	-- Redundancy
						["provider"] = { "n", 117331 },	-- Aethas Sunreaver
						["coord"] = { 49.2, 18.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = { i(143795) },	-- Nightborne Soulstone (QI!)
					}),
					q(46000, {	-- Arming Dalaran
						["sourceQuests"] = {
							45614,	-- Lady Remor'za
							45586,	-- Shield Amplification
						},
						["provider"] = { "n", 119001 },	-- Aethas Sunreaver
						["coord"] = { 49.2, 18.6, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46290, {	-- Return of the Archmage
						["sourceQuest"] = 46000,	-- Arming Dalaran
						["provider"] = { "n", 118242 },	-- Aethas Sunreaver
						["coord"] = { 27.3, 51.5, LEGION_DALARAN },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46043, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Aethas Sunreaver
						["sourceQuest"] = 46290,	-- Return of the Archmage
						["provider"] = { "n", 117497 },	-- Aethas Sunreaver
						["coord"] = { 72.2, 63.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = { follower(994) },	-- Aethas Sunreaver
					})),
					q(45844, {	-- Avocation of Antonidas
						["sourceQuest"] = 46043,	-- Champion: Aethas Sunreaver
						["provider"] = { "n", 117770 },	-- Invoker Threadgold
						["coord"] = { 45.2, 61.8, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45846, {	-- Chilled to the Core
						["sourceQuest"] = 45844,	-- Avocation of Antonidas
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = { i(143837) },	-- Tri-Disc of Frost (QI!)
					}),
					q(45845, {	-- Burning Within
						["sourceQuest"] = 45844,	-- Avocation of Antonidas
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							o(267190, {	-- Tri-Disc of Fire
								["coord"] = { 51.6, 89.6, DEADWIND_PASS },
								["groups"] = { i(143836) },	-- Tri-Disc of Fire (QI!)
							}),
						},
					}),
					q(45847, {	-- Close to Home
						["sourceQuest"] = 45844,	-- Avocation of Antonidas
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["groups"] = {
							o(267181, {	-- Tri-Disc of the Arcane
								["coord"] = { 53.8, 47.7, LEGION_DALARAN },
								["groups"] = { i(143838) },	-- Tri-Disc of the Arcane (QI!)
							}),
						},
					}),
					q(45354, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Dispersion of the Discs
						["sourceQuests"] = {
							45846,	-- Chilled to the Core
							45845,	-- Burning Within
							45847,	-- Close to Home
						},
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["maps"] = { 881 },	-- The Eye of Eternity (Scenario Map)
						["groups"] = { mount(229376) },	-- Archmage's Prismatic Disc (MOUNT!)
					})),
					-- Side Quest Ari and Arcane Destroyer
					q(42954, {	-- A Small Favor
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.4, 55.3, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42955, {	-- The Proper Way of Things
						["sourceQuest"] = 42954,	-- A Small Favor
						["provider"] = { "n", 109307 },	-- Ari
						["coord"] = { 37.0, 48.3, HALL_OF_THE_GUARDIAN },
						["groups"] = {
							i(138965),	-- Wand of Siphoning (PQI!)
							--
							i(138853),	-- Phial of Nightwell Energy (QI!)
						},
					}),
					q(42956, {	-- Ari's Package
						["sourceQuest"] = 42955,	-- The Proper Way of Things
						["provider"] = { "n", 109307 },	-- Ari
						["coord"] = { 37.0, 48.3, HALL_OF_THE_GUARDIAN },
						["groups"] = {
							i(138866),	-- Well-Wrapped Package (PQI!)
							--
							i(141880),	-- Ari's Wooden Ring
						},
					}),
					q(42959, {	-- Three Is a Lucky Number
						["sourceQuest"] = 42956,	-- Ari's Package
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["groups"] = {
							i(138971),	-- Cask of Honey Brew (QI!)
							i(138968),	-- Glittering Necklace (QI!)
							i(138969),	-- Handful of Ancient Golden Discs (QI!)
						},
					}),
					q(42704, {	-- Champion: Arcane Destroyer
						["sourceQuest"] = 42959,	-- Three Is a Lucky Number
						["provider"] = { "n", 108368 },	-- Arcane Destroyer
						["coord"] = { 38.2, 46.1, HALL_OF_THE_GUARDIAN },
						["groups"] = { follower(724) },	-- Arcane Destroyer
					}),
					-- Side Quest: The Great Akazamzarak
					q(45615, {	-- Finders Keepers
						["description"] = "Must wait for a weekly reset after completing the class mount.",
						["sourceQuest"] = 45354,	-- Dispersion of the Discs
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45630, {	-- Servant to No One
						["sourceQuest"] = 45615,	-- Finders Keepers
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46722, {	-- Nothing Up My Sleeve
						["sourceQuest"] = 45630,	-- Servant to No One
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46723, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Down the Rabbit Hole
						["sourceQuest"] = 46722,	-- Nothing Up My Sleeve
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["groups"] = { i(147838) },	-- Akazamzarak's Spare Hat (TOY!)
					})),
					q(46724, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: The Great Akazamzarak
						["sourceQuest"] = 46723,	-- Down the Rabbit Hole
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["groups"] = { follower(995) },	-- The Great Akazamzarak
					})),
					-- Misc
					q(43749, {	-- Hitting the Books
						["provider"] = { "n", 110624 },	-- Edirah
						["coord"] = { 64.6, 50.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46143, {	-- Knowledge is Power
						["sourceQuest"] = 43749,	-- Hitting the Books
						["provider"] = { "n", 110624 },	-- Edirah
						["coord"] = { 64.6, 50.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46156, {	-- Furthering Knowledge
						["sourceQuest"] = 46143,	-- Knowledge is Power
						["provider"] = { "n", 110624 },	-- Edirah
						["coord"] = { 64.6, 50.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46782, {	-- Further Advancement
						["sourceQuest"] = 46290,	-- Return of the Archmage
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.8, 63.0, HALL_OF_THE_GUARDIAN },
						["timeline"] = { ADDED_7_2_0 },
					}),
				}),
				n(SPECIAL, {
					gt(389, {	-- Arcane Armaments
						q(44207, {	-- Portal Full of Shiny Things
							["sourceQuest"] = 42696,	-- Tech It Up A Notch
							["provider"] = { "n", 110427 },	-- Minuette
							["coord"] = { 82.9, 56.7, HALL_OF_THE_GUARDIAN },
						}),
					}),
					gt(387, {	-- Arcane Divination
						q(44208, {	-- Fate and Time
							["sourceQuest"] = 42696,	-- Tech It Up A Notch
							["provider"] = { "n", 112982 },	-- Researcher Tulius
							["coord"] = { 41.9, 21.3, HALL_OF_THE_GUARDIAN },
						}),
					}),
					gt(388,	{	-- Arcane Intuition
						q(44209, {	-- The Might of Dalaran
							["provider"] = { "n", 111734 },	-- Conjurer Awlyn
							["coord"] = { 78.1, 53.0, HALL_OF_THE_GUARDIAN },
							["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						}),
					}),
				}),
				n(VENDORS, {
					n(112440, {	-- Jackson Watkins <Tirisgarde Quartermaster>
						["coord"] = { 45.6, 57.6, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["groups"] = {
							i(140939, {	-- Archmage's Armor Kit
								["cost"] = { { "c", ORDER_RESOURCES, 2000 } },
							}),
							i(140550),	-- Archmage's Battle Staff
							i(140971, {	-- Archmage's Greater Armor Kit
								["cost"] = { { "c", ORDER_RESOURCES, 4000 } },
							}),
							i(140970, {	-- Archmage's Lesser Armor Kit
								["cost"] = { { "c", ORDER_RESOURCES, 500 } },
							}),
							i(139747, {	-- Boots of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139754, {	-- Bracers of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(250306, {	-- Conjured Altar of the Guardian (DECOR!)
								["sourceAchievement"] = 42291,	-- Hidden Potential of the Archmage
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 5000 } },
							}),
							i(256674, {	-- Conjured Archive of the Tirisgarde (DECOR!)
								["sourceAchievement"] = 60966,	-- Legendary Research of the Tirisgarde
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 3000 } },
							}),
							i(139749, {	-- Cowl of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139753, {	-- Girdle of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139748, {	-- Gloves of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139750, {	-- Leggings of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139752, {	-- Mantle of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139751, {	-- Robes of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(250239, {	-- Tirisgarde Banner (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 1000 } },
							}),
							i(245429, {	-- Tirisgarde Book Tempest (DECOR!)
								["sourceAchievement"] = 42274,	-- The Archmage's Campaign
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 1500 } },
							}),
							i(250132, {	-- Tirisgarde Brazier (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 500 } },
							}),
							i(250130, {	-- Tirisgarde Candle (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 500 } },
							}),
							i(250131, {	-- Tirisgarde War Map (DECOR!)
								["sourceAchievement"] = 60985,	-- Raise an Army for the Hall of the Guardian
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = { { "c", ORDER_RESOURCES, 2000 } },
							}),
						},
					}),
					n(103169, {	-- Uthel'nay
						["sourceQuest"] = 45354,	-- Dispersion of the Discs
						["groups"] = {
							i(147832, {	-- Magical Saucer (TOY!)
								["sourceQuest"] = 45354,	-- Dispersion of the Discs
								["cost"] = { { "c", ORDER_RESOURCES, 1000 } },
								["timeline"] = { ADDED_7_2_0 },
							}),
						},
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
			q(46768, { ["timeline"] = { ADDED_7_2_0 } }),	-- Akazamzarak 1 Week Cooldown - triggered after completing "Champion: Aethas Sunreaver"
			q(46776, { ["timeline"] = { ADDED_7_2_0 } }),	-- Akazamzarak 1 Week Cooldown - triggered after completing "Champion: Aethas Sunreaver"
			q(45914, { ["timeline"] = { ADDED_7_2_0 } }),	-- Ch 5 Soulstone Shielded Tracking Quest - triggers after completing "Keep it Secret, Keep it Safe" (questID 46351)
			q(42976),	-- Mage Ch 3 Tracking Quest	- completed "Three Is a Lucky Number" (questID 42959) and saw the Arcane Destroyer be summoned
			q(44645),	-- Tracking Quest: 7.0 Class Hall - Mage - Pacing Mission 1 - Unlocks Ch 2 - SBV - completed the "Ancient Magic" mission
			q(44474),	-- Tracking Quest: Following In His Footsteps 1 - completed the "Archmage Vargoth's Travels: The Nightborne Vault" mission
			q(44475),	-- Tracking Quest: Following In His Footsteps 2 - completed the "Archmage Vargoth's Travels: Ruins of Nar'thalas" mission
			q(44476),	-- Tracking Quest: Following In His Footsteps 3 - completed the "Archmage Vargoth's Travels: The Scholars of Tel'anor" mission
			q(44477),	-- Tracking Quest: Following In His Footsteps 4 - completed the "Archmage Vargoth's Travels: The Forests of Ashenvale" mission
			q(44478),	-- Tracking Quest: Following In His Footsteps 5 - completed the "Archmage Vargoth's Travels: Best Friends Forever" mission
			q(44467),	-- Tracking Quest: When There's a Will, There's a Way 1 - completed the "Oculus Preparations: A Nightmarish Situation" mission
			q(44468),	-- Tracking Quest: When There's a Will, There's a Way 2 - completed the "Oculus Preparations: Communication Disruption" mission
			q(44469),	-- Tracking Quest: When There's a Will, There's a Way 3 - completed the "Oculus Preparations: Ley Them Down" mission
			q(44470),	-- Tracking Quest: When There's a Will, There's a Way 4 - completed the "Oculus Preparations: Eternos" mission
			q(44472),	-- Tracking Quest: When There's a Will, There's a Way 5 - completed the "Oculus Preparations: On The Offensive" mission
			q(42727),	-- Transition to Forge Quests - triggered after completing The Mage Hunter as first artifact weapon
		})),
	}),
})));
