-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

--[[
IMPORTANT!
Lorewalking is a feature that allows players to revisit storylines from Warcraft's past.
This file contains so-called "Wrapper Quests" that start a certain Lorewalking tale and then serve as a pivot from one point in lore to another.
Despite the faction or level identifiers for the quests, all quests while Lorewalking are neutral, have no class requirement, and are available from levels 10-90.
Because the whole point is to tell a specific 'tale', many quests from already established quest chains are taken out of their regular placement and given to players out of their regular order.
For us, that posed a problem because our Contributor Report feature constantly threw errors regarding Inaccurate Quest Data.
For that reason, a function was implemented to suppress such reports because, when it comes to Lorewalking, the reports themselves are inaccurate.
Commit that introduced the function: '5c4a754fb418c49d4a0eae26641bafe0fdcc8f17' with additional refinement in '4413dd9a6d09ac7695e650061cdf7bde826b9abf'

To any and all PTR Surfers working on sourcing new Lorewalking quests:
Before starting anything related to Lorewalking, comment out (--) the entire line containing "GetPlayerAura(463943)" in the file 'Contributor.lua' locally.
That way, you, the contributor, will get the reports of newly introduced Wrapper Quests.
After you have finished your work, discard that change. DO NOT commit that change to the repository.
--]]

