-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
ARGENT_TOURNAMENT = createHeader({
	readable = "The Argent Tournament",
	icon = 236689,
	text = {
		en = WOWAPI_GetCategoryName(14941),
	},
});

local ASPIRANTS_SEAL = i(45192);	-- Aspirant's Seal
local CHAMPIONS_PURSE = currency(241, {	-- Champion's Seal
	["provider"] = { "i", 45724 },	-- Champion's Purse
});
local CHAMPIONS_SEAL = currency(241);	-- Champion's Seal
local CHAMPIONS_WRIT = i(46114);	-- Champion's Writ
local VALIANTS_SEAL = i(44987);	-- Valiant's Seal

-- TODO: Finish setting this up, intent is to right click and show the achievement that's required.
-- The dailies are locked until they're unlocked by completing A Silver Confidant for Alliance or The Sunreavers for Horde
local CRUSADER_DAILY_OnClick = [[_.OnClickDB.PopoutLinkedAchievement]]
local SILVER_COVENTANT_DAILY_OnClick = [[_.OnClickDB.PopoutLinkedAchievement]]
local SUNREAVERS_DAILY_OnClick = [[_.OnClickDB.PopoutLinkedAchievement]]
-- Very misleading to change what is popped out, I think we will find an alternate solution for this eventually,
-- but for now I'd like Retail to not perform this swap -- Runaway
-- #IF NOT ANYCLASSIC
CRUSADER_DAILY_OnClick = nil
SILVER_COVENTANT_DAILY_OnClick = nil
SUNREAVERS_DAILY_OnClick = nil
-- #ENDIF
-- Ideally Classic switches over and utilizes 'sourceAchievements' as well for all this extra tooltip processing
-- #IF ANYCLASSIC
ExportDB.OnUpdateDB.CRUSADER_DAILY = [[~function(t)
	if not t.ach then
		local f = _.SearchForField("achievementID", _.Faction == "Horde" and 2771 or 2817);
		if f and #f > 0 then
			for _,o in pairs(f) do
				if o.key == "achievementID" then
					t.ach = o;
					return;
				end
			end
		end
	end
end]];
ExportDB.OnUpdateDB.SILVER_COVENTANT_DAILY = [[~function(t)
	if not t.ach then
		local f = _.SearchForField("achievementID", 3676);
		if f and #f > 0 then
			for _,o in pairs(f) do
				if o.key == "achievementID" then
					t.ach = o;
					return;
				end
			end
		end
	end
end]];
ExportDB.OnUpdateDB.SUNREAVERS_DAILY = [[~function(t)
	if not t.ach then
		local f = _.SearchForField("achievementID", 3677);
		if f and #f > 0 then
			for _,o in pairs(f) do
				if o.key == "achievementID" then
					t.ach = o;
					return;
				end
			end
		end
	end
end]];
-- #ENDIF
local VALIANT_DAILY_OnUpdate = function(valiantQuestID)
	-- #if ANYCLASSIC
	-- Forcibly changing visibility on groups is bad. These quests are impossible to see even in Debug unless actually being on the respective quest.
	return FUNCTION_TEMPLATES.GenerateOnUpdateIsOnQuestVisibleOverride(valiantQuestID)
	-- #endif
end
local CLASSIC_ONLY_DB_FUNC = function(func)
	-- #IF ANYCLASSIC
	return func
	-- #ENDIF
