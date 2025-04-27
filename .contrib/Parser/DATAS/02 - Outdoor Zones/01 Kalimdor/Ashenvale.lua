---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KALIMDOR, {
	m(ASHENVALE, {
		["lore"] = "Ashenvale is a beautiful forest and ancestral home of the Night Elves that has recently come under attack by the Horde. The capital city of Astranaar is under attack, as well as the forest from the Warsong Lumber Camp.",
		["icon"] = 236713,
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(4925, {	-- Ashenvale Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						13626,	-- Respect for the Fallen
						13853,	-- Return Fire
						13979,	-- The Goblin Braintrust
						13987,	-- The Last Stand
						25607,	-- Ze Gnomecorder -- TODO:: verify if actually needed
						26482,	-- True Power of the Rod
						13886,	-- Vortex
						13869,	-- Recover the Remains
						26469,	-- Satyr Slaying!
						13683,	-- Stopping the Rituals
						26472,	-- Insane Druids
						13796,	-- The Forest Heart
					},
					-- #endif
				}),
				ach(4976, {	-- Ashenvale Quests
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if ANYCLASSIC
					["sourceQuests"] = {
						13653,	-- Crisis at Splintertree
						13619,	-- Final Report
						13805,	-- Pierce the Heart
						13873,	-- Sheelah's Last Wish
						13842,	-- Dread Head Redemption -- in orgrimmar
						13920,	-- Before You Go...
						13901,	-- Deep Despair
						13883,	-- Lousy Pieces of Ship
						26890,	-- The Essence of Aku'Mai
						6641,	-- Vorsha the Lasher
						13947,	-- Blastranaar!
						13983,	-- Building Your Own Coffin
						13980,	-- They're Out There!
						13888,	-- Vortex
					},
					-- #endif
				}),
				explorationAch(845),	-- Explore Ashenvale
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					417,	-- Rat (PET!)
					424,	-- Roach (PET!)
					379,	-- Squirrel (PET!)
					420,	-- Toad (PET!)
				}},
				["groups"] = {
					pet(478),	-- Forest Moth (PET!)
					pet(495),	-- Frog (PET!)
					pet(450),	-- Maggot (PET!)
					pet(496, {	-- Rusty Snail (PET!)
						["description"] = "Can be found on the Blackfathom Deeps beach in Ashenvale.",
					}),
				},
			}),
			explorationHeader({
				exploration(415),	-- Astranaar
				-- #if AFTER WRATH
				exploration(411),	-- Bathran's Haunt
				-- #endif
				-- #if AFTER CATA
				exploration(2797),	-- Blackfathom Deeps
				-- #endif
				exploration(438),	-- Bough Shadow
				-- #if AFTER CATA
				exploration(435),	-- Demon Fall Canyon
				-- #endif
				exploration(422),	-- Fallen Sky Lake
				exploration(434),	-- Felfire Hill
				exploration(417),	-- Fire Scar Shrine
				-- #if AFTER WRATH
				exploration(2358),	-- Forest Song
				-- #endif
				exploration(2359),	-- Greenpaw Village
				-- #if AFTER CATA
				exploration(4691),	-- Hellscream's Watch
				-- #endif
				-- #if BEFORE CATA
				exploration(424),	-- Iris Lake
				-- #endif
				exploration(441),	-- Lake Falathim
				exploration(413),	-- Maestra's Post
				-- #if AFTER WRATH
				exploration(425),	-- Moonwell / Moonwell of Purity [CATA+]
				-- #endif
				-- #if BEFORE CATA
				exploration(421),	-- Mystral Lake
				-- #endif
				exploration(428),	-- Night Run
				exploration(426),	-- Raynewood Retreat
				exploration(430),	-- Satyrnaar
				exploration(420),	-- Silverwind Refuge
				-- #if AFTER WRATH
				exploration(2360),	-- Silverwing Outpost
				-- #endif
				exploration(431),	-- Splintertree Post
				exploration(432),	-- The Dor'Danil Barrow Den
				exploration(419),	-- The Howling Vale
				-- #if AFTER CATA
				exploration(1703),	-- The Mor'shan Rampart
				-- #endif
				-- #if AFTER WRATH
				exploration(412),	-- The Ruins of Ordil'Aran
				-- #endif
				exploration(418),	-- The Ruins of Stardust
				exploration(416),	-- The Shrine of Aessina
				exploration(414),	-- The Zoram Strand
				exploration(2301),	-- Thistlefur Village
				-- #if AFTER CATA
				exploration(3177),	-- Warsong Labor Camp
				-- #endif
				exploration(437),	-- Warsong Lumber Camp
				-- #if AFTER CATA
				exploration(2897),	-- Zoram'gar Outpost
				-- #endif
			}),
			n(FLIGHT_PATHS, {
				fp(28, {	-- Astranaar, Ashenvale
					["cr"] = 4267,	-- Daelyshia <Hippogryph Master>
					["coord"] = { 34.4, 48.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(338, {	-- Blackfathom Camp, Ashenvale
					["cr"] = 34374,	-- Solais <Flight Master>
					["coord"] = { 18.1, 20.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(167, {	-- Forest Song, Ashenvale
					["cr"] = 22935,	-- Suralais Farwind <Hippogryph Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 85.1, 43.5, ASHENVALE },
						-- #else
						{ 85.1, 43.5, ASHENVALE },
						-- #endif
					},
					["timeline"] = { ADDED_2_2_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(350, {	-- Hellscream's Watch, Ashenvale
					["cr"] = 34429,	-- Thraka <Wind Rider Master>
					["coord"] = { 38.07, 42.21, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(356, {	-- Silverwind Refuge, Ashenvale
					["cr"] = 34943,	-- Wind Tamer Shoshok <Flight Master>
					["coord"] = { 49.2, 65.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				fp(61, {	-- Splintertree Post, Ashenvale
					["cr"] = 12616,	-- Vhulgra <Wind Rider Master>
					["coord"] = { 73.2, 61.6, ASHENVALE },
					["races"] = HORDE_ONLY,
				}),
				fp(351, {	-- Stardust Spire, Ashenvale
					["cr"] = 34378,	-- Myre Moonglide <Flight Master>
					["coord"] = { 35.0, 72.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				fp(58, {	-- Zoram'gar Outpost, Ashenvale
					["cr"] = 11901,	-- Andruk <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 11.2, 34.4, ASHENVALE },
						-- #else
						{ 12.2, 33.8, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			pvp(n(PVP, {
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Defeat a Lieutenant
					readable = "Defeat a Lieutenant",
					icon = 131013,
					text = {
						en = "Defeat a Lieutenant",
						es = "Derrota a un Teniente",
						de = "Besiege einen Leutnant",
						fr = "Battre un Lieutenant",
						it = "Sconfiggi un Tenente",
						pt = "Derrote um Tenente",
						ru = "Победить лейтенанта",
						ko = "중위를 처치하세요",
						cn = "击败一名中尉",
					},
				}), {
					["aqd"] = {
						["crs"] = {
							212730,	-- Tojara <Blademaster>
							212801,	-- Jubei <Blademaster>
							212802,	-- Moogul the Sly <Blademaster>
						},
						["coords"] = {
							{ 54.8, 54.8, ASHENVALE },
							{ 22.0, 38.6, ASHENVALE },
							{ 69.6, 63.6, ASHENVALE },
						},
						["maxReputation"] = { FACTION_SILVERWING_SENTINELS, HONORED },	-- Silverwing Sentinels, Honored.
					},
					["hqd"] = {
						["crs"] = {
							212707,	-- Larodar <Keeper of the Grove>
							212803,	-- Ceredwyn <Keeper of the Grove>
							212804,	-- Centrius <Keeper of the Grove>
						},
						["coords"] = {
							{ 51.6, 54.8, ASHENVALE },
							{ 74.0, 74.0, ASHENVALE },
							{ 28.6, 28.8, ASHENVALE },
						},
						["maxReputation"] = { FACTION_WARSONG_OUTRIDERS, HONORED },	-- Warsong Outriders, Honored.
					},
					["OnInit"] = [[function(t) _.ResolveQuestData(t); t.OnInit = nil; return _.CreateCustomHeader(t.headerID, t); end]],
					["timeline"] = { REMOVED_2_0_1 },
					["repeatable"] = true,
					["groups"] = {
						i(211813, {	-- Silverwing Sentinel Charm
							["races"] = HORDE_ONLY,
						}),
						i(211814, {	--
							["races"] = ALLIANCE_ONLY,
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Win the Battle
					readable = "Win the Battle",
					icon = [[~_.asset("Category_PvP")]],
					text = {
						en = "Win the Battle",
						es = "Gana la Batalla",
						de = "Gewinne den Kampf",
						fr = "Gagnez la Bataille",
						it = "Vinci la Battaglia",
						pt = "Ganhe a Batalha",
						ru = "Выиграй битву",
						ko = "전투에서 승리하세요",
						cn = "赢得战斗",
					},
				}), {
					["aqd"] = {
						["cr"] = 212969,	-- Kazragore <Far Seer>
						["coord"] = { 42.0, 67.0, ASHENVALE },
						["maxReputation"] = { FACTION_SILVERWING_SENTINELS, HONORED },	-- Silverwing Sentinels, Honored.
					},
					["hqd"] = {
						["cr"] = 212970,	-- Felore Moonray <Priestess of the Moon>
						["coord"] = { 50.5, 72.0, ASHENVALE },
						["maxReputation"] = { FACTION_WARSONG_OUTRIDERS, HONORED },	-- Warsong Outriders, Honored.
					},
					["OnInit"] = [[function(t) _.ResolveQuestData(t); t.OnInit = nil; return _.CreateCustomHeader(t.headerID, t); end]],
					["timeline"] = { REMOVED_2_0_1 },
					["repeatable"] = true,
				})),
			})),
			-- #endif
			-- #if AFTER CATA
			n(PROFESSIONS, {
				prof(FISHING, {
					o(180662),	-- Schooner Wreckage
				}),
			}),
			-- #endif
			n(QUESTS, {
				q(26453, {	-- A Helping Hand
					["qg"] = 17106,	-- Vindicator Palanaar
					["coord"] = { 35.0, 49.9, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(9533, {	-- A Helping Hand
					["qg"] = 17106,	-- Vindicator Palanaar
					["coord"] = { 34.8, 49.6, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 22,
				}),
				q(26481, {	-- A New Adornment
					["qg"] = 3897,	-- Krolg
					["sourceQuest"] = 13989,	-- King of the Foulweald
					["coord"] = { 50.8, 75.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ran Bloodtooth's Skull
							["provider"] = { "i", 5388 },	-- Ran Bloodtooth's Skull
							["cr"] = 3696,	-- Ran Bloodtooth
						}),
					},
				}),
				q(13874, {	-- A Not-So-Charmed Life
					["qg"] = 34239,	-- Hephaestus Pilgrim
					["sourceQuest"] = 13872,	-- Worgen Wisdom
					["coord"] = { 36.4, 49.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Troll Charm
							["providers"] = {
								{ "i", 16602 },	-- Troll Charm
								{ "o", 178144 },	-- Troll Chest
							},
						}),
					},
				}),
				q(26454, {	-- A Shameful Waste
					["qg"] = 17291,	-- Architect Nemos
					["sourceQuest"] = 26453,	-- A Helping Hand
					["coord"] = { 86.8, 44.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Satyrnaar Fel Wood
							["providers"] = {
								{ "i", 24081 },	-- Satyrnaar Fel Wood
								{ "o", 181916 },	-- Satyrnaar Fel Wood
							},
						}),
					},
				}),
				q(9517, {	-- A Shameful Waste
					["qg"] = 17291,	-- Architect Nemos
					["coord"] = { 86.8, 44.8, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/15 Warsong Lumber
							["providers"] = {
								{ "i",  23776 },	-- Warsong Lumber
								{ "o", 181687 },	-- Lumber Pile
							},
						}),
						objective(2, {	-- 0/5 Satyrnaar Fel Wood
							["providers"] = {
								{ "i",  24081 },	-- Satyrnaar Fel Wood
								{ "o", 181916 },	-- Tainted Wood
							},
						}),
					},
				}),
				q(13624, {	-- A Squad of Your Own
					["qg"] = 11806,	-- Sentinel Onaeya
					["coord"] = { 26.7, 36.9, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78088, {	-- A Strange Artifact
					["providers"] = {
						{ "i", 209836 },	-- Althalaxx Orb
						{ "n",   3663 },	-- Delgren the Purifier
					},
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DARKSHORE },
					["classes"] = { PALADIN },
				})),
				-- #endif
				q(13919, {	-- A Trip to the Moonwell
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 26475,	-- Elune's Tear
					["coord"] = { 37.4, 51.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78089, {	-- Advice From Stormwind
					["providers"] = {
						{ "n",   3663 },	-- Delgren the Purifier
						{ "i", 209748 },	-- Althalaxx Orb
					},
					["sourceQuest"] = 78088,	-- A Strange Artifact
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { STORMWIND_CITY },
					["classes"] = { PALADIN },
				})),
				-- #endif
				q(26457, {	-- Agents of Destruction
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper
					["coord"] = { 83.9, 62.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Overseer Gorthak slain
							["provider"] = { "n", 17304 },	-- Overseer Gorthak
						}),
						objective(2, {	-- 0/12 Horde at the Warsong Lumber Camp slain
							["providers"] = {
								{ "n", 11682},	-- Warsong Grunt
								{ "n", 11681},	-- Warsong Logger
								{ "n", 11683},	-- Warsong Shaman
								{ "n", 11684},	-- Goblin Deforester
							},
						}),
						i(56642, {	-- Starwhisper Monnions
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56643, {	-- Woodguard Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131532, {	-- Starwhisper Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(9518, {	-- Agents of Destruction
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
					["coord"] = { 86.0, 44.4, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Overseer Gorthak slain
							["provider"] = { "n", 17304 },	-- Overseer Gorthak
							["coord"] = { 88.8, 59.5, ASHENVALE },
						}),
						objective(2, {	-- 0/2 Warsong Shredder slain
							["provider"] = { "n", 11684 },	-- Warsong Shredder
						}),
						objective(3, {	-- 0/5 Horde Deforester slain
							["provider"] = { "n", 11681 },	-- Horde Deforester
						}),
						objective(4, {	-- 0/10 Horde Scout slain
							["provider"] = { "n", 11680 },	-- Horde Scout
						}),
					},
				}),
				q(13841, {	-- All Apologies
					["qg"] = 33726,	-- Splintertree Demolisher
					["sourceQuest"] = 13798,	-- Rain of Destruction
					["coord"] = { 73.3, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13924, {	-- All's Well
					["qg"] = 34358,	-- Avrus the Redeemed
					["sourceQuest"] = 13922,	-- In the Hands of the Perverse
					["coord"] = { 59.1, 60.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56676, {	-- Whitemoon Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56677, {	-- Belt of Healing Charms
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56678, {	-- Boots of the Deliverer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131320, {	-- Whitemoon Mender Cord
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1025, {	-- An Aggressive Defense
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2/11)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Foulweald Den Watcher slain
							["provider"] = { "n", 3746 },	-- Foulweald Den Watcher
						}),
						objective(2, {	-- 0/2 Foulweald Ursa slain
							["provider"] = { "n", 3749 },	-- Foulweald Ursa
						}),
						objective(3, {	-- 0/10 Foulweald Totemic slain
							["provider"] = { "n", 3750 },	-- Foulweald Totemic
						}),
						objective(4, {	-- 0/12 Foulweald Warrior slain
							["provider"] = { "n", 3743 },	-- Foulweald Warrior
						}),
					},
				}),
				q(13870, {	-- As Good as it Gets
					["qg"] = 33889,	-- Krokk
					["sourceQuests"] = {
						13815,	-- Making Stumps
						13865,	-- Wet Work
					},
					["coord"] = { 82.5, 53.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(6503, {	-- Ashenvale Outrunners
					["qg"] = 12867,	-- Kuray'bin
					["coords"] = {
						-- #if AFTER CATA
						{ 73.5, 60.8, ASHENVALE },
						-- #else
						{ 71.0, 68.2, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(19, 19, 7),
					["groups"] = {
						objective(1, {	-- 0/9 Ashenvale Outrunner slain
							["provider"] = { "n", 12856 },	-- Ashenvale Outrunner
						}),
					},
				}),
				q(13646, {	-- Astranaar Bound
					["qg"] = 33445,	-- Sentinel Avana
					["sourceQuest"] = 13642,	-- Bathed in Light
					["coord"] = { 26.8, 36.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13849, {	-- Astranaar's Burning!
					["qg"] = 4079,	-- Sentinel Thenysil
					["coord"] = { 34.9, 49.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13848, {	-- Bad News Bear-er
					["qg"] = 33837,	-- Kadrak
					["sourceQuest"] = 13805,	-- Pierce Their Heart!
					["coord"] = { 73.6, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13642, {	-- Bathed in Light
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 13623,	-- Delivery for Orendil
					["coord"] = { 26.8, 36.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26473, {	-- Bathran's Hair
					["qg"] = 33204,	-- Evenar Stillwhisper
					["coord"] = { 26.8, 22.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Bathran's Hair
							["providers"] = {
								{ "i", 5437 },	-- Bathran's Hair
								{ "o", 17282 },	-- Bathran's Hair
							},
						}),
					},
				}),
				q(1010, {	-- Bathran's Hair
					["qg"] = 3847,	-- Orendil Broadleaf
					["coord"] = { 26.4, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Bathran's Hair
							["providers"] = {
								{ "i", 5437 },	-- Bathran's Hair
								{ "o", 17282 },	-- Plant Bundle
							},
							["coord"] = { 31.8, 22.9, ASHENVALE },
						}),
					},
				}),
				q(13920, {	-- Before You Go...
					["qg"] = 34122,	-- Commander Grimfang
					["sourceQuest"] = 13890,	-- Keep the Fires Burning
					["coord"] = { 12.1, 33.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Venison Steak
							["provider"] = { "i", 46392 },	-- Venison Steak
							["cr"] = 3816,	-- Wild Buck
						}),
						i(56721, {	-- Meat Packer Ribbon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56722, {	-- Je'neu's Hunting Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56723, {	-- Deerstalker Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131319, {	-- Je'neu's Ringmail Jerkin
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(216, {	-- Between a Rock and a Thistlefur
					["qg"] = 12757,	-- Karang Amakkar
					["coords"] = {
						-- #if AFTER CATA
						{ 37.7, 43.5, ASHENVALE },
						-- #else
						{ 11.8, 34.4, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(21, 21, 7),
					["groups"] = {
						-- #if BEFORE CATA
						objective(1, {	-- 0/12 Thistlefur Avenger slain
							["provider"] = { "n", 3925 },	-- Thistlefur Avenger
						}),
						objective(2, {	-- 0/12 Thistlefur Shaman slain
							["provider"] = { "n", 3924 },	-- Thistlefur Shaman
						}),
						-- #else
						objective(1, {	-- 0/15 Thistlefur Village Furbolgs killed
							["providers"] = {
								{ "n", 3925},	-- Thistlefur Avenger
								{ "n", 3924},	-- Thistlefur Shaman
								{ "n", 3926},	-- Thistlefur Pathfinder
							},
						}),
						-- #endif
					},
				}),
				q(13947, {	-- Blastranaar!
					["qg"] = 34359,	-- Captain Goggath
					["sourceQuests"] = {
						13943,	-- Breathing Room
						13944,	-- Small Hands, Short Fuse
					},
					["coord"] = { 38.1, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Astranaar Sentinels slain
							["provider"] = { "n", 34494 },	-- Astranaar Sentinel
						}),
						objective(2, {	-- 0/10 Astranaar Throwers destroyed
							["provider"] = { "n", 34492 },	-- Astranaar Thrower
						}),
						i(56661, {	-- Preemptive Striker
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56662, {	-- Staff of Fiery Fate
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56663, {	-- Leggings of Hellscream's Watch
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131323, {	-- Tweedle's Blastproof Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13803, {	-- Blood of the Weak
					["qg"] = 33837,	-- Kadrak
					["sourceQuest"] = 13712,	-- To The Rescue!
					["coord"] = { 73.6, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13943, {	-- Breathing Room
					["qg"] = 34359,	-- Captain Goggath
					["sourceQuest"] = 13936,	-- Tweedle's Dumb
					["coord"] = { 38.1, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Astranaar Skirmishers slain
							["provider"] = { "n", 34419 },	-- Astranaar Skirmisher
						}),
						objective(2, {	-- 0/3 Astranaar Officers slain
							["provider"] = { "n", 34420 },	-- Astranaar Officer
						}),
						i(56667, {	-- Cloak of Readiness
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56668, {	-- Bracers of Humility
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56669, {	-- Groundwork Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131322, {	-- Preparation Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13983, {	-- Building Your Own Coffin
					["qg"] = 34596,	-- Foreman Jinx
					["sourceQuest"] = 13977,	-- Mass Production
					["coord"] = { 46.1, 63.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/3 Bronze Cog
							["providers"] = {
								{ "i", 46772 },	-- Bronze Cog
								{ "o", 195136 },	-- Bronze Cog
							},
						}),
						objective(2, {	-- 0/3 Copper Plating
							["providers"] = {
								{ "i", 46773 },	-- Copper Plating
								{ "o", 195138 },	-- Copper Plating
							},
						}),
						objective(3, {	-- 0/5 Locking Bolt
							["providers"] = {
								{ "i", 46771 },	-- Locking Bolt
								{ "o", 195135 },	-- Locking Bolt
							},
						}),
					},
				}),
				q(13965, {	-- Check in on the Edunes
					["qg"] = 3996,	-- Faldreas Goeth'Shael
					["sourceQuest"] = 26478,	-- Playing Possum
					["coord"] = { 35.8, 49.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, pvp(q(79098, {	-- Clear the Forest!
					["providers"] = {
						{ "i", 211813 },	-- Silverwing Sentinel Charm
						{ "n", 212969 },	-- Kazragore <Far Seer>
					},
					["coord"] = { 42.0, 67.0, ASHENVALE },
					["maxReputation"] = { FACTION_WARSONG_OUTRIDERS, HONORED },	-- Warsong Outriders, Honored.
					["timeline"] = { REMOVED_2_0_1 },
					["races"] = HORDE_ONLY,
					-- #if AFTER 1.15.2
					["isDaily"] = true,
					-- #else
					["isWeekly"] = true,
					-- #endif
					["lvl"] = 18,
					["groups"] = {
						i(211816),	-- Warsong Battle Drum
					},
				}))),
				-- #endif
				q(13985, {	-- Clear the Shrine
					["qg"] = 34599,	-- Bolyun
					["sourceQuest"] = 13982,	-- In a Bind
					["coord"] = { 18.0, 60.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Demons at Fire Scar Shrine slain
							["providers"] = {
								{ "n", 3774},	-- Felslayer
								{ "n", 3772},	-- Lesser Felguard
								{ "n", 3773},	-- Akkrilus
							},
						}),
					},
				}),
				q(13766, {	-- Closure is Only Natural
					["qg"] = 17310,	-- Gnarl
					["sourceQuest"] = 26446,	-- Reclaiming Felfire Hill
					["coord"] = { 83.8, 63.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13958, {	-- Condition Critical!
					["qg"] = 34359,	-- Captain Goggath
					["sourceQuest"] = 13947,	-- Blastranaar!
					["coord"] = { 38.0, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13868, {	-- Corrupting Influence?
					["provider"] = { "i", 46128 },	-- Troll Charm
					["timeline"] = { ADDED_4_0_3 },
					["crs"] = {
						3925,	-- Thistlefur Avenger
						3924,	-- Thistlefur Shaman
						3926,	-- Thistlefur Pathfinder
						3921,	-- Thistlefur Ursa
						3922,	-- Thistlefur Totemic
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(13653, {	-- Crisis at Splintertree
					["qg"] = 33421,	-- Gorka
					["sourceQuest"] = 13651,	-- Needs a Little Lubrication
					["coord"] = { 72.9, 80.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gorka accompanied to Mor'shan Ramparts
							["provider"] = { "n", 33507 },	-- Gorka
						}),
						i(56639, {	-- Mourner's Stole
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56640, {	-- Leggings of Loss
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56641, {	-- Burden of Sacrifice
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131299, {	-- Griefbearer Leggings
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13867, {	-- Culling the Furbolg Threat
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Thistlefur Village furbolgs killed
							["providers"] = {
								{ "n", 3925},	-- Thistlefur Avenger
								{ "n", 3924},	-- Thistlefur Shaman
								{ "n", 3926},	-- Thistlefur Pathfinder
							},
						}),
					},
				}),
				q(1054, {	-- Culling the Threat
					["qg"] = 3691,	-- Raene Wolfrunner
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Dal Bloodclaw's Skull
							["provider"] = { "i", 5544 },	-- Dal Bloodclaw's Skull
							["coord"] = { 37.6, 35.4, ASHENVALE },
							["cr"] = 3987,	--  Dal Bloodclaw
						}),
						i(1970, {	-- Restoring Balm
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26480, {	-- Dartol's Rod
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 26479,	-- Return to Raene
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13801, {	-- Dead Elves Walking
					["qg"] = 12724,	-- Pixel
					["sourceQuest"] = 13803,	-- Blood of the Weak
					["coord"] = { 73.8, 62.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Night Elf Ghosts Slain
							["providers"] = {
								{ "n", 3803},	-- Severed Keeper
								{ "n", 3799},	-- Severed Druid
							},
						}),
					},
				}),
				q(13901, {	-- Deep Despair
					["qg"] = 12719,	-- Marukai
					["sourceQuest"] = 6442,	-- Naga at the Zoram Strand
					["coord"] = { 12.6, 35.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/6 Blackfathom Tide Priestesses slain
							["provider"] = { "n", 4802 },	-- Blackfathom Tide Priestess
						}),
					},
				}),
				q(13935, {	-- Defend the Tree!
					["qg"] = 34377,	-- Halannia
					["sourceQuest"] = 13928,	-- Recover the Fallen
					["coord"] = { 62.3, 51.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/50 Warsong enemies destroyed
							["providers"] = {
								{ "n", 32856},	-- Warsong Invader
								{ "n", 32850},	-- Warsong Demolisher
								{ "n", 34390},	-- Warsong Trampler
							},
						}),
						i(56670, {	-- Raynewood Shield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56671, {	-- Shadumbra's Wrath
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56672, {	-- Frostshadow Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131321, {	-- Shadumbra's Might
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13623, {	-- Delivery for Orendil
					["qg"] = 33204,	-- Evenar Stillwhisper
					["sourceQuest"] = 26473,	-- Bathran's Hair
					["coord"] = { 26.8, 22.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13806, {	-- Demon Duty
					["qg"] = 11820,	-- Locke Okarr
					["sourceQuest"] = 26449,	-- Never Again!
					["coord"] = { 73.8, 61.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26444, {	-- Destroy the Legion [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar
					["coord"] = { 84.1, 62.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Demons slain
							["providers"] = {
								{ "n", 11697},	-- Mannoroc Lasher
								{ "n", 6073},	-- Searing Infernal
								{ "n", 6115},	-- Roaming Felguard
							},
						}),
					},
				}),
				q(9516, {	-- Destroy the Legion [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["coord"] = { 86.5, 44.2, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/6 Mannoroc Lasher slain
							["provider"] = { "n", 11697 },	-- Mannoroc Lasher
						}),
						objective(2, {	-- 0/6 Roaming Felguard slain
							["provider"] = { "n", 6115 },	-- Roaming Felguard
						}),
						objective(3, {	-- 0/6 Searing Infernal slain
							["provider"] = { "n", 6073 },	-- Searing Infernal
						}),
					},
				}),
				q(26448, {	-- Destroy the Legion [Horde]
					["qg"] = 17355,	-- Valusha
					["coord"] = { 73.1, 60.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Demons Slain
							["providers"] = {
								{ "n", 11697},	-- Mannoroc Lasher
								{ "n", 6073},	-- Searing Infernal
								{ "n", 6115},	-- Roaming Felguard
							},
						}),
					},
				}),
				q(9534, {	-- Destroy the Legion [Horde]
					["qg"] = 17355,	-- Valusha
					["coord"] = { 73.2, 60.4, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/6 Mannoroc Lasher slain
							["provider"] = { "n", 11697 },	-- Mannoroc Lasher
						}),
						objective(2, {	-- 0/6 Roaming Felguard slain
							["provider"] = { "n", 6115 },	-- Roaming Felguard
						}),
						objective(3, {	-- 0/6 Searing Infernal slain
							["provider"] = { "n", 6073 },	-- Searing Infernal
						}),
					},
				}),
				q(26443, {	-- Diabolical Plans [Alliance]
					["providers"] = {
						{ "i", 23777 },	-- Diabolical Plans
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(23780),	-- Diabolical Plans (QI!)
					},
				}),
				q(9520, {	-- Diabolical Plans [Alliance]
					["providers"] = {
						{ "i", 23777 },	-- Diabolical Plans
						{ "i", 23780 },	-- Diabolical Plans
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 27,
				}),
				q(26447, {	-- Diabolical Plans [Horde]
					["providers"] = {
						{ "i", 23797 },	-- Diabolical Plans
						{ "i", 23798 },	-- Diabolical Plans
					},
					["coord"] = { 81.5, 69.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(9535, {	-- Diabolical Plans [Horde]
					["providers"] = {
						{ "i", 23797 },	-- Diabolical Plans
						{ "i", 23798 },	-- Diabolical Plans
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
				}),
				q(13797, {	-- Dirty Deeds
					["qg"] = 33760,	-- Durak
					["sourceQuest"] = 13751,	-- Tell No One!
					["coord"] = { 72.2, 57.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Chunk of Ore
							["providers"] = {
								{ "i", 45576 },	-- Chunk of Ore
								{ "o", 194566 },	-- Fresh Rubble
							},
						}),
					},
				}),
				q(25613, {	-- Do Yourself a Favor
					["qg"] = 40894,	-- Gnombus the X-Terminator
					["sourceQuests"] = {
						13913,	-- They Took Our Gnomes
						25607,	-- Ze Gnomecorder
					},
					["coord"] = { 35.3, 71.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13594, {	-- Don't Forget the Horde
					["qg"] = 33187,	-- Sentinel Shyela
					["sourceQuests"] = {
						26408,	-- Ashes in Ashenvale
						28492,	-- Hero's Call: Ashenvale!
					},
					["coord"] = { 26.9, 22.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78144, {	-- Alonso the Dragonslayer
					["qg"] = 210995,	-- Alonso <Knight Errant>
					["sourceQuests"] = {
						78132,	-- Dragonslayer's Helm
						78134,	-- Dragonslayer's Lance
						78133,	-- Dragonslayer's Shield
					},
					["coord"] = { 43.4, 70.4, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["groups"] = {
						--[[
						-- TODO: This might actually just be a follow the npc thing, he slays this little dragon.
						-- and calls you his squire and asks you to watch. Haven't done this quest yet myself.
						objective(1, {	-- Slay the Green Dragon Whelp?
							["provider"] = { "n", 211042 },	-- Green Dragon Whelp
						}),
						]]--
						i(210015, {	-- Rune of Raging Blow
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425444),	-- Engrave Chest - Raging Blow
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78132, {	-- Dragonslayer's Helm
					["providers"] = {
						{ "i", 209872 },	-- Dragonslayer's Helm
						{ "n", 210995 },	-- Alonso <Knight Errant>
					},
					["coord"] = { 43.4, 70.4, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { SHADOWFANG_KEEP },
					["classes"] = { WARRIOR },
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78134, {	-- Dragonslayer's Lance
					["providers"] = {
						{ "i", 209874 },	-- Dragonslayer's Lance
						{ "n", 210995 },	-- Alonso <Knight Errant>
					},
					["coord"] = { 43.4, 70.4, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { WETLANDS },
					["classes"] = { WARRIOR },
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78133, {	-- Dragonslayer's Shield
					["providers"] = {
						{ "i", 209873 },	-- Dragonslayer's Shield
						{ "n", 210995 },	-- Alonso <Knight Errant>
					},
					["coord"] = { 43.4, 70.4, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["classes"] = { WARRIOR },
				})),
				-- #endif
				q(26476, {	-- Dryad Delivery
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 26475,	-- Elune's Tear
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if BEFORE CATA
				q(1016, {	-- Elemental Bracers [Vanilla] / Retaking Mystral Lake [CATA+]
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Divined Scroll
							["provider"] = { "i", 5455 },	-- Divined Scroll
							["cost"] = {
								{ "i", 5456, 1 },	-- Divining Scroll
								{ "i", 12220, 5 },	-- Intact Elemental Bracer
							},
							["crs"] = {
								3917,	-- Befouled Water Elemental
								12759,	-- Tideress
							},
						}),
					},
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78506, {	-- Elemental Distress
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["sourceQuest"] = 78920,	-- Baron Aquanis (H)
					["coord"] = { 11.6, 34.2, ASHENVALE },
					["maps"] = { STONETALON_MOUNTAINS },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Mote of Seismic Rage
							["provider"] = { "i", 210668 },	-- Mote of Seismic Rage
							["coord"] = { 33.2, 69.8, STONETALON_MOUNTAINS },
							["crs"] = {
								4034,	-- Enraged Stone Spirit
								4035,	-- Furious Stone Spirit
							},
						}),
						objective(2, {	-- 0/1 Mote of Infernal Rage
							["provider"] = { "i", 210667 },	-- Mote of Infernal Rage
							["coord"] = { 32.6, 67.7, STONETALON_MOUNTAINS },
							["crs"] = {
								4038,	-- Burning Destroyer
								4037,	-- Burning Ravager
								4036,	-- Rogue Flame Spirit
							},
						}),
						objective(3, {	-- 0/1 Mote of Torrential Rage
							["provider"] = { "i", 210665 },	-- Mote of Torrential Rage
							["coord"] = { 49.6, 71.2, ASHENVALE },
							["cr"] = 3917,	-- Befouled Water Elemental
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78537, {	-- Elixir of Insight (1/2)
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["sourceQuest"] = 78506,	-- Elemental Distress
					["coord"] = { 11.6, 34.2, ASHENVALE },
					["cost"] = {
						{ "i", 5996, 1 },	-- Elixir of Water Breathing
						{ "i", 3383, 1 },	-- Elixir of Wisdom
					},
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78561, {	-- Elixir of Insight (2/2)
					["providers"] = {
						{ "n",  12736 },	-- Je'neu Sancrea <The Earthen Ring>
						{ "i", 210712 },	-- Elixir of Insight
					},
					["sourceQuest"] = 78537,	-- Elixir of Insight (1/2)
					["coord"] = { 11.6, 34.2, ASHENVALE },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
				})),
				-- #endif
				q(26475, {	-- Elune's Tear
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 26474,	-- Orendil's Cure
					["coord"] = { 37.4, 51.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Elune's Tear
							["providers"] = {
								{ "i", 5493 },	-- Elune's Tear
								{ "o", 19015 },	-- Soot-Covered Elune's Tear
							},
						}),
					},
				}),
				q(1033, {	-- Elune's Tear
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1020,	-- Orendil's Cure
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Elune's Tear
							["providers"] = {
								{ "i", 5493 },	-- Elune's Tear
								{ "o", 19015 },	-- Elune's Tear
							},
							["coord"] = { 46, 46.5, ASHENVALE },
						}),
					},
				}),
				q(13698, {	-- Explosives Shredding
					["qg"] = 17287,	-- Sentinel Luciel Starwhisper
					["sourceQuest"] = 26457,	-- Agents of Destruction
					["coord"] = { 83.9, 62.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Horde Explosives destroyed
							["provider"] = { "o", 194482 },	-- Horde Explosives
						}),
						i(56646, {	-- Shredder Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56647, {	-- Powder Burn Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56648, {	-- Forestkeeper Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131301, {	-- Soot-Stained Chainmail Breastplate
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156957, {	-- Shredder Piston
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1035, {	-- Fallen Sky Lake
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1034,	-- The Ruins of Stardust
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Fallen Moonstone
							["provider"] = { "i", 5508 },	-- Fallen Moonstone
							["coord"] = { 66.6, 82.0, ASHENVALE },
							["cr"] = 3931,	-- Shadethicket Oracle
						}),
						i(5814, {	-- Snapbrook Armor
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6722, {	-- Beastial Manacles
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17047, {	-- Luminescent Amice
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25621, {	-- Field Test: Gnomecorder
					["qg"] = 40895,	-- Professor Xakxak Gyromate
					["sourceQuest"] = 25615,	-- Return to Stardust
					["coord"] = { 35.4, 71.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13619, {	-- Final Report
					["qg"] = 33294,	-- Gorat
					["sourceQuest"] = 13618,	-- Find Gorat!
					["coord"] = { 64.2, 84.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(26463, {	-- Finding Teronis
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 13623,	-- Delivery For Orendil
					["coord"] = { 26.8, 36.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1011, {	-- Forsaken Diseases
					["qg"] = 3848,	-- Kayneth Stillwind
					["sourceQuest"] = 4581,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Bottle of Disease
							["providers"] = {
								{ "i", 5440 },	-- Bottle of Disease
								{ "i", 18036 },	-- Bottle of Disease
							},
							["coord"] = { 75.3, 72.3, ASHENVALE },
						}),
					},
				}),
				q(6482, {	-- Freedom to Ruul
					["qg"] = 12818,	-- Ruul Snowhoof
					["coords"] = {
						-- #if AFTER CATA
						{ 41.4, 34.6, ASHENVALE },
						-- #else
						{ 41.4, 34.4, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(19, 19, 7),
				}),
				q(25729, {	-- Gerenzo the Traitor
					["qg"] = 40895,	-- Professor Xakxak Gyromate
					["sourceQuest"] = 25652,	-- Commandeer That Balloon!
					["coord"] = { 35.4, 71.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gerenzo Wrenchwhistle slain
							["provider"] = { "n", 4202 },	-- Gerenzo Wrenchwhistle
						}),
					},
				}),
				q(13877, {	-- Go With The Flow
					["qg"] = 34239,	-- Hephaestus Pilgrim
					["sourceQuest"] = 13874,	-- A Not-So-Charmed Life
					["coord"] = { 36.4, 49.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13875, {	-- Gurtar's Request
					["qg"] = 34242,	-- Guardian Gurtar
					["coord"] = { 89.5, 48.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56655, {	-- Bloodcup Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56656, {	-- Faithful Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56657, {	-- Gloves of Unforgotten Vows
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131309, {	-- Faithful Footguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13921, {	-- He Who Would Be Forgiven
					["sourceQuest"] = 13919,	-- A Trip to the Moonwell
					["description"] = "This quest is auto given to you once completing |cFFFFD700A Trip To The Moonwell|r.",
					["coord"] = { 71.3, 60.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(14018, {	-- He Who Would Be Forgiven
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 13919,	-- A Trip to the Moonwell
					["description"] = "You can pick this quest up if you abandon the quest by the same name.",
					["coord"] = { 37.4, 51.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25616, {	-- Hellscream's Legacy
					["qg"] = 34354,	-- Huntress Jalin
					["sourceQuest"] = 25615,	-- Return to Stardust
					["coord"] = { 35.1, 71.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				heroscall(q(28492, {	-- Hero's Call: Ashenvale! (breadcrumb quest for 13594, not available if 26408 is completed) (max level 23)
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { DARNASSUS, THE_EXODAR },	-- Only found in Darnassus & The Exodar in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 19. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 23. (TODO: Test max level between 22 and 32)
					["lvl"] = { 19, 23 },
					-- #endif
				})),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78575, {	-- Hirzek
					["qg"] = 12736,	-- Je'neu Sancrea <The Earthen Ring>
					["sourceQuest"] = 78561,	-- Elixir of Insight (2/2)
					["coord"] = { 11.6, 34.2, ASHENVALE },
					["maps"] = { THE_BARRENS },
					["classes"] = { SHAMAN },
					["races"] = HORDE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Hirzek's Staff
							["provider"] = { "i", 210724 },	-- Hirzek's Staff
						}),
						objective(2, {	-- 0/1 Hirzek slain
							["provider"] = { "n", 212694 },	-- Hirzek
							["coord"] = { 43.6, 78.8, THE_BARRENS },
						}),
						i(210746, {	-- Rune of Earth Shield
							["classes"] = { SHAMAN },
							["groups"] = {
								recipe(410101),	-- Engrave Pants - Earth Shield
							},
						}),
					},
				})),
				-- #endif
				q(13880, {	-- Hot Lava
					["qg"] = 34290,	-- Core
					["sourceQuests"] = {
						13877,	-- Go With The Flow (A)
						13879,	-- Thunder Peak (H)
					},
					["coord"] = { 52.3, 56.5, ASHENVALE },
					["sourceQuestNumRequired"] = 1,
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/8 Lava fissures filled
							["providers"] = {
								{ "i", 46352 },	-- Gift of the Earth
								{ "o", 195002 },	-- Lava Fissure
							},
						}),
					},
				}),
				q(13982, {	-- In a Bind
					["qg"] = 3698,	-- Bolyun
					["sourceQuest"] = 13976,	-- Three Fiends of the Forest
					["coord"] = { 18.0, 60.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Heart of Kaliva
							["provider"] = { "i", 46774 },	-- Heart of Kaliva
							["cr"] = 34602,	-- Kaliva
						}),
					},
				}),
				q(13922, {	-- In the Hands of the Perverse
					["qg"] = 34335,	-- Avrus Illwhisper
					["sourceQuests"] = {
						13921,	-- He Who Would Be Forgiven
						14018,	-- He Who Would Be Forgiven
					},
					["coord"] = { 59.1, 60.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Fallen Moonstone
							["provider"] = { "i", 5508 },	-- Fallen Moonstone
							["crs"] = {
								3758,	-- Felmusk Satyr
								3759,	-- Felmusk Rogue
								3762,	-- Felmusk Felsworn
								3763,	-- Felmusk Shadowstalker
							},
						}),
					},
				}),
				q(26472, {	-- Insane Druids
					["qg"] = 33777,	-- Gaivan Shadewalker (mobileNPC)
					["sourceQuest"] = 13792,	-- The Shadewalker
					["coords"] = {	-- Walks back-and-forth between the coordinates
						{ 75.8, 74.9, ASHENVALE },
						{ 75.6, 75.5, ASHENVALE },
						{ 75.5, 76.1, ASHENVALE },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Taneel Darkwood slain
							["provider"] = { "n", 3940 },	-- Taneel Darkwood
						}),
						objective(2, {	-- 0/1 Uthil Mooncall slain
							["provider"] = { "n", 3941 },	-- Uthil Mooncall
						}),
						objective(3, {	-- 0/1 Mavoris Cloudsbreak slain
							["provider"] = { "n", 3942 },	-- Mavoris Cloudsbreak
						}),
						i(5813),	-- Emil's Brand
						i(156959, {	-- Emil's Staff
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(1012, {	-- Insane Druids
					["qg"] = 3848,	-- Kayneth Stillwind
					["sourceQuest"] = 1011,	-- Forsaken Diseases
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/1 Taneel Darkwood slain
							["provider"] = { "n", 3940 },	-- Taneel Darkwood
							["coord"] = { 77.0, 74.0, ASHENVALE },
						}),
						objective(2, {	-- 0/1 Uthil Mooncall slain
							["provider"] = { "n", 3941 },	-- Uthil Mooncall
							["coord"] = { 78.0, 72.8, ASHENVALE },
						}),
						objective(3, {	-- 0/1 Mavoris Cloudsbreak slain
							["provider"] = { "n", 3942 },	-- Mavoris Cloudsbreak
							["coord"] = { 74.8, 74.2, ASHENVALE },
						}),
						i(5813),	-- Emil's Brand
					},
				}),
				q(824, {	-- Je'neu of the Earthen Ring
					["providers"] = {
						{ "n", 12737 },	-- Mastok Wrilehiss
						-- #if AFTER CATA
						{ "i", 60643 },	-- Befouled Water Globe
						-- #else
						{ "i", 16408 },	-- Befouled Water Globe
						-- #endif
					},
					["sourceQuest"] = 1918,	-- The Befouled Element
					["coords"] = {
						-- #if AFTER CATA
						{ 74.0, 60.6, ASHENVALE },
						-- #else
						{ 73.6, 60, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(23, 23, 7),
					["groups"] = {
						i(16659),	-- Deftkin Belt
						i(16660),	-- Driftmire Shield
						i(16661),	-- Soft Willow Cape
						i(131216, {	-- Nimblereed Chain
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1056, {	-- Journey to Stonetalon Peak
					["qg"] = 3996,	-- Faldreas Goeth'Shael
					["coord"] = { 35.6, 49.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 18,
				}),
				q(4581, {	-- Kayneth Stillwind
					["providers"] = {
						{ "n", 3845 },	-- Shindrell Swiftfire
						{ "i", 12060 },	-- Shindrell's Note
					},
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
				}),
				q(13890, {	-- Keep the Fires Burning
					["qg"] = 34122,	-- Commander Grimfang
					["coord"] = { 12.1, 33.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56715, {	-- Oily Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56716, {	-- Alighted Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56717, {	-- Mystlash Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131314, {	-- Darkbreaker Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13989, {	-- King of the Foulweald
					["qg"] = 3897,	-- Krolg
					["sourceQuest"] = 26480,	-- Dartol's Rod
					["coord"] = { 50.8, 75.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Chief Murgut slain
							["provider"] = { "n", 12918 },	-- Chief Murgut
						}),
						i(56706, {	-- Greenpaw Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56707, {	-- Band of Perserverence
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6621, {	-- King of the Foulweald
					["qgs"] = {
						-- #if AFTER CATA
						12696,	-- Senani Thunderheart
						-- #else
						12757,	-- Karang Amakkar
						-- #endif
					},
					["sourceQuests"] = {
						-- #if AFTER CATA
						13967,	-- Thinning the... Heard?
						-- #else
						216,	-- Between a Rock and a Thistlefur
						-- #endif
					},
					["coords"] = {
						-- #if AFTER CATA
						{ 49.7, 65.1, ASHENVALE },
						-- #else
						{ 11.8, 34.4, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(21, 21, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Murgut's Totem
							["providers"] = {
								{ "i",  16976 },	-- Murgut's Totem
								{ "o", 178227 },	-- Murgut's Totem Basket
							},
							["coord"] = { 56.5, 63.5, ASHENVALE },
							["cost"] = {{ "i", 16972, 1 }},	-- Karang's Banner
							["cr"] = 12918,	-- Chief Murgut
						}),
						i(17005),	-- Boorguard Tunic
						i(17006),	-- Cobalt Legguards
						i(131234, {	-- Feral Vestment
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13883, {	-- Lousy Pieces of Ship
					["qg"] = 34303,	-- Dagrun Ragehammer
					["coord"] = { 11.4, 35.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Sunken Scrap Metal
							["providers"] = {
								{ "i", 46357 },	-- Sunken Scrap Metal
								{ "o", 195012 },	-- Sunken Scrap Metal
							},
						}),
					},
				}),
				q(1017, {	-- Mage Summoner
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["sourceQuest"] = 1016,	-- Elemental Bracers
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Sarilus Foulborne's Head
							["provider"] = { "i", 5537 },	-- Sarilus Foulborne's Head
							["coord"] = { 48.2, 19.0, THE_BARRENS },
							["cr"] = 3986,	-- Sarilus Foulborne
						}),
						i(5816, {	-- Light of Elune
							["description"] = "Single use. Save this for AQ40 or Naxx.",
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13815, {	-- Making Stumps
					["qg"] = 33889,	-- Krokk
					["sourceQuest"] = 13808,	-- Mission Improbable
					["coord"] = { 82.5, 53.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13640, {	-- Management Material
					["qg"] = 33421,	-- Gorka
					["sourceQuest"] = 13628,	-- Got Lumber?
					["coord"] = { 72.9, 80.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Freshly Cut Wood
							["providers"] = {
								{ "i", 45069 },	-- Freshly Cut Wood
								{ "o", 194349 },	-- Freshly Cut Wood
							},
						}),
						i(56627, {	-- Labor Camp Frock
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56628, {	-- Manager's Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56629, {	-- Hands of Encouragement
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131297, {	-- Gorka's Brass Shoulderguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13977, {	-- Mass Production
					["qg"] = 34569,	-- Flooz
					["sourceQuest"] = 13974,	-- Tweedle's Tiny Package
					["coord"] = { 49.9, 67.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13808, {	-- Mission Improbable
					["qg"] = 33837,	-- Kadrak
					["sourceQuest"] = 13805,	-- Pierce Their Heart!
					["coord"] = { 73.6, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78684, {	-- Mysterious Traveler
					["qg"] = 213444,	-- Mysterious Traveler
					["sourceQuest"] = 78681,	-- The Conjuring
					["coord"] = { 79.0, 80.2, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { THE_BARRENS },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
				})),
				-- #endif
				q(13602, {	-- Naga of the Strand
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 18.2, 20.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Wrathtail naga slain
							["providers"] = {
								{ "n", 3711},	-- Wrathtail Myrmidon
								{ "n", 3712},	-- Wrathtail Razortail
								{ "n", 3713},	-- Wrathtail Wave Rider
								{ "n", 3715},	-- Wrathtail Sea Witch
								{ "n", 3717},	-- Wrathtail Sorceress
								{ "n", 3944},	-- Wrathtail Priestess
							},
						}),
					},
				}),
				q(6442, {	-- Naga at the Zoram Strand
					["qg"] = 12719,	-- Marukai
					["coords"] = {
						-- #if AFTER CATA
						{ 12.6, 35.2, ASHENVALE },
						-- #else
						{ 11.6, 34.8, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(14, 14, 7),
					["groups"] = {
						objective(1, {	-- 0/20 Wrathtail Head
							["provider"] = { "i", 5490 },	-- Wrathtail Head
							["crs"] = {
								3711,	-- Wrathtail Myrmidon
								3944,	-- Wrathtail Priestess
								3712,	-- Wrathtail Razortail
								3715,	-- Wrathtail Sea Witch
								3717,	-- Wrathtail Sorceress
								3713,	-- Wrathtail Wave Rider
							},
						}),
					},
				}),
				q(13651, {	-- Needs a Little Lubrication
					["qg"] = 33421,	-- Gorka
					["sourceQuest"] = 13640,	-- Management Material
					["coord"] = { 72.9, 80.4, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Natural Oil
							["provider"] = { "i", 45071 },	-- Natural Oil
							["cr"] = 3928,	-- Rotting Slime
						}),
					},
				}),
				q(26445, {	-- Never Again! [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar
					["sourceQuest"] = 26443,	-- Diabolical Plans [Alliance]
					["coord"] = { 84.1, 62.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon's Flaming Blade
							["provider"] = { "i", 45477 },	-- Gorgannon's Flaming Blade
							["cr"] = 17300,	-- Gorgannon
						}),
						objective(2, {	-- 0/1 Seeker's Fel Spear
							["provider"] = { "i", 45476 },	-- Seeker's Fel Spear
							["cr"] = 6072,	-- Diathorus the Seeker
						}),
						i(24119, {	-- Band of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24120, {	-- Seal of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24118, {	-- Signet of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(45476),	-- Seeker's Fel Spear (QI!)
						i(45477),	-- Gorgannon's Flaming Blade (QI!)
					},
				}),
				q(9522, {	-- Never Again! [Alliance]
					["qg"] = 17303,	-- Vindicator Vedaar <Hand of Argus>
					["sourceQuest"] = 9520,	-- Diabolical Plans [Alliance]
					["coord"] = { 86.5, 44.2, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon slain
							["provider"] = { "n", 17300 },	-- Gorgannon
							["coord"] = { 89.6, 76.8, ASHENVALE },
						}),
						objective(2, {	-- 0/1 Diathorus the Seeker slain
							["provider"] = { "n", 6072 },	-- Diathorus the Seeker
							["coord"] = { 77.8, 83.6, ASHENVALE },
						}),
						i(24119, {	-- Band of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24120, {	-- Seal of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24118, {	-- Signet of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				q(26449, {	-- Never Again! [Horde]
					["qg"] = 17355,	-- Valusha
					["sourceQuest"] = 26447,	-- Diabolical Plans [Horde]
					["coord"] = { 73.1, 60.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon's Flaming Blade
							["provider"] = { "i", 45477 },	-- Gorgannon's Flaming Blade
							["cr"] = 17300,	-- Gorgannon
						}),
						objective(2, {	-- 0/1 Seeker's Fel Spear
							["provider"] = { "i", 45476 },	-- Seeker's Fel Spear
							["cr"] = 6072,	-- Diathorus the Seeker
						}),
						i(24119, {	-- Band of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24120, {	-- Seal of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24118, {	-- Signet of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				q(9536, {	-- Never Again! [Horde]
					["qg"] = 17355,	-- Valusha
					["sourceQuest"] = 9535,	-- Diabolical Plans [Horde]
					["coord"] = { 73.2, 60.4, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 27,
					["groups"] = {
						objective(1, {	-- 0/1 Gorgannon slain
							["provider"] = { "n", 17300 },	-- Gorgannon
							["coord"] = { 89.6, 76.8, ASHENVALE },
						}),
						objective(2, {	-- 0/1 Diathorus the Seeker slain
							["provider"] = { "n", 6072 },	-- Diathorus the Seeker
							["coord"] = { 77.8, 83.6, ASHENVALE },
						}),
						i(24119, {	-- Band of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24120, {	-- Seal of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(24118, {	-- Signet of Argas
							["timeline"] = { ADDED_2_0_1 },
						}),
					},
				}),
				q(13595, {	-- Of Their Own Design
					["qg"] = 33182,	-- Bathran
					["coord"] = { 29.0, 24.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bathran's corpse burned
							["provider"] = { "n", 33183 },	-- Bathran's Corpse
						}),
						o(194202, {	-- Potion of Wildfire
							["coord"] = { 32.2, 23.4, ASHENVALE },
							["groups"] = {
								i(44967),	-- Bottle of Wildfire (QI!)
							},
						}),
					},
				}),
				q(26474, {	-- Orendil's Cure
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 13642,	-- Bathed in Light
					["coord"] = { 26.8, 36.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1020, {	-- Orendil's Cure
					["providers"] = {
						{ "n", 3847 },	-- Orendil Broadleaf
						{ "i", 5460 },	-- Orendil's Cure
					},
					["sourceQuest"] = 1010,	-- Bathran's Hair
					["coord"] = { 26.4, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(13805, {	-- Pierce Their Heart!
					["qg"] = 33760,	-- Durak
					["sourceQuest"] = 13803,	-- Blood of the Weak
					["coord"] = { 72.1, 57.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56727, {	-- Scrupleless Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56728, {	-- Bloodtaint Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56729, {	-- Forest Heart Piercer
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131304, {	-- Heart-Corruptor Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13730, {	-- Playing with Felfire
					["qg"] = 33726,	-- Splintertree Demolisher
					["sourceQuest"] = 13803,	-- Blood of the Weak
					["coord"] = { 73.3, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56649, {	-- Folly's Edge
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56650, {	-- Felfire-Tainted Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56651, {	-- Legguards of Abandoned Virtue
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131302, {	-- Felfire-Scorched Chesteguard
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156958, {	-- Scepter of Questionable Decision Making
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(26478, {	-- Playing Possum
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 26477,	-- Search the Bole
					["coord"] = { 59.2, 59.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Pommel
							["providers"] = {
								{ "i", 5519 },	-- Iron Pommel
								{ "o", 195111 },	-- Oso's Chest
							},
							["coord"] = { 62.6, 60.3, ASHENVALE },
						}),
						i(56664, {	-- Shael'dryn's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56665, {	-- Possumfoot Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56666, {	-- Dissembling Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131534, {	-- Possumfoot Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1134, {	-- Pridewings of Stonetalon
					["qg"] = 3845,	-- Shindrell Swiftfire
					["sourceQuest"] = 1008,	-- The Zoram Strand
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STONETALON_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/12 Pridewing Venom Sac
							["provider"] = { "i", 5808 },	-- Pridewing Venom Sac
							["crs"] = {
								4014,	-- Pridewing Consort
								4015,	-- Pridewing Patriarch
								4013,	-- Pridewing Skyhunter
								4012,	-- Pridewing Wyvern
								5928,	-- Sorrow Wing
								4011,	-- Young Pridewing
							},
						}),
					},
				}),
				q(13884, {	-- Put Out The Fire
					["qg"] = 34292,	-- Arctanus
					["sourceQuests"] = {
						13877,	-- Go With The Flow (A)
						13879,	-- Thunder Peak (H)
					},
					["coord"] = { 52.1, 56.7, ASHENVALE },
					["sourceQuestNumRequired"] = 1,
					["timeline"] = { ADDED_4_0_3 },
					["groups"] = {
						objective(1, {	-- 0/10 Lava Rager slain
							["provider"] = { "n", 34314 },	-- Lava Rager
						}),
					},
				}),
				q(991, {	-- Raene's Cleansing (1/11) [Vanilla] / Finding Teronis [CATA]
					["qg"] = 3691,	-- Raene Wolfrunner
					-- #if AFTER TBC
					["sourceQuest"] = 10752,	-- Onward to Ashenvale
					-- #endif
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1023, {	-- Raene's Cleansing (2/11) [Vanilla] / The Lost Gem [CATA]
					["providers"] = {
						{ "n", 3891 },	-- Teronis' Corpse
						{ "i", 5505 },	-- Teronis' Journal
					},
					["sourceQuest"] = 991,	-- Raene's Cleansing (1/11)
					["coord"] = { 20.2, 42.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Glowing Gem
							["provider"] = { "i", 5463 },	-- Glowing Gem
							["crs"] = {
								3740,	-- Saltspittle Muckdweller
								3742,	-- Saltspittle Oracle
								3737,	-- Saltspittle Puddlejumper
								3739,	-- Saltspittle Warrior
							},
						}),
						i(56624, {	-- Falathim-Washed Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56625, {	-- Broadleaf Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56626, {	-- Maestra's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1024, {	-- Raene's Cleansing (3/11) [Vanilla] / Dryad Delivery [CATA]
					["providers"] = {
						{ "n", 3691 },	-- Raene Wolfrunner
						{ "i", 5463 },	-- Glowing Gem
					},
					["sourceQuest"] = 1023,	-- Raene's Cleansing (2/11)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1026, {	-- Raene's Cleansing (4/11) [Vanilla] / Search the Bole [CATA]
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1024,	-- Raene's Cleansing (3/11)
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Shaft
							["providers"] = {
								{ "i", 5464 },	-- Iron Shaft
								{ "o", 19022 },	-- Worn Chest
							},
							["coord"] = { 54.4, 35.3, ASHENVALE },
							["cost"] = {{ "i", 5475, 1 }},	-- Wooden Key
							["crs"] = {
								3834,	-- Crazed Ancient
								3919,	-- Withered Ancient
							},
						}),
					},
				}),
				q(1027, {	-- Raene's Cleansing (5/11) [Vanilla] / Playing Possum [CATA]
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 1026,	-- Raene's Cleansing (4/11)
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Pommel
							["providers"] = {
								{ "i", 5519 },	-- Iron Pommel
								{ "o", 19021 },	-- Rusty Chest
							},
							["description"] = "When you kill a slime, it can drop a Rusty Chest which can contain this item.",
							["cr"] = 3928,	-- Rotting Slime
						}),
						i(56664, {	-- Shael'dryn's Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56665, {	-- Possumfoot Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56666, {	-- Dissembling Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(1028, {	-- Raene's Cleansing (6/11)
					["providers"] = {
						{ "n", 3916 },	-- Shael'dryn
						{ "i", 5547 },	-- Reconstructed Rod
					},
					["sourceQuest"] = 1027,	-- Raene's Cleansing (5/11)
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						i(5462, {	-- Dartol's Rod of Transformation
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1055, {	-- Raene's Cleansing (7/11)
					["provider"] = { "o", 19024 },	-- Hidden Shrine
					["sourceQuest"] = 1028,	-- Raene's Cleansing (6/11)
					["coord"] = { 56.38, 49.24, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1029, {	-- Raene's Cleansing (8/11) [Vanilla] / Return to Raene [CATA]
					["providers"] = {
						{ "n", 3916 },	-- Shael'dryn
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["sourceQuest"] = 1055,	-- Raene's Cleansing (7/11)
					["coord"] = { 53.5, 46.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1030, {	-- Raene's Cleansing (9/11) [Vanilla] / Dartol's Rod [CATA]
					["providers"] = {
						{ "n", 3691 },	-- Raene Wolfrunner
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["sourceQuest"] = 1029,	-- Raene's Cleansing (8/11)
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
				}),
				q(1045, {	-- Raene's Cleansing (10/11) [Vanilla] / A New Adornment [CATA]
					["providers"] = {
						{ "n", 3897 },	-- Krolg
						{ "i", 5462 },	-- Dartol's Rod of Transformation
					},
					["sourceQuest"] = 1030,	-- Raene's Cleansing (9/11)
					["coord"] = { 50.8, 75.0, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/1 Ran Bloodtooth
							["provider"] = { "i", 5388 },	-- Ran Bloodtooth's Skull
							["coord"] = { 54.6, 79.4, ASHENVALE },
							["cr"] = 3696,	-- Ran Bloodtooth
						}),
						objective(2, {	-- 0/4 Bloodtooth Guard
							["provider"] = { "n", 3932 },	-- Bloodtooth Guard
						}),
					},
				}),
				q(1046, {	-- Raene's Cleansing (11/11) [Vanilla] / True Power of the Rod [CATA]
					-- #if AFTER WRATH
					["providers"] = {
						{ "n", 3897 },	-- Krolg
						{ "i", 5388 },	-- Ran Bloodtooth's Skull
					},
					-- #else
					["qg"] = 3897,	-- Krolg
					-- #endif
					["sourceQuest"] = 1045,	-- Raene's Cleansing (10/11)
					["coord"] = { 50.8, 75.0, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 18,
					["groups"] = {
						-- #if BEFORE WRATH
						objective(1, {	-- 0/1 Ran Bloodtooth's Skull
							["provider"] = { "i", 5388 },	-- Ran Bloodtooth's Skull
						}),
						objective(2, {	-- 0/1 Dartol's Rod of Transformation
							["provider"] = { "i", 5462 },	-- Dartol's Rod of Transformation
							["description"] = "There's a trick to keep this item forever:\nBefore turning in the quest to Raene, destroy the item. Ask Raene for it back. Then turn in the quest. The item will be removed from your inventory. However, since you destroyed the first one, you can then use the Blizzard Item Restoration tool to get your destroyed rod back.",
						}),
						-- #endif
						i(5815, {	-- Glacial Stone
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17046, {	-- Gutterblade
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(1116, {	-- Ring of Pure Silver
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(56694, {	-- Silverwind Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56695, {	-- Wolfrunner Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56696, {	-- Legacy of Teronis
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13798, {	-- Rain of Destruction
					["qg"] = 33760,	-- Durak
					["sourceQuest"] = 13797,	-- Dirty Deeds
					["coord"] = { 72.2, 57.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56711, {	-- Impish Blade
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56712, {	-- Accursed Mace
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56713, {	-- Durak's Wand
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56714, {	-- Band of Foul Strength
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13632, {	-- Rear Guard Duty
					["qg"] = 11219,	-- Liladris Moonriver
					["coord"] = { 27.2, 35.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Furbolg at the Ruins of Ordil'Aran slain
							["providers"] = {
								{ "n", 33389},	-- Thistlefur Wise One
								{ "n", 33390},	-- Thistlefur Warrior
							},
						}),
					},
				}),
				q(26446, {	-- Reclaiming Felfire Hill
					["qg"] = 17310,	-- Gnarl
					["coord"] = { 83.8, 63.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/8 Tree Seedling Planted
							["providers"] = {
								{ "i",  23788 },	-- Tree Seedlings
								{ "o", 181690 },	-- Fertile Dirt Mound
							},
						}),
					},
				}),
				q(9526, {	-- Reclaiming Felfire Hill
					["qg"] = 17310,	-- Gnarl <Ancient of War>
					["coord"] = { 84.2, 45.6, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 24,
					["groups"] = {
						objective(1, {	-- 0/8 Tree Seedling Planted
							["providers"] = {
								{ "i",  23788 },	-- Tree Seedlings
								{ "o", 181690 },	-- Fertile Dirt Mound
							},
						}),
					},
				}),
				q(13928, {	-- Recover the Fallen
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 59.0, 58.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13869, {	-- Recover the Remains
					["qg"] = 17310,	-- Gnarl
					["sourceQuest"] = 26454,	-- A Shameful Waste
					["coord"] = { 83.8, 63.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, pvp(q(79090, {	-- Repelling Invaders
					["providers"] = {
						{ "i", 211814 },	-- Warsong Outrider Mark
						{ "n", 212970 },	-- Felore Moonray <Priestess of the Moon>
					},
					["coord"] = { 50.5, 72.0, ASHENVALE },
					["maxReputation"] = { FACTION_SILVERWING_SENTINELS, HONORED },	-- Silverwing Sentinels, Honored.
					["timeline"] = { REMOVED_2_0_1 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 1.15.2
					["isDaily"] = true,
					-- #else
					["isWeekly"] = true,
					-- #endif
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/10 Warsong Lumber
							["providers"] = {
								{ "i", 23776 },	-- Warsong Lumber
								{ "o", 181686 },	-- Warsong Lumber Pile
								{ "o", 181687 },	-- Lumber Pile
							},
						}),
						i(211815),	-- Silverwing Battle Hymn
					},
				}))),
				-- #endif
				q(26456, {	-- Report from the Northern Front
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["sourceQuest"] = 13935,	-- Defend the Tree!
					["coord"] = { 59.0, 58.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(9521, {	-- Report from the Northern Front
					["providers"] = {
						{ "n", 17287 },	-- Sentinel Luciel Starwhisper <Silverwing Sentinels>
						{ "i", 23778 },	-- Sentinel Luciel's Report
					},
					["coord"] = { 86.0, 44.4, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 21,
				}),
				q(9428, {	-- Report to Spintertree Post
					["qg"] = 17098,	-- Ambassador Dawnsinger
					["coord"] = { 71.0, 68.0, ORGRIMMAR },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = { BLOODELF },
					["lvl"] = 18,
				}),
				q(13626, {	-- Respect for the Fallen
					["qg"] = 11806,	-- Sentinel Onaeya
					["sourceQuest"] = 13624,	-- A Squad of Your Own
					["coord"] = { 26.7, 36.9, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(45044, {	-- Cloak of Cenarius
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56630, {	-- Delgren's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56631, {	-- Onaeya's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56632, {	-- Feero's Pauldrons
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131296, {	-- Feero's Ringmail Grips
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26470, {	-- Retaking Mystral Lake
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["sourceQuest"] = 13964,	-- To the Spire
					["coord"] = { 35.6, 71.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Befouled Water Elemental slain
							["provider"] = { "n", 3917 },	-- Befouled Water Elemental
						}),
						objective(2, {	-- 0/1 Tideress slain
							["provider"] = { "n", 12759 },	-- Tideress
						}),
					},
				}),
				-- #if AFTER CATA
				q(1016, {	-- Retaking Mystral Lake [CATA+] / Elemental Bracers [Vanilla]
					["qg"] = 3885,	-- Sentinel Velene Starstrike
					["coord"] = { 49.8, 67.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Divined Scroll
							["provider"] = { "i", 5455 },	-- Divined Scroll
							["cost"] = {
								{ "i", 5456, 1 },	-- Divining Scroll
								{ "i", 12220, 5 },	-- Intact Elemental Bracer
							},
							["crs"] = {
								3917,	-- Befouled Water Elemental
								12759,	-- Tideress
							},
						}),
					},
				}),
				-- #endif
				q(13853, {	-- Return Fire
					["qg"] = 4079,	-- Sentinel Thenysil
					["sourceQuest"] = 13849,	-- Astranaar's Burning!
					["coord"] = { 34.9, 49.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56673, {	-- Fiery Loop
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56674, {	-- Thenysil's Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56675, {	-- Astranaar Legguards
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131306, {	-- Glaivethrower Expert's Chestpiece
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78093, {	-- Return to Delgren
					["providers"] = {
						{ "o", 409315 },	-- Shattered Orb
						{ "i", 209800 },	-- Orb Fragments
					},
					["sourceQuest"] = 78092,	-- It Must Be Destroyed
					["coord"] = { 89.4, 77, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["groups"] = {
						recipe(410014, {	-- Engrave Chest - Divine Storm
							["classes"] = { PALADIN },
						}),
					},
				})),
				-- #endif
				q(26479, {	-- Return to Raene
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 26478,	-- Playing Possum
					["coord"] = { 59.2, 59.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26466, {	-- Ruuzel
					["qg"] = 3846,	-- Talen
					["sourceQuest"] = 26465,	-- The Ancient Statuettes
					["coord"] = { 18.2, 20.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Ring of Zoram
							["provider"] = { "i", 5445 },	-- Ring of Zoram
							["cr"] = 3943,	-- Ruuzel
						}),
						i(5812),	-- Robes of Antiquity
					},
				}),
				q(1009, {	-- Ruuzel
					["qg"] = 3846,	-- Talen
					["sourceQuest"] = 1007,	-- The Ancient Statuette
					["coord"] = { 14.8, 31.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Ring of Zoram
							["provider"] = { "i", 5445 },	-- Ring of Zoram
							["coords"] = {
								{ 7.2, 13, ASHENVALE },
								{ 9.4, 15.2, ASHENVALE },
								{ 12.4, 19.6, ASHENVALE },
								{ 11, 29.6, ASHENVALE },
							},
							["crs"] = {
								3943,	-- Ruuzel
								10559,	-- Lady Vespia
							},
						}),
						i(5812),	-- Robes of Antiquity
					},
				}),
				q(6441, {	-- Satyr Horns
					["qg"] = 12724,	-- Pixel
					-- #if AFTER CATA
					["sourceQuest"] = 26449,	-- Never Again! [Horde]
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 73.8, 62.4, ASHENVALE },
						-- #else
						{ 73, 61.4, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(21, 21, 7),
					["groups"] = {
						objective(1, {	-- 0/16 Satyr Horns
							["provider"] = { "i", 5481 },	-- Satyr Horns
							["crs"] = {
								3898,	-- Aligar the Tormentor
								3899,	-- Balizar the Umbrage
								3771,	-- Bleakheart Hellcaller
								3765,	-- Bleakheart Satyr
								3770,	-- Bleakheart Shadowstalker
								3767,	-- Bleakheart Trickster
								3900,	-- Caedakar the Vicious
								3762,	-- Felmusk Felsworn
								3759,	-- Felmusk Rogue
								3758,	-- Felmusk Satyr
								3763,	-- Felmusk Shadowstalker
								4619,	-- Geltharis
								10647,	-- Prince Raze
								3754,	-- Xavian Betrayer
								3755,	-- Xavian Felsworn
								3757,	-- Xavian Hellcaller
								3752,	-- Xavian Rogue
							},
						}),
					},
				}),
				q(26469, {	-- Satyr Slaying!
					["qg"] = 3901,	-- Illiyana
					["sourceQuest"] = 26468,	-- The Branch of Cenarius
					["coord"] = { 87.1, 43.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/16 Satyr Horns
							["provider"] = { "i", 5481 },	-- Satyr Horns
							["crs"] = {
								3752,	-- Xavian Rogue
								3754,	-- Xavian Betrayer
								3755,	-- Xavian Felsworn
								3757,	-- Xavian Hellcaller
								3758,	-- Felmusk Satyr
								3759,	-- Felmusk Rogue
								3762,	-- Felmusk Felsworn
								3763,	-- Felmusk Shadowstalker
								3765,	-- Bleakheart Satyr
								3767,	-- Bleakheart Trickster
								3770,	-- Bleakheart Shadowstalker
								3771,	-- Bleakheart Hellcaller
								3898,	-- Aligar the Tormentor
								3899,	-- Balizar the Umbrage
								3900,	-- Caedakar the Vicious
								4619,	-- Geltharis
								10647,	-- Prince Raze
							},
						}),
					},
				}),
				q(1032, {	-- Satyr Slaying!
					["qg"] = 3901,	-- Illiyana
					["sourceQuest"] = 1031,	-- The Branch of Cenarius
					["coord"] = { 21.8, 53.2, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/16 Satyr Horns
							["provider"] = { "i", 5481 },	-- Satyr Horns
							["crs"] = {
								3898,	-- Aligar the Tormentor
								3899,	-- Balizar the Umbrage
								3771,	-- Bleakheart Hellcaller
								3765,	-- Bleakheart Satyr
								3770,	-- Bleakheart Shadowstalker
								3767,	-- Bleakheart Trickster
								3900,	-- Caedakar the Vicious
								3762,	-- Felmusk Felsworn
								3759,	-- Felmusk Rogue
								3758,	-- Felmusk Satyr
								3763,	-- Felmusk Shadowstalker
								4619,	-- Geltharis
								10647,	-- Prince Raze
								3754,	-- Xavian Betrayer
								3755,	-- Xavian Felsworn
								3757,	-- Xavian Hellcaller
								3752,	-- Xavian Rogue
							},
						}),
					},
				}),
				q(26477, {	-- Search the Bole
					["qg"] = 3916,	-- Shael'dryn
					["sourceQuest"] = 26476,	-- Dryad Delivery
					["coord"] = { 59.2, 59.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Iron Shaft
							["providers"] = {
								{ "i", 5464 },	-- Iron Shaft
								{ "o", 19022 },	-- Worn Chest
							},
							["coord"] = { 55.0, 40.7, ASHENVALE },
						}),
					},
				}),
				q(13871, {	-- Security!
					["qg"] = 17304,	-- Overseer Gorthak
					["sourceQuest"] = 13870,	-- As Good as it Gets
					["coord"] = { 90.9, 58.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Kaldorei Assassin's Head
							["provider"] = { "i", 46147 },	-- Kaldorei Assassin's Head
							["cr"] = 34206,	-- Kaldorei Assassin
						}),
						i(56718, {	-- Detective Buckler
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56719, {	-- Pilfered Kaldorei Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56720, {	-- Security Crossbow
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131308, {	-- Gorthak's Tool Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13942, {	-- Set Us Up the Bomb
					["qg"] = 34395,	-- Tweedle
					["sourceQuest"] = 13936,	-- Tweedle's Dumb
					["coord"] = { 37.9, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Moon-Kissed Clay
							["providers"] = {
								{ "i", 46698 },	-- Moon-Kissed Clay
								{ "o", 195077 },	-- Moon-kissed Clay
							},
						}),
					},
				}),
				q(24, {		-- Shadumbra's Head
					["provider"] = { "i", 16304 },	-- Shadumbra's Head
					-- #if BEFORE CATA
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 61.4, 50.2, ASHENVALE },
						-- #else
						{ 59.8, 54.6, ASHENVALE },
						-- #endif
					},
					["cr"] = 12677,	-- Shadumbra
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 7),
				}),
				q(2, {		-- Sharptalon's Claw
					["provider"] = { "i", 16305 },	-- Sharptalon's Claw
					-- #if BEFORE CATA
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 73.2, 73.6, ASHENVALE },
						-- #else
						{ 75.8, 69.6, ASHENVALE },
						-- #endif
					},
					["cr"] = 12676,	-- Sharptalon
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 7),
				}),
				q(13873, {	-- Sheelah's Last Wish
					["qg"] = 34233,	-- Guardian Menerin
					["sourceQuest"] = 13871,	-- Security!
					["coord"] = { 90.7, 58.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if AFTER CATA
				q(25, {		-- Simmer Down Now [CATA+] / Stonetalon Standstill
					["qg"] = 34559,	-- Captain Tarkan
					["coord"] = { 50.1, 67.5, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(23, 23, 7),
				}),
				-- #endif
				q(13944, {	-- Small Hands, Short Fuse
					["qg"] = 34395,	-- Tweedle
					["sourceQuest"] = 13942,	-- Set Us Up The Bomb
					["coord"] = { 37.9, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Speak to the Dead
					readable = "Speak to the Dead",
					icon = 131038,
					text = {
						en = "Speak to the Dead",
						es = "Hablar con los Muertos",
						de = "Sprich mit den Toten",
						fr = "Parlez aux Morts",
						it = "Parla con i Morti",
						pt = "Fale com os Mortos",
						ru = "Поговорите с мертвыми",
						ko = "죽은 자와 대화",
						cn = "与死者交谈",
					},
				}), {
					["questID"] = 78907,	-- Dead Twilight Cultist HQT
					["qg"] = 212334,	-- Dead Twilight Cultist
					["coord"] = { 17.3, 26.7, ASHENVALE },
					["cost"] = {{ "i", 210708, 1 }},	-- Elixir of Coalesced Regret
					["timeline"] = { REMOVED_2_0_1 },
					["OnUpdate"] = [[_.OnUpdateForCrafter]],
				})),
				-- #endif
				q(13962, {	-- Stalemate
					["qg"] = 34518,	-- Thagg
					["sourceQuest"] = 13958,	-- Condition Critical!
					["coord"] = { 59.9, 53.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				-- #if BEFORE CATA
				q(25, {		-- Stonetalon Standstill / Simmer Down Now [CATA+]
					["qg"] = 12737,	-- Mastok Wrilehiss
					["coord"] = { 73.66, 60.01, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(23, 23, 7),
					["groups"] = {
						objective(1, {	-- 0/12 Befouled Water Elemental slain
							["provider"] = { "n", 3917 },	-- Befouled Water Elemental
						}),
					},
				}),
				-- #endif
				q(13683, {	-- Stopping the Rituals
					["qg"] = 33727,	-- Anchorite Buurq
					["sourceQuest"] = 26468,	-- The Branch of Cenarius
					["coord"] = { 86.5, 43.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(976, {	-- Supplies to Auberdine
					["qg"] = 4484,	-- Feero Ironhand
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["coord"] = { 26.2, 38.9, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						i(5323, {	-- Everglow Lantern
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(6721, {	-- Chestplate of Kor
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13751, {	-- Tell No One!
					["qg"] = 33726,	-- Sprintertree Demolisher
					["sourceQuest"] = 13730,	-- Playing With Felfire
					["coord"] = { 73.3, 62.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13644, {	-- That Which has Risen
					["qg"] = 33443,	-- Keeper Heartwise
					["coord"] = { 20.2, 38.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Harbinger Aphotic slain
							["provider"] = { "n", 33444 },	-- Harbinger Aphotic
						}),
						i(56652, {	-- Ablution Slippers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56653, {	-- Somber Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56654, {	-- Heartwise Boon
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131298, {	-- Somber Boots
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1007, {	-- The Ancient Statuette
					["qg"] = 3846,	-- Talen
					["coord"] = { 14.8, 31.3, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 19,
					["groups"] = {
						objective(1, {	-- 0/1 Ancient Statuette
							["providers"] = {
								{ "i", 5424 },	-- Ancient Statuette
								{ "o", 17783 },	-- Ancient Statuette
							},
							["coord"] = { 14.2, 20.6, ASHENVALE },
						}),
					},
				}),
				q(26465, {	-- The Ancient Statuettes
					["qg"] = 3846,	-- Talen
					["sourceQuest"] = 13617,	-- West to the Strand
					["coord"] = { 18.2, 20.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/10 Ancient Statuette
							["providers"] = {
								{ "i", 5424 },	-- Ancient Statuette
								{ "o", 17783 },	-- Ancient Statuette
							},
						}),
					},
				}),
				q(235, {	-- The Ashenvale Hunt (1/2) [Orgrimmar]
					["qg"] = 10880,	-- Warcaller Gorlach
					["coord"] = { 46.6, 64.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(742, {	-- The Ashenvale Hunt (1/2) [Thunder Bluff]
					["qg"] = 10881,	-- Bluff Runner Windstrider
					["coord"] = { 41.4, 54.2, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6382, {	-- The Ashenvale Hunt (1/2) [The Barrens]
					["qg"] = 3387,	-- Jorn Skyseer
					["coord"] = { 44.86, 59.13, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(6383, {	-- The Ashenvale Hunt (2/2)
					["qg"] = 12696,	-- Senani Thunderheart
					["sourceQuests"] = {
						235,	-- The Ashenvale Hunt (1/2) [Orgrimmar]
						742,	-- The Ashenvale Hunt (1/2) [Thunder Bluff]
						6382,	-- The Ashenvale Hunt (1/2) [The Barrens]
					},
					["coord"] = { 73.6, 61.4, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(1918, {	-- The Befouled Element
					["provider"] = { "i", 16408 },	-- Befouled Water Globe
					["sourceQuest"] = 25,	-- Stonetalon Standstill / Simmer Down Now [CATA]
					["coord"] = { 50.8, 71.6, ASHENVALE },
					["cr"] = 12759,	-- Tideress
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(23, 23, 7),
				}),
				q(26468, {	-- The Branch of Cenarius
					["qg"] = 3920,	-- Anilia
					["sourceQuest"] = 26467,	-- Vile Satyr! Dryads in Danger!
					["coord"] = { 78.3, 44.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Branch of Cenarius
							["provider"] = { "i", 5461 },	-- Branch of Cenarius
							["cr"] = 4619,	-- Geltharis
						}),
						i(5820),	-- Faerie Mantle
						i(11229),	-- Brightplate Girdle
					},
				}),
				q(1031, {	-- The Branch of Cenarius
					["qg"] = 3920,	-- Anilia
					["sourceQuest"] = 1021,	-- Vile Satyr! Dryads in Danger!
					["coord"] = { 78.3, 44.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Branch of Cenarius
							["provider"] = { "i", 5461 },	-- Branch of Cenarius
							["coord"] = { 78.6, 42.8, ASHENVALE },
							["cr"] = 4619,	-- Geltharis
						}),
						i(5820),	-- Faerie Mantle
						i(11229),	-- Brightscale Girdle
					},
				}),
				q(26890, {	-- The Essence of Aku'Mai
					["qg"] = 34303,	-- Dagrun Ragehammer
					["coord"] = { 11.4, 35.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/20 Sapphire of Aku'Mai
							["provider"] = { "i", 16784 },	-- Sapphire of Aku'Mai
							["cr"] = 4802,	-- Blackfathom Tide Priestess
						}),
					},
				}),
				q(13796, {	-- The Forest Heart
					["qg"] = 33777,	-- Gaivan Shadewalker
					["sourceQuest"] = 13792,	-- The Shadewalker
					["coords"] = {	-- Walks back-and-forth between the coordinates
						{ 75.8, 74.9, ASHENVALE },
						{ 75.6, 75.5, ASHENVALE },
						{ 75.5, 76.1, ASHENVALE },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 The Forest Heart
							["providers"] = {
								{ "i", 45573 },	-- The Forest Heart
								{ "o", 194549 },	-- The Forest Heart
							},
							["coord"] = { 75.5, 74.2, ASHENVALE },
						}),
						i(56636, {	-- Forest Grace Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56637, {	-- Severed Druid's Leggings
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56638, {	-- Gnarlbark Shoulders
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131303, {	-- Barkburn Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13979, {	-- The Goblin Braintrust
					["qg"] = 34354,	-- Huntress Jalin
					["coord"] = { 35.1, 71.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Sploder's Head
							["provider"] = { "i", 46768 },	-- Sploder's Head
							["cr"] = 34591,	-- Chief Bombgineer Sploder
						}),
						i(56703, {	-- Jalin's Recompense
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56704, {	-- Braintrust Vest
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56705, {	-- Skunkworks Sword
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131326, {	-- Bombgineer Blasting Vest
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1022, {	-- The Howling Vale
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["coord"] = { 22.2, 53.0, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- View the Tome of Mel'Thandris
							["provider"] = { "o", 19027 },	-- Tome of Mel'Thandris
							["coord"] = { 50.5, 39.1, ASHENVALE },
						}),
					},
				}),
				q(247, {	-- The Hunt Completed
					["qg"] = 12696,	-- Senani Thunderheart
					["sourceQuests"] = {
						24,	-- Shadumbra's Head
						2,	-- Sharptalon's Claw
						23,	-- Ursangous's Paw
					},
					["coord"] = { 73.6, 61.4, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(16658, {	-- Wildhunter Cloak
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13987, {	-- The Last Stand
					["qg"] = 34604,	-- Big Baobob
					["sourceQuest"] = 13985,	-- Clear the Shrine
					["coord"] = { 22.2, 52.9, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/30 Demonic Invader slain
							["provider"] = { "n", 34609 },	-- Demonic Invader
						}),
						i(56689, {	-- Adansonian Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56690, {	-- Unringed Bands
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56691, {	-- Baobab Fruit Shell
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131327, {	-- Sheltered Aessina Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(26455, {	-- The Lost Chalice
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.2, 44.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Chalice of Elune
							["providers"] = {
								{ "i", 23760 },	-- Chalice of Elune
								{ "o", 181681 },	-- Chalice of Elune
							},
							["coord"] = { 81.2, 48.7, ASHENVALE },
						}),
					},
				}),
				q(9519, {	-- The Lost Chalice
					["qg"] = 3848,	-- Kayneth Stillwind
					["coord"] = { 85.3, 44.7, ASHENVALE },
					["timeline"] = { ADDED_2_0_1, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- 0/1 Chalice of Elune
							["providers"] = {
								{ "i",  23760 },	-- Chalice of Elune
								{ "o", 181681 },	-- Chalice of Elune
							},
							["coord"] = { 81.4, 48.9, ASHENVALE },
						}),
					},
				}),
				q(26464, {	-- The Lost Gem
					["qg"] = 3891,	-- Teronis' Corpse
					["sourceQuest"] = 26463,	-- Finding Teronis
					["coord"] = { 20.3, 38.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Glowing Gem
							["provider"] = { "i", 5463 },	-- Glowing Gem
							["crs"] = {
								3737,	-- Saltspittle Puddlejumper
								3739,	-- Saltspittle Warrior
								3740,	-- Saltspittle Muckdweller
								3742,	-- Saltspittle Oracle
								33419,	-- Tendril from Below
								33444,	-- Harbinger Aphotic
							},
						}),
						i(56624, {	-- Falathim-Washed Robes
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56625, {	-- Broadleaf Mantle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56626, {	-- Maestra's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131533, {	-- Broadleaf Spaulders
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(6504, {	-- The Lost Pages
					["qg"] = 12718,	-- Gurda Ragescar
					["coord"] = { 70, 71, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 23,
					["groups"] = {
						objective(1, {	-- Shredder Operating Manual - Chapter 1
							["provider"] = { "i", 16642 },	-- Shredder Operating Manual - Chapter 1
							["cost"] = {
								{ "i", 16645, 1 },	-- Shredder Operating Manual - Page 1
								{ "i", 16646, 1 },	-- Shredder Operating Manual - Page 2
								{ "i", 16647, 1 },	-- Shredder Operating Manual - Page 3
								{ "i", 16648, 1 },	-- Shredder Operating Manual - Page 4
							},
						}),
						objective(2, {	-- Shredder Operating Manual - Chapter 2
							["provider"] = { "i", 16643 },	-- Shredder Operating Manual - Chapter 2
							["cost"] = {
								{ "i", 16649, 1 },	-- Shredder Operating Manual - Page 5
								{ "i", 16650, 1 },	-- Shredder Operating Manual - Page 6
								{ "i", 16651, 1 },	-- Shredder Operating Manual - Page 7
								{ "i", 16652, 1 },	-- Shredder Operating Manual - Page 8
							},
						}),
						objective(3, {	-- Shredder Operating Manual - Chapter 3
							["provider"] = { "i", 16644 },	-- Shredder Operating Manual - Chapter 3
							["cost"] = {
								{ "i", 16653, 1 },	-- Shredder Operating Manual - Page 9
								{ "i", 16654, 1 },	-- Shredder Operating Manual - Page 10
								{ "i", 16655, 1 },	-- Shredder Operating Manual - Page 11
								{ "i", 16656, 1 },	-- Shredder Operating Manual - Page 12
							},
						}),
						i(16740, {	-- Shredder Operating Gloves
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16741, {	-- Oilrag Handwraps
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(13630, {	-- The Reason Why
					["qg"] = 33276,	-- Moon Priestess Maestra (mobileNPC)
					["coord"] = { 27.0, 36.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Blue Moonstone deactivated
							["provider"] = { "o", 194309 },	-- Blue Moonstone
							["coord"] = { 30.4, 31.4, ASHENVALE },
						}),
						objective(2, {	-- 0/1 Green Moonstone deactivated
							["provider"] = { "o", 194310 },	-- Green Moonstone
							["coord"] = { 27.6, 33.2, ASHENVALE },
						}),
						objective(3, {	-- 0/1 Red Moonstone deactivated
							["provider"] = { "o", 194311 },	-- Red Moonstone
							["coord"] = { 28.6, 31.6, ASHENVALE },
						}),
					},
				}),
				q(1034, {	-- The Ruins of Stardust
					["qg"] = 3894,	-- Pelturas Whitemoon
					["sourceQuest"] = 1033,	-- Elune's Tear
					["coord"] = { 37.3, 51.8, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/5 Handful of Stardust
							["providers"] = {
								{ "i", 5494 },	-- Handful of Stardust
								{ "o", 19016 },	-- Stardust Covered Bush
							},
							["coord"] = { 33.9, 68.2, ASHENVALE },
						}),
					},
				}),
				q(13792, {	-- The Shadewalker
					["qg"] = 17310,	-- Gnarl
					["sourceQuest"] = 13766,	-- Closure is Only Natural
					["coord"] = { 83.8, 63.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(970, {	-- The Tower of Althalaxx (4/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 967,	-- The Tower of Althalaxx (3/9) (Darkshore)
					["coord"] = { 26.2, 38.7, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Glowing Soul Gem
							["provider"] = { "i", 5366 },	-- Glowing Soul Gem
							["crs"] = {
								3728,	-- Dark Strand Adept
								3879,	-- Dark Strand Assassin
								3725,	-- Dark Strand Cultist
								3727,	-- Dark Strand Enforcer
								3730,	-- Dark Strand Excavator
							},
						}),
					},
				}),
				q(973, {	-- The Tower of Althalaxx (5/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 970,	-- The Tower of Althalaxx (4/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- 0/1 Ilkrud Magthrull's Tome
							["provider"] = { "i", 5533 },	-- Ilkrud Magthrull's Tome
							["coord"] = { 25.2, 60.6, ASHENVALE },
							["cr"] = 3664,	-- Ilkrud Magthrull
						}),
						i(5622, {	-- Clergy Ring
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5613, {	-- Staff of the Purifier
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1140, {	-- The Tower of Althalaxx (6/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 973,	-- The Tower of Althalaxx (5/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
					["groups"] = {
						objective(1, {	-- Free the Highborne soul in Night Run
							["provider"] = { "o", 19901 },	-- Circle of Imprisonment
							["coord"] = { 66.7, 57, ASHENVALE },
						}),
						objective(2, {	-- Free the Highborne soul in Satyrnaar
							["provider"] = { "o", 20352 },	-- Circle of Imprisonment
							["coord"] = { 81.6, 48.5, ASHENVALE },
						}),
					},
				}),
				q(1167, {	-- The Tower of Althalaxx (7/9)
					["qg"] = 3663,	-- Delgren the Purifier
					["sourceQuest"] = 1140,	-- The Tower of Althalaxx (6/9)
					["coord"] = { 26.2, 38.6, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DARKSHORE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 13,
				}),
				q(6543, {	-- The Warsong Reports
					["providers"] = {
						{ "n", 8582 },	-- Kadrak
						{ "i", 16783 },	-- Bundle of Reports
					},
					["sourceQuests"] = {
						6541,	-- Report to Kadrak (Barrens)
						6542,	-- Report to Kadrak (Stonetalon)
					},
					["coord"] = { 48.12, 5.42, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 17,
					["groups"] = {
						q(6546, {	-- Warsong Outrider Update
							["providers"] = {
								{ "n", 12864 },	-- Warsong Outrider
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 83.6, 51.4, ASHENVALE },
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(3, {	-- 0/1 Warsong Outrider Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16765 },	-- Warsong Outrider Update
								}),
							},
						}),
						q(6545, {	-- Warsong Runner Update
							["providers"] = {
								{ "n", 12863 },	-- Warsong Runner
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 12.2, 34.2, ASHENVALE },
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(2, {	-- 0/1 Warsong Runner Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16763 },	-- Warsong Runner Update
								}),
							},
						}),
						q(6547, {	-- Warsong Scout Update
							["providers"] = {
								{ "n", 12862 },	-- Warsong Scout
								{ "i", 16746 },	-- Warsong Report
							},
							["coord"] = { 71.04, 68.22, ASHENVALE },
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Warsong Scout Update
									["questID"] = 6543,	-- The Warsong Reports
									["provider"] = { "i", 16764 },	-- Warsong Scout Update
								}),
							},
						}),
					},
				}),
				q(1008, {	-- The Zoram Strand
					["qg"] = 3845,	-- Shindrell Swiftfire
					["coord"] = { 34.7, 48.9, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 14,
					["groups"] = {
						objective(1, {	-- 0/20 Wrathtail Head
							["provider"] = { "i", 5490 },	-- Wrathtail Head
							["crs"] = {
								3711,	-- Wrathtail Myrmidon
								3944,	-- Wrathtail Priestess
								3712,	-- Wrathtail Razortail
								3715,	-- Wrathtail Sea Witch
								3717,	-- Wrathtail Sorceress
								3713,	-- Wrathtail Wave Rider
							},
						}),
					},
				}),
				q(13981, {	-- They Set Them Up The Bomb!
					["provider"] = { "o", 195134 },	-- The Bomb
					["coord"] = { 46.4, 61.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13980, {	-- They're Out There!
					["qg"] = 34596,	-- Foreman Jinx
					["sourceQuest"] = 13977,	-- Mass Production
					["coord"] = { 46.1, 63.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/12 Ashenvale Assassin slain
							["provider"] = { "n", 34603 },	-- Ashenvale Assassin
						}),
						i(56692, {	-- Weaponized Belt
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56693, {	-- Backwatcher's Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(13967, {	-- Thinning the... Herd?
					["qg"] = 12696,	-- Senani Thunderheart
					["coord"] = { 49.8, 65.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Furbolg Ear
							["provider"] = { "i", 46741 },	-- Furbolg Ear
							["crs"] = {
								3743,	-- Foulweald Warrior
								3745,	-- Foulweald Pathfinder
								3746,	-- Foulweald Den Watcher
								3749,	-- Foulweald Ursa
								3750,	-- Foulweald Totemic
								52161,	-- Foulweald Pathfinder
							},
						}),
					},
				}),
				q(13976, {	-- Three Friends of the Forest
					["qg"] = 24739,	-- Benjari Edune
					["sourceQuest"] = 13965,	-- Check in on the Edunes
					["coord"] = { 17.9, 49.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13879, {	-- Thunder Peak
					["qg"] = 34510,	-- Broyk
					["sourceQuest"] = 13947,	-- Blastranaar!
					["coord"] = { 38.7, 43.3, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13923, {	-- To Hellscream's Watch
					["qg"] = 34122,	-- Commander Grimfang
					["sourceQuest"] = 13920,	-- Before You Go...
					["coord"] = { 12.1, 33.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13645, {	-- To Raene Wolfrunner
					["qg"] = 3847,	-- Orendil Broadleaf
					["sourceQuest"] = 26464,	-- The Lost Gem
					["coord"] = { 26.8, 36.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13866, {	-- To The Ramparts!
					["qg"] = 34195,	-- Kulg Gorespatter
					["sourceQuest"] = 24463,	-- Probing into Ashenvale
					["coord"] = { 94.4, 46.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13964, {	-- To the Spire
					["qg"] = 4079,	-- Sentinel Thenysil
					["sourceQuest"] = 26478,	-- Playing Possum
					["coord"] = { 34.9, 49.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13876, {	-- Too Far Gone
					["qg"] = 34251,	-- Vear Darksnout
					["sourceQuest"] = 13868,	-- Corrupting Influence?
					["coord"] = { 38.0, 30.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Bloodclaw's Collection
							["provider"] = { "i", 5544 },	-- Bloodclaw's Collection
							["cr"] = 3987,	-- Dal Bloodclaw
						}),
						i(56622, {	-- Thistle Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56623, {	-- Zoram'gar Cloak
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(6544, {	-- Torek's Assault
					["qg"] = 12858,	-- Torek
					["coords"] = {
						-- #if AFTER CATA
						{ 68.4, 75.2, ASHENVALE },
						-- #else
						{ 68.2, 75.2, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 7),
					["groups"] = {
						i(16889),	-- Polished Walking Staff
						i(16890),	-- Slatemetal Cutlass
						i(156956, {	-- Rugged Walking Staff
							["timeline"] = { ADDED_7_3_5 },
						}),
					},
				}),
				q(6462, {	-- Troll Charm
					["qg"] = 12721,	-- Mitsuwa
					["coords"] = {
						-- #if AFTER CATA
						{ 38.8, 42.3, ASHENVALE },
						-- #else
						{ 11.6, 34.8, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(19, 19, 7),
					["groups"] = {
						objective(1, {	-- 0/8 Troll Charm
							["providers"] = {
								{ "i",  16602 },	-- Troll Charm
								{ "o", 178144 },	-- Troll Chest
							},
							["coord"] = { 40.8, 32.9, ASHENVALE },
						}),
					},
				}),
				q(26482, {	-- True Power of the Rod
					["qg"] = 3897,	-- Krolg
					["sourceQuest"] = 26481,	-- A New Adornment
					["coord"] = { 50.8, 75.1, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56694, {	-- Silverwind Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56695, {	-- Wolfrunner Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56696, {	-- Legacy of Teronis
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131535, {	-- Wolfrunner Wristbands
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13936, {	-- Tweedle's Dumb
					["qg"] = 34359,	-- Captain Goggath
					["sourceQuest"] = 13923,	-- To Hellscream's Watch
					["coord"] = { 38.1, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13974, {	-- Tweedle's Tiny Package
					["qg"] = 34395,	-- Tweedle
					["sourceQuest"] = 13947,	-- Blastranaar!
					["coord"] = { 37.9, 43.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(23, {		-- Ursangous's Paw
					["provider"] = { "i", 16303 },	-- Ursangous's Paw
					-- #if BEFORE CATA
					["sourceQuest"] = 6383,	-- The Ashenvale Hunt (2/2)
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 40.4, 66.4, ASHENVALE },
						-- #else
						{ 41.6, 66.6, ASHENVALE },
						-- #endif
					},
					["cr"] = 12678,	-- Ursangous
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 7),
				}),
				q(1037, {	-- Velinde Starsong
					["qg"] = 3880,	-- Sentinel Melyria Frostshadow
					["sourceQuest"] = 1022,	-- The Howling Vale
					["coord"] = { 22.2, 53.0, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(26467, {	-- Vile Satyr! Dryads in Danger!
					["qg"] = 3901,	-- Illiyana
					["coord"] = { 87.1, 43.5, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1021, {	-- Vile Satyr! Dryads in Danger!
					["qg"] = 3901,	-- Illiyana
					["coord"] = { 21.7, 53.4, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(6641, {	-- Vorsha the Lasher
					["qg"] = 12717,	-- Muglash
					["coord"] = { 12, 34.6, ASHENVALE },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(20, 20, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Vorsha the Lasher slain
							["providers"] = {
								{ "n",  12940 },	-- Vorsha the Lasher
								{ "o", 178247 },	-- Naga Brazier
							},
							["coord"] = { 9.6, 27.6, ASHENVALE },
						}),
						i(17692),	-- Horn Ring
					},
				}),
				q(13886, {	-- Vortex (A)
					["qg"] = 34289,	-- The Vortex
					["sourceQuests"] = {
						13880,	-- Hot Lava
						13884,	-- Put Out The Fire
					},
					["coord"] = { 52.3, 56.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(56683, {	-- Blossom of the Earthen Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56684, {	-- Subduer's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56685, {	-- Belt of Equilibrium
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131312, {	-- Subduer's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13888, {	-- Vortex (H)
					["qg"] = 34289,	-- The Vortex
					["sourceQuests"] = {
						13880,	-- Hot Lava
						13884,	-- Put Out The Fire
					},
					["coord"] = { 52.3, 56.8, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56686, {	-- Blossom of the Earthen Ring
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56687, {	-- Subduer's Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56688, {	-- Belt of Equilibrium
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131313, {	-- Subduer's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				warchiefscommand(q(28532, {	-- Warchief's Command: Stonetalon Mountains!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ORGRIMMAR, THUNDER_BLUFF },	-- Only found in Orgrimmar & Thunder Bluff in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 24. (TODO: Confirm this.)
					-- Cataclysm: Maximum is level 28. (TODO: Test max level)
					["lvl"] = { 24, 28 },
					-- #endif
				})),
				q(6571, {	-- Warsong Supplies
					["qg"] = 11820,	-- Locke Okarr
					["coord"] = { 71.40, 67.64, ASHENVALE },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = HORDE_ONLY,
					["lvl"] = 22,
					["groups"] = {
						q(6581, {	-- Warsong Saw Blades
							["qg"] = 12724,	-- Pixel
							["coord"] = { 73, 61.4, ASHENVALE },
							["timeline"] = { REMOVED_4_0_3 },
							["cost"] = {{ "i", 4369, 1 }},	-- Deadly Blunderbuss
							["races"] = HORDE_ONLY,
							["repeatable"] = true,
							["lvl"] = 22,
							["groups"] = {
								objective(1, {	-- 0/1 Warsong Saw Blades
									["questID"] = 6571,	-- Warsong Supplies
									["provider"] = { "i", 16742 },	-- Warsong Saw Blades
								}),
							},
						}),
						objective(2, {	-- 0/1 Warsong Axe Shipment
							["providers"] = {
								{ "i",  16745 },	-- Warsong Axe Shipment
								{ "o", 178204 },	-- Warsong Axe Shipment
							},
							["coord"] = { 25.6, 73.4, STRANGLETHORN_VALE },
						}),
						objective(3, {	-- 0/1 Warsong Oil
							["providers"] = {
								{ "i",  16744 },	-- Warsong Oil
								{ "o", 178195 },	-- Warsong Oil
							},
							["coords"] = {
								{ 66.5, 56.9, ASHENVALE },
								{ 79.1, 45.5, ASHENVALE },
								{ 80.7, 49.7, ASHENVALE },
							},
						}),
						objective(4, {	-- 0/1 Logging Rope
							["provider"] = { "i", 16743 },	-- Logging Rope
							["crs"] = {
								3746,	-- Foulweald Den Watcher
								3745,	-- Foulweald Pathfinder
								3748,	-- Foulweald Shaman
								3750,	-- Foulweald Totemic
								3749,	-- Foulweald Ursa
								3743,	-- Foulweald Warrior
								3925,	-- Thistlefur Avenger
								3923,	-- Thistlefur Den Watcher
								3926,	-- Thistlefur Pathfinder
								3924,	-- Thistlefur Shaman
								3922,	-- Thistlefur Totemic
								3921,	-- Thistlefur Ursa
							},
						}),
						i(16975, {	-- Warsong Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16977, {	-- Warsong Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16978, {	-- Warsong Gauntlets
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(25945, {	-- We're Here to Do One Thing, Maybe Two...
					["qg"] = 41678,	-- Blood Guard Aldo Rockrain
					["sourceQuest"] = 28532,	-- Warchief's Command: Stonetalon Mountains!
					["coord"] = { 49.8, 65.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(13617, {	-- West to the Strand
					["qg"] = 33187,	-- Sentinel Shyela
					["sourceQuest"] = 13594,	-- Don't Forget the Horde
					["coord"] = { 26.9, 22.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13865, {	-- Wet Work
					["qg"] = 33889,	-- Krokk
					["sourceQuest"] = 13808,	-- Mission Improbable
					["coord"] = { 82.5, 53.7, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Protector Endolar slain
							["provider"] = { "n", 34208 },	-- Protector Endolar
						}),
						objective(2, {	-- 0/1 Protector Dorinar slain
							["provider"] = { "n", 34294 },	-- Protector Dorinar
						}),
						objective(3, {	-- 0/1 Protector Arminon slain
							["provider"] = { "n", 34204 },	-- Protector Arminon
						}),
						objective(4, {	-- 0/12 Ashenvale Scouts defeated
							["provider"] = { "n", 34177 },	-- Ashenvale Scout
						}),
						i(56724, {	-- Wet Work Gloves
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56725, {	-- Belt of Secret Signs
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(56726, {	-- Disarray Boots
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(131307, {	-- Krokk's Notched Belt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(13872, {	-- Worgen Wisdom
					["qg"] = 3691,	-- Raene Wolfrunner
					["sourceQuest"] = 13868,	-- Corrupting Influence?
					["coord"] = { 36.6, 49.6, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(RARES, {
				n(3773, {	-- Akkrilus
					["coords"] = {
						-- #if AFTER CATA
						{ 25.2, 60.4, ASHENVALE },
						-- #else
						{ 25.4, 60.8, ASHENVALE },
						{ 28.6, 61.4, ASHENVALE },
						{ 27.6, 64.0, ASHENVALE },
						-- #endif
					},
				}),
				n(3735, {	-- Apothecary Falthis
					["coords"] = {
						-- #if AFTER CATA
						{ 31.4, 22.4, ASHENVALE },
						{ 32.0, 23.4, ASHENVALE },
						-- #else
						{ 33.2, 21.0, ASHENVALE },
						{ 33.2, 21.8, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(10641, {	-- Branch Snapper
					["coords"] = {
						-- #if AFTER CATA
						{ 42.2, 45.0, ASHENVALE },
						{ 43.2, 48.0, ASHENVALE },
						{ 43.8, 51.2, ASHENVALE },
						{ 44.0, 54.0, ASHENVALE },
						{ 46.0, 51.4, ASHENVALE },
						{ 46.0, 47.2, ASHENVALE },
						{ 45.0, 45.4, ASHENVALE },
						-- #else
						{ 47.6, 46.6, ASHENVALE },
						-- #endif
					},
				}),
				n(3736, {	-- Darkslayer Mordenthal
					["coords"] = {
						-- #if AFTER CATA
						{ 72.4, 71.0, ASHENVALE },
						{ 75.2, 71.0, ASHENVALE },
						{ 73.6, 73.6, ASHENVALE },
						-- #else
						{ 75.0, 69.8, ASHENVALE },
						{ 74.4, 73.4, ASHENVALE },
						{ 78.0, 73.8, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(10642, {	-- Eck'alom
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 69.2, ASHENVALE },
						{ 47.8, 68.6, ASHENVALE },
						{ 49.8, 69.0, ASHENVALE },
						{ 51.0, 70.8, ASHENVALE },
						{ 49.4, 71.4, ASHENVALE },
						{ 48.0, 72.4, ASHENVALE },
						-- #else
						{ 45.6, 71.2, ASHENVALE },
						{ 48.6, 69.8, ASHENVALE },
						{ 54.2, 69.4, ASHENVALE },
						-- #endif
					},
				}),
				n(10559, {	-- Lady Vespia
					["coords"] = {
						-- #if AFTER CATA
						{ 12.0, 15.0, ASHENVALE },
						{ 15.0, 24.2, ASHENVALE },
						{ 12.6, 29.2, ASHENVALE },
						-- #else
						{ 9.6, 15.6, ASHENVALE },
						{ 13.6, 19.6, ASHENVALE },
						{ 11.2, 29.4, ASHENVALE },
						-- #endif
					},
				}),
				o(240617, {	-- Lost Sentinel's Pouch
					["description"] = "Found inside a large hollow tree trunk.",
					["coord"] = { 56.5, 49.3, ASHENVALE },
					["timeline"] = { ADDED_6_1_0 },
					["modelScale"] = 0.2,
					["groups"] = {
						i(122226, {	-- Music Roll: Magic
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				n(10644, {	-- Mist Howler
					["coords"] = {
						-- #if AFTER CATA
						{ 26.2, 15.4, ASHENVALE },
						{ 25.2, 26.8, ASHENVALE },
						-- #else
						{ 18.2, 30.2, ASHENVALE },
						{ 22.6, 29.6, ASHENVALE },
						{ 23.0, 35.6, ASHENVALE },
						{ 26.6, 18.6, ASHENVALE },
						{ 29.2, 16.8, ASHENVALE },
						{ 26.6, 15.0, ASHENVALE },
						-- #endif
					},
				}),
				n(10643, {	-- Mugglefin
					["coords"] = {
						{ 21.6, 41.8, ASHENVALE },
						{ 20.6, 45.0, ASHENVALE },
						{ 19.2, 44.2, ASHENVALE },
					},
					["timeline"] = { REMOVED_4_0_3 },
				}),
				n(10640, {	-- Oakpaw
					["coords"] = {
						-- #if AFTER CATA
						{ 57.0, 64.6, ASHENVALE },
						{ 55.8, 62.6, ASHENVALE },
						{ 54.2, 62.4, ASHENVALE },
						-- #else
						{ 50.0, 60.2, ASHENVALE },
						{ 54.2, 62.4, ASHENVALE },
						{ 56.6, 62.8, ASHENVALE },
						-- #endif
					},
				}),
				n(10647, {	-- Prince Raze
					["coords"] = {
						-- #if AFTER CATA
						{ 78.6, 45.2, ASHENVALE },
						{ 81.0, 49.2, ASHENVALE },
						{ 66.6, 56.8, ASHENVALE },
						-- #else
						{ 78.4, 42.6, ASHENVALE },
						{ 79.0, 45.6, ASHENVALE },
						{ 77.2, 46.2, ASHENVALE },
						-- #endif
					},
				}),
				n(10639, {	-- Rorgish Jowl
					["coords"] = {
						-- #if AFTER CATA
						{ 37.0, 33.6, ASHENVALE },
						-- #else
						{ 36.6, 35.4, ASHENVALE },
						-- #endif
					},
				}),
				n(3792, {	-- Terrowulf Packlord
					["coords"] = {
						-- #if AFTER CATA
						{ 53.0, 37.6, ASHENVALE },
						-- #else
						{ 50.6, 39.0, ASHENVALE },
						-- #endif
					},
					["groups"] = {
						i(5753, {	-- Ruffled Chaplet
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
						i(5754, {	-- Wolfpack Medallion
							["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
						}),
					},
				}),
				n(12037, {	-- Ursol'lok
					["coords"] = {
						-- #if AFTER CATA
						{ 89.6, 46.6, ASHENVALE },
						{ 92.8, 45.6, ASHENVALE },
						-- #else
						{ 83.0, 49.0, ASHENVALE },
						{ 83.4, 60.4, ASHENVALE },
						{ 88.6, 68.4, ASHENVALE },
						-- #endif
					},
				}),
			}),
			n(VENDORS, {
				n(3951, {	-- Bhaldaran Ravenshade <Bowyer>
					["coords"] = {
						-- #if AFTER CATA
						{ 34.6, 71.2, ASHENVALE },
						-- #else
						{ 50.3, 67.2, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(11305, {	-- Dense Shortbow
							["isLimited"] = true,
						}),
					},
				}),
				n(34303, {	-- Dagrun Ragehammer
					["coord"] = { 11.6, 35.2, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					-- #if AFTER 7.3.5
					-- CRIEVE NOTE: Check this in MOP Classic.
					["groups"] = {
						i(4778, {	-- Heavy Spiked Mace
							["isLimited"] = true,
						}),
						i(4777, {	-- Ironwood Maul
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
				n(3954, {	-- Dalria <Trade Goods>
					["coord"] = { 35.1, 52.1, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(20855, {	-- Design: Wicked Moonstone Ring (RECIPE!)
							["timeline"] = { ADDED_2_0_1 },
							["isLimited"] = true,
						}),
						i(11101, {	-- Formula: Enchant Bracer - Lesser Strength (RECIPE!)
							["isLimited"] = true,
						}),
						i(11039, {	-- Formula: Enchant Cloak - Minor Agility (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3956, {	-- Harklan Moongrove <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.0, 65.6, ASHENVALE },
						-- #else
						{ 50.8, 67.0, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(6054, {	-- Recipe: Shadow Protection Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
				n(34601, {	-- Harlown Darkweave <Leatherworking Supplies>
					["sourceQuest"] = 13982,	-- in a Bind
					["coord"] = { 18.2, 60.0, ASHENVALE },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(7361, {	-- Pattern: Herbalist's Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(6731, {	-- Harlown Darkweave <Leatherworking Supplies>
					-- #if AFTER CATA
					["description"] = "Vendor will only sell to those who have rescued him. Go to Benjari Edune and pick up the quest |cFFFFD700Three Friends of the Forest|r to start the quest chain.",
					-- #endif
					["coord"] = { 18.2, 60.0, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					-- #if BEFORE CATA
					["groups"] = {
						i(7361, {	-- Pattern: Herbalist's Gloves (RECIPE!)
							["isLimited"] = true,
						}),
					},
					-- #endif
				}),
				n(3958, {	-- Lardan <Leatherworking Supplies>
					["coord"] = { 34.8, 49.8, ASHENVALE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5973, {	-- Pattern: Barbaric Leggings (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3955, {	-- Shandrina <Trade Goods>
					["coords"] = {
						-- #if AFTER CATA
						{ 50.4, 65.6, ASHENVALE },
						-- #else
						{ 49.5, 67.1, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16072, {	-- Expert Cookbook
							["timeline"] = { REMOVED_3_1_0 },
							-- #if SEASON_OF_DISCOVERY
							["OnUpdate"] = [[function(t)
								if C_Seasons and C_Seasons.GetActiveSeason() == 2 then
									t.u = ]] .. SOD_PHASE_TWO .. [[;
								end
								t.OnUpdate = nil;
							end]],
							-- #endif
							["rank"] = 3,
						}),
					},
				}),
				n(3960, {	-- Ulthaan <Butcher>
					["coords"] = {
						-- #if AFTER CATA
						{ 48.6, 64.0, ASHENVALE },
						-- #else
						{ 50.0, 66.6, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3734, {	-- Recipe: Big Bear Steak (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(5489, {	-- Recipe: Lean Venison (RECIPE!)
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				n(12962, {	-- Wik'Tar <Fish Merchant & Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 10.8, 33.8, ASHENVALE },
						-- #else
						{ 11.8, 34.0, ASHENVALE },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(211691, {	-- Spell Notes: Arcane Blast
					--[[
					-- TODO: Find the objectIDs and if there are any questIDs.
					["providers"] = {
						{ "o",  },	-- Arcane Shard
						{ "o",  },	-- Arcane Shard
						{ "o",  },	-- Arcane Shard
					},
					]]--
					["description"] = "Cast Arcane Explosion in the correct order next to the Arcane Shard. South to North.",
					["coords"] = {
						{ 13.0, 24.8, ASHENVALE },	-- Southern Crystal
						{ 14.0, 19.8, ASHENVALE },	-- Middle Crystal
						{ 13.5, 15.8, ASHENVALE },	-- Northern Crystal
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["groups"] = {
						recipe(401757),	-- Engrave Gloves - Arcane Blast
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(210044, {	-- Symbol of the First Owl
					["providers"] = {
						{ "o", 410020 },	-- Owl Statue
						{ "n", 211269 },	-- Summoned Wisp
					},
					["description"] = "Channel on the statue to summon a wisp. Wisp will move for a few seconds, then 3 waves of 2 adds (level 23/25) will spawn one after another. Protect the wisp using bear form and you'll receive the symbol in your inventory.",
					["coord"] = { 87.0, 43.2, ASHENVALE },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { DRUID },
				})),
			}),
			-- #endif
			n(ZONE_DROPS, {
				i(23777, {	-- Diabolical Plans [Alliance]
					["timeline"] = { ADDED_2_0_1 },
					["races"] = ALLIANCE_ONLY,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(23797, {	-- Diabolical Plans [Horde]
					["timeline"] = { ADDED_2_0_1 },
					["races"] = HORDE_ONLY,
					["crs"] = {
						11697,	-- Mannoroc Lasher
						6115,	-- Roaming Felguard
						6073,	-- Searing Infernal
					},
				}),
				i(1351, {	-- Fingerbone Bracers
					["timeline"] = { REMOVED_4_0_3, ADDED_10_1_7 },
					-- #if BEFORE 4.0.3
					["description"] = "This item is only naturally accessible to Alliance players due to the allegiance of the creatures that drop this item. If you were to sell this item on the Neutral AH you might be able to fetch a pretty penny to collectors.",
					-- #endif
					["crs"] = {
						-- #if AFTER 10.1.7
						3928,	-- Rotting Slime
						-- #else
						3808,	-- Forsaken Dark Stalker
						-- #endif
					},
					["coords"] = {
						-- #if AFTER 10.1.7
						{ 75.6, 69.2, ASHENVALE },
						{ 77.2, 73.8, ASHENVALE },
						{ 71.8, 70.8, ASHENVALE },
						{ 69.8, 74.8, ASHENVALE },
						{ 73.6, 79.6, ASHENVALE },
						{ 72.8, 74.4, ASHENVALE },
						-- #else
						{ 75.8, 73.6, ASHENVALE },
						{ 77.4, 75.4, ASHENVALE },
						-- #endif
					},
				}),
				i(78343, {	-- Formula: Enchant Gloves - Herbalism (RECIPE!)
					["timeline"] = { ADDED_4_3_0 },
				}),
				i(11151, {	-- Formula: Enchant Gloves - Herbalism (RECIPE!)
					["timeline"] = { REMOVED_4_3_0, DELETED_7_0_3 },	-- Replaced by BOP Version
					["crs"] = {
						3834,	-- Crazed Ancient
						3919,	-- Withered Ancient
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, i(209840, {	-- Gnarled Wand of Wild Magic
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["cost"] = {
						{ "i", 209841, 1 },	-- Wild Magic Essence
						{ "i", 11288, 1 },	-- Greater Magic Wand
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(211534, {	-- Primal Insight
					["coords"] = {
						{ 37.6, 35.4, ASHENVALE },
						{ 32.4, 42.2, ASHENVALE },
						{ 54.6, 63.0, ASHENVALE },
					},
					["classes"] = { PRIEST },
					["crs"] = {
						3924,	-- Thistlefur Shaman
						3922,	-- Thistlefur Totemic
						3750,	-- Foulweald Totemic
					},
					["groups"] = {
						i(211531, {	-- Prophecy of Seven Visitors
							["description"] = "Go north to the entrance of the cave. Don't go in the cave, instead climb up the big tree to the left and you'll see the dreamcatchers hanging in the branches.",
							["coords"] = {
								{ 38, 29, ASHENVALE },
								{ 38, 26, ASHENVALE },
							},
							["classes"] = { PRIEST },
							["groups"] = {
								recipe(415997),	-- Engrave Chest - Strength of Soul
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(211777, {	-- Naga Manuscript
					["coords"] = {
						{ 7.2, 13.2, DARKSHORE },
						{ 14.0, 26.6, DARKSHORE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { MAGE },
					["crs"] = {
						3715,	-- Wrathtail Sea Witch
						3717,	-- Wrathtail Sorceress
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(209841, {	-- Wild Magic Essence
					["coords"] = {
						{ 33.6, 38.8, ASHENVALE },
						{ 54.6, 63.0, ASHENVALE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { HUNTER },
					["crs"] = {
						3748,	-- Foulweald Shaman
						3750,	-- Foulweald Totemic
						3924,	-- Thistlefur Shaman
						3922,	-- Thistlefur Totemic
					},
				})),
				-- #endif
			}),
		},
	}),
}));
