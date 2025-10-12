-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
ExportDB.OnTooltipDB.ForArathiBasin = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
-- #if BEFORE TBC
		addRepInfo(tooltipInfo, reputation, "Concerted Efforts", 100, 42000);
-- #endif
		_.Modules.FactionData.AddReputationTooltipInfoWithMultiplier(tooltipInfo, reputation, "Total Resources", 10, 42000, 200);
		addRepInfo(tooltipInfo, reputation, "Resource Ticks", 10, 42000);
		tinsert(tooltipInfo, { left = " Every 200 or 150 Resources during AB Weekend.", r = 1, g = 1, b = 1 });
	end
end]];
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(ARATHI_BASIN, {
		-- #if AFTER 3.2.0
		["lore"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 1600 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
		-- #else
		["lore"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 2000 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
		-- #endif
		["icon"] = 236385,
		["maps"] = {
			837,	-- Arathi Basin
			844,	-- Arathi Basin
			1383,	-- Arathi Basin
			1366,	-- Arathi Basin (BG)
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1169, {	-- Master of Arathi Basin (Alliance - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						155,	-- Arathi Basin Veteran
						165,	-- Arathi Basin Perfection
						158,	-- Me and the Cappin' Makin' it Happen
						73,	-- Disgracin' The Basin
						1153,	-- Overly Defensive
						157,	-- To The Rescue!
						161,	-- Resilient Victory
						156,	-- Territorial Dominance
						159,	-- Let's Get This Done
						162,	-- We Had It All Along *cough*
						583,	-- Arathi Basin All-Star
						584,	-- Arathi Basin Assassin
					}},
					["timeline"] = { ADDED_3_0_2 },
					-- #if BEFORE 4.3.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
				}),
				ach(1170, {	-- Master of Arathi Basin (Horde - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						155,	-- Arathi Basin Veteran
						165,	-- Arathi Basin Perfection
						158,	-- Me and the Cappin' Makin' it Happen
						73,	-- Disgracin' The Basin
						1153,	-- Overly Defensive
						157,	-- To The Rescue!
						161,	-- Resilient Victory
						156,	-- Territorial Dominance
						159,	-- Let's Get This Done
						162,	-- We Had It All Along *cough*
						583,	-- Arathi Basin All-Star
						584,	-- Arathi Basin Assassin
					}},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
				}),
				ach(154, {	-- Arathi Basin Victory
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 1,
				}),
				ach(155, {	-- Arathi Basin Veteran
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 100,
				}),
				ach(583, {	-- Arathi Basin All-Star
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- When Comp Stomp was introduced, Blizzard added new nested criteria but kept the old ones. Just showing the old ones is enough at this time.
					["groups"] = {
						crit(426),	-- Assault 2 bases
						crit(427),	-- Defend 2 bases
					},
				}),
				ach(584, {	-- Arathi Basin Assassin
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- When Comp Stomp was introduced, Blizzard added new nested criteria but kept the old ones. Just showing the old ones is enough at this time.
					["groups"] = {
						crit(431),	-- Kill 5 people at the blacksmith
						crit(432),	-- Kill 5 people at the farm
						crit(433),	-- Kill 5 people at the gold mine
						crit(434),	-- Kill 5 people at the lumber mill
						crit(435),	-- Kill 5 people at the stables
					},
				}),
				ach(165, {	-- Arathi Basin Perfection
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
				}),
				ach(73, {	-- Disgracin' The Basin
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(159, {	-- Let's Get This Done
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(158, {	-- Me and the Cappin' Makin' It Happen
					["timeline"] = { ADDED_3_0_2 },
					--["groups"] = { i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),},	-- Alliance Battlefield Banner (DECOR!)
				}),
				ach(1153, {	-- Overly Defensive
					["timeline"] = { ADDED_3_0_2 },
					--["groups"] = { i(XXXXXX, {["timeline"] = { ADDED_12_0_0 }}),},	-- Horde Battlefield Banner (DECOR!)
				}),
				ach(161, {	-- Resilient Victory
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
				}),
				ach(156, {	-- Territorial Dominance
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
				}),
				ach(157, {	-- To The Rescue!
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(162, {	-- We Had It All Along *cough*
					["timeline"] = { ADDED_3_0_2 },
					["_noautomation"] = true,	-- Doesn't show any criteria ingame but they exist so we hide them ourselves
				}),
				applyclassicphase(PHASE_TWO, achWithRep(711, FACTION_THE_LEAGUE_OF_ARATHOR, {	-- Knight of Arathor
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(PHASE_TWO, achWithRep(710, FACTION_THE_DEFILERS, {	-- The Defiler
					["races"] = HORDE_ONLY,
				})),
			}),
			n(FACTIONS, {
				faction(FACTION_THE_DEFILERS, {	-- The Defilers
					["icon"] = 237568,
					["OnTooltip"] = [[_.OnTooltipDB.ForArathiBasin]],
					["races"] = HORDE_ONLY,
				}),
				faction(FACTION_THE_LEAGUE_OF_ARATHOR, {	-- The League of Arathor
					["icon"] = 132351,
					["OnTooltip"] = [[_.OnTooltipDB.ForArathiBasin]],
					["races"] = ALLIANCE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(8262, {	-- Arathor Advanced Care Package
					["qg"] = 15127,	-- Samuel Hawke
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 46.4, ARATHI_HIGHLANDS },
						-- #else
						{ 46.0, 45.2, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144065 },	-- Samuel Hawke (Invasion Phase)
					-- #endif
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(20231),	-- Arathor Advanced Care Package
					},
				}),
				q(8260, {	-- Arathor Basic Care Package
					["qg"] = 15127,	-- Samuel Hawke
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 46.4, ARATHI_HIGHLANDS },
						-- #else
						{ 46.0, 45.2, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144065 },	-- Samuel Hawke (Invasion Phase)
					-- #endif
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(20233),	-- Arathor Basic Care Package
					},
				}),
				q(8261, {	-- Arathor Standard Care Package
					["qg"] = 15127,	-- Samuel Hawke
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 46.4, ARATHI_HIGHLANDS },
						-- #else
						{ 46.0, 45.2, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
					["races"] = ALLIANCE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144065 },	-- Samuel Hawke (Invasion Phase)
					-- #endif
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(20236),	-- Arathor Standard Care Package
					},
				}),
				q(8374, {	-- Claiming Arathi Basin [Level 20]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8384, {	-- Claiming Arathi Basin [Level 20]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8391, {	-- Claiming Arathi Basin [Level 30]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8393, {	-- Claiming Arathi Basin [Level 30]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8392, {	-- Claiming Arathi Basin [Level 40]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8394, {	-- Claiming Arathi Basin [Level 40]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8395, {	-- Claiming Arathi Basin [Level 50]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8397, {	-- Claiming Arathi Basin [Level 50]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8396, {	-- Claiming Arathi Basin [Level 60]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8398, {	-- Claiming Arathi Basin [Level 60]
					["altQuests"] = {
						8374,	-- Claiming Arathi Basin [Level 20]
						8384,	-- Claiming Arathi Basin [Level 20]
						8391,	-- Claiming Arathi Basin [Level 30]
						8393,	-- Claiming Arathi Basin [Level 30]
						8392,	-- Claiming Arathi Basin [Level 40]
						8394,	-- Claiming Arathi Basin [Level 40]
						8395,	-- Claiming Arathi Basin [Level 50]
						8397,	-- Claiming Arathi Basin [Level 50]
						8396,	-- Claiming Arathi Basin [Level 60]
						8398,	-- Claiming Arathi Basin [Level 60]
					},
					["qg"] = 15351,	-- Alliance Brigadier General
					["coords"] = {
						{ 39.4, 82.2, ALTERAC_MOUNTAINS },
						{ 45.6, 45.8, ARATHI_HIGHLANDS },
						{ 61.8, 83.8, ASHENVALE },
						{ 58.0, 34.4, DARNASSUS },
						{ 69.8, 90.6, IRONFORGE },
						{ 79.4, 18.0, STORMWIND_CITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8370, {	-- Conquering Arathi Basin [Level 20]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8390, {	-- Conquering Arathi Basin [Level 20]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8436, {	-- Conquering Arathi Basin [Level 30]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8440, {	-- Conquering Arathi Basin [Level 30]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8437, {	-- Conquering Arathi Basin [Level 40]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8441, {	-- Conquering Arathi Basin [Level 40]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8438, {	-- Conquering Arathi Basin [Level 50]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8442, {	-- Conquering Arathi Basin [Level 50]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8439, {	-- Conquering Arathi Basin [Level 60]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8443, {	-- Conquering Arathi Basin [Level 60]
					["altQuests"] = {
						8370,	-- Conquering Arathi Basin [Level 20]
						8390,	-- Conquering Arathi Basin [Level 20]
						8436,	-- Conquering Arathi Basin [Level 30]
						8440,	-- Conquering Arathi Basin [Level 30]
						8437,	-- Conquering Arathi Basin [Level 40]
						8441,	-- Conquering Arathi Basin [Level 40]
						8438,	-- Conquering Arathi Basin [Level 50]
						8442,	-- Conquering Arathi Basin [Level 50]
						8439,	-- Conquering Arathi Basin [Level 60]
						8443,	-- Conquering Arathi Basin [Level 60]
					},
					["qg"] = 15350,	-- Horde Warbringer
					["coords"] = {
						{ 63.0, 59.8, ALTERAC_MOUNTAINS },
						{ 73.6, 29.2, ARATHI_HIGHLANDS },
						{ 80.6, 30.6, ORGRIMMAR },
						{ 46.6, 8.6, THE_BARRENS },
						{ 57.8, 76.8, THUNDER_BLUFF },
						{ 58.2, 97.6, UNDERCITY },
					},
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8115, {	-- Control Five Bases (Alliance)
					["sourceQuest"] = 8114,	-- Control Four Bases (Alliance)
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, EXALTED },	-- The League of Arathor, Exalted.
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
					-- #if BEFORE 5.0.4
					["groups"] = {
						i(20132),	-- Arathor Battle Tabard
					},
					-- #endif
				}),
				q(8114, {	-- Control Four Bases (Alliance)
					-- #if BEFORE 5.0.4
					["sourceQuests"] = {
						8168,	-- The Battle for Arathi Basin! [Level 20]
						8167,	-- The Battle for Arathi Basin! [Level 30]
						8166,	-- The Battle for Arathi Basin! [Level 40]
						8105,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
				q(8265, {	-- Defiler's Advanced Care Package
					["qg"] = 15126,	-- Rutherford Twing
					["coords"] = {
						-- #if AFTER CATA
						{ 68.5, 30.4, ARATHI_HIGHLANDS },
						-- #else
						{ 73.4, 29.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
					["races"] = HORDE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144064 },	-- Rutherford Twing (Invasion Phase)
					-- #endif
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(20228),	-- Defiler's Advanced Care Package
					},
				}),
				q(8263, {	-- Defiler's Basic Care Package
					["qg"] = 15126,	-- Rutherford Twing
					["coords"] = {
						-- #if AFTER CATA
						{ 68.5, 30.4, ARATHI_HIGHLANDS },
						-- #else
						{ 73.4, 29.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
					["races"] = HORDE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144064 },	-- Rutherford Twing (Invasion Phase)
					-- #endif
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(20229),	-- Defiler's Basic Care Package
					},
				}),
				q(8264, {	-- Defiler's Standard Care Package
					["qg"] = 15126,	-- Rutherford Twing
					["coords"] = {
						-- #if AFTER CATA
						{ 68.5, 30.4, ARATHI_HIGHLANDS },
						-- #else
						{ 73.4, 29.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
					["races"] = HORDE_ONLY,
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144064 },	-- Rutherford Twing (Invasion Phase)
					-- #endif
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(20230),	-- Defiler's Standard Care Package
					},
				}),
				-- #if SEASON_OF_DISCOVERY
				applyclassicphase(SOD_PHASE_TWO, q(79990, {	-- Stranglethorn Lumber (A)
					["qg"] = 14984,	-- Sergeant Maclear
					["coord"] = { 45.8, 45.4, ARATHI_HIGHLANDS },
					["maxReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, EXALTED },	-- The League of Arathor, Exalted.
					["cost"] = { { "i", 216491, 1 } },	-- 1x Shipment of Stranglethorn Lumber
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = 26,
				})),
				applyclassicphase(SOD_PHASE_TWO, q(79991, {	-- Stranglethorn Lumber (H)
					["qg"] = 15022,	-- Deathstalker Mortis
					["coord"] = { 73.6, 29.8, ARATHI_HIGHLANDS },
					["maxReputation"] = { FACTION_THE_DEFILERS, EXALTED },	-- The Defilers, Exalted.
					["cost"] = { { "i", 216491, 1 } },	-- 1x Shipment of Stranglethorn Lumber
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = 26,
				})),
				-- #endif
				q(8122, {	-- Take Five Bases (Horde)
					["sourceQuest"] = 8121,	-- Take Four Bases (Horde)
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["minReputation"] = { FACTION_THE_DEFILERS, EXALTED },	-- The Defilers, Exalted.
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
					-- #if BEFORE 5.0.4
					["groups"] = {
						i(20131),	-- Battle Tabard of the Defilers
					},
					-- #endif
				}),
				q(8121, {	-- Take Four Bases (Horde)
					-- #if BEFORE 5.0.4
					["sourceQuests"] = {
						8171,	-- The Battle for Arathi Basin! [Level 20]
						8170,	-- The Battle for Arathi Basin! [Level 30]
						8169,	-- The Battle for Arathi Basin! [Level 40]
						8120,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = 60,
				}),
				q(8168, {	-- The Battle for Arathi Basin! [Level 20] (Alliance)
					-- #if BEFORE TBC
					["altQuests"] = {
						8168,	-- The Battle for Arathi Basin! [Level 20]
						8167,	-- The Battle for Arathi Basin! [Level 30]
						8166,	-- The Battle for Arathi Basin! [Level 40]
						8105,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8167, {	-- The Battle for Arathi Basin! [Level 30] (Alliance)
					-- #if BEFORE TBC
					["altQuests"] = {
						8168,	-- The Battle for Arathi Basin! [Level 20]
						8167,	-- The Battle for Arathi Basin! [Level 30]
						8166,	-- The Battle for Arathi Basin! [Level 40]
						8105,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8166, {	-- The Battle for Arathi Basin! [Level 40] (Alliance)
					-- #if BEFORE TBC
					["altQuests"] = {
						8168,	-- The Battle for Arathi Basin! [Level 20]
						8167,	-- The Battle for Arathi Basin! [Level 30]
						8166,	-- The Battle for Arathi Basin! [Level 40]
						8105,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8105, {	-- The Battle for Arathi Basin! [Level 50] (Alliance)
					-- #if BEFORE TBC
					["altQuests"] = {
						8168,	-- The Battle for Arathi Basin! [Level 20]
						8167,	-- The Battle for Arathi Basin! [Level 30]
						8166,	-- The Battle for Arathi Basin! [Level 40]
						8105,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
				}),
				q(10531, {	-- The Battle for Arathi Basin! [Level 50] (Alliance)
					["qg"] = 14983,	-- Field Marshal Oslight
					["coords"] = {
						-- #if AFTER CATA
						{ 40.0, 46.7, ARATHI_HIGHLANDS },
						-- #else
						{ 45.8, 45.6, ARATHI_HIGHLANDS },
						-- #endif
					},
					["timeline"] = { ADDED_2_0_1, REMOVED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 50,
					-- CRIEVE NOTE: This quest was added in TBC, not directly accessible to players. Might be a flag for both factions that this quest was completed. Originally we had to use altQuests to flag them correctly.
				}),
				q(8171, {	-- The Battle for Arathi Basin! [Level 20] (Horde)
					-- #if BEFORE TBC
					["altQuests"] = {
						8171,	-- The Battle for Arathi Basin! [Level 20]
						8170,	-- The Battle for Arathi Basin! [Level 30]
						8169,	-- The Battle for Arathi Basin! [Level 40]
						8120,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8170, {	-- The Battle for Arathi Basin! [Level 30] (Horde)
					-- #if BEFORE TBC
					["altQuests"] = {
						8171,	-- The Battle for Arathi Basin! [Level 20]
						8170,	-- The Battle for Arathi Basin! [Level 30]
						8169,	-- The Battle for Arathi Basin! [Level 40]
						8120,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8169, {	-- The Battle for Arathi Basin! [Level 40] (Horde)
					-- #if BEFORE TBC
					["altQuests"] = {
						8171,	-- The Battle for Arathi Basin! [Level 20]
						8170,	-- The Battle for Arathi Basin! [Level 30]
						8169,	-- The Battle for Arathi Basin! [Level 40]
						8120,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8120, {	-- The Battle for Arathi Basin! [Level 50] (Horde)
					-- #if BEFORE TBC
					["altQuests"] = {
						8171,	-- The Battle for Arathi Basin! [Level 20]
						8170,	-- The Battle for Arathi Basin! [Level 30]
						8169,	-- The Battle for Arathi Basin! [Level 40]
						8120,	-- The Battle for Arathi Basin! [Level 50]
					},
					-- #endif
					["qg"] = 15021,	-- Deathmaster Dwire
					["coord"] = { 73.3, 29.7, ARATHI_HIGHLANDS },
					["timeline"] = { REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = 50,
				}),
			}),
			n(REWARDS, {
				i(20559, {	-- Arathi Basin Mark of Honor
					["timeline"] = { REMOVED_3_3_3 },
				}),
				i(185048, {	-- Shoveltusk Soul
					["description"] = "Available during Brawl: Comp Stomp",
					["timeline"] = { ADDED_9_0_5 },
					["customCollect"] = "SL_COV_NFA",	-- Night Fae
				}),
			}),
			n(VENDORS, {
				n(15126, {	-- Rutherford Twing
					["coords"] = {
						-- #if AFTER CATA
						{ 68.5, 30.4, ARATHI_HIGHLANDS },
						-- #else
						{ 73.4, 29.8, ARATHI_HIGHLANDS },
						-- #endif
					},
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144064 },	-- Rutherford Twing (Invasion Phase)
					-- #endif
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- Tabard
						-- #if AFTER 5.0.4
						moh(10, i(20131)),	-- Battle Tabard of the Defilers (Was originally a quest reward!)
						-- #endif

						-- Weapons & Cloak
						moh(3, i(20220)),	-- Ironbark Staff
						moh(3, i(20214)),	-- Mindfang
						moh(2, i(20068)),	-- Deathguard's Cloak

						-- Cloth
						moh(2, i(20176)),	-- Defiler's Epaulets
						moh(1, i(20163)),	-- Defiler's Cloth Girdle
						moh(1, i(20164)),	-- Defiler's Cloth Girdle
						moh(1, i(20165)),	-- Defiler's Cloth Girdle
						moh(1, i(20166)),	-- Defiler's Cloth Girdle
						moh(1, i(20159)),	-- Defiler's Cloth Boots
						moh(1, i(20160)),	-- Defiler's Cloth Boots
						moh(1, i(20161)),	-- Defiler's Cloth Boots
						moh(1, i(20162)),	-- Defiler's Cloth Boots

						-- Leather
						moh(2, i(20194)),	-- Defiler's Leather Shoulders
						moh(1, i(20193)),	-- Defiler's Leather Girdle
						moh(1, i(20191)),	-- Defiler's Leather Girdle
						moh(1, i(20190)),	-- Defiler's Leather Girdle
						moh(1, i(20192)),	-- Defiler's Leather Girdle
						moh(1, i(20187)),	-- Defiler's Leather Boots
						moh(1, i(20189)),	-- Defiler's Leather Boots
						moh(1, i(20186)),	-- Defiler's Leather Boots
						moh(1, i(20188)),	-- Defiler's Leather Boots

						-- Lizardhide
						moh(2, i(20175)),	-- Defiler's Lizardhide Shoulders
						moh(1, i(20171)),	-- Defiler's Lizardhide Girdle
						moh(1, i(20174)),	-- Defiler's Lizardhide Girdle
						moh(1, i(20173)),	-- Defiler's Lizardhide Girdle
						moh(1, i(20172)),	-- Defiler's Lizardhide Girdle
						moh(1, i(20170)),	-- Defiler's Lizardhide Boots
						moh(1, i(20169)),	-- Defiler's Lizardhide Boots
						moh(1, i(20168)),	-- Defiler's Lizardhide Boots
						moh(1, i(20167)),	-- Defiler's Lizardhide Boots

						-- Chain
						moh(2, i(20158)),	-- Defiler's Chain Pauldrons
						moh(1, i(20150)),	-- Defiler's Chain Girdle
						moh(1, i(20151)),	-- Defiler's Chain Girdle
						moh(1, i(20152)),	-- Defiler's Chain Girdle
						moh(1, i(20153)),	-- Defiler's Chain Girdle
						moh(1, i(20154)),	-- Defiler's Chain Greaves
						moh(1, i(20156)),	-- Defiler's Chain Greaves
						moh(1, i(20155)),	-- Defiler's Chain Greaves
						moh(1, i(20157)),	-- Defiler's Chain Greaves

						-- Mail
						moh(2, i(20203)),	-- Defiler's Mail Pauldrons
						moh(1, i(20197)),	-- Defiler's Mail Girdle (Defiler's Padded Girdle)
						moh(1, i(20196)),	-- Defiler's Mail Girdle
						moh(1, i(20198)),	-- Defiler's Mail Girdle
						moh(1, i(20195)),	-- Defiler's Mail Girdle
						moh(1, i(20202)),	-- Defiler's Mail Greaves
						moh(1, i(20201)),	-- Defiler's Mail Greaves
						moh(1, i(20200)),	-- Defiler's Mail Greaves
						moh(1, i(20199)),	-- Defiler's Mail Greaves

						-- Lamellar
						moh(2, i(20184)),	-- Defiler's Lamellar Spaulders
						moh(1, i(20180)),	-- Defiler's Lamellar Girdle
						moh(1, i(20179)),	-- Defiler's Lamellar Girdle
						moh(1, i(20177)),	-- Defiler's Lamellar Girdle
						moh(1, i(20178)),	-- Defiler's Lamellar Girdle
						moh(1, i(20181)),	-- Defiler's Lamellar Greaves
						moh(1, i(20183)),	-- Defiler's Lamellar Greaves
						moh(1, i(20185)),	-- Defiler's Lamellar Greaves
						moh(1, i(20182)),	-- Defiler's Lamellar Greaves

						-- Plate
						moh(2, i(20212)),	-- Defiler's Plate Spaulders
						moh(1, i(20204)),	-- Defiler's Plate Girdle
						moh(1, i(20205)),	-- Defiler's Plate Girdle
						moh(1, i(20206)),	-- Defiler's Plate Girdle
						moh(1, i(20207)),	-- Defiler's Plate Girdle
						moh(1, i(20209)),	-- Defiler's Plate Greaves
						moh(1, i(20208)),	-- Defiler's Plate Greaves
						moh(1, i(20211)),	-- Defiler's Plate Greaves
						moh(1, i(20210)),	-- Defiler's Plate Greaves

						-- Trinkets
						moh(1, i(20072)),	-- Defiler's Talisman
						moh(1, i(21115)),	-- Defiler's Talisman
						moh(1, i(21116)),	-- Defiler's Talisman
						moh(1, i(21120)),	-- Defiler's Talisman
					},
				}),
				n(15127, {	-- Samuel Hawke <League of Arathor Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 46.4, ARATHI_HIGHLANDS },
						-- #else
						{ 46.0, 45.2, ARATHI_HIGHLANDS },
						-- #endif
					},
					-- #if AFTER 8.0.1.26812
					["crs"] = { 144065 },	-- Samuel Hawke (Invasion Phase)
					-- #endif
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- Tabard
						-- #if AFTER 5.0.4
						moh(10, i(20132)),	-- Arathor Battle Tabard (Was originally a quest reward!)
						-- #endif

						-- Weapons & Cloak
						moh(3, i(20069)),	-- Ironbark Staff
						moh(3, i(20070)),	-- Sageclaw
						moh(2, i(20073)),	-- Cloak of the Honor Guard

						-- Cloth
						moh(2, i(20061)),	-- Highlander's Epaulets
						moh(1, i(20097)),	-- Highlander's Cloth Girdle
						moh(1, i(20098)),	-- Highlander's Cloth Girdle
						moh(1, i(20047)),	-- Highlander's Cloth Girdle
						moh(1, i(20099)),	-- Highlander's Cloth Girdle
						moh(1, i(20096)),	-- Highlander's Cloth Boots
						moh(1, i(20054)),	-- Highlander's Cloth Boots
						moh(1, i(20094)),	-- Highlander's Cloth Boots
						moh(1, i(20095)),	-- Highlander's Cloth Boots

						-- Leather
						moh(2, i(20059)),	-- Highlander's Leather Shoulders
						moh(1, i(20116)),	-- Highlander's Leather Girdle
						moh(1, i(20117)),	-- Highlander's Leather Girdle
						moh(1, i(20115)),	-- Highlander's Leather Girdle
						moh(1, i(20045)),	-- Highlander's Leather Girdle
						moh(1, i(20112)),	-- Highlander's Leather Boots
						moh(1, i(20113)),	-- Highlander's Leather Boots
						moh(1, i(20114)),	-- Highlander's Leather Boots
						moh(1, i(20052)),	-- Highlander's Leather Boots

						-- Lizardhide
						moh(2, i(20060)),	-- Highlander's Lizardhide Shoulders
						moh(1, i(20103)),	-- Highlander's Lizardhide Girdle
						moh(1, i(20046)),	-- Highlander's Lizardhide Girdle
						moh(1, i(20105)),	-- Highlander's Lizardhide Girdle
						moh(1, i(20104)),	-- Highlander's Lizardhide Girdle
						moh(1, i(20053)),	-- Highlander's Lizardhide Boots
						moh(1, i(20102)),	-- Highlander's Lizardhide Boots
						moh(1, i(20101)),	-- Highlander's Lizardhide Boots
						moh(1, i(20100)),	-- Highlander's Lizardhide Boots

						-- Chain
						moh(2, i(20055)),	-- Highlander's Chain Pauldrons
						moh(1, i(20088)),	-- Highlander's Chain Girdle
						moh(1, i(20089)),	-- Highlander's Chain Girdle
						moh(1, i(20043)),	-- Highlander's Chain Girdle
						moh(1, i(20090)),	-- Highlander's Chain Girdle
						moh(1, i(20091)),	-- Highlander's Chain Greaves
						moh(1, i(20050)),	-- Highlander's Chain Greaves
						moh(1, i(20092)),	-- Highlander's Chain Greaves
						moh(1, i(20093)),	-- Highlander's Chain Greaves

						-- Mail
						moh(2, i(20056)),	-- Highlander's Mail Pauldrons
						moh(1, i(20120)),	-- Highlander's Mail Girdle
						moh(1, i(20044)),	-- Highlander's Mail Girdle
						moh(1, i(20119)),	-- Highlander's Mail Girdle
						moh(1, i(20118)),	-- Highlander's Mail Girdle
						moh(1, i(20051)),	-- Highlander's Mail Greaves
						moh(1, i(20121)),	-- Highlander's Mail Greaves
						moh(1, i(20122)),	-- Highlander's Mail Greaves
						moh(1, i(20123)),	-- Highlander's Mail Greaves

						-- Lamellar
						moh(2, i(20058)),	-- Highlander's Lamellar Spaulders
						moh(1, i(20042)),	-- Highlander's Lamellar Girdle
						moh(1, i(20106)),	-- Highlander's Lamellar Girdle
						moh(1, i(20107)),	-- Highlander's Lamellar Girdle
						moh(1, i(20108)),	-- Highlander's Lamellar Girdle
						moh(1, i(20111)),	-- Highlander's Lamellar Greaves
						moh(1, i(20110)),	-- Highlander's Lamellar Greaves
						moh(1, i(20109)),	-- Highlander's Lamellar Greaves
						moh(1, i(20049)),	-- Highlander's Lamellar Greaves

						-- Plate
						moh(2, i(20057)),	-- Highlander's Plate Spaulders
						moh(1, i(20125)),	-- Highlander's Plate Girdle
						moh(1, i(20041)),	-- Highlander's Plate Girdle
						moh(1, i(20124)),	-- Highlander's Plate Girdle
						moh(1, i(20126)),	-- Highlander's Plate Girdle
						moh(1, i(20129)),	-- Highlander's Plate Greaves
						moh(1, i(20128)),	-- Highlander's Plate Greaves
						moh(1, i(20048)),	-- Highlander's Plate Greaves
						moh(1, i(20127)),	-- Highlander's Plate Greaves

						-- Trinkets
						moh(1, i(20071)),	-- Talisman of Arathor
						moh(1, i(21117)),	-- Talisman of Arathor
						moh(1, i(21118)),	-- Talisman of Arathor
						moh(1, i(21119)),	-- Talisman of Arathor
					},
				}),
			}),
		},
	}),
})));
