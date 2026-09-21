---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.EASTERN_KINGDOMS, {
	m(MAP.WESTERN_PLAGUELANDS, {
		["lore"] =
			"The Western Plaguelands are located in northern Lordaeron, wedged between Tirisfal Glades to the west, the Eastern Plaguelands to the east, and the Alterac Mountains to the south. It is filled with a smoky gray mist and the creatures here are blighted and sick, angrily attacking anyone who wanders too close with surprising ferocity. The land is also home to countless undead who infest the ruins of Andorhal, the four cauldron fields, and Sorrow Hill. The Scarlet Crusade has a significant holding in and around Hearthglen to the north, and the Alliance has settled in the small Chillwind Camp to the south.\n\nLike their eastern counterparts, the Western Plaguelands were once fertile and beautiful but are now gray, blighted and noxious. Undead wander the land and haunt the abandoned towns and farmsteads. The largest Scourge city here is Andorhal, beneath which is an underground complex housing the undead's School of Necromancy. The Scarlet Crusade strikes against the Scourge from Hearthglen. The only place of any sanity in the Western Plaguelands is Uther's Tomb, a consecrated monument to the fallen hero Uther Lightbringer.",
		["icon"] = 236851,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(770),	-- Explore Western Plaguelands
			}),
			explorationHeader({
				visit_exploration(2298,{coord={67.5,73.4,MAP.WESTERN_PLAGUELANDS}}),	-- Caer Darrow
				exploration(200),	-- Dalson's Tears / Dalson's Farm [CATA+]
				exploration(2297),	-- Darrowmere Lake
				visit_exploration(2625,{coord={43.4,19.3,MAP.WESTERN_PLAGUELANDS}}),	-- Eastwall Gate
				exploration(199),	-- Felstone Field
				exploration(201),	-- Gahrron's Withering
				exploration(190),	-- Hearthglen
				exploration(192),	-- Northridge Lumber Camp
				exploration(193),	-- Ruins of Andorhal
				exploration(197),	-- Sorrow Hill
				exploration(813),	-- The Bulwark
				exploration(198),	-- The Weeping Cave
				exploration(202),	-- The Writhing Haunt
				exploration(2620),	-- Thondroril River
			}),
			n(FLIGHT_PATHS, {
				fp(66, {	-- Chillwind Camp, Western Plaguelands
					["cr"] = 12596,	-- Bibilfaz Featherwhistle <Gryphon Master>
					["coord"] = { 42.8, 85.0, MAP.WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(5066, {	-- A Call to Arms: The Plaguelands! [Stormwind City]
					["qg"] = 2198,	-- Crier Goodman
					["coord"] = { 54.8, 62.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5090, {	-- A Call to Arms: The Plaguelands! [Ironforge]
					["qg"] = 10877,	-- Courier Hammerfall
					["coord"] = { 31.6, 67.0, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5091, {	-- A Call to Arms: The Plaguelands! [Darnassus]
					["qg"] = 10878,	-- Herald Moonstalker
					["coord"] = { 36.4, 39.8, MAP.DARNASSUS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5093, {	-- A Call to Arms: The Plaguelands! [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5094, {	-- A Call to Arms: The Plaguelands! [Undercity]
					["qg"] = 10879,	-- Harbinger Balthazad
					["coord"] = { 64.0, 44.0, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(5095, {	-- A Call to Arms: The Plaguelands! [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				q(4971, {	-- A Matter of Time
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/15 Temporal Parasite slain
							["providers"] = {
								{ "n", 10717 },	-- Temporal Parasite
								{ "i", 12627 },	-- Temporal Displacer
							},
						}),
						i(15812),	-- Orchid Amice
						i(15813),	-- Gold Link Belt
					},
				}),
				{	-- A Plague Upon Thee (1/3)
					["allianceQuestData"] = q(5903, {	-- A Plague Upon Thee (1/3) [A]
						["qg"] = 11616,	-- Nathaniel Dumah
						["coord"] = { 43.4, 84.8, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5901, {	-- A Plague Upon Thee (1/3) [H]
						["qg"] = 11615,	-- Mickey Levine
						["coord"] = { 83.2, 72.4, MAP.TIRISFAL_GLADES },
					}),
					["maps"] = { MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/100 Plagueland Termites
							["providers"] = {
								{ "i",  15043 },	-- Plagueland Termites
								{ "i",  15042 },	-- Empty Termite Jar
								{ "o", 177464 },	-- Large Termite Mound
							},
							["coord"] = { 42.0, 38.0, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				},
				{	-- A Plague Upon Thee (2/3)
					["allianceQuestData"] = q(5904, {	-- A Plague Upon Thee (2/3) [A]
						["sourceQuest"] = 5903,	-- A Plague Upon Thee (1/3)
						["providers"] = {
							{ "n",  11616 },	-- Nathaniel Dumah
							{ "i",  15044 },	-- Barrel of Plagueland Termites
							{ "o", 177491 },	-- Termite Barrel
							{ "o", 177490 },	-- Northridge Lumber Mill Crate
						},
						["coord"] = { 43.4, 84.8, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5902, {	-- A Plague Upon Thee (2/3) [H]
						["sourceQuest"] = 5901,	-- A Plague Upon Thee (1/3)
						["providers"] = {
							{ "n",  11615 },	-- Mickey Levine
							{ "i",  15044 },	-- Barrel of Plagueland Termites
							{ "o", 177491 },	-- Termite Barrel
							{ "o", 177490 },	-- Northridge Lumber Mill Crate
						},
						["coord"] = { 83.2, 72.4, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 48,
				},
				{	-- A Plague Upon Thee (3/3)
					["allianceQuestData"] = q(6389, {	-- A Plague Upon Thee (3/3) [A]
						["sourceQuest"] = 5904,	-- A Plague Upon Thee (2/3)
					}),
					["hordeQuestData"] = q(6390, {	-- A Plague Upon Thee (3/3) [H]
						["sourceQuest"] = 5902,	-- A Plague Upon Thee (2/3)
					}),
					["providers"] = {
						{ "o", 177491 },	-- Termite Barrel
						{ "i",  15044 },	-- Barrel of Plagueland Termites
					},
					["coord"] = { 48.4, 31.9, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 48,
				},
				q(5153, {	-- A Strange Historian
					["sourceQuest"] = 5152,	-- Auntie Marlene
					["qg"] = 10927,	-- Marlene Redpath
					["coord"] = { 49.2, 78.4, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Joseph's Wedding Ring
							["providers"] = {
								{ "i",  12894 },	-- Joseph's Wedding Ring
								{ "o", 176145 },	-- Joseph Redpath's Monument
							},
							["coord"] = { 49.6, 76.8, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				{	-- Alas, Andorhal
					["allianceQuestData"] = q(211, {	-- Alas, Andorhal [A]
						["sourceQuest"] = 5097,	-- All Along the Watchtowers [A]
						["qg"] = 10838,	-- Commander Ashlam Valorfist
						["coord"] = { 42.7, 84.1, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(105, {	-- Alas, Andorhal [H]
						["sourceQuest"] = 5098,	-- All Along the Watchtowers
						["qg"] = 10837,	-- High Executor Derrington
						["coord"] = { 83.0, 69.0, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Araj's Phylactery Shard
							["providers"] = {
								{ "i",  17114 },	-- Araj's Phylactery Shard
								{ "o", 177241 },	-- Araj's Phylactery
							},
							["coord"] = { 45.6, 69.2, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 1852,	-- Araj the Summoner
						}),
						i(17759),	-- Mark of Resolution
					},
				},
				{	-- All Along the Watchtowers
					["allianceQuestData"] = q(5097, {	-- All Along the Watchtowers [A]
						["sourceQuest"] = 5092,	-- Clear The Way
						["qg"] = 10838,	-- Commander Ashlam Valorfist
						["coord"] = { 42.7, 84.1, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5098, {	-- All Along the Watchtowers [H]
						["sourceQuest"] = 5096,	-- Scarlet Diversions
						["qg"] = 10837,	-- High Executor Derrington
						["coord"] = { 83.0, 69.0, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- Tower One marked
							["provider"] = { "i", 12815 },	-- Beacon Torch
							["coord"] = { 40.0, 72.0, MAP.WESTERN_PLAGUELANDS },
						}),
						objective(2, {	-- Tower Two marked
							["provider"] = { "i", 12815 },	-- Beacon Torch
							["coord"] = { 42.0, 66.0, MAP.WESTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Tower Three marked
							["provider"] = { "i", 12815 },	-- Beacon Torch
							["coord"] = { 44.0, 63.0, MAP.WESTERN_PLAGUELANDS },
						}),
						objective(4, {	-- Tower Four marked
							["provider"] = { "i", 12815 },	-- Beacon Torch
							["coord"] = { 46.0, 70.0, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				},
				{	-- Argent Dawn Commission
					["allianceQuestData"] = q(5401, {	-- Argent Dawn Commission [A]
						["qg"] = 10840,	-- Argent Officer Pureheart
						["coord"] = { 43.0, 83.6, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5405, {	-- Argent Dawn Commission [H]
						["qg"] = 10839,	-- Argent Officer Garush
						["coord"] = { 83.2, 68.4, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						i(12846),	-- Argent Dawn Commission
					},
				},
				q(5021, {	-- Better Late Than Never (1/2)
					["providers"] = {
						{ "n",  10778 },	-- Janice Felstone
						{ "o", 175894 },	-- Janice's Parcel
					},
					["coord"] = { 38.4, 54.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				{	-- Better Late Than Never (2/2)
					["allianceQuestData"] = q(5022, {	-- Better Late Than Never (2/2) [A]
						["maps"] = { MAP.STORMWIND_CITY },
					}),
					["hordeQuestData"] = q(5023, {	-- Better Late Than Never (2/2) [H]
						["maps"] = { MAP.UNDERCITY },
					}),
					["providers"] = {
						{ "o", 175894 },	-- Janice's Parcel
						{ "i",  12724 },	-- Janice's Parcel
					},
					["sourceQuest"] = 5021,	-- Better Late Than Never (1/2)
					["coord"] = { 38.8, 55.2, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				},
				q(5210, {	-- Brother Carlin
					["sourceQuest"] = 5154,	-- The Annals of Darrowshire
					["providers"] = {
						{ "n", 10667 },	-- Chromie
						{ "i", 13202 },	-- Extended Annals of Darrowshire
					},
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(8415, {	-- Chillwind Point [TBC+] / Chillwind Camp
					["qgs"] = {
						5149,	-- Brandur Ironhammer <Paladin Trainer>
						928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					},
					["coords"] = {
						{ 23.6, 6.6, MAP.IRONFORGE },
						{ 48.6, 50.0, MAP.STORMWIND_CITY },
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 50,
				}),
				{	-- Chromatic Mantle of the Dawn
					["allianceQuestData"] = q(5521, {	-- Chromatic Mantle of the Dawn [A]
						["sourceQuest"] = 5507,	-- Mantles of the Dawn
						["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
						["coord"] = { 42.8, 83.8, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5524, {	-- Chromatic Mantle of the Dawn [H]
						["sourceQuest"] = 5504,	-- Mantles of the Dawn
						["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
						["coord"] = { 83.2, 68.2, MAP.TIRISFAL_GLADES },
					}),
					["altQuests"] = {
						5517,	-- Chromatic Mantle of the Dawn
						5521,	-- Chromatic Mantle of the Dawn
						5524,	-- Chromatic Mantle of the Dawn
					},
					["minReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn
					["cost"] = { { "i", 12844, 25 } },	-- Argent Dawn Valor Token
					["lvl"] = 55,
					["groups"] = {
						i(18182),	-- Chromatic Mantle of the Dawn
					},
				},
				q(5092, {	-- Clear the Way
					["sourceQuests"] = {
						5066,	-- A Call to Arms: The Plaguelands! [Stormwind City]
						5090,	-- A Call to Arms: The Plaguelands! [Ironforge]
						5091,	-- A Call to Arms: The Plaguelands! [Darnassus]
					},
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.7, 84.1, MAP.WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/10 Skeletal Flayer slain
							["provider"] = { "n", 1783 },	-- Skeletal Flayer
						}),
						objective(2, {	-- 0/10 Slavering Ghoul slain
							["provider"] = { "n", 1791 },	-- Slavering Ghoul
						}),
					},
				}),
				{	-- Corruptor's Scourgestones
					["allianceQuestData"] = q(5404, {	-- Corruptor's Scourgestones [A]
						["qg"] = 10840,	-- Argent Officer Pureheart
						["coord"] = { 43.0, 83.6, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5406, {	-- Corruptor's Scourgestones [H]
						["qg"] = 10839,	-- Argent Officer Garush
						["coord"] = { 83.2, 68.4, MAP.TIRISFAL_GLADES },
					}),
					["cost"] = { { "i", 12843, 1 } },	-- Corruptor's Scourgestone
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				},
				q(4972, {	-- Counting Out Time (1/2)
					["sourceQuest"] = 4971,	-- A Matter of Time
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/5 Andorhal Watch
							["providers"] = {
								{ "i",  12638 },	-- Andorhal Watch
								{ "o", 175802 },	-- Small Lockbox
							},
							["coord"] = { 41.3, 69.8, MAP.WESTERN_PLAGUELANDS },
						}),
						i(12650),	-- Attuned Dampener
					},
				}),
				q(4973, {	-- Counting Out Time (2/2)
					["sourceQuest"] = 4972,	-- Counting Out Time (1/2)
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["lvl"] = 53,
					["groups"] = {
						objective(1, {	-- 0/5 Andorhal Watch
							["providers"] = {
								{ "i",  12638 },	-- Andorhal Watch
								{ "o", 175802 },	-- Small Lockbox
							},
							["coord"] = { 41.3, 69.8, MAP.WESTERN_PLAGUELANDS },
						}),
						i(12650),	-- Attuned Dampener
					},
				}),
				q(5221, {	-- Dalson's Tears Cauldron
					["sourceQuests"] = {
						5219,	-- Target: Dalson's Tears
						5231,	-- Target: Dalson's Tears
					},
					["provider"] = { "o", 177289 },	-- Scourge Cauldron
					["coord"] = { 46.2, 52.0, MAP.WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(9444, {	-- Defiling Uther's Tomb
					["sourceQuest"] = 9443,	-- The So-Called Mark of the Lightbringer
					["qg"] = 17099,	-- Mehlar Dawnblade
					["coord"] = { 26.6, 58.5, MAP.WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Uther's Tomb Defiled
							["provider"] = { "i", 23691 },	-- Corrupted Mark of the Lightbringer
							["coord"] = { 52.1, 83.5, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				q(8414, {	-- Dispelling Evil
					["sourceQuest"] = 8415,	-- Chillwind Point [TBC+] / Chillwind Camp
					["qg"] = 10838,	-- Commander Ashlam Valorfist
					["coord"] = { 42.8, 84.0, MAP.WESTERN_PLAGUELANDS },
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(5218, {	-- Felstone Field Cauldron
					["sourceQuests"] = {
						5216,	-- Target: Felstone Field
						5229,	-- Target: Felstone Field
					},
					["provider"] = { "o", 176361 },	-- Scourge Cauldron
					["coord"] = { 37.2, 56.9, MAP.WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13357, 6 },	-- Osseous Agitator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(5227, {	-- Gahrron's Withering Cauldron
					["sourceQuests"] = {
						5225,	-- Target: Gahrron's Withering
						5235,	-- Target: Gahrron's Withering
					},
					["provider"] = { "o", 176392 },	-- Scourge Cauldron
					["coord"] = { 62.5, 58.6, MAP.WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13354, 4 },	-- Ectoplasmic Resonator
						{ "i", 14047, 4 },	-- Runecloth
					},
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				{	-- Glyphed Oaken Branch
					["allianceQuestData"] = q(4986, {	-- Glyphed Oaken Branch [A]
						["maps"] = { MAP.DARNASSUS },
					}),
					["hordeQuestData"] = q(4987, {	-- Glyphed Oaken Branch [H]
						["maps"] = { MAP.THUNDER_BLUFF },
					}),
					["providers"] = {
						{ "n", 10739 },	-- Mulgris Deepriver
						{ "i", 12663 },	-- Glyphed Oaken Branch
					},
					["sourceQuest"] = 4985,	-- The Wildlife Suffers Too
					["coord"] = { 53.6, 64.6, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 51,
					["groups"] = {
						i(15804),	-- Cerise Drape
					},
				},
				q(5050, {	-- Good Luck Charm
					["allianceQuestData"] = {
						["providers"] = {
							{ "n", 3520 },	-- Ol' Emma
							{ "i", 12721 },	-- Good Luck Half-Charm
						},
						["sourceQuest"] = 5048,	-- Good Natured Emma
						["coord"] = { 52.4, 41.8, MAP.STORMWIND_CITY },
					},
					["hordeQuestData"] = {
						["providers"] = {
							{ "n", 8403 },	-- Jeremiah Payson <Cockroach Vendor>
							{ "i", 12721 },	-- Good Luck Half-Charm
						},
						["sourceQuest"] = 5049,	-- The Jeremiah Blues
						["coord"] = { 67.4, 43.8, MAP.UNDERCITY },
					},
					["lvl"] = 50,
				}),
				q(5048, {	-- Good Natured Emma
					["sourceQuest"] = 5022,	-- Better Late Than Never (2/2) [A]
					["providers"] = {
						{ "n", 10782 },	-- Royal Factor Bathrilor <Stormwind Census>
						{ "i", 12724 },	-- Janice's Parcel
					},
					["coord"] = { 48.6, 30.6, MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(8416, {	-- Inert Scourgestones
					["sourceQuest"] = 8414,	-- Dispelling Evil
					["providers"] = {
						{ "n", 1854 },	-- High Priest Thel'danis
						{ "i", 20612 },	-- Inert Scourgestone
					},
					["coord"] = { 52.2, 83.6, MAP.WESTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				{	-- Invader's Scourgestones
					["allianceQuestData"] = q(5403, {	-- Invader's Scourgestones [A]
						["qg"] = 10840,	-- Argent Officer Pureheart
						["coord"] = { 43.0, 83.6, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5407, {	-- Invader's Scourgestones [H]
						["qg"] = 10839,	-- Argent Officer Garush
						["coord"] = { 83.2, 68.4, MAP.TIRISFAL_GLADES },
					}),
					["cost"] = { { "i", 12841, 10 } },	-- Invader's Scourgestones
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				},
				q(5142, {	-- Little Pamela
					["altQuests"] = { 5601 },	-- Sister Pamela
					["qg"] = 10927,	-- Marlene Redpath
					["coord"] = { 49.2, 78.4, MAP.WESTERN_PLAGUELANDS },
					["maps"] = { MAP.EASTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5059, {	-- Locked Away
					["providers"] = {
						{ "o", 175925 },	-- Outhouse
						{ "i",  12738 },	-- Dalson Outhouse Key
					},
					["coord"] = { 48.2, 49.6, MAP.WESTERN_PLAGUELANDS },
					["repeatable"] = true,
					["lvl"] = 52,
					["groups"] = {
						i(12739, {	-- Dalson Cabinet Key
							["coord"] = { 48.2, 49.6, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 10836,	-- Farmer Dalson
						}),
					},
				}),
				q(5060, {	-- Locked Away
					["providers"] = {
						{ "o", 175924 },	-- Locked Cabinet
						{ "i",  12739 },	-- Dalson Cabinet Key
					},
					["coord"] = { 47.4, 49.7, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 52,
					["groups"] = {
						i(13474),	-- Farmer Dalson's Shotgun
						i(13475),	-- Dalson Family Wedding Ring
					},
				}),
				{	-- Mantles of the Dawn
					["allianceQuestData"] = q(5507, {	-- Mantles of the Dawn [A]
						["qg"] = 10857,	-- Argent Quartermaster Lightspark <The Argent Dawn>
						["coord"] = { 42.8, 83.8, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5504, {	-- Mantles of the Dawn [H]
						["qg"] = 10856,	-- Argent Quartermaster Hasana <The Argent Dawn>
						["coord"] = { 83.2, 68.2, MAP.TIRISFAL_GLADES },
					}),
					["minReputation"] = { FACTION_ARGENT_DAWN, REVERED },	-- Argent Dawn
					["cost"] = { { "i", 12844, 10 } },	-- Argent Dawn Valor Token
					["lvl"] = 55,
				},
				{	-- Minion's Scourgestones
					["allianceQuestData"] = q(5402, {	-- Minion's Scourgestones [A]
						["qg"] = 10840,	-- Argent Officer Pureheart
						["coord"] = { 43.0, 83.6, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5408, {	-- Minion's Scourgestones [H]
						["qg"] = 10839,	-- Argent Officer Garush
						["coord"] = { 83.2, 68.4, MAP.TIRISFAL_GLADES },
					}),
					["cost"] = { { "i", 12840, 20 } },	-- Minion's Scourgestone
					["repeatable"] = true,
					["lvl"] = 50,
					["groups"] = {
						i(12844),	-- Argent Dawn Valor Token
					},
				},
				{	-- Mission Accomplished!
					["allianceQuestData"] = q(5237, {	-- Mission Accomplished! [A]
						["sourceQuest"] = 5226,	-- Return to Chillwind Camp
						["qg"] = 10838,	-- Commander Ashlam Valorfist
						["coord"] = { 42.7, 84.1, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5238, {	-- Mission Accomplished! [H]
						["sourceQuest"] = 5236,	-- Return to the Bulwark
						["qg"] = 10837,	-- High Executor Derrington
						["coord"] = { 83.0, 69.0, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						i(15801),	-- Valiant Shortsword
						i(15800),	-- Intrepid Shortsword
						i(15799),	-- Heroic Commendation Medal
					},
				},
				q(5058, {	-- Mrs. Dalson's Diary
					["provider"] = { "o", 175926 },	-- Mrs. Dalson's Diary
					["coord"] = { 47.8, 50.7, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 52,
				}),
				{	-- Return to Chillwind Camp / Return to the Bulwark [Dalson's Tears]
					["allianceQuestData"] = q(5220, {	-- Return to Chillwind Camp [A]
						["sourceQuest"] = 5219,	-- Target: Dalson's Tears [A]
					}),
					["hordeQuestData"] = q(5232, {	-- Return to the Bulwark [H]
						["sourceQuest"] = 5231,	-- Target: Dalson's Tears [H]
					}),
					["providers"] = {
						{ "o", 177289 },	-- Scourge Cauldron
						{ "i",  13191 },	-- Filled Dalson's Tears Bottle
					},
					["coord"] = { 46.2, 52.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				},
				{	-- Return to Chillwind Camp / Return to the Bulwark [Felstone Field]
					["allianceQuestData"] = q(5217, {	-- Return to Chillwind Camp [A]
						["sourceQuest"] = 5216,	-- Target: Felstone Field [A]
					}),
					["hordeQuestData"] = q(5230, {	-- Return to the Bulwark [H]
						["sourceQuest"] = 5229,	-- Target: Felstone Field [H]
					}),
					["providers"] = {
						{ "o", 176361 },	-- Scourge Cauldron
						{ "i",  13190 },	-- Filled Felstone Field Bottle
					},
					["coord"] = { 37.2, 56.9, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				},
				{	-- Return to Chillwind Camp / Return to the Bulwark [Gahrron's Withering]
					["allianceQuestData"] = q(5226, {	-- Return to Chillwind Camp [A]
						["sourceQuest"] = 5225,	-- Target: Gahrron's Withering [A]
					}),
					["hordeQuestData"] = q(5236, {	-- Return to the Bulwark [H]
						["sourceQuest"] = 5235,	-- Target: Gahrron's Withering [H]
					}),
					["providers"] = {
						{ "o", 176392 },	-- Scourge Cauldron
						{ "i",  13193 },	-- Filled Gahrron's Withering Bottle
					},
					["coord"] = { 62.5, 58.6, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				},
				{	-- Return to Chillwind Camp / Return to the Bulwark [Writhing Haunt]
					["allianceQuestData"] = q(5223, {	-- Return to Chillwind Camp [A]
						["sourceQuest"] = 5222,	-- Target: Writhing Haunt [A]
					}),
					["hordeQuestData"] = q(5234, {	-- Return to the Bulwark [H]
						["sourceQuest"] = 5233,	-- Target: Writhing Haunt [H]
					}),
					["providers"] = {
						{ "o", 176393 },	-- Scourge Cauldron
						{ "i",  13192 },	-- Filled Writhing Haunt Bottle
					},
					["coord"] = { 53.0, 65.7, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				},
				q(5096, {	-- Scarlet Diversions
					["sourceQuests"] = {
						5093,	-- A Call to Arms: The Plaguelands! [Orgrimmar]
						5094,	-- A Call to Arms: The Plaguelands! [Undercity]
						5095,	-- A Call to Arms: The Plaguelands! [Thunder Bluff]
					},
					["qg"] = 10837,	-- High Executor Derrington
					["coord"] = { 83.0, 69.0, MAP.TIRISFAL_GLADES },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- Destroy the command tent and plant the Scourge banner in the camp
							["providers"] = {
								{ "i",  12807 },	-- Scourge Banner
								{ "i",  12814 },	-- Flame in a Bottle
								{ "o", 176092 },	-- Box of Incendiaries
								{ "o", 176210 },	-- Command Tent
							},
							["coords"] = {
								{ 83.1, 69.1, MAP.TIRISFAL_GLADES },
								{ 40.0, 53.0, MAP.WESTERN_PLAGUELANDS },
							},
						}),
					},
				}),
				{	-- Target: Dalson's Tears
					["allianceQuestData"] = q(5219, {	-- Target: Dalson's Tears [A]
						["sourceQuest"] = 5217,	-- Return to Chillwind Camp
						["qg"] = 11053,	-- High Priestess MacDonnell
						["coord"] = { 43.0, 84.5, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5231, {	-- Target: Dalson's Tears [H]
						["sourceQuest"] = 5230,	-- Return to the Bulwark
						["qg"] = 11055,	-- Shadow Priestess Vandis
						["coord"] = { 83.0, 71.8, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Dalson's Tears Cauldron Key
							["providers"] = {
								{ "i", 13195 },	-- Dalson's Tears Cauldron Key
								{ "i", 13187 },	-- Empty Dalson's Tears Bottle
							},
							["coord"] = { 46.2, 52.6, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 11077,	-- Cauldron Lord Malvinious
						}),
					},
				},
				{	-- Target: Felstone Field
					["allianceQuestData"] = q(5216, {	-- Target: Felstone Field [A]
						["sourceQuest"] = 5215,	-- The Scourge Cauldrons
						["qg"] = 11053,	-- High Priestess MacDonnell
						["coord"] = { 43.0, 84.5, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5229, {	-- Target: Felstone Field [H]
						["sourceQuest"] = 5228,	-- The Scourge Cauldrons
						["qg"] = 11055,	-- Shadow Priestess Vandis
						["coord"] = { 83.0, 71.8, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Felstone Field Cauldron Key
							["providers"] = {
								{ "i", 13194 },	-- Felstone Field Cauldron Key
								{ "i", 13186 },	-- Empty Felstone Field Bottle
							},
							["coord"] = { 37.0, 57.6, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 11075,	-- Cauldron Lord Bilemaw
						}),
					},
				},
				{	-- Target: Gahrron's Withering
					["allianceQuestData"] = q(5225, {	-- Target: Gahrron's Withering [A]
						["sourceQuest"] = 5223,	-- Return to Chillwind Camp
						["qg"] = 11053,	-- High Priestess MacDonnell
						["coord"] = { 43.0, 84.5, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5235, {	-- Target: Gahrron's Withering [H]
						["sourceQuest"] = 5234,	-- Return to the Bulwark
						["qg"] = 11055,	-- Shadow Priestess Vandis
						["coord"] = { 83.0, 71.8, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Gahrron's Withering Cauldron Key
							["providers"] = {
								{ "i", 13196 },	-- Gahrron's Withering Cauldron Key
								{ "i", 13189 },	-- Empty Gahrron's Withering Bottle
							},
							["coord"] = { 62.6, 59.0, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 11078,	-- Cauldron Lord Soulwrath
						}),
					},
				},
				{	-- Target: Writhing Haunt
					["allianceQuestData"] = q(5222, {	-- Target: Writhing Haunt [A]
						["sourceQuest"] = 5220,	-- Return to Chillwind Camp
						["qg"] = 11053,	-- High Priestess MacDonnell
						["coord"] = { 43.0, 84.5, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5233, {	-- Target: Writhing Haunt [H]
						["sourceQuest"] = 5232,	-- Return to the Bulwark
						["qg"] = 11055,	-- Shadow Priestess Vandis
						["coord"] = { 83.0, 71.8, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Writhing Haunt Cauldron Key
							["providers"] = {
								{ "i", 13197 },	-- Writhing Haunt Cauldron Key
								{ "i", 13188 },	-- Empty Writhing Haunt Bottle
							},
							["coord"] = { 52.8, 66.0, MAP.WESTERN_PLAGUELANDS },
							["cr"] = 11076,	-- Cauldron Lord Razarch
						}),
					},
				},
				q(5154, {	-- The Annals of Darrowshire
					["sourceQuest"] = 5153,	-- A Strange Historian
					["qg"] = 10667,	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Annals of Darrowshire
							["providers"] = {
								{ "i",  12900 },	-- Annals of Darrowshire
								{ "o", 176150 },	-- Musty Tome
							},
							["description"] = "The Musty Tome you are looking for has a faint X on its binding. If none of the books have this marking, you may have to interact with a few to despawn them.\n\nWARNING: The ghosts that spawn can be a pain.",
							["coord"] = { 43.4, 69.7, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				q(6186, {	-- The Blightcaller Cometh
					["sourceQuest"] = 6185,	-- The Eastern Plagues
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["coord"] = { 43.6, 84.5, MAP.WESTERN_PLAGUELANDS },
					["maps"] = { MAP.STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(6185, {	-- The Eastern Plagues
					["sourceQuest"] = 6184,	-- Flint Shadowmore
					["qg"] = 12425,	-- Flint Shadowmore <SI:7>
					["coord"] = { 43.6, 84.5, MAP.WESTERN_PLAGUELANDS },
					["maps"] = { MAP.EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 SI:7 Insignia (Rutger)
							["providers"] = {
								{ "i",  16003 },	-- SI:7 Insignia (Rutger)
								{ "o", 177806 },	-- Mangled Human Remains
							},
							["coord"] = { 28.8, 79.8, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(2, {	-- 0/1 SI:7 Insignia (Fredo)
							["providers"] = {
								{ "i",  16001 },	-- SI:7 Insignia (Fredo)
								{ "o", 177804 },	-- Mangled Human Remains
							},
							["coord"] = { 27.3, 75.0, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- 0/1 SI:7 Insignia (Turyen)
							["providers"] = {
								{ "i",  16002 },	-- SI:7 Insignia (Turyen)
								{ "o", 177805 },	-- Mangled Human Remains
							},
							["coord"] = { 28.8, 74.9, MAP.EASTERN_PLAGUELANDS },
						}),
						objective(4, {	-- The Blightcaller Uncovered
							["provider"] = { "n", 11878 },	-- Nathanos Blightcaller <Champion of the Banshee Queen>
							["coord"] = { 26.6, 74.8, MAP.EASTERN_PLAGUELANDS },
						}),
					},
				}),
				q(5049, {	-- The Jeremiah Blues
					["sourceQuest"] = 5023,	-- Better Late Than Never (2/2) [H]
					["providers"] = {
						{ "n", 10781 },	-- Royal Overseer Bauhaus <Undercity Census>
						{ "i", 12724 },	-- Janice's Parcel
					},
					["coord"] = { 69.6, 43.6, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(9474, {	-- The Mark of the Lightbringer
					["qg"] = 17238,	-- Anchorite Truuen
					["coord"] = { 42.9, 84.5, MAP.WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Mark of the Lightbringer
							["providers"] = {
								{ "i",  23661 },	-- Mark of the Lightbringer
								{ "o", 181629 },	-- Holy Coffer
							},
							["coord"] = { 53.8, 24.4, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				{	-- The Scourge Cauldrons
					["allianceQuestData"] = q(5215, {	-- The Scourge Cauldrons [A]
						["sourceQuest"] = 5092,	-- Clear the Way
						["qg"] = 10838,	-- Commander Ashlam Valorfist
						["coord"] = { 42.7, 84.1, MAP.WESTERN_PLAGUELANDS },
					}),
					["hordeQuestData"] = q(5228, {	-- The Scourge Cauldrons [H]
						["sourceQuest"] = 5096,	-- Scarlet Diversions
						["qg"] = 10837,	-- High Executor Derrington
						["coord"] = { 83.0, 69.0, MAP.TIRISFAL_GLADES },
					}),
					["lvl"] = 50,
				},
				q(9443, {	-- The So-Called Mark of the Lightbringer
					["qg"] = 17099,	-- Mehlar Dawnblade
					["coord"] = { 26.6, 58.5, MAP.WESTERN_PLAGUELANDS },
					["races"] = HORDE_ONLY,
					["lvl"] = 55,
					["groups"] = {
						objective(1, {	-- 0/1 Mark of the Lightbringer
							["providers"] = {
								{ "i",  23661 },	-- Mark of the Lightbringer
								{ "o", 181629 },	-- Holy Coffer
							},
							["coord"] = { 53.8, 24.4, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				q(4984, {	-- The Wildlife Suffers Too (1/2)
					["qg"] = 10739,	-- Mulgris Deepriver
					["coord"] = { 53.6, 64.6, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 51,
					["groups"] = {
						objective(1, {	-- 0/8 Diseased Wolf slain
							["provider"] = { "n", 1817 },	-- Diseased Wolf
						}),
					},
				}),
				q(4985, {	-- The Wildlife Suffers Too (2/2)
					["sourceQuest"] = 4984,	-- The Wildlife Suffers Too (1/2)
					["qg"] = 10739,	-- Mulgris Deepriver
					["coord"] = { 53.6, 64.6, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 51,
					["groups"] = {
						objective(1, {	-- 0/8 Diseased Grizzly slain
							["provider"] = { "n", 1816 },	-- Diseased Grizzly
						}),
					},
				}),
				q(5051, {	-- Two Halves Become One
					["sourceQuest"] = 5050,	-- Good Luck Charm
					["qg"] = 10778,	-- Janice Felstone
					["coord"] = { 38.4, 54.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Good Luck Charm
							["provider"] = { "i", 12723 },	-- Good Luck Charm
							["cost"] = {
								{ "i", 12721, 1 },	-- Good Luck Half-Charm
								{ "i", 12722, 1 },	-- Good Luck Other-Half-Charm
							},
						}),
						i(13473),	-- Felstone Good Luck Charm
					},
				}),
				q(6004, {	-- Unfinished Business (1/3)
					["qg"] = 11610,	-- Kirsta Deepshadow
					["coord"] = { 52.0, 28.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/2 Scarlet Medic slain
							["provider"] = { "n", 10605 },	-- Scarlet Medic
						}),
						objective(2, {	-- 0/2 Scarlet Hunter slain
							["provider"] = { "n", 1831 },	-- Scarlet Hunter
						}),
						objective(3, {	-- 0/2 Scarlet Mage slain
							["provider"] = { "n", 1826 },	-- Scarlet Mage
						}),
						objective(4, {	-- 0/2 Scarlet Knight slain
							["provider"] = { "n", 1833 },	-- Scarlet Knight
						}),
					},
				}),
				q(6023, {	-- Unfinished Business (2/3)
					["sourceQuest"] = 6004,	-- Unfinished Business (1/3)
					["qg"] = 11610,	-- Kirsta Deepshadow
					["coord"] = { 52.0, 28.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
					["groups"] = {
						objective(1, {	-- 0/1 Huntsman Radley slain
							["provider"] = { "n", 11613 },	-- Huntsman Radley
							["coord"] = { 57.8, 36.0, MAP.WESTERN_PLAGUELANDS },
						}),
						objective(2, {	-- 0/1 Cavalier Durgen slain
							["provider"] = { "n", 11611 },	-- Cavalier Durgen
							["coord"] = { 55.0, 23.6, MAP.WESTERN_PLAGUELANDS },
						}),
					},
				}),
				q(6025, {	-- Unfinished Business (3/3)
					["sourceQuest"] = 6023,	-- Unfinished Business (2/3)
					["qg"] = 11610,	-- Kirsta Deepshadow
					["coord"] = { 52.0, 28.0, MAP.WESTERN_PLAGUELANDS },
					["lvl"] = 50,
				}),
				q(5224, {	-- Writhing Haunt Cauldron
					["sourceQuests"] = {
						5222,	-- Target: Writhing Haunt
						5233,	-- Target: Writhing Haunt
					},
					["provider"] = { "o", 176393 },	-- Scourge Cauldron
					["coord"] = { 53.0, 65.7, MAP.WESTERN_PLAGUELANDS },
					["cost"] = {
						{ "i", 13320, 1 },	-- Arcane Quickener
						{ "i", 13356, 5 },	-- Somatic Intensifier
						{ "i", 14047, 4 },	-- Runecloth
					},
					["repeatable"] = true,
					["lvl"] = 50,
				}),
			}),
			n(RARES, {
				i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
					["description"] = "Can drop from any Undead rare mob or boss in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				n(1843, {	-- Foreman Jerris
					["coords"] = {
						{ 45.6, 9.4, MAP.WESTERN_PLAGUELANDS },
						{ 47.6, 13.8, MAP.WESTERN_PLAGUELANDS },
						{ 44.6, 19.0, MAP.WESTERN_PLAGUELANDS },
						{ 48.0, 21.6, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1844, {	-- Foreman Marcrid
					["coords"] = {
						{ 44.4, 34.4, MAP.WESTERN_PLAGUELANDS },
						{ 48.4, 34.6, MAP.WESTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12836),	-- Plans: Frostguard (RECIPE!)
					},
				}),
				n(1847, {	-- Foulmane
					["coords"] = {
						{ 44.0, 53.0, MAP.WESTERN_PLAGUELANDS },
						{ 46.2, 48.6, MAP.WESTERN_PLAGUELANDS },
						{ 48.0, 54.6, MAP.WESTERN_PLAGUELANDS },
						{ 46.2, 54.2, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1848, {	-- Lord Maldazzar
					["coords"] = {
						{ 48.8, 80.4, MAP.WESTERN_PLAGUELANDS },
						{ 50.2, 75.6, MAP.WESTERN_PLAGUELANDS },
						{ 54.5, 80.8, MAP.WESTERN_PLAGUELANDS },
						{ 50.4, 80.2, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1850, {	-- Putridius
					["coords"] = {
						{ 44.8, 62.8, MAP.WESTERN_PLAGUELANDS },
						{ 43.6, 67.6, MAP.WESTERN_PLAGUELANDS },
						{ 39.8, 68.0, MAP.WESTERN_PLAGUELANDS },
						{ 39.6, 74.2, MAP.WESTERN_PLAGUELANDS },
						{ 45.6, 72.8, MAP.WESTERN_PLAGUELANDS },
						{ 49.2, 70.6, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1841, {	-- Scarlet Executioner
					["coords"] = {
						{ 45.2, 17.2, MAP.WESTERN_PLAGUELANDS },
						{ 45.8, 21.0, MAP.WESTERN_PLAGUELANDS },
						{ 44.2, 18.6, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1839, {	-- Scarlet High Clerist
					["coord"] = { 55.0, 23.6, MAP.WESTERN_PLAGUELANDS },
				}),
				n(1838, {	-- Scarlet Interrogator
					["coords"] = {
						{ 43.6, 16.6, MAP.WESTERN_PLAGUELANDS },
						{ 44.2, 18.6, MAP.WESTERN_PLAGUELANDS },
						{ 47.6, 13.8, MAP.WESTERN_PLAGUELANDS },
						{ 47.8, 18.8, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1837, {	-- Scarlet Judge
					["coords"] = {
						{ 43.2, 10.6, MAP.WESTERN_PLAGUELANDS },
						{ 43.2, 16.6, MAP.WESTERN_PLAGUELANDS },
						{ 45.8, 20.8, MAP.WESTERN_PLAGUELANDS },
						{ 41.0, 14.6, MAP.WESTERN_PLAGUELANDS },
					},
				}),
				n(1885, {	-- Scarlet Smith
					["coords"] = {
						{ 43.0, 12.8, MAP.WESTERN_PLAGUELANDS },
						{ 46.8, 12.0, MAP.WESTERN_PLAGUELANDS },
						{ 47.6, 13.6, MAP.WESTERN_PLAGUELANDS },
						{ 47.0, 17.8, MAP.WESTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12719),	-- Plans: Runic Plate Leggings (RECIPE!)
					},
				}),
				n(1851, {	-- The Husk
					["coords"] = {
						{ 66.6, 42.6, MAP.WESTERN_PLAGUELANDS },
						{ 65.0, 38.6, MAP.WESTERN_PLAGUELANDS },
						{ 61.8, 37.6, MAP.WESTERN_PLAGUELANDS },
						{ 64.2, 33.4, MAP.WESTERN_PLAGUELANDS },
					},
				}),
			}),
			n(TREASURES, {
				o(176213, {	-- Blood of Heroes
					["description"] = "This item can be found sporatically on the ground in the Plaguelands.",
					["coords"] = {
						-- Hearthglen
						{ 54.9, 27.1, MAP.WESTERN_PLAGUELANDS },
						{ 46.8, 34.5, MAP.WESTERN_PLAGUELANDS },
						{ 49.8, 33.3, MAP.WESTERN_PLAGUELANDS },
						{ 56.7, 34.7, MAP.WESTERN_PLAGUELANDS },

						-- Spooky Cave
						{ 66.5, 42.2, MAP.WESTERN_PLAGUELANDS },
						{ 68.0, 44.7, MAP.WESTERN_PLAGUELANDS },
						{ 64.0, 48.7, MAP.WESTERN_PLAGUELANDS },
						{ 68.7, 49.2, MAP.WESTERN_PLAGUELANDS },
						{ 67.0, 53.8, MAP.WESTERN_PLAGUELANDS },

						-- Gahrron's Withering
						{ 64.1, 57.9, MAP.WESTERN_PLAGUELANDS },
						{ 63.2, 59.2, MAP.WESTERN_PLAGUELANDS },
						{ 62.0, 58.5, MAP.WESTERN_PLAGUELANDS },

						-- Felstone Field
						{ 36.5, 53.6, MAP.WESTERN_PLAGUELANDS },
						{ 35.9, 57.5, MAP.WESTERN_PLAGUELANDS },
						{ 38.2, 56.3, MAP.WESTERN_PLAGUELANDS },
						{ 40.8, 57.5, MAP.WESTERN_PLAGUELANDS },
						{ 42.2, 54.8, MAP.WESTERN_PLAGUELANDS },

						-- Dalson's Tears
						{ 44.6, 53.5, MAP.WESTERN_PLAGUELANDS },
						{ 45.9, 51.1, MAP.WESTERN_PLAGUELANDS },
						{ 47.9, 53.1, MAP.WESTERN_PLAGUELANDS },
						{ 52.3, 55.0, MAP.WESTERN_PLAGUELANDS },
						{ 47.0, 69.9, MAP.WESTERN_PLAGUELANDS },

						-- The Writhing Haunt
						{ 53.5, 63.5, MAP.WESTERN_PLAGUELANDS },
						{ 52.3, 66.3, MAP.WESTERN_PLAGUELANDS },
						{ 53.3, 66.2, MAP.WESTERN_PLAGUELANDS },
						{ 55.3, 59.6, MAP.WESTERN_PLAGUELANDS },
						{ 57.8, 66.6, MAP.WESTERN_PLAGUELANDS },

						-- Ruins of Andorhal
						{ 41.5, 62.1, MAP.WESTERN_PLAGUELANDS },
						{ 42.8, 64.2, MAP.WESTERN_PLAGUELANDS },
						{ 44.2, 65.0, MAP.WESTERN_PLAGUELANDS },
						{ 39.7, 69.6, MAP.WESTERN_PLAGUELANDS },
						{ 40.6, 73.1, MAP.WESTERN_PLAGUELANDS },
						{ 43.3, 68.3, MAP.WESTERN_PLAGUELANDS },
						{ 43.7, 70.5, MAP.WESTERN_PLAGUELANDS },
						{ 44.5, 71.7, MAP.WESTERN_PLAGUELANDS },
						{ 45.9, 71.4, MAP.WESTERN_PLAGUELANDS },
						{ 47.6, 70.0, MAP.WESTERN_PLAGUELANDS },
						{ 47.0, 67.1, MAP.WESTERN_PLAGUELANDS },
						{ 49.4, 68.1, MAP.WESTERN_PLAGUELANDS },

						-- Caer Darrow
						{ 63.6, 75.5, MAP.WESTERN_PLAGUELANDS },
						{ 64.9, 74.5, MAP.WESTERN_PLAGUELANDS },
						{ 65.8, 76.8, MAP.WESTERN_PLAGUELANDS },
						{ 68.9, 73.8, MAP.WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, MAP.WESTERN_PLAGUELANDS },
						{ 69.5, 78.6, MAP.WESTERN_PLAGUELANDS },
						{ 68.3, 81.6, MAP.WESTERN_PLAGUELANDS },
						{ 68.7, 79.1, MAP.WESTERN_PLAGUELANDS },
						{ 67.8, 84.6, MAP.WESTERN_PLAGUELANDS },
					},
					["groups"] = {
						i(12938),	-- Blood of Heroes
					},
				}),
			}),
			n(VENDORS, {
				n(11056, {	-- Alchemist Arbington
					["coord"] = { 42.6, 83.8, MAP.WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(13320),	-- Arcane Quickener
						i(13370),	-- Vitreous Focuser
					},
				}),
				n(10857, {	-- Argent Quartermaster Lightspark <The Argent Crusade>
					["coord"] = { 42.8, 83.8, MAP.WESTERN_PLAGUELANDS },
					["sym"] = {{ "select", "npcID", 11536 }, { "isnt", "questID" }, { "pop" }, { "exclude", "itemID", 136801, 136928 } },	-- Quartermaster Miranda Breechlock <The Argent Crusade>
				}),
				n(10667, {	-- Chromie
					["coord"] = { 39.4, 66.8, MAP.WESTERN_PLAGUELANDS },
				}),
				n(12942, {	-- Leonard Porter <Leatherworking Supplies>
					["coord"] = { 43.0, 84.3, MAP.WESTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(15741, {	-- Pattern: Stormshroud Pants (RECIPE!)
							["isLimited"] = true,
						}),
						i(15725, {	-- Pattern: Wicked Leather Gauntlets (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(11278, {	-- Magnus Frostwake
					["cost"] = { { "i", 13544, 1 } },	-- Spectral Essence
					["description"] = "Only visible if you have the Spectral Essence equipped.",
					["coord"] = { 68.0, 77.6, MAP.WESTERN_PLAGUELANDS },
					["groups"] = {
						i(8030),	-- Plans: Ebon Shiv (RECIPE!)
						i(12823),	-- Plans: Huge Thorium Battleaxe (RECIPE!)
						i(12819),	-- Plans: Ornate Thorium Handaxe (RECIPE!)
						i(12703),	-- Plans: Storm Gauntlets (RECIPE!)
						i(13501),	-- Recipe: Major Mana Potion (RECIPE!)
						i(13485),	-- Recipe: Transmute Water to Air (RECIPE!)
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(22526),	-- Bone Fragments
				i(12738, {	-- Dalson Outhouse Key
					["coord"] = { 48.0, 49.8, MAP.WESTERN_PLAGUELANDS },
					["sourceQuest"] = 5058,	-- Mrs. Dalson's Diary
					["cr"] = 10816,	-- Wandering Skeleton
				}),
				i(13354, {	-- Ectoplasmic Resonator
					["description"] = "These only drop from ghostly mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = { { "i", 13370, 1 } },	-- Vitreous Focuser
				}),
				i(12722, {	-- Good Luck Other-Half-Charm
					["coord"] = { 38.6, 56.2, MAP.WESTERN_PLAGUELANDS },
					["cr"] = 10801,	-- Jabbering Ghoul
				}),
				i(16252, {	-- Formula: Enchant Weapon - Crusader
					["cr"] = 4494,	-- Scarlet Spellbinder
				}),
				i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
					["description"] = "Can drop from any Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
					["description"] = "Can drop from weak Undead mobs in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
				}),
				i(20768, {	-- Oozing Bag
					["crs"] = {
						1808,	-- Devouring Ooze
						12387,	-- Large Vile Slime
						1806,	-- Vile Slime
					},
					["sym"] = {{"select","itemID", 20769}},	-- Disgusting Oozeling (PET!)
				}),
				i(13357, {	-- Osseous Agitator
					["description"] = "These only drop from skeletal mobs in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = { { "i", 13370, 1 } },	-- Vitreous Focuser
				}),
				i(15771, {	-- Pattern: Living Breastplate (RECIPE!)
					["coords"] = {
						{ 64.6, 36.0, MAP.WESTERN_PLAGUELANDS },
						{ 62.4, 36.2, MAP.WESTERN_PLAGUELANDS },
					},
					["crs"] = {
						1813,	-- Decaying Horror
					},
				}),
				i(12707, {	-- Plans: Runic Plate Boots
					["cr"] = 1836,	-- Scarlet Cavalier
				}),
				i(9296, {	-- Recipe: Gift of Arthas (RECIPE!)
					["crs"] = {
						1783,	-- Skeletal Flayer
						1791,	-- Slavering Ghoul
					},
				}),
				i(13496, {	-- Recipe: Greater Nature Protection Potion (RECIPE!)
					["crs"] = {
						1813,	-- Decaying Horror
						1812,	-- Rotting Behemoth
					},
				}),
				i(12811, {	-- Righteous Orb
					["description"] = "Can drop from any Scarlet Crusade member in Stratholme in addition to the Scarlet Oracle and the Crimson Elite in the Plaguelands.",
					["cr"] = 12128,	-- Crimson Elite
				}),
				i(13356, {	-- Somatic Intensifier
					["description"] = "These only drop from zombies in Western Plaguelands while you have Vitreous Focuser in your inventory.",
					["cost"] = { { "i", 13370, 1 } },	-- Vitreous Focuser
				}),
			}),
		},
	}),
}));
