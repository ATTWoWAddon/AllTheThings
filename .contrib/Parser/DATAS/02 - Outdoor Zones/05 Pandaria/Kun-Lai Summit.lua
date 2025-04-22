---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(KUN_LAI_SUMMIT, {
			["lore"] = "Kun-Lai Summit is a zone in northern Pandaria, surrounded by the Vale of Eternal Blossoms to the south, the Townlong Steppes to the west, and the Jade Forest to the east. It is a vast area with majestic mountains, autumnal plains, and a lush coastal area. High atop the frigid northern peaks looms the Temple of the White Tiger, an ancient training ground protected by an elite force of martial priests, along with the spirit of the White Tiger itself, Xuen. Deeper into the mountains is the hideout of the Shado-pan clan: a mysterious order charged with protecting Pandaria from the dark things buried beneath its surface. When the isolated people of Kun-Lai are threatened by marauders from the west and a Zandalari troll menace invading its northern shores, they turn to the Alliance and Horde for help.",
			["icon"] = 617832,
			["timeline"] = { ADDED_5_0_4 },
			["maps"] = {
				380,	-- Howlingwind Cavern
				381,	-- Pranksters' Hollow
				382,	-- Knucklethump Hole
				383,	-- The Deeper (upper)
				384,	-- The Deeper (lower)
				385,	-- Tomb of Conquerors
				386,	-- Ruins of Korune (Upper Floor)
				387,	-- Ruins of Korune (Lower Floor)
				434,	-- The Ancient Passage
				843,	-- Shadow-Pan Showdown
			},
			["groups"] = {
				n(PEAK_OF_SERENITY, bubbleDownSelf({
					["classes"] = { MONK },
				},{
					["description"] = "This area phases once you have begun the Monk Class Hall Campaign and may not be accessible again until you complete it.",
					["g"] = {
						n(QUESTS, {
							q(31834, {	-- Begin Your Training: Master Cheng
								["sourceQuest"] = 31856,	-- The Peak of Serenity - Begin Your Training
								["coord"] = { 48.6, 42.7, KUN_LAI_SUMMIT },
								["g"] = {
									i(89551),	-- Aspirant's Staff of Harmony
									i(89553),	-- Aspirant's Staff of Grace
								},
							}),
							q(31837, {	-- Continue Your Training: Master Cheng
								["sourceQuests"] = {
									31836,	-- Continue Your Training: Master Yoon
									31859,	-- The Peak of Serenity - Continue Your Training
								},
								["g"] = {
									i(89564),	-- Red Belt of Gentle Persuasion
									i(89565),	-- Red Belt of Unspoken Warning
								},
							}),
							q(31839, {	-- Continue Your Training: Master Hsu
								["sourceQuests"] = {
									31838,	-- Continue Your Training: Master Tsang
									31861,	-- The Peak of Serenity - Continue Your Training
								},
								["g"] = {
									i(89606),	-- Bladed Staff of the Echoing Gong
									i(89576),	-- Bladed Staff of the Frozen Mountain
									i(89577),	-- Bladed Staff of the Summit's Breeze
								},
							}),
							q(31835, {	-- Continue Your Training: Master Kistane
								["sourceQuests"] = {
									-- #if BEFORE 8.0.1
									31833,	-- Continue Your Training: Master Woo
									31857,	-- The Peak of Serenity - Continue Your Training
									-- #else
									31834,	-- Begin Your Training: Master Cheng
									31857,	-- The Peak of Serenity - Continue Your Training
									-- #endif
								},
								["g"] = {
									i(89562),	-- Green Belt of Hushed Wisdom
									i(89561),	-- Green Belt of Quiet Understanding
								},
							}),
							q(31838, {	-- Continue Your Training: Master Tsang
								["sourceQuests"] = {
									31837,	-- Continue Your Training: Master Cheng
									31860,	-- The Peak of Serenity - Continue Your Training
								},
								["g"] = {
									i(89569),	-- Brown Belt of Humbling Gravity
									i(89567),	-- Brown Belt of Precarious Balance
								},
							}),
							q(31833, bubbleDownSelf({	-- Continue Your Training: Master Woo
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },
							},{
								["sourceQuests"] = {
									31834,	-- Begin Your Training: Master Cheng
									31855,	-- The Peak of Serenity - Continue Your Training
								},
								["g"] = {
									i(89555),	-- Biting Yellow Belt
									i(89556),	-- Formidable Yellow Belt
									i(89558),	-- Serene Yellow Belt
								},
							})),
							q(31836, {	-- Continue Your Training: Master Yoon
								["sourceQuests"] = {
									31835,	-- Continue Your Training: Master Kistane
									31858,	-- The Peak of Serenity - Continue Your Training
								},
								["g"] = {
									i(89550),	-- Headband of the Coiled Serpent
									i(89548),	-- Headband of the Pouncing Tiger
									i(89549),	-- Headband of the Stampedeing Ox
								},
							}),
							q(31944, {	-- Complete Your Training: The Final Test
								["sourceQuests"] = {
									31839,	-- Continue Your Training: Master Hsu
									31989,	-- The Peak of Serenity - Complete Your Training
								},
								["g"] = {
									i(90010),	-- Cranedancer's Staff
									i(90012),	-- Staff of Ox-Hoof Thunder
									i(90011),	-- Staff of the White Tigerlord
								},
							}),
							q(31844, {	-- Practice Makes Perfect: Master Cheng /lvl 20
								["isDaily"] = true,
								["sourceQuest"] = 31837,	-- Continue Your Training: Master Cheng
							}),
							q(31840, {	-- Practice Makes Perfect: Master Cheng /lvl 10
								["isDaily"] = true,
								["sourceQuest"] = 31834,	-- Continue Your Training: Master Cheng
							}),
							q(31846, {	-- Practice Makes Perfect: Master Hsu /lvl 30
								["isDaily"] = true,
								["sourceQuest"] = 31839,	-- Continue Your Training: Master Hsu
							}),
							q(31842, {	-- Practice Makes Perfect: Master Kistane /lvl 10
								["isDaily"] = true,
								["sourceQuest"] = 31835,	-- Continue Your Training: Master Kistane
							}),
							q(31845, {	-- Practice Makes Perfect: Master Tsang /lvl 25
								["isDaily"] = true,
								["sourceQuest"] = 31838,	-- Continue Your Training: Master Tsang
							}),
							q(31841, {	-- Practice Makes Perfect: Master Woo /lvl 10
								["isDaily"] = true,
								["sourceQuest"] = 31833,	-- Continue Your Training: Master Woo
								["u"] = REMOVED_FROM_GAME,
							}),
							q(31843, {	-- Practice Makes Perfect: Master Yoon /lvl 15
								["isDaily"] = true,
								["sourceQuest"] = 31836,	-- Continue Your Training: Master Yoon
							}),
							q(31856, {	-- The Peak of Serenity - Begin Your Training
								["isBreadcrumb"] = true,
							}),
							q(31855, {	-- The Peak of Serenity - Continue Your Training /lvl 10
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31834,	-- Begin Your Training: Master Cheng
								["u"] = REMOVED_FROM_GAME,
							}),
							q(31857, {	-- The Peak of Serenity - Continue Your Training /lvl 10
								["isBreadcrumb"] = true,
								["sourceQuests"] = {
								-- #if BEFORE 8.0.1
									31833,	-- Continue Your Training: Master Woo
								-- #else
									31834,	-- Begin Your Training: Master Cheng
								-- #endif
								},
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
							q(31858, {	-- The Peak of Serenity - Continue Your Training /lvl 15
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31835,	-- Continue Your Training: Master Kistane
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
							q(31859, {	-- The Peak of Serenity - Continue Your Training /lvl 20
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31836,	-- Continue Your Training: Master Yoon
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
							q(31860, {	-- The Peak of Serenity - Continue Your Training /lvl 25
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31837,	-- Continue Your Training: Master Cheng
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
							q(31861, {	-- The Peak of Serenity - Continue Your Training /lvl 30
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31838,	-- Continue Your Training: Master Tsang
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
							q(31989, {	-- The Peak of Serenity - Complete Your Training /lvl 35
								["isBreadcrumb"] = true,
								["sourceQuest"] = 31839,	-- Continue Your Training: Master Hsu
								["timeline"] = { ADDED_5_0_4, REMOVED_8_0_1 },	-- baiting this for #errors to get more information
							}),
						}),
						n(VENDORS, {
							n(66354, {	-- Master Cannon <Tanner>
								["description"] = "All items on this vendor are quest rewards. You must have completed the respective quests to purchase the rewards.",
								["sym"] = {	-- Select the quests directly to view on the vendor that way they filter properly based on visibility of the quest
									{"select","questID",
										31837,	-- Continue Your Training: Master Cheng
										31835,	-- Continue Your Training: Master Kistane
										31838,	-- Continue Your Training: Master Tsang
										31833,	-- Continue Your Training: Master Woo
										31836,	-- Continue Your Training: Master Yoon
									},
								},
							}),
							n(66356, {	-- Master Hwang <Staff Vendor>
								["description"] = "The blue-quality staves on this vendor are quest rewards. You must have completed the respective quests to purchase the rewards.",
								["coord"] = { 50.44, 42.61, KUN_LAI_SUMMIT },
								["sym"] = {	-- Select the quests directly to view on the vendor that way they filter properly based on visibility of the quest
									{"select","questID",
										31834,	-- Begin Your Training: Master Cheng
										31839,	-- Continue Your Training: Master Hsu
										31944,	-- Complete Your Training: The Final Test
									},
								},
								["g"] = {
									i(89580),	-- Novice's Staff
									i(89581),	-- Initiate's Staff
									i(89582),	-- Sparring Staff
									i(89584),	-- Staff of Meditation
									i(89583),	-- Staff of Pilgrimage
									i(89585),	-- Staff of Fallen Blossoms
									i(89586),	-- Staff of Serenity
									i(136800),	-- Meditation Manual: Zen Flight (CI!)
								},
							}),
							n(66359, {	-- Master Tan <Fist Weapon Vendor>
								["description"] = "The blue-quality fist weapons on this vendor require that you have completed the level 30 Monk quest 'Continue Your Training: Master Hsu' (31839)",
								["coord"] = { 50.02, 38.53, KUN_LAI_SUMMIT },
								["g"] = {
									i(89579),	-- Tiger Lord's Bladed Claws
									i(89578),	-- Tiger Lord's Razor Claws
									i(89566),	-- Novice's Handwraps
									i(89570),	-- Initiate's Handwraps
									i(89571),	-- Grappling Handwraps
									i(89572),	-- Handwraps of Pilgrimage
									i(89573),	-- Handwraps of Meditation
									i(89574),	-- Handwraps of Fallen Blossoms
									i(89575),	-- Handwraps of Serenity
								},
							}),
							n(64978, {	-- Number Nine Jia <Monk Trainer - Master Crane>
								["coord"] = { 45.2, 43.2, KUN_LAI_SUMMIT },
								["g"] = {
									i(232491, { ["timeline"] = { ADDED_11_0_5 } }),	-- Glyph of Jab
								},
							}),
						}),
					},
				})),
				n(ACHIEVEMENTS, {
					explorationAch(6976),	-- Explore Kun-Lai Summit
					ach(7286, {	-- Finish Them! (Temple of the White Tiger)
						crit(20440),	-- Brewmaster Chani
						crit(20442),	-- Lun-Chi
						crit(20443),	-- Clever Ashyo
						crit(20451),	-- Ken-Ken
						crit(20444),	-- Kang Bramblestaff
						crit(20445),	-- The Wrestler
						crit(20446),	-- Master Boom Boom
						crit(20447),	-- Master Windfur
						crit(20448),	-- Hackiss
						crit(20449),	-- Healiss
						crit(20450),	-- Tankiss
					}),
					ach(7386, {	-- Grand Expedition Yak
						["provider"] = { "i", 84101 },	-- Grand Expedition Yak
					}),
					ach(6537, {	-- Slum It in the Summit (A)
						["races"] = ALLIANCE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
					ach(6538, {	-- Slum It in the Summit (H)
						["races"] = HORDE_ONLY,
						["sym"] = {{ "achievement_criteria" }},
					}),
				}),
				battlepets({
					["sym"] = {{"select","speciesID",
						747,	-- Effervescent Glowfly (PET!)
					}},
					["groups"] = {
						pet(724),	-- Alpine Foxling (PET!)
						pet(725),	-- Alpine Foxling Kit (PET!)
						pet(1166, {	-- Kun-Lai Runt (PET!)
							["description"] = "This is a very good pet in PvE, but is breed-dependent. You may want to capture multiple breeds.",
							["timeline"] = { ADDED_5_1_0 },
						}),
						pet(726),	-- Plains Monitor (PET!)
						pet(727),	-- Prairie Mouse (PET!)
						pet(679),	-- Summit Kid (PET!)
						pet(728, {	-- Szechuan Chicken (PET!)
							['description'] = "Can sometimes be easier to find as a secondary pet. Can accompany almost any other pet in Kun-Lai.",
						}),
						pet(729),	-- Tolai Hare (PET!)
						pet(730),	-- Tolai Hare Pup (PET!)
						pet(731),	-- Zooey Snake (PET)
					},
				}),
				explorationHeader({
					exploration(6076),	-- Auburn Bluffs
					exploration(6059),	-- Binan Village
					visit_exploration(6086,{coord={48.4,72.1,KUN_LAI_SUMMIT}}),	-- Broketooth Outpost
					exploration(6098),	-- Chow Farmstead
					exploration(6094),	-- Eastwind Rest
					visit_exploration(6124,{coord={47.4,80.1,KUN_LAI_SUMMIT}}),	-- Fire Camp Ordo
					exploration(6121),	-- Fire Camp Ruqin
					exploration(6152),	-- Fire Camp Yongqi
					exploration(6129),	-- Firebough Nook
					visit_exploration(6617,{coord={60.0,55.8,KUN_LAI_SUMMIT}}),	-- Garrosh'ar Advance
					exploration(6498),	-- Gate of the August Celestials
					visit_exploration(6389,{coord={59.4,53.0,KUN_LAI_SUMMIT}}),	-- Howlingwind Cavern
					visit_exploration(6469,{coord={58.7,54.1,KUN_LAI_SUMMIT}}),	-- Howlingwind Trail
					visit_exploration(6427,{coord={71.3,87.4,KUN_LAI_SUMMIT}}),	-- Inkgill Mere
					exploration(6406),	-- Isle of Reckoning
					visit_exploration(6088,{coord={50.8,61.9,KUN_LAI_SUMMIT}}),	-- Knucklethump Hole
					exploration(6157),	-- Kota Basecamp
					exploration(6156),	-- Kota Peak
					exploration(6062),	-- Kun-Lai Pass
					visit_exploration(6467,{coord={59.8,39.1,KUN_LAI_SUMMIT}}),	-- Mogu'shan Terrace
					exploration(6114),	-- Mogujia
					exploration(6185),	-- Mount Neverest
					exploration(6100),	-- Muskpaw Ranch
					visit_exploration(6180,{coord={44.7,52.2,KUN_LAI_SUMMIT}}),	-- Neverest Pinnacle
					exploration(6085),	-- One Keg
					exploration(6081),	-- Peak of Serenity
					visit_exploration(6099,{coord={73.2,73.6,KUN_LAI_SUMMIT}}),	-- Pranksters' Hollow
					visit_exploration(6530,{coord={44.6,89.3,KUN_LAI_SUMMIT}}),	-- Serpent's Spine
					exploration(6294),	-- Shado-Li Basin
					exploration(6128),	-- Shado-Pan Fallback
					exploration(6173),	-- Shado-Pan Monastery
					visit_exploration(6202,{coord={51.2,46.1,KUN_LAI_SUMMIT}}),	-- Shrine of the Merciless One
					exploration(6174),	-- Temple of the White Tiger
					visit_exploration(6527,{coord={51.2,38.0,KUN_LAI_SUMMIT}}),	-- Terrace of the Tiger
					visit_exploration(6073,{coord={70.5,75.6,KUN_LAI_SUMMIT}}),	-- The Autumn Plains
					exploration(6090),	-- The Burlap Trail
					exploration(6087),	-- The Dooker Dome
					visit_exploration(6468,{coord={57.1,35.5,KUN_LAI_SUMMIT}}),	-- The Emperor's Reach
					visit_exploration(6079,{coord={65.8,61.8,KUN_LAI_SUMMIT}}),	-- The Grummle Bazaar
					visit_exploration(6415,{coord={64.3,50.7,KUN_LAI_SUMMIT}}),	-- The Yaungol Advance
					exploration(6207),	-- The Zandalari Vanguard
					visit_exploration(6201,{coord={53.1,46.3,KUN_LAI_SUMMIT}}),	-- Tomb of Conquerors
					visit_exploration(6200,{coord={53.2,49.6,KUN_LAI_SUMMIT}}),	-- Tomb of Secrets
					visit_exploration(6199,{coord={56.1,45.8,KUN_LAI_SUMMIT}}),	-- Tomb of Shadows
					visit_exploration(6526,{coord={47.5,39.5,KUN_LAI_SUMMIT}}),	-- Training Grounds
					exploration(6198, {	-- Valley of Emperors
						-- CRIEVE NOTE: This appears to be unavailable after Legion, someone let me know if you RECENTLY collect this.
						["collectible"] = false,
					}),
					visit_exploration(6181,{coord={71.3,80.5,KUN_LAI_SUMMIT}}),	-- Waterspeaker's Sanctuary
					exploration(6095),	-- Westwind Rest
					visit_exploration(6206,{coord={62.8,41.1,KUN_LAI_SUMMIT}}),	-- Whispercloud Rise
					visit_exploration(6383,{coord={35.2,59.4,KUN_LAI_SUMMIT}}),	-- Winter's Blossom
					exploration(6154),	-- Yinying Village
					visit_exploration(6405,{coord={62.8,36.5,KUN_LAI_SUMMIT}}),	-- Zouchin Province
					visit_exploration(6168,{coord={57.7,20.4,KUN_LAI_SUMMIT}}),	-- Zouchin Strand
					exploration(6169),	-- Zouchin Village
				}),
				n(FACTIONS, {
					faction(FACTION_THE_AUGUST_CELESTIALS, {	-- The August Celestials
						["description"] = "Each day, the August Celestials require your aid at one of their temples.  Speak to the representative in your faction's Vale of Eternal Blossoms shrine to find out where your help is needed (|cff3f48ccSage Whiteheart for Alliance|r and |cff880015Sage Lotusbloom for Horde|r).\n\nThe dailies will be in one of these locations:\nJade Forest - Temple of the Jade Serpent\nKrasarang Wilds - Cradle of Chi-Ji\nKun-Lai Summit - Temple of the White Tiger\nTownlong Steppes - Niuzao Temple\n\n",
						["collectible"] = false,
						["icon"] = 645203,
						["g"] = {
							n(QUESTS, {
								q(31394, {	-- A Celestial Experience (A)
									["sourceQuests"] = { 31392 },	-- Temple of the White Tiger
									["provider"] = { "n", 64540 },	-- Anduin Wrynn
									["coord"] = { 68.7, 43.1, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(31395, {	-- A Celestial Experience (H)
									["sourceQuests"] = { 31393 },	-- Temple of the White Tiger
									["provider"] = { "n", 64542 },	-- Sunwalker Dezco
									["coord"] = { 68.7, 43.0, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(31512, {	-- A Witness to History (A)
									["sourceQuests"] = { 31394 },	-- A Celestial Experience
									["provider"] = { "n", 64540 },	-- Anduin Wrynn
									["coord"] = { 68.7, 43.1, KUN_LAI_SUMMIT },
									["races"] = ALLIANCE_ONLY,
								}),
								q(31511, {	-- A Witness to History (H)
									["sourceQuests"] = { 31395 },	-- A Celestial Experience
									["provider"] = { "n", 64542 },	-- Sunwalker Dezco
									["coord"] = { 68.7, 43.0, KUN_LAI_SUMMIT },
									["races"] = HORDE_ONLY,
								}),
								q(31517, {	-- Contending With Bullies
									["sourceQuests"] = { 31512, 31511 },	-- A Witness to History (A, H)
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
								}),
								q(30880, {	-- Round 1: The Streetfighter
									["sourceQuests"] = { 31512, 31511 },	-- A Witness to History (A, H)
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
								}),
								q(30879, {	-- Round 1: Brewmaster Chani
									["sourceQuests"] = { 31512, 31511 },	-- A Witness to History (A, H)
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
								}),
								q(30881, {	-- Round 2: Clever Ashyo & Ken-Ken
									["sourceQuests"] = { 30879 },	-- Round 1: Brewmaster Chani
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 70.3, 51.3, KUN_LAI_SUMMIT },
								}),
								q(30882, {	-- Round 2: Kang Bramblestaff
									["sourceQuests"] = { 30880 },	-- Round 1: The Streetfighter
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 70.3, 51.3, KUN_LAI_SUMMIT },
								}),
								q(30885, {	-- Round 3: Master Boom Boom
									["sourceQuests"] = { 30882 },	-- Round 2: Kang Bramblestaff
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 71.7, 45.0, KUN_LAI_SUMMIT },
								}),
								q(30883, {	-- Round 3: The Wrestler
									["sourceQuests"] = { 30881 },	-- Round 2: Clever Ashyo & Ken-Ken
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 71.7, 44.9, KUN_LAI_SUMMIT },
								}),
								q(30902, {	-- Round 4: Master Windfur
									["sourceQuests"] = { 30885 },	-- Round 3: Master Boom Boom
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 66.4, 46.3, KUN_LAI_SUMMIT },
								}),
								q(30907, {	-- Round 4: The P.U.G.
									["sourceQuests"] = { 30883 },	-- Round 3: The Wrestler
									["provider"] = { "n", 60968 },	-- Xuen
									["isDaily"] = true,
									["coord"] = { 66.5, 46.4, KUN_LAI_SUMMIT },
								}),
								q(31492, {	-- The Torch of Strength
									["sourceQuests"] = { 31512, 31511 },	-- A Witness to History (A, H)
									["provider"] = { "n", 60981 },	-- Lin Tenderpaw
									["isDaily"] = true,
									["coord"] = { 68.5, 56.3, KUN_LAI_SUMMIT },
								}),
							}),
						},
					}),
				}),
				n(FLIGHT_PATHS, {
					fp(1017, {	-- Binan Village, Kun-Lai Summit
						["coord"] = { 72.4, 94.0, KUN_LAI_SUMMIT },
					}),
					fp(1019, {	-- Eastwind Rest, Kun-Lai Summit
						["coord"] = { 62.4, 80.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					fp(1023, {	-- Kota Basecamp, Kun-Lai Summit
						["coord"] = { 42.8, 69.6, KUN_LAI_SUMMIT },
					}),
					fp(1022, {	-- One Keg, Kun-Lai Summit
						["coord"] = { 57.6, 59.8, KUN_LAI_SUMMIT },
					}),
					fp(1117, {	-- Serpent's Spine, Kun-Lai Summit
						["coord"] = { 36.0, 83.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
					}),
					fp(1024, {	-- Shado-Pan Fallback, Kun-Lai Summit
						["coord"] = { 43.8, 89.6, KUN_LAI_SUMMIT },
					}),
					fp(1018, {	-- Temple of the White Tiger, Kun-Lai Summit
						["coord"] = { 66.2, 50.6, KUN_LAI_SUMMIT },
					}),
					fp(1020, {	-- Westwind Rest, Kun-Lai Summit
						["coord"] = { 54.0, 84.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1025, {	-- Winter's Blossom, Kun-Lai Summit
						["coord"] = { 34.6, 59.0, KUN_LAI_SUMMIT },
					}),
					fp(1021, {	-- Zouchin Village, Kun-Lai Summit
						["coord"] = { 62.4, 30.0, KUN_LAI_SUMMIT },
					}),
				}),
				petbattles({
					n(66738, {	-- Courageous Yon <Grand Master Pet Tamer>
						["coord"] = { 35.8, 73.6, KUN_LAI_SUMMIT },
					}),
					n(68465, {	-- Thundering Pandaren Spirit <Grand Master Pet Tamer>
						["coord"] = { 64.8, 93.6, KUN_LAI_SUMMIT },
					}),
				}),
				n(PROFESSIONS, {
					prof(LEATHERWORKING, {
						n(65121, {	-- Clean Pelt <Leatherworking Trainer>
							["coord"] = { 64.6, 60.8, KUN_LAI_SUMMIT },
							["g"] = MOP_LEATHERWORKING,
						}),
					}),
				}),
				n(QUESTS, {
					q(30581, {	-- ... and the Pot, Too!
						["coord"] = { 60.1, 85.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59636 },	-- Uyen Chow
						["sourceQuests"] = {
							30569,	-- Trouble on the Farmstead (A)
							30570,	-- Trouble on the Farmstead (H)
						},
						["groups"] = {
							o_repeated({
								i(80227),	-- Root Vegetable (QI!)
								o(211017),	-- Root Vegetable
								o(211018),	-- Root Vegetable
								o(211019),	-- Root Vegetable
							}),
							o(211023, {	-- Cast Iron Pot
								i(80230),	-- Cast Iron Pot (QI!)
							}),
							i(88398),	-- Root Veggie Stew
						},
					}),
					q(30746, {	-- A Fair Trade
						["coord"] = { 42.4, 69.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60503 },	-- Uncle Keenbean
						["sourceQuest"] = 30825,	-- Kota Blend
						["groups"] = {
							i(80944),	-- Bundle of Kafa'kota Berries (QI!)
						},
					}),
					q(30820, {	-- A Funeral
						["coord"] = { 63.1, 29.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60436 },	-- Li Hai
						["sourceQuest"] = 30819,	-- Preparing the Remains
						["g"] = {
							i(82496),	-- Waterfall Mantle
							i(82497),	-- Mushan Hide Spaulders
							i(82498),	-- Dreaming Spirit Spaulder
							i(82499),	-- Serenity Spaulders
							i(82500),	-- Mindbender Amice
							i(82501),	-- Silentleaf Spaulders
							i(82502),	-- Yak Herder Spaulder
							i(82503),	-- Summit Guardian Shoulders
							i(82504),	-- Wallwatcher Shoulders
						},
					}),
					q(30808, {	-- A Grummle's Luck
						["coord"] = { 64.7, 61.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59371 },	-- Lucky Eightcoins
						["groups"] = {
							o_repeated({
								i(81293),	-- Stolen Luckydos (QI!)
								o(211536),	-- Stolen Bag of Luckydos
								o(211537),	-- Stolen Bag of Luckydos
								o(211538),	-- Stolen Bag of Luckydos
							}),
						},
					}),
					q(30715, {	-- A Line Unbroken
						["coord"] = { 35.1, 59.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61819 },	-- Ban Bearheart
						["sourceQuest"] = 30699,	-- To Winter's Blossom
					}),
					q(30599, {	-- A Monkey Idol
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
						["g"] = {
							i(80428),	-- Corpse of Dak Dak (QI!)
							i(80429),	-- Corpse of Ko Ko (QI!)
							i(80430),	-- Corpse of Tak Tak (QI!)
							i(88385),	-- Hozen Idol (TOY!)
						},
					}),
					q(30283, {	-- A Smashing Impression
						["coord"] = { 56.0, 91.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 58469 },	-- Ren Firetongue
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(30751, {	-- A Terrible Sacrifice
						["coord"] = { 29.2, 62.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61820 },	-- Lao-Chin the Iron Belly
						["sourceQuest"] = 30724,	-- To the Wall!
						["groups"] = {
							o(212003, {	-- Yaungol Oil Barrel
								i(82799),	-- Yaungol Oil Barrel (QI!)
							}),
						},
					}),
					q(30506, {	-- Admiral Taylor has Awakened (3 versions of this quest from 3 different npc's but completing one gives credit for all 3)
						["coord"] = { 70.8, 90.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59076 },	-- Commander Hsieh
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30507, {	-- Admiral Taylor has Awakened
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59073 },	-- Mayor Bramblestaff
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30508, {	-- Admiral Taylor has Awakened
						["coord"] = { 71.6, 92.8, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59077 },	-- Apothecary Cheng
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30459, {	-- All of the Arrows
						["coord"] = { 70.7, 90.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59076 },	-- Commander Hsieh
						["groups"] = {
							o(210759, {	-- Arrow for Commander Hsieh
								i(79806),	-- Arrow for Commander Hsieh (QI!)
							}),
						},
					}),
					q(30796, {	-- An End to Everything
						["coord"] = { 57.3, 48.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30795,	-- Staying Connected
						["description"] = "Use |cFFFFD700The Tongue of Ba-Shon|r.",
					}),
					q(30491, {	-- At the Yak Wash
						["coord"] = { 65.3, 62.3, 381 },
						["provider"] = { "n", 61693 },	-- Muskpaw Jr.
						["sourceQuest"] = 30488,	-- The Missing Muskpaw
					}),
					q(30492, {	-- Back in Yak
						["coord"] = { 71.3, 69.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61693 },	-- Muskpaw Jr.
						["sourceQuests"] = {
							30491,	-- At the Yak Wash
							30587,	-- Yakity Yak
						},
						["g"] = {
							i(82574),	-- Coin of Blessings
							i(82575),	-- Coin of Serendipity
							i(82576),	-- Coin of Luck
							i(82577),	-- Coin of Good Fortune
							i(82578),	-- Coin of Luckydo Coin
						},
					}),
					q(31253, {	-- Back to Eastwind Rest
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59573 },	-- Farmer Chow
						["sourceQuests"] = {
							30581,	-- ... and the Pot, Too!
							30571,	-- Farmhand Freedom
						},
					}),
					q(31252, {	-- Back to Westwind Rest
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59573 },	-- Farmer Chow
						["sourceQuests"] = {
							30581,	-- ... and the Pot, Too!
							30571,	-- Farmhand Freedom
						},
					}),
					q(30651, {	-- Barrels of Fun (A)
						["coord"] = { 54.1, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59450 },	-- Sully "The Pickle" McLeary
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
						["g"] = {
							i(88577),	-- Explosive Barrel
						},
					}),
					q(30656, {	-- Barrels of Fun (H)
						["coord"] = { 62.7, 79.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59448 },	-- Rivett Clutchpop
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30620,	-- Mogu?! Oh No-gu!
						},
						["g"] = {
							o(211312, {	-- Explosives Barrel
								i(80528),	-- Explosives Barrel (QI!)
							}),
							i(88577),	-- Explosive Barrel
						},
					}),
					q(31251, {	-- Best Meals Anywhere!
						["coord"] = { 62.7, 79.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59448 },	-- Rivett Clutchpop
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["groups"] = {
							i(80245),	-- Kun-Lai Meaty Bits (QI!)
						},
					}),
					q(31847, {	-- Better Dead than Dread
						["coord"] = { 34.6, 59.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61512 },	-- Kite Master Len
						["isBreadcrumb"] = true,
						-- TODO: determine sourceQuest. exclusive with "The Threat in the South" from Townlong Steppes
					}),
					q(31695, {	-- Beyond the Wall
						["isBreadcrumb"] = true,
						["coords"] = {
							{ 54.1, 83.4, KUN_LAI_SUMMIT },
							{ 62.3, 79.6, KUN_LAI_SUMMIT },
						},
						["providers"] = {
							{ "n", 63542 },	-- Elder Tsulan
							{ "n", 63535 },	-- Elder Shiao
						},
						["altQuests"] = {
							31386,	-- The Shado-Pan Offensive (A)
							31388,	-- The Shado-Pan Offensive (H)
						},
						["sourceQuests"] = {
							30660,	-- The Ordo Warbringer (A)
							30662,	-- The Ordo Warbringer (A)
							30661,	-- The Ordo Warbringer (H)
							30663,	-- The Ordo Warbringer (H)
						},
					}),
					q(30583, {	-- Blue Dwarf Needs Food Badly
						["coord"] = { 54.1, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59450 },	-- Sully "The Pickle" McLeary
						["sourceQuest"] = 30514,	-- Challenge Accepted
					}),
					q(30604, {	-- Breaking Broketooth
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
					}),
					q(30798, {	-- Breaking the Emperor's Shield
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30799,	-- The Tomb of Shadows
					}),
					q(30605, {	-- Bros Before Hozen
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30599,	-- A Monkey Idol
							30604,	-- Breaking Broketooth
							30600,	-- No Pack Left Behind
						},
						["g"] = {
							i(88379),	-- Grummlecake
						},
					}),
					q(30807, {	-- By the Falls, For the Fallen
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60785 },	-- Sage Liao
						["sourceQuest"] = 30794,	-- Emergency Care
						["groups"] = {
							o(211510, {	-- Sage Liao's Belongings
								i(81177),	-- Pandaren Healing Draught (QI!)
							}),
						},
					}),
					q(30457, {	-- Call Out Their Leader
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59073 },	-- Mayor Bramblestaff
						["g"] = {
							i(84542),	-- Bataari Hatchet
							i(84539),	-- Bataari Warshield
							i(84538),	-- Binan Blade
							i(84537),	-- Binan Greatsword
							i(84541),	-- Bramble Blade
							i(90467),	-- Bureaucrat's Handbook
							i(84540),	-- Flamecaller's Shield
							i(90468),	-- Mayor's Hand Fan
						},
					}),
					q(30514, {	-- Challenge Accepted (A)
						["coord"] = { 56.3, 84.3, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63542 },	-- Elder Tsulan
						["sourceQuest"] = 30512,	-- Westwind Rest
					}),
					q(30515, {	-- Challenge Accepted (H)
						["coord"] = { 61.1, 82.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63535 },	-- Elder Shiao
						["sourceQuest"] = 30513,	-- Eastwind Rest
					}),
					q(30802, {	-- Chasing the Storm
						["coord"] = { 33.8, 63.1, 385 },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30801,	-- Lessons from History
						["g"] = {
							i(81890),	-- Blood-Revealed Map (QI!)
							i(82579),	-- Lorewalker's Mark
							i(82580),	-- Lorewalker's Emblem
							i(82581),	-- Lorewalker's Sigil
							i(82582),	-- Lorewalker's Medallion
							i(82583),	-- Lorewalker's Insignia
						},
					}),
					q(30816, {	-- Checking In
						["coord"] = { 63.1, 29.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60436 },	-- Li Hai
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["isBreadcrumb"] = true,
					}),
					q(31460, {	-- Cho's Missive (A)
						["coord"] = { 53.6, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59451 },	-- Mishka
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
					}),
					q(31459, {	-- Cho's Missive (H)
						["coord"] = { 62.6, 80.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59449 },	-- Shademaster Kiryn
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
					}),
					q(30828, {	-- Cleansing the Mere
						["coord"] = { 74.9, 88.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60973 },	-- Waterspeaker Gorai
						["sourceQuest"] = 30480,	-- The Ritual
					}),
					q(30487, {	-- Comin' Round the Mountain
						["coord"] = { 57.2, 61.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59696 },	-- Uncle Cloverleaf
						["sourceQuests"] = {
							30601,	-- Instant Courage
							30618,	-- Resupplying One Keg
							30621,	-- They Stole My Luck
						},
					}),
					q(57069, {	-- Cut Off the Heads
						["lvl"] = 120,
						["coord"] = { 60.0, 75.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156391 },	-- Li Li Stormstout
						["sourceQuest"] = 57068,	-- Kite Surveillance
					}),
					q(30593, {	-- Deanimate the Reanimated (A)
						["coord"] = { 53.6, 83.2, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59451 },	-- Mishka
						["sourceQuest"] = 30514,	-- Challenge Accepted
					}),
					q(30594, {	-- Deanimate the Reanimated (H)
						["coord"] = { 62.6, 80.7, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59449 },	-- Shademaster Kiryn
						["sourceQuest"] = 30515,	-- Challenge Accepted
					}),
					q(30991, {	-- Do a Barrel Roll!
						["coord"] = { 31.8, 60.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61820 },	-- Lao-Chin the Iron Belly
						["sourceQuests"] = {
							30751,	-- A Terrible Sacrifice
							30994,	-- Lao-Chin's Gambit
						},
						["g"] = {
							i(88531),	-- Lao Chin's Last Mug (TOY!)
						},
					}),
					q(30513, {	-- Eastwind Rest
						["coord"] = { 71.6, 93.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59442 },	-- General Nazgrim
						["sourceQuests"] = {
							30509,	-- General Nazgrim has Awakened
							30510,	-- General Nazgrim has Awakened
							30511,	-- General Nazgrim has Awakened
						},
					}),
					q(30794, {	-- Emergency Care
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60694 },	-- Sage Liao
						["sourceQuest"] = 30816,	-- Checking In
					}),
					q(31011, {	-- Enemies At Our Door
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61371 },	-- Lorewalker Cho
						["sourceQuests"] = {
							30943,	-- Handle With Care
							30944,	-- It Takes A Village
							30942,	-- Make A Fighter Out of Me
							30945,	-- What's Yours Is mine
						},
					}),
					q(30468, {	-- Enraged Vengeance
						["coord"] = { 74.7, 88.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59273 },	-- Swordmistress Mei
						["g"] = {
							i(84535),	-- Bodyguard's Dagger
							i(84529),	-- Bodyguard's Halberd
							i(84532),	-- Bodyguard's Rifle
							i(84536),	-- Hidden Pass Barbs
							i(84528),	-- Inkgill Blade
							i(84533),	-- Mei's Blade
							i(84534),	-- Ornate Mace
							i(84531),	-- Swordmistress' Blade
							i(84530),	-- Swordmistress' Greatsword
						},
					}),
					q(30571, {	-- Farmhand Freedom
						["coord"] = { 60.2, 85.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59573 },	-- Farmer Chow
						["sourceQuests"] = {
							30569,	-- Trouble on the Farmstead (A)
							30570,	-- Trouble on the Farmstead (H)
						},
					}),
					q(30834, {	-- Father and Child Reunion
						["coord"] = { 74.6, 76.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59272 },	-- Wu-Peng
						["sourceQuest"] = 30467,	-- My Son...
					}),
					q(30992, {	-- Finish This!
						["coord"] = { 31.8, 60.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61820 },	-- Lao-Chin the Iron Belly
						["sourceQuest"] = 30991,	-- Do a Barrel Roll!
					}),
					q(30935, {	-- Fisherman's Tale
						["coord"] = { 64.0, 73.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30802,	-- Chasing the Storm
					}),
					q(30489, {	-- Fresh Needle Scent
						["coord"] = { 71.6, 70.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59353 },	-- Lao Muskpaw
						["groups"] = {
							i(79952),	-- Pungent Sprite Needles (QI!)
						},
					}),
					q(30967, {	-- Free the Dissenters
						["coord"] = { 75.1, 87.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60973 },	-- Waterspeaker Gorai
					}),
					q(30509, {	-- General Nazgrim has Awakened (3 versions of this quest from 3 different npc's but completing one gives credit for all 3)
						["coord"] = { 70.7, 90.3, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59076 },	-- Commander Hsieh
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30510, {	-- General Nazgrim has Awakened
						["coord"] = { 72.2, 91.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59073 },	-- Mayor Bramblestaff
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30511, {	-- General Nazgrim has Awakened
						["coord"] = { 71.5, 92.8, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59077 },	-- Apothecary Cheng
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30339, {	-- Getting your Hands Dirty
						["coord"] = { 55.0, 92.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59341 },	-- Merchant Tantan
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(30824, {	-- Gourmet Kafa
						["coord"] = { 40.2, 81.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60678 },	-- Cousin Littlebrew
					}),
					q(30743, {	-- Gourmet Kafa
						["coord"] = { 42.3, 69.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60596 },	-- Cousin Gootfur
					}),
					q(30610, {	-- Grummle! Grummle! Grummle!
						["coord"] = { 52.0, 67.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59894 },	-- Brother Yakshoe
						["sourceQuests"] = {
							30607,	-- Hozen Love Their Keys
							30608,	-- The Snackrifice
							30606,	-- Thumping Knucklethump
						}
					}),
					q(30943, {	-- Handle With Care
						["coord"] = { 63.4, 28.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61495 },	-- Elder Shu
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["groups"] = {
							o(211684, {	-- Volatile Blooms
								i(82298),	-- Handful of Volatile Blooms (QI!)
							}),
						},
					}),
					heroscall(q(49559, {	-- Hero's Call: Kun-Lai Summit!
						["timeline"] = { ADDED_7_3_5 },
						["isBreadcrumb"] = true,
						["lvl"] = 82,
					})),
					q(30460, {	-- Hit Medicine
						["coord"] = { 71.5, 92.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59077 },	-- Apothecary Cheng
						["groups"] = {
							i(79819),	-- Dit Da Jow (QI!)
						},
					}),
					q(30682, {	-- Holed Up
						["coord"] = { 42.9, 88.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60178 },	-- Sya Zhong
						["g"] = {
							i(88579),	-- Jin Warmkeg's Brew (TOY!)
						},
					}),
					q(30723, {	-- Honor, Even in Death
						["coord"] = { 34.9, 59.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61816 },	-- Lin Silentstrike
						["sourceQuest"] = 30699,	-- To Winter's Blossom
					}),
					q(30607, {	-- Hozen Love Their Keys
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59894 },	-- Brother Yakshoe
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["groups"] = {
							i(80535),	-- Yeti Shackle Key (QI!)
						},
					}),
					q(30652, {	-- In Tents Channeling (A)
						["coord"] = { 53.8, 83.6, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59441 },	-- Admiral Taylor
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
					}),
					q(30657, {	-- In Tents Channeling (H)
						["coord"] = { 62.9, 80.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59442 },	-- General Nazgrim
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30594,	-- Deanimate the Reanimated
							30620,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							31251,	-- Best Meals Anywhere!
							31256,	-- Round 'Em Up!
						},
					}),
					q(30601, {	-- Instant Courage
						["coord"] = { 57.2, 61.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59696 },	-- Uncle Cloverleaf
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["groups"] = {
							i(80308),	-- Fire Lotus Incense (QI!)
						},
					}),
					q(31030, {	-- Into the Monastery
						["coord"] = { 36.6, 47.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 62227 },	-- Ban Bearheart
						["sourceQuest"] = 30752,	-- Unbelievable!
						["isBreadcrumb"] = true,
					}),
					q(31031, {	-- Into the Monastery
						["coord"] = { 35.3, 49.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 62227 },	-- Ban Bearheart
						["description"] = "This version is available if you abandon the other version.",
						["sourceQuest"] = 30752,	-- Unbelievable!
						["isBreadcrumb"] = true,
					}),
					q(30944, {	-- It Takes A Village
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61371 },	-- Lorewalker Cho
						["sourceQuest"] = 30935,	-- Fisherman's Tale
					}),
					q(30797, {	-- It Was Almost Alive
						["coord"] = { 57.1, 47.8, KUN_LAI_SUMMIT },
						["provider"] = { "o", 211754 },	-- Curious Text
						["sourceQuests"] = {
							30684,	-- Seeker's Folly
							31306,	-- Seeker's Folly
						},
						["groups"] = {
							o(211780, {	-- Curious Text
								i(81892),	-- Curious Text (QI!)
							}),
						},
					}),
					q(30805, {	-- Justice
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60785 },	-- Sage Liao
						["sourceQuest"] = 30794,	-- Emergency Care
					}),
					q(30825, {	-- Kota Blend
						["coord"] = { 40.3, 81.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60677 },	-- Uncle Tallmug
						["groups"] = {
							o_repeated({
								i(81054),	-- Kafa'Kota Berry
								o(211454),	-- Kafa'kota Bush
								o(211480),	-- Kafa'kota Berries
							}),
						},
					}),
					q(30994, {	-- Lao-Chin's Gambit
						["coord"] = { 29.3, 62.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61454 },	-- Suna Silentstrike
						["sourceQuests"] = {
							30751,	-- A Terrible Sacrifice
							30750,	-- Off the Wall!
						},
					}),
					q(30801, {	-- Lessons from History
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30800,	-- Stealing Their Thunder King
					}),
					q(57075, {	-- Liquid Courage
						["lvl"] = 120,
						["coord"] = { 55.5, 91.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156938 },	-- Li Li Stormstout
						["sourceQuest"] = 57074,	-- Our Backs to the Gate
					}),
					q(30942, {	-- Make A Fighter Out of Me
						["coord"] = { 63.7, 30.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61503 },	-- Shomi
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["g"] = {
							i(82599),	-- Shomi's Greatsword
							i(82600),	-- Shomi's Mace
							i(82601),	-- Shomi's Shield
							i(82602),	-- Shomi's Ward
							i(82603),	-- Shomi's Dagger
							i(82604),	-- Shomi's Axe
							i(90488),	-- Shomi's Crane
							i(90489),	-- Shomi's Fan
						},
					}),
					q(30619, {	-- Mogu?! Oh No-gu! (A)
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63542 },	-- Elder Tsulan
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["g"] = {
							i(82489),	-- Dreaming Spirit Helm
							i(82491),	-- Mindbender Cowl
							i(82488),	-- Mushan Hide Helm
							i(82490),	-- Serenity Headcover
							i(82492),	-- Silentleaf Helm
							i(82494),	-- Summit Guardian Helm
							i(82495),	-- Wallwatcher Helm
							i(82487),	-- Waterfall Hood
							i(82493),	-- Yak Herder Helm
						},
					}),
					q(30620, {	-- Mogu?! Oh No-gu! (H)
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63535 },	-- Elder Shiao
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["g"] = {
							i(82489),	-- Dreaming Spirit Helm
							i(82491),	-- Mindbender Cowl
							i(82488),	-- Mushan Hide Helm
							i(82490),	-- Serenity Headcover
							i(82492),	-- Silentleaf Helm
							i(82494),	-- Summit Guardian Helm
							i(82495),	-- Wallwatcher Helm
							i(82487),	-- Waterfall Hood
							i(82493),	-- Yak Herder Helm
						},
					}),
					q(57070, {	-- Mogu Massacre
						["lvl"] = 120,
						["coord"] = { 60.0, 75.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156391 },	-- Li Li Stormstout
						["sourceQuest"] = 57068,	-- Kite Surveillance
					}),
					q(31456, {	-- Muskpaw Ranch (A)
						["coord"] = { 53.7, 84.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63754 },	-- Farmhand Bo
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
					}),
					q(31457, {	-- Muskpaw Ranch (H)
						["coord"] = { 62.5, 79.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63751 },	-- Farmhand Ko
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
					}),
					q(30768, {	-- My Husband...
						["isBreadcrumb"] = true,
						["coord"] = { 31.3, 61.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61454 },	-- Suna Silentstrike
						["sourceQuest"] = 30992,	-- Finish This!
						["altQuests"] = {
							31695,	-- Beyond the Wall
							31386,	-- The Shado-Pan Offensive (A)
							31388,	-- The Shado-Pan Offensive (H)
						},
					}),
					q(30467, {	-- My Son...
						["coord"] = { 74.9, 88.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59263 },	-- Merchant Shi
						["sourceQuests"] = {
							31451,	-- The Missing Merchant (H)
							31452,	-- The Missing Merchant (A)
						},
					}),
					q(57071, {	-- No Brew Left Behind
						["lvl"] = 120,
						["coord"] = { 59.9, 75.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156390 },	-- Chen Stormstout
						["sourceQuest"] = 57068,	-- Kite Surveillance
					}),
					q(30600, {	-- No Pack Left Behind
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30603,	-- The Broketooth Ravage
							30602,	-- The Rabbitsfoot
						},
						["groups"] = {
							i(80307),	-- Grummlepack (QI!)
							i(88397),	-- Grummlepack
						},
					}),
					q(30750, {	-- Off the Wall!
						["coord"] = { 29.3, 62.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61454 },	-- Suna Silentstrike
						["sourceQuest"] = 30724,	-- To the Wall!
					}),
					q(30614, {	-- Oil Stop
						["coord"] = { 65.4, 60.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59402 },	-- Slimy Inkstain
						["groups"] = {
							i(80312),	-- Empty Oil Vial (QI!)
							i(80311),	-- Filled Oil Vial (QI!)
						},
					}),
					q(30683, {	-- One Traveler's Misfortune
						["coord"] = { 48.1, 49.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60175 },	-- Lucky Bluestring
						["sourceQuest"] = 30487,	-- Comin' Round the Mountain
						["g"] = {
							i(82505),	-- Waterfall Robe
							i(82506),	-- Mushan Hide Tunic
							i(82507),	-- Dreaming Spirit Armor
							i(82508),	-- Serenity Chestguard
							i(82509),	-- Mindbender Robe
							i(82510),	-- Silentleaf Tunic
							i(82511),	-- Yak Herder Armor
							i(82512),	-- Summit Guardian Chestpiece
							i(82513),	-- Wallwatcher Chestpiece
						},
					}),
					q(57074, {	-- Our Backs to the Gate
						["lvl"] = 120,
						["coord"] = { 59.9, 75.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156390 },	-- Chen Stormstout
						["sourceQuests"] = {
							57069,	-- Cut Off the Heads
							57070,	-- Mogu Massacre
							57072,	-- Yak of All Trades
						},
					}),
					q(30650, {	-- Pandaren Prisoners (A)
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63542 },	-- Elder Tsulan
						["sourceQuests"] = {
							31252,	-- Back to Westwind Rest
							30593,	-- Deanimate the Reanimated
							30619,	-- Mogu?! Oh No-gu!
							-- TODO: verify below
							30583,	-- Blue Dwarf Needs Food Badly
							30575,	-- Round 'Em Up
						},
					}),
					q(30655, {	-- Pandaren Prisoners (H)
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63535 },	-- Elder Shiao
						["sourceQuests"] = {
							31253,	-- Back to Eastwind Rest
							30620,	-- Mogu?! Oh No-gu!
						},
					}),
					q(30999, {	-- Path Less Traveled
						["coord"] = { 57.3, 61.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61847 },	-- Lorewalker Cho
						["sourceQuests"] = {
							31460,	-- Cho's Missive (A)
							31459,	-- Cho's Missive (H)
						},
					}),
					q(32816, {	-- Path of the Last Emperor
						["provider"] = { "n", 70980 },	-- Seer Hao Pham Roo
						["sourceQuest"] = 32815,	-- The Old Seer
						["g"] = {
							i(98137),	-- Treads of Reticence
							i(98138),	-- Unpretentious Boots
							i(98139),	-- Treads of Respect
							i(98140),	-- Boots of Boundless Patience
							i(98141),	-- Sabatons of the Humble
							i(98142),	-- Modest Sandals
							i(98143),	-- Subservient Greatboots
							i(98144),	-- Unassuming Slippers
							i(98145),	-- Self-Effacing Boots
						},
					}),
					q(30819, {	-- Preparing the Remains
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60785 },	-- Sage Liao
						["sourceQuests"] = {
							30807,	-- By the Falls, For the Fallen
							30805,	-- Justice
							30806,	-- The Scent of Life
						},
					}),
					q(30595, {	-- Profiting off of the Past
						["coord"] = { 59.6, 78.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59821 },	-- Bao Jian
						["groups"] = {
							o_repeated({
								i(80294),	-- Mogu Relic (QI!)
								o(211143),	-- Mogu Relic
								o(211147),	-- Mogu Relic
								o(211148),	-- Mogu Relic
							}),
						},
					}),
					q(30469, {	-- Repossession
						["coord"] = { 74.9, 88.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59263 },	-- Merchant Shi
						["groups"] = {
							o(210887, {	-- Untainted Supplies
								i(79880),	-- Stolen Supplies (QI!)
							}),
						},
					}),
					q(31228, {	-- Prophet Khar'zul
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 63784 },	-- Lorewalker Cho
						["sourceQuest"] = 30946,	-- Revelations
						["g"] = {
							i(82514),	-- Waterfall Leggings
							i(82515),	-- Mushan Hide Legguards
							i(82516),	-- Dreaming Spirit Kilt
							i(82517),	-- Serenity Legplates
							i(82518),	-- Mindbender Trousers
							i(82519),	-- Silentleaf Legguards
							i(82520),	-- Yak Herder Leggings
							i(82521),	-- Summit Guardian Legguards
							i(82522),	-- Wallwatcher Legguards
						},
					}),
					q(31809, {	-- Remnants of Anger
						["provider"] = { "i", 89317 },	-- Claw of Anger
						["g"] = {
							i(90912),	-- Angerforged Stompers
							i(90914),	-- Boots of Raging Haze
							i(90907),	-- Boots of Unbreakable Umbrage
							i(90908),	-- Crushing Treads of Anger
							i(90911),	-- Furyheart Treads
							i(90909),	-- Intemperate Greatboots
							i(90910),	-- Mindfire Sollerets
							i(90913),	-- Sandals of the Shadow
							i(90906),	-- Treads of Ardent Antagonism
						},
					}),
					q(30618, {	-- Resupplying One Keg
						["coord"] = { 57.7, 61.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59695 },	-- Big Sal
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["g"] = {
							o_repeated({
								i(80315),	-- Stolen Supplies (QI!)
								o(211266),	-- Stolen Supplies
								o(211268),	-- Stolen Supplies
								o(211269),	-- Stolen Supplies
								o(211270),	-- Stolen Supplies
							}),
							i(88070),	-- Waterfall Wristwraps
							i(88069),	-- Mushan Hide Wristwraps
							i(88068),	-- Dreaming Spirit Wristwraps
							i(88067),	-- Serenity Wristwraps
							i(88066),	-- Mindbender Wristwraps
							i(88065),	-- Silentleaf Wristwraps
							i(88064),	-- Yak Herder Wristwraps
							i(88063),	-- Summit Guardian Wristwraps
							i(88062),	-- Wallwatcher Wristwraps
						},
					}),
					q(57076, {	-- Return to Mistfall
						["lvl"] = 120,
						["coord"] = { 55.4, 91.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 156937 },	-- Chen Stormstout
						["sourceQuest"] = 57075,	-- Liquid Courage
					}),
					q(30946, {	-- Revelations
						["coord"] = { 62.3, 29.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 63750 },	-- Lorewalker Cho
						["sourceQuest"] = 31011,	-- Enemies At Our Door
					}),
					q(30617, {	-- Roadside Assistance
						["coord"] = { 64.8, 60.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59597 },	-- Smokey Sootassle
						["sourceQuest"] = 30616,	-- Traffic Issues
						["g"] = {
							i(88381),	-- Silversage Incence (TOY!)
						},
					}),
					q(30575, {	-- Round 'Em Up (A)
						["coord"] = { 53.7, 82.6, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59441 },	-- Admiral Taylor
						["sourceQuest"] = 30514,	-- Challenge Accepted
						["g"] = {
							i(84511),	-- Dreaming Spirit Monnion
							i(84517),	-- Kafa Armored Shoulders
							i(84512),	-- Kafa Burnished Spaulders
							i(84516),	-- Kafa Heavy Shoulders
							i(84510),	-- Kafa Hide Spaulders
							i(84514),	-- Kafa Leather Spaulders
							i(84509),	-- Kafa Satin Mantle
							i(84513),	-- Kafa Silk Amice
							i(84515),	-- Yak Herder Monnion
						},
					}),
					q(31256, {	-- Round 'Em Up (H)
						["coord"] = { 62.9, 80.1, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59442 },	-- General Nazgrim
						["sourceQuest"] = 30515,	-- Challenge Accepted
						["g"] = {
							i(84511),	-- Dreaming Spirit Monnion
							i(84517),	-- Kafa Armored Shoulders
							i(84512),	-- Kafa Burnished Spaulders
							i(84516),	-- Kafa Heavy Shoulders
							i(84510),	-- Kafa Hide Spaulders
							i(84514),	-- Kafa Leather Spaulders
							i(84509),	-- Kafa Satin Mantle
							i(84513),	-- Kafa Silk Amice
							i(84515),	-- Yak Herder Monnion
						},
					}),
					q(30684, {	-- Seeker's Folly
						["coord"] = { 48.1, 49.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60175 },	-- Lucky Bluestring
						["sourceQuest"] = 30683,	-- One Traveler's Misfortune
					}),
					q(31306, {	-- Seeker's Folly
						["coord"] = { 48.0, 49.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60180 },	-- Lucky Bluestring
						["sourceQuest"] = 30683,	-- One Traveler's Misfortune
						["description"] = "This version becomes available if you abandon the first version.",
					}),
					q(30742, {	-- Shut it Down
						["coord"] = { 42.3, 69.7, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60596 },	-- Cousin Gootfur
					}),
					q(30823, {	-- Shut it Down
						["coord"] = { 40.2, 81.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60678 },	-- Cousin Littlebrew
					}),
					q(30795, {	-- Staying Connected
						["coord"] = { 43.7, 51.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60795 },	-- Lorewalker Cho
						["sourceQuest"] = 30829,	-- The Tongue of Ba-Shon
						["groups"] = {
							i(81712),	-- The Tongue of Ba-Shon (QI!)
						},
					}),
					q(30800, {	-- Stealing Their Thunder King
						["coord"] = { 57.3, 47.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30798,	-- Breaking the Emperor's Shield
						["groups"] = {
							o(211967, {	-- King's Coffer
								i(82764),	-- Bottom Fragment of Lei Shen's Tablet (QI!)
							}),
						},
					}),
					q(30340, {	-- Stick in the Mud
						["coord"] = { 55.0, 92.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59341 },	-- Merchant Tantan
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(31392, {	-- Temple of the White Tiger (A)
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
						["coords"] = {
							{ 72.0, 94.2, KUN_LAI_SUMMIT },
							{ 54.5, 77.1, KRASARANG_WILDS },	-- Leni Kelpenstout
							{ 45.7, 43.7, THE_JADE_FOREST },	-- Peiji Goldendraft
							{ 74.8, 81.3, TOWNLONG_STEPPES },	-- Tigermaster Liu-Do
							{ 55.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },	-- Hopsmaster Chang
						},
						["qgs"] = {
							63751,	-- Farmhand Ko
							64448,	-- Hopsmaster Chang
							60289,	-- Leni Kelpenstout
							55809,	-- Peiji Goldendraft
							66247,	-- Tigermaster Liu-Do
							64521,	-- Wanderer Chu
						},
					}),
					q(31393, {	-- Temple of the White Tiger (H)
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["coords"] = {
							{ 72.0, 94.2, KUN_LAI_SUMMIT },
							{ 54.5, 77.1, KRASARANG_WILDS },	-- Leni Kelpenstout
							--	TODO: Flew by the area before and it wasn't here. Possibly requires "Boom Goes the Doonamite!" ?
							{ 45.7, 43.7, THE_JADE_FOREST },	-- Peiji Goldendraft
							{ 74.8, 81.3, TOWNLONG_STEPPES },	-- Tigermaster Liu-Do
							{ 55.8, 51.8, VALLEY_OF_THE_FOUR_WINDS },	-- Hopsmaster Chang
						},
						["qgs"] = {
							63751,	-- Farmhand Ko
							64448,	-- Hopsmaster Chang
							60289,	-- Leni Kelpenstout
							55809,	-- Peiji Goldendraft
							66247,	-- Tigermaster Liu-Do
							64521,	-- Wanderer Chu
						},
					}),
					q(31207, {	-- The Arena of Annihilation
						["lvl"] = 90,
						["maps"] = { 480 },	-- Arena of Annihilation
						["coord"] = { 68.6, 48.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 63315 },	-- Gurgthock
						["g"] = {
							i(90466),	-- Maki's Mashing Mace
							i(90465),	-- Scar-Shell's Scintillating Staff
							i(90464),	-- Satay's Stabbing Sword
							i(90463),	-- Chagan's Cheery Chopper
							i(90462),	-- Liuyang's Lovely Longstaff
							i(90461),	-- Jol'Grum's Frozen Mace
							i(90460),	-- Cloudbender Kobo's Chilled Crossbow
							i(90459),	-- Liuyang's Light-Lit Longshank
						},
					}),
					q(30603, {	-- The Broketooth Ravage
						["coord"] = { 49.1, 70.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59806 },	-- Brother Rabbitsfoot
						["sourceQuest"] = 30592,	-- The Burlap Trail: To Burlap Waystation
						["groups"] = {
							i(81137),	-- Rabbitsfoot's Luckydo (QI!)
						},
					}),
					q(30747, {	-- The Burlap Grind
						["coord"] = { 42.5, 69.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60679 },	-- Nephew Burrberry
						["sourceQuest"] = 30746,	-- A Fair Trade
						["g"] = {
							i(81183),	-- Flask of Kafa (QI!)
							i(82525),	-- Dreaming Spirit Sabatons
							i(82527),	-- Mindbender Treads
							i(82524),	-- Mushan Hide Footguards
							i(82526),	-- Serenity Greaves
							i(82528),	-- Silentleaf Boots
							i(82530),	-- Summit Guardian Warboots
							i(82531),	-- Wallwatcher Warboots
							i(82523),	-- Waterfall Treads
							i(82529),	-- Yak Herder Sabatons
						},
					}),
					q(30821, {	-- The Burlap Grind (daily)
						["coord"] = { 42.5, 69.3, KUN_LAI_SUMMIT },
						["isDaily"] = true,
						["provider"] = { "n", 60679 },	-- Nephew Burrberry
						["sourceQuest"] = 30747,	-- The Burlap Grind
					}),
					q(30592, {	-- The Burlap Trail: To Burlap Waystation
						["coord"] = { 58.0, 61.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59701 },	-- Brother Lintpocket
						["g"] = {
							i(88384),	-- Burlap Ritual Bag
						},
					}),
					q(30692, {	-- The Burlap Trail: To Kota Basecamp
						["coord"] = { 51.6, 67.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59703 },	-- Brother Trailscenter
						["sourceQuest"] = 30612,	-- The Leader Hozen
						["g"] = {
							i(82584),	-- Snowfall Shawl
							i(82585),	-- Snowdrift Drape
							i(82586),	-- Snowblind Cape
							i(82587),	-- Snow Boulder Manteau
							i(82588),	-- Snowmask Cloak
						},
					}),
					q(30665, {	-- The Defense of Shado-Pan Fallback
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60161 },	-- Shado-Master Chong
						["sourceQuests"] = {
							30459,	-- All of the Arrows
							30457,	-- Call Out Their Leader
							30460,	-- Hit Medicine
						},
					}),
					q(30855, {	-- The Fall of Shai Hu
						["coord"] = { 74.9, 88.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61065 },	-- Waterspeaker Gorai
						["sourceQuest"] = 30828,	-- Cleansing the Mere
						["g"] = {
							i(82552),	-- Dreaming Spirit Armbands
							i(82554),	-- Mindbender Cuffs
							i(82551),	-- Mushan Hide Bindings
							i(82553),	-- Serenity Bracers
							i(82555),	-- Silentleaf Armwraps
							i(82557),	-- Summit Guardian Armplates
							i(82558),	-- Wallwatcher Bracers
							i(82550),	-- Waterfall Cuffs
							i(82556),	-- Yak Herder Wristguards
						},
					}),
					q(30804, {	-- The Fearmaster
						["coord"] = { 71.0, 69.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59353 },	-- Lao Muskpaw
						["sourceQuest"] = 30582,	-- The Late Mrs. Muskpaw
						["g"] = {
							i(84520),	-- Dreaming Spirit Boots
							i(84526),	-- Kafa Armored Warboots
							i(84521),	-- Kafa Burnished Greaves
							i(84525),	-- Kafa Heavy Warboots
							i(84519),	-- Kafa Hide Footguards
							i(84523),	-- Kafa Leather Boots
							i(84518),	-- Kafa Satin Treads
							i(84522),	-- Kafa Silk Treads
							i(84524),	-- Yak Herder Boots
						},
					}),
					q(30582, {	-- The Late Mrs. Muskpaw
						["cr"] = 59335,	-- Burilgi Despoiler
						["coord"] = { 70.3, 71.9, KUN_LAI_SUMMIT },
						["provider"] = { "i", 80241 },	-- Muskpaw's Keepsake
						["g"] = {
							i(80241),	-- Muskpaw's Keepsake (QI!)
						},
					}),
					q(30612, {	-- The Leader Hozen
						["coord"] = { 45.9, 64.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30610,	-- Grummel! Grummle! Grummle!
							30611,	-- Unleash The Yeti!
						},
						["g"] = {
							i(82541),	-- Waterfall Gloves
							i(82542),	-- Mushan Hide Gloves
							i(82543),	-- Dreaming Spirit Guantlets
							i(82544),	-- Serenity Gloves
							i(82545),	-- Mindbender Handguards
							i(82546),	-- Silentleaf Gloves
							i(82547),	-- Yak Herder Gauntlets
							i(82548),	-- Summit Guardian Gauntlets
							i(82549),	-- Wallwatcher Gauntlets
						},
					}),
					q(31452, {	-- The Missing Merchant (A)
						["coord"] = { 54.1, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63542 },	-- Elder Tsulan
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
					}),
					q(31451, {	-- The Missing Merchant (H)
						["coord"] = { 62.3, 79.6, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63535 },	-- Elder Shiao
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
					}),
					q(30488, {	-- The Missing Muskpaw
						["coord"] = { 71.6, 70.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59353 },	-- Lao Muskpaw
						["sourceQuests"] = {
							31456,	-- Muskpaw Ranch (A)
							31457,	-- Muskpaw Ranch (H)
						},
					}),
					q(30660, {	-- The Ordo Warbringer (A)
						["races"] = ALLIANCE_ONLY,
						["sourceQuest"] = 30652,	-- In Tents Channeling
						["description"] = "Automatically granted after completing the criteria for |cFFFFD700In Tents Channeling|r.",
						["g"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30662, {	-- The Ordo Warbringer (A)
						["coord"] = { 53.9, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59441 },	-- Admiral Taylor
						["sourceQuest"] = 30652,	-- In Tents Channeling
						["description"] = "Only available if you abandon the original version of the quest.",
						["g"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30661, {	-- The Ordo Warbringer (H)
						["races"] = HORDE_ONLY,
						["sourceQuest"] = 30657,	-- In Tents Channeling
						["description"] = "Automatically granted after completing the criteria for |cFFFFD700In Tents Channeling|r.",
						["g"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30663, {	-- The Ordo Warbringer (H)
						["coord"] = { 62.4, 80.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59442 },	-- General Nazgrim
						["sourceQuest"] = 30657,	-- In Tents Channeling
						["description"] = "Only available if you abandon the original version of the quest.",
						["g"] = {
							i(82590),	-- Blazecaster's Wand
							i(82598),	-- Fireblaze Clobberer
							i(82594),	-- Fireblaze Rifle
							i(82596),	-- Ordo Handaxe
							i(82589),	-- Ordo Mace
							i(82592),	-- Warbringer's Axe
							i(82597),	-- Warbringer's Dagger
							i(82593),	-- Wind Blade
							i(82595),	-- Wind's Edge
							i(82591),	-- Wind's Rest Spear
						},
					}),
					q(30602, {	-- The Rabbitsfoot
						["coord"] = { 51.6, 67.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59703 },	-- Brother Trailscenter
						["sourceQuest"] = 30592,	-- The Burlap Trail: To Burlap Waystation
					}),
					q(30480, {	-- The Ritual
						["coord"] = { 75.1, 88.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60973 },	-- Waterspeaker Gorai
						["sourceQuests"] = {
							30468,	-- Enraged Vengeance
							30967,	-- Free the Dissenters
							30496,	-- The Waterspeaker's Staff
						},
					}),
					q(31254, {	-- The Road to Kun-Lai
						["races"] = ALLIANCE_ONLY,
						-- #if AFTER 7.3.5
						["sourceQuests"] = { 49559 },	-- Hero's Call: Kun-Lai Summit!
						-- #endif
						["qgs"] = {
							63778,	-- Messenger Grummle
						},
						["coords"] = {
							{ 70.0, 23.6, VALLEY_OF_THE_FOUR_WINDS },	-- Messenger Grummle
						},
					}),
					q(31255, {	-- The Road to Kun-Lai
						["qg"] = 63778,	-- Messenger Grummle
						-- #if AFTER 7.3.5
						["sourceQuest"] = 49541,	-- Warchief's Command: Kun-Lai Summit!
						-- #endif
						["coords"] = {
							{ 70.0, 23.6, VALLEY_OF_THE_FOUR_WINDS },
							{ 41.7, 29.9, KRASARANG_WILDS },
					--	TODO: Flew by the area before and it wasn't here. Possibly requires "Boom Goes the Doonamite!" ?
							{ 45.7, 43.8, THE_JADE_FOREST },
						},
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(85694),	-- A Missive from Lorewalker Cho (QI!)
						},
					}),
					q(38936, {	-- The Road to Kun-Lai (Adventure guide)
						["isBreadcrumb"] = true,
						["description"] = "This quest needs to be accepted from the 'Adventure Guide'.",
					}),
					q(30806, {	-- The Scent of Life
						["coord"] = { 60.6, 21.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60785 },	-- Sage Liao
						["sourceQuest"] = 30794,	-- Emergency Care
						["g"] = {
							i(80907),	-- Opalescent Blue Crab Shell (QI!)
							i(81261),	-- Stolen Pandaren Spices (QI!)
						},
					}),
					q(30281, {	-- The Silent Approach
						["coord"] = { 55.2, 92.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 58470 },	-- He Softfoot
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(30608, {	-- The Snackrifice
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59894 },	-- Brother Yakshoe
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["g"] = {
							i(82532),	-- Waterfall Cord
							i(82533),	-- Mushan Hide Belt
							i(82534),	-- Dreaming SPirit Waistguard
							i(82535),	-- Serenity Clasp
							i(82536),	-- Mindbender Cord
							i(82537),	-- Silentleaf Belt
							i(82538),	-- Yak Herder Belt
							i(82539),	-- Summit Guardian Girdle
							i(82540),	-- Wallwatcher Girdle
						},
					}),
					q(31455, {	-- The Shado-Pan (A)
						["coord"] = { 53.9, 83.4, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59441 },	-- Admiral Taylor
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30651,	-- Barrels of Fun
							30650,	-- Pandaren Prisoners
							30660,	-- The Ordo Warbringer
							30662,	-- The Ordo Warbringer
						},
					}),
					q(31453, {	-- The Shado-Pan (H)
						["coord"] = { 62.4, 80.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 59442 },	-- General Nazgrim
						["isBreadcrumb"] = true,
						["sourceQuests"] = {
							30656,	-- Barrels of Fun
							30655,	-- Pandaren Prisoners
							30661,	-- The Ordo Warbringer
							30663,	-- The Ordo Warbringer
						},
					}),
					q(30482, {	-- The Soul-Gatherer
						["coord"] = { 55.2, 92.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 58470 },	-- He Softfoot
						["isDaily"] = true,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(30799, {	-- The Tomb of Shadows
						["coord"] = { 57.1, 47.8, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61297 },	-- Image of Lorewalker Cho
						["sourceQuest"] = 30797,	-- It Was Almost Alive
						["g"] = {
							o(211770, {	-- Shen Dynasty Tablet
								i(82393),	-- Shen Dynasty Rubbbing (QI!)
							}),
							o(211794, {	-- Qiang Dynasty Tablet
								i(82394),	-- Qiang Dynasty Rubbbing (QI!)
							}),
							o(211793, {	-- Wai Dynasty Tablet
								i(82393),	-- Wai Dynasty Rubbbing (QI!)
							}),
							i(82564),	-- Spiritbinder Band
							i(82565),	-- Flamefury Ring
							i(82566),	-- Jade Inlaid Signet
							i(82567),	-- Blue Mountain Signet
							i(82568),	-- Band of the Unsealed Tomb
						},
					}),
					q(30829, {	-- The Tongue of Ba-Shon
						["coord"] = { 43.7, 51.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60795 },	-- Lorewalker Cho
						["sourceQuests"] = {
							30684,	-- Seeker's Folly
							31306,	-- Seeker's Folly
						},
					}),
					q(30496, {	-- The Waterspeaker's Staff
						["coord"] = { 75.1, 87.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60973 },	-- Waterspeaker Gorai
						["groups"] = {
							i(81385),	-- Stolen Inkgill Ritual Staff (QI!)
						},
					}),
					q(30621, {	-- They Stole My Luck!
						["coord"] = { 57.3, 60.1, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59716 },	-- Ji-Lu the Lucky
						["sourceQuest"] = 30999,	-- Path Less Traveled
						["groups"] = {
							i(80316),	-- Lucky Virmen's Foot (QI!)
							i(80317),	-- Lucky Yak Shoe (QI!)
							i(80318),	-- Lucky Four Winds Clover (QI!)
							i(80319),	-- Lucky "Gold" Coin (QI!)
						},
					}),
					q(30606, {	-- Thumping Knucklethump
						["coord"] = { 50.5, 64.0, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59894 },	-- Brother Yakshoe
						["sourceQuest"] = 30605,	-- Bros Before Hozen
						["g"] = {
							i(88086),	-- Mushan Hide Vest
							i(88085),	-- Dreaming Spirit Vest
							i(88084),	-- Serenity Vest
							i(88083),	-- Silentleaf Vest
							i(88082),	-- Yak Herder Vest
							i(88081),	-- Summit Guardian Vest
							i(88080),	-- Wallwatcher Vest
						},
					}),
					q(30724, {	-- To the Wall!
						["coord"] = { 34.9, 59.3, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61816 },	-- Lin Silentstrike
						["sourceQuests"] = {
							30715,	-- A Line Unbroken
							30723,	-- Honor, Even in Death
						},
					}),
					q(30699, {	-- To Winter's Blossom
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60161 },	-- Shado-Master Chong
						["sourceQuest"] = 30690,	-- Unmasking the Yaungol
					}),
					q(30616, {	-- Traffic Issues
						["coord"] = { 64.8, 60.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59597 },	-- Smokey Sootassle
						["g"] = {
							i(82571),	-- Burlap Loop
							i(82572),	-- Fire Camp Ring
							i(82570),	-- Grummle Bazaar Keepsake
							i(82569),	-- Luckydo Ring
							i(82573),	-- Sootassle Band
						},
					}),
					q(30826, {	-- Trouble Brewing
						["coord"] = { 40.3, 81.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60677 },	-- Uncle Tallmug
					}),
					q(30745, {	-- Trouble Brewing
						["coord"] = { 42.5, 69.4, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60503 },	-- Uncle Keenbean
						-- TODO: is this version available after turning in "A Fair Trade"? looks phase-related
					}),
					q(30569, {	-- Trouble on the Farmstead (A)
						["coord"] = { 53.7, 84.1, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 63754 },	-- Farmhand Bo
						["sourceQuest"] = 30514,	-- Challenge Accepted
					}),
					q(30570, {	-- Trouble on the Farmstead (H)
						["coord"] = { 62.5, 79.4, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 63751 },	-- Farmhand Ko
						["sourceQuest"] = 30515,	-- Challenge Accepted
					}),
					q(30670, {	-- Turnabout
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60161 },	-- Shado-Master Chong
						["sourceQuest"] = 30457,	-- Call Out Their Leader
						["groups"] = {
							i(81713),	-- Blind Rage Essence (QI!)
						},
					}),
					q(30752, {	-- Unbelievable!
						["coord"] = { 35.3, 49.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61819 },	-- Ban Bearheart
						["sourceQuest"] = 30993,	-- Where are My Reinforcements?
						["g"] = {
							i(82559),	-- Growthtender Locket
							i(82560),	-- Brewdrinker Amulet
							i(82561),	-- Bearheart Necklace
							i(82562),	-- Brewdrinker Pendant
							i(82563),	-- Bearheart Amulet
						},
					}),
					q(30611, {	-- Unleash The Yeti!
						["coord"] = { 51.9, 67.2, KUN_LAI_SUMMIT },
						["provider"] = { "n", 59452 },	-- Brother Rabbitsfoot
						["sourceQuests"] = {
							30607,	-- Hozen Love Their Keys
							30608,	-- The Snackrifice
							30606,	-- Thumping Knucklethump
						},
					}),
					q(30690, {	-- Unmasking the Yaungol
						["coord"] = { 44.4, 89.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 60161 },	-- Shado-Master Chong
						["sourceQuests"] = {
							30665,	-- The Defense of Shado-Pan Fallback
							30670,	-- Turnabout
						},
						["g"] = {
							i(81741),	-- Blinding Rage Trap (QI!)
							i(88079),	-- Waterfall Cap
							i(88078),	-- Mushan Hide Cap
							i(88077),	-- Dreaming Spirit Cap
							i(88076),	-- Serenity Cap
							i(88075),	-- Mindbender Cap
							i(88074),	-- Silentleaf Cap
							i(88073),	-- Yak Herder Cap
							i(88072),	-- Summit Guardian Cap
							i(88071),	-- Wallwatcher Cap
						},
					}),
					warchiefscommand(q(49541, {	-- Warchief's Command: Kun-Lai Summit!
						["timeline"] = { ADDED_7_3_5 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["lvl"] = 82,
					})),
					q(30512, {	-- Westwind Rest
						["coord"] = { 71.5, 93.0, KUN_LAI_SUMMIT },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 59441 },	-- Admiral Taylor
						["sourceQuests"] = {
							30506,	-- Admiral Taylor has Awakened
							30507,	-- Admiral Taylor has Awakened
							30508,	-- Admiral Taylor has Awakened
						},
					}),
					q(30945, {	-- What's Yours Is Mine
						["coord"] = { 63.3, 30.6, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61496 },	-- Steelbender Doshu
						["sourceQuest"] = 30935,	-- Fisherman's Tale
						["groups"] = {
							i(82299),	-- Blood-Stained Blade (QI!)
						},
					}),
					q(30993, {	-- Where are My Reinforcements?
						["coord"] = { 31.2, 61.5, KUN_LAI_SUMMIT },
						["provider"] = { "n", 61819 },	-- Ban Bearheart
						["sourceQuest"] = 30992,	-- Finish This!
					}),
					q(57072, {	-- Yak of All Trades
						["lvl"] = 120,
						["coord"] = { 58.5, 83.9, KUN_LAI_SUMMIT },
						["provider"] = { "n", 157180 },	-- Abandoned Stormstout Kegs
						["sourceQuest"] = 57071,	-- No Brew Left Behind
					}),
					q(30587, {	-- Yakity Yak
						["cr"] = 59718,	-- Burilgi Despoiler
						["coord"] = { 70.0, 71.8, KUN_LAI_SUMMIT },
						["sourceQuest"] = 30488,	-- The Missing Muskpaw
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50817,	-- Ahone the Wanderer
							50341,	-- Borginn Darkfist
							50354,	-- Havak
							50332,	-- Korda Torros
							50789,	-- Nessos the Oracle
							50831,	-- Scritch
							50733,	-- Ski'thik
							50769,	-- Zai the Outcast
						},
						["g"] = {
							i(87620),	-- Bracers of the Frozen Summit
							i(87617),	-- Bracers of the Serene Mountaintop
							i(87613),	-- Frozen Zandalari Bracer
							i(87618),	-- Ice Encrusted Bracer
							i(87614),	-- Kafa Picker's Bracers
							i(87616),	-- Mountain Trailblazer's Cuffs
							i(87619),	-- Terracotta Guardian's Bracer
							i(87621),	-- Wristguards of Great Fortune
							i(87615),	-- Yakwasher's Bracers
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50817, {	-- Ahone the Wanderer
						["coord"] = { 40.8, 42.5, KUN_LAI_SUMMIT },
						["g"] = {
							i(86588),	-- Pandaren Firework Launcher (TOY!)
						},
					}),
					n(50341, {	-- Borginn Darkfist
						["coord"] = { 55.7, 43.4, KUN_LAI_SUMMIT },
						["g"] = {
							i(86570),	-- Crate of Kidnapped Puppies
						},
					}),
					n(50354, {	-- Havak
						["coords"] = {
							{ 59.3, 73.7, KUN_LAI_SUMMIT },
							{ 57.5, 74.7, KUN_LAI_SUMMIT },
							{ 57.0, 76.0, KUN_LAI_SUMMIT },
						},
						["g"] = {
							i(86573),	-- Shard of Archstone (TOY!)
						},
					}),
					n(66933, {	-- Kishak
						["coords"] = {
							{ 45.60, 19.61, KUN_LAI_SUMMIT },
							{ 42.58, 22.98, KUN_LAI_SUMMIT },
							{ 54.32, 21.65, KUN_LAI_SUMMIT },
							{ 49.38, 18.54, KUN_LAI_SUMMIT },
						},
						["g"] = {
							i(90168, {	-- Kishak's Clamshell
								i(90172),	-- Clamshell Band
								i(90087),	-- Lobstmourne
							}),
						},
					}),
					n(50332, {	-- Korda Torros
						["coords"] = {
							{ 47.89, 81.24, KUN_LAI_SUMMIT },
							{ 49.23, 80.59, KUN_LAI_SUMMIT },
							{ 51.60, 80.80, KUN_LAI_SUMMIT },
							{ 51.23, 79.59, KUN_LAI_SUMMIT },
						},
						["g"] = {
							i(86566),	-- Forager's Gloves
						},
					}),
					n(70323, {	-- Krakkanon
						q(31664, {	-- An Angler's Quest
							["icon"] = 133743,
							["provider"] = { "i", 88563 },	-- Nat's Fishing Journal
							["repeatable"] = true,
							["collectible"] = false,
						}),
					}),
					n(50789, {	-- Nessos the Oracle
						["coord"] = { 63.8, 13.7, KUN_LAI_SUMMIT },
						["g"] = {
							i(86584),	-- Hardened Shell (TOY!)
						},
					}),
					n(50831, {	-- Scritch
						["coords"] = {
							{ 44.8, 65.2, KUN_LAI_SUMMIT },
							{ 44.8, 63.6, KUN_LAI_SUMMIT },
							{ 47.2, 63.0, KUN_LAI_SUMMIT },
							{ 46.2, 61.5, KUN_LAI_SUMMIT },
						},
						["g"] = {
							i(86592),	-- Hozen Peace Pipe
						},
					}),
					n(50733, {	-- Ski'thik
						["coord"] = { 36.71, 79.76, KUN_LAI_SUMMIT },
						["g"] = {
							i(86577),	-- Rod of Ambershaping
						},
					}),
					n(50769, {	-- Zai the Outcast
						["coords"] = {
							{ 73.35, 76.31, KUN_LAI_SUMMIT },
							{ 74.41, 79.34, KUN_LAI_SUMMIT },
							{ 73.86, 77.21, KUN_LAI_SUMMIT },
						},
						["g"] = {
							i(86581),	-- Farwater Conch (TOY!)
						},
					}),
					n(69841, {	-- Zandalari Warbringer (Amber)
						["coords"] = {
							{ 47.42, 61.54, DREAD_WASTES },
							{ 75.11, 67.47, KUN_LAI_SUMMIT },
							{ 52.56, 18.85, THE_JADE_FOREST },
							{ 36.58, 85.67, TOWNLONG_STEPPES },
						},
						["g"] = {
							i(94230),	-- Amber Primordial Direhorn (MOUNT!)
						},
					}),
					n(69842, {	-- Zandalari Warbringer (Jade)
						["coords"] = {
							{ 47.42, 61.54, DREAD_WASTES },
							{ 75.11, 67.47, KUN_LAI_SUMMIT },
							{ 52.56, 18.85, THE_JADE_FOREST },
							{ 36.58, 85.67, TOWNLONG_STEPPES },
						},
						["g"] = {
							i(94231),	-- Jade Primordial Direhorn (MOUNT!)
						},
					}),
					n(69769, {	-- Zandalari Warbringer (Slate)
						["coords"] = {
							{ 47.42, 61.54, DREAD_WASTES },
							{ 39.83, 65.92, KRASARANG_WILDS },
							{ 75.11, 67.47, KUN_LAI_SUMMIT },
							{ 52.56, 18.85, THE_JADE_FOREST },
							{ 36.58, 85.67, TOWNLONG_STEPPES },
						},
						["g"] = {
							i(94229),	-- Slate Primordial Direhorn (MOUNT!)
						},
					}),
				}),
				n(TREASURES, {
					o(214407, {	-- Mo-Mo's Treasure Chest
						["questID"] = 31868,
						["coord"] = { 47.8, 73.5, KUN_LAI_SUMMIT },
						["description"] = "Inside Mo-Mo's Cave",
					}),
				}),
				n(VENDORS, {
					n(65515, {	-- Acon Deathwielder (Removed Season 12 Elite Vendor)
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					n(75695, {	-- Acon Deathwielder
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["g"] = {
							n(WEAPONS, {
								i(144251, {	-- Arsenal: Grievous Gladiator's Weapons (H)
									["cost"] = { { "i", 137642, 80 } },	-- 80x Mark of Honor
									["sym"] = {
										{"sub", "pvp_weapons_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR },
									},
								}),
								i(102982, {	-- Grievous Gladiator's Barrier
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102793, {	-- Grievous Gladiator's Baton of Light
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102798, {	-- Grievous Gladiator's Battle Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102806, {	-- Grievous Gladiator's Bonecracker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102797, {	-- Grievous Gladiator's Cleaver
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102807, {	-- Grievous Gladiator's Decapitator
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102983, {	-- Grievous Gladiator's Endgame
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102804, {	-- Grievous Gladiator's Energy Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102787, {	-- Grievous Gladiator's Gavel
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102796, {	-- Grievous Gladiator's Greatsword
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102801, {	-- Grievous Gladiator's Hacker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102788, {	-- Grievous Gladiator's Longbow
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102795, {	-- Grievous Gladiator's Mageblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102803, {	-- Grievous Gladiator's Pike
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102789, {	-- Grievous Gladiator's Pummeler
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102809, {	-- Grievous Gladiator's Quickblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102979, {	-- Grievous Gladiator's Redoubt
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102805, {	-- Grievous Gladiator's Render
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102980, {	-- Grievous Gladiator's Reprieve
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102794, {	-- Grievous Gladiator's Rifle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102800, {	-- Grievous Gladiator's Ripper
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102799, {	-- Grievous Gladiator's Shanker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102981, {	-- Grievous Gladiator's Shield Wall
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102802, {	-- Grievous Gladiator's Slicer
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102791, {	-- Grievous Gladiator's Spellblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(102790, {	-- Grievous Gladiator's Touch of Defeat
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
							}),
							cl(DEATHKNIGHT, {
								i(138662, {	-- Ensemble: Grievous Gladiator's Dreadplate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, DEATHKNIGHT },
										{"select", "itemID",
											100717,	-- Grievous Gladiator's Armplates of Alacrity
											100583,	-- Grievous Gladiator's Girdle of Accuracy
											100691,	-- Grievous Gladiator's Warboots of Alacrity
											102968,	-- Grievous Gladiator's Armplates of Alacrity
											102837,	-- Grievous Gladiator's Girdle of Accuracy
											102942,	-- Grievous Gladiator's Warboots of Alacrity
											102873,	-- Grievous Gladiator's Dreadplate Chestpiece
											102847,	-- Grievous Gladiator's Dreadplate Gauntlets
											102910,	-- Grievous Gladiator's Dreadplate Helm
											102848,	-- Grievous Gladiator's Dreadplate Legguards
											102849,	-- Grievous Gladiator's Dreadplate Shoulders
										},
									},
								}),
								i(102873, {	-- Grievous Gladiator's Dreadplate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102847, {	-- Grievous Gladiator's Dreadplate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102910, {	-- Grievous Gladiator's Dreadplate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102848, {	-- Grievous Gladiator's Dreadplate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102849, {	-- Grievous Gladiator's Dreadplate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(DRUID, {
								i(138670, {	-- Ensemble: Grievous Gladiator's Dragonhide Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, DRUID },
										{"select", "itemID",
											100637,	-- Grievous Gladiator's Bindings of Meditation
											100669,	-- Grievous Gladiator's Bindings of Prowess
											100640,	-- Grievous Gladiator's Belt of Cruelty
											100721,	-- Grievous Gladiator's Belt of Meditation
											100574,	-- Grievous Gladiator's Footguards of Alacrity (Leather)
											100706,	-- Grievous Gladiator's Footguards of Meditation (Leather)
											102888,	-- Grievous Gladiator's Bindings of Meditation
											102920,	-- Grievous Gladiator's Bindings of Prowess
											102891,	-- Grievous Gladiator's Belt of Cruelty
											102972,	-- Grievous Gladiator's Belt of Meditation
											102828,	-- Grievous Gladiator's Footguards of Alacrity (Leather)
											102957,	-- Grievous Gladiator's Footguards of Meditation (Leather)
											102936,	-- Grievous Gladiator's Dragonhide Gloves
											102850,	-- Grievous Gladiator's Dragonhide Helm
											102851,	-- Grievous Gladiator's Dragonhide Legguards
											102937,	-- Grievous Gladiator's Dragonhide Robes
											102938,	-- Grievous Gladiator's Dragonhide Spaulders
											102854,	-- Grievous Gladiator's Kodohide Gloves
											102973,	-- Grievous Gladiator's Kodohide Helm
											102958,	-- Grievous Gladiator's Kodohide Legguards
											102918,	-- Grievous Gladiator's Kodohide Robes
											102855,	-- Grievous Gladiator's Kodohide Spaulders
											102893,	-- Grievous Gladiator's Wyrmhide Gloves
											102831,	-- Grievous Gladiator's Wyrmhide Helm
											102964,	-- Grievous Gladiator's Wyrmhide Legguards
											102811,	-- Grievous Gladiator's Wyrmhide Robes
											102897,	-- Grievous Gladiator's Wyrmhide Spaulders
										},
									},
								}),
								i(102936, {	-- Grievous Gladiator's Dragonhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102850, {	-- Grievous Gladiator's Dragonhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102851, {	-- Grievous Gladiator's Dragonhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102937, {	-- Grievous Gladiator's Dragonhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102938, {	-- Grievous Gladiator's Dragonhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102854, {	-- Grievous Gladiator's Kodohide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102973, {	-- Grievous Gladiator's Kodohide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102958, {	-- Grievous Gladiator's Kodohide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102918, {	-- Grievous Gladiator's Kodohide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102855, {	-- Grievous Gladiator's Kodohide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102893, {	-- Grievous Gladiator's Wyrmhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102831, {	-- Grievous Gladiator's Wyrmhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102964, {	-- Grievous Gladiator's Wyrmhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102811, {	-- Grievous Gladiator's Wyrmhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102897, {	-- Grievous Gladiator's Wyrmhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(HUNTER, {
								i(138668, {	-- Ensemble: Grievous Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, HUNTER },
										{"select", "itemID",
											100699,	-- Grievous Gladiator's Wristguards of Accuracy
											100634,	-- Grievous Gladiator's Wristguards of Alacrity
											100588,	-- Grievous Gladiator's Links of Accuracy
											100560,	-- Grievous Gladiator's Links of Cruelty
											100589,	-- Grievous Gladiator's Sabatons of Alacrity
											100675,	-- Grievous Gladiator's Sabatons of Cruelty
											102950,	-- Grievous Gladiator's Wristguards of Accuracy
											102885,	-- Grievous Gladiator's Wristguards of Alacrity
											102842,	-- Grievous Gladiator's Links of Accuracy
											102814,	-- Grievous Gladiator's Links of Cruelty
											102843,	-- Grievous Gladiator's Sabatons of Alacrity
											102926,	-- Grievous Gladiator's Sabatons of Cruelty
											102886,	-- Grievous Gladiator's Chain Armor
											102934,	-- Grievous Gladiator's Chain Gauntlets
											102887,	-- Grievous Gladiator's Chain Helm
											102867,	-- Grievous Gladiator's Chain Leggings
											102931,	-- Grievous Gladiator's Chain Spaulders
										},
									},
								}),
								i(102886, {	-- Grievous Gladiator's Chain Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102934, {	-- Grievous Gladiator's Chain Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102887, {	-- Grievous Gladiator's Chain Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102867, {	-- Grievous Gladiator's Chain Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102931, {	-- Grievous Gladiator's Chain Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(MAGE, {
								i(138676, {	-- Ensemble: Grievous Gladiator's Silk Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, MAGE },
										{"select", "itemID",
											100679,	-- Grievous Gladiator's Cuffs of Prowess
											100630,	-- Grievous Gladiator's Cord of Cruelty
											100632,	-- Grievous Gladiator's Treads of Cruelty
											102930,	-- Grievous Gladiator's Cuffs of Prowess
											102881,	-- Grievous Gladiator's Cord of Cruelty
											102883,	-- Grievous Gladiator's Treads of Cruelty
											102870,	-- Grievous Gladiator's Silk Amice
											102864,	-- Grievous Gladiator's Silk Cowl
											102932,	-- Grievous Gladiator's Silk Handguards
											102912,	-- Grievous Gladiator's Silk Robe
											102845,	-- Grievous Gladiator's Silk Trousers
										},
									},
								}),
								i(102870, {	-- Grievous Gladiator's Silk Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102864, {	-- Grievous Gladiator's Silk Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102932, {	-- Grievous Gladiator's Silk Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102912, {	-- Grievous Gladiator's Silk Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102845, {	-- Grievous Gladiator's Silk Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(MONK, {
								i(138672, {	-- Ensemble: Grievous Gladiator's Ironskin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, MONK },
										{"select", "itemID",
											100657,	-- Grievous Gladiator's Armwraps of Accuracy
											100590,	-- Grievous Gladiator's Waistband of Cruelty
											100662,	-- Grievous Gladiator's Boots of Alacrity
											102908,	-- Grievous Gladiator's Armwraps of Accuracy
											102844,	-- Grievous Gladiator's Waistband of Cruelty
											102913,	-- Grievous Gladiator's Boots of Alacrity
											102824,	-- Grievous Gladiator's Copperskin Gloves
											102825,	-- Grievous Gladiator's Copperskin Helm
											102959,	-- Grievous Gladiator's Copperskin Legguards
											102974,	-- Grievous Gladiator's Copperskin Spaulders
											102960,	-- Grievous Gladiator's Copperskin Tunic
											102872,	-- Grievous Gladiator's Ironskin Gloves
											102909,	-- Grievous Gladiator's Ironskin Helm
											102853,	-- Grievous Gladiator's Ironskin Legguards
											102823,	-- Grievous Gladiator's Ironskin Spaulders
											102917,	-- Grievous Gladiator's Ironskin Tunic
										},
									},
								}),
								i(102824, {	-- Grievous Gladiator's Copperskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102825, {	-- Grievous Gladiator's Copperskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102959, {	-- Grievous Gladiator's Copperskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102974, {	-- Grievous Gladiator's Copperskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102960, {	-- Grievous Gladiator's Copperskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102872, {	-- Grievous Gladiator's Ironskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102909, {	-- Grievous Gladiator's Ironskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102853, {	-- Grievous Gladiator's Ironskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102823, {	-- Grievous Gladiator's Ironskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102917, {	-- Grievous Gladiator's Ironskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(PALADIN, {
								i(138664, {	-- Ensemble: Grievous Gladiator's Scaled Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, PALADIN },
										{"select", "itemID",
										100711,	-- Grievous Gladiator's Bracers of Meditation
										100641,	-- Grievous Gladiator's Bracers of Prowess
										100710,	-- Grievous Gladiator's Clasp of Cruelty
										100694,	-- Grievous Gladiator's Clasp of Meditation
										100581,	-- Grievous Gladiator's Greaves of Alacrity
										100582,	-- Grievous Gladiator's Greaves of Meditation
										102962,	-- Grievous Gladiator's Bracers of Meditation
										102892,	-- Grievous Gladiator's Bracers of Prowess
										102961,	-- Grievous Gladiator's Clasp of Cruelty
										102945,	-- Grievous Gladiator's Clasp of Meditation
										102835,	-- Grievous Gladiator's Greaves of Alacrity
										102836,	-- Grievous Gladiator's Greaves of Meditation
										102829,	-- Grievous Gladiator's Ornamented Chestguard
										102919,	-- Grievous Gladiator's Ornamented Gloves
										102832,	-- Grievous Gladiator's Ornamented Headcover
										102965,	-- Grievous Gladiator's Ornamented Legplates
										102894,	-- Grievous Gladiator's Ornamented Spaulders
										102944,	-- Grievous Gladiator's Scaled Chestpiece
										102827,	-- Grievous Gladiator's Scaled Gauntlets
										102976,	-- Grievous Gladiator's Scaled Helm
										102977,	-- Grievous Gladiator's Scaled Legguards
										102941,	-- Grievous Gladiator's Scaled Shoulders
										},
									},
								}),
								i(102829, {	-- Grievous Gladiator's Ornamented Chestguard
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102919, {	-- Grievous Gladiator's Ornamented Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102832, {	-- Grievous Gladiator's Ornamented Headcover
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102965, {	-- Grievous Gladiator's Ornamented Legplates
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102894, {	-- Grievous Gladiator's Ornamented Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102944, {	-- Grievous Gladiator's Scaled Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102827, {	-- Grievous Gladiator's Scaled Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102976, {	-- Grievous Gladiator's Scaled Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102977, {	-- Grievous Gladiator's Scaled Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102941, {	-- Grievous Gladiator's Scaled Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PRIEST, {
								i(138678, {	-- Ensemble: Grievous Gladiator's Satin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, PRIEST },
										{"select", "itemID",
											100610,	-- Grievous Gladiator's Cuffs of Meditation
											100655,	-- Grievous Gladiator's Cord of Meditation
											100698,	-- Grievous Gladiator's Treads of Meditation
											102863,	-- Grievous Gladiator's Cuffs of Meditation
											102906,	-- Grievous Gladiator's Cord of Meditation
											102949,	-- Grievous Gladiator's Treads of Meditation
											102812,	-- Grievous Gladiator's Mooncloth Gloves
											102900,	-- Grievous Gladiator's Mooncloth Helm
											102901,	-- Grievous Gladiator's Mooncloth Leggings
											102947,	-- Grievous Gladiator's Mooncloth Mantle
											102878,	-- Grievous Gladiator's Mooncloth Robe
											102904,	-- Grievous Gladiator's Satin Gloves
											102948,	-- Grievous Gladiator's Satin Hood
											102818,	-- Grievous Gladiator's Satin Leggings
											102868,	-- Grievous Gladiator's Satin Mantle
											102819,	-- Grievous Gladiator's Satin Robe
										},
									},
								}),
								i(102812, {	-- Grievous Gladiator's Mooncloth Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102900, {	-- Grievous Gladiator's Mooncloth Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102901, {	-- Grievous Gladiator's Mooncloth Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102947, {	-- Grievous Gladiator's Mooncloth Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102878, {	-- Grievous Gladiator's Mooncloth Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102904, {	-- Grievous Gladiator's Satin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102948, {	-- Grievous Gladiator's Satin Hood
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102818, {	-- Grievous Gladiator's Satin Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102868, {	-- Grievous Gladiator's Satin Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102819, {	-- Grievous Gladiator's Satin Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(ROGUE, {
								i(138674, {	-- Ensemble: Grievous Gladiator's Leather Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, ROGUE },
										{"select", "itemID",
											100700,	-- Grievous Gladiator's Armwraps of Alacrity
											100654,	-- Grievous Gladiator's Waistband of Accuracy
											100604,	-- Grievous Gladiator's Boots of Cruelty
											102951,	-- Grievous Gladiator's Armwraps of Alacrity
											102905,	-- Grievous Gladiator's Waistband of Accuracy
											102857,	-- Grievous Gladiator's Boots of Cruelty
											102860,	-- Grievous Gladiator's Leather Gloves
											102907,	-- Grievous Gladiator's Leather Helm
											102927,	-- Grievous Gladiator's Leather Legguards
											102928,	-- Grievous Gladiator's Leather Spaulders
											102924,	-- Grievous Gladiator's Leather Tunic
										},
									},
								}),
								i(102860, {	-- Grievous Gladiator's Leather Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102907, {	-- Grievous Gladiator's Leather Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102927, {	-- Grievous Gladiator's Leather Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102928, {	-- Grievous Gladiator's Leather Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102924, {	-- Grievous Gladiator's Leather Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(SHAMAN, {
								i(138666, {	-- Ensemble: Grievous Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, SHAMAN },
										{"select", "itemID",
											100567,	-- Grievous Gladiator's Armbands of Meditation
											100609,	-- Grievous Gladiator's Armbands of Prowess
											100623,	-- Grievous Gladiator's Waistguard of Cruelty
											100612,	-- Grievous Gladiator's Waistguard of Meditation
											100608,	-- Grievous Gladiator's Footguards of Alacrity (Mail)
											100566,	-- Grievous Gladiator's Footguards of Meditation (Mail)
											102821,	-- Grievous Gladiator's Armbands of Meditation
											102862,	-- Grievous Gladiator's Armbands of Prowess
											102874,	-- Grievous Gladiator's Waistguard of Cruelty
											102865,	-- Grievous Gladiator's Waistguard of Meditation
											102861,	-- Grievous Gladiator's Footguards of Alacrity (Mail)
											102820,	-- Grievous Gladiator's Footguards of Meditation (Mail)
											102956,	-- Grievous Gladiator's Linked Armor
											102939,	-- Grievous Gladiator's Linked Gauntlets
											102911,	-- Grievous Gladiator's Linked Helm
											102975,	-- Grievous Gladiator's Linked Leggings
											102826,	-- Grievous Gladiator's Linked Spaulders
											102940,	-- Grievous Gladiator's Mail Armor
											102889,	-- Grievous Gladiator's Mail Gauntlets
											102890,	-- Grievous Gladiator's Mail Helm
											102978,	-- Grievous Gladiator's Mail Leggings
											102834,	-- Grievous Gladiator's Mail Spaulders
											102914,	-- Grievous Gladiator's Ringmail Armor
											102971,	-- Grievous Gladiator's Ringmail Gauntlets
											102915,	-- Grievous Gladiator's Ringmail Helm
											102916,	-- Grievous Gladiator's Ringmail Leggings
											102852,	-- Grievous Gladiator's Ringmail Spaulders
										},
									},
								}),
								i(102956, {	-- Grievous Gladiator's Linked Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102939, {	-- Grievous Gladiator's Linked Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102911, {	-- Grievous Gladiator's Linked Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102975, {	-- Grievous Gladiator's Linked Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102826, {	-- Grievous Gladiator's Linked Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102940, {	-- Grievous Gladiator's Mail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102889, {	-- Grievous Gladiator's Mail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102890, {	-- Grievous Gladiator's Mail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102978, {	-- Grievous Gladiator's Mail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102834, {	-- Grievous Gladiator's Mail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102914, {	-- Grievous Gladiator's Ringmail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102971, {	-- Grievous Gladiator's Ringmail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102915, {	-- Grievous Gladiator's Ringmail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102916, {	-- Grievous Gladiator's Ringmail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102852, {	-- Grievous Gladiator's Ringmail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(WARLOCK, {
								i(143826, {	-- Ensemble: Grievous Gladiator's Felweave Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARLOCK },
										{"select", "itemID",
											100633,	-- Grievous Gladiator's Cuffs of Accuracy
											100606,	-- Grievous Gladiator's Cord of Accuracy
											100563,	-- Grievous Gladiator's Treads of Alacrity
											102884,	-- Grievous Gladiator's Cuffs of Accuracy
											102859,	-- Grievous Gladiator's Cord of Accuracy
											102817,	-- Grievous Gladiator's Treads of Alacrity
											102879,	-- Grievous Gladiator's Felweave Amice
											102923,	-- Grievous Gladiator's Felweave Cowl
											102922,	-- Grievous Gladiator's Felweave Handguards
											102858,	-- Grievous Gladiator's Felweave Raiment
											102952,	-- Grievous Gladiator's Felweave Trousers
										},
									},
								}),
								i(102879, {	-- Grievous Gladiator's Felweave Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102923, {	-- Grievous Gladiator's Felweave Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102922, {	-- Grievous Gladiator's Felweave Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102858, {	-- Grievous Gladiator's Felweave Raiment
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102952, {	-- Grievous Gladiator's Felweave Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(WARRIOR, {
								i(138660, {	-- Ensemble: Grievous Gladiator's Plate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_GRIEVOUS, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARRIOR },
										{"select", "itemID",
											100648,	-- Grievous Gladiator's Armplates of Proficiency
											100670,	-- Grievous Gladiator's Girdle of Prowess
											100644,	-- Grievous Gladiator's Warboots of Cruelty
											102899,	-- Grievous Gladiator's Armplates of Proficiency
											102921,	-- Grievous Gladiator's Girdle of Prowess
											102895,	-- Grievous Gladiator's Warboots of Cruelty
											102925,	-- Grievous Gladiator's Plate Chestpiece
											102815,	-- Grievous Gladiator's Plate Gauntlets
											102816,	-- Grievous Gladiator's Plate Helm
											102929,	-- Grievous Gladiator's Plate Legguards
											102882,	-- Grievous Gladiator's Plate Shoulders
										},
									},
								}),
								i(102925, {	-- Grievous Gladiator's Plate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102815, {	-- Grievous Gladiator's Plate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102816, {	-- Grievous Gladiator's Plate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102929, {	-- Grievous Gladiator's Plate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(102882, {	-- Grievous Gladiator's Plate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							n(BACK, {
								i(102902, {	-- Grievous Gladiator's Cape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102839, {	-- Grievous Gladiator's Cape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102966, {	-- Grievous Gladiator's Cloak of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102967, {	-- Grievous Gladiator's Cloak of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102866, {	-- Grievous Gladiator's Drape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102953, {	-- Grievous Gladiator's Drape of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102969, {	-- Grievous Gladiator's Drape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WRIST, {
								i(102821, {	-- Grievous Gladiator's Armbands of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102862, {	-- Grievous Gladiator's Armbands of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102968, {	-- Grievous Gladiator's Armplates of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102899, {	-- Grievous Gladiator's Armplates of Proficiency
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102908, {	-- Grievous Gladiator's Armwraps of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102951, {	-- Grievous Gladiator's Armwraps of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102888, {	-- Grievous Gladiator's Bindings of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102920, {	-- Grievous Gladiator's Bindings of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102962, {	-- Grievous Gladiator's Bracers of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102892, {	-- Grievous Gladiator's Bracers of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102884, {	-- Grievous Gladiator's Cuffs of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102863, {	-- Grievous Gladiator's Cuffs of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102930, {	-- Grievous Gladiator's Cuffs of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102950, {	-- Grievous Gladiator's Wristguards of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102885, {	-- Grievous Gladiator's Wristguards of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WAIST, {
								i(102891, {	-- Grievous Gladiator's Belt of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102972, {	-- Grievous Gladiator's Belt of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102961, {	-- Grievous Gladiator's Clasp of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102945, {	-- Grievous Gladiator's Clasp of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102859, {	-- Grievous Gladiator's Cord of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102881, {	-- Grievous Gladiator's Cord of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102906, {	-- Grievous Gladiator's Cord of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102837, {	-- Grievous Gladiator's Girdle of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102921, {	-- Grievous Gladiator's Girdle of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102842, {	-- Grievous Gladiator's Links of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102814, {	-- Grievous Gladiator's Links of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102905, {	-- Grievous Gladiator's Waistband of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102844, {	-- Grievous Gladiator's Waistband of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102874, {	-- Grievous Gladiator's Waistguard of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(102865, {	-- Grievous Gladiator's Waistguard of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(FEET, {
								i(102913, {	-- Grievous Gladiator's Boots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102857, {	-- Grievous Gladiator's Boots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102828, {	-- Grievous Gladiator's Footguards of Alacrity (Leahter)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102861, {	-- Grievous Gladiator's Footguards of Alacrity (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102957, {	-- Grievous Gladiator's Footguards of Meditation (Leather)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102820, {	-- Grievous Gladiator's Footguards of Meditation (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102835, {	-- Grievous Gladiator's Greaves of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102836, {	-- Grievous Gladiator's Greaves of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102843, {	-- Grievous Gladiator's Sabatons of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102926, {	-- Grievous Gladiator's Sabatons of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102817, {	-- Grievous Gladiator's Treads of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102883, {	-- Grievous Gladiator's Treads of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102949, {	-- Grievous Gladiator's Treads of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102942, {	-- Grievous Gladiator's Warboots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(102895, {	-- Grievous Gladiator's Warboots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
						},
					}),
					n(73145, {	-- Acon Deathwielder (5.4.7 Elite and removed Version)	-- Link for all the Items https://www.wowhead.com/npc=73145/acon-deathwielder#comments
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["g"] = {
						},
					}),
					n(75693, {	-- Doris Chiltonius Season 12: Malevolent Gladiator Vendor. Items are tagged as S13
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["g"] = {
							n(WEAPONS, {
								i(144243, {	-- Arsenal: Malevolent Gladiator's Weapons
									["cost"] = { { "i", 137642, 80 } },	-- 80x Mark of Honor
									["sym"] = {
										{"sub", "pvp_weapons_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR },
										{"merge"},
										{"exclude", "itemID",
											84911,	-- Malevolent Gladiator's Barrier
											84787,	-- Malevolent Gladiator's Battle Staff
											84970,	-- Malevolent Gladiator's Bonecracker
											84785,	-- Malevolent Gladiator's Bonegrinder
											84965,	-- Malevolent Gladiator's Cleaver
											84791,	-- Malevolent Gladiator's Decapitator
											84866,	-- Malevolent Gladiator's Endgame
											84788,	-- Malevolent Gladiator's Energy Staff
											84971,	-- Malevolent Gladiator's Gavel
											84790,	-- Malevolent Gladiator's Greatsword
											84966,	-- Malevolent Gladiator's Hacker
											84896,	-- Malevolent Gladiator's Longbow
											84786,	-- Malevolent Gladiator's Pike
											84964,	-- Malevolent Gladiator's Pummeler
											84969,	-- Malevolent Gladiator's Quickblade
											84912,	-- Malevolent Gladiator's Redoubt
											84963,	-- Malevolent Gladiator's Render
											84867,	-- Malevolent Gladiator's Reprieve
											84900,	-- Malevolent Gladiator's Rifle
											84962,	-- Malevolent Gladiator's Ripper
											84967,	-- Malevolent Gladiator's Shanker
											84910,	-- Malevolent Gladiator's Shield Wall
											84968,	-- Malevolent Gladiator's Slicer
											84961,	-- Malevolent Gladiator's Spellblade
											84789,	-- Malevolent Gladiator's Staff
											84894,	-- Malevolent Gladiator's Slasher
										},
									},
								}),
								-- S12 Tag
								un(REMOVED_FROM_GAME, i(84911)),	-- Malevolent Gladiator's Barrier
								un(REMOVED_FROM_GAME, i(84787)),	-- Malevolent Gladiator's Battle Staff
								un(REMOVED_FROM_GAME, i(84970)),	-- Malevolent Gladiator's Bonecracker
								un(REMOVED_FROM_GAME, i(84785)),	-- Malevolent Gladiator's Bonegrinder
								un(REMOVED_FROM_GAME, i(84965)),	-- Malevolent Gladiator's Cleaver
								un(REMOVED_FROM_GAME, i(84791)),	-- Malevolent Gladiator's Decapitator
								un(REMOVED_FROM_GAME, i(84866)),	-- Malevolent Gladiator's Endgame
								un(REMOVED_FROM_GAME, i(84788)),	-- Malevolent Gladiator's Energy Staff
								un(REMOVED_FROM_GAME, i(84971)),	-- Malevolent Gladiator's Gavel
								un(REMOVED_FROM_GAME, i(84790)),	-- Malevolent Gladiator's Greatsword
								un(REMOVED_FROM_GAME, i(84966)),	-- Malevolent Gladiator's Hacker
								un(REMOVED_FROM_GAME, i(84896)),	-- Malevolent Gladiator's Longbow
								un(REMOVED_FROM_GAME, i(84786)),	-- Malevolent Gladiator's Pike
								un(REMOVED_FROM_GAME, i(84964)),	-- Malevolent Gladiator's Pummeler
								un(REMOVED_FROM_GAME, i(84969)),	-- Malevolent Gladiator's Quickblade
								un(REMOVED_FROM_GAME, i(84912)),	-- Malevolent Gladiator's Redoubt
								un(REMOVED_FROM_GAME, i(84963)),	-- Malevolent Gladiator's Render
								un(REMOVED_FROM_GAME, i(84867)),	-- Malevolent Gladiator's Reprieve
								un(REMOVED_FROM_GAME, i(84900)),	-- Malevolent Gladiator's Rifle
								un(REMOVED_FROM_GAME, i(84962)),	-- Malevolent Gladiator's Ripper
								un(REMOVED_FROM_GAME, i(84967)),	-- Malevolent Gladiator's Shanker
								un(REMOVED_FROM_GAME, i(84910)),	-- Malevolent Gladiator's Shield Wall
								un(REMOVED_FROM_GAME, i(84894)),	-- Malevolent Gladiator's Slasher
								un(REMOVED_FROM_GAME, i(84968)),	-- Malevolent Gladiator's Slicer
								un(REMOVED_FROM_GAME, i(84961)),	-- Malevolent Gladiator's Spellblade
								un(REMOVED_FROM_GAME, i(84789)),	-- Malevolent Gladiator's Staff
								-- S13 Tag
								i(91482, {	-- Malevolent Gladiator's Barrier
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91486, {	-- Malevolent Gladiator's Battle Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91759, {	-- Malevolent Gladiator's Bonecracker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91442, {	-- Malevolent Gladiator's Bonegrinder
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91442, {	-- Malevolent Gladiator's Bonegrinder
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91446, {	-- Malevolent Gladiator's Cleaver
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91440, {	-- Malevolent Gladiator's Decapitator
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91480, {	-- Malevolent Gladiator's Endgame
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91560, {	-- Malevolent Gladiator's Energy Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91556, {	-- Malevolent Gladiator's Gavel
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91444, {	-- Malevolent Gladiator's Greatsword
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91757, {	-- Malevolent Gladiator's Hacker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91460, {	-- Malevolent Gladiator's Longbow
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91660, {	-- Malevolent Gladiator's Pike
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91448, {	-- Malevolent Gladiator's Pummeler
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91450, {	-- Malevolent Gladiator's Quickblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91558, {	-- Malevolent Gladiator's Redoubt
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91749, {	-- Malevolent Gladiator's Render
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91494, {	-- Malevolent Gladiator's Reprieve
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91554, {	-- Malevolent Gladiator's Rifle
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91745, {	-- Malevolent Gladiator's Ripper
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91743, {	-- Malevolent Gladiator's Shanker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91771, {	-- Malevolent Gladiator's Shield Wall
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91761, {	-- Malevolent Gladiator's Slicer
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91484, {	-- Malevolent Gladiator's Spellblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(91535, {	-- Malevolent Gladiator's Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
							}),
							cl(DEATHKNIGHT, {
								i(138704, {	-- Ensemble: Malevolent Gladiator's Dreadplate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, DEATHKNIGHT },
										{"select", "itemID",
											84985,	-- Malevolent Gladiator's Armplates of Proficiency
											84949,	-- Malevolent Gladiator's Girdle of Accuracy
											84810,	-- Malevolent Gladiator's Warboots of Cruelty
											91658,	-- Malevolent Gladiator's Armplates of Proficiency
											91650,	-- Malevolent Gladiator's Girdle of Accuracy
											91654,	-- Malevolent Gladiator's Warboots of Cruelty
											91500,	-- Malevolent Gladiator's Dreadplate Chestpiece
											91502,	-- Malevolent Gladiator's Dreadplate Gauntlets
											91504,	-- Malevolent Gladiator's Dreadplate Helm
											91506,	-- Malevolent Gladiator's Dreadplate Legguards
											91508,	-- Malevolent Gladiator's Dreadplate Shoulders
										},
									},
									["g"] = {
										i(84795),	-- Malevolent Gladiator's Dreadplate Chestpiece
										i(84835),	-- Malevolent Gladiator's Dreadplate Gauntlets
										i(84853),	-- Malevolent Gladiator's Dreadplate Helm
										i(84872),	-- Malevolent Gladiator's Dreadplate Legguards
										i(84918),	-- Malevolent Gladiator's Dreadplate Shoulders
									},
								}),
								i(91500, {	-- Malevolent Gladiator's Dreadplate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91502, {	-- Malevolent Gladiator's Dreadplate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91504, {	-- Malevolent Gladiator's Dreadplate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91506, {	-- Malevolent Gladiator's Dreadplate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91508, {	-- Malevolent Gladiator's Dreadplate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(DRUID, {
								i(138708, {	-- Ensemble: Malevolent Gladiator's Dragonhide Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, DRUID },
										{"select", "itemID",
											84976,	-- Malevolent Gladiator's Bindings of Meditation
											84982,	-- Malevolent Gladiator's Bindings of Prowess
											84960,	-- Malevolent Gladiator's Belt of Cruelty
											84953,	-- Malevolent Gladiator's Belt of Meditation
											84819,	-- Malevolent Gladiator's Footguards of Alacrity (Leather)
											84813,	-- Malevolent Gladiator's Footguards of Meditation (Leather)
											91524,	-- Malevolent Gladiator's Bindings of Meditation
											91541,	-- Malevolent Gladiator's Bindings of Prowess
											91537,	-- Malevolent Gladiator's Belt of Cruelty
											91520,	-- Malevolent Gladiator's Belt of Meditation
											91539,	-- Malevolent Gladiator's Footguards of Alacrity (Leather)
											91522,	-- Malevolent Gladiator's Footguards of Meditation (Leather)
											91510,	-- Malevolent Gladiator's Dragonhide Gloves
											91512,	-- Malevolent Gladiator's Dragonhide Helm
											91514,	-- Malevolent Gladiator's Dragonhide Legguards
											91516,	-- Malevolent Gladiator's Dragonhide Robes
											91518,	-- Malevolent Gladiator's Dragonhide Spaulders
											91525,	-- Malevolent Gladiator's Kodohide Gloves
											91527,	-- Malevolent Gladiator's Kodohide Helm
											91529,	-- Malevolent Gladiator's Kodohide Legguards
											91531,	-- Malevolent Gladiator's Kodohide Robes
											91533,	-- Malevolent Gladiator's Kodohide Spaulders
											91542,	-- Malevolent Gladiator's Wyrmhide Gloves
											91544,	-- Malevolent Gladiator's Wyrmhide Helm
											91546,	-- Malevolent Gladiator's Wyrmhide Legguards
											91548,	-- Malevolent Gladiator's Wyrmhide Robes
											91550,	-- Malevolent Gladiator's Wyrmhide Spaulders
										},
									},
									["g"] = {
										i(84832),	-- Malevolent Gladiator's Dragonhide Gloves
										i(84852),	-- Malevolent Gladiator's Dragonhide Helm
										i(84871),	-- Malevolent Gladiator's Dragonhide Legguards
										i(84901),	-- Malevolent Gladiator's Dragonhide Robes
										i(84916),	-- Malevolent Gladiator's Dragonhide Spaulders
										i(84833),	-- Malevolent Gladiator's Kodohide Gloves
										i(84850),	-- Malevolent Gladiator's Kodohide Helm
										i(84882),	-- Malevolent Gladiator's Kodohide Legguards
										i(84907),	-- Malevolent Gladiator's Kodohide Robes
										i(84927),	-- Malevolent Gladiator's Kodohide Spaulders
										i(84843),	-- Malevolent Gladiator's Wyrmhide Gloves
										i(84861),	-- Malevolent Gladiator's Wyrmhide Helm
										i(84880),	-- Malevolent Gladiator's Wyrmhide Legguards
										i(84906),	-- Malevolent Gladiator's Wyrmhide Robes
										i(84925),	-- Malevolent Gladiator's Wyrmhide Spaulders
									},
								}),
								i(91510, {	-- Malevolent Gladiator's Dragonhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91512, {	-- Malevolent Gladiator's Dragonhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91514, {	-- Malevolent Gladiator's Dragonhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91516, {	-- Malevolent Gladiator's Dragonhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91518, {	-- Malevolent Gladiator's Dragonhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91525, {	-- Malevolent Gladiator's Kodohide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91527, {	-- Malevolent Gladiator's Kodohide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91529, {	-- Malevolent Gladiator's Kodohide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91531, {	-- Malevolent Gladiator's Kodohide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91533, {	-- Malevolent Gladiator's Kodohide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91542, {	-- Malevolent Gladiator's Wyrmhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91544, {	-- Malevolent Gladiator's Wyrmhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91546, {	-- Malevolent Gladiator's Wyrmhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91548, {	-- Malevolent Gladiator's Wyrmhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91550, {	-- Malevolent Gladiator's Wyrmhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(HUNTER, {
								i(138707, {	-- Ensemble: Malevolent Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, HUNTER },
										{"select", "itemID",
											84981,	-- Malevolent Gladiator's Wristguards of Accuracy
											84980,	-- Malevolent Gladiator's Wristguards of Alacrity
											84957,	-- Malevolent Gladiator's Links of Accuracy
											84958,	-- Malevolent Gladiator's Links of Cruelty
											84818,	-- Malevolent Gladiator's Sabatons of Alacrity
											84817,	-- Malevolent Gladiator's Sabatons of Cruelty
											91574,	-- Malevolent Gladiator's Wristguards of Accuracy
											91573,	-- Malevolent Gladiator's Wristguards of Alacrity
											91567,	-- Malevolent Gladiator's Links of Accuracy
											91565,	-- Malevolent Gladiator's Links of Cruelty
											91571,	-- Malevolent Gladiator's Sabatons of Alacrity
											91569,	-- Malevolent Gladiator's Sabatons of Cruelty
											91575,	-- Malevolent Gladiator's Chain Armor
											91577,	-- Malevolent Gladiator's Chain Gauntlets
											91579,	-- Malevolent Gladiator's Chain Helm
											91581,	-- Malevolent Gladiator's Chain Leggings
											91583,	-- Malevolent Gladiator's Chain Spaulders
										},
									},
									["g"] = {
										i(84796),	-- Malevolent Gladiator's Chain Armor
										i(84841),	-- Malevolent Gladiator's Chain Gauntlets
										i(84858),	-- Malevolent Gladiator's Chain Helm
										i(84874),	-- Malevolent Gladiator's Chain Leggings
										i(84921),	-- Malevolent Gladiator's Chain Spaulders
									},
								}),
								i(91575, {	-- Malevolent Gladiator's Chain Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91577, {	-- Malevolent Gladiator's Chain Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91579, {	-- Malevolent Gladiator's Chain Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91581, {	-- Malevolent Gladiator's Chain Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91583, {	-- Malevolent Gladiator's Chain Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(MAGE, {
								i(138711, {	-- Ensemble: Malevolent Gladiator's Silk Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, MAGE },
										{"select", "itemID",
											84978,	-- Malevolent Gladiator's Cuffs of Prowess
											84954,	-- Malevolent Gladiator's Cord of Cruelty
											84814,	-- Malevolent Gladiator's Treads of Cruelty
											91475,	-- Malevolent Gladiator's Cuffs of Prowess
											91462,	-- Malevolent Gladiator's Cord of Cruelty
											91468,	-- Malevolent Gladiator's Treads of Cruelty
											91593,	-- Malevolent Gladiator's Silk Amice
											91587,	-- Malevolent Gladiator's Silk Cowl
											91585,	-- Malevolent Gladiator's Silk Handguards
											91591,	-- Malevolent Gladiator's Silk Robe
											91589,	-- Malevolent Gladiator's Silk Trousers
										},
										{"exclude", "itemID",
											97925,	-- Malevolent Gladiator's Silk Amice
											97835,	-- Malevolent Gladiator's Silk Amice
											97923,	-- Malevolent Gladiator's Silk Cowl
											97833,	-- Malevolent Gladiator's Silk Cowl
											97929,	-- Malevolent Gladiator's Silk Handguards
											97839,	-- Malevolent Gladiator's Silk Handguards
											97927,	-- Malevolent Gladiator's Silk Robe
											97837,	-- Malevolent Gladiator's Silk Robe
											97931,	-- Malevolent Gladiator's Silk Trousers
											97841,	-- Malevolent Gladiator's Silk Trousers
										},
									},
									["g"] = {
										i(84917),	-- Malevolent Gladiator's Silk Amice
										i(84855),	-- Malevolent Gladiator's Silk Cowl
										i(84837),	-- Malevolent Gladiator's Silk Handguards
										i(84904),	-- Malevolent Gladiator's Silk Robe
										i(84875),	-- Malevolent Gladiator's Silk Trousers
									},
								}),
								i(91593, {	-- Malevolent Gladiator's Silk Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91587, {	-- Malevolent Gladiator's Silk Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91585, {	-- Malevolent Gladiator's Silk Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91591, {	-- Malevolent Gladiator's Silk Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91589, {	-- Malevolent Gladiator's Silk Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(MONK, {
								i(138709, {	-- Ensemble: Malevolent Gladiator's Ironskin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, MONK },
										{"select", "itemID",
											84973,	-- Malevolent Gladiator's Armwraps of Accuracy
											84947,	-- Malevolent Gladiator's Waistband of Cruelty
											84809,	-- Malevolent Gladiator's Boots of Alacrity
											91692,	-- Malevolent Gladiator's Armwraps of Accuracy
											91595,	-- Malevolent Gladiator's Waistband of Cruelty
											91597,	-- Malevolent Gladiator's Boots of Alacrity
											91610,	-- Malevolent Gladiator's Copperskin Gloves
											91612,	-- Malevolent Gladiator's Copperskin Helm
											91614,	-- Malevolent Gladiator's Copperskin Legguards
											91616,	-- Malevolent Gladiator's Copperskin Spaulders
											91618,	-- Malevolent Gladiator's Copperskin Tunic
											91600,	-- Malevolent Gladiator's Ironskin Gloves
											91602,	-- Malevolent Gladiator's Ironskin Helm
											91604,	-- Malevolent Gladiator's Ironskin Legguards
											91606,	-- Malevolent Gladiator's Ironskin Spaulders
											91608,	-- Malevolent Gladiator's Ironskin Tunic
										},
									},
									["g"] = {
										i(84836),	-- Malevolent Gladiator's Copperskin Gloves
										i(84854),	-- Malevolent Gladiator's Copperskin Helm
										i(84873),	-- Malevolent Gladiator's Copperskin Legguards
										i(84920),	-- Malevolent Gladiator's Copperskin Spaulders
										i(84903),	-- Malevolent Gladiator's Copperskin Tunic
										i(84839),	-- Malevolent Gladiator's Ironskin Gloves
										i(84857),	-- Malevolent Gladiator's Ironskin Helm
										i(84877),	-- Malevolent Gladiator's Ironskin Legguards
										i(84919),	-- Malevolent Gladiator's Ironskin Spaulders
										i(84902),	-- Malevolent Gladiator's Ironskin Tunic
									},
								}),
								i(91610, {	-- Malevolent Gladiator's Copperskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91612, {	-- Malevolent Gladiator's Copperskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91614, {	-- Malevolent Gladiator's Copperskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91616, {	-- Malevolent Gladiator's Copperskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91618, {	-- Malevolent Gladiator's Copperskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91600, {	-- Malevolent Gladiator's Ironskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91602, {	-- Malevolent Gladiator's Ironskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91604, {	-- Malevolent Gladiator's Ironskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91606, {	-- Malevolent Gladiator's Ironskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91608, {	-- Malevolent Gladiator's Ironskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(PALADIN, {
								i(138705, {	-- Ensemble: Malevolent Gladiator's Scaled Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, PALADIN },
										{"select", "itemID",
											84975,	-- Malevolent Gladiator's Bracers of Meditation
											84974,	-- Malevolent Gladiator's Bracers of Prowess
											84952,	-- Malevolent Gladiator's Clasp of Cruelty
											84955,	-- Malevolent Gladiator's Clasp of Meditation
											84811,	-- Malevolent Gladiator's Greaves of Alacrity
											84812,	-- Malevolent Gladiator's Greaves of Meditation
											91639,	-- Malevolent Gladiator's Bracers of Meditation
											91638,	-- Malevolent Gladiator's Bracers of Prowess
											91630,	-- Malevolent Gladiator's Clasp of Cruelty
											91632,	-- Malevolent Gladiator's Clasp of Meditation
											91634,	-- Malevolent Gladiator's Greaves of Alacrity
											91636,	-- Malevolent Gladiator's Greaves of Meditation
											91640,	-- Malevolent Gladiator's Ornamented Chestguard
											91642,	-- Malevolent Gladiator's Ornamented Gloves
											91644,	-- Malevolent Gladiator's Ornamented Headcover
											91646,	-- Malevolent Gladiator's Ornamented Legplates
											91648,	-- Malevolent Gladiator's Ornamented Spaulders
											91620,	-- Malevolent Gladiator's Scaled Chestpiece
											91622,	-- Malevolent Gladiator's Scaled Gauntlets
											91624,	-- Malevolent Gladiator's Scaled Helm
											91626,	-- Malevolent Gladiator's Scaled Legguards
											91628,	-- Malevolent Gladiator's Scaled Shoulders
										},
									},
									["g"] = {
										i(84793),	-- Malevolent Gladiator's Ornamented Chestguard
										i(84831),	-- Malevolent Gladiator's Ornamented Gloves
										i(84849),	-- Malevolent Gladiator's Ornamented Headcover
										i(84869),	-- Malevolent Gladiator's Ornamented Legplates
										i(84914),	-- Malevolent Gladiator's Ornamented Spaulders
										i(84794),	-- Malevolent Gladiator's Scaled Chestpiece
										i(84834),	-- Malevolent Gladiator's Scaled Gauntlets
										i(84851),	-- Malevolent Gladiator's Scaled Helm
										i(84870),	-- Malevolent Gladiator's Scaled Legguards
										i(84915),	-- Malevolent Gladiator's Scaled Shoulders
									},
								}),
								i(91640, {	-- Malevolent Gladiator's Ornamented Chestguard
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91642, {	-- Malevolent Gladiator's Ornamented Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91644, {	-- Malevolent Gladiator's Ornamented Headcover
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91646, {	-- Malevolent Gladiator's Ornamented Legplates
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91648, {	-- Malevolent Gladiator's Ornamented Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91620, {	-- Malevolent Gladiator's Scaled Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91622, {	-- Malevolent Gladiator's Scaled Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91624, {	-- Malevolent Gladiator's Scaled Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91626, {	-- Malevolent Gladiator's Scaled Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91628, {	-- Malevolent Gladiator's Scaled Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PRIEST, {
								i(138712, {	-- Ensemble: Malevolent Gladiator's Satin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, PRIEST },
										{"select", "itemID",
											84979,	-- Malevolent Gladiator's Cuffs of Meditation
											84956,	-- Malevolent Gladiator's Cord of Meditation
											84816,	-- Malevolent Gladiator's Treads of Meditation
											91476,	-- Malevolent Gladiator's Cuffs of Meditation
											91466,	-- Malevolent Gladiator's Cord of Meditation
											91472,	-- Malevolent Gladiator's Treads of Meditation
											91662,	-- Malevolent Gladiator's Mooncloth Gloves
											91664,	-- Malevolent Gladiator's Mooncloth Helm
											91666,	-- Malevolent Gladiator's Mooncloth Leggings
											91670,	-- Malevolent Gladiator's Mooncloth Mantle
											91668,	-- Malevolent Gladiator's Mooncloth Robe
											91672,	-- Malevolent Gladiator's Satin Gloves
											91674,	-- Malevolent Gladiator's Satin Hood
											91676,	-- Malevolent Gladiator's Satin Leggings
											91680,	-- Malevolent Gladiator's Satin Mantle
											91678,	-- Malevolent Gladiator's Satin Robe
										},
										{"exclude", "itemID",
											97515,	-- Malevolent Gladiator's Mooncloth Helm
											97522,	-- Malevolent Gladiator's Satin Gloves
											97525,	-- Malevolent Gladiator's Satin Leggings
											97517,	-- Malevolent Gladiator's Satin Mantle
											97520,	-- Malevolent Gladiator's Satin Robe
										},
									},
									["g"] = {
										i(84846),	-- Malevolent Gladiator's Mooncloth Gloves
										i(84863),	-- Malevolent Gladiator's Mooncloth Helm
										i(84883),	-- Malevolent Gladiator's Mooncloth Leggings
										i(84928),	-- Malevolent Gladiator's Mooncloth Mantle
										i(84908),	-- Malevolent Gladiator's Mooncloth Robe
										i(84838),	-- Malevolent Gladiator's Satin Gloves
										i(84864),	-- Malevolent Gladiator's Satin Hood
										i(84884),	-- Malevolent Gladiator's Satin Leggings
										i(84929),	-- Malevolent Gladiator's Satin Mantle
										i(84909),	-- Malevolent Gladiator's Satin Robe
									},
								}),
								i(91662, {	-- Malevolent Gladiator's Mooncloth Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91664, {	-- Malevolent Gladiator's Mooncloth Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91666, {	-- Malevolent Gladiator's Mooncloth Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91670, {	-- Malevolent Gladiator's Mooncloth Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91668, {	-- Malevolent Gladiator's Mooncloth Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91672, {	-- Malevolent Gladiator's Satin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91674, {	-- Malevolent Gladiator's Satin Hood
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91676, {	-- Malevolent Gladiator's Satin Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91680, {	-- Malevolent Gladiator's Satin Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91678, {	-- Malevolent Gladiator's Satin Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(ROGUE, {
								i(138710, {	-- Ensemble: Malevolent Gladiator's Leather Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, ROGUE },
										{"select", "itemID",
											84972,	-- Malevolent Gladiator's Armwraps of Alacrity
											84948,	-- Malevolent Gladiator's Waistband of Accuracy
											84808,	-- Malevolent Gladiator's Boots of Cruelty
											91692,	-- Malevolent Gladiator's Armwraps of Alacrity
											91688,	-- Malevolent Gladiator's Waistband of Accuracy
											91690,	-- Malevolent Gladiator's Boots of Cruelty
											91695,	-- Malevolent Gladiator's Leather Gloves
											91697,	-- Malevolent Gladiator's Leather Helm
											91699,	-- Malevolent Gladiator's Leather Legguards
											91701,	-- Malevolent Gladiator's Leather Spaulders
											91693,	-- Malevolent Gladiator's Leather Tunic
										},
									},
									["g"] = {
										i(84830),	-- Malevolent Gladiator's Leather Gloves
										i(84848),	-- Malevolent Gladiator's Leather Helm
										i(84868),	-- Malevolent Gladiator's Leather Legguards
										i(84913),	-- Malevolent Gladiator's Leather Spaulders
										i(84792),	-- Malevolent Gladiator's Leather Tunic
									},
								}),
								i(91695, {	-- Malevolent Gladiator's Leather Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91697, {	-- Malevolent Gladiator's Leather Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91699, {	-- Malevolent Gladiator's Leather Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91701, {	-- Malevolent Gladiator's Leather Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91693, {	-- Malevolent Gladiator's Leather Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(SHAMAN, {
								i(138706, {	-- Ensemble: Malevolent Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, SHAMAN },
										{"select", "itemID",
											84984,	-- Malevolent Gladiator's Armbands of Meditation
											84983,	-- Malevolent Gladiator's Armbands of Prowess
											84959,	-- Malevolent Gladiator's Waistguard of Cruelty
											84946,	-- Malevolent Gladiator's Waistguard of Meditation
											84820,	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
											84821,	-- Malevolent Gladiator's Footguards of Meditation (Mail)
											91710,	-- Malevolent Gladiator's Armbands of Meditation
											91709,	-- Malevolent Gladiator's Armbands of Prowess
											91731,	-- Malevolent Gladiator's Waistguard of Cruelty
											91703,	-- Malevolent Gladiator's Waistguard of Meditation
											91705,	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
											91707,	-- Malevolent Gladiator's Footguards of Meditation (Mail)
											91721,	-- Malevolent Gladiator's Linked Armor
											91723,	-- Malevolent Gladiator's Linked Gauntlets
											91725,	-- Malevolent Gladiator's Linked Helm
											91727,	-- Malevolent Gladiator's Linked Leggings
											91729,	-- Malevolent Gladiator's Linked Spaulders
											91733,	-- Malevolent Gladiator's Mail Armor
											91735,	-- Malevolent Gladiator's Mail Gauntlets
											91737,	-- Malevolent Gladiator's Mail Helm
											91739,	-- Malevolent Gladiator's Mail Leggings
											91741,	-- Malevolent Gladiator's Mail Spaulders
											91711,	-- Malevolent Gladiator's Ringmail Armor
											91713,	-- Malevolent Gladiator's Ringmail Gauntlets
											91715,	-- Malevolent Gladiator's Ringmail Helm
											91717,	-- Malevolent Gladiator's Ringmail Leggings
											91719,	-- Malevolent Gladiator's Ringmail Spaulders
										},
									},
									["g"] = {
										i(84799),	-- Malevolent Gladiator's Linked Armor
										i(84844),	-- Malevolent Gladiator's Linked Gauntlets
										i(84862),	-- Malevolent Gladiator's Linked Helm
										i(84881),	-- Malevolent Gladiator's Linked Leggings
										i(84926),	-- Malevolent Gladiator's Linked Spaulders
										i(84798),	-- Malevolent Gladiator's Mail Armor
										i(84845),	-- Malevolent Gladiator's Mail Gauntlets
										i(84860),	-- Malevolent Gladiator's Mail Helm
										i(84879),	-- Malevolent Gladiator's Mail Leggings
										i(84924),	-- Malevolent Gladiator's Mail Spaulders
										i(84800),	-- Malevolent Gladiator's Ringmail Armor
										i(84847),	-- Malevolent Gladiator's Ringmail Gauntlets
										i(84865),	-- Malevolent Gladiator's Ringmail Helm
										i(84885),	-- Malevolent Gladiator's Ringmail Leggings
										i(84930),	-- Malevolent Gladiator's Ringmail Spaulders
									},
								}),
								i(91721, {	-- Malevolent Gladiator's Linked Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91723, {	-- Malevolent Gladiator's Linked Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91725, {	-- Malevolent Gladiator's Linked Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91727, {	-- Malevolent Gladiator's Linked Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91729, {	-- Malevolent Gladiator's Linked Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91733, {	-- Malevolent Gladiator's Mail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91735, {	-- Malevolent Gladiator's Mail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91737, {	-- Malevolent Gladiator's Mail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91739, {	-- Malevolent Gladiator's Mail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91741, {	-- Malevolent Gladiator's Mail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91711, {	-- Malevolent Gladiator's Ringmail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91713, {	-- Malevolent Gladiator's Ringmail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91715, {	-- Malevolent Gladiator's Ringmail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91717, {	-- Malevolent Gladiator's Ringmail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91719, {	-- Malevolent Gladiator's Ringmail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(WARLOCK, {
								i(138713, {	-- Ensemble: Malevolent Gladiator's Felweave Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, WARLOCK },
										{"select", "itemID",
											84977,	-- Malevolent Gladiator's Cuffs of Accuracy
											84955,	-- Malevolent Gladiator's Cord of Accuracy
											84815,	-- Malevolent Gladiator's Treads of Alacrity
											91474,	-- Malevolent Gladiator's Cuffs of Accuracy
											91464,	-- Malevolent Gladiator's Cord of Accuracy
											91470,	-- Malevolent Gladiator's Treads of Alacrity
											91781,	-- Malevolent Gladiator's Felweave Amice
											91775,	-- Malevolent Gladiator's Felweave Cowl
											91773,	-- Malevolent Gladiator's Felweave Handguards
											91779,	-- Malevolent Gladiator's Felweave Raiment
											91777,	-- Malevolent Gladiator's Felweave Trousers
										},
									},
									["g"] = {
										i(84923),	-- Malevolent Gladiator's Felweave Amice
										i(84859),	-- Malevolent Gladiator's Felweave Cowl
										i(84842),	-- Malevolent Gladiator's Felweave Handguards
										i(84905),	-- Malevolent Gladiator's Felweave Raiment
										i(84878),	-- Malevolent Gladiator's Felweave Trousers
									},
								}),
								i(91781, {	-- Malevolent Gladiator's Felweave Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91775, {	-- Malevolent Gladiator's Felweave Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91773, {	-- Malevolent Gladiator's Felweave Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91779, {	-- Malevolent Gladiator's Felweave Raiment
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91777, {	-- Malevolent Gladiator's Felweave Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(WARRIOR, {
								i(138703, {	-- Ensemble: Malevolent Gladiator's Plate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_GLADIATOR, WARRIOR },
										{"select", "itemID",
										-- 84985,	-- Malevolent Gladiator's Armplates of Alacrity	-- 25/10.2021 Sha/DK Only
											84950,	-- Malevolent Gladiator's Girdle of Prowess
											84822,	-- Malevolent Gladiator's Warboots of Alacrity
											91659,	-- Malevolent Gladiator's Armplates of Alacrity
											91652,	-- Malevolent Gladiator's Girdle of Prowess
											91656,	-- Malevolent Gladiator's Warboots of Alacrity
											91783,	-- Malevolent Gladiator's Plate Chestpiece
											91785,	-- Malevolent Gladiator's Plate Gauntlets
											91787,	-- Malevolent Gladiator's Plate Helm
											91789,	-- Malevolent Gladiator's Plate Legguards
											91791,	-- Malevolent Gladiator's Plate Shoulders
										},
									},
									["g"] = {
										i(84797),	-- Malevolent Gladiator's Plate Chestpiece
										i(84840),	-- Malevolent Gladiator's Plate Gauntlets
										i(84856),	-- Malevolent Gladiator's Plate Helm
										i(84876),	-- Malevolent Gladiator's Plate Legguards
										i(84922),	-- Malevolent Gladiator's Plate Shoulders
									},
								}),
								i(91783, {	-- Malevolent Gladiator's Plate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91785, {	-- Malevolent Gladiator's Plate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91787, {	-- Malevolent Gladiator's Plate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91789, {	-- Malevolent Gladiator's Plate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(91791, {	-- Malevolent Gladiator's Plate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							n(BACK, {
								i(91453, {	-- Malevolent Gladiator's Cape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91454, {	-- Malevolent Gladiator's Cape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91764, {	-- Malevolent Gladiator's Cloak of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91765, {	-- Malevolent Gladiator's Cloak of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91477, {	-- Malevolent Gladiator's Drape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91479, {	-- Malevolent Gladiator's Drape of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91478, {	-- Malevolent Gladiator's Drape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WRIST, {
								i(91710, {	-- Malevolent Gladiator's Armbands of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91709, {	-- Malevolent Gladiator's Armbands of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91659, {	-- Malevolent Gladiator's Armplates of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91658, {	-- Malevolent Gladiator's Armplates of Proficiency
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91599, {	-- Malevolent Gladiator's Armwraps of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91692, {	-- Malevolent Gladiator's Armwraps of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91524, {	-- Malevolent Gladiator's Bindings of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91541, {	-- Malevolent Gladiator's Bindings of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91639, {	-- Malevolent Gladiator's Bracers of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91638, {	-- Malevolent Gladiator's Bracers of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91474, {	-- Malevolent Gladiator's Cuffs of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91476, {	-- Malevolent Gladiator's Cuffs of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91475, {	-- Malevolent Gladiator's Cuffs of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91574, {	-- Malevolent Gladiator's Wristguards of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91573, {	-- Malevolent Gladiator's Wristguards of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WAIST, {
								i(91537, {	-- Malevolent Gladiator's Belt of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91520, {	-- Malevolent Gladiator's Belt of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91630, {	-- Malevolent Gladiator's Clasp of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91632, {	-- Malevolent Gladiator's Clasp of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91464, {	-- Malevolent Gladiator's Cord of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91462, {	-- Malevolent Gladiator's Cord of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91466, {	-- Malevolent Gladiator's Cord of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91650, {	-- Malevolent Gladiator's Girdle of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91652, {	-- Malevolent Gladiator's Girdle of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91567, {	-- Malevolent Gladiator's Links of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91565, {	-- Malevolent Gladiator's Links of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91688, {	-- Malevolent Gladiator's Waistband of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91595, {	-- Malevolent Gladiator's Waistband of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91731, {	-- Malevolent Gladiator's Waistguard of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(91703, {	-- Malevolent Gladiator's Waistguard of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(FEET, {
								i(91597, {	-- Malevolent Gladiator's Boots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91690, {	-- Malevolent Gladiator's Boots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91539, {	-- Malevolent Gladiator's Footguards of Alacrity (Leahter)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91705, {	-- Malevolent Gladiator's Footguards of Alacrity (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91522, {	-- Malevolent Gladiator's Footguards of Meditation (Leather)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91707, {	-- Malevolent Gladiator's Footguards of Meditation (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91634, {	-- Malevolent Gladiator's Greaves of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91636, {	-- Malevolent Gladiator's Greaves of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91571, {	-- Malevolent Gladiator's Sabatons of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91569, {	-- Malevolent Gladiator's Sabatons of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91470, {	-- Malevolent Gladiator's Treads of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91468, {	-- Malevolent Gladiator's Treads of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91472, {	-- Malevolent Gladiator's Treads of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91656, {	-- Malevolent Gladiator's Warboots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(91654, {	-- Malevolent Gladiator's Warboots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
						},
					}),
					n(65165, {	-- Doris Chiltonius (Removed Season 12 Vendor)
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					n(69965, {	-- Doris Chiltonius (Removed Season 14 Vendor)
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["g"] = {
						},
					}),
					n(69982, {	-- Lok'nor Bloodfist  <Honor Quartermaster>
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["g"] = {
						},
					}),
					n(75690, {	-- Lok'nor Bloodfist <Dreadful Gladiator>
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["g"] = {
							cl(DEATHKNIGHT, {
								i(138715, {	-- Ensemble: Dreadful Gladiator's Dreadplate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, DEATHKNIGHT },
										{"select", "itemID",
											84438,	-- Dreadful Gladiator's Armplates of Proficiency
											84434,	-- Dreadful Gladiator's Girdle of Accuracy
											84436,	-- Dreadful Gladiator's Warboots of Cruelty
										},
									},
								}),
								i(84372, {	-- Dreadful Gladiator's Dreadplate Chestpiece
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84373, {	-- Dreadful Gladiator's Dreadplate Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84374, {	-- Dreadful Gladiator's Dreadplate Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84375, {	-- Dreadful Gladiator's Dreadplate Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84376, {	-- Dreadful Gladiator's Dreadplate Shoulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(DRUID, {
								i(138719, {	-- Ensemble: Dreadful Gladiator's Dragonhide Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, DRUID },
										{"select", "itemID",
											84384,	-- Dreadful Gladiator's Bindings of Meditation
											84392,	-- Dreadful Gladiator's Bindings of Prowess
											84390,	-- Dreadful Gladiator's Belt of Cruelty
											84382,	-- Dreadful Gladiator's Belt of Meditation
											84391,	-- Dreadful Gladiator's Footguards of Alacrity (Leather)
											84383,	-- Dreadful Gladiator's Footguards of Meditation (Leather)
										},
									},
								}),
								i(84377, {	-- Dreadful Gladiator's Dragonhide Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84378, {	-- Dreadful Gladiator's Dragonhide Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84379, {	-- Dreadful Gladiator's Dragonhide Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84380, {	-- Dreadful Gladiator's Dragonhide Robes
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84381, {	-- Dreadful Gladiator's Dragonhide Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84385, {	-- Dreadful Gladiator's Kodohide Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84386, {	-- Dreadful Gladiator's Kodohide Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84387, {	-- Dreadful Gladiator's Kodohide Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84388, {	-- Dreadful Gladiator's Kodohide Robes
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84389, {	-- Dreadful Gladiator's Kodohide Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84393, {	-- Dreadful Gladiator's Wyrmhide Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84394, {	-- Dreadful Gladiator's Wyrmhide Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84395, {	-- Dreadful Gladiator's Wyrmhide Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84396, {	-- Dreadful Gladiator's Wyrmhide Robes
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84397, {	-- Dreadful Gladiator's Wyrmhide Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(HUNTER, {
								i(138718, {	-- Ensemble: Dreadful Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, HUNTER },
										{"select", "itemID",
											84407,	-- Dreadful Gladiator's Wristguards of Accuracy
											84406,	-- Dreadful Gladiator's Wristguards of Alacrity
											84403,	-- Dreadful Gladiator's Links of Accuracy
											84402,	-- Dreadful Gladiator's Links of Cruelty
											84405,	-- Dreadful Gladiator's Sabatons of Alacrity
											84404,	-- Dreadful Gladiator's Sabatons of Cruelty
										},
									},
								}),
								i(84408, {	-- Dreadful Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84409, {	-- Dreadful Gladiator's Chain Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84410, {	-- Dreadful Gladiator's Chain Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84411, {	-- Dreadful Gladiator's Chain Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84412, {	-- Dreadful Gladiator's Chain Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(MAGE, {
								i(138722, {	-- Ensemble: Dreadful Gladiator's Silk Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, MAGE },
										{"select", "itemID",
											84360,	-- Dreadful Gladiator's Cuffs of Prowess
											84353,	-- Dreadful Gladiator's Cord of Cruelty
											84356,	-- Dreadful Gladiator's Treads of Cruelty
										},
									},
								}),
								i(84417, {	-- Dreadful Gladiator's Silk Amice
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84414, {	-- Dreadful Gladiator's Silk Cowl
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84413, {	-- Dreadful Gladiator's Silk Handguards
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84416, {	-- Dreadful Gladiator's Silk Robe
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84415, {	-- Dreadful Gladiator's Silk Trousers
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(MONK, {
								i(138720, {	-- Ensemble: Dreadful Gladiator's Ironskin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, MONK },
										{"select", "itemID",
											84461,	-- Dreadful Gladiator's Armwraps of Accuracy
											84456,	-- Dreadful Gladiator's Waistband of Cruelty
											84459,	-- Dreadful Gladiator's Boots of Alacrity
										},
									},
								}),
								i(84548, {	-- Dreadful Gladiator's Copperskin Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 3x Mark of Honor
								}),
								i(84549, {	-- Dreadful Gladiator's Copperskin Helm
									["cost"] = { { "i", 137642, 3 } },	-- 2x Mark of Honor
								}),
								i(84550, {	-- Dreadful Gladiator's Copperskin Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84552, {	-- Dreadful Gladiator's Copperskin Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 3x Mark of Honor
								}),
								i(84551, {	-- Dreadful Gladiator's Copperskin Tunic
									["cost"] = { { "i", 137642, 3 } },	-- 2x Mark of Honor
								}),
								i(84543, {	-- Dreadful Gladiator's Ironskin Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 3x Mark of Honor
								}),
								i(84544, {	-- Dreadful Gladiator's Ironskin Helm
									["cost"] = { { "i", 137642, 3 } },	-- 2x Mark of Honor
								}),
								i(84545, {	-- Dreadful Gladiator's Ironskin Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84547, {	-- Dreadful Gladiator's Ironskin Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 3x Mark of Honor
								}),
								i(84546, {	-- Dreadful Gladiator's Ironskin Tunic
									["cost"] = { { "i", 137642, 3 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PALADIN, {
								i(138716, {	-- Ensemble: Dreadful Gladiator's Scaled Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, PALADIN },
										{"select", "itemID",
											84428,	-- Dreadful Gladiator's Bracers of Meditation
											84427,	-- Dreadful Gladiator's Bracers of Prowess
											84423,	-- Dreadful Gladiator's Clasp of Cruelty
											84424,	-- Dreadful Gladiator's Clasp of Meditation
											84425,	-- Dreadful Gladiator's Greaves of Alacrity
											84426,	-- Dreadful Gladiator's Greaves of Meditation
										},
									},
								}),
								i(84429, {	-- Dreadful Gladiator's Ornamented Chestguard
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84430, {	-- Dreadful Gladiator's Ornamented Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84431, {	-- Dreadful Gladiator's Ornamented Headcover
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84432, {	-- Dreadful Gladiator's Ornamented Legplates
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84433, {	-- Dreadful Gladiator's Ornamented Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84418, {	-- Dreadful Gladiator's Scaled Chestpiece
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84419, {	-- Dreadful Gladiator's Scaled Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84420, {	-- Dreadful Gladiator's Scaled Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84421, {	-- Dreadful Gladiator's Scaled Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84422, {	-- Dreadful Gladiator's Scaled Shoulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PRIEST, {
								i(138723, {	-- Ensemble: Dreadful Gladiator's Satin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, PRIEST },
										{"select", "itemID",
											84361,	-- Dreadful Gladiator's Cuffs of Meditation
											84355,	-- Dreadful Gladiator's Cord of Meditation
											84358,	-- Dreadful Gladiator's Treads of Meditation
										},
									},
								}),
								i(84440, {	-- Dreadful Gladiator's Mooncloth Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84441, {	-- Dreadful Gladiator's Mooncloth Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84442, {	-- Dreadful Gladiator's Mooncloth Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84444, {	-- Dreadful Gladiator's Mooncloth Mantle
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84443, {	-- Dreadful Gladiator's Mooncloth Robe
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84445, {	-- Dreadful Gladiator's Satin Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84446, {	-- Dreadful Gladiator's Satin Hood
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84447, {	-- Dreadful Gladiator's Satin Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84449, {	-- Dreadful Gladiator's Satin Mantle
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84448, {	-- Dreadful Gladiator's Satin Robe
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(ROGUE, {
								i(138721, {	-- Ensemble: Dreadful Gladiator's Leather Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, ROGUE },
										{"select", "itemID",
											84460,	-- Dreadful Gladiator's Armwraps of Alacrity
											84457,	-- Dreadful Gladiator's Waistband of Accuracy
											84458,	-- Dreadful Gladiator's Boots of Cruelty
										},
									},
								}),
								i(84463, {	-- Dreadful Gladiator's Leather Gloves
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84464, {	-- Dreadful Gladiator's Leather Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84465, {	-- Dreadful Gladiator's Leather Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84466, {	-- Dreadful Gladiator's Leather Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84462, {	-- Dreadful Gladiator's Leather Tunic
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(SHAMAN, {
								i(138717, {	-- Ensemble: Dreadful Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, SHAMAN },
										{"select", "itemID",
											84471,	-- Dreadful Gladiator's Armbands of Meditation
											84470,	-- Dreadful Gladiator's Armbands of Prowess
											84482,	-- Dreadful Gladiator's Waistguard of Cruelty
											84467,	-- Dreadful Gladiator's Waistguard of Meditation
											84468,	-- Dreadful Gladiator's Footguards of Alacrity (Mail)
											84469,	-- Dreadful Gladiator's Footguards of Meditation (Mail)
										},
									},
								}),
								i(84477, {	-- Dreadful Gladiator's Linked Armor
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84478, {	-- Dreadful Gladiator's Linked Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84479, {	-- Dreadful Gladiator's Linked Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84480, {	-- Dreadful Gladiator's Linked Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84481, {	-- Dreadful Gladiator's Linked Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84483, {	-- Dreadful Gladiator's Mail Armor
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84484, {	-- Dreadful Gladiator's Mail Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84485, {	-- Dreadful Gladiator's Mail Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84486, {	-- Dreadful Gladiator's Mail Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84487, {	-- Dreadful Gladiator's Mail Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84472, {	-- Dreadful Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84473, {	-- Dreadful Gladiator's Ringmail Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84474, {	-- Dreadful Gladiator's Ringmail Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84475, {	-- Dreadful Gladiator's Ringmail Leggings
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84476, {	-- Dreadful Gladiator's Ringmail Spaulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(WARLOCK, {
								i(138724, {	-- Ensemble: Dreadful Gladiator's Felweave Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, WARLOCK },
										{"select", "itemID",
											84359,	-- Dreadful Gladiator's Cuffs of Accuracy
											84354,	-- Dreadful Gladiator's Cord of Accuracy
											84357,	-- Dreadful Gladiator's Treads of Alacrity
										},
									},
								}),
								i(84503, {	-- Dreadful Gladiator's Felweave Amice
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84500, {	-- Dreadful Gladiator's Felweave Cowl
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84499, {	-- Dreadful Gladiator's Felweave Handguards
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84502, {	-- Dreadful Gladiator's Felweave Raiment
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84501, {	-- Dreadful Gladiator's Felweave Trousers
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(WARRIOR, {
								i(138714, {	-- Ensemble: Dreadful Gladiator's Plate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_MALEVOLENT, PVP_HONOR, WARRIOR },
										{"select", "itemID",
											84439,	-- Dreadful Gladiator's Armplates of Alacrity
											84435,	-- Dreadful Gladiator's Girdle of Prowess
											84437,	-- Dreadful Gladiator's Warboots of Alacrity
										},
									},
								}),
								i(84504, {	-- Dreadful Gladiator's Plate Chestpiece
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84505, {	-- Dreadful Gladiator's Plate Gauntlets
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84506, {	-- Dreadful Gladiator's Plate Helm
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84507, {	-- Dreadful Gladiator's Plate Legguards
									["cost"] = { { "i", 137642, 3 } },	-- 3x Mark of Honor
								}),
								i(84508, {	-- Dreadful Gladiator's Plate Shoulders
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							n(BACK, {
								i(84345, {	-- Dreadful Gladiator's Cape of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84346, {	-- Dreadful Gladiator's Cape of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84491, {	-- Dreadful Gladiator's Cloak of Alacrity
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84492, {	-- Dreadful Gladiator's Cloak of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84363, {	-- Dreadful Gladiator's Drape of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84364, {	-- Dreadful Gladiator's Drape of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84362, {	-- Dreadful Gladiator's Drape of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WRIST, {
								i(84471, {	-- Dreadful  Gladiator's Armbands of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84470, {	-- Dreadful  Gladiator's Armbands of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84439, {	-- Dreadful Gladiator's Armplates of Alacrity
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84438, {	-- Dreadful Gladiator's Armplates of Proficiency
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84461, {	-- Dreadful Gladiator's Armwraps of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84460, {	-- Dreadful Gladiator's Armwraps of Alacrity
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84384, {	-- Dreadful Gladiator's Bindings of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84392, {	-- Dreadful Gladiator's Bindings of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84428, {	-- Dreadful Gladiator's Bracers of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84427, {	-- Dreadful Gladiator's Bracers of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84359, {	-- Dreadful Gladiator's Cuffs of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84361, {	-- Dreadful Gladiator's Cuffs of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84360, {	-- Dreadful Gladiator's Cuffs of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84407, {	-- Dreadful Gladiator's Wristguards of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84406, {	-- Dreadful Gladiator's Wristguards of Alacrity
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WAIST, {
								i(84390, {	-- Dreadful Gladiator's Belt of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84382, {	-- Dreadful Gladiator's Belt of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84423, {	-- Dreadful Gladiator's Clasp of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84424, {	-- Dreadful Gladiator's Clasp of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84354, {	-- Dreadful Gladiator's Cord of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84353, {	-- Dreadful Gladiator's Cord of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84355, {	-- Dreadful Gladiator's Cord of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84434, {	-- Dreadful Gladiator's Girdle of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84435, {	-- Dreadful Gladiator's Girdle of Prowess
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84403, {	-- Dreadful Gladiator's Links of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84402, {	-- Dreadful Gladiator's Links of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84457, {	-- Dreadful Gladiator's Waistband of Accuracy
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84456, {	-- Dreadful Gladiator's Waistband of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84482, {	-- Dreadful Gladiator's Waistguard of Cruelty
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
								i(84467, {	-- Dreadful Gladiator's Waistguard of Meditation
									["cost"] = { { "i", 137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(FEET, {
								i(84459, {	-- Dreadful Gladiator's Boots of Alacrity
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84458, {	-- Dreadful Gladiator's Boots of Cruelty
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84391, {	-- Dreadful Gladiator's Footguards of Alacrity (Leather)
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84383, {	-- Dreadful Gladiator's Footguards of Meditation (Leather)
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84468, {	-- Dreadful Gladiator's Footguards of Alacrity (Mail)
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84469, {	-- Dreadful Gladiator's Footguards of Meditation (Mail)
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84425, {	-- Dreadful Gladiator's Greaves of Alacrity
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84426, {	-- Dreadful Gladiator's Greaves of Meditation
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84405, {	-- Dreadful Gladiator's Sabatons of Alacrity
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84404, {	-- Dreadful Gladiator's Sabatons of Cruelty
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84357, {	-- Dreadful Gladiator's Treads of Alacrity
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84356, {	-- Dreadful Gladiator's Treads of Cruelty
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84358, {	-- Dreadful Gladiator's Treads of Meditation
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84437, {	-- Dreadful Gladiator's Warboots of Alacrity
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
								i(84436, {	-- Dreadful Gladiator's Warboots of Cruelty
									["cost"] = { { "i", 137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
						},
					}),
					n(70108, {	-- Roo Desvin >S13</Tyrannical Elite
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
						["g"] = {
						},
					}),
					n(75688, {	-- Roo Desvin S13 Tyrannical Vendor
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["g"] = {
							n(WEAPONS, {
								i(144245, {	-- Arsenal: Tyrannical Gladiator's Weapons
									["cost"] = { { "i", 137642, 80 } },	-- 80x Mark of Honor
									["sym"] = {
										{"sub", "pvp_weapons_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR },
										{"select", "itemID",
											100171,	-- Tyrannical Gladiator's Barrier
											99974,	-- Tyrannical Gladiator's Battle Staff
											99983,	-- Tyrannical Gladiator's Bonecracker
											99973,	-- Tyrannical Gladiator's Cleaver
											99984,	-- Tyrannical Gladiator's Decapitator
											100172,	-- Tyrannical Gladiator's Endgame
											99981,	-- Tyrannical Gladiator's Energy Staff
											99963,	-- Tyrannical Gladiator's Gavel
											99972,	-- Tyrannical Gladiator's Greatsword
											99978,	-- Tyrannical Gladiator's Hacker
											99987,	-- Tyrannical Gladiator's Heavy Crossbow
											99971,	-- Tyrannical Gladiator's Mageblade
											99965,	-- Tyrannical Gladiator's Pummeler
											99986,	-- Tyrannical Gladiator's Quickblade
											100168,	-- Tyrannical Gladiator's Redoubt
											99982,	-- Tyrannical Gladiator's Render
											100169,	-- Tyrannical Gladiator's Reprieve
											99977,	-- Tyrannical Gladiator's Ripper
											99976,	-- Tyrannical Gladiator's Shanker
											100170,	-- Tyrannical Gladiator's Shield Wall
											99979,	-- Tyrannical Gladiator's Slicer
											99967,	-- Tyrannical Gladiator's Spellblade
											99968,	-- Tyrannical Gladiator's Staff
										},
									},
								}),
								i(100171, {	-- Tyrannical Gladiator's Barrier
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99974, {	-- Tyrannical Gladiator's Battle Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99983, {	-- Tyrannical Gladiator's Bonecracker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99973, {	-- Tyrannical Gladiator's Cleaver
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99984, {	-- Tyrannical Gladiator's Decapitator
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(100172, {	-- Tyrannical Gladiator's Endgame
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99981, {	-- Tyrannical Gladiator's Energy Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99963, {	-- Tyrannical Gladiator's Gavel
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99972, {	-- Tyrannical Gladiator's Greatsword
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99978, {	-- Tyrannical Gladiator's Hacker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99987, {	-- Tyrannical Gladiator's Heavy Crossbow
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99971, {	-- Tyrannical Gladiator's Mageblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99965, {	-- Tyrannical Gladiator's Pummeler
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99986, {	-- Tyrannical Gladiator's Quickblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(100168, {	-- Tyrannical Gladiator's Redoubt
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99982, {	-- Tyrannical Gladiator's Render
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(100169, {	-- Tyrannical Gladiator's Reprieve
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99977, {	-- Tyrannical Gladiator's Ripper
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99976, {	-- Tyrannical Gladiator's Shanker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(100170, {	-- Tyrannical Gladiator's Shield Wall
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99979, {	-- Tyrannical Gladiator's Slicer
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99967, {	-- Tyrannical Gladiator's Spellblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(99968, {	-- Tyrannical Gladiator's Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
							}),
							cl(DEATHKNIGHT, {
								i(138684, {	-- Ensemble: Tyrannical Gladiator's Dreadplate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, DEATHKNIGHT },
										{"select", "itemID",
											94487,	-- Tyrannical Gladiator's Armplates of Alacrity
											94353,	-- Tyrannical Gladiator's Girdle of Accuracy
											94461,	-- Tyrannical Gladiator's Warboots of Alacrity
											100157,	-- Tyrannical Gladiator's Armplates of Alacrity
											100023,	-- Tyrannical Gladiator's Girdle of Accuracy
											100084,	-- Tyrannical Gladiator's Warboots of Alacrity
											100062,	-- Tyrannical Gladiator's Dreadplate Chestpiece
											100034,	-- Tyrannical Gladiator's Dreadplate Gauntlets
											100099,	-- Tyrannical Gladiator's Dreadplate Helm
											100035,	-- Tyrannical Gladiator's Dreadplate Legguards
											100036,	-- Tyrannical Gladiator's Dreadplate Shoulders
										},
									},
								}),
								i(100062, {	-- Tyrannical Gladiator's Dreadplate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100034, {	-- Tyrannical Gladiator's Dreadplate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100099, {	-- Tyrannical Gladiator's Dreadplate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100035, {	-- Tyrannical Gladiator's Dreadplate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100036, {	-- Tyrannical Gladiator's Dreadplate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(DRUID, {
								i(138692, {	-- Ensemble: Tyrannical Gladiator's Dragonhide Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, DRUID },
										{"select", "itemID",
											94407,	-- Tyrannical Gladiator's Bindings of Meditation
											94439,	-- Tyrannical Gladiator's Bindings of Prowess
											94410,	-- Tyrannical Gladiator's Belt of Cruelty
											94491,	-- Tyrannical Gladiator's Belt of Meditation
											94344,	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
											94476,	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
											100077,	-- Tyrannical Gladiator's Bindings of Meditation
											100109,	-- Tyrannical Gladiator's Bindings of Prowess
											100080,	-- Tyrannical Gladiator's Belt of Cruelty
											100161,	-- Tyrannical Gladiator's Belt of Meditation
											100014,	-- Tyrannical Gladiator's Footguards of Alacrity (Leather)
											100146,	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
											100125,	-- Tyrannical Gladiator's Dragonhide Gloves
											100037,	-- Tyrannical Gladiator's Dragonhide Helm
											100038,	-- Tyrannical Gladiator's Dragonhide Legguards
											100126,	-- Tyrannical Gladiator's Dragonhide Robes
											100127,	-- Tyrannical Gladiator's Dragonhide Spaulders
											100041,	-- Tyrannical Gladiator's Kodohide Gloves
											100162,	-- Tyrannical Gladiator's Kodohide Helm
											100147,	-- Tyrannical Gladiator's Kodohide Legguards
											100107,	-- Tyrannical Gladiator's Kodohide Robes
											100042,	-- Tyrannical Gladiator's Kodohide Spaulders
											100082,	-- Tyrannical Gladiator's Wyrmhide Gloves
											100017,	-- Tyrannical Gladiator's Wyrmhide Helm
											100153,	-- Tyrannical Gladiator's Wyrmhide Legguards
											99988,	-- Tyrannical Gladiator's Wyrmhide Robes
											100086,	-- Tyrannical Gladiator's Wyrmhide Spaulders
										},
									},
								}),
								i(100125, {	-- Tyrannical Gladiator's Dragonhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100037, {	-- Tyrannical Gladiator's Dragonhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100038, {	-- Tyrannical Gladiator's Dragonhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100126, {	-- Tyrannical Gladiator's Dragonhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100127, {	-- Tyrannical Gladiator's Dragonhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100041, {	-- Tyrannical Gladiator's Kodohide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100162, {	-- Tyrannical Gladiator's Kodohide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100147, {	-- Tyrannical Gladiator's Kodohide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100107, {	-- Tyrannical Gladiator's Kodohide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100042, {	-- Tyrannical Gladiator's Kodohide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100082, {	-- Tyrannical Gladiator's Wyrmhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100017, {	-- Tyrannical Gladiator's Wyrmhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100153, {	-- Tyrannical Gladiator's Wyrmhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(99988, {	-- Tyrannical Gladiator's Wyrmhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100086, {	-- Tyrannical Gladiator's Wyrmhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(HUNTER, {
								i(138690, {	-- Ensemble: Tyrannical Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, HUNTER },
										{"select", "itemID",
											94469,	-- Tyrannical Gladiator's Wristguards of Accuracy
											94404,	-- Tyrannical Gladiator's Wristguards of Alacrity
											94358,	-- Tyrannical Gladiator's Links of Accuracy
											94330,	-- Tyrannical Gladiator's Links of Cruelty
											94359,	-- Tyrannical Gladiator's Sabatons of Alacrity
											94445,	-- Tyrannical Gladiator's Sabatons of Cruelty
											100139,	-- Tyrannical Gladiator's Wristguards of Accuracy
											100074,	-- Tyrannical Gladiator's Wristguards of Alacrity
											100028,	-- Tyrannical Gladiator's Links of Accuracy
											99991,	-- Tyrannical Gladiator's Links of Cruelty
											100029,	-- Tyrannical Gladiator's Sabatons of Alacrity
											100115,	-- Tyrannical Gladiator's Sabatons of Cruelty
											100075,	-- Tyrannical Gladiator's Chain Armor
											100123,	-- Tyrannical Gladiator's Chain Gauntlets
											100076,	-- Tyrannical Gladiator's Chain Helm
											100054,	-- Tyrannical Gladiator's Chain Leggings
											100120,	-- Tyrannical Gladiator's Chain Spaulders
										},
									},
								}),
								i(100075, {	-- Tyrannical Gladiator's Chain Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100123, {	-- Tyrannical Gladiator's Chain Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100076, {	-- Tyrannical Gladiator's Chain Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100054, {	-- Tyrannical Gladiator's Chain Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100120, {	-- Tyrannical Gladiator's Chain Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(MAGE, {
								i(138698, {	-- Ensemble: Tyrannical Gladiator's Silk Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, MAGE },
										{"select", "itemID",
											94449,	-- Tyrannical Gladiator's Cuffs of Prowess
											94400,	-- Tyrannical Gladiator's Cord of Cruelty
											94402,	-- Tyrannical Gladiator's Treads of Cruelty
											100119,	-- Tyrannical Gladiator's Cuffs of Prowess
											100070,	-- Tyrannical Gladiator's Cord of Cruelty
											100072,	-- Tyrannical Gladiator's Treads of Cruelty
											100059,	-- Tyrannical Gladiator's Silk Amice
											100051,	-- Tyrannical Gladiator's Silk Cowl
											100121,	-- Tyrannical Gladiator's Silk Handguards
											100101,	-- Tyrannical Gladiator's Silk Robe
											100032,	-- Tyrannical Gladiator's Silk Trousers
										},
									},
								}),
								i(100059, {	-- Tyrannical Gladiator's Silk Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100051, {	-- Tyrannical Gladiator's Silk Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100121, {	-- Tyrannical Gladiator's Silk Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100101, {	-- Tyrannical Gladiator's Silk Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100032, {	-- Tyrannical Gladiator's Silk Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(MONK, {
								i(138694, {	-- Ensemble: Tyrannical Gladiator's Ironskin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, MONK },
										{"select", "itemID",
											94427,	-- Tyrannical Gladiator's Armwraps of Accuracy
											94360,	-- Tyrannical Gladiator's Waistband of Cruelty
											94432,	-- Tyrannical Gladiator's Boots of Alacrity
											100097,	-- Tyrannical Gladiator's Armwraps of Accuracy
											100030,	-- Tyrannical Gladiator's Waistband of Cruelty
											100102,	-- Tyrannical Gladiator's Boots of Alacrity
											100010,	-- Tyrannical Gladiator's Copperskin Gloves
											100011,	-- Tyrannical Gladiator's Copperskin Helm
											100148,	-- Tyrannical Gladiator's Copperskin Legguards
											100163,	-- Tyrannical Gladiator's Copperskin Spaulders
											100149,	-- Tyrannical Gladiator's Copperskin Tunic
											100061,	-- Tyrannical Gladiator's Ironskin Gloves
											100098,	-- Tyrannical Gladiator's Ironskin Helm
											100040,	-- Tyrannical Gladiator's Ironskin Legguards
											100009,	-- Tyrannical Gladiator's Ironskin Spaulders
											100106,	-- Tyrannical Gladiator's Ironskin Tunic
										},
									},
								}),
								i(100010, {	-- Tyrannical Gladiator's Copperskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100011, {	-- Tyrannical Gladiator's Copperskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100148, {	-- Tyrannical Gladiator's Copperskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100163, {	-- Tyrannical Gladiator's Copperskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100149, {	-- Tyrannical Gladiator's Copperskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100061, {	-- Tyrannical Gladiator's Ironskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100098, {	-- Tyrannical Gladiator's Ironskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100040, {	-- Tyrannical Gladiator's Ironskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100009, {	-- Tyrannical Gladiator's Ironskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100106, {	-- Tyrannical Gladiator's Ironskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(PALADIN, {
								i(138686, {	-- Ensemble: Tyrannical Gladiator's Scaled Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, PALADIN },
										{"select", "itemID",
											94481,	-- Tyrannical Gladiator's Bracers of Meditation
											94411,	-- Tyrannical Gladiator's Bracers of Prowess
											94480,	-- Tyrannical Gladiator's Clasp of Cruelty
											94464,	-- Tyrannical Gladiator's Clasp of Meditation
											94351,	-- Tyrannical Gladiator's Greaves of Alacrity
											94352,	-- Tyrannical Gladiator's Greaves of Meditation
											100151,	-- Tyrannical Gladiator's Bracers of Meditation
											100081,	-- Tyrannical Gladiator's Bracers of Prowess
											100150,	-- Tyrannical Gladiator's Clasp of Cruelty
											100134,	-- Tyrannical Gladiator's Clasp of Meditation
											100021,	-- Tyrannical Gladiator's Greaves of Alacrity
											100022,	-- Tyrannical Gladiator's Greaves of Meditation
											100015,	-- Tyrannical Gladiator's Ornamented Chestguard
											100108,	-- Tyrannical Gladiator's Ornamented Gloves
											100018,	-- Tyrannical Gladiator's Ornamented Headcover
											100154,	-- Tyrannical Gladiator's Ornamented Legplates
											100083,	-- Tyrannical Gladiator's Ornamented Spaulders
											100133,	-- Tyrannical Gladiator's Scaled Chestpiece
											100013,	-- Tyrannical Gladiator's Scaled Gauntlets
											100165,	-- Tyrannical Gladiator's Scaled Helm
											100166,	-- Tyrannical Gladiator's Scaled Legguards
											100130,	-- Tyrannical Gladiator's Scaled Shoulders
										},
									},
								}),
								i(100015, {	-- Tyrannical Gladiator's Ornamented Chestguard
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100108, {	-- Tyrannical Gladiator's Ornamented Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100018, {	-- Tyrannical Gladiator's Ornamented Headcover
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100154, {	-- Tyrannical Gladiator's Ornamented Legplates
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100083, {	-- Tyrannical Gladiator's Ornamented Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100133, {	-- Tyrannical Gladiator's Scaled Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100013, {	-- Tyrannical Gladiator's Scaled Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100165, {	-- Tyrannical Gladiator's Scaled Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100166, {	-- Tyrannical Gladiator's Scaled Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100130, {	-- Tyrannical Gladiator's Scaled Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PRIEST, {
								i(138700, {	-- Ensemble: Tyrannical Gladiator's Satin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, PRIEST },
										{"select", "itemID",
											94380,	-- Tyrannical Gladiator's Cuffs of Meditation
											94425,	-- Tyrannical Gladiator's Cord of Meditation
											94468,	-- Tyrannical Gladiator's Treads of Meditation
											100050,	-- Tyrannical Gladiator's Cuffs of Meditation
											100095,	-- Tyrannical Gladiator's Cord of Meditation
											100138,	-- Tyrannical Gladiator's Treads of Meditation
											99989,	-- Tyrannical Gladiator's Mooncloth Gloves
											100089,	-- Tyrannical Gladiator's Mooncloth Helm
											100090,	-- Tyrannical Gladiator's Mooncloth Leggings
											100136,	-- Tyrannical Gladiator's Mooncloth Mantle
											100067,	-- Tyrannical Gladiator's Mooncloth Robe
											100093,	-- Tyrannical Gladiator's Satin Gloves
											100137,	-- Tyrannical Gladiator's Satin Hood
											99996,	-- Tyrannical Gladiator's Satin Leggings
											100055,	-- Tyrannical Gladiator's Satin Mantle
											99998,	-- Tyrannical Gladiator's Satin Robe
										},
									},
								}),
								i(99989, {	-- Tyrannical Gladiator's Mooncloth Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100089, {	-- Tyrannical Gladiator's Mooncloth Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100090, {	-- Tyrannical Gladiator's Mooncloth Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100136, {	-- Tyrannical Gladiator's Mooncloth Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100067, {	-- Tyrannical Gladiator's Mooncloth Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100093, {	-- Tyrannical Gladiator's Satin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100137, {	-- Tyrannical Gladiator's Satin Hood
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(99996, {	-- Tyrannical Gladiator's Satin Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100055, {	-- Tyrannical Gladiator's Satin Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99998, {	-- Tyrannical Gladiator's Satin Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(ROGUE, {
								i(138696, {	-- Ensemble: Tyrannical Gladiator's Leather Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, ROGUE },
										{"select", "itemID",
											94470,	-- Tyrannical Gladiator's Armwraps of Alacrity
											94424,	-- Tyrannical Gladiator's Waistband of Accuracy
											94374,	-- Tyrannical Gladiator's Boots of Cruelty
											100140,	-- Tyrannical Gladiator's Armwraps of Alacrity
											100094,	-- Tyrannical Gladiator's Waistband of Accuracy
											100044,	-- Tyrannical Gladiator's Boots of Cruelty
											100047,	-- Tyrannical Gladiator's Leather Gloves
											100096,	-- Tyrannical Gladiator's Leather Helm
											100116,	-- Tyrannical Gladiator's Leather Legguards
											100117,	-- Tyrannical Gladiator's Leather Spaulders
											100113,	-- Tyrannical Gladiator's Leather Tunic
										},
									},
								}),
								i(100047, {	-- Tyrannical Gladiator's Leather Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100096, {	-- Tyrannical Gladiator's Leather Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100116, {	-- Tyrannical Gladiator's Leather Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100117, {	-- Tyrannical Gladiator's Leather Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100113, {	-- Tyrannical Gladiator's Leather Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(SHAMAN, {
								i(138688, {	-- Ensemble: Tyrannical Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, SHAMAN },
										{"select", "itemID",
											94337,	-- Tyrannical Gladiator's Armbands of Meditation
											94379,	-- Tyrannical Gladiator's Armbands of Prowess
											94393,	-- Tyrannical Gladiator's Waistguard of Cruelty
											94382,	-- Tyrannical Gladiator's Waistguard of Meditation
											94378,	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
											94336,	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
											100004,	-- Tyrannical Gladiator's Armbands of Meditation
											100049,	-- Tyrannical Gladiator's Armbands of Prowess
											100063,	-- Tyrannical Gladiator's Waistguard of Cruelty
											100052,	-- Tyrannical Gladiator's Waistguard of Meditation
											100048,	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
											100001,	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
											100145,	-- Tyrannical Gladiator's Linked Armor
											100128,	-- Tyrannical Gladiator's Linked Gauntlets
											100100,	-- Tyrannical Gladiator's Linked Helm
											100164,	-- Tyrannical Gladiator's Linked Leggings
											100012,	-- Tyrannical Gladiator's Linked Spaulders
											100129,	-- Tyrannical Gladiator's Mail Armor
											100078,	-- Tyrannical Gladiator's Mail Gauntlets
											100079,	-- Tyrannical Gladiator's Mail Helm
											100167,	-- Tyrannical Gladiator's Mail Leggings
											100020,	-- Tyrannical Gladiator's Mail Spaulders
											100103,	-- Tyrannical Gladiator's Ringmail Armor
											100160,	-- Tyrannical Gladiator's Ringmail Gauntlets
											100104,	-- Tyrannical Gladiator's Ringmail Helm
											100105,	-- Tyrannical Gladiator's Ringmail Leggings
											100039,	-- Tyrannical Gladiator's Ringmail Spaulders
										},
									},
								}),
								i(100145, {	-- Tyrannical Gladiator's Linked Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100128, {	-- Tyrannical Gladiator's Linked Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100100, {	-- Tyrannical Gladiator's Linked Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100164, {	-- Tyrannical Gladiator's Linked Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100012, {	-- Tyrannical Gladiator's Linked Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100129, {	-- Tyrannical Gladiator's Mail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100078, {	-- Tyrannical Gladiator's Mail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100079, {	-- Tyrannical Gladiator's Mail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100167, {	-- Tyrannical Gladiator's Mail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100020, {	-- Tyrannical Gladiator's Mail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100103, {	-- Tyrannical Gladiator's Ringmail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100160, {	-- Tyrannical Gladiator's Ringmail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100104, {	-- Tyrannical Gladiator's Ringmail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100105, {	-- Tyrannical Gladiator's Ringmail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100039, {	-- Tyrannical Gladiator's Ringmail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(WARLOCK, {
								i(138702, {	-- Ensemble: Tyrannical Gladiator's Felweave Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARLOCK },
										{"select", "itemID",
											94403,	-- Tyrannical Gladiator's Cuffs of Accuracy
											94376,	-- Tyrannical Gladiator's Cord of Accuracy
											94333,	-- Tyrannical Gladiator's Treads of Alacrity
											100073,	-- Tyrannical Gladiator's Cuffs of Accuracy
											100046,	-- Tyrannical Gladiator's Cord of Accuracy
											99994,	-- Tyrannical Gladiator's Treads of Alacrity
											100068,	-- Tyrannical Gladiator's Felweave Amice
											100112,	-- Tyrannical Gladiator's Felweave Cowl
											100111,	-- Tyrannical Gladiator's Felweave Handguards
											100045,	-- Tyrannical Gladiator's Felweave Raiment
											100141,	-- Tyrannical Gladiator's Felweave Trousers
										},
									},
								}),
								i(100068, {	-- Tyrannical Gladiator's Felweave Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100112, {	-- Tyrannical Gladiator's Felweave Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100111, {	-- Tyrannical Gladiator's Felweave Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100045, {	-- Tyrannical Gladiator's Felweave Raiment
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100141, {	-- Tyrannical Gladiator's Felweave Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(WARRIOR, {
								i(138682, {	-- Ensemble: Tyrannical Gladiator's Plate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARRIOR },
										{"select", "itemID",
											94418,	-- Tyrannical Gladiator's Armplates of Proficiency
											94440,	-- Tyrannical Gladiator's Girdle of Prowess
											94414,	-- Tyrannical Gladiator's Warboots of Cruelty
											100088,	-- Tyrannical Gladiator's Armplates of Proficiency
											100110,	-- Tyrannical Gladiator's Girdle of Prowess
											100084,	-- Tyrannical Gladiator's Warboots of Cruelty
											100114,	-- Tyrannical Gladiator's Plate Chestpiece
											99992,	-- Tyrannical Gladiator's Plate Gauntlets
											99993,	-- Tyrannical Gladiator's Plate Helm
											100118,	-- Tyrannical Gladiator's Plate Legguards
											100071,	-- Tyrannical Gladiator's Plate Shoulders
										},
									},
								}),
								i(100114, {	-- Tyrannical Gladiator's Plate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(99992, {	-- Tyrannical Gladiator's Plate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99993, {	-- Tyrannical Gladiator's Plate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100118, {	-- Tyrannical Gladiator's Plate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(100071, {	-- Tyrannical Gladiator's Plate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							n(BACK, {
								i(100091, {	-- Tyrannical Gladiator's Cape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100025, {	-- Tyrannical Gladiator's Cape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100155, {	-- Tyrannical Gladiator's Cloak of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100156, {	-- Tyrannical Gladiator's Cloak of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100053, {	-- Tyrannical Gladiator's Drape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100142, {	-- Tyrannical Gladiator's Drape of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100158, {	-- Tyrannical Gladiator's Drape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WRIST, {
								i(100004, {	-- Tyrannical Gladiator's Armbands of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100049, {	-- Tyrannical Gladiator's Armbands of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100157, {	-- Tyrannical Gladiator's Armplates of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100088, {	-- Tyrannical Gladiator's Armplates of Proficiency
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100097, {	-- Tyrannical Gladiator's Armwraps of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100140, {	-- Tyrannical Gladiator's Armwraps of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100077, {	-- Tyrannical Gladiator's Bindings of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100109, {	-- Tyrannical Gladiator's Bindings of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100151, {	-- Tyrannical Gladiator's Bracers of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100081, {	-- Tyrannical Gladiator's Bracers of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100073, {	-- Tyrannical Gladiator's Cuffs of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100050, {	-- Tyrannical Gladiator's Cuffs of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100119, {	-- Tyrannical Gladiator's Cuffs of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100139, {	-- Tyrannical Gladiator's Wristguards of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100074, {	-- Tyrannical Gladiator's Wristguards of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WAIST, {
								i(100080, {	-- Tyrannical Gladiator's Belt of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100161, {	-- Tyrannical Gladiator's Belt of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100150, {	-- Tyrannical Gladiator's Clasp of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100134, {	-- Tyrannical Gladiator's Clasp of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100046, {	-- Tyrannical Gladiator's Cord of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100070, {	-- Tyrannical Gladiator's Cord of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100095, {	-- Tyrannical Gladiator's Cord of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100023, {	-- Tyrannical Gladiator's Girdle of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100110, {	-- Tyrannical Gladiator's Girdle of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100028, {	-- Tyrannical Gladiator's Links of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(99991, {	-- Tyrannical Gladiator's Links of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100094, {	-- Tyrannical Gladiator's Waistband of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100030, {	-- Tyrannical Gladiator's Waistband of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100063, {	-- Tyrannical Gladiator's Waistguard of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(100052, {	-- Tyrannical Gladiator's Waistguard of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(FEET, {
								i(100102, {	-- Tyrannical Gladiator's Boots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100044, {	-- Tyrannical Gladiator's Boots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100014, {	-- Tyrannical Gladiator's Footguards of Alacrity (Leahter)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100048, {	-- Tyrannical Gladiator's Footguards of Alacrity (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100146, {	-- Tyrannical Gladiator's Footguards of Meditation (Leather)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100001, {	-- Tyrannical Gladiator's Footguards of Meditation (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100021, {	-- Tyrannical Gladiator's Greaves of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100022, {	-- Tyrannical Gladiator's Greaves of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100029, {	-- Tyrannical Gladiator's Sabatons of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100115, {	-- Tyrannical Gladiator's Sabatons of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(99994, {	-- Tyrannical Gladiator's Treads of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100072, {	-- Tyrannical Gladiator's Treads of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100138, {	-- Tyrannical Gladiator's Treads of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100131, {	-- Tyrannical Gladiator's Warboots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(100084, {	-- Tyrannical Gladiator's Warboots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
						},
					}),
					n(78461, {	-- Shonn Su (Prideful Gladiator Vendor)
						["coord"] = { 35.4, 83.2, KUN_LAI_SUMMIT },
						["races"] = HORDE_ONLY,
						["g"] = {
							elitepvp(i(120286, {	-- Enchanter's Illusion - Glorious Tyranny (ILLUSION!)
								["timeline"] = { ADDED_6_0_2 },
							})),
							n(WEAPONS, {
								i(144250, {	-- Arsenal: Prideful Gladiator's Weapons (A)
									["cost"] = { { "i", 137642, 80 } },	-- 80x Mark of Honor
									["sym"] = {
										{"sub", "pvp_weapons_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_ALLIANCE, PVP_GLADIATOR },
									},
								}),
								i(103364, {	-- Prideful Gladiator's Barrier
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103507, {	-- Prideful Gladiator's Baton of Light
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103366, {	-- Prideful Gladiator's Battle Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103509, {	-- Prideful Gladiator's Bonecracker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103339, {	-- Prideful Gladiator's Cleaver
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103336, {	-- Prideful Gladiator's Decapitator
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103363, {	-- Prideful Gladiator's Endgame
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103406, {	-- Prideful Gladiator's Energy Staff
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103404, {	-- Prideful Gladiator's Gavel
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103338, {	-- Prideful Gladiator's Greatsword
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103508, {	-- Prideful Gladiator's Hacker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103350, {	-- Prideful Gladiator's Longbow
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103504, {	-- Prideful Gladiator's Mageblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103461, {	-- Prideful Gladiator's Pike
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103340, {	-- Prideful Gladiator's Pummeler
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103341, {	-- Prideful Gladiator's Quickblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103405, {	-- Prideful Gladiator's Redoubt
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103503, {	-- Prideful Gladiator's Render
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103373, {	-- Prideful Gladiator's Reprieve
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103403, {	-- Prideful Gladiator's Rifle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103502, {	-- Prideful Gladiator's Ripper
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103501, {	-- Prideful Gladiator's Shanker
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103519, {	-- Prideful Gladiator's Shield Wall
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103510, {	-- Prideful Gladiator's Slicer
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103365, {	-- Prideful Gladiator's Spellblade
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
								i(103374, {	-- Prideful Gladiator's Touch of Defeat
									["cost"] = { { "i",  137642, 5 } },	-- 5x Mark of Honor
								}),
							}),
							cl(DEATHKNIGHT, {
								i(138640, {	-- Ensemble: Prideful Gladiator's Dreadplate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, DEATHKNIGHT },
										{"select", "itemID",
											103460,	-- Prideful Gladiator's Armplates of Alacrity
											103455,	-- Prideful Gladiator's Girdle of Accuracy
											103458,	-- Prideful Gladiator's Warboots of Alacrity
										},
									},
								}),
								i(103376, {	-- Prideful Gladiator's Dreadplate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103377, {	-- Prideful Gladiator's Dreadplate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103378, {	-- Prideful Gladiator's Dreadplate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103379, {	-- Prideful Gladiator's Dreadplate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103380, {	-- Prideful Gladiator's Dreadplate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(DRUID, {
								i(138648, {	-- Ensemble: Prideful Gladiator's Dragonhide Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_TYRANNICAL, FACTION_HEADER_HORDE, PVP_GLADIATOR, DRUID },
										{"select", "itemID",
											103388,	-- Prideful Gladiator's Bindings of Meditation
											103397,	-- Prideful Gladiator's Bindings of Prowess
											103395,	-- Prideful Gladiator's Belt of Cruelty
											103386,	-- Prideful Gladiator's Belt of Meditation
											103396,	-- Prideful Gladiator's Footguards of Alacrity (Leather)
											103387,	-- Prideful Gladiator's Footguards of Meditation (Leather)
										},
									},
								}),
								i(103381, {	-- Prideful Gladiator's Dragonhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103382, {	-- Prideful Gladiator's Dragonhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103383, {	-- Prideful Gladiator's Dragonhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103384, {	-- Prideful Gladiator's Dragonhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103385, {	-- Prideful Gladiator's Dragonhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103389, {	-- Prideful Gladiator's Kodohide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103390, {	-- Prideful Gladiator's Kodohide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103391, {	-- Prideful Gladiator's Kodohide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103392, {	-- Prideful Gladiator's Kodohide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103393, {	-- Prideful Gladiator's Kodohide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103398, {	-- Prideful Gladiator's Wyrmhide Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103399, {	-- Prideful Gladiator's Wyrmhide Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103400, {	-- Prideful Gladiator's Wyrmhide Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103401, {	-- Prideful Gladiator's Wyrmhide Robes
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103402, {	-- Prideful Gladiator's Wyrmhide Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(HUNTER, {
								i(138646, {	-- Ensemble: Prideful Gladiator's Chain Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, HUNTER },
										{"select", "itemID",
											103415,	-- Prideful Gladiator's Wristguards of Accuracy
											103414,	-- Prideful Gladiator's Wristguards of Alacrity
											103411,	-- Prideful Gladiator's Links of Accuracy
											103410,	-- Prideful Gladiator's Links of Cruelty
											103413,	-- Prideful Gladiator's Sabatons of Alacrity
											103412,	-- Prideful Gladiator's Sabatons of Cruelty
										},
									},
								}),
								i(103416, {	-- Prideful Gladiator's Chain Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103417, {	-- Prideful Gladiator's Chain Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103418, {	-- Prideful Gladiator's Chain Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103419	, {	-- Prideful Gladiator's Chain Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103420, {	-- Prideful Gladiator's Chain Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(MAGE, {
								i(138654, {	-- Ensemble: Prideful Gladiator's Silk Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, MAGE },
										{"select", "itemID",
											103358,	-- Prideful Gladiator's Cuffs of Prowess
											103351,	-- Prideful Gladiator's Cord of Cruelty
											103354,	-- Prideful Gladiator's Treads of Cruelty
										},
									},
								}),
								i(103425, {	-- Prideful Gladiator's Silk Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103422, {	-- Prideful Gladiator's Silk Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103421, {	-- Prideful Gladiator's Silk Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103424, {	-- Prideful Gladiator's Silk Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103423, {	-- Prideful Gladiator's Silk Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(MONK, {
								i(138650, {	-- Ensemble: Prideful Gladiator's Ironskin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, MONK },
										{"select", "itemID",
											103428,	-- Prideful Gladiator's Armwraps of Accuracy
											103426,	-- Prideful Gladiator's Waistband of Cruelty
											103427,	-- Prideful Gladiator's Boots of Alacrity
										},
									},
								}),
								i(103434, {	-- Prideful Gladiator's Copperskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103435, {	-- Prideful Gladiator's Copperskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103436, {	-- Prideful Gladiator's Copperskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103437, {	-- Prideful Gladiator's Copperskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103438, {	-- Prideful Gladiator's Copperskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103429, {	-- Prideful Gladiator's Ironskin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103430, {	-- Prideful Gladiator's Ironskin Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103431, {	-- Prideful Gladiator's Ironskin Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103432, {	-- Prideful Gladiator's Ironskin Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103433, {	-- Prideful Gladiator's Ironskin Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(PALADIN, {
								i(138642, {	-- Ensemble: Prideful Gladiator's Scaled Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, PALADIN },
										{"select", "itemID",
											103449,	-- Prideful Gladiator's Bracers of Meditation
											103448,	-- Prideful Gladiator's Bracers of Prowess
											103444,	-- Prideful Gladiator's Clasp of Cruelty
											103445,	-- Prideful Gladiator's Clasp of Meditation
											103446,	-- Prideful Gladiator's Greaves of Alacrity
											103447,	-- Prideful Gladiator's Greaves of Meditation
										},
									},
								}),
								i(103450, {	-- Prideful Gladiator's Ornamented Chestguard
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103451, {	-- Prideful Gladiator's Ornamented Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103452, {	-- Prideful Gladiator's Ornamented Headcover
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103453, {	-- Prideful Gladiator's Ornamented Legplates
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103454, {	-- Prideful Gladiator's Ornamented Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103439, {	-- Prideful Gladiator's Scaled Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103440, {	-- Prideful Gladiator's Scaled Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103441, {	-- Prideful Gladiator's Scaled Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103442, {	-- Prideful Gladiator's Scaled Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103443, {	-- Prideful Gladiator's Scaled Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(PRIEST, {
								i(138656, {	-- Ensemble: Prideful Gladiator's Satin Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, PRIEST },
										{"select", "itemID",
											103359,	-- Prideful Gladiator's Cuffs of Meditation
											103353,	-- Prideful Gladiator's Cord of Meditation
											147362,	-- Prideful Gladiator's Cord of Prowess
											103356,	-- Prideful Gladiator's Treads of Meditation
										},
									},
								}),
								i(103462, {	-- Prideful Gladiator's Mooncloth Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103463, {	-- Prideful Gladiator's Mooncloth Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103464, {	-- Prideful Gladiator's Mooncloth Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103466, {	-- Prideful Gladiator's Mooncloth Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103465, {	-- Prideful Gladiator's Mooncloth Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103467, {	-- Prideful Gladiator's Satin Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103468, {	-- Prideful Gladiator's Satin Hood
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103469, {	-- Prideful Gladiator's Satin Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103471, {	-- Prideful Gladiator's Satin Mantle
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103470, {	-- Prideful Gladiator's Satin Robe
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(ROGUE, {
								i(138652, {	-- Ensemble: Prideful Gladiator's Leather Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, ROGUE },
										{"select", "itemID",
											103428,	-- Prideful Gladiator's Armwraps of Alacrity
											103472,	-- Prideful Gladiator's Waistband of Accuracy
											103473,	-- Prideful Gladiator's Boots of Cruelty
										},
									},
								}),
								i(103476, {	-- Prideful Gladiator's Leather Gloves
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103477, {	-- Prideful Gladiator's Leather Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103478, {	-- Prideful Gladiator's Leather Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103479, {	-- Prideful Gladiator's Leather Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103475, {	-- Prideful Gladiator's Leather Tunic
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(SHAMAN, {
								i(138644, {	-- Ensemble: Prideful Gladiator's Ringmail Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, SHAMAN },
										{"select", "itemID",
											103484,	-- Prideful Gladiator's Armbands of Meditation
											103483,	-- Prideful Gladiator's Armbands of Prowess
											103495,	-- Prideful Gladiator's Waistguard of Cruelty
											103480,	-- Prideful Gladiator's Waistguard of Meditation
											103481,	-- Prideful Gladiator's Footguards of Alacrity (Mail)
											103482,	-- Prideful Gladiator's Footguards of Meditation (Mail)
										},
									},
								}),
								i(103490, {	-- Prideful Gladiator's Linked Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103491, {	-- Prideful Gladiator's Linked Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103492, {	-- Prideful Gladiator's Linked Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103493, {	-- Prideful Gladiator's Linked Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103494, {	-- Prideful Gladiator's Linked Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103496, {	-- Prideful Gladiator's Mail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103497, {	-- Prideful Gladiator's Mail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103498, {	-- Prideful Gladiator's Mail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103499, {	-- Prideful Gladiator's Mail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103500, {	-- Prideful Gladiator's Mail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103485, {	-- Prideful Gladiator's Ringmail Armor
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103486, {	-- Prideful Gladiator's Ringmail Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103487, {	-- Prideful Gladiator's Ringmail Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103488, {	-- Prideful Gladiator's Ringmail Leggings
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103489, {	-- Prideful Gladiator's Ringmail Spaulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							cl(WARLOCK, {
								i(138658, {	-- Ensemble: Prideful Gladiator's Felweave Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARLOCK },
										{"select", "itemID",
											103357,	-- Prideful Gladiator's Cuffs of Accuracy
											103352,	-- Prideful Gladiator's Cord of Accuracy
											103355,	-- Prideful Gladiator's Treads of Alacrity
										},
									},
								}),
								i(103524, {	-- Prideful Gladiator's Felweave Amice
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103521, {	-- Prideful Gladiator's Felweave Cowl
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103520, {	-- Prideful Gladiator's Felweave Handguards
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103523, {	-- Prideful Gladiator's Felweave Raiment
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103522, {	-- Prideful Gladiator's Felweave Trousers
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
							}),
							cl(WARRIOR, {
								i(138638, {	-- Ensemble: Prideful Gladiator's Plate Armor
									["cost"] = { { "i", 137642, 12 } },	-- 12x Mark of Honor
									["sym"] = {
										{"sub", "pvp_set_ensemble", EXPANSION.MOP, SEASON_PRIDEFUL, FACTION_HEADER_HORDE, PVP_GLADIATOR, WARRIOR },
										{"select", "itemID",
											103459,	-- Prideful Gladiator's Armplates of Proficiency
											103456,	-- Prideful Gladiator's Girdle of Prowess
											103457,	-- Prideful Gladiator's Warboots of Cruelty
										},
									},
								}),
								i(103525, {	-- Prideful Gladiator's Plate Chestpiece
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103526, {	-- Prideful Gladiator's Plate Gauntlets
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103527, {	-- Prideful Gladiator's Plate Helm
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103528, {	-- Prideful Gladiator's Plate Legguards
									["cost"] = { { "i",  137642, 3 } },	-- 3x Mark of Honor
								}),
								i(103529, {	-- Prideful Gladiator's Plate Shoulders
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
							n(BACK, {
								-- From Celestials/Vendor
								i(103343, {	-- Prideful Gladiator's Cape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103344, {	-- Prideful Gladiator's Cape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103512, {	-- Prideful Gladiator's Cloak of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103513, {	-- Prideful Gladiator's Cloak of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103360, {	-- Prideful Gladiator's Drape of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103362, {	-- Prideful Gladiator's Drape of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103361, {	-- Prideful Gladiator's Drape of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WRIST, {
								-- From Celestials/Vendor
								i(103484, {	-- Prideful Gladiator's Armbands of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103483, {	-- Prideful Gladiator's Armbands of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103460, {	-- Prideful Gladiator's Armplates of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103459, {	-- Prideful Gladiator's Armplates of Proficiency
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103428, {	-- Prideful Gladiator's Armwraps of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103474, {	-- Prideful Gladiator's Armwraps of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103388, {	-- Prideful Gladiator's Bindings of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103397, {	-- Prideful Gladiator's Bindings of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103449, {	-- Prideful Gladiator's Bracers of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103448, {	-- Prideful Gladiator's Bracers of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103357, {	-- Prideful Gladiator's Cuffs of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103359, {	-- Prideful Gladiator's Cuffs of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103358, {	-- Prideful Gladiator's Cuffs of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103415, {	-- Prideful Gladiator's Wristguards of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103414, {	-- Prideful Gladiator's Wristguards of Alacrity
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(WAIST, {
								-- From Celestials/Vendor
								i(103395, {	-- Prideful Gladiator's Belt of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103386, {	-- Prideful Gladiator's Belt of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103444, {	-- Prideful Gladiator's Clasp of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103445, {	-- Prideful Gladiator's Clasp of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103352, {	-- Prideful Gladiator's Cord of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103351, {	-- Prideful Gladiator's Cord of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103353, {	-- Prideful Gladiator's Cord of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103455, {	-- Prideful Gladiator's Girdle of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103456, {	-- Prideful Gladiator's Girdle of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103411, {	-- Prideful Gladiator's Links of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103410, {	-- Prideful Gladiator's Links of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103472, {	-- Prideful Gladiator's Waistband of Accuracy
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103426, {	-- Prideful Gladiator's Waistband of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103495, {	-- Prideful Gladiator's Waistguard of Cruelty
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								i(103480, {	-- Prideful Gladiator's Waistguard of Meditation
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
								-- Vendor added in 7.2 only on horde side
								i(147362, {	-- Prideful Gladiator's Cord of Prowess
									["cost"] = { { "i",  137642, 1 } },	-- 1x Mark of Honor
								}),
							}),
							n(FEET, {
								-- From Celestials/Vendor
								i(103427, {	-- Prideful Gladiator's Boots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103473, {	-- Prideful Gladiator's Boots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103396, {	-- Prideful Gladiator's Footguards of Alacrity (Leahter)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103481, {	-- Prideful Gladiator's Footguards of Alacrity (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103387, {	-- Prideful Gladiator's Footguards of Meditation (Leather)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103482, {	-- Prideful Gladiator's Footguards of Meditation (Mail)
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103446, {	-- Prideful Gladiator's Greaves of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103447, {	-- Prideful Gladiator's Greaves of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103413, {	-- Prideful Gladiator's Sabatons of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103412, {	-- Prideful Gladiator's Sabatons of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103355, {	-- Prideful Gladiator's Treads of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103354, {	-- Prideful Gladiator's Treads of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103356, {	-- Prideful Gladiator's Treads of Meditation
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103458, {	-- Prideful Gladiator's Warboots of Alacrity
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
								i(103457, {	-- Prideful Gladiator's Warboots of Cruelty
									["cost"] = { { "i",  137642, 2 } },	-- 2x Mark of Honor
								}),
							}),
						},
					}),
					n(61749, {	-- The Metal Paw <Adventuring Supplies>
						["coord"] = { 71.4, 92.1, KUN_LAI_SUMMIT },
						["g"] = {
							i(82690),	-- Mountainscaler Amulet
							i(82685),	-- Mountainscaler Armored Bracers
							i(82640),	-- Mountainscaler Armored Chestpiece
							i(82676),	-- Mountainscaler Armored Gauntlets
							i(82667),	-- Mountainscaler Armored Girdle
							i(82622),	-- Mountainscaler Armored Helm
							i(82649),	-- Mountainscaler Armored Legguards
							i(82631),	-- Mountainscaler Armored Shoulders
							i(82658),	-- Mountainscaler Armored Warboots
							i(82721),	-- Mountainscaler Axe
							i(82700),	-- Mountainscaler Badge
							i(82691),	-- Mountainscaler Band
							i(82718),	-- Mountainscaler Barrier
							i(82709),	-- Mountainscaler Battlemace
							i(82720),	-- Mountainscaler Blade
							i(82680),	-- Mountainscaler Burnished Bracers
							i(82635),	-- Mountainscaler Burnished Chestguard
							i(82662),	-- Mountainscaler Burnished Clasp
							i(82671),	-- Mountainscaler Burnished Gloves
							i(82653),	-- Mountainscaler Burnished Greaves
							i(82617),	-- Mountainscaler Burnished Headcover
							i(82644),	-- Mountainscaler Burnished Legplates
							i(82626),	-- Mountainscaler Burnished Spaulders
							i(82703),	-- Mountainscaler Cape
							i(82638),	-- Mountainscaler Chain Armor
							i(82674),	-- Mountainscaler Chain Gauntlets
							i(82620),	-- Mountainscaler Chain Helm
							i(82647),	-- Mountainscaler Chain Leggings
							i(82665),	-- Mountainscaler Chain Links
							i(82656),	-- Mountainscaler Chain Sabatons
							i(82629),	-- Mountainscaler Chain Spaulders
							i(82683),	-- Mountainscaler Chain Wristguards
							i(82687),	-- Mountainscaler Choker
							i(82705),	-- Mountainscaler Cloak
							i(82708),	-- Mountainscaler Combat Staff
							i(82711),	-- Mountainscaler Crossbow
							i(82714),	-- Mountainscaler Dagger
							i(82707),	-- Mountainscaler Diviner's Rod
							i(82702),	-- Mountainscaler Drape
							i(82698),	-- Mountainscaler Emblem
							i(82716),	-- Mountainscaler Greatsword
							i(82710),	-- Mountainscaler Handaxe
							i(82684),	-- Mountainscaler Heavy Armplates
							i(82639),	-- Mountainscaler Heavy Chestpiece
							i(82675),	-- Mountainscaler Heavy Gauntlets
							i(82666),	-- Mountainscaler Heavy Girdle
							i(82621),	-- Mountainscaler Heavy Helm
							i(82648),	-- Mountainscaler Heavy Legguards
							i(82630),	-- Mountainscaler Heavy Shoulders
							i(82657),	-- Mountainscaler Heavy Warboots
							i(82660),	-- Mountainscaler Hide Belt
							i(82678),	-- Mountainscaler Hide Bindings
							i(82651),	-- Mountainscaler Hide Footguards
							i(82669),	-- Mountainscaler Hide Gloves
							i(82615),	-- Mountainscaler Hide Helm
							i(82642),	-- Mountainscaler Hide Legguards
							i(82633),	-- Mountainscaler Hide Robes
							i(82624),	-- Mountainscaler Hide Spaulders
							i(82699),	-- Mountainscaler Insignia
							i(82682),	-- Mountainscaler Leather Armwraps
							i(82664),	-- Mountainscaler Leather Belt
							i(82655),	-- Mountainscaler Leather Boots
							i(82673),	-- Mountainscaler Leather Gloves
							i(82619),	-- Mountainscaler Leather Helm
							i(82646),	-- Mountainscaler Leather Legguards
							i(82628),	-- Mountainscaler Leather Spaulders
							i(82637),	-- Mountainscaler Leather Tunic
							i(82686),	-- Mountainscaler Locket
							i(82693),	-- Mountainscaler Loop
							i(82717),	-- Mountainscaler Mace
							i(82704),	-- Mountainscaler Manteau
							i(82696),	-- Mountainscaler Mark
							i(82697),	-- Mountainscaler Medal
							i(82706),	-- Mountainscaler Meditation Staff
							i(82688),	-- Mountainscaler Necklace
							i(82689),	-- Mountainscaler Pendant
							i(82692),	-- Mountainscaler Ring
							i(82679),	-- Mountainscaler Ringmail Armbands
							i(82634),	-- Mountainscaler Ringmail Armor
							i(82670),	-- Mountainscaler Ringmail Gauntlets
							i(82616),	-- Mountainscaler Ringmail Helm
							i(82643),	-- Mountainscaler Ringmail Leggings
							i(82652),	-- Mountainscaler Ringmail Sabatons
							i(82625),	-- Mountainscaler Ringmail Spaulders
							i(82661),	-- Mountainscaler Ringmail Waistguard
							i(82712),	-- Mountainscaler Saber
							i(82659),	-- Mountainscaler Satin Cord
							i(82677),	-- Mountainscaler Satin Cuffs
							i(82668),	-- Mountainscaler Satin Gloves
							i(82614),	-- Mountainscaler Satin Hood
							i(82641),	-- Mountainscaler Satin Leggings
							i(82623),	-- Mountainscaler Satin Mantle
							i(82632),	-- Mountainscaler Satin Robe
							i(82650),	-- Mountainscaler Satin Treads
							i(82713),	-- Mountainscaler Scepter
							i(82695),	-- Mountainscaler Seal
							i(82701),	-- Mountainscaler Shawl
							i(82719),	-- Mountainscaler Shield
							i(82694),	-- Mountainscaler Signet
							i(82627),	-- Mountainscaler Silk Amice
							i(82663),	-- Mountainscaler Silk Cord
							i(82618),	-- Mountainscaler Silk Cowl
							i(82681),	-- Mountainscaler Silk Cuffs
							i(82672),	-- Mountainscaler Silk Handguards
							i(82636),	-- Mountainscaler Silk Robe
							i(82654),	-- Mountainscaler Silk Treads
							i(82645),	-- Mountainscaler Silk Trousers
							i(82715),	-- Mountainscaler Smasher
						},
					}),
					n(64518, {	-- Uncle Bigpocket <Used Yak Salesgrummle>
						["coord"] = { 65.4, 61.6, KUN_LAI_SUMMIT },
						["g"] = {
							i(87789, {	-- Blonde Riding Yak (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
							i(84101, {	-- Grand Expedition Yak (MOUNT!)
								["cost"] = 1200000000,	-- 120,000g
							}),
							i(87788, {	-- Grey Riding Yak (MOUNT!)
								["cost"] = 30000000,	-- 3,000g
							}),
						},
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(KUN_LAI_SUMMIT, {
			n(QUESTS, {
				q(30453),	-- Binan Village Intro Event Tracking Event - triggeres when flying into Binan village through the Ancient Passage on mount
				q(31310),	-- Interrogation Tracking - triggers during "Revelations" (questID 30946)
				q(30854),	-- Lha-Po Tracking Quest - triggers after turning in "One Traveler's Misfortune" (questID 30683)
				q(31205),	-- Lorewalker Cho Tracking Quest - triggers after turning in "Fisherman's Tale" (questID 30935)
				q(31300),	-- Shomi Beach Tracking - triggeres shortly after killing Captain Ripflesh during "Justice" (questID 30805)
				q(31299),	-- Shomi Ruins Tracking - triggers when you walk into the Zandalari Vanguard Ruins / Zouchin Village
				q(31301),	-- Shomi Strand Tracking - triggers when you find Sage Liao in Zouchin Strand
				q(31463),	-- Spirit of Anger Defeated - triggers after second test during "A Celestial Experience" (questID 31394 & 31395)
				q(31462),	-- Spirit of Violence Defeated - triggers after first test during "A Celestial Experience" (questID 31394 & 31395)
				q(31461),	-- Spoke to Xuen - triggers during "A Celestial Experience" (questID 31394 & 31395)
				q(31464),	-- Opposing Faction Leader Defeated - triggers after third test during "A Celestial Experience" (questID 31394 & 31395)
				q(30647),	-- Tracking Quest: Opened the Golden Valley - triggers when the gates to the Vale of Eternal Blossom are opened
				q(31807),	-- Tracking Quest: Opened the Golden Valley II - triggers after the dialog finishes with the 4 celestials at the gates
				q(31298),	-- Zouchin Village - Intro Tracking
			}),
		}),
	}),
})));