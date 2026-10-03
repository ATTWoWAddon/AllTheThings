-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

ExportDB.OnTooltipDB.ForArathiBasin = [[~function(t, tooltipInfo)
	local reputation = t.reputation;
	if reputation >= 0 and reputation < 42000 then
		local addRepInfo = _.Modules.FactionData.AddReputationTooltipInfo;
		addRepInfo(tooltipInfo, reputation, "Concerted Efforts", 100, 42000);
		_.Modules.FactionData.AddReputationTooltipInfoWithMultiplier(tooltipInfo, reputation, "Total Resources", 10, 42000, 200);
		addRepInfo(tooltipInfo, reputation, "Resource Ticks", 10, 42000);
		tinsert(tooltipInfo, { left = " Every 200 or 150 Resources during AB Weekend.", r = 1, g = 1, b = 1 });
	end
end]];

battleground(MAP.ARATHI_BASIN, {
	["lore"] = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 2000 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["icon"] = 236385,
	["groups"] = {
		n(ACHIEVEMENTS, {
			-- CRIEVE NOTE: Not sure which one is which.
			ach(62047, {	-- Master of Arathi Basin
				--["races"] = HORDE_ONLY,
			}),
			ach(64027, {	-- Master of Arathi Basin
				--["races"] = ALLIANCE_ONLY,
			}),
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
				["coord"] = { 46.0, 45.2, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					i(20231),	-- Arathor Advanced Care Package
				},
			}),
			q(8260, {	-- Arathor Basic Care Package
				["qg"] = 15127,	-- Samuel Hawke
				["coord"] = { 46.0, 45.2, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 25, 34 },
				["groups"] = {
					i(20233),	-- Arathor Basic Care Package
				},
			}),
			q(8261, {	-- Arathor Standard Care Package
				["qg"] = 15127,	-- Samuel Hawke
				["coord"] = { 46.0, 45.2, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
				["races"] = ALLIANCE_ONLY,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = ALLIANCE_BRIGADIER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
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
				["coords"] = HORDE_WARBRINGER_COORDS,
				["cost"] = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				["races"] = HORDE_ONLY,
				["lvl"] = { 60, 69 },
			}),
			q(8115, {	-- Control Five Bases (Alliance)
				["sourceQuest"] = 8114,	-- Control Four Bases (Alliance)
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, EXALTED },	-- The League of Arathor, Exalted.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
				["groups"] = {
					i(20132),	-- Arathor Battle Tabard
				},
			}),
			q(8114, {	-- Control Four Bases (Alliance)
				["sourceQuests"] = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },	-- The League of Arathor, Friendly.
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 60,
			}),
			q(8265, {	-- Defiler's Advanced Care Package
				["qg"] = 15126,	-- Rutherford Twing
				["coord"] = { 73.4, 29.8, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = 45,
				["groups"] = {
					i(20228),	-- Defiler's Advanced Care Package
				},
			}),
			q(8263, {	-- Defiler's Basic Care Package
				["qg"] = 15126,	-- Rutherford Twing
				["coord"] = { 73.4, 29.8, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = { 25, 34 },
				["groups"] = {
					i(20229),	-- Defiler's Basic Care Package
				},
			}),
			q(8264, {	-- Defiler's Standard Care Package
				["qg"] = 15126,	-- Rutherford Twing
				["coord"] = { 73.4, 29.8, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = { 35, 44 },
				["groups"] = {
					i(20230),	-- Defiler's Standard Care Package
				},
			}),
			q(8122, {	-- Take Five Bases (Horde)
				["sourceQuest"] = 8121,	-- Take Four Bases (Horde)
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_DEFILERS, EXALTED },	-- The Defilers, Exalted.
				["races"] = HORDE_ONLY,
				["lvl"] = 60,
				["groups"] = {
					i(20131),	-- Battle Tabard of the Defilers
				},
			}),
			q(8121, {	-- Take Four Bases (Horde)
				["sourceQuests"] = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["minReputation"] = { FACTION_THE_DEFILERS, FRIENDLY },	-- The Defilers, Friendly.
				["races"] = HORDE_ONLY,
				["lvl"] = 60,
			}),
			q(8168, {	-- The Battle for Arathi Basin! [Level 20] (Alliance)
				["altQuests"] = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 20, 29 },
			}),
			q(8167, {	-- The Battle for Arathi Basin! [Level 30] (Alliance)
				["altQuests"] = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 30, 39 },
			}),
			q(8166, {	-- The Battle for Arathi Basin! [Level 40] (Alliance)
				["altQuests"] = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = { 40, 49 },
			}),
			q(8105, {	-- The Battle for Arathi Basin! [Level 50] (Alliance)
				["altQuests"] = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 14983,	-- Field Marshal Oslight
				["coord"] = { 45.8, 45.6, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["lvl"] = 50,
			}),
			q(8171, {	-- The Battle for Arathi Basin! [Level 20] (Horde)
				["altQuests"] = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = { 20, 29 },
			}),
			q(8170, {	-- The Battle for Arathi Basin! [Level 30] (Horde)
				["altQuests"] = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = { 30, 39 },
			}),
			q(8169, {	-- The Battle for Arathi Basin! [Level 40] (Horde)
				["altQuests"] = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = { 40, 49 },
			}),
			q(8120, {	-- The Battle for Arathi Basin! [Level 50] (Horde)
				["altQuests"] = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				["qg"] = 15021,	-- Deathmaster Dwire
				["coord"] = { 73.3, 29.7, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["lvl"] = 50,
			}),
		}),
		n(REWARDS, {
			i(20559),	-- Arathi Basin Mark of Honor
		}),
		n(VENDORS, {
			n(15126, {	-- Rutherford Twing
				["coord"] = { 73.4, 29.8, MAP.ARATHI_HIGHLANDS },
				["races"] = HORDE_ONLY,
				["groups"] = {
					-- Weapons & Cloak
					i(20220),	-- Ironbark Staff
					i(20214),	-- Mindfang
					i(20068),	-- Deathguard's Cloak

					-- Cloth
					i(20176),	-- Defiler's Epaulets
					i(20163),	-- Defiler's Cloth Girdle
					i(20164),	-- Defiler's Cloth Girdle
					i(20165),	-- Defiler's Cloth Girdle
					i(20166),	-- Defiler's Cloth Girdle
					i(20159),	-- Defiler's Cloth Boots
					i(20160),	-- Defiler's Cloth Boots
					i(20161),	-- Defiler's Cloth Boots
					i(20162),	-- Defiler's Cloth Boots

					-- Leather
					i(20194),	-- Defiler's Leather Shoulders
					i(20193),	-- Defiler's Leather Girdle
					i(20191),	-- Defiler's Leather Girdle
					i(20190),	-- Defiler's Leather Girdle
					i(20192),	-- Defiler's Leather Girdle
					i(20187),	-- Defiler's Leather Boots
					i(20189),	-- Defiler's Leather Boots
					i(20186),	-- Defiler's Leather Boots
					i(20188),	-- Defiler's Leather Boots

					-- Lizardhide
					i(20175),	-- Defiler's Lizardhide Shoulders
					i(20171),	-- Defiler's Lizardhide Girdle
					i(20174),	-- Defiler's Lizardhide Girdle
					i(20173),	-- Defiler's Lizardhide Girdle
					i(20172),	-- Defiler's Lizardhide Girdle
					i(20170),	-- Defiler's Lizardhide Boots
					i(20169),	-- Defiler's Lizardhide Boots
					i(20168),	-- Defiler's Lizardhide Boots
					i(20167),	-- Defiler's Lizardhide Boots

					-- Chain
					i(20158),	-- Defiler's Chain Pauldrons
					i(20150),	-- Defiler's Chain Girdle
					i(20151),	-- Defiler's Chain Girdle
					i(20152),	-- Defiler's Chain Girdle
					i(20153),	-- Defiler's Chain Girdle
					i(20154),	-- Defiler's Chain Greaves
					i(20156),	-- Defiler's Chain Greaves
					i(20155),	-- Defiler's Chain Greaves
					i(20157),	-- Defiler's Chain Greaves

					-- Mail
					i(20203),	-- Defiler's Mail Pauldrons
					i(20197),	-- Defiler's Mail Girdle (Defiler's Padded Girdle)
					i(20196),	-- Defiler's Mail Girdle
					i(20198),	-- Defiler's Mail Girdle
					i(20195),	-- Defiler's Mail Girdle
					i(20202),	-- Defiler's Mail Greaves
					i(20201),	-- Defiler's Mail Greaves
					i(20200),	-- Defiler's Mail Greaves
					i(20199),	-- Defiler's Mail Greaves

					-- Lamellar
					i(20184),	-- Defiler's Lamellar Spaulders
					i(20180),	-- Defiler's Lamellar Girdle
					i(20179),	-- Defiler's Lamellar Girdle
					i(20177),	-- Defiler's Lamellar Girdle
					i(20178),	-- Defiler's Lamellar Girdle
					i(20181),	-- Defiler's Lamellar Greaves
					i(20183),	-- Defiler's Lamellar Greaves
					i(20185),	-- Defiler's Lamellar Greaves
					i(20182),	-- Defiler's Lamellar Greaves

					-- Plate
					i(20212),	-- Defiler's Plate Spaulders
					i(20204),	-- Defiler's Plate Girdle
					i(20205),	-- Defiler's Plate Girdle
					i(20206),	-- Defiler's Plate Girdle
					i(20207),	-- Defiler's Plate Girdle
					i(20209),	-- Defiler's Plate Greaves
					i(20208),	-- Defiler's Plate Greaves
					i(20211),	-- Defiler's Plate Greaves
					i(20210),	-- Defiler's Plate Greaves

					-- Trinkets
					i(20072),	-- Defiler's Talisman
					i(21115),	-- Defiler's Talisman
					i(21116),	-- Defiler's Talisman
					i(21120),	-- Defiler's Talisman
				},
			}),
			n(15127, {	-- Samuel Hawke <League of Arathor Supply Officer>
				["coord"] = { 46.0, 45.2, MAP.ARATHI_HIGHLANDS },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					-- Weapons & Cloak
					i(20069),	-- Ironbark Staff
					i(20070),	-- Sageclaw
					i(20073),	-- Cloak of the Honor Guard

					-- Cloth
					i(20061),	-- Highlander's Epaulets
					i(20097),	-- Highlander's Cloth Girdle
					i(20098),	-- Highlander's Cloth Girdle
					i(20047),	-- Highlander's Cloth Girdle
					i(20099),	-- Highlander's Cloth Girdle
					i(20096),	-- Highlander's Cloth Boots
					i(20054),	-- Highlander's Cloth Boots
					i(20094),	-- Highlander's Cloth Boots
					i(20095),	-- Highlander's Cloth Boots

					-- Leather
					i(20059),	-- Highlander's Leather Shoulders
					i(20116),	-- Highlander's Leather Girdle
					i(20117),	-- Highlander's Leather Girdle
					i(20115),	-- Highlander's Leather Girdle
					i(20045),	-- Highlander's Leather Girdle
					i(20112),	-- Highlander's Leather Boots
					i(20113),	-- Highlander's Leather Boots
					i(20114),	-- Highlander's Leather Boots
					i(20052),	-- Highlander's Leather Boots

					-- Lizardhide
					i(20060),	-- Highlander's Lizardhide Shoulders
					i(20103),	-- Highlander's Lizardhide Girdle
					i(20046),	-- Highlander's Lizardhide Girdle
					i(20105),	-- Highlander's Lizardhide Girdle
					i(20104),	-- Highlander's Lizardhide Girdle
					i(20053),	-- Highlander's Lizardhide Boots
					i(20102),	-- Highlander's Lizardhide Boots
					i(20101),	-- Highlander's Lizardhide Boots
					i(20100),	-- Highlander's Lizardhide Boots

					-- Chain
					i(20055),	-- Highlander's Chain Pauldrons
					i(20088),	-- Highlander's Chain Girdle
					i(20089),	-- Highlander's Chain Girdle
					i(20043),	-- Highlander's Chain Girdle
					i(20090),	-- Highlander's Chain Girdle
					i(20091),	-- Highlander's Chain Greaves
					i(20050),	-- Highlander's Chain Greaves
					i(20092),	-- Highlander's Chain Greaves
					i(20093),	-- Highlander's Chain Greaves

					-- Mail
					i(20056),	-- Highlander's Mail Pauldrons
					i(20120),	-- Highlander's Mail Girdle
					i(20044),	-- Highlander's Mail Girdle
					i(20119),	-- Highlander's Mail Girdle
					i(20118),	-- Highlander's Mail Girdle
					i(20051),	-- Highlander's Mail Greaves
					i(20121),	-- Highlander's Mail Greaves
					i(20122),	-- Highlander's Mail Greaves
					i(20123),	-- Highlander's Mail Greaves

					-- Lamellar
					i(20058),	-- Highlander's Lamellar Spaulders
					i(20042),	-- Highlander's Lamellar Girdle
					i(20106),	-- Highlander's Lamellar Girdle
					i(20107),	-- Highlander's Lamellar Girdle
					i(20108),	-- Highlander's Lamellar Girdle
					i(20111),	-- Highlander's Lamellar Greaves
					i(20110),	-- Highlander's Lamellar Greaves
					i(20109),	-- Highlander's Lamellar Greaves
					i(20049),	-- Highlander's Lamellar Greaves

					-- Plate
					i(20057),	-- Highlander's Plate Spaulders
					i(20125),	-- Highlander's Plate Girdle
					i(20041),	-- Highlander's Plate Girdle
					i(20124),	-- Highlander's Plate Girdle
					i(20126),	-- Highlander's Plate Girdle
					i(20129),	-- Highlander's Plate Greaves
					i(20128),	-- Highlander's Plate Greaves
					i(20048),	-- Highlander's Plate Greaves
					i(20127),	-- Highlander's Plate Greaves

					-- Trinkets
					i(20071),	-- Talisman of Arathor
					i(21117),	-- Talisman of Arathor
					i(21118),	-- Talisman of Arathor
					i(21119),	-- Talisman of Arathor
				},
			}),
		}),
	},
});
