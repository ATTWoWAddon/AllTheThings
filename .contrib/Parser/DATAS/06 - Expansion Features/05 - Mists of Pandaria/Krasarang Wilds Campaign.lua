-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.MOP, applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_1_0 } }, {
	n(KRASARANG_WILDS_CAMPAIGN, {
		["aqd"] = {
			["icon"] = 464076,
		},
		["hqd"] = {
			["icon"] = 464078,
		},
		["maps"] = { KRASARANG_WILDS },
		["groups"] = {
			n(ACHIEVEMENTS, {
				h(ach(8206)),	-- Dominance Offensive
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
					crit(22455, {	-- Champion of Arms slain (Alliance)
						["coord"] = { 13.5, 54.8, KRASARANG_WILDS },	-- Kar Warmaker
						["provider"] = { "n", 68321 },	-- Kar Warmaker
						["races"] = ALLIANCE_ONLY,
					}),
					crit(22457, {	-- Champion of the Shadows slain (Alliance)
						["coord"] = { 12.8, 64.7, KRASARANG_WILDS },	-- Ubunti the Shade
						["provider"] = { "n", 68320 },	-- Ubunti the Shade
						["races"] = ALLIANCE_ONLY,
					}),
					crit(22459, {	-- Champion of the Light slain (Alliance)
						["coord"] = { 9.68, 54.4, KRASARANG_WILDS },	-- Muerta
						["provider"] = { "n", 68322 },	-- Muerta
						["races"] = ALLIANCE_ONLY,
					}),
					crit(22456, {	-- Champion of Arms slain (Horde)
						["coord"] = { 89.5, 22.7, KRASARANG_WILDS },	-- Dalan Nightbreaker
						["provider"] = { "n", 68318 },	-- Dalan Nightbreaker
						["races"] = HORDE_ONLY,
					}),
					crit(22458, {	-- Champion of the Shadows slain (Horde)
						["coord"] = { 89.1, 26.8, KRASARANG_WILDS },	-- Mavis Harms
						["provider"] = { "n", 68317 },	-- Mavis Harms
						["races"] = HORDE_ONLY,
					}),
					crit(22460, {	-- Champion of the Light slain (Horde)
						["coord"] = { 92.2, 24.8, KRASARANG_WILDS },	-- Disha Fearwarden
						["provider"] = { "n", 68319 },	-- Disha Fearwarden
						["races"] = HORDE_ONLY,
					}),
				}),
				a(ach(8205)),	-- Operation: Shieldwall
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
			n(FACTIONS, {
				faction(FACTION_DOMINANCE_OFFENSIVE, {	-- Dominance Offensive
					["races"] = HORDE_ONLY,
					["icon"] = 464078,
				}),
				faction(FACTION_OPERATION_SHIELDWALL, {	-- Operation: Shieldwall
					["races"] = ALLIANCE_ONLY,
					["icon"] = 464076,
				}),
			}),
			n(RARES, {
				n(68318, {	-- Dalan Nightbreaker
					["questID"] = 34062,
					["isDaily"] = true,
					["races"] = HORDE_ONLY,
					["coord"] = { 89.5, 22.7, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["groups"] = {
						i(93227, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
						i(92783),	-- Mark of the Hardened Grunt
					},
				}),
				n(68319, {	-- Disha Fearwarden
					["questID"] = 34061,
					["isDaily"] = true,
					["races"] = HORDE_ONLY,
					["coord"] = { 92.2, 24.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["groups"] = {
						i(93227, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
						i(92787),	-- Horde Insignia of Conquering
					},
				}),
				n(68321, {	-- Kar Warmaker
					["coord"] = { 13.5, 54.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(93194, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
						i(92782),	-- Steadfast Footman's Medallion
					},
				}),
				n(68317, {	-- Mavis Harms
					["questID"] = 34060,
					["isDaily"] = true,
					["coord"] = { 89.1, 26.8, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(93227, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
						i(92785),	-- Kor'kron Book of Hurting
					},
				}),
				n(68322, {	-- Muerta
					["coord"] = { 9.68, 54.4, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(92786),	-- Alliance Insignia of Conquering
						i(93194, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
					},
				}),
				n(68320, {	-- Ubunti the Shade
					["coord"] = { 12.8, 64.7, KRASARANG_WILDS },	-- manually verified October 19, 2020
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(93194, {	-- Blood-Soaked Invitation
							["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
						}),
						i(92784),	-- SI:7 Operative's Manual
					},
				}),
			}),
			n(QUESTS, {
				n(FACTION_HEADER_ALLIANCE, bubbleDown({ ["races"] = ALLIANCE_ONLY }, {
					q(32172, {	-- A Colossal Victory
						["sourceQuests"] = { 32186 },	-- Beastmaster's Quarry: The Crab
						["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
						["coord"] = { 88.3, 14.0, KRASARANG_WILDS },
						["isDaily"] = true,
						["crs"] = { 67557 },	-- Colossal Viseclaw (killing the mob procs the quest)
					}),
					q(32143, {	-- A Kind of Magic
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 67976,	-- Tinkmaster Overspark
						["coord"] = { 16.0, 78.8, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32247, {	-- A King Among Men
						["sourceQuest"] = 32246,	-- Meet the Scout
						["qgs"] = {
							68392,	-- King Varian Wrynn
							68399,	-- 7th Legion Champion
						},
						["coord"] = { 89.9, 24.5, KRASARANG_WILDS },
					}),
					q(32377, {	-- A Kor'kron In Our Midst
						["sourceQuest"] = 32370,	-- The Kun-Lai Expedition
						["qg"] = 68375,	-- Agent Connelly
						["coord"] = { 65.1, 60.8, KUN_LAI_SUMMIT },
					}),
					q(32248, {	-- A Little Patience
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 89.5, 32.6, KRASARANG_WILDS },
						["maps"] = { 487 },	-- A Little Patience
						["lvl"] = 90,	-- 15
					}),
					q(32170, {	-- Ancient's Fall
						["sourceQuest"] = 32184,	-- Beastmaster's Quarry: The Crane
						["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
						["coord"] = { 88.8, 13.6, KRASARANG_WILDS },
						["isDaily"] = true,
						["crs"] = { 67555 },	-- Ancient Bloodcrown Crane (killing the mob procs the quest)
					}),
					q(32452, {	-- And Then There Were Goblins
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 68908,	-- Amber Kearnen
						["coord"] = { 94.7, 28.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32315, {	-- Anduin's Plea
						["sourceQuests"] = {
							32194,	-- Bad Blood
							32243,	-- The Source of Korune Power
						},
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+10750 },
					}),
					q(32148, {	-- Attack! Move!
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 67631,	-- Marshal Troteman
						["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32194, {	-- Bad Blood
						["sourceQuest"] = 32193,	-- To Mogujia
						["qg"] = 67734,	-- Sarannha Skyglaive
						["coord"] = { 59.9, 75.4, KUN_LAI_SUMMIT },
					}),
					q(32166, {	-- Beastmaster's Hunt: The Crab
						["provider"] = { "i", 91856 },	-- Sturdy Crab Crate
						["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
						["isDaily"] = true,
					}),
					q(32164, {	-- Beastmaster's Hunt: The Crane
						["provider"] = { "i", 91854 },	-- Sturdy Crane Snare
						["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
						["isDaily"] = true,
					}),
					q(32165, {	-- Beastmaster's Hunt: The Tiger
						["provider"] = { "i", 91855 },	-- Sturdy Tiger Trap
						["coord"] = { 94.4, 29.3, KRASARANG_WILDS },	-- location of NPC from which to purchase
						["isDaily"] = true,
					}),
					q(32186, {	-- Beastmaster's Quarry: The Crab
						["sourceQuest"] = 32166,	-- Beastmaster's Hunt: The Crab
						["qg"] = 67508,	-- Colossal Viseclaw
						["coord"] = { 58.7, 38.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32184, {	-- Beastmaster's Quarry: The Crane
						["sourceQuest"] = 32164,	-- Beastmaster's Hunt: The Crane
						["qg"] = 67503,	-- Ancient Bloodcrown Crane
						["coord"] = { 40.3, 60.0, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32185, {	-- Beastmaster's Quarry: The Tiger
						["sourceQuest"] = 32165,	-- Beastmaster's Hunt: The Tiger
						["qg"] = 67498,	-- Krasari Elder
						["coord"] = { 12.9, 37.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32401, {	-- Breath of Darkest Shadow
						["sourceQuest"] = 32400,	-- The Bell Speaks
						["qg"] = 68939,	-- Anduin Wrynn
						["coord"] = { 56.3, 34.2, KUN_LAI_SUMMIT },
					}),
					q(32383, {	-- Bugging Out
						["sourceQuest"] = 32382,	-- He's In Deep
						["qg"] = 68417,	-- Cousin Goottooth
						["coord"] = { 59.2, 84.3, KUN_LAI_SUMMIT },
					}),
					q(32154, {	-- Burn Out!
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 68166,	-- Sully "The Pickle" McLeary
						["coord"] = { 16.3, 77.9, KRASARANG_WILDS },
						["isDaily"] = true,
						["groups"] = {
							i(93187),	-- Unstable Explosive (QI!)
						},
					}),
					q(32420, {	-- Cashing Out
						["sourceQuest"] = 32416,	-- Jaina's Resolution
						["qg"] = 68687,	-- Vereesa Windrunner
						["coord"] = { 34.5, 48.7, 501 },
					}),
					q(32414, {	-- Darnassus Attacked?
						["sourceQuest"] = 32394,	-- The Divine Bell
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+8600 },
					}),
					q(32446, {	-- Dis-Assembly Required
						["sourceQuest"] = 32109,	-- Lion's Landing
						["qg"] = 68166,	-- Sully "The Pickle" McLeary
						["coord"] = { 16.3, 77.9, KRASARANG_WILDS },
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
						["sourceQuests"] = { 32143 },	-- A Kind of Magic
						["qg"] = 67528,	-- Sully "The Pickle" McLeary
						["isDaily"] = true,
					}),
					q(32171, {	-- End of an Elder
						["sourceQuests"] = { 32185 },	-- Beastmaster's Quarry: The Tiger
						["qg"] = 67558,	-- Huntsman Blake (summons the mob for you to kill)
						["coord"] = { 88.3, 14.0, KRASARANG_WILDS },
						["isDaily"] = true,
						["crs"] = { 67556 },	-- Krasari Elder (killing the mob procs the quest)
					}),
					q(32347, {	-- Eviction Notice
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32146, {	-- Hammer to Fall
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67386,	-- Sky Admiral Rogers
						["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32382, {	-- He's In Deep
						["sourceQuests"] = { 32426 },	-- Stirred, Not Shaken
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, FRIENDLY+4900 },
					}),
					q(32397, {	-- He Won't Even Miss It
						["sourceQuests"] = { 32382 },	-- He's In Deep
						["qg"] = 68417,	-- Cousin Goottooth
						["coord"] = { 59.2, 84.3, KUN_LAI_SUMMIT },
					}),
					q(32316, {	-- Heart Of The Alliance
						["sourceQuests"] = { 32315 },	-- Anduin's Plea
						["qg"] = 67948,	-- Anduin Wrynn
						["coord"] = { 66.6, 34.1, SHRINE_OF_SEVEN_STARS_THE_IMPERIAL_EXCHANGE },
					}),
					q(32153, {	-- Hero Killer
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67631,	-- Marshal Troteman
						["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32119, {	-- It Is A Mystery
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32156, {	-- It's Only Right
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67444,	-- Mishka
						["coord"] = { 16.1, 77.9, KRASARANG_WILDS },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/7 Shieldwall Soldier Dog Tag
								["provider"] = { "i", 93009 },	-- Shieldwall Soldier Dog Tag (QI!)
								["cr"] = 68700,	-- Fallen Shieldwall Soldier
							}),
						},
					}),
					q(32416, {	-- Jaina's Resolution
						["sourceQuests"] = { 32460 },	-- Tracking the Thieves
						["qg"] = 68651,	-- Lady Jaina Proudmoore
						["coord"] = { 40.0, 50.4, TELDRASSIL },
					}),
					q(32109, {	-- Lion's Landing
						["sourceQuests"] = { 32247 },	-- A King Among Men
						["qg"] = 68399,	-- 7th Legion Champion
					}),
					q(32371, {	-- Memory Wine
						["sourceQuests"] = { 32377 },	-- A Kor'kron in Our Midst
						["qg"] = 68375,	-- Agent Connelly
						["coord"] = { 65.1, 60.8, KUN_LAI_SUMMIT },
					}),
					q(32122, {	-- Ogudei's Lieutenants
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32346, {	-- Oi Ain't Afraid o' No Ghosts!
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32419, {	-- Nowhere to Hide
						["sourceQuests"] = { 32416 },	-- Jaina's Resolution
						["qg"] = 68687,	-- Vereesa Windrunner
						["coord"] = { 34.5, 48.7, 501 },
					}),
					q(32421, {	-- Nowhere to Run
						["sourceQuests"] = { 32416 },	-- Jaina's Resolution
						["qg"] = 68687,	-- Vereesa Windrunner
						["coord"] = { 34.5, 48.7, 501 },
						["groups"] = {
							objective(1, {	-- 0/5 Sunreaver Dragonhawk subdued
								["provider"] = { "i", 93159 },	-- Enchanted Sleeping Dust (QI!)
							}),
						},
					}),
					q(32116, {	-- Priorities, People!
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67631,	-- Marshal Troteman
						["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32149, {	-- Resource Gathering
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67630,	-- Mishka
						["coord"] = { 94.5, 28.6, KRASARANG_WILDS },
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
						["isDaily"] = true,
					}),
					q(32417, {	-- Sewer Cleaning
						["sourceQuests"] = { 32416 },	-- Jaina's Resolution
						["qg"] = 68687,	-- Vereesa Windrunner
						["coord"] = { 34.5, 48.7, 501 },
					}),
					q(32115, {	-- Shackles of the Past
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32152, {	-- Siege Damage
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67631,	-- Marshal Troteman
						["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/1 Bilgewater Blasting Cap
								["provider"] = { "i", 92493 },	-- Bilgewater Blasting Cap (QI!)
								["cr"] = 67929,	-- Bilgewater Sapper
							}),
						},
					}),
					q(32426, {	-- Stirred, not Shaken
						["sourceQuests"] = { 32381 },	-- To Catch a Spy
						["qg"] = 68526,	-- Barkeep Townsley
						["coord"] = { 67.4, 47.1, 500 },	-- Bizmo's Brawlpub
					}),
					q(32150, {	-- Supply Block
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67630,	-- Mishka
						["coord"] = { 94.5, 28.6, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32400, {	-- The Bell Speaks
						["sourceQuests"] = {
							32336,	-- The Handle
							32338,	-- The Harmonic Ointment
							32337,	-- The Head
						},
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, EXALTED },
					}),
					q(32380, {	-- The Best Around
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 89.5, 32.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, FRIENDLY+950 },
					}),
					q(32394, {	-- The Divine Bell
						["sourceQuests"] = { 32393 },	-- The Ruins of Korune
						["qg"] = 67734,	-- Sarannha Skyglaive
						["coord"] = { 32.8, 26.1, KUN_LAI_SUMMIT },
					}),
					q(32362, {	-- The Fate of Dalaran
						["sourceQuests"] = { 32331 },	-- The Kirin Tor
						["qg"] = 68106,	-- Anduin Wrynn
						["coord"] = { 26.3, 39.1, 501 },
					}),
					q(32332, {	-- The First Riddle: Mercy
						["sourceQuests"] = { 32321 },	-- The Monkey King
						["qg"] = 68003,	-- The Monkey King
						["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
					}),
					q(32335, {	-- The Greatest Prank
						["sourceQuests"] = {
							32332,	-- The First Riddle: Mercy
							32333,	-- The Second Riddle: Fellowship
							32334,	-- The Third Riddle: Strength
						},
						["qg"] = 68538,	-- The Monkey King
						["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
					}),
					q(32336, {	-- The Handle
						["sourceQuests"] = { 32335 },	-- The Greatest Prank
						["qg"] = 68538,	-- The Monkey King
						["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
						["groups"] = { i(92561) },	-- Mallet Handle (QI!)
					}),
					q(32355, {	-- The Harmonic Mallet
						["sourceQuests"] = { 32423 },	-- What Had To Be Done
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.5, 28.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+14540 },	-- possibly 14530
					}),
					q(32338, {	-- The Harmonic Ointment
						["sourceQuests"] = { 32335 },	-- The Greatest Prank
						["qg"] = 68538,	-- The Monkey King
						["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
						["groups"] = { i(92562) },	-- Harmonic Ointment (QI!)
					}),
					q(32337, {	-- The Head
						["sourceQuests"] = { 32335 },	-- The Greatest Prank
						["qg"] = 68538,	-- The Monkey King
						["coord"] = { 93.8, 27.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+18500 },	-- maybe 18490
						["groups"] = {
							o(216421, {	-- Mallet Head
								["coord"] = { 30.7, 92.3, VALE_OF_ETERNAL_BLOSSOMS },
								["groups"] = { i(92560) },	-- Mallet Head (QI!)
							}),
						},
					}),
					q(32331, {	-- The Kirin Tor
						["sourceQuests"] = {
							32383,	-- Bugging Out
							32397,	-- He Won't Even Miss It
						},
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+2850 },
					}),
					q(32370, {	-- The Kun-Lai Expedition
						["sourceQuests"] = { 32316 },	-- Heart Of The Alliance
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.4, 28.5, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+2700 },
					}),
					q(32321, {	-- The Monkey King
						["sourceQuests"] = { 32355 },	-- The Harmonic Mallet
						["qg"] = 68004,	-- Anduin Wrynn
						["coord"] = { 53.0, 46.4, KUN_LAI_SUMMIT },
					}),
					q(32157, {	-- The Only Good Goblin...
						["sourceQuests"] = { 32452 },	-- And Then There Were Goblins
						["qg"] = 67386,	-- Sky Admiral Rogers
						["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32393, {	-- The Ruins of Korune
						["sourceQuests"] = { 32371 },	-- Memory Wine
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.5, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, REVERED+6650 },
					}),
					q(32333, {	-- The Second Riddle: Fellowship
						["sourceQuests"] = { 32321 },	-- The Monkey King
						["qg"] = 68003,	-- The Monkey King
						["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
					}),
					q(32455, {	-- The Silence
						["sourceQuests"] = { 32401 },	-- Breath of Darkest Shadow
						["qg"] = 68987,	-- Anduin Wrynn
						["coord"] = { 55.9, 31.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(93385),	-- Grand Gryphon (MOUNT!)
						},
					}),
					q(32243, {	-- The Source of Korune Power
						["sourceQuests"] = { 32193 },	-- To Mogujia
						["qg"] = 67716,	-- Hilda Hornswaggle
						["coord"] = { 59.8, 76.0, KUN_LAI_SUMMIT },
					}),
					q(32121, {	-- The Spirit Trap
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68275,	-- Hilda Hornswaggle
						["coord"] = { 31.0, 27.9, 419 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32334, {	-- The Third Riddle: Strength
						["sourceQuests"] = { 32321 },	-- The Monkey King
						["qg"] = 68003,	-- The Monkey King
						["coord"] = { 48.8, 50.3, KUN_LAI_SUMMIT },
						["groups"] = {
							o(216362, {	-- A Keg of Metal Brew
								i(92557),	-- The Metal Brew (QI!)
							}),
						},
					}),
					q(32381, {	-- To Catch a Spy
						["sourceQuests"] = { 32380 },	-- The Best Around
						["qg"] = 68526,	-- Barkeep Townsley
						["coord"] = { 67.4, 47.1, 500 },	-- Bizmo's Brawlpub
					}),
					q(32193, {	-- To Mogujia
						["sourceQuests"] = { 32331 },	-- The Kirin Tor
						["qg"] = 67940,	-- Admiral Taylor
						["coord"] = { 94.4, 28.4, KRASARANG_WILDS },
						["minReputation"] = { FACTION_OPERATION_SHIELDWALL, HONORED+6800 },
					}),
					q(32151, {	-- Tower Defense
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67631,	-- Marshal Troteman
						["coord"] = { 89.6, 33.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32460, {	-- Tracking the Thieves
						["description"] = "If you leave before completing this quest, you may need to abandon it and pick it near the east gate of Darnassus rather than returning to where you originally picked it up.",
						["sourceQuests"] = { 32414 },	-- Darnassus Attacked?
						["qg"] = 68651,	-- Lady Jaina Proudmoore
						["coord"] = { 39.0, 32.8, DARNASSUS },
					}),
					q(32158, {	-- Two Step Program
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 68182,	-- Seraphine of the Winter
						["coord"] = { 16.1, 77.9, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32144, {	-- Under Pressure
						["sourceQuests"] = { 32109 },	-- Lion's Landing
						["qg"] = 67444,	-- Mishka
						["coord"] = { 16.0, 77.9, KRASARANG_WILDS },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- 0/8 Horde Supply Crates Destroyed
								["provider"] = { "o", 216150 },	-- Horde Supply Crate
							}),
						},
					}),
					q(32418, {	-- Unfair Trade
						["sourceQuests"] = { 32416 },	-- Jaina's Resolution
						["qg"] = 68687,	-- Vereesa Windrunner
						["coord"] = { 34.5, 48.7, 501 },
					}),
					q(32142, {	-- We Will Rock You
						["sourceQuests"] = { 32451 },	-- Send a Message
						["qg"] = 67386,	-- Sky Admiral Rogers
						["coord"] = { 15.9, 78.5, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32423, {	-- What Had To Be Done
						["sourceQuests"] = {
							32420,	-- Cashing Out
							32419,	-- Nowhere to Hide
							32421,	-- Nowhere to Run
							32417,	-- Sewer Cleaning
							32418,	-- Unfair Trade
						},
						["qg"] = 68687,	-- Vareesa Windrunner
						["coord"] = { 34.6, 48.7, 501 },
					}),
				})),
				n(FACTION_HEADER_HORDE, bubbleDown({ ["races"] = HORDE_ONLY }, {
					q(32169, {	-- A Colossal Victory
						["sourceQuests"] = { 32183 },	-- Beastmaster's Quarry: The Crab
						["qg"] = 67447,	-- Jorn Skyseer (summons the mob)
						["isDaily"] = true,
						["crs"] = { 67439 },	-- Colossal Viseclaw (killing the mob procs the quest)
					}),
					q(32352, {	-- A Gathering Storm
						["sourceQuests"] = { 32351 },	-- Echoes of Thunder
						["qg"] = 68287,	-- Baine Bloodhoof
						["coord"] = { 68.3, 44.9, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					q(32413, {	-- A Return to Krasarang
						["description"] = "To be able to pick up this quest, head to Domination Point in Krasarang Wilds and take the flightpath back to Dalaran.",
						["sourceQuest"] = 32412,	-- One Last Grasp
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.4, 48.4, 502 },
						["timeline"] = { ADDED_5_1_0 },
						["maps"] = { 501 },	-- Dalaran (Scenario)
						["isBreadcrumb"] = true,
					}),
					q(32406, {	-- A Tactical Assault
						["sourceQuests"] = { 32405 },	-- Hand of the Silver Covenant
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 64.0, 47.9, 502 },
					}),
					q(32127, {	-- All Dead, All Dead
						["sourceQuests"] = {
							32235,	-- Flash! Aaaaaahhhh!
							32126,	-- Tear it Up
						},
						["qg"] = 67767,	-- Brolic
						["coord"] = { 9.36, 50.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32191, {	-- Ancient Guardians
						["sourceQuests"] = { 32190 },	-- To Mogujia
						["qg"] = 67603,	-- Fanlyr Silverthorn
						["coord"] = { 57.1, 78.6, KUN_LAI_SUMMIT },
					}),
					q(32167, {	-- Ancient's Fall
						["sourceQuests"] = { 32181 },	-- Beastmaster's Quarry: The Crane
						["qg"] = 67447,	-- Jorn Skyseer (summons the mob for you to fight)
						["coord"] = { 11.7, 60.8, KRASARANG_WILDS },
						["isDaily"] = true,
						["crs"] = { 67436 },	-- Ancient Bloodcrown Crane (killing the mob procs the quest)
					}),
					q(32128, {	-- Another One Bites the Dust
						["sourceQuests"] = {
							32235,	-- Flash! Aaaaaahhhh!
							32126,	-- Tear it Up
						},
						["qg"] = 67880,	-- Blood Guard Gro'tash
						["coord"] = { 9.02, 51.2, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32163, {	-- Beastmaster's Hunt: The Crab
						["provider"] = { "i", 91822 },	-- Sturdy Crab Crate
						["coord"] = { 9.68, 50.9, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32161, {	-- Beastmaster's Hunt: The Crane
						["provider"] = { "i", 91819 },	-- Sturdy Crane Snare
						["coord"] = { 9.67, 50.9, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32162, {	-- Beastmaster's Hunt: The Tiger
						["provider"] = { "i", 91821 },	-- Sturdy Tiger Trap
						["coord"] = { 9.70, 51.0, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32183, {	-- Beastmaster's Quarry: The Crab
						["sourceQuests"] = { 32163 },	-- Beastmaster's Hunt: The Crab
						["qg"] = 67508,	-- Colossal Viseclaw
						["coord"] = { 58.7, 38.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32181, {	-- Beastmaster's Quarry: The Crane
						["sourceQuests"] = { 32161 },	-- Beastmaster's Hunt: The Crane
						["qg"] = 67503,	-- Ancient Bloodcrown Crane
						["coord"] = { 40.3, 60.0, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32182, {	-- Beastmaster's Quarry: The Tiger
						["sourceQuests"] = { 32162 },	-- Beastmaster's Hunt: The Tiger
						["qg"] = 67498,	-- Krasari Elder
						["coord"] = { 13.0, 37.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32214, {	-- Bilgewater Infiltrators
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67608,	-- Rivett Clutchpop
						["coord"] = { 12.0, 53.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32192, {	-- Bloodlines
						["sourceQuests"] = { 32190 },	-- To Mogujia
						["qg"] = 67581,	-- Lor'themar Theron
						["coord"] = { 57.1, 78.9, KUN_LAI_SUMMIT },
					}),
					q(32399, {	-- Breath of Darkest Shadow (H)
						["sourceQuests"] = { 32398 },	-- The Bell Speaks
						["qg"] = 67844,	-- Malkorok
						["coord"] = { 55.9, 33.9, KUN_LAI_SUMMIT },
						["groups"] = {
							i(93386),	-- Grand Wyvern (MOUNT!)
						},
					}),
					q(32236, {	-- Bug Off!
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67554,	-- Bixy Buzzsaw
						["coord"] = { 22.2, 60.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32242, {	-- Buried Secrets
						["sourceQuests"] = { 32256 },	-- Rise Of An Empire
						["qg"] = 67840,	-- Garrosh Hellscream
						["coord"] = { 32.1, 84.9, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
					}),
					q(32378, {	-- Clearing a Path
						["sourceQuests"] = { 32376 },	-- To the Valley!
						["qg"] = 68370,	-- Lor'themar Theron
						["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
					}),
					q(32251, {	-- Dagger in the Dark
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["maps"] = { 488, 489 },	-- Dagger in the Dark
					}),
					q(32372, {	-- De-Subjugation
						["sourceQuests"] = { 32320 },	-- The Horde is Family
						["qg"] = 68025,	-- Thrall
						["coord"] = { 38.2, 46.4, ECHO_ISLES },
						["groups"] = {
							i(92510),	-- Vol'jin's Hearthstone (QI!)
						},
					}),
					q(32123, {	-- Death on Two Legs
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67618,	-- Shokia
						["coord"] = { 9.23, 53.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32108, {	-- Domination Point
						["sourceQuests"] = { 32250 },	-- The Might of the Warchief
						["qg"] = 68072,	-- Kor'kron Bodyguard
					}),
					q(32351, {	-- Echoes of Thunder
						["sourceQuests"] = { 32384 },	-- Trapping the Leader
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+10750 },
					}),
					q(32168, {	-- End of an Elder
						["sourceQuests"] = { 32182 },	-- Beastmaster's Quarry: The Tiger
						["qg"] = 67447,	-- Jorn Skyseer (summons the mob)
						["coord"] = { 11.7, 60.8, KRASARANG_WILDS },
						["isDaily"] = true,
						["crs"] = { 67438 },	-- Krasari Elder (killing the mob procs the quest)
					}),
					q(32319, {	-- Find Thrall!
						["sourceQuests"] = { 32318 },	-- Regeneration Takes Time
						["qg"] = 68023,	-- Vol'jin
						["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(92510),	-- Vol'jin's Hearthstone (QI!)
						},
					}),
					q(32235, {	-- Flash! Aaaaaahhhh!
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67880,	-- Blood Guard Gro'tash
						["coord"] = { 9.05, 51.2, KRASARANG_WILDS },
						["isDaily"] = true,
						["groups"] = {
							i(92019),	-- The Bilgewater Molotov (QI!)
						},
					}),
					q(32329, {	-- Get My Results!
						["sourceQuests"] = { 32352 },	-- A Gathering Storm
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+2700 },
					}),
					q(32130, {	-- Good Luck, Have Fun
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
						["coord"] = { 79.8, 30.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32405, {	-- Hand of the Silver Covenant
						["sourceQuests"] = { 32404 },	-- Violence in the Arena
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 54.3, 28.3, 502 },
					}),
					q(32134, {	-- Hard Counter
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
						["coord"] = { 79.8, 30.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32135, {	-- Hero Killer
						["sourceQuests"] = { 32450 },	-- The Time is Now!
						["qg"] = 67628,	-- Shademaster Kiryn
						["coord"] = { 79.7, 30.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32326, {	-- Insertion
						["sourceQuests"] = { 32392 },	-- The Divine Bell
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+14540 },	-- possibly 14530
					}),
					q(32344, {	-- It Is A Mystery
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32403, {	-- It Starts in the Sewers
						["sourceQuests"] = { 32402 },	-- The Situation In Dalaran
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 31.4, 50.4, 502 },
					}),
					q(32348, {	-- Kick 'em While They're Down
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32199, {	-- Krasarang Steampot
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67562,	-- Duke
						["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32410, {	-- Krasus' Landing
						["sourceQuests"] = { 32406 },	-- A Tactical Assault
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.9, 48.0, 501 },
					}),
					q(32120, {	-- Legacy of Ogudei
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32379, {	-- Legacy of the Korune
						["sourceQuests"] = { 32376 },	-- To the Valley!
						["qg"] = 68370,	-- Lor'themar Theron
						["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(92801),	-- Korune Orders (QI!)
							i(92802),	-- Legacy of the Korune (QI!)
							i(92803),	-- Sealed Korune Artifact (QI!)
						},
					}),q(32368, {	-- Memory Wine
						["sourceQuests"] = { 32448 },	-- Ties with the Past
						["qg"] = 68287,	-- Baine Bloodhoof
						["coord"] = { 60.3, 55.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(92756),	-- Memory Wine (QI!)
						},
					}),
					q(32197, {	-- Mystery Meatloaf
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67562,	-- Duke
						["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32343, {	-- Ogudei's Lieutenants
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32412, {	-- One Last Grasp
						["sourceQuests"] = { 32411 },	-- The Remaining Sunreavers
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.9, 48.0, 501 },
					}),
					q(32141, {	-- Power Metal
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67537,	-- Daxil "The Gem" Oregrind
						["coord"] = { 22.4, 60.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32237, {	-- Precious Resource
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67553,	-- Bixy Buzzsaw
						["coord"] = { 25.3, 58.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32318, {	-- Regeneration Takes Time
						["sourceQuests"] = { 32284 },	-- Someone You Should See
						["qg"] = 67866,	-- Chen Stormstout
						["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
						["groups"] = {
							i(92499),	-- Sturdy Needle (QI!)
						},
					}),
					q(32256, {	-- Rise Of An Empire
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, FRIENDLY+950 },
					}),
					q(32137, {	-- Runnin' On Empty
						["sourceQuests"] = { 32136 },	-- Work Order: Fuel
						["qg"] = 67542,	-- Grizzle Gearslip
						["coord"] = { 25.6, 58.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32133, {	-- Sentry Wards
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67628,	-- Shademaster Kiryn
						["coord"] = { 79.8, 30.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32284, {	-- Someone You Should See
						["sourceQuests"] = { 32257 },	-- Voice of the Gods
						["qg"] = 67865,	-- Messenger Grummle
						["coord"] = { 9.62, 51.2, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, FRIENDLY+4900 },
					}),
					q(32139, {	-- Stacked!
						["sourceQuests"] = { 32138 },	-- Work Order: Lumber
						["qg"] = 67534,	-- Zino "The Shredder" Quickchop
						["isDaily"] = true,
					}),
					q(32221, {	-- Storming the Beach
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67608,	-- Rivett Clutchpop
						["coord"] = { 12.0, 53.7, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32118, {	-- Taking Advantage
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 67847,	-- Belloc Brightblade
						["coord"] = { 80.2, 30.0, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32126, {	-- Tear It Up
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67767,	-- Brolic
						["coord"] = { 9.55, 50.9, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32398, {	-- The Bell Speaks
						["sourceQuests"] = {
							32412,	-- One Last Grasp
							32413,	-- A Return to Krasarang
						},
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, EXALTED },
					}),
					q(32327, {	-- The Darnassus Mission
						["sourceQuests"] = { 32326 },	-- Insertion
						["qg"] = 68077,	-- Fanlyr Silverthorn
						["coord"] = { 40.0, 50.4, TELDRASSIL },
					}),
					q(32392, {	-- The Divine Bell
						["sourceQuests"] = { 32391 },	-- The Ruins of Korune
						["qg"] = 68337,	-- Ishi
						["coord"] = { 32.9, 26.3, KUN_LAI_SUMMIT },
					}),q(32320, {	-- The Horde Is Family
						["sourceQuests"] = { 32319 },	-- Find Thrall!
						["qg"] = 68025,	-- Thrall
						["coords"] = {
							{ 38.4, 46.6, ECHO_ISLES },
							{ 44.6, 66.9, VALLEY_OF_TRIALS },
						},
						["groups"] = {
							i(92510),	-- Vol'jin's Hearthstone (QI!)
						},
					}),
					q(32244, {	-- The Korune
						["sourceQuests"] = { 32190 },	-- To Mogujia
						["qg"] = 67603,	-- Fanlyr Silverthorn
						["coord"] = { 57.1, 78.6, KUN_LAI_SUMMIT },
						["groups"] = {
							i(92072),	-- Korune Codex (QI!)
						},
					}),
					q(32363, {	-- The Kun-Lai Expedition
						["sourceQuests"] = { 32330 },	-- What's in the Box?
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+6650 },
					}),
					q(32250, {	-- The Might of the Warchief
						["sourceQuests"] = { 32249 },	-- Meet the Scout
						["qgs"] = {
							67867,	-- Garrosh Hellscream
							68072,	-- Kor'kron Bodyguard
						},
						["coord"] = { 7.41, 62.7, KRASARANG_WILDS },
					}),
					q(32391, {	-- The Ruins of Korune
						["sourceQuests"] = { 32368 },	-- Memory Wine
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+10515 },	-- possibly up to 10755?  it didn't show up for me until turning in a quest that took me from 10455 to 11145
					}),
					q(32449, {	-- The Ruins of Ogudei
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67880,	-- Blood Guard Gro'tash
						["coord"] = { 9.04, 51.2, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32409, {	-- The Kirin Tor's True Colors
						["sourceQuests"] = { 32406 },	-- A Tactical Assault
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.9, 48.0, 501 },
					}),
					q(32411, {	-- The Remaining Sunreavers
						["sourceQuests"] = {
							32410,	-- Krasus' Landing
							32409,	-- The Kirin Tor's True Colors
							32408,	-- The Silver Covenant's Stronghold
						},
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.9, 48.0, 501 },
						["groups"] = {
							i(93124),	-- Tear of the Sin'dorei (QI!)
						},
					}),
					q(32408, {	-- The Silver Covenant's Stronghold
						["sourceQuests"] = { 32406 },	-- A Tactical Assault
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 50.9, 48.0, 501 },
					}),
					q(32402, {	-- The Situation In Dalaran
						["sourceQuests"] = { 32328 },	-- Victorious Return
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, REVERED+18500 },
					}),
					q(32342, {	-- The Spirit Trap
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32450, {	-- The Time Is Now!
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67880,	-- Blood Guard Gro'tash
						["coord"] = { 9.0, 51.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),q(32448, {	-- Ties with the Past
						["sourceQuests"] = { 32363 },	-- The Kun-Lai Expedition
						["qg"] = 68287,	-- Baine Bloodhoof
						["coord"] = { 60.3, 55.2, KUN_LAI_SUMMIT },
						["groups"] = {
							i(93212),	-- Spirit Essence of Varatus (QI!)
						},
					}),
					q(32190, {	-- To Mogujia
						["sourceQuests"] = { 32372 },	-- De-Subjugation
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+2850 },
					}),
					q(32376, {	-- To the Valley!
						["sourceQuests"] = {
							32191,	-- Ancient Guardians
							32192,	-- Bloodlines
							32244,	-- The Korune
						},
						["qg"] = 67939,	-- General Nazgrim
						["coord"] = { 10.4, 53.7, KRASARANG_WILDS },
						["minReputation"] = { FACTION_DOMINANCE_OFFENSIVE, HONORED+6800 },
					}),
					q(32384, {	-- Trapping the Leader
						["sourceQuests"] = {
							32378,	-- Clearing a Path
							32379,	-- Legacy of the Korune
						},
						["qg"] = 68370,	-- Lor'themar Theron
						["coord"] = { 53.8, 49.1, KUN_LAI_SUMMIT },
					}),
					q(32238, {	-- Universal Remote-Explode
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67554,	-- Bixy Buzzsaw
						["coord"] = { 22.2, 60.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32328, {	-- Victorious Return
						["sourceQuests"] = { 32327 },	-- The Darnassus Mission
						["qg"] = 68077,	-- Fanlyr Silverthorn
						["coord"] = { 40.0, 50.4, TELDRASSIL },
					}),
					q(32404, {	-- Violence in the Arena
						["sourceQuests"] = { 32403 },	-- It Starts in the Sewers
						["qg"] = 68586,	-- Grand Magister Rommath
						["coord"] = { 45.1, 54.0, 502 },
					}),
					q(32257, {	-- Voice of the Gods
						["sourceQuests"] = { 32242 },	-- Buried Secrets
						["qg"] = 67834,	-- Fanlyr Silverthorn
						["coord"] = { 20.9, 15.7, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(92425),	-- Ancient Korune Tablet (QI!)
						},
					}),
					q(32222, {	-- Wanted: Chief Engineer Cogwrench
						["sourceQuests"] = { 32108 },	-- Domination Point
						["provider"] = { "o", 216322 },	-- Bounty Board
						["coord"] = { 11.8, 54.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32223, {	-- Wanted: Lieutenant Ethan Jacobson
						["sourceQuests"] = { 32108 },	-- Domination Point
						["provider"] = { "o", 216322 },	-- Bounty Board
						["coord"] = { 11.8, 54.3, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32131, {	-- We Require More Minerals!
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67402,	-- Zazzix "Toasty" Sparkrocket
						["coord"] = { 79.8, 30.1, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32345, {	-- We're Not Monsters!
						["sourceQuests"] = { 32449 },	-- The Ruins of Ogudei
						["qg"] = 68274,	-- Kaelis Sunsoar
						["coord"] = { 36.2, 41.1, 421 },	-- Ruins of Ogudei
						["isDaily"] = true,
					}),
					q(32330, {	-- What's in the Box?
						["sourceQuests"] = { 32329 },	-- Get My Results!
						["qg"] = 16802,	-- Lor'themar Theron
						["coord"] = { 54.0, 20.4, SILVERMOON_CITY },
					}),
					q(32136, {	-- Work Order: Fuel
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67535,	-- Boss-Lady Trixel
						["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32138, {	-- Work Order: Lumber
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67535,	-- Boss-Lady Trixel
						["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32140, {	-- Work Order: Iron
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67535,	-- Boss-Lady Trixel
						["coord"] = { 12.9, 53.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
					q(32132, {	-- Worker Harassment
						["sourceQuests"] = { 32108 },	-- Domination Point
						["qg"] = 67628,	-- Shademaster Kiryn
						["coord"] = { 79.8, 30.4, KRASARANG_WILDS },
						["isDaily"] = true,
					}),
				})),
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
							i(93231, {	-- Grand Commendation of Operation: Shieldwall
								["races"] = ALLIANCE_ONLY,
							}),
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
				n(67751, {	-- Ongrom Black Tooth <Collector of Commissions>
					["coord"] = { 9.71, 51.0, KRASARANG_WILDS },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(122211, {	-- Music Roll: War March
							["cost"] = { { "i", 91838, 500 } },	-- 500x Lion's Landing Commission
							["timeline"] = { ADDED_6_1_0 },
						}),
						i(92527, {	-- Rodent Crate
							["description"] = "Using the Rodent Crate will spawn 5-7 Sumprush Rodents in the surrounding area. Any players may engage in battle with these wild pets, not just the user of the item.|r",
							["cost"] = { { "i", 91838, 2000 } },	-- 2,000x Lion's Landing Commission
							["groups"] = {
								pet(1128),	-- Sumprush Rodent (PET!)
							},
						}),
					},
				}),
				n(67881, {	-- Proveditor Grantley <Collector of Commissions>
					["coord"] = { 94.4, 29.3, KRASARANG_WILDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(122202, {	-- Music Roll: High Seas
							["cost"] = { { "i", 91877, 500 } },	-- 500x Domination Point Commission
							["timeline"] = { ADDED_6_1_0 },
						}),
						i(92532, {	-- Rodent Crate
							["description"] = "Using the Rodent Crate will spawn 5-7 Sumprush Rodents in the surrounding area. Any players may engage in battle with these wild pets, not just the user of the item.|r",
							["cost"] = { { "i", 91877, 2000 } },	-- 2,000x Domination Point Commission
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
							i(93232, {	-- Grand Commendation of the Dominance Offensive
								["races"] = HORDE_ONLY,
							}),
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
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, applyclassicphase(MOP_PHASE_LANDFALL, bubbleDown({ ["timeline"] = { ADDED_5_1_0 } }, {
	m(KRASARANG_WILDS, {
		faction(FACTION_DOMINANCE_OFFENSIVE, {
			n(QUESTS, {
				q(32306),	-- Lumber Collection Tracking - triggered during Work Order: Lumber
				q(32361),	-- triggered after turning in #32352, "A Gathering Storm," part of the Dominance Offensive campaign
				q(32364),	-- triggered after turning in #32448, "Ties with the Past," part of the Dominance Offensive campaign
				q(32437),	-- Tracking Event: Saw Sarannha 1 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign
				q(32438),	-- Tracking Event: Saw Sarannha 2 - triggered at the end of "The Divine Bell," part of the Dominance Offensive campaign
			}),
		}),
		faction(FACTION_OPERATION_SHIELDWALL, {
			n(QUESTS, {
				q(32357),	-- Tracking Event: Event Complete - triggeres after watching the RP after turning in "Heart of the Alliance" (questID 32316)
				q(32356),	-- Tracking Event: Ambassadors Summoned - triggeres  "Heart of the Alliance" completion
				q(32395),	-- Tracking Event: Saw Avartu - triggered while on "The Divine Bell," part of the Operation: Shieldwall campaign (at the end of the quest before killing Avartu)
				q(32339),	-- Rebuilding the Mallet (Tracker) - triggered after turning in The Head and The Harmonic Ointment (The Handle was turned in earlier, but presumably requires all 3), part of the Operation: Shieldwall campaign
				q(32365),	-- Tracking Event: Epilogue Complete - triggered after turning in "The Silence" and watching the RP, part of the Operation: Shieldwall campaign. didn't go off until I left the area and turned in another quest (which is a daily that doesn't normally have any additional tracking quests attached, so i know it was from the final campaign quest)
			}),
		}),
	}),
}))));
