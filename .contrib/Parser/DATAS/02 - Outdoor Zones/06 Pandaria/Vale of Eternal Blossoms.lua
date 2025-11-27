---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if MOP
local VALE_TOT_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_RISE_OF_THE_THUNDER_KING .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
		t.description = "This will be removed when the Rise of the Thunder King phase begins."
	end
end]];
local VALE_SOO_ONUPDATE = [[function(t)
	if _.Settings:GetUnobtainableFilter(]] .. MOP_PHASE_SIEGE_OF_ORGRIMMAR .. [[) then
		t.u = ]] .. REMOVED_FROM_GAME .. [[;
	else
		t.u = ]] .. MOP_PHASE_ONE .. [[;
		t.description = "This will be removed when the Siege of Orgrimmar phase begins."
	end
end]];
-- Wouter NOTE: hacky way to force collect other Challenge Mode mounts after getting one; they're character specific and you can only get 1 achievement per character
local PHOENIX_MOUNT_ONUPDATE = [[function(t)
	if 	IsPlayerSpell(132117) and not (t.itemID == 90710) or
		IsPlayerSpell(128552) and not (t.itemID == 89154) or
		IsPlayerSpell(132118) and not (t.itemID == 90711) or
		IsPlayerSpell(132119) and not (t.itemID == 90712) then
		t.collectible = false;
	end
end]];
-- #endif

local function RemovedWithSOO(t)
	t.timeline = { ADDED_5_0_4, REMOVED_5_4_0 };
	-- #if MOP
	t.OnUpdate = VALE_SOO_ONUPDATE;
	-- #endif
	if t.groups then
		for i,o in ipairs(t.groups) do
			RemovedWithSOO(o);
		end
	end
	return t;
end
local function RemovedWithTOT(t)
	t.timeline = { ADDED_5_0_4, REMOVED_5_2_0 };
	-- #if MOP
	t.OnUpdate = VALE_TOT_ONUPDATE;
	-- #endif
	if t.groups then
		for i,o in ipairs(t.groups) do
			RemovedWithTOT(o);
		end
	end
	return t;
end