end

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.WRATH, applyclassicphase(WRATH_PHASE_TWO, bubbleDown({ ["timeline"] = { ADDED_3_2_0 } }, {
	n(ARGENT_TOURNAMENT, {
		["maps"] = { ICECROWN, 170 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(3676, FACTION_THE_SILVER_COVENANT, {	-- A Silver Confidant
					["sourceQuests"] = {
						13735,	-- A Champion Rises (A) (Darnassus)
						13733,	-- A Champion Rises (A) (Gnomeregan)
						13732,	-- A Champion Rises (A) (Ironforge)
						13702,	-- A Champion Rises (A) (Stormwind City)
						13734,	-- A Champion Rises (A) (The Exodar)
					},
					["races"] = ALLIANCE_ONLY,
				}),
				ach(2756, {	-- Argent Aspiration
					["sourceQuests"] = {
						13667,	-- The Argent Tournament (A)
						13668,	-- The Argent Tournament (H)
					},
				}),
				ach(2758, {	-- Argent Valor
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13688,	-- A Valiant Of Gnomeregan
						13685,	-- A Valiant Of Ironforge
						13691,	-- A Valiant Of Orgrimmar
						13693,	-- A Valiant Of Sen'jin
						13696,	-- A Valiant Of Silvermoon
						13684,	-- A Valiant Of Stormwind
						13690,	-- A Valiant Of The Exodar
						13694,	-- A Valiant Of Thunder Bluff
						13695,	-- A Valiant Of Undercity
					},
				}),
				ach(2773, {	-- It's Just a Flesh Wound
					["sourceQuest"] = 13664,	-- The Black Knight's Fall
				}),
				ach(2836, {	-- Lance a Lot
					crit(9918, {	-- Darnassus
						["crs"] = {
							33559,	-- Darnassus Valiant
							33738,	-- Darnassus Champion
							35332,	-- Darnassus Champion
						},
					}),
					crit(10225, {	-- Gnomeregan
						["crs"] = {
							33558,	-- Gnomeregan Valiant
							33740,	-- Gnomeregan Champion
							35331,	-- Gnomeregan Champion
						},
					}),
					crit(10226, {	-- Ironforge
						["crs"] = {
							33564,	-- Ironforge Valiant
							33743,	-- Ironforge Champion
							35329,	-- Ironforge Champion
						},
					}),
					crit(10227, {	-- Orgrimmar
						["crs"] = {
							33306,	-- Orgrimmar Valiant
							33744,	-- Orgrimmar Champion
							35314,	-- Orgrimmar Champion
						},
					}),
					crit(9919, {	-- Sen'jin
						["crs"] = {
							33285,	-- Sen'jin Valiant
							33745,	-- Sen'jin Champion
							35323,	-- Sen'jin Champion
						},
					}),
					crit(9920, {	-- Silvermoon City
						["crs"] = {
							33382,	-- Silvermoon Valiant
							33746,	-- Silvermoon Champion
							35326,	-- Silvermoon Champion
						},
					}),
					crit(10228, {	-- Stormwind
						["crs"] = {
							33561,	-- Stormwind Valiant
							33747,	-- Stormwind Champion
							35328,	-- Stormwind Champion
						},
					}),
					crit(10224, {	-- The Exodar
						["crs"] = {
							33562,	-- Exodar Valiant
							33739,	-- Exodar Champion
							35330,	-- Exodar Champion
						},
					}),
					crit(9922, {	-- The Undercity
						["crs"] = {
							33384,	-- Undercity Valiant
							33749,	-- Undercity Champion
							35327,	-- Undercity Champion
						},
					}),
					crit(9921, {	-- Thunder Bluff
						["crs"] = {
							33383,	-- Thunder Bluff Valiant
							33748,	-- Thunder Bluff Champion
							35325,	-- Thunder Bluff Champion
						},
					}),
				}),
				applyclassicphase(WRATH_PHASE_THREE, ach(3736, {	-- Pony Up!
					["provider"] = { "i", 47541 },	-- Argent Pony Bridle
				})),
				achWithRep(3677, FACTION_THE_SUNREAVERS, {	-- The Sunreavers
					["sourceQuests"] = {
						13737,	-- A Champion Rises (H) (Darkspear Trolls)
						13736,	-- A Champion Rises (H) (Orgrimmar)
						13740,	-- A Champion Rises (H) (Silvermoon City)
						13738,	-- A Champion Rises (H) (Thunder Bluff)
						13739,	-- A Champion Rises (H) (Undercity)
					},
					["races"] = HORDE_ONLY,
				}),
				applyclassicphase(WRATH_PHASE_FOUR, ach(4596, {	-- The Sword in the Skull
					["sourceQuests"] = {
						24796,	-- A Victory For The Silver Covenant (A)
						24795,	-- A Victory For The Silver Covenant [A - Maces]
						24801,	-- A Victory For The Sunreavers (H)
						24799,	-- A Victory For The Sunreavers [H - Maces]
						24800,	-- A Victory For The Sunreavers [Blood Elves]
						24798,	-- A Victory For The Sunreavers [Blood Elves - Maces]
					},
					["description"] = "You will be able to choose one of these weapons when you turn in your class/race specific Victory quest. You will learn all of their transmogs regardless of your choice.",
					["maps"] = { NORTHREND_DALARAN },
					["groups"] = {
						i(50050),	-- Cudgel of Furious Justice
						i(50051),	-- Hammer of Purified Flame
						i(50052),	-- Lightborn Spire
						i(50046),	-- Quel'Delar, Cunning of the Shadows
						i(50049),	-- Quel'Delar, Ferocity of the Scorned
						i(50047),	-- Quel'Delar, Lens of the Mind
						i(50048),	-- Quel'Delar, Might of the Faithful
					},
				})),
				ach(2772),	-- Tilted!
				n(FACTION_HEADER_ALLIANCE, sharedDataSelf({
					["races"] = ALLIANCE_ONLY,
				},{
					ach(2817, {	-- Exalted Argent Champion of the Alliance
						-- Meta Achievement should symlink the contained Achievements from Source
						["sym"] = {{"meta_achievement",
							947,	-- The Argent Crusade
							2760,	-- Exalted Champion of Darnassus
							2762,	-- Exalted Champion of Gnomeregan
							2763,	-- Exalted Champion of Ironforge
							2764,	-- Exalted Champion of Stormwind
							2761,	-- Exalted Champion of the Exodar
						}},
						["groups"] = {
							title(123),	-- Crusader
						},
					}),
					ach(2770, {	-- Exalted Champion of the Alliance
						-- Meta Achievement should symlink the contained Achievements from Source
						["sym"] = {{"meta_achievement",
							2760,	-- Exalted Champion of Darnassus
							2762,	-- Exalted Champion of Gnomeregan
							2763,	-- Exalted Champion of Ironforge
							2764,	-- Exalted Champion of Stormwind
							2761,	-- Exalted Champion of the Exodar
						}},
					}),
					ach(2782, {	-- Champion of the Alliance
						["sym"] = {{"meta_achievement",
							2777,	-- Champion of Darnassus
							2779,	-- Champion of Gnomeregan
							2780,	-- Champion of Ironforge
							2781,	-- Champion of Stormwind
							2778,	-- Champion of the Exodar
						}},
					}),
					ach(2777, {	-- Champion of Darnassus
						["sourceQuest"] = 13735,	-- A Champion Rises (A) (Darnassus)
					}),
					ach(2779, {	-- Champion of Gnomeregan
						["sourceQuest"] = 13733,	-- A Champion Rises (A) (Gnomeregan)
					}),
					ach(2780, {	-- Champion of Ironforge
						["sourceQuest"] = 13732,	-- A Champion Rises (A) (Ironforge)
					}),
					ach(2781, {	-- Champion of Stormwind
						["sourceQuest"] = 13702,	-- A Champion Rises (A) (Stormwind City)
					}),
					ach(2778, {	-- Champion of the Exodar
						["sourceQuest"] = 13734,	-- A Champion Rises (A) (The Exodar)
					}),
					ach(2760, {	-- Exalted Champion of Darnassus
						crit(5328, {	-- Exalted with Darnassus
							["_factions"] = { FACTION_DARNASSUS },
						}),
						-- #if ANYCLASSIC
						crit(9773, {	-- Champion of Darnassus
							["_achievements"] = { 2777 },
						}),
						-- #else
						crit(11320, {	-- Champion of Darnassus
							["_achievements"] = { 2777 },
						}),
						-- #endif
						title(114),	-- of Darnassus
					}),
					ach(2761, {	-- Exalted Champion of the Exodar
						crit(5332, {	-- Exalted with Exodar
							["_factions"] = { FACTION_EXODAR },
						}),
						-- #if ANYCLASSIC
						crit(9774, {	-- Champion of Exodar
							["_achievements"] = { 2778 },
						}),
						-- #else
						crit(11321, {	-- Champion of Exodar
							["_achievements"] = { 2778 },
						}),
						-- #endif
						title(113),	-- of the Exodar
					}),
					ach(2762, {	-- Exalted Champion of Gnomeregan
						crit(5329, {	-- Exalted with Gnomeregan
							["_factions"] = { FACTION_GNOMEREGAN },
						}),
						-- #if ANYCLASSIC
						crit(9775, {	-- Champion of Gnomeregan
							["_achievements"] = { 2779 },
						}),
						-- #else
						crit(11322, {	-- Champion of Gnomeregan
							["_achievements"] = { 2779 },
						}),
						-- #endif
						title(81),	-- of Gnomeregan
					}),
					ach(2764, {	-- Exalted Champion of Stormwind
						crit(5331, {	-- Exalted with Stormwind
							["_factions"] = { FACTION_STORMWIND },
						}),
						-- #if ANYCLASSIC
						crit(9777, {	-- Champion of Stormwind
							["_achievements"] = { 2781 },
						}),
						-- #else
						crit(11324, {	-- Champion of Stormwind
							["_achievements"] = { 2781 },
						}),
						-- #endif
						title(116),	-- of Stormwind
					}),
					ach(2763, {	-- Exalted Champion of Ironforge
						crit(5330, {	-- Exalted with Ironforge
							["_factions"] = { FACTION_IRONFORGE },
						}),
						-- #if ANYCLASSIC
						crit(9776, {	-- Champion of Ironforge
							["_achievements"] = { 2780 },
						}),
						-- #else
						crit(11323, {	-- Champion of Ironforge
							["_achievements"] = { 2780 },
						}),
						-- #endif
						title(115),	-- of Ironforge
					}),
				})),
				n(FACTION_HEADER_HORDE, sharedDataSelf({
					["races"] = HORDE_ONLY,
				},{
					ach(2816, {	-- Exalted Argent Champion of the Horde
						-- Meta Achievement should symlink the contained Achievements from Source
						["sym"] = {{"meta_achievement",
							947,	-- The Argent Crusade
							2765,	-- Exalted Champion of Orgrimmar
							2766,	-- Exalted Champion of Sen'jin
							2767,	-- Exalted Champion of Silvermoon City
							2769,	-- Exalted Champion of the Undercity
							2768,	-- Exalted Champion of Thunder Bluff
						}},
						["groups"] = {
							title(123),	-- Crusader
						},
					}),
					ach(2771, {	-- Exalted Champion of the Horde
						-- Meta Achievement should symlink the contained Achievements from Source
						["sym"] = {{"meta_achievement",
							2765,	-- Exalted Champion of Orgrimmar
							2766,	-- Exalted Champion of Sen'jin
							2767,	-- Exalted Champion of Silvermoon City
							2769,	-- Exalted Champion of the Undercity
							2768,	-- Exalted Champion of Thunder Bluff
						}},
					}),
					ach(2788, {	-- Champion of the Horde
						-- Meta Achievement should symlink the contained Achievements from Source
						["sym"] = {{"meta_achievement",
							2783,	-- Champion of Orgrimmar
							2784,	-- Champion of Sen'jin
							2785,	-- Champion of Silvermoon City
							2787,	-- Champion of the Undercity
							2786,	-- Champion of Thunder Bluff
						}},
					}),
					ach(2783, {	-- Champion of Orgrimmar
						["sourceQuest"] = 13736,	-- A Champion Rises (H) (Orgrimmar)
					}),
					ach(2784, {	-- Champion of Sen'jin
						["sourceQuest"] = 13737,	-- A Champion Rises (H) (Darkspear Trolls)
					}),
					ach(2785, {	-- Champion of Silvermoon City
						["sourceQuest"] = 13740,	-- A Champion Rises (H) (Silvermoon City)
					}),
					ach(2787, {	-- Champion of the Undercity
						["sourceQuest"] = 13739,	-- A Champion Rises (H) (Undercity)
					}),
					ach(2786, {	-- Champion of Thunder Bluff
						["sourceQuest"] = 13738,	-- A Champion Rises (H) (Thunder Bluff)
					}),
					ach(2765, {	-- Exalted Champion of Orgrimmar
						crit(5314, {	-- Exalted with Orgrimmar
							["_factions"] = { FACTION_ORGRIMMAR },
						}),
						crit(9783, {	-- Champion of Orgrimmar
							["_achievements"] = { 2783 },
						}),
						title(117),	-- of Orgrimmar
					}),
					ach(2766, {	-- Exalted Champion of Sen'jin
						crit(5313, {	-- Exalted with Darkspear Trolls
							["_factions"] = { FACTION_DARKSPEAR_TROLLS },
						}),
						-- #if ANYCLASSIC
						crit(9784, {	-- Champion of Sen'jin
							["_achievements"] = { 2784 },
						}),
						-- #else
						crit(11326, {	-- Champion of Sen'jin
							["_achievements"] = { 2784 },
						}),
						-- #endif
						title(118),	-- of Sen'jin
					}),
					ach(2767, {	-- Exalted Champion of Silvermoon City
						crit(5317, {	-- Exalted with Silvermoon City
							["_factions"] = { FACTION_SILVERMOON_CITY },
						}),
						crit(9785, {	-- Champion of Silvermoon City
							["_achievements"] = { 2785 },
						}),
						title(119),	-- of Silvermoon
					}),
					ach(2769, {	-- Exalted Champion of the Undercity
						crit(5316, {	-- Exalted with Undercity
							["_factions"] = { FACTION_UNDERCITY },
						}),
						-- #if ANYCLASSIC
						crit(9787, {	-- Champion of the Undercity
							["_achievements"] = { 2787 },
						}),
						-- #else
						crit(11329, {	-- Champion of the Undercity
							["_achievements"] = { 2787 },
						}),
						-- #endif
						title(121),	-- of the Undercity
					}),
					ach(2768, {	-- Exalted Champion of Thunder Bluff
						crit(5315, {	-- Exalted with Thunder Bluff
							["_factions"] = { FACTION_THUNDER_BLUFF },
						}),
						-- #if ANYCLASSIC
						crit(9786, {	-- Champion of Thunder Bluff
							["_achievements"] = { 2786 },
						}),
						-- #else
						crit(11328, {	-- Champion of Thunder Bluff
							["_achievements"] = { 2786 },
						}),
						-- #endif
						title(120),	-- of Thunder Bluff
					}),
				})),
			}),
			n(FLIGHT_PATHS, {
				fp(340, {	-- Argent Tournament Grounds, Icecrown
					["cr"] = 33849,	-- Helidan Lightwing <Flight Master>
					["coord"] = { 72.6, 22.6, ICECROWN },
				}),
			}),
			n(QUESTS, {
				q(13666, {	-- A Blade Fit For A Champion (A) (The Silver Covenant, Aspirant)
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuests"] = {
						13828,	-- Mastery Of Melee (A)
						13837,	-- Mastery Of The Charge (A)
						13835,	-- Mastery Of The Shield-Breaker (A)
					},
					["coord"] = { 76.5, 19.4, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13757, {	-- A Blade Fit For A Champion (A) (Darnassus, Valiant)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13746, {	-- A Blade Fit For A Champion (A) (Gnomeregan, Valiant)
					["qg"] = 33335,	-- Ambrose Boltspark
					["coord"] = { 76.5, 19.8, ICECROWN },
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13741, {	-- A Blade Fit For A Champion (A) (Ironforge, Valiant)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.5, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13603, {	-- A Blade Fit For A Champion (A) (Stormwind City, Valiant)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.1, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13752, {	-- A Blade Fit For A Champion (A) (The Exodar, Valiant)
					["qg"] = 33593,	-- Colosos
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13673, {	-- A Blade Fit For A Champion (H) (The Sunreavers, Aspirant)
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuests"] = {
						13829,	-- Mastery Of Melee (H)
						13839,	-- Mastery Of The Charge (H)
						13838,	-- Mastery Of The Shield-Breaker (H)
					},
					["coord"] = { 76.3, 24.4, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13768, {	-- A Blade Fit For A Champion (H) (Darkspear Trolls, Valiant)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 76.0, 24.5, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13762, {	-- A Blade Fit For A Champion (H) (Orgrimmar, Valiant)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.5, 24.6, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13783, {	-- A Blade Fit For A Champion (H) (Silvermoon City, Valiant)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13773, {	-- A Blade Fit For A Champion (H) (Thunder Bluff, Valiant)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.2, 24.6, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
							["coord"] = { 60.5, 51.5, GRIZZLY_HILLS },
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13778, {	-- A Blade Fit For A Champion (H) (Undercity, Valiant)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.2, ICECROWN },
					["maps"] = { GRIZZLY_HILLS },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Ashwood Brand
							["provider"] = { "i", 44981 },	-- Ashwood Brand
						}),
						VALIANTS_SEAL,
					},
				}),

				q(13735, {	-- A Champion Rises (A) (Darnassus)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuest"] = 13725,	-- The Valiant's Challenge (A) (Darnassus)
					["coord"] = { 76.3, 19.0, ICECROWN },
					["races"] = { NIGHTELF },
					["groups"] = {
						a(i(44998)),	-- Argent Squire (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13733, {	-- A Champion Rises (A) (Gnomeregan)
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuest"] = 13723,	-- The Valiant's Challenge (A) (Gnomeregan)
					["coord"] = { 76.5, 19.8, ICECROWN },
					["races"] = { GNOME },
					["groups"] = {
						a(i(44998)),	-- Argent Squire (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13732, {	-- A Champion Rises (A) (Ironforge)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuest"] = 13713,	-- The Valiant's Challenge (A) (Ironforge)
					["coord"] = { 76.6, 19.5, ICECROWN },
					["races"] = { DWARF },
					["groups"] = {
						a(i(44998)),	-- Argent Squire (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13702, {	-- A Champion Rises (A) (Stormwind City)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuest"] = 13699,	-- The Valiant's Challenge (A) (Stormwind City)
					["coord"] = { 76.6, 19.1, ICECROWN },
					["races"] = { HUMAN },
					["groups"] = {
						a(i(44998)),	-- Argent Squire (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13734, {	-- A Champion Rises (A) (The Exodar)
					["qg"] = 33593,	-- Colosos
					["sourceQuest"] = 13724,	-- The Valiant's Challenge (A) (The Exodar)
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = { DRAENEI },
					["groups"] = {
						a(i(44998)),	-- Argent Squire (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13737, {	-- A Champion Rises (H) (Darkspear Trolls)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuest"] = 13727,	-- The Valiant's Challenge (H) (Darkspear Trolls)
					["coord"] = { 76.0, 24.5, ICECROWN },
					["races"] = { TROLL },
					["groups"] = {
						h(i(45022)),	-- Argent Gruntling (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13736, {	-- A Champion Rises (H) (Orgrimmar)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuest"] = 13726,	-- The Valiant's Challenge (H) (Orgrimmar)
					["coord"] = { 76.5, 24.6, ICECROWN },
					["races"] = { ORC },
					["groups"] = {
						h(i(45022)),	-- Argent Gruntling (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13740, {	-- A Champion Rises (H) (Silvermoon City)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuest"] = 13731,	-- The Valiant's Challenge (H) (Silvermoon City)
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = { BLOODELF },
					["groups"] = {
						h(i(45022)),	-- Argent Gruntling (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13738, {	-- A Champion Rises (H) (Thunder Bluff)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuest"] = 13728,	-- The Valiant's Challenge (H) (Thunder Bluff)
					["coord"] = { 76.2, 24.6, ICECROWN },
					["races"] = { TAUREN },
					["groups"] = {
						h(i(45022)),	-- Argent Gruntling (PET!)
						CHAMPIONS_SEAL,
					},
				}),
				q(13739, {	-- A Champion Rises (H) (Undercity)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuest"] = 13729,	-- The Valiant's Challenge (H) (Undercity)
					["coord"] = { 76.5, 24.2, ICECROWN },
					["races"] = { UNDEAD },
					["groups"] = {
						h(i(45022)),	-- Argent Gruntling (PET!)
						CHAMPIONS_SEAL,
					},
				}),

				q(13681, {	-- A Chip Off the Ulduar Block
					["qg"] = 33435,	-- Bozzle Blastbolt
					["sourceQuest"] = 13820,	-- The Blastbolt Brothers
					["coord"] = { 74.0, 24.6, ICECROWN },
					["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
					["maps"] = { THE_STORM_PEAKS },
					-- #if BEFORE CATA
					["OnUpdate"] = [[function(t) t.u = _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) and ]] .. REMOVED_FROM_GAME .. [[ or ]] .. WRATH_PHASE_TWO .. [[; end]],
					-- #endif
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Small Stone Block
							["providers"] = {
								{ "i",  45278 },	-- Small Stone Block
								{ "o", 194463 },	-- Small Stone Block
								{ "o", 194461 },	-- Stone Block
								{ "i",  45281 },	-- Goblin Chisel
							},
						}),
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- A Leg Up
					["allianceQuestData"] = q(14074, {	-- A Leg Up (A)
						["qg"] = 34880,	-- Narasi Snowdawn <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14143, {	-- A Leg Up (H)
						["qg"] = 34771,	-- Girana the Blooded <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Stolen Tallstrider Leg
							["providers"] = {
								{ "i",  46859 },	-- Stolen Tallstrider Leg
								{ "o", 195274 },	-- Stolen Tallstrider Leg
							},
							["crs"] = {
								34965,	-- Mistcaller Yngvar
								34838,	-- Kvaldir Reaver
								34839,	-- Kvaldir Mist Binder
							},
						}),
						CHAMPIONS_SEAL,
					},
				}),
				q(13689, {	-- A Valiant Of Darnassus
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuest"] = 13679,	-- The Aspirant's Challenge (A)
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = { NIGHTELF, WORGEN },
				}),
				q(13688, {	-- A Valiant Of Gnomeregan
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuest"] = 13679,	-- The Aspirant's Challenge (A)
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = { GNOME },
				}),
				q(13685, {	-- A Valiant Of Ironforge
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuest"] = 13679,	-- The Aspirant's Challenge (A)
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = { DWARF },
				}),
				q(13691, {	-- A Valiant Of Orgrimmar
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuest"] = 13680,	-- The Aspirant's Challenge (H)
					["coord"] = { 76.3, 24.4, ICECROWN },
					["races"] = { ORC, GOBLIN, PANDAREN_HORDE, NIGHTBORNE, HIGHMOUNTAIN_TAUREN, ZANDALARI, VULPERA, MAGHAR, DRACTHYR_HORDE },
				}),
				q(13693, {	-- A Valiant Of Sen'jin
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuest"] = 13680,	-- The Aspirant's Challenge (H)
					["coord"] = { 76.3, 24.4, ICECROWN },
					["races"] = { TROLL },
				}),
				q(13696, {	-- A Valiant Of Silvermoon
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuest"] = 13680,	-- The Aspirant's Challenge (H)
					["coord"] = { 76.3, 24.4, ICECROWN },
					["races"] = { BLOODELF },
				}),
				q(13684, {	-- A Valiant Of Stormwind
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuest"] = 13679,	-- The Aspirant's Challenge (A)
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = { HUMAN, PANDAREN_ALLIANCE, VOIDELF, LIGHTFORGED, KULTIRAN, DARKIRON, MECHAGNOME, DRACTHYR_ALLIANCE },
				}),
				q(13690, {	-- A Valiant Of The Exodar
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuest"] = 13679,	-- The Aspirant's Challenge (A)
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = { DRAENEI },
				}),
				q(13694, {	-- A Valiant Of Thunder Bluff
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuest"] = 13680,	-- The Aspirant's Challenge (H)
					["coord"] = { 76.3, 24.4, ICECROWN },
					["races"] = { TAUREN },
				}),
				q(13695, {	-- A Valiant Of Undercity
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuest"] = 13680,	-- The Aspirant's Challenge (H)
					["coord"] = { 76.3, 24.4, ICECROWN },
					["races"] = { UNDEAD },
				}),

				q(13760, {	-- A Valiant's Field Training (A) (Darnassus, Valiant)
					["qg"] = 33652,	-- Illestria Bladesinger
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13749, {	-- A Valiant's Field Training (A) (Gnomeregan, Valiant)
					["qg"] = 33648,	-- Tickin Gearspanner
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.6, 19.8, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13744, {	-- A Valiant's Field Training (A) (Ironforge, Valiant)
					["qg"] = 33315,	-- Rollo Sureshot
					["coord"] = { 76.7, 19.4, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13592, {	-- A Valiant's Field Training (A) (Stormwind City, Valiant)
					["qg"] = 33222,	-- Sir Marcus Barlowe
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.5, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13755, {	-- A Valiant's Field Training (A) (The Exodar, Valiant)
					["qg"] = 33655,	-- Saandos
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13771, {	-- A Valiant's Field Training (H) (Darkspear Trolls, Valiant)
					["qg"] = 33540,	-- Shadow Hunter Mezil-kree
					["coord"] = { 76.0, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13765, {	-- A Valiant's Field Training (H) (Orgrimmar, Valiant)
					["qg"] = 33405,	-- Akinos
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.5, 24.5, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13786, {	-- A Valiant's Field Training (H) (Silvermoon City, Valiant)
					["qg"] = 33538,	-- Kethiel Sunlance
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.4, 23.8, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13776, {	-- A Valiant's Field Training (H) (Thunder Bluff, Valiant)
					["qg"] = 33539,	-- Dern Ragetotem
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.3, 24.7, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13781, {	-- A Valiant's Field Training (H) (Undercity, Valiant)
					["qg"] = 33541,	-- Sarah Chalke
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.6, 24.1, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Converted Hero slain
							["provider"] = { "n", 32255 },	-- Converted Hero
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13669, {	-- A Worthy Weapon (A) (The Silver Covenant, Aspirant)
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuests"] = {
						13828,	-- Mastery Of Melee (A)
						13837,	-- Mastery Of The Charge (A)
						13835,	-- Mastery Of The Shield-Breaker (A)
					},
					["coord"] = { 76.5, 19.4, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13758, {	-- A Worthy Weapon (A) (Darnassus, Valiant)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13747, {	-- A Worthy Weapon (A) (Gnomeregan, Valiant)
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.5, 19.8, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13742, {	-- A Worthy Weapon (A) (Ironforge, Valiant)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.5, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13600, {	-- A Worthy Weapon (A) (Stormwind City, Valiant)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.1, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13753, {	-- A Worthy Weapon (A) (The Exodar, Valiant)
					["qg"] = 33593,	-- Colosos
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13674, {	-- A Worthy Weapon (H) (The Sunreavers, Aspirant)
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuests"] = {
						13829,	-- Mastery Of Melee (H)
						13839,	-- Mastery Of The Charge (H)
						13838,	-- Mastery Of The Shield-Breaker (H)
					},
					["coord"] = { 76.3, 24.4, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13769, {	-- A Worthy Weapon (H) (Darkspear Trolls, Valiant)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 76.0, 24.5, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13763, {	-- A Worthy Weapon (H) (Orgrimmar, Valiant)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.5, 24.6, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13784, {	-- A Worthy Weapon (H) (Silvermoon City, Valiant)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13774, {	-- A Worthy Weapon (H) (Thunder Bluff, Valiant)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.2, 24.6, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13779, {	-- A Worthy Weapon (H) (Undercity, Valiant)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.2, ICECROWN },
					["maps"] = { DRAGONBLIGHT },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Blade of Drak'Mar
							["provider"] = { "i", 44978 },	-- Blade of Drak'Mar
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13790, {	-- Among the Champions (A, non-DK)
					["qg"] = 33771,	-- Luuri
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.8, 23.3, ICECROWN },
					["maxReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Mark of the Champion
							["provider"] = { "i", 45500 },	-- Mark of the Champion
							["crs"] = {
								33738,	-- Darnassus Champion
								33739,	-- Exodar Champion
								33740,	-- Gnomeregan Champion
								33743,	-- Ironforge Champion
								33747,	-- Stormwind Champion
								33744,	-- Orgrimmar Champion
								33745,	-- Sen'jin Champion
								33746,	-- Silvermoon Champion
								33748,	-- Thunder Bluff Champion
								33749,	-- Undercity Champion
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13811, {	-- Among the Champions (H, non-DK)
					["qg"] = 33771,	-- Luuri
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.8, 23.3, ICECROWN },
					["maxReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Mark of the Champion
							["provider"] = { "i", 45500 },	-- Mark of the Champion
							["crs"] = {
								33738,	-- Darnassus Champion
								33739,	-- Exodar Champion
								33740,	-- Gnomeregan Champion
								33743,	-- Ironforge Champion
								33747,	-- Stormwind Champion
								33744,	-- Orgrimmar Champion
								33745,	-- Sen'jin Champion
								33746,	-- Silvermoon Champion
								33748,	-- Thunder Bluff Champion
								33749,	-- Undercity Champion
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13793, {	-- Among the Champions (A, DK)
					["qg"] = 33770,	-- Illyrie Nightfall <Mistress of Horses>
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.6, 20.0, ICECROWN },
					["maxReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
					["classes"] = { DEATHKNIGHT },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Mark of the Champion
							["provider"] = { "i", 45500 },	-- Mark of the Champion
							["crs"] = {
								33738,	-- Darnassus Champion
								33739,	-- Exodar Champion
								33740,	-- Gnomeregan Champion
								33743,	-- Ironforge Champion
								33747,	-- Stormwind Champion
								33744,	-- Orgrimmar Champion
								33745,	-- Sen'jin Champion
								33746,	-- Silvermoon Champion
								33748,	-- Thunder Bluff Champion
								33749,	-- Undercity Champion
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13814, {	-- Among the Champions (H, DK)
					["qg"] = 33770,	-- Illyrie Nightfall <Mistress of Horses>
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.6, 20.0, ICECROWN },
					["maxReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
					["classes"] = { DEATHKNIGHT },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Mark of the Champion
							["provider"] = { "i", 45500 },	-- Mark of the Champion
							["crs"] = {
								33738,	-- Darnassus Champion
								33739,	-- Exodar Champion
								33740,	-- Gnomeregan Champion
								33743,	-- Ironforge Champion
								33747,	-- Stormwind Champion
								33744,	-- Orgrimmar Champion
								33745,	-- Sen'jin Champion
								33746,	-- Silvermoon Champion
								33748,	-- Thunder Bluff Champion
								33749,	-- Undercity Champion
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13855, {	-- At The Enemy's Gates (A) (Darnassus, Valiant)
					["providers"] = {
						{ "n", 33654 },	-- Airae Starseeker
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.4, 19.0, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13852, {	-- At The Enemy's Gates (A) (Gnomeregan, Valiant)
					["providers"] = {
						{ "n", 33649 },	-- Flickin Gearspanner
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.5, 19.9, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13851, {	-- At The Enemy's Gates (A) (Ironforge, Valiant)
					["providers"] = {
						{ "n", 33309 },	-- Clara Tumblebrew
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.6, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13847, {	-- At The Enemy's Gates (A) (Stormwind City, Valiant)
					["providers"] = {
						{ "n", 33223 },	-- Captain Joseph Holley
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13854, {	-- At The Enemy's Gates (A) (The Exodar, Valiant)
					["providers"] = {
						{ "n", 33656 },	-- Ranii
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13857, {	-- At The Enemy's Gates (H) (Darkspear Trolls, Valiant)
					["providers"] = {
						{ "n", 33545 },	-- Gahju
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 75.9, 24.4, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13856, {	-- At The Enemy's Gates (H) (Orgrimmar, Valiant)
					["providers"] = {
						{ "n", 33544 },	-- Morah Worgsister
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.4, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13859, {	-- At The Enemy's Gates (H) (Silvermoon City, Valiant)
					["providers"] = {
						{ "n", 33548 },	-- Aneera Thuron
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13858, {	-- At The Enemy's Gates (H) (Thunder Bluff, Valiant)
					["providers"] = {
						{ "n", 33549 },	-- Anka Clawhoof
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.1, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13860, {	-- At The Enemy's Gates (H) (Undercity, Valiant)
					["providers"] = {
						{ "n", 33547 },	-- Handler Dretch
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.3, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Boneguard Footman slain
							["provider"] = { "n", 33438 },	-- Boneguard Footman
						}),
						objective(2, {	-- 0/10 Boneguard Scout slain
							["provider"] = { "n", 33550 },	-- Boneguard Scout
						}),
						objective(3, {	-- 0/3 Boneguard Lieutenant slain
							["provider"] = { "n", 33429 },	-- Boneguard Lieutenant
						}),
						VALIANTS_SEAL,
					},
				}),

				q(13861, {	-- Battle Before the Citadel (A, non-DK)
					["providers"] = {
						{ "n", 33759 },	-- Eadric the Pure <Grand Champion of the Argent Crusade>
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Boneguard Commander slain
							["provider"] = { "n", 34127 },	-- Boneguard Commander
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13862, {	-- Battle Before the Citadel (H, non-DK)
					["providers"] = {
						{ "n", 33759 },	-- Eadric the Pure <Grand Champion of the Argent Crusade>
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Boneguard Commander slain
							["provider"] = { "n", 34127 },	-- Boneguard Commander
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13863, {	-- Battle Before the Citadel (H, DK)
					["providers"] = {
						{ "n", 33762 },	-- Crok Scourgebane <Grand Champion of the Ebon Blade>
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.8, 20.0, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Boneguard Commander slain
							["provider"] = { "n", 34127 },	-- Boneguard Commander
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13864, {	-- Battle Before the Citadel (A, DK)
					["providers"] = {
						{ "n", 33762 },	-- Crok Scourgebane <Grand Champion of the Ebon Blade>
						{ "n", 33870 },	-- Stabled Argent Warhorse
						{ "i", 46106 },	-- Argent Lance
					},
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.8, 20.0, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Boneguard Commander slain
							["provider"] = { "n", 34127 },	-- Boneguard Commander
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),

				applyclassicphase(WRATH_PHASE_THREE, q(24442, {	-- Battle Plans Of The Kvaldir
					["provider"] = { "i", 49676 },	-- Kvaldir Attack Plans
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["crs"] = {
						34839,	-- Kvaldir Mist Binder
						34838,	-- Kvaldir Reaver
					},
					["groups"] = {
						objective(1, {	-- 0/1 Heart of the Mists
							["providers"] = {
								{ "i",  49678 },	-- Heart of the Mists
								{ "o", 201367 },	-- Heart of the Mists
							},
							["coord"] = { 43.9, 24.5, 170 },
						}),
					},
				})),

				applyclassicphase(WRATH_PHASE_THREE, {	-- Breakfast Of Champions
					["allianceQuestData"] = q(14076, {	-- Breakfast Of Champions (A)
						["qg"] = 34912,	-- Savinia Loresong <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14092, {	-- Breakfast Of Champions (H)
						["qg"] = 34914,	-- Tylos Dawnrunner <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["maps"] = { THE_STORM_PEAKS },
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Jormungar Egg Sac
							["providers"] = {
								{ "i",  46889 },	-- Jormungar Egg Sac
								{ "n",  34920 },	-- Deep Jormungar
								{ "o", 195308 },	-- Mysterious Snow Mound
								{ "i",  46893 },	-- Earthshaker Drum
							},
							["coord"] = { 43.4, 59.3, THE_STORM_PEAKS },
						}),
						CHAMPIONS_SEAL,
					},
				}),

				q(13846, {	-- Contributin' To The Cause
					["qg"] = 34210,	-- Squire Artie
					["sourceQuests"] = {
						13735,	-- A Champion Rises (A) (Darnassus)
						13733,	-- A Champion Rises (A) (Gnomeregan)
						13732,	-- A Champion Rises (A) (Ironforge)
						13702,	-- A Champion Rises (A) (Stormwind City)
						13734,	-- A Champion Rises (A) (The Exodar)
						13737,	-- A Champion Rises (H) (Darkspear Trolls)
						13736,	-- A Champion Rises (H) (Orgrimmar)
						13740,	-- A Champion Rises (H) (Silvermoon City)
						13738,	-- A Champion Rises (H) (Thunder Bluff)
						13739,	-- A Champion Rises (H) (Undercity)
					},
					["coord"] = { 69.5, 22.4, ICECROWN },
					["maxReputation"] = { FACTION_ARGENT_CRUSADE, EXALTED },	-- Argent Crusade, Exalted.
					["isDaily"] = true,
				}),
				applyclassicphase(WRATH_PHASE_THREE, q(14105, {	-- Deathspeaker Kharos
					["qg"] = 34882,	-- High Crusader Adelard
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Deathspeaker Kharos slain
							["provider"] = { "n", 34808 },	-- Deathspeaker Kharos <Cult of the Damned>
							["coord"] = { 64.2, 21.6, ICECROWN },
						}),
						CHAMPIONS_SEAL,
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, q(14101, {	-- Drottinn Hrothgar
					["qg"] = 34882,	-- High Crusader Adelard
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Drottinn Hrothgar slain
							["providers"] = {
								{ "n", 34980 },	-- Drottinn Hrothgar <The Sea Reaver>
								{ "i", 47006 },	-- Kvaldir War Horn
							},
							["coord"] = { 50.4, 15.6, 170 },
						}),
						CHAMPIONS_SEAL,
					},
				})),
				q(13794, {	-- Eadric the Pure
					["qg"] = 33817,	-- Justicar Mariel Trueheart
					["sourceQuests"] = {
						13735,	-- A Champion Rises (A) (Darnassus)
						13733,	-- A Champion Rises (A) (Gnomeregan)
						13732,	-- A Champion Rises (A) (Ironforge)
						13702,	-- A Champion Rises (A) (Stormwind City)
						13734,	-- A Champion Rises (A) (The Exodar)
						13737,	-- A Champion Rises (H) (Darkspear Trolls)
						13736,	-- A Champion Rises (H) (Orgrimmar)
						13740,	-- A Champion Rises (H) (Silvermoon City)
						13738,	-- A Champion Rises (H) (Thunder Bluff)
						13739,	-- A Champion Rises (H) (Undercity)
					},
					["coord"] = { 69.6, 22.8, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["isBreadcrumb"] = true,	-- [Possible to not have this quest completed and still pick up following dailies...]
				}),
				applyclassicphase(WRATH_PHASE_THREE, q(14108, {	-- Get Kraken!
					["qg"] = 35094,	-- Crusader Silverdawn
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Hurl Spears at North Sea Kraken
							["providers"] = {
								{ "i", 46954 },	-- Flaming Spears
								{ "n", 34925 },	-- North Sea Kraken
							},
						}),
						objective(2, {	-- 0/6 Kvaldir Deepcaller slain
							["provider"] = { "n", 35092 },	-- Kvaldir Deepcaller
						}),
						CHAMPIONS_SEAL,
					},
				})),

				applyclassicphase(WRATH_PHASE_THREE, {	-- Gormok Wants His Snobolds
					["allianceQuestData"] = q(14090, {	-- Gormok Wants His Snobolds (A)
						["qg"] = 34912,	-- Savinia Loresong <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14141, {	-- Gormok Wants His Snobolds (H)
						["qg"] = 34914,	-- Tylos Dawnrunner <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["maps"] = { THE_STORM_PEAKS },
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Snowblind Follower captured
							["providers"] = {
								{ "n", 29618 },	-- Snowblind Follower
								{ "i", 46885 },	-- Weighted Net
							},
							["coord"] = { 44.6, 82.0, THE_STORM_PEAKS },
						}),
						CHAMPIONS_SEAL,
					},
				}),

				applyclassicphase(WRATH_PHASE_THREE, q(14095, {	-- Identifying the Remains
					["provider"] = { "i", 46955 },	-- Kraken Tooth
					["description"] = "Defeating the Kraken during |cFFFFD700Get Kraken|r rewards this item.",
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["cr"] = 34925,	-- North Sea Kraken
					["isDaily"] = true,
				})),

				q(13627, {	-- Jack Me Some Lumber
					["qg"] = 33434,	-- Bezzle Blastbolt
					["sourceQuest"] = 13820,	-- The Blastbolt Brothers
					["coord"] = { 74.2, 24.6, ICECROWN },
					["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
					["maps"] = { CRYSTALSONG_FOREST },
					-- #if BEFORE CATA
					["OnUpdate"] = [[function(t) t.u = _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) and ]] .. REMOVED_FROM_GAME .. [[ or ]] .. WRATH_PHASE_TWO .. [[; end]],
					-- #endif
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Rough Hewn Plank
							["providers"] = {
								{ "i", 45045 },	-- Rough Hewn Plank
								{ "n", 33308 },	-- Crystalsong Oak
								{ "i", 45046 },	-- Lumberjack's Axe
							},
						}),
					},
				}),
				{	-- Learning The Reins
					["allianceQuestData"] = q(13625, {	-- Learning The Reins (A)
						["providers"] = {
							{ "n", 33647 },	-- Scout Shalyndria
							{ "n", 33843 },	-- Stabled Quel'dorei Steed
							{ "i", 46069 },	-- Alliance Lance
						},
						["sourceQuests"] = {
							13828,	-- Mastery Of Melee (A)
							13837,	-- Mastery Of The Charge (A)
							13835,	-- Mastery Of The Shield-Breaker (A)
						},
						["coord"] = { 76.5, 19.5, ICECROWN },
					}),
					["hordeQuestData"] = q(13677, {	-- Learning The Reins (H)
						["providers"] = {
							{ "n", 33659 },	-- Galathia Brightdawn
							{ "n", 33842 },	-- Stabled Sunreaver Hawkstrider
							{ "i", 46070 },	-- Horde Lance
						},
						["sourceQuests"] = {
							13829,	-- Mastery Of Melee (H)
							13839,	-- Mastery Of The Charge (H)
							13838,	-- Mastery Of The Shield-Breaker (H)
						},
						["coord"] = { 76.2, 24.4, ICECROWN },
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/5 Use Thrust on Melee Target
							["provider"] = { "n", 33229 },	-- Melee Target
						}),
						objective(2, {	-- 0/2 Use Shield-Breaker on vulnerable Ranged Target
							["provider"] = { "n", 33243 },	-- Ranged Target
						}),
						objective(3, {	-- 0/2 Use Charge on vulnerable Charge Target
							["provider"] = { "n", 33272 },	-- Charge Target
						}),
						ASPIRANTS_SEAL,
					},
				},
				{	-- Mastery Of Melee
					["allianceQuestData"] = q(13828, {	-- Mastery Of Melee (A)
						["providers"] = {
							{ "n", 33625 },	-- Arcanist Taelis
							{ "n", 33843 },	-- Stabled Quel'dorei Steed
							{ "i", 46069 },	-- Alliance Lance
						},
						["sourceQuest"] = 13667,	-- The Argent Tournament (A)
						["coord"] = { 76.5, 19.4, ICECROWN },
					}),
					["hordeQuestData"] = q(13829, {	-- Mastery Of Melee (H)
						["providers"] = {
							{ "n", 33542 },	-- Magister Edien Sunhollow
							{ "n", 33842 },	-- Stabled Sunreaver Hawkstrider
							{ "i", 46070 },	-- Horde Lance
						},
						["sourceQuest"] = 13668,	-- The Argent Tournament (H)
						["coord"] = { 76.2, 24.3, ICECROWN },
					}),
					["groups"] = {
						objective(1, {	-- Jeran Lockwood's advice
							["provider"] = { "n", 33973 },	-- Jeran Lockwood <Master of the Melee>
							["coord"] = { 72.6, 19.2, ICECROWN },
						}),
						objective(2, {	-- 0/5 Use Thrust on Melee Target
							["provider"] = { "n", 33229 },	-- Melee Target
						}),
					},
				},
				{	-- Mastery Of The Charge
					["allianceQuestData"] = q(13837, {	-- Mastery Of The Charge (A)
						["providers"] = {
							{ "n", 33646 },	-- Avareth Swiftstrike
							{ "n", 33843 },	-- Stabled Quel'dorei Steed
							{ "i", 46069 },	-- Alliance Lance
						},
						["sourceQuest"] = 13667,	-- The Argent Tournament (A)
						["coord"] = { 76.4, 19.4, ICECROWN },
					}),
					["hordeQuestData"] = q(13839, {	-- Mastery Of The Charge (H)
						["providers"] = {
							{ "n", 33658 },	-- Amariel Sunsworn
							{ "n", 33842 },	-- Stabled Sunreaver Hawkstrider
							{ "i", 46070 },	-- Horde Lance
						},
						["sourceQuest"] = 13668,	-- The Argent Tournament (H)
						["coord"] = { 76.3, 24.3, ICECROWN },
					}),
					["groups"] = {
						objective(1, {	-- Rugan Steelbelly's advice
							["provider"] = { "n", 33972 },	-- Rugan Steelbelly <Master of the Charge>
							["coord"] = { 72.6, 18.8, ICECROWN },
						}),
						objective(2, {	-- 0/2 Use Charge on vulnerable Charge Target
							["provider"] = { "n", 33272 },	-- Charge Target
						}),
					},
				},
				{	-- Mastery Of The Shield-Breaker
					["allianceQuestData"] = q(13835, {	-- Mastery Of The Shield-Breaker (A)
						["providers"] = {
							{ "n", 33647 },	-- Scout Shalyndria
							{ "n", 33843 },	-- Stabled Quel'dorei Steed
							{ "i", 46069 },	-- Alliance Lance
						},
						["sourceQuest"] = 13667,	-- The Argent Tournament (A)
						["coord"] = { 76.5, 19.5, ICECROWN },
					}),
					["hordeQuestData"] = q(13838, {	-- Mastery Of The Shield-Breaker (H)
						["providers"] = {
							{ "n", 33659 },	-- Galathia Brightdawn
							{ "n", 33842 },	-- Stabled Sunreaver Hawkstrider
							{ "i", 46070 },	-- Horde Lance
						},
						["sourceQuest"] = 13668,	-- The Argent Tournament (H)
						["coord"] = { 76.2, 24.4, ICECROWN },
					}),
					["groups"] = {
						objective(1, {	-- Valis Windchaser's advice
							["provider"] = { "n", 33974 },	-- Valis Windchaser <Master of the Shield-Breaker>
							["coord"] = { 73.2, 19.2, ICECROWN },
						}),
						objective(2, {	-- 0/2 Use Shield-Breaker on vulnerable Ranged Target
							["provider"] = { "n", 33243 },	-- Ranged Target
						}),
					},
				},
				applyclassicphase(WRATH_PHASE_THREE, q(14102, {	-- Mistcaller Yngvar
					["qg"] = 34882,	-- High Crusader Adelard
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- Mistcaller Yngvar slain
							["providers"] = {
								{ "n", 34965 },	-- Mistcaller Yngvar
								{ "i", 47009 },	-- Mistcaller's Charm
							},
							["coord"] = { 43.8, 25.6, 170 },	-- Hrothgar's Landing
						}),
						CHAMPIONS_SEAL,
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, q(14104, {	-- Ornolf The Scarred
					["qg"] = 34882,	-- High Crusader Adelard
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- Ornolf the Scarred slain
							["providers"] = {
								{ "n", 35012 },	-- Ornolf the Scarred
								{ "i", 47029 },	-- Captured Kvaldir Banner
							},
							["coord"] = { 58.6, 31.6, 170 },	-- Hrothgar's Landing
						}),
						CHAMPIONS_SEAL,
					},
				})),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Rescue at Sea
					["allianceQuestData"] = q(14152, {	-- Rescue at Sea (A)
						["qg"] = 34880,	-- Narasi Snowdawn <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14136, {	-- Rescue at Sea (H)
						["qg"] = 34771,	-- Girana the Blooded <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Kvaldir Berserker slain
							["provider"] = { "n", 34947 },	-- Kvaldir Berserker
						}),
						objective(2, {	-- 0/3 Kvaldir Harpooner slain
							["provider"] = { "n", 34907 },	-- Kvaldir Harpooner
						}),
						CHAMPIONS_SEAL,
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- Stop The Aggressors
					["allianceQuestData"] = q(14080, {	-- Stop The Aggressors (A)
						["qg"] = 34880,	-- Narasi Snowdawn <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14140, {	-- Stop The Aggressors (H)
						["qg"] = 34771,	-- Girana the Blooded <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Kvaldir slain
							["providers"] = {
								{ "n", 34838 },	-- Kvaldir Reaver
								{ "n", 34839 },	-- Kvaldir Mist Binder
							},
						}),
						CHAMPIONS_SEAL,
					},
				}),
				q(13789, {	-- Taking Battle To The Enemy (A, non-DK)
					["qg"] = 33763,	-- Cellian Daybreak <Master of Arms>
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Cult of the Damned slain
							["providers"] = {
								{ "n", 34728 },	-- Dark Zealot <Cult of the Damned>
								{ "n", 34734 },	-- Dark Ritualist <Cult of the Damned>
								{ "n", 31738 },	-- Cultist Corrupter <Cult of the Damned>
								{ "n", 31731 },	-- Wyrm Reanimator <Cult of the Damned>
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13810, {	-- Taking Battle To The Enemy (H, non-DK)
					["qg"] = 33763,	-- Cellian Daybreak <Master of Arms>
					["sourceQuest"] = 13794,	-- Eadric the Pure
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Cult of the Damned slain
							["providers"] = {
								{ "n", 34728 },	-- Dark Zealot <Cult of the Damned>
								{ "n", 34734 },	-- Dark Ritualist <Cult of the Damned>
								{ "n", 31738 },	-- Cultist Corrupter <Cult of the Damned>
								{ "n", 31731 },	-- Wyrm Reanimator <Cult of the Damned>
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13791, {	-- Taking Battle To The Enemy (A, DK)
					["qg"] = 33769,	-- Zor'be the Bloodletter <Master of Arms>
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.8, 19.6, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Cult of the Damned slain
							["providers"] = {
								{ "n", 34728 },	-- Dark Zealot <Cult of the Damned>
								{ "n", 34734 },	-- Dark Ritualist <Cult of the Damned>
								{ "n", 31738 },	-- Cultist Corrupter <Cult of the Damned>
								{ "n", 31731 },	-- Wyrm Reanimator <Cult of the Damned>
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13813, {	-- Taking Battle To The Enemy (H, DK)
					["qg"] = 33769,	-- Zor'be the Bloodletter <Master of Arms>
					["sourceQuest"] = 13795,	-- The Scourgebane
					["coord"] = { 73.8, 19.6, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/15 Cult of the Damned slain
							["providers"] = {
								{ "n", 34728 },	-- Dark Zealot <Cult of the Damned>
								{ "n", 34734 },	-- Dark Ritualist <Cult of the Damned>
								{ "n", 31738 },	-- Cultist Corrupter <Cult of the Damned>
								{ "n", 31731 },	-- Wyrm Reanimator <Cult of the Damned>
							},
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13667, {	-- The Argent Tournament (A)
					["qg"] = 33817,	-- Justicar Mariel Trueheart
					["coord"] = { 69.6, 22.8, ICECROWN },
					["races"] = ALLIANCE_ONLY,
				}),
				q(13668, {	-- The Argent Tournament (H)
					["qg"] = 33817,	-- Justicar Mariel Trueheart
					["coord"] = { 69.6, 22.8, ICECROWN },
					["races"] = HORDE_ONLY,
				}),
				{	-- The Aspirant's Challenge
					["allianceQuestData"] = q(13679, {	-- The Aspirant's Challenge (A)
						["qg"] = 33625,	-- Arcanist Taelis
						["sourceQuest"] = 13672,	-- Up To The Challenge (A)
						["coord"] = { 76.5, 19.4, ICECROWN },
					}),
					["hordeQuestData"] = q(13680, {	-- The Aspirant's Challenge (H)
						["qg"] = 33542,	-- Magister Edien Sunhollow
						["sourceQuest"] = 13678,	-- Up To The Challenge (H)
						["coord"] = { 76.3, 24.4, ICECROWN },
					}),
					["groups"] = {
						objective(1, {	-- 0/1 Argent Valiant defeated
							["providers"] = {
								{ "n", 33448 },	-- Argent Valiant
								{ "n", 33447 },	-- Squire David
							},
							["coord"] = { 71.4, 19.6, ICECROWN },
						}),
					},
				},
				q(13634, {	-- The Black Knight of Silverpine?
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13668,	-- The Argent Tournament (H)
					["coord"] = { 69.4, 23.0, ICECROWN },
					["maps"] = { SILVERPINE_FOREST },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dusty Journal
							["providers"] = {
								{ "i",  45062 },	-- Dusty Journal
								{ "o", 194341 },	-- Dusty Journal
							},
							["coord"] = { 53.1, 28.1, SILVERPINE_FOREST },
						}),
					},
				}),
				q(13633, {	-- The Black Knight of Westfall?
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13667,	-- The Argent Tournament (A)
					["coord"] = { 69.4, 23.0, ICECROWN },
					["maps"] = { WESTFALL },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/1 Dusty Journal
							["providers"] = {
								{ "i",  45062 },	-- Dusty Journal
								{ "o", 194341 },	-- Dusty Journal
							},
							["coord"] = { 53.2, 28.1, WESTFALL },
						}),
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, q(14016, {	-- The Black Knight's Curse
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13664,	-- The Black Knight's Fall
					["coord"] = { 69.4, 23.0, ICECROWN },
					["groups"] = {
						objective(1, {	-- Investigate the Black Knight's Grave
							["provider"] = { "n", 35127 },	-- Cult Assassin
							["coord"] = { 79.4, 23.2, ICECROWN },
						}),
					},
				})),
				q(13664, {	-- The Black Knight's Fall
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuests"] = {
						13663,	-- The Black Knight's Orders
						13735,	-- A Champion Rises (A) (Darnassus)
						13733,	-- A Champion Rises (A) (Gnomeregan)
						13732,	-- A Champion Rises (A) (Ironforge)
						13702,	-- A Champion Rises (A) (Stormwind City)
						13734,	-- A Champion Rises (A) (The Exodar)
						13737,	-- A Champion Rises (H) (Darkspear Trolls)
						13736,	-- A Champion Rises (H) (Orgrimmar)
						13740,	-- A Champion Rises (H) (Silvermoon City)
						13738,	-- A Champion Rises (H) (Thunder Bluff)
						13739,	-- A Champion Rises (H) (Undercity)
					},
					["coord"] = { 69.4, 23.0, ICECROWN },
					["groups"] = {
						objective(1, {	-- Defeat the Black Knight
							["providers"] = {
								{ "n", 33785 },	-- The Black Knight
								{ "i", 45568 },	-- Bridle of the Argent Charger
								{ "n", 33870 },	-- Stabled Argent Warhorse
							},
							["coord"] = { 71.4, 23.8, ICECROWN },
						}),
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, q(14017, {	-- The Black Knight's Fate
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 14016,	-- The Black Knight's Curse
					["coord"] = { 69.4, 23.0, ICECROWN },
					["groups"] = {
						objective(1, {	-- 0/1 Doctor Kohler's Orders
							["provider"] = { "i", 47048 },	-- Doctor Kohler's Orders
							["coord"] = { 61.6, 22.6, ICECROWN },
							["cr"] = 35113,	-- Doctor Kohler
						}),
					},
				})),
				q(13663, {	-- The Black Knight's Orders
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13654,	-- There's Something About the Squire
					["coord"] = { 69.4, 23.0, ICECROWN },
					["groups"] = {
						objective(1, {	-- Black Knight's Gryphon taken
							["providers"] = {
								{ "n", 33519 },	-- Black Knight's Gryphon
								{ "i", 45083 },	-- Enchanted Bridle
							},
							["coord"] = { 77.8, 21.6, ICECROWN },
						}),
						objective(2, {	-- 0/1 Stolen Tournament Invitation
							["providers"] = {
								{ "i",  45121 },	-- Stolen Tournament Invitation
								{ "o", 194423 },	-- Stolen Tournament Invitation
							},
							["coords"] = {
								{ 40.4, 12.9, ICECROWN },
								{ 54.1, 8.6, ICECROWN },
							},
						}),
						objective(3, {	-- 0/1 Black Knight's Orders
							["providers"] = {
								{ "i",  45122 },	-- Black Knight's Orders
								{ "o", 194424 },	-- Black Knight's Orders
							},
							["coords"] = {
								{ 40.4, 12.9, ICECROWN },
								{ 54.1, 8.6, ICECROWN },
							},
						}),
					},
				}),
				q(13820, {	-- The Blastbolt Brothers
					["qg"] = 33817,	-- Justicar Mariel Trueheart <Seneschal of the Argent Tournament>
					["coord"] = { 69.6, 22.8, ICECROWN },
					["timeline"] = { ADDED_3_1_0, REMOVED_4_0_1 },
					-- #if BEFORE CATA
					["OnUpdate"] = [[function(t) t.u = _.Settings:GetUnobtainableFilter(]] .. WRATH_PHASE_THREE .. [[) and ]] .. REMOVED_FROM_GAME .. [[ or ]] .. WRATH_PHASE_TWO .. [[; end]],
					-- #endif
					["isBreadcrumb"] = true,
				}),
				q(13670, {	-- The Edge Of Winter (A) (The Silver Covenant, Aspirant)
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuests"] = {
						13828,	-- Mastery Of Melee (A)
						13837,	-- Mastery Of The Charge (A)
						13835,	-- Mastery Of The Shield-Breaker (A)
					},
					["coord"] = { 76.5, 19.4, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13759, {	-- The Edge Of Winter (A) (Darnassus, Valiant)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13748, {	-- The Edge Of Winter (A) (Gnomeregan, Valiant)
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.5, 19.8, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13743, {	-- The Edge Of Winter (A) (Ironforge, Valiant)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.5, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13616, {	-- The Edge Of Winter (A) (Stormwind City, Valiant)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.1, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13754, {	-- The Edge Of Winter (A) (The Exodar, Valiant)
					["qg"] = 33593,	-- Colosos
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13675, {	-- The Edge Of Winter (H) (The Sunreavers, Aspirant)
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuests"] = {
						13829,	-- Mastery Of Melee (H)
						13839,	-- Mastery Of The Charge (H)
						13838,	-- Mastery Of The Shield-Breaker (H)
					},
					["coord"] = { 76.2, 24.3, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13770, {	-- The Edge Of Winter (H) (Darkspear Trolls, Valiant)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 76.0, 24.5, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13764, {	-- The Edge Of Winter (H) (Orgrimmar, Valiant)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.5, 24.6, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13785, {	-- The Edge Of Winter (H) (Silvermoon City, Valiant)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13775, {	-- The Edge Of Winter (H) (Thunder Bluff, Valiant)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.2, 24.6, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13780, {	-- The Edge Of Winter (H) (Undercity, Valiant)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.2, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST, HOWLING_FJORD },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Winter's Edge
							["provider"] = { "i", 45003 },	-- Winter's Edge
						}),
						VALIANTS_SEAL,
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, q(14107, {	-- The Fate of the Fallen
					["qg"] = 35094,	-- Crusader Silverdawn
					["coord"] = { 69.4, 23.1, ICECROWN },
					["sourceAchievements"] = { 2771, 2817 },	-- Exalted Champion of the Horde / Exalted Champion of the Alliance
					["OnClick"] = CRUSADER_DAILY_OnClick,
					["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.CRUSADER_DAILY]]),
					["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/6 Fallen Hero's Spirit blessed
							["providers"] = {
								{ "n", 32149 },	-- Fallen Hero's Spirit
								{ "i", 47033 },	-- Light-Blessed Relic
								{ "o", 195344 },-- Discarded Soul Crystal
								{ "i", 47035 },	-- Discarded Soul Crystal
							},
						}),
					},
				})),
				q(13761, {	-- The Grand Melee (A) (Darnassus, Valiant)
					["qg"] = 33654,	-- Airae Starseeker
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.4, 19.0, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13717),	-- The Valiant's Charge (A) (Darnassus)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13750, {	-- The Grand Melee (A) (Gnomeregan, Valiant)
					["qg"] = 33649,	-- Flickin Gearspanner
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.5, 19.9, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13715),	-- The Valiant's Charge (A) (Gnomeregan)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13745, {	-- The Grand Melee (A) (Ironforge, Valiant)
					["qg"] = 33309,	-- Clara Tumblebrew
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.6, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13714),	-- The Valiant's Charge (A) (Ironforge)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13665, {	-- The Grand Melee (A) (Stormwind City, Valiant)
					["qg"] = 33223,	-- Captain Joseph Holley
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13718),	-- The Valiant's Charge (A) (Stormwind City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13756, {	-- The Grand Melee (A) (The Exodar, Valiant)
					["qg"] = 33656,	-- Ranii
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13716),	-- The Valiant's Charge (A) (The Exodar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13772, {	-- The Grand Melee (H) (Darkspear Trolls, Valiant)
					["qg"] = 33545,	-- Gahju
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 75.9, 24.4, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13719),	-- The Valiant's Charge (H) (Darkspear Trolls)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13767, {	-- The Grand Melee (H) (Orgrimmar, Valiant)
					["qg"] = 33544,	-- Morah Worgsister
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.4, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13697),	-- The Valiant's Charge (H) (Orgrimmar)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13787, {	-- The Grand Melee (H) (Silvermoon City, Valiant)
					["qg"] = 33548,	-- Aneera Thuron
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13722),	-- The Valiant's Charge (H) (Silvermoon City)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13777, {	-- The Grand Melee (H) (Thunder Bluff, Valiant)
					["qg"] = 33549,	-- Anka Clawhoof
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.1, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13720),	-- The Valiant's Charge (H) (Thunder Bluff)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				q(13782, {	-- The Grand Melee (H) (Undercity, Valiant)
					["qg"] = 33547,	-- Handler Dretch
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.3, ICECROWN },
					["races"] = HORDE_ONLY,
					["OnUpdate"] = VALIANT_DAILY_OnUpdate(13721),	-- The Valiant's Charge (H) (Undercity)
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 Mark of the Valiant
							["provider"] = { "i", 45127 },	-- Mark of the Valiant
							["crs"] = {
								33565,	-- Darnassus Valiant
								33562,	-- Exodar Valiant
								33558,	-- Gnomeregan Valiant
								33564,	-- Ironforge Valiant
								33561,	-- Stormwind Valiant
								33306,	-- Orgrimmar Valiant
								33285,	-- Sen'jin Valiant
								33382,	-- Silvermoon Valiant
								33383,	-- Thunder Bluff Valiant
								33384,	-- Undercity Valiant
							},
						}),
						VALIANTS_SEAL,
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- The Light's Mercy
					["allianceQuestData"] = q(14077, {	-- The Light's Mercy (A)
						["qg"] = 34880,	-- Narasi Snowdawn <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14144, {	-- The Light's Mercy (H)
						["qg"] = 34771,	-- Girana the Blooded <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Last Rites administered
							["providers"] = {
								{ "n", 34852 },	-- Slain Tualiq Villager
								{ "i", 46870 },	-- Confessor's Prayer Book
							},
						}),
						CHAMPIONS_SEAL,
					},
				}),
				q(13795, {	-- The Scourgebane
					["qg"] = 33817,	-- Justicar Mariel Trueheart
					["sourceQuests"] = {
						13735,	-- A Champion Rises (A) (Darnassus)
						13733,	-- A Champion Rises (A) (Gnomeregan)
						13732,	-- A Champion Rises (A) (Ironforge)
						13702,	-- A Champion Rises (A) (Stormwind City)
						13734,	-- A Champion Rises (A) (The Exodar)
						13737,	-- A Champion Rises (H) (Darkspear Trolls)
						13736,	-- A Champion Rises (H) (Orgrimmar)
						13740,	-- A Champion Rises (H) (Silvermoon City)
						13738,	-- A Champion Rises (H) (Thunder Bluff)
						13739,	-- A Champion Rises (H) (Undercity)
					},
					["coord"] = { 69.6, 22.8, ICECROWN },
					["classes"] = { DEATHKNIGHT },
				}),
				q(13641, {	-- The Seer's Crystal
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuests"] = {
						13633,	-- The Black Knight of Westfall? (A)
						13634,	-- The Black Knight of Silverpine? (H)
					},
					["coord"] = { 69.4, 23.0, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST },
					["groups"] = {
						objective(1, {	-- 0/1 Seer's Crystal
							["provider"] = { "i", 45064 },	-- Seer's Crystal
							["coord"] = { 47.0, 41.4, CRYSTALSONG_FOREST },
							["cr"] = 33422,	-- Unbound Seer
						}),
					},
				}),
				q(13643, {	-- The Stories Dead Men Tell
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13641,	-- The Seer's Crystal
					["coord"] = { 69.4, 23.0, ICECROWN },
					["groups"] = {
						objective(1, {	-- Sir Wendell Balfour's death investigated
							["providers"] = {
								{ "n",  33439 },	-- Sir Wendell Balfour
								{ "i",  45070 },	-- Seer's Crystal
								{ "o", 194537 },	-- Sir Wendell's Grave
							},
							["coord"] = { 79.2, 23.0, ICECROWN },
						}),
						objective(2, {	-- Lorien Sunblaze's death investigated
							["providers"] = {
								{ "n",  33455 },	-- Lorien Sunblaze
								{ "i",  45070 },	-- Seer's Crystal
								{ "o", 194539 },	-- Lorien's Grave
							},
							["coord"] = { 79.6, 23.6, ICECROWN },
						}),
						objective(3, {	-- Conall Irongrip's death investigated
							["providers"] = {
								{ "n",  33457 },	-- Conall Irongrip
								{ "i",  45070 },	-- Seer's Crystal
								{ "o", 194538 },	-- Connall's Grave
							},
							["coord"] = { 79.6, 22.8, ICECROWN },
						}),
					},
				}),
				q(13725, {	-- The Valiant's Challenge (A) (Darnassus)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuest"] = 13717,	-- The Valiant's Charge (A) (Darnassus)
					["coord"] = { 76.3, 19.0, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13723, {	-- The Valiant's Challenge (A) (Gnomeregan)
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuest"] = 13715,	-- The Valiant's Charge (A) (Gnomeregan)
					["coord"] = { 76.5, 19.8, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13713, {	-- The Valiant's Challenge (A) (Ironforge)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuest"] = 13714,	-- The Valiant's Charge (A) (Ironforge)
					["coord"] = { 76.6, 19.5, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13699, {	-- The Valiant's Challenge (A) (Stormwind City)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuest"] = 13718,	-- The Valiant's Charge (A) (Stormwind City)
					["coord"] = { 76.6, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13724, {	-- The Valiant's Challenge (A) (The Exodar)
					["qg"] = 33593,	-- Colosos
					["sourceQuest"] = 13716,	-- The Valiant's Charge (A) (The Exodar)
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13727, {	-- The Valiant's Challenge (H) (Darkspear Trolls)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuest"] = 13719,	-- The Valiant's Charge (H) (Darkspear Trolls)
					["coord"] = { 76.0, 24.5, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13726, {	-- The Valiant's Challenge (H) (Orgrimmar)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuest"] = 13697,	-- The Valiant's Charge (H) (Orgrimmar)
					["coord"] = { 76.5, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13731, {	-- The Valiant's Challenge (H) (Silvermoon City)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuest"] = 13722,	-- The Valiant's Charge (H) (Silvermoon City)
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13728, {	-- The Valiant's Challenge (H) (Thunder Bluff)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuest"] = 13720,	-- The Valiant's Charge (H) (Thunder Bluff)
					["coord"] = { 76.2, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13729, {	-- The Valiant's Challenge (H) (Undercity)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuest"] = 13721,	-- The Valiant's Charge (H) (Undercity)
					["coord"] = { 76.5, 24.2, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- Argent Champion defeated
							["provider"] = { "n", 33707 },	-- Argent Champion
							["coord"] = { 68.8, 20.4, ICECROWN },
						}),
					},
				}),
				q(13717, {	-- The Valiant's Charge (A) (Darnassus)
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13706,	-- Valiant Of Darnassus
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13715, {	-- The Valiant's Charge (A) (Gnomeregan)
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13704,	-- Valiant Of Gnomeregan
					},
					["coord"] = { 76.5, 19.8, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13714, {	-- The Valiant's Charge (A) (Ironforge)
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuests"] = {
						13685,	-- A Valiant Of Ironforge
						13703,	-- Valiant Of Ironforge
					},
					["coord"] = { 76.6, 19.5, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13718, {	-- The Valiant's Charge (A) (Stormwind City)
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuests"] = {
						13684,	-- A Valiant Of Stormwind
						13593,	-- Valiant Of Stormwind
					},
					["coord"] = { 76.6, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13716, {	-- The Valiant's Charge (A) (The Exodar)
					["qg"] = 33593,	-- Colosos
					["sourceQuests"] = {
						13690,	-- A Valiant Of The Exodar
						13705,	-- Valiant Of The Exodar
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13719, {	-- The Valiant's Charge (H) (Darkspear Trolls)
					["qg"] = 33372,	-- Zul'tore
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13708,	-- Valiant Of Sen'jin
					},
					["coord"] = { 76.0, 24.5, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13697, {	-- The Valiant's Charge (H) (Orgrimmar)
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13707,	-- Valiant Of Orgrimmar
					},
					["coord"] = { 76.5, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13722, {	-- The Valiant's Charge (H) (Silvermoon City)
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuests"] = {
						13696,	-- A Valiant Of Silvermoon
						13711,	-- Valiant Of Silvermoon
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13720, {	-- The Valiant's Charge (H) (Thunder Bluff)
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuests"] = {
						13694,	-- A Valiant Of Thunder Bluff
						13709,	-- Valiant Of Thunder Bluff
					},
					["coord"] = { 76.2, 24.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13721, {	-- The Valiant's Charge (H) (Undercity)
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuests"] = {
						13695,	-- A Valiant Of Undercity
						13710,	-- Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.2, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/25 Valiant's Seal
							["provider"] = { "i", 44987 },	-- Valiant's Seal
						}),
					},
				}),
				q(13654, {	-- There's Something About the Squire
					["qg"] = 33417,	-- Crusader Rhydalla
					["sourceQuest"] = 13643,	-- The Stories Dead Men Tell
					["coord"] = { 69.4, 23.0, ICECROWN },
					["maps"] = { CRYSTALSONG_FOREST },
					["groups"] = {
						objective(1, {	-- 0/1 Murderer's Toolkit
							["providers"] = {
								{ "i", 45082 },	-- Murderer's Toolkit
								{ "i", 45080 },	-- Large Femur
							},
							["coord"] = { 38.6, 59.6, CRYSTALSONG_FOREST },
							["cr"] = 33498,	-- Maloric <The Black Knight's Squire>
						}),
					},
				}),
				q(13682, {	-- Threat From Above (A, non-DK)
					["qg"] = 33759,	-- Eadric the Pure <Grand Champion of the Argent Crusade>
					["sourceQuests"] = {
						13794,	-- Eadric the Pure
						13664,	-- The Black Knight's Fall
					},
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Chillmaw slain
							["provider"] = { "n", 33687 },	-- Chillmaw
						}),
						objective(2, {	-- 0/3 Cultist Bombardier slain
							["provider"] = { "n", 33695 },	-- Cultist Bombardier
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13809, {	-- Threat From Above (H, non-DK)
					["qg"] = 33759,	-- Eadric the Pure <Grand Champion of the Argent Crusade>
					["sourceQuests"] = {
						13794,	-- Eadric the Pure
						13664,	-- The Black Knight's Fall
					},
					["coord"] = { 69.9, 23.4, ICECROWN },
					["classes"] = exclude(DEATHKNIGHT, ALL_CLASSES),
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Chillmaw slain
							["provider"] = { "n", 33687 },	-- Chillmaw
						}),
						objective(2, {	-- 0/3 Cultist Bombardier slain
							["provider"] = { "n", 33695 },	-- Cultist Bombardier
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13788, {	-- Threat From Above (A, DK)
					["qg"] = 33762,	-- Crok Scourgebane <Grand Champion of the Ebon Blade>
					["sourceQuests"] = {
						13795,	-- The Scourgebane
						13664,	-- The Black Knight's Fall
					},
					["coord"] = { 73.8, 20.0, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Chillmaw slain
							["provider"] = { "n", 33687 },	-- Chillmaw
						}),
						objective(2, {	-- 0/3 Cultist Bombardier slain
							["provider"] = { "n", 33695 },	-- Cultist Bombardier
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13812, {	-- Threat From Above (H, DK)
					["qg"] = 33762,	-- Crok Scourgebane <Grand Champion of the Ebon Blade>
					["sourceQuests"] = {
						13795,	-- The Scourgebane
						13664,	-- The Black Knight's Fall
					},
					["coord"] = { 73.8, 20.0, ICECROWN },
					["classes"] = { DEATHKNIGHT },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Chillmaw slain
							["provider"] = { "n", 33687 },	-- Chillmaw
						}),
						objective(2, {	-- 0/3 Cultist Bombardier slain
							["provider"] = { "n", 33695 },	-- Cultist Bombardier
						}),
						CHAMPIONS_WRIT,
						CHAMPIONS_PURSE,
					},
				}),
				q(13671, {	-- Training In The Field (A)
					["qg"] = 33646,	-- Avareth Swiftstrike
					["sourceQuests"] = {
						13828,	-- Mastery Of Melee (A)
						13837,	-- Mastery Of The Charge (A)
						13835,	-- Mastery Of The Shield-Breaker (A)
					},
					["coord"] = { 76.4, 19.4, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Icecrown Scourge slain
							["providers"] = {
								{ "n", 31718 },	-- Frostbrood Whelp
								{ "n", 31783 },	-- Vrykul Necrolord
								{ "n", 29720 },	-- Vault Geist
								{ "n", 32257 },	-- Scourge Converter
							},
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13676, {	-- Training In The Field (H)
					["qg"] = 33658,	-- Amariel Sunsworn
					["sourceQuests"] = {
						13829,	-- Mastery Of Melee (H)
						13839,	-- Mastery Of The Charge (H)
						13838,	-- Mastery Of The Shield-Breaker (H)
					},
					["coord"] = { 76.3, 24.3, ICECROWN },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Icecrown Scourge slain
							["providers"] = {
								{ "n", 31718 },	-- Frostbrood Whelp
								{ "n", 31783 },	-- Vrykul Necrolord
								{ "n", 29720 },	-- Vault Geist
								{ "n", 32257 },	-- Scourge Converter
							},
						}),
						ASPIRANTS_SEAL,
					},
				}),
				q(13672, {	-- Up To The Challenge (A)
					["qg"] = 33625,	-- Arcanist Taelis
					["sourceQuests"] = {
						13828,	-- Mastery Of Melee (A)
						13837,	-- Mastery Of The Charge (A)
						13835,	-- Mastery Of The Shield-Breaker (A)
					},
					["coord"] = { 76.5, 19.4, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Aspirant's Seal
							["provider"] = { "i", 45192 },	-- Aspirant's Seal
						}),
					},
				}),
				q(13678, {	-- Up To The Challenge (H)
					["qg"] = 33542,	-- Magister Edien Sunhollow
					["sourceQuests"] = {
						13829,	-- Mastery Of Melee (H)
						13839,	-- Mastery Of The Charge (H)
						13838,	-- Mastery Of The Shield-Breaker (H)
					},
					["coord"] = { 76.2, 24.3, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						objective(1, {	-- 0/15 Aspirant's Seal
							["provider"] = { "i", 45192 },	-- Aspirant's Seal
						}),
					},
				}),
				-- TODO: verify if these are available to allied races or not
				q(13706, {	-- Valiant Of Darnassus
					["qg"] = 33592,	-- Jaelyne Evensong
					["sourceQuests"] = {
						13688,	-- A Valiant Of Gnomeregan
						13685,	-- A Valiant Of Ironforge
						13684,	-- A Valiant Of Stormwind
						13690,	-- A Valiant Of The Exodar
					},
					["coord"] = { 76.3, 19.0, ICECROWN },
					["races"] = exclude({ NIGHTELF, WORGEN }, ALLIANCE_ONLY),
				}),
				q(13704, {	-- Valiant Of Gnomeregan
					["qg"] = 33335,	-- Ambrose Boltspark
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13685,	-- A Valiant Of Ironforge
						13684,	-- A Valiant Of Stormwind
						13690,	-- A Valiant Of The Exodar
					},
					["coord"] = { 76.5, 19.8, ICECROWN },
					["races"] = exclude(GNOME, ALLIANCE_ONLY),
				}),
				q(13703, {	-- Valiant Of Ironforge
					["qg"] = 33312,	-- Lana Stouthammer
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13688,	-- A Valiant Of Gnomeregan
						13684,	-- A Valiant Of Stormwind
						13690,	-- A Valiant Of The Exodar
					},
					["coord"] = { 76.6, 19.5, ICECROWN },
					["races"] = exclude(DWARF, ALLIANCE_ONLY),
				}),
				q(13707, {	-- Valiant Of Orgrimmar
					["qg"] = 33361,	-- Mokra the Skullcrusher
					["sourceQuests"] = {
						13693,	-- A Valiant Of Sen'jin
						13696,	-- A Valiant Of Silvermoon
						13694,	-- A Valiant Of Thunder Bluff
						13695,	-- A Valiant Of Undercity
					},
					["coord"] = { 76.5, 24.6, ICECROWN },
					["_drop"] = { "races" },
					["races"] = exclude({ ORC, GOBLIN, PANDAREN_HORDE, NIGHTBORNE, HIGHMOUNTAIN_TAUREN, ZANDALARI, VULPERA, MAGHAR, DRACTHYR_HORDE }, HORDE_ONLY),
				}),
				q(13708, {	-- Valiant Of Sen'jin
					["qg"] = 33372,	-- Zul'tore
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13696,	-- A Valiant Of Silvermoon
						13694,	-- A Valiant Of Thunder Bluff
						13695,	-- A Valiant Of Undercity
					},
					["coord"] = { 76.0, 24.5, ICECROWN },
					["races"] = exclude(TROLL, HORDE_ONLY),
				}),
				q(13711, {	-- Valiant Of Silvermoon
					["qg"] = 33379,	-- Eressea Dawnsinger
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13693,	-- A Valiant Of Sen'jin
						13694,	-- A Valiant Of Thunder Bluff
						13695,	-- A Valiant Of Undercity
					},
					["coord"] = { 76.5, 23.9, ICECROWN },
					["races"] = exclude(BLOODELF, HORDE_ONLY),
				}),
				q(13593, {	-- Valiant Of Stormwind
					["qg"] = 33225,	-- Marshal Jacob Alerius
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13688,	-- A Valiant Of Gnomeregan
						13685,	-- A Valiant Of Ironforge
						13690,	-- A Valiant Of The Exodar
					},
					["coord"] = { 76.6, 19.1, ICECROWN },
					["races"] = exclude({ HUMAN, PANDAREN_ALLIANCE, VOIDELF, LIGHTFORGED, KULTIRAN, DARKIRON, MECHAGNOME, DRACTHYR_ALLIANCE }, ALLIANCE_ONLY),
				}),
				q(13705, {	-- Valiant Of The Exodar
					["qg"] = 33593,	-- Colosos
					["sourceQuests"] = {
						13689,	-- A Valiant Of Darnassus
						13688,	-- A Valiant Of Gnomeregan
						13685,	-- A Valiant Of Ironforge
						13684,	-- A Valiant Of Stormwind
					},
					["coord"] = { 76.1, 19.1, ICECROWN },
					["races"] = exclude(DRAENEI, ALLIANCE_ONLY),
				}),
				q(13709, {	-- Valiant Of Thunder Bluff
					["qg"] = 33403,	-- Runok Wildmane
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13693,	-- A Valiant Of Sen'jin
						13696,	-- A Valiant Of Silvermoon
						13695,	-- A Valiant Of Undercity
					},
					["coord"] = { 76.2, 24.6, ICECROWN },
					["races"] = exclude(TAUREN, HORDE_ONLY),
				}),
				q(13710, {	-- Valiant Of Undercity
					["qg"] = 33373,	-- Deathstalker Visceri
					["sourceQuests"] = {
						13691,	-- A Valiant Of Orgrimmar
						13693,	-- A Valiant Of Sen'jin
						13696,	-- A Valiant Of Silvermoon
						13694,	-- A Valiant Of Thunder Bluff
					},
					["coord"] = { 76.5, 24.2, ICECROWN },
					["races"] = exclude(UNDEAD, HORDE_ONLY),
				}),
				applyclassicphase(WRATH_PHASE_THREE, {	-- What Do You Feed a Yeti, Anyway?
					["allianceQuestData"] = q(14112, {	-- What Do You Feed a Yeti, Anyway? (A)
						["qg"] = 34912,	-- Savinia Loresong <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14145, {	-- What Do You Feed a Yeti, Anyway? (H)
						["qg"] = 34914,	-- Tylos Dawnrunner <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/3 North Sea Shark Meat
							["provider"] = { "i", 47037 },	-- North Sea Shark Meat
							["crs"] = {
								35061,	-- North Sea Blue Shark
								35071,	-- North Sea Mako
								35060,	-- North Sea Thresher
							},
						}),
						CHAMPIONS_SEAL,
					},
				}, true),
				applyclassicphase(WRATH_PHASE_THREE, {	-- You've Really Done It This Time, Kul
					["allianceQuestData"] = q(14096, {	-- You've Really Done It This Time, Kul (A)
						["qg"] = 34880,	-- Narasi Snowdawn <The Silver Covenant>
						["coord"] = { 76.2, 19.6, ICECROWN },
						["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- The Silver Covenant, Exalted.
						["sourceAchievements"] = { 3676 },	-- A Silver Confidant
						["OnClick"] = SILVER_COVENTANT_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SILVER_COVENTANT_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["hordeQuestData"] = q(14142, {	-- You've Really Done It This Time, Kul (H)
						["qg"] = 34771,	-- Girana the Blooded <The Sunreavers>
						["coord"] = { 76.1, 24.0, ICECROWN },
						["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
						["sourceAchievements"] = { 3677 },	-- The Sunreavers
						["OnClick"] = SUNREAVERS_DAILY_OnClick,
						["OnUpdate"] = CLASSIC_ONLY_DB_FUNC([[_.OnUpdateDB.SUNREAVERS_DAILY]]),
						["OnTooltip"] = CLASSIC_ONLY_DB_FUNC([[_.OnTooltipDB.WithRequiredAchievement]]),
					}),
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- Kul the Reckless rescued
							["provider"] = { "n", 34956 },	-- Kul the Reckless
							["coord"] = { 60.8, 23.0, ICECROWN },
						}),
						objective(2, {	-- 0/4 Captive Aspirant rescued
							["provider"] = { "n", 34716 },	-- Captive Aspirant
						}),
						CHAMPIONS_SEAL,
					},
				}, true),
			}),
			applyclassicphase(WRATH_PHASE_FOUR, header(HEADERS.Item, 50379,	-- Battered Hilt (A)
			bubbleDownSelf({ ["races"] = ALLIANCE_ONLY }, {
				["groups"] = {
					a(q(14443, {	-- The Battered Hilt (A)
						["provider"] = { "i", 50379 },	-- Battered Hilt (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["description"] = "The Battered Hilt is a somewhat rare drop from the Icecrown dungeons 'Forge of Souls', 'Pit of Saron', and 'The Halls of Reflection'. Alternatively it can also be bought from the Auction House.",
					})),
					q(14444, {	-- What The Dragons Know (A)
						["qg"] = 36624,	-- Caladis Brightspear <The Silver Covenant>
						["sourceQuest"] = 14443,	-- The Battered Hilt (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { DRAGONBLIGHT },
						["groups"] = {
							objective(1, {	-- Ask Krasus about the hilt's origins
								["provider"] = { "n", 27990 },	-- Krasus
								["coord"] = { 59.8, 54.6, DRAGONBLIGHT },
							}),
						},
					}),
					q(14457, {	-- The Sunreaver Plan
						["qg"] = 36669,	-- Arcanist Tybalin
						["sourceQuest"] = 14444,	-- What The Dragons Know (A)
						["coord"] = { 39.6, 57.6, NORTHREND_THE_UNDERBELLY },
						["groups"] = {
							objective(1, {	-- 0/1 Sunreaver Orders
								["provider"] = { "i", 49536 },	-- Sunreaver Orders
								["coord"] = { 62.6, 15.0, NORTHREND_THE_UNDERBELLY },
								["cr"] = 36776,	-- Sunreaver Agent
							}),
						},
					}),
					q(20438, {	-- A Suitable Disguise (A)
						["qg"] = 36669,	-- Arcanist Tybalin
						["sourceQuest"] = 14457,	-- The Sunreaver Plan
						["coord"] = { 39.6, 57.6, NORTHREND_DALARAN },
						["groups"] = {
							objective(1, {	-- 0/1 Borrowed Tabard
								["provider"] = { "i", 49648 },	-- Borrowed Tabard
								["coord"] = { 44.4, 47.6, NORTHREND_DALARAN },
								["cr"] = 36856,	-- Shandy Glossgleam
							}),
						},
					}),
					q(20439, {	-- A Meeting With The Magister
						["qg"] = 36669,	-- Arcanist Tybalin
						["sourceQuest"] = 20438,	-- A Suitable Disguise (A)
						["coord"] = { 39.6, 57.6, NORTHREND_DALARAN },
						["groups"] = {
							objective(1, {	-- 0/1 Ancient Dragonforged Blades
								["provider"] = { "i", 49698 },	-- Ancient Dragonforged Blades
								["coord"] = { 69.8, 31.6, NORTHREND_DALARAN },
								["cr"] = 36670,	-- Magister Hathorel <The Sunreavers>
							}),
						},
					}),
					q(24454, {	-- Return To Caladis Brightspear
						["providers"] = {
							{ "n", 36669 },	-- Arcanist Tybalin
							{ "i", 49698 },	-- Ancient Dragonforged Blades
						},
						["sourceQuest"] = 20439,	-- A Meeting With The Magister (A)
						["coord"] = { 39.6, 57.6, NORTHREND_DALARAN },
						["description"] = "Turning in this quest triggers a lore exposition.",
					}),
					q(24461, {	-- Reforging The Sword (A)
						["qg"] = 36624,	-- Caladis Brightspear <The Silver Covenant>
						["sourceQuest"] = 24454,	-- Return To Caladis Brightspear (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { PIT_OF_SARON },
						["groups"] = {
							objective(1, {	-- 0/1 Reforged Quel'Delar
								["provider"] = { "i", 49739 },	-- Reforged Quel'Delar
								["cost"] = {
									{ "i", 49718, 5 },	-- Infused Saronite Bar
									{ "i", 49740, 1 },	-- Remnants of Quel'Delar
									{ "i", 49723, 1 },	-- The Forgemaster's Hammer
								},
								["cr"] = 36494,	-- Forgemaster Garfrost
							}),
						},
					}),
					q(24476, {	-- Tempering The Blade (A)
						["qg"] = 36624,	-- Caladis Brightspear <The Silver Covenant>
						["sourceQuest"] = 24461,	-- Reforging The Sword (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { THE_FORGE_OF_SOULS },
						["groups"] = {
							objective(1, {	-- 0/1 Tempered Quel'Delar
								["providers"] = {
									{ "i", 49750 },	-- Tempered Quel'Delar
									{ "i", 49920 },	-- Reforged Quel'Delar
									{ "n", 37094 },	-- Crucible of Souls
								},
							}),
						},
					}),
					q(24480, {	-- The Halls Of Reflection (A)
						["qg"] = 36624,	-- Caladis Brightspear <The Silver Covenant>
						["sourceQuest"] = 24476,	-- Tempering The Blade (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { HALLS_OF_REFLECTION },
						["groups"] = {
							objective(1, {	-- 0/1 Subdued Quel'Delar
								["providers"] = {
									{ "i", 50254 },	-- Subdued Quel'Delar
									{ "i", 49766 },	-- Tempered Quel'Delar
									{ "n", 37158 },	-- Quel'Delar
								},
							}),
						},
						["description"] = "Just enter the instance and a special event will unfold. There is no need to talk to Jaina.",
					}),
					q(24522, {	-- Journey To The Sunwell (A)
						["providers"] = {
							{ "n", 36624 },	-- Caladis Brightspear <The Silver Covenant>
							{ "i", 49870 },	-- Tempered Quel'Delar
						},
						["sourceQuest"] = 24480,	-- The Halls Of Reflection (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { ISLE_OF_QUELDANAS },
						["description"] = "If you accidentally enter the raid before turning in the quest, you will have to use your hearthstone to get out or walk through the whole empty instance to a portal at the end.",
					}),
					q(24535, {	-- Thalorien Dawnseeker (A)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24522,	-- Journey To The Sunwell
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["groups"] = {
							objective(1, {	-- 0/1 Thalorien's Blessing obtained
								["providers"] = {
									{ "n", 37552 },	-- Thalorien Dawnseeker's Remains
									{ "n", 37205 },	-- Thalorien Dawnseeker
								},
								["coord"] = { 53.0, 80.2, ISLE_OF_QUELDANAS },
							}),
						},
					}),
					q(24553, {	-- The Purification of Quel'Delar (A)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24535,	-- Thalorien Dawnseeker (A)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["maps"] = { 336 },	-- Shrine of the Eclipse, Sunwell Plataeu
						["classes"] = exclude({ PRIEST, SHAMAN, DRUID }, ALL_CLASSES),
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24595, {	-- The Purification of Quel'Delar (A — Maces)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24535,	-- Thalorien Dawnseeker (A)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["maps"] = { 336 },	-- Shrine of the Eclipse, Sunwell Plataeu
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24796, {	-- A Victory For The Silver Covenant (A)
						["providers"] = {
							{ "n", 36624 },	-- Caladis Brightspear <The Silver Covenant>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24553,	-- The Purification of Quel'Delar (A)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["classes"] = exclude({ PRIEST, SHAMAN, DRUID }, ALL_CLASSES),
						["_drop"] = { "g" },
					}),
					q(24795, {	-- A Victory For The Silver Covenant (A — Maces)
						["providers"] = {
							{ "n", 36624 },	-- Caladis Brightspear <The Silver Covenant>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24595,	-- The Purification of Quel'Delar [A - Maces]
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["_drop"] = { "g" },
					}),
				},
			}))),
			applyclassicphase(WRATH_PHASE_FOUR, header(HEADERS.Item, 50380,	-- Battered Hilt (H)
			bubbleDownSelf({ ["races"] = HORDE_ONLY }, {
				["groups"] = {
					q(24554, {	-- The Battered Hilt (H)
						["provider"] = { "i", 50380 },	-- Battered Hilt (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["description"] = "The Battered Hilt is a somewhat rare drop from the Icecrown dungeons 'The Forge of Souls', 'The Pit of Saron', and 'The Halls of Reflection'. Alternatively it can also be bought from the Auction House.",
					}),
					q(24555, {	-- What The Dragons Know (H)
						["qg"] = 36642,	-- Myralion Sunblaze <Sunreavers>
						["sourceQuest"] = 24554,	-- The Battered Hilt (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { DRAGONBLIGHT },
						["groups"] = {
							objective(1, {	-- Ask Krasus about the hilt's origins
								["provider"] = { "n", 27990 },	-- Krasus
								["coord"] = { 59.8, 54.6, DRAGONBLIGHT },
							}),
						},
					}),
					q(24557, {	-- The Silver Covenant's Scheme
						["qg"] = 36670,	-- Magister Hathorel <The Sunreavers>
						["sourceQuest"] = 24555,	-- What The Dragons Know
						["coord"] = { 69.8, 31.6, NORTHREND_DALARAN },
						["maps"] = { NORTHREND_THE_UNDERBELLY },
						["groups"] = {
							objective(1, {	-- 0/1 Silver Covenant Orders
								["provider"] = { "i", 49872 },	-- Silver Covenant Orders
								["coord"] = { 36.0, 53.8, NORTHREND_THE_UNDERBELLY },
								["cr"] = 36774,	-- Silver Covenant Agent
							}),
						},
					}),
					q(24556, {	-- A Suitable Disguise (H)
						["qg"] = 36670,	-- Magister Hathorel <The Sunreavers>
						["sourceQuest"] = 24557,	-- The Silver Covenant's Scheme (H)
						["coord"] = { 69.8, 31.6, NORTHREND_DALARAN },
						["groups"] = {
							objective(1, {	-- 0/1 Borrowed Tabard
								["provider"] = { "i", 49648 },	-- Borrowed Tabard
								["coord"] = { 44.4, 47.6, NORTHREND_DALARAN },
								["cr"] = 36856,	-- Shandy Glossgleam
							}),
						},
					}),
					q(24451, {	-- An Audience With The Arcanist
						["qg"] = 36670,	-- Magister Hathorel <The Sunreavers>
						["sourceQuest"] = 24556,	-- A Suitable Disguise (H)
						["coord"] = { 69.8, 31.6, NORTHREND_DALARAN },
						["groups"] = {
							objective(1, {	-- 0/1 Ancient Dragonforged Blades
								["provider"] = { "i", 49698 },	-- Ancient Dragonforged Blades
								["coord"] = { 39.6, 57.6, NORTHREND_DALARAN },
								["cr"] = 36669,	-- Arcanist Tybalin
							}),
						},
					}),
					q(24558, {	-- Return To Myralion Sunblaze
						["providers"] = {
							{ "n", 36670 },	-- Magister Hathorel <The Sunreavers>
							{ "i", 49698 },	-- Ancient Dragonforged Blades
						},
						["sourceQuest"] = 24451,	-- An Audience With The Arcanist (H)
						["coord"] = { 69.8, 31.6, NORTHREND_DALARAN },
						["description"] = "Turning in this quest triggers a lore exposition.",
					}),
					q(24559, {	-- Reforging The Sword (H)
						["qg"] = 36642,	-- Myralion Sunblaze <Sunreavers>
						["sourceQuest"] = 24558,	-- Return To Myralion Sunblaze (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { PIT_OF_SARON },
						["groups"] = {
							objective(1, {	-- 0/1 Reforged Quel'Delar
								["provider"] = { "i", 49739 },	-- Reforged Quel'Delar
								["cost"] = {
									{ "i", 49718, 5 },	-- Infused Saronite Bar
									{ "i", 49740, 1 },	-- Remnants of Quel'Delar
									{ "i", 49723, 1 },	-- The Forgemaster's Hammer
								},
								["cr"] = 36494,	-- Forgemaster Garfrost
							}),
						},
					}),
					q(24560, {	-- Tempering The Blade (H)
						["qg"] = 36642,	-- Myralion Sunblaze <Sunreavers>
						["sourceQuest"] = 24559,	-- Reforging The Sword (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { THE_FORGE_OF_SOULS },
						["groups"] = {
							objective(1, {	-- 0/1 Tempered Quel'Delar
								["providers"] = {
									{ "i", 49750 },	-- Tempered Quel'Delar
									{ "i", 49920 },	-- Reforged Quel'Delar
									{ "n", 37094 },	-- Crucible of Souls
								},
							}),
						},
					}),
					q(24561, {	-- The Halls Of Reflection (H)
						["qg"] = 36642,	-- Myralion Sunblaze <Sunreavers>
						["sourceQuest"] = 24560,	-- Tempering The Blade (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { HALLS_OF_REFLECTION },
						["groups"] = {
							objective(1, {	-- 0/1 Subdued Quel'Delar
								["providers"] = {
									{ "i", 50254 },	-- Subdued Quel'Delar
									{ "i", 49766 },	-- Tempered Quel'Delar
									{ "n", 37158 },	-- Quel'Delar
								},
							}),
						},
						["description"] = "Just enter the instance and a special event will unfold. There is no need to talk to Sylvanas.",
					}),
					q(24562, {	-- Journey To The Sunwell (H)
						["providers"] = {
							{ "n", 36642 },	-- Myralion Sunblaze <Sunreavers>
							{ "i", 49870 },	-- Tempered Quel'Delar
						},
						["sourceQuest"] = 24561,	-- The Halls Of Reflection (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { ISLE_OF_QUELDANAS },
						["description"] = "If you accidentally enter the raid before turning in the quest, you will have to use your hearthstone to get out or walk through the whole empty instance to a portal at the end.",
					}),
					q(24563, {	-- Thalorien Dawnseeker (H)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24562,	-- Journey To The Sunwell
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["groups"] = {
							objective(1, {	-- 0/1 Thalorien's Blessing obtained
								["providers"] = {
									{ "n", 37552 },	-- Thalorien Dawnseeker's Remains
									{ "n", 37205 },	-- Thalorien Dawnseeker
								},
								["coord"] = { 53.0, 80.2, ISLE_OF_QUELDANAS },
							}),
						},
					}),
					q(24564, {	-- The Purification of Quel'Delar (H)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24563,	-- Thalorien Dawnseeker (H)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["classes"] = exclude({ PRIEST, SHAMAN, DRUID }, ALL_CLASSES),
						["races"] = exclude(BLOODELF, HORDE_ONLY),
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24598, {	-- The Purification of Quel'Delar (H — Maces)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24563,	-- Thalorien Dawnseeker (H)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["races"] = exclude(BLOODELF, HORDE_ONLY),
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24594, {	-- The Purification of Quel'Delar (Blood Elf)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24563,	-- Thalorien Dawnseeker (H)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["classes"] = exclude({ PRIEST, SHAMAN, DRUID }, ALL_CLASSES),
						["races"] = { BLOODELF },
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24596, {	-- The Purification of Quel'Delar (Blood Elf — Maces)
						["qg"] = 37527,	-- Halduron Brightwing <Ranger-General of Silvermoon>
						["sourceQuest"] = 24563,	-- Thalorien Dawnseeker (H)
						["coord"] = { 44.6, 45.4, ISLE_OF_QUELDANAS },
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["races"] = { BLOODELF },
						["groups"] = {
							objective(1, {	-- 0/1 Restored Quel'Delar
								["providers"] = {
									{ "i",  49871 },	-- Restored Quel'Delar
									{ "i",  49879 },	-- Tainted Quel'Delar
									{ "o", 201794 },	-- Quel'Delar
								},
							}),
						},
					}),
					q(24801, {	-- A Victory For The Sunreavers (H)
						["providers"] = {
							{ "n", 36642 },	-- Myralion Sunblaze <Sunreavers>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24564,	-- The Purification of Quel'Delar (H)
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["races"] = exclude(BLOODELF, HORDE_ONLY),
						["_drop"] = { "g" },
					}),
					q(24799, {	-- A Victory For The Sunreavers [H - Maces]
						["providers"] = {
							{ "n", 36642 },	-- Myralion Sunblaze <Sunreavers>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24598,	-- The Purification of Quel'Delar [H - Maces]
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["races"] = exclude(BLOODELF, HORDE_ONLY),
						["_drop"] = { "g" },
					}),
					q(24800, {	-- A Victory For The Sunreavers [Blood Elves]
						["providers"] = {
							{ "n", 36642 },	-- Myralion Sunblaze <Sunreavers>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24594,	-- The Purification of Quel'Delar [Blood Elves]
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["classes"] = exclude({ PRIEST, SHAMAN, DRUID }, ALL_CLASSES),
						["races"] = { BLOODELF },
						["_drop"] = { "g" },
					}),
					q(24798, {	-- A Victory For The Sunreavers [Blood Elves - Maces]
						["providers"] = {
							{ "n", 36642 },	-- Myralion Sunblaze <Sunreavers>
							{ "i", 49871 },	-- Restored Quel'Delar
						},
						["sourceQuest"] = 24596,	-- The Purification of Quel'Delar [Blood Elves - Maces]
						["coord"] = { 74.2, 31.2, ICECROWN },
						["maps"] = { NORTHREND_DALARAN },
						["classes"] = { PRIEST, SHAMAN, DRUID },
						["races"] = { BLOODELF },
						["_drop"] = { "g" },
					}),
				},
			}))),
			n(TREASURES, {
				o(194618, {	-- Lance Rack
					["coord"] = { 75.9, 19.8, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(46069, {	-- Alliance Lance
							-- #IF BEFORE 7.0.0
							["ignoreSource"] = true,
							-- #ENDIF
						}),
					},
				}),
				o_repeated({	-- Lance Rack
					["coord"] = { 48.8, 71.3, ICECROWN },
					["maps"] = { TRIAL_OF_THE_CHAMPION },
					["g"] = {
						o(194908),	-- Lance Rack
						o(194909),	-- Lance Rack
						i(46106, {	-- Argent Lance
							-- #IF BEFORE 7.0.0
							["ignoreSource"] = true,
							-- #ENDIF
						}),
					},
				}),
				o(194622, {	-- Lance Rack
					["coord"] = { 76.0, 23.6, ICECROWN },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(46070, {	-- Horde Lance
							-- #IF BEFORE 7.0.0
							["ignoreSource"] = true,
							-- #ENDIF
						}),
					},
				}),
			}),
			n(VENDORS, {
				n(COMMON_VENDOR_ITEMS, {
					champ(150, i(45725, {	-- Argent Hippogryph (MOUNT!)
						["crs"] = {
							33307,	-- Corporal Arthur Flew <Stormwind Quartermaster>
							33310,	-- Derrick Brindlebeard <Ironforge Quartermaster>
							33556,	-- Doru Thunderhorn <Thunder Bluff Quartermaster>
							33555,	-- Eliza Killian <Undercity Quartermaster>
							33553,	-- Freka Bloodaxe <Orgrimmar Quartermaster>
							33657,	-- Irisee <Exodar Quartermaster>
							33650,	-- Rillie Spindlenut <Gnomeregan Quartermaster>
							33653,	-- Rook Hawkfist <Darnassus Quartermaster>
							33554,	-- Samamba <Sen'jin Quartermaster>
							33557,	-- Trellis Morningsun <Silvermoon Quartermaster>
						},
					})),
					champ(25, i(122232, {	-- Music Roll: The Argent Tournament
						["timeline"] = { ADDED_6_1_0 },
						["crs"] = {
							33307,	-- Corporal Arthur Flew <Stormwind Quartermaster>
							33310,	-- Derrick Brindlebeard <Ironforge Quartermaster>
							33556,	-- Doru Thunderhorn <Thunder Bluff Quartermaster>
							33555,	-- Eliza Killian <Undercity Quartermaster>
							33553,	-- Freka Bloodaxe <Orgrimmar Quartermaster>
							33657,	-- Irisee <Exodar Quartermaster>
							33650,	-- Rillie Spindlenut <Gnomeregan Quartermaster>
							33653,	-- Rook Hawkfist <Darnassus Quartermaster>
							33554,	-- Samamba <Sen'jin Quartermaster>
							33557,	-- Trellis Morningsun <Silvermoon Quartermaster>
						},
					})),
					n(FACTION_HEADER_ALLIANCE, {
						["races"] = ALLIANCE_ONLY,
						["crs"] = {
							33307,	-- Corporal Arthur Flew <Stormwind Quartermaster>
							33310,	-- Derrick Brindlebeard <Ironforge Quartermaster>
							33657,	-- Irisee <Exodar Quartermaster>
							33650,	-- Rillie Spindlenut <Gnomeregan Quartermaster>
							33653,	-- Rook Hawkfist <Darnassus Quartermaster>
						},
						["groups"] = {
							champ(25, i(45130)),	-- Blunderbuss of Khaz Modan
							champ(25, i(164932, {	-- Grapeshotter of Khaz Modan
								["timeline"] = { ADDED_8_1_0 },
								["groups"] = {
									i(164933, {	-- Sen'jin Beakblade Longrifle
										["description"] = "This Horde item will be automatically learned after buying the Alliance version.",
										["timeline"] = { ADDED_8_1_0 },
									}),
								},
							})),
							champ(25, i(45074)),	-- Claymore of the Prophet
							champ(25, i(45078)),	-- Dagger of Lunar Purity
							champ(25, i(45077)),	-- Dagger of the Rising Moon
							champ(25, i(45129)),	-- Bonechopper
							champ(25, i(45075)),	-- Ironforge Smasher
							champ(25, i(45128)),	-- Silvery Sylvan Stave
							champ(25, i(45076)),	-- Teldrassil Protector
							champ(10, i(45155)),	-- Choker of Spiral Focus
							champ(10, i(45154)),	-- Necklace of Valiant Blood
							champ(10, i(45152)),	-- Pendant of Azure Dreams
							champ(10, i(45153)),	-- Susurrating Shell Necklace
							champ(10, i(45182)),	-- Gauntlets of Shattered Pride
							champ(10, i(45184)),	-- Cinch of Bonded Servitude
							champ(10, i(45160)),	-- Girdle of Valorous Defeat
							champ(10, i(45156)),	-- Sash of Shattering Hearts
							champ(10, i(45181)),	-- Wrap of the Everliving Tree
							champ(10, i(45163)),	-- Stanchions of Unseatable Furor
							champ(10, i(45159)),	-- Treads of Nimble Evasion
							champ(10, i(45183)),	-- Treads of the Glorious Spirit
							champ(10, i(45131)),	-- Jouster's Fury (A)
						},
					}),
					n(FACTION_HEADER_HORDE, {
						["races"] = HORDE_ONLY,
						["crs"] = {
							33556,	-- Doru Thunderhorn <Thunder Bluff Quartermaster>
							33555,	-- Eliza Killian <Undercity Quartermaster>
							33553,	-- Freka Bloodaxe <Orgrimmar Quartermaster>
							33554,	-- Samamba <Sen'jin Quartermaster>
							33557,	-- Trellis Morningsun <Silvermoon Quartermaster>
						},
						["groups"] = {
							champ(25, i(45204)),	-- Axe of the Sen'jin Protector
							champ(25, i(45208)),	-- Blade of the Keening Banshee
							champ(25, i(45205)),	-- Greatsword of the Sin'dorei
							champ(25, i(45203)),	-- Grimhorn Crusher
							champ(25, i(45214)),	-- Scalpel of the Royal Apothecary
							champ(25, i(45210)),	-- Sen'jin Beakblade Longrifle
							champ(25, i(45222)),	-- Spinal Destroyer
							champ(25, i(45212)),	-- Staff of Feral Furies
							champ(10, i(45206)),	-- Choker of Feral Fury
							champ(10, i(45207)),	-- Necklace of Stolen Skulls
							champ(10, i(45213)),	-- Pendant of Emerald Crusader
							champ(10, i(45223)),	-- Razor's Edge Pendant
							champ(10, i(45216)),	-- Gauntlets of Mending Touch
							champ(10, i(45217)),	-- Clinch of Savage Fury
							champ(10, i(45215)),	-- Links of Unquenched Savagery
							champ(10, i(45209)),	-- Sash of Trumpeted Pride
							champ(10, i(45211)),	-- Waistguard of Equine Fury
							champ(10, i(45218)),	-- Blood-Caked Stompers
							champ(10, i(45220)),	-- Treads of the Earnest Squire
							champ(10, i(45221)),	-- Treads of Whispering Dreams
							champ(10, i(45219)),	-- Jouster's Fury (H)
						},
					}),
				}),
				n(33602, {	-- Anuur <Jewelcrafting Supplies>
					["coord"] = { 71.4, 20.8, ICECROWN },
					["sym"] = {
						{"sub", "common_recipes_vendor", 28721},	-- Tiffany Cartier <Jewelcrafting Supplies>
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, n(35573, {	-- Arcanist Asarina <Legacy Justice Quartermaster>
					["coord"] = { 75.2, 21.6, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
					-- Normal items here
						i(47732),	-- Band of the Invoker
						i(47729),	-- Bloodshed Band
						i(47658),	-- Brimstone Igniter
						i(47731),	-- Clutch of Fortification
						i(47556),	-- Crusader Orb
						i(47730),	-- Dexterous Brightstone Ring
						i(47708),	-- Duskstalker Shoulderpads
						i(47704),	-- Epaulets of the Devourer
						i(47677),	-- Faceplate of the Honorbound
						i(47735),	-- Glyph of Indomitability
						i(47733),	-- Heartmender Circle
						i(47681),	-- Heaume of the Restless Watch
						i(47690),	-- Helm of Abundant Growth
						i(47694),	-- Helm of Clouded Sight
						i(47686),	-- Helm of Inner Warmth
						i(47685),	-- Helm of the Brooding Dragon
						i(47674),	-- Helm of Thunderous Rampage
						i(47693),	-- Hood of Fiery Aftermath
						i(47689),	-- Hood of Lethal Intent
						i(47713),	-- Mantle of Catastrophic Emanation
						i(47707),	-- Mantle of the Groundbreaker
						i(47734),	-- Mark of Supremacy
						i(47715),	-- Pauldrons of Revered Mortality
						i(47702),	-- Pauldrons of the Cavalier
						i(47697),	-- Pauldrons of Trembling Rage
						i(48722),	-- Shard of the Crystal Heart
						i(47698),	-- Shoulderplates of Enduring Order
						i(47712),	-- Shoulders of the Fateful Accord
						i(48724),	-- Talisman of Resurgence
					},
				-- We have a different Vendor with the same PvP Items in Dalaran listed. Both of them sell the Furious Gladiator Items for Gold.
				-- For sake of numbers we use Symlink on the 2nd NPC. First NPC under Outdoor>Northrend>Dalaran>Factions
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{"merge"},
						{"exclude", "itemID", 146550 },	-- Exclude DK Ensemble
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", WEAPONS, BACK, WRIST, WAIST, FEET, NECK, FINGER, TRINKET },	-- Exclude Weapon, Back, Wrist, Waist, Feet Neck, Finger and Trinkets
						{"pop"},	-- Discard Class headers
						{"is","sourceID"},	-- Only Items with SourceID (exclude Ensembles from PvP listing)
					},
				})),
				n(33853, {	-- Broxel Goldgrasp <Souvenirs>
					["coord"] = { 73.0, 23.0, ICECROWN },
					["groups"] = {
						i(45670),	-- Darnassus Doublet
						i(45668),	-- Exodar Doublet
						i(45671),	-- Gnomeregan Doublet
						i(45666),	-- Ironforge Doublet
						i(45672, {	-- Orgrimmar Doublet
							["_drop"] = { "races" },	-- bad API data
							["races"] = HORDE_ONLY,	-- Blizz tagged them for 2 Alliance Races
						}),
						i(45669, {	-- Sen'jin Doublet
							["_drop"] = { "races" },	-- bad API data
							["races"] = HORDE_ONLY,	-- Blizz tagged them for 2 Alliance Races
						}),
						i(45664, {	-- Silvermoon Doublet
							["_drop"] = { "races" },	-- bad API data
							["races"] = HORDE_ONLY,	-- Blizz tagged them for 2 Alliance Races
						}),
						i(45667),	-- Stormwind Doublet
						i(45673, {	-- Thunder Bluff Doublet
							["_drop"] = { "races" },	-- bad API data
							["races"] = HORDE_ONLY,	-- Blizz tagged them for 2 Alliance Races
						}),
						i(45674, {	-- Undercity Doublet
							["_drop"] = { "races" },	-- bad API data
							["races"] = HORDE_ONLY,	-- Blizz tagged them for 2 Alliance Races
						}),
					},
				}),
				n(33307, {	-- Corporal Arthur Flew <Stormwind Quartermaster>
					["coord"] = { 76.4, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						writ(i(45718)),	-- Stormwind Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45574)),	-- Stormwind Tabard
						-- #else
						i(45574),	-- Stormwind Tabard
						-- #endif
						champ(100, i(45125)),	-- Stormwind Steed (MOUNT!)
						champ(5, gold(500, i(46752, {	-- Swift Gray Steed (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { HUMAN },
							-- #endif
						}))),
						champ(5, gold(500, i(46758, {	-- Swift Gray Steed (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(HUMAN, ALLIANCE_ONLY),
							-- #endif
						}))),
						champ(40, i(44974)),	-- Elwynn Lamb Pet (PET!)
						champ(15, i(45011)),	-- Stormwind Banner (TOY!)
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, n(34885, {	-- Dame Evniki Kapsalis <Crusader's Quartermaster>
					["coord"] = { 69.4, 23.1, ICECROWN },
					["groups"] = {
						champ(55, i(122338, {	-- Ancient Heirloom Armor Casing
							["timeline"] = { ADDED_6_1_0 },
							["sym"] = { { "fill" } },	-- simply fill this item
						})),
						champ(65, i(122339, {	-- Ancient Heirloom Scabbard
							["timeline"] = { ADDED_6_1_0 },
							["sym"] = { { "fill" } },	-- simply fill this item
						})),
						champ(100, i(47179, {	-- Argent Charger (MOUNT!)
							["classes"] = { PALADIN },
						})),
						champ(15, i(46843)),	-- Argent Crusader's Banner (TOY!)
						champ(50, i(46874)),	-- Argent Crusader's Tabard
						champ(150, i(47541)),	-- Argent Pony Bridle
						champ(100, i(47180)),	-- Argent Warhorse (MOUNT!)

						-- Old Heirlooms
						-- NOTE: The champion seal costs might be different prior to 6.2, double check when the vendor becomes available
						champ(25, i(42944, {	-- Balanced Heartseeker
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(40, i(42943, {	-- Bloodied Arcanite Reaper
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(69893, {	-- Bloodsoaked Skullforge Reaver
							["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
						})),
						champ(25, i(69889, {	-- Burnished Breastplate of Might
							["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
						})),
						champ(25, i(69890, {	-- Burnished Pauldrons of Might
							["timeline"] = { ADDED_4_1_0, REMOVED_6_1_0 },
						})),
						champ(40, i(79131, {	-- Burnished Warden Staff
							["timeline"] = { ADDED_5_0_4, REMOVED_6_1_0 },
						})),
						champ(25, i(42950, {	-- Champion Herod's Shoulder
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48677, {	-- Champion's Deathdealer Breastplate
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(40, i(42946, {	-- Charmed Ancient Bone Bow
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42948, {	-- Devout Aurastone Hammer
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(40, i(42947, {	-- Dignified Headmaster's Charge
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(35, i(42992, {	-- Discerning Eye of the Beast
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(93902, {	-- Flamescarred Draconian Deflector
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						})),
						champ(25, i(93904, {	-- Musty Tome of the Lost
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						})),
						champ(25, i(42951, {	-- Mystical Pauldrons of Elements
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48683, {	-- Mystical Vest of Elements
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48685, {	-- Polished Breastplate of Valor
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42949, {	-- Polished Spaulders of Valor
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48687, {	-- Preened Ironfeather Breastplate
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42984, {	-- Preened Ironfeather Shoulders
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(40, i(48718, {	-- Repurposed Lava Dredger
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42952, {	-- Stained Shadowcraft Spaulders
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48689, {	-- Stained Shadowcraft Tunic
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(35, i(42991, {	-- Swift Hand of Justice
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42985, {	-- Tattered Dreadmist Mantle
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48691, {	-- Tattered Dreadmist Robe
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(42945, {	-- Venerable Dal'Rend's Sacred Charge
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(48716, {	-- Venerable Mass of McGowan
							["timeline"] = { REMOVED_6_1_0 },
						})),
						champ(25, i(93903, {	-- Weathered Observer's Shield
							["timeline"] = { ADDED_5_2_0, REMOVED_6_1_0 },
						})),

						-- New Heirlooms
						champ(25, i(122350, {	-- Balanced Heartseeker
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(40, i(122349, {	-- Bloodied Arcanite Reaper
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122389, {	-- Bloodsoaked Skullforge Reaver
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122387, {	-- Burnished Breastplate of Might
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122388, {	-- Burnished Pauldrons of Might
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(40, i(122363, {	-- Burnished Warden Staff
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122356, {	-- Champion Herod's Shoulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122379, {	-- Champion's Deathdealer Breastplate
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(40, i(122352, {	-- Charmed Ancient Bone Bow
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122354, {	-- Devout Aurastone Hammer
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(40, i(122353, {	-- Dignified Headmaster's Charge
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(35, i(122362, {	-- Discerning Eye of the Beast
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122391, {	-- Flamescarred Draconian Deflector
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122390, {	-- Musty Tome of the Lost
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122357, {	-- Mystical Pauldrons of Elements
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122380, {	-- Mystical Vest of Elements
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122381, {	-- Polished Breastplate of Valor
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122355, {	-- Polished Spaulders of Valor
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122382, {	-- Preened Ironfeather Breastplate
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122359, {	-- Preened Ironfeather Shoulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(40, i(122386, {	-- Repurposed Lava Dredger
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122358, {	-- Stained Shadowcraft Spaulders
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122383, {	-- Stained Shadowcraft Tunic
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(35, i(122361, {	-- Swift Hand of Justice
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122360, {	-- Tattered Dreadmist Mantle
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122384, {	-- Tattered Dreadmist Robe
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122351, {	-- Venerable Dal'Rend's Sacred Charge
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122385, {	-- Venerable Mass of McGowan
							["timeline"] = { ADDED_6_1_0 },
						})),
						champ(25, i(122392, {	-- Weathered Observer's Shield
							["timeline"] = { ADDED_6_1_0 },
						})),
					},
				}), true),
				n(33310, {	-- Derrick Brindlebeard <Ironforge Quartermaster>
					["coord"] = { 76.4, 19.4, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						writ(i(45717)),	-- Ironforge Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45577)),	-- Ironforge Tabard
						-- #else
						i(45577),	-- Ironforge Tabard
						-- #endif
						champ(100, i(45586)),	-- Ironforge Ram (MOUNT!)
						champ(5, gold(500, i(46748, {	-- Swift Violet Ram (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { DWARF },
							-- #endif
						}))),
						champ(5, gold(500, i(46762, {	-- Swift Violet Ram (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(DWARF, ALLIANCE_ONLY),
							-- #endif
						}))),
						champ(40, i(44970)),	-- Dun Morogh Cub (PET!)
						champ(15, i(45018)),	-- Ironforge Banner (TOY!)
					},
				}),
				n(33556, {	-- Doru Thunderhorn <Thunder Bluff Quartermaster>
					["coord"] = { 76.2, 24.4, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						writ(i(45722)),	-- Thunder Bluff Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45584)),	-- Thunder Bluff Tabard
						-- #else
						i(45584),	-- Thunder Bluff Tabard
						-- #endif
						champ(100, i(45592)),	-- Thunder Bluff Kodo (MOUNT!)
						champ(5, gold(500, i(46750, {	-- Great Golden Kodo (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { TAUREN },
							-- #endif
						}))),
						champ(5, gold(500, i(46755, {	-- Great Golden Kodo (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(TAUREN, HORDE_ONLY),
							-- #endif
						}))),
						champ(40, i(44980, {	-- Mulgore Hatchling (PET!)
							["timeline"] = { ADDED_3_1_0 },
						})),
						champ(15, i(45013)),	-- Thunder Bluff Banner (TOY!)
					},
				}),
				n(33555, {	-- Eliza Killian <Undercity Quartermaster>
					["coord"] = { 76.4, 24.0, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						writ(i(45723)),	-- Undercity Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45583)),	-- Undercity Tabard
						-- #else
						i(45583),	-- Undercity Tabard
						-- #endif
						champ(100, i(45597)),	-- Forsaken Warhorse (MOUNT!)
						champ(5, gold(500, i(46746, {	-- White Skeletal Warhorse (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { UNDEAD },
							-- #endif
						}))),
						champ(5, gold(500, i(46764, {	-- White Skeletal Warhorse (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(UNDEAD, HORDE_ONLY),
							-- #endif
						}))),
						champ(40, i(44971)),	-- Tirisfal Batling (PET!)
						champ(15, i(45016)),	-- Undercity Banner (TOY!)
					},
				}),
				n(33594, {	-- Fizzix Blastbolt <Engineering Supplies>
					["coord"] = { 72.2, 20.8, ICECROWN },
					["groups"] = {
						i(23817, {	-- Schematic: Titanium Toolbox (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(33553, {	-- Freka Bloodaxe <Orgrimmar Quartermaster>
					["coord"] = { 76.4, 24.2, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						writ(i(45719)),	-- Orgrimmar Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45581)),	-- Orgrimmar Tabard
						-- #else
						i(45581),	-- Orgrimmar Tabard
						-- #endif
						champ(100, i(45595)),	-- Orgrimmar Wolf (MOUNT!)
						champ(5, gold(500, i(46757, {	-- Swift Burgundy Wolf (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { ORC },
							-- #endif
						}))),
						champ(5, gold(500, i(46749, {	-- Swift Burgundy Wolf (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(ORC, HORDE_ONLY),
							-- #endif
						}))),
						champ(40, i(44973)),	-- Durotar Scorpion (PET!)
						champ(15, i(45014)),	-- Orgrimmar Banner (TOY!)
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, n(34881, {	-- Hiren Loresong <Silver Covenant Quartermaster>
					["coord"] = { 76.2, 19.6, ICECROWN },
					["minReputation"] = { FACTION_THE_SILVER_COVENANT, EXALTED },	-- Silver Covenant, Exalted.
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						champ(50, i(46817)),	-- Silver Covenant Tabard
						champ(150, i(46813)),	-- Silver Convenant Hippogryph (MOUNT!)
						champ(100, i(46815)),	-- Quel'dorei Steed (MOUNT!)
						champ(40, i(46820)),	-- Shimmering Wyrmling (PET!)
					},
				}), true),
				n(33657, {	-- Irisee <Exodar Quartermaster>
					["coord"] = { 76.2, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						writ(i(45715)),	-- Exodar Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45580)),	-- Exodar Tabard
						-- #else
						i(45580),	-- Exodar Tabard
						-- #endif
						champ(100, i(45590)),	-- Exodar Elekk (MOUNT!)
						champ(5, gold(500, i(46745, {	-- Great Red Elekk (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { DRAENEI },
							-- #endif
						}))),
						champ(5, gold(500, i(46756, {	-- Great Red Elekk (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(DRAENEI, ALLIANCE_ONLY),
							-- #endif
						}))),
						champ(40, i(44984)),	-- Ammen Vale Lashling (PET!)
						champ(15, i(45020)),	-- Exodar Banner (TOY!)
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, n(35574, {	-- Magistrix Iruvia <Legacy Justice Quartermaster>
					["coord"] = { 75.2, 22.0, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
					-- Normal Items here
						i(47732),	-- Band of the Invoker
						i(47729),	-- Bloodshed Band
						i(47658),	-- Brimstone Igniter
						i(47731),	-- Clutch of Fortification
						i(47684),	-- Coif of the Brooding Dragon
						i(47556),	-- Crusader Orb
						i(47730),	-- Dexterous Brightstone Ring
						i(47709),	-- Duskstalker Pauldrons
						i(47710),	-- Epaulets of the Fateful Accord
						i(47675),	-- Faceplate of Thunderous Rampage
						i(47735),	-- Glyph of Indomitability
						i(47687),	-- Headguard of Inner Warmth
						i(47678),	-- Headplate of the Honorbound
						i(47733),	-- Heartmender Circle
						i(47682),	-- Helm of the Restless Watch
						i(47695),	-- Hood of Clouded Sight
						i(47692),	-- Hood of Smoldering Aftermath
						i(47716),	-- Mantle of Revered Mortality
						i(47734),	-- Mark of Supremacy
						i(47691),	-- Mask of Abundant Growth
						i(47688),	-- Mask of Lethal Intent
						i(47714),	-- Pauldrons of Catastrophic Emanation
						i(47705),	-- Pauldrons of the Devourer
						i(48722),	-- Shard of the Crystal Heart
						i(47699),	-- Shoulderguards of Enduring Order
						i(47701),	-- Shoulderplates of the Cavalier
						i(47696),	-- Shoulderplates of Trembling Rage
						i(47706),	-- Shoulders of the Groundbreaker
						i(48724),	-- Talisman of Resurgence
					},
				-- We have a different Vendor with the same PvP Items in Dalaran listed. Both of them sell the Furious Gladiator Items for Gold.
				-- For sake of numbers we use Symlink on the 2nd NPC. First NPC under Outdoor>Northrend>Dalaran>Factions
					["sym"] = {
						{"sub", "pvp_gear_base", EXPANSION.WRATH, SEASON_FURIOUS, PVP_GLADIATOR },{"merge"},
						{"pop"},	-- Discard the Set header and acquire the children.
						{"exclude", "headerID", WEAPONS, BACK, WRIST, WAIST, FEET, NECK, FINGER, TRINKET },	-- Exclude Weapon, Back, Wrist, Waist, Feet Neck, Finger and Trinkets
						{"pop"},	-- Discard Class headers
						{"is","sourceID"},	-- Only Items with SourceID (exclude Ensembles from PvP listing)
					},
				})),
				n(33595, {	-- Mera Mistrunner <Cooking Supplies>
					["coord"] = { 72.4, 20.8, ICECROWN },
					["groups"] = {
						epicurean(100, i(46349, {	-- Chef's Hat
								["timeline"] = { DELETED_7_0_3 },
							})),
							epicurean(100, i(134020, {	-- Chef's Hat (TOY!)
								["timeline"] = { ADDED_7_0_3 },
							})),
							epicurean(1, i(43007)),	-- Northern Spices
							epicurean(3, i(43035)),	-- Recipe: Blackened Dragonfin (RECIPE!)
							epicurean(3, i(43032)),	-- Recipe: Blackened Worg Steak (RECIPE!)
							epicurean(3, i(43029)),	-- Recipe: Critter Bites (RECIPE!)
							epicurean(3, i(43033)),	-- Recipe: Cuttlesteak (RECIPE!)
							epicurean(3, i(43036)),	-- Recipe: Dragonfin Filet (RECIPE!)
							epicurean(3, i(43024)),	-- Recipe: Firecracker Salmon (RECIPE!)
							epicurean(5, i(43017)),	-- Recipe: Fish Feast (RECIPE!)
							epicurean(3, i(43505)),	-- Recipe: Gigantic Feast (RECIPE!)
							epicurean(3, i(43030)),	-- Recipe: Hearty Rhino (RECIPE!)
							epicurean(3, i(43026)),	-- Recipe: Imperial Manta Steak (RECIPE!)
							epicurean(3, i(43018)),	-- Recipe: Mega Mammoth Meal (RECIPE!)
							epicurean(3, i(43022)),	-- Recipe: Mighty Rhino Dogs (RECIPE!)
							epicurean(3, i(43023)),	-- Recipe: Poached Northern Sculpin (RECIPE!)
							epicurean(3, i(43028)),	-- Recipe: Rhinolicious Wormsteak (RECIPE!)
							epicurean(3, i(43506)),	-- Recipe: Small Feast (RECIPE!)
							epicurean(3, i(43031)),	-- Recipe: Snapper Extreme (RECIPE!)
							epicurean(3, i(43034)),	-- Recipe: Spiced Mammoth Treats (RECIPE!)
							epicurean(3, i(43020)),	-- Recipe: Spiced Worm Burger (RECIPE!)
							epicurean(3, i(43025)),	-- Recipe: Spicy Blue Nettlefish (RECIPE!)
							epicurean(3, i(43027)),	-- Recipe: Spicy Fried Herring (RECIPE!)
							epicurean(3, i(43019)),	-- Recipe: Tender Shoveltusk Steak (RECIPE!)
							epicurean(3, i(43037)),	-- Recipe: Tracker Snacks (RECIPE!)
							epicurean(3, i(43021)),	-- Recipe: Very Burnt Worg (RECIPE!)
							epicurean(3, i(44954)),	-- Recipe: Worg Tartare (RECIPE!)
					},
				}),
				n(33650, {	-- Rillie Spindlenut <Gnomeregan Quartermaster>
					["coord"] = { 76.4, 19.6, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						writ(i(45716)),	-- Gnomeregan Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45578)),	-- Gnomeregan Tabard
						-- #else
						i(45578),	-- Gnomeregan Tabard
						-- #endif
						champ(100, i(45589)),	-- Gnomeregan Mechanostrider (MOUNT!)
						champ(5, gold(500, i(46747, {	-- Turbostrider (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { GNOME },
							-- #endif
						}))),
						champ(5, gold(500, i(46763, {	-- Turbostrider (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(GNOME, ALLIANCE_ONLY),
							-- #endif
						}))),
						champ(40, i(45002)),	-- Mechanopeep (PET!)
						champ(15, i(45019)),	-- Gnomeregan Banner (TOY!)
					},
				}),
				n(33653, {	-- Rook Hawkfist <Darnassus Quartermaster>
					["coord"] = { 76.2, 19.2, ICECROWN },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						writ(i(45714)),	-- Darnassus Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45579)),	-- Darnassus Tabard
						-- #else
						i(45579),	-- Darnassus Tabard
						-- #endif
						champ(100, i(45591)),	-- Darnassian Nightsaber (MOUNT!)
						champ(5, gold(500, i(46744, {	-- Swift Moonsaber (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { NIGHTELF },
							-- #endif
						}))),
						champ(5, gold(500, i(46759, {	-- Swift Moonsaber (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(NIGHTELF, ALLIANCE_ONLY),
							-- #endif
						}))),
						champ(40, i(44965)),	-- Teldrassil Sproutling (PET!)
						champ(15, i(45021)),	-- Darnassus Banner (TOY!)
					},
				}),
				n(33554, {	-- Samamba <Sen'jin Quartermaster>
					["coord"] = { 76.0, 24.4, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						writ(i(45720)),	-- Sen'jin Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45582)),	-- Darkspear Tabard
						-- #else
						i(45582),	-- Darkspear Tabard
						-- #endif
						champ(100, i(45593)),	-- Darkspear Raptor (MOUNT!)
						champ(5, gold(500, i(46743, {	-- Swift Purple Raptor (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { TROLL },
							-- #endif
						}))),
						champ(5, gold(500, i(46760, {	-- Swift Purple Raptor (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(TROLL, HORDE_ONLY),
							-- #endif
						}))),
						champ(40, i(45606)),	-- Sen'jin Fetish (PET!)
						champ(15, i(45015)),	-- Sen'jin Banner (TOY!)
					},
				}),
				n(33557, {	-- Trellis Morningsun <Silvermoon Quartermaster>
					["coord"] = { 76.2, 23.8, ICECROWN },
					["races"] = HORDE_ONLY,
					["groups"] = {
						writ(i(45721)),	-- Silvermoon Commendation Badge
						-- #if BEFORE 4.0.1
						champ(50, i(45585)),	-- Silvermoon City Tabard
						-- #else
						i(45585),	-- Silvermoon City Tabard
						-- #endif
						champ(100, i(45596)),	-- Silvermoon Hawkstrider (MOUNT!)
						champ(5, gold(500, i(46751, {	-- Swift Red Hawkstrider (MOUNT!)
							-- #if BEFORE 7.3.5
							["_drop"] = { "races" },
							["races"] = { BLOODELF },
							-- #endif
						}))),
						champ(5, gold(500, i(46761, {	-- Swift Red Hawkstrider (MOUNT!)
							["timeline"] = { REMOVED_7_3_5 },	-- CRIEVE NOTE: I don't know the actual patch, just know that in Retail it only shows the other one.
							-- #if BEFORE 7.3.5
							["races"] = exclude(BLOODELF, HORDE_ONLY),
							-- #endif
						}))),
						champ(40, i(44982)),	-- Enchanted Broom (PET!)
						champ(15, i(45017)),	-- Silvermoon City Banner (TOY!)
					},
				}),
				applyclassicphase(WRATH_PHASE_THREE, n(34772, {	-- Vasarin Redmorn <Sunreavers Quartermaster>
					["coord"] = { 76.2, 24.0, ICECROWN },
					["minReputation"] = { FACTION_THE_SUNREAVERS, EXALTED },	-- The Sunreavers, Exalted.
					["races"] = HORDE_ONLY,
					["groups"] = {
						champ(50, i(46818)),	-- Sunreaver Tabard
						champ(150, i(46814)),	-- Sunreaver Dragonhawk (MOUNT!)
						champ(100, i(46816)),	-- Sunreaver Hawkstrider (MOUNT!)
						champ(40, i(46821)),	-- Shimmering Wyrmling (PET!)
					},
				}), true),
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_2_0 } }, {
	m(NORTHREND, {
		m(ICECROWN, {
			n(ARGENT_TOURNAMENT, {
				n(QUESTS, {
					q(13700),	-- Argent Tournament - Alliance Champion Marker
					q(13701),	-- Argent Tournament - Horde Champion Marker
					q(13686),	-- Alliance Tournament Eligibility Marker
					q(13687),	-- Horde Tournament Eligibility Marker
				}),
			}),
		}),
	}),
})));