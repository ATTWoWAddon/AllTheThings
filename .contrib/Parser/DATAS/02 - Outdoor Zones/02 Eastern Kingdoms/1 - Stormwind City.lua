---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local JEWELCRAFTING_AWARD_GROUPS = {
	currency(361),	-- Illustrious Jewelcrafter's Token
};
local PVP_MOUNT_COST = {
	-- #if AFTER 7.0.3.22248
	{ "i", 137642, 15 },	-- Mark of Honor
	-- #elseif AFTER 4.0
	{ "c", 1901, 2000 },	-- 2000 Honor Points
	-- #elseif AFTER WRATH
	{ "c", 1901, 16650 },	-- 16650 Honor Points
	-- #else
	{ "i", 20560, 30 },	-- Alterac Valley Mark of Honor
	{ "i", 20559, 30 },	-- Arathi Basin Mark of Honor
	{ "i", 20558, 30 },	-- Warsong Gulch Mark of Honor
	-- #endif
};

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(STORMWIND_CITY, {
		["lore"] = "Stormwind City is the capital city of the Alliance. It is located in the northwestern part of Elwynn Forest.\n\nDuring the First War, the Kingdom of Azeroth, including its capital, Stormwind Keep, was utterly destroyed by the Horde and its survivors fled to Lordaeron. After the orcs were defeated at the Dark Portal at the end of the Second War, it was decided that the city would be rebuilt. The nobles of Stormwind assembled a team of the most skilled and ingenious stonemasons and architects they could find--which later turned sour and led to the rise of the Defias.\n\nWith the fall of the northern kingdoms, Stormwind is by far the most populated city in the world. It serves in many ways as the cultural and trade center of the Alliance, even with remote access to the sea. It is home to the Academy of Arcane Sciences, the only wizarding school in Eastern Kingdoms, as well as SI:7, a rogue intelligence organization.",
		["icon"] = 255130,
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5476, {	-- Fish or Cut Bait: Stormwind
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5474, {	-- Let's Do Lunch: Stormwind
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
				})),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					378,	-- Rabbit (PET!)
					379,	-- Squirrel (PET!)
					675,	-- Stormwind Rat (PET!)
				}},
			}),
			explorationHeader({
				visit_exploration(5150,{coord={64.5,28.4,STORMWIND_CITY}}),	-- Dwarven District
				visit_exploration(6292,{coord={82.2,36.0,STORMWIND_CITY}}),	-- Stormwind Keep
				visit_exploration(5390,{coord={50.2,72.7,STORMWIND_CITY}}),	-- The Canals
				visit_exploration(5148,{coord={61.4,74.8,STORMWIND_CITY}}),	-- Trade District
				visit_exploration(10523,{coord={47.2,92.1,STORMWIND_CITY}}),	-- Wizard's Sanctum
			}),
			n(FACTIONS, {
				faction(FACTION_STORMWIND, {	-- Stormwind
					-- #if AFTER CATA
					["provider"] = { "i", 45574 },	-- Stormwind Tabard
					-- #else
					["icon"] = 236447,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = ALLIANCE_ONLY,
				}),
				faction(FACTION_TUSHUI_PANDAREN, {	-- Tushui Pandaren
					["provider"] = { "i", 83079 },	-- Tushui Tabard
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(2, {	-- Stormwind City, Elwynn
					["cr"] = 352,	-- Dungar Longdrink <Gryphon Master>
					["coords"] = {
						-- #if AFTER WRATH
						{ 71.0, 72.5, STORMWIND_CITY },
						-- #else
						{ 66.2, 62.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(206111, {	-- Hero's Call Board
				["provider"] = { "o", 206294 },	-- Hero's Call Board
				["coords"] = {
					-- Locations for 206111
					{ 26.1, 38.3, STORMWIND_CITY },
					{ 43.1, 73.7, STORMWIND_CITY },
					{ 63.1, 71.4, STORMWIND_CITY },
					-- Locations for 206294
					{ 62.5, 30.0, STORMWIND_CITY },
					{ 43.0, 71.9, STORMWIND_CITY },
				},
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = HEROS_CALL_BOARD_SYMLINK,
				["races"] = ALLIANCE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
			petbattles({
				n(63596, {	-- Audrey Burnheap <Battle Pet Tamer>
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["description"] =
						-- #if BEFORE 9.0.3
						"Provides the Alliance Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring southern Eastern Kingdoms\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nNew quest might not be given until daily reset.",
						-- #else
						"Provides the Alliance Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring southern Eastern Kingdoms\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nYou might have to tinker with Chromie time on low-level character to obtain these account-wide quests, and new quest might not be given until daily reset.",
						-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if ANYCLASSIC
						r(119467),	-- Battle Pet Training
						-- #else
						spell(119467),	-- Battle Pet Training
						-- #endif
					},
				}),
				-- Infamous Breadcrumbs, these are offered at the end of the training quests in each of the starter zones. Can't find any info on which one is appropriate to which map, so this is going to need to be something figured out on an entirely new account that has done none of the pet battle quests
				q(32008, {	-- Audrey Burnhep
					["description"] = "|CFFFF0000Do not under any circumstances abandon this quest, you cannot reobtain it.|r",
					["altQuests"] = {
						-- Horde Shared Account-Wide Pet Battle Intro Quests
						32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
					},
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31878, {	-- Audrey Burnhep
					["altQuests"] = {
						-- Horde Shared Account-Wide Pet Battle Intro Quests
						32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
					},
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31879, {	-- Audrey Burnhep
					["altQuests"] = {
						-- Horde Shared Account-Wide Pet Battle Intro Quests
						32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
					},
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31880, {	-- Audrey Burnhep
					["altQuests"] = {
						-- Horde Shared Account-Wide Pet Battle Intro Quests
						32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
					},
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31881, {	-- Audrey Burnhep
					["altQuests"] = {
						-- Horde Shared Account-Wide Pet Battle Intro Quests
						32009,	-- Varzok (Will be marked completed if any Varzok quest is completed)
					},
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31966, {	-- Battle Pet Tamers: Cataclysm (A)
					["sourceQuest"] = 31984,	-- A Brief Reprieve (A)
					-- ["altQuests"] = { 31967 },
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { MOUNT_HYJAL, DEEPHOLM, TWILIGHT_HIGHLANDS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Brok
							["provider"] = { "n", 66819 },	-- Brok <Master Pet Tamer>
							["coord"] = { 61.4, 32.8, MOUNT_HYJAL },
						}),
						objective(2, {	-- Defeat Bordin Steadyfist
							["provider"] = { "n", 66815 },	-- Bordin Steadyfist <Master Pet Tamer>
							["coord"] = { 49.8, 57.0, DEEPHOLM },
						}),
						objective(3, {	-- Defeat Goz Banefury
							["provider"] = { "n", 66822 },	-- Goz Banefury <Master Pet Tamer>
							["coord"] = { 56.6, 56.8, TWILIGHT_HIGHLANDS },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31902, {	-- Battle Pet Tamers: Eastern Kingdoms (A)
					["sourceQuest"] = 31917,	-- A Tamer's Homecoming (A)
					-- ["altQuests"] = { 31903 },	-- Battle Pet Tamers: Eastern Kingdoms (Horde version, since only one can be completed per account and Blizz doesn't check it off, apparently)
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["maps"] = { THE_HINTERLANDS, EASTERN_PLAGUELANDS, SEARING_GORGE, SWAMP_OF_SORROWS, BURNING_STEPPES },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat David Kosse
							["provider"] = { "n", 66478 },	-- David Kosse <Master Pet Tamer>
							["coord"] = { 62.8, 54.6, THE_HINTERLANDS },
						}),
						objective(2, {	-- Defeat Deiza Plaguehorn
							["provider"] = { "n", 66512 },	-- Deiza Plaguehorn <Master Pet Tamer>
							["coord"] = { 67.0, 52.4, EASTERN_PLAGUELANDS },
						}),
						objective(3, {	-- Defeat Kortas Darkhammer
							["provider"] = { "n", 66515 },	-- Kortas Darkhammer <Master Pet Tamer>
							["coord"] = { 35.4, 27.8, SEARING_GORGE },
						}),
						objective(4, {	-- Defeat Everessa
							["provider"] = { "n", 66518 },	-- Everessa <Master Pet Tamer>
							["coord"] = { 76.6, 41.6, SWAMP_OF_SORROWS },
						}),
						objective(5, {	-- Defeat Durin Darkhammer
							["provider"] = { "n", 66520 },	-- Durin Darkhammer <Master Pet Tamer>
							["coord"] = { 25.6, 47.6, BURNING_STEPPES },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31889, {	-- Battle Pet Tamers: Kalimdor (A)
					["sourceQuest"] = 31917,	-- A Tamer's Homecoming (A)
					-- ["altQuests"] = { 31891 },
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { FERALAS, DUSTWALLOW_MARSH, THOUSAND_NEEDLES, FELWOOD, MOONGLADE },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Traitor Gluk
							["provider"] = { "n", 66352 },	-- Traitor Gluk <Master Pet Tamer>
							["coord"] = { 59.6, 49.6, FERALAS },
						}),
						objective(2, {	-- Defeat Grazzle the Great
							["provider"] = { "n", 66436 },	-- Grazzle the Great <Master Pet Tamer>
							["coord"] = { 53.8, 74.8, DUSTWALLOW_MARSH },
						}),
						objective(3, {	-- Defeat Kela Grimtotem
							["provider"] = { "n", 66452 },	-- Kela Grimtotem <Master Pet Tamer>
							["coord"] = { 31.8, 32.8, THOUSAND_NEEDLES },
						}),
						objective(4, {	-- Defeat Zoltan
							["provider"] = { "n", 66442 },	-- Zoltan <Master Pet Tamer>
							["coord"] = { 40.0, 56.6, FELWOOD },
						}),
						objective(5, {	-- Defeat Elena Flutterfly
							["provider"] = { "n", 66412 },	-- Elena Flutterfly <Master Pet Tamer>
							["coord"] = { 46.0, 60.6, MOONGLADE },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31927, {	-- Battle Pet Tamers: Northrend (A)
					["sourceQuest"] = 31981,	-- Exceeding Expectations (A)
					-- ["altQuests"] = { 31929 },
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { HOWLING_FJORD, CRYSTALSONG_FOREST, DRAGONBLIGHT, ZULDRAK },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Beegle Blastfuse
							["provider"] = { "n", 66635 },	-- Beegle Blastfuse <Master Pet Tamer>
							["coord"] = { 28.6, 33.8, HOWLING_FJORD },
						}),
						objective(2, {	-- Defeat Nearly Headless Jacob
							["provider"] = { "n", 66636 },	-- Nearly Headless Jacob <Master Pet Tamer>
							["coord"] = { 50.2, 59.0, CRYSTALSONG_FOREST },
						}),
						objective(3, {	-- Defeat Okrut Dragonwaste
							["provider"] = { "n", 66638 },	-- Okrut Dragonwaste <Master Pet Tamer>
							["coord"] = { 59.0, 77.0, DRAGONBLIGHT },
						}),
						objective(4, {	-- Defeat Gutretch
							["provider"] = { "n", 66639 },	-- Gutretch <Master Pet Tamer>
							["coord"] = { 13.2, 66.8, ZULDRAK },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31919, {	-- Battle Pet Tamers: Outland (A)
					["sourceQuests"] = {
						31975,	-- The Returning Champion (A)
						31976,	-- The Returning Champion (A)
					},
					-- ["altQuests"] = { 31921 },
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { HELLFIRE_PENINSULA, ZANGARMARSH, NAGRAND, SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Nicki Tinytech
							["provider"] = { "n", 66550 },	-- Nicki Tinytech <Master Pet Tamer>
							["coord"] = { 64.4, 49.2, HELLFIRE_PENINSULA },
						}),
						objective(2, {	-- Defeat Ras'an
							["provider"] = { "n", 66551 },	-- Ras'an <Master Pet Tamer>
							["coord"] = { 17.2, 50.6, ZANGARMARSH },
						}),
						objective(3, {	-- Defeat Narrok
							["provider"] = { "n", 66552 },	-- Narrok <Master Pet Tamer>
							["coord"] = { 61.0, 49.4, NAGRAND },
						}),
						objective(4, {	-- Defeat Morulu The Elder
							["provider"] = { "n", 66553 },	-- Morulu The Elder <Master Pet Tamer>
							["coord"] = { 59.0, 70.0, SHATTRATH_CITY },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31930, {	-- Battle Pet Tamers: Pandaria (A)
					["sourceQuest"] = 31985,	-- The Triumphant Return (A)
					-- ["altQuests"] = { 31952 },
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { THE_JADE_FOREST, VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, KUN_LAI_SUMMIT, TOWNLONG_STEPPES, DREAD_WASTES },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Hyuna of the Shrines
							["provider"] = { "n", 66730 },	-- Hyuna of the Shrines <Grand Master Pet Tamer>
							["coord"] = { 48.0, 54.0, THE_JADE_FOREST },
						}),
						objective(2, {	-- Defeat Farmer Nishi
							["provider"] = { "n", 66734 },	-- Farmer Nishi <Grand Master Pet Tamer>
							["coord"] = { 46.0, 43.6, VALLEY_OF_THE_FOUR_WINDS },
						}),
						objective(3, {	-- Defeat Mo'ruk
							["provider"] = { "n", 66733 },	-- Mo'ruk <Grand Master Pet Tamer>
							["coord"] = { 65.0, 42.6, KRASARANG_WILDS },
						}),
						objective(4, {	-- Defeat Courageous Yon
							["provider"] = { "n", 66738 },	-- Courageous Yon <Grand Master Pet Tamer>
							["coord"] = { 35.8, 73.6, KUN_LAI_SUMMIT },
						}),
						objective(5, {	-- Defeat Seeker Zusshi
							["provider"] = { "n", 66918 },	-- Seeker Zusshi <Grand Master Pet Tamer>
							["coord"] = { 36.2, 52.2, TOWNLONG_STEPPES },
						}),
						objective(6, {	-- Defeat Wastewalker Shu
							["provider"] = { "n", 66739 },	-- Wastewalker Shu <Grand Master Pet Tamer>
							["coord"] = { 55.0, 37.6, DREAD_WASTES },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31593, {	-- Got one! (Audrey)
					["sourceQuest"] = 31821,	-- Level Up!
					["qg"] = 63596,	-- Audrey Burnhep
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31316, {	-- Julia, The Pet Tamer
					["sourceQuests"] = { 32008, 31878, 31879, 31880, 31881 },	-- Audrey Burnhep (all breadcrumbs)
					["qg"] = 63596,	-- Audrey Burnhelp
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Julia Stevens
							["provider"] = { "n", 64330 },	-- Julia Stevens
							["coord"] = { 41.6, 83.6, ELWYNN_FOREST },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
				q(31591, {	-- Learning the Ropes (Audrey)
					["qg"] = 63596,	-- Audrey Burnhep
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31821, {	-- Level Up! (Audrey)
					["sourceQuest"] = 31592,	-- On The Mend
					["qg"] = 63596,	-- Audrey Burnhep
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31592, {	-- On The Mend (Audrey)
					["sourceQuest"] = 31591,	-- Learning the Ropes
					["qg"] = 63596,	-- Audrey Burnhep
					["coord"] = { 69.2, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 11069 },	-- Jenova Stoneshield <Stable Master>
							["coord"] = { 67.0, 37.6, STORMWIND_CITY },
						}),
					},
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(5499, {	-- Lilyssia Nightbreeze <Alchemy Trainer>
						["coords"] = {
							-- #if AFTER WRATH
							{ 55.6, 85.8, STORMWIND_CITY },
							-- #else
							{ 46.4, 79.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ALCHEMY,
							-- #if AFTER CATA
							CATA_ALCHEMY
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(BLACKSMITHING, {
					n(5511, {	-- Therum Deepforge <Expert Blacksmith>
						["coords"] = {
							-- #if AFTER WRATH
							{ 63.8, 37.6, STORMWIND_CITY },
							-- #else
							{ 57.0, 16.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_BLACKSMITHING,
							-- #if AFTER CATA
							CATA_BLACKSMITHING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(COOKING, {
					n(5482, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_1 }, }, {	-- Stephen Ryback <Cooking Trainer>
						["coords"] = {
							-- #if AFTER LEGION
							{ 76.8, 53.6, STORMWIND_CITY },
							-- #elseif AFTER WRATH
							{ 78.2, 53.0, STORMWIND_CITY },
							-- #else
							{ 75.6, 37.0, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_COOKING,
							-- #if AFTER CATA
							CATA_COOKING
							-- #else
							{}
							-- #endif
						),
					})),
				}),
				prof(ENCHANTING, {
					n(1317, {	-- Lucan Cordell <Enchanting Trainer>
						["coords"] = {
							-- #if AFTER WRATH
							{ 53.0, 74.2, STORMWIND_CITY },
							-- #else
							{ 43.0, 64.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ENCHANTING,
							-- #if AFTER CATA
							CATA_ENCHANTING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(ENGINEERING, {
					n(5518, {	-- Lilliam Sparkspindle <Engineering Trainer>
						["coords"] = {
							-- #if AFTER LEGION
							{ 62.8, 32.0, STORMWIND_CITY },
							-- #elseif AFTER WRATH
							{ 62.2, 30.6, STORMWIND_CITY },
							-- #else
							{ 55.0, 8.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_ENGINEERING,
							-- #if AFTER CATA
							CATA_ENGINEERING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(FIRST_AID, {
					n(56796, bubbleDownSelf({ ["timeline"] = { ADDED_4_3_0 } }, {	-- Angela Leifeld <Bandage Trainer>
						["coord"] = { 52.2, 45.4, STORMWIND_CITY },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_FIRST_AID,
							-- #if AFTER CATA
							CATA_FIRST_AID
							-- #else
							{}
							-- #endif
						),
					})),
					n(2327, bubbleDownSelf({ ["timeline"] = { REMOVED_4_3_0 } }, {	-- Shaina Fuller <First Aid Trainer>
						["coords"] = {
							-- #if AFTER WRATH
							{ 52.8, 44.8, STORMWIND_CITY },
							-- #else
							{ 42.8, 26.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_FIRST_AID,
							-- #if AFTER CATA
							CATA_FIRST_AID
							-- #else
							{}
							-- #endif
						),
					})),
				}),
				prof(FISHING, {
					n(5493, {	-- Arnold Leland <Fishing Trainer>
						["coords"] = {
							-- #if AFTER WRATH
							{ 55.0, 69.6, STORMWIND_CITY },
							-- #else
							{ 45.8, 58.2, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_FISHING,
							-- #if AFTER CATA
							CATA_FISHING
							-- #else
							{}
							-- #endif
						),
					}),
					i(34864, {	-- Baby Crocolisk
						["timeline"] = { ADDED_2_4_0 },
					}),
					i(67414, {	-- Bag of Shiny Things
						["description"] = "Fishing Daily Quest Reward",
						["sourceQuests"] = {
							26488,	-- Big Gulp
							26420,	-- Diggin' For Worms
							26414,	-- Hitting a Walleye
							26442,	-- Rock Lobster
							26536,	-- Thunder Falls
						},
						["provider"] = { "n", 5494 },	-- Catherine Leland
						["timeline"] = { ADDED_4_0_1 },
						["groups"] = {
							i(44983, {	-- Strand Crawler (PET!)
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(33820, {	-- Weather-Beaten Fishing Hat
								["timeline"] = { ADDED_2_4_0 },
							}),
							i(45991, {	-- Bone Fishing Pole
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(45992, {	-- Jeweled Fishing Pole
								["timeline"] = { ADDED_3_1_0 },
							}),
							i(67410, {	-- Very Unlucky Rock
								["timeline"] = { ADDED_4_0_1 },
							}),
							i(67388, {	-- String of Alligator Teeth
								["timeline"] = { ADDED_4_0_1 },
							}),
						},
					}),
				}),
				prof(HERBALISM, {
					n(5566, {	-- Tannysa <Herbalism Trainer>
						["coords"] = {
							-- #if AFTER LEGION
							{ 54.6, 83.6, STORMWIND_CITY },
							-- #elseif AFTER CATA
							{ 54.4, 84.0, STORMWIND_CITY },
							-- #else
							{ 44.8, 77.0, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_HERBALISM,
							-- #if AFTER CATA
							CATA_HERBALISM
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				-- #if AFTER WRATH
				prof(INSCRIPTION, {
					n(30713, {	-- Catarina Stanford <Inscription Trainer>
						["coords"] = {
							-- #if AFTER LEGION
							{ 49.8, 74.0, STORMWIND_CITY },
							-- #else
							{ 49.8, 74.6, STORMWIND_CITY },
							-- #endif
						},
						["timeline"] = { ADDED_3_0_2 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(
							WRATH_INSCRIPTION,
							-- #if AFTER CATA
							CATA_INSCRIPTION,
							-- #endif
							{
							i(140566, {	-- Technique: Songs of the Alliance (RECIPE!)
								["timeline"] = { ADDED_7_0_3 },
							}),
						}),
					}),
				}),
				-- #endif
				-- #if AFTER CATA
				prof(JEWELCRAFTING, {
					applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(56925, {	-- Farrah Facet <Epic Gem Recipes>
						["coord"] = { 63.8, 61.6, STORMWIND_CITY },
						["timeline"] = { ADDED_4_3_0 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(COMMON_CATACLYSM_EPIC_JEWELCRAFTING_RECIPES, {
							i(71949, {	-- Tome of Burning Jewels
								["cost"] = {{"c", 361, 4}},	-- 4x Illustrious Jewelcrafter's Token
								["filterID"] = CONSUMABLES,
								["sym"] = {
									{"select","npcID",56925},{"pop"},	-- this NPC
									{"not","itemID",71949},				-- not this item
									{"isnt","currencyID"},	-- no currencies
								},
							}),
						}),
					})),
					n(50480, {	-- Isabel Jones <Jewelcrafting Design Vendor>
						["coord"] = { 63.8, 61.3, STORMWIND_CITY },
						["timeline"] = { ADDED_4_0_3 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = COMMON_CATACLYSM_JEWELCRAFTING_RECIPES,
					}),
					n(44582, {	-- Theresa Denman <Jewelcrafting Trainer>
						["coord"] = { 63.6, 61.6, STORMWIND_CITY },
						["timeline"] = { ADDED_4_0_3 },
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_CATA_JEWELCRAFTING,
							-- #if BEFORE BFA
							TBC_JEWELCRAFTING,
							WRATH_JEWELCRAFTING,
							MOP_JEWELCRAFTING
							-- #else
								{}
							-- #endif
						),
					}),
				}),
				-- #endif
				prof(LEATHERWORKING, {
					n(5564, {	-- Simon Tanner <Expert Leatherworker>
						["coords"] = {
							-- #if AFTER WRATH
							{ 71.8, 62.8, STORMWIND_CITY },
							-- #else
							{ 67.2, 49.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_CATA_LEGION_LEATHERWORKING,
					}),
				}),
				prof(MINING, {
					n(5513, {	-- Gelman Stonehand <Mining Trainer>
						["coords"] = {
							-- #if AFTER WRATH
							{ 59.2, 37.6, STORMWIND_CITY },
							-- #else
							{ 51.0, 17.2, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = CLASSIC_CATA_MINING,
					}),
				}),
				prof(POISONS, {
					n(13283, {	-- Lord Tony Romano <Rogue Trainer>
						["coords"] = {
							-- #if AFTER CATA
							-- TODO: CRIEVE NOTE: Check this on Live during Cataclysm Classic!
							{ 79.6, 61.2, STORMWIND_CITY },
							-- #elseif AFTER WRATH
							{ 80.2, 68.8, STORMWIND_CITY },
							-- #else
							{ 78.2, 48.0, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_POISONS,
							-- #if AFTER TBC
							TBC_POISONS
							-- #else
							{}
							-- #endif
						),
					}),
				}),
				prof(TAILORING, {
					n(1346, {	-- Georgio Bolero <Tailoring Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 53.2, 81.6, STORMWIND_CITY },
							-- #else
							{ 43.6, 73.8, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = appendGroups(CLASSIC_TAILORING,
							-- #if AFTER CATA
							CATA_TAILORING
							-- #else
							{}
							-- #endif
						),
					}),
					n(9584, {	-- Jalane Ayrole <Master Shadoweave Tailor>
						["coords"] = {
							-- #if AFTER CATA
							{ 40.6, 83.8, STORMWIND_CITY },
							-- #else
							{ 26.6, 77.6, STORMWIND_CITY },
							-- #endif
						},
						["races"] = ALLIANCE_ONLY,
						["groups"] = SHADOWEAVE_TAILORING_CLASSIC,
					}),
				}),
			}),
			n(QUESTS, {
				q(7794, {	-- A Donation of Mageweave
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.9, 81.7, STORMWIND_CITY },
						-- #else
						{ 44.2, 73.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(7795, {	-- A Donation of Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.9, 81.7, STORMWIND_CITY },
						-- #else
						{ 44.2, 73.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(7793, {	-- A Donation of Silk
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.9, 81.7, STORMWIND_CITY },
						-- #else
						{ 44.2, 73.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
				}),
				q(7791, {	-- A Donation of Wool
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.9, 81.7, STORMWIND_CITY },
						-- #else
						{ 44.2, 73.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 12,
				}),
				q(26190, {	-- A Fisherman's Feast
					["qg"] = 42288,	-- Robby Flay
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.7, 73.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/5 Gigantic Catfish
							["providers"] = {
								{ "i",  57245 },	-- Gigantic Catfish
								{ "o", 203800 },	-- Barrel of Canal Fish
							},
							["coord"] = { 56.8, 41.2, STORMWIND_CITY },
						}),
						COOKING_AWARD,
					},
				}),
				q(46275, {	-- A Kingdom's Heart
					["sourceQuest"] = 46274,	-- Consoling the King
					["qg"] = 119357,	-- Anduin Wrynn
					["coord"] = { 49.8, 45.2, STORMWIND_CITY },
					["timeline"] = { ADDED_7_2_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(5645, {	-- A Lack of Fear
					["altQuests"] = {
						5647,	-- A Lack of Fear [Darnassus]
						5641,	-- A Lack of Fear [Ironforge]
					},
					["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
					["coord"] = { 38.8, 26.4, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_3_0 },
					["maps"] = { IRONFORGE },
					["classes"] = { PRIEST },
					["races"] = { DWARF },
					["lvl"] = 20,
					-- #if BEFORE 2.3.0
					["groups"] = {
						recipe(6346),	-- Fear Ward
					},
					-- #endif
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79940, {	-- A Lost Brother
					["sourceQuest"] = 79939,	-- The Broken Hammer
					["qg"] = 5492,	-- Katherine the Pure <Paladin Trainer>
					["coord"] = { 37.8, 31.6, STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- Speak with Katherine and Learn More
							["provider"] = { "n", 5492 },	-- Katherine the Pure <Paladin Trainer>
						}),
					},
				})),
				-- #endif
				q(212, {	-- A Meal Served Cold
					["qg"] = 1141,	-- Angus Stern
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.8, 93.7, STORMWIND_CITY },
						-- #else
						{ 41.4, 89.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 35,
					["groups"] = {
						objective(1, {	-- 0/1 Chilled Basilisk Haunch
							["provider"] = { "i", 2476 },	-- Chilled Basilisk Haunch
							["cr"] = 690,	-- Cold Eye Basilisk
						}),
					},
				}),
				q(335, {	-- A Noble Brew (1/2)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["coords"] = {
						-- #if AFTER WRATH
						{ 40.1, 85.3, STORMWIND_CITY },
						-- #else
						{ 26.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSKWOOD, WETLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
					["groups"] = {
						objective(1, {	-- 0/1 Tear of Tilloa
							["providers"] = {
								{ "i", 2779 },	-- Tear of Tilloa
								{ "o", 321 },	-- Tear of Tilloa
							},
							["coord"] = { 78.5, 36.0, DUSKWOOD },
						}),
						objective(2, {	-- 0/1 Musquash Root
							["providers"] = {
								{ "i", 2784 },	-- Musquash Root
								{ "o", 2084 },	-- Musquash Root
							},
							["coord"] = { 64.7, 75.5, WETLANDS },
						}),
					},
				}),
				q(336, {	-- A Noble Brew (2/2)
					["sourceQuest"] = 335,	-- A Noble Brew (1/2)
					["providers"] = {
						{ "n", 1435 },	-- Zardeth of the Black Claw
						{ "i", 2788 },	-- Black Claw Stout
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 40.1, 85.3, STORMWIND_CITY },
						-- #else
						{ 26.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 25,
				}),
				q(62250, {	-- A New Adventure Awaits
					["description"] = "This quest is automatically offered upon reaching the specified level while in Chromie Time.",
					["timeline"] = { CREATED_9_0_2, ADDED_10_0_2 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", 61 },	-- either level or some HQT probably locks this... good luck
					["groups"] = {
						i(183185),	-- Chromie's Scroll (A) (QI!)
					},
				}),
				q(47202, {	-- A Personal Message
					["sourceQuest"] = 46275,	-- A Kingdom's Heart
					["qg"] = 120268,	-- Anduin Wrynn
					["coord"] = { 85.9, 34.3, STORMWIND_CITY },
					["timeline"] = { ADDED_7_2_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				heroscall(q(28825, {	-- A Personal Summons (Vashj'ir Starter Quest)
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["coord"] = { 74.6, 18.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1, REMOVED_8_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
				})),
				q(25154, {	-- A Present for Lila
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78090, {	-- A Second Opinion
					["sourceQuest"] = 78089,	-- Advice From Stormwind
					["providers"] = {
						{ "n",   5492 },	-- Katherine the Pure <Paladin Trainer>
						{ "i", 209748 },	-- Althalaxx Orb
					},
					["coord"] = { 37.4, 32, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
				})),
				-- #endif
				q(27106, {	-- A Villain Unmasked
					["sourceQuest"] = 27092,	-- Cataclysm in the Catacombs
					["provider"] = { "o", 205198 },	-- Pile of Explosives
					["coord"] = { 50.4, 42.4, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63919, {	-- Corruption-Seeking Chestguard
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63918, {	-- Detective's Shoulderplates
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63920, {	-- Treads of Revelation
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63921, {	-- Truth-Seeker Belt
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63917, {	-- Truthbreaker Shield
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
					},
				}),
				q(1638, {	-- A Warrior's Training
					["altQuests"] = {
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						1678,	-- Vejrek
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["qgs"] = {
						913,	-- Lyria Du Lac <Warrior Trainer>
						5480,	-- Ilsa Corbin <Warrior Trainer>
					},
					["coords"] = {
						{ 41, 65.8, ELWYNN_FOREST },
						-- #if AFTER WRATH
						{ 80.4, 59.8, STORMWIND_CITY },
						-- #else
						{ 78.6, 45.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(44473, {	-- A Weapon of the Alliance
					["sourceQuest"] = 44463,	-- Demons Among Them
					["qg"] = 100973,	-- Anduin Wrynn
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["classes"] = { DEMONHUNTER },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7796, {	-- Additional Runecloth [Stormwind]
					["sourceQuest"] = 7795,	-- A Donation of Runecloth
					["qg"] = 14722,	-- Clavicus Knavingham <Alliance Cloth Quartermaster>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.9, 81.7, STORMWIND_CITY },
						-- #else
						{ 44.2, 73.6, STORMWIND_CITY },
						-- #endif
					},
					["maxReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(62567, {	-- Adventurers Wanted: Chromie's Call
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.6, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(11451, {	-- Alicia's Poem
					["providers"] = {
						{ "n", 24729 },	-- Alicia
						{ "i", 34089 },	-- Alicia's Poem
					},
					["coords"] = {
						-- #if AFTER LEGION
						{ 81.6, 28.2, STORMWIND_CITY },
						-- #elseif AFTER CATA
						{ 81.5, 28.6, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 70.9, 35.7, STORMWIND_CITY },
						-- #else
						{ 66.9, 13.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_2_3_0 },
					["maps"] = { SHATTRATH_CITY },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(60, 60, 15),
				}),
				q(396, {	-- An Audience with the King
					["sourceQuest"] = 395,	-- Brotherhood's End
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 2956 },	-- Report on the Defias Brotherhood
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 57.7, 47.9, STORMWIND_CITY },
						-- #else
						{ 49, 30.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						i(2933, {	-- Seal of Wrynn
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(30989, {	-- An Old Pit Fighter
					["sourceQuest"] = 30988,	-- The Alliance Way
					["qg"] = 61796,	-- King Varian Wrynn
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
					["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE },
				}),
				q(58496, {	-- An Unwelcome Advisor
					["description"] = "This quest is automatically offered.",
					["provider"] = { "o", 369893 },	-- Urgent Missive
					["coord"] = { 68.1, 22.4, BORALUS },	-- Urgent Missive
					["timeline"] = { ADDED_8_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7643, {	-- Ancient Equine Spirit
					["sourceQuest"] = 7642,	-- Collection of Goods
					["providers"] = {
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
						{ "i", 18753 },	-- Arcanite Barding
						{ "n", 14566 },	-- Ancient Equine Spirit
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DIRE_MAUL, HILLSBRAD_FOOTHILLS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						q(7645, {	-- Ancient Equine Spirit
							["qg"] = 2357,	-- Merideth Carlson <Horse Breeder>
							["coord"] = { 52, 55.6, HILLSBRAD_FOOTHILLS },
							["timeline"] = { REMOVED_4_0_3 },
							["cost"] = {
								{ "i", 13724, 20 },	-- Enriched Manna Biscuit
								{ "g", 500000 },	-- 50g
							},
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Manna-Enriched Horse Feed
									["questID"] = 7643,	-- Ancient Equine Spirit
									["provider"] = { "i", 18775 },	-- Manna-Enriched Horse Feed
								}),
							},
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(5676, {	-- Arcane Feedback [Stormwind City]
					["altQuests"] = {
						5677,	-- Arcane Feedback [Ironforge]
						5678,	-- Arcane Feedback [Darnassus]
					},
					["qgs"] = {
						11406,	-- High Priest Rohan <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
						11401,	-- Priestess Alathea <Priest Trainer>
					},
					["coords"] = {
						{ 26.4, 7.6, IRONFORGE },
						{ 38.8, 26.6, STORMWIND_CITY },
						{ 40.0, 80.0, DARNASSUS },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5676, {	-- Arcane Feedback [Stormwind City]
					["altQuests"] = {
						5677,	-- Arcane Feedback [Ironforge]
						5678,	-- Arcane Feedback [Darnassus]
					},
					["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
					["coord"] = { 38.8, 26.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN },
					["classes"] = { PRIEST },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13896,	-- Feedback (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(1942, {	-- Astral Knot Garment
					["sourceQuest"] = 1940,	-- Pristine Spider Silk
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 52.0, 83.6, STORMWIND_CITY },
						-- #else
						{ 41.8, 76.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						i(9516, {	-- Astral Knot Blouse
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(7511, {	-- Astral Knot Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1639, {	-- Bartleby the Drunk
					["sourceQuests"] = {
						1638,	-- A Warrior's Training
						1684,	-- Elanaria
						1679,	-- Muren Stormpike
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
					},
					["qg"] = 6089,	-- Harry Burlguard
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.1, 53.3, STORMWIND_CITY },
						-- #else
						{ 74, 37.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(1665, {	-- Bartleby's Mug
					["sourceQuest"] = 1640,	-- Beat Bartleby
					["altQuests"] = {
						--1665,	-- Bartleby's Mug
						-- #if AFTER TBC
						9582,	-- Strength of One
						-- #endif
						1678,	-- Vejrek
						1683,	-- Vorlus Vilehoof
					},
					["providers"] = {
						{ "n", 6090 },	-- Bartleby
						{ "i", 6781 },	-- Bartleby's Mug
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.8, 52.5, STORMWIND_CITY },
						-- #else
						{ 73.8, 36.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
					-- #if BEFORE CATA
					["groups"] = {
						recipe(71),		-- Defensive Stance
						--recipe(7386),	-- Sunder Armor	[TODO: Users are reporting they can't collect this.]
						recipe(355),	-- Taunt
					},
					-- #endif
				}),
				q(53370, {	-- Battle for Azeroth: Hour of Reckoning [SL+] / Hour of Reckoning
					["description"] = "If this quest is not automatically offered, you can try picking it up from a War Board, or taking the boat from Stormwind to Boralus.",
					["qg"] = 144095,	-- Master Mathias Shaw
					["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(163542, {	-- Footman's Warmace
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163541, {	-- Longbow of the Hunt
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163539, {	-- Spear of the Hunt
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163537, {	-- Footman's Warhammer
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163534, {	-- Warmage's Spellblade
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163526, {	-- Footman's Handaxe
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163540, {	-- Footman's Boot Knife
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163538, {	-- Footman's Gladius
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163536, {	-- Warmage's Spire
							["timeline"] = { ADDED_8_0_1 },
						}),
						i(163533, {	-- Footman's Cleaver
							["timeline"] = { ADDED_8_0_1 },
						}),
					},
				}),
				q(46727, {	-- Battle for Azeroth: Tides of War (BfA version)
					["qgs"] = {
						142930,	-- Halford Wyrmbane
						-- #if AFTER 9.0.2
						49748,	-- Hero's Herald
						-- #endif
					},
					["coords"] = {
						{ 27.6, 21.2, STORMWIND_CITY },	-- Halford Wyrmbane
						{ 62.3, 30.3, STORMWIND_CITY },	-- Hero's Herald
						{ 63.2, 71.4, STORMWIND_CITY },	-- Hero's Herald
						{ 45.2, 50.2, DARNASSUS },	-- Hero's Herald
					},
					["timeline"] = { ADDED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1640, {	-- Beat Bartleby
					["sourceQuest"] = 1639,	-- Bartleby the Drunk
					["qg"] = 6090,	-- Bartleby
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.8, 52.5, STORMWIND_CITY },
						-- #else
						{ 73.8, 36.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 10,
				}),
				q(26488, {	-- Big Gulp
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(7644, {	-- Blessed Arcanite Barding
					["sourceQuest"] = 7643,	-- Ancient Equine Spirit
					["providers"] = {
						{ "n", 14566 },	-- Ancient Equine Spirit
						{ "i", 18792 },	-- Blessed Arcanite Barding
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DIRE_MAUL },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(29412, {	-- Blown Away
					["qg"] = 54117,	-- Vin
					["coord"] = { 58.9, 52.7, STORMWIND_CITY },
					["timeline"] = { ADDED_4_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Windswept Balloon
							["providers"] = {
								{ "i",  71034 },	-- Windswept Balloon
								{ "o", 209242 },	-- Windswept Balloon
							},
						}),
						i(72042, {	-- Alliance Balloon (PET!)
							["timeline"] = { ADDED_4_2_0 },
						}),
					},
				}),
				q(344, {	-- Brother Paxton
					["sourceQuest"] = 343,	-- Speaking of Fortitude
					["qg"] = 1440,	-- Milton Sheaf
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.1, 30.2, STORMWIND_CITY },
						-- #else
						{ 74.2, 7.5, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(395, {	-- Brotherhood's End
					["sourceQuest"] = 394,	-- The Head of the Beast
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT
					["qgs"] = {
						203475,	-- Liv Bradford <Bartender>
						203478,	-- Stuart
					},
					["coord"] = { 22.6, 64.7, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN, WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
						i(205683, {	-- Rune of Rebuke
							["classes"] = { PALADIN },
							["groups"] = {
								recipe(425621),	-- Engrave Pants - Rebuke
							},
						}),
					},
				})),
				-- #endif
				q(1705, {	-- Burning Blood
					["sourceQuest"] = 1700,	-- Grimand Elmore
					["qg"] = 1416,	-- Grimand Elmore
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.7, 33.8, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/20 Burning Blood
							["provider"] = { "i", 6844 },	-- Burning Blood
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["crs"] = {
								205,	-- Nightbane Dark Runner
								533,	-- Nightbane Shadow Weaver
								920,	-- Nightbane Tainted One
								206,	-- Nightbane Vile Fang
								898,	-- Nightbane Worgen
							},
						}),
						objective(1, {	-- 0/1 Burning Rock
							["provider"] = { "i", 6845 },	-- Burning Rock
							["coord"] = { 74.2, 77.8, DUSKWOOD },
							["cr"] = 6170,	-- Gutspill
						}),
					},
				}),
				q(60959, {	-- Burning Crusade: Onward to Adventure in Outland
					["sourceQuest"] = 60120,	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60120, {	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(60891, {	-- Cataclysm: Onward to Adventure in the Eastern Kingdoms
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(27092, {	-- Cataclysm in the Catacombs
					["sourceQuest"] = 27072,	-- The Old Barracks
					["qg"] = 50049,	-- Jack Bauden <SI:7 Agent>
					["coord"] = { 37.2, 56.4, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7642, {	-- Collection of Goods
					["sourceQuest"] = 7641,	-- The Work of Grimand Elmore
					["qg"] = 1416,	-- Grimand Elmore
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.7, 33.8, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRATHOLME },
					["cost"] = {
						{ "i", 13180, 5 },	-- Stratholme Holy Water
						{ "i", 8836, 10 },	-- Arthas' Tears
						{ "i", 14047, 40 },	-- Runecloth
						{ "i", 12360, 6 },	-- Arcanite Bar
						{ "g", 1500000 },	-- 150g
					},
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(46274, {	-- Consoling the King
					["sourceQuest"] = 46272,	-- Summons to the Keep
					["qg"] = 119338,	-- Genn Greymane
					["coord"] = { 85.7, 32.1, STORMWIND_CITY },
					["timeline"] = { ADDED_7_2_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(32469, {	-- Crystal Clarity (A)
					["sourceQuest"] = 32470,	-- Light Camera Action (A)
					["qg"] = 16908,	-- Arielle Snapflash
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "toyID", 122674 },	-- S.E.L.F.I.E. Camera MkII
					["groups"] = {
						i(155832),	-- Pristine Crystal Shard (QI!)
						i(122661, {	-- S.E.L.F.I.E. Lens Upgrade Kit
							["timeline"] = { ADDED_6_1_0 },
							["groups"] = {
								i(122674, {	-- S.E.L.F.I.E. Camera MkII
									["timeline"] = { ADDED_6_1_0 },
								}),
							},
						}),
					},
				}),
				q(44463, {	-- Demons Among Them
					["sourceQuest"] = 44471,	-- Second Sight
					["qg"] = 102585,	-- Jace Darkweaver
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(40593, {	-- Demons Among Us
					["sourceQuest"] = 40517,	-- The Fallen Lion
					["qg"] = 100675,	-- Jace Darkweaver
					["coord"] = { 85.2, 32.3, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(128959, {	-- Seal of House Wrynn
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(138774, {	-- Accolade of House Wrynn
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(138773, {	-- Favor of House Wrynn
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(5634, {	-- Desperate Prayer
					["altQuests"] = {
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["qgs"] = {
						11401,	-- Priestess Alathea <Priest Trainer>
						1226,	-- Maxan Anvol <Priest Trainer>
						377,	-- Priestess Josetta <Priest Trainer>
						11406,	-- High Priest Rohan <Priest Trainer>
						11397,	-- Nara Meideros <Priest Trainer>
						376,	-- High Priestess Laurena <Priest Trainer>
						3600,	-- Laurna Morninglight <Priest Trainer>
					},
					["coords"] = {
						{ 39.6, 80.8, DARNASSUS },
						{ 47.2, 52.2, DUN_MOROGH },
						{ 43.4, 65.6, ELWYNN_FOREST },
						{ 26.4, 7.6, IRONFORGE },
						{ 20.8, 50.2, STORMWIND_CITY },
						{ 38.8, 26.6, STORMWIND_CITY },
						{ 55.6, 56.8, TELDRASSIL },
					},
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5634, {	-- Desperate Prayer
					["altQuests"] = {
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5638,	-- Desperate Prayer [Stormwind City #2]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
					["coord"] = { 38.8, 26.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5638, {	-- Desperate Prayer
					["altQuests"] = {
						5634,	-- Desperate Prayer [Stormwind City #1]
						5635,	-- Desperate Prayer [Elwynn Forest]
						5636,	-- Desperate Prayer [Teldrassil]
						5637,	-- Desperate Prayer [Dun Morogh]
						5639,	-- Desperate Prayer [Ironforge]
						5640,	-- Desperate Prayer [Darnassus]
					},
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = { HUMAN, DWARF },
					["classes"] = { PRIEST },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 13908,	-- Desperate Prayer (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(26420, {	-- Diggin' For Worms
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Crystal Bass
							["providers"] = {
								{ "i",  58787 },	-- Crystal Bass
								{ "i",  58788 },	-- Overgrown Earthworm
								{ "o", 204281 },	-- Worm Mound
							},
							["coord"] = { 57.7, 14.1, STORMWIND_CITY },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(6261, {	-- Dungar Longdrink
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Dungar Longdrink' (26395).",
					-- #endif
					["sourceQuest"] = 6281,	-- Continue to Stormwind
					["providers"] = {
						{ "n", 1323 },	-- Osric Strang
						{ "i", 16115 },	-- Osric's Crate (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.0, 61.2, STORMWIND_CITY },
						-- #else
						{ 74.2, 47.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				q(26395, {	-- Dungar Longdrink
					["sourceQuest"] = 26394,	-- Continue to Stormwind
					["providers"] = {
						{ "n", 1323 },	-- Osric Strang
						{ "i", 16115 },	-- Osric's Crate (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.2, 61.0, STORMWIND_CITY },
						-- #else
						{ 74.2, 47.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { HUMAN, KULTIRAN },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78091, {	-- Earning Your Salt
					["sourceQuest"] = 78090,	-- A Second Opinion
					["qg"] = 5495,	-- Ursula Deline <Warlock Trainer>
					["coord"] = { 26.2, 77.4, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["classes"] = { PALADIN },
					["groups"] = {
						objective(1, {	-- 0/14 Summoner's Salt
							["provider"] = { "i", 209778 },	-- Summoner's Salt
							["crs"] = {
								4463,	-- Blackrock Summoner
								435,	-- Blackrock Champion
								615,	-- Blackrock Tracker
								4464,	-- Blackrock Gladiator
								4462,	-- Blackrock Hunter
								4065,	-- Blackrock Sentry
								436,	-- Blackrock Shadowcaster
							},
						}),
					},
				})),
				-- #endif
				q(25156, {	-- Elemental Goo
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				-- #if NOT ANYCLASSIC
				q(5673, {	-- Elune's Grace [Stormwind City]
					["altQuests"] = {
						5672,	-- Elune's Grace [Darnassus]
						5675,	-- Elune's Grace [Ironforge]
					},
					["qg"] = 376,	-- High Priestess Laurena <Priest Trainer>
					["coord"] = { 38.8, 26.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2651,	-- Elune's Grace (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(7637, {	-- Emphasis on Sacrifice
					["sourceQuests"] = {
						7670,	-- Lord Grayson Shadowbreaker [Ironforge]
						7638,	-- Lord Grayson Shadowbreaker [Stormwind City]
					},
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { IRONFORGE },
					["cost"] = 1500000,	-- 150g
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(7640, {	-- Exorcising Terrordale
					["sourceQuest"] = 7639,	-- To Show Due Judgment
					["providers"] = {
						{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
						{ "i", 18752 },	-- Exorcism Censer
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					["groups"] = {
						objective(1, {	-- 0/25 Terrordale Spirit slain
							["provider"] = { "n", 14564 },	-- Terrordale Spirit
							["coords"] = {
								-- #if AFTER WRATH
								{ 16.4, 31.8, EASTERN_PLAGUELANDS },
								-- #else
								{ 19.6, 36.8, EASTERN_PLAGUELANDS },
								-- #endif
							},
						}),
					},
				}),
				q(28807, {	-- Expert Opinion
					["sourceQuests"] = {
						27064,	-- He's Holding Out on Us
						27060,	-- Unholy Cow
					},
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58708, {	-- Fame Waits for Gnome One
					["qg"] = 162393,	-- Gila Crosswires
					["coord"] = { 52.7, 14.1, STORMWIND_CITY },
					["timeline"] = { ADDED_8_3_0 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(26177, {	-- Feeling Crabby?
					["qg"] = 42288,	-- Robby Flay
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.7, 73.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Canal Crab
							["providers"] = {
								{ "i", 57175 },	-- Canal Crab
								{ "n", 42339 },	-- Canal Crab
							},
							["coord"] = { 47.8, 68.4, STORMWIND_CITY },
						}),
						COOKING_AWARD,
					},
				}),
				q(1701, {	-- Fire Hardened Mail
					["sourceQuest"] = 1702,	-- The Shieldsmith
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6842 },	-- Furen's Instructions
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 37.2, STORMWIND_CITY },
						-- #else
						{ 58.0, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { RAZORFEN_KRAUL, WETLANDS, STONETALON_MOUNTAINS },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/50 Scorched Spider Fang
							["provider"] = { "i", 6838 },	-- Scorched Spider Fang
							["crs"] = {
								4040,	-- Cave Stalker
								1111,	-- Leech Stalker
							},
						}),
						objective(2, {	-- 0/12 Charred Horn
							["provider"] = { "i", 6839 },	-- Charred Horn
							["crs"] = {
								4031,	-- Fledgling Chimaera
								4032,	-- Young Chimaera
							},
						}),
						objective(3, {	-- 0/1 Galvanized Horn
							["provider"] = { "i", 6840 },	-- Galvanized Horn
							["cr"] = 6167,	-- Chimaera Matriarch
						}),
						objective(4, {	-- 0/1 Vial of Phlogiston
							["provider"] = { "i", 6841 },	-- Vial of Phlogiston
							["cr"] = 6168,	-- Roogug
						}),
					},
				}),
				q(6184, {	-- Flint Shadowmore
					["sourceQuest"] = 6183,	-- Honor the Dead
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(27675, {	-- Forged Documents
					["description"] = "After creating Forged Documents with Inscription, search the city for an NPC to accept them - the quest can end in a variety of different places.",
					["provider"] = { "i", 62056 },	-- Forged Documents
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = INSCRIPTION,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
				}),
				-- #if AFTER SL
				q(27271, {	-- Frazzle's Request [SL+] / Journey to the Wizard's Sanctum
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1782, {	-- Furen's Armor
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["qg"] = 5413,	-- Furen Longbeard
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 37.2, STORMWIND_CITY },
						-- #else
						{ 58.0, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6972, {	-- Fire Hardened Hauberk
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1685, {	-- Gakin's Summons (Voidwalker)
					["altQuests"] = { 1715 },	-- The Slaughtered Lamb
					["qg"] = 6121,	-- Remen Marcot
					["coord"] = { 44.4, 66.2, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 10,
				}),
				q(1717, {	-- Gakin's Summons (Succubus)
					["qg"] = 6120,	-- Lago Blackwrench
					["coord"] = { 47.6, 9.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1921, {	-- Gathering Materials
					["sourceQuest"] = 1920,	-- Investigate the Blue Recluse
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { LOCH_MODAN },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(2, {	-- 0/6 Charged Rift Gem
							["providers"] = {
								{ "i", 7249 },	-- Charged Rift Gem
								{ "o", 271 },	-- Miners' League Crates
							},
							["coord"] = { 35, 27, LOCH_MODAN },
						}),
					},
				}),
				q(49976, {	-- Gifts of the Fallen
					["sourceQuest"] = 50371,	-- Summons to Stormwind
					["qg"] = 132255,	-- Master Mathias Shaw
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(39800, {	-- Greymane's Gambit
					["sourceQuest"] = 38206,	-- Making the Rounds
					["qg"] = 96663,	-- Genn Greymane
					["coord"] = { 18.6, 50.8, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(139914, {	-- 7th Legion Battlemage Amice
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(121760, {	-- 7th Legion Battlemage Wraps
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(139950, {	-- Gryphon Rider's Shoulderpads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(139955, {	-- Gryphon Rider's Cuffs
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(139976, {	-- Skyfire Engineer's Mantle
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(121762, {	-- Skyfire Engineer's Wristguards
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(121753, {	-- Skyfire Marine's Pauldrons
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(121761, {	-- Skyfire Marine's Vambraces
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(1700, {	-- Grimand Elmore
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 37.2, STORMWIND_CITY },
						-- #else
						{ 58.0, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1706, {	-- Grimand's Armor
					["sourceQuest"] = 1705,	-- Burning Blood
					["qg"] = 1416,	-- Grimand Elmore
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.7, 33.8, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARRIOR },
					["lvl"] = 20,
					["groups"] = {
						i(6971, {	-- Fire Hardened Coif
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(7648, {	-- Grimand's Finest Work
					["sourceQuest"] = 7642,	-- Collection of Goods
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 18753 },	-- Arcanite Barding
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.7, 33.8, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(66420, {	-- Happy Hour
					["sourceQuest"] = 66390,	-- Missing Merchandise
					["qg"] = 188342,	-- Onnesa
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(191865, {	-- Bottle of Briny Seawater (QI!)
							["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
						}),
					},
				}),
				q(333, {	-- Harlan Needs a Resupply
					["providers"] = {
						{ "n", 1427 },	-- Harlan Bagley
						{ "i", 2724 },	-- Cloth Request (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 62.3, 67.9, STORMWIND_CITY },
						-- #else
						{ 55.1, 56.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(27064, {	-- He's Holding Out on Us
					["sourceQuest"] = 26997,	-- The Usual Suspects
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1939, {	-- High Sorcerer Andromath
					["qgs"] = {
						5144,	-- Bink <Mage Trainer>
						5497,	-- Jennea Cannon <Mage Trainer>
					},
					["coords"] = {
						{ 27.0, 8.2, IRONFORGE },
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(26414, {	-- Hitting a Walleye
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(6183, {	-- Honor the Dead
					["sourceQuest"] = 6182,	-- The First and the Last
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(399, {	-- Humble Beginnings
					["qg"] = 1646,	-- Baros Alexston <City Architect>
					["coords"] = {
						-- #if AFTER WRATH
						{ 57.7, 47.9, STORMWIND_CITY },
						-- #else
						{ 49, 30.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 A Simple Compass
							["providers"] = {
								{ "i", 2998 },	-- A Simple Compass
								{ "o", 1166 },	-- Alexston's Chest
							},
							["coord"] = { 36.3, 54.6, WESTFALL },
						}),
					},
				}),
				q(32675, {	-- I Believe You Can Fly
					["description"] = "This quest is automatically offered to Alliance players upon reaching the specified level.",
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1,
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
					["lvl"] = lvlsquish(60, 60, 30),
				}),
				q(44120, {	-- Illidari Allies
					["sourceQuest"] = 40593,	-- Demons Among Us
					["qg"] = 100973,	-- Anduin Wrynn
					["coord"] = { 85.6, 31.8, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2759, {	-- In Search of Galvan
					["sourceQuest"] = 2758,	-- The Origins of Smithing
					["providers"] = {
						{ "n", 7798 },	-- Hank the Hammer
						{ "i", 8663 },	-- Mithril Insignia
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.0, 36.4, STORMWIND_CITY },
						-- #else
						{ 56.0, 16.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { STRANGLETHORN_VALE },
					["requireSkill"] = BLACKSMITHING,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
				}),
				q(1448, {	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coords"] = {
						-- #if AFTER WRATH
						{ 69.5, 40.4, STORMWIND_CITY },
						-- #else
						{ 64.3, 20.7, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(2745, {	-- Infiltrating the Castle
					["sourceQuest"] = 350,	-- Look to an Old Friend
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.0, 74.1, STORMWIND_CITY },
						-- #else
						{ 60.0, 64.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(1920, {	-- Investigate the Blue Recluse
					["sourceQuest"] = 1919,	-- Report to Jennea
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/3 Filled Containment Coffer
							["providers"] = {
								{ "i",   7292 },	-- Filled Containment Coffer
								{ "o", 103574 },	-- Filled Containment Coffer
								{ "i",   7247 },	-- Chest of Containment Coffers
								{ "i",   7308 },	-- Cantation of Manifestation
							},
							["coords"] = {
								-- #if AFTER WRATH
								{ 51.0, 95.0, STORMWIND_CITY },
								-- #else
								{ 39.4, 86, STORMWIND_CITY },
								-- #endif
							},
							["cr"] = 6492,	-- Rift Spawn
						}),
						objective(2, {	-- 0/1 Chest of Containment Coffers
							["providers"] = {
								{ "i",   7247 },	-- Chest of Containment Coffers
								{ "o", 105174 },	-- Chest of Containment Coffers
							},
							["coords"] = {
								-- #if AFTER WRATH
								{ 49.6, 85.4, STORMWIND_CITY },
								-- #else
								{ 38.7, 79.1, STORMWIND_CITY },
								-- #endif
							},
						}),
						objective(3, {	-- 0/1 Cantation of Manifestation
							["providers"] = {
								{ "i",   7308 },	-- Cantation of Manifestation
								{ "o", 105175 },	-- Cantation of Manifestation
							},
							["coords"] = {
								-- #if AFTER WRATH
								{ 49.6, 85.4, STORMWIND_CITY },
								-- #else
								{ 38.7, 79.1, STORMWIND_CITY },
								-- #endif
							},
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78092, {	-- It Must Be Destroyed
					["sourceQuest"] = 78091,	-- Earning Your Salt
					["providers"] = {
						{ "n",   5495 },	-- Ursula Deline <Warlock Trainer>
						{ "i", 209748 },	-- Althalaxx Orb
						{ "o",   409311 },	-- Spear of Mannoroth
					},
					["coords"] = {
						{ 26.2, 77.4, STORMWIND_CITY },
						{ 89.5, 76.9, ASHENVALE },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["groups"] = {
						objective(1, {	-- 0/12 Mote of Mannoroth
							["provider"] = { "i", 209779 },	-- Mote of Mannoroth
							["crs"] = {
								11697,	-- Mannoroc Lasher
								6115,	-- Roaming Felguard
								6073,	-- Searing Infernal
								6071,	-- Legion Hound
							},
						}),
					},
				})),
				-- #endif
				q(2746, {	-- Items of Some Consequence
					["sourceQuest"] = 2745,	-- Infiltrating the Castle
					["qg"] = 7766,	-- Tyrion
					["coords"] = {
						-- #if AFTER WRATH
						{ 73.2, 35.7, STORMWIND_CITY },
						-- #else
						{ 69.2, 14.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["cost"] = { { "i", 4306, 3 } },	-- Silk Cloth
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(2, {	-- 0/2 Clara's Fresh Apple
							["providers"] = {
								{ "i",   8683 },	-- Clara's Fresh Apple
								{ "o", 142076 },	-- Clara's Fresh Apples
							},
							["coord"] = { 34, 57.2, ELWYNN_FOREST },
						}),
					},
				}),
				-- #if BEFORE SL
				q(27271, {	-- Journey to the Wizard's Sanctum / Frazzle's Request [SL+]
					["qgs"] = {
						16749,	-- Edirah
						50690,	-- Tarelvir
						5146,	-- Nittlebur Sparkfizzle
					},
					["coords"] = {
						{ 47.2, 61.8, THE_EXODAR },	-- Edirah
						{ 37.6, 80.0, DARNASSUS },	-- Tarelvir
						{ 26.2, 6.2, IRONFORGE },	-- Nittlebur Sparkfizzle
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				-- #endif
				q(1704, {	-- Klockmort Spannerspan
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 37.2, STORMWIND_CITY },
						-- #else
						{ 58.0, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = { DWARF, GNOME },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(32665, {	-- Learn To Ride
					["description"] = "This quest is automatically granted to Pandaren upon reaching the specified level.",
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { PANDAREN_ALLIANCE },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(60971, {	-- Legion: Onward to Adventure in the Broken Isles
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(65896, {	-- Let the Healing Begin
					["qg"] = 190830,	-- Otan Tennoh
					["coord"] = { 44.2, 57.0, STORMWIND_CITY },
					["timeline"] = { ADDED_10_0_2 },
					["races"] = { DRACTHYR_ALLIANCE },
					["classes"] = { EVOKER },
				}),
				q(32470, {	-- Light Camera Action (A)
					["qg"] = 16908,	-- Arielle Snapflash
					["coord"] = { 61.2, 22.8, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["cost"] = { { "i", 4406, 1 } },	-- Standard Scope
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "toyID", 122674 },	-- S.E.L.F.I.E. Camera MkII
					["groups"] = {
						objective(1, {	-- 0/1 Iron Box
							["provider"] = { "i", 155856 },	-- Iron Box
							["coord"] = { 68.1, 66.9, STORMWIND_CITY },
						}),
						objective(3, {	-- 0/1 Russet Belt
							["provider"] = { "i", 3593 },	-- Russet Belt
							["coord"] = { 53.2, 81.8, STORMWIND_CITY },
						}),
						i(122637, {	-- S.E.L.F.I.E. Camera
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				q(7670, {	-- Lord Grayson Shadowbreaker [Ironforge]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(7638, {	-- Lord Grayson Shadowbreaker [Stormwind City]
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 60,
				}),
				q(350, {	-- Look to an Old Friend
					["sourceQuest"] = 393,	-- Shadow of the Past
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(38206, {	-- Making the Rounds
					["sourceQuest"] = 38035,	-- A Royal Summons
					["qg"] = 96644,	-- Sky Admiral Rogers
					["coord"] = { 18.8, 42.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1941, {	-- Manaweave Robe
					["sourceQuest"] = 1921,	-- Gathering Materials
					["qg"] = 1309,	-- Wynne Larson <Robe Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 52.0, 83.6, STORMWIND_CITY },
						-- #else
						{ 41.8, 76.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 15,
					["groups"] = {
						i(7509, {	-- Manaweave Robe
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in the Ghostlands for Blood Elf Mages, originally only available to the Alliance in Stormwind.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },	-- Item is still available in the Ghostlands for Horde, but removed from this source.
						}),
					},
				}),
				q(65047, {	-- Mark of the Nightwing Raven
					["name"] = "Mark of the Nightwing Raven",	-- TODO: What is this?
					["qg"] = 44395,	-- Celestine of the Harvest
					["coord"] = { 57.6, 24.8, STORMWIND_CITY },
					["timeline"] = { ADDED_9_1_5 },
					["classes"] = { DRUID },
				}),
				q(1666, {	-- Marshal Haggard
					["sourceQuest"] = 1665,	-- Bartleby's Mug
					["qg"] = 6089,	-- Harry Burlguard
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.1, 53.3, STORMWIND_CITY },
						-- #else
						{ 74, 37.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { WARRIOR },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
				}),
				q(2360, {	-- Mathias and the Defias
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(1703, {	-- Mathiel
					["sourceQuest"] = 1701,	-- Fire Hardened Mail
					["providers"] = {
						{ "n", 5413 },	-- Furen Longbeard
						{ "i", 6926 },	-- Furen's Notes
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 37.2, STORMWIND_CITY },
						-- #else
						{ 58.0, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARRIOR },
					["races"] = { NIGHTELF },
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(1363, {	-- Mazen's Behest (1/2)
					["qg"] = 338,	-- Mazen Mac'Nadir
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.8, 74.3, STORMWIND_CITY },
						-- #else
						{ 41.4, 64.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
				}),
				q(1364, {	-- Mazen's Behest (2/2)
					["sourceQuest"] = 1363,	-- Mazen's Behest (1/2)
					["qg"] = 5386,	-- Acolyte Dellis
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.4, 73.8, STORMWIND_CITY },
						-- #else
						{ 40.8, 64, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { SWAMP_OF_SORROWS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Khadgar's Essays on Dimensional Convergence
							["provider"] = { "i", 6065 },	-- Khadgar's Essays on Dimensional Convergence
							["crs"] = {
								1081,	-- Mire Lord
								14448,	-- Molt Thorn
								764,	-- Swampwalker
								765,	-- Swampwalker Elder
								766,	-- Tangled Horror
							},
						}),
						i(10747, {	-- Teacher's Sash
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10748, {	-- Wanderlust Boots
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1861, {	-- Mirror Lake
					["sourceQuest"] = 1860,	-- Speak with Jennea
					["altQuests"] = { 1880 },	-- Mage-tastic Gizmonitor
					["qg"] = 5497,	-- Jennea Cannon <Mage Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.5, 85.8, STORMWIND_CITY },
						-- #else
						{ 38.6, 79.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { MAGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Mirror Lake Water Sample
							["providers"] = {
								{ "i", 7206 },	-- Mirror Lake Water Sample
								{ "i", 7207 },	-- Jennea's Flask
							},
							["coord"] = { 28, 62, ELWYNN_FOREST },
						}),
						i(7508, {	-- Ley Orb
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
						i(9513, {	-- Ley Staff
							-- #if AFTER 4.0.3
							["description"] = "This item is still available in Eversong Woods for Horde Mages.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },	-- Item is still available in the Eversong Woods for Horde, but removed from this source.
						}),
					},
				}),
				q(66390, {	-- Missing Merchandise
					["qg"] = 188342,	-- Onnesa
					["coord"] = { 51.5, 70.4, STORMWIND_CITY },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27038, {	-- Missing Parts
					["sourceQuest"] = 26975,	-- Rallying the Fleet
					["qg"] = 44749,	-- Supply Sergeant Graves
					["coord"] = { 33.2, 39.4, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(63927, {	-- Machine-Linker Girdle
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63926, {	-- Reconstructing Hauberk
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
						i(63925, {	-- Scavenger Bracers
							["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
						}),
					},
				}),
				q(60965, {	-- Mists of Pandaria: Onward to Adventure in Pandaria
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60125, {	-- Mists of Pandaria: To Pandaria!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(26960, {	-- My Son, the Prince
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(25105, {	-- Nibbler! No!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(25155, {	-- Ogrezonians in the Mood
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(6187, {	-- Order Must Be Restored
					["sourceQuest"] = 6186,	-- The Blightcaller Cometh
					["qgs"] = {
						-- #if AFTER WRATH
						29611,	-- King Varian Wrynn <King of Stormwind>
						-- #else
						1748,	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 79.8, 38.6, STORMWIND_CITY },	-- King Varian Wrynn <King of Stormwind>
						-- #else
						{ 78.0, 18.0, STORMWIND_CITY },	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { EASTERN_PLAGUELANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
					["groups"] = {
						objective(1, {	-- 0/1 Nathanos Blightcaller slain
							["provider"] = { "n", 11878 },	-- Nathanos Blightcaller <Champion of the Banshee Queen>
							["coords"] = {
								-- #if AFTER WRATH
								{ 23.0, 68.2, EASTERN_PLAGUELANDS },
								-- #else
								{ 26.6, 74.8, EASTERN_PLAGUELANDS },
								-- #endif
							},
						}),
						i(16996, {	-- Gorewood Bow
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16997, {	-- Stormrager
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(16998, {	-- Sacred Protector
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26192, {	-- Orphans Like Cookies Too!
					["qg"] = 42288,	-- Robby Flay
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.7, 73.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Confectioners' Sugar
							["providers"] = {
								{ "i",  57246 },	-- Confectioners' Sugar
								{ "o", 203801 },	-- Sack of Confectioner's Sugar
							},
							["coord"] = { 77.6, 53.2, STORMWIND_CITY },
						}),
						COOKING_AWARD,
					},
				}),
				q(334, {	-- Package for Thurman
					["providers"] = {
						{ "n", 1428 },	-- Rema Schneider
						{ "i", 2760 },	-- Thurman's Sewing Kit
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 58.1, 67.5, STORMWIND_CITY },
						-- #else
						{ 49.5, 55.3, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(27044, {	-- Peasant Problems
					["sourceQuests"] = {
						26975,	-- Rallying the Fleet
						26997,	-- The Usual Suspects
					},
					["qg"] = 44293,	-- Anduin Wrynn <Prince of Stormwind>
					["coord"] = { 85.7, 31.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(26153, {	-- Penny's Pumpkin Pancakes
					["qg"] = 42288,	-- Robby Flay
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.7, 73.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Stormwind Pumpkin
							["providers"] = {
								{ "i",  57137 },	-- Stormwind Pumpkin
								{ "o", 203751 },	-- Stormwind Pumpkin
							},
							["coord"] = { 55.2, 11.4, STORMWIND_CITY },
						}),
						COOKING_AWARD,
					},
				}),
				q(1940, {	-- Pristine Spider Silk
					["sourceQuest"] = 1938,	-- Ur's Treatise on Shadow Magic
					["qg"] = 5694,	-- High Sorcerer Andromath
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.7, 87.6, STORMWIND_CITY },
						-- #else
						{ 37.6, 81.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSKWOOD },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/8 Pristine Spider Silk
							["provider"] = { "i", 7267 },	-- Pristine Spider Silk
							["crs"] = {
								949,	-- Carrion Recluse
								930,	-- Black Widow Hatchling
							},
						}),
					},
				}),
				q(26975, {	-- Rallying the Fleet
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2281, {	-- Redridge Rendezvous
					["sourceQuests"] = {
						2260,	-- Erion's Behest(Darnassus)
						2298,	-- Kingly Shakedown(Ironforge)
						2300,	-- SI:7(Elwynn Forest)
					},
					["qg"] = 6946,	-- Renzik "The Shiv" <SI:7 Operative>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.8, 70.8, STORMWIND_CITY },
						-- #else
						{ 75.8, 60.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 16,
				}),
				q(1919, {	-- Report to Jennea
					["qg"] = 7312,	-- Dink <Mage Trainer>
					["coord"] = { 26.8, 8.6, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 15,
				}),
				q(58498, {	-- Return of the Warrior King
					["sourceQuest"] = 58496,	-- An Unwelcome Advisor
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["coord"] = { 85.2, 32.5, STORMWIND_CITY },
					["timeline"] = { ADDED_8_3_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(175151),	-- Fearbreaker (QI!)
					},
				}),
				q(26396, {	-- Return to Argus
					["sourceQuest"] = 26395,	-- Dungar Longdrink
					["providers"] = {
						{ "n", 352 },	-- Dungar Longdrink <Gryphon Master>
						{ "i", 16115 },	-- Osric's Crate (PQI!)
					},
					["coord"] = { 71.0, 72.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = { HUMAN, KULTIRAN },
				}),
				q(6285, {	-- Return to Lewis
					-- #if AFTER 4.0.3
					["description"] = "This quest gets marked as completed when you complete the quest 'Return to Argus' (26396) in Elwynn Forest.",
					-- #endif
					["sourceQuest"] = 6261,	-- Dungar Longdrink
					["providers"] = {
						{ "n", 352 },	-- Dungar Longdrink <Gryphon Master>
						{ "i", 16115 },	-- Osric's Crate (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 71.0, 72.5, STORMWIND_CITY },
						-- #else
						{ 66.2, 62.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { WESTFALL },
					["races"] = { HUMAN },
					["lvl"] = 10,
				}),
				-- #if NOT ANYCLASSIC
				q(5631, {	-- Returning Home [Stormwind City]
					["altQuests"] = {
						5627,	-- Returning Home [Darnassus]
						5628,	-- Returning Home [Elwynn Forest]
						5629,	-- Returning Home [Teldrassil]
						5630,	-- Returning Home [Dun Morogh]
						5632,	-- Returning Home [Stormwind City]
						5633,	-- Returning Home [Ironforge]
					},
					["qg"] = 5489,	-- Brother Joshua <Priest Trainer>
					["coord"] = { 38.6, 26.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5632, {	-- Returning Home [Stormwind City]
					["altQuests"] = {
						5627,	-- Returning Home [Darnassus]
						5628,	-- Returning Home [Elwynn Forest]
						5629,	-- Returning Home [Teldrassil]
						5630,	-- Returning Home [Dun Morogh]
						5631,	-- Returning Home [Stormwind City]
						5633,	-- Returning Home [Ironforge]
					},
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { NIGHTELF },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 10797,	-- Starshards (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(26442, {	-- Rock Lobster
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Rock Lobster
							["providers"] = {
								{ "i",  58809 },	-- Rock Lobster
								{ "o", 204284 },	-- Stormwind Lobster Trap
							},
							["coord"] = { 21.5, 36.6, STORMWIND_CITY },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(44471, {	-- Second Sight
					["sourceQuest"] = 39691,	-- The Call of War
					["qg"] = 102585,	-- Jace Darkweaver
					["coord"] = { 84.4, 33.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78194, {	-- Secrets of Elune (1/2)
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DUSKWOOD },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 17,
					["groups"] = {
						objective(1, {	-- 0/10 Dire Wolf Paw
							["provider"] = { "i", 210053 },	-- Dire Wolf Paw
							["coord"] = { 67.2, 27.2, DUSKWOOD },
							["crs"] = {
								565,	-- Rabid Dire Wolf
								213,	-- Starving Dire Wolf
								628,	-- Black Ravager
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78195, {	-- Secrets of Elune (2/2)
					["description"] = "Completing this quest will allow you to meditate in the same manner as the night elves.",
					["sourceQuest"] = 78194,	-- Secrets of Elune (1/2)
					["qg"] = 11397,	-- Nara Meideros <Priest Trainer>
					["coord"] = { 20.8, 50.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DARKSHORE },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 17,
					["groups"] = {
						recipe(424036, {	-- Secrets of Elune
							["classes"] = { PRIEST },
						}),
					},
				})),
				-- #endif
				q(393, {	-- Shadow of the Past
					["sourceQuest"] = 392,	-- The Curious Visitor
					["providers"] = {
						{ "n", 1646 },	-- Baros Alexston <City Architect>
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 57.7, 47.9, STORMWIND_CITY },
						-- #else
						{ 49, 30.2, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(79077, {	-- Sharing the Faith
					["qg"] = 1212,	-- Bishop Farthing
					["coord"] = { 39.2, 28, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ELWYNN_FOREST },
					["classes"] = { PRIEST },
					["races"] = { DWARF, HUMAN },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Pray over the Supplicant
							["provider"] = { "n", 215062 },	-- Supplicant
							["description"] = "You must first have your Meditation buff and then use /pray on the kneeling Supplicant.",
						}),
					},
				})),
				-- #endif
				q(2206, {	-- Snatch and Grab
					["sourceQuest"] = 2205,	-- Seek out SI:7
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Shipping Schedule
							["provider"] = { "i", 7675 },	-- Defias Shipping Schedule
							["coord"] = { 48.2, 87.6, ELWYNN_FOREST },
							["cr"] = 6846,	-- Defias Dockmaster
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_THREE, q(81762, {	-- Some Good News
					["sourceQuest"] = 79970,	-- Aeonas the Vindicated
					["qg"] = 218160,	-- Aeonas the Vindicated <Former Paladin of the Silver Hand>
					["coord"] = { 37.6, 31.6, STORMWIND_CITY },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 44,
					["groups"] = {
						objective(1, {	-- Speak with Katherine the Pure
							["provider"] = { "n", 5492 },	-- Katherine the Pure <Paladin Trainer>
							["coord"] = { 37.8, 31.6, STORMWIND_CITY },
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, n(createHeader({	-- Speak to Brother Romulus
					readable = "Speak to Brother Romulus",
					icon = 131038,
					text = {
						en = "Speak to Brother Romulus",
						es = "Habla con el Hermano Romulus",
						mx = "Habla con el Hermano Romulus",
						de = "Sprich mit Bruder Romulus",
						fr = "Parlez à Frère Romulus",
						it = "Parla con Fratello Romulus",
						pt = "Fale com o Irmão Romulus",
						ru = "Поговорите с Брат Ромул",
						ko = "로물루스 형제와 대화하세요",
						cn = "与罗穆卢斯修士交谈",
					},
				}), {
					["questID"] = 75939,	-- Brother Romulus HQT
					["qg"] = 205278,	-- Brother Romulus
					["coord"] = { 38.6, 28.8, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
				})),
				-- #endif
				q(343, {	-- Speaking of Fortitude
					["qg"] = 1444,	-- Brother Kristoff
					["coords"] = {
						-- #if AFTER WRATH
						{ 55.0, 54.2, STORMWIND_CITY },
						-- #else
						{ 45.7, 38.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
				}),
				q(353, {	-- Stormpike's Delivery
					["sourceQuest"] = 1097,	-- Elmore's Task
					["providers"] = {
						{ "n", 1416 },	-- Grimand Elmore
						{ "i", 2806 },	-- Package for Stormpike (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.7, 33.8, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				q(579, {	-- Stormwind Library
					["providers"] = {
						{ "n", 2504 },	-- Donyal Tovald <Librarian>
						{ "i", 3898 },	-- Library Scrip
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 84.6, 24.2, STORMWIND_CITY },
						-- #else
						{ 71.6, 7.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["groups"] = {
						i(3899, {	-- Legends of the Gurubashi, Volume 3
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(2154, {	-- The Story of Morgan Ladimore
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(50371, {	-- Summons to Stormwind
					["qg"] = 132255,	-- Master Mathias Shaw
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1688, {	-- Surena Caledon
					["sourceQuests"] = {
						1685,	-- Gakin's Summons (Voidwalker)
						1715,	-- The Slaughtered Lamb
					},
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ELWYNN_FOREST },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- Surena's Choker
							["provider"] = { "i", 6810 },	-- Surena's Choker
							["coord"] = { 71.0, 80.6, ELWYNN_FOREST },
							["cr"] = 881,	-- Surena Caledon
						}),
					},
				}),
				q(30988, {	-- The Alliance Way
					["sourceQuest"] = 30987,	-- Joining the Alliance
					["qg"] = 61796,	-- King Varian Wrynn
					["coord"] = { 82.6, 28.2, STORMWIND_CITY },
					["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
					["races"] = { PANDAREN_NEUTRAL, PANDAREN_ALLIANCE },
				}),
				q(434, {	-- The Attack!
					["sourceQuest"] = 2746,	-- Items of Some Consequence
					["qg"] = 7766,	-- Tyrion
					["coords"] = {
						-- #if AFTER WRATH
						{ 73.2, 35.7, STORMWIND_CITY },
						-- #else
						{ 69.2, 14.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
					["groups"] = {
						objective(1, {	-- 0/1 Lord Gregor Lescovar slain
							["provider"] = { "n", 1754 },	-- Lord Gregor Lescovar
						}),
						objective(2, {	-- 0/1 Marzon the Silent Blade slain
							["provider"] = { "n", 1755 },	-- Marzon the Silent Blade
						}),
					},
				}),
				q(42740, {	-- The Battle for Broken Shore
					["sourceQuest"] = 42782,	-- To Be Prepared
				--	["altQuests"] = { 43806 },	-- Scenario Skip (A)
					["qg"] = 108916,	-- Knight Dameron
					["coord"] = { 19.0, 26.1, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["classes"] = exclude({ DEMONHUNTER }, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					-- CRIEVE NOTE: Perhaps move this and related quests/things to the Expansion Features section?
					-- Also find the right mapID for the scenario.
					["groups"] = {
						i(138767),	-- Stormwind Vanguard Battle Mace
						i(138772),	-- Stormwind Vanguard Bonegrinder
						i(138770),	-- Stormwind Vanguard Dagger
						i(138771),	-- Stormwind Vanguard Longbow
						i(138765),	-- Stormwind Vanguard Mageblade
						i(138769),	-- Stormwind Vanguard Polearm
						i(138768),	-- Stormwind Vanguard Quickblade
						i(136586),	-- Stormwind Vanguard Splitter
						i(138766),	-- Stormwind Vanguard Stave
						i(138764),	-- Stormwind Vanguard Waraxe
						o(240215, {	-- Ashes of a Fallen Crusader
							["coord"] = { 42, 42, BROKEN_ISLES},
							["groups"] = {
								i(139389, {	-- Charred Locket
									["description"] = "In order to get this you must do the scenario 'Battle for Broken Shore' and on Stage 6 search for a pile of ash titled 'Ashes of a Fallen Crusader' to retrieve the item. You will then go to 85, 69 in Elywnn Forest located at the Eastvale Logging Camp. From there you will go to the bedroom on the second floor to talk to Alaina. After talking to her leave (log or swap zones) and then come back to her to retrieve the item.",
									["groups"] = {
										o(252069, {	-- Alaina's Belongings
											["coord"] = { 85.6, 69.7, ELWYNN_FOREST },
											["groups"] = {
												i(139391),	-- Alaina's Bonnet (COSMETIC!)
											},
										}),
									},
								}),
							},
						}),
					},
				}),
				q(51795, {	-- The Battle for Lordaeron
					["sourceQuest"] = 53370,	-- Hour of Reckoning
					["qg"] = 144095,	-- Master Mathias Shaw
					["coord"] = { 22.4, 32.6, STORMWIND_CITY },
					["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65603, {	-- The Binding (Incubus) [Stormwind City]
					["sourceQuest"] = 65602,	-- What Is Love?
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190186, 1 } },	-- Wooden Figurine
						}),
						-- #if BEFORE 4.0.3
						recipe(713),	-- Summon Incubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #endif
				q(1739, {	-- The Binding (Succubus) [Stormwind City]
					["sourceQuest"] = 1738,	-- Heartswood
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6913, 1 } },	-- Heartswood Core
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1689, {	-- The Binding (Voidwalker) [Stormwind City]
					["sourceQuest"] = 1688,	-- Surena Caledon
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN, GNOME },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 6928, 1 } },	-- Bloodstone Choker
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(39691, {	-- The Call of War
					["qg"] = 97296,	-- Archmage Khadgar
					["coord"] = { 72.4, 47.2, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { DEMONHUNTER },
				}),
				q(392, {	-- The Curious Visitor
					["sourceQuest"] = 391,	-- The Stockage Riots
					["providers"] = {
						{ "n", 1719 },	-- Warden Thelwater
						{ "i", 8687 },	-- Sealed Description of Thredd's Visitor
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 51.6, 69.4, STORMWIND_CITY },
						-- #else
						{ 41.2, 58, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(7646, {	-- The Divination Scryer
					["sourceQuest"] = 7644,	-- Blessed Arcanite Barding
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 12800, 1 },	-- Azerothian Diamond
						{ "i", 18335, 1 },	-- Pristine Black Diamond
					},
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(28826, {	-- The Eye of the Storm
					["sourceQuest"] = 28825,	-- A Personal Summons
					["qg"] = 45226,	-- Naraat the Earthspeaker
					["coord"] = { 74.4, 18.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["groups"] = {
						objective(1, {	-- Peered into the Waters of Farseeing
							["provider"] = { "o", 207416 },	-- Waters of Farseeing
							["coord"] = { 74.3, 19.5, STORMWIND_CITY },
						}),
					},
				}),
				q(40517, {	-- The Fallen Lion
					["sourceQuest"] = 42740,	-- The Battle for Broken Shore (QuestID 43806 - Scenario Skip)
					["qg"] = 100395,	-- Genn Greymane
					["coord"] = { 19.8, 34.9, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(132251),	-- Letter to Anduin (QI!)
					},
				}),
				q(6182, {	-- The First and the Last
					["qgs"] = {
						-- #if AFTER WRATH
						29611,	-- King Varian Wrynn <King of Stormwind>
						-- #else
						1748,	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 79.8, 38.6, STORMWIND_CITY },	-- King Varian Wrynn <King of Stormwind>
						-- #else
						{ 78.0, 18.0, STORMWIND_CITY },	-- Highlord Bolvar Fordragon
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 56,
				}),
				q(394, {	-- The Head of the Beast
					["sourceQuest"] = 434,	-- The Attack!
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.0, 74.1, STORMWIND_CITY },
						-- #else
						{ 60.0, 64.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 16,
				}),
				q(26183, {	-- The King's Cider
					["qg"] = 42288,	-- Robby Flay
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.7, 73.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Juicy Apple
							["providers"] = {
								{ "i",  57197 },	-- Juicy Apple
								{ "o", 203762 },	-- Juicy Apple
							},
							["coord"] = { 55.5, 74.2, STORMWIND_CITY },
						}),
						COOKING_AWARD,
					},
				}),
				q(25157, {	-- The Latest Fashion!
					["qg"] = 50480,	-- Isabel Jones
					["coord"] = { 63.8, 61.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				heroscall(q(40519, {	-- The Legion Returns (Alliance)
					["provider"] = { "n", 167032 },	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
				})),
				q(1274, {	-- The Missing Diplomat (1/17)
					["qg"] = 4982,	-- Thomas <Altar Boy>
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.6, 44.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 28.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1241, {	-- The Missing Diplomat (2/17)
					["sourceQuest"] = 1274,	-- The Missing Diplomat (1/17)
					["providers"] = {
						{ "n", 4960 },	-- Bishop DeLavey
						{ "i", 5948 },	-- Letter to Jorgen
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 80.3, 44.1, STORMWIND_CITY },
						-- #else
						{ 78.4, 25.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1242, {	-- The Missing Diplomat (3/17)
					["sourceQuest"] = 1241,	-- The Missing Diplomat (2/17)
					["providers"] = {
						{ "n", 4959 },	-- Jorgen
						{ "i", 5946 },	-- Sealed Note to Elling
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.3, 85.1, STORMWIND_CITY },
						-- #else
						{ 73.2, 78.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1243, {	-- The Missing Diplomat (4/17)
					["sourceQuest"] = 1242,	-- The Missing Diplomat (3/17)
					["providers"] = {
						{ "n", 482 },	-- Elling Trias <Master of Cheese>
						{ "i", 5960 },	-- Sealed Note to Watcher Backus
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.0, 74.1, STORMWIND_CITY },
						-- #else
						{ 60.0, 64.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUSKWOOD },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1244, {	-- The Missing Diplomat (5/17)
					["sourceQuest"] = 1243,	-- The Missing Diplomat (4/17)
					["qg"] = 840,	-- Watcher Backus
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Docket
							["providers"] = {
								{ "o", 21052 },	-- Defias Strongbox
								{ "i", 5947 },	-- Defias Docket
							},
							["coord"] = { 24.0, 72.1, DUSKWOOD },
						}),
					},
				}),
				q(1245, {	-- The Missing Diplomat (6/17)
					["sourceQuest"] = 1244,	-- The Missing Diplomat (5/17)
					["providers"] = {
						{ "n", 840 },	-- Watcher Backus
						{ "i", 5947 },	-- Defias Docket
					},
					["coord"] = { 73.21, 38.81, DUSKWOOD },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1246, {	-- The Missing Diplomat (7/17)
					["sourceQuest"] = 1245,	-- The Missing Diplomat (6/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.0, 74.1, STORMWIND_CITY },
						-- #else
						{ 60.0, 64.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1447, {	-- The Missing Diplomat (8/17)
					["description"] = "Dashel Stonefist will spawn 2 level 26 adds to fight alongside him.",
					["sourceQuest"] = 1246,	-- The Missing Diplomat (7/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["coords"] = {
						-- #if AFTER WRATH
						{ 74.3, 59.2, STORMWIND_CITY },
						-- #else
						{ 70.5, 44.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1247, {	-- The Missing Diplomat (9/17)
					["sourceQuest"] = 1447,	-- The Missing Diplomat (8/17)
					["qg"] = 4961,	-- Dashel Stonefist
					["coords"] = {
						-- #if AFTER WRATH
						{ 74.3, 59.2, STORMWIND_CITY },
						-- #else
						{ 70.5, 44.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				q(1248, {	-- The Missing Diplomat (10/17)
					["sourceQuest"] = 1247,	-- The Missing Diplomat (9/17)
					["qg"] = 482,	-- Elling Trias <Master of Cheese>
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.0, 74.1, STORMWIND_CITY },
						-- #else
						{ 60.0, 64.3, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 28,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, q(84418, {	-- The Missing Knight
					["qg"] = 5492,	-- Katherine the Pure <Paladin Trainer>
					["coord"] = { 37.4, 32, STORMWIND_CITY },
					["timeline"] = { ADDED_1_15_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						i(228238, {	-- Testament of Divine Steed
							["timeline"] = { ADDED_1_15_3 },
							["spellID"] = 461607,	-- Divine Steed
							["f"] = RECIPES,
						}),
					},
				})),
				-- #endif
				q(46728, {	-- The Nation of Kul Tiras
					["sourceQuest"] = 46727,	-- Battle for Azeroth: Tides of War (BfA version)
					["qg"] = 120756,	-- Anduin Wyrnn
					["coord"] = { 85.0, 32.4, STORMWIND_CITY },
					["timeline"] = { ADDED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27072, {	-- The Old Barracks
					["sourceQuest"] = 28807,	-- Expert Opinion
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coord"] = { 81.2, 63.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2758, {	-- The Origins of Smithing
					["qg"] = 7798,	-- Hank the Hammer
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.0, 36.4, STORMWIND_CITY },
						-- #else
						{ 56.0, 16.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = {
						-- #if SEASON_OF_DISCOVERY
						REMOVED_1_15_1,
						-- #else
						REMOVED_4_0_3,
						-- #endif
					},
					["cost"] = { { "i", 6040, 6 } },	-- Golden Scale Bracers
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(9367, {	-- Plans: Golden Scale Gauntlets (RECIPE!)
							-- #if BEFORE 4.0.3
							["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
							-- #endif
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(80241, {	-- The Origins of Smithing
					["qg"] = 7798,	-- Hank the Hammer
					["coord"] = { 56.0, 16.0, STORMWIND_CITY },
					["timeline"] = { ADDED_1_15_1 },
					["cost"] = { { "i", 6040, 6 } },	-- Golden Scale Bracers
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						i(217274, {	-- Plans: Golden Scale Gauntlets (RECIPE!)
							["description"] = "This item can be sold on the Neutral Auction House to Horde Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Alliance Blacksmiths.",
							["timeline"] = { ADDED_1_15_1 },
						}),
					},
				})),
				-- #endif
				q(543, {	-- The Perenolde Tiara
					["qg"] = 2285,	-- Count Remington Ridgewell
					["coords"] = {
						-- #if AFTER CATA
						{ 81.6, 34.1, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 76.9, 47.8, STORMWIND_CITY },
						-- #else
						{ 74, 30, STORMWIND_CITY },
						-- #endif
					},
					["maps"] = {
						-- #if AFTER CATA
						HILLSBRAD_FOOTHILLS,
						-- #else
						ALTERAC_MOUNTAINS,
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Perenolde Tiara
							["provider"] = { "i", 3684 },	-- Perenolde Tiara
							["coords"] = {
								-- #if AFTER CATA
								{ 45.0, 24.5, HILLSBRAD_FOOTHILLS },
								-- #else
								{ 39.6, 52.8, ALTERAC_MOUNTAINS },
								-- #endif
							},
							["cr"] = 2417,	-- Grel'borg the Miser
						}),
						i(248662, {["timeline"] = { ADDED_11_2_7 }}),	-- Jewelcrafter's Tent (DECOR!)
					},
				}),
				q(58675, {	-- The Price of Peace
					["sourceQuest"] = 58674,	-- A Gathering of Champions
					["qg"] = 162178,	-- Master Mathias Shaw
					["coord"] = { 53.2, 15.0, STORMWIND_CITY },
					["timeline"] = { ADDED_8_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(2998, {	-- The Tome of Divinity (1a/10)
					["altQuests"] = {
						3681,	-- The Tome of Divinity (1b/10)
						1787,	-- The Tome of Divinity (8)
					},
					["qg"] = 927,	-- Brother Wilhelm
					["coord"] = { 41, 66, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(3681, {	-- The Tome of Divinity (1b/10)
					["altQuests"] = {
						2998,	-- The Tome of Divinity (1a/10)
						1787,	-- The Tome of Divinity (8)
					},
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.4, 6.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1641, {	-- The Tome of Divinity (2/10)
					["sourceQuests"] = {
						2998,	-- The Tome of Divinity (1a/10)
						3681,	-- The Tome of Divinity (1b/10)
					},
					["altQuests"] = { 1787 },	-- The Tome of Divinity (8)
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1642, {	-- The Tome of Divinity (3/10)
					["sourceQuest"] = 1641,	-- The Tome of Divinity (2/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6775 },	-- Tome of Divinity
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1643, {	-- The Tome of Divinity (4/10)
					["sourceQuest"] = 1642,	-- The Tome of Divinity (3/10)
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1644, {	-- The Tome of Divinity (5/10)
					["sourceQuest"] = 1643,	-- The Tome of Divinity (4/10)
					["qg"] = 6174,	-- Stephanie Turner
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.8, 72.2, STORMWIND_CITY },
						-- #else
						{ 57, 61.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2589, 10 } },	-- Linen Cloth
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1780, {	-- The Tome of Divinity (6/10)
					["sourceQuest"] = 1644,	-- The Tome of Divinity (5/10)
					["qg"] = 6174,	-- Stephanie Turner
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.8, 72.2, STORMWIND_CITY },
						-- #else
						{ 57, 61.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1781, {	-- The Tome of Divinity (7/10)
					["sourceQuest"] = 1780,	-- The Tome of Divinity (6/10)
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6866 },	-- Symbol of Life
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
				}),
				q(1786, {	-- The Tome of Divinity (8/10)
					["sourceQuest"] = 1781,	-- The Tome of Divinity (7/10)
					["qg"] = 6173,	-- Gazin Tenorm
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.5, 44.9, STORMWIND_CITY },
						-- #else
						{ 38.6, 26.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						q(1790, {	-- The Symbol of Life
							["qg"] = 6171,	-- Duthorian Rall
							["coords"] = {
								-- #if AFTER WRATH
								{ 50.5, 47.5, STORMWIND_CITY },
								-- #else
								{ 39.8, 30.8, STORMWIND_CITY },
								-- #endif
							},
							["timeline"] = { REMOVED_4_0_3 },
							["repeatable"] = true,
							["groups"] = {
								objective(1, {	-- 0/1 Symbol of Life
									["questID"] = 1786,	-- The Tome of Divinity (8/10)
									["provider"] = { "i", 6866 },	-- Symbol of Life
								}),
							},
						}),
					},
				}),
				q(1787, {	-- The Tome of Divinity (9/10)
					["sourceQuest"] = 1786,	-- The Tome of Divinity (8/10)
					["qg"] = 6172,	-- Henze Faulk
					["coord"] = { 72.6, 51.6, ELWYNN_FOREST },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					["groups"] = {
						objective(1, {	-- 0/1 Defias Script
							["provider"] = { "i", 6846 },	-- Defias Script
							["cr"] = 474,	-- Defias Rogue Wizard
						}),
					},
				}),
				q(1788, {	-- The Tome of Divinity (10/10)
					["sourceQuest"] = 1787,	-- The Tome of Divinity (9/10)
					["qg"] = 6173,	-- Gazin Tenorm
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.5, 44.9, STORMWIND_CITY },
						-- #else
						{ 38.6, 26.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { HUMAN },
					["classes"] = { PALADIN },
					["lvl"] = 12,
					-- #if BEFORE 4.0.1
					["groups"] = {
						--recipe(7328),	-- Redemption [Rank 1]
					},
					-- #endif
				}),
				q(4485, {	-- The Tome of Nobility (Stormwind City)
					["qg"] = 5491,	-- Arthur the Faithful <Paladin Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 49.6, 49.9, STORMWIND_CITY },
						-- #else
						{ 38.7, 32.9, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_2_4_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(4486, {	-- The Tome of Nobility (Ironforge)
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.6, IRONFORGE },
					["timeline"] = { REMOVED_2_4_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["isBreadcrumb"] = true,
					["lvl"] = 40,
				}),
				q(1661, {	-- The Tome of Nobility
					["sourceQuests"] = {
						4485,	-- The Tome of Nobility (Stormwind City)
						4486,	-- The Tome of Nobility (Ironforge)
					},
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_2_4_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 40,
					-- #if BEFORE 2.4.3
					["groups"] = {
						mount(13819),	-- Summon Warhorse
					},
					-- #endif
				}),
				q(1794, {	-- The Tome of Valor [Dwarf]
					["qg"] = 5149,	-- Brandur Ironhammer <Paladin Trainer>
					["coord"] = { 23.6, 6.4, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { DWARF },
					["repeatable"] = true,
					["lvl"] = 20,
				}),
				q(1793, {	-- The Tome of Valor [Human]
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = { HUMAN },
					["repeatable"] = true,
					["lvl"] = 20,
				}),
				q(1649, {	-- The Tome of Valor (1/4)
					["sourceQuests"] = {
						1794,	-- The Tome of Valor [Dwarf]
						1793,	-- The Tome of Valor [Human]
					},
					["providers"] = {
						{ "n", 6171 },	-- Duthorian Rall
						{ "i", 6776 },	-- Tome of Valor
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1650, {	-- The Tome of Valor (2/4)
					["sourceQuest"] = 1649,	-- The Tome of Valor (1/4)
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1651, {	-- The Tome of Valor (3/4)
					["sourceQuest"] = 1650,	-- The Tome of Valor (2/4)
					["qg"] = 6182,	-- Daphne Stilwell
					["coord"] = { 42.4, 88.4, WESTFALL },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
				}),
				q(1652, {	-- The Tome of Valor (4/4)
					["sourceQuest"] = 1651,	-- The Tome of Valor (3/4)
					["qg"] = 6171,	-- Duthorian Rall
					["coords"] = {
						-- #if AFTER WRATH
						{ 50.5, 47.5, STORMWIND_CITY },
						-- #else
						{ 39.8, 30.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { PALADIN },
					["lvl"] = 20,
					["groups"] = {
						-- #if BEFORE 4.0.3
						recipe(5502),	-- Sense Undead
						-- #endif
						i(9607, {	-- Bastion of Stormwind
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2607, {	-- The Touch of Zanzil (1/3)
					["sourceQuest"] = 2359,	-- Klaven's Tower
					["qg"] = 332,	-- Master Mathias Shaw <Leader of SI:7>
					["coords"] = {
						-- #if AFTER WRATH
						{ 78.3, 70.7, STORMWIND_CITY },
						-- #else
						{ 75.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
				}),
				q(2608, {	-- The Touch of Zanzil (2/3)
					["sourceQuest"] = 2607,	-- The Touch of Zanzil (1/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["coords"] = {
						-- #if AFTER WRATH
						{ 80.1, 69.9, STORMWIND_CITY },
						-- #else
						{ 78.0, 59.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- Diagnosis Complete
							["description"] = "Type /lay to lie down to be examined.",
						}),
					},
				}),
				q(2609, {	-- The Touch of Zanzil (3/3)
					["sourceQuest"] = 2608,	-- The Touch of Zanzil (2/3)
					["qg"] = 7207,	-- Doc Mixilpixil
					["coords"] = {
						-- #if AFTER WRATH
						{ 80.1, 69.9, STORMWIND_CITY },
						-- #else
						{ 78.0, 59.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 3372, 1 },	-- Leaded Vial
						{ "i", 4371, 1 },	-- Bronze Tube
					},
					["races"] = ALLIANCE_ONLY,
					["classes"] = { ROGUE },
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Simple Wildflowers
							["provider"] = { "i", 3421 },	-- Simple Wildflowers
							["coords"] = {
								-- #if AFTER WRATH
								{ 69.6, 71.6, STORMWIND_CITY },
								-- #else
								{ 64.2, 61.0, STORMWIND_CITY },
								-- #endif
							},
							["crs"] = {
								1302,	-- Bernard Gump <Florist>
								1303,	-- Felicia Gump <Herbalism Supplies>
							},
						}),
						objective(4, {	-- 0/1 Spool of Light Chartreuse Silk Thread
							["providers"] = {
								{ "i",   8431 },	-- Spool of Light Chartreuse Silk Thread
								{ "o", 140911 },	-- Spool of Light Chartreuse Silk Thread
							},
							["coord"] = { 39.9, 46.3, STORMWIND_CITY },
							["coords"] = {
								-- #if AFTER WRATH
								{ 50.4, 60.2, STORMWIND_CITY },
								-- #else
								{ 39.9, 46.5, STORMWIND_CITY },
								-- #endif
							},
						}),
						i(8432, {	-- Eau de Mixilpixil
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(26997, {	-- The Usual Suspects
					["sourceQuest"] = 26977,	-- Twilight Investigation
					["qg"] = 2439,	-- Major Samuelson <Stormwind City Guard>
					["coord"] = { 85.1, 31.0, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(7641, {	-- The Work of Grimand Elmore
					["sourceQuests"] = {
						-- #if SEASON_OF_DISCOVERY
						7670,	-- Lord Grayson Shadowbreaker [Ironforge]
						7638,	-- Lord Grayson Shadowbreaker [Stormwind City]
						-- #else
						7640,	-- Exorcising Terrordale
						-- #endif
					},
					["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.6, 50.0, STORMWIND_CITY },
						-- #else
						{ 37.6, 32.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(26536, {	-- Thunder Falls
					["qg"] = 5494,	-- Catherine Leland
					["coord"] = { 55.0, 69.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["maps"] = { ELWYNN_FOREST },
					["requireSkill"] = FISHING,
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Violet Perch
							["provider"] = { "i", 58899 },	-- Violet Perch
							["coord"] = { 23.9, 59.8, ELWYNN_FOREST },
						}),
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(42782, {	-- To Be Prepared
					["sourceQuest"] = 40519,	-- The Legion Returns
					["qg"] = 107934,	-- Recruiter Lee
					["coord"] = { 36.8, 43.1, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(138450, {	-- Signet of Stormwind
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(7639, {	-- To Show Due Judgment
					["sourceQuest"] = 7637,	-- Emphasis on Sacrifice
					["providers"] = {
						{ "n", 11406 },	-- High Priest Rohan <Priest Trainer>
						{ "i", 18819 },	-- Rohan's Exorcism Censer
					},
					["coord"] = { 25, 8.2, IRONFORGE },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(1449, {	-- To The Hinterlands
					["sourceQuest"] = 1448,	-- In Search of The Temple
					["qg"] = 5384,	-- Brohann Caskbelly <Explorers' League>
					["coords"] = {
						-- #if AFTER WRATH
						{ 69.5, 40.4, STORMWIND_CITY },
						-- #else
						{ 64.3, 20.7, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_HINTERLANDS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 38,
				}),
				q(26977, {	-- Twilight Investigation
					["sourceQuest"] = 26960,	-- My Son, the Prince
					["qg"] = 29611,	-- King Varian Wrynn <King of Stormwind>
					["coord"] = { 85.8, 31.7, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(47222, {	-- Two If By Sea
					["sourceQuests"] = {
						47221,	-- The Hand of Fate
						48506,	-- The Hand of Fate
					},
					["qg"] = 121754,	-- Vereesa Windrunner
					["coord"] = { 21.4, 30.4, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(27060, {	-- Unholy Cow
					["sourceQuest"] = 27044,	-- Peasant Problems
					["qg"] = 44807,	-- Farmer Wollerton
					["coord"] = { 52.0, 5.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(1938, {	-- Ur's Treatise on Shadow Magic
					["sourceQuest"] = 1939,	-- High Sorcerer Andromath
					["qg"] = 5694,	-- High Sorcerer Andromath
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.7, 87.6, STORMWIND_CITY },
						-- #else
						{ 37.6, 81.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { REDRIDGE_MOUNTAINS },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Ur's Treatise on Shadow Magic
							["providers"] = {
								{ "i",   7266 },	-- Ur's Treatise on Shadow Magic
								{ "o", 103628 },	-- Ur's Treatise on Shadow Magic
							},
							["coord"] = { 79.0, 37.6, REDRIDGE_MOUNTAINS },
							["description"] = "Located in one of the bookshelves at the top of the tower.",
						}),
					},
				}),
				q(60969, {	-- Warlords of Draenor: Onward to Adventure in Draenor
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				-- #if ANYCLASSIC
				q(65602, {	-- What Is Love?
					["qg"] = 6122,	-- Gakin the Darkbinder
					["coords"] = {
						-- #if AFTER WRATH
						{ 39.2, 85.2, STORMWIND_CITY },
						-- #else
						{ 25.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Wooden Figurine
							["providers"] = {
								{ "i", 190309 },	-- Wooden Figurine
								{ "o", 375544 },	-- Wooden Figurine
								{ "o", createCustomObject({	-- Archaeologist's Cart [Couldn't find the proper objectID, so I faked it.]
									readable = "Archaeologist's Cart",
									text = {
										en = "Archaeologist's Cart",
										-- TODO: Find the proper translation so it appears on the tooltip.
										-- es = "",
										-- de = "",
										-- fr = "",
										-- it = "",
										-- pt = "",
										-- ru = "",
										-- ko = "",
										cn = "考古学家的车",
										-- tw = "",
									},
								}) },
							},
							["coord"] = { 26, 22, ASHENVALE },
							["cost"] = {{ "i", 190308, 1 }},	-- Burning Torch
						}),
						i(190308, {	-- 0/1 Burning Torch
							["description"] = "You can light the torch using a campfire. If you don't have the cooking skill (or mats), you can go to the campfire near Talen at 15,31. Once lit, toss the torch on to the Archaeologist's Cart.",
							["providers"] = {
								{ "i", 190307 },	-- Unlit Torch
								{ "o", createCustomObject({	-- Unlit Torch [Couldn't find the proper objectID, so I faked it.]
									readable = "Unlit Torch",
									model = 201129,
									icon = 135434,
									text = {
										en = "Unlit Torch",
										es = "Antorcha apagada",
										de = "Nicht angezündete Fackel",
										fr = "Torche éteinte",
										it = "Unlit Torch",
										pt = "Tocha Apagada",
										ru = "Незажженный факел",
										ko = "불을 붙이지 않은 횃불",
										cn = "未点燃的火把",
									},
								}) },
							},
							["coords"] = {
								{ 26.79, 22.42, ASHENVALE },
								{ 15, 31, ASHENVALE },
							},
						}),
					},
				}),
				-- #endif
				q(58502, {	-- Where the Heart Is
					["sourceQuest"] = 58498,	-- Return of the Warrior King
					["qg"] = 154532,	-- Magni Bronzebeard <The Speaker>
					["coord"] = { 87.5, 35.5, STORMWIND_CITY },
					["timeline"] = { ADDED_8_3_0 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(332, {	-- Wine Shop Advert
					-- #if BEFORE CATA
					["sourceQuest"] = 61,	-- Shipment to Stormwind
					-- #endif
					["providers"] = {
						{ "n", 1432 },	-- Renato Gallina
						{ "i", 2722 },	-- Wine Ticket (PQI!)
					},
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.8, 73.6, STORMWIND_CITY },
						-- #else
						{ 57.0, 63.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2723),	-- Bottle of Dalaran Noir
					},
				}),
				q(60962, {	-- Wrath of the Lich King: Onward to Adventure in Northrend
					["sourceQuest"] = 60096,	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.2, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60096, {	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 56.3, 17.3, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(397, {	-- You Have Served Us Well
					["sourceQuest"] = 336,	-- A Noble Brew (2/2)
					["qg"] = 1435,	-- Zardeth of the Black Claw
					["coords"] = {
						-- #if AFTER WRATH
						{ 40.1, 85.3, STORMWIND_CITY },
						-- #else
						{ 26.4, 78.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["classes"] = { WARLOCK },
					["lvl"] = 25,
					["groups"] = {
						i(3556, {	-- Dread Mage Hat
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78297, {	-- You've Got Yourself A Deal [A]
					["sourceQuest"] = 78287,	-- Let Me Make You An Offer [A]
					["providers"] = {
						{ "n",   8383 },	-- Master Wood
						{ "i", 211448 },	-- Signed Procurement Contract
					},
					["coord"] = { 79.2, 47.6, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { THE_BARRENS },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(210210),	-- Grizzwerks Defense Industries Founder's Certificate
					},
				})),
				-- #endif
			}),
			n(RARES, {
				n(130828, {	-- Gordon MacKellar
					["coord"] = { 43.0, 78.0, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(134831, {	-- Doomsayer's Robes (TOY!)
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(3581, {	-- Sewer Beast
					["coords"] = {
						-- #if AFTER CATA
						{ 48.4, 61.8, STORMWIND_CITY },
						{ 54.6, 65.6, STORMWIND_CITY },
						{ 56.0, 72.8, STORMWIND_CITY },
						{ 58.4, 79.2, STORMWIND_CITY },
						{ 58.4, 42.0, STORMWIND_CITY },
						{ 62.8, 51.8, STORMWIND_CITY },
						{ 71.0, 48.8, STORMWIND_CITY },
						{ 67.0, 55.0, STORMWIND_CITY },
						{ 66.0, 61.2, STORMWIND_CITY },
						{ 68.8, 64.2, STORMWIND_CITY },
						{ 70.6, 68.0, STORMWIND_CITY },
						-- #else
						{ 49.8, 22.6, STORMWIND_CITY },
						{ 53.8, 30.6, STORMWIND_CITY },
						{ 66.8, 32.2, STORMWIND_CITY },
						{ 62.6, 38.0, STORMWIND_CITY },
						{ 66.6, 57.0, STORMWIND_CITY },
						{ 62.4, 50.2, STORMWIND_CITY },
						{ 35.2, 42.4, STORMWIND_CITY },
						{ 38.6, 47.4, STORMWIND_CITY },
						{ 31.4, 64.4, STORMWIND_CITY },
						{ 34.2, 60.2, STORMWIND_CITY },
						{ 50.0, 69.6, STORMWIND_CITY },
						{ 47.2, 61.6, STORMWIND_CITY },
						-- #endif
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(204070, {	-- Soboz
					-- TODO: Try to get an objectID for this.
					--["provider"] = { "o",  },	-- Summoning Circle
					["coord"] = { 25.8, 76.2, STORMWIND_CITY },
					["cost"] = {
						{ "i", 204905, 1 },	-- Ominous Tome
						{ "i", 204906, 1 },	-- Gnoll Blood
						{ "i", 204907, 1 },	-- Wolf Jawbone
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(204912, {	-- Rune of Grace
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(425477),	-- Engrave Pants - Demonic Grace
							},
						}),
					},
				})),
				-- #endif
				n(112958, {	-- Soulare of Andorhal
					["description"] = "Emote |cFFFFFFFF/tired|r at him to get the toy. Horde players can do this, too!",
					["coord"] = { 38.1, 64.4, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["groups"] = {
						i(117573, {	-- Wayfarer's Bonfire (TOY!)
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
			}),
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(205864, {	-- Charred Note
					["questID"] = 75940,	-- Charred Note HQT
					["sourceQuest"] = 75939,	-- Brother Romulus HQT
					["provider"] = { "o", 402215 },	-- Charred Note
					["coord"] = { 33.0, 24.75, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DUSKWOOD },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(SOD_PHASE_ONE, i(205897, {	-- Rune of Martyrdom
					["questID"] = 75969,	-- Ada Gelhardt HQT
					["sourceQuest"] = 75940,	-- Charred Note HQT
					["provider"] = { "n", 205153 },	-- Ada Gelhardt
					["coord"] = { 4.3, 28.25, DUSKWOOD },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						recipe(410015),	-- Engrave Chest - Seal of Martyrdom
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["description"] = "Looting the chest will spawn 2 muggers. Beware!",
					["provider"] = { "o", 386777 },	-- Dusty Chest
					["coord"] = { 61.9, 29.3, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(69334, {	-- Adherent Hanjun <Tushui Quartermaster>
					["coord"] = { 68.0, 17.0, STORMWIND_CITY },
					["timeline"] = { ADDED_5_2_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(92071, {	-- Tushui Satchel
							["minReputation"] = { FACTION_TUSHUI_PANDAREN, REVERED },	-- Tushui Pandaren, Revered.
							["timeline"] = { ADDED_5_1_0 },
						}),
						i(83079, {	-- Tushui Tabard
							["timeline"] = { ADDED_5_0_4 },
						}),
					},
				}),
				-- #if AFTER 10.0.5
				n(1294, {	-- Aldric Moore <Mail Armor Merchant>
					["coord"] = { 62.2, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						i(847),	-- Chainmail Armor
						i(1845),	-- Chainmail Belt
						i(849),	-- Chainmail Boots
						i(1846),	-- Chainmail Bracers
						i(850),	-- Chainmail Gloves
						i(848),	-- Chainmail Pants
						i(2392),	-- Light Mail Armor
						i(2393),	-- Light Mail Belt
						i(2395),	-- Light Mail Boots
						i(2396),	-- Light Mail Bracers
						i(2397),	-- Light Mail Gloves
						i(2394),	-- Light Mail Leggings
						i(129),	-- Rugged Trapper's Boots
						i(147),	-- Rugged Trapper's Pants
						i(58232),	-- Rugged Trapper's Vest
						i(1853),	-- Scalemail Belt
						i(287),	-- Scalemail Boots
						i(1852),	-- Scalemail Bracers
						i(718),	-- Scalemail Gloves
						i(286),	-- Scalemail Pants
						i(285),	-- Scalemail Vest
						i(23348),	-- Scout's Boots
						i(23344),	-- Scout's Pants
						i(58240),	-- Scout's Vest

						-- SHAMAN --
						i(52540),	-- Primal Boots
						i(52539),	-- Primal Pants
						i(52535),	-- Primal Pants
						i(52538),	-- Primal Robe
						i(52534),	-- Primal Robe
					}),
				}),
				-- #endif
				n(1347, {	-- Alexandra Bolero <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.2, 81.6, STORMWIND_CITY },
						-- #else
						{ 43.4, 74.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = {
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(10325, {	-- Pattern: White Wedding Dress (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(1315, {	-- Allan Hafgan <Staves Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 52.9, 75.2, STORMWIND_CITY },
						-- #else
						{ 43.0, 65.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2527),	-- Battle Staff
						i(2535),	-- War Staff
					},
				}),
				-- #if AFTER 10.0.5
				n(53641, {	-- Allison Potts <Heavy Armor Merchant>
					["coord"] = { 64.8, 48.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						i(2419),	-- Augmented Chain Belt
						i(2420),	-- Augmented Chain Boots
						i(2421),	-- Augmented Chain Bracers
						i(2422),	-- Augmented Chain Gloves
						i(3891),	-- Augmented Chain Helm
						i(2418),	-- Augmented Chain Leggings
						i(2417),	-- Augmented Chain Vest
						i(2424),	-- Brigandine Belt
						i(2426),	-- Brigandine Boots
						i(2427),	-- Brigandine Bracers
						i(2428),	-- Brigandine Gloves
						i(3894),	-- Brigandine Helm
						i(2425),	-- Brigandine Leggings
						i(2423),	-- Brigandine Vest
						i(2451),	-- Crested Heater Shield
						i(2448),	-- Heavy Pavise
						i(2446),	-- Kite Shield
						i(17189),	-- Metal Buckler
						i(17190),	-- Ornate Buckler
						i(8094),	-- Platemail Armor
						i(8088),	-- Platemail Belt
						i(8089),	-- Platemail Boots
						i(8090),	-- Platemail Bracers
						i(8091),	-- Platemail Gloves
						i(8092),	-- Platemail Helm
						i(8093),	-- Platemail Leggings
						i(2148),	-- Polished Scale Belt
						i(2149),	-- Polished Scale Boots
						i(2150),	-- Polished Scale Bracers
						i(2151),	-- Polished Scale Gloves
						i(2152),	-- Polished Scale Leggings
						i(2153),	-- Polished Scale Vest
						i(17192),	-- Reinforced Targe

						-- Now any class and race can buy this
						-- PALADIN --
						i(43),	-- Squire's Boots
						i(52533),	-- Squire's Boots
						i(44),	-- Squire's Pants
						i(23477),	-- Squire's Pants
						i(58233),	-- Squire's Vest
						i(58242),	-- Squire's Vest

						-- WARRIOR --
						i(40),	-- Recruit's Boots
						i(6122),	-- Recruit's Boots
						i(23475),	-- Recruit's Boots
						i(39),	-- Recruit's Pants
						i(6121),	-- Recruit's Pants
						i(23474),	-- Recruit's Pants
						i(58231),	-- Recruit's Vest
						i(58244),	-- Recruit's Vest
						i(58243),	-- Recruit's Vest
					}),
				}),
				-- #endif
				n(1312, {	-- Ardwyn Cailen <Wand Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 52.8, 75.2, STORMWIND_CITY },
						-- #else
						{ 42.8, 65.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(5239),	-- Blackbone Wand
						i(5210),	-- Burning Wand
						i(5236),	-- Combustible Wand
						i(5211),	-- Dusk Wand
						i(5209),	-- Gloom Wand
						i(5347),	-- Pestilent Wand
						i(5238),	-- Pitchwood Wand
						i(5208),	-- Smoldering Wand
					},
				}),
				n(55285, {	-- Astrid Langstrump <Mountain Horse Handler>
					["coord"] = { 52.4, 8.2, STORMWIND_CITY },
					-- Available to Worgen without faction requirements.
					["minReputation"] = { FACTION_GILNEAS, EXALTED },	-- Gilneas, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. WORGEN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					-- Astrid can only be found in Darnassus after 10.2.5: Reclamation of Gilneas.
					["timeline"] = { ADDED_8_0_1, REMOVED_10_2_5 },
					["groups"] = {
						i(73838, {	-- Mountain Horse (MOUNT!)
							["timeline"] = { ADDED_4_3_0 },
						}),
						i(73839, {	-- Swift Mountain Horse (MOUNT!)
							["timeline"] = { ADDED_4_3_0 },
						}),
					},
				}),
				n(1349, {	-- Agustus Moulaine <Mail Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.6, 57.8, STORMWIND_CITY },
						-- #else
						{ 43.8, 43.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
				}),
				n(1302, {	-- Bernard Gump <Florist>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.2, 71.8, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 69.6, 71.4, STORMWIND_CITY },
						-- #else
						{ 64.2, 61.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "select","itemID",
							2453,	-- Bruiseweed
							2449,	-- Earthroot
							3356,	-- Kingsblood
							3357,	-- Liferoot
							785,	-- Mageroyal
							3355,	-- Wild Steelbloom
						},
					},
					["groups"] = {
						i(3422),	-- Beautiful Wildflowers
						i(3420),	-- Black Rose
						i(3424),	-- Bouquet Of Black Roses
						i(3423),	-- Bouquet Of White Roses
						i(3419),	-- Red Rose
						i(3421),	-- Simple Wildflowers
					},
				}),
				n(5514, {	-- Brooke Stonebraid <Mining Supplies>
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.15, 37.5, STORMWIND_CITY },
						-- #else
						{ 51.6, 16.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4256 }},	-- Golnir Bouldertoe <Mining Supplies>
				}),
				n(1319, {	-- Bryan Cross <Shield Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 69.6, 57.8, STORMWIND_CITY },
						-- #else
						{ 64.6, 43.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						17192,	-- Reinforced Targe
					}},
					["groups"] = {
						i(2445),	-- Large Metal Shield
						i(17188),	-- Ringed Buckler
					},
				}),
				n(69975, {	-- Captain Dirgehammer <Cataclysmic Gladiator>
					["coord"] = { 75.0, 67.5, STORMWIND_CITY },
					["timeline"] = { ADDED_5_2_0 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_GLADIATOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(54661, {	-- Captain Dirgehammer <Conquest Quartermaster> // Original S11 Vendor // Cataclysmic Gladiator: Season 11 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE MOP
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_GLADIATOR },{ "pop" }},	-- Cataclysmic Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(52546, {	-- Captain Dirgehammer <Conquest Quartermaster> // Original S10 Vendor // Ruthless Gladiator: Season 10 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE MOP
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR },{ "pop" }},	-- Ruthless Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(CATA_PHASE_ONE, n(51254, {	-- Captain Dirgehammer <Conquest Quartermaster> // Original S9 Vendor // Vicious Gladiator: Season 9 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE MOP
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_GLADIATOR },{ "pop" }},	-- Vicious Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_FOUR, n(34075, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S8 Vendor // Relentless Gladiator: Season 8 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR },{ "pop" }},	-- Relentless Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34074, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S7 Vendor // Furious Gladiator: Season 7 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{ "pop" }},	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34073, {	-- Captain Dirgehammer <Apprentice Armor Quartermaster> // Original S6 Vendor // Deadly Gladiator: Season 6 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32381, {	-- Captain Dirgehammer // Original S5 Vendor // Hateful Gladiator: Season 5 Gladiator Gear
					["coord"] = { 75.0, 67.4, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				n(12777, {	-- Captain Dirgehammer <Armor Quartermaster>
					-- #if BEFORE TBC
					["description"] = "Found within the Champion's Hall.",
					-- #else
					["coord"] = { 75.0, 67.5, STORMWIND_CITY },
					-- #endif
					["timeline"] = { REMOVED_3_0_2 },
					-- #if BEFORE TBC
					["sym"] = {	-- Grand Marshal Armor
						{"sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE },
						{ "pop" },
						{ "exclude", "headerID", WEAPONS },
						-- #if BEFORE WRATH
						{ "exclude", "f", TRINKET_F, NECK_F },
						-- #endif
					},
					-- #elseif BEFORE 3.0.2.8970
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_VENGEFUL, PVP_GLADIATOR }, { "finalize" },	-- Vengeful Gladiator's Set
						{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_MERCILESS, PVP_GLADIATOR }, { "finalize" },	-- Merciless Gladiator's Set
						{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_GLADIATOR, PVP_GLADIATOR }, { "finalize" },	-- Gladiator's Set
						{"sub", "pvp_gear_base", EXPANSION.TBC, PVP_HONOR, FACTION_HEADER_ALLIANCE },{ "finalize" },	-- Honor Set
						{"merge"},
						{"pop"},
						{ "exclude", "headerID", WEAPONS, BACK },
						{ "exclude", "filterID", NECK_F, FINGER_F, RELICS_F, TRINKET_F },
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				n(49877, {	-- Captain Lancy Revshon <Stormwind Quartermaster>
					["coord"] = { 67.6, 72.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_STORMWIND, {
						{		-- Neutral
						}, {	-- Friendly
							i(248797, {["timeline"] = { ADDED_11_2_7 }}),	-- City Wanderer's Candleholder (DECOR!)
							i(253168, {["timeline"] = { ADDED_11_2_7 }}),	-- Earthen Storage Crate (DECOR!)
							i(248794, {["timeline"] = { ADDED_11_2_7 }}),	-- Elwynn Fence (DECOR!)
							i(248795, {["timeline"] = { ADDED_11_2_7 }}),	-- Elwynn Fencepost (DECOR!)
							i(248938, {["timeline"] = { ADDED_11_2_7 }}),	-- Hooded Iron Lantern (DECOR!)
							i(248662, {	-- Jewelcrafter's Tent (DECOR!)
								["sourceQuest"] = 543,	-- The Perenolde Tiara
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(248798, {["timeline"] = { ADDED_11_2_7 }}),	-- Northshire Barrel (DECOR!)
							i(248621, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Arched Trellis (DECOR!)
							i(256673, {	-- Stormwind Forge (DECOR!)
								["sourceQuest"] = 7604,	-- A Binding Contract
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(45574, {["timeline"] = { ADDED_3_1_0 }}),	-- Stormwind Tabard
							i(248801, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Weapon Rack (DECOR!)
							i(248336, {	-- Stormwind Wooden Table (DECOR!)
								["sourceQuest"] = 59583,	-- Welcome to Stormwind
								["timeline"] = { ADDED_11_2_7 },
							}),
							i(248618, {["timeline"] = { ADDED_11_2_7 }}),	-- Westfall Woven Basket (DECOR!)
						}, {	-- Honored
							i(248939, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Lamppost (DECOR!)
							i(248333, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Large Wooden Table (DECOR!)
						}, {	-- Revered
							i(248617, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Keg Stand (DECOR!)
							i(67531, {["timeline"] = { ADDED_4_0_3 }}),	-- Stormwind Satchel
							i(248620, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Trellis and Basin (DECOR!)
						}, {	-- Exalted
							i(64902, {["timeline"] = { ADDED_4_0_1 }}),	-- Cape of Stormwind
							i(64901, {["timeline"] = { ADDED_4_0_1 }}),	-- Mantle of Stormwind
							i(64903, {["timeline"] = { ADDED_4_0_1 }}),	-- Shroud of Stormwind
							i(248619, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Gazebo (DECOR!)
							i(248665, {["timeline"] = { ADDED_11_2_7 }}),	-- Stormwind Peddler's Cart (DECOR!)
						},
					}),
				}),
				n(32379, {	-- Captain O'Neal <Jewelcrafting Quartermaster>
					["coord"] = { 75.0, 66.7, STORMWIND_CITY },
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						moh(1, i(28118, {	-- Brilliant Ornate Ruby
							["timeline"] = { ADDED_2_0_1 },
						})),
						moh(1, i(28119, {	-- Smooth Ornate Dawnstone
							["timeline"] = { ADDED_2_0_1 },
						})),
						moh(1, i(28120, {	-- Gleaming Ornate Dawnstone
							["timeline"] = { ADDED_2_0_1, REMOVED_4_0_1 },
						})),
						moh(1, i(28123, {	-- Potent Ornate Topaz
							["timeline"] = { ADDED_2_0_1 },
						})),
						moh(1, i(28362, {	-- Delicate Ornate Ruby
							["timeline"] = { ADDED_2_0_1 },
						})),
						moh(1, i(28363, {	-- Deadly Ornate Topaz
							["timeline"] = { ADDED_2_0_1 },
						})),
					}),
				}),
				-- 34081: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 4?)
				-- 34080: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 3?)
				-- 34079: Captain O'Neal <Jewelcrafting Quartermaster> (Wrath season 2?)
				n(12782, {	-- Captain O'Neal <Weapons Quartermaster>
					-- #if BEFORE WRATH
					["description"] = "Found within the Champion's Hall.",
					-- #endif
					["timeline"] = { REMOVED_3_0_2 },
					-- #if BEFORE 3.0.2.8970
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE, WEAPONS },{ "pop" }},	-- Grand Marshal Weapons
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				n(32379, {	-- Captain O'Neal <Jewelcrafting Quartermaster>
					["coord"] = { 75.0, 66.7, STORMWIND_CITY },
					["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						-- #if BEFORE CATA
						i(41563),	-- Design: Durable Huge Citrine (RECIPE!)
						i(41564),	-- Design: Empowered Huge Citrine (RECIPE!)
						i(41565),	-- Design: Lucent Huge Citrine (RECIPE!)
						i(41575),	-- Design: Mysterious Shadow Crystal (RECIPE!)
						i(41559),	-- Design: Mystic Sun Crystal (RECIPE!)
						i(41573),	-- Design: Opaque Dark Jade (RECIPE!)
						i(41566),	-- Design: Resplendent Huge Citrine (RECIPE!)
						i(41569),	-- Design: Shattered Dark Jade (RECIPE!)
						i(41572),	-- Design: Steady Dark Jade (RECIPE!)
						i(41560),	-- Design: Stormy Chalcedony (RECIPE!)
						i(41570),	-- Design: Tense Dark Jade (RECIPE!)
						i(41571),	-- Design: Turbid Dark Jade (RECIPE!)
						-- #else
						i(41564),	-- Design: Lucent Huge Citrine (RECIPE!)
						i(41565),	-- Design: Lucent Huge Citrine (RECIPE!)
						i(41575),	-- Design: Mysterious Shadow Crystal (RECIPE!)
						i(41559),	-- Design: Mystic Sun Crystal (RECIPE!)
						i(41570),	-- Design: Radiant Dark Jade (RECIPE!)
						i(41566),	-- Design: Resplendent Huge Citrine (RECIPE!)
						i(41569),	-- Design: Shattered Dark Jade (RECIPE!)
						i(41572),	-- Design: Steady Dark Jade (RECIPE!)
						i(41560),	-- Design: Stormy Chalcedony (RECIPE!)
						i(41571),	-- Design: Turbid Dark Jade (RECIPE!)
						i(41573),	-- Design: Turbid Dark Jade (RECIPE!)
						i(41563),	-- Design: Willful Huge Citrine (RECIPE!)
						-- #endif
					}),
				}),
				n(1291, {	-- Carla Granger <Cloth Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 62.2, 67.6, STORMWIND_CITY },
						-- #else
						{ 55.0, 56.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(16059),	-- Common Brown Shirt
						i(3428),	-- Common Grey Shirt
						i(16060),	-- Common White Shirt
						i(837),	-- Heavy Weave Armor
						i(3589),	-- Heavy Weave Belt
						i(3590),	-- Heavy Weave Bracers
						i(839),	-- Heavy Weave Gloves
						i(838),	-- Heavy Weave Pants
						i(840),	-- Heavy Weave Shoes
						i(3602),	-- Knitted Belt
						i(3603),	-- Knitted Bracers
						i(793),	-- Knitted Gloves
						i(794),	-- Knitted Pants
						i(792),	-- Knitted Sandals
						i(795),	-- Knitted Tunic
						i(3597),	-- Thick Cloth Belt
						i(3598),	-- Thick Cloth Bracers
						i(203),	-- Thick Cloth Gloves
						i(201),	-- Thick Cloth Pants
						i(202),	-- Thick Cloth Shoes
						i(200),	-- Thick Cloth Vest
						-- #if AFTER 10.0.5
						-- Now any class and race can buy this
						-- MAGE --
						i(55, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52554, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(1395, {	-- Apprentice's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(56, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52553, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23478, {	-- Recruit's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23479, {	-- Recruit's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- PRIEST --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23322, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(51, {	-- Neophyte's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6098, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6119, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- WARLOCK --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(57, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(59, {	-- Acolyte's Shoes
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- ??? --
						i(6116, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23350, {	-- Battleworn Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23349, {	-- Battleworn Shoes
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23472, {	-- Rugged Trapper's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(23471, {	-- Rugged Trapper's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6118, {	-- Squire's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
					},
				}),
				n(5494, {	-- Catherine Leland <Fishing Supplier>
					["coords"] = {
						-- #if AFTER WRATH
						{ 55.0, 69.6, STORMWIND_CITY },
						-- #else
						{ 45.8, 58.5, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(6325),	-- Recipe: Brilliant Smallfish (RECIPE!)
						i(6330),	-- Recipe: Bristle Whisker Catfish (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
					},
				}),
				n(1307, {	-- Charys Yserian <Arcane Trinkets Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 44.8, 86.2, STORMWIND_CITY },
						-- #else
						{ 32.4, 79.9, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(4824, {	-- Blurred Axe
							["isLimited"] = true,
						}),
						i(4825, {	-- Callous Axe
							["isLimited"] = true,
						}),
						i(4829, {	-- Dreamer's Belt
							["isLimited"] = true,
						}),
						i(4826, {	-- Marauder Axe
							["isLimited"] = true,
						}),
						i(4828, {	-- Nightwind Belt
							["isLimited"] = true,
						}),
						i(4827, {	-- Wizard's Belt
							["isLimited"] = true,
						}),
					},
				}),
				n(52358, {	-- Craggle Wobbletop <Toys and Novelties>
					["coords"] = {
						{ 66.6, 64.4, STORMWIND_CITY },
						{ 63.6, 61.2, STORMWIND_CITY },
						{ 56.6, 67.6, STORMWIND_CITY },
						{ 58.6, 76.8, STORMWIND_CITY },
					},
					["timeline"] = { ADDED_4_1_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(54436, {	-- Blue Clockwork Rocket Bot (PET!)
							["timeline"] = { ADDED_3_3_3 },
						}),
						i(95621, {	-- Warbot (PET!)
							["timeline"] = { ADDED_5_2_0 },
						}),
						i(54343, {	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
							["timeline"] = { ADDED_3_3_3 },
						}),
						i(104324, {	-- Foot Ball (TOY!)
							["timeline"] = { ADDED_5_4_0 },
						}),
						applyevent(EVENTS.CHILDRENS_WEEK, i(69895, {	-- Green Balloon Toy (TOY!)
							["timeline"] = { ADDED_4_1_0 },
						})),
						i(48601, {	-- Red Rider Air Rifle Ammo
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(137663, {	-- Soft Foam Sword (TOY!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(104323, {	-- The Swineskin (TOY!)
							["timeline"] = { ADDED_5_4_0 },
						}),
						i(54438, {	-- Tiny Blue Ragdoll (TOY!)
							["timeline"] = { ADDED_3_3_3 },
						}),
						i(54437, {	-- Tiny Green Ragdoll (TOY!)
							["timeline"] = { ADDED_3_3_3 },
						}),
						i(44606, {	-- Toy Train Set Toy (TOY!)
							["timeline"] = { ADDED_3_0_2 },
						}),
						i(45057, {	-- Wind-Up Train Wrecker Toy (TOY!)
							["timeline"] = { ADDED_3_1_0 },
						}),
						applyevent(EVENTS.CHILDRENS_WEEK, i(69896, {	-- Yellow Balloon Toy (TOY!)
							["timeline"] = { ADDED_4_1_0 },
						})),
					},
				}),
				n(133411, {	-- Dalia Skyblossom <Cooking Trainer>
					["coord"] = { 51.4, 18.0, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "select","itemID",
							159,	-- Refreshing Spring Water
							30817,	-- Simple Flour
							2678,	-- Mild Spices
						},
					},
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(1304, {	-- Darian Singh <Fireworks Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 42.6, 76.8, STORMWIND_CITY },
						-- #else
						{ 29.6, 67.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(18649, {	-- Schematic: Blue Firework (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(50669, {	-- Dawn Radue <Bag Merchant>
					["coord"] = { 64.8, 71.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(67396, {	-- "Carriage - Christina" Precious Metal Bag
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67389, {	-- "Carriage - Exclusive" Enchanting Evening Purse
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67392, {	-- "Carriage - Exclusive" Gem Studded Clutch
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67393, {	-- "Carriage - Going Green" Herb Tote Bag
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67390, {	-- "Carriage - Maddy" High Tech Bag
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67395, {	-- "Carriage - Meeya" Leather Bag
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67394, {	-- "Carriage - Xandera" Student's Satchel
							["timeline"] = { ADDED_4_0_1 },
						}),
						i(67387, {	-- "Carriage" Signature Bag
							["timeline"] = { ADDED_4_0_1 },
						}),
					},
				}),
				n(1314, {	-- Duncan Cullen <Light Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.2, 81.8, STORMWIND_CITY },
						-- #else
						{ 43.6, 74.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2142),	-- Cuirboulli Belt
						i(2143),	-- Cuirboulli Boots
						i(2144),	-- Cuirboulli Bracers
						i(2145),	-- Cuirboulli Gloves
						i(2146),	-- Cuirboulli Pants
						i(2141),	-- Cuirboulli Vest
						i(2435),	-- Embroidered Armor
						i(3587),	-- Embroidered Belt
						i(2438),	-- Embroidered Boots
						i(3588),	-- Embroidered Bracers
						i(2440),	-- Embroidered Gloves
						i(3892),	-- Embroidered Hat
						i(2437),	-- Embroidered Pants
						i(2160),	-- Padded Armor
						i(3591),	-- Padded Belt
						i(2156),	-- Padded Boots
						i(3592),	-- Padded Bracers
						i(2158),	-- Padded Gloves
						i(2159),	-- Padded Pants
						i(2471),	-- Reinforced Leather Belt
						i(2473),	-- Reinforced Leather Boots
						i(2474),	-- Reinforced Leather Bracers
						i(3893),	-- Reinforced Leather Cap
						i(2475),	-- Reinforced Leather Gloves
						i(2472),	-- Reinforced Leather Pants
						i(2470),	-- Reinforced Leather Vest
						i(3593),	-- Russet Belt
						i(2432),	-- Russet Boots
						i(3594),	-- Russet Bracers
						i(2434),	-- Russet Gloves
						i(3889),	-- Russet Hat
						i(2431),	-- Russet Pants
						i(2429),	-- Russet Vest
						i(2464),	-- Studded Belt
						i(2467),	-- Studded Boots
						i(2468),	-- Studded Bracers
						i(2463),	-- Studded Doublet
						i(2469),	-- Studded Gloves
						i(3890),	-- Studded Hat
						i(2465),	-- Studded Pants
					},
				}),
				n(52029, {	-- Edlan Halsing <Bloodthirsty Gladiator> [LEGION+] / Edlan Halsing <Honor Trade Goods>
					["coord"] = { 74.7, 68.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 7.0.3
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_HONOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
					},
					-- #else
					-- Used to just sell trade goods for Cataclysm (Embersilk, Shards, Ore, etc)
					-- #endif
				}),
				n(1286, {	-- Edna Mullby <Trade Supplies> [TBC+] / Edna Mullby <Trade Supplier>
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.6, 71.6, STORMWIND_CITY },
						-- #else
						{ 58.2, 60.5, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20856, {	-- Design: Heavy Golden Necklace of Battle (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(213077, {	-- Elaine Compton <Supply Officer>
					["coord"] = { 54.8, 62.0, STORMWIND_CITY },
					["groups"] = bubbleDownClassicRep(AZEROTH_COMMERCE_AUTHORITY, {
						{	-- Neutral
						},
						{	-- Friendly
						},
						{	-- Honored
							i(211247),	-- Pattern: Phoenix Bindings (RECIPE!)
						},
						{	-- Revered
						},
						{	-- Exalted
						},
					}),
				}),
				-- #endif
				n(483, {	-- Elaine Trias <Mistress of Cheese>
					["coords"] = {
						-- #if AFTER WRATH
						{ 66.6, 73.4, STORMWIND_CITY },
						-- #else
						{ 60.6, 63.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8932),	-- Alterac Swiss
						i(414),		-- Dalaran Sharp
						i(2070),	-- Darnassian Bleu
						i(422),		-- Dwarven Mild
						i(3927),	-- Fine Aged Cheddar
						i(1707),	-- Stormwind Brie
					},
				}),
				n(5503, {	-- Eldraeith <Herbalism Supplies> [TBC+] / Eldraeith <Herbalism Supplier>
					["coords"] = {
						-- #if AFTER WRATH
						{ 55.6, 85.6, STORMWIND_CITY },
						-- #else
						{ 46.6, 78.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4216 }},	-- Chardryn <Herbalism Supplies>
				}),
				n(1328, {	-- Elly Langston <Barmaid>
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.0, 53.4, STORMWIND_CITY },	-- Pig and Whistle Tavern
						-- #else
						{ 73.0, 37.0, STORMWIND_CITY },	-- Pig and Whistle Tavern
						-- #endif
					},
					["description"] = "Elly is walking around in the Tavern.",
					["races"] = ALLIANCE_ONLY,
				}),
				n(5483, {	-- Erika Tate <Cooking Supplies> [TBC+] / Erika Tate <Cooking Supplier>
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.6, 53.2, STORMWIND_CITY },
						-- #else
						{ 76.0, 36.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(164942, {	-- Evelyn Thorn <Warlock Trainer>
					["coord"] = { 79.4, 69.8, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["groups"] = {
						i(189719, {	-- Tattered Collar of the Incubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
						i(189720, {	-- Tattered Collar of the Succubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
					},
				}),
				n(44245, {	-- Faldren Tillsdale
					["coord"] = { 76.1, 66.8, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_THIRTEEN_GROUPS,
					-- #if AFTER 4.3.0
					["description"] = "Sells gear related to Cataclysm raid tier 13 (Dragon Soul).",
					-- #endif
				}),
				n(1303, {	-- Felicia Gump <Herbalism Supplier>
					["coords"] = {
						-- #if AFTER CATA
						{ 69.3, 71.4, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 64.2, 60.6, STORMWIND_CITY },
						-- #else
						{ 64.2, 60.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3422,	-- Beautiful Wildflowers
						3420,	-- Black Rose
						3424,	-- Bouquet Of Black Roses
						3423,	-- Bouquet Of White Roses
						3419,	-- Red Rose
						3421,	-- Simple Wildflowers
					}},
					["groups"] = {
						i(2665),	-- Stormwind Seasoning Herbs
					},
				}),
				n(179896, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Finn
					["coord"] = { 61.6, 65.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(187009),	-- Dazzling Spectacles
						i(186092),	-- Historical Perspective Shifters
						i(186091),	-- Onyx Glare-Reducers
						i(186090),	-- Simple Glasses
						i(187010),	-- Tasteful Eyeglasses
					},
				})),
				n(1298, {	-- Frederick Stover <Bow & Arrow Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 58.6, 69.0, STORMWIND_CITY },
						-- #else
						{ 50.3, 57.7, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						3027,	-- Heavy Recurve Bow
						3026,	-- Reinforced Bow
					}},
					["groups"] = {
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				n(6122, {	-- Gakin the Darkbinder
					["coord"] = { 25.6, 77.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						applyclassicphase(SOD_PHASE_ONE, i(205215, {	-- Rune of Tactics
							["cost"] = {{ "i", 205183, 1 }},	-- Fel-Powered Artifact
							["classes"] = { WARLOCK },
							["groups"] = {
								recipe(416009),	-- Engrave Chest - Demonic Tactics
							},
						})),
					},
				}),
				-- #endif
				n(164947, { -- Gerald Black <Shady Dealer>
					["coord"] = { 78.8, 70.6, STORMWIND_CITY },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "select", "npcID", 99863 }, { "pop" }},	-- Jenri <Spymaster>
				}),
				n(1333, {	-- Gerik Koen <Two Handed Weapon Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 73.2, 57.2, STORMWIND_CITY },
						-- #else
						{ 69.0, 42.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2361, {	-- Battleworn Bludgeon
							["timeline"] = { ADDED_11_0_5 },
						}),
						i(23346, {	-- Battleworn Claymore
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(52557, {	-- Battleworn Hammer
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(2523),	-- Bullova
						i(2521),	-- Flamberge
						i(2531),	-- Great Axe
						i(73210, {	-- Trainee's Sword
							["timeline"] = { ADDED_10_0_7 },
						}),
						i(2525),	-- War Hammer
						i(2533),	-- War Maul
						i(57244, {	-- Warder's Spear
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(12282, {	-- Worn Battleaxe
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(49778, {	-- Worn Greatsword
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(57243, {	-- Worn Spear
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(52532, {	-- Worn Wood Chopper
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(2529),	-- Zweihander
					},
				}),
				n(1348, {	-- Gregory Ardus <Staff & Mace Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 48.2, 54.8, STORMWIND_CITY },
						-- #else
						{ 37.0, 39.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						925,	-- Flail
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						2028,	-- Hammer
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
					}},
					["groups"] = {
						i(2492),	-- Cudgel
						i(2493),	-- Wooden Mallet
					},
				}),
				n(1289, {	-- Gunther Weller <Weapons Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.0, 68.6, STORMWIND_CITY },
						-- #else
						{ 57.2, 57.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
					-- added all
						i(926),		-- Battle Axe
						i(2025),	-- Bearded Axe
						i(1198),	-- Claymore
						i(2029),	-- Cleaver
						i(851),		-- Cutlass
						i(922),		-- Dacian Falx
						i(927),		-- Double Axe
						i(2024),	-- Espadon
						i(925),		-- Flail
						i(1197),	-- Giant Mace
						i(2030),	-- Gnarled Staff
						i(2028),	-- Hammer
						i(853),		-- Hatchet
						i(15811),	-- Heavy Spear
						i(2207),	-- Jambiya
						i(2209),	-- Kris
						i(923),		-- Longsword
						i(928),		-- Long Staff
						i(852),		-- Mace
						i(924),		-- Maul
						i(2208),	-- Poniard
						i(854),		-- Quarter Staff
						i(2027),	-- Scimitar
						i(2026),	-- Rock Hammer
						i(15810),	-- Short Spear
						i(1196),	-- Tabar
					},
				}),
				n(1324, {	-- Heinrich Stone <Blade Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.0, 57.6, STORMWIND_CITY },
						-- #else
						{ 74.2, 42.8, STORMWIND_CITY },
						-- #endif
					},
					["coord"] = { 77.0, 57.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2520),	-- Broadsword
						i(2528),	-- Falchion
						i(2526),	-- Main Gauche
						i(2534),	-- Rondel
					},
				}),
				n(110034, {	-- Historian Llore <The Timewalkers>
					["coord"] = { 84.6, 25.0, STORMWIND_CITY },
					["timeline"] = { ADDED_7_1_0 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"select", "npcID", 158061},					-- Select Historian Ma'di
						{"pop"},										-- Discard Header and aquire their children
					},
				}),
				n(113404, {	-- Illidari Darkdealer
					["coord"] = { 40.2, 78.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(129096),	-- Battle-Mender's Dressing
						i(124069),	-- Felstone
						i(128805),	-- Potion of Fel Protection
					},
				}),
				n(1325, {	-- Jasper Fel <Shady Dealer>
					["coords"] = {
						-- #if AFTER CATA
						{ 80.6, 61.6, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 80.6, 70.0, STORMWIND_CITY },
						-- #else
						{ 78.2, 58.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
				}),
				n(1318, {	-- Jessara Cordell <Enchanting Supplies>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.0, 74.2, STORMWIND_CITY },
						-- #else
						{ 43.0, 64.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "select","itemID",
							20753,	-- Formula: Lesser Wizard Oil (RECIPE!)
							20752,	-- Formula: Minor Mana Oil (RECIPE!)
							20758,	-- Formula: Minor Wizard Oil (RECIPE!)
							-- #if BEFORE CATA
							6342,	-- Formula: Enchant Chest - Minor Mana (RECIPE!)
							-- #endif
							22307,	-- Pattern: Enchanted Mageweave Pouch (RECIPE!)
						},
					},
					["groups"] = appendGroups(COMMON_CATACLYSM_ENCHANTING_RECIPES, {
						i(67312, {	-- Formula: Magic Lamp (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
							["cost"] = { { "i", 52555, 20 }, },	-- 20x Hypnotic Dust
							["races"] = ALLIANCE_ONLY,
						}),
					}),
				}),
				n(5565, {	-- Jillian Tanner <Leatherworking Supplies>
					["coord"] = { 71.7, 62.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = COMMON_CATACLYSM_LEATHERWORKING_RECIPES,
				}),
				n(49701, {	-- Jon Casper <Sous Chef>
					["coords"] = {
						-- #if AFTER 9.2.5
						{ 50.5, 73.9, STORMWIND_CITY },
						-- #else
						{ 50.6, 71.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = CATA_COOKING_SUPPLIES,
				}),
				n(55684, {	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					["coord"] = { 64.8, 48.2, STORMWIND_CITY },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_BLACKSMITHING_RECIPES, {}),
				}),
				n(5512, {	-- Kaita Deepforge <Blacksmithing Supplies>
					["coords"] = {
						-- #if AFTER WRATH
						{ 63.2, 37.6, STORMWIND_CITY },
						-- #else
						{ 56.3, 17.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 4.3.0
					["sym"] = {{ "sub", "common_recipes_vendor", 55684 }},	-- Jordan Smith <Blacksmithing Trainer & Supplies>
					-- #endif
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(43694, {	-- Katie Stokx <Horse Breeder>
					["coord"] = { 77.0, 67.8, STORMWIND_CITY },
					-- Available to Humans without faction requirements.
					["minReputation"] = { FACTION_STORMWIND, EXALTED },	-- Stormwind, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. HUMAN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2411),	-- Black Stallion (MOUNT!)
						i(5656),	-- Brown Horse (MOUNT!)
						i(5655),	-- Chestnut Mare (MOUNT!)
						i(2414),	-- Pinto (MOUNT!)
						i(18777),	-- Swift Brown Steed (MOUNT!)
						i(18776),	-- Swift Palomino (MOUNT!)
						i(18778),	-- Swift White Steed (MOUNT!)
					},
				}),
				n(5509, {	-- Kathrum Axehand <Axe Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.6, 34.0, STORMWIND_CITY },
						-- #else
						{ 51.6, 12.2, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2523,	-- Bullova
						2531,	-- Great Axe
					}},
					["groups"] = {
						i(2522),	-- Crescent Axe
						i(2530),	-- Francisca
					},
				}),
				n(1257, {	-- Keldric Boucher <Alchemy Supplies & Reagents>/<Arcane Goods Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 62.8, 75.0, STORMWIND_CITY },
						-- #else
						{ 55.6, 65.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(340, {	-- Kendor Kabonka <Master of Cooking Recipes>
					["coords"] = {
						-- #if AFTER WRATH
						{ 76.4, 53.0, STORMWIND_CITY },
						-- #else
						{ 74.6, 36.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2889),	-- Recipe: Beer Basted Boar Ribs (RECIPE!)
						i(3679),	-- Recipe: Blood Sausage (RECIPE!)
						i(2698),	-- Recipe: Cooked Crab Claw (RECIPE!)
						i(3681),	-- Recipe: Crocolisk Gumbo (RECIPE!)
						i(3678),	-- Recipe: Crocolisk Steak (RECIPE!)
						i(3682),	-- Recipe: Curiously Tasty Omelet (RECIPE!)
						i(3683),	-- Recipe: Gooey Spider Cake (RECIPE!)
						i(2697),	-- Recipe: Goretusk Liver Pie (RECIPE!)
						i(3680),	-- Recipe: Murloc Fin Soup (RECIPE!)
						i(2699),	-- Recipe: Redridge Goulash (RECIPE!)
						i(2701),	-- Recipe: Seasoned Wolf Kabob (RECIPE!)
						i(2700),	-- Recipe: Succulent Pork Ribs (RECIPE!)
						i(728),		-- Recipe: Westfall Stew (RECIPE!)
					},
				}),
				applyclassicphase(WRATH_PHASE_FOUR, n(34084, {	-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> // Original S8 Vendor // Furious Gladiator: Season 8 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_ELITE },{ "pop" }},	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34083, {	-- Knight-Lieutenant Moonstrike <Northrend Armor Quartermaster> // Original S7 Vendor // Deadly Gladiator: Season 7 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR },{ "pop" }},	-- Deadly Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34082, {	-- Knight-Lieutenant Moonstrike <Armor Quartermaster> // Original S6 Vendor // Hateful Gladiator: Season 6 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PRE_SEASON_HATEFUL },{ "pop" }},	-- Hateful Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32834, {	-- Knight-Lieutenant Moonstrike <Armor Quartermaster> // Original S5 Vendor // Savage Gladiator: Season 5 Honor Gear
					["coord"] = { 74.8, 67.3, STORMWIND_CITY },
					-- #if BEFORE 4.0.3.13277
					["sym"] = {{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_HONOR },{ "pop" }},	-- Savage Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				-- #if AFTER CATA
				-- This is a future Crieve problem, probably a similar thing to Moonstrike.
				n(69974, {	-- Knight-Lieutenant T'Maire Sydes <Ruthless Gladiator>
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(40606, {	-- Knight-Lieutenant T'Maire Sydes >S10< Elite Vendor
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
					},
				}),
				-- #endif
				n(1295, {	-- Lara Moore <Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 62.2, 67.6, STORMWIND_CITY },
						-- #else
						{ 54.8, 55.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(236),		-- Cured Leather Armor
						i(1849),	-- Cured Leather Belt
						i(238),		-- Cured Leather Boots
						i(1850),	-- Cured Leather Bracers
						i(239),		-- Cured Leather Gloves
						i(237),		-- Cured Leather Pants
						-- #if AFTER 10.0.5
						i(48, {	-- Footpads Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(47, {	-- Footpads Shoes
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58234, {	-- Footpads Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6124, {	-- Novices Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6123, {	-- Novices Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
						i(1839),	-- Rough Leather Belt
						i(796),		-- Rough Leather Boots
						i(1840),	-- Rough Leather Bracers
						i(797),		-- Rough Leather Gloves
						i(798),		-- Rough Leather Pants
						i(799),		-- Rough Leather Vest
						i(1843),	-- Tanned Leather Belt
						i(843),		-- Tanned Leather Boots
						i(1844),	-- Tanned Leather Bracers
						i(844),		-- Tanned Leather Gloves
						i(846),		-- Tanned Leather Jerkin
						i(845),		-- Tanned Leather Pants
					},
				}),
				n(52027, {	-- Larisse Pembraux <Justice Heirlooms>
					["coord"] = { 79.4, 69.7, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_4_0_6, REMOVED_6_0_2 },
					["sym"] = {
						{ "select", "npcID", 32509 },	-- Brammold Deepmine <Antiques & Heirlooms>
						{ "pop" },						-- Pop the Headers
					},
				}),
				n(4730, {	-- Lelanai <Saber Handler>
					["coord"] = { 55.0, 12.6, STORMWIND_CITY },
					-- Available to Night Elves without faction requirements.
					["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. NIGHTELF .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = ALLIANCE_ONLY,
					-- Lelanai can only be found in Darnassus after 10.2.5: Reclamation of Gilneas.
					["timeline"] = { ADDED_8_0_1, REMOVED_10_2_5 },
					["groups"] = {
						i(8632),	-- Spotted Frostsaber (MOUNT!)
						i(47100),	-- Striped Dawnsaber (MOUNT!)
						i(8631),	-- Striped Frostsaber (MOUNT!)
						i(8629),	-- Striped Nightsaber (MOUNT!)
						i(18766),	-- Swift Frostsaber (MOUNT!)
						i(18767),	-- Swift Mistsaber (MOUNT!)
						i(18902),	-- Swift Stormsaber (MOUNT!)
					},
				}),
				-- #if AFTER 7.0.3
				n(2795, {	-- Lenny "Fingers" McCoy
					["coord"] = { 72.8, 58.8, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(97921, {	-- Bom'bay's Color-Seein'Sauce (TOY!)
							["timeline"] = { ADDED_7_1_0 },
						}),
						i(138382, {	-- Lucky Rat's Tooth
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(138385, {	-- Lucky Shirt
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				-- #endif
				n(12784, {	-- Lieutenant Jackspring <Legacy Weapon Quartermaster> [WRATH+] / Lieutenant Jackspring <Weapons Quartermaster>
					-- #if NOT ANYCLASSIC
					["description"] = "Blizzard strikes again. In order to transmog these, you need to have the original title associated with the gear. However, you can still collect them even if you've never had the title.\n\nThese items will require a refresh/reload to register as collected, and it's highly recommended that you keep them in your bank/void storage for later. You'll likely randomly lose credit for them and have to re-equip them to remind the game they exist.",
					-- #endif
					["coords"] = {
						-- #if AFTER WRATH
						{ 75.2, 67.2, STORMWIND_CITY },
						-- #else
						{ 71.9, 55.6, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1 },	-- Prior to TBC, was just a Reagent Vendor.
					["sym"] = {
						-- #if ANYCLASSIC
						{ "sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE },	-- Grand Marshal Weapons
						-- #if AFTER CATA
						{ "sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },
						{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR },
						-- #endif
						{ "merge" }, { "pop" }, { "where", "headerID", WEAPONS }, { "pop" },
						-- #else
						{ "select", "expansionID", EXPANSION.CLASSIC },
						{ "find", "headerID", FACTION_HEADER_ALLIANCE },
						{ "find", "headerID", WEAPONS },	-- Grand Marshal Weapons
						{ "pop" },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				n(12783, {	-- Lieutenant Karter <War Mount Quartermaster> [WRATH+] / Lieutenant Karter <Mount Vendor>
					-- #if AFTER WRATH
					["coord"] = { 76.2, 65.6, STORMWIND_CITY },
					-- #else
					["description"] = "Found within the Champion's Hall.",
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						i(29465, {	-- Black Battlestrider (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18243, {	-- Black Battlestrider (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
							-- #if BEFORE 2.0.1
							["races"] = { DWARF, GNOME },
							-- #endif
						}),
						i(35906, {	-- Black War Elekk (MOUNT!)
							["timeline"] = { ADDED_2_4_0 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(29467, {	-- Black War Ram (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18244, {	-- Black War Ram (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(29468, {	-- Black War Steed (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18241, {	-- Black War Steed (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(29471, {	-- Black War Tiger (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18242, {	-- Black War Tiger (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
					}),
				}),
				n(12778, {	-- Lieutenant Rachel Vaccar <Outland Armor Quartermaster>
					["coord"] = { 75.2, 67.2, STORMWIND_CITY },
					["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
					-- #if ANYCLASSIC
					["sym"] = {
						{ "select", "expansionID", EXPANSION.TBC },	{ "pop" },
						{ "contains", "headerID", SEASON_BRUTAL, SEASON_VENGEFUL, SEASON_MERCILESS, SEASON_GLADIATOR }, { "pop" },
						{ "where", "headerID", PVP_GLADIATOR }, { "pop" },
					},
					-- #endif
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if AFTER LEGION
				n(54660, {	-- Lieutenant Tristia <Vicious Gladiator>
					["coord"] = { 75.0, 67.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{ "sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_GLADIATOR },	-- Vicious Gladiator: Season 9 Gladiator Gear
						{ "merge" }, { "pop" },	-- Discard the Set header and acquire the children.
						{ "exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				-- #else
				applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(54660, {	-- Lieutenant Tristia <Glorious Conquest Quartermaster> // Original S11 Vendor // Cataclysmic Gladiator: Elite Season 11 Gladiator Gear
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_ELITE }, { "merge" }, { "pop" } },	-- Elite Cataclysmic Gladiator's Set
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				-- #endif
				applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, n(52545, {	-- Lieutenant Tristia <Glorious Conquest Quartermaster> // Original S10 Vendor // Ruthless Gladiator: Elite Season 10 Gladiator Gear
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					-- #if BEFORE MOP
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_ELITE }, { "merge" } ,{ "pop" } },	-- Elite Ruthless Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(CATA_PHASE_ONE, n(51255, {	-- Lieutenant Tristia <Glorious Conquest Quartermaster> // Original S9 Vendor // Vicious Gladiator: Elite Season 9 Gladiator Gear
					["coord"] = { 74.8, 67.6, STORMWIND_CITY },
					-- #if BEFORE MOP
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_ELITE }, { "merge" },{ "pop" } },	-- Elite Vicious Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_FOUR, n(34078, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S8 Vendor // Wrathful Gladiator: Season 8 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE CATA
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR }, { "merge" }, { "pop" } },	-- Wrathful Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_THREE, n(34077, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S7 Vendor // Relentless Gladiator: Season 7 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE CATA
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_RELENTLESS, PVP_GLADIATOR }, { "merge" }, { "pop" } },	-- Relentless Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_TWO, n(34076, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S6 Vendor // Furious Gladiator: Season 6 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE CATA
					["sym"] = { { "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR }, { "merge" }, { "pop" } },	-- Furious Gladiator's Set
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(WRATH_PHASE_ONE, n(32380, {	-- Lieutenant Tristia <Veteran Armor Quartermaster> // Original S5 Vendor // Deadly Gladiator: Season 5 Gladiator Gear
					["coord"] = { 74.7, 67.2, STORMWIND_CITY },
					-- #if BEFORE CATA
					["sym"] = {
						{ "sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_DEADLY, PVP_GLADIATOR }, { "merge" }, { "pop" },		-- Deadly Gladiator's Set
						-- #if ANYCLASSIC
						{ "select", "itemID", 201993 },	-- Deadly Gladiator's Tabard (Wrath Classic Only)
						-- #endif
					},
					-- #endif
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
				})),
				-- #if NOT ANYCLASSIC
				-- Crieve NOTE: This NPC ID wasn't used for TBC Classic, so not sure how this was actually used.
				n(23446, {	-- Lieutenant Tristia -- BC Vendor for Trinkets
					-- The NPC ID got reused many times. This is the BC Version, items listed under PvP>BC
					["coord"] = { 75.0, 67.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				-- #endif
				n(8666, {	-- Lil Timmy <Boy with kittens>
					-- #if AFTER WRATH
					["description"] = "The vendor wanders around Stormwind at random times. He is not always available.",
					-- #else
					["coord"] = { 64.0, 38.0, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8489, {	-- White Kitten (PET!)
							["timeline"] = { ADDED_1_11_1 },
							["isLimited"] = true,
						}),
					},
				}),
				n(8118, {	-- Lillian Singh <Holiday Fireworks Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 62.6, 70.0, STORMWIND_CITY },
						-- #else
						{ 55.6, 58.8, STORMWIND_CITY },
						-- #endif
					},
					["description"] =
						-- #if BEFORE 10.1
						"This NPC is only available on July 4th (US) or September 30th (EU).",
						-- #else
						"This NPC is only available on July 4th.",
						-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(8626),	-- Blue Sparkler
						i(8625),	-- White Sparkler
						i(8624),	-- Red Sparkler
					},
				}),
				n(52030, pvp({	-- Liliana Emberfrost <Honor Heirlooms>
					["coord"] = { 74.4, 67.6, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						moh(8, i(122375, {	-- Aged Pauldrons of The Five Thunders
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(12, i(122338, {	-- Ancient Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(14, i(122339, {	-- Ancient Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122369, {	-- Battleworn Thrash Blade
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122376, {	-- Exceptional Stormshroud Shoulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122378, {	-- Exquisite Sunderseer Mantle
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(4, i(122371, {	-- Inherited Insignia of the Alliance
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(4, i(122530, {	-- Inherited Mark of Tyranny
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122368, {	-- Grand Staff of Jordan
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122377, {	-- Lasting Feralheart Spaulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122373, {	-- Pristine Lightforge Spaulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122374, {	-- Prized Beastmaster's Mantle
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122365, {	-- Reforged Truesilver Champion
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122364, {	-- Sharpened Scarlet Kris
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(8, i(122372, {	-- Strengthened Stockade Pauldrons
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122367, {	-- The Blessed Hammer of Grace
							["timeline"] = { ADDED_6_1_0 },
						})),
						moh(10, i(122366, {	-- Upgraded Dwarven Hand Cannon
							["timeline"] = { ADDED_6_1_0 },
						})),

						-- Old Heirlooms
						i(93886, {	-- Adorned Beastmaster's Mantle
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44102, {	-- Aged Pauldrons of The Five Thunders
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93851, {	-- Battle-Forged Truesilver Champion
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(93848, {	-- Battle-Hardened Thrash Blade
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44096, {	-- Battleworn Thrash Blade
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93899, {	-- Bequeathed Insignia of the Alliance
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(93898, {	-- Bequeathed Insignia of the Horde
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(93852, {	-- Deadly Scarlet Kris
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(93849, {	-- Elder Staff of Jordan
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44103, {	-- Exceptional Stormshroud Shoulders
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(44107, {	-- Exquisite Sunderseer Mantle
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93894, {	-- Immaculate Lightforge Spaulders
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44098, {	-- Inherited Insignia of the Alliance
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(44097, {	-- Inherited Insignia of the Horde
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93900, {	-- Inherited Mark of Tyranny
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44095, {	-- Grand Staff of Jordan
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(44105, {	-- Lasting Feralheart Spaulders
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93861, {	-- Prestigious Sunderseer Mantle
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44100, {	-- Pristine Lightforge Spaulders
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(44101, {	-- Prized Beastmaster's Mantle
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(44092, {	-- Reforged Truesilver Champion
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93895, {	-- Reinforced Stockade Pauldrons
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44091, {	-- Sharpened Scarlet Kris
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93841, {	-- Smoothbore Dwarven Hand Cannon
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44099, {	-- Strengthened Stockade Pauldrons
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93867, {	-- Superior Stormshroud Shoulders
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44094, {	-- The Blessed Hammer of Grace
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93850, {	-- The Sanctified Hammer of Grace
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(44093, {	-- Upgraded Dwarven Hand Cannon
							["timeline"] = { REMOVED_6_1_0 },
						}),
						i(93889, {	-- Venerated Pauldrons of The Five Thunders
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
						i(93866, {	-- Wild Feralheart Spaulders
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						}),
					},
				})),
				n(1297, {	-- Lina Stover <Bow & Gun Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 58.6, 68.8, STORMWIND_CITY },
						-- #else
						{ 50.6, 57.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3024),	-- Bkp 2700 Enforcer
						i(3027),	-- Heavy Recurve Bow
						i(2506),	-- Hornwood Recurve Bow
						i(2511),	-- Hunter's Boomstick
						i(2507),	-- Laminated Recurve Bow
						i(3023),	-- Large Bore Blunderbuss
						i(2509),	-- Ornate Blunderbuss
						i(2505),	-- Polished Shortbow
						i(3026),	-- Reinforced Bow
						i(2504),	-- Worn Shortbow
					},
				}),
				n(1299, {	-- Lisbeth Schneider <Clothier>
					["coords"] = {
						-- #if AFTER WRATH
						{ 58.2, 67.6, STORMWIND_CITY },
						-- #else
						{ 49.6, 55.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(3426),	-- Bold Yellow Shirt
						i(3428),	-- Common Grey Shirt
						i(3427),	-- Stylish Black Shirt
						i(13896),	-- Dark Green Wedding Hanbok
						i(13898),	-- Royal Dangui
						i(13897),	-- White Traditional Hanbok
					},
				}),
				-- #if AFTER 8.0.1
				n(50307, {	-- Lord Candren <Gilneas Quartermaster>
					["description"] = "Appears in Stormwind after War of Thorns.",
					["coord"] = { 56.1, 13.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_GILNEAS, {
						{		-- Neutral
							i(245620, {	-- Little Wolf's Loo (DECOR!)
								["sourceQuest"] = 14402,	-- Ready to Go
								["cost"] = 4500000,	-- 450g
							}),
							i(245518, {	-- Worgen's Chicken Coop (DECOR!)
								["sourceQuest"] = 24675,	-- Last Meal
								["cost"] = 1500000,	-- 150g
							}),
						}, {	-- Friendly
							i(64882, {	-- Gilneas Tabard
								["timeline"] = { ADDED_4_0_3 },
							}),
						}, {	-- Honored
							i(245605, {	-- Gilnean Stone Wall (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3000000,	-- 300g
							}),
						}, {	-- Revered
							i(245603, {	-- Gilnean Noble's Trellis (DECOR!)
								["timeline"] = { ADDED_11_2_7 },
								["cost"] = 3500000,	-- 350g
							}),
							i(67532, {	-- Gilnean Satchel
								["timeline"] = { ADDED_4_0_3 },
							}),
						}, {	-- Exalted
							i(64893, {	-- Cape of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64892, {	-- Mantle of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
							i(64894, {	-- Shroud of Gilneas
								["timeline"] = { ADDED_4_0_3 },
							}),
						},
					}),
				}),
				-- #endif
				n(44246, {	-- Magatha Silverton <Justice Quartermaster>
					["coords"] = {
						-- #if AFTER 9.0.1
						{ 75.5, 66.1, STORMWIND_CITY },
						-- #else
						{ 74.2, 66.0, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_TWELVE_GROUPS,
					-- #if AFTER 4.2.0
					["description"] = "Sells gear related to Cataclysm raid tier 12 (Firelands) as well as Baradin Hold.",
					-- #endif
				}),
				n(1287, {	-- Marda Weller <Weapons Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.0, 68.6, STORMWIND_CITY },
						-- #else
						{ 57.2, 57.0, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
					-- added all
						926,	-- Battle Axe
						2025,	-- Bearded Axe
						2029,	-- Cleaver
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						927,	-- Double Axe
						2024,	-- Espadon
						925,	-- Flail
						2030,	-- Gnarled Staff
						1197,	-- Giant Mace
						853,	-- Hatchet
						2207,	-- Jambiya
						2209,	-- Kris
						928,	-- Long Staff
						852,	-- Mace
						924,	-- Maul
						2208,	-- Poniard
						854,	-- Quarter Staff
						2026,	-- Rock Hammer
						2027,	-- Scimitar
					}},
					["groups"] = {
						i(15808),	-- Fine Light Crossbow
						i(15809),	-- Heavy Crossbow
						i(15807),	-- Light Crossbow
						i(20981, {	-- Neophyte's Mace
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(20977, {	-- Recruit's Shortsword
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(20982, {	-- Sharp Dagger
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(37, {	-- Worn Axe
							["timeline"] = { ADDED_10_1_7 },
						}),
					},
				}),
				n(1313, {	-- Maria Lumere <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER WRATH
						{ 55.6, 85.6, STORMWIND_CITY },
						-- #else
						{ 46.6, 78.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(9301, {["isLimited"] = true}),	-- Recipe: Elixir of Shadow Power (RECIPE!)
					},
				}),
				n(12781, {	-- Master Sergeant Biggins <Accessories Quartermaster> [WRATH+] / Master Sergeant Biggins <Officer Accessories Quartermaster>
					-- #if BEFORE TBC
					["description"] = "Found within the Champion's Hall.",
					-- #else
					["coord"] = { 75.2, 66.8, STORMWIND_CITY },
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						i(18606),	-- Alliance Battle Standard
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
						i(31853, {	-- Major Combat Healing Potion
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(31855, {	-- Major Combat Mana Potion
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(32455, {	-- Star's Lament
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(32453, {	-- Star's Tears
							["timeline"] = { ADDED_2_0_1 },
						}),
						i(44957, {	-- Greater Inscription of the Gladiator
							["timeline"] = { ADDED_3_0_8, REMOVED_7_0_3 },
						}),
						moh(3, i(68772, {	-- Greater Inscription of Vicious Intellect
							["timeline"] = { ADDED_4_0_6 },
						})),
						moh(3, i(68773, {	-- Greater Inscription of Vicious Strength
							["timeline"] = { ADDED_4_0_6 },
						})),
						moh(3, i(68774, {	-- Greater Inscription of Vicious Agility
							["timeline"] = { ADDED_4_0_6 },
						})),
						moh(1, i(15198)),	-- Knight's Colors
						-- #if AFTER TBC
						moh(1, i(15196)),	-- Private's Tabard
						-- #endif
					}),
				}),
				n(28347, {	-- Miles Sidney <Poison Supplies>
					["coord"] = { 74.2, 58.0, STORMWIND_CITY },
					["timeline"] = { ADDED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
					["groups"] = {
						i(38579, {	-- Venomous Tome
							["timeline"] = { ADDED_3_0_2 },
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER 8.0.1
				n(50305, {	-- Moon Priestess Lasara <Darnassus Quartermaster>
					["coord"] = { 56.6, 13.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					-- Moon Priestess Lasara can only be found in Darnassus after 10.2.5: Reclamation of Gilneas.
					["timeline"] = { ADDED_8_0_1, REMOVED_10_2_5 },
					["groups"] = {
						i(45579, {	-- Darnassus Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64887, {	-- Cape of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64888, {	-- Mantle of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64886, {	-- Shroud of Darnassus
							["minReputation"] = { FACTION_DARNASSUS, EXALTED },	-- Darnassus, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67526, {	-- Darnassian Satchel
							["minReputation"] = { FACTION_DARNASSUS, REVERED },	-- Darnassus, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				-- #endif
				-- #if ANYCLASSIC
				n(12805, {	-- Officer Areyn <Accessories Quartermaster>
					["coords"] = {
						-- #if AFTER CATA
						{ 76.8, 65.8, STORMWIND_CITY },
						-- #else
						{ 73.8, 53.4, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_1_4_0, REMOVED_3_0_2, ADDED_4_0_1, REMOVED_7_0_3 },
					["groups"] = {
						i(18664, { ["timeline"] = { ADDED_1_4_0, REMOVED_2_0_1 } }),	-- A Treatise on Military Ranks
						i(15196, {	-- Private's Tabard
							["races"] = ALLIANCE_ONLY,
						}),
						-- #if AFTER CATA
						i(15198),	-- Knight's Colors
						-- #endif
						i(18854, {	-- Insignia of the Alliance
							["classes"] = { WARRIOR },
						}),
						i(18857, {	-- Insignia of the Alliance
							["classes"] = { ROGUE },
						}),
						i(18862, {	-- Insignia of the Alliance
							["classes"] = { PRIEST },
						}),
						i(18859, {	-- Insignia of the Alliance
							["classes"] = { MAGE },
						}),
						i(18858, {	-- Insignia of the Alliance
							["classes"] = { WARLOCK },
						}),
						i(18863, {	-- Insignia of the Alliance
							["classes"] = { DRUID },
						}),
						i(18864, {	-- Insignia of the Alliance
							["classes"] = { PALADIN },
						}),
						i(18856, {	-- Insignia of the Alliance
							["classes"] = { HUNTER },
						}),
						-- #if BEFORE CATA
						i(16342),	-- Sergeant's Cape (58)
						i(18440),	-- Sergeant's Cape (45)
						i(18441),	-- Sergeant's Cape (30)
						i(18443),	-- Master Sergeant's Insignia (58)
						i(18444),	-- Master Sergeant's Insignia (45)
						i(18442),	-- Master Sergeant's Insignia (30)
						i(18449, {	-- Sergeant Major's Chain Armguards (45)
							["classes"] = { HUNTER },
						}),
						i(18455, {	-- Sergeant Major's Dragonhide Armsplints (45)
							["classes"] = { DRUID },
						}),
						i(18453, {	-- Sergeant Major's Leather Armsplints (45)
							["classes"] = { ROGUE },
						}),
						i(18447, {	-- Sergeant Major's Plate Wristguards (45)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18457, {	-- Sergeant Major's Silk Cuffs (45)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						i(18448, {	-- Sergeant Major's Chain Armguards (58)
							["classes"] = { HUNTER },
						}),
						i(18454, {	-- Sergeant Major's Dragonhide Armsplints (58)
							["classes"] = { DRUID },
						}),
						i(18452, {	-- Sergeant Major's Leather Armsplints (58)
							["classes"] = { ROGUE },
						}),
						i(18445, {	-- Sergeant Major's Plate Wristguards (58)
							["classes"] = { PALADIN, WARRIOR },
						}),
						i(18456, {	-- Sergeant Major's Silk Cuffs (58)
							["classes"] = { MAGE, PRIEST, WARLOCK },
						}),
						-- #endif
						-- #if AFTER CATA
						i(18606),	-- Alliance Battle Standard
						-- #endif
					},
				}),
				-- #endif
				n(65068, {	-- Old Whitenose <Dragon Turtle Breeder>
					["coord"] = { 67.8, 18.4, STORMWIND_CITY },
					-- Available to Tushui Pandaren without faction requirements.
					["minReputation"] = { FACTION_TUSHUI_PANDAREN, EXALTED },	-- Tushui Pandaren, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. PANDAREN_ALLIANCE .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(87795, {	-- Black Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91008, {	-- Black Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87796, {	-- Blue Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91009, {	-- Blue Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87797, {	-- Brown Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91005, {	-- Brown Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87802, {	-- Great Black Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91011, {	-- Great Black Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87803, {	-- Great Blue Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91013, {	-- Great Blue Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87804, {	-- Great Brown Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91014, {	-- Great Brown Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87801, {	-- Great Green Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91012, {	-- Great Green Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87805, {	-- Great Purple Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91015, {	-- Great Purple Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82811, {	-- Great Red Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91010, {	-- Great Red Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82765, {	-- Green Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91004, {	-- Green Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87799, {	-- Purple Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91006, {	-- Purple Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87800, {	-- Red Dragon Turtle (MOUNT!) (NON-P)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91007, {	-- Red Dragon Turtle (MOUNT!) (PANDA)
							["timeline"] = { ADDED_5_0_4 },
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
					},
				}),
				n(1323, {	-- Osric Strang <Heavy Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 77.0, 61.2, STORMWIND_CITY },
						-- #else
						{ 74.2, 47.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2419,	-- Augmented Chain Belt
						2420,	-- Augmented Chain Boots
						2421,	-- Augmented Chain Bracers
						2422,	-- Augmented Chain Gloves
						3891,	-- Augmented Chain Helm
						2418,	-- Augmented Chain Leggings
						2417,	-- Augmented Chain Vest
						2424,	-- Brigandine Belt
						2426,	-- Brigandine Boots
						2427,	-- Brigandine Bracers
						2428,	-- Brigandine Gloves
						3894,	-- Brigandine Helm
						2425,	-- Brigandine Leggings
						2423,	-- Brigandine Vest
						2451,	-- Crested Heater Shield
						2448,	-- Heavy Pavise
						2446,	-- Kite Shield
						17189,	-- Metal Buckler
						17190,	-- Ornate Buckler
						8094,	-- Platemail Armor
						8088,	-- Platemail Belt
						8089,	-- Platemail Boots
						8090,	-- Platemail Bracers
						8091,	-- Platemail Gloves
						8092,	-- Platemail Helm
						8093,	-- Platemail Leggings
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						17192,	-- Reinforced Targe
					}},
				}),
				n(87501, bubbleDownSelf({	-- Paulie
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_6_0_2 },
				},{
					["coord"] = { 73.0, 59.5, STORMWIND_CITY },
					["groups"] = {
						i(116789, {	-- Champion's Treadblade (MOUNT!)
							["cost"] = 1000000000,	-- 100,000g
						}),
					},
				})),
				n(167429, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {	-- Quartermaster Richter
					["description"] = "Only sells items once the achievement |cffebae34Exile's Reach|r [14222] is completed.",
					["coord"] = { 79.5, 69.0, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(175173),	-- Expeditionary Cudgel
						i(175172),	-- Expeditionary Dagger
						i(175166),	-- Expeditionary Greatsword
						i(175162),	-- Expeditionary Longbow
						i(175168),	-- Expeditionary Quarterstaff
						i(175170),	-- Expeditionary Short Sword
						i(175167),	-- Expeditionary Staff
					},
				})),
				n(53991, {	-- Quincy Cutler <Owner and Proprietor>
					["timeline"] = { ADDED_4_2_0 },
					["coord"] = { 64.0, 46.2, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(44679),	-- Red Wine Glass
						i(44678),	-- Wine Glass
					},
				}),
				n(5193, {	-- Rebecca Laughlin <Tabard Designer>
					["coords"] = {
						-- #if AFTER WRATH
						{ 64.0, 77.2, STORMWIND_CITY },
						-- #else
						{ 57.2, 68.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {
						{"select", "itemID",
						31779,	-- Aldor Tabard
						31804,	-- Cenarion Expedition Tabard
						36941,	-- Competitor's Tabard
						31776,	-- Consortium Tabard
						31404,	-- Green Trophy Tabard of the Illidari
						23999,	-- Honor Hold Tabard
						31777,	-- Keepers of Time Tabard
						31774,	-- Kurenai Tabard
						31778,	-- Lower City Tabard
						15198,	-- Knight's Colors
						43300,	-- Loremaster's Colors
						32828,	-- Ogri'la Tabard
						15196,	-- Private's Tabard
						31405,	-- Purple Trophy Tabard of the Illidari
						31780,	-- Scryers Tabard
						31781,	-- Sha'tar Tabard
						19506,	-- Silverwing Battle Tabard
						32445,	-- Skyguard Tabard
						31775,	-- Sporeggar Tabard
						19032,	-- Stormpike Battle Tabard
						43349,	-- Tabard of Brute Force
						49052,	-- Tabard of Conquest (A)
						35280,	-- Tabard of Summer Flames
						35279,	-- Tabard of Summer Skies
						40643,	-- Tabard of the Achiever
						43348,	-- Tabard of the Explorer
						24344,	-- Tabard of the Hand (A)
						35221,	-- Tabard of the Shattered Sun
						},
					},
					["groups"] = {
						i(5976),	-- Guild Tabard
						i(210469, {	-- Personal Tabard
							["timeline"] = { ADDED_10_2_7 },
						}),
					},
				}),
				n(254603, {	-- Riica <Battleground Decor Specialist>
					["coord"] = { 77.8, 65.7, STORMWIND_CITY },
					["timeline"] = { ADDED_11_2_7 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = pvp({
						i(247757, {	-- Alliance Battlefield Banner (DECOR!)
							["sourceAchievement"] = 158,	-- Me and the Cappin' Makin' It Happen
							["cost"] = {{ "c", HONOR, 600 }},
						}),
						i(247744, {	-- Alliance Dueling Flag (DECOR!)
							["sourceAchievement"] = 231,	-- Wrecking Ball
							["cost"] = {{ "c", HONOR, 1000 }},
						}),
						i(247763, {	-- Berserker's Empowerment (DECOR!)
							["sourceAchievement"] = 61683,	-- Entering Battle
							["cost"] = {{ "i", 137642, 5 }},	-- 5x Mark of Honor
						}),
						i(247756, {	-- Challenger's Dueling Flag (DECOR!)
							["sourceAchievement"] = 1157,	-- Duel-icious
							["cost"] = {{ "c", HONOR, 1000 }},
						}),
						i(247769, {	-- Chaotic Empowerment (DECOR!)
							["sourceAchievement"] = 61685,	-- Proficient in Battle
							["cost"] = {{ "i", 137642, 5 }},	-- 5x Mark of Honor
						}),
						i(247750, {	-- Deephaul Crystal (DECOR!)
							["sourceAchievement"] = 40612,	-- Sprinting in the Ravine
							["cost"] = {{ "c", HONOR, 2500 }},
						}),
						i(253170, {	-- Earthen Contender's Target (DECOR!)
							["sourceAchievement"] = 40210,	-- Deephaul Ravine Victory
							["cost"] = {{ "c", HONOR, 750 }},
						}),
						i(247758, {	-- Fortified Alliance Banner (DECOR!)
							["sourceAchievement"] = 221,	-- Alterac Grave Robber
							["cost"] = {{ "c", HONOR, 1200 }},
						}),
						i(247768, {	-- Guardian's Empowerment (DECOR!)
							["sourceAchievement"] = 61684,	-- Progressing in Battle
							["cost"] = {{ "i", 137642, 5 }},	-- 5x Mark of Honor
						}),
						i(247765, {	-- Healer's Empowerment (DECOR!)
							["sourceAchievement"] = 61687,	-- Champion in Battle
							["cost"] = {{ "i", 137642, 5 }},	-- 5x Mark of Honor
						}),
						i(247741, {	-- Kotmogu Orb of Power (DECOR!)
							["sourceAchievement"] = 6981,	-- Master of Temple of Kotmogu
							["cost"] = {{ "c", HONOR, 1000 }},
						}),
						i(247740, {	-- Kotmogu Pedestal (DECOR!)
							["sourceAchievement"] = 6981,	-- Master of Temple of Kotmogu
							["cost"] = {{ "c", HONOR, 2000 }},
						}),
						i(247770, {	-- Mysterious Empowerment (DECOR!)
							["sourceAchievement"] = 61686,	-- Expert in Battle
							["cost"] = {{ "i", 137642, 2 }},	-- 2x Mark of Honor
						}),
						i(247762, {	-- Netherstorm Battlefield Flag (DECOR!)
							["sourceAchievement"] = 213,	-- Stormtrooper
							["cost"] = {{ "c", HONOR, 300 }},
						}),
						i(247766, {	-- Runner's Empowerment (DECOR!)
							["sourceAchievement"] = 61688,	-- Master in Battle
							["cost"] = {{ "i", 137642, 5 }},	-- 5x Mark of Honor
						}),
						i(247746, {	-- Silverwing Sentinels Flag (DECOR!)
							["sourceAchievement"] = 200,	-- Persistent Defender
							["cost"] = {{ "c", HONOR, 800 }},
						}),
						i(256896, {	-- Smoke Lamppost (DECOR!)
							["sourceAchievement"] = 5245,	-- Battle for Gilneas Victory
							["cost"] = {{ "c", HONOR, 450 }},
						}),
						i(247761, {	-- Uncontested Battlefield Banner (DECOR!)
							["sourceAchievement"] = 212,	-- Storm Capper
							["cost"] = {{ "c", HONOR, 400 }},
						}),
					}),
				}),
				n(277, {	-- Roberto Pupellyverbos <Merlot Connoisseur>
					["coords"] = {
						-- #if AFTER WRATH
						{ 59.4, 77.2, STORMWIND_CITY },
						-- #else
						{ 52.0, 67.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(1941),	-- Cask of Merlot
					},
				}),
				n(1320, {	-- Seoman Griffith <Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 72.0, 62.2, STORMWIND_CITY },
						-- #else
						{ 67.6, 48.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
					}},
				}),
				n(12785, {	-- Sergeant Major Clate <Legacy Armor Quartermaster> [WRATH+] / Sergeant Major Clate <Armor Quartermaster>
					["coord"] = { 75.4, 67.0, STORMWIND_CITY },
					["timeline"] = { ADDED_2_0_1 },	-- Prior to TBC, was just a Food Vendor.
					["sym"] = {	-- Grand Marshal Armor
						-- #IF ANYCLASSIC
						{"sub", "pvp_gear_base", EXPANSION.CLASSIC, FACTION_HEADER_ALLIANCE }, { "merge" },
						-- #if AFTER CATA
						{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_WRATHFUL, PVP_GLADIATOR },{ "merge" },
						{"sub", "pvp_gear_base", EXPANSION.TBC, SEASON_BRUTAL, PVP_GLADIATOR },{ "merge" },
						-- #endif
						-- #ELSE
						{"select","expansionID",EXPANSION.CLASSIC},
						{"find","headerID",FACTION_HEADER_ALLIANCE},
						-- #ENDIF
						{ "pop" },
						{ "exclude", "headerID", WEAPONS },
						-- #if BEFORE WRATH
						{ "exclude", "f", TRINKET_F, NECK_F },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
				}),
				-- #if AFTER 8.0.1
				n(8665, {	-- Shylenai <Owl Trainer>
					["coord"] = { 56.0, 3.22, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					-- Shylenai can only be found in Darnassus after 10.2.5: Reclamation of Gilneas.
					["timeline"] = { ADDED_8_0_1, REMOVED_10_2_5 },
					["groups"] = {
						i(8500),	-- Great Horned Owl (PET!)
						i(8501),	-- Hawk Owl (PET!)
					},
				}),
				-- #endif
				n(1326, {	-- Sloan McCoy <Poison Supplier>
					["coords"] = {
						-- #if AFTER CATA
						{ 81.2, 62.6, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 78.8, 70.8, STORMWIND_CITY },
						-- #else
						{ 76.8, 59.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER MOP
					["sym"] = {{"select","itemID",
						4565,	-- Simple Dagger
					}},
					-- #endif
					["groups"] = {
						i(21835, {	-- Anesthetic Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43237, {	-- Anesthetic Poison II
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(3775, {	-- Crippling Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(2892, {	-- Deadly Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(2893, {	-- Deadly Poison II
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(8984, {	-- Deadly Poison III
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(8985, {	-- Deadly Poison IV
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(20844, {	-- Deadly Poison V
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(22053, {	-- Deadly Poison VI
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(22054, {	-- Deadly Poison VII
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43232, {	-- Deadly Poison VIII
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43233, {	-- Deadly Poison IX
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(6947, {	-- Instant Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(6949, {	-- Instant Poison II
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(6950, {	-- Instant Poison III
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(8926, {	-- Instant Poison IV
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(8927, {	-- Instant Poison V
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(8928, {	-- Instant Poison VI
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(21927, {	-- Instant Poison VII
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43230, {	-- Instant Poison VIII
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43231, {	-- Instant Poison IX
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(5237, {	-- Mind-Numbing Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(10918, {	-- Wound Poison
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(10920, {	-- Wound Poison II
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(10921, {	-- Wound Poison III
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(10922, {	-- Wound Poison IV
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(22055, {	-- Wound Poison V
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43234, {	-- Wound Poison VI
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
						i(43235, {	-- Wound Poison VII
							["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
						}),
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, n(17804, {	-- Squire Rowe
					["sourceQuest"] = 6502,	-- Drakefire Amulet
					["coord"] = { 70.6, 86.0, STORMWIND_CITY },
					["timeline"] = { ADDED_1_15_3 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(226500),	-- Chipped Drakefire Amulet
						i(228222, {	-- Handbook of Valor of Azeroth
							["timeline"] = { ADDED_1_15_3 },
							["spellID"] = 461475,	-- Valor of Azeroth
							["f"] = RECIPES,
						}),
					},
				})),
				-- #endif
				-- #if AFTER MOP
				-- Danny Donkey: The staves are added to Inscription Suppliers in 5.0.1.
				n(30730, {	-- Stanly McCormick <Inscription Supplies>
					["coord"] = { 49.6, 74.9, STORMWIND_CITY },
					["timeline"] = { ADDED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(79740),	-- Plain Wooden Staff
						i(1515),	-- Rough Wooden Staff
					},
				}),
				-- #endif
				n(43768, {	-- Tannec Stonebeak <Gryphon Keeper>
					["coord"] = { 71.4, 72.0, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(25471),	-- Ebon Gryphon (MOUNT!)
						i(25470),	-- Golden Gryphon (MOUNT!)
						i(25472),	-- Snowy Gryphon (MOUNT!)
						i(25473),	-- Swift Blue Gryphon (MOUNT!)
						i(25528),	-- Swift Green Gryphon (MOUNT!)
						i(25529),	-- Swift Purple Gryphon (MOUNT!)
						i(25527),	-- Swift Red Gryphon (MOUNT!)
					},
				}),
				n(44583, {	-- Terrance Denman <Jewelcrafting Supplies>
					["coord"] = { 63.1, 61.5, STORMWIND_CITY },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{ "sub", "common_recipes_vendor", 50480 }},	-- Isabel Jones <Jewelcrafting Supplies>
				}),
				n(1350, {	-- Theresa Moulaine <Robe Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 53.4, 58.0, STORMWIND_CITY },
						-- #else
						{ 43.6, 43.6, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(2617),	-- Burning Robes
						i(2615),	-- Chromatic Robe
						i(2613),	-- Double-Stitched Robes
						i(2612),	-- Plain Robe
						i(2614),	-- Robe of Apprenticeship
						i(2616),	-- Shimmering Silk Robes
						i(2618),	-- Silver Dress Robes
					},
				}),
				n(5510, {	-- Thulman Flintcrag <Guns Vendor>
					["coords"] = {
						-- #if AFTER WRATH
						{ 61.8, 36.2, STORMWIND_CITY },
						-- #else
						{ 54.6, 15.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2509,	-- Ornate Blunderbuss
					}},
					["groups"] = {
						i(2508, {	-- Old Blunderbuss
							["timeline"] = { ADDED_10_0_7 },
						}),
						i(2510),	-- Solid Blunderbuss
					},
				}),
				n(58154, {	-- Toren Landow <Legacy Justice Quartermaster>
					["coords"] = {
						-- #if AFTER 9.0.1
						{ 75.7, 65.9, STORMWIND_CITY },
						-- #else
						{ 79.0, 70.1, STORMWIND_CITY },
						-- #endif
					},
					["timeline"] = { ADDED_4_3_0 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = TIER_ELEVEN_GROUPS,
					["description"] = "Sells gear related to Cataclysm raid tier 11 (Throne of the Four Winds, Blackwing Descent, and Bastion of Twilight) as well as Baradin Hold.",
				}),
				n(50524, {	-- Travis Nichols <Hot Coffee Vendor>
					["coord"] = { 69.4, 65.4, STORMWIND_CITY },
					["races"] = ALLIANCE_ONLY,
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						i(33042),	-- Black Coffee
					},
				}),
				n(1341, {	-- Wilhelm Strang <Mail Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 77.4, 61.6, STORMWIND_CITY },
						-- #elseif AFTER WRATH
						{ 77.2, 61.6, STORMWIND_CITY },
						-- #else
						{ 74.6, 47.8, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2148,	-- Polished Scale Belt
						2149,	-- Polished Scale Boots
						2150,	-- Polished Scale Bracers
						2151,	-- Polished Scale Gloves
						2152,	-- Polished Scale Leggings
						2153,	-- Polished Scale Vest
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
					}},
				}),
				n(1309, {	-- Wynne Larson <Robe Merchant>
					["coords"] = {
						-- #if AFTER WRATH
						{ 52.0, 83.6, STORMWIND_CITY },
						-- #else
						{ 41.8, 76.4, STORMWIND_CITY },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["sym"] = {{"select","itemID",
						2617,	-- Burning Robes
						2615,	-- Chromatic Robe
						2613,	-- Double Stitched Robes
						2612,	-- Plain Robe
						2614,	-- Robe Of Apprenticeship
						2616,	-- Shimmering Silk Robes
						2618,	-- Silver Dress Robes
					}},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
		m(EASTERN_KINGDOMS, {
			m(STORMWIND_CITY, {
				n(QUESTS, {
					q(43463),	-- Ashes of a Fallen Crusader Tracking Quest - Looting Charred Locket from Ashes of a Fallen Crusader
					q(41306),	-- The Fallen Lion. Triggers with regular "The Fallen Lion" 40517
				}),
			}),
		}),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
		m(EASTERN_KINGDOMS, {
			m(STORMWIND_CITY, {
				n(QUESTS, {
					q(59255),	-- completed when turning in 'Fame Waits for Gnome One' (58708)
					q(53645),	-- triggered during 'Molten Core' (53342) when porting to Molten Core
				}),
			}),
		}),
	})),
});
