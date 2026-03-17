---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

LEGENDS_OF_THE_HARANIR = createHeader({
	readable = "Legends of the Haranir",
	icon = 7491037,
	text = {
		en = "Legends of the Haranir",
		de = "Legenden der Haranir",
		es = "Leyendas de los haranir",
		mx = "Leyendas de los haranir",
		fr = "Légendes des Haranir",
		it = "Leggende degli Haranir",
		ko = "하라니르의 전설",
		pt = "Lendas dos Haranir",
		ru = "Легенды хараниров",
		cn = "哈籁尼尔的传说",
		tw = "哈拉尼爾的傳說",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(LEGENDS_OF_THE_HARANIR, {
			n(ACHIEVEMENTS, {
				ach(61344, {	-- Chronicler of the Haranir
					title(680),	-- <Name>, Chronicler of the Haranir
				}),
                ach(61574, {	-- Legends Never Die
					i(264259),	-- On'ohia's Call (DECOR!)
				}),
                ach(42278),	-- The Empty Cradle
			}),
			n(QUESTS, bubbleDownFiltered({ ["isWeekly"] = true },FILTERFUNC_questID,{	-- Legends Never Die
				q(89268, {	-- Lost Legends
					["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
					["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
				}),
				header(HEADERS.AchCriteria, 61574.01, {	-- Wey'nan's Ward
					q(88993, {	-- Wey'nan's Ward
						["sourceQuest"] = 89268,	-- Lost Legends
						["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
						["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(263037) },	-- Replica Wey'nan's Ward (DECOR!)
					}),
					q(90536, {	-- The Tale of Wey'nan's Ward
						["description"] = "This 'Bonus Objective' is triggered after you interact with Ancient Visionstone and embark on a Vision Walk.",
						["sourceQuest"] = 88993,	-- Wey'nan's Ward
						["provider"] = { "n", 241117 },	-- Ancient Visionstone
						["coord"] = { 44.3, 38.3, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(531174, {	-- Fragrant Mushroom
								["coords"] = {
									{ 41.1, 35.9, MAP.MIDNIGHT.HARANDAR },
									{ 41.3, 34.9, MAP.MIDNIGHT.HARANDAR },
									{ 41.4, 36.2, MAP.MIDNIGHT.HARANDAR },
									{ 41.5, 35.4, MAP.MIDNIGHT.HARANDAR },
									{ 41.7, 36.3, MAP.MIDNIGHT.HARANDAR },
									{ 41.8, 36.5, MAP.MIDNIGHT.HARANDAR },
								},
								["groups"] = { i(241349) },	-- Fragrant Mushroom Cap (QI!)
							}),
							i(241611),	-- Zarat's Head (QI!)
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61574.02, {	-- The Cauldron of Echoes
					q(88994, {	-- The Cauldron of Echoes
						["sourceQuest"] = 89268,	-- Lost Legends
						["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
						["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(263315) },	-- Bubbling Haranir Cauldron (DECOR!)
					}),
					q(90889, {	-- Tale of the Echoes of Sai'alyo
						["description"] = "This 'Bonus Objective' is triggered after you interact with Ancient Visionstone and embark on a Vision Walk.",
						["sourceQuest"] = 88994,	-- The Cauldron of Echoes
						["provider"] = { "n", 245531 },	-- Ancient Visionstone
						["coord"] = { 61.6, 20.6, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							i(243589),	-- Alndust (QI!)
							i(243584),	-- Amethryl Petals (QI!)
							i(243583),	-- Iridescent Carapace (QI!)
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61574.03, {	-- Aln'hara's Bloom
					q(88995, {	-- Aln'hara's Bloom
						["sourceQuest"] = 89268,	-- Lost Legends
						["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
						["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(263196) },	-- Harandar Glowvine Lantern (DECOR!)
					}),
					q(91492, {	-- The Tale of Aln'hara's Bloom
						["description"] = "This 'Bonus Objective' is triggered after you interact with Ancient Visionstone and embark on a Vision Walk.",
						["sourceQuest"] = 88995,	-- Aln'hara's Bloom
						["provider"] = { "n", 241541 },	-- Ancient Visionstone
						["coord"] = { 54.7, 65.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = {
							o(564560, {	-- Aln'hara's Bloom
								["coord"] = { 55.8, 67.0, MAP.MIDNIGHT.HARANDAR },
								["groups"] = { i(248139) },	-- Aln'hara's Bloom (QI!)
							}),
						},
					}),
				}),
				header(HEADERS.AchCriteria, 61574.04, {	-- The Echoless Flame
					q(88996, {	-- The Echoless Flame
						["sourceQuest"] = 89268,	-- Lost Legends
						["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
						["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(264262) },	-- Haranir Whistling Arrow (DECOR!)
					}),
					q(91506, {	-- Tale of the First Shul'ka and the Flame
						["description"] = "This 'Bonus Objective' is triggered after you interact with Ancient Visionstone and embark on a Vision Walk.",
						["sourceQuest"] = 88996,	-- The Echoless Flame
						["provider"] = { "n", 241836 },	-- Ancient Visionstone
						["coord"] = { 64.6, 38.6, MAP.MIDNIGHT.HARANDAR },
					}),
				}),
				header(HEADERS.AchCriteria, 61574.05, {	-- Russula's Outreach
					q(88997, {	-- Russula's Outreach
						["sourceQuest"] = 89268,	-- Lost Legends
						["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
						["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
						["groups"] = { i(262906) },	-- Harandar Anvil (DECOR!)
					}),
					q(91507, {	-- The Tale of Russula
						["description"] = "This 'Bonus Objective' is triggered after you interact with Ancient Visionstone and embark on a Vision Walk.",
						["sourceQuest"] = 88997,	-- Russula's Outreach
						["provider"] = { "n", 241836 },	-- Ancient Visionstone
						["coord"] = { 64.6, 38.6, MAP.MIDNIGHT.HARANDAR },
					}),
				}),
				--header(HEADERS.AchCriteria, 61574.06, {	-- Root of the World
				--}),
				--header(HEADERS.AchCriteria, 61574.07, {	-- Sky's Hope
				--}),
			})),
            n(QUESTS, {
                header(HEADERS.Achievement, 42278, {	-- The Empty Cradle
                    -- Exo Note: Achievement has 4 criteria, hence I suspect it has 4 quests that need to be completed on the same character. They unlock by Completing the Relic quests from 'Legends Never Die'
                    q(90733, {	-- The Listener
                        ["sourceQuests"] = {
                            88995,	-- Aln'hara's Bloom
                            88997,	-- Russula's Outreach
                            88994,	-- The Cauldron of Echoes
                            88996,	-- The Echoless Flame
                            88993,	-- Wey'nan's Ward
                        },
                        ["sourceQuestNumRequired"] = 1,
                        ["provider"] = { "n", 238170 },	-- Zur'ashar Kassameh
                        ["coord"] = { 54.2, 53.1, MAP.MIDNIGHT.HARANDAR },
                    }),
                }),
            }),
			n(REWARDS, {
                i(269703, {	-- Avid Learner's Supply Pack
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
                i(268487, {	-- Avid Learner's Supply Pack (Pre-Season)
					["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_X_SEASONSTART },
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
                i(263467, {	-- Avid Learner's Supply Pack (Season 1)
					["timeline"] = { ADDED_12_0_X_SEASONSTART, REMOVED_12_1_0 },
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
			}),
            n(TREASURES, {
                ["lore"] = "Discover all of the lore objects found within the Legends of the Haranir relic stories.",
				["description"] = "You need to be on the respective 'Legends Never Die' Quest in order to see the lore objects. You can discover 3 of them per week.",
				["groups"] = {
					o(579236, {	-- Echoes of Our Past--Part 1: Fading History
						["sourceQuest"] = 88994,	-- The Cauldron of Echoes
						["coord"] = { 60.0, 20.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93475,
					}),
					o(579237, {	-- Echoes of Our Past--Part 2: Alndust
						["sourceQuest"] = 88994,	-- The Cauldron of Echoes
						["coord"] = { 59.7, 18.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93474,
					}),
					o(579238, {	-- Echoes of Our Past--Part 3: Dangerous Memories
						["sourceQuest"] = 88994,	-- The Cauldron of Echoes
						["coord"] = { 61.1, 16.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93473,
					}),
					o(579233, {	-- Lament of Wey'nan--Part 1: Finding Hope
						["sourceQuest"] = 88993,	-- Wey'nan's Ward
						["coord"] = { 43.2, 37.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93470,
					}),
					o(579234, {	-- Lament of Wey'nan--Part 2: Hunting Purpose
						["sourceQuest"] = 88993,	-- Wey'nan's Ward
						["coord"] = { 41.6, 35.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93471,
					}),
					o(579235, {	-- Lament of Wey'nan--Part 3: There Must Be More
						["sourceQuest"] = 88993,	-- Wey'nan's Ward
						["coord"] = { 42.3, 35.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93472,
					}),
					o(579239, {	-- Seeker's Trail--Part 1: Call of Aln'hara
						["sourceQuest"] = 88995,	-- Aln'hara's Bloom
						["coord"] = { 53.7, 67.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93479,
					}),
					o(579240, {	-- Seeker's Trail--Part 2: Seeking Peace
						["sourceQuest"] = 88995,	-- Aln'hara's Bloom
						["coord"] = { 55.0, 66.3, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93478,
					}),
					o(579241, {	-- Seeker's Trail--Part 3: Unending Mission
						["sourceQuest"] = 88995,	-- Aln'hara's Bloom
						["coord"] = { 55.9, 66.9, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93476,
					}),
					o(579242, {	-- Tending the Lands--Part 1: The Conflict
						["sourceQuest"] = 88997,	-- Russula's Outreach
						["coord"] = { 63.4, 40.1, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93485,
					}),
					o(579243, {	-- Tending the Lands--Part 2: The Plan
						["sourceQuest"] = 88997,	-- Russula's Outreach
						["coord"] = { 61.0, 39.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93484,
					}),
					o(579244, {	-- Tending the Lands--Part 3: The Cycle
						["sourceQuest"] = 88997,	-- Russula's Outreach
						["coord"] = { 61.4, 37.2, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93483,
					}),
					o(579123, {	-- Words of Obayo--Part 1: The Flame
						["sourceQuest"] = 88996,	-- The Echoless Flame
						["coord"] = { 64.9, 38.5, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93482,
					}),
					o(579130, {	-- Words of Obayo--Part 2: The Rift
						["sourceQuest"] = 88996,	-- The Echoless Flame
						["coord"] = { 61.4, 35.0, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93481,
					}),
					o(579131, {	-- Words of Obayo--Part 3: The Silence
						["sourceQuest"] = 88996,	-- The Echoless Flame
						["coord"] = { 62.6, 35.7, MAP.MIDNIGHT.HARANDAR },
						["questID"] = 93480,
					}),
				},
            }),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(LEGENDS_OF_THE_HARANIR, {
				q(89266, name(HEADERS.NPC,241213)),	-- Triggered after chosing 'Wey'nan's Ward' during 'Lost Legends' (89268)
				q(91049, name(HEADERS.NPC,243491)),	-- Triggered after chosing 'Cauldron of Echoes' during 'Lost Legends' (89268)
				q(91516, name(HEADERS.NPC,243540)),	-- Triggered after chosing 'The Echoless Flame' during 'Lost Legends' (89268)
				q(91517, name(HEADERS.NPC,243542)),	-- Triggered after chosing 'Russula's Outreach' during 'Lost Legends' (89268)
				q(91455, name(HEADERS.NPC,243514)),	-- Triggered after chosing 'Aln'hara's Bloom' during 'Lost Legends' (89268)
				q(89284, { ["name"] = "Relic chosen" }),	-- Triggered after selecting a Relic during 'Lost Legends' (89268)
				q(91053, name(HEADERS.Item,263037)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Wey'nan's Ward'
				q(91054, name(HEADERS.Item,263315)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Bubbling Haranir Cauldron'
				q(91511, name(HEADERS.Item,264262)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'The Echoless Flame'
				q(91512, name(HEADERS.Item,262906)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Russula's Outreach'
				q(91456, name(HEADERS.Item,263196)),	-- Triggered after turning in 'Lost Legends' (89268), after chosing 'Aln'hara's Bloom'
			}),
		}),
	}),
}));