local LOREWALKING = createHeader({
	readable = "Lorewalking",
	icon = 441147,--[[~_.asset("Feature_Lorewalking")]]--,	-- TODO Not a real asset file
	text = {
		en = "Lorewalking",
		de = "Lehrensuche",
		es = "Paseo por la historia",
		mx = "Cronoleyenda",
		fr = "Chroniques",
		it = "Cammino della Storia",
		ko = "전승",
		pt = "Trilha das Lendas",
		ru = "Историческая кампания",
		cn = "游学探奇",
		tw = "故事漫遊",
	},
});

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, {
	n(LOREWALKING, {
		cr = 230246,	-- Lorewalker Cho [Pre 12.0.7] // Li Li Stormstout [Post 12.0.7]
		timeline = { ADDED_11_1_7 },
		groups = {
			n(ACHIEVEMENTS, {
				ach(42188, {	-- Lorewalking: Blade's Bane
					i(257355, {	-- Tome of the Survivor (DECOR!)
						timeline = { ADDED_11_2_7 },
					}),
				}),
				ach(42187, {	-- Lorewalking: Ethereal Wisdom
					i(257354, {	-- Scroll of K'aresh's Fall (DECOR!)
						timeline = { ADDED_11_2_7 },
					}),
				}),
				ach(63712, {	-- Lorewalking: Jaina
					timeline = { ADDED_12_1_7 },
					groups = { i(283453) },	-- Tome of the Sea (DECOR!)
				}),
				ach(61467, {	-- Lorewalking: The Elves of Quel'thalas
					timeline = { ADDED_11_2_7 },
					groups = { i(245332) },	-- Tome of Silvermoon Intrigue (DECOR!)
				}),
				ach(42189, {	-- Lorewalking: The Lich King
					i(257351, {	-- Tale of the Penultimate Lich King (DECOR!)
						timeline = { ADDED_11_2_7 },
					}),
				}),
				ach(61442, {	-- Lorewalking: The Loa
					timeline = { ADDED_12_0_7 },
					groups = { i(271971) },	-- Tome of Kings (DECOR!)
				}),
				ach(63691, {	-- Lorewalking: Thrall
					timeline = { ADDED_12_1_7 },
					groups = { i(281626) },	-- Tale of the First Warchief (DECOR!)
				}),
				ach(63710, {	-- Lorewalking: Titans
					timeline = { ADDED_12_1_7 },
					groups = { i(283475) },	-- A Brief History of the Titans (DECOR!)
				}),
				ach(63604, {	-- Lorewalking: Tyr
					timeline = { ADDED_12_1_7 },
					groups = { i(283463) },	-- Origin of the Silver Hand (DECOR!)
				}),
			}),
			n(REWARDS, {
				i(242386,{	-- Lorewalker's Crate of Memorabilia
					sym = {{"select","itemID",171305},{"pop"}},	-- Salvaged Cache of Goods [Party Sync Loot]
				}),
			}),
			n(QUESTS, {
				q(90705, {	-- Lorewalking
					isBreadcrumb = true,	-- speculation
					-- auto-pop at login @ 80s character
				}),
				header(HEADERS.Achievement, 42188, {	-- Lorewalking: Blade's Bane
					q(84371, {	-- Lorewalking: The Blade and the High Priest
						-- Alex: when I picked up this quest - it flag 40706 & 42074 as completed
						qg = 232441,	-- Lorewalker Cho
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
						groups = {
							o(247690, {	-- Xal'atath
								coord = { 58.8, 76.6, 20 },	-- Keeper's Rest
								-- Alex: this is also looted during q:40710
								groups = { i(229361) },	-- Xal'atath, Blade of the Black Empire (QI!)
							}),
						},
					}),
					q(84779, {	-- Lorewalking: The Blade's Gambit
						sourceQuest = 84371,	-- Lorewalking: The Blade and the High Priest
						qg = 231891,	-- Lorewalker Cho
						coord = { 61.5, 71.0, 20 },	-- Keeper's Rest
						isRepeatable = true,
					}),
					q(84782, {	-- Lorewalking: The Blade's Past
						sourceQuest = 84779,	-- Lorewalking: The Blade's Gambit
						qg = 231891,	-- Lorewalker Cho
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
					}),
					q(85871, {	-- Lorewalking: The Blade's Forces
						sourceQuest = 84782,	-- Lorewalking: The Blade's Past
						qg = 230321,	-- Xithixxin
						coord = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						maps = {
							2382,	-- Ny'alotha
							2383,	-- Twilight Landing
							2384,	-- Maw of Gor'ma
						},
						isRepeatable = true,
					}),
					q(84784, {	-- Lorewalking: The Blade's Nemeses
						sourceQuest = 84782,	-- Lorewalking: The Blade's Past
						qg = 230321,	-- Xithixxin
						coord = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						maps = {
							2382,	-- Ny'alotha
							2383,	-- Twilight Landing
							2384,	-- Maw of Gor'ma
						},
						isRepeatable = true,
					}),
					q(84789, {	-- Lorewalking: The Blade's Downfall
						sourceQuests = {
							85871,	-- Lorewalking: The Blade's Forces
							84784,	-- Lorewalking: The Blade's Nemeses
						},
						qg = 230321,	-- Xithixxin
						coord = { 52.5, 73.1, 2381 },	-- Ny'alotha, the Waking City
						maps = { 2379 },	-- Annex of Prophecy
						isRepeatable = true,
						groups = {
							i(244888),	-- Echo of Xal'atath, Blade of the Black Empire (TOY!)
							i(244846),	-- Lorewalker's Notes: Xal'atath, Blade of the Black Empire
						},
					}),
				}),
				header(HEADERS.Achievement, 42187, {	-- Lorewalking: Ethereal Wisdom
					q(85027, {	-- Lorewalking: The Protectorate
						qg = 232441,	-- Lorewalker Cho
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
					}),
					q(85029, {	-- Lorewalking: Locus-Walker
						sourceQuest = 85027,	-- Lorewalking: The Protectorate
						qg = 231702,	-- Lorewalker Cho
						coord = { 60.1, 31.7, NETHERSTORM },
						isRepeatable = true,
					}),
					q(85028, {	-- Lorewalking: The Brokers
						sourceQuest = 85029,	-- Lorewalking: Locus-Walker
						qg = 231702,	-- Lorewalker Cho
						coord = { 28.4, 47.2, EREDATH },
						isRepeatable = true,
					}),
					q(85035, {	-- Locus-Walker, Telogrus Ranger
						sourceQuest = 85028,	-- Lorewalking: The Brokers
						qg = 234111,	-- Om'rajula
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
						qi = 231831,	-- Ve'nari's Parcel (QI!)
					}),
					q(85036, {	-- Veni Vidi Ve'nari
						sourceQuest = 85035,	-- Locus-Walker, Telogrus Ranger
						qg = 231706,	-- Locus-Walker
						coord = { 27.5, 28.3, TELOGRUS_RIFT },
						isRepeatable = true,
						groups = {
							i(245567),	-- K'aresh Memory Crystal (TOY!)
							i(244843),	-- Lorewalker's Notes: The Ethereals
						},
					}),
				}),
				header(HEADERS.Achievement, 63712, {	-- Lorewalking: Jaina
					timeline = { ADDED_12_1_7 },
					groups = {
						q(95421, {	-- Lorewalking: A Bright Young Mage
							qg = 230246,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							maps = { 2716 },	-- Hyjal Summit
							isRepeatable = true,
						}),
						q(95422, {	-- Lorewalking: Tides of War
							sourceQuest = 95421,	-- Lorewalking: A Bright Young Mage
							qg = 261067,	-- Li Li Stormstout
							maps = {
								2716,	-- Hyjal Summit
								2717,	-- Theramore Isle
								2718,	-- Ruins of Theramore
							},
							isRepeatable = true,
						}),
						q(95423, {	-- Lorewalking: Daughter of the Sea
							sourceQuest = 95422,	-- Lorewalking: Tides of War
							qg = 261067,	-- Li Li Stormstout
							coord = { 30.2, 49.3, 501 },	-- Dalaran
							isRepeatable = true,
						}),
					},
				}),
				header(HEADERS.Achievement, 61467, {	-- Lorewalking: The Elves of Quel'thalas
					timeline = { ADDED_11_2_7 },
					groups = {
						q(85252, {	-- Lorewalking: Children of the Blood
							qg = 230246,	-- Lorewalker Cho
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
							},
							isRepeatable = true,
						}),
						q(85254, {	-- Lorewalking: Children of the Void
							sourceQuest = 85252,	-- Lorewalking: Children of the Blood
							qg = 234616,	-- Lorewalker Cho
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
							},
							isRepeatable = true,
						}),
					},
				}),
				header(HEADERS.Achievement, 42189, {	-- Lorewalking: The Lich King
					q(85884, {	-- Lorewalking: The Prince Who Would Be King
						qg = 230246,	-- Lorewalker Cho
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
					}),
					q(85862, {	-- A Prince's Duty
						sourceQuest = 85884,	-- Lorewalking: The Prince Who Would Be King
						qg = 233752,	-- Uther Lightbringer
						coord = { 34.1, 84.1, 2418 },	-- Scarlet Halls
						isRepeatable = true,
					}),
					q(85885, {	-- Lorewalking: No King Rules Forever
						sourceQuest = 85884,	-- Lorewalking: The Prince Who Would Be King
						qg = 236114,	-- Lorewalker Cho
						coords = {
							{ 49.5, 31.6, DORNOGAL },
							{ 54.5, 57.2, ORGRIMMAR },
							{ 64.2, 16.1, STORMWIND_CITY },
						},
						isRepeatable = true,
						groups = {
							i(245631),	-- Royal Visage (TOY!)
							i(244858),	-- Lorewalker's Notes: The Lich King
						},
					}),
					q(85875, {	-- Ascent of the Lich King
						sourceQuest = 85885,	-- Lorewalking: No King Rules Forever
						-- provider = { "n", ?? },	-- auto accepted during 85885
						coord = { 51.4, 79.4, ICECROWN },
						isRepeatable = true,
					}),
					q(85878, {	-- O' Thanagor
						sourceQuest = 85875,	-- Ascent of the Lich King
						-- provider = { "n", ?? },	-- auto accepted during 85885, but after 85875
						-- coord = { X, Y, ICECROWN_CITADEL },
						isRepeatable = true,
					}),
				}),
				header(HEADERS.Achievement, 61442, {	-- Lorewalking: The Loa
					timeline = { ADDED_12_0_7 },
					groups = {
						q(92826, {	-- Lorewalking: The Loa of Kings
							qg = 253727,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(92829, {	-- Lorewalking: Death of the Drakkari Loa
							qg = 253727,	-- Li Li Stormstout
							coord = { 42.7, 37.7, ZULDAZAR },
							isRepeatable = true,
						}),
						q(92831, {	-- Lorewalking: The Blood Loa
							qg = 253727,	-- Li Li Stormstout
							coord = { 60.2, 57.7, ZULDRAK },
							isRepeatable = true,
						}),
						q(92832, {	-- Lorewalking: The Hash'ey
							qg = 253727,	-- Li Li Stormstout
							maps = { 1679 },	-- Zul'Gurub, De Other Side
							isRepeatable = true,
							groups = { i(275346) },	-- Lorewalker's Notes: The Loa
						}),
					},
				}),
				header(HEADERS.Achievement, 63691, {	-- Lorewalking: Thrall
					timeline = { ADDED_12_1_7 },
					groups = {
						q(92652, {	-- Lorewalking: Warchief, Shaman, Hero
							qg = 230246,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(92673, {	-- Lorewalking: In Pride's Wake
							sourceQuest = 92652,	-- Lorewalking: Warchief, Shaman, Hero
							qg = 252907,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(92675, {	-- Lorewalking: The Weight of Doubt
							sourceQuest = 92673,	-- Lorewalking: In Pride's Wake
							qg = 252907,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(92676, {	-- Lorewalking: In Another's Footsteps
							sourceQuest = 92675,	-- Lorewalking: The Weight of Doubt
							qg = 252907,	-- Li Li Stormstout
							coord = { 33.3, 36.0, MULGORE },
							isRepeatable = true,
						}),
						q(92677, {	-- Lorewalking: Paths Ever Onward
							sourceQuest = 92676,	-- Lorewalking: In Another's Footsteps
							qg = 252907,	-- Li Li Stormstout
							coord = { 60.2, 27.4, KORTHIA },
							isRepeatable = true,
						}),
					},
				}),
				header(HEADERS.Achievement, 63710, {	-- Lorewalking: Titans
					timeline = { ADDED_12_1_7 },
					groups = {
						q(95461, {	-- Lorewalking: Mysteries of the Earthen
							qg = 230246,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(95462, {	-- Lorewalking: Secrets of Ulduar
							sourceQuest = 95461,	-- Lorewalking: Mysteries of the Earthen
							qg = 261254,	-- Li Li Stormstout
							maps = { HALLS_OF_STONE },
							isRepeatable = true,
						}),
						q(95466, {	-- Algalon
							sourceQuest = 95461,	-- Lorewalking: Mysteries of the Earthen
							qg = 33235,	-- Brann Bronzebeard
							maps = { 148 },	-- The Archivum, Ulduar
							isRepeatable = true,
						}),
						q(95567, {	-- Lorewalking: The Pantheon
							sourceQuests = {
								95462,	-- Lorewalking: Secrets of Ulduar
								95466,	-- Algalon
							},
							qg = 261254,	-- Li Li Stormstout
							coord = { 48.4, 62.3, NORTHREND_DALARAN },
							maps = {
								2593,	-- Frachtorn
								2592,	-- Seat of the Pantheon
							},
							isRepeatable = true,
						}),
						q(95463, {	-- The War Unending
							sourceQuest = 95462,	-- Lorewalking: Secrets of Ulduar
							qg = 261816,	-- Olviron the Sentinel
							coord = { 35.3, 17.0, 2593 },	-- Frachtorn
							isRepeatable = true,
						}),
						q(95464, {	-- The Fate Inevitable
							sourceQuest = 95462,	-- Lorewalking: Secrets of Ulduar
							qg = 261856,	-- Aggramar
							coord = { 54.7, 54.8, 2592 },	-- Seat of the Pantheon
							isRepeatable = true,
						}),
						q(95465, {	-- Lorewalking: The Revival
							sourceQuests = {
								95567,	-- Lorewalking: The Pantheon
								95463,	-- The War Unending
								95464,	-- The Fate Inevitable
							},
							qg = 261254,	-- Li Li Stormstout
							coord = { 60.9, 79.4, KROKUUN },
							isRepeatable = true,
						}),
					},
				}),
				header(HEADERS.Achievement, 63604, {	-- Lorewalking: Tyr
					timeline = { ADDED_12_1_7 },
					groups = {
						q(95441, {	-- Lorewalking: The Silver Scale
							qg = 230246,	-- Li Li Stormstout
							coords = {
								{ 49.5, 31.6, DORNOGAL },
								{ 54.5, 57.2, ORGRIMMAR },
								{ 64.2, 16.1, STORMWIND_CITY },
								{ 58.7, 70.8, MAP.MIDNIGHT.SILVERMOON_CITY },
							},
							isRepeatable = true,
						}),
						q(95442, {	-- Lorewalking: The Silver Hand
							sourceQuest = 95441,	-- Lorewalking: The Silver Scale
							qg = 261308,	-- Li Li Stormstout
							coord = { 55.3, 43.8, VALDRAKKEN },
							isRepeatable = true,
						}),
						q(95443, {	-- Lorewalking: Tyr's Fall
							sourceQuest = 95442,	-- Lorewalking: The Silver Hand
							qg = 261308,	-- Li Li Stormstout
							coord = { 13.8, 56.5, TIRISFAL_GLADES },
							isRepeatable = true,
						}),
						q(95444, {	-- Lorewalking: Locating Tyr's Memories
							sourceQuest = 95443,	-- Lorewalking: Tyr's Fall
							qg = 261308,	-- Li Li Stormstout
							coord = { 60.4, 58.8, THALDRASZUS },
							isRepeatable = true,
						}),
						q(95445, {	-- Lorewalking: Tyr's Restoration
							sourceQuest = 95444,	-- Lorewalking: Locating Tyr's Memories
							qg = 261308,	-- Li Li Stormstout
							coord = { 60.4, 58.8, THALDRASZUS },
							isRepeatable = true,
							groups = { i(282709) },	-- Lorewalker's Notes: Keeper Tyr
						}),
					},
				}),
				header(HEADERS.Quest, 93929, {	-- The War Within Recap
					timeline = { ADDED_11_2_7 },
					groups = {
						q(93929, {	-- The War Within Recap
							lvl = 71,
							isBreadcrumb = true,
						}),
						q(91843, {	-- Recap: The Harbinger
							qg = 248956,	-- Tome of History
							coords = {
								{ 49.5, 31.9, DORNOGAL },
								{ 46.4, 60.2, VALDRAKKEN },
							},
							isRepeatable = true,
						}),
						q(91864, {	-- Recap: Fractured Visions
							sourceQuest = 91843,	-- Recap: The Harbinger
							qg = 248948,	-- Tome of History
							coords = {
								{ 49.5, 31.9, DORNOGAL },
								{ 46.4, 60.2, VALDRAKKEN },
							},
							isRepeatable = true,
							groups = {
								i(254323, {	-- Worldsoul Satchel
									description = "Contains Equipment rewarded from various Quests available throughout Khaz Algar.",
								}),
							},
						}),
						q(91868, {	-- Recap: Shadowy Pursuits
							sourceQuest = 91864,	-- Recap: Fractured Visions
							qg = 248948,	-- Tome of History
							coords = {
								{ 43.0, 34.1, THE_RINGING_DEEPS },	-- If you were to continue the Recap right away
								{ 49.5, 31.9, DORNOGAL },	-- If you were to abandon the Recap and come back later
								{ 46.4, 60.2, VALDRAKKEN },
							},
							isRepeatable = true,
							groups = {
								i(254324, {	-- Worldsoul Satchel
									description = "Contains Equipment rewarded from various Quests available throughout Khaz Algar.",
								}),
							},
						}),
						q(91871, {	-- Recap: The Dark Heart
							sourceQuest = 91868,	-- Recap: Shadowy Pursuits
							qg = 248948,	-- Tome of History
							coords = {
								{ 49.5, 31.9, DORNOGAL },
								{ 46.4, 60.2, VALDRAKKEN },
							},
							isRepeatable = true,
							groups = {
								i(254325, {	-- Worldsoul Satchel
									description = "Contains Equipment rewarded from various Quests available throughout Khaz Algar.",
								}),
							},
						}),
						q(93979, {	-- Lingering Memories
							description = "'Lingering Memories' is available only through Recap Experience. It replaces the quest 'What Is Left of Home' (85032).",
							sourceQuest = 84967,	-- The Shadowguard Shattered
							qg = 231128,	-- Locus-Walker
							coord = { 37.7, 74.8, KARESH_TAZAVESH },
							isRepeatable = true,
						}),
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	n(LOREWALKING, {
		timeline = { ADDED_11_1_7 },
		groups = {
			q(91025),	-- After completing Lorewalking: Blade's Bane
			q(91027),	-- After completing Lorewalking: The Lich King
			q(91028),	-- After completing Lorewalking: Ethereal Wisdom
		},
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	n(LOREWALKING, {
		timeline = { ADDED_12_0_7 },
		groups = {
			q(96552),	-- Triggered during Lorewalking: The Loa, after the cinematic where Rezan was turned into an undead
			q(96556),	-- Triggered during Lorewalking: The Loa, after accepting 'My Prophet, My Enemy' (12646)
			q(96657),	-- After completing Lorewalking: The Loa
		},
	}),
}));
