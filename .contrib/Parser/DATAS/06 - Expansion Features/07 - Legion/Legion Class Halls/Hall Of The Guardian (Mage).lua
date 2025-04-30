-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
DAILY_EVENT_ROLL = createHeader({
	readable = "Daily Event Roll",
	icon = 1031536,
	text = {
		en = "Event Roll",
		es = "Rollo de eventos",
		de = "Ereignisliste",
		fr = "Rouleau d'événement",
		it = "Rotolo di eventi",
		pt = "Lista de Eventos",
		ru = "Ролл События",
		ko = "이벤트 롤",
		cn = "事件掷骰",
	},
	description = {
		en = "If this quest has a checkmark next to it, then check below to see if you are eligible for the scenario portal. If not, that means that you should come back tomorrow.",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(MAGE, bubbleDownSelf({ ["classes"] = { MAGE } }, {
			["maps"] = { HALL_OF_THE_GUARDIAN, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
			["g"] = {
				n(ARTIFACTS, {
					cl(MAGE, ARCANE, {
						q(43787, {	-- Zone Targets Polymorphed: Azsuna
							["name"] = "Polymorph: Cliffwing Hippogryph",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Azsuna Teleportation Nexus.",
							["crs"] = { 89386 },	-- Cliffwing Hippogryph [Azsuna]
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { AZSUNA },
						}),
						q(43791, {	-- Zone Targets Polymorphed: Suramar
							["name"] = "Polymorph: Heartwood Doe",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Suramar Teleportation Nexus.",
							["crs"] = { 110043 },	-- Heartwood Doe [Suramar]
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { SURAMAR },
						}),
						q(43788, {	-- Zone Targets Polymorphed: Highmountain
							["name"] = "Polymorph: Highpeak Goat",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Highmountain Teleportation Nexus.",
							["crs"] = { 99636 },	-- Highpeak Goat [Highmountain]
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { HIGHMOUNTAIN },
						}),
						q(43789, {	-- Zone Targets Polymorphed: Stormheim
							["name"] = "Polymorph: Plains Runehorn Calf",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Stormheim Teleportation Nexus.",
							["crs"] = { 107808 },	-- Plains Runehorn Calf [Stormheim]
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { STORMHEIM },
						}),
						q(43790, {	-- Zone Targets Polymorphed: Val'sharah
							["name"] = "Polymorph: Wild Dreamrunner",
							["description"] = "If this quest has a checkmark next to it, then that means that you have polymorphed this npc already and can move on to the next one!\n\nTake the Val'Sharah Teleportation Nexus.",
							["crs"] = { 109819 },	-- Wild Dreamrunner [Val'Sharah]
							["sourceQuest"] = 42011,	-- The Nexus Vault
							["maps"] = { VALSHARAH },
						}),
						q(43828, {	-- Sheep Summon Daily Roll
							["name"] = "Sheep Summon Daily Roll",
							["isDaily"] = true,
							["provider"] = { "n", 111704 },	-- Cote "Shepherd" Metcalf
							["description"] = "If the event roll was successful, you'll see an emote from Cote \"Shepherd\" Metcalf saying \"Success!\".\n\nYou should find a Volatile Sheep on the stairs at the entrance to the class hall. Spam click it.\n\nIf this quest has a checkmark next to it and you didn't see Cote's dialogue emote, then that means that you should come back tomorrow.",
							["icon"] = 1384069,
							["sourceQuests"] = {
								43787,	-- Cliffwing Hippogryph [Azsuna]
								43791,	-- Heartwood Doe [Suramar]
								43788,	-- Highpeak Goat [Highmountain]
								43789,	-- Plains Runehorn Calf [Stormheim]
								43790,	-- Wild Dreamrunner [Val'Sharah]
							},
							["g"] = {
								q(43799, {	-- Summoned Sheep Exploded
									["name"] = "Summoned Sheep Exploded",
									["description"] = "The next step is pure RNG - when you teleport to your class order hall you have (once a day) chance to trigger a spawn of Volatile Sheep. If it does spawn for you, you will see Cote's dialogue box saying 'Success!' - the sheep will be standing just next to Dalaran portal, all you have to do is to right-click it couple times to make it explode. After you do you'll get another speech box, this time Extemely Volatile Stormheim Sheep bleating '...' - for some reason you can see someone else's sheep dialogue box, so if you see that one in Hall of the guardian without doing previous mob sheeping, means someone just made their sheep explode in the class hall :) As I said this step is pure luck, so it may take some time until you get your sheep to spawn (for me it was around 3 weeks).",
									["crs"] = { 111107 },	-- Volatile Sheep
									["sourceQuests"] = { 43828 },	-- Sheep Summon Daily Roll
								}),
							},
						}),
						q(43800, {	-- Stormheim Sheep Exploded
							["name"] = "Stormheim Sheep Exploded",
							["description"] = "After that you just need to go to Stormheim in search of Extremely Volatile Stormheim Sheep. This is usually spawning somewhere around Runewood - the best way to find it would be to make /target macro, go to Valdisdall and just run around Runewood spamming macro - it didn't take me even 2 minutes until I got my sheep. Just as the previous one, click it couple times to make it explode, which should result in getting an angry bleat '...' from Enraged Volatile Elwynn Sheep.",
							["crs"] = { 111691 },	-- Extremely Volatile Stormheim Sheep
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
						}),
						q(43658, {	-- Hidden Appearance Unlocked
							["name"] = "Hidden Appearance Unlocked",
							["description"] = "Now you need to go to the Tower of Azora in Elwynn Forest. Once there you will see Cote talking to Theocritus. After a short RP bit, he will become hostile and when you kill him, he drops the item.",
							["crs"] = { 111704 },	-- Cote "Shepherd" Metcalf
							["sourceQuests"] = { 43800 },	-- Extremely Volatile Stormheim Sheep
							["maps"] = { ELWYNN_FOREST },
							["g"] = {
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
							["g"] = {
								n(DAILY_EVENT_ROLL, {
									["questID"] = 44384,	-- "Daily Portal Event Roll" on WoWHead
									["isBreadcrumb"] = true,
									["isDaily"] = true,
								}),
								n(113513, {	-- Asher <Fury of Frostfire>
									["description"] = "If this quest has a checkmark next to it, then that means the scenario portal is active. He only appears in a special phase in Frostfire Ridge upon taking the portal.",
									["sourceQuest"] = 44384,	-- Daily Portal Event Roll
									["g"] = {
										i(139560, {	-- Everburning Crystal
											artifact(180),	-- Ebonchill
										}),
									},
								}),
							},
						}),
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
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
				})),
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
						["g"] = {
							spell(204287),	-- Teleport: Hall of the Guardian
						},
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
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
						q(42006, {	-- A New Threat
							["sourceQuests"] = { 42001 },	-- Aluneth, Greatstaff of the Magna
							["coord"] = { 28.6, 49.9, LEGION_DALARAN },
							["provider"] = { "n", 105081 },	-- Archmage Kalec
						}),
						q(42007, {	-- A Forgotten Enemy
							["provider"] = { "o", 248398 },	-- Ethereal Communication Device
							["sourceQuest"] = 42006,	-- A New Threat
							["coord"] = { 56.7, 69.1, DRAGONBLIGHT },
						}),
						q(42008, {	-- Eyes of the Dragon
							["sourceQuest"] = 42007,	-- A Forgotten Enemy
							["provider"] = { "n", 105917 },	-- Image of Kalec
							["coord"] = { 56.6, 69.1, DRAGONBLIGHT },
							["g"] = {
								i(173430),	-- Nexus Teleport Scroll (QI!)
							},
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
							["g"] = {
								i(127857, {	-- Aluneth
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(126),	-- Aluneth
									},
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
							["sourceQuestNumRequired"] = 1,
							["sourceQuest"] = 41085,	-- A Mage's Weapon
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 55.3, 38.1, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
						q(40270, {	-- The Path of Atonement
							["sourceQuest"] = 40267,	-- An Unexpected Message
							["provider"] = { "n", 99398 },	-- Archmage Modera
							["coord"] = { 28.6, 37.2, HILLSBRAD_FOOTHILLS },
						}),
						q(11997, {	-- The Frozen Flame
							["sourceQuest"] = 40270,	-- The Path of Atonement
							["provider"] = { "n", 99415 },	-- Aethas Sunreaver
							["coord"] = { 28.6, 37.2, HILLSBRAD_FOOTHILLS },
							["maps"] = { 700 },	-- Icecrown Citadel (Scenario Map)
							["g"] = {
								i(128820, {	-- Felo'melorn
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(124),	-- Felo'melorn
									},
								}),
								i(133959, {	-- Heart of the Phoenix
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(124),	-- Heart of the Phoenix
									},
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
							["sourceQuestNumRequired"] = 1,
							["sourceQuest"] = 41085,	-- A Mage's Weapon
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
						q(42455, {	-- Alodi's Gems
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102846 },	-- Alodi
							["coord"] = { 60.6, 43.4, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						}),
						q(42476, {	-- The Deadwind Site
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["g"] = {
								i(141327),	-- Functional Ward (QI!)
								i(173698, {	-- Karazhan Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
								i(141329),	-- Ritual Focusing Crystal (QI!)
								i(141328),	-- Ritual Notes (QI!)
							},
						}),
						q(42477, {	-- Daio the Decrepit
							["sourceQuest"] = 42452,	-- Finding Ebonchill
							["provider"] = { "n", 102700 },	-- Meryl Felstorm
							["coord"] = { 59.1, 43.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
							["g"] = {
								i(173699, {	-- Blasted Lands Scroll (QI!)
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
							["g"] = {
								i(128862, {	-- Ebonchill
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(168),	-- Ebonchill
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
						["g"] = {
							i(139749),	-- Cowl of Tirisgarde
						},
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
						-- #if BEFORE 8.0.1
						["sourceQuests"] = { 41125 },	-- Unlocked Potential
						-- #endif
						["provider"] = { "n", 102700 },	-- Meryl Felstorm
						["coord"] = { 56.5, 33.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
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
						["g"] = {
							follower(716),	-- Archmage Kalec
						},
					}),
					q(42685, {	-- Champion: Archmage Modera
						["sourceQuest"] = 42663,	-- Rise, Champions
						["provider"] = { "n", 108248 },	-- Archmage Modera <Kirin Tor>
						["coord"] = { 55.3, 39.6, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["g"] = {
							follower(717),	-- Archmage Modera
						},
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
						["coord"] = { 80.9, 63.0, HALL_OF_THE_GUARDIAN },
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["sourceQuest"] = 42127,	-- Building Our Troops
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
					-- Chap 1
					q(42433, {	-- Ancient Magic
						["sourceQuest"] = 42696,	-- Tech It Up a Notch
						["provider"] = { "n", 107482 },	-- Archmage Vargoth
						["coord"] = { 74.5, 63.0, HALL_OF_THE_GUARDIAN },
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
					}),
					q(42206, {	-- The Next Level Has Arrived
						["sourceQuest"] = 42166,	-- What Is Going On Here?
						["provider"] = { "n", 106656 },	-- Esara Verrinde
						["coord"] = { 66.4, 33.5, AZSUNA },
					}),
					q(42171, {	-- Final Exit
						["sourceQuests"] = {
							42149,	-- Some Knowledge Shouldn't Be Shared
							42206,	-- The Next Level Has Arrived
						},
						["provider"] = { "n", 106656 },	-- Esara Verrinde
						["coord"] = { 66.4, 33.5, AZSUNA },
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
						["g"] = {
							follower(726),	-- Esara Verrinde
						},
					}),
					q(42705, {	-- Champion: Ravandwyr
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 108377 },	-- Ravandwyr <Senior Kirin Tor Apprentice>
						["coord"] = { 70.4, 53.3, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["g"] = {
							follower(725),	-- Ravandwyr
						},
					}),
					q(42127, {	-- Building Our Troops
						["sourceQuest"] = 42126,	-- Archmage Omniara
						["provider"] = { "n", 108515 },	-- Archmage Melis
						["coord"] = { 80.8, 63.0, HALL_OF_THE_GUARDIAN },
					}),
					-- Chap 2
					q(42416, {	-- The Council is in Session
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42423, {	-- Archmage Vargoth's Retreat
						["sourceQuest"] = 42416,	-- The Council is in Session
						["provider"] = { "n", 90431 },	-- Archmage Ansirem Runeweaver
						["coord"] = { 28.4, 49.4, LEGION_DALARAN },
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
					}),
					q(42494, {	-- More Than Just A Food Vendor
						["sourceQuest"] = 42508,	-- Not a Toothless Dragon
						["provider"] = { "n", 111553 },	-- Kalecgos
						["coord"] = { 34.1, 83.4, SURAMAR },
					}),
					q(42493, {	-- Impending Dooooooom!
						["sourceQuest"] = 42521,	-- The Enemy of My Enemy...
						["provider"] = { "n", 108085 },	-- Image of Kalec
						["coord"] = { 64.2, 29.5, 683 },
						["maps"] = { SURAMAR },
					}),
					q(42520, {	-- A Terrible Loss
						["sourceQuests"] = {
							42493,	-- Impending Dooooooom!
							42494,	-- More Than Just A Food Vendor
						},
						["provider"] = { "n", 108085 },	-- Image of Kalec
						["coord"] = { 41.7, 59.8, 683 },
						["maps"] = { SURAMAR },
						["g"] = {
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
						["g"] = {
							follower(723),	-- Millhouse Manastorm
						},
					}),
					-- Chap 3
					q(42707, {	-- Eye of Azshara: A Magical Affliction
						["sourceQuest"] = 42520,	-- A Terrible Loss
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["maps"] = { 713 },	-- Eye of Azshara
					}),
					q(42940, {	-- When There's a Will, There's a Way
						["sourceQuest"] = 42520,	-- A Terrible Loss
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.9, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(44689, {	-- The Might of the Tirisgarde
						["sourceQuests"] = { 42707 },	-- Eye of Azshara: A Magical Affliction
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42734, {	-- Into the Oculus
						["sourceQuest"] = 44689,	-- The Might of the Tirisgarde
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["maps"] = { 799, 800, 801, 802, 803 },	-- The Oculus (Scenario Map)
						["g"] = {
							i(139751),	-- Robes of Tirisgarde
							title(61),	-- Archmage <Name>
						},
					}),
					q(42914, {	-- Champion: Meryl Felstorm
						["sourceQuest"] = 42734,	-- Into the Oculus
						["provider"] = { "n", 109222 },	-- Meryl Felstorm
						["coord"] = { 72.8, 61.7, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["g"] = {
							follower(761),	-- Meryl Felstorm
						},
					}),
					q(42917, {	-- Champion: Archmage Vargoth
						["sourceQuest"] = 42734,	-- Into the Oculus
						["provider"] = { "n", 109226 },	-- Archmage Vargoth <Kirin Tor>
						["coord"] = { 71.2, 63.5, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["g"] = {
							follower(762),	-- Archmage Vargoth
						},
					}),
					q(43415, {	-- A Hero's Weapon
						["sourceQuest"] = 42914,	-- Champion: Meryl Felstorm
						["provider"] = { "n", 109222 },	-- Meryl Felstorm
						["coord"] = { 72.8, 61.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["g"] = {
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
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
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
					}),
					q(46338, {	-- A Creative Solution
						["sourceQuest"] = 46335,	-- The Vault of the Tirisgarde
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.2, 37.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45207, {	-- The Nightborne Apprentice
						["provider"] = { "n", 118242 },	-- Aethas Sunreaver
						["sourceQuest"] = 46338,	-- A Creative Solution
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
					}),
					q(44770, {	-- Secrets of the Shal'dorei
						["sourceQuest"] = 46345,	-- Into the Hornet's Nest
						["provider"] = { "n", 116321 },	-- Arcanist Ryanna
						["coord"] = { 47.1, 23.5, 691 },
						["timeline"] = { ADDED_7_2_0 },
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
					}),
					q(46000, {	-- Arming Dalaran
						["sourceQuests"] = {
							45614,	-- Lady Remor'za
							45586,	-- Shield Amplification
						},
						["provider"] = { "n", 117331 },	-- Aethas Sunreaver
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
						["g"] = {
							follower(994),	-- Aethas Sunreaver
						},
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
						["g"] = {
							i(143837),	-- Tri-Disc of Frost (QI!)
						},
					}),
					q(45845, {	-- Burning Within
						["sourceQuest"] = 45844,	-- Avocation of Antonidas
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(143836),	-- Tri-Disc of Fire (QI!)
						},
					}),
					q(45847, {	-- Close to Home
						["sourceQuest"] = 45844,	-- Avocation of Antonidas
						["provider"] = { "n", 108247 },	-- Archmage Kalec
						["coord"] = { 56.3, 38.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = {
							i(143838),	-- Tri-Disc of the Arcane (QI!)
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
						["g"] = {
							mount(229376),	-- Archmage's Prismatic Disc (MOUNT!)
						},
					})),
					-- Side Quest Ari and Arcane Destroyer
					q(42954, {	-- A Small Favor
						["sourceQuest"] = 42222,	-- Empyrean Society Report
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 55.5, 77.0, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42955, {	-- The Proper Way of Things
						["sourceQuest"] = 42954,	-- A Small Favor
						["provider"] = { "n", 109307 },	-- Ari
						["coord"] = { 37.0, 48.3, HALL_OF_THE_GUARDIAN },
					}),
					q(42956, {	-- Ari's Package
						["sourceQuest"] = 42955,	-- The Proper Way of Things
						["provider"] = { "n", 109307 },	-- Ari
						["coord"] = { 37.0, 48.3, HALL_OF_THE_GUARDIAN },
						["g"] = {
							i(141880),	-- Ari's Wooden Ring
						},
					}),
					q(42959, {	-- Three Is a Lucky Number
						["sourceQuest"] = 42956,	-- Ari's Package
						["provider"] = { "n", 107351 },	-- Archmage Khadgar
						["coord"] = { 71.7, 54.8, HALL_OF_THE_GUARDIAN_2ND_FLOOR },
					}),
					q(42704, {	-- Champion: Arcane Destroyer
						["sourceQuest"] = 42959,	-- Three Is a Lucky Number
						["provider"] = { "n", 108368 },	-- Arcane Destroyer
						["coord"] = { 38.2, 46.1, HALL_OF_THE_GUARDIAN },
						["g"] = {
							follower(724),	-- Arcane Destroyer
						},
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
						["g"] = {
							i(147838),	-- Akazamzarak's Spare Hat (TOY!)
						},
					})),
					q(46724, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: The Great Akazamzarak
						["sourceQuest"] = 46723,	-- Down the Rabbit Hole
						["provider"] = { "n", 103092 },	-- The Great Akazamzarak
						["coord"] = { 81.5, 60.3, HALL_OF_THE_GUARDIAN },
						["g"] = {
							follower(995),	-- The Great Akazamzarak
						},
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
						["g"] = {
							i(140939, {	-- Archmage's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(140550),	-- Archmage's Battle Staff
							i(140971, {	-- Archmage's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(140970, {	-- Archmage's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139747, {	-- Boots of Tirisgarde
								["cost"] = 5000000,	-- 500g
							}),
							i(139754, {	-- Bracers of Tirisgarde
								["cost"] = 5000000,	-- 500g
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
						},
					}),
					n(103169, {	-- Uthel'nay
						["sourceQuest"] = 45354,	-- Dispersion of the Discs
						["g"] = {
							i(147832, {	-- Magical Saucer (TOY!)
								["sourceQuest"] = 45354,	-- Dispersion of the Discs
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
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