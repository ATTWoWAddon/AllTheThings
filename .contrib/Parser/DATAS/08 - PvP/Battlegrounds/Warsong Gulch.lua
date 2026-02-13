-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

local ALLIANCE_FIGHT_FOR_WSG_TIER_1 = {
	8372,	-- Fight for Warsong Gulch
	8399,	-- Fight for Warsong Gulch
	8400,	-- Fight for Warsong Gulch
	8401,	-- Fight for Warsong Gulch
	8402,	-- Fight for Warsong Gulch
	8403,	-- Fight for Warsong Gulch
};
local ALLIANCE_FIGHT_FOR_WSG_TIER_2 = {	-- Repeatables
	8386,	-- Fight for Warsong Gulch
	8404,	-- Fight for Warsong Gulch
	8405,	-- Fight for Warsong Gulch
	8406,	-- Fight for Warsong Gulch
	8407,	-- Fight for Warsong Gulch
	8408,	-- Fight for Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_1 = {
	8368,	-- Battle of Warsong Gulch
	8426,	-- Battle of Warsong Gulch
	8427,	-- Battle of Warsong Gulch
	8428,	-- Battle of Warsong Gulch
	8429,	-- Battle of Warsong Gulch
	8430,	-- Battle of Warsong Gulch
};
local HORDE_BATTLE_FOR_WSG_TIER_2 = {	-- Repeatables
	8389,	-- Battle of Warsong Gulch
	8431,	-- Battle of Warsong Gulch
	8432,	-- Battle of Warsong Gulch
	8433,	-- Battle of Warsong Gulch
	8434,	-- Battle of Warsong Gulch
	8435,	-- Battle of Warsong Gulch
};

ExportDB.OnTooltipDB.ForWarsongGulch = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
-- #if BEFORE TBC
		addRepInfo(tooltipInfo, reputation, "Concerted Efforts", 100, 42000);
-- #endif
		local repPerFlagCapture = 35;
-- #if AFTER 6.1.0
		local repPerFlagCapture = 100;
-- #endif
		addRepInfo(tooltipInfo, reputation, "Flags Captured", repPerFlagCapture, 42000);
-- #if BEFORE 6.0.2
		tinsert(tooltipInfo, { left = " Each capture is worth " .. repPerFlagCapture .. " rep, +10 on WSG Weekend.", r = 1, g = 1, b = 1 });
-- #else
		tinsert(tooltipInfo, { left = " Each capture is worth " .. repPerFlagCapture .. " rep, +100 if you win or 35 if you lose 0-3.", r = 1, g = 1, b = 1 });
-- #endif
-- #if SEASON_OF_DISCOVERY
		if reputation < ]] .. HONORED .. [[ then
			tinsert(tooltipInfo, { left = " " });
			tinsert(tooltipInfo, { left = "Battle for Ashenvale PvP World Event:" });
			addRepInfo(tooltipInfo, reputation, "  Defeat a Lieutenant (To Honored)", 200, ]] .. HONORED .. [[);
			addRepInfo(tooltipInfo, reputation, "  Win the Battle (To Honored)", 600, ]] .. HONORED .. [[);
		end
-- #endif
	end
end]];

root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(WARSONG_GULCH, {
		["lore"] = "Warsong Gulch is a 10v10 capture-the-flag style battleground that traces the conflict between the Silverwing Sentinels seeking revenge on the orcs that chopped down the Ashenvale forest during the Third War.",
		["icon"] = 236350,
		["maps"] = {
			859,	-- Warsong Gulch
			1339,	-- Warsong Gulch
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(1172, {	-- Master of Warsong Gulch
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						-- #if AFTER 4.3.0
						167,	-- Warsong Gulch Veteran
						199,	-- Capture the Flag
						200,	-- Persistent Defender
						872,	-- Frenzied Defender
						168,	-- Warsong Gulch Perfection
						201,	-- Warsong Expedience
						204,	-- Ironman
						203,	-- Not in My House (A)
						1251,	-- Not in My House (H)
						202,	-- Quick Cap (A)
						1502,	-- Quick Cap (H)
						206,	-- Supreme Defender (A)
						1252,	-- Supreme Defender (H)
						207,	-- Save the Day
						-- #else
						167,	-- Warsong Gulch Veteran
						199,	-- Capture the Flag
						200,	-- Persistent Defender
						872,	-- Frenzied Defender
						168,	-- Warsong Gulch Perfection
						201,	-- Warsong Expedience
						204,	-- Ironman
						203,	-- Not in My House (A)
						202,	-- Quick Cap (A)
						206,	-- Supreme Defender (A)
						207,	-- Save the Day
						-- #endif
					}},
					-- #if BEFORE 4.3.0
					["races"] = ALLIANCE_ONLY,
					-- #endif
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(1173, {	-- Master of Warsong Gulch (Horde - before 4.3.0)
					-- Meta Achievement should symlink the contained Achievements from Source
					["sym"] = {{"meta_achievement",
						167,	-- Warsong Gulch Veteran
						199,	-- Capture the Flag
						200,	-- Persistent Defender
						872,	-- Frenzied Defender
						168,	-- Warsong Gulch Perfection
						201,	-- Warsong Expedience
						204,	-- Ironman
						1251,	-- Not in My House (H)
						1502,	-- Quick Cap (H)
						1252,	-- Supreme Defender (H)
						207,	-- Save the Day
					}},
					["timeline"] = { ADDED_3_0_2, REMOVED_4_3_0 },
					["races"] = HORDE_ONLY,
				}),
				ach(166, {	-- Warsong Gulch Victory
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 1,
				}),
				ach(167, {	-- Warsong Gulch Veteran
					["timeline"] = { ADDED_3_0_2 },
					["rank"] = 100,
					["groups"] = {
						i(247747, {	-- Warsong Outriders Flag (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				ach(199, {	-- Capture the Flag
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(200, {	-- Persistent Defender
					["timeline"] = { ADDED_3_0_2 },
					["groups"] = {
						i(247746, {	-- Silverwing Sentinels Flag (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				ach(872, {	-- Frenzied Defender
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(168, {	-- Warsong Gulch Perfection
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(201, {	-- Warsong Expedience
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(204, {	-- Ironman
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(203, {	-- Not in My House (A)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1251, {	-- Not in My House (H)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = HORDE_ONLY,
				}),
				ach(202, {	-- Quick Cap (A)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1502, {	-- Quick Cap (H)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = HORDE_ONLY,
				}),
				ach(206, {	-- Supreme Defender (A)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = ALLIANCE_ONLY,
				}),
				ach(1252, {	-- Supreme Defender (H)
					["timeline"] = { ADDED_3_0_2 },
					["races"] = HORDE_ONLY,
				}),
				ach(207, {	-- Save the Day
					["timeline"] = { ADDED_3_0_2 },
				}),
				ach(1259, {	-- Not So Fast
					["timeline"] = { ADDED_3_0_2 },
				}),
				applyclassicphase(PHASE_TWO, achWithRep(713, FACTION_SILVERWING_SENTINELS, {	-- Silverwing Sentinel (A)
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
				})),
				applyclassicphase(PHASE_TWO, achWithRep(712, FACTION_WARSONG_OUTRIDERS, {	-- Warsong Outrider (H)
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
				})),
			}),
			n(FACTIONS, {
				faction(FACTION_SILVERWING_SENTINELS, {	-- Silverwing Sentinels
					["icon"] = 132279,
					["OnTooltip"] = [[_.OnTooltipDB.ForWarsongGulch]],
					["maps"] = { ASHENVALE },
					["races"] = ALLIANCE_ONLY,
				}),
				faction(FACTION_WARSONG_OUTRIDERS, {	-- Warsong Outriders
					["icon"] = 132366,
					["OnTooltip"] = [[_.OnTooltipDB.ForWarsongGulch]],
					["maps"] = { ASHENVALE },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(QUESTS, {
				q(8368, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 10, 19 },
				}),
				q(8426, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8427, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8428, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8429, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8430, {	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_1,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8389, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8368,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 10, 19 },
				}),
				q(8431, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8426,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 20, 29 },
				}),
				q(8432, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8427,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 30, 39 },
				}),
				q(8433, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8428,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 40, 49 },
				}),
				q(8434, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8429,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 50, 59 },
				}),
				q(8435, {	-- Battle of Warsong Gulch
					["sourceQuest"] = 8430,	-- Battle of Warsong Gulch
					["altQuests"] = HORDE_BATTLE_FOR_WSG_TIER_2,
					["qg"] = 15350,	-- Horde Warbringer
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = HORDE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 60, 69 },
				}),
				q(8372, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 10, 19 },
				}),
				q(8399, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 20, 29 },
				}),
				q(8400, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 30, 39 },
				}),
				q(8401, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 40, 49 },
				}),
				q(8402, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 50, 59 },
				}),
				q(8403, {	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_1,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 60, 69 },
				}),
				q(8386, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8372,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 10, 19 },
				}),
				q(8404, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8399,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 20, 29 },
				}),
				q(8405, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8400,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 30, 39 },
				}),
				q(8406, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8401,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 40, 49 },
				}),
				q(8407, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8402,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 50, 59 },
				}),
				q(8408, {	-- Fight for Warsong Gulch
					["sourceQuest"] = 8403,	-- Fight for Warsong Gulch
					["altQuests"] = ALLIANCE_FIGHT_FOR_WSG_TIER_2,
					["qg"] = 15351,	-- Alliance Brigadier General
					["coord"] = { 79.4, 18.2, STORMWIND_CITY },
					["timeline"] = { REMOVED_2_0_1 },
					["cost"] = { { "i", 20558, 3 } },	-- Warsong Gulch Mark of Honor
					["races"] = ALLIANCE_ONLY,
					["repeatable"] = true,
					["lvl"] = { 60, 69 },
				}),
				q(7868, {	-- Outrider Advanced Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 20.0, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 8.4, THE_BARRENS },
						-- #endif
					},
					["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(19153),	-- Outrider Advanced Care Package
					},
				}),
				q(7866, {	-- Outrider Basic Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 20.0, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 8.4, THE_BARRENS },
						-- #endif
					},
					["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
					["races"] = HORDE_ONLY,
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(19154),	-- Outrider Basic Care Package
					},
				}),
				q(7867, {	-- Outrider Standard Care Package
					["qg"] = 14754,	-- Kelm Hargunth <Warsong Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 20.0, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 8.4, THE_BARRENS },
						-- #endif
					},
					["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
					["races"] = HORDE_ONLY,
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(19155),	-- Outrider Standard Care Package
					},
				}),
				q(7865, {	-- Sentinel Advanced Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					["coords"] = {
						-- #if AFTER CATA
						{ 61.5, 83.9, ASHENVALE },
						-- #else
						{ 61.6, 83.8, ASHENVALE },
						-- #endif
					},
					["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(45, 45, 10),
					["groups"] = {
						i(19152),	-- Sentinel Advanced Care Package
					},
				}),
				q(7863, {	-- Sentinel Basic Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					["coords"] = {
						-- #if AFTER CATA
						{ 61.5, 83.9, ASHENVALE },
						-- #else
						{ 61.6, 83.8, ASHENVALE },
						-- #endif
					},
					["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 25, 34 },
					["groups"] = {
						i(19150),	-- Sentinel Basic Care Package
					},
				}),
				q(7864, {	-- Sentinel Standard Care Package
					["qg"] = 14753,	-- Illiyana Moonblaze
					["coords"] = {
						-- #if AFTER CATA
						{ 61.5, 83.9, ASHENVALE },
						-- #else
						{ 61.6, 83.8, ASHENVALE },
						-- #endif
					},
					["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
					["races"] = ALLIANCE_ONLY,
					["lvl"] = { 35, 44 },
					["groups"] = {
						i(19151),	-- Sentinel Standard Care Package
					},
				}),
			}),
			n(REWARDS, {
				i(20558, {	-- Warsong Gulch Mark of Honor
					["timeline"] = { REMOVED_3_3_3 },
				}),
			}),
			n(VENDORS, {
				n(14754, {	-- Kelm Hargunth <Warsong Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 40.2, 20.0, NORTHERN_BARRENS },
						-- #else
						{ 46.6, 8.4, THE_BARRENS },
						-- #endif
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(211499, {	-- Trainee's Outrider Wolf
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(10, i(19505)),	-- Warsong Battle Tabard
						moh(3, i(19566)),	-- Advisor's Gnarled Staff
						moh(3, i(19567)),	-- Advisor's Gnarled Staff
						moh(3, i(19568)),	-- Advisor's Gnarled Staff
						moh(3, i(19569)),	-- Advisor's Gnarled Staff
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212584, {	-- Advisor's Gnarled Staff
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, REVERED },	-- Warsong Outriders, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20425)),	-- Advisor's Gnarled Staff
						moh(3, i(19550)),	-- Legionnaire's Sword
						moh(3, i(19551)),	-- Legionnaire's Sword
						moh(3, i(19552)),	-- Legionnaire's Sword
						moh(3, i(19553)),	-- Legionnaire's Sword
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212586, {	-- Legionnaire's Sword
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, REVERED },	-- Warsong Outriders, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20430)),	-- Legionnaire's Sword
						moh(3, i(19558)),	-- Outrider's Bow
						moh(3, i(19559)),	-- Outrider's Bow
						moh(3, i(19560)),	-- Outrider's Bow
						moh(3, i(19561)),	-- Outrider's Bow
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212585, {	-- Outrider's Bow
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, REVERED },	-- Warsong Outriders, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20437)),	-- Outrider's Bow
						moh(3, i(19542)),	-- Scout's Blade
						moh(3, i(19543)),	-- Scout's Blade
						moh(3, i(19544)),	-- Scout's Blade
						moh(3, i(19545)),	-- Scout's Blade
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212587, {	-- Scout's Blade
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, REVERED },	-- Warsong Outriders, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20441)),	-- Scout's Blade
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(211500, {	-- Resilient Cloth Headband
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						applyclassicphase(SOD_PHASE_ONE, i(211856, {	-- Resilient Mail Coif
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						applyclassicphase(SOD_PHASE_ONE, i(211857, {	-- Resilient Leather Mask
							["minReputation"] = { FACTION_WARSONG_OUTRIDERS, FRIENDLY },	-- Warsong Outriders, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(1, i(19534)),	-- Scout's Medallion
						moh(1, i(19535)),	-- Scout's Medallion
						moh(1, i(19536)),	-- Scout's Medallion
						moh(1, i(19537)),	-- Scout's Medallion
						moh(1, i(20442)),	-- Scout's Medallion
						moh(1, i(19526)),	-- Battle Healer's Cloak
						moh(1, i(19527)),	-- Battle Healer's Cloak
						moh(1, i(19528)),	-- Battle Healer's Cloak
						moh(1, i(19529)),	-- Battle Healer's Cloak
						moh(1, i(20427)),	-- Battle Healer's Cloak
						moh(1, i(19578)),	-- Berserker Bracers
						moh(1, i(19580)),	-- Berserker Bracers
						moh(1, i(19581)),	-- Berserker Bracers
						moh(1, i(19595)),	-- Dryad's Wrist Bindings
						moh(1, i(19596)),	-- Dryad's Wrist Bindings
						moh(1, i(19597)),	-- Dryad's Wrist Bindings
						moh(1, i(19587)),	-- Forest Stalker's Bracers
						moh(1, i(19589)),	-- Forest Stalker's Bracers
						moh(1, i(19590)),	-- Forest Stalker's Bracers
						moh(1, i(19582)),	-- Windtalker's Wristguards
						moh(1, i(19583)),	-- Windtalker's Wristguards
						moh(1, i(19584)),	-- Windtalker's Wristguards
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_SIX, i(237820)), -- Outrider's Silk Leggings
						applyclassicphase(SOD_PHASE_SIX, i(237821)), -- Outrider's Lizardhide Pants
						applyclassicphase(SOD_PHASE_SIX, i(237822)), -- Outrider's Leather Pants
						applyclassicphase(SOD_PHASE_SIX, i(237823)), -- Outrider's Mail Leggings
						applyclassicphase(SOD_PHASE_SIX, i(237824)), -- Outrider's Chain Leggings
						applyclassicphase(SOD_PHASE_SIX, i(237826)), -- Outrider's Plate Legguards
						-- #else
						applyclassicphase(PHASE_SIX, moh(2, i(22673))),	-- Outrider's Chain Leggings
						applyclassicphase(TBC_PHASE_ONE, i(30498)),	-- Outrider's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, moh(2, i(22740))),	-- Outrider's Leather Pants
						applyclassicphase(PHASE_SIX, moh(2, i(22741))),	-- Outrider's Lizardhide Pants
						applyclassicphase(PHASE_SIX, moh(2, i(22676))),	-- Outrider's Mail Leggings
						applyclassicphase(PHASE_SIX, i(22651)),	-- Outrider's Plate Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, moh(2, i(22747))),	-- Outrider's Silk Leggings
						-- #endif
						moh(1, i(19518)),	-- Advisor's Ring
						moh(1, i(19519)),	-- Advisor's Ring
						moh(1, i(19520)),	-- Advisor's Ring
						moh(1, i(19521)),	-- Advisor's Ring
						moh(1, i(20426)),	-- Advisor's Ring
						moh(1, i(19510)),	-- Legionnaire's Band
						moh(1, i(19511)),	-- Legionnaire's Band
						moh(1, i(19512)),	-- Legionnaire's Band
						moh(1, i(19513)),	-- Legionnaire's Band
						moh(1, i(20429)),	-- Legionnaire's Band
						applyclassicphase(PHASE_SIX, moh(1, i(21567))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, moh(1, i(21568))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, moh(1, i(21565))),	-- Rune of Perfection
						applyclassicphase(PHASE_SIX, moh(1, i(21566))),	-- Rune of Perfection
					},
				}),
				n(14753, {	-- Illiyana Moonblaze <Silverwing Supply Officer>
					["coords"] = {
						-- #if AFTER CATA
						{ 61.5, 83.9, ASHENVALE },
						-- #else
						{ 61.6, 83.8, ASHENVALE },
						-- #endif
					},
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(211498, {	-- Trainee's Sentinel Nightsaber
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(10, i(19506)),	-- Silverwing Battle Tabard
						moh(3, i(19570)),	-- Lorekeeper's Staff
						moh(3, i(19571)),	-- Lorekeeper's Staff
						moh(3, i(19572)),	-- Lorekeeper's Staff
						moh(3, i(19573)),	-- Lorekeeper's Staff
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212580, {	-- Lorekeeper's Staff
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, REVERED },	-- Silverwing Sentinels, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20434)),	-- Lorekeeper's Staff
						moh(3, i(19562)),	-- Outrunner's Bow
						moh(3, i(19563)),	-- Outrunner's Bow
						moh(3, i(19564)),	-- Outrunner's Bow
						moh(3, i(19565)),	-- Outrunner's Bow
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212581, {	-- Outrunner's Bow
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, REVERED },	-- Silverwing Sentinels, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20438)),	-- Outrunner's Bow
						moh(3, i(19554)),	-- Protector's Sword
						moh(3, i(19555)),	-- Protector's Sword
						moh(3, i(19556)),	-- Protector's Sword
						moh(3, i(19557)),	-- Protector's Sword
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212582, {	-- Protector's Sword
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, REVERED },	-- Silverwing Sentinels, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(20440)),	-- Protector's Sword
						moh(3, i(20443)),	-- Sentinel's Blade
						moh(3, i(19546)),	-- Sentinel's Blade
						moh(3, i(19547)),	-- Sentinel's Blade
						moh(3, i(19548)),	-- Sentinel's Blade
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(212583, {	-- Sentinel's Blade
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, REVERED },	-- Silverwing Sentinels, Revered.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(3, i(19549)),	-- Sentinel's Blade
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_ONE, i(211500, {	-- Resilient Cloth Headband
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						applyclassicphase(SOD_PHASE_ONE, i(211856, {	-- Resilient Mail Coif
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						applyclassicphase(SOD_PHASE_ONE, i(211857, {	-- Resilient Leather Mask
							["minReputation"] = { FACTION_SILVERWING_SENTINELS, FRIENDLY },	-- Silverwing Sentinels, Friendly.
							["timeline"] = { REMOVED_2_0_1 },
						})),
						-- #endif
						moh(1, i(19538)),	-- Sentinel's Medallion
						moh(1, i(19539)),	-- Sentinel's Medallion
						moh(1, i(19540)),	-- Sentinel's Medallion
						moh(1, i(19541)),	-- Sentinel's Medallion
						moh(1, i(20444)),	-- Sentinel's Medallion
						moh(1, i(19530)),	-- Caretaker's Cape
						moh(1, i(19531)),	-- Caretaker's Cape
						moh(1, i(19532)),	-- Caretaker's Cape
						moh(1, i(19533)),	-- Caretaker's Cape
						moh(1, i(20428)),	-- Caretaker's Cape
						moh(1, i(19578)),	-- Berserker Bracers
						moh(1, i(19580)),	-- Berserker Bracers
						moh(1, i(19581)),	-- Berserker Bracers
						moh(1, i(19595)),	-- Dryad's Wrist Bindings
						moh(1, i(19596)),	-- Dryad's Wrist Bindings
						moh(1, i(19597)),	-- Dryad's Wrist Bindings
						moh(1, i(19587)),	-- Forest Stalker's Bracers
						moh(1, i(19589)),	-- Forest Stalker's Bracers
						moh(1, i(19590)),	-- Forest Stalker's Bracers
						moh(1, i(19582)),	-- Windtalker's Wristguards
						moh(1, i(19583)),	-- Windtalker's Wristguards
						moh(1, i(19584)),	-- Windtalker's Wristguards
						-- #if SEASON_OF_DISCOVERY
						applyclassicphase(SOD_PHASE_SIX, i(237814)), -- Sentinel's Lamellar Legguards
						applyclassicphase(SOD_PHASE_SIX, i(237815)), -- Sentinel's Silk Leggings
						applyclassicphase(SOD_PHASE_SIX, i(237817)), -- Sentinel's Lizardhide Pants
						applyclassicphase(SOD_PHASE_SIX, i(237818)), -- Sentinel's Leather Pants
						applyclassicphase(SOD_PHASE_SIX, i(237819)), -- Sentinel's Chain Leggings
						applyclassicphase(SOD_PHASE_SIX, i(237825)), -- Sentinel's Plate Legguards
						-- #else
						applyclassicphase(PHASE_SIX, moh(2, i(22748))),	-- Sentinel's Chain Leggings
						applyclassicphase(TBC_PHASE_ONE, moh(2, i(30497))),	-- Sentinel's Mail Leggings
						applyclassicphase(PHASE_SIX, i(22753)),	-- Sentinel's Lamellar Legguards [Currently Sold for Gold, may change in the future!]
						applyclassicphase(PHASE_SIX, moh(2, i(22749))),	-- Sentinel's Leather Pants
						applyclassicphase(PHASE_SIX, moh(2, i(22750))),	-- Sentinel's Lizardhide Pants
						applyclassicphase(PHASE_SIX, i(22672)),	-- Sentinel's Plate Legguards
						applyclassicphase(PHASE_SIX, moh(2, i(22752))),	-- Sentinel's Silk Leggings
						-- #endif
						moh(1, i(19522)),	-- Lorekeeper's Ring
						moh(1, i(19523)),	-- Lorekeeper's Ring
						moh(1, i(19524)),	-- Lorekeeper's Ring
						moh(1, i(19525)),	-- Lorekeeper's Ring
						moh(1, i(20431)),	-- Lorekeeper's Ring
						moh(1, i(19514)),	-- Protector's Band
						moh(1, i(19516)),	-- Protector's Band
						moh(1, i(19515)),	-- Protector's Band
						moh(1, i(19517)),	-- Protector's Band
						moh(1, i(20439)),	-- Protector's Band
						applyclassicphase(PHASE_SIX, moh(1, i(21567))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, moh(1, i(21568))),	-- Rune of Duty
						applyclassicphase(PHASE_SIX, moh(1, i(21565))),	-- Rune of Perfection
						applyclassicphase(PHASE_SIX, moh(1, i(21566))),	-- Rune of Perfection
					},
				}),
			}),
		},
	}),
})));
