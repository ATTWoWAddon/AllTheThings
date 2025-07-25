---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if MOP
local VALE_TOT_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_LANDFALL .. [[;
		t.description = "This will be unavailable when the Rise of the Thunder King phase begins."
	end
end]];
local VALE_SOO_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_LANDFALL .. [[;
		t.description = "This will be unavailable when the Siege of Orgrimmar phase begins."
	end
end]];
-- #endif

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(VALE_OF_ETERNAL_BLOSSOMS, {
			["lore"] = "The Vale of Eternal Blossoms is a zone at the center of the continent of Pandaria. The Vale has great cultural importance to both the pandaren and mogu, particularly the Mogu'shan Palace. Formerly known as a Cradle of Life and used as a place of experimentation by the Titans similar to Sholazar Basin and Un'goro Crater, this vale of golden flowers and trees served as the seat of power for the rulers of Pandaria, such as Emperor Shaohao and the mogu rulers following the death of Lei Shen.",
			["icon"] = 618798,
			["maps"] = {
				395,	-- Guo-Lai Halls
				396,	-- The Hall of the Serpent
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(7318),	-- A Taste of History
					ach(6856),	-- Ballad of Liu Lang (automated)
					ach(6716),	-- Between a Saurok and a Hard Place (automated)
					ach(7323),	-- Collateral Damage
					ach(7320),	-- Dog Pile
					ach(7315, {	-- Eternally in the Vale
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
					}),
					ach(6979),	-- Explore Vale of Eternal Blossoms
					ach(6846),	-- Fish Tales (automated)
					ach(6850),	-- Hozen in the Mist (automated)
					ach(7230),	-- Legend of the Brewfathers (automated)
					ach(7317),	-- One Many Army
					ach(7324),	-- One Step at a Time
					ach(7319),	-- Ready for Raiding III
					ach(7322),	-- Roll Club
					ach(6754),	-- The Dark Heart of the Mogu (automated)
					ach(6546),	-- The Golden Lotus
					ach(6548),	-- The Lorewalkers
					ach(6855),	-- The Seven Burdens of Shaohao (automated)
					ach(6847),	-- The Song of the Yaungol (automated)
				}),
				battlepets({
					pet(751, {	-- Dancing Water Skimmer (PET!)
						["coords"] = {
							{ 30.2, 77.6, VALE_OF_ETERNAL_BLOSSOMS },
							{ 71.2, 40.2, VALE_OF_ETERNAL_BLOSSOMS },
							{ 76.2, 60.0, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					pet(747, {	-- Effervescent Glowfly (PET!)
						["coords"] = {
							{ 23.2, 27.2, VALE_OF_ETERNAL_BLOSSOMS },
							{ 21.6, 60.8, VALE_OF_ETERNAL_BLOSSOMS },
							{ 85.0, 48.4, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					pet(383, {	-- Eternal Strider (PET!)
						["coords"] = {
							{ 34.0, 78.6, VALE_OF_ETERNAL_BLOSSOMS },
							{ 72.6, 27.6, VALE_OF_ETERNAL_BLOSSOMS },
							{ 87.0, 46.2, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					pet(748),	-- Gilded Moth (PET!)
					pet(749, {	-- Golden Civet (PET!)
						["coords"] = {
							{ 11.2, 70.0, VALE_OF_ETERNAL_BLOSSOMS },
							{ 48.2, 30.8, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					pet(750, {	-- Golden Civet Kitten (PET!)
						["coords"] = {
							{ 11.2, 70.6, VALE_OF_ETERNAL_BLOSSOMS },
							{ 38.6, 64.8, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
					pet(752, {	-- Yellow-Bellied Bullfrog (PET!)
						["coords"] = {
							{ 24.6, 30.8, VALE_OF_ETERNAL_BLOSSOMS },
							{ 69.0, 44.8, VALE_OF_ETERNAL_BLOSSOMS },
						},
					}),
				}),
				explorationHeader({
					visit_exploration(6149,{coord={18.8,22.0,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Ancestral Rise
					visit_exploration(6538,{coord={17.4,37.4,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Autumnshade Ridge
					visit_exploration(6735,{coord={61.5,59.1,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Big Blossom Mine
					exploration(6074),	-- Guo-Lai Halls
					visit_exploration(6144,{coord={40.6,61.3,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Jin Yang Road
					exploration(6031),	-- Mistfall Village
					exploration(6143),	-- Mogu'shan Palace
					visit_exploration(6032,{coord={25.9,44.8,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Ruins of Guo-Lai
					visit_exploration(6053,{coord={29.8,23.4,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Ruins Rise
					visit_exploration(6035,{coord={20.8,71.2,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Setting Sun Garrison
					exploration(6553),	-- Shrine of Seven Stars
					exploration(6142),	-- Shrine of Seven Stars
					exploration(6141),	-- Shrine of Two Moons
					exploration(6554),	-- Shrine of Two Moons
					visit_exploration(6539,{coord={27.1,72.6,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Sunblossom Hill
					visit_exploration(6504,{coord={49.5,42.3,VALE_OF_ETERNAL_BLOSSOMS}}),	-- The Emperor's Approach
					exploration(6055),	-- The Five Sisters
					exploration(6036),	-- The Golden Pagoda
					visit_exploration(6033,{coord={43.0,16.6,VALE_OF_ETERNAL_BLOSSOMS}}),	-- The Golden Stair
					exploration(6560),	-- The Golden Terrace
					visit_exploration(6127,{coord={40.6,77.0,VALE_OF_ETERNAL_BLOSSOMS}}),	-- The Silent Sanctuary
					exploration(6145),	-- The Summer Fields
					exploration(6482),	-- The Summer Terrace
					exploration(6037),	-- Tu Shen Burial Ground
					visit_exploration(6034,{coord={45.6,51.8,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Whitepetal Lake
					visit_exploration(6054,{coord={24.0,47.8,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Winterbough Glade
				}),
				n(FACTIONS, {
					faction(FACTION_GOLDEN_LOTUS),	-- Golden Lotus
					faction(FACTION_THE_LOREWALKERS),	-- The Lorewalkers
				}),
				n(FLIGHT_PATHS, {
					fp(1073, {	-- Serpent's Spine, Vale of Eternal Blossoms
						["coord"] = { 14.2, 79.2, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					fp(1057, {	-- Shrine of Seven Stars, Vale of Eternal Blossoms
						["coord"] = { 84.6, 62.4, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1058, {	-- Shrine of Two Moons, Vale of Eternal Blossoms
						["coord"] = { 62.8, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					fp(2544, {	-- Mistfall Village, Vale of Eternal Blossoms
						["cr"] = 154805,	-- Ryuxi
						["coord"] = { 38.9, 72.8, VALE_OF_ETERNAL_BLOSSOMS },
						-- ["sourceQuests"] = {  },	-- TODO: likely requires some 8.3 quest chain before becoming available?
					}),
				}),
				n(MAILBOX, {
					["description"] = "The following will be mailed to you upon completion of respective achievements.",
					["groups"] = {
						q(31055, {	-- Between a Saurok and a Hard Place
							["sourceAchievement"] = 6716,	-- Between a Saurok and a Hard Place
							["providers"] = {
								{ "i", 83769 },	-- Between a Saurok and a Hard Place
								{ "i", 83076 },	-- Between a Saurok and a Hard Place
							},
						}),
						q(31094, {	-- Fish Tales
							["sourceAchievement"] = 6846,	-- Fish Tales
							["provider"] = { "i", 83771 },	-- Fish Tales
						}),
						q(32602, {	-- Gods and Monsters
							["sourceAchievement"] = 8051,	-- Gods and Monsters
							["provider"] = { "i", 94199 },	-- Gods and Monsters
						}),
						q(31097, {	-- Heart of the Mantid Swarm
							["sourceAchievement"] = 6857,	-- Heart of the Mantid Swarm
							["provider"] = { "i", 83773 },	-- Heart of the Mantid Swarm
						}),
						q(31093, {	-- Hozen in the Mist
							["sourceAchievement"] = 6850,	-- Hozen in the Mist
							["provider"] = { "i", 83770 },	-- Hozen in the Mist
						}),
						q(32601, {	-- Rumbles of Thunder
							["sourceAchievement"] = 8050,	-- Rumbles of Thunder
							["provider"] = { "i", 94198 },	-- Rumbles of Thunder
						}),
						q(31103, {	-- The Ballad of Liu Lang
							["sourceAchievement"] = 6856,	-- Ballad of Liu Lang
							["provider"] = { "i", 83780 },	-- The Ballad of Liu Lang
						}),
						q(31095, {	-- The Dark Heart of the Mogu
							["sourceAchievement"] = 6754,	-- The Dark Heart of the Mogu
							["provider"] = { "i", 83772 },	-- The Dark Heart of the Mogu
						}),
						q(31102, {	-- The Seven Burdens of Shaohao
							["sourceAchievement"] = 6855,	-- The Seven Burdens of Shaohao
							["provider"] = { "i", 83779 },	-- The Seven Burdens of Shaohao
						}),
						q(31100, {	-- The Song of the Yaungol
							["sourceAchievement"] = 6847,	-- The Song of the Yaungol
							["provider"] = { "i", 83777 },	-- The Song of the Yaungol
						}),
						q(32600, {	-- The Zandalari Prophecy
							["sourceAchievement"] = 8049,	-- The Zandalari Prophecy
							["provider"] = { "i", 94197 },	-- The Zandalari Prophecy
						}),
						q(31096, {	-- What is Worth Fighting For
							["sourceAchievement"] = 6858,	-- What Is Worth Fighting For
							["provider"] = { "i", 83774 },	-- What is Worth Fighting For
						}),
					},
				}),
				petbattles({
					n(66741, {	-- Aki the Chosen <Grand Master Pet Tamer>
						["coords"] = {
							{ 31.2, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER 8.3.0
							{ 84.1, 28.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						["timeline"] = { ADDED_5_1_0 },
						["petBattleLvl"] = 25,
						["groups"] = {
							q(31958, {	-- Grand Master Aki
								["sourceAchievement"] = 6606,	-- Taming Pandaria
								["timeline"] = { ADDED_5_1_0 },
								["isDaily"] = true,
								["groups"] = {
									i(89125),	-- Sack of Pet Supplies
								},
							}),
						},
					}),
					q(31951, {	-- Grand Master Aki
						["qg"] = 66741,	-- Aki the Chosen
						["sourceQuests"] = {
							31930,	-- Battle Pet Tamers: Pandaria (A)
							31952,	-- Battle Pet Tamers: Pandaria (H)
						},
						["coords"] = {
							{ 31.2, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER 8.3.0
							{ 84.1, 28.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							objective(1, {	-- Defeat Aki the Chosen
								["provider"] = { "n", 66741 },	-- Aki the Chosen
								["coords"] = {
									{ 31.2, 74.2, VALE_OF_ETERNAL_BLOSSOMS },
									-- #if AFTER 8.3.0
									{ 84.1, 28.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
									-- #endif
								},
							}),
							i(89125),	-- Sack of Pet Supplies
						},
					}),
					q(32603, {	-- Beasts of Fable
						["aqd"] = {
							["qg"] = 64572,	-- Sara Finkleswitch
							["coord"] = { 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { 391 },	-- Shrine of Two Moons
						},
						["sourceAchievement"] = 7499,	-- Taming the World
						["timeline"] = { ADDED_5_2_0 },
						["maps"] = { THE_JADE_FOREST, DREAD_WASTES, VALLEY_OF_THE_FOUR_WINDS, TOWNLONG_STEPPES, KUN_LAI_SUMMIT, KRASARANG_WILDS },
						["groups"] = {
							objective(1, {	-- Defeat Ka'wi the Gorger
								["provider"] = { "n", 68555 },	-- Ka'wi the Gorger
								["coord"] = { 48.4, 71.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Defeat Gorespine
								["provider"] = { "n", 68558 },	-- Gorespine
								["coord"] = { 26.2, 50.2, DREAD_WASTES },
							}),
							objective(3, {	-- Defeat No-No
								["provider"] = { "n", 68559 },	-- No-No
								["coord"] = { 11.0, 70.6, VALE_OF_ETERNAL_BLOSSOMS },
							}),
							objective(4, {	-- Defeat Greyhoof
								["provider"] = { "n", 68560 },	-- Greyhoof <Calf of Darkhide>
								["coord"] = { 25.2, 78.6, VALLEY_OF_THE_FOUR_WINDS },
							}),
							objective(5, {	-- Defeat Lucky Yi
								["provider"] = { "n", 68561 },	-- Lucky Yi
								["coord"] = { 40.4, 43.8, VALLEY_OF_THE_FOUR_WINDS },
							}),
							objective(6, {	-- Defeat Ti'un the Wanderer
								["provider"] = { "n", 68562 },	-- Ti'un the Wanderer
								["coord"] = { 72.2, 79.8, TOWNLONG_STEPPES },
							}),
							objective(7, {	-- Defeat Kafi
								["provider"] = { "n", 68563 },	-- Kafi
								["coord"] = { 35.2, 56.0, KUN_LAI_SUMMIT },
							}),
							objective(8, {	-- Defeat Dos-Ryga
								["provider"] = { "n", 68564 },	-- Dos-Ryga
								["coord"] = { 67.8, 84.6, KUN_LAI_SUMMIT },
							}),
							objective(9, {	-- Defeat Nitun
								["provider"] = { "n", 68565 },	-- Nitun <The Midnight Plunderer>
								["coord"] = { 57.0, 29.2, THE_JADE_FOREST },
							}),
							objective(10, {	-- Defeat Skitterer Xi'a
								["provider"] = { "n", 68566 },	-- Skitterer Xi'a
								["coord"] = { 36.2, 37.2, KRASARANG_WILDS },
							}),
							i(94025, {	-- Red Panda (PET!)
								["timeline"] = { ADDED_5_2_0 },
							}),
						},
					}),
					q(32604, {	-- Beasts of Fable Book I
						["aqd"] = {
							["qg"] = 64572,	-- Sara Finkleswitch
							["coord"] = { 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { THE_JADE_FOREST, KUN_LAI_SUMMIT, 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { THE_JADE_FOREST, KUN_LAI_SUMMIT, 391 },	-- Shrine of Two Moons
						},
						["sourceQuest"] = 32603,	-- Beasts of Fable
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["timeline"] = { ADDED_5_2_0 },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- Defeat Ka'wi the Gorger
								["provider"] = { "n", 68555 },	-- Ka'wi the Gorger
								["coord"] = { 48.4, 71.0, THE_JADE_FOREST },
							}),
							objective(2, {	-- Defeat Kafi
								["provider"] = { "n", 68563 },	-- Kafi
								["coord"] = { 35.2, 56.0, KUN_LAI_SUMMIT },
							}),
							objective(3, {	-- Defeat Dos-Ryga
								["provider"] = { "n", 68564 },	-- Dos-Ryga
								["coord"] = { 67.8, 84.6, KUN_LAI_SUMMIT },
							}),
							objective(4, {	-- Defeat Nitun
								["provider"] = { "n", 68565 },	-- Nitun <The Midnight Plunderer>
								["coord"] = { 57.0, 29.2, THE_JADE_FOREST },
							}),
							i(94207),	-- Fabled Pandaren Pet Supplies
						},
					}),
					q(32868, {	-- Beasts of Fable Book II
						["aqd"] = {
							["qg"] = 64572,	-- Sara Finkleswitch
							["coord"] = { 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, 391 },	-- Shrine of Two Moons
						},
						["sourceQuest"] = 32603,	-- Beasts of Fable
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["timeline"] = { ADDED_5_2_0 },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- Defeat Greyhoof
								["provider"] = { "n", 68560 },	-- Greyhoof <Calf of Darkhide>
								["coord"] = { 25.2, 78.6, VALLEY_OF_THE_FOUR_WINDS },
							}),
							objective(2, {	-- Defeat Lucky Yi
								["provider"] = { "n", 68561 },	-- Lucky Yi
								["coord"] = { 40.4, 43.8, VALLEY_OF_THE_FOUR_WINDS },
							}),
							objective(3, {	-- Defeat Skitterer Xi'a
								["provider"] = { "n", 68566 },	-- Skitterer Xi'a
								["coord"] = { 36.2, 37.2, KRASARANG_WILDS },
							}),
							i(94207),	-- Fabled Pandaren Pet Supplies
						},
					}),
					q(32869, {	-- Beasts of Fable Book III
						["aqd"] = {
							["qg"] = 64572,	-- Sara Finkleswitch
							["coord"] = { 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES, 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES, 391 },	-- Shrine of Two Moons
						},
						["sourceQuest"] = 32603,	-- Beasts of Fable
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["timeline"] = { ADDED_5_2_0 },
						["isDaily"] = true,
						["groups"] = {
							objective(1, {	-- Defeat Gorespine
								["provider"] = { "n", 68558 },	-- Gorespine
								["coord"] = { 26.2, 50.2, DREAD_WASTES },
							}),
							objective(2, {	-- Defeat No-No
								["provider"] = { "n", 68559 },	-- No-No
								["coord"] = { 11.0, 70.6, VALE_OF_ETERNAL_BLOSSOMS },
							}),
							objective(3, {	-- Defeat Ti'un the Wanderer
								["provider"] = { "n", 68562 },	-- Ti'un the Wanderer
								["coord"] = { 72.2, 79.8, TOWNLONG_STEPPES },
							}),
							i(94207),	-- Fabled Pandaren Pet Supplies
						},
					}),
					q(32428, {	-- Pandaren Spirit Tamer
						["aqd"] = {
							["qg"] = 64572,	-- Sara Finkleswitch
							["coord"] = { 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { TOWNLONG_STEPPES, KUN_LAI_SUMMIT, THE_JADE_FOREST, DREAD_WASTES, 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { TOWNLONG_STEPPES, KUN_LAI_SUMMIT, THE_JADE_FOREST, DREAD_WASTES, 391 },	-- Shrine of Two Moons
						},
						["sourceAchievement"] = 7499,	-- Taming the World
						["description"] = "These pets can be found in the Pandaren Spirit Pet Supplies received from the four Pandaren Spirit Tamers in their individual Daily Quests once you complete this quest.",
						["timeline"] = { ADDED_5_0_4 },
						["groups"] = {
							objective(1, {	-- Defeat Burning Pandaren Spirit
								["provider"] = { "n", 68463 },	-- Burning Pandaren Spirit <Grand Master Pet Tamer>
								["coord"] = { 57.0, 42.2, TOWNLONG_STEPPES },
							}),
							objective(2, {	-- Defeat Thundering Pandaren Spirit
								["provider"] = { "n", 68465 },	-- Thundering Pandaren Spirit <Grand Master Pet Tamer>
								["coord"] = { 64.8, 93.6, KUN_LAI_SUMMIT },
							}),
							objective(3, {	-- Defeat Whispering Pandaren Spirit
								["provider"] = { "n", 68464 },	-- Whispering Pandaren Spirit <Grand Master Pet Tamer>
								["coord"] = { 28.8, 36.0, THE_JADE_FOREST },
							}),
							objective(4, {	-- Defeat Flowing Pandaren Spirit
								["provider"] = { "n", 68462 },	-- Flowing Pandaren Spirit <Grand Master Pet Tamer>
								["coord"] = { 61.2, 87.6, DREAD_WASTES },
							}),
							i(92799),	-- Pandaren Air Spirit (PET!)
							i(92798),	-- Pandaren Fire Spirit (PET!)
							i(92800),	-- Pandaren Earth Spirit (PET!)
							i(90173),	-- Pandaren Water Spirit (PET!)
						},
					}),
					pvp(q(32863, {	-- What We've Been Training For
						["aqd"] = {
							["qgs"] = {
								64572,	-- Sara Finkleswitch
								63596,	-- Audrey Burnhelp
							},
							["coords"] = {
								{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
								{ 69.2, 25.0, STORMWIND_CITY },
							},
							["maps"] = { 393 },	-- Shrine of Seven Stars
						},
						["hqd"] = {
							["qgs"] = {
								64582,	-- Gentle San
								63626,	-- Varzok
							},
							["coords"] = {
								{ 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
								{ 52.6, 59.3, ORGRIMMAR },
							},
							["maps"] = { 391 },	-- Shrine of Two Moons
						},
						["description"] = "Account-Wide Weekly Quest.",
						["timeline"] = { ADDED_5_3_0 },
						["isWeekly"] = true,
						["groups"] = {
							i(98095, {	-- Brawler's Pet Supplies
								["sym"] = {{"select","itemID",
									89139,	-- Chain Pet Leash
									44820,	-- Red Ribbon Pet Leash
									37460,	-- Rope Pet Leash
									92679,	-- Flawless Aquatic Battle-Stone
									92675,	-- Flawless Beast Battle-Stone
									92676,	-- Flawless Critter Battle-Stone
									92665,	-- Flawless Elemental Battle-Stone
									92677,	-- Flawless Flying Battle-Stone
									92682,	-- Flawless Humanoid Battle-Stone
									92678,	-- Flawless Magic Battle-Stone
									92680,	-- Flawless Mechanical Battle-Stone
									92681,	-- Flawless Undead Battle-Stone
								}},
							})
						},
					})),
				}),
				n(QUESTS, {
					q(32011, {	-- A Celestial Task (A)
						["provider"] = { "n", 64032 },	-- Sage Whiteheart
						["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(32010, {	-- A Celestial Task (H)
						["provider"] = { "n", 64001 },	-- Sage Lotusbloom
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(33229, applyclassicphase(MOP_PHASE_ESCALATION, {	-- A Flash of Bronze... (A)
						["provider"] = { "n", 73691 },	-- Chromie <The Timewalkers>
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_3_0 },
					})),
					q(33230, applyclassicphase(MOP_PHASE_ESCALATION, {	-- A Flash of Bronze... (H)
						["provider"] = { "n", 73691 },	-- Chromie <The Timewalkers>
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_3_0 },
					})),
					q(30284, {	-- A Thousand Pointy Teeth
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30338, {	-- A Weighty Task
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31755, {	-- Acts of Cruelty
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30236, {	-- Aetha
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30244, {	-- Along the Serpent's Spine
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31376, {	-- Attack At The Temple of the Jade Serpent (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History
						["provider"] = { "n", 64032 },	-- Sage Whiteheart
						["isDaily"] = true,
						["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31377, {	-- Attack At The Temple of the Jade Serpent (H)
						--["sourceQuests"] = { 31511 },	-- A Witness to History
						["provider"] = { "n", 64001 },	-- Sage Lotusbloom
						["isDaily"] = true,
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					q(31243, {	-- Attack on Mistfall Village
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31246, {	-- Attack on Mistfall Village
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30286, {	-- Backed Into a Corner
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59337 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30297, {	-- Baolai the Immolator
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30634, {	-- Barring Entry
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
						["g"] = {
							i(80484),	-- Explosive Keg (QI!)
						},
					}),
					q(30642, {	-- Battle Axe of the Thunder King
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59905 },	-- Zhi the Harmonious
						["sourceQuests"] = { 30641 },	-- Battle Helm of the Thunder King
						["g"] = sharedData({ ["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 } }, {
							i(90601),	-- Bonded Plate of the Golden Lotus
							i(90607),	-- Burning Robes of the Golden Lotus
							i(90598),	-- Crackling Chain of the Golden Lotus
							i(90602),	-- Deadeye Chain of the Golden Lotus
							i(90597),	-- Delicate Chestguard of the Golden Lotus
							i(90603),	-- Durable Plate of the Golden Lotus
							i(90600),	-- Ferocious Plate of the Golden Lotus
							i(90609),	-- Mending Robe of the Golden Lotus
							i(90599),	-- Warmimng Chestguard of the Golden Lotus
						}),
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30641, {	-- Battle Helm of the Thunder King
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59905 },	-- Zhi the Harmonious
						["sourceQuests"] = { 30640 },	-- Battle Spear of the Thunder King
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30640, {	-- Battle Spear of the Thunder King
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59905 },	-- Zhi the Harmonious
						["sourceQuests"] = { 30639 },	-- The Secrets of Guo-Lai
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31136, {	-- Behind Our Lines
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30226, {	-- Blood on the Rise
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30266, {	-- Bloodied Skies
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						-- Wouter TODO: qg was originally Leven Dawnblade according to Wowwiki, verify this
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
					}),
					q(30195, {	-- Blooming Blossoms
						["coord"] = { 33.8, 69.8, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58820 },	-- Merchant Benny
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30282, {	-- Burning Away the Filth
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31754, {	-- Cannonfire
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30481, {	-- Carved in Stone
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59333 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31378, {	-- Challenge at the Temple of the Red Crane (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History
						["provider"] = { "n", 64032 },	-- Sage Whiteheart
						["isDaily"] = true,
						["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31379, {	-- Challenge At The Temple of the Red Crane (H)
						["sourceQuests"] = { 31511 },	-- A Witness to History
						["provider"] = { "n", 64001 },	-- Sage Lotusbloom
						["isDaily"] = true,
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					q(30263, {	-- Clearing in the Forest
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30233, {	-- Cracklefang
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31762, {	-- Crumbling Behemoth
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31382, {	-- Defense At Niuzao Temple (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History
						["provider"] = { "n", 64032 },	-- Sage Whiteheart
						["isDaily"] = true,
						["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY
					}),
					q(31383, {	-- Defense At Niuzao Temple (H)
						["sourceQuests"] = { 31511 },	-- A Witness to History
						["provider"] = { "n", 64001 },	-- Sage Lotusbloom
						["isDaily"] = true,
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					q(32016, {	-- Elder Charms of Good Fortune
						["coord"] = { 85.2, 62.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64029 },	-- Elder Lin
						["isWeekly"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if MOP
						["OnUpdate"] = VALE_TOT_ONUPDATE;
						-- #endif
					}),
					q(32017, {	-- Elder Charms of Good Fortune
						["coord"] = { 62.0, 20.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 63996 },	-- Elder Lin
						["isWeekly"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_2_0 },
						-- #if MOP
						["OnUpdate"] = VALE_TOT_ONUPDATE;
						-- #endif
					}),
					q(30194, {	-- Encroaching Storm
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30264, {	-- Enemy at the Gates
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30342, {	-- Fiery Tongue, Fragile Feet
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30320, {	-- Free Spirits
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
						["g"] = {
							i(89297),	-- Shao-Tien Spirit Dagger (QI!)
						},
					}),
					q(30289, {	-- Freeing Mind and Body
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30296, {	-- Gaohun the Soul-Severer
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30312, {	-- Given a Second Chance
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31244, {	-- Guo-Lai Encampment
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31240, {	-- Guo-Lai Infestation
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30304, {	-- Hard as a Rock
						["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58504 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30305, {	-- He Knows What He's Doing
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59333 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31756, {	-- High Chance of Rain
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30200, {	-- In Ashen Webs
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30293, {	-- In Enemy Hands
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					-- Wouter TODO: are these in the game?
					q(30630, {	-- Into the Vale (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History (A)
						["provider"] = { "n", 59964 },	-- Pako the Speaker
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(33008, {	-- Into the Vale (H)
						["sourceQuests"] = { 31511 },	-- A Witness to History (H)
						["provider"] = { "n", 59964 },	-- Pako the Speaker
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(33231, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Journey to the Timeless Isle
						["provider"] = { "n", 73691 },	-- Chromie <The Timewalkers>
						["isBreadcrumb"] = true,	-- Possible to skip if you just fly to the Isle after picking up Flash of Bronze
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = {
							33229,	-- A Flash of Bronze...	(Alliance)
							33230,	-- A Flash of Bronze...	(Horde)
						},
					})),
					q(33232, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Journey to the Timeless Isle
						["provider"] = { "n", 73691 },	-- Chromie <The Timewalkers>
						["isBreadcrumb"] = true,	-- Possible to skip if you just fly to the Isle after picking up Flash of Bronze
						["races"] = HORDE_ONLY,
						["sourceQuests"] = {
							33229,	-- A Flash of Bronze...	(Alliance)
							33230,	-- A Flash of Bronze...	(Horde)
						},
						["groups"] = {
							i(104110),	-- Curious Bronze Timepiece (QI!)
						},
					})),
					q(30635, {	-- Killing the Quilen
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = {
							30633,	-- Out with the Scouts
							30634,	-- Barring Entry
						},
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31758, {	-- Laosy Scouting
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30239, {	-- Lao-Fe the Slavebinder
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30638, {	-- Leaving an Opening
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = {
							30635,	-- Killing the Quilen
							30636,	-- Stones of Power
							30637,	-- The Guo-Lai Halls
							30654,	-- The Guo-Lai Halls
						},
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30245, {	-- Lost Scouts
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30196, {	-- Lushroom Rush
						["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58818 },	-- Cook Tope
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30243, {	-- Mantid Under Fire
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
					}),
					q(30193, {	-- Meating Expectations
						["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58818 },	-- Cook Tope
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(32246, applyclassicphase(MOP_PHASE_LANDFALL, {	-- Meet the Scout (A)
						["provider"] = { "n", 64610 },	-- Lyalia
						["coord"] = { 84.0, 58.7, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["sourceQuests"] = { 31483 },	-- Incoming...
					})),
					q(32249, applyclassicphase(MOP_PHASE_LANDFALL, {	-- Meet the Scout (H)
						["provider"] = { "n", 64566 },	-- Sunwalker Dezco
						["coord"] = { 62.8, 27.9, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["sourceQuests"] = { 31483 },	-- Incoming...
					})),
					q(31242, {	-- Mistfall Village
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31245, {	-- Mistfall Village
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31249, {	-- Mistfall Village
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30287, {	-- Mogu Make Poor House Guests
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31293, {	-- Mogu Make Poor House Guests
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					-- Wouter TODO: these two get removed with SoO again?
					q(32719, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- Mogu Runes of Fate (A)
						["provider"] = { "n", 64029 },	-- Elder Lin
						["coord"] = { 85.2, 62.6, VALE_OF_ETERNAL_BLOSSOMS },
						["isWeekly"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 },
					})),
					q(32718, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- Mogu Runes of Fate (H)
						["provider"] = { "n", 63996 },	-- Elder Liao
						["coord"] = { 62.0, 20.6, VALE_OF_ETERNAL_BLOSSOMS },
						["isWeekly"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_2_0, REMOVED_5_4_0 },
					})),
					q(31295, {	-- Mogu within the Ruins of Guo-Lai
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30192, {	-- My Town, It's on Fire
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58819 },	-- Mayor Shiyo
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30288, {	-- My Town, It's On Fire Again
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59336 },	-- Mayor Shiyo
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30444, {	-- No Reprieve
						["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58919 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30299, {	-- No Stone Unturned
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59334 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30301, {	-- Offering a Warm Welcome
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59332 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30633, {	-- Out with the Scouts
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30298, {	-- Painting the Ruins Red
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59332 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30231, {	-- Pomfruit Pickup
						["coord"] = { 33.8, 70.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58818 },	-- Cook Tope
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30235, {	-- Quid Pro Quo
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["g"] = { i(87807) },	-- Stone of the Water Strider (QI!)
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31288, {	-- Research Project: The Mogu Dynasties
						["provider"] = { "n", 63984 },	-- Master Liu
						["coord"] = { 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
					}),
					q(31289, {	-- Research Project: The Pandaren Empire
						["provider"] = { "n", 63984 },	-- Master Liu
						["coords"] = {
							{ 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER 8.3.0
							{ 84.1, 28.5, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
						["isDaily"] = true,
					}),
					q(30238, {	-- Return to Rest
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30261, {	-- Roll Club: Serpent's Spine
						["coord"] = { 18.1, 63.5, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58704 },	-- Kelari Featherfoot
					}),
					q(30292, {	-- Rude Awakenings
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58471 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30232, {	-- Ruffling Some Feathers
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30205, {	-- Runelocked
						["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 63266 },	-- Sinan the Dreamer
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30206, {	-- Runes in the Ruins
						["coord"] = { 33.6, 40.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 63266 },	-- Sinan the Dreamer
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30309, {	-- Set in Stone
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30385, {	-- Setting Sun Garrison
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31247, {	-- Setting Sun Garrison
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31250, {	-- Setting Sun Garrison
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31297, {	-- Setting Sun Garrison
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59337 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30265, {	-- Sparkle in the Eye
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30190, {	-- Sprite Plight
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58819 },	-- Mayor Shiyo
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30191, {	-- Steer Clear of the Beer Here
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58819 },	-- Mayor Shiyo
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30308, {	-- Stone Hard Quilen
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30290, {	-- Stonebound Killers
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58911 },	-- Rook Stonetoe
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endifss
					}),
					q(30636, {	-- Stones of Power
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = {
							30633,	-- Out with the Scouts
							30634,	-- Barring Entry
						},
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31760, {	-- Striking First
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30291, {	-- Stunning Display
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30242, {	-- Survival Ring: Blades
						["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58743 },	-- Yumi Goldenpaw
					}),
					q(30240, {	-- Survival Ring: Flame
						["coord"] = { 18.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58743 },	-- Yumi Goldenpaw
					}),
					q(30204, {	-- That's Not a Rock!
						["coord"] = { 34.0, 38.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58504 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31369, {	-- The Anglers [A]
						["isBreadcrumb"] = true,
						["provider"] = { "n", 64033 },	-- Master Angler Karu
						["races"] = ALLIANCE_ONLY,
						["coord"] = { 86.5, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
					}),
					q(31370, {	-- The Anglers [H]
						["isBreadcrumb"] = true,	-- this wasn't available for me until I party synced, but no follow up quest on turn in... not sure what locks
						["provider"] = { "n", 64010 },	-- Master Angler Karu
						["races"] = HORDE_ONLY,
						["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
					}),
					q(30225, {	-- The Ashweb Matriarch
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30306, {	-- The Battle Ring
						["coord"] = { 19.0, 75.4, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						-- Wouter TODO: supposedly moved from Anji Autumnlight in 5.4.0
						["provider"] = { "n", 58962 },	-- Hai-Me Heavyhands
					}),
					q(30248, {	-- The Butcher
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30277, {	-- The Crumbling Hall
						["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58919 },	-- Anji Autumnlight
						["g"] = {
							i(87790),	-- Ancient Guo-Lai Artifact (QI!)
						},
					}),
					q(30314, {	-- The Displaced Paleblade
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59342 },	-- He Softfoot
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30307, {	-- The Eternal Vigil
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30646, {	-- The Final Power
						["coord"] = { 74.2, 41.8, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 59906 },	-- Sinan the Dreamer
						["sourceQuests"] = { 30645 },	-- The Might of Three
						["g"] = sharedData({ ["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 } }, {
							i(90596),	-- Burning Necklace of the Golden Lotus
							i(90593),	-- Delicate Necklace of the Golden Lotus
							i(90594),	-- Durable Necklace of the Golden Lotus
							i(90592),	-- Ferocious Necklace of the Golden Lotus
							i(90595),	-- Mending Necklace of the Golden Lotus
						}),
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31384, {	-- The Golden Lotus (A)
						["isBreadcrumb"] = true,
						["coord"] = { 84.2, 62.4, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 64031 },	-- Xari the Kind
					}),
					q(31385, {	-- The Golden Lotus (H)
						["isBreadcrumb"] = true,
						["coord"] = { 63.0, 22.2, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 64007 },	-- Weng the Merciful
					}),
					q(30637, {	-- The Guo-Lai Halls
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30654, {	-- The Guo-Lai Halls
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31876, {	-- The Inkmasters of the Arboretum
						["requireSkill"] = INSCRIPTION,
						["provider"] = { "n", 64691 },	-- Lorewalker Huynh
						["isWeekly"] = true,
						["coord"] = { 82.0, 29.4, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					q(30302, {	-- The Imperion Threat
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59332 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30300, {	-- The Key to Success
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59334 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31390, {	-- The Klaxxi [A]
						["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 64488 },	-- Riki the Shifting Shadow
						["isBreadcrumb"] = true,
					}),
					q(31391, {	-- The Klaxxi [H]
						["coord"] = { 63.2, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 64534 },	-- Bowmaster Ku
						["isBreadcrumb"] = true,
					}),
					q(31367, {	-- The Lorewalkers [A]
						["coord"] = { 85.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64508 },	-- Scrollmaker Resshi
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
					}),
					q(31368, {	-- The Lorewalkers [H]
						["coord"] = { 62.4, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64531 },	-- Lena Stonebrush
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
					}),
					q(30645, {	-- The Might of Three
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["sourceQuests"] = { 30644 },	-- What Comes to Pass
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30643, {	-- The Mogu's Message
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["sourceQuests"] = { 30642 },	-- Battle Axe of the Thunder King
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30313, {	-- The Moving Mists
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59342 },	-- He Softfoot
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(32815, applyclassicphase(MOP_PHASE_ESCALATION, {	-- The Old Seer
						["sourceQuests"] = { 32807 },	-- The Warchief and the Darkness
						["provider"] = { "n", 61962 },	-- Lorewalker Cho
						["timeline"] = { ADDED_5_3_0 },
					})),
					q(30237, {	-- The Pandaren Uprising Relived
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30632, {	-- The Ruins of Guo-Lai
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["sourceQuests"] = {
							31512,	-- A Witness to History (A)
							31511,	-- A Witness to History (H)
							30631,	-- The Shrine of Seven Stars (A)
							30649,	-- The Shrine of Two Moons (H)
						},
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31248, {	-- The Ruins of Guo-Lai
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31294, {	-- The Ruins of Guo-Lai
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59338 },	-- Che Wildwalker
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31296, {	-- The Ruins of Guo-Lai
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59337 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30639, {	-- The Secrets of Guo-Lai
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["sourceQuests"] = {
							30635,	-- Killing the Quilen
							30636,	-- Stones of Power
							30637,	-- The Guo-Lai Halls
							30654,	-- The Guo-Lai Halls
						},
						["g"] = sharedData({ ["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 } }, {
							i(90615),	-- Burning Mark of the Golden Lotus
							i(90614),	-- Delicate Mark of the Golden Lotus
							i(90618),	-- Durable Mark of the Golden Lotus
							i(90617),	-- Ferocious Mark of the Golden Lotus
							i(90616),	-- Mending Mark of the Golden Lotus
						}),
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31386, {	-- The Shado-Pan Offensive (A)
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 64030 },	-- Lao Lang
						["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					q(31388, {	-- The Shado-Pan Offensive (H)
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 64002 },	-- Sang-Bo
						["coord"] = { 63.0, 21.2, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					q(30631, {	-- The Shrine of Seven Stars
						["sourceQuests"] = { 30630 },	-- Into the Vale (A)
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30649, {	-- The Shrine of Two Moons
						["sourceQuests"] = { 33008 },	-- Into the Vale (H)
						["provider"] = { "n", 58468 },	-- Sun Tenderheart
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30280, {	-- The Thunder Below
						["coord"] = { 21.4, 71.5, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
						["provider"] = { "n", 58919 },	-- Anji Autumnlight
					}),
					-- Wouter TODO: check these quests
					q(31372, {	-- The Tillers (A)
						["coord"] = { 87.0, 60.8, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64036 },	-- Tang Ironhoe
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(31374, {	-- The Tillers (H)
						["coord"] = { 60.4, 22.8, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64011 },	-- Farmhand Dooka
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(32679, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- Thunder Calls (A)
						["races"] = ALLIANCE_ONLY,
						["provider"] = { "n", 64610 },	-- Lyalia
						["coord"] = { 84.0, 58.8, VALE_OF_ETERNAL_BLOSSOMS },
						["isBreadcrumb"] = true,
					})),
					q(32678, applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, {	-- Thunder Calls (H)
						["coord"] = { 62.8, 28.0, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["provider"] = { "n", 64566 },	-- Sunwalker Dezco
						["isBreadcrumb"] = true,
					})),
					q(30310, {	-- Thundering Skies
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31380, {	-- Trial At The Temple of the White Tiger (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History
						["provider"] = { "n", 64032 },	-- Sage Whiteheart
						["isDaily"] = true,
						["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					}),
					q(31381, {	-- Trial At The Temple of the White Tiger (H)
						["sourceQuests"] = { 31511 },	-- A Witness to History
						["provider"] = { "n", 64001 },	-- Sage Lotusbloom
						["isDaily"] = true,
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					q(30228, {	-- Troubling the Troublemakers
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31291, {	-- Uncovering the Past
						["provider"] = { "n", 63983 },	-- Ms. Thai
						["coord"] = { 83.6, 31.0, VALE_OF_ETERNAL_BLOSSOMS },
						["isDaily"] = true,
					}),
					q(30249, {	-- Under the Setting Sun
						["coord"] = { 21.3, 71.4, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58920 },	-- Kun Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30341, {	-- Under Watchful Eyes
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59342 },	-- He Softfoot
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31387, {	-- Understanding The Shado-Pan (A)
						["coord"] = { 84.4, 61.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64030 },	-- Lao Lang
						["isBreadcrumb"] = true,
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },
					}),
					q(31389, {	-- Understanding The Shado-Pan (H)
						["coord"] = { 63.0, 21.2, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 64002 },	-- Sang-Bo
						["isBreadcrumb"] = true,
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_1_0 },
					}),
					q(31757, {	-- Unleashed Spirits
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58465 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30246, {	-- Upon the Ramparts
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30234, {	-- Vicejaw
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59343 },	-- Ren Firetongue
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30251, {	-- Vyraxxis, the Krik'thik Swarm-Lord
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(33134, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Warforged Seals (A)
						["repeatable"] = true,
						["provider"] = { "n", 64029 },	-- Elder Lin
						["coord"] = { 85.2, 62.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["timeline"] = { ADDED_5_4_0 },
					})),
					q(33133, applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, {	-- Warforged Seals (H)
						["repeatable"] = true,
						["provider"] = { "n", 63996 },	-- Elder Liao
						["coord"] = { 62.0, 20.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_5_4_0 },
					})),
					q(30644, {	-- What Comes to Pass
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59905 },	-- Zhi the Harmonious
						["sourceQuests"] = { 30643 },	-- The Mogu's Message
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31131, {	-- Whitepetal Lake
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["provider"] = { "n", 58408 },	-- Leven Dawnblade
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30285, {	-- Wu Kao Scouting Reports
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 59337 },	-- Sun Tenderheart
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(30227, {	-- Wulon, the Granite Sentinel
						--["coord"] = { ???, ???, VALE_OF_ETERNAL_BLOSSOMS },	-- TODO
						["provider"] = { "n", 58503 },	-- Anji Autumnlight
						["isDaily"] = true,
						["timeline"] = { ADDED_5_0_4, REMOVED_5_4_0 },
						-- #if MOP
						["OnUpdate"] = VALE_SOO_ONUPDATE;
						-- #endif
					}),
					q(31015, {	-- Your Private Collection
						["providers"] = {
							{ "n", 61962 },	-- Lorewalker Cho
							{ "n", 63577 },	-- Lorewalker Cho
						},
						["coord"] = { 83.2, 29.6, VALE_OF_ETERNAL_BLOSSOMS },
						["sourceQuests"] = {
							31367,	-- The Lorewalkers (A)
							31368,	-- The Lorewalkers (H)
						},
					}),
				}),
				n(RARES, {
					n(COMMON_BOSS_DROPS, {
						["crs"] = {
							50822,	-- Ai-Ran the Shifting Cloud
							50749,	-- Kal'tik the Blight
							50349,	-- Kang the Soul Thief
							50840,	-- Major Nanners
							50806,	-- Moldo One-Eye
							50780,	-- Sahn Tidehunter
							50359,	-- Urgolax
							50336,	-- Yorik Sharpeye
						},
						["g"] = {
							i(87636),	-- Cloak of the Forgotten Emperor
							i(87638),	-- Cloak of Tranquil Clouds
							i(87637),	-- Jade Harbinger's Cloak
							i(87640),	-- Softfoot's Drape
							i(87639),	-- Tattered Guo-Lai Dynasty Cloak
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(58778, {	-- Aetha
						["coord"] = { 35.0, 89.9, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20521, {	-- Aetha
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50822, {	-- Ai-Ran the Shifting Cloud
						["coord"] = { 42.8, 69.2, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86590),	-- Essence of the Breeze (TOY!)
						},
					}),
					n(64403, {	-- Alani
						["description"] = "Only the person who uses the Sky Crystal on Alani will get the mount, and they can sell or trade it.",
						["coords"] = {
							{ 56.2, 42.6, VALE_OF_ETERNAL_BLOSSOMS },
							{ 35.6, 26.0, VALE_OF_ETERNAL_BLOSSOMS },
							{ 38.6, 64.6, VALE_OF_ETERNAL_BLOSSOMS },
						},
						["cost"] = {
							{ "i", 86546, 1 },	-- Sky Crystal
						},
						["g"] = {
							i(90655),	-- Thundering Ruby Cloud Serpent (MOUNT!)
						},
					}),
					n(58949, {	-- Bai-Jin the Butcher
						["coord"] = { 17.0, 48.7, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20530, {	-- Bai-Jin the Butcher
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(63695, {	-- Baolai the Immolator
						["coord"] = { 28.7, 43.3, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20524, {	-- Baolai the Immolator
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(58474, {	-- Bloodtip
						["coords"] = {
							{ 75.8, 47.5, 395 },
							{ 22.4, 26.7, 395 },	-- Entrance
						},
						["g"] = {
							crit(20526, {	-- Bloodtip
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(58768, {	-- Cracklefang
						["coord"] = { 46.4, 59.3, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20517, {	-- Cracklefang
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(62881, {	-- Gaohun the Soul-Severer
						["coords"] = {
							{ 53.1, 59.3, 395 },
							{ 22.4, 26.7, 395 },	-- Entrance
						},
						["g"] = {
							crit(20525, {	-- Gaohun the Soul-Severer
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(63101, {	-- General Temuja
						["coords"] = {
							{ 26.3, 51.1, VALE_OF_ETERNAL_BLOSSOMS },
							{ 28.9, 56.3, VALE_OF_ETERNAL_BLOSSOMS },
						},
						["g"] = {
							crit(20519, {	-- General Temuja
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(62880, {	-- Gochao the Ironfist
						["coord"] = { 26.86, 13.08, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20528, {	-- Gochao the Ironfist
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(63691, {	-- Huo-Shuang
						["coords"] = {
							{ 63.92, 19.07, 395 },
							{ 63.98, 19.19, 395 },
							{ 22.43, 26.75, 395 },	-- Entrance
						},
						["g"] = {
							crit(20529, {	-- Huo-Shuang
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50749, {	-- Kal'tik the Blight
						["coord"] = { 14.0, 58.6, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(134023),	-- Bottled Tornado (TOY!)
						},
					}),
					n(50349, {	-- Kang the Soul Thief
						["coord"] = { 15.2, 35.2, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86571),	-- Kang's Bindstone (TOY!)
						},
					}),
					n(63978, {	-- Kri'chon
						["coord"] = { 6.27, 58.5, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20531, {	-- Kri'chon
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50840, {	-- Major Nanners
						["coord"] = { 30.7, 91.5, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86594),	-- Helpful Wikky's Whistle (TOY!)
						},
					}),
					n(50806, {	-- Moldo One-Eye
						["coords"] = {
							{ 39.1, 54.0, VALE_OF_ETERNAL_BLOSSOMS },
							{ 34.8, 60.7, VALE_OF_ETERNAL_BLOSSOMS },
						},
						["g"] = {
							i(86586),	-- Panflute of Pandaria (TOY!)
						},
					}),
					n(58771, {	-- Quid
						["coord"] = { 66.4, 39.3, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20522, {	-- Quid
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50780, {	-- Sahn Tidehunter
						["coord"] = { 69.4, 30.5, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86582),	-- Aqua Jewel (TOY!)
						},
					}),
					n(63240, {	-- Shadowmaster Sydow
						["coord"] = { 30.5, 78.4, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20520, {	-- Shadowmaster Sydow
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(58817, {	-- Spirit of Lao-Fe
						["coord"] = { 47.4, 65.6, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20523, {	-- Spirit of Lao-Fe
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50359, {	-- Urgolax
						["coord"] = { 39.5, 25.1, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86575),	-- Chalice of Secrets (TOY!)
						},
					}),
					n(58769, {	-- Vicejaw
						["coord"] = { 37.4, 50.9, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20518, {	-- Vicejaw
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(63977, {	-- Vyraxxis
						["coord"] = { 7.92, 33.8, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							crit(20532, {	-- Vyraxxis
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(63509, {	-- Wulon
						["coords"] = {
							{ 45.3, 76.3, VALE_OF_ETERNAL_BLOSSOMS },
							{ 40.2, 77.1, VALE_OF_ETERNAL_BLOSSOMS },
						},
						["g"] = {
							crit(20527, {	-- Wulon
								["achievementID"] = 7317,	-- One Many Army
							}),
							i(103624),	-- Treasures of the Vale
						},
					}),
					n(50336, {	-- Yorik Sharpeye
						["coord"] = { 88.0, 44.3, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(86568),	-- Mr. Smite's Brass Compass (TOY!)
						},
					}),
					--n(50843, {	-- Portent	}),
				}),
				n(REWARDS, {
					petbattle(container(94207, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Fabled Pandaren Pet Supplies
						i(94210),	-- Mountain Panda (PET!)
						i(94209),	-- Snowy Panda (PET!)
						i(94208),	-- Sunfur Panda (PET!)
						i(89139),	-- Chain Pet Leash
						i(44820),	-- Red Ribbon Pet Leash
						i(37460),	-- Rope Pet Leash
						i(92679),	-- Flawless Aquatic Battle-Stone
						i(92675),	-- Flawless Beast Battle-Stone
						i(92676),	-- Flawless Critter Battle-Stone
						i(92665),	-- Flawless Elemental Battle-Stone
						i(92677),	-- Flawless Flying Battle-Stone
						i(92682),	-- Flawless Humanoid Battle-Stone
						i(92678),	-- Flawless Magic Battle-Stone
						i(92680),	-- Flawless Mechanical Battle-Stone
						i(92681),	-- Flawless Undead Battle-Stone
					}))),
				}),
				n(TREASURES, {
					o(213414, {	-- Always Remember
						["coords"] = {
							{ 53.0, 68.3, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER BFA
							{ 53.0, 68.3, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
							-- #endif
						},
					}),
					o(213456, {	-- The Emperor's Burden - Part 8
						-- #if AFTER BFA
						["description"] = "This can only be found in the non-N'zoth phase. Speak to Zidormi atop the Seat of Knowledge to travel to the past.",
						-- #endif
						["coord"] = { 67.7, 44.2, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					o(213334, {	-- The Thunder King
						["coords"] = {
							{ 40.1, 75.6, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER BFA
							{ 40.1, 75.6, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
							-- #endif
						},
					}),
					o(213416, {	-- Together, We Are Strong
						["coords"] = {
							{ 26.6, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
							-- #if AFTER BFA
							{ 26.6, 20.8, NZOTH_ASSAULT_VALE_OF_ETERNAL_BLOSSOMS },	-- BFA alternate zone
							-- #endif
						},
					}),
				}),
				n(VENDORS, {
					n(61650, {	-- Big Keech <Rare Antiquities>
						["coord"] = { 62.6, 41.8, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(44500, {	-- Elementium-Plated Exhaust Pipe
								["cost"] = 15000000,	-- 1500g
							}),
							i(44501, {	-- Goblin-Machined Piston
								["cost"] = 10000000,	-- 1000g
							}),
							i(83092, {	-- Orb of Mystery
								["cost"] = 200000000,	-- 20000g
							}),
							i(44499, {	-- Salvaged Iron Golem Parts
								["cost"] = 30000000,	-- 3000g
							}),
							i(65893, {	-- Sands of Time
								["cost"] = 30000000,	-- 3000g
							}),
						},
					}),
					n(64922, {	-- Brann Bronzebeard <Archaeology Trainer>
						["coord"] = { 83.4, 30.9, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(104198, {	-- Mantid Artifact Hunter's Kit
								["cost"] = { { "i", 87399, 2 }, },	-- 2x Restored Artifact
							}),
						},
					}),
					n(64028, {	-- Challenger Soong <Challenge Dungeons>
						["description"] = "You can only buy items from this vendor if you have the Challenge Conquerer: Gold Feat of Strength on your toon.  You can only buy the set for your class.",
						["coord"] = { 86.3, 61.5, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["g"] = {
							un(REMOVED_FROM_GAME, i(90049)),	-- Girdle of the Lich Lord
							un(REMOVED_FROM_GAME, i(90050)),	-- Treads of the Lich Lord
							un(REMOVED_FROM_GAME, i(90051)),	-- Chestguard of the Lich Lord
							un(REMOVED_FROM_GAME, i(90052)),	-- Grasps of the Lich Lord
							un(REMOVED_FROM_GAME, i(90053)),	-- Crown of the Lich Lord
							un(REMOVED_FROM_GAME, i(90054)),	-- Legplates of the Lich Lord
							un(REMOVED_FROM_GAME, i(90055)),	-- Shoulderplates of the Lich Lord
							un(REMOVED_FROM_GAME, i(90056)),	-- Bracers of the Lich Lord
							un(REMOVED_FROM_GAME, i(90059)),	-- Waistguard of the Cycle
							un(REMOVED_FROM_GAME, i(90060)),	-- Sandals of the Cycle
							un(REMOVED_FROM_GAME, i(90061)),	-- Gloves of the Cycle
							un(REMOVED_FROM_GAME, i(90062)),	-- Hood of the Cycle
							un(REMOVED_FROM_GAME, i(90063)),	-- Leggings of the Cycle
							un(REMOVED_FROM_GAME, i(90064)),	-- Robes of the Cycle
							un(REMOVED_FROM_GAME, i(90065)),	-- Branches of the Cycle
							un(REMOVED_FROM_GAME, i(90066)),	-- Bracers of the Cycle
							un(REMOVED_FROM_GAME, i(90068)),	-- Cinch of the Howling Beast
							un(REMOVED_FROM_GAME, i(90069)),	-- Boots of the Howling Beast
							un(REMOVED_FROM_GAME, i(90070)),	-- Chestguard of the Howling Beast
							un(REMOVED_FROM_GAME, i(90071)),	-- Grips of the Howling Beast
							un(REMOVED_FROM_GAME, i(90072)),	-- Helm of the Howling Beast
							un(REMOVED_FROM_GAME, i(90073)),	-- Legguards of the Howling Beast
							un(REMOVED_FROM_GAME, i(90074)),	-- Shoulderguards of the Howling Beast
							un(REMOVED_FROM_GAME, i(90075)),	-- Wristwraps of the Howling Beast
							un(REMOVED_FROM_GAME, i(90079)),	-- Girdle of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90080)),	-- Boots of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90081)),	-- Gloves of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90082)),	-- Hood of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90083)),	-- Leggings of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90084)),	-- Robes of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90085)),	-- Spaulders of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90086)),	-- Bracers of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90088)),	-- Greatbelt of the Regal Lord
							un(REMOVED_FROM_GAME, i(90089)),	-- Treads of the Regal Lord
							un(REMOVED_FROM_GAME, i(90090)),	-- Chestwrap of the Regal Lord
							un(REMOVED_FROM_GAME, i(90091)),	-- Handwraps of the Regal Lord
							un(REMOVED_FROM_GAME, i(90092)),	-- Crown of the Regal Lord
							un(REMOVED_FROM_GAME, i(90093)),	-- Legwraps of the Regal Lord
							un(REMOVED_FROM_GAME, i(90094)),	-- Shoulderguards of the Regal Lord
							un(REMOVED_FROM_GAME, i(90095)),	-- Bracers of the Regal Lord
							un(REMOVED_FROM_GAME, i(90096)),	-- Girdle of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90097)),	-- Greatboots of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90098)),	-- Chestplate of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90099)),	-- Gauntlets of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90100)),	-- Greathelm of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90101)),	-- Legplates of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90102)),	-- Shoulderplate of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90103)),	-- Wristguards of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90110)),	-- Cord of the Light
							un(REMOVED_FROM_GAME, i(90111)),	-- Steps of the Light
							un(REMOVED_FROM_GAME, i(90112)),	-- Bracers of the Light
							un(REMOVED_FROM_GAME, i(90113)),	-- Pauldrons of the Light
							un(REMOVED_FROM_GAME, i(90114)),	-- Robes of the Light
							un(REMOVED_FROM_GAME, i(90115)),	-- Hands of the Light
							un(REMOVED_FROM_GAME, i(90116)),	-- Cowl of the Light
							un(REMOVED_FROM_GAME, i(90117)),	-- Leggings of the Light
							un(REMOVED_FROM_GAME, i(90119)),	-- Girdle of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90120)),	-- Hood of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90121)),	-- Tabi of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90122)),	-- Shadowwrap of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90123)),	-- Gloves of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90124)),	-- Leggings of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90125)),	-- Spaulders of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90126)),	-- Bracers of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90127)),	-- Windfury Bracers
							un(REMOVED_FROM_GAME, i(90128)),	-- Windfury Belt
							un(REMOVED_FROM_GAME, i(90129)),	-- Windfury Sandals
							un(REMOVED_FROM_GAME, i(90130)),	-- Windfury Harness
							un(REMOVED_FROM_GAME, i(90131)),	-- Windfury Crushers
							un(REMOVED_FROM_GAME, i(90132)),	-- Windfury Mask
							un(REMOVED_FROM_GAME, i(90133)),	-- Windfury Legguards
							un(REMOVED_FROM_GAME, i(90134)),	-- Windfury Spirit Guides
							un(REMOVED_FROM_GAME, i(90136)),	-- Belt of the Betrayer
							un(REMOVED_FROM_GAME, i(90137)),	-- Boots of the Betrayer
							un(REMOVED_FROM_GAME, i(90138)),	-- Amice of the Betrayer
							un(REMOVED_FROM_GAME, i(90139)),	-- Bracers of the Betrayer
							un(REMOVED_FROM_GAME, i(90140)),	-- Robes of the Betrayer
							un(REMOVED_FROM_GAME, i(90141)),	-- Handguards of the Betrayer
							un(REMOVED_FROM_GAME, i(90142)),	-- Horns of the Betrayer
							un(REMOVED_FROM_GAME, i(90143)),	-- Leggings of the Betrayer
							un(REMOVED_FROM_GAME, i(90147)),	-- Girdle of the Golden King
							un(REMOVED_FROM_GAME, i(90148)),	-- Greatboots of the Golden King
							un(REMOVED_FROM_GAME, i(90149)),	-- Chestplate of the Golden King
							un(REMOVED_FROM_GAME, i(90150)),	-- Reach of the Golden King
							un(REMOVED_FROM_GAME, i(90151)),	-- Crown of the Golden King
							un(REMOVED_FROM_GAME, i(90152)),	-- Greaves of the Golden King
							un(REMOVED_FROM_GAME, i(90153)),	-- Mantle of the Golden King
							un(REMOVED_FROM_GAME, i(90154)),	-- Bracers of the Golden King
						},
					}),
					n(63994, {	-- Challenger Wuli <Challenge Dungeons>
						["description"] = "You can only buy items from this vendor if you have the Challenge Conquerer: Gold Feat of Strength on your toon.  You can only buy the set for your class.",
						["coord"] = { 61.2, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["g"] = {
							un(REMOVED_FROM_GAME, i(90049)),	-- Girdle of the Lich Lord
							un(REMOVED_FROM_GAME, i(90050)),	-- Treads of the Lich Lord
							un(REMOVED_FROM_GAME, i(90051)),	-- Chestguard of the Lich Lord
							un(REMOVED_FROM_GAME, i(90052)),	-- Grasps of the Lich Lord
							un(REMOVED_FROM_GAME, i(90053)),	-- Crown of the Lich Lord
							un(REMOVED_FROM_GAME, i(90054)),	-- Legplates of the Lich Lord
							un(REMOVED_FROM_GAME, i(90055)),	-- Shoulderplates of the Lich Lord
							un(REMOVED_FROM_GAME, i(90056)),	-- Bracers of the Lich Lord
							un(REMOVED_FROM_GAME, i(90059)),	-- Waistguard of the Cycle
							un(REMOVED_FROM_GAME, i(90060)),	-- Sandals of the Cycle
							un(REMOVED_FROM_GAME, i(90061)),	-- Gloves of the Cycle
							un(REMOVED_FROM_GAME, i(90062)),	-- Hood of the Cycle
							un(REMOVED_FROM_GAME, i(90063)),	-- Leggings of the Cycle
							un(REMOVED_FROM_GAME, i(90064)),	-- Robes of the Cycle
							un(REMOVED_FROM_GAME, i(90065)),	-- Branches of the Cycle
							un(REMOVED_FROM_GAME, i(90066)),	-- Bracers of the Cycle
							un(REMOVED_FROM_GAME, i(90068)),	-- Cinch of the Howling Beast
							un(REMOVED_FROM_GAME, i(90069)),	-- Boots of the Howling Beast
							un(REMOVED_FROM_GAME, i(90070)),	-- Chestguard of the Howling Beast
							un(REMOVED_FROM_GAME, i(90071)),	-- Grips of the Howling Beast
							un(REMOVED_FROM_GAME, i(90072)),	-- Helm of the Howling Beast
							un(REMOVED_FROM_GAME, i(90073)),	-- Legguards of the Howling Beast
							un(REMOVED_FROM_GAME, i(90074)),	-- Shoulderguards of the Howling Beast
							un(REMOVED_FROM_GAME, i(90075)),	-- Wristwraps of the Howling Beast
							un(REMOVED_FROM_GAME, i(90079)),	-- Girdle of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90080)),	-- Boots of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90081)),	-- Gloves of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90082)),	-- Hood of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90083)),	-- Leggings of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90084)),	-- Robes of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90085)),	-- Spaulders of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90086)),	-- Bracers of the Elemental Triad
							un(REMOVED_FROM_GAME, i(90088)),	-- Greatbelt of the Regal Lord
							un(REMOVED_FROM_GAME, i(90089)),	-- Treads of the Regal Lord
							un(REMOVED_FROM_GAME, i(90090)),	-- Chestwrap of the Regal Lord
							un(REMOVED_FROM_GAME, i(90091)),	-- Handwraps of the Regal Lord
							un(REMOVED_FROM_GAME, i(90092)),	-- Crown of the Regal Lord
							un(REMOVED_FROM_GAME, i(90093)),	-- Legwraps of the Regal Lord
							un(REMOVED_FROM_GAME, i(90094)),	-- Shoulderguards of the Regal Lord
							un(REMOVED_FROM_GAME, i(90095)),	-- Bracers of the Regal Lord
							un(REMOVED_FROM_GAME, i(90096)),	-- Girdle of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90097)),	-- Greatboots of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90098)),	-- Chestplate of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90099)),	-- Gauntlets of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90100)),	-- Greathelm of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90101)),	-- Legplates of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90102)),	-- Shoulderplate of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90103)),	-- Wristguards of the Holy Warrior
							un(REMOVED_FROM_GAME, i(90110)),	-- Cord of the Light
							un(REMOVED_FROM_GAME, i(90111)),	-- Steps of the Light
							un(REMOVED_FROM_GAME, i(90112)),	-- Bracers of the Light
							un(REMOVED_FROM_GAME, i(90113)),	-- Pauldrons of the Light
							un(REMOVED_FROM_GAME, i(90114)),	-- Robes of the Light
							un(REMOVED_FROM_GAME, i(90115)),	-- Hands of the Light
							un(REMOVED_FROM_GAME, i(90116)),	-- Cowl of the Light
							un(REMOVED_FROM_GAME, i(90117)),	-- Leggings of the Light
							un(REMOVED_FROM_GAME, i(90119)),	-- Girdle of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90120)),	-- Hood of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90121)),	-- Tabi of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90122)),	-- Shadowwrap of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90123)),	-- Gloves of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90124)),	-- Leggings of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90125)),	-- Spaulders of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90126)),	-- Bracers of the Silent Assassin
							un(REMOVED_FROM_GAME, i(90127)),	-- Windfury Bracers
							un(REMOVED_FROM_GAME, i(90128)),	-- Windfury Belt
							un(REMOVED_FROM_GAME, i(90129)),	-- Windfury Sandals
							un(REMOVED_FROM_GAME, i(90130)),	-- Windfury Harness
							un(REMOVED_FROM_GAME, i(90131)),	-- Windfury Crushers
							un(REMOVED_FROM_GAME, i(90132)),	-- Windfury Mask
							un(REMOVED_FROM_GAME, i(90133)),	-- Windfury Legguards
							un(REMOVED_FROM_GAME, i(90134)),	-- Windfury Spirit Guides
							un(REMOVED_FROM_GAME, i(90136)),	-- Belt of the Betrayer
							un(REMOVED_FROM_GAME, i(90137)),	-- Boots of the Betrayer
							un(REMOVED_FROM_GAME, i(90138)),	-- Amice of the Betrayer
							un(REMOVED_FROM_GAME, i(90139)),	-- Bracers of the Betrayer
							un(REMOVED_FROM_GAME, i(90140)),	-- Robes of the Betrayer
							un(REMOVED_FROM_GAME, i(90141)),	-- Handguards of the Betrayer
							un(REMOVED_FROM_GAME, i(90142)),	-- Horns of the Betrayer
							un(REMOVED_FROM_GAME, i(90143)),	-- Leggings of the Betrayer
							un(REMOVED_FROM_GAME, i(90147)),	-- Girdle of the Golden King
							un(REMOVED_FROM_GAME, i(90148)),	-- Greatboots of the Golden King
							un(REMOVED_FROM_GAME, i(90149)),	-- Chestplate of the Golden King
							un(REMOVED_FROM_GAME, i(90150)),	-- Reach of the Golden King
							un(REMOVED_FROM_GAME, i(90151)),	-- Crown of the Golden King
							un(REMOVED_FROM_GAME, i(90152)),	-- Greaves of the Golden King
							un(REMOVED_FROM_GAME, i(90153)),	-- Mantle of the Golden King
							un(REMOVED_FROM_GAME, i(90154)),	-- Bracers of the Golden King
						},
					}),
					n(59908, {	-- Jaluu the Generous <The Golden Lotus Quartermaster>
						["coords"] = {
							{ 84.2, 62.7, VALE_OF_ETERNAL_BLOSSOMS },	-- Alliance
							{ 63.2, 22.0, VALE_OF_ETERNAL_BLOSSOMS },	-- Horde
						},
						["g"] = bubbleDownClassicRep(FACTION_GOLDEN_LOTUS, {
							{		-- Neutral
								i(89071),	-- Alani's Inflexible Ring
								i(89527),	-- Amulet of Swirling Mists
								i(89070),	-- Anji's Keepsake
								i(89423),	-- Battleguard of Guo-Lai
								i(89642),	-- Bracers of Eternal Resolve
								i(89648),	-- Bracers of Inner Light
								i(89430),	-- Breastplate of the Golden Pagoda
								i(89421),	-- Cuirass of the Twin Monoliths
								i(89420),	-- Dawnblade's Chestguard
								i(89531),	-- Gorget of Usurped Kings
								i(89341),	-- Imperion Spaulders
								i(89663),	-- Leggings of Twisted Vines
								i(89073),	-- Leven's Circle of Hope
								i(89340),	-- Mantle of the Golden Sun
								i(89343),	-- Mindbender Shoulders
								i(89432, {	-- Mistfall Robes
									["cost"] = 5019100,	-- 501g 91s
								}),
								i(89232),	-- Mogu Rune of Paralysis
								i(89528),	-- Necklace of Jade Pearls
								i(89347),	-- Paleblade Shoulderguards
								i(89529),	-- Pendant of Endless Inquisition
								i(89069),	-- Ring of the Golden Stair
								i(89434),	-- Robe of the Five Sisters
								i(89429),	-- Robes of the Setting Sun
								i(89649),	-- Serrated Forearm Guards
								i(89346),	-- Shoulders of Autumnlight
								i(89072),	-- Simple Harmonious Ring
								i(89662),	-- Snowpack Waders
								i(89431, {	-- Softfoot Silentwrap
									["cost"] = 5001400,	-- 500g 14s
								}),
								i(89345),	-- Stonetoe Spaulders
								i(89653),	-- Surehand Grips
								i(89339),	-- Tenderheart Shoulders
								i(89643),	-- Tranquility Bindings
								i(89530),	-- Triumphant Conqueror's Chain
								i(89433),	-- Vestments of Thundering Skies
								i(89652),	-- Wandering Friar's Gloves
								i(89342),	-- Whitepetal Shouldergarb
								i(89344),	-- Windwalker Spaulders
							}, {	-- Friendly
							}, {	-- Honored
								i(86235),	-- Pattern: Angerhide Leg Armor (RECIPE!)
								i(86237),	-- Pattern: Chestguard of Earthen Harmony (RECIPE!)
								i(86371),	-- Pattern: Gloves of Creation (RECIPE!)
								i(86273),	-- Pattern: Gloves of Earthen Harmony (RECIPE!)
								i(86376),	-- Pattern: Greater Cerulean Spellthread (RECIPE!)
								i(86375),	-- Pattern: Greater Pearlescent Spellthread (RECIPE!)
								i(86274),	-- Pattern: Greyshadow Chestguard (RECIPE!)
								i(86275),	-- Pattern: Greyshadow Gloves (RECIPE!)
								i(86276),	-- Pattern: Ironscale Leg Armor (RECIPE!)
								i(86277),	-- Pattern: Lifekeeper's Gloves (RECIPE!)
								i(86278),	-- Pattern: Lifekeeper's Robe (RECIPE!)
								i(86370),	-- Pattern: Robes of Creation (RECIPE!)
								i(86295),	-- Pattern: Shadowleather Leg Armor (RECIPE!)
								i(86369),	-- Pattern: Spelltwister's Gloves (RECIPE!)
								i(86368),	-- Pattern: Spelltwister's Grand Robe (RECIPE!)
								i(86308),	-- Pattern: Wildblood Gloves (RECIPE!)
								i(86309),	-- Pattern: Wildblood Vest (RECIPE!)
							}, {	-- Revered
								i(93215),	-- Grand Commendation of the Golden Lotus
							}, {	-- Exalted
								i(89797),	-- Golden Lotus Tabard
								i(87781, {	-- Reins of the Azure Riding Crane (MOUNT!)
									["cost"] = 5000000,	-- 500g
								}),
								i(87782, {	-- Reins of the Golden Riding Crane (MOUNT!)
									["cost"] = 25000000,	-- 2,500g
								}),
								i(87783, {	-- Reins of the Regal Riding Crane (MOUNT!)
									["cost"] = 15000000,	-- 1,500g
								}),
							},
						}),
					}),
					n(66973, {	-- Kai Featherfall <Phoenix Egg Trader>
						["coord"] = { 82.2, 34.0, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = sharedData({
							["cost"] = {{"i", 90045, 1 }},	-- 1x Ancestral Phoenix Egg
							["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
						}, {
							i(89154),	-- Crimson Pandaren Phoenix (MOUNT!)
							i(90710),	-- Ashen Pandaren Phoenix (MOUNT!)
							i(90711),	-- Emerald Pandaren Phoenix (MOUNT!)
							i(90712),	-- Violet Pandaren Phoenix (MOUNT!)
						}),
					}),
					n(65172, {	-- Len at Arms <Adventuring Supplies>
						["coord"] = { 14.1, 78.8, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(83234),	-- Wasteland Amulet
							i(83229),	-- Wasteland Armored Bracers
							i(83184),	-- Wasteland Armored Chestpiece
							i(83220),	-- Wasteland Armored Gauntlets
							i(83211),	-- Wasteland Armored Girdle
							i(83166),	-- Wasteland Armored Helm
							i(83193),	-- Wasteland Armored Legguards
							i(83175),	-- Wasteland Armored Shoulders
							i(83202),	-- Wasteland Armored Warboots
							i(83275),	-- Wasteland Axe
							i(83249),	-- Wasteland Badge
							i(83235),	-- Wasteland Band
							i(83272),	-- Wasteland Barrier
							i(83263),	-- Wasteland Battlemace
							i(83274),	-- Wasteland Blade
							i(83224),	-- Wasteland Burnished Bracers
							i(83179),	-- Wasteland Burnished Chestguard
							i(83206),	-- Wasteland Burnished Clasp
							i(83215),	-- Wasteland Burnished Gloves
							i(83197),	-- Wasteland Burnished Greaves
							i(83161),	-- Wasteland Burnished Headcover
							i(83188),	-- Wasteland Burnished Legplates
							i(83170),	-- Wasteland Burnished Spaulders
							i(83257),	-- Wasteland Cape
							i(83182),	-- Wasteland Chain Armor
							i(83218),	-- Wasteland Chain Gauntlets
							i(83164),	-- Wasteland Chain Helm
							i(83191),	-- Wasteland Chain Leggings
							i(83209),	-- Wasteland Chain Links
							i(83200),	-- Wasteland Chain Sabatons
							i(83173),	-- Wasteland Chain Spaulders
							i(83227),	-- Wasteland Chain Wristguards
							i(83231),	-- Wasteland Choker
							i(83259),	-- Wasteland Cloak
							i(83262),	-- Wasteland Combat Staff
							i(83265),	-- Wasteland Crossbow
							i(83268),	-- Wasteland Dagger
							i(83261),	-- Wasteland Diviner's Rod
							i(83256),	-- Wasteland Drape
							i(83247),	-- Wasteland Emblem
							i(83270),	-- Wasteland Greatsword
							i(83264),	-- Wasteland Handaxe
							i(83228),	-- Wasteland Heavy Armplates
							i(83183),	-- Wasteland Heavy Chestpiece
							i(83219),	-- Wasteland Heavy Gauntlets
							i(83210),	-- Wasteland Heavy Girdle
							i(83165),	-- Wasteland Heavy Helm
							i(83192),	-- Wasteland Heavy Legguards
							i(83174),	-- Wasteland Heavy Shoulders
							i(83201),	-- Wasteland Heavy Warboots
							i(83204),	-- Wasteland Hide Belt
							i(83222),	-- Wasteland Hide Bindings
							i(83195),	-- Wasteland Hide Footguards
							i(83213),	-- Wasteland Hide Gloves
							i(83159),	-- Wasteland Hide Helm
							i(83186),	-- Wasteland Hide Legguards
							i(83168),	-- Wasteland Hide Spaulders
							i(83177),	-- Wasteland Hide Tunic
							i(83248),	-- Wasteland Insignia
							i(83226),	-- Wasteland Leather Armwraps
							i(83208),	-- Wasteland Leather Belt
							i(83199),	-- Wasteland Leather Boots
							i(83217),	-- Wasteland Leather Gloves
							i(83163),	-- Wasteland Leather Helm
							i(83190),	-- Wasteland Leather Legguards
							i(83172),	-- Wasteland Leather Spaulders
							i(83181),	-- Wasteland Leather Tunic
							i(83230),	-- Wasteland Locket
							i(83237),	-- Wasteland Loop
							i(83271),	-- Wasteland Mace
							i(83258),	-- Wasteland Manteau
							i(83260),	-- Wasteland Meditation Staff
							i(83232),	-- Wasteland Necklace
							i(83233),	-- Wasteland Pendant
							i(83245),	-- Wasteland Relic
							i(83236),	-- Wasteland Ring
							i(83223),	-- Wasteland Ringmail Armbands
							i(83178),	-- Wasteland Ringmail Armor
							i(83214),	-- Wasteland Ringmail Gauntlets
							i(83160),	-- Wasteland Ringmail Helm
							i(83187),	-- Wasteland Ringmail Leggings
							i(83196),	-- Wasteland Ringmail Sabatons
							i(83169),	-- Wasteland Ringmail Spaulders
							i(83205),	-- Wasteland Ringmail Waistguard
							i(83266),	-- Wasteland Saber
							i(83203),	-- Wasteland Satin Cord
							i(83221),	-- Wasteland Satin Cuffs
							i(83212),	-- Wasteland Satin Gloves
							i(83158),	-- Wasteland Satin Hood
							i(83185),	-- Wasteland Satin Leggings
							i(83167),	-- Wasteland Satin Mantle
							i(83176),	-- Wasteland Satin Robe
							i(83194),	-- Wasteland Satin Treads
							i(83267),	-- Wasteland Scepter
							i(83239),	-- Wasteland Seal
							i(83255),	-- Wasteland Shawl
							i(83273),	-- Wasteland Shield
							i(83246),	-- Wasteland Sigil
							i(83238),	-- Wasteland Signet
							i(83171),	-- Wasteland Silk Amice
							i(83207),	-- Wasteland Silk Cord
							i(83162),	-- Wasteland Silk Cowl
							i(83225),	-- Wasteland Silk Cuffs
							i(83216),	-- Wasteland Silk Handguards
							i(83180),	-- Wasteland Silk Robe
							i(83198),	-- Wasteland Silk Treads
							i(83189),	-- Wasteland Silk Trousers
							i(83269),	-- Wasteland Smasher
						},
					}),
					n(64691, {	-- Lorewalker Huynh <Inscription Trainer>
						["coord"] = { 82.0, 29.3, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = {
							i(137788, {	-- Technique: Songs of Peace (RECIPE!)
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(64001, {	-- Sage Lotusbloom <The August Celestials Quartermaster>
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["g"] = bubbleDownClassicRep(FACTION_THE_AUGUST_CELESTIALS, {
							{		-- Neutral
								i(88880),	-- Battle Shadow Bracers
								i(89532),	-- Bladesong Cloak
								i(88876),	-- Boots of the High Adept
								i(88892),	-- Bracers of Inlaid Jade
								i(88879),	-- Braided Black and White Bracer
								i(88865),	-- Bramblestaff Boots
								i(88883),	-- Brewmaster Chani's Bracers
								i(88885),	-- Clever Ashyo's Armbands
								i(89533),	-- Cloak of Ancient Curses
								i(89537),	-- Cloak of the Silent Mountain
								i(88881),	-- Fallen Sentinel Bracers
								i(88744),	-- Fingers of the Loneliest Monk
								i(88749),	-- Gauntlets of Jade Sutras
								i(88741),	-- Gloves of Red Feathers
								i(88746),	-- Gloves of the Overwhelming Swarm
								i(89665),	-- Leggings of Ponderous Advance
								i(89659),	-- Leggings of Unfinished Conquest
								i(88893),	-- Minh's Beaten Bracers
								i(89668),	-- Mountain Stream Ringmail
								i(88743),	-- Ogo's Elder Gloves
								i(89534),	-- Pressed Flower Cloak
								i(88884),	-- Quillpaw Family Bracers
								i(88748),	-- Ravenmane's Gloves
								i(89667),	-- Refurbished Zandalari Vestment
								i(89535),	-- Ribcracker's Cloak
								i(88867),	-- Sandals of the Elder Sage
								i(88745),	-- Sentinel Commander's Gauntlets
								i(88866),	-- Steps of the War Serpent
								i(88877),	-- Storm-Sing Sandals
								i(88747),	-- Streetfighter's Iron Knuckles
								i(89658),	-- Subversive Leggings
								i(88742),	-- Sunspeaker's Flared Gloves
								i(88862),	-- Tankiss Warstompers
								i(88882),	-- Tiger-Striped Wristguards
								i(88868),	-- Tukka-Tuk's Hairy Boots
								i(89669),	-- Undergrowth Stalker Chestpiece
								i(89664),	-- Valiant's Shinguards
								i(89666),	-- Vestment of the Ascendant Tribe
								i(88878),	-- Void Flame Slippers
								i(88864),	-- Yu'lon Guardian Boots
							}, {	-- Friendly
							}, {	-- Honored
								i(89124),	-- Celestial Offering
							}, {	-- Revered
								i(84561),	-- Formula: Enchant Bracer - Exceptional Strength (RECIPE!)
								i(84557),	-- Formula: Enchant Bracer - Greater Agility (RECIPE!)
								i(84559),	-- Formula: Enchant Bracer - Super Intellect (RECIPE!)
								i(93224),	-- Grand Commendation of the August Celestials
							}, {	-- Exalted
								i(89799),	-- August Celestials Tabard
								i(86377),	-- Pattern: Royal Satchel (RECIPE!)
								i(89304, {	-- Reins of the Thundering August Cloud Serpent (MOUNT!)
									["cost"] = 100000000,	-- 10,000g
								}),
							},
						}),
					}),
					n(64032, {	-- Sage Whiteheart <The August Celestials Quartermaster>
						["coord"] = { 84.6, 63.8, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["g"] = bubbleDownClassicRep(FACTION_THE_AUGUST_CELESTIALS, {
							{		-- Neutral
								i(88880),	-- Battle Shadow Bracers
								i(89532),	-- Bladesong Cloak
								i(88876),	-- Boots of the High Adept
								i(88892),	-- Bracers of Inlaid Jade
								i(88879),	-- Braided Black and White Bracer
								i(88865),	-- Bramblestaff Boots
								i(88883),	-- Brewmaster Chani's Bracers
								i(88885),	-- Clever Ashyo's Armbands
								i(89533),	-- Cloak of Ancient Curses
								i(89537),	-- Cloak of the Silent Mountain
								i(88881),	-- Fallen Sentinel Bracers
								i(88744),	-- Fingers of the Loneliest Monk
								i(88749),	-- Gauntlets of Jade Sutras
								i(88741),	-- Gloves of Red Feathers
								i(88746),	-- Gloves of the Overwhelming Swarm
								i(89665),	-- Leggings of Ponderous Advance
								i(89659),	-- Leggings of Unfinished Conquest
								i(88893),	-- Minh's Beaten Bracers
								i(89668),	-- Mountain Stream Ringmail
								i(88743),	-- Ogo's Elder Gloves
								i(89534),	-- Pressed Flower Cloak
								i(88884),	-- Quillpaw Family Bracers
								i(88748),	-- Ravenmane's Gloves
								i(89667),	-- Refurbished Zandalari Vestment
								i(89535),	-- Ribcracker's Cloak
								i(88867),	-- Sandals of the Elder Sage
								i(88745),	-- Sentinel Commander's Gauntlets
								i(88866),	-- Steps of the War Serpent
								i(88877),	-- Storm-Sing Sandals
								i(88747),	-- Streetfighter's Iron Knuckles
								i(89658),	-- Subversive Leggings
								i(88742),	-- Sunspeaker's Flared Gloves
								i(88862),	-- Tankiss Warstompers
								i(88882),	-- Tiger-Striped Wristguards
								i(88868),	-- Tukka-Tuk's Hairy Boots
								i(89669),	-- Undergrowth Stalker Chestpiece
								i(89664),	-- Valiant's Shinguards
								i(89666),	-- Vestment of the Ascendant Tribe
								i(88878),	-- Void Flame Slippers
								i(88864),	-- Yu'lon Guardian Boots
							}, {	-- Friendly
							}, {	-- Honored
								i(89124),	-- Celestial Offering
							}, {	-- Revered
								i(84561),	-- Formula: Enchant Bracer - Exceptional Strength (RECIPE!)
								i(84557),	-- Formula: Enchant Bracer - Greater Agility (RECIPE!)
								i(84559),	-- Formula: Enchant Bracer - Super Intellect (RECIPE!)
								i(93224),	-- Grand Commendation of the August Celestials
							}, {	-- Exalted
								i(89799),	-- August Celestials Tabard
								i(86377),	-- Pattern: Royal Satchel (RECIPE!)
								i(89304, {	-- Reins of the Thundering August Cloud Serpent (MOUNT!)
									["cost"] = 100000000,	-- 10,000g
								}),
							},
						}),
					}),
					n(64605, {	-- Tan Shin Tiao <Lorewalkers Quartermaster>
						["coord"] = { 82.2, 29.4, VALE_OF_ETERNAL_BLOSSOMS },
						["g"] = bubbleDownClassicRep(FACTION_THE_LOREWALKERS, {
							{		-- Neutral
							}, {	-- Friendly
							}, {	-- Honored
							}, {	-- Revered
								i(93230),	-- Grand Commendation of the Lorewalkers
								i(122221, {	-- Music Roll: Song of Liu Lang
									["timeline"] = { ADDED_6_1_0 },
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
				n(ZONE_DROPS, {
					i(87779, {	-- Ancient Guo-Lai Cache Key
						["description"] = "Use these keys to unlock Ancient Guo Lai Cache chests in the Vault.",
						["g"] = appendGroups({
								i(90470),	-- Design: Jade Owl
								i(90471),	-- Design: Sapphire Cub
								i(90815),	-- Relic of Guo-Lai
								i(90816),	-- Relic of the Thunder King
								i(79731),	-- Scroll of Wisdom
							},
							applyclassicphase(MOP_PHASE_SIEGE_OF_ORGRIMMAR, sharedData({ ["timeline"] = { ADDED_5_4_0 } }, {
								i(102541),	-- Aged Balsamic Vinegar
								i(102543),	-- Aged Mogu'shan Cheese
								i(102542),	-- Ancient Pandaren Spices
								i(101768),	-- Recipe: Farmer's Delight (RECIPE!)
								i(101770), 	-- Recipe: Fluffy Silkfeather Omelet (RECIPE!)
								i(101767), 	-- Recipe: Mango Ice (RECIPE!)
								i(101765), 	-- Recipe: Seasoned Pomfruit Slices (RECIPE!)
								i(101766), 	-- Recipe: Spiced Blossom Soup (RECIPE!)
								i(101769), 	-- Recipe: Stuffed Lushrooms (RECIPE!)
								i(103624),	-- Treasures of the Vale
								i(76061, {	-- Spirit of Harmony
									["cost"] = { { "i", 89112, 10 } },	-- 10x Mote of Harmony (adding as this is the only Sourced entry for the Spirit of Harmony currently)
								}),
							}))
						),
					}),
					i(85582, {	-- Shao-Tien Cage Key
						["crs"] = {
							63641,	-- Shao-Tien Torturer
							63610,	-- Shao-Tien Dominator
							63611,	-- Shao-Tien Soul-Caller
						},
					}),
					i(86547),	-- Skyshard
					i(86546, {	-- Sky Crystal
						["cost"] = { { "i", 86547, 10 } },	-- Skyshard
					}),
				}),
			},
		}),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(VALE_OF_ETERNAL_BLOSSOMS, {
			n(FACTIONS, {
				header(HEADERS.Faction, FACTION_GOLDEN_LOTUS, {
					n(QUESTS, {
						q(31652),	-- Roll Club: Serpent's Spine Tracking Quest
					}),
				}),
			}),
		}),
	}),
})));
