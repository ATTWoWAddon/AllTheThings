---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.CATA, applyclassicphase(CATA_PHASE_RISE_OF_THE_ZANDALARI, {
	n(createHeader({
		readable = "The Troll Incursion",
		icon = 135727,
		text = {
			en = "The Troll Incursion",
			de = "Trollinvasion",
			es = "La incursión trol",
			-- TODO: mx = "",
			fr = "L’incursion trolle",
			it = "L'incursione dei Troll",
			ko = "트롤의 난입",
			pt = "A incursão troll",
			ru = "Вторжение троллей",
			cn = "巨魔来袭",
			tw = "食人妖入侵",
		},
		lore = {
			en = "Empowered by the Zandalari's offer the Gurubashi launched on all-out attack to claim Stranglethorn Vale for themselves. In Northern Stranglethorn Bambala, Fort Livingston, Nesingwary's Expedition, Grom'gol Base Camp, and the Rebel Camp came under attack by serpents sent by High Priest Venoxis. High Priestess Kilnara sent panthers to attack the Rebel Camp and Grom'gol while the panther Mauti attacked the hunters at Nesingwary's Expedition. Both Grom'gol and the Rebel Camp later came under attack by Gurubashi trolls led by Bloodlord Mandokir. After heroes of the Horde and Alliance beat back the Gurubashi attack, they were sent to the Cape of Stranglethorn which faced its own troubles.",
		},
	}), bubbleDownSelf({ ["timeline"] = { ADDED_4_1_0 } }, {
		["maps"] = { NORTHERN_STRANGLETHORN, THE_CAPE_OF_STRANGLETHORN },
		["lvl"] = 85,
		["groups"] = {
			n(QUESTS, {
				{	-- Bad Supplies
					["qg"] = 52234,	-- Bwemba
					["allianceQuestData"] = q(29151, {	-- Bad Supplies (A)
						["sourceQuest"] = 29150,	-- Voodoo Zombies
						["coord"] = { 55.1, 42.2, THE_CAPE_OF_STRANGLETHORN },
					}),
					["hordeQuestData"] = q(29238, {	-- Bad Supplies (H)
						["sourceQuest"] = 29237,	-- Voodoo Zombies
						["coord"] = { 34.7, 29.4, THE_CAPE_OF_STRANGLETHORN },
					}),
					["groups"] = {
						objective(1, {	-- Supplies Searched
							["provider"] = { "o", 208419 },	-- Grain Sack
							["coord"] = { 54.9, 42.0, THE_CAPE_OF_STRANGLETHORN },
						}),
					},
				},
				{	-- Booty Bay's Interests
					["qg"] = 2496,	-- Baron Revilgaz
					["coord"] = { 41.1, 73.0, THE_CAPE_OF_STRANGLETHORN },
					["allianceQuestData"] = q(29153),	-- Booty Bay's Interests (A)
					["hordeQuestData"] = q(29251),	-- Booty Bay's Interests (H)
					["maps"] = { ZULGURUB },
					["groups"] = {
						objective(1, {
							["provider"] = { "i", 69774 },	-- Zul'Gurub Stone
							["cr"] = 52148,	-- Jin'do the Godbreaker
						}),
					},
				},
				{	-- Bury Me With Me Boots...
					["qg"] = 52371,	-- Grent Direhammer
					["coord"] = { 76.0, 66.6, NORTHERN_STRANGLETHORN },
					["allianceQuestData"] = q(29121, {	-- Bury Me With Me Boots... (A)
						["sourceQuest"] = 29213,	-- How's the Hunter Holding Up?
					}),
					["hordeQuestData"] = q(29232, {	-- Bury Me With Me Boots... (H)
						["sourceQuest"] = 29231,	-- How's the Hunter Holding Up?
					}),
					["groups"] = {
						objective(1, {	-- 0/1 Direhammer's Boots
							["providers"] = {
								{ "i", 68937 },	-- Direhammer's Boots
								{ "o", 208376 },	-- Direhammer's Boots
							},
							["coord"] = { 76.0, 66.6, NORTHERN_STRANGLETHORN },
						}),
					},
				},
				q(29100, {	-- Bwemba's Spirit (A)
					["sourceQuest"] = 29156,	-- The Troll Incursion
					["qg"] = 52654,	-- Bwemba
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29219, {	-- Bwemba's Spirit (H)
					-- #if BEFORE 7.0.1
					["sourceQuest"] = 29157,	-- The Zandalari Menace
					-- #endif
					["qg"] = 53081,	-- Bwemba
					["coord"] = { 32.6, 68.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				q(29235, {	-- Defend Grom'gol
					["sourceQuest"] = 29233,	-- Warn Grom'gol
					["qg"] = 52996,	-- Commander Aggro'gosh
					["coord"] = { 38.3, 50.2, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				q(29131, {	-- Defend the Rebel Camp
					["sourceQuest"] = 29124,	-- Warn the Rebel Camp
					["qg"] = 52410,	-- Lieutenant Doren
					["coord"] = { 47.7, 12.0, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				{	-- Follow That Cat [Automatic]
					["provider"] = { "o", 208365 },	-- Recently Disturbed Dirt Mound
					["allianceQuestData"] = q(29116, {	-- Follow That Cat (A)
						["sourceQuest"] = 29115,	-- The Hunter's Revenge (A)
					}),
					["hordeQuestData"] = q(29228, {	-- Follow That Cat (H)
						["sourceQuest"] = 29227,	-- The Hunter's Revenge (H)
					}),
					["description"] = "Automatically granted after turning in |cFFFFD700The Hunter's Revenge|r.",
					["coord"] = { 64.1, 20.1, NORTHERN_STRANGLETHORN },
					["groups"] = {
						objective(1, {	-- Find Mauti's Lair
							["provider"] = { "n", 52372 },	-- Mauti
							["coord"] = { 77.0, 68.0, NORTHERN_STRANGLETHORN },
						}),
					},
				},
				{	-- Follow That Cat [Pickup Again after Abandoning]
					["provider"] = { "o", 208365 },	-- Recently Disturbed Dirt Mound
					["allianceQuestData"] = q(29118, {	-- Follow That Cat (A)
						["sourceQuest"] = 29115,	-- The Hunter's Revenge (A)
					}),
					["hordeQuestData"] = q(29229, {	-- Follow That Cat (H)
						["sourceQuest"] = 29227,	-- The Hunter's Revenge (H)
					}),
					["description"] = "This version is available if you abandon the quest that was granted automatically.",
					["coord"] = { 64.6, 22.0, NORTHERN_STRANGLETHORN },
					["groups"] = {
						objective(1, {	-- Find Mauti's Lair
							["provider"] = { "n", 52372 },	-- Mauti
							["coord"] = { 77.0, 68.0, NORTHERN_STRANGLETHORN },
						}),
					},
				},
				{	-- How's the Hunter Holding Up?
					["qg"] = 52234,	-- Bwemba
					["allianceQuestData"] = q(29213, {	-- How's the Hunter Holding Up? (A)
						["sourceQuest"] = 29120,	-- Mauti
						["coord"] = { 77.1, 69.1, NORTHERN_STRANGLETHORN },
					}),
					["hordeQuestData"] = q(29231, {	-- How's the Hunter Holding Up? (H)
						["sourceQuest"] = 29230,	-- Mauti
						["coord"] = { 77.1, 68.9, NORTHERN_STRANGLETHORN },
					}),
				},
				q(29152, {	-- Making Contact (A)
					["sourceQuest"] = 29151,	-- Bad Supplies
					["qg"] = 52646,	-- Colin Swifthammer
					["coord"] = { 55.3, 41.9, THE_CAPE_OF_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29250, {	-- Making Contact (H)
					["sourceQuest"] = 29238,	-- Bad Supplies
					["qg"] = 53078,	-- Zombie Survivor
					["coord"] = { 33.5, 30.3, THE_CAPE_OF_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				q(29120, {	-- Mauti (A)
					["sourceQuests"] = {
						29116,	-- Follow That Cat (automatically granted)
						29118,	-- Follow That Cat (recently disturbed dirt mound)
					},
					["qg"] = 52234,	-- Bwemba
					["coord"] = { 77.9, 68.1, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Bwemba has inspected the Cat
							["provider"] = { "n", 52372 },	-- Mauti
							["coord"] = { 77.16, 69.04, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(29230, {	-- Mauti (H)
					["sourceQuests"] = {
						29228,	-- Follow That Cat (automatically granted)
						29229,	-- Follow That Cat (recently disturbed dirt mound)
					},
					["qg"] = 52234,	-- Bwemba
					["coord"] = { 77.7, 68.3, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Bwemba has inspected the Cat
							["provider"] = { "n", 52372 },	-- Mauti
							["coord"] = { 77.16, 69.04, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(29105, {	-- Nesingwary Will Know (A)
					["sourceQuest"] = 29104,	-- Spirits Are With Us
					["qg"] = 52281,	-- Livingston Marshal
					["coord"] = { 52.5, 66.5, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29223, {	-- Nesingwary Will Know (H)
					["sourceQuest"] = 29222,	-- Spirits Are With Us
					["qg"] = 52980,	-- Kil'karil
					["coord"] = { 63.3, 39.9, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				q(29103, {	-- Serpents and Poison (A)
					["sourceQuest"] = 29102,	-- To Fort Livingston
					["qg"] = 52281,	-- Livingston Marshal
					["coord"] = { 64.6, 40.4, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Serpent slain
							["provider"] = { "n", 52224 },	-- Jungle Serpent
						}),
						objective(2, {	-- 0/10 Adventurers healed
							["providers"] = {
								{ "n", 52225 },	-- Fort Livingston Adventurer
								{ "n", 52279 },	-- Daniel Roberts <Blacksmithing Supplies>
								{ "n", 52280 },	-- Robert Rhodes <Gryphon Master>
								{ "n", 53555 },	-- Kinnel
								{ "n", 53556 },	-- Priestess Thaalia
								{ "n", 53557 },	-- Wulfred Harrys
							},
						}),
					},
				}),
				q(29221, {	-- Serpents and Poison (H)
					["sourceQuest"] = 29220,	-- To Bambala
					["qg"] = 52980,	-- Kil'karil
					["coord"] = { 63.3, 39.9, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Jungle Serpent slain
							["provider"] = { "n", 52224 },	-- Jungle Serpent
						}),
						objective(2, {	-- 0/10 Headhunters healed
							["providers"] = {
								{ "n", 52978 },	-- Injured Bambala Headhunter
								{ "n", 53440 },	-- Durango <General Goods>
								{ "n", 53441 },	-- Kin'weelay
								{ "n", 53442 },	-- Priestess Hu'rala
								{ "n", 53443 },	-- Pechanga <Reagents & Poisons>
								{ "n", 53444 },	-- Skeezy Whillzap
								{ "n", 53445 },	-- Morango <Trade Goods>
							},
						}),
					},
				}),
				{	-- Some Good Will Come
					["qg"] = 52374,	-- Panther Cub
					["allianceQuestData"] = q(29267, {	-- Some Good Will Come (A)
						["sourceQuest"] = 29121,	-- Bury Me With Me Boots... (A)
					}),
					["hordeQuestData"] = q(29268, {	-- Some Good Will Come (H)
						["sourceQuest"] = 29232,	-- Bury Me With Me Boots... (H)
					}),
					["coord"] = { 76.1, 66.7, NORTHERN_STRANGLETHORN },
					["groups"] = {
						i(68833),	-- Panther Cub (PET!)
					},
				},
				q(29104, {	-- Spirits Are With Us (A)
					["sourceQuest"] = 29103,	-- Serpents and Poison
					["qg"] = 52234,	-- Bwemba
					["races"] = ALLIANCE_ONLY,
				}),
				q(29222, {	-- Spirits Are With Us (H)
					["sourceQuest"] = 29221,	-- Serpents and Poison
					["qg"] = 52234,	-- Bwemba
					-- ["coord"] = {}	-- can be picked up anywhere on the map
					["races"] = HORDE_ONLY,
				}),
				q(29115, {	-- The Hunter's Revenge (A)
					["sourceQuest"] = 29114,	-- Track the Tracker
					["qg"] = 52346,	-- Grent Direhammer
					["coord"] = { 50.3, 21.7, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Bring Grent Direhammer to the body of Mauti
							["provider"] = { "n", 52349 },	-- Mauti?
							["coord"] = { 64.5, 21.1, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				q(29227, {	-- The Hunter's Revenge (H)
					["sourceQuest"] = 29226,	-- Track the Tracker
					["qgs"] = {
						52294,	-- Hemet Nesingwary Jr.
						52346,	-- Grent Direhammer
					},
					["coord"] = { 50.3, 21.7, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Bring Grent Direhammer to the body of Mauti
							["provider"] = { "n", 52349 },	-- Mauti?
							["coord"] = { 64.5, 21.1, NORTHERN_STRANGLETHORN },
						}),
					},
				}),
				heroscall(q(29156, {	-- The Troll Incursion
					["timeline"] = { ADDED_4_1_0, REMOVED_7_0_3 },
					["maps"] = { DARNASSUS, IRONFORGE, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				})),
				warchiefscommand(q(29157, {	-- The Zandalari Menace
					["timeline"] = { ADDED_4_1_0, REMOVED_7_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				})),
				q(29158, {	-- The Zandalar Representative
					["qg"] = 52654,	-- Bwemba
					["coord"] = { 25.96, 29.32, STORMWIND_CITY },
					["timeline"] = { ADDED_4_1_0, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(29220, {	-- To Bambala
					["qgs"] = {
						52234,	-- Bwemba
						53081,	-- Bwemba
					},
					["coord"] = { 32.6, 68.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				q(29102, {	-- To Fort Livingston
					["sourceQuest"] = 29100,	-- Bwemba's Spirit (A)
					["qg"] = 52654,	-- Bwemba
					["coord"] = { 25.9, 29.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29236, {	-- To Hardwrench Hideaway
					["sourceQuest"] = 29235,	-- Defend Grom'gol
					["qg"] = 53008,	-- Thysta
					["coord"] = { 39.0, 51.2, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				q(29133, {	-- To the Digsite
					["sourceQuest"] = 29131,	-- Defend the Rebel Camp
					["qg"] = 52753,	-- James Stillair
					["coord"] = { 47.8, 11.8, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29114, {	-- Track the Tracker (A)
					["sourceQuest"] = 29105,	-- Nesingwary Will Know
					["qg"] = 52294,	-- Hemet Nesingwary Jr.
					["coord"] = { 44.1, 22.9, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
				q(29226, {	-- Track the Tracker (H)
					["sourceQuest"] = 29223,	-- Nesingwary Will Know
					["qg"] = 52294,	-- Hemet Nesingwary Jr.
					["coord"] = { 44.1, 22.9, NORTHERN_STRANGLETHORN },
					["races"] = HORDE_ONLY,
				}),
				q(29150, {	-- Voodoo Zombies (A)
					["sourceQuest"] = 29133,	-- To the Digsite
					["qg"] = 52234,	-- Bwemba
					["coord"] = { 55.1, 42.2, THE_CAPE_OF_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Digsite Survivors Rescued
							["provider"] = { "n", 52604 },	-- Digsite Zombie
						}),
					},
				}),
				q(29237, {	-- Voodoo Zombies (H)
					["sourceQuest"] = 29236,	-- To Hardwrench Hideaway
					["qg"] = 52234,	-- Bwemba
					["coord"] = { 34.7, 29.4, THE_CAPE_OF_STRANGLETHORN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Hideaway Zombie
							["provider"] = { "n", 53011 },	-- Hideaway Zombie
						}),
					},
				}),
				q(29233, {	-- Warn Grom'gol
					["sourceQuest"] = 29232,	-- Bury Me With Me Boots...
					["qg"] = 52234,	-- Bwemba
					["races"] = HORDE_ONLY,
				}),
				q(29124, {	-- Warn the Rebel Camp
					["sourceQuest"] = 29121,	-- Bury Me With Me Boots...
					["qg"] = 52234,	-- Bwemba
					["coord"] = { 76.0, 66.6, NORTHERN_STRANGLETHORN },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
		},
	})),
})));