root(ROOTS.Zones, {
	m(PANDARIA, {
		m(VALE_OF_ETERNAL_BLOSSOMS, {
			["lore"] = "The Vale of Eternal Blossoms is a zone at the center of the continent of Pandaria. The Vale has great cultural importance to both the pandaren and mogu, particularly the Mogu'shan Palace. Formerly known as a Cradle of Life and used as a place of experimentation by the Titans similar to Sholazar Basin and Un'goro Crater, this vale of golden flowers and trees served as the seat of power for the rulers of Pandaria, such as Emperor Shaohao and the mogu rulers following the death of Lei Shen.",
			["icon"] = 618798,
			["maps"] = {
				VALE_OF_ETERNAL_BLOSSOMS_GUO_LAI_HALLS,
				VALE_OF_ETERNAL_BLOSSOMS_THE_HALL_OF_THE_SERPENT,
			},
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(6979),	-- Explore Vale of Eternal Blossoms
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
					visit_exploration(5976,{coord={5.8,47.6,VALE_OF_ETERNAL_BLOSSOMS}}),	-- Gate of the Setting Sun
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
					visit_exploration(6484,{coord={86.6,66.1,VALE_OF_ETERNAL_BLOSSOMS}}),	-- The Golden Lantern
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
				n(FLIGHT_PATHS, {
					fp(1073, {	-- Serpent's Spine, Vale of Eternal Blossoms
						["cr"] = 63497,	-- Mai of the Wall <Flight Master>
						["coord"] = { 14.2, 79.2, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					fp(1057, {	-- Shrine of Seven Stars, Vale of Eternal Blossoms
						["cr"] = 61121,	-- Sharinga Springrunner <Flight Master>
						["coord"] = { 84.6, 62.4, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					}),
					fp(1058, {	-- Shrine of Two Moons, Vale of Eternal Blossoms
						["cr"] = 61122,	-- Tania Summerbreeze <Flight Master>
						["coord"] = { 62.8, 21.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					}),
					fp(2544, {	-- Mistfall Village, Vale of Eternal Blossoms
						["cr"] = 154805,	-- Ryuxi <Master of Serpents>
						-- ["sourceQuests"] = {  },	-- TODO: likely requires some 8.3 quest chain before becoming available?
						["coord"] = { 38.9, 72.8, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { ADDED_8_3_0 },
					}),
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
						["sourceQuests"] = {
							31930,	-- Battle Pet Tamers: Pandaria (A)
							31952,	-- Battle Pet Tamers: Pandaria (H)
						},
						["qg"] = 66741,	-- Aki the Chosen
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
							["maps"] = { SHRINE_OF_SEVEN_STARS },
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { SHRINE_OF_TWO_MOONS },
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
							["maps"] = { THE_JADE_FOREST, KUN_LAI_SUMMIT, SHRINE_OF_SEVEN_STARS },
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { THE_JADE_FOREST, KUN_LAI_SUMMIT, SHRINE_OF_TWO_MOONS },
						},
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["sourceQuest"] = 32603,	-- Beasts of Fable
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
							["maps"] = { VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, SHRINE_OF_SEVEN_STARS },
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { VALLEY_OF_THE_FOUR_WINDS, KRASARANG_WILDS, SHRINE_OF_TWO_MOONS },
						},
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["sourceQuest"] = 32603,	-- Beasts of Fable
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
							["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES, SHRINE_OF_SEVEN_STARS },
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { DREAD_WASTES, TOWNLONG_STEPPES, SHRINE_OF_TWO_MOONS },
						},
						["description"] = "Account-Wide Daily Quest. Must have completed the quest |cffffff00Beasts of Fable.|r",
						["sourceQuest"] = 32603,	-- Beasts of Fable
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
							["maps"] = { TOWNLONG_STEPPES, KUN_LAI_SUMMIT, THE_JADE_FOREST, DREAD_WASTES, SHRINE_OF_SEVEN_STARS },
						},
						["hqd"] = {
							["qg"] = 64582,	-- Gentle San
							["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
							["maps"] = { TOWNLONG_STEPPES, KUN_LAI_SUMMIT, THE_JADE_FOREST, DREAD_WASTES, SHRINE_OF_TWO_MOONS },
						},
						["description"] = "These pets can be found in the Pandaren Spirit Pet Supplies received from the four Pandaren Spirit Tamers in their individual Daily Quests once you complete this quest.",
						["sourceAchievement"] = 7499,	-- Taming the World
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
								63596,	-- Audrey Burnhep
							},
							["coords"] = {
								{ 86.6, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
								{ 69.2, 25.0, STORMWIND_CITY },
							},
							["maps"] = { SHRINE_OF_SEVEN_STARS },
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
							["maps"] = { SHRINE_OF_TWO_MOONS },
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
					RemovedWithSOO(q(30634, {	-- Barring Entry
						["sourceQuest"] = 30632,	-- The Ruins of Guo-Lai
						["qg"] = 58471,	-- Kun Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(80484),	-- Explosive Keg (QI!)
						},
					})),
					RemovedWithTOT(q(32016, {	-- Elder Charms of Good Fortune
						["qg"] = 64029,	-- Elder Lin
						["coord"] = { 85.2, 62.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["isWeekly"] = true,
						["groups"] = {
							currency(697),	-- Elder Charm of Good Fortune
						},
					})),
					RemovedWithTOT(q(32017, {	-- Elder Charms of Good Fortune
						["qg"] = 63996,	-- Elder Lin
						["coord"] = { 62.0, 20.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["isWeekly"] = true,
						["groups"] = {
							currency(697),	-- Elder Charm of Good Fortune
						},
					})),
					applyclassicphase(MOP_PHASE_ESCALATION, {	-- Heroic Deeds
						["aqd"] = q(32900, {	-- Heroic Deeds (A)
							["qg"] = 64101,	-- Taijin the Cyclone
							["coord"] = { 47.23, 49.71, SHRINE_OF_SEVEN_STARS },
						}),
						["hqd"] = q(32901, {	-- Heroic Deeds (H)
							["qg"] = 66998,	-- Jinho the Wind Breaker
							["coord"] = { 46.6, 56.5, SHRINE_OF_TWO_MOONS_THE_IMPERIAL_MERCANTILE },
						}),
						["description"] = "Quest may only be completed ONCE per character. Items you receive from the Cache of Treasures are class and spec specific. Not all items are available to all classes able to equip them.",
						["timeline"] = { ADDED_5_3_0 },
						["groups"] = {
							i(98546),  -- Bulging Heroic Cache of Treasures
						},
					}),
					-- Wouter NOTE: it's been confirmed by Blizzard that Into the Vale quests will NOT be added to MoP Classic (not deemed important enough to fix)
					q(30630, {	-- Into the Vale (A)
						["sourceQuests"] = { 31512 },	-- A Witness to History (A)
						["qg"] = 59964,	-- Pako the Speaker
						["races"] = ALLIANCE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					q(33008, {	-- Into the Vale (H)
						["sourceQuests"] = { 31511 },	-- A Witness to History (H)
						["qg"] = 59964,	-- Pako the Speaker
						["races"] = HORDE_ONLY,
						["u"] = REMOVED_FROM_GAME,
					}),
					RemovedWithSOO(q(30635, {	-- Killing the Quilen
						["sourceQuests"] = {
							30633,	-- Out with the Scouts
							30634,	-- Barring Entry
						},
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					RemovedWithSOO(q(30638, {	-- Leaving an Opening
						["sourceQuests"] = {
							30635,	-- Killing the Quilen
							30636,	-- Stones of Power
							30637,	-- The Guo-Lai Halls
							30654,	-- The Guo-Lai Halls
						},
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					RemovedWithSOO(q(30633, {	-- Out with the Scouts
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					RemovedWithSOO(q(30636, {	-- Stones of Power
						["sourceQuests"] = {
							30633,	-- Out with the Scouts
							30634,	-- Barring Entry
						},
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					q(31369, {	-- The Anglers [A]
						["qg"] = 64033,	-- Master Angler Karu
						["coord"] = { 86.5, 60.2, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
						["races"] = ALLIANCE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(31370, {	-- The Anglers [H]
						["qg"] = 64010,	-- Master Angler Karu
						["coord"] = { 60.8, 23.6, VALE_OF_ETERNAL_BLOSSOMS },
						["timeline"] = { REMOVED_5_1_0, ADDED_10_2_7 },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,	-- this wasn't available for me until I party synced, but no follow up quest on turn in... not sure what locks
					}),
					RemovedWithSOO(q(30637, {	-- The Guo-Lai Halls
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					RemovedWithSOO(q(30654, {	-- The Guo-Lai Halls
						["sourceQuests"] = { 30632 },	-- The Ruins of Guo-Lai
						["qg"] = 58465,	-- Anji Autumnlight
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					q(31876, {	-- The Inkmasters of the Arboretum
						["qg"] = 64691,	-- Lorewalker Huynh
						["coord"] = { 82.0, 29.4, VALE_OF_ETERNAL_BLOSSOMS },
						["requireSkill"] = INSCRIPTION,
						["isWeekly"] = true,
					}),
					RemovedWithSOO(q(30632, {	-- The Ruins of Guo-Lai
						["sourceQuests"] = {
							31512,	-- A Witness to History (A)
							31511,	-- A Witness to History (H)
							30631,	-- The Shrine of Seven Stars (A)
							30649,	-- The Shrine of Two Moons (H)
						},
						["qg"] = 58408,	-- Leven Dawnblade
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
					})),
					RemovedWithSOO(q(30631, {	-- The Shrine of Seven Stars
						["sourceQuests"] = { 30630 },	-- Into the Vale (A)
						["qg"] = 58468,	-- Sun Tenderheart
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
					})),
					RemovedWithSOO(q(30649, {	-- The Shrine of Two Moons
						["sourceQuests"] = { 33008 },	-- Into the Vale (H)
						["qg"] = 58468,	-- Sun Tenderheart
						["coord"] = { 56.6, 43.6, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
					})),
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
						["groups"] = {
							i(87636),	-- Cloak of the Forgotten Emperor
							i(87638),	-- Cloak of Tranquil Clouds
							i(87637),	-- Jade Harbinger's Cloak
							i(87640),	-- Softfoot's Drape
							i(87639),	-- Tattered Guo-Lai Dynasty Cloak
							i(87217),	-- Small Bag of Goods
						},
					}),
					n(50822, {	-- Ai-Ran the Shifting Cloud
						["coord"] = { 42.8, 69.2, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86590),	-- Essence of the Breeze (TOY!)
						},
					}),
					n(50749, {	-- Kal'tik the Blight
						["coord"] = { 14.0, 58.6, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86579, {	-- Bottled Tornado [Should be a toy...]
								["timeline"] = { ADDED_5_0_4, DELETED_7_0_3 },
							}),
							i(134023, {	-- Bottled Tornado (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							}),
						},
					}),
					n(50349, {	-- Kang the Soul Thief
						["coord"] = { 15.2, 35.2, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86571),	-- Kang's Bindstone (TOY!)
						},
					}),
					n(50840, {	-- Major Nanners
						["coord"] = { 30.7, 91.5, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86594),	-- Helpful Wikky's Whistle (TOY!)
						},
					}),
					n(50806, {	-- Moldo One-Eye
						["coords"] = {
							{ 39.1, 54.0, VALE_OF_ETERNAL_BLOSSOMS },
							{ 34.8, 60.7, VALE_OF_ETERNAL_BLOSSOMS },
						},
						["groups"] = {
							i(86586),	-- Panflute of Pandaria (TOY!)
						},
					}),
					n(50843, {	-- Portent
						["description"] = "This is a rare Tameable Hunter Pet of 4 varying colors.",
					}),
					n(50780, {	-- Sahn Tidehunter
						-- #if MOP_BEFORE_SOO
						["coord"] = { 61.7, 55.4, VALE_OF_ETERNAL_BLOSSOMS },
						-- #else
						["coord"] = { 69.4, 30.5, VALE_OF_ETERNAL_BLOSSOMS },
						-- #endif
						["groups"] = {
							i(86582),	-- Aqua Jewel (TOY!)
						},
					}),
					n(50359, {	-- Urgolax
						["coord"] = { 39.5, 25.1, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86575),	-- Chalice of Secrets (TOY!)
						},
					}),
					n(50336, {	-- Yorik Sharpeye
						["coord"] = { 88.0, 44.3, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
							i(86568),	-- Mr. Smite's Brass Compass (TOY!)
						},
					}),
				}),
				n(REWARDS, {
					petbattle(container(94207, bubbleDownSelf({ ["timeline"] = { ADDED_5_2_0 } }, {	-- Fabled Pandaren Pet Supplies
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94210)),	-- Mountain Panda (PET!)
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94209)),	-- Snowy Panda (PET!)
						applyclassicphase(MOP_PHASE_RISE_OF_THE_THUNDER_KING, i(94208)),	-- Sunfur Panda (PET!)
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
				n(SPECIAL, {
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
						["groups"] = {
							i(90655),	-- Thundering Ruby Cloud Serpent (MOUNT!)
						},
					}),
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
					o(214388, {	-- Ancient Guo-Lai Cache
						["cost"] = {{ "i", 87779, 1 }},	-- Ancient Guo-Lai Cache Key
						["groups"] = appendGroups({
							ach(7318, {	-- A Taste of History
								["_drop"] = { "providers" },	-- Drop the "reputation spell"?
							}),
							i(90470),	-- Design: Jade Owl (RECIPE!)
							i(90471),	-- Design: Sapphire Cub (RECIPE!)
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
							applyclassicphase(MOP_PHASE_ONE, i(76061, { ["timeline"] = { ADDED_5_0_4 } })),	-- Spirit of Harmony
						})),
						{}),
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
						["coords"] = {
							-- #if AFTER 5.4.0
							-- are there different locations due to phasing in 5.4 questline?
							{ 70.9, 40.5, VALE_OF_ETERNAL_BLOSSOMS },
							-- #else
							{ 62.6, 41.8, VALE_OF_ETERNAL_BLOSSOMS },
							-- #endif
						},
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
					n(64028, {	-- Challenger Soong <Challenge Dungeons>
						["description"] = "You can only buy items from this vendor if you have the Challenge Conquerer: Gold Feat of Strength on your toon. You can only buy the set for your class.",
						["coord"] = { 86.3, 61.5, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = ALLIANCE_ONLY,
						["groups"] = sharedData({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
							i(90049),	-- Girdle of the Lich Lord
							i(90050),	-- Treads of the Lich Lord
							i(90051),	-- Chestguard of the Lich Lord
							i(90052),	-- Grasps of the Lich Lord
							i(90053),	-- Crown of the Lich Lord
							i(90054),	-- Legplates of the Lich Lord
							i(90055),	-- Shoulderplates of the Lich Lord
							i(90056),	-- Bracers of the Lich Lord
							i(90059),	-- Waistguard of the Cycle
							i(90060),	-- Sandals of the Cycle
							i(90061),	-- Gloves of the Cycle
							i(90062),	-- Hood of the Cycle
							i(90063),	-- Leggings of the Cycle
							i(90064),	-- Robes of the Cycle
							i(90065),	-- Branches of the Cycle
							i(90066),	-- Bracers of the Cycle
							i(90068),	-- Cinch of the Howling Beast
							i(90069),	-- Boots of the Howling Beast
							i(90070),	-- Chestguard of the Howling Beast
							i(90071),	-- Grips of the Howling Beast
							i(90072),	-- Helm of the Howling Beast
							i(90073),	-- Legguards of the Howling Beast
							i(90074),	-- Shoulderguards of the Howling Beast
							i(90075),	-- Wristwraps of the Howling Beast
							i(90079),	-- Girdle of the Elemental Triad
							i(90080),	-- Boots of the Elemental Triad
							i(90081),	-- Gloves of the Elemental Triad
							i(90082),	-- Hood of the Elemental Triad
							i(90083),	-- Leggings of the Elemental Triad
							i(90084),	-- Robes of the Elemental Triad
							i(90085),	-- Spaulders of the Elemental Triad
							i(90086),	-- Bracers of the Elemental Triad
							i(90088),	-- Greatbelt of the Regal Lord
							i(90089),	-- Treads of the Regal Lord
							i(90090),	-- Chestwrap of the Regal Lord
							i(90091),	-- Handwraps of the Regal Lord
							i(90092),	-- Crown of the Regal Lord
							i(90093),	-- Legwraps of the Regal Lord
							i(90094),	-- Shoulderguards of the Regal Lord
							i(90095),	-- Bracers of the Regal Lord
							i(90096),	-- Girdle of the Holy Warrior
							i(90097),	-- Greatboots of the Holy Warrior
							i(90098),	-- Chestplate of the Holy Warrior
							i(90099),	-- Gauntlets of the Holy Warrior
							i(90100),	-- Greathelm of the Holy Warrior
							i(90101),	-- Legplates of the Holy Warrior
							i(90102),	-- Shoulderplate of the Holy Warrior
							i(90103),	-- Wristguards of the Holy Warrior
							i(90110),	-- Cord of the Light
							i(90111),	-- Steps of the Light
							i(90112),	-- Bracers of the Light
							i(90113),	-- Pauldrons of the Light
							i(90114),	-- Robes of the Light
							i(90115),	-- Hands of the Light
							i(90116),	-- Cowl of the Light
							i(90117),	-- Leggings of the Light
							i(90119),	-- Girdle of the Silent Assassin
							i(90120),	-- Hood of the Silent Assassin
							i(90121),	-- Tabi of the Silent Assassin
							i(90122),	-- Shadowwrap of the Silent Assassin
							i(90123),	-- Gloves of the Silent Assassin
							i(90124),	-- Leggings of the Silent Assassin
							i(90125),	-- Spaulders of the Silent Assassin
							i(90126),	-- Bracers of the Silent Assassin
							i(90127),	-- Windfury Bracers
							i(90128),	-- Windfury Belt
							i(90129),	-- Windfury Sandals
							i(90130),	-- Windfury Harness
							i(90131),	-- Windfury Crushers
							i(90132),	-- Windfury Mask
							i(90133),	-- Windfury Legguards
							i(90134),	-- Windfury Spirit Guides
							i(90136),	-- Belt of the Betrayer
							i(90137),	-- Boots of the Betrayer
							i(90138),	-- Amice of the Betrayer
							i(90139),	-- Bracers of the Betrayer
							i(90140),	-- Robes of the Betrayer
							i(90141),	-- Handguards of the Betrayer
							i(90142),	-- Horns of the Betrayer
							i(90143),	-- Leggings of the Betrayer
							i(90147),	-- Girdle of the Golden King
							i(90148),	-- Greatboots of the Golden King
							i(90149),	-- Chestplate of the Golden King
							i(90150),	-- Reach of the Golden King
							i(90151),	-- Crown of the Golden King
							i(90152),	-- Greaves of the Golden King
							i(90153),	-- Mantle of the Golden King
							i(90154),	-- Bracers of the Golden King
						}),
					}),
					n(63994, {	-- Challenger Wuli <Challenge Dungeons>
						["description"] = "You can only buy items from this vendor if you have the Challenge Conquerer: Gold Feat of Strength on your toon. You can only buy the set for your class.",
						["coord"] = { 61.2, 20.8, VALE_OF_ETERNAL_BLOSSOMS },
						["races"] = HORDE_ONLY,
						["groups"] = sharedData({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
							i(90049),	-- Girdle of the Lich Lord
							i(90050),	-- Treads of the Lich Lord
							i(90051),	-- Chestguard of the Lich Lord
							i(90052),	-- Grasps of the Lich Lord
							i(90053),	-- Crown of the Lich Lord
							i(90054),	-- Legplates of the Lich Lord
							i(90055),	-- Shoulderplates of the Lich Lord
							i(90056),	-- Bracers of the Lich Lord
							i(90059),	-- Waistguard of the Cycle
							i(90060),	-- Sandals of the Cycle
							i(90061),	-- Gloves of the Cycle
							i(90062),	-- Hood of the Cycle
							i(90063),	-- Leggings of the Cycle
							i(90064),	-- Robes of the Cycle
							i(90065),	-- Branches of the Cycle
							i(90066),	-- Bracers of the Cycle
							i(90068),	-- Cinch of the Howling Beast
							i(90069),	-- Boots of the Howling Beast
							i(90070),	-- Chestguard of the Howling Beast
							i(90071),	-- Grips of the Howling Beast
							i(90072),	-- Helm of the Howling Beast
							i(90073),	-- Legguards of the Howling Beast
							i(90074),	-- Shoulderguards of the Howling Beast
							i(90075),	-- Wristwraps of the Howling Beast
							i(90079),	-- Girdle of the Elemental Triad
							i(90080),	-- Boots of the Elemental Triad
							i(90081),	-- Gloves of the Elemental Triad
							i(90082),	-- Hood of the Elemental Triad
							i(90083),	-- Leggings of the Elemental Triad
							i(90084),	-- Robes of the Elemental Triad
							i(90085),	-- Spaulders of the Elemental Triad
							i(90086),	-- Bracers of the Elemental Triad
							i(90088),	-- Greatbelt of the Regal Lord
							i(90089),	-- Treads of the Regal Lord
							i(90090),	-- Chestwrap of the Regal Lord
							i(90091),	-- Handwraps of the Regal Lord
							i(90092),	-- Crown of the Regal Lord
							i(90093),	-- Legwraps of the Regal Lord
							i(90094),	-- Shoulderguards of the Regal Lord
							i(90095),	-- Bracers of the Regal Lord
							i(90096),	-- Girdle of the Holy Warrior
							i(90097),	-- Greatboots of the Holy Warrior
							i(90098),	-- Chestplate of the Holy Warrior
							i(90099),	-- Gauntlets of the Holy Warrior
							i(90100),	-- Greathelm of the Holy Warrior
							i(90101),	-- Legplates of the Holy Warrior
							i(90102),	-- Shoulderplate of the Holy Warrior
							i(90103),	-- Wristguards of the Holy Warrior
							i(90110),	-- Cord of the Light
							i(90111),	-- Steps of the Light
							i(90112),	-- Bracers of the Light
							i(90113),	-- Pauldrons of the Light
							i(90114),	-- Robes of the Light
							i(90115),	-- Hands of the Light
							i(90116),	-- Cowl of the Light
							i(90117),	-- Leggings of the Light
							i(90119),	-- Girdle of the Silent Assassin
							i(90120),	-- Hood of the Silent Assassin
							i(90121),	-- Tabi of the Silent Assassin
							i(90122),	-- Shadowwrap of the Silent Assassin
							i(90123),	-- Gloves of the Silent Assassin
							i(90124),	-- Leggings of the Silent Assassin
							i(90125),	-- Spaulders of the Silent Assassin
							i(90126),	-- Bracers of the Silent Assassin
							i(90127),	-- Windfury Bracers
							i(90128),	-- Windfury Belt
							i(90129),	-- Windfury Sandals
							i(90130),	-- Windfury Harness
							i(90131),	-- Windfury Crushers
							i(90132),	-- Windfury Mask
							i(90133),	-- Windfury Legguards
							i(90134),	-- Windfury Spirit Guides
							i(90136),	-- Belt of the Betrayer
							i(90137),	-- Boots of the Betrayer
							i(90138),	-- Amice of the Betrayer
							i(90139),	-- Bracers of the Betrayer
							i(90140),	-- Robes of the Betrayer
							i(90141),	-- Handguards of the Betrayer
							i(90142),	-- Horns of the Betrayer
							i(90143),	-- Leggings of the Betrayer
							i(90147),	-- Girdle of the Golden King
							i(90148),	-- Greatboots of the Golden King
							i(90149),	-- Chestplate of the Golden King
							i(90150),	-- Reach of the Golden King
							i(90151),	-- Crown of the Golden King
							i(90152),	-- Greaves of the Golden King
							i(90153),	-- Mantle of the Golden King
							i(90154),	-- Bracers of the Golden King
						}),
					}),
					n(66973, {	-- Kai Featherfall <Phoenix Egg Trader>
						["coord"] = { 82.2, 34.0, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = sharedData({
							["cost"] = {{"i", 90045, 1 }},	-- 1x Ancestral Phoenix Egg
							["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
						}, {
							i(90710, {	-- Ashen Pandaren Phoenix (MOUNT!)
								-- #if MOP
								["OnUpdate"] = PHOENIX_MOUNT_ONUPDATE,
								-- #endif
							}),
							i(89154, {	-- Crimson Pandaren Phoenix (MOUNT!)
								-- #if MOP
								["OnUpdate"] = PHOENIX_MOUNT_ONUPDATE,
								-- #endif
							}),
							i(90711, {	-- Emerald Pandaren Phoenix (MOUNT!)
								-- #if MOP
								["OnUpdate"] = PHOENIX_MOUNT_ONUPDATE,
								-- #endif
							}),
							i(90712, {	-- Violet Pandaren Phoenix (MOUNT!)
								-- #if MOP
								["OnUpdate"] = PHOENIX_MOUNT_ONUPDATE,
								-- #endif
							}),
						}),
					}),
					n(62088, {	-- Lali the Assistant <Lorewalker Assistant>
						["coord"] = { 82.8, 30.4, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = sharedData({
							["timeline"] = { ADDED_11_2_7 },
							["cost"] = {{ "g", 20000000 }},		-- 2,000g
						}, {
							i(257354, {	-- Scroll of K'aresh's Fall (DECOR!)
								["sourceAchievement"] = 42187,	-- Lorewalking: Ethereal Wisdom
							}),
							i(257351, {	-- Tale of the Penultimate Lich King (DECOR!)
								["sourceAchievement"] = 42189,	-- Lorewalking: The Lich King
							}),
							i(245332, {	-- Tome of Silvermoon Intrigue (DECOR!)
								["sourceAchievement"] = 61467,	-- Lorewalking: The Elves of Quel'thalas
							}),
							i(257355, {	-- Tome of the Survivor (DECOR!)
								["sourceAchievement"] = 42188,	-- Lorewalking: Blade's Bane
							}),
						}),
					}),
					n(65172, {	-- Len at Arms <Adventuring Supplies>
						["coord"] = { 14.1, 78.8, VALE_OF_ETERNAL_BLOSSOMS },
						["groups"] = {
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
				}),
				n(ZONE_DROPS, {
					i(87779, {	-- Ancient Guo-Lai Cache Key
						["description"] = "Can randomly drop from any Mogu related mob in the zone.",
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
						["cost"] = {{ "i", 86547, 10 }},	-- 10x Skyshard
					}),
				}),
			},
		}),
	}),
});

-- #if ANYCLASSIC
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_5_0 } }, {
	m(VALE_OF_ETERNAL_BLOSSOMS, {
		q(92522, { ["timeline"] = { ADDED_5_5_0, REMOVED_5_5_2 } }),	-- Weekly turn-in for Elder Charms of Good Fortune (Alliance, idk if it's different for Horde)
	}),
})));
-- #endif
