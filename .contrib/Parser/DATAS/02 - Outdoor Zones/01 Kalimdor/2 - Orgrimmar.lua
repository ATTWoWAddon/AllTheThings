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

root(ROOTS.Zones, m(KALIMDOR, {
	m(ORGRIMMAR, {
		["lore"] = "Named in honor of the legendary Orgrim Doomhammer, Orgrimmar was founded as the capital city of the orcs' new homeland. Built within a huge, winding canyon in the harsh land of Durotar, Orgrimmar stands as one of the mightiest warrior cities in the world. Behind Orgrimmar's immense walls, elderly shaman pass their knowledge on to the Horde's newest generation of leaders, while warriors spar in the gladiatorial arena, honing their skills in preparation for the trials that await them in this dangerous land.",
		["icon"] = 255142,
		-- #if AFTER CATA
		["maps"] = { 86 },		-- The Drag
		-- #endif
		["isRaid"] = true,
		["groups"] = {
			n(ACHIEVEMENTS, {
				applyclassicphase(CATA_PHASE_ONE, ach(5477, {	-- Fish or Cut Bait: Orgrimmar
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
				})),
				applyclassicphase(CATA_PHASE_ONE, ach(5475, {	-- Let's Do Lunch: Orgrimmar
					["timeline"] = { ADDED_4_2_0 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
				})),
				applyclassicphase(TBC_PHASE_ONE, ach(1836, {	-- Old Crafty
					["provider"] = { "i", 34486 },	-- Old Crafty
					["requireSkill"] = FISHING,
				})),
			}),
			battlepets({
				["sym"] = {{"select","speciesID",
					467,	-- Dung Beetle (PET!)
					471,	-- Robo-Chick (PET!)
					466,	-- Spiny Lizard (PET!)
					420,	-- Toad (PET!)
					418,	-- Water Snake (PET!)
				}},
			}),
			explorationHeader({
				visit_exploration(5170,{coord={48.8,83.3,ORGRIMMAR}}),	-- Valley of Strength
			}),
			n(FACTIONS, {
				faction(FACTION_BILGEWATER_CARTEL, {	-- Bilgewater Cartel
					["provider"] = { "i", 64884 },	-- Bilgewater Cartel Tabard
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_DARKSPEAR_TROLLS, {	-- Darkspear Trolls
					-- #if AFTER CATA
					["provider"] = { "i", 45582 },	-- Darkspear Tabard
					-- #else
					["icon"] = 236456,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_HUOJIN_PANDAREN, {	-- Huojin Pandaren
					["provider"] = { "i", 83080 },	-- Huojin Tabard
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_ORGRIMMAR, {
					-- #if AFTER CATA
					["provider"] = { "i", 45581 },	-- Orgrimmar Tabard
					-- #else
					["icon"] = 236452,
					-- #endif
					["OnTooltip"] = [[_.OnTooltipDB.RuneclothTurnIns]],
					["races"] = HORDE_ONLY,
				}),
			}),
			n(FLIGHT_PATHS, {
				fp(23, {	-- Orgrimmar, Durotar
					["cr"] = 3310,	-- Doras <Wind Rider Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 49.4, 59.2, ORGRIMMAR },
						-- #else
						{ 45.2, 63.8, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
				}),
			}),
			petbattles({
				n(63626, {	-- Varzok <Battle Pet Tamer>
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["description"] =
						-- #if BEFORE 9.0.3
						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nNew quest might not be given until daily reset.",
						-- #else
						"Provides the Horde Battle Pet questline, the quests are given in the following order:\n\n1. The inital quests touring middle Kalimdor\n2. 'Battle Pet Tamers: Eastern Kingdoms' + 'Battle Pet Tamers: Kalimdor'\n3. 'Grand Master Lydia Accoste' + 'Grand Master Trixxy'\n4. 'Battle Pet Tamers: Outland'\n5. 'Grand Master Antari'\n6. 'Battle Pet Tamers: Northrend'\n7. 'Grand Master Payne'\n8. 'Battle Pet Tamers: Cataclysm'\n9. 'Grand Master Obalis'\n10. 'Battle Pet Tamers: Pandaria'\n11. 'Grand Master Aki'\n\nYou might have to tinker with Chromie time on low-level character to obtain these account-wide quests, and new quest might not be given until daily reset.",
						-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if ANYCLASSIC
						r(119467),	-- Battle Pet Training
						-- #else
						spell(119467),	-- Battle Pet Training
						-- #endif
					}
				}),
				q(31967, {	-- Battle Pet Tamers: Cataclysm (H)
					["sourceQuest"] = 31983,	-- A Brief Reprieve (H)
					-- ["altQuests"] = { 31966 },
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { MOUNT_HYJAL, DEEPHOLM, TWILIGHT_HIGHLANDS },
					["races"] = HORDE_ONLY,
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
				q(31903, {	-- Battle Pet Tamers: Eastern Kingdoms (H)
					["sourceQuest"] = 31918,	-- A Tamer's Homecoming (H)
					-- ["altQuests"] = { 31902 },	-- Battle Pet Tamers: Eastern Kingdoms (Alliance version, since only one can be completed per account and Blizz doesn't check it off, apparently)
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
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
				q(31891, {	-- Battle Pet Tamers: Kalimdor (H)
					["sourceQuest"] = 31918,	-- A Tamer's Homecoming (H)
					-- ["altQuests"] = { 31889 },
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { FERALAS, DUSTWALLOW_MARSH, THOUSAND_NEEDLES, FELWOOD, MOONGLADE },
					["races"] = HORDE_ONLY,
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
				q(31929, {	-- Battle Pet Tamers: Northrend (H)
					["sourceQuest"] = 31982,	-- Exceeding Expectations (H)
					-- ["altQuests"] = { 31927 },
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { HOWLING_FJORD, CRYSTALSONG_FOREST, DRAGONBLIGHT, ZULDRAK },
					["races"] = HORDE_ONLY,
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
				q(31921, {	-- Battle Pet Tamers: Outland (H)
					["sourceQuests"] = {
						31977,	-- The Returning Champion (H)
						31980,	-- The Returning Champion (H)
					},
					-- ["altQuests"] = { 31919 },
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { HELLFIRE_PENINSULA, ZANGARMARSH, NAGRAND, SHATTRATH_CITY },
					["races"] = HORDE_ONLY,
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
				q(31952, {	-- Battle Pet Tamers: Pandaria (H)
					["sourceQuest"] = 31986,	-- The Triumphant Return (H)
					-- ["altQuests"] = { 31930 },
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { THE_JADE_FOREST, VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, KUN_LAI_SUMMIT, TOWNLONG_STEPPES, DREAD_WASTES },
					["races"] = HORDE_ONLY,
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
				q(31587, {	-- Got one! (Matty)
					["sourceQuest"] = 31828,	-- Level Up!
					["qg"] = 63086,	-- Matty
					["coord"] = { 36.8, 77.4, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31590, {	-- Got one! (Varzok)
					["sourceQuest"] = 31827,	-- Level Up!
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31585, {	-- Learning the Ropes (Matty)
					["qg"] = 63086,	-- Matty
					["coord"] = { 36.8, 77.4, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31588, {	-- Learning the Ropes (Varzok)
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31828, {	-- Level Up! (Matty)
					["sourceQuest"] = 31586,	-- On The Mend
					["qg"] = 63086,	-- Matty
					["coord"] = { 36.8, 77.4, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31827, {	-- Level Up! (Varzok)
					["sourceQuest"] = 31589,	-- On The Mend
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31586, {	-- On The Mend (Matty)
					["sourceQuest"] = 31585,	-- Learning the Ropes
					["qg"] = 63086,	-- Matty
					["coord"] = { 36.8, 77.4, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 45789 },	-- Bezzil <Stable Master>
							["coord"] = { 40.8, 80.6, ORGRIMMAR },
						}),
					},
				}),
				q(31589, {	-- On The Mend (Varzok)
					["sourceQuest"] = 31588,	-- Learning the Ropes
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Battle Pets Healed
							["provider"] = { "n", 47764 },	-- Murog <Stable Master>
							["coord"] = { 62.6, 35.6, ORGRIMMAR },
						}),
					},
				}),
				-- Infamous Breadcrumbs, these are offered at the end of the training quests in each of the starter zones. Can't find any info on which one is appropriate to which map, so this is going to need to be something figured out on an entirely new account that has done none of the pet battle quests
				q(32009, {	-- Varzok
					["description"] = "|CFFFF0000Do not under any circumstances abandon this quest, you cannot reobtain it.|r",
					["altQuests"] = {
						-- Alliance Shared Account-Wide Pet Battle Intro Quests
						32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
					},
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31882, {	-- Varzok
					["altQuests"] = {
						-- Alliance Shared Account-Wide Pet Battle Intro Quests
						32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
					},
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31883, {	-- Varzok
					["altQuests"] = {
						-- Alliance Shared Account-Wide Pet Battle Intro Quests
						32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
					},
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31884, {	-- Varzok
					["altQuests"] = {
						-- Alliance Shared Account-Wide Pet Battle Intro Quests
						32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
					},
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31885, {	-- Varzok
					["altQuests"] = {
						-- Alliance Shared Account-Wide Pet Battle Intro Quests
						32008,	-- Audrey Burnhep (Will be marked completed if any Audrey Burnhep quest is completed)
					},
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(31812, {	-- Zunta, The Pet Tramer
					["sourceQuests"] = { 32009, 31882, 31883, 31884, 31885 },	-- Varzok (all breadcrumbs)
					["qg"] = 63626,	-- Varzok
					["coord"] = { 52.6, 59.3, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Defeat Zunta
							["provider"] = { "n", 66126 },	-- Zunta
							["coord"] = { 43.9, 28.9, DUROTAR },
						}),
						i(89125),	-- Sack of Pet Supplies
					},
				}),
			}),
			n(PROFESSIONS, {
				prof(ALCHEMY, {
					n(3347, {	-- Yelmak <Alchemy Trainer>
						["coord"] = { 55.6, 46.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(11178, {	-- Borgosh Corebender <Weaponsmith>
						["coord"] = { 79.6, 23.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_WEAPONSMITHING,
					}),
					n(11177, {	-- Okothos Ironrager <Armorsmith>
						["coord"] = { 79.8, 23.8, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_ARMORSMITHING,
					}),
					n(3355, {	-- Saru Steelfury <Blacksmithing Trainer>
						["coord"] = { 76.4, 34.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(3399, bubbleDownSelf({ ["timeline"] = { ADDED_1_11_1 }, }, {	-- Zamja <Cooking Trainer>
						["coord"] = { 32.2, 69.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(3345, {	-- Godan <Enchanting Trainer>
						["coord"] = { 53.4, 49.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(11017, {	-- Roxxik <Engineering Trainer>
						["coord"] = { 56.8, 56.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(3373, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Arnok <First Aid Trainer>
						["coord"] = { 34.0, 84.4, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_FIRST_AID,
					})),
					n(45540, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3, REMOVED_7_3_5 } }, {	-- Krenk Choplimb <Bandage Trainer>
						["coord"] = { 37.6, 87.2, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(CLASSIC_FIRST_AID,
							-- #if AFTER CATA
							CATA_FIRST_AID
							-- #else
							{}
							-- #endif
						),
					})),
					n(133109, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_5 } }, {	-- Mender Jessara <Bandage Trainer>
						["coord"] = { 38.2, 86.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(3332, {	-- Lumak <Fishing Trainer>
						["coord"] = { 66.6, 41.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					i(34486, {	-- Old Crafty
						["description"] =
							-- #if BEFORE WRATH
							"Keep this in your bank until Achievements are added, otherwise you'll need to obtain it again. Fair warning!",
							-- #elseif BEFORE LEGION
							"Keep this in your bank until Transmog is added, otherwise you'll need to obtain it again. Fair warning!",
							-- #elseif AFTER TWW
							"Keep this in your bank until the appearance can be learned again, otherwise you'll need to obtain it again. Fair warning!",
							-- #else
							nil,
							-- #endif
						["timeline"] = { ADDED_2_3_0 },
						-- #if AFTER TWW
						["collectible"] = false,  -- remove when Blizzard fix fish collection
						-- #endif
					}),
				}),
				prof(HERBALISM, {
					n(3404, {	-- Jandi <Herbalism Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 34.6, 63.2, ORGRIMMAR },
							-- #else
							{ 55.6, 39.6, ORGRIMMAR },
							-- #endif
						},
						["races"] = HORDE_ONLY,
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
					n(30706, {	-- Jo'mah <Inscription Trainer>
						["coord"] = { 35.6, 69.2, ORGRIMMAR },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_3_0_2 },
						["groups"] = appendGroups(
							WRATH_INSCRIPTION,
							-- #if AFTER CATA
							CATA_INSCRIPTION,
							-- #endif
							{}
						),
					}),
				}),
				-- #endif
				-- #if AFTER CATA
				prof(JEWELCRAFTING, {
					n(46675, {	-- Lugrah <Jewelcrafting Trainer>
						["coord"] = { 72.5, 34.3, ORGRIMMAR },
						["timeline"] = { ADDED_4_0_3 },
						["races"] = HORDE_ONLY,
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
					n(50482, {	-- Marith Lazuria <Jewelcrafting Supplies>
						["coord"] = { 72.4, 34.6, ORGRIMMAR },
						["timeline"] = { ADDED_4_0_3 },
						["races"] = HORDE_ONLY,
						["groups"] = COMMON_CATACLYSM_JEWELCRAFTING_RECIPES,
					}),

					applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, n(57922, {	-- Taryssa Lazuria <Jewelcrafting Supplies>
						["coord"] = { 72.4, 34.6, ORGRIMMAR },
						["timeline"] = { ADDED_4_3_0 },
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(COMMON_CATACLYSM_EPIC_JEWELCRAFTING_RECIPES, {
							i(71949, {	-- Tome of Burning Jewels
								["cost"] = {{"c", 361, 4}},	-- 4x Illustrious Jewelcrafter's Token
								["filterID"] = CONSUMABLES,
								["sym"] = {
									{"select","npcID",57922},{"pop"},	-- this NPC
									{"not","itemID",71949},				-- not this item
									{"isnt","currencyID"},	-- no currencies
								},
							}),
						}),
					})),
				}),
				-- #endif
				prof(LEATHERWORKING, {
					n(3365, {	-- Karolek <Leatherworking Trainer>
						["coords"] = {
							-- #if BEFORE CATA
							{ 62.8, 44.6, ORGRIMMAR },
							-- #else
							{ 60.8, 54.8, ORGRIMMAR },
							-- #endif
						},
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_LEGION_LEATHERWORKING,
					}),
				}),
				prof(MINING, {
					n(3357, {	-- Makaru <Mining Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 72.4, 35.6, ORGRIMMAR },
							-- #else
							{ 73.0, 27.0, ORGRIMMAR },
							-- #endif
						},
						["races"] = HORDE_ONLY,
						["groups"] = CLASSIC_CATA_MINING,
					}),
				}),
				prof(POISONS, {
					n(3328, {	-- Ormok <Rogue Trainer>
						["coord"] = { 44.6, 61.6, ORGRIMMAR },
						["races"] = HORDE_ONLY,
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
					n(3363, {	-- Magar <Tailoring Trainer>
						["coords"] = {
							-- #if AFTER CATA
							{ 60.6, 59.0, ORGRIMMAR },
							-- #else
							{ 63.6, 50.0, ORGRIMMAR },
							-- #endif
						},
						["races"] = HORDE_ONLY,
						["groups"] = appendGroups(CLASSIC_TAILORING,
							-- #if AFTER CATA
							CATA_TAILORING
							-- #else
							{}
							-- #endif
						),
					}),
				}),
			}),
			n(QUESTS, {
				q(7831, {	-- A Donation of Mageweave
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7835, {	-- A Donation of Mageweave
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4338, 60 } },	-- Mageweave Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				q(7824, {	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7836, {	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 60 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(7827, {	-- A Donation of Silk
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7834, {	-- A Donation of Silk
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 4306, 60 } },	-- Silk Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 26,
				}),
				q(7826, {	-- A Donation of Wool
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7833, {	-- A Donation of Wool
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 2592, 60 } },	-- Wool Cloth
					["races"] = HORDE_ONLY,
					["lvl"] = 12,
				}),
				q(7341, {	-- A Fair Trade
					["qg"] = 14182,	-- Bounty Hunter Kolark
					["coord"] = { 74.4, 26.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.1
					["cost"] = { { "i", 15997, 200 } },	-- Thorium Shells
					-- #endif
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 52,
					-- #if BEFORE 4.0.1
					["groups"] = {
						i(18042),	-- Thorium Headed Arrow
					},
					-- #endif
				}),
				q(26588, {	-- A Furious Catch
					["qg"] = 43239,	-- Razgar
					["coord"] = { 65.7, 41.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(26572, {	-- A Golden Opportunity
					["qg"] = 43239,	-- Razgar
					["coord"] = { 65.7, 41.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(62265, {	-- A New Adventure Awaits
					["description"] = "This quest is automatically offered upon reaching the specified level while in Chromie Time.",
					["timeline"] = { CREATED_9_0_2, ADDED_10_0_2 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", 61 },	-- either level or some HQT probably locks this... good luck
					["groups"] = {
						i(183188),	-- Chromie's Scroll (H) (QI!)
					},
				}),
				warchiefscommand(q(28790, {	-- A Personal Summons (Vashj'ir Starter Quest)
					["qg"] = 45244,	-- Farseer Krogar
					["coord"] = { 50.4, 38.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1, REMOVED_8_3_0 },
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(80, 80, 30),
				})),
				q(25160, {	-- A Present for Lila
					["qg"] = 50482,	-- Marith Lazuria
					["coord"] = { 72.4, 34.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(50341, {	-- A Recent Discovery
					["sourceQuest"] = 49977,	-- Summons to Orgrimmar
					["qg"] = 132254,	-- Nathanos Blightcaller
					["coord"] = { 49.8, 75.6, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
				q(26557, {	-- A Staggering Effort
					["qg"] = 43239,	-- Razgar
					["coord"] = { 65.7, 41.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(58949),	-- Stag Eye
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(7832, {	-- Additional Runecloth [Darkspear Trolls]
					["sourceQuest"] = 7824,	-- A Donation of Runecloth
					["qg"] = 14726,	-- Rashona Straglash <Horde Cloth Quartermaster>
					["coord"] = { 63.4, 51.0, ORGRIMMAR },
					["maxReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(7837, {	-- Additional Runecloth [Orgrimmar]
					["sourceQuest"] = 7836,	-- A Donation of Runecloth
					["qg"] = 14727,	-- Vehena <Horde Cloth Quartermaster>
					["coord"] = { 37.8, 87.6, ORGRIMMAR },
					["maxReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = { { "i", 14047, 20 } },	-- Runecloth
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 50,
				}),
				q(62568, {	-- Adventurers Wanted: Chromie's Call
					["qg"] = 168431,	-- Warlord Breka Grimaxe
					["coord"] = { 48.3, 71.4, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(25264, {	-- Ak'Zeloth
					["sourceQuest"] = 25263,	-- Arnak Fireblade
					["qg"] = 3216,	-- Arnak Fireblade
					["coord"] = { 58.5, 53.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),

				q(27277, {	-- An Audience with Ureda
					["qgs"] = {
						3047,	-- Archmage Shymm <Mage Trainer>
						4566,	-- Kaelystia Hatebringer <Mage Trainer>
						16653,	-- Inethven <Mage Trainer>
					},
					["coords"] = {
						{ 22.8, 14.5, THUNDER_BLUFF },	-- Archmage Shymm <Mage Trainer>
						{ 85.0, 14.0, UNDERCITY },	-- Kaelystia Hatebringer <Mage Trainer>
						{ 53.0, 19.6, SILVERMOON_CITY },	-- Inethven <Mage Trainer>
					},
					["timeline"] = { ADDED_4_0_3 },
					["classes"] = { MAGE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(20, 20, 8),
				}),
				q(40976, {	-- Audience with the Warchief
					["qg"] = 97296,	-- Archmage Khadgar
					["coord"] = { 52.6, 88.2, ORGRIMMAR },
					["timeline"] = { ADDED_7_0_3 },
					["classes"] = { DEMONHUNTER },
					["races"] = { BLOODELF },
				}),
				q(2751, {	-- Barbaric Battlements
					-- #if BEFORE 4.0.3
					["description"] = "Becomes available at Blacksmithing skill level 140 when character level requirement is met.",
					["coord"] = { 79.4, 22.4, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "Becomes available at Classic Blacksmithing skill level 140 when character level requirement is met.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #else
					["description"] = "Becomes available at Blacksmithing skill level 140 when character level requirement is met.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #endif
					["qg"] = 7790,	-- Orokk Omosh
					["cost"] = {
						{ "i", 2868, 2 },	-- Patterned Bronze Bracers
						{ "i", 7957, 2 },	-- Bronze Greatsword
						{ "i", 5635, 2 },	-- Sharp Claw
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7979, {	-- Plans: Barbaric Iron Breastplate (RECIPE!)
						-- #if BEFORE 6.0.2
						["description"] = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #elseif AFTER 9.2.5
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
						-- #else
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #endif
						}),
					},
				}),
				q(51443, {	-- Battle For Azeroth: Mission Statement (BfA version)
					--[[
					-- available to a level 47, pre-9.0 character during patch 9.0
					-- these SQs are no longer required, because the heart of azeroth is not mandatory to start bfa content. you can pick 51443 up immediately
					["sourceQuests"] = {
						-- This quest was not completed for me, but 52428 was completed... maybe it's a breadcrumb technically?
						53031,	-- The Speaker's Imperative
						52428,	-- Infusing the Heart
					},
					]]--
					["qgs"] = {
						121210,	-- Nathanos Blightcaller
						140176,	-- Nathanos Blightcaller
						49750,	-- Warchief's Herald
					},
					["coords"] = {
						{ 58.0, 62.8, ZULDAZAR },	-- Nathanos Blightcaller
						{ 48.9, 91.4, ORGRIMMAR },	-- Nathanos Blightcaller
						{ 49.4, 76.6, ORGRIMMAR },	-- Warchief's Herald
					},
					["timeline"] = { ADDED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
				q(1508, {	-- Blind Cazul
					["sourceQuests"] = {
						1507,	-- Devourer of Souls [Orgrimmar]
						1472,	-- Devourer of Souls [Undercity]
					},
					["qg"] = 5909,	-- Cazul
					["coord"] = { 47.2, 46.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(29401, {	-- Blown Away
					["qg"] = 54004,	-- Jaga
					["coord"] = { 48.1, 46.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/5 Windswept Balloon
							["providers"] = {
								{ "i",  71034 },	-- Windswept Balloon
								{ "o", 209058 },	-- Windswept Balloon
							},
						}),
						i(72045, {	-- Horde Balloon (PET!)
							["timeline"] = { ADDED_4_2_0 },
						}),
					},
				}),
				q(4300, {	-- Bone-Bladed Weapons
					["qg"] = 8659,	-- Jes'rimon
					["coord"] = { 55.6, 34.2, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { UNGORO_CRATER },
					["races"] = HORDE_ONLY,
					["lvl"] = 48,
					["groups"] = {
						objective(1, {	-- 0/1 White Ravasaur Claw
							["provider"] = { "i", 11477 },	-- White Ravasaur Claw
							["crs"] = {
								9683,	-- Lar'korwi Mate
								6505,	-- Ravasaur
								6507,	-- Ravasaur Hunter
								6581,	-- Ravasaur Matriarch
								6506,	-- Ravasaur Runner
								6508,	-- Venomhide Ravasaur
							},
						}),
						i(11862, {	-- White Bone Band
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11863, {	-- White Bone Shredder
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11864, {	-- White Bone Spear
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2757, {	-- Booty Bay or Bust!
					["sourceQuest"] = 2756,	-- The Old Ways
					["providers"] = {
						{ "n", 7793 },	-- Ox
						{ "i", 8663 },	-- Mithril Insignia
					},
					["coord"] = { 80.4, 23.2, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, n(BURLY_BRAWL, {
					["questID"] = 75300,	-- Burly Brawl HQT	-- TODO: Confirm if this is the same HQT.
					["qgs"] = {
						3399,	-- Zamja <Cooking Trainer>
						208023,	-- Gru'ark
					},
					["coord"] = { 57.6, 53.6, ORGRIMMAR },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { WARRIOR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(204716, {	-- Rune of Frenzied Assault
							["classes"] = { WARRIOR },
							["groups"] = {
								recipe(425447),	-- Engrave Pants - Frenzied Assault
							},
						}),
					},
				})),
				-- #endif
				q(60961, {	-- Burning Crusade: Onward to Adventure in Outland
					["description"] = "Complete the prerequisite quest, switch to another timeline, then switch back to Burning Crusade and you will get this quest.",
					["sourceQuest"] = 60123,	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60123, {	-- Burning Crusade: To Outland!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(4511, {	-- Calm Before the Storm (2/2)
					["sourceQuest"] = 4509,	-- Calm Before the Storm (1/2)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 56.4, 46.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
					["groups"] = {
						i(11870, {	-- Oblivion Orb
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11871, {	-- Snarkshaw Spaulders
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(11872, {	-- Eschewal Greaves
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(60887, {	-- Cataclysm: Onward to Adventure in Kalimdor
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(26227, {	-- Careful, This Fruit Bites Back
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(26543, {	-- Clammy Hands
					["qg"] = 43239,	-- Razgar
					["coord"] = { 65.7, 41.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(26226, {	-- Crawfish Creole
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(1501, {	-- Creature of the Void [Orgrimmar]
					["sourceQuest"] = 1506,	-- Gan'rul's Summons
					["altQuests"] = { 1473 },	-- Creature of the Void [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tablet of Verga
							["providers"] = {
								{ "i", 6535 },	-- Tablet of Verga
								{ "o", 58595 },	-- Burning Blade Stash
							},
							["coord"] = { 51.6, 9.7, DUROTAR },
						}),
					},
				}),
				q(32468, {	-- Crystal Clarity (H)
					["sourceQuest"] = 32471,	-- Light Camera Action (H)
					["qg"] = 16926,	-- Vivica Starshot
					["coord"] = { 34.5, 70.8, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
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
				q(2458, {	-- Deep Cover
					["sourceQuest"] = 2460,	-- The Shattered Salute
					["providers"] = {
						{ "n", 3401 },	-- Shenthul
						{ "i", 8051 },	-- Flare Gun
					},
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				-- #if NOT ANYCLASSIC
				q(5646, {	-- Devouring Plague [Orgrimmar]
					["altQuests"] = {
						5679,	-- Devouring Plague [Undercity]
						5644,	-- Devouring Plague [Thunder Bluff]
					},
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 20,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2944,	-- Devouring Plague (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(49855, {	-- Disaster at Mount Hyjal
					["sourceQuest"] = 28805,	-- The Eye of the Storm
					["qg"] = 45244,	-- Farseer Krogar
					["coord"] = { 50.4, 38.2, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				q(13842, {	-- Dread Head Redemption
					["sourceQuest"] = 13841,	-- All Apologies
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 49.2, 72.3, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(56708, {	-- Bow of Ire (old version)
							["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
						}),
						i(56710, {	-- Unbountied Cloak (Replaced by Durak's Downfall in WoD)
							["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
						}),
						i(119325, {	-- Bow of Ire
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(119326, {	-- Ring of Pardons
							["timeline"] = { ADDED_6_0_2 },
						}),
						i(119327, {	-- Durak's Downfall
							["timeline"] = { ADDED_6_0_2 },
						}),
					},
				}),
				q(2378, {	-- Find the Shattered Hand
					["altQuests"] = { 2380 },	-- To Orgrimmar!
					["qg"] = 6467,	-- Mennet Carkad
					["coord"] = { 83.2, 69, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				q(26804, {	-- Flight to Razor Hill
					["sourceQuest"] = 26803,	-- Missing Reports
					["qg"] = 3310,	-- Doras
					["coord"] = { 49.4, 59.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { GOBLIN },
				}),
				q(27686, {	-- Forged Documents
					["description"] = "After creating Forged Documents with Inscription, search the city for an NPC to accept them - the quest can end in a variety of different places.",
					["provider"] = { "i", 63276 },	-- Forged Documents
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = INSCRIPTION,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
				}),
				q(25162, {	-- Elemental Goo
					["qg"] = 50482,	-- Marith Lazuria
					["coord"] = { 72.4, 34.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(26235, {	-- Even Thieves Get Hungry
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(26220, {	-- Everything Is Better with Bacon
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(31014, {	-- Hellscream's Gift
					["sourceQuest"] = 31013,	-- The Horde Way
					["qg"] = 62092,	-- Garrosh Hellscream
					["coord"] = { 70.6, 30.8, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4, REMOVED_7_0_3 },
					["maps"] = { 503 },	-- Brawl'gar Arena
					["races"] = { PANDAREN_HORDE },
				}),
				-- #if ANYCLASSIC
				q(5652, {	-- Hex of Weakness [Orgrimmar]
					["altQuests"] = {
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
						5657,	-- Hex of Weakness [Undercity]
					},
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						3706,	-- Tai'jin <Priest Trainer>
						11407,	-- Var'jun
						3044,	-- Miles Welsh <Priest Trainer>
						4606,	-- Aelthalyste <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, ORGRIMMAR },
						{ 54.2, 42.8, DUROTAR },
						{ 47.0, 58.8, MULGORE },
						{ 26.0, 15.8, THUNDER_BLUFF },
						{ 49.01, 18.32, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5652, {	-- Hex of Weakness [Orgrimmar]
					["altQuests"] = {
						5654,	-- Hex of Weakness [Durotar]
						5655,	-- Hex of Weakness [Mulgore]
						5656,	-- Hex of Weakness [Thunder Bluff]
						5657,	-- Hex of Weakness [Undercity]
					},
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 9035,	-- Hex of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(5726, {	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { DUROTAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Lieutenant's Insignia
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["crs"] = {
								3198,	-- Burning Blade Apprentice
								3197,	-- Burning Blade Fanatic
							},
						}),
					},
				}),
				q(5727, {	-- Hidden Enemies (2/5)
					["sourceQuest"] = 5726,	-- Hidden Enemies (1/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Gauge Neeru Fireblade's reaction to you being a member of the Burning Blade
							["provider"] = { "i", 14544 },	-- Lieutenant's Insignia
							["coord"] = { 49.5, 50.6, ORGRIMMAR },
							["cr"] = 3216,	-- Neeru Fireblade
						}),
					},
				}),
				q(2479, {	-- Hinott's Assistance (1/2)
					["sourceQuest"] = 2478,	-- Mission: Possible But Not Probable
					["providers"] = {
						{ "n", 3401 },	-- Shenthul
						{ "i", 8087 },	-- Sample of Zanzil's Altered Mixture
					},
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(53372, {	-- Battle for Azeroth: Hour of Reckoning
					-- ["description"] = "This quest is automatically offered to Horde players upon reaching level 110.",
					["qg"] = 14720,	-- High Overlord Saurfang
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					["races"] = HORDE_ONLY,
					-- TODO: level is obviously incorrect. whether this quest is still available is disputed. potential ways to get, per wowhead comments:
					-- "If you are looking for how to get your Heart of Azeroth, post Shadowlands pre-patch (9.0) you can only get it once you have hit level 50, it will then be automatically pushed through as soon as you ding to go visit Magni in Silithus."
					-- "This is incorrect. All you have to do is loot an Azerite item from a BfA Dungeon Level 45-49 and it starts the Quest when you Zone to Org/SW."
					-- figure out which of these is correct (if either) and adjust description accordingly
					["groups"] = {
						i(163528),	-- Deathguard's Gladius
						i(163525),	-- Grunt's Boot Knife
						i(163531),	-- Grunt's Cleaver
						i(163543),	-- Grunt's Handaxe
						i(163523),	-- Grunt's Warmace
						i(163527),	-- Headhunter's Spear
						i(163524),	-- Shadow Hunter's Bow
						i(163529),	-- War-Caller's Spellhammer
						i(163532),	-- Warmage's Spellblade
						i(163530),	-- Warmage's Spire
					},
				}),
				q(32674, {	-- I Believe You Can Fly
					["description"] = "This quest is automatically offered to Horde players upon reaching level 30.",
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1,
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(66323, {	-- Idling Pie
					["sourceQuest"] = 66253,	-- Stolen Shipments
					["qg"] = 187758,	-- Zaa'je
					["coord"] = { 48.5, 75.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(191682, {	-- Explosive Pie (QI!)
							["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
						}),
					},
				}),
				q(2754, {	-- Horns of Frenzy
					-- #if BEFORE 4.0.3
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.\n\nPlans: Solid Iron Maul is a 1-in-stock recipe that can either be bought from Muuran at Ghost Walker Post in Desolace, or the Alliance-only vendor Jannos Ironwill at Refuge Pointe in Arathi Highlands.",
					["coord"] = { 79.4, 22.4, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Classic Blacksmithing skill level 140.\n\nPlans: Solid Iron Maul is a 1-in-stock recipe that can either be bought from Muuran at Ghost Walker Post in Desolace, or the Alliance-only vendor Jannos Ironwill at Refuge Pointe in Arathi Highlands.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #else
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.\n\nPlans: Solid Iron Maul is a 1-in-stock recipe that can either be bought from Muuran at Ghost Walker Post in Desolace, or the Alliance-only vendor Jannos Ironwill at Refuge Pointe in Arathi Highlands.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #endif
					["sourceQuest"] = 2753,	-- Trampled Under Foot
					["qg"] = 7790,	-- Orokk Omosh
					["cost"] = {
						{ "i", 3851, 2 },	-- Solid Iron Maul
						{ "i", 3482, 2 },	-- Silvered Bronze Boots
						{ "i", 3483, 2 },	-- Silvered Bronze Gauntlets
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7980, {	-- Plans: Barbaric Iron Helm (RECIPE!)
						-- #if BEFORE 6.0.2
						["description"] = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #elseif AFTER 9.2.5
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
						-- #else
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #endif
						}),
					},
				}),
				q(2755, {	-- Joys of Omosh
					-- #if BEFORE 4.0.3
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 79.4, 22.4, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Classic Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #else
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #endif
					["sourceQuest"] = 2754,	-- Horns of Frenzy
					["qg"] = 7790,	-- Orokk Omosh
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7982, {	-- Plans: Barbaric Iron Gloves (RECIPE!)
						-- #if BEFORE 6.0.2
						["description"] = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #elseif AFTER 9.2.5
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
						-- #else
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #endif
						}),
					},
				}),
				q(1945, {	-- Laughing Sisters
					["sourceQuest"] = 1944,	-- Waters of Xavian
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["classes"] = { MAGE },
					["races"] = { UNDEAD, TROLL },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/12 Laughing Sister's Hair
							["provider"] = { "i", 7270 },	-- Laughing Sister's Hair
							["cr"] = 4054,	-- Laughing Sister
						}),
					},
				}),
				q(32673, {	-- Learn To Ride (Goblin)
					-- #if BEFORE 10.1.5
					-- #if AFTER SL
					["description"] = "This quest is available to Goblins upon reaching level 10.",
					-- #else
					["description"] = "This quest is available to Goblins upon reaching level 20.",
					-- #endif
					-- #endif
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { GOBLIN },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(32669, {	-- Learn To Ride (Orc)
					-- #if BEFORE 10.1.5
					-- #if AFTER SL
					["description"] = "This quest is available to Orcs upon reaching level 10.",
					-- #else
					["description"] = "This quest is available to Orcs upon reaching level 20.",
					-- #endif
					-- #endif
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { ORC },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(32667, {	-- Learn To Ride (Pandaren)
					-- #if BEFORE 10.1.5
					-- #if AFTER SL
					["description"] = "This quest is available to Pandaren upon reaching level 10.",
					-- #else
					["description"] = "This quest is available to Pandaren upon reaching level 20.",
					-- #endif
					-- #endif
					["timeline"] = { ADDED_5_2_0, REMOVED_10_1_5 },
					["races"] = { PANDAREN_HORDE },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["isBreadcrumb"] = true,
					["DisablePartySync"] = true,
				}),
				q(14086, {	-- Learn to Ride in Orgrimmar
					["description"] = "The pamphlet that starts this quest is sent to Orcs in their Mailbox upon reaching the specified level.",
					["provider"] = { "i", 46880 },	-- Riding Training Pamphlet
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = { ORC },
					["lockCriteria"] = { 1,
						"spellID", 33388,	-- Apprentice Riding
						"spellID", 33391,	-- Journeyman Riding
						"spellID", 34090,	-- Expert Riding
						"spellID", 34091,	-- Artisan Riding
						"spellID", 90265,	-- Master Riding
					},
					["lvl"] = lvlsquish(20, 20, 10),
				}),
				q(60970, {	-- Legion: Onward to Adventure in the Broken Isles
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(32471, {	-- Light Camera Action (H)
					["qg"] = 16926,	-- Vivica Starshot
					["coord"] = { 34.5, 70.8, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["cost"] = { { "i", 4406, 1 } },	-- Standard Scope
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "toyID", 122674 },	-- S.E.L.F.I.E. Camera MkII
					["groups"] = {
						objective(1, {	-- 0/1 Iron Box
							["provider"] = { "i", 155856 },	-- Iron Box
							["coord"] = { 63.9, 19.7, ORGRIMMAR },
						}),
						objective(3, {	-- 0/1 Russet Belt
							["provider"] = { "i", 3593 },	-- Russet Belt
							["coord"] = { 60.8, 54.0, ORGRIMMAR },
						}),
						i(122637, {	-- S.E.L.F.I.E. Camera
							["timeline"] = { ADDED_6_1_0 },
						}),
					},
				}),
				-- #if ANYCLASSIC
				q(65601, {	-- Love Hurts
					["qg"] = 5909,	-- Cazul
					["coord"] = { 47.2, 46.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				-- #endif
				q(26293, {	-- Machines of War
					["sourceQuest"] = 28717,	-- Warchief's Command: Twilight Highlands!
					["qg"] = 3144,	-- Eitrigg
					["coords"] = {
						{ 48.6, 71.0, ORGRIMMAR },
						{ 49.1, 72.4, ORGRIMMAR },
					},
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
				}),
				q(4494, {	-- March of the Silithid (H)
					["sourceQuest"] = 32,	-- Rise of the Silithid (H)
					["qg"] = 7010,	-- Zilzibin Drumlore
					["coord"] = { 55.2, 55.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { TANARIS },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
				q(26803, {	-- Missing Reports
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { GOBLIN },
				}),
				q(60964, {	-- Mists of Pandaria: Onward to Adventure in Pandaria
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60126, {	-- Mists of Pandaria: To Pandaria!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(1509, {	-- News of Dogran (1/2)
					["sourceQuest"] = 1508,	-- Blind Cazul
					["qg"] = 5910,	-- Zankaja
					["coord"] = { 37, 59.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = { ORC, UNDEAD },
					["lvl"] = 20,
				}),
				q(25158, {	-- Nibbler! No!
					["qg"] = 50482,	-- Marith Lazuria
					["coord"] = { 72.4, 34.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(26556, {	-- No Dumping Allowed
					["qg"] = 43239,	-- Razgar
					["coord"] = { 65.7, 41.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["requireSkill"] = FISHING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["lvl"] = 10,
					["groups"] = {
						i(67414),	-- Bag of Shiny Things
					},
				}),
				q(25161, {	-- Ogrezonians in the Mood
					["qg"] = 50482,	-- Marith Lazuria
					["coord"] = { 72.4, 34.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(2752, {	-- On Iron Pauldrons
					-- #if BEFORE 4.0.3
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 79.4, 22.4, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Classic Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #else
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #endif
					["sourceQuest"] = 2751,	-- Barbaric Battlements
					["qg"] = 7790,	-- Orokk Omosh
					["cost"] = {
						{ "i", 7958, 4 },	-- Bronze Battle Axe
						{ "i", 7956, 4 },	-- Bronze Warhammer
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(32, 32, 15),
					["groups"] = {
						i(7978, {	-- Plans: Barbaric Iron Shoulders (RECIPE!)
						-- #if BEFORE 6.0.2
						["description"] = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #elseif AFTER 9.2.5
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
						-- #else
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #endif
						}),
					},
				}),
				q(25275, {	-- Report to the Labor Captain
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = { GOBLIN },
				}),
				q(26840, {	-- Return to the Highlands
					["sourceQuest"] = 26830,	-- Traitor's Bait
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
				}),
				q(10794, {	-- Rogues of the Shattered Hand
					["qg"] = 16684,	-- Zelanis <Rogue Trainer>
					["coord"] = { 79.4, 52, SILVERMOON_CITY },
					["timeline"] = { ADDED_2_0_3, REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = 20,
				}),
				q(28909, {	-- Sauranok Will Point the Way
					["sourceQuest"] = 26294,	-- Weapons of Mass Dysfunction
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78196, {	-- Secrets of Undeath (1/2)
					["qg"] = 211229,	-- Dietrich Praice
					["coord"] = { 35.6, 87.8, ORGRIMMAR },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { ASHENVALE },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 18,
					["groups"] = {
						objective(1, {	-- 0/12 Shadeleaf
							["provider"] = { "i", 210045 },	-- Shadeleaf
							["coord"] = { 69.6, 63.0, ASHENVALE },
							["crs"] = {
								3782,	-- Shadethicket Stone Mover
								3784,	-- Shadethicket Bark Ripper
								3783,	-- Shadethicket Raincaller
								3781,	-- Shadethicket Wood Shaper
							},
						}),
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, q(78197, {	-- Secrets of Undeath (2/2)
					["description"] = "Completing this quest will allow you to meditate in the same manner as the undead.",
					["sourceQuest"] = 78196,	-- Secrets of Undeath (1/2)
					["providers"] = {
						{ "n", 211229 },	-- Dietrich Praice
						{ "n",   6491 },	-- Spirit Healer
						{ "i", 210056 },	-- Tincture of Waking Death
					},
					["coords"] = {
						{ 35.6, 87.8, ORGRIMMAR },
						{ 56.2, 49.4, TIRISFAL_GLADES },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 18,
					["groups"] = {
						recipe(424041, {	-- Secrets of Undeath
							["classes"] = { PRIEST },
						}),
					},
				})),
				-- #endif
				-- #if ANYCLASSIC
				q(5680, {	-- Shadowguard [Orgrimmar]
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["qgs"] = {
						6018,	-- Ur'kyo <Priest Trainer>
						4606,	-- Aelthalyste
						3044,	-- Miles Welsh <Priest Trainer>
					},
					["coords"] = {
						{ 35.6, 87.6, ORGRIMMAR },
						{ 49.01, 18.32, UNDERCITY },
						{ 26.0, 15.8, THUNDER_BLUFF },
					},
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					-- #if BEFORE 2.4.1
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if NOT ANYCLASSIC
				q(5680, {	-- Shadowguard [Orgrimmar]
					["altQuests"] = {
						5643,	-- Shadowguard [Undercity]
						5642,	-- Shadowguard [Thunder Bluff]
					},
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_2_4_1 },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 20,
					-- #if BEFORE 2.4.1
					["groups"] = {
						{
							["recipeID"] = 18137,	-- Shadowguard (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(79079, {	-- Sharing the Faith
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { DUROTAR },
					["classes"] = { PRIEST },
					["races"] = { TROLL },
					["lvl"] = 5,
					["groups"] = {
						objective(1, {	-- Pray over the Supplicant
							["provider"] = { "n", 215096 },	-- Supplicant
							["description"] = "You must first have your Meditation buff and then use /pray on the kneeling Supplicant.",
						}),
					},
				})),
				-- #endif
				q(1943, {	-- Speak with Deino
					["qg"] = 4568,	-- Anastasia Hartwell <Mage Trainer>
					["coord"] = { 85, 10.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["isBreadcrumb"] = true,
					["lvl"] = 26,
				}),
				q(26233, {	-- Stealing From Our Own (Non-Troll)
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = exclude(TROLL, HORDE_ONLY),
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(26234, {	-- Stealing From Our Own (Troll)
					["qg"] = 42506,	-- Marogg
					["coord"] = { 56.5, 62.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = COOKING,
					["races"] = { TROLL },
					["isDaily"] = true,
					["groups"] = {
						COOKING_AWARD,
					},
				}),
				q(66253, {	-- Stolen Shipments
					["qg"] = 187758,	-- Zaa'je
					["coord"] = { 48.5, 75.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(191408, {	-- Explosive Pie
							["timeline"] = { ADDED_9_2_5, REMOVED_10_0_5 },
						}),
					},
				}),
				q(49977, {	-- Summons to Orgrimmar
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
				q(51796, {	-- The Battle for Lordaeron
					["sourceQuest"] = 53372,	-- Hour of Reckoning
					["qgs"] = {
						14720,	-- High Overlord Saurfang
						140176,	-- Nathanos Blightcaller
					},
					["coords"] = {
						{ 48.5, 70.7, ORGRIMMAR },
						{ 49.0, 91.6, ORGRIMMAR },
					},
					["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
					["races"] = HORDE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65604, {	-- The Binding (Incubus) [Orgrimmar]
					["sourceQuest"] = 65610,	-- Wish You Were Here
					["altQuests"] = { 65597 },	-- The Binding (Incubus) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Incubus slain
							["provider"] = { "n", 185335 },	-- Summoned Incubus
							["cost"] = { { "i", 190187, 1 } },	-- Withered Scarf
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
				q(1513, {	-- The Binding (Succubus) [Orgrimmar]
					["sourceQuest"] = 1512,	-- Love's Gift
					["altQuests"] = { 1474 },	-- The Binding (Succubus) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Succubus slain
							["provider"] = { "n", 5677 },	-- Summoned Succubus
							["cost"] = { { "i", 6626, 1 } },	-- Dogran's Pendant
						}),
						-- #if BEFORE 4.0.3
						recipe(712),	-- Summon Succubus
						-- #endif
						i(22243, {	-- Small Soul Pouch
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1504, {	-- The Binding (Voidwalker) [Orgrimmar]
					["sourceQuest"] = 1501,	-- Creature of the Void [Orgrimmar]
					["altQuests"] = { 1471 },	-- The Binding (Voidwalker) [Undercity]
					["qg"] = 5875,	-- Gan'rul Bloodeye
					["coord"] = { 48.2, 45.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, TROLL, UNDEAD },
					["classes"] = { WARLOCK },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Summoned Voidwalker slain
							["provider"] = { "n", 5676 },	-- Summoned Voidwalker
							["cost"] = { { "i", 7464, 1 } },	-- Glyphs of Summoning
						}),
						-- #if BEFORE 4.0.3
						recipe(697),	-- Summon Voidwalker
						-- #endif
					},
				}),
				q(28805, {	-- The Eye of the Storm
					["sourceQuest"] = 28790,	-- A Personal Summons
					["qg"] = 45244,	-- Farseer Krogar
					["coord"] = { 50.4, 38.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Peered into the Waters of Farseeing
							["provider"] = { "o", 207416 },	-- Waters of Farseeing
							["coord"] = { 50.9, 37.8, ORGRIMMAR },
						}),
					},
				}),
				q(31013, {	-- The Horde Way
					["sourceQuest"] = 31012,	-- Joining the Horde
					["qg"] = 39605,	-- Garrosh Hellscream
					["coord"] = { 48.2, 70.6, ORGRIMMAR },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = { PANDAREN_NEUTRAL },
				}),
				q(25159, {	-- The Latest Fashion!
					["qg"] = 50482,	-- Marith Lazuria
					["coord"] = { 72.4, 34.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["requireSkill"] = JEWELCRAFTING,
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = JEWELCRAFTING_AWARD_GROUPS,
				}),
				q(53779, {	-- The Lies of a Loa
					["sourceQuest"] = 53777,	-- Where He Died
					["qg"] = 146630,	-- Restless Spirit
					["coord"] = { 48.4, 71.4, ORGRIMMAR },
					["timeline"] = { ADDED_8_1_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(120, 120, 50),
				}),
				q(75519, {	-- The Long Hunt
					["description"] = "Probably, Undead need to complete The Hidden Need and I Am Forsaken, while non-Undead only need to complete Most Loyal. Undead are offered this quest in Undercity, while non-Undead are offered this quest in Orgrimmar.",
					["sourceQuests"] = {
						57376,	-- The Hidden Need
						72867,	-- I Am Forsaken
						57152,	-- Most Loyal
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 204250 },	-- Lilian Voss / Dori'thur
					["coords"] = {
						{ 63.0, 68.4, TIRISFAL_GLADES },
						{ 48.6, 48.6, ORGRIMMAR },
					},
					["timeline"] = { ADDED_10_1_7 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "questID", 54107 },	-- Grim Tidings (non-loyalist split quest)
				}),
				q(2756, {	-- The Old Ways
					["qg"] = 7792,	-- Aturk the Anvil
					["coord"] = { 80.6, 23.2, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["cost"] = {
						{ "i", 7963, 4 },	-- Steel Breastplate
						{ "i", 7922, 4 },	-- Steel Plate Helm
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 210,
					["races"] = HORDE_ONLY,
					["lvl"] = 40,
					["groups"] = {
						recipe(9957, {	-- Orcish War Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(1963, {	-- The Shattered Hand (1/2)
					["sourceQuest"] = 1859,	-- Therzok
					["qg"] = 6446,	-- Therzok
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tazan's Satchel
							["provider"] = { "i", 7209 },	-- Tazan's Satchel
							["coord"] = { 63.8, 44.6, THE_BARRENS },
							["cr"] = 6494,	-- Tazan
						}),
					},
				}),
				q(1858, {	-- The Shattered Hand (2/2)
					["sourceQuest"] = 1963,	-- The Shattered Hand (1/2)
					["qg"] = 6446,	-- Therzok
					["coord"] = { 42.74, 53.52, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = { ORC, TROLL },
					["classes"] = { ROGUE },
					["lvl"] = 10,
					["groups"] = {
						objective(1, {	-- 0/1 Tazan's Logbook
							["providers"] = {
								{ "i", 7295 },	-- Tazan's Logbook
								{ "i", 7208 },	-- Tazan's Key
								{ "i", 7209 },	-- Tazan's Satchel
							},
							["coord"] = { 54.2, 68.2, ORGRIMMAR },
							["cr"] = 6466,	-- Gamon
						}),
						i(7298, {	-- Blade of Cunning
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(2460, {	-- The Shattered Salute
					["sourceQuests"] = {
						-- #if AFTER TBC
						10794,	-- Rogues of the Shattered Hand
						-- #endif
						2380,	-- To Orgrimmar!
					},
					["qg"] = 3401,	-- Shenthul
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
				}),
				q(50769, {	-- The Stormwind Extraction
					["sourceQuest"] = 51443,	-- Mission Statement
					["qg"] = 135205,	-- Nathanos Blightcaller
					["coord"] = { 54.4, 78.4, ORGRIMMAR },
					["timeline"] = { ADDED_8_0_1 },
					["maps"] = {
						DAZARALOR,
						1012,	-- Stormwind City (Scenario)
						1013,	-- The Stockade (Scenario)
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(160251),	-- Blightcaller's Easy Death (QI!)
					},
				}),
				q(6611, {	-- To Gadgetzan You Go!
					-- #if BEFORE 4.0.3
					["description"] = "Becomes available at Cooking skill level 225 when character level requirement is met.",
					["coord"] = { 57.4, 53.6, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "Becomes available at Classic Cooking skill level 225 when character level requirement is met.",
					["coord"] = { 32.2, 69.4, ORGRIMMAR },
					-- #else
					["description"] = "Becomes available at Cooking skill level 225 when character level requirement is met.",
					["coord"] = { 32.2, 69.4, ORGRIMMAR },
					-- #endif
					["qg"] = 3399,	-- Zamja
					["requireSkill"] = COOKING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 15),
				}),
				q(2380, {	-- To Orgrimmar!
					["altQuests"] = { 2378 },	-- Find the Shattered Hand
					["qg"] = 3170,	-- Kaplak
					["coord"] = { 51.98, 43.70, DUROTAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["classes"] = { ROGUE },
					["isBreadcrumb"] = true,
					["lvl"] = 16,
				}),
				-- #if NOT ANYCLASSIC
				q(5662, {	-- Touch of Weakness [Orgrimmar]
					["altQuests"] = {
						5658,	-- Touch of Weakness [Undercity]
						5660,	-- Touch of Weakness [Durotar]
						5661,	-- Touch of Weakness [Mulgore]
						5663,	-- Touch of Weakness [Thunder Bluff]
					},
					["qg"] = 6018,	-- Ur'kyo <Priest Trainer>
					["coord"] = { 35.6, 87.6, ORGRIMMAR },
					["timeline"] = { REMOVED_3_0_2 },
					["classes"] = { PRIEST },
					["races"] = { UNDEAD },
					["lvl"] = 10,
					-- #if BEFORE 3.0.2
					["groups"] = {
						{
							["recipeID"] = 2652,	-- Touch of Weakness (Rank 1)
							["rank"] = 1,
						},
					},
					-- #endif
				}),
				-- #endif
				q(26830, {	-- Traitor's Bait
					["sourceQuest"] = 26798,	-- Saurfang Will be Pleased
					["qg"] = 3144,	-- Eitrigg
					["coord"] = { 48.6, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63916, {	-- Belt of Mystical Betrayal
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63914, {	-- Mindsliced Chestguard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63913, {	-- Twilight-Heart Shoulderplates
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63912, {	-- Twilight Mirrorshield
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63915, {	-- Vision-Tainted Treads
							["timeline"] = { ADDED_4_0_3 },
						}),
						-- #if BEFORE 9.1.0
						i(63917, {	-- Truthbreaker Shield [Not listed, but awards on completing quest] [9.1: was NOT received when completed. 2021-09-25]
							["timeline"] = { ADDED_4_0_3, REMOVED_9_1_0 },
							-- Crieve NOTE: This appears to have been an Alliance quest reward in SW.
						}),
						-- #endif
					},
				}),
				q(2753, {	-- Trampled Under Foot
					-- #if BEFORE 4.0.3
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 79.4, 22.4, ORGRIMMAR },
					-- #elseif AFTER 8.0.1
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Classic Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #else
					["description"] = "This questline begins with the quest 'Barbaric Battlements', which requires Blacksmithing skill level 140.",
					["coord"] = { 76.2, 37.4, ORGRIMMAR },
					-- #endif
					["sourceQuest"] = 2752,	-- On Iron Pauldrons
					["qg"] = 7790,	-- Orokk Omosh
					["cost"] = {
						{ "i", 3836, 4 },	-- Green Iron Helm
						{ "i", 3835, 4 },	-- Green Iron Bracers
						{ "i", 3842, 2 },	-- Green Iron Leggings
					},
					["requireSkill"] = BLACKSMITHING,
					["learnedAt"] = 140,
					["races"] = HORDE_ONLY,
					["lvl"] = 32,
					["groups"] = {
						i(7981, {	-- Plans: Barbaric Iron Boots (RECIPE!)
						-- #if BEFORE 6.0.2
						["description"] = "This recipe can be sold on the Neutral Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #elseif AFTER 9.2.5
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to both Alliance and Horde alts.",
						-- #else
						["description"] = "This recipe can be sold on the Auction House to Alliance Blacksmiths for a... nominal fee.\n\nOnly naturally accessible to Horde Blacksmiths, this recipe is not soulbound and can be mailed to Horde alts.",
						-- #endif
						}),
					},
				}),
				q(26311, {	-- Unfamiliar Waters
					["sourceQuest"] = 28909,	-- Sauranok Will Point the Way
					["qg"] = 42637,	-- Sauranok the Mystic
					["coord"] = { 48.0, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(63922, {	-- Awestruck Bracers
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63924, {	-- Blade-Dodging Girdle
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(63923, {	-- Hauberk of Shock
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				q(58673, {	-- Warchief of the Horde
					["sourceQuest"] = 58672,	-- A Gathering of Champions
					["qg"] = 162190,	-- Valeera Sanguinar
					["coord"] = { 39.4, 79.6, ORGRIMMAR },
					["timeline"] = { ADDED_8_3_0 },
					["races"] = HORDE_ONLY,
				}),
				warchiefscommand(q(28717, {	-- Warchief's Command: Twilight Highlands!
					["timeline"] = { ADDED_4_0_3 },
					["maps"] = { --[[ORGRIMMAR,]] THUNDER_BLUFF, UNDERCITY },	-- Only found in Orgrimmar, Thunder Bluff, & Undercity in Cataclysm.
					["isBreadcrumb"] = true,
					-- #if BEFORE 7.3.5
					-- Cataclysm: Minimum is level 84. (TODO: Confirm this.)
					["lvl"] = 84,
					-- #elseif AFTER 9.0.3
					["groups"] = {
						n(14720, { -- High Overlord Saurfang
							["description"] = "Saurfang will not give you any quests after turning in 'Warchied's Command: Twilight Highlands!'. You can get the proper beginning of the Twilight Highland intro questline from Eitrigg in the same room, with the quest 'Machines of War'.\n\nThe same applies for the quest 'Saurfang Will be Pleased', where the continuation yet again is obtained from Eitrigg with the quest 'Traitor's Bait'.",
						}),
					},
					-- #endif
				})),
				q(60968, {	-- Warlords of Draenor: Onward to Adventure in Draenor
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(1944, {	-- Waters of Xavian
					["sourceQuest"] = 1943,	-- Speak with Deino
					["qg"] = 5885,	-- Deino <Mage Trainer>
					["coord"] = { 38.6, 86.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["races"] = { UNDEAD, TROLL },
					["classes"] = { MAGE },
					["lvl"] = 26,
					["groups"] = {
						objective(1, {	-- 0/1 Xavian Water Sample
							["providers"] = {
								{ "i", 7268 },	-- Xavian Water Sample
								{ "i", 7269 },	-- Deino's Flask
							},
							["coord"] = { 76, 41, ASHENVALE },
						}),
					},
				}),
				q(26324, {	-- Where Is My Warfleet?
					["sourceQuest"] = 26311,	-- Unfamiliar Waters
					["qgs"] = {
						-- #IF AFTER BFA
						3144,	-- Etrigg
						-- #ELSE
						14720,	-- High Overlord Saurfang
						-- #ENDIF
					},
					["coords"] = {
						-- #IF AFTER BFA
						{ 49.2, 72.3, ORGRIMMAR },
						-- #ELSE
						{ 48.6, 71.0, ORGRIMMAR },
						-- #ENDIF
					},
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
				}),
				-- #if ANYCLASSIC
				q(65610, {	-- Wish You Were Here
					["sourceQuest"] = 65601,	-- Love Hurts
					["altQuests"] = { 65593 },	-- Hearts of the Lovers
					["qg"] = 3363,	-- Magar <Tailoring Trainer>
					["coord"] = { 63.6, 50.0, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { ASHENVALE },
					["classes"] = { WARLOCK },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						objective(1, {	-- 0/1 Withered Scarf
							["provider"] = { "i", 190232 },	-- Withered Scarf
							["crs"] = {
								3782,	-- Shadethicket Stone Mover
								3784,	-- Shadethicket Bark Ripper
								3931,	-- Shadethicket Oracle
							},
						}),
					},
				}),
				-- #endif
				q(7660, {	-- Wolf Swapping - Arctic Wolf
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					["coords"] = {
						-- #if AFTER CATA
						{ 61.6, 35.6, ORGRIMMAR },
						-- #else
						{ 69.4, 12.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12351, 1 } },	-- Arctic Wolf
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
				}),
				q(7661, {	-- Wolf Swapping - Red Wolf
					["description"] = "If you are one of the poor unfortunate souls that turned in your unique mount for one of the generic mounts I'm so sorry.",
					["qg"] = 3362,	-- Ogunaro Wolfrunner
					["coords"] = {
						-- #if AFTER CATA
						{ 61.6, 35.6, ORGRIMMAR },
						-- #else
						{ 69.4, 12.4, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { REMOVED_1_4_0 },
					["cost"] = { { "i", 12330, 1 } },	-- Red Wolf (MOUNT!)
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["_drop"] = { "g" },
					["sym"] = { { "select", "itemID", 18796, 18798, 18797 } },
				}),
				q(60963, {	-- Wrath of the Lich King: Onward to Adventure in Northrend
					["description"] = "Complete the prerequisite quest, switch to another timeline, then switch back to Wrath of the Lich King and you will get this quest.",
					["sourceQuest"] = 60097,	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["repeatable"] = true,
				}),
				q(60097, {	-- Wrath of the Lich King: To Northrend!
					["qg"] = 167032,	-- Chromie <Emissary of the Bronze Dragonflight>
					["coord"] = { 40.8, 79.9, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["lockCriteria"] = { 1, "lvl", LEVEL_CHROMIETIME_MAX },
					["isBreadcrumb"] = true,
				}),
				q(2382, {	-- Wrenix of Ratchet
					["sourceQuest"] = 2379,	-- Zando'zan
					["qg"] = 3402,	-- Zando'zan
					["coord"] = { 42.8, 53, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
				q(6608, {	-- You Too Good.
					["description"] = "Requires 225 Skill in Classic Fishing",
					["qg"] = 3332,	-- Lumak <Fishing Trainer>
					["coords"] = {
						-- #if AFTER CATA
						{ 66.6, 41.6, ORGRIMMAR },
						-- #else
						{ 69.8, 29.6, ORGRIMMAR },
						-- #endif
					},
					["requireSkill"] = FISHING,
					["learnedAt"] = 225,
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 15),
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_ONE, q(78304, {	-- You've Got Yourself A Deal [H]
					["sourceQuest"] = 78288,	-- Let Me Make You An Offer [H]
					["providers"] = {
						{ "n",   3408 },	-- Zel'mak <Warrior Trainer>
						{ "i", 211448 },	-- Signed Procurement Contract
					},
					["coord"] = { 80.2, 29.6, ORGRIMMAR },
					["timeline"] = { REMOVED_2_0_1 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 20,
					["groups"] = {
						i(210210),	-- Grizzwerks Defense Industries Founder's Certificate
					},
				})),
				-- #endif
				q(2379, {	-- Zando'zan
					["sourceQuest"] = 2378,	-- Find the Shattered Hand
					-- #if AFTER TBC
					["altQuests"] = { 10372 },	-- A Discreet Inquiry
					-- #endif
					["qg"] = 3401,	-- Shenthul
					["coord"] = { 43, 53.4, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["classes"] = { ROGUE },
					["races"] = HORDE_ONLY,
					["lvl"] = 16,
				}),
			}),
			-- #if AFTER 7.0.3.22248
			n(RARES, {
				n(130911, {	-- Charles Gastly
					["coord"] = { 50.8, 55.1, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(155909),	-- Bottled Stillwater
						i(134831, {	-- Doomsayer's Robes (TOY!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(155907),	-- Undercity "Skull Shocker"
						i(155910),	-- Tirisfal Sourdough
					},
				}),
			}),
			-- #endif
			-- #if BEFORE TBC
			n(RIDING_TRAINER, {
				n(4752, {	-- Kildar <Wolf Riding Instructor>
					["coord"] = { 69.2, 13.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,

					-- Available to Orcs without faction requirements.
					["minReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. ORC .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["groups"] = {
						recipe(825, {	-- Wolf Riding
							["cost"] = 200000,
							["lvl"] = 40,
						}),
					},
				}),
			}),
			-- #endif
			-- #if SEASON_OF_DISCOVERY
			n(TREASURES, {
				applyclassicphase(SOD_PHASE_ONE, i(204174, {	-- Rune of Precision
					["provider"] = { "o", 404830 },	-- Dusty Chest
					["coord"] = { 55.9, 44.7, ORGRIMMAR },
					["timeline"] = { REMOVED_2_0_1 },
					["classes"] = { ROGUE },
					["groups"] = {
						recipe(400081),	-- Engrave Pants - Between the Eyes
					},
				})),
				applyclassicphase(SOD_PHASE_ONE, i(207972, {	-- The Lessons of Ta'zo
					["provider"] = { "o", 405149 },	-- Mural of Ta'zo
					["coord"] = { 38.7, 78.4, ORGRIMMAR },
				})),
			}),
			-- #endif
			n(VENDORS, {
				n(171691, { -- Alpheus Cain <Shady Dealer>
					["coord"] = { 75.35, 45.8, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","npcID",99863},{"pop"}},	-- Jenri <Spymaster>
				}),
				n(149806, {	-- A. Shady
					["coord"] = { 76.7, 35.6, ORGRIMMAR },
					["timeline"] = { ADDED_8_1_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(166805, {	-- Blood-Soaked Invitation (QI!)
							["timeline"] = { ADDED_8_1_5 },
						}),
					},
				}),
				n(5611, {	-- Barkeep Morag
					["coords"] = {
						-- #if AFTER CATA
						{ 55.1, 77.9, ORGRIMMAR },	-- The Broken Tusk
						-- #else
						{ 54.0, 67.0, ORGRIMMAR },	-- The Broken Tusk
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(1179),	-- Ice Cold Milk
						i(1205),	-- Melon Juice
						-- i(1645),	-- Moonberry Juice
						i(8766),	-- Morning Glory Dew
						i(159),		-- Refreshing Spring Water
						i(1708),	-- Sweet Nectar
						-- #if AFTER CATA
						i(44571),	-- Bottle of Silvermoon Port
						i(44573),	-- Cup of Frog Venom Brew
						i(44575),	-- Flask of Bitter Cactus Cider
						i(44570),	-- Glass of Eversong Wine
						i(44574),	-- Skin of Mulgore Firewater
						-- #else
						i(2723),	-- Bottle of Dalaran Noir
						i(2594),	-- Flagon of Dwarven Honeymead/Mead
						i(2593),	-- Flask of Stormwind Tawny
						i(2595),	-- Jug of Badlands Bourbon
						i(2596),	-- Skin of Dwarven Stout
						-- #endif
					},
				}),
				n(52809, {	-- Blax Bottlerocket <Toys and Novelties>
					["coords"] = {
						{ 58.2, 62.6, ORGRIMMAR },
						{ 58.8, 61.2, ORGRIMMAR },
						{ 58.6, 57.8, ORGRIMMAR },
						{ 58.6, 55.2, ORGRIMMAR },
						{ 57.8, 51.0, ORGRIMMAR },
					},
					["timeline"] = { ADDED_4_1_0 },
					["races"] = HORDE_ONLY,
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
				n(69977, {	-- Blood Guard Zar'shi <Ruthless Gladiator>
					["coord"] = { 38.6, 70.0, ORGRIMMAR },
					["timeline"] = { ADDED_5_2_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR },
						{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(54659, {	-- Blood Guard Zar'shi Original CATA S10 ELITE VENDOR
					["coord"] = { 38.2, 71.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
					},
				}),
				n(3364, {	-- Borya <Tailoring Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.6, 58.6, ORGRIMMAR },
						-- #else
						{ 63.0, 51.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{ "sub", "common_vendor", 5154 }},	-- Poranna Snowbraid <Tailoring Supplies>
					-- #endif
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(215369)),	-- Pattern: Invoker's Cord (RECIPE!)
						applyclassicphase(SOD_PHASE_ONE, i(215370)),	-- Pattern: Invoker's Mantle (RECIPE!)
						-- #endif
						i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if NOT ANYCLASSIC
				-- TODO: Finish this part.
				n(12793, {	-- Brave Stonehide <Accessories Quartermaster>
					["coord"] = { 38.2, 72.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						moh(1, i(15199)),	-- Stone Guard's Herald
						moh(1, i(15197)),	-- Scout's Tabard
						un(REMOVED_FROM_GAME, i(18834)),	-- Insignia of the Horde (Warrior)
						un(REMOVED_FROM_GAME, i(18845)),	-- Insignia of the Horde (Shaman)
						un(REMOVED_FROM_GAME, i(18846)),	-- Insignia of the Horde (Hunter)
						un(REMOVED_FROM_GAME, i(18849)),	-- Insignia of the Horde (Rogue)
						un(REMOVED_FROM_GAME, i(18850)),	-- Insignia of the Horde (Mage)
						un(REMOVED_FROM_GAME, i(18851)),	-- Insignia of the Horde (Priest)
						un(REMOVED_FROM_GAME, i(18852)),	-- Insignia of the Horde (Warlock)
						un(REMOVED_FROM_GAME, i(18853)),	-- Insignia of the Horde (Druid)
						un(REMOVED_FROM_GAME, i(15200)),	-- Senior Sergeant's Insignia
						un(REMOVED_FROM_GAME, i(18428)),	-- Senior Sergeant's Insignia
						un(REMOVED_FROM_GAME, i(16335)),	-- Senior Sergeant's Insignia
						un(REMOVED_FROM_GAME, i(44957)),	-- Greater Inscription of the Gladiator
					},
				}),
				-- #else
				n(12793, {	-- Brave Stonehide <Officer Accessories Quartermaster>
					-- #if BEFORE TBC
					["description"] = "Found within the Hall of Legends.",
					["maps"] = { ORGRIMMAR },
					-- #endif
					["coords"] = {
						-- #if AFTER CATA
						{ 37.8, 72.1, ORGRIMMAR },
						-- #else
						{ 40.6, 69.5, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18607),	-- Horde Battle Standard
						i(15199),	-- Stone Guard's Herald
						i(18839),	-- Combat Healing Potion
						i(18841),	-- Combat Mana Potion
					},
				}),
				-- #endif
				n(46742, {	-- Brunda
					["coord"] = { 54.6, 50.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["timeline"] = { ADDED_4_0_1 },
					["sym"] = {{ "sub", "common_vendor", 4615 }},	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
					["groups"] = {
						i(3422),	-- Beautiful Wildflowers
						i(3420),	-- Black Rose
						i(3424),	-- Bouquet Of Black Roses
						i(3423),	-- Bouquet Of White Roses
						i(3419),	-- Red Rose
						i(3421),	-- Simple Wildflowers
					},
				}),
				n(179897, bubbleDownSelf({ ["timeline"] = { ADDED_9_1_0 } }, {	-- Ca'nees
					["coord"] = { 40.0, 61.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(187009),	-- Dazzling Spectacles
						i(186092),	-- Historical Perspective Shifters
						i(186091),	-- Onyx Glare-Reducers
						i(186090),	-- Simple Glasses
						i(187010),	-- Tasteful Eyeglasses
					},
				})),
				n(50477, {	-- Champion Uru'zin <Darkspear Quartermaster>
					["coord"] = { 49.9, 58.1, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(45582, {	-- Darkspear Tabard
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(64912, {	-- Darkspear Cape
							["minReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64911, {	-- Darkspear Mantle
							["minReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64913, {	-- Darkspear Shroud
							["minReputation"] = { FACTION_DARKSPEAR_TROLLS, EXALTED },	-- Darkspear Trolls, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67536, {	-- Darkspear Satchel
							["minReputation"] = { FACTION_DARKSPEAR_TROLLS, REVERED },	-- Darkspear Trolls, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(69333, {	-- Disciple Jusi <Huojin Quartermaster>
					["coord"] = { 68.6, 40.2, ORGRIMMAR },
					["timeline"] = { ADDED_5_2_0 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(83080, {	-- Huojin Tabard
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(92070, {	-- Houjin Satchel
							["minReputation"] = { FACTION_HUOJIN_PANDAREN, REVERED },	-- Huojin Pandaren, Revered.
							["timeline"] = { ADDED_5_1_0 },
						}),
					},
				}),
				n(24520, {	-- Doris Volanthius <Armor Quartermaster> -- BC Vendor for Trinkets
					-- The NPC ID got reused many times. This is the BC Version, items listed under PvP>BC
					["coord"] = { 38.8, 69.8, ORGRIMMAR },
					["timeline"] = { ADDED_2_3_0 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
					},
				}),
				n(46593, {	-- Doris Volanthius Original CATA S9 ELITE VENDOR Horde
					["coord"] = { 38.8, 69.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				n(54657, {	-- Doris Volanthius <Vicious Gladiator>
					["coord"] = { 38.8, 69.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_GLADIATOR },
						{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(44918, {	-- Drakma <Wind Rider Keeper>
					["coord"] = { 48.0, 58.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(25477),	-- Swift Red Wind Rider (MOUNT!)
						i(25531),	-- Swift Green Wind Rider (MOUNT!)
						i(25532),	-- Swift Yellow Wind Rider (MOUNT!)
						i(25533),	-- Swift Purple Wind Rider (MOUNT!)
						i(25474),	-- Tawny Wind Rider (MOUNT!)
						i(25475),	-- Blue Wind Rider (MOUNT!)
						i(25476),	-- Green Wind Rider (MOUNT!)
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_FOUR, n(3144, {	-- Eitrigg
					["sourceQuest"] = 6602,	-- Blood of the Black Dragon Champion
					["coord"] = { 34.6, 38.6, ORGRIMMAR },
					["timeline"] = { ADDED_1_15_3 },
					["races"] = HORDE_ONLY,
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
				n(3367, {	-- Felika <Trade Supplies>
					["description"] = "This NPC walks between the Valley of Wisdom and Valley of Strength on the right path.",
					["coords"] = {
						-- #if AFTER CATA
						{ 48.4, 47.8, ORGRIMMAR },
						{ 52.6, 64.6, ORGRIMMAR },
						-- #else
						{ 46.5, 36.6, ORGRIMMAR },
						{ 50.8, 58.7, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						applyclassicphase(TBC_PHASE_ONE, i(20856, {	-- Design: Heavy Golden Necklace of Battle (RECIPE!)
							["timeline"] = { ADDED_2_0_5 },
							["isLimited"] = true,
						})),
					},
				}),
				n(133261, {	-- Feng Su <Cooking Trainer>
					["coord"] = { 41.0, 79.4, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				-- #if NOT ANYCLASSIC
				n(12795, {	-- First Sergeant Hola'mahi <Legacy Armor Quartermaster>
					["coord"] = { 38.2, 72.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {	-- High Warlord Armor
						{"select","expansionID",EXPANSION.CLASSIC},
						{"find","headerID",FACTION_HEADER_HORDE},
						{ "pop" },
						{ "exclude", "headerID", WEAPONS },
						-- #if BEFORE WRATH
						{ "exclude", "f", TRINKET_F, NECK_F },
						-- #endif
					},
				}),
				-- #endif
				n(50323, {	-- Frizzo Villamar <Bilgewater Cartel Quartermaster>
					["coord"] = { 50.0, 58.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(64884, {	-- Bilgewater Cartel Tabard
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64906, {	-- Bilgewater Cape
							["minReputation"] = { FACTION_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64905, {	-- Bilgewater Shroud
							["minReputation"] = { FACTION_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(64907, {	-- Bilgewater Mantle
							["minReputation"] = { FACTION_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel, Exalted.
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(67525, {	-- Bilgewater Satchel
							["minReputation"] = { FACTION_BILGEWATER_CARTEL, REVERED },	-- Bilgewater Cartel, Revered.
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(52036, pvp({	-- Galra <Honor Heirlooms>
					["coord"] = { 38.0, 70.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
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
						moh(4, i(122370, {	-- Inherited Insignia of the Horde
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
				n(4043, {	-- Galthuk <Two-Handed Weapons Merchant>
					["coord"] = { 76.0, 37.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
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
				n(5188, {	-- Garyl <Tabard Vendor>
					["coord"] =
					-- #IF AFTER 10.0.5
					{ 46.4, 79.4, ORGRIMMAR },	-- moved due to Trading Post
					-- #ELSE
					{ 47.6, 75.6, ORGRIMMAR },
					-- #ENDIF
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"select", "itemID",
						31779,	-- Aldor Tabard
						31804,	-- Cenarion Expedition Tabard
						36941,	-- Competitor's Tabard
						31776,	-- Consortium Tabard
						19031,	-- Frostwolf Battle Tabard
						31404,	-- Green Trophy Tabard of the Illidari
						31777,	-- Keepers of Time Tabard
						31778,	-- Lower City Tabard
						31773,	-- Mag'har Tabard
						43300,	-- Loremaster's Colors
						32828,	-- Ogri'la Tabard
						31405,	-- Purple Trophy Tabard of the Illidari
						15197,	-- Scout's Tabard
						31780,	-- Scryers Tabard
						31781,	-- Sha'tar Tabard
						32445,	-- Skyguard Tabard
						31775,	-- Sporeggar Tabard
						15199,	-- Stone Guard's Herald
						43349,	-- Tabard of Brute Force
						49054,	-- Tabard of Conquest (H)
						35280,	-- Tabard of Summer Flames
						35279,	-- Tabard of Summer Skies
						40643,	-- Tabard of the Achiever
						43348,	-- Tabard of the Explorer
						35221,	-- Tabard of the Shattered Sun
						24004,	-- Thrallmar Tabard (H)
						19505,	-- Warsong Battle Tabard (H)
						},
					},
					["groups"] = {
						i(5976),	-- Guild Tabard
					},
				}),
				n(3358, {	-- Gorina <Mining Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 72.67, 35.78, ORGRIMMAR },
						-- #else
						{ 73.2, 26.6, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 4599 }},	-- Sarah Killan <Mining Supplies>
				}),
				n(46555, {	-- Gunra <Justice Quartermaster>
					["coord"] = { 48.4, 71.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = TIER_TWELVE_GROUPS,
					-- #if AFTER 4.2.0
					["description"] = "Sells gear related to Cataclysm raid tier 12 (Firelands) as well as Baradin Hold.",
					-- #endif
				}),
				n(3335, {	-- Hagrus <Reagents>
					["coords"] = {
						-- #if AFTER CATA
						{ 45.6, 39.0, 86 },	-- The Drag
						-- #else
						{ 46.2, 46.6, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(5643, {	-- Recipe: Great Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
						i(5640, {	-- Recipe: Rage Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3316, {	-- Handor <Cloth & Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.8, 54.0, ORGRIMMAR },
						-- #else
						{ 62.8, 44.8, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2142,	-- Cuirboulli Belt
						2143,	-- Cuirboulli Boots
						2144,	-- Cuirboulli Bracers
						2145,	-- Cuirboulli Gloves
						2146,	-- Cuirboulli Pants
						2141,	-- Cuirboulli Vest
						2435,	-- Embroidered Armor
						3587,	-- Embroidered Belt
						2438,	-- Embroidered Boots
						3588,	-- Embroidered Bracers
						2440,	-- Embroidered Gloves
						3892,	-- Embroidered Hat
						2437,	-- Embroidered Pants
						2160,	-- Padded Armor
						3591,	-- Padded Belt
						2156,	-- Padded Boots
						3592,	-- Padded Bracers
						2158,	-- Padded Gloves
						2159,	-- Padded Pants
						2471,	-- Reinforced Leather Belt
						2473,	-- Reinforced Leather Boots
						2474,	-- Reinforced Leather Bracers
						3893,	-- Reinforced Leather Cap
						2475,	-- Reinforced Leather Gloves
						2472,	-- Reinforced Leather Pants
						2470,	-- Reinforced Leather Vest
						3593,	-- Russet Belt
						2432,	-- Russet Boots
						3594,	-- Russet Bracers
						2434,	-- Russet Gloves
						3889,	-- Russet Hat
						2431,	-- Russet Pants
						2429,	-- Russet Vest
						2464,	-- Studded Belt
						2467,	-- Studded Boots
						2468,	-- Studded Bracers
						2463,	-- Studded Doublet
						2469,	-- Studded Gloves
						3890,	-- Studded Hat
						2465,	-- Studded Pants
					}},
					["groups"] = {
						i(12256, {	-- Cindercloth Leggings
							["isLimited"] = true,
						}),
					},
				}),
				applyevent(EVENTS.WOW_ANNIVERSARY, n(110035, {	-- Historian Ju'pa
					["coord"] = { 36.6, 74.6, ORGRIMMAR },
					["timeline"] = { ADDED_7_1_0 },
					["races"] = HORDE_ONLY,
				})),
				n(95057, {	-- Illidari Darkdealer
					["coord"] = { 53.0, 56.5, ORGRIMMAR },
					["timeline"] = { ADDED_7_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(129096),	-- Battle-Mender's Dressing
						i(124069),	-- Felstone
						i(128805),	-- Potion of Fel Protection
					},
				}),
				n(46556, {	-- Jamus'Vaz <Valor Quartermaster>
					["coord"] = { 48.6, 71.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = TIER_THIRTEEN_GROUPS,
					-- #if AFTER 4.3.0
					["description"] = "Sells gear related to Cataclysm raid tier 13 (Dragon Soul).",
					-- #endif
				}),
				n(3410, {	-- Jin'sora <Bow Merchant>
					["coord"] = { 77.8, 38.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
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
				n(214070, {	-- Jornah <Supply Officer>
					["coord"] = { 51.6, 64.6, ORGRIMMAR },
					["groups"] = bubbleDownClassicRep(DUROTAR_SUPPLY_AND_LOGISTICS, {
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
				n(254606, {	-- Joruh <Battleground Decor Specialist>
					["coord"] = { 38.8, 72.0, ORGRIMMAR },
					["timeline"] = { ADDED_11_2_7 },
					["races"] = HORDE_ONLY,
					["groups"] = pvp({
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
						i(247760, {	-- Fortified Horde Banner (DECOR!)
							["sourceAchievement"] = 222,	-- Tower Defense
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
						i(247759, {	-- Horde Battlefield Banner (DECOR!)
							["sourceAchievement"] = 1153,	-- Overly Defensive
							["cost"] = {{ "c", HONOR, 600 }},
						}),
						i(247745, {	-- Horde Dueling Flag (DECOR!)
							["sourceAchievement"] = 229,	-- The Grim Reaper
							["cost"] = {{ "c", HONOR, 1000 }},
						}),
						i(247727, {	-- Iron Dragonmaw Gate (DECOR!)
							["sourceAchievement"] = 5223,	-- Master of Twin Peaks
							["cost"] = {{ "c", HONOR, 5000 }},
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
						i(256896, {	-- Smoke Lamppost (DECOR!)
							["sourceAchievement"] = 5245,	-- Battle for Gilneas Victory
							["cost"] = {{ "c", HONOR, 450 }},
						}),
						i(247761, {	-- Uncontested Battlefield Banner (DECOR!)
							["sourceAchievement"] = 212,	-- Storm Capper
							["cost"] = {{ "c", HONOR, 400 }},
						}),
						i(247747, {	-- Warsong Outriders Flag (DECOR!)
							["sourceAchievement"] = 167,	-- Warsong Gulch Veteran
							["cost"] = {{ "c", HONOR, 800 }},
						}),
					}),
				}),
				n(3322, {	-- Kaja <Bow & Rifle Vendor>
					["coord"] = { 40.8, 49.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3024),	-- Bkp 2700 Enforcer
						i(3025),	-- Bkp 42 Ultra
						i(3027),	-- Heavy Recurve Bow
						i(2511),	-- Hunter's Boomstick
						i(3023),	-- Large Bore Blunderbuss
						i(2509),	-- Ornate Blunderbuss
						i(3026),	-- Reinforced Bow
						-- #if AFTER CATA
						i(11303, {	-- Fine Shortbow
							["isLimited"] = true,
						}),
						i(11307, {	-- Massive Longbow
							["isLimited"] = true,
						}),
						i(11306, {	-- Sturdy Recurve
							["isLimited"] = true,
						}),
						-- #endif
					},
				}),
				n(48510, {	-- Kall Worthaton <Trike Dealer>
					["coord"] = { 36.2, 86.6, ORGRIMMAR },
					-- Available to Goblins without faction requirements.
					["minReputation"] = { FACTION_BILGEWATER_CARTEL, EXALTED },	-- Bilgewater Cartel, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. GOBLIN .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(62462, {	-- Goblin Turbo-Trike (MOUNT!)
							["timeline"] = { ADDED_4_0_3 },
						}),
						i(62461, {	-- Goblin Trike (MOUNT!)
							["timeline"] = { ADDED_4_0_3 },
						}),
					},
				}),
				n(3331, {	-- Kareth
					["coord"] = { 46.8, 63.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2520,	-- Broadsword
						1198,	-- Claymore
						851,	-- Cutlass
						922,	-- Dacian Falx
						2024,	-- Espadon
						2528,	-- Falchion
						2207,	-- Jambiya
						2209,	-- Kris
						923,	-- Longsword
						2526,	-- Main Gauche
						2208,	-- Poniad
						2534,	-- Rondel
						2027,	-- Scimitar
					}},
				}),
				n(45551, {	-- Karizi Porkpatty <Cooking Supplies>
					["coord"] = { 39.0, 85.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1, REMOVED_7_3_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(5816, {	-- Katis
					["coord"] = { 45.8, 57.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
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
				n(168623, {	-- Kazak Darkscream <Warlock Trainer>
					["coord"] = { 74.6, 47.2, ORGRIMMAR },
					["timeline"] = { ADDED_9_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(189719, {	-- Tattered Collar of the Incubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
						i(189720, {	-- Tattered Collar of the Succubus
							["timeline"] = { ADDED_9_2_0, REMOVED_10_0_5 },
						}),
					},
				}),
				n(3359, {	-- Kiro <War Harness Maker>
					["coord"] = { 66.8, 50.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(6526),	-- Battle Harness
						i(6523),	-- Buckled Harness
						i(6525),	-- Grunt's Harness
						i(6524),	-- Studded Leather Harness
					},
				}),
				n(3346, {	-- Kithas <Enchanting Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 53.2, 48.8, ORGRIMMAR },
						-- #else
						{ 53.6, 38.0, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
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
						i(67308, {	-- Formula: Enchanted Lantern (RECIPE!)
							["timeline"] = { ADDED_4_0_3 },
							["cost"] = { { "i", 52555, 20 }, },	-- 20x Hypnotic Dust
							["races"] = HORDE_ONLY,
						}),
						i(6349, {	-- Formula: Enchant 2H Weapon - Lesser Intellect (RECIPE!)
							["isLimited"] = true,
						}),
						i(6346, {	-- Formula: Enchant Chest - Lesser Mana (RECIPE!)
							["isLimited"] = true,
						}),
					}),
				}),
				n(8122, {	-- Kizzak Sparks
					["coord"] = { 57.8, 56.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					-- #if BEFORE 10.1
					["description"] = "This NPC is only available on July 4th (US) or September 30th (EU).",
					-- #else
					["description"] = "This NPC is only available on July 4th.",
					-- #endif
					["groups"] = {
						i(8626),	-- Blue Sparkler
						i(8625),	-- White Sparkler
						i(8624),	-- Red Sparkler
					},
				}),
				n(3348, {	-- Kor'geld <Alchemy Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 55.6, 45.4, ORGRIMMAR },
						-- #else
						{ 56.2, 34.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(13478, {	-- Recipe: Elixir of Superior Defense (RECIPE!)
							["isLimited"] = true,
						}),
						i(5642, {	-- Recipe: Free Action Potion (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3360, {	-- Koru
					["coord"] = { 76.2, 37.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						1197,	-- Giant Mace
						2030,	-- Gnarled Staff
						928,	-- Long Staff
						852,	-- Mace
						854,	-- Quarter Staff
					}},
					["groups"] = {
						i(925),		-- Flail
						i(2028),	-- Hammer
						i(924),	-- Maul
						i(20981, {	-- Neophyte's Mace
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(2026),	-- Rock Hammer
					},
				}),
				n(34043, {	-- Lady Palanseer <Jewelcrafting Quartermaster>
					["timeline"] = { ADDED_3_0_2, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
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
				-- #if NOT ANYCLASSIC
				-- TODO: Finish this part.
				n(12792, {	-- Lady Palanseer <Armor Quartermaster>
					["timeline"] = { REMOVED_3_0_2 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(28807)),	-- High Warlord's Chain Helm
						un(REMOVED_FROM_GAME, i(31646)),	-- High Warlord Ringmail Chestguard
						un(REMOVED_FROM_GAME, i(31647)),	-- High Warlord Ringmail Gloves
						un(REMOVED_FROM_GAME, i(31648)),	-- High Warlord Ringmail Headpiece
						un(REMOVED_FROM_GAME, i(31649)),	-- High Warlord Ringmail Legguards
						un(REMOVED_FROM_GAME, i(31650)),	-- High Warlord Ringmail Shoulders
						un(REMOVED_FROM_GAME, i(28846)),	-- High Warlord Mail Armor
						un(REMOVED_FROM_GAME, i(28847)),	-- High Warlord Mail Gauntlets
						un(REMOVED_FROM_GAME, i(28848)),	-- High Warlord Mail Helm
						un(REMOVED_FROM_GAME, i(28849)),	-- High Warlord Mail Leggings
						un(REMOVED_FROM_GAME, i(28850)),	-- High Warlord Mail Spaulders
						un(REMOVED_FROM_GAME, i(28805)),	-- High Warlord Chain Armor
						un(REMOVED_FROM_GAME, i(28806)),	-- High Warlord Chain Gauntlets
						un(REMOVED_FROM_GAME, i(28808)),	-- High Warlord Chain Leggings
						un(REMOVED_FROM_GAME, i(28809)),	-- High Warlord Chain Spaulders
						un(REMOVED_FROM_GAME, i(28841)),	-- High Warlord Linked Armor
						un(REMOVED_FROM_GAME, i(28842)),	-- High Warlord Linked Gauntlets
						un(REMOVED_FROM_GAME, i(28843)),	-- High Warlord Linked Helm
						un(REMOVED_FROM_GAME, i(28844)),	-- High Warlord Linked Leggings
						un(REMOVED_FROM_GAME, i(28845)),	-- High Warlord Linked Spaulders
						un(REMOVED_FROM_GAME, i(16518)),	-- Blood Guard's Mail Walker (1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16519)),	-- Blood Guard's Mail Grips(1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16521)),	-- Champion's Mail Helm(1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16522)),	-- Legionnaire's Mail Chestpiece (1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16523)),	-- Legionnaire's Mail Leggings (1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16524)),	-- Champion's Mail Shoulders(1.4 till 1.11)
						un(REMOVED_FROM_GAME, i(16494)),	-- Blood Guard's Dragonhide Boots
						un(REMOVED_FROM_GAME, i(16496)),	-- Blood Guard's Dragonhide Gauntlets
						un(REMOVED_FROM_GAME, i(16498)),	-- Blood Guard's Leather Treads
						un(REMOVED_FROM_GAME, i(16499)),	-- Blood Guard's Leather Vices
						un(REMOVED_FROM_GAME, i(16506)),	-- Champion's Leather Headguard
						un(REMOVED_FROM_GAME, i(16507)),	-- Champion's Leather Mantle
						un(REMOVED_FROM_GAME, i(16505)),	-- Legionnaire's Leather Hauberk
						un(REMOVED_FROM_GAME, i(16508)),	-- Legionnaire's Leather Leggings
						-- Champion's Regalia [Mage]
						un(REMOVED_FROM_GAME, i(16489)),	-- Champion's Silk Hood
						un(REMOVED_FROM_GAME, i(16492)),	-- Champion's Silk Shoulderpads
						un(REMOVED_FROM_GAME, i(16491)),	-- Legionnaire's Silk Robes
						un(REMOVED_FROM_GAME, i(16487)),	-- Blood Guard's Silk Gloves
						un(REMOVED_FROM_GAME, i(16490)),	-- Legionnaire's Silk Pants
						un(REMOVED_FROM_GAME, i(16485)),	-- Blood Guard's Silk Footwraps
						-- Champion's Threads [Warlock]
						un(REMOVED_FROM_GAME, i(17570)),	-- Champion's Dreadweave Hood
						un(REMOVED_FROM_GAME, i(17573)),	-- Champion's Dreadweave Shoulders
						un(REMOVED_FROM_GAME, i(17572)),	-- Legionnaire's Dreadweave Robe
						un(REMOVED_FROM_GAME, i(17577)),	-- Blood Guard's Dreadweave Gloves
						un(REMOVED_FROM_GAME, i(17571)),	-- Legionnaire's Dreadweave Leggings
						un(REMOVED_FROM_GAME, i(17576)),	-- Blood Guard's Dreadweave Boots
						-- Champion's Raiment [Priest]
						un(REMOVED_FROM_GAME, i(17610)),	-- Champion's Satin Cowl
						un(REMOVED_FROM_GAME, i(17613)),	-- Champion's Satin Shoulderpads
						un(REMOVED_FROM_GAME, i(17612)),	-- Legionnaire's Satin Vestments
						un(REMOVED_FROM_GAME, i(17617)),	-- Blood Guard's Satin Gloves
						un(REMOVED_FROM_GAME, i(17611)),	-- Legionnaire's Satin Trousers
						un(REMOVED_FROM_GAME, i(17616)),	-- Blood Guard's Satin Boots
						-- Champion's Sanctuary [Rogue]
						un(REMOVED_FROM_GAME, i(16503)),	-- Champion's Dragonhide Helm
						un(REMOVED_FROM_GAME, i(16501)),	-- Champion's Dragonhide Spaulders
						un(REMOVED_FROM_GAME, i(16504)),	-- Legionnaire's Dragonhide Breastplate
						un(REMOVED_FROM_GAME, i(16496)),	-- Blood Guard's Dragonhide Gauntlets
						un(REMOVED_FROM_GAME, i(16502)),	-- Legionnaire's Dragonhide Trousers
						un(REMOVED_FROM_GAME, i(16494)),	-- Blood Guard's Dragonhide Boots
						-- Champion's Battlegear [Warrior]
						un(REMOVED_FROM_GAME, i(16514)),	-- Champion's Plate Headguard
						un(REMOVED_FROM_GAME, i(16516)),	-- Champion's Plate Pauldrons
						un(REMOVED_FROM_GAME, i(16513)),	-- Legionnaire's Plate Armor
						un(REMOVED_FROM_GAME, i(16510)),	-- Blood Guard's Plate Gloves
						un(REMOVED_FROM_GAME, i(16515)),	-- Legionnaire's Plate Legguards
						un(REMOVED_FROM_GAME, i(16509)),	-- Blood Guard's Plate Boots
						-- Champion's Pursuit [Hunter]
						un(REMOVED_FROM_GAME, i(16526)),	-- Champion's Chain Headguard
						un(REMOVED_FROM_GAME, i(16528)),	-- Champion's Chain Pauldrons
						un(REMOVED_FROM_GAME, i(16525)),	-- Legionnaire's Chain Breastplate
						un(REMOVED_FROM_GAME, i(16530)),	-- Blood Guard's Chain Gauntlets
						un(REMOVED_FROM_GAME, i(16527)),	-- Legionnaire's Chain Leggings
						un(REMOVED_FROM_GAME, i(16531)),	-- Blood Guard's Chain Boots
					},
				}),
				-- #else
				n(12792, {	-- Lady Palanseer <Armor Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["timeline"] = { REMOVED_3_0_2 },
					["maps"] = { ORGRIMMAR },
					["groups"] = {
						i(22860, {	-- Blood Guard's Silk Walkers (60)
							["classes"] = { MAGE },
						}),
						i(22858, {	-- Blood Guard's Plate Greaves (60)
							["classes"] = { WARRIOR },
						}),
						i(22857, {	-- Blood Guard's Mail Greaves (60)
							["classes"] = { SHAMAN },
						}),
						i(22855, {	-- Blood Guard's Dreadweave Walkers (60)
							["classes"] = { WARLOCK },
						}),
						i(22859, {	-- Blood Guard's Satin Walkers (60)
							["classes"] = { PRIEST },
						}),
						i(22852, {	-- Blood Guard's Dragonhide Treads (60)
							["classes"] = { DRUID },
						}),
						i(22856, {	-- Blood Guard's Leather Walkers (60)
							["classes"] = { ROGUE },
						}),
						i(22843, {	-- Blood Guard's Chain Greaves (60)
							["classes"] = { HUNTER },
						}),
						i(16485, {	-- Blood Guard's Silk Footwraps (58)
							["classes"] = { MAGE },
						}),
						i(17576, {	-- Blood Guard's Dreadweave Boots (58)
							["classes"] = { WARLOCK },
						}),
						i(16509, {	-- Blood Guard's Plate Boots (58)
							["classes"] = { WARRIOR },
						}),
						i(16531, {	-- Blood Guard's Chain Boots (58)
							["classes"] = { HUNTER },
						}),
						i(17616, {	-- Blood Guard's Satin Boots (58)
							["classes"] = { PRIEST },
						}),
						i(16518, {	-- Blood Guard's Mail Walkers (58)
							["classes"] = { SHAMAN },
						}),
						i(16498, {	-- Blood Guard's Leather Treads (58)
							["classes"] = { ROGUE },
						}),
						i(16494, {	-- Blood Guard's Dragonhide Boots (58)
							["classes"] = { DRUID },
						}),
						i(16530, {	-- Blood Guard's Chain Gauntlets
							["classes"] = { HUNTER },
						}),
						i(22862, {	-- Blood Guard's Chain Vices
							["classes"] = { HUNTER },
						}),
						i(16496, {	-- Blood Guard's Dragonhide Gauntlets
							["classes"] = { DRUID },
						}),
						i(22863, {	-- Blood Guard's Dragonhide Grips
							["classes"] = { DRUID },
						}),
						i(17577, {	-- Blood Guard's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(22865, {	-- Blood Guard's Dreadweave Handwraps
							["classes"] = { WARLOCK },
						}),
						i(22864, {	-- Blood Guard's Leather Grips
							["classes"] = { ROGUE },
						}),
						i(16499, {	-- Blood Guard's Leather Vices
							["classes"] = { ROGUE },
						}),
						i(16519, {	-- Blood Guard's Mail Grips
							["classes"] = { SHAMAN },
						}),
						i(22867, {	-- Blood Guard's Mail Vices
							["classes"] = { SHAMAN },
						}),
						i(22868, {	-- Blood Guard's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(16510, {	-- Blood Guard's Plate Gloves
							["classes"] = { WARRIOR },
						}),
						i(17617, {	-- Blood Guard's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(22869, {	-- Blood Guard's Satin Handwraps
							["classes"] = { PRIEST },
						}),
						i(16487, {	-- Blood Guard's Silk Gloves
							["classes"] = { MAGE },
						}),
						i(22870, {	-- Blood Guard's Silk Handwraps
							["classes"] = { MAGE },
						}),
						i(16525, {	-- Legionnaire's Chain Breastplate
							["classes"] = { HUNTER },
						}),
						i(22874, {	-- Legionnaire's Chain Hauberk
							["classes"] = { HUNTER },
						}),
						i(16504, {	-- Legionnaire's Dragonhide Breastplate
							["classes"] = { DRUID },
						}),
						i(22877, {	-- Legionnaire's Dragonhide Chestpiece
							["classes"] = { DRUID },
						}),
						i(17572, {	-- Legionnaire's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(22884, {	-- Legionnaire's Dreadweave Tunic
							["classes"] = { WARLOCK },
						}),
						i(22879, {	-- Legionnaire's Leather Chestpiece
							["classes"] = { ROGUE },
						}),
						i(16505, {	-- Legionnaire's Leather Hauberk
							["classes"] = { ROGUE },
						}),
						i(16522, {	-- Legionnaire's Mail Chestpiece
							["classes"] = { SHAMAN },
						}),
						i(22876, {	-- Legionnaire's Mail Hauberk
							["classes"] = { SHAMAN },
						}),
						i(16513, {	-- Legionnaire's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(22872, {	-- Legionnaire's Plate Hauberk
							["classes"] = { WARRIOR },
						}),
						i(22885, {	-- Legionnaire's Satin Tunic
							["classes"] = { PRIEST },
						}),
						i(17612, {	-- Legionnaire's Satin Vestments
							["classes"] = { PRIEST },
						}),
						i(16491, {	-- Legionnaire's Silk Robes
							["classes"] = { MAGE },
						}),
						i(22886, {	-- Legionnaire's Silk Tunic
							["classes"] = { MAGE },
						}),
						i(16527, {	-- Legionnaire's Chain Leggings
							["classes"] = { HUNTER },
						}),
						i(22875, {	-- Legionnaire's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(22878, {	-- Legionnaire's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(16502, {	-- Legionnaire's Dragonhide Trousers
							["classes"] = { DRUID },
						}),
						i(17571, {	-- Legionnaire's Dreadweave Leggings
							["classes"] = { WARLOCK },
						}),
						i(22881, {	-- Legionnaire's Dreadweave Legguards
							["classes"] = { WARLOCK },
						}),
						i(16508, {	-- Legionnaire's Leather Leggings
							["classes"] = { ROGUE },
						}),
						i(22880, {	-- Legionnaire's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16523, {	-- Legionnaire's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(22887, {	-- Legionnaire's Mail Legguards
							["classes"] = { SHAMAN },
						}),
						i(22873, {	-- Legionnaire's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(16515, {	-- Legionnaire's Plate Legguards
							["classes"] = { WARRIOR },
						}),
						i(22882, {	-- Legionnaire's Satin Legguards
							["classes"] = { PRIEST },
						}),
						i(17611, {	-- Legionnaire's Satin Trousers
							["classes"] = { PRIEST },
						}),
						i(22883, {	-- Legionnaire's Silk Legguards
							["classes"] = { MAGE },
						}),
						i(16490, {	-- Legionnaire's Silk Pants
							["classes"] = { MAGE },
						}),
						i(16526, {	-- Champion's Chain Headguard
							["classes"] = { HUNTER },
						}),
						i(23251, {	-- Champion's Chain Helm
							["classes"] = { HUNTER },
						}),
						i(23253, {	-- Champion's Dragonhide Headguard
							["classes"] = { DRUID },
						}),
						i(16503, {	-- Champion's Dragonhide Helm
							["classes"] = { DRUID },
						}),
						i(23255, {	-- Champion's Dreadweave Cowl
							["classes"] = { WARLOCK },
						}),
						i(17570, {	-- Champion's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16506, {	-- Champion's Leather Headguard
							["classes"] = { ROGUE },
						}),
						i(23257, {	-- Champion's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(23259, {	-- Champion's Mail Headguard
							["classes"] = { SHAMAN },
						}),
						i(16521, {	-- Champion's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16514, {	-- Champion's Plate Headguard
							["classes"] = { WARRIOR },
						}),
						i(23244, {	-- Champion's Plate Helm
							["classes"] = { WARRIOR },
						}),
						i(17610, {	-- Champion's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(23261, {	-- Champion's Satin Hood
							["classes"] = { PRIEST },
						}),
						i(23263, {	-- Champion's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16489, {	-- Champion's Silk Hood
							["classes"] = { MAGE },
						}),
						i(23264, {	-- Champion's Silk Mantle
							["classes"] = { MAGE },
						}),
						i(23256, {	-- Champion's Dreadweave Spaulders
							["classes"] = { WARLOCK },
						}),
						i(23243, {	-- Champion's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(23258, {	-- Champion's Leather Shoulders
							["classes"] = { ROGUE },
						}),
						i(17573, {	-- Champion's Dreadweave Shoulders
							["classes"] = { WARLOCK },
						}),
						i(16516, {	-- Champion's Plate Pauldrons
							["classes"] = { WARRIOR },
						}),
						i(16492, {	-- Champion's Silk Shoulderpads
							["classes"] = { MAGE },
						}),
						i(23260, {	-- Champion's Mail Pauldrons
							["classes"] = { SHAMAN },
						}),
						i(16528, {	-- Champion's Chain Pauldrons
							["classes"] = { HUNTER },
						}),
						i(23254, {	-- Champion's Dragonhide Shoulders
							["classes"] = { DRUID },
						}),
						i(17613, {	-- Champion's Satin Shoulderpads
							["classes"] = { PRIEST },
						}),
						i(16524, {	-- Champion's Mail Shoulders
							["classes"] = { SHAMAN },
						}),
						i(16507, {	-- Champion's Leather Mantle
							["classes"] = { ROGUE },
						}),
						i(16501, {	-- Champion's Dragonhide Spaulders
							["classes"] = { DRUID },
						}),
						i(23262, {	-- Champion's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(23252, {	-- Champion's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16571, {	-- General's Chain Gloves
							["classes"] = { HUNTER },
						}),
						i(16555, {	-- General's Dragonhide Gloves
							["classes"] = { DRUID },
						}),
						i(17588, {	-- General's Dreadweave Gloves
							["classes"] = { WARLOCK },
						}),
						i(16560, {	-- General's Leather Mitts
							["classes"] = { ROGUE },
						}),
						i(16574, {	-- General's Mail Gauntlets
							["classes"] = { SHAMAN },
						}),
						i(16548, {	-- General's Plate Gauntlets
							["classes"] = { WARRIOR },
						}),
						i(17620, {	-- General's Satin Gloves
							["classes"] = { PRIEST },
						}),
						i(16540, {	-- General's Silk Handguards
							["classes"] = { MAGE },
						}),
						i(16567, {	-- General's Chain Legguards
							["classes"] = { HUNTER },
						}),
						i(16552, {	-- General's Dragonhide Leggings
							["classes"] = { DRUID },
						}),
						i(17593, {	-- General's Dreadweave Pants
							["classes"] = { WARLOCK },
						}),
						i(16564, {	-- General's Leather Legguards
							["classes"] = { ROGUE },
						}),
						i(16579, {	-- General's Mail Leggings
							["classes"] = { SHAMAN },
						}),
						i(16543, {	-- General's Plate Leggings
							["classes"] = { WARRIOR },
						}),
						i(17625, {	-- General's Satin Leggings
							["classes"] = { PRIEST },
						}),
						i(16534, {	-- General's Silk Trousers
							["classes"] = { MAGE },
						}),
						i(16569, {	-- General's Chain Boots
							["classes"] = { HUNTER },
						}),
						i(16554, {	-- General's Dragonhide Boots
							["classes"] = { DRUID },
						}),
						i(17586, {	-- General's Dreadweave Boots
							["classes"] = { WARLOCK },
						}),
						i(16558, {	-- General's Leather Treads
							["classes"] = { ROGUE },
						}),
						i(16573, {	-- General's Mail Boots
							["classes"] = { SHAMAN },
						}),
						i(16545, {	-- General's Plate Boots
							["classes"] = { WARRIOR },
						}),
						i(17618, {	-- General's Satin Boots
							["classes"] = { PRIEST },
						}),
						i(16539, {	-- General's Silk Boots
							["classes"] = { MAGE },
						}),
						i(16566, {	-- Warlord's Chain Helmet
							["classes"] = { HUNTER },
						}),
						i(16550, {	-- Warlord's Dragonhide Helmet
							["classes"] = { DRUID },
						}),
						i(17591, {	-- Warlord's Dreadweave Hood
							["classes"] = { WARLOCK },
						}),
						i(16561, {	-- Warlord's Leather Helm
							["classes"] = { ROGUE },
						}),
						i(16578, {	-- Warlord's Mail Helm
							["classes"] = { SHAMAN },
						}),
						i(16542, {	-- Warlord's Plate Headpiece
							["classes"] = { WARRIOR },
						}),
						i(17623, {	-- Warlord's Satin Cowl
							["classes"] = { PRIEST },
						}),
						i(16533, {	-- Warlord's Silk Cowl
							["classes"] = { MAGE },
						}),
						i(16565, {	-- Warlord's Chain Chestpiece
							["classes"] = { HUNTER },
						}),
						i(16549, {	-- Warlord's Dragonhide Hauberk
							["classes"] = { DRUID },
						}),
						i(17592, {	-- Warlord's Dreadweave Robe
							["classes"] = { WARLOCK },
						}),
						i(16563, {	-- Warlord's Leather Breastplate
							["classes"] = { ROGUE },
						}),
						i(16577, {	-- Warlord's Mail Armor
							["classes"] = { SHAMAN },
						}),
						i(16541, {	-- Warlord's Plate Armor
							["classes"] = { WARRIOR },
						}),
						i(17624, {	-- Warlord's Satin Robes
							["classes"] = { PRIEST },
						}),
						i(16535, {	-- Warlord's Silk Raiment
							["classes"] = { MAGE },
						}),
						i(16568, {	-- Warlord's Chain Shoulders
							["classes"] = { HUNTER },
						}),
						i(16551, {	-- Warlord's Dragonhide Epaulets
							["classes"] = { DRUID },
						}),
						i(17590, {	-- Warlord's Dreadweave Mantle
							["classes"] = { WARLOCK },
						}),
						i(16562, {	-- Warlord's Leather Spaulders
							["classes"] = { ROGUE },
						}),
						i(16580, {	-- Warlord's Mail Spaulders
							["classes"] = { SHAMAN },
						}),
						i(16544, {	-- Warlord's Plate Shoulders
							["classes"] = { WARRIOR },
						}),
						i(17622, {	-- Warlord's Satin Mantle
							["classes"] = { PRIEST },
						}),
						i(16536, {	-- Warlord's Silk Amice
							["classes"] = { MAGE },
						}),
					},
				}),
				-- #endif
				n(34043, {	-- Lady Palanseer <Jewelcrafting Quartermaster>
					["timeline"] = { ADDED_3_0_3, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
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
				n(133239, {	-- Leyweaver Aurielle
					["coord"] = { 38.2, 86.8, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3364},	-- Borya <Tailoring Supplies>
					},
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(45558, {	-- Lizna Goldweaver <Tailoring Supplies> (removed 7.3.5? when embassy took over)
					["coord"] = { 41.0, 79.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					-- #if AFTER 7.3.5.25961
					["description"] = "This NPC is only visible if you have not yet unlocked the allied race Highmountain Tauren.",
					["OnUpdate"] = [[function(t,parent,defaultUpdate)
						if _.MODE_DEBUG or (defaultUpdate(t,parent) and not ATTAccountWideData.Achievements[12452]) then
							t.visible = true;
						else
							t.visible = false;
						end
						return true;
					end]],
					-- #endif
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "common_recipes_vendor", 3364},	-- Borya <Tailoring Supplies>
					},
					["groups"] = {
						i(6270, {	-- Pattern: Blue Linen Vest (RECIPE!)
							["isLimited"] = true,
						}),
						i(6274, {	-- Pattern: Blue Overalls (RECIPE!)
							["isLimited"] = true,
						}),
						i(10314, {	-- Pattern: Lavender Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(10317, {	-- Pattern: Pink Mageweave Shirt (RECIPE!)
							["isLimited"] = true,
						}),
						i(5772, {	-- Pattern: Red Woolen Bag (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				-- #if AFTER MOP
				-- Danny Donkey: The staves are added to Inscription Suppliers in 5.0.1.
				n(46718, {	-- Moraka <Inscription Supplies>
					["coord"] = { 55.3, 56.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						i(79740),	-- Plain Wooden Staff
						i(1515),	-- Rough Wooden Staff
					},
				}),
				-- #endif
				n(3321, {	-- Morgum <Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.0, 55.6, ORGRIMMAR },
						-- #else
						{ 56.0, 73.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2371),	-- Battered Leather Belt
						i(2373),	-- Battered Leather Boots
						i(2374),	-- Battered Leather Bracers
						i(2375),	-- Battered Leather Gloves
						i(2370),	-- Battered Leather Harness
						i(2372),	-- Battered Leather Pants
						i(236),		-- Cured Leather Armor
						i(1849),	-- Cured Leather Belt
						i(238),		-- Cured Leather Boots
						i(1850),	-- Cured Leather Bracers
						i(239),		-- Cured Leather Gloves
						i(237),		-- Cured Leather Pants
						-- #if AFTER 10.0.5
						i(20896, {	-- Lookouts Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20898, {	-- Lookouts Shoes
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58238, {	-- Lookouts Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6124, {	-- Novices Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6139, {	-- Novices Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(153, {	-- Primitive Kilt
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6135, {	-- Primitive Kilt
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
						i(1843),	-- Tanned Leather Belt
						i(843),		-- Tanned Leather Boots
						i(1844),	-- Tanned Leather Bracers
						i(844),		-- Tanned Leather Gloves
						i(846),		-- Tanned Leather Jerkin
						i(845),		-- Tanned Leather Pants
						-- #if AFTER 10.0.5
						i(121, {	-- Thug Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(120, {	-- Thug Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58246, {	-- Thug Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
					},
				}),
				n(46718, {	-- Moraka
					["coord"] = { 55.3, 56.0, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						79740,	-- Plain Wooden Staff
					}},
				}),
				n(3330, {	-- Muragus
					["coord"] = { 46.0, 57.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2527),	-- Battle Staff
						i(2535),	-- War Staff
					},
				}),
				n(46512, {	-- Naros <Plate Armor Merchant>
					["coord"] = { 45.0, 77.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						2451,	-- Crested Heater Shield
						62260,	-- Grunts Chain Belt
						62261,	-- Grunts Chain Boots
						62262,	-- Grunts Chain Bracers
						62266,	-- Grunts Chain Circlet
						62263,	-- Grunts Chain Gloves
						62264,	-- Grunts Chain Leggings
						62265,	-- Grunts Chain Vest
						62253,	-- Grunts Plate Armor
						62254,	-- Grunts Plate Belt
						62255,	-- Grunts Plate Boots
						62256,	-- Grunts Plate Bracers
						62257,	-- Grunts Plate Gloves
						62259,	-- Grunts Plate Helm
						62258,	-- Grunts Plate Leggings
						17190,	-- Ornate Buckler
					}},
					["groups"] = {
						-- #if AFTER 10.0.5
						-- Now any class and race can buy this
						-- PALADIN --
						i(24146, {	-- Initiate's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52549, {	-- Initiate's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(24145, {	-- Initiate's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58248, {	-- Initiate's Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58237, {	-- Initiate's Vest
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- WARRIOR --
						i(140, {	-- Brawler's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(139, {	-- Brawler's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58245, {	-- Brawler's Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(40, {	-- Recruit's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20903, {	-- Recruit's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(39, {	-- Recruit's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20902, {	-- Recruit's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20904, {	-- Recruit's Tunic
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(58231, {	-- Recruit's Vest
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
					},
				}),
				n(46716, {	-- Nerog <Inscription Trainer>
					["coord"] = { 55.2, 55.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["timeline"] = { ADDED_4_0_1 },
					["groups"] = {
						i(140565, {	-- Technique: Songs of the Horde
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				n(3362, {	-- Ogunaro Wolfrunner <Kennel Master>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.6, 35.6, ORGRIMMAR },
						-- #else
						{ 69.4, 12.4, ORGRIMMAR },
						-- #endif
					},
					-- Available to Orcs without faction requirements.
					["minReputation"] = { FACTION_ORGRIMMAR, EXALTED },	-- Orgrimmar, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. ORC .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(46099, {	-- Black Wolf (MOUNT!)
							["timeline"] = { ADDED_3_1_0 },
						}),
						i(5668),	-- Brown Wolf (MOUNT!)
						i(5665),	-- Dire Wolf (MOUNT!)
						i(18796),	-- Swift Brown Wolf (MOUNT!)
						i(18797),	-- Swift Timber Wolf (MOUNT!)
						i(18798),	-- Swift Gray Wolf (MOUNT!)
						i(1132),	-- Timber Wolf (MOUNT!)
						i(12351, {	-- Arctic Wolf (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
						i(12330, {	-- Red Wolf (MOUNT!)
							["timeline"] = { REMOVED_1_4_0 },
						}),
					},
				}),
				n(44975, {	-- Old Umbehto
					["coord"] = { 35.0, 67.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["timeline"] = { ADDED_4_0_3 },
					["sym"] = {{"select","itemID",
						6365,	-- Strong Fishing Pole
					}},
				}),
				n(3317, {	-- Ollanus <Cloth Armor Merchant>
					["coord"] = { 60.6, 58.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(3428),	-- Common Gray Shirt
						i(16059),	-- Common Brown Shirt
						i(16060),	-- Common White Shirt
						i(837),	-- Heavy Weave Armor
						i(3589),	-- Heavy Weave Belt
						i(3590),	-- Heavy Weave Bracers
						i(839),	-- Heavy Weave Gloves
						i(838),	-- Heavy Weave Pants
						i(840),	-- Heavy Weave Shoes
						i(3597),	-- Thick Cloth Belt
						i(3598),	-- Thick Cloth Bracers
						i(203),	-- Thick Cloth Gloves
						i(201),	-- Thick Cloth Pants
						i(202),	-- Thick Cloth Shoes
						i(200),	-- Thick Cloth Vest
						i(3606),	-- Woven Belt
						i(2367),	-- Woven Boots
						i(3607),	-- Woven Bracers
						i(2369),	-- Woven Gloves
						i(2366),	-- Woven Pants
						i(2364),	-- Woven Vest
						-- #if AFTER 10.0.5
						-- Now any class and race can buy this
						-- MAGE --
						i(55, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20895, {	-- Apprentice's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(1395, {	-- Apprentice's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52681, {	-- Apprentice's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20894, {	-- Apprentice's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52546, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6140, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20893, {	-- Apprentice's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- PRIEST --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(51, {	-- Neophyte's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52, {	-- Neophyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52680, {	-- Neophyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6144, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52547, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20891, {	-- Neophyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- WARLOCK --
						i(1396, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52679, {	-- Acolyte's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(52543, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6129, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(20892, {	-- Acolyte's Robe
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(59, {	-- Acolyte's Shoes
							["timeline"] = { ADDED_10_0_5 },
						}),

						-- ??? --
						i(52556, {	-- Initiate's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6126, {	-- Trapper's Pants
							["timeline"] = { ADDED_10_0_5 },
						}),
						i(6127, {	-- Trapper's Boots
							["timeline"] = { ADDED_10_0_5 },
						}),
						-- #endif
					},
				}),
				n(169166, bubbleDownSelf({ ["timeline"] = { ADDED_9_0_1 } }, {	-- Provisioner Jin'hake
					["description"] = "Only sells items once the achievement |cffebae34Exile's Reach|r [14222] is completed.",
					["coord"] = { 72.6, 44.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(175161),	-- Expeditionary Axe
						i(175174),	-- Expeditionary Cudgel
						i(175171),	-- Expeditionary Dagger
						i(175165),	-- Expeditionary Greataxe
						i(175169),	-- Expeditionary Longbow
						i(175163),	-- Expeditionary Quarterstaff
						i(175164),	-- Expeditionary Staff
					},
				})),
				n(46359, {	-- Punra <Blacksmithing Supplies>
					["coord"] = { 45.0, 77.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_BLACKSMITHING_RECIPES, {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					}),
				}),
				n(12796, {	-- Raider Bork <War Mount Quartermaster> [WRATH+] / Raider Bork <Mount Quartermaster>
						-- #if BEFORE WRATH
						["description"] = "Found within the Hall of Legends.",
						-- #else
						["coord"] = { 41.8, 72.6, ORGRIMMAR },
						-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = pvp({
						i(29466, {	-- Black War Kodo (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18247, {	-- Black War Kodo (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(29472, {	-- Black War Raptor (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18246, {	-- Black War Raptor (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(29469, {	-- Black War Wolf (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18245, {	-- Black War Wolf (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(29470, {	-- Red Skeletal Warhorse (MOUNT!)
							["timeline"] = { ADDED_2_0_1 },
							["cost"] = PVP_MOUNT_COST,
						}),
						i(18248, {	-- Red Skeletal Warhorse (MOUNT!)
							["timeline"] = { REMOVED_2_0_1 },
						}),
						i(34129, {	-- Swift Warstrider (MOUNT!)
							["timeline"] = { ADDED_2_3_0 },
							["cost"] = PVP_MOUNT_COST,
						}),
					}),
				}),
				n(3334, {	-- Rekkul
					["coord"] = { 44.0, 58.4, ORGRIMMAR },
					["races"] = HORDE_ONLY,
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
				n(52033, {	-- Rogoc <Bloodthirsty Gladiator>
					["coord"] = { 37.8, 71.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_6 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_VICIOUS, PVP_HONOR },
						{"merge"},	-- Subroutines are automatically finalized, so merge back for further processing
						{"pop"},	-- Discard the Set header and acquire the children.
					},
				}),
				n(58155, {	-- Rugok <Legacy Justice Quartermaster>
					["coord"] = { 48.2, 71.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_3_0 },
					["races"] = HORDE_ONLY,
					["groups"] = TIER_ELEVEN_GROUPS,
					["description"] = "Sells gear related to Cataclysm raid tier 11 (Throne of the Four Winds, Blackwing Descent, and Bastion of Twilight) as well as Baradin Hold.",
				}),
				-- #if AFTER CATA
				n(3319, {	-- Sana <Mail Armor Merchant>
					["coord"] = { 45.6, 77.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						17187,	-- Banded Buckler
						847,	-- Chainmail Armor
						1845,	-- Chainmail Belt
						849,	-- Chainmail Boots
						1846,	-- Chainmail Bracers
						850,	-- Chainmail Gloves
						848,	-- Chainmail Pants
						2445,	-- Large Metal Shield
						2398,	-- Light Chain Armor
						2399,	-- Light Chain Belt
						2401,	-- Light Chain Boots
						2402,	-- Light Chain Bracers
						2403,	-- Light Chain Gloves
						2400,	-- Light Chain Leggings
						17185,	-- Round Buckler
						17188,	-- Ringed Buckler
						1853,	-- Scalemail Belt
						287,	-- Scalemail Boots
						1852,	-- Scalemail Bracers
						718,	-- Scalemail Gloves
						286,	-- Scalemail Pants
						285,	-- Scalemail Vest
						1202,	-- Wall Shield
						2376,	-- Worn Heater Shield
					}},
					["groups"] = sharedData({ ["timeline"] = { ADDED_10_0_5 } }, {
						-- Now any class and race can buy this
						-- HUNTER --
						i(129),		-- Rugged Trapper's Boots
						i(147),		-- Rugged Trapper's Pants
						i(58232),	-- Rugged Trapper's Vest
						i(6137),	-- Thug Pants
						i(6138),	-- Trapper's Boots
						i(58247),	-- Trapper's Vest
						i(20900),	-- Warder's Boots
						i(20899),	-- Warder's Pants
						i(58235),	-- Warder's Vest

						-- SHAMAN --
						i(52545),	-- Primal Pants
						i(52544),	-- Primal Robe
					}),
				}),
				-- #endif
				-- #if ANYCLASSIC
				-- #if BEFORE CATA
				-- TODO: Finish this part.
				n(12799, {	-- Sergeant Ba'sha <Accessories Quartermaster>
					["coord"] = { 41.6, 68.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15197),	-- Scout's Tabard
						i(18834, {	-- Insignia of the Horde
							["classes"] = { WARRIOR },
						}),
						i(18849, {	-- Insignia of the Horde
							["classes"] = { ROGUE },
						}),
						i(18846, {	-- Insignia of the Horde
							["classes"] = { HUNTER },
						}),
						i(18851, {	-- Insignia of the Horde
							["classes"] = { PRIEST },
						}),
						i(18853, {	-- Insignia of the Horde
							["classes"] = { DRUID },
						}),
						i(18850, {	-- Insignia of the Horde
							["classes"] = { MAGE },
						}),
						i(18852, {	-- Insignia of the Horde
							["classes"] = { WARLOCK },
						}),
						i(18845, {	-- Insignia of the Horde
							["classes"] = { SHAMAN },
						}),
						i(18461),	-- Sergeant's Cloak (58)
						i(16341),	-- Sergeant's Cloak (45)
						i(18427),	-- Sergeant's Cloak (30)
						i(16335),	-- Senior Sergeant's Insignia (58)
						i(18428),	-- Senior Sergeant's Insignia (45)
						i(15200),	-- Senior Sergeant's Insignia (30)
						i(16486, {	-- First Sergeant's Silk Cuffs (58)
							["classes"] = CLOTH_CLASSES,
						}),
						i(18434, {	-- First Sergeant's Dragonhide Armguards (58)
							["classes"] = { DRUID },
						}),
						i(18429, {	-- First Sergeant's Plate Bracers (58)
							["classes"] = { WARRIOR },
						}),
						i(16532, {	-- First Sergeant's Mail Wristguards (58)
							["classes"] = MAIL_CLASSES,
						}),
						i(16497, {	-- First Sergeant's Leather Armguards (58)
							["classes"] = { ROGUE },
						}),
						i(18437, {	-- First Sergeant's Silk Cuffs (45)
							["classes"] = CLOTH_CLASSES,
						}),
						i(18430, {	-- First Sergeant's Plate Bracers (45)
							["classes"] = { WARRIOR },
						}),
						i(18432, {	-- First Sergeant's Mail Wristguards (45)
							["classes"] = MAIL_CLASSES,
						}),
						i(18436, {	-- First Sergeant's Dragonhide Armguards (45)
							["classes"] = { DRUID },
						}),
						i(18435, {	-- First Sergeant's Leather Armguards (45)
							["classes"] = { ROGUE },
						}),
					},
				}),
				n(14581, {	-- Sergeant Thunderhorn <Weapons Quartermaster>
					["description"] = "Found within the Hall of Legends.",
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18831),	-- High Warlord's Battle Axe
						i(23464),	-- High Warlord's Battle Mace
						i(16345),	-- High Warlord's Blade
						i(18866),	-- High Warlord's Bludgeon
						i(18828),	-- High Warlord's Cleaver
						i(18837),	-- High Warlord's Crossbow
						i(23465),	-- High Warlord's Destroyer
						i(18877),	-- High Warlord's Greatsword
						i(18848),	-- High Warlord's Left Claw
						i(18871),	-- High Warlord's Pig Sticker
						i(18868),	-- High Warlord's Pulverizer
						i(23467),	-- High Warlord's Quickblade
						i(18840),	-- High Warlord's Razor
						i(18835),	-- High Warlord's Recurve
						i(18844),	-- High Warlord's Right Claw
						i(18826),	-- High Warlord's Shield Wall
						i(23466),	-- High Warlord's Spellblade
						i(18860),	-- High Warlord's Street Sweeper
						i(23468),	-- High Warlord's Tome of Destruction
						i(23469),	-- High Warlord's Tome of Mending
						i(18874),	-- High Warlord's War Staff
					},
				}),
				-- #else
				n(52549, {	-- Sergeant Thunderhorn <Conquest Quartermaster>
					["coord"] = { 38.8, 70.0, ORGRIMMAR },
					["timeline"] = { ADDED_4_2_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_RUTHLESS, PVP_GLADIATOR },{"merge"},	-- Subroutines are automatically finalized
						{"pop"},	-- Discard the Set header and acquire the children.
					},
				}),
				-- #endif
				-- #endif
				n(26396, {	-- Sergeant Thunderhorn Warlord Vendor Edition
					["timeline"] = { ADDED_2_4_2 },
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
					["groups"] = {
						un(REMOVED_FROM_GAME, i(28926)),	-- High Warlord's Quickblade
						un(REMOVED_FROM_GAME, i(28937)),	-- High Warlord's Slicer
						un(REMOVED_FROM_GAME, i(28929)),	-- High Warlord's Shanker
						un(REMOVED_FROM_GAME, i(28930)),	-- High Warlord's Shiv
						un(REMOVED_FROM_GAME, i(28917)),	-- High Warlord's Bonegrinder
						un(REMOVED_FROM_GAME, i(28919)),	-- High Warlord's Maul
						un(REMOVED_FROM_GAME, i(28924)),	-- High Warlord's Bonecracker
						un(REMOVED_FROM_GAME, i(28925)),	-- High Warlord's Pummeler
						un(REMOVED_FROM_GAME, i(28939)),	-- High Warlord's Barricade
						un(REMOVED_FROM_GAME, i(28931)),	-- High Warlord's Spellblade
						un(REMOVED_FROM_GAME, i(28293)),	-- High Warlord's Claymore
						un(REMOVED_FROM_GAME, i(28918)),	-- High Warlord's Decapitator
						un(REMOVED_FROM_GAME, i(28920)),	-- High Warlord's Cleaver
						un(REMOVED_FROM_GAME, i(28921)),	-- High Warlord's Hacker
						un(REMOVED_FROM_GAME, i(28922)),	-- High Warlord's Fleshslicer
						un(REMOVED_FROM_GAME, i(28928)),	-- High Warlord's Ripper
						un(REMOVED_FROM_GAME, i(28923)),	-- High Warlord's Painsaw
						un(REMOVED_FROM_GAME, i(28933)),	-- High Warlord's Crossbow
						un(REMOVED_FROM_GAME, i(28935)),	-- High Warlord's War Staff
						un(REMOVED_FROM_GAME, i(28938)),	-- High Warlord's Battletome
					},
				}),
				n(69978, {	-- Sergeant Thunderhorn <Cataclysmic Gladiator>
					["coord"] = { 38.8, 70.0, ORGRIMMAR },
					["timeline"] = { ADDED_5_2_0 },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.CATA, SEASON_CATACLYSMIC, PVP_GLADIATOR },{"merge"},	-- Subroutines are automatically finalized
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", NECK, FINGER, TRINKET },	-- Exclude Neck, Finger and Trinkets
					},
				}),
				n(3333, {	-- Shankys <Fishing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 70.0, 29.4, ORGRIMMAR },
						-- #else
						{ 66.6, 41.6, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(17062),	-- Recipe: Mithril Head Trout (RECIPE!)
						i(6368),	-- Recipe: Rainbow Fin Albacore (RECIPE!)
						i(6369),	-- Recipe: Rockscale Cod (RECIPE!)
					},
				}),
				n(49737, {	-- Shazdar <Sous Chef>
					["coord"] = { 56.8, 62.6, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = CATA_COOKING_SUPPLIES,
				}),
				n(5817, {	-- Shimra <Trade Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 54.0, 81.87, ORGRIMMAR },
						-- #else
						{ 47.8, 80.5, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{ "sub", "common_vendor", 3010 }},	-- Mani Winterhoof <Alchemy Supplies>
				}),
				n(3361, {	-- Shoma <Weapon Vendor>
					["coord"] = { 76.0, 37.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(15905),	-- Brass Knuckles
						i(2520),	-- Broadsword
						i(1198),	-- Claymore
						i(851),		-- Cutlass
						i(922),		-- Dacian Falx
						i(15904),	-- Deadly Fist Blades
						i(2024),	-- Espadon
						i(2528),	-- Falchion
						i(2207),	-- Jambiya
						i(2209),	-- Kris
						i(15906, {	-- Left-Handed Brass Knuckles
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15909, {	-- Left-Handed Blades
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(15907, {	-- Left-Handed Claw
							["timeline"] = { REMOVED_6_0_2 },
						}),
						i(923),		-- Longsword
						i(2526),	-- Main Gauche
						i(2208),	-- Poniad
						i(20977, {	-- Recruit's Shortsword
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(2534),	-- Rondel
						i(2027),	-- Scimitar
						i(20982, {	-- Sharp Dagger
							["timeline"] = { ADDED_10_1_7 },
						}),
						i(15903),	-- Slicing Claw
					},
				}),
				n(3413, {	-- Sovik <Engineering Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 56.0, 56.0, ORGRIMMAR },
						-- #else
						{ 75.6, 25.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(16041, {	-- Schematic: Thorium Grenade (RECIPE!)
							["timeline"] = { REMOVED_3_0_2 },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE 3.0.2
							["isLimited"] = true,
							-- #endif
						}),
						i(16042, {	-- Schematic: Thorium Widget (RECIPE!)
							["timeline"] = { REMOVED_3_0_2 },	-- Now taught by trainer, schematic removed from the game.
							-- #if BEFORE 3.0.2
							["isLimited"] = true,
							-- #endif
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller (RECIPE!)
							["timeline"] = { CREATED_1_12_1, ADDED_2_3_0 },
							["isLimited"] = true,
						}),
					},
				}),
				n(50488, {	-- Stone Guard Nargol <Orgrimmar Quartermaster>
					["coord"] = { 50.4, 58.4, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["groups"] = bubbleDownClassicRep(FACTION_ORGRIMMAR, {
						{		-- Neutral
						}, {	-- Friendly
							i(253168, {["timeline"] = { ADDED_11_2_7 }}),	-- Earthen Storage Crate (DECOR!)
							i(45581, {["timeline"] = { ADDED_3_1_0 }}),	-- Orgrimmar Tabard
						}, {	-- Honored
						}, {	-- Revered
							i(67533, {["timeline"] = { ADDED_4_0_3 }}),	-- Orgrimmar Satchel
						}, {	-- Exalted
							i(64909, {["timeline"] = { ADDED_4_0_3 }}),	-- Cape of Orgrimmar
							i(64910, {["timeline"] = { ADDED_4_0_3 }}),	-- Mantle of Orgrimmar
							i(64908, {["timeline"] = { ADDED_4_0_3 }}),	-- Shroud of Orgrimmar
						},
					}),
				}),
				-- #if NOT ANYCLASSIC
				n(12794, {	-- Stone Guard Zarg <Legacy Weapon Quartermaster>
					["coord"] = { 38.6, 72.8, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{"select","expansionID",EXPANSION.CLASSIC},
						{"find","headerID",FACTION_HEADER_HORDE},
						{"find","headerID",WEAPONS},	-- Grand Marshal Weapons
						{"pop"},
					},
				}),
				-- #endif
				n(46708, {	-- Suja <Cooking Supplies>
					["coord"] = { 56.6, 61.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3356, {	-- Sumi <Blacksmithing Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 75.8, 35.2, ORGRIMMAR },
						-- #else
						{ 82.4, 23.8, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					-- #if AFTER CATA
					["sym"] = {{"sub", "common_recipes_vendor", 46359}},	-- Punra <Blacksmithing Supplies>
					-- #endif
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(3366, {	-- Tamar <Leatherworking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.6, 54.4, ORGRIMMAR },
						-- #else
						{ 63.0, 45.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = appendGroups(COMMON_CATACLYSM_LEATHERWORKING_RECIPES, {
						i(18731, {	-- Pattern: Heavy Leather Ball (RECIPE!)
							["isLimited"] = true,
						}),
					}),
				}),
				n(133127, {	-- Thaluriel <Engineering Supplies>
					["coord"] = { 36.8, 84.6, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller (RECIPE!)
							["timeline"] = { CREATED_1_12_1, ADDED_2_3_0 },
							["isLimited"] = true,
						}),
					},
				}),
				n(3315, {	-- Tor'phan <Cloth & Leather Armor Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 60.8, 59.6, ORGRIMMAR },
						-- #else
						{ 62.6, 50.6, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2617),	-- Burning Robes
						i(2615),	-- Chromatic Robe
						i(2142),	-- Cuirboulli Belt
						i(2143),	-- Cuirboulli Boots
						i(2144),	-- Cuirboulli Bracers
						i(2145),	-- Cuirboulli Gloves
						i(2146),	-- Cuirboulli Pants
						i(2141),	-- Cuirboulli Vest
						i(2613),	-- Double Stitched Robes
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
						i(12255, {	-- Pale Leggings
							["isLimited"] = true,
						}),
						i(2612),	-- Plain Robe
						i(2471),	-- Reinforced Leather Belt
						i(2473),	-- Reinforced Leather Boots
						i(2474),	-- Reinforced Leather Bracers
						i(3893),	-- Reinforced Leather Cap
						i(2475),	-- Reinforced Leather Gloves
						i(2472),	-- Reinforced Leather Pants
						i(2470),	-- Reinforced Leather Vest
						i(2614),	-- Robe Of Apprenticeship
						i(3593),	-- Russet Belt
						i(2432),	-- Russet Boots
						i(3594),	-- Russet Bracers
						i(2434),	-- Russet Gloves
						i(3889),	-- Russet Hat
						i(2431),	-- Russet Pants
						i(2429),	-- Russet Vest
						i(2616),	-- Shimmering Silk Robes
						i(2618),	-- Silver Dress Robes
						i(2464),	-- Studded Belt
						i(2467),	-- Studded Boots
						i(2468),	-- Studded Bracers
						i(2463),	-- Studded Doublet
						i(2469),	-- Studded Gloves
						i(3890),	-- Studded Hat
						i(2465),	-- Studded Pants
					},
				}),
				-- #if AFTER CATA
				n(5812, {	-- Tumi <Heavy Armor Merchant>
					["coord"] = { 75.8, 35.2, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(2419),	-- Augmented Chain Belt
						i(2420),	-- Augmented Chain Boots
						i(2421),	-- Augmented Chain Bracers
						i(2422),	-- Augmented Chain Gloves
						i(3891),	-- Augmented Chain Helm
						i(2418),	-- Augmented Chain Leggings
						i(2417),	-- Augmented Chain Vest
						i(847),	-- Chainmail Armor
						i(1845),	-- Chainmail Belt
						i(849),	-- Chainmail Boots
						i(1846),	-- Chainmail Bracers
						i(850),	-- Chainmail Gloves
						i(848),	-- Chainmail Pants
						i(2451),	-- Crested Heater Shield
						i(62260),	-- Grunts Chain Belt
						i(62261),	-- Grunts Chain Boots
						i(62262),	-- Grunts Chain Bracers
						i(62266),	-- Grunts Chain Circlet
						i(62263),	-- Grunts Chain Gloves
						i(62264),	-- Grunts Chain Leggings
						i(62265),	-- Grunts Chain Vest
						i(62253),	-- Grunts Plate Armor
						i(62254),	-- Grunts Plate Belt
						i(62255),	-- Grunts Plate Boots
						i(62256),	-- Grunts Plate Bracers
						i(62257),	-- Grunts Plate Gloves
						i(62259),	-- Grunts Plate Helm
						i(62258),	-- Grunts Plate Leggings
						i(2448),	-- Heavy Pavise
						i(2446),	-- Kite Shield
						i(2392),	-- Light Mail Armor
						i(2393),	-- Light Mail Belt
						i(2395),	-- Light Mail Boots
						i(2396),	-- Light Mail Bracers
						i(2397),	-- Light Mail Gloves
						i(2394),	-- Light Mail Leggings
						i(17189),	-- Metal Buckler
						i(17190),	-- Ornate Buckler
						i(2148),	-- Polished Scale Belt
						i(2149),	-- Polished Scale Boots
						i(2150),	-- Polished Scale Bracers
						i(2151),	-- Polished Scale Gloves
						i(2152),	-- Polished Scale Leggings
						i(2153),	-- Polished Scale Vest
						i(17192),	-- Reinforced Targe
						i(1853),	-- Scalemail Belt
						i(287),	-- Scalemail Boots
						i(1852),	-- Scalemail Bracers
						i(718),	-- Scalemail Gloves
						i(286),	-- Scalemail Pants
						i(285),	-- Scalemail Vest
					},
				}),
				-- #endif
				n(66022, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 }, }, {	-- Turtlemaster Odai <Dragon Turtle Breeder>
					["coord"] = { 69.8, 41.0, ORGRIMMAR },
					-- Available to Huojin Pandaren without faction requirements.
					["minReputation"] = { FACTION_HUOJIN_PANDAREN, EXALTED },	-- Huojin Pandaren, Exalted.
					["OnInit"] = [[function(t)
						if _.RaceIndex == ]] .. PANDAREN_HORDE .. [[ then
							t.minReputation = nil;
						end
						return t;
					end]],
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(91008, {	-- Black Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87795, {	-- Black Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91009, {	-- Blue Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87796, {	-- Blue Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91005, {	-- Brown Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87797, {	-- Brown Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91011, {	-- Great Black Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87802, {	-- Great Black Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91013, {	-- Great Blue Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87803, {	-- Great Blue Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91014, {	-- Great Brown Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87804, {	-- Great Brown Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91012, {	-- Great Green Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87801, {	-- Great Green Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91015, {	-- Great Purple Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87805, {	-- Great Purple Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91010, {	-- Great Red Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82811, {	-- Great Red Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91004, {	-- Green Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(82765, {	-- Green Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91006, {	-- Purple Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87799, {	-- Purple Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
						i(91007, {	-- Red Dragon Turtle (MOUNT!) (PANDA)
							["races"] = { PANDAREN_ALLIANCE, PANDAREN_HORDE },
						}),
						i(87800, {	-- Red Dragon Turtle (MOUNT!) (NON-P)
							["races"] = exclude({ PANDAREN_NEUTRAL, PANDAREN_ALLIANCE, PANDAREN_HORDE }, ALL_RACES),
						}),
					},
				})),
				n(3314, {	-- Urtharo <Weapon Merchant>
					["coords"] = {
						-- #if AFTER CATA
						{ 46.6, 73.1, ORGRIMMAR },
						-- #else
						{ 47.4, 68.6, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						1198,	-- Claymore
						851,	-- Cutlass
						2207,	-- Jambiya
					}},
					["groups"] = {
						i(1194),	-- Bastard Sword
						i(2479),	-- Broad Axe
						i(2130),	-- Club
						i(2492),	-- Cudgel
						i(2139),	-- Dirk
						i(1197),	-- Giant Mace
						i(2134),	-- Hand Axe
						i(2488),	-- Gladius
						i(853),		-- Hatched
						i(2491),	-- Large Axe
						i(2480),	-- Large Club
						i(852),		-- Mace
						i(854),		-- Quarter Staff
						i(2131),	-- Shortsword
						i(2132),	-- Short Staff
						i(2494),	-- Stiletto
						i(1196),	-- Tabar
						i(2490),	-- Tomahawk
						i(2489),	-- Two-handed Sword
						i(2495),	-- Walking Stick
						i(2493),	-- Wooden Mallet
					},
				}),
				n(45546, {	-- Vizna Bangwrench <Engineering Supplies>
					["coord"] = { 36.6, 86.8, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1, REMOVED_7_3_5 },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(18647, {	-- Schematic: Red Firework (RECIPE!)
							["isLimited"] = true,
						}),
						i(22729, {	-- Schematic: Steam Tonk Controller (RECIPE!)
							["timeline"] = { CREATED_1_12_1, ADDED_2_3_0 },
							["isLimited"] = true,
						}),
					},
				}),
				n(8404, {	-- Xan'tish <Snake Vendor>
					["description"] = "This NPC walks around in a circle in the Valley of Spirits.",
					["coords"] = {
						-- #if AFTER CATA
						{ 34.0, 67.6, ORGRIMMAR },
						-- #else
						{ 37.6, 75.8, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(10360),	-- Black Kingsnake (PET!)
						i(10361),	-- Brown Snake (PET!)
						i(10392),	-- Crimson Snake (PET!)
					},
				}),
				n(3400, {	-- Xen'to <Cooking Supplies>
					["coords"] = {
						-- #if AFTER CATA
						{ 32.6, 68.6, ORGRIMMAR },
						-- #else
						{ 57.6, 53.2, ORGRIMMAR },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(21219),	-- Recipe: Sagefish Delight (RECIPE!)
						i(21099),	-- Recipe: Smoked Sagefish (RECIPE!)
					},
				}),
				n(3405, {	-- Zeal'aya <Herbalism Supplies>
					["coord"] = { 55.0, 39.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {
						{ "sub", "common_vendor", 4615 },	-- Katrina Alliestar <Herbalism Supplies> [TBC+] / <Herbalism Supplier>
						-- #if AFTER MOP
						{ "select","itemID", 4565},	-- Simple Dagger
						-- #endif
					},
				}),
				n(3409, {	-- Zendo'jian <Weapon Vendor>
					["coord"] = { 75.0, 36.6, ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["sym"] = {{"select","itemID",
						853,	-- Hatchet
						2507,	-- Laminated Recurve Bow
						854,	-- Quarter Staff
						3026,	-- Reinforced Bow
						1196,	-- Tabar
						2495,	-- Walking Stick
					}},
					["groups"] = {
						i(926),		-- Battle Axe
						i(2025),	-- Bearded Axe
						i(2029),	-- Cleaver
						i(927),		-- Double Axe
						i(2030),	-- Gnarled Staff
						i(2507),	-- Laminated Recurve Bow
						i(928),		-- Long Staff
						i(37, {	-- Worn Axe
							["timeline"] = { ADDED_10_1_7 },
						}),
					},
				}),
				n(45549, {	-- Zido Helmbreaker <Blacksmithing Supplies>
					["coord"] = { 36.2, 83.2, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1, REMOVED_9_0_1 },
					["sym"] = {
						{"sub", "common_recipes_vendor", 3356},	-- Sumi <Blacksmithing Supplies>
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
			}),
			n(52037, {	-- Zulna <Justice Heirlooms>
				["coord"] = { 48.7, 71.4, ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_4_0_6, REMOVED_6_0_2 },
				["sym"] = {
					{ "select", "npcID", 32509 },	-- Brammold Deepmine <Antiques & Heirlooms>
					{ "pop" },						-- Pop the Headers
				},
			}),
			-- #if NOT ANYCLASSIC
			-- CRIEVE NOTE: I'm going to solve this a different way eventually.
			o(206109, {	-- Warchief's Command Board
				["provider"] = { "o", 206116 },	-- Warchief's Command Board
				["coords"] = {
					-- Locations for 206109
					{ 49.8, 76.4, ORGRIMMAR },
					{ 58.3, 45.7, ORGRIMMAR },
					{ 45.6, 5.9, ORGRIMMAR },
					-- Locations for 206116
					{ 23.4, 94.2, ORGRIMMAR },
					{ 59.0, 44.4, ORGRIMMAR },
					{ 66.7, 49.5, ORGRIMMAR },
				},
				["timeline"] = { ADDED_4_0_1 },
				["sym"] = WARCHIEFS_COMMAND_BOARD_SYMLINK,
				["races"] = HORDE_ONLY,
				["skipFill"] = true,
			}),
			-- #endif
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(KALIMDOR, {
		m(ORGRIMMAR, {
			q(51766),	-- cinematic during Horde BFA intro scenario quest
			q(54948, {	-- something in orgrimmar on lvl 60 necrolord goblin warlock
				["timeline"] = { ADDED_8_2_0 },
			}),
		}),
	}),
})));
