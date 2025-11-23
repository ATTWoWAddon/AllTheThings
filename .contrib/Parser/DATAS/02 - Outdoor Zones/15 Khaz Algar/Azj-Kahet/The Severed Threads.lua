---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
SEVERED_THREADS_PACT = createHeader({
	readable = "Severed Threads Pact",
	icon = 5409320,
	text = {
		en = "Severed Threads Pact",
		es = "Pacto de Los Hilos Cortados",
		mx = "Pacto de Los Hilos Cortados",
		ru = "Пакт Отрезанных нитей",
		cn = "斩离之丝契约",
		tw = "斷裂絲線合約",
	},
});
root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(AZJ_KAHET, {
		header(HEADERS.Faction, FACTION_THE_SEVERED_THREADS, {
			["icon"] = 5891370,
			["groups"] = {
				faction(FACTION_THE_SEVERED_THREADS),
				title(567, {	-- Thread-Spinner
					["minReputation"] = { FACTION_THE_SEVERED_THREADS , 25 },
				}),
				n(ACHIEVEMENTS, {
					ach(40838, {	-- The Severed Threads
						["minReputation"] = { FACTION_THE_SEVERED_THREADS , 15 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41149, {	-- The Severed Threads
						["minReputation"] = { FACTION_THE_SEVERED_THREADS , 15 },
						["timeline"] = { ADDED_11_0_7 },
					}),
					ach(40907, {	-- We Rise Anew
						["minReputation"] = { FACTION_THE_SEVERED_THREADS , 25 },
						["timeline"] = { ADDED_11_0_2, REMOVED_11_0_7 },
					}),
					ach(41164, {	-- We Rise Anew
						["minReputation"] = { FACTION_THE_SEVERED_THREADS , 25 },
						["timeline"] = { ADDED_11_0_7 },
					}),
				}),
				n(QUESTS, sharedData({
					["qgs"] = {
						223750,	-- Lady Vinazian <Severed Threads Quartermaster>
						220867,	-- Y'tekhi <Renown Quartermaster>
					},
					["coord"] = { 55.3, 41.2, AZJ_KAHET },
				}, bubbleDownRep(FACTION_THE_SEVERED_THREADS, {
					{		-- RENOWN 1 --
					}, {	-- RENOWN 2 --
					}, {	-- RENOWN 3 --
						q(82417),	-- A Rare Key
					}, {	-- RENOWN 4 --
					}, {	-- RENOWN 5 --
					}, {	-- RENOWN 6 --
						q(82418),	-- A Cache of Crests and Power
					}, {	-- RENOWN 7 --
					}, {	-- RENOWN 8 --
						q(85535),	-- Kej
					}, {	-- RENOWN 9 --
						q(82431),	-- Unsevered Threads
						q(85531, {	-- Earth-Encrusted Gem
							i(223951),	-- Earth-Encrusted Gem
						}),
					}, {	-- RENOWN 10 --
						q(82432, {	-- A Gift Handwoven
							i(218349),	-- Tabard of the Severed Threads (COSMETIC!)
						}),
					}, {	-- RENOWN 11 --
					}, {	-- RENOWN 12 --
						q(82433),	-- Power, Etched in the Deep
					}, {	-- RENOWN 13 --
						q(82434),	-- Unlock a Reward
					}, {	-- RENOWN 14 --
						q(82435),	-- Valorstones
						q(85532),	-- The Wealth of a Kingdom
					}, {	-- RENOWN 15 --
					}, {	-- RENOWN 16 --
					}, {	-- RENOWN 17 --
					}, {	-- RENOWN 18 --
						q(82440),	-- Crests
						q(85533),	-- Kej
					}, {	-- RENOWN 19 --
					}, {	-- RENOWN 20 --
						q(82442),	-- Keep Up Appearances
					}, {	-- RENOWN 21 --
						q(82443),	-- Tokens of Her Favor
					}, {	-- RENOWN 22 --
						q(82444),	-- The Weaver's Cache
						q(85534),	-- The General's Cache
					}, {	-- RENOWN 23 --
					}, {	-- RENOWN 24 --
						q(82446, {	-- For What Glimmers in Shadow
							i(224072),	-- Enchanted Runed Harbinger Crest
						}),
					}, {	-- RENOWN 25 --
						------ Paragon ------
						q(79196, {	-- Renowned with The Severed Threads
							["isRepeatable"] = true,
							["groups"] = { i(225247) },	-- Overflowing Severed Threads Trove
						}),
					},
				}))),
				n(SEVERED_THREADS_PACT, bubbleDownSelf({ ["minReputation"] = { FACTION_THE_SEVERED_THREADS, 3 } }, {
					faction(FACTION_THE_GENERAL),
					faction(FACTION_THE_VIZIER),
					faction(FACTION_THE_WEAVER),
					n(ACHIEVEMENTS, {
						ach(40874, sharedDataSelf({	-- The Grand Tapestry
							["minReputation"] = { FACTION_THE_WEAVER, 9 },
						}, {
							title(572),	-- Silksinger <Name>
						})),
						ach(40875, sharedDataSelf({	-- True Strength
							["minReputation"] = { FACTION_THE_GENERAL, 9 },
						}, {
							title(573),	-- Anub'<Name>
						})),
						ach(40876, sharedDataSelf({	-- Vox Arachnid
							["minReputation"] = { FACTION_THE_VIZIER, 9 },
						}, {
							title(574),	-- <Name>, Hand of the Vizier
						})),
					}),
					n(QUESTS, {
						n(EMISSARY_QUESTS, {
							q(83739, {	-- Notorious with The General
								["provider"] = { "n", 229184 },	-- Aspirant Kiipka
								["coord"] = { 55.8, 42.2, AZJ_KAHET },
								["isRepeatable"] = true,
								["groups"] = {
									i(226045),	-- The General's Trove
								},
							}),
							q(83740, {	-- Notorious with The Vizier
								["provider"] = { "n", 224733 },	-- Tulumun <Assistant to the Executor>
								["coord"] = { 56.2, 42.2, AZJ_KAHET },
								["isRepeatable"] = true,
								["groups"] = {
									i(226100),	-- The Vizier's Trove
								},
							}),
							q(83738, {	-- Notorious with The Weaver
								["provider"] = { "n", 224733 },	-- Bobbin <Eye of the Weaver>
								["coord"] = { 56.4, 43.2, AZJ_KAHET },
								["isRepeatable"] = true,
								["groups"] = {
									i(226103),	-- The Weaver's Trove
								},
							}),
						}),
						q(84022, {	-- Uniting Severed Threads
							["provider"] = { "n", 207471 },	-- Widow Arak'nai
							["coord"] = { 55.7, 43.8, AZJ_KAHET },
						}),
						q(84700, {	-- Pacts Below
							["provider"] = { "n", 230098 },	-- Spindle
							["coord"] = { 46.1, 50.0, DORNOGAL },
							["lockCriteria"] = { 1, "questID", 84681 },	-- AW HQT for 'Of Pacts and Patrons'
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(84682, {	-- Of Pacts and Patrons
							["sourceQuests"] = { 84700 },	-- Pacts Below
							["provider"] = { "n", 207471 },	-- Widow Arak'nai
							["coord"] = { 55.7, 43.8, AZJ_KAHET },
							["lockCriteria"] = { 1, "questID", 84681 },	-- AW HQT for 'Of Pacts and Patrons'
							["DisablePartySync"] = true,
						}),
						header(HEADERS.Achievement, 40832, {	-- Leave it to Weaver
							q(83276, {	-- Saving Private Spindle
								-- ["sourceQuests"] = {  },
								["provider"] = { "n", 207471 },	-- Widow Arak'nai
								["coord"] = { 55.6, 43.9, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_WEAVER, 4 },
							}),
							q(83277, {	-- Personal Pilfering
								["sourceQuests"] = { 83276 },	-- Saving Private Spindle
								["provider"] = { "n", 226019 },	-- Spindle
								["coord"] = { 87.7, 59.3, NERUBAR },
								["minReputation"] = { FACTION_THE_WEAVER, 4 },
								["groups"] = {
									i(225341),	-- Incriminating Dagger (QI!)
									i(225344),	-- Incriminating Evidence (QI!)
									i(225343),	-- Incriminating Journal Entry (QI!)
									i(225342),	-- Incriminating Script (QI!)
								},
							}),
							q(79532, {	-- Tinker, Tailor, Soldier, Spider
								["sourceQuests"] = { 83277 },	-- Personal Pilfering
								["provider"] = { "n", 207471 },	-- Widow Arak'nai
								["coord"] = { 55.6, 43.9, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_WEAVER, 7 },
							}),
							q(79627, {	-- Wine and Die
								["sourceQuests"] = { 79532 },	-- Tinker, Tailor, Soldier, Spider
								["provider"] = { "n", 227428 },	-- Widow Arak'nai
								["coord"] = { 62.9, 12.1, NERUBAR_LOWER },
								["minReputation"] = { FACTION_THE_WEAVER, 7 },
								["groups"] = {
									o(453716, {	-- Cache of Expensive Libations
										["coord"] = { 78.0, 53.0, NERUBAR },
										["groups"] = {
											i(213538),	-- Wood-Worm Tonic (QI!)
										},
									}),
								},
							}),
							q(79633, {	-- The Weaver's Legacy
								["sourceQuests"] = { 79627 },	-- Wine and Die
								["provider"] = { "n", 216298 },	-- Meesk the Venomtongue
								["coord"] = { 62.8, 22.9, NERUBAR },
								["minReputation"] = { FACTION_THE_WEAVER, 7 },
								["groups"] = {
									ach(40832),	-- Leave it to Weaver
									i(226103),	-- The Weaver's Trove
								},
							}),
						}),
						header(HEADERS.Achievement, 40833, {	-- The General's Salute
							q(82338, {	-- Absent Errand
								["provider"] = { "n", 224345 },	-- Anub'azal <Lord of Heritage Forces>
								["coord"] = { 55.0, 41.1, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_GENERAL, 4 },
							}),
							q(82339, {	-- An Honorless Kill
								["sourceQuests"] = { 82338 },	-- Absent Errand
								["provider"] = { "n", 223760 },	-- Ukos'via <Historical Spinner>
								["coord"] = { 40.9, 33.5, NERUBAR },
								["minReputation"] = { FACTION_THE_GENERAL, 4 },
								["groups"] = {
									i(225637),	-- Poisoned Dagger (QI!)
									i(225635),	-- Zev'kall's Attrition Log (QI!)
								},
							}),
							q(82121, {	-- Demand Satisfaction
								["sourceQuests"] = { 82339 },	-- An Honorless Kill
								["provider"] = { "n", 224345 },	-- Anub'azal <Lord of Heritage Forces>
								["coord"] = { 55.0, 41.1, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_GENERAL, 7 },
							}),
							q(82122, {	-- Duel of the Fates
								["sourceQuests"] = { 82121 },	-- Demand Satisfaction
								["provider"] = { "n", 222788 },	-- Anub'azal <Lord of Heritage Forces>
								["coord"] = { 46.0, 24.2, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_GENERAL, 7 },
							}),
							q(82123, {	-- The General's Conviction
								["sourceQuests"] = { 82122 },	-- Duel of the Fates
								["provider"] = { "n", 224547 },	-- Anub'azal <Lord of Heritage Forces>
								["coord"] = { 46.0, 24.2, AZJ_KAHET },
								["minReputation"] = { FACTION_THE_GENERAL, 7 },
								["groups"] = {
									ach(40833),	-- The General's Salute
									i(226045),	-- The General's Trove
								},
							}),
						}),
						header(HEADERS.Achievement, 40835, {	-- Vizier than Ever
							q(83177, {	-- Socialized Medicine
								["provider"] = { "n", 208782 },	-- Executor Nizrek
								["coord"] = { 52.9, 46.2, NERUBAR },
								["minReputation"] = { FACTION_THE_VIZIER, 4 },
								["groups"] = {
									i(224799),	-- Nizrek's potion (QI!)
								},
							}),
							q(83178, {	-- Rules and Consequences
								["sourceQuests"] = { 83177 },	-- Socialized Medicine
								["provider"] = { "n", 208782 },	-- Executor Nizrek
								["coord"] = { 52.9, 46.2, NERUBAR },
								["minReputation"] = { FACTION_THE_VIZIER, 4 },
							}),
							q(82954, {	-- Knives in the Dark
								["sourceQuests"] = { 83178 },	-- Rules and Consequences
								["provider"] = { "n", 208782 },	-- Executor Nizrek
								["coord"] = { 52.9, 46.1, NERUBAR },
								["minReputation"] = { FACTION_THE_VIZIER, 7 },
							}),
							q(82953, {	-- A Cordial Invitation
								["sourceQuests"] = { 83178 },	-- Rules and Consequences
								["provider"] = { "n", 208782 },	-- Executor Nizrek
								["coord"] = { 52.9, 46.1, NERUBAR },
								["minReputation"] = { FACTION_THE_VIZIER, 7 },
							}),
							q(82955, {	-- The Vizier's Resolve
								["sourceQuests"] = {
									82954,	-- Knives in the Dark
									82953,	-- A Cordial Invitation
								},
								["provider"] = { "n", 225024 },	-- Executor Nizrek
								["coord"] = { 54.7, 33.2, NERUBAR },
								["minReputation"] = { FACTION_THE_VIZIER, 7 },
								["groups"] = {
									ach(40835),	-- Vizier than Ever
									i(226100),	-- The Vizier's Trove
								},
							}),
						}),
					}),
					-- The General
					n(QUESTS, sharedData({
						["isDaily"] = true,
						["sourceQuests"] = {
							78256,	-- The General's Consensus
							80545,	-- The General Weekly pickup
							80546,	-- The Vizier Weekly pickup
							80544,	-- The Weaver Weekly pickup
						},
						["sourceQuestNumRequired"] = 1,
						["cost"] = {{"i",228949,1}},	-- Rumor Map
					},{
						q(81491, {	-- Armaments: Arbalests
							["provider"] = { "n", 224171 },	-- Eirzay
							["coord"] = { 61.3, 36.2, NERUBAR_LOWER },
							["groups"] = {
								o(439531),	-- Unattended Arbalest
							},
						}),
						q(81492, {	-- Armaments: Smithing Tools
							["provider"] = { "n", 224172 },	-- Eirzay
							["coord"] = { 54.5, 63.6, AZJ_KAHET },
							["groups"] = {
								o(439532),	-- Sureki Smithing Tool
							},
						}),
						q(81477, {	-- Armaments: Weaponry
							["provider"] = { "n", 224170 },	-- Eirzay
							["coord"] = { 58.1, 39.3, NERUBAR_LOWER },
							["groups"] = {
								o(439474),	-- Queensguard Weaponry
							},
						}),
						q(81490, {	-- Bounty: Balaxir the Bully
							["provider"] = { "n", 224168 },	-- Eirzay
							["coord"] = { 49.7, 44.3, NERUBAR_LOWER },
							["crs"] = { 221203 },	-- Balaxir the Bully
						}),
						q(81476, {	-- Bounty: Goliath
							["provider"] = { "n", 224166 },	-- Eirzay
							["coord"] = { 36.1, 50.2, NERUBAR },
							["crs"] = { 220917 },	-- Chitinous Goliath
						}),
						q(81489, {	-- Bounty: Zorikal the Patron
							["provider"] = { "n", 224167 },	-- Eirzay
							["coord"] = { 15.6, 45.7, NERUBAR },
							["crs"] = { 221202 },	-- Zorikal the Patron
						}),
						q(81475, {	-- Breaking the Phalanx: Royal Appointments
							["provider"] = { "n", 224161 },	-- Eirzay
							["coord"] = { 43.0, 47.1, NERUBAR },
							["crs"] = { 220916 },	-- Royal Appointee
						}),
						q(81488, {	-- Breaking the Phalanx: Sages
							["provider"] = { "n", 224163 },	-- Eirzay
							["coord"] = { 27.9, 56.7, NERUBAR },
							["crs"] = {
								221191,	-- Schismatic Acolyte
								217027,	-- Schismatic Priest
							},
						}),
						q(81487, {	-- Breaking the Phalanx: Threadblades
							["provider"] = { "n", 224162 },	-- Eirzay
							["coord"] = { 30.6, 42.6, NERUBAR },
							["crs"] = { 221190 },	-- Loyalist Threadblade
						}),
						q(81494, {	-- Relics of War: Rak-Zakaz
							["provider"] = { "n", 224176 },	-- Eirzay
							["coord"] = { 61.4, 24.1, NERUBAR_LOWER },
							["groups"] = {
								o(454176, {	-- Kaheti Armaments
									i(225738),	-- Kaheti Warblade (QI!)
								}),
							},
						}),
						q(81478, {	-- Relics of War: The Ruptired Lake
							["provider"] = { "n", 224173 },	-- Eirzay
							["coord"] = { 36.4, 49.2, AZJ_KAHET },
							["groups"] = {
								o(439562, {	-- Fallen Aeroknight
									["coords"] = {
										{ 26.5, 42.1, AZJ_KAHET },
										{ 27.8, 39.7, AZJ_KAHET },
										{ 28.7, 37.6, AZJ_KAHET },
										{ 29.3, 43.8, AZJ_KAHET },
										{ 29.5, 37.0, AZJ_KAHET },
										{ 31.5, 45.7, AZJ_KAHET },
										{ 31.6, 37.7, AZJ_KAHET },
										{ 32.0, 42.0, AZJ_KAHET },
									},
									["groups"] = { i(219415) },	-- Bloodied Insignia (QI!)
								}),
							},
						}),
						q(81493, {	-- Relics of War: The Salien Gutter Conflict
							["provider"] = { "n", 224174 },	-- Eirzay
							["coord"] = { 63.8, 26.3, NERUBAR_LOWER },
							["groups"] = {
								i(219429),	-- Ritual Kobyss Spear (QI!)
							},
						}),
					})),
					-- The Vizier
					n(QUESTS, sharedData({
						["isDaily"] = true,
						["sourceQuests"] = {
							80545,	-- The General Weekly pickup
							80546,	-- The Vizier Weekly pickup
							80544,	-- The Weaver Weekly pickup
							78248,	-- What We Still Have
						},
						["sourceQuestNumRequired"] = 1,
						["cost"] = {{"i",228949,1}},	-- Rumor Map
					},{
						q(81495, {	-- Requisitions: Brightblooms
							["provider"] = { "n", 224178 },	-- Ghos'opp
							["coord"] = { 64.2, 21.2, NERUBAR },
							["groups"] = {
								o(437767, {	-- Crate of Hallowfall Herbs
									i(219225),	-- Crystalline Brightbloom (QI!)
								}),
							},
						}),
						q(81496, {	-- Requisitions: Fangpetals
							["provider"] = { "n", 224179 },	-- Ghos'opp
							["coord"] = { 49.2, 51.8, NERUBAR },
							["groups"] = {
								o(437769, {	-- Fragrant Fangpetal
									i(219226),	-- Fragrant Fangpetal (QI!)
								}),
							},
						}),
						q(81479, {	-- Requisitions: Umbrashrooms
							["provider"] = { "n", 224177 },	-- Ghos'opp
							["coord"] = { 52.0, 16.6, NERUBAR },
							["groups"] = {
								o(437726, {	-- Luminescent Umbrashroom
									i(219212),	-- Luminescent Umbrashroom (QI!)
								}),
							},
						}),
						q(81506, {	-- Sabotage: Alchemical Instruments
							["provider"] = { "n", 224186 },	-- Ghos'opp
							["coord"] = { 54.5, 15.5, AZJ_KAHET },
							["groups"] = {
								o(438039),	-- Alchemical Instruments
							},
						}),
						q(81481, {	-- Sabotage: Transformatory Vessels
							["provider"] = { "n", 224183 },	-- Ghos'opp
							["coord"] = { 64.5, 87.3, AZJ_KAHET },
							["groups"] = {
								o(438037),	-- Black Blood Vessel
							},
						}),
						q(81505, {	-- Sabotage: Venomancers
							["provider"] = { "n", 224184 },	-- Ghos'opp
							["coord"] = { 39.5, 51.4, AZJ_KAHET },
							["groups"] = {
								o(438038),	-- Venomancy Flask
							},
						}),
						q(81482, {	-- Testing Formulae: Gelatinous Unguent
							["provider"] = { "n", 224187 },	-- Ghos'opp
							["coord"] = { 50.6, 47.1, NERUBAR },
							["crs"] = { 221072 },	-- Unwitting Hollowguard
							["groups"] = {
								i(219323),	-- Gelatinous Unguent (QI!)
							},
						}),
						q(81502, {	-- Testing Formulae: Malodorous Philter
							["provider"] = { "n", 224189 },	-- Ghos'opp
							["coord"] = { 30.9, 23.0, NERUBAR },
							["crs"] = { 226580 },	-- Unwitting Skeinsguard
							["groups"] = {
								i(219322),	-- Malodorous Philter (QI!)
							},
						}),
						q(81501, {	-- Testing Formulae: Roiling Elixir
							["provider"] = { "n", 224188 },	-- Ghos'opp
							["coord"] = { 47.9, 9.7, NERUBAR },
							["crs"] = { 226579 },	-- Unwitting Umbraguard
							["groups"] = {
								i(219324),	-- Roiling Elixir (QI!)
							},
						}),
						q(81480, {	-- Wild Reagents: Maddening Deep
							["provider"] = { "n", 224182 },	-- Ghos'opp
							["coord"] = { 65.1, 78.8, AZJ_KAHET },
							["crs"] = { 221060 },	-- Pustulant Feaster
							["groups"] = {
								i(219228),	-- Fetid Slime Sac (QI!)
							},
						}),
						q(81497, {	-- Wild Reagents: Salien Gutters
							["provider"] = { "n", 224181 },	-- Ghos'opp
							["coord"] = { 61.1, 74.4, AZJ_KAHET },
							["groups"] = {
								i(219227),	-- Swollen Kobyss Eye (QI!)
							},
						}),
						q(81498, {	-- Wild Reagents: Twitching Gorge
							["provider"] = { "n", 224180 },	-- Ghos'opp
							["coord"] = { 47.2, 58.8, AZJ_KAHET },
							["crs"] = {
								220764,	-- Unsettled Snail
								220765,	-- Juvenile Snail
							},
							["groups"] = {
								i(219254),	-- Writhing Antennae (QI!)
							},
						}),
					})),
					-- The Weaver
					n(QUESTS, sharedData({
						["isDaily"] = true,
						["sourceQuests"] = {
							78393,	-- A Seeming Respite
							80545,	-- The General Weekly pickup
							80546,	-- The Vizier Weekly pickup
							80544,	-- The Weaver Weekly pickup
						},
						["sourceQuestNumRequired"] = 1,
						["cost"] = {{"i",228949,1}},	-- Rumor Map
					},{
						q(80573, {	-- Dropping Eaves: Spoils of War
							["provider"] = { "n", 224193 },	-- Ru'murh
							["coord"] = { 55.0, 26.6, NERUBAR },
							["groups"] = {
								o(437205, {	-- Sureki War Chest
									["coord"] = { 67.3, 33.0, NERUBAR },
									["groups"] = {
										i(219016),	-- Coated Steel Tips (QI!)
										i(218456),	-- Precious Gems (QI!)
										i(219017),	-- Silver Armor Clasps (QI!)
									},
								}),
							},
						}),
						q(81471, {	-- Dropping Eaves: Saving the Past
							["provider"] = { "n", 224195 },	-- Ru'murh
							["coord"] = { 73.3, 50.9, NERUBAR },
							["groups"] = {
								n(221116, {	-- Mug of Screamer Venom
									["coord"] = { 77.7, 53.8, NERUBAR },
								}),
								o(439324, {	-- Discarded Artifacts
									["coord"] = { 36.6, 28.1, NERUBAR },
									["groups"] = { i(219347) },	-- Kaheti Etching (QI!)
								}),
							},
						}),
						q(81470, {	-- Dropping Eaves: Thieving Weave
							["provider"] = { "n", 224194 },	-- Ru'murh
							["coord"] = { 70.3, 31.8, NERUBAR },
							["groups"] = {
								o(439291, {	-- Repossessed Goods
									["coord"] = { 72.1, 45.4, NERUBAR },
									["groups"] = {
										i(219344),	-- Immaculate Spidersilk (QI!)
									},
								}),
							},
						}),
						q(81499, {	-- Information Control: Ascended Intrigue
							["provider"] = { "n", 224198 },	-- Ru'murh
							["coord"] = { 54.8, 34.5, NERUBAR },
							["groups"] = {
								o(439334),	-- Sureki Shadecaster
							},
						}),
						q(81472, {	-- Information Control: Ansurek's Truth
							["provider"] = { "n", 224197 },	-- Ru'murh
							["coord"] = { 39.8, 26.6, NERUBAR },
							["groups"] = {
								o(439339),	-- Sureki Shadecaster
							},
						}),
						q(81473, {	-- Information Control: The Right Side of History
							["provider"] = { "n", 224196 },	-- Ru'murh
							["coord"] = { 77.8, 53.7, NERUBAR },
							["groups"] = {
								o(437216),	-- Sureki Shadecaster
							},
						}),
						q(81504, {	-- Infiltration: Hidden Figures
							["provider"] = { "n", 224201 },	-- Ru'murh
							["coord"] = { 77.5, 42.9, AZJ_KAHET },
							["groups"] = {
								o(439382, {	-- Suspicious Shipment
									i(219358),	-- Bundle of Coded Silks (QI!)
								}),
							},
						}),
						q(81483, {	-- Infiltration: Production Blocker
							["provider"] = { "n", 224199 },	-- Ru'murh
							["coord"] = { 45.6, 51.0, NERUBAR_LOWER },
							["groups"] = {
								o(439348),	-- Mutagen Cache
							},
						}),
						q(81503, {	-- Infiltration: Terror Made Manifest
							["provider"] = { "n", 224200 },	-- Ru'murh
							["coord"] = { 64.2, 75.3, AZJ_KAHET },
							["groups"] = {
								i(219350),	-- Maddening Manifest (QI!)
							},
						}),
						q(81484, {	-- Wet Work: Death of a Salesman
							["provider"] = { "n", 224191 },	-- Ru'murh
							["coord"] = { 68.6, 51.1, NERUBAR },
							["crs"] = { 221055 },	-- Ascended Trafficker
							["groups"] = {
								i(219292),	-- Perplexing Contraband (QI!)
							},
						}),
						q(81500, {	-- Wet Work: Step Into Their Parlor
							["provider"] = { "n", 224192 },	-- Ru'murh
							["coord"] = { 79.7, 56.8, NERUBAR },
							["crs"] = { 221063 },	-- Sureki Shadowstalker
							["groups"] = {
								i(219293),	-- Sureki Intelligence (QI!)
							},
						}),
						q(81555, {	-- Wet Work: Tithe to Kill
							["provider"] = { "n", 224190 },	-- Ru'murh
							["coord"] = { 41.5, 22.4, NERUBAR },
							["crs"] = { 220315 },	-- Sureki Strongarm
							["groups"] = {
								i(217996),	-- Sureki Tithe (QI!)
							},
						}),
					})),
					n(QUESTS, sharedData({ ["isWeekly"] = true }, {
						hqt(80545, name(HEADERS.Faction, FACTION_THE_GENERAL)),	-- picked up 'The General'
						hqt(80546, name(HEADERS.Faction, FACTION_THE_VIZIER)),	-- picked up 'The Vizier'
						hqt(80544, name(HEADERS.Faction, FACTION_THE_WEAVER)),	-- picked up 'The Weaver'

						q(80592, {	-- Forge a Pact
							["sourceQuests"] = {
								84682,	-- Of Pacts and Patrons
								TWW_ACCOUNT_CAMPAIGN_QUEST,
							},
							["sourceQuestNumRequired"] = 1,
							["qgs"] = {
								223750,	-- Lady Vinazian
								220867,	-- Y'tekhi
							},
							["coord"] = { 55.2, 41, AZJ_KAHET },
						}),
						q(80671, {	-- Blade of the General
							["sourceQuests"] = {
								84682,	-- Of Pacts and Patrons
								80592,	-- Forge a Pact
							},
							["sourceQuestNumRequired"] = 1,
							["qgs"] = {
								224729,	-- Anub'okki
								229184,	-- Aspirant Kiipka
								223750,	-- Lady Vinazian
								220867,	-- Y'tekhi
							},
							["coords"] = {
								{ 55.2, 41, AZJ_KAHET },
								{ 55.9, 42.2, AZJ_KAHET },
							},
							["groups"] = {
								i(225572, {	-- The General's War Chest (S1)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
								}),
								i(239122, {	-- The General's War Chest (S2)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
								}),
								i(250767, {	-- The General's War Chest (S3)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_2_0 },
								}),
							},
						}),
						q(80672, {	-- Hand of the Vizier
							["sourceQuests"] = {
								84682,	-- Of Pacts and Patrons
								80592,	-- Forge a Pact
							},
							["sourceQuestNumRequired"] = 1,
							["qgs"] = {
								223750,	-- Lady Vinazian
								220867,	-- Y'tekhi
							},
							["coord"] = { 55.2, 41, AZJ_KAHET },
							["groups"] = {
								i(225573, {	-- The Vizier's Capital (S1)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
								}),
								i(239124, {	-- The Vizier's Capital (S2)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
								}),
								i(250768, {	-- The Vizier's Capital (S3)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_2_0 },
								}),
							},
						}),
						q(80670, {	-- Eyes of the Weaver
							["sourceQuests"] = {
								84682,	-- Of Pacts and Patrons
								80592,	-- Forge a Pact
							},
							["sourceQuestNumRequired"] = 1,
							["qgs"] = {
								223750,	-- Lady Vinazian
								220867,	-- Y'tekhi
							},
							["coord"] = { 55.2, 41, AZJ_KAHET },
							["groups"] = {
								i(225571, {	-- The Weaver's Gratuity (S1)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_0_2, REMOVED_11_1_0_SEASONSTART },
								}),
								i(239125, {	-- The Weaver's Gratuity (S2)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_1_0_SEASONSTART, REMOVED_11_2_0 },
								}),
								i(250769, {	-- The Weaver's Gratuity (S3)
									["sym"] = {{"select","itemID",228361},{"pop"}},	-- Seasoned Adventurer's Cache [Khaz Algar Zone Rewards content]
									["timeline"] = { ADDED_11_2_0 },
								}),
							},
						}),
					})),
					n(REWARDS, {
						["providers"] = {
							{ "i", 225571 },	-- The Weaver's Gratuity (S1)
							{ "i", 225573 },	-- The Vizier's Capital (S1)
							{ "i", 225572 },	-- The General's War Chest (S1)
							-- #if AFTER 11.1
							{ "i", 239125 },	-- The Weaver's Gratuity (S2)
							{ "i", 239124 },	-- The Vizier's Capital (S2)
							{ "i", 239122 },	-- The General's War Chest (S2)
							-- #endif
							-- #if AFTER 11.2
							{ "i", 250769 },	-- The Weaver's Gratuity (S3)
							{ "i", 250768 },	-- The Vizier's Capital (S3)
							{ "i", 250767 },	-- The General's War Chest (S3)
							-- #endif
						},
						["groups"] = {
							i(223138),	-- Formula: Enchant Cloak - Chant of Winged Grace (RECIPE!)
							i(223135),	-- Formula: Illusory Adornment: Shadow (RECIPE!)
							i(227281),	-- Recipe: Feast of the Midnight Masquerade (RECIPE!)
						},
					}),
					n(VENDORS, {
						n(228184, {	-- Yamas the Provider <Pact Information & Supplies>
							["coord"] = { 55.4, 41.8, AZJ_KAHET },
							["sym"] = {{"select","itemID",
								228944,	-- Crypt Lord's Severed Thread
								228945,	-- Executor's Severed Thread
								226509,	-- General's Insight
								223278,	-- Heritage Undercrawler (MOUNT!)
								226518,	-- Phero-Escape
								223279,	-- Royal Court Undercrawler (MOUNT!)
								228943,	-- Spymaster's Severed Thread
								226512,	-- Treasure Map: Forgotten Memorial
								226513,	-- Treasure Map: Kaheti Excavation
								226514,	-- Treasure Map: Weave-Rat Cache
								226507,	-- Venom Dahn's Webscrub
								226508,	-- Vizier's Influence
								226510,	-- Weaver's Facade
								223276,	-- Widow's Undercrawler (MOUNT!)
							}},
							["groups"] = {
								i(226519, {	-- General's Expertise (TOY!)
									["cost"] = {{"c", KEJ, 1100}},
								}),
								i(226511, {	-- Nerubimorph Poultice
									["cost"] = {{"c", KEJ, 25}},
								}),
								i(228940, {	-- Notorious Thread's Hearthstone
									["cost"] = {{"c", KEJ, 3000}},
								}),
								i(226520, {	-- Queen's Pheromone (CI!) (8.8mil Cost)
									["description"] = "The item costs 8.8mil Kej, however the price of the item decreases by one digit for each exalted (9/9) Severed Threads leader for a final price of 8.888.",
									-- ["cost"] = {{"c", KEJ, 8888888}},
								}),
								i(229193, {	-- Queen's Pheromone (CI!) (888k Cost)
									["description"] = "The item costs 888.888 Kej, however the price of the item decreases by one digit for each exalted (9/9) Severed Threads leader for a final price of 8.888.",
									-- ["cost"] = {{"c", KEJ, 888888}},
								}),
								i(229194, {	-- Queen's Pheromone (CI!) (88k Cost)
									["description"] = "The item costs 88.888 Kej, however the price of the item decreases by one digit for each exalted (9/9) Severed Threads leader for a final price of 8.888.",
									-- ["cost"] = {{"c", KEJ, 88888}},
								}),
								i(229195, {	-- Queen's Pheromone (CI!) (8.888 Cost)
									["description"] = "This version for 8.888 Kej is only visible after you reached exalted (9/9) with all three (3) Severed Threads leaders.",
									["cost"] = {{"c", KEJ, 8888}},
								}),
								i(228949, {	-- Rumor Map
									["cost"] = {{"c", KEJ, 25}},
								}),
								i(228950, {	-- Rumor Map Bundle
									["cost"] = {{"c", KEJ, 125}},
								}),
								i(228952, {	-- Treasure Map Bundle
									["cost"] = {{"c", KEJ, 125}},
								}),
								i(228946, {	-- Weaver's Lair Profession Table (CI!)
									["cost"] = {{"c", KEJ, 500}},
								}),
							},
						}),
					}),
				})),
				n(TREASURES, sharedData({
					["isDaily"] = true,
					["sourceQuest"] = 80544,	-- The Weaver Weekly pickup
					["cost"] = {{"i",226514,1}},	-- Treasure Map: Weave-Rat Cache
				},{
					["groups"] = bubbleDownFiltered({
						["sharedDescription"] = "Interact with Thimble and follow him to reveal his cache.\nOnly available if your weekly pact is with The Weaver.",
					},FILTERFUNC_objectID,{
						o(434527, {	-- Thimble's Cache
							["provider"] = { "n", 224889 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82856,
							["coords"] = {
								{ 53.4, 53.4, AZJ_KAHET },	-- Thimble
								{ 53.0, 53.2, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454318, {	-- Thimble's Cache
							["provider"] = { "n", 220568 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 80559,
							["coords"] = {
								{ 55.1, 68.8, AZJ_KAHET },	-- Thimble
								{ 56.5, 71.8, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454321, {	-- Thimble's Cache
							["provider"] = { "n", 224885 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 80579,
							["coords"] = {
								{ 55.9, 32.5, NERUBAR },	-- Thimble
								{ 41.9, 21.5, NERUBAR },	-- Thimble's Cache
							},
						}),
						o(454323, {	-- Thimble's Cache
							["provider"] = { "n", 224886 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 80580,
							["coords"] = {
								{ 68.7, 55.8, AZJ_KAHET },	-- Thimble
								{ 65.9, 51.9, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454327, {	-- Thimble's Cache
							["provider"] = { "n", 224887 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82854,
							["coords"] = {
								{ 43.8, 26.6, AZJ_KAHET },	-- Thimble
								{ 44.3, 26.2, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454331, {	-- Thimble's Cache
							["provider"] = { "n", 224888 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82855,
							["coords"] = {
								{ 73.9, 39.2, AZJ_KAHET },	-- Thimble
								{ 75.7, 38.2, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454334, {	-- Thimble's Cache
							["provider"] = { "n", 224890 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82857,
							["coords"] = {
								{ 65.9, 88.1, AZJ_KAHET_LOWER },	-- Thimble
								{ 67.5, 83.4, AZJ_KAHET_LOWER },	-- Thimble's Cache
							},
						}),
						o(454337, {	-- Thimble's Cache
							["provider"] = { "n", 224891 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82858,
							["coords"] = {
								{ 69.9, 82.7, NERUBAR },	-- Thimble
								{ 63.9, 85.7, NERUBAR },	-- Thimble's Cache
							},
						}),
						o(454339, {	-- Thimble's Cache
							["provider"] = { "n", 224892 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82859,	-- questID shared with o454340
							["coords"] = {
								{ 26.2, 51.2, NERUBAR },	-- Thimble
								{ 29.5, 65.8, NERUBAR },	-- Thimble's Cache
							},
						}),
						o(454340, {	-- Thimble's Cache
							["provider"] = { "n", 224893 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82859,	-- questID shared with o454339
							["coords"] = {
								{ 29.0, 42.7, AZJ_KAHET },	-- Thimble
								{ 29.4, 38.7, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
						o(454342, {	-- Thimble's Cache
							["provider"] = { "n", 224895 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82862,
							["coords"] = {
								{ 75.2, 48.3, NERUBAR },	-- Thimble
								{ 73.7, 29.0, NERUBAR },	-- Thimble's Cache
							},
						}),
						o(454346, {	-- Thimble's Cache
							["provider"] = { "n", 224894 },	-- Thimble // Weave-Rat Cache (vignette)
							["questID"] = 82861,
							["coords"] = {
								{ 60.6, 10.6, AZJ_KAHET },	-- Thimble
								{ 61.6, 7.0, AZJ_KAHET },	-- Thimble's Cache
							},
						}),
					}),
				})),
				n(TREASURES, sharedData({
					["isDaily"] = true,
					["sourceQuest"] = 80545,	-- The General Weekly pickup
					["cost"] = {{"i",226512,1}},	-- Treasure Map: Forgotten Memorial
					["crs"] = { 220781 },	-- Aspirant Kiipka
				},{
					["groups"] = bubbleDownFiltered({
						["sharedDescription"] = "Interact with the Forgotten Memorial to challenge Aspirant Kiipka and then defeat him.\nOnly available if your weekly pact is with The General.",
					},FILTERFUNC_objectID,{
						o(437060, {	-- Aspirant's Tribute
							["provider"] = { "o", 437058 },	-- Forgotten Memorial
							["coord"] = { 69.1, 81.6, AZJ_KAHET },
							["questID"] = 80688,
						}),
						o(455435, {	-- Aspirant's Tribute
							["provider"] = { "o", 437191 },	-- Forgotten Memorial
							["coord"] = { 60.0, 82.3, AZJ_KAHET },
							["questID"] = 81467,
						}),
						o(455436, {	-- Aspirant's Tribute
							["provider"] = { "o", 437389 },	-- Forgotten Memorial
							["coord"] = { 65.3, 49.1, AZJ_KAHET },
							["questID"] = 81572,
						}),
						o(455437, {	-- Aspirant's Tribute
							["provider"] = { "o", 451595 },	-- Forgotten Memorial
							["coord"] = { 33.7, 42.2, AZJ_KAHET },
							["questID"] = 82873,
						}),
						o(455439, {	-- Aspirant's Tribute
							["description"] = "Inside The Wormlands.",
							["provider"] = { "o", 451596 },	-- Forgotten Memorial
							["coord"] = { 39.3, 41.6, AZJ_KAHET },
							["questID"] = 82874,
						}),
						o(455440, {	-- Aspirant's Tribute
							["provider"] = { "o", 451597 },	-- Forgotten Memorial
							["coord"] = { 63.2, 11.2, AZJ_KAHET },
							["questID"] = 82875,
						}),
						o(455441, {	-- Aspirant's Tribute
							["provider"] = { "o", 451598 },	-- Forgotten Memorial
							["coord"] = { 78.1, 36.2, AZJ_KAHET },
							["questID"] = 82876,
						}),
						o(455442, {	-- Aspirant's Tribute
							["provider"] = { "o", 451599 },	-- Forgotten Memorial
							["coord"] = { 76.3, 65.7, AZJ_KAHET },
							["questID"] = 82877,
						}),
						o(455443, {	-- Aspirant's Tribute
							["provider"] = { "o", 451600 },	-- Forgotten Memorial
							["coord"] = { 75.8, 87.3, AZJ_KAHET },
							["questID"] = 82878,
						}),
						o(455444, {	-- Aspirant's Tribute
							["provider"] = { "o", 451601 },	-- Forgotten Memorial
							["coord"] = { 48.5, 59.6, AZJ_KAHET },
							["questID"] = 82879,
						}),
						o(455445, {	-- Aspirant's Tribute
							["provider"] = { "o", 451602 },	-- Forgotten Memorial
							["coord"] = { 41.0, 29.0, AZJ_KAHET },
							["questID"] = 82880,
						}),
						o(455446, {	-- Aspirant's Tribute
							["provider"] = { "o", 451603 },	-- Forgotten Memorial
							["coord"] = { 7.4, 26.1, NERUBAR },
							["questID"] = 82881,
						}),
					}),
				})),
				n(TREASURES, sharedData({
					["isDaily"] = true,
					["sourceQuest"] = 80546,	-- The Vizier Weekly pickup
					["cost"] = {{"i",226513,1}},	-- Treasure Map: Kaheti Excavation
					["crs"] = { 226483 },	-- Dig Spot
				},{
					["groups"] = bubbleDownFiltered({
						["sharedDescription"] = "Talk to Dor'garad to reveal the Dig Spots. Interract with them to fill the progress bar. After you are done, he'll throw the treasure to you.\nOnly available if your weekly pact is with The General.",
					},FILTERFUNC_objectID,{
						o(455279, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 66.6, 58.8, AZJ_KAHET },
							["questID"] = 82863,
						}),
						o(455320, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 65.6, 90.9, AZJ_KAHET },
							["questID"] = 81567,
						}),
						o(455321, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 44.4, 64.4, NERUBAR_LOWER },
							["questID"] = 81569,
						}),
						o(455322, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 78.5, 74.5, AZJ_KAHET },
							["questID"] = 82864,
						}),
						o(455323, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 79.9, 62.0, AZJ_KAHET },
							["questID"] = 82865,
						}),
						o(455324, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 70.6, 43.4, AZJ_KAHET },
							["questID"] = 82866,
						}),
						o(455325, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 51.3, 58.8, AZJ_KAHET_LOWER },
							["questID"] = 82867,
						}),
						o(455327, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["description"] = "Below the ground, at the lowest level of the Breathing Pit.",
							["coord"] = { 32.8, 54.8, AZJ_KAHET },
							["questID"] = 82868,
						}),
						o(455328, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 55.3, 23.9, AZJ_KAHET },
							["questID"] = 82869,
						}),
						o(455329, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 64.5, 20.0, AZJ_KAHET },
							["questID"] = 82870,
						}),
						o(455330, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["coord"] = { 27.1, 47.2, AZJ_KAHET },
							["questID"] = 82871,
						}),
						o(455331, {	-- Vizier's Appreciation
							["provider"] = { "n", 224900 },	-- Dor'garad
							["description"] = "Below the City of Threads, inside Pillar-nest Xesh.",
							["coords"] = {
								{ 72.5, 57.4, NERUBAR_LOWER },	-- Pillar-nest Xesh Entrance
								{ 65.1, 57.7, NERUBAR_LOWER },	-- Dor'garad
							},
							["questID"] = 82872,
						}),
					}),
				})),
				n(VENDORS, {
					n(224729, {	-- Anub'okki <Disciple of Anub'azal>
						["coord"] = { 55.9, 42.1, AZJ_KAHET },
						["sourceQuests"] = { 78256 },	-- The General Consensus
						["sym"] = {{"select","itemID",
							226519,	-- General's Expertise (TOY!)
							228949,	-- Rumor Map
							228950,	-- Rumor Map Bundle
							228952,	-- Treasure Map Bundle
						}},
						["groups"] = bubbleDownRep(FACTION_THE_GENERAL, {
							{		-- Stranger
							}, {	-- Acquaintance
							}, {	-- Crony
								i(226512, {	-- Treasure Map: Forgotten Memorial
									["cost"] = {{"c", KEJ, 25}},
								}),
								i(226507, {	-- Venom Dahn's Webscrub
									["cost"] = {{"c", KEJ, 25}},
								}),
							}, {	-- Accomplice
								i(226509, {	-- General's Insight
									["cost"] = {{"c", KEJ, 50}},
								}),
							}, {	-- Collaborator
							}, {	-- Accessory
							}, {	-- Abettor
							}, {	-- Conspirator
								i(223278, {	-- Heritage Undercrawler (MOUNT!)
									["cost"] = {{"c", KEJ, 2020}},
								}),
							}, {	-- Mastermind
								i(228944, {	-- Crypt Lord's Severed Thread (CI!)
									["cost"] = {{"c", KEJ, 250}},
								}),
							},
						}),
					}),
					n(229184, {	-- Aspirant Kiipka
						["coord"] = { 55.9, 42.1, AZJ_KAHET },
						["sym"] = {{"sub","common_vendor",224729}},	-- Anub'okki <Disciple of Anub'azal>
					}),
					n(224734, {	-- Bobbin <Eye of the Weaver>
						["coord"] = { 56.4, 43.3, AZJ_KAHET },
						["sym"] = {{"select","itemID",
							226511,	-- Nerubimorph Poultice
							228949,	-- Rumor Map
							228950,	-- Rumor Map Bundle
							228952,	-- Treasure Map Bundle
						}},
						["groups"] = bubbleDownRep(FACTION_THE_WEAVER, {
							{		-- Stranger
							}, {	-- Acquaintance
							}, {	-- Crony
								i(226514, {	-- Treasure Map: Weave-Rat Cache
									["cost"] = {{"c", KEJ, 25}},
								}),
							}, {	-- Accomplice
								i(226510, {	-- Weaver's Facade
									["cost"] = {{"c", KEJ, 50}},
								}),
							}, {	-- Collaborator
							}, {	-- Accessory
							}, {	-- Abettor
							}, {	-- Conspirator
								i(223276, {	-- Widow's Undercrawler (MOUNT!)
									["cost"] = {{"c", KEJ, 2020}},
								}),
							}, {	-- Mastermind
								i(228943, {	-- Spymaster's Severed Thread (CI!)
									["cost"] = {{"c", KEJ, 250}},
								}),
							},
						}),
					}),
					n(226214, {	-- Ka'muko <Kej Currency Exchanger>
						["coord"] = { 56.6, 43.0, AZJ_KAHET },
						["groups"] = {
							i(226195, {	-- Resonance Crystal Cluster
								["cost"] = {{"c", KEJ, 200}},
								["groups"] = {
									-- currency(RESONANCE_CRYSTALS),
								},
							}),
							i(226198, {	-- Resonance Crystal Agglomeration
								["cost"] = {{"c", KEJ, 2000}},
								["groups"] = {
									-- currency(RESONANCE_CRYSTALS),
								},
							}),
							i(226196, {	-- Silk Kej Pouch
								["cost"] = {{"c", RESONANCE_CRYSTALS, 800}},
								["minReputation"] = { FACTION_THE_SEVERED_THREADS, 8 },
								["groups"] = {
									currency(KEJ),
								},
							}),
							i(226199, {	-- Silk Kej Purse
								["cost"] = {{"c", RESONANCE_CRYSTALS, 8000}},
								["minReputation"] = { FACTION_THE_SEVERED_THREADS, 8 },
								["groups"] = {
									currency(KEJ),
								},
							}),
						},
					}),
					n(223750, {	-- Lady Vinazian <Severed Threads Quartermaster>
						["coord"] = { 55.3, 41.2, AZJ_KAHET },
						["groups"] = bubbleDownRep(FACTION_THE_SEVERED_THREADS, {
							{		-- RENOWN 1 --
							}, {	-- RENOWN 2 --
								i(228420, {	-- Unsevered Thread
									["cost"] = {{"c", KEJ, 85}},
								}),
							}, {	-- RENOWN 3 --
							}, {	-- RENOWN 4 --
								i(223125, {	-- Formula: Oil of Deep Toxins (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
								i(223080, {	-- Recipe: Algari Alchemist Stone (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
								i(225355, {	-- Technique: Contract: The Severed Threads (RECIPE!)
									["cost"] = {{"i", ARTISANS_ACUITY, 150}},
								}),
							}, {	-- RENOWN 5 --
								i(218348, {	-- Thread-Bearer's Cloak (COSMETIC!)
									["cost"] = {{"c", KEJ, 565}},
								}),
							}, {	-- RENOWN 6 --
							}, {	-- RENOWN 7 --
								i(217894, {	-- Nerubian Pheromone Secreter
									["cost"] = {{"c", KEJ, 450}},
								}),
							}, {	-- RENOWN 8 --
							}, {	-- RENOWN 9 --
							}, {	-- RENOWN 10 --
							}, {	-- RENOWN 11 --
							}, {	-- RENOWN 12 --
							}, {	-- RENOWN 13 --
							}, {	-- RENOWN 14 --
							}, {	-- RENOWN 15 --
								i(222972, {	-- Jump Jump (PET!)
									["cost"] = {{"c", KEJ, 2250}},
								}),
							}, {	-- RENOWN 16 --
								i(218347, {	-- Thread-Bearer's Pauldrons (COSMETIC!)
									["cost"] = {{"c", KEJ, 1125}},
								}),
							}, {	-- RENOWN 17 --
								i(228705, {	-- Arachnoserum (TOY!)
									["cost"] = {{"c", KEJ, 1750}},
								}),
							}, {	-- RENOWN 18 --
							}, {	-- RENOWN 19 --
							}, {	-- RENOWN 20 --
							}, {	-- RENOWN 21 --
							}, {	-- RENOWN 22 --
								i(223274, {	-- Ferocious Jawcrawler (MOUNT!)
									["cost"] = {{"c", KEJ, 2815}},
								}),
							}, {	-- RENOWN 23 --
								i(223264, {	-- Aquamarine Swarmite (MOUNT!)
									["cost"] = {{"c", KEJ, 3940}},
								}),
							}, {	-- RENOWN 24 --
							}, {	-- RENOWN 25 --
							},
						}),
					}),
					n(224733, {	-- Tulumun <Assistant to the Executor>
						["coord"] = { 45.0, 16.7, AZJ_KAHET },
						["sourceQuests"] = { 78248 },	-- What We Still Have
						["sym"] = {{"select","itemID",
							226511,	-- Nerubimorph Poultice
							228949,	-- Rumor Map
							228950,	-- Rumor Map Bundle
							228952,	-- Treasure Map Bundle
						}},
						["groups"] = bubbleDownRep(FACTION_THE_VIZIER, {
							{		-- Stranger
							}, {	-- Acquaintance
							}, {	-- Crony
								i(226518, {	-- Phero-Escape
									["cost"] = {{"c", KEJ, 25}},
								}),
								i(226513, {	-- Treasure Map: Kaheti Excavation
									["cost"] = {{"c", KEJ, 25}},
								}),
							}, {	-- Accomplice
								i(226508, {	-- Vizier's Influence
									["cost"] = {{"c", KEJ, 50}},
								}),
							}, {	-- Collaborator
							}, {	-- Accessory
							}, {	-- Abettor
							}, {	-- Conspirator
								i(223279, {	-- Royal Court Undercrawler (MOUNT!)
									["cost"] = {{"c", KEJ, 2020}},
								}),
							}, {	-- Mastermind
								i(228945, {	-- Executor's Severed Thread (CI!)
									["cost"] = {{"c", KEJ, 250}},
								}),
							},
						}),
					}),
				}),
			},
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	header(HEADERS.Faction, FACTION_THE_SEVERED_THREADS, {
		n(SEVERED_THREADS_PACT, {
			-- General --
			q(81601, {	-- [DNT] General - Level 1 Unlock (spellID 443677)
				["name"] = "The General considers you an Acquaintance.",
			}),
			q(81602, {	-- [DNT] General - Level 2 Unlock (spellID 443679)
				["name"] = "The General considers you a Crony.",
			}),
			q(81626, {	-- [DNT] General - Level 2 Unlock (spellID 443679) (???)
				["name"] = "The General considers you a Crony.",
			}),
			q(81603, {	-- [DNT] General - Level 3 Unlock (spellID 443680)
				["name"] = "The General considers you an Accomplice.",
			}),
			q(81604, {	-- [DNT] General - Level 4 Unlock (spellID 443681)
				["name"] = "The General considers you a Collaborator.",
			}),
			q(84530, {	-- [DNT] General - Level 5 Unlock (spellID 462466)
				["name"] = "The General considers you an Accessory.",
			}),
			q(84531, {	-- [DNT] General - Level 6 Unlock (spellID 462468)
				["name"] = "The General considers you an Abettor.",
			}),
			q(84532, {	-- [DNT] General - Level 7 Unlock (spellID 462470)
				["name"] = "The General considers you a Conspirator.",
			}),
			q(84533, {	-- [DNT] General - Level 8 Unlock (spellID 462471)
				["name"] = [[~("The General considers you a Mastermind. Congratulations, Anub'%s."):format(UnitName("player"))]],
			}),
			-- Vizier --
			q(81605, {	-- [DNT] Vizier - Level 1 Unlock (spellID 443682) & [DNT] Vizier - Level 4 Unlock (spellID 443686) (???)
				["name"] = "The Vizier considers you an Acquaintance.",
			}),
			q(81606, {	-- [DNT] Vizier - Level 2 Unlock (spellID 443683)
				["name"] = "The Vizier considers you a Crony.",
			}),
			q(81607, {	-- [DNT] Vizier - Level 3 Unlock (spellID 443684)
				["name"] = "The Vizier considers you an Accomplice.",
			}),
			q(84534, {	-- [DNT] Vizier - Level 5 Unlock (spellID 462473)
				["name"] = "The Vizier considers you an Accessory.",
			}),
			q(84535, {	-- [DNT] Vizier - Level 6 Unlock (spellID 462474)
				["name"] = "The Vizier considers you an Abettor.",
			}),
			q(84536, {	-- [DNT] Vizier - Level 7 Unlock (spellID 462475)
				["name"] = "The Vizier considers you a Conspirator.",
			}),
			q(84537, {	-- [DNT] Vizier - Level 8 Unlock (spellID 462476)
				["name"] = [[~("The Vizier considers you a Mastermind. Congratulations, %s, Hand of the Vizier."):format(UnitName("player"))]],
			}),
			-- Weaver --
			q(81597, {	-- [DNT] Weaver - Level 1 Unlock (spellID 443033)
				["name"] = "The Weaver considers you an Acquaintance.",
			}),
			q(81598, {	-- [DNT] Weaver - Level 2 Unlock (spellID 443674)
				["name"] = "The Weaver considers you a Crony.",
			}),
			q(81627, {	-- [DNT] Weaver - Level 2 Unlock (spellID 443674) (???)
				["name"] = "The Weaver considers you a Crony.",
			}),
			q(81599, {	-- [DNT] Weaver - Level 3 Unlock (spellID 443675)
				["name"] = "The Weaver considers you an Accomplice.",
			}),
			q(81600, {	-- [DNT] Weaver - Level 4 Unlock (spellID 443676)
				["name"] = "The Weaver considers you a Collaborator.",
			}),
			q(84538, {	-- [DNT] Weaver - Level 5 Unlock (spellID 462490)
				["name"] = "The Weaver considers you an Accessory.",
			}),
			q(84539, {	-- [DNT] Weaver - Level 6 Unlock (spellID 462491)
				["name"] = "The Weaver considers you an Abettor.",
			}),
			q(84540, {	-- [DNT] Weaver - Level 7 Unlock (spellID 462492)
				["name"] = "The Weaver considers you a Conspirator.",
			}),
			q(84541, {	-- [DNT] Weaver - Level 8 Unlock (spellID 462493)
				["name"] = [[~("The Weaver considers you a Mastermind. Congratulations, Silksinger %s."):format(UnitName("player"))]],
			}),
			-- 'City Rumors' events are available after unlocking Level 1 (Acquaintance) with the General, Vizier and Weaver
			-- Using 'Rumor Map Bundle' (ItemID: 228950) triggers following 6 quests as completed and reveals 6 NPCs with "rumors" on the map
			q(82616, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			q(82641, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			q(82643, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			q(82645, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			q(82647, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			q(82649, {["isDaily"]=true}),	-- Triggered when 'Rumor Map Bundle' (itemID 228950) is used
			-- Quest Givers or "Rumor Givers" are Eirzay <Agent of the General>, Ghos'opp <Agent of the Vizier>, Ru'murh <Agent of the Weaver>
			-- Different rumors can trigger the same HQTs as commented below. They are not triggered until you talk to the NPC that gives you the rumor
			q(82581, {	-- Ru'murh  (n: 224199 @ 45.6, 51.0), starts questID 81483 (Infiltration: Production Blocker)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Ghos'opp (n: 224183 @ 64.5, 87.3), starts questID 81481 (Sabotage: Transformatory Vessels)
					-- Ru'murh  (n: 224192 @ 79.7, 56.8), starts questID 81500 (Wet Work: Step Into Their Parlor)
					-- Ru'murh  (n: 224191 @ 68.6, 51.1), starts questID 81484 (Wet Work: Death of a Salesman)
					-- Ru'murh  (n: 224193 @ 55.0, 26.6), starts questID 80573 (Dropping Eaves: Spoils of War)
					-- Ghos'opp (n: 224187 @ 50.6, 47.1), starts questID 81482 (Testing Formulae: Gelatinous Unguent)
					-- Ru'murh  (n: 224196 @ 77.8, 53.7), starts questID 81473 (Information Control: The Right Side of History)
			}),
			q(82640, {	-- Ru'murh  (n: 224190 @ 41.5, 22.4), starts questID 81555 (Wet Work: Tithe to Kill)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Ghos'opp (n: 224186 @ 54.5, 15.5), starts questID 81506 (Sabotage: Alchemical Instruments)
					-- Ghos'opp (n: 224178 @ 64.2, 21.2), starts questID 81495 (Requisitions: Brightblooms)
					-- Ghos'opp (n: 224188 @ 47.9,  9.7), starts questID 81501 (Testing Formulae: Roiling Elixir)
					-- Ru'murh  (n: 224194 @ 70.3, 31.8), starts questID 81470 (Dropping Eaves: Thieving Weave)
					-- Ghos'opp (n: 224177 @ 52.0, 16.6), starts questID 81479 (Requisitions: Umbrashrooms)
					-- Ru'murh  (n: 224198 @ 54.8, 34.5), starts questID 81499 (Information Control: Ascended Intrigue)
			}),
			q(82642, {	-- Eirzay   (n: 224161 @ 43.0, 47.2), starts questID 81475 (Breaking the Phalanx: Royal Appointments)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Ghos'opp (n: 224189 @ 30.9, 23.0), starts questID 81502 (Testing Formulae: Malodorous Philter)
					-- Eirzay   (n: 224162 @ 33.3, 49.1), starts questID 81487 (Breaking the Phalanx: Threadblades)
					-- Eirzay   (n: 224163 @ 27.9, 56.7), starts questID 81488 (Breaking the Phalanx: Schismatic Sages)
					-- Eirzay   (n: 224167 @ 15.6, 45.7), starts questID 81489 (Bounty: Zorikal the Patron)
					-- Ghos'opp (n: 224184 @ 39.5, 51.4), starts questID 81505 (Sabotage: Venomancers)
					-- Ru'murh  (n: 224195 @ 73.3, 50.9), starts questID 81471 (Dropping Eaves: Saving the Past)
			}),
			q(82644, {	-- Ru'murh  (n: 224197 @ 55.7, 47.8), starts questID 81472 (Information Control: Ansurek's Truth)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Ghos'opp (n: 224179 @ 49.2, 51.8), starts questID 81496 (Requisitions: Fangpetals)
					-- Eirzay   (n: 224166 @ 50.4, 74.0), starts questID 81476 (Bounty: Chitinous Goliath)
					-- Eirzay   (n: 224168 @ 49.7, 44.3), starts questID 81490 (Bounty: Balaxir the Bully)
					-- Eirzay   (n: 224171 @ 61.3, 36.2), starts questID 81491 (Armaments: Arbalests)
			}),
			q(82646, {	-- Eirzay   (n: 224172 @ 54.5, 63.6), starts questID 81492 (Armaments: Smithing Tools)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Eirzay   (n: 224176 @ 61.4, 24.1), starts questID 81494 (Relics of War: Rak-Zakaz)
					-- Eirzay   (n: 224173 @ 36.4, 49.2), starts questID 81478 (Relics of War: The Ruptured Lake)
					-- Ru'murh  (n: 224201 @ 77.5, 42.9), starts questID 81504 (Infiltration: Hidden Figures)
			}),
			q(82648, {	-- Ru'murh  (n: 224200 @ 64.2, 75.3), starts questID 81503 (Infiltration: Terror Made Manifest)
				["name"] = "You heard a rumor. Go and investigate.",
					-- Ghos'opp (n: 224182 @ 65.1, 78.8), starts questID 81480 (Wild Reagents: Maddening Deep)
					-- Ghos'opp (n: 224180 @ 47.2, 58.8), starts questID 81498 (Wild Reagents: Twitching Gorge)
					-- Ghos'opp (n: 224181 @ 61.1, 74.4), starts questID 81497 (Wild Reagents: Salien Gutters)
			}),
			q(79698),	-- Triggered after completing questID 79627 (Wine and Die)
			-- q(80688),	-- triggered after completing task for a 'Rumor' (re-capture and narrow down)
			-- Weaver's Lair Profession Table
			q(84746),	-- Blacksmithing
			q(84747),	-- Leatherworking
			q(84748),	-- Tailoring
			q(84749),	-- Enchanting
			q(84750),	-- Inscription
			q(84751),	-- Jewelcrafting
			q(84752),	-- Engineering
			q(84753),	-- Alchemy
		}),
		n(TREASURES, {
			-- 'Treasures: Weave Rat Caches', available when you forge a Pact with The Weaver.
			-- There are 12 Thimble's Caches in total however, only 4 are revealed on the map.
			-- Following 12 HQTs are triggered when 'Treasure Map Bundle' (item 228952) is used.
			q(83778),
			q(83779),
			q(83780),
			q(83781),
			q(83782),
			q(83783),
			q(83784),
			q(83785),
			q(83786),
			q(83787),
			q(83788),
			q(83789),
			-- 'Treasures: Forgotten Memorials', available when you forge a Pact with The General.
			-- There are 12 Forgotten Memorials in total, only 4 are revealed on the map at the time.
			-- Following 12 HQTs are triggered when 'Treasure Map Bundle' (item 228952) is used.
			q(83796),
			q(83797),
			q(83798),
			q(83799),
			q(83800),
			q(83801),
			q(83802),
			q(83803),
			q(83804),
			q(83805),
			q(83806),
			q(83807),
			-- 'Treasures: Kaheti Excavations', available when you forge a Pact with The Vizier.
			-- There are 12 Kaheti Excavations in total, only 4 are revealed on the map at the time.
			-- Following 12 HQTs are triggered when 'Treasure Map Bundle' (item 228952) is used.
			q(83810),
			q(83811),
			q(83812),
			q(83813),
			q(83814),
			q(83815),
			q(83816),
			q(83817),
			q(83818),
			q(83819),
			q(83820),
			q(83821),
		}),
	}),
}));
