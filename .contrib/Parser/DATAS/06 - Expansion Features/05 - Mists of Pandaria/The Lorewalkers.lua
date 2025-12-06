-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_LOREWALKERS, {
		["description"] = "The Lorewalkers are a pandaren faction bent on exploring the world, finding stories, artifacts, and relics to fill out their libraries.",
		["maps"] = { VALE_OF_ETERNAL_BLOSSOMS },
		["icon"] = 645218,
		["lvl"] = lvlsquish(85, 85, 10),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(6856),	-- Ballad of Liu Lang (automated)
				ach(6716),	-- Between a Saurok and a Hard Place (automated)
				ach(6846),	-- Fish Tales (automated)
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, ach(8051, {	-- Gods and Monsters (automated)
					["timeline"] = { ADDED_5_2_0 },
					["maps"] = { ISLE_OF_THUNDER },
				})),
				ach(6857, {	-- Heart of the Mantid Swarm (automated)
					["maps"] = { DREAD_WASTES },
				}),
				ach(6850),	-- Hozen in the Mist (automated)
				ach(7230),	-- Legend of the Brewfathers (automated)
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, ach(8050, {	-- Rumbles of Thunder (automated)
					["timeline"] = { ADDED_5_2_0 },
					["maps"] = { ISLE_OF_THUNDER },
				})),
				ach(6754),	-- The Dark Heart of the Mogu (automated)
				ach(6548),	-- The Lorewalkers
				ach(6855),	-- The Seven Burdens of Shaohao (automated)
				ach(6847),	-- The Song of the Yaungol (automated)
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, ach(8049, {	-- The Zandalari Prophecy (automated)
					["timeline"] = { ADDED_5_2_0 },
					["maps"] = { ISLE_OF_THUNDER },
				})),
				ach(6858),	-- What Is Worth Fighting For (automated)
			}),
			n(FACTIONS, {
				faction(FACTION_THE_LOREWALKERS, {	-- The Lorewalkers
					["icon"] = 645218,
				}),
			}),
			n(MAILBOX, {
				["description"] = "The following will be mailed to you upon completion of respective achievements.",
				["groups"] = {
					i(83076, {	-- Between a Saurok and a Hard Place (A)
						["sourceAchievement"] = 6716,	-- Between a Saurok and a Hard Place
						["races"] = ALLIANCE_ONLY,
					}),
					i(83769, {	-- Between a Saurok and a Hard Place (H)
						["sourceAchievement"] = 6716,	-- Between a Saurok and a Hard Place
						["races"] = HORDE_ONLY,
					}),
					i(83771, {	-- Fish Tales
						["sourceAchievement"] = 6846,	-- Fish Tales
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94199, {	-- Gods and Monsters
						["sourceAchievement"] = 8051,	-- Gods and Monsters
						["timeline"] = { ADDED_5_2_0 },
						["maps"] = { ISLE_OF_THUNDER },
					})),
					i(83773, {	-- Heart of the Mantid Swarm
						["sourceAchievement"] = 6857,	-- Heart of the Mantid Swarm
						["maps"] = { DREAD_WASTES },
					}),
					i(83770, {	-- Hozen in the Mist
						["sourceAchievement"] = 6850,	-- Hozen in the Mist
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94198, {	-- Rumbles of Thunder
						["sourceAchievement"] = 8050,	-- Rumbles of Thunder
						["timeline"] = { ADDED_5_2_0 },
						["maps"] = { ISLE_OF_THUNDER },
					})),
					i(83780, {	-- The Ballad of Liu Lang
						["sourceAchievement"] = 6856,	-- Ballad of Liu Lang
					}),
					i(83772, {	-- The Dark Heart of the Mogu
						["sourceAchievement"] = 6754,	-- The Dark Heart of the Mogu
					}),
					i(83779, {	-- The Seven Burdens of Shaohao
						["sourceAchievement"] = 6855,	-- The Seven Burdens of Shaohao
					}),
					i(83777, {	-- The Song of the Yaungol
						["sourceAchievement"] = 6847,	-- The Song of the Yaungol
					}),
					applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94197, {	-- The Zandalari Prophecy
						["sourceAchievement"] = 8049,	-- The Zandalari Prophecy
						["timeline"] = { ADDED_5_2_0 },
						["maps"] = { ISLE_OF_THUNDER },
					})),
					i(83774, {	-- What Is Worth Fighting For
						["sourceAchievement"] = 6858,	-- What Is Worth Fighting For
					}),
				},
			}),
			n(QUESTS, {
				q(31055, {	-- Between a Saurok and a Hard Place
					["providers"] = {
						{ "i", 83076 },	-- Between a Saurok and a Hard Place (A)
						{ "i", 83769 },	-- Between a Saurok and a Hard Place (H)
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31094, {	-- Fish Tales
					["providers"] = {
						{ "i", 83771 },	-- Fish Tales
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32602, {	-- Gods and Monsters
					["providers"] = {
						{ "i", 94199 },	-- Gods and Monsters
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_2_0 },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				q(31097, {	-- Heart of the Mantid Swarm
					["providers"] = {
						{ "i", 83773 },	-- Heart of the Mantid Swarm
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31093, {	-- Hozen in the Mist
					["providers"] = {
						{ "i", 83770 },	-- Hozen in the Mist
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31288, {	-- Research Project: The Mogu Dynasties
					["qg"] = 63984,	-- Master Liu
					["coord"] = { 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
					["isDaily"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31289, {	-- Research Project: The Pandaren Empire
					["qg"] = 63984,	-- Master Liu
					["coords"] = {
						{ 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
						-- #if AFTER 8.3.0
						{ 84.1, 28.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
						-- #endif
					},
					["isDaily"] = true,
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32601, {	-- Rumbles of Thunder
					["providers"] = {
						{ "i", 94198 },	-- Rumbles of Thunder
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_2_0 },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				q(31103, {	-- The Ballad of Liu Lang
					["providers"] = {
						{ "i", 83780 },	-- The Ballad of Liu Lang
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31095, {	-- The Dark Heart of the Mogu
					["providers"] = {
						{ "i", 83772 },	-- The Dark Heart of the Mogu
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				applyclassicphase(MOP_PHASE_ESCALATION, q(32806, {	-- The King and the Council
					["sourceQuests"] = { 32892 },	-- War is Coming
					["qgs"] = {
						61962,	-- Lorewalker Cho
						63577,	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_3_0 },
					["maps"] = { 523 },	-- Dun Morogh (Blood in the Snow scenario)
					["groups"] = {
						i(98133),	-- Greater Cache of Treasures
					},
				})),
				q(31367, {	-- The Lorewalkers [A]
					["qg"] = 64508,	-- Scrollmaker Resshi
					["coord"] = { 85.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0, ADDED_10_2_7 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(31368, {	-- The Lorewalkers [H]
					["qg"] = 64531,	-- Lena Stonebrush
					["coord"] = { 62.4, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0, ADDED_10_2_7 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				applyclassicphase(MOP_PHASE_ESCALATION, q(32815, {	-- The Old Seer
					["sourceQuests"] = { 32807 },	-- The Warchief and the Darkness
					["qg"] = 61962,	-- Lorewalker Cho
					["timeline"] = { ADDED_5_3_0 },
				})),
				q(31102, {	-- The Seven Burdens of Shaohao
					["providers"] = {
						{ "i", 83779 },	-- The Seven Burdens of Shaohao
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31100, {	-- The Song of the Yaungol
					["providers"] = {
						{ "i", 83777 },	-- The Song of the Yaungol
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				applyclassicphase(MOP_PHASE_ESCALATION, q(32807, {	-- The Warchief and the Darkness
					["sourceQuests"] = { 32806 },	-- The King and the Council
					["provider"] = { "n", 61962 },	-- Lorewalker Cho
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_3_0 },
					["maps"] = { 520, 521 },	-- Vale of Eternal Blossoms (Dark Heart of Pandaria scenario)
					["groups"] = {
						i(98133),	-- Greater Cache of Treasures
					},
				})),
				applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, q(32600, {	-- The Zandalari Prophecy
					["providers"] = {
						{ "i", 94197 },	-- The Zandalari Prophecy
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["timeline"] = { ADDED_5_2_0 },
					["lvl"] = lvlsquish(90, 90, 30),
				})),
				q(31291, {	-- Uncovering the Past
					["qg"] = 63983,	-- Ms. Thai
					["coord"] = { 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
					["isDaily"] = true,
				}),
				q(31096, {	-- What is Worth Fighting For
					["providers"] = {
						{ "i", 83774 },	-- What is Worth Fighting For
						{ "n", 61962 },	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["lvl"] = lvlsquish(90, 90, 30),
				}),
				q(31015, {	-- Your Private Collection
					["sourceQuests"] = {
						31367,	-- The Lorewalkers (A)
						31368,	-- The Lorewalkers (H)
					},
					["qgs"] = {
						61962,	-- Lorewalker Cho
						63577,	-- Lorewalker Cho
					},
					["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						objective(1, {	-- Clean off the Empty Bookshelf
							["provider"] = { "o", 212526 },	-- An empty bookshelf
							["coord"] = { 82.5, 29.5, VALE_OF_ETERNAL_BLOSSOMS },
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(64922, {	-- Brann Bronzebeard <Archaeology Trainer>
					["coord"] = { 83.4, 30.9, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(104198, {	-- Mantid Artifact Hunter's Kit
							["cost"] = { { "i", 87399, 2 }, },	-- 2x Restored Artifact
						}),
					},
				}),
				n(64691, {	-- Lorewalker Huynh <Inscription Trainer>
					["coord"] = { 82.0, 29.3, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = {
						i(137788, {	-- Technique: Songs of Peace (RECIPE!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(64605, {	-- Tan Shin Tiao <Lorewalkers Quartermaster>
					["coord"] = { 82.2, 29.4, VALE_OF_ETERNAL_BLOSSOMS },
					["groups"] = bubbleDownClassicRep(FACTION_THE_LOREWALKERS, {
						{		-- Neutral
							i(247858, {	-- Shaohao Ceremonial Bell (DECOR!)
								["cost"] = 16000000,	-- 1,600g
								["timeline"] = { ADDED_11_2_7 },
							}),
						}, {	-- Friendly
							i(245512, { ["timeline"] = { ADDED_11_2_7 } }),	-- Pandaren Cradle Stool (DECOR!)
						}, {	-- Honored
							i(247855, { ["timeline"] = { ADDED_11_2_7 } }),	-- Pandaren Lacquered Crate (DECOR!)
							i(247662, { ["timeline"] = { ADDED_11_2_7 } }),	-- Pandaren Scholar's Lectern (DECOR!)
						}, {	-- Revered
							i(258147, {	-- Empty Lorewalker's Bookcase (DECOR!)
								["cost"] = 8000000,	-- 800g
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(93230),	-- Grand Commendation of the Lorewalkers
							i(122221, {	["timeline"] = { ADDED_6_1_0 } } ),	-- Music Roll: Song of Liu Lang
							i(247663, {	-- Pandaren Scholar's Bookcase (DECOR!)
								["cost"] = 16000000,	-- 1,600g
								["timeline"] = { ADDED_11_2_7 },
							}),
						}, {	-- Exalted
							i(89363, {	-- Red Flying Cloud (MOUNT!)
								["cost"] = 6000000,	-- 600g
							}),
							i(87548),	-- Lorewalker's Lodestone
							i(87549),	-- Lorewalkers Map
							i(89795),	-- Lorewalkers Tabard
							i(104198, {	-- Mantid Artifact Hunter's Kit
								["cost"] = { { "i", 87399, 2 }, },	-- 2x Restored Artifact
							}),
						},
					}),
				}),
			}),
		},
	}),
}))));

--[[
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_LOREWALKERS, {
		n(QUESTS, {

		}),
	}),
})));
]]--
