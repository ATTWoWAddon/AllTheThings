-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(DEATHKNIGHT, bubbleDownSelf({ ["classes"] = { DEATHKNIGHT } }, {
			["maps"] = { ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },	-- Uppstairs/Down
			["g"] = {
				n(ARTIFACTS, {
					cl(DEATHKNIGHT, BLOOD, {
						i(139546, {	-- Twisting Anima of Souls
							artifact(921),	-- Maw of the Damned
						}),
					}),
					cl(DEATHKNIGHT, FROST, {
						i(139547, {	-- Runes of the Darkening
							artifact(870),	-- Blades of the Fallen Prince [Main Hand]
							artifact(870),	-- Blades of the Fallen Prince [Off Hand]
						}),
					}),
					cl(DEATHKNIGHT, UNHOLY, {
						n(111093, {	-- Stitchwork
							["questID"] = 44188,	-- Hidden Tracking
							["maps"] = { ICECROWN_CITADEL, 187, 188, 189, 190, 191, 192, 193 },	-- Icecrown Citadel
							["description"] = "\"Professor Putricide's Lost Journal\" drops from ghouls summoned by your Apocalypse or Army of the Dead spells anywhere in the world. If this is checked off as completed, you will be eligible to enter the trap door in Putricide's room under the Green Slime Pipe. You do not have to interact with the book to be eligible.",
							["g"] = {
								i(139548, {	-- The Bonereaper's Hook
									artifact(404),	-- Apocalypse
								}),
							},
						}),
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(1862),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(663),	-- Ebon Knights
					follower(901),	-- Ebon Knights
					follower(902),	-- Ebon Knights
					follower(903),	-- Ebon Knights
					follower(894),	-- Ebon Ravagers
					follower(904),	-- Ebon Ravagers
					follower(905),	-- Ebon Ravagers
					follower(906),	-- Ebon Ravagers
					follower(664),	-- Geist Swarm
					follower(898),	-- Geist Swarm
					follower(899),	-- Geist Swarm
					follower(900),	-- Geist Swarm
					follower(662),	-- Pack of Ghouls
					follower(895),	-- Pack of Ghouls
					follower(896),	-- Pack of Ghouls
					follower(897),	-- Pack of Ghouls
					follower(1008),	-- Ebon Knight Frostreavers
					follower(1009),	-- Ebon Knight Frostreavers
					follower(1010),	-- Ebon Knight Frostreavers
					follower(1011),	-- Ebon Knight Frostreavers

					-- TODO itemID 140767
					follower(783),	-- Abomination
					follower(941),	-- Alliance:Abomination \\ Horde:Abomination
					follower(942),	-- Abomination
				})),
				n(QUESTS, {
					q(40714, {	-- The Call To War
						["maps"] = { LEGION_DALARAN },
					}),
					-- Artifact
					q(40715, {	-- A Pact of Necessity
						["sourceQuests"] = { 40714 },	-- The Call to War
						["provider"] = { "n", 101441 },	-- Duke Lankral
						["coord"] = { 72.8, 46.8, LEGION_DALARAN },
					}),
					q(43962, {	-- Blades of Destiny
						["sourceQuest"] = 40715,	-- A Pact of Necessity
						["provider"] = { "n", 109788 },	-- Duke Lankral
						["coord"] = { 58.2, 60.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
					}),
					q(44401, {	-- A Weapon For Every Occasion
						["sourceQuest"] = 43962, -- Blades of Destiny
						["provider"] = { "n", 109788 },	-- Duke Lankral
						["coord"] = { 58.2, 60.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
					}),
					cl(DEATHKNIGHT, BLOOD, {
						q(40740, {	-- The Dead and the Damned
							["sourceQuests"] = {
								40715,	-- A Pact of Necessity
								43962,	-- Blades of Destiny
								44401,	-- A Weapon For Every Occasion
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 101441 },	-- Duke Lankral
								{ "n", 109788 },	-- Duke Lankral
							},
							["coords"] = {
								{ 72.8, 46.8, LEGION_DALARAN },
								{ 58.2, 60.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
							},
							["maps"] = { 714 },	-- Niskara (Scenario Map)
							["g"] = {
								i(128402, {	-- Maw of the Damned
									artifact(107),	-- Maw of the Damned
								}),
							},
						}),
					}),
					cl(DEATHKNIGHT, FROST, {
						q(38990, {	-- The Call of Icecrown
							["sourceQuests"] = {
								40715,	-- A Pact of Necessity
								43962,	-- Blades of Destiny
								44401,	-- A Weapon For Every Occasion
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 101441 },	-- Duke Lankral
								{ "n", 109788 },	-- Duke Lankral
							},
							["coords"] = {
								{ 72.8, 46.8, LEGION_DALARAN },
								{ 58.2, 60.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
							},
							["maps"] = { 698, 700, 701 },	-- Icecrown Citadel (Scenario Map)
							["g"] = {
								i(128292, {	-- Blades of the Fallen Prince [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(111),	-- Blades of the Fallen Prince [Main Hand]
									},
								}),
								i(128293, {	-- Blades of the Fallen Prince [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(111),	-- Blades of the Fallen Prince [Off Hand]
									},
								}),
								i(127009),	-- Fragment of Frostmourne
							},
						}),
					}),
					cl(DEATHKNIGHT, UNHOLY, {
						q(40930, {	-- Apocalypse
							["sourceQuests"] = {
								40715,	-- A Pact of Necessity
								43962,	-- Blades of Destiny
								44401,	-- A Weapon For Every Occasion
							},
							["sourceQuestNumRequired"] = 1,
							["providers"] = {
								{ "n", 101441 },	-- Duke Lankral
								{ "n", 109788 },	-- Duke Lankral
							},
							["coords"] = {
								{ 72.8, 46.8, LEGION_DALARAN },
								{ 58.2, 60.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
							},
							["g"] = {
								i(173527, {	-- Duskwood Scroll (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(40931, {	-- Following the Curse
							["sourceQuest"] = 40930,	-- Apocalypse
							["provider"] = { "n", 100323 },	-- Revil Kost
							["coord"] = { 77.4, 36.2, DUSKWOOD },
						}),
						q(40932, {	-- Disturbing the Past
							["sourceQuest"] = 40931,	-- Following the Curse
							["provider"] = { "n", 100729 },	-- Revil Kost
							["coord"] = { 52.3, 34.5, DEADWIND_PASS },
						}),
						q(40933, {	-- A Grisly Task
							["sourceQuest"] = 40932,	-- Disturbing the Past
							["provider"] = { "n", 100729 },	-- Revil Kost
							["coord"] = { 52.3, 34.5, DEADWIND_PASS },
						}),
						q(40934, {	-- The Dark Riders (Good)
							["description"] = "Obtainable if you are good to Revil Kost",
							["sourceQuest"] = 40933, -- A Grisly Task
							["provider"] = { "n", 100812 },	-- Revil Kost
							["coord"] = { 49.4, 74.6, DEADWIND_PASS },
							["g"] = {
								i(128403, {	-- Apocalypse
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(110),	-- Standard
									},
								}),
							},
						}),
						q(40986, {	-- The Dark Riders (Bad)
							["description"] = "Obtainable if you attack Revil Kost",
							["sourceQuest"] = 40933, -- A Grisly Task
							["provider"] = { "n", 100812 },	-- Revil Kost
							["coord"] = { 49.4, 74.6, DEADWIND_PASS },
							["g"] = {
								i(128403, {	-- Apocalypse
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(110),	-- Standard
									},
								}),
							},
						}),
						q(40935, {	-- The Call of Vengeance (Good)
							["description"] = "Obtainable if you are good to Revil Kost",
							["sourceQuest"] = 40934, -- The Dark Riders (Good)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["coord"] = { 68.4, 27.0, DEADWIND_PASS },
							["isBreadcrumb"] = true,
						}),
						q(40987, {	-- The Call of Vengeance (Bad)
							["description"] = "Obtainable if you attack Revil Kost",
							["sourceQuest"] = 40986, -- The Dark Riders (Bad)
							["provider"] = { "n", 101282 },	-- Revil Kost
							["coord"] = { 68.4, 27.0, DEADWIND_PASS },
							["isBreadcrumb"] = true,
						}),
					}),
					q(39757, {	-- Keeping Your Edge
						["sourceQuests"] = {
							40740,	-- The Dead and the Damned
							38990,	-- The Call of Icecrown
							40935,	-- The Call of Vengeance (Good)
							40987,	-- The Call of Vengeance (Bad)
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 97111 },	-- Illanna Dreadmoore
						["coord"] = { 49.6, 52.6, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(39761, {	-- Advanced Runecarving
						["sourceQuest"] = 39757, -- Keeping Your Edge
						["provider"] = { "n", 97072 },	-- Grand Master Siegesmith Corvus
						["coord"] = { 60.2, 60.0, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					q(44217, {	-- Armor Fit For A Deathlord
						["sourceQuest"] = 39761, -- Advanced Runecarving
						["provider"] = { "n", 93550 },	-- Quartermaster Ozorg
						["coord"] = { 44.2, 37.5, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["g"] = {
							i(139676),	-- Deathlord's Helm
						},
					}),
					-- Choose Zone
					q(39832, {	-- Plans and Preparations
						["sourceQuest"] = 39757, -- Keeping Your Edge
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.1, 50.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(39799, {	-- Our Next Move
						["sourceQuest"] = 39832, -- Plans and Preparations
						["provider"] = { "n", 93437 },	-- Siouxsie the Banshee
						["coord"] = { 50.6, 51.6, 647 },
					}),
					q(42449, {	-- Return of the Four Horsemen
						["sourceQuest"] = 39799, -- Our Next Move
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.1, 50.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(42484, {	-- The Firstborn Rises
						["sourceQuest"] = 42449, -- Return of the Four Horsemen
						["provider"] = { "n", 107554 },	-- Thassarian
						["coord"] = { 47.3, 17.7, DUROTAR },
					}),
					-- Learn Mission Table & Research
					q(44550, {	-- Called to Acherus
						["sourceQuests"] = { 42484 },	-- The Firstborn Rises
						["provider"] = { "n", 114282 },	-- Dread Commander Thalanor
						["isBreadcrumb"] = true,
						["maps"] = { LEGION_DALARAN },
					}),
					q(43264, {	-- Rise, Champions
						["sourceQuests"] = { 44550 },	-- Called to Acherus
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.1, 50.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(39816, {	-- Champion: Thassarian
						["sourceQuest"] = 43264,	-- Rise, Champions
						["provider"] = { "n", 93456 },	-- Thassarian
						["coord"] = { 55.9, 30.8, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(584),	-- Thassarian
						},
					}),
					q(39818, {	-- Champion: Nazgrim
						["sourceQuest"] = 43264,	-- Rise, Champions
						["provider"] = { "n", 109890 },	-- Nazgrim
						["coord"] = { 39.8, 68.2, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(586),	-- Nazgrim
						},
					}),
					q(43265, {	-- Spread the Word
						["sourceQuest"] = 43264,	-- Rise, Champions
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43266, {	-- Recruiting the Troops
						["sourceQuest"] = 43265, -- Spread the Word
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43267, {	-- Troops in the Field
						["sourceQuest"] = 43266,	-- Recruiting the Troops
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43268, {	-- Tech It Up A Notch
						["sourceQuest"] = 43267, -- Troops in the Field
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43539, {	-- Salanar the Horseman
						["sourceQuest"] = 43267, -- Troops in the Field
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					-- Chap 1
					q(42533, {	-- The Ruined Kingdom
						["sourceQuests"] = {
							43539, -- Salanar the Horseman
							43268, -- Tech It Up A Notch
						},
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.1, 50.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(42535, {	-- Death... and Decay
						["sourceQuest"] = 42533, -- The Ruined Kingdom
						["provider"] = { "n", 107806 },	-- Prince Galen Trollbane
						["coord"] = { 19.4, 67.3, ARATHI_HIGHLANDS },
					}),
					q(42534, {	-- Our Oldest Enemies
						["sourceQuest"] = 42533, -- The Ruined Kingdom
						["provider"] = { "n", 107806 },	-- Prince Galen Trollbane
						["coord"] = { 19.4, 67.3, ARATHI_HIGHLANDS },
					}),
					q(42536, {	-- Regicide
						["sourceQuests"] = {
							42535, -- Death... and Decay
							42534, -- Our Oldest Enemies
						},
						["provider"] = { "n", 108042 },	-- Thassarian
						["coord"] = { 19.6, 67.0, ARATHI_HIGHLANDS },
					}),
					q(42537, {	-- The King Rises
						["sourceQuest"] = 42536, -- Regicide
						["provider"] = { "n", 108042 },	-- Thassarian
						["coord"] = { 23.4, 61.4, ARATHI_HIGHLANDS },
					}),
					q(44243, {	-- Champion: Thoras Trollbane
						["sourceQuest"] = 42537, -- The King Rises
						["provider"] = { "n", 113419 },	-- King Thoras Trollbane
						["coord"] = { 59.5, 34.0, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(838),	-- Thoras Trollbane
						},
					}),
					q(42708, {	-- A Personal Request
						["sourceQuest"] = 42537, -- The King Rises
						["provider"] = { "n", 93456 },	-- Thassarian
						["coord"] = { 56.0, 30.7, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["maps"] = { UNDERCITY },
						["g"] = {
							artifact(357),	-- Maw of the Damned
							artifact(376),	-- Blades of the Fallen Prince [Main Hand]
							-- artifact(376),	-- Blades of the Fallen Prince [Off Hand]
							artifact(390),	-- Apocalypse
						},
					}),
					q(44244, {	-- Champion: Koltira Deathweaver
						["sourceQuest"] = 42708,	-- A Personal Request
						["provider"] = { "n", 93453 },	-- Koltira Deathweaver
						["coord"] = { 66.3, 64.6, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(599),	-- Koltira Deathweaver
						},
					}),
					-- Chap 2
					q(43899, {	-- Steeds of the Damned
						["sourceQuest"] = 42708, -- A Personal Request
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(44082, {	-- Knights of the Ebon Blade
						["sourceQuest"] = 42708, -- A Personal Request
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43571, {	-- Neltharion's Lair: Braid of the Underking
						["sourceQuest"] = 42708, -- A Personal Request
						["provider"] = { "n", 111480 },	-- Salanar the Horseman
						["coord"] = { 36.2, 56.1, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["maps"] = { 731 },	-- Neltharion's Lair
					}),
					q(43572, {	-- Darkheart Thicket: The Nightmare Lash
						["sourceQuest"] = 43571, -- Neltharion's Lair: Braid of the Underking
						["provider"] = { "n", 111480 },	-- Salanar the Horseman
						["coord"] = { 36.2, 56.1, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["maps"] = { 733 },	-- Darkheart Thicket
					}),
					q(42818, {	-- The Scarlet Assault
						["sourceQuest"] = 43899, -- Steeds of the Damned
						-- ["sourceQuest"] = 43572, -- Darkheart Thicket: The Nightmare Lash
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.1, 50.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(42821, {	-- Raising an Army
						["sourceQuest"] = 42818, -- The Scarlet Assault
						["provider"] = { "n", 109221 },	-- Thassarian
						["maps"] = { SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN, SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN_LEVEL2 },	-- Scarlet Monastery (Scenario Map)
					}),
					q(42882, {	-- The Scarlet Massacre
						["sourceQuest"] = 42818,	-- The Scarlet Assault
						["provider"] = { "n", 109221 },	-- Thassarian
						["maps"] = { SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN, SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN_LEVEL2 },	-- Scarlet Monastery (Scenario Map)
					}),
					q(42823, {	-- The Scarlet Commander
						["sourceQuests"] = {
							42821, -- Raising an Army
							42882, -- The Scarlet Massacre
						},
						["provider"] = { "n", 109221 },	-- Thassarian
						["maps"] = { SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN, SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN_LEVEL2 },	-- Scarlet Monastery (Scenario Map)
					}),
					q(42824, {	-- The Zealot Rises
						["sourceQuest"] = 42823,	-- The Scarlet Commander
						["provider"] = { "n", 109221 },	-- Thassarian
						["maps"] = { SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN, SCARLET_MONASTERY_DEATH_KNIGHT_CAMPAIGN_LEVEL2 },	-- Scarlet Monastery (Scenario Map)
					}),
					q(44245, {	-- Champion: High Inquisitor Whitemane
						["sourceQuest"] = 42824,	-- The Zealot Rises
						["provider"] = { "n", 113481 },	-- High Inquisitor Whitemane
						["coord"] = { 44.8, 72.9, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(839),	-- High Inquisitor Whitemane
						},
					}),
					-- Chap 3
					q(44286, {	-- Vault of the Wardens: A Masterpiece of Flesh
						["sourceQuest"] = 42824,	-- The Zealot Rises
						["provider"] = { "n", 93491 },	-- Lord Thorval
						["coord"] = { 63.1, 69.4, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["maps"] = { 710, 711, 712 },	-- Vault of the Wardens
					}),
					q(44246, {	-- Champion: Rottgut
						["sourceQuest"] = 44286,	-- Vault of the Wardens: A Masterpiece of Flesh
						["provider"] = { "n", 108975 },	-- Rottgut
						["coord"] = { 64.1, 69.5, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							i(139680),		-- Deathlord's Bracers
							follower(853),	-- Rottgut
						},
					}),
					q(43573, {	-- Advancing the War Effort
						["sourceQuest"] = 42824, -- The Zealot Rises
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(43928, {	-- Aggregates of Anguish
						["sourceQuest"] = 42824, -- The Zealot Rises
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
					}),
					q(44690, {	-- A Thirst For Blood
						["sourceQuest"] = 43573, -- Advancing the War Effort
						["provider"] = { "n", 93491 },	-- Lord Thorval
						["coord"] = { 63.1, 69.4, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["cost"] = {{ "i", 124124, 3 }},	-- 3xBlood of Sargeras
					}),
					q(43574, {	-- Maw of Souls: Maul of the Dead
						["sourceQuests"] = {
							43573, -- Advancing the War Effort
							43572, -- Darkheart Thicket: The Nightmare Lash
						},
						["provider"] = { "n", 111480 },	-- Salanar the Horseman
						["coord"] = { 36.2, 56.1, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["maps"] = { 706, 707, 708 },	-- Maw of Souls
					}),
					q(44282, {	-- Eye of Azshara: The Frozen Soul
						["sourceQuest"] = 43928, -- Aggregates of Anguish
						["provider"] = { "n", 93555 },	-- Amal'thazad
						["coord"] = { 58.1, 31.1, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["maps"] = { 713 },	--  Eye of Azshara
					}),
					q(44247, {	-- Champion: Amal'thazad
						["sourceQuest"] = 44282,	-- Eye of Azshara: The Frozen Soul
						["provider"] = { "n", 93555 },	-- Amal'thazad
						["coord"] = { 58.1, 31.1, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							follower(854),	-- Amal'thazad
						},
					}),
					q(43686, {	-- The Fourth Horseman
						["sourceQuests"] = {
							43573,	-- Advancing the War Effort
							43928,	-- Aggregates of Anguish
							44690,	-- A Thirst For Blood
						},
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 51.6, 50.0, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["g"] = {
							title(328),	-- Deathlord
							i(139673),	-- Deathlord's Chestguard
						},
					}),
					q(44248, {	-- Champion: Darion Mograine
						["provider"] = { "n", 113695 },	-- Highlord Darion Mograine
						["coord"] = { 27.0, 28.9, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["sourceQuest"] = 43686,	-- The Fourth Horseman
						["g"] = {
							follower(855),	-- Highlord Darion Mograine
						},
					}),
					--
					q(43407, {	-- A Hero's Weapon
						["provider"] = { "n", 93437 },	-- Highlord Darion Mograine
						["coord"] = { 56.9, 58.5, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["sourceQuest"] = 44248, -- Champion: Darion Mograine
						["g"] = {
							artifact(358),	-- Maw of the Damned
							artifact(370),	-- Blades of the Fallen Prince [Main Hand]
							artifact(370),	-- Blades of the Fallen Prince [Off Hand]
							artifact(395),	-- Apocalypse
						},
					}),
					-- Interlude
					q(46030, {	-- An Urgent Warning
						["sourceQuest"] = 43407,	-- A Hero's Weapon
						["provider"] = { "n", 118433 },	-- Injured Ebon Knight
						["coord"] = { 56.0, 30.7, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(46031, {	-- Investigate the Broken Shore
						["sourceQuest"] = 46030,	-- An Urgent Warning
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45240, {	-- Making Preparations
						["provider"] = { "n", 113695 },	-- Highlord Darion Mograine
						["coord"] = { 27.0, 28.9, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						--["sourceQuest"] = 47137, -- Champions of Legionfall (must be in log)
						["maps"] = { 823 },	-- Pit of Saron (Scenario Map)
					}),
					q(45398, {	-- Harnessing Power
						["sourceQuest"] = 45240, -- Making Preparations
						["provider"] = { "n", 119539 },	-- Minerva Ravensorrow
						["coord"] = { 47.8, 19.2, 823 },	-- Pit of Saron (Scenario Map)
						["g"] = {
							i(143676),	-- Rimefang's Harness (QI!)
						},
					}),
					q(45399, {	-- Severing the Sveldrek
						["sourceQuest"] = 45240, -- Making Preparations
						["provider"] = { "n", 119539 },	-- Minerva Ravensorrow
						["coord"] = { 47.8, 19.2, 823 },	-- Pit of Saron (Scenario Map)
					}),
					q(45331, {	-- Return to Acherus
						["sourceQuests"] = {
							45398, -- Harnessing Power
							45399, -- Severing the Sveldrek
						},
						["provider"] = { "n", 119539 },	-- Minerva Ravensorrow
						["coord"] = { 47.8, 19.2, 823 },	-- Pit of Saron (Scenario Map)
					}),
					q(44775, {	-- The Peak of Bones
						["sourceQuest"] = 45331, -- Return to Acherus
						["provider"] = { "n", 113695 },	-- Highlord Darion Mograine
						["coord"] = { 27.0, 28.9, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
					}),
					q(46305, {	-- Thorim's Flame
						["provider"] = { "n", 116737 },	-- Minerva Ravensorrow
						["coord"] = { 51.3, 84.3, STORMHEIM },
						["sourceQuest"] = 44775,	-- The Peak of Bones
					}),
					q(44783, {	-- From Bones They Rise
						["provider"] = { "n", 116737 },	-- Minerva Ravensorrow
						["coord"] = { 51.3, 84.3, STORMHEIM },
						["sourceQuest"] = 44775, -- The Peak of Bones
					}),
					q(44787, {	-- The Bonemother
						["provider"] = { "n", 116737 },	-- Minerva Ravensorrow
						["maps"] = { STORMHEIM },
						["sourceQuests"] = {
							44783, -- From Bones They Rise
							46305, -- Thorim's Flame
						},
					}),
					q(45243, {	-- On Daumyr's Wings
						["provider"] = { "n", 113695 },	-- Highlord Darion Mograine
						["coord"] = { 27.0, 28.9, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						["sourceQuest"] = 44787, -- The Bonemother
					}),
					q(45103, {	-- We Ride!
						["provider"] = { "n", 116128 },	-- Highlord Darion Mograine
						["coord"] = { 51.6, 21.8, BROKEN_SHORE },
						["sourceQuest"] = 45243,	-- On Daumyr's Wings
					}),
					q(46050, {	-- Champion: Minerva Ravensorrow
						["provider"] = { "n", 95900 },		-- Minerva Ravensorrow
						["coord"] = { 25.6, 34.2, 647 },
						["sourceQuest"] = 45103,	-- We Ride!
						["g"] = {
							follower(1003),	-- Minerva Ravensorrow
						},
					}),
					q(46719, {	-- Amal'thazad's Message
						["provider"] = { "n", 117573 },	-- Dread Commander Thalanor
						["coord"] = { 43.4, 62.7, BROKEN_SHORE },
						-- ["sourceQuests"] = { 46251 },	-- Shard Times
					}),
					q(46720, {	-- Frozen Memories
						["provider"] = { "n", 93555 },	-- Amal'thazadd
						["coord"] = { 58.1, 31.1, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["sourceQuest"] = 46719, -- Amal'thazad's Message
					}),
					q(46812, {	-- Draconic Secrets
						["coord"] = { 44.7, 4.4, ICECROWN },
						["sourceQuest"] = 46720, -- Frozen Memories
						["maps"] = { 860 },	-- The Ruby Sanctum (Scenario Map)
					}),
					q(46813, {	-- The Lost Glacier
						["sourceQuest"] = 46812, -- Draconic Secrets
						["maps"] = {
							860,	-- The Ruby Sanctum (Scenario Map)
							871,	-- The Lost Glacier (Scenario Map)
						},
						["g"] = {
							mount(229387),	-- Deathlord's Vilebrood Vanquisher (MOUNT!)
						},
					}),
					-- Misc
					q(43877, {	-- Hitting the Books
						["provider"] = { "n", 97111 },	-- Illanna Dreadmoore <Ebon Blade Archivist>
						["coord"] = { 49.8, 56.2, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46108, {	-- Knowledge is Power
						["sourceQuest"] = 43877,	-- Hitting the Books
						["provider"] = { "n", 97111 },	-- Illanna Dreadmoore <Ebon Blade Archivist>
						["coord"] = { 49.8, 56.2, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46125, {	-- Furthering Knowledge
						["sourceQuest"] = 46108,	-- Knowledge is Power
						["provider"] = { "n", 97111 },	-- Illanna Dreadmoore <Ebon Blade Archivist>
						["coord"] = { 49.8, 56.2, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46789, {	-- Further Advancement
						["sourceQuest"] = 45103, -- We Ride!
						["provider"] = { "n", 93568 },	-- Siouxsie the Banshee
						["coord"] = { 49.7, 51.3, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
						["timeline"] = { ADDED_7_2_0 },
					}),
				}),
				n(SPECIAL, {
					gt(433, {	-- Brothers in Arms
						q(44231, {	-- Champion Armaments
							["sourceQuest"] = 43268,	-- Tech It Up A Notch
							["provider"] = { "n", 110410 },	-- Dread Collector Bane
							["coord"] = { 51.7, 32.4, ACHERUS_THE_EBON_HOLD_THE_HEART_OF_ACHERUS },
						}),
					}),
					gt(432, {	-- Unholy Reclamation / Frost Wyrm
						q(44234, {	-- Unleashing our Wrath
							["sourceQuest"] = 43268,	-- Tech It Up A Notch
							["provider"] = { "n", 111634 },	-- Winter Payne
							["coord"] = { 26.3, 23.4, ACHERUS_THE_EBON_HOLD_HALL_OF_COMMAND },
							["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
						}),
					}),
					o(252395, {	-- Deathcharger Hitching Post
						["questID"] = 43579,
						["isDaily"] = true,
						["g"] = {
							i(139502),	-- Reins of the Deathcharger
						},
					}),
				}),
				n(VENDORS, {
					n(93550, {	-- Quartermaster Ozorg
						["coord"] = { 44.2, 37.5, 647 },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(34649),	-- Archerus Knight's Gauntlets
							i(34651),	-- Archerus Knight's Girdle
							i(34648),	-- Archerus Knight's Greaves
							i(34652),	-- Archerus Knight's Hood
							i(34656),	-- Archerus Knight's Legplates
							i(34655),	-- Archerus Knight's Pauldrons
							i(34659),	-- Archerus Knight's Shroud
							i(34650),	-- Archerus Knight's Tunic
							i(34653),	-- Archerus Knight's Wristguard
							i(38662),	-- Bladed Ebon Amulet
							i(38663),	-- Blood-Soaked Saronite Plated Spaulders
							i(38667),	-- Bloodbane's Gauntlets of Command
							i(140538),	-- Broadaxe of the Ebon Blade
							i(174485, {	-- Burning Greatsword of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(174662, {	-- Burning Saber of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(34657),	-- Choker of Damnation
							i(38147),	-- Corrupted Band
							i(174486, {	-- Crimson Greatsword of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(174659, {	-- Crimson Saber of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(140935, {	-- Deathlord's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(139680, {	-- Deathlord's Bracers
								["cost"] = 5000000,	-- 500g
							}),
							i(139673, {	-- Deathlord's Chestguard
								["cost"] = 5000000,	-- 500g
							}),
							i(139675, {	-- Deathlord's Gauntlets
								["cost"] = 5000000,	-- 500g
							}),
							i(139679, {	-- Deathlord's Girdle
								["cost"] = 5000000,	-- 500g
							}),
							i(139674, {	-- Deathlord's Greatboots
								["cost"] = 5000000,	-- 500g
							}),
							i(140963, {	-- Deathlord's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(139676, {	-- Deathlord's Helm
								["cost"] = 5000000,	-- 500g
							}),
							i(139677, {	-- Deathlord's Legguards
								["cost"] = 5000000,	-- 500g
							}),
							i(140962, {	-- Deathlord's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139678, {	-- Deathlord's Mantle
								["cost"] = 5000000,	-- 500g
							}),
							i(38669),	-- Engraved Saronite Legplates
							i(174488, {	-- Freezing Greatsword of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(174660, {	-- Freezing Saber of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(38633),	-- Greataxe of the Ebon Blade
							i(38661),	-- Greathelm of the Scourge Champion
							i(38632),	-- Greatsword of the Ebon Blade
							i(38670),	-- Greaves of the Slaughter
							i(38672),	-- Keleseth's Signet Ring
							i(34661),	-- Massacre Sword
							i(136796),	-- Necrophile Tome: Corpse Exploder (CI!)
							i(34658),	-- Plague Band
							i(38666),	-- Plated Saronite Bracers
							i(38707),	-- Runed Spellblade
							i(38665),	-- Saronite War Plate
							i(39322),	-- Shroud of the North Wind
							i(38675),	-- Signet of the Dark Brotherhood
							i(39320),	-- Sky Darkener's Shroud of Blood
							i(38664),	-- Sky Darkener's Shroud of the Unholy
							i(38674),	-- Soul Harvester's Charm
							i(38668),	-- The Plaguebringer's Girdle
							i(174487, {	-- Unholy Greatsword of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(174661, {	-- Unholy Saber of the Ebon Blade
								["timeline"] = { ADDED_8_3_0 },
							}),
							i(38671),	-- Valanar's Signet Ring
							i(140554),	-- Warsword of the Ebon Blade
							i(40775, {	-- Winged Steed of the Ebon Blade (MOUNT!)
								["cost"] = 10000000,	-- 1,000g
							}),
						},
					}),
					n(121752, {	-- Slimy
						["sourceQuest"] = 46813,	-- The Lost Glacier
						["coord"] = { 54.8, 28.9, 648 },
						["g"] = {
							i(147539, {	-- Bloodbrood Whelpling (PET!)
								["sourceQuest"] = 46813,	-- The Lost Glacier
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
							i(147540, {	-- Frostbrood Whelpling (PET!)
								["sourceQuest"] = 46813,	-- The Lost Glacier
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
							i(147541, {	-- Vilebrood Whelpling (PET!)
								["sourceQuest"] = 46813,	-- The Lost Glacier
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
		cl(DEATHKNIGHT, bubbleDownSelf({ ["classes"] = { DEATHKNIGHT } }, {
			q(40936),	-- Tracking: Revil Convinced - triggered during "Apocalypse" (questID 40930)
			q(44587),	-- Tracking Quest: Fallen Steeds A - completed the "Fallen Steeds: Saddle of the Frozen Crown" mission
			q(44588),	-- Tracking Quest: Fallen Steeds B - completed the "Fallen Steeds: The Baron's Saddle" mission
			q(44589),	-- Tracking Quest: Fallen Steeds C - completed the "Fallen Steeds: Saddle of the Headless Horseman" mission
			q(44590),	-- Tracking Quest: Fallen Steeds D - completed the "Fallen Steeds: Saddle of the Huntsman" mission
			q(44591),	-- Tracking Quest: Fallen Steeds E - completed the "Fallen Steeds: Reins of Shadow" mission
			q(44592),	-- Tracking Quest: Unholy Attainment A - completed the "Unholy Attainment: Essence of Undeath" mission
			q(44593),	-- Tracking Quest: Unholy Attainment B - completed the "Unholy Attainment: Essence of Fear" mission
			q(44594),	-- Tracking Quest: Unholy Attainment C - completed the "Unholy Attainment: Essence of Shadow" mission
			q(44595),	-- Tracking Quest: Unholy Attainment D - completed the "Unholy Attainment: Essence of Hatred" mission
			q(44596),	-- Tracking Quest: Unholy Attainment E - completed the "Unholy Attainment: Essence of Darkness" mission
			q(44637),	-- Track Quest: 7.0 Class Hall - Death Knight - Pacing Mission 1 (Ch 1.5) - triggers when "Salanar the Horseman" mission is completed
		})),
	}),
})));