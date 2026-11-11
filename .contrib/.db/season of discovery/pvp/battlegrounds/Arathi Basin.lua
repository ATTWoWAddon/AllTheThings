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

battleground(ARATHI_BASIN, {
	timeline = { ADDED_1_7_0 },
	lore = "Arathi Basin is a 15v15 battleground located in Arathi Highlands. Players fight over five bases (Stables, Mines, Blacksmith, Lumber Mill, and Farm) which reward teams with resources. The more bases a team controls, the faster they accumulate resources. A team with all five bases captured will gain 30 resources per second.\n\nThe game is won when one team reaches 2000 resources. The most common way of winning is to hold three bases and defend, with the Blacksmith being a key base.",
	icon = 236385,
	maps = {
		837,	-- Arathi Basin
		844,	-- Arathi Basin
		1383,	-- Arathi Basin
		1366,	-- Arathi Basin (BG)
	},
	groups = {
		n(ACHIEVEMENTS, {
			applyclassicphase(PHASE_TWO, achWithRep(711, FACTION_THE_LEAGUE_OF_ARATHOR, {	-- Knight of Arathor
				races = ALLIANCE_ONLY,
			})),
			applyclassicphase(PHASE_TWO, achWithRep(710, FACTION_THE_DEFILERS, {	-- The Defiler
				races = HORDE_ONLY,
			})),
		}),
		n(FACTIONS, {
			faction(FACTION_THE_DEFILERS, {	-- The Defilers
				icon = 237568,
				OnTooltip = [[_.OnTooltipDB.ForArathiBasin]],
				races = HORDE_ONLY,
			}),
			faction(FACTION_THE_LEAGUE_OF_ARATHOR, {	-- The League of Arathor
				icon = 132351,
				OnTooltip = [[_.OnTooltipDB.ForArathiBasin]],
				races = ALLIANCE_ONLY,
			}),
		}),
		n(QUESTS, {
			q(8262, {	-- Arathor Advanced Care Package
				qg = 15127,	-- Samuel Hawke
				coords = {
					{ 46.0, 45.2, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = 45,
				groups = {
					i(20231),	-- Arathor Advanced Care Package
				},
			}),
			q(8260, {	-- Arathor Basic Care Package
				qg = 15127,	-- Samuel Hawke
				coords = {
					{ 46.0, 45.2, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = { 25, 34 },
				groups = {
					i(20233),	-- Arathor Basic Care Package
				},
			}),
			q(8261, {	-- Arathor Standard Care Package
				qg = 15127,	-- Samuel Hawke
				coords = {
					{ 46.0, 45.2, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = { 35, 44 },
				groups = {
					i(20236),	-- Arathor Standard Care Package
				},
			}),
			q(8374, {	-- Claiming Arathi Basin [Level 20]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8384, {	-- Claiming Arathi Basin [Level 20]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8391, {	-- Claiming Arathi Basin [Level 30]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8393, {	-- Claiming Arathi Basin [Level 30]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8392, {	-- Claiming Arathi Basin [Level 40]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8394, {	-- Claiming Arathi Basin [Level 40]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8395, {	-- Claiming Arathi Basin [Level 50]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8397, {	-- Claiming Arathi Basin [Level 50]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8396, {	-- Claiming Arathi Basin [Level 60]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8398, {	-- Claiming Arathi Basin [Level 60]
				altQuests = {
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
				qg = 15351,	-- Alliance Brigadier General
				coords = {
					{ 39.4, 82.2, ALTERAC_MOUNTAINS },
					{ 45.6, 45.8, ARATHI_HIGHLANDS },
					{ 61.8, 83.8, ASHENVALE },
					{ 58.0, 34.4, DARNASSUS },
					{ 69.8, 90.6, IRONFORGE },
					{ 79.4, 18.0, STORMWIND_CITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = ALLIANCE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8370, {	-- Conquering Arathi Basin [Level 20]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8390, {	-- Conquering Arathi Basin [Level 20]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8436, {	-- Conquering Arathi Basin [Level 30]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8440, {	-- Conquering Arathi Basin [Level 30]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8437, {	-- Conquering Arathi Basin [Level 40]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8441, {	-- Conquering Arathi Basin [Level 40]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8438, {	-- Conquering Arathi Basin [Level 50]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8442, {	-- Conquering Arathi Basin [Level 50]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 50, 59 },
			}),
			q(8439, {	-- Conquering Arathi Basin [Level 60]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8443, {	-- Conquering Arathi Basin [Level 60]
				altQuests = {
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
				qg = 15350,	-- Horde Warbringer
				coords = {
					{ 63.0, 59.8, ALTERAC_MOUNTAINS },
					{ 73.6, 29.2, ARATHI_HIGHLANDS },
					{ 80.6, 30.6, ORGRIMMAR },
					{ 46.6, 8.6, THE_BARRENS },
					{ 57.8, 76.8, THUNDER_BLUFF },
					{ 58.2, 97.6, UNDERCITY },
				},
				cost = { { "i", 20559, 3 } },	-- Arathi Basin Mark of Honor
				races = HORDE_ONLY,
				lvl = { 60, 69 },
			}),
			q(8115, {	-- Control Five Bases (Alliance)
				sourceQuest = 8114,	-- Control Four Bases (Alliance)
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, EXALTED },
				races = ALLIANCE_ONLY,
				lvl = 60,
				groups = {
					i(20132),	-- Arathor Battle Tabard
				},
			}),
			q(8114, {	-- Control Four Bases (Alliance)
				sourceQuests = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, FRIENDLY },
				races = ALLIANCE_ONLY,
				lvl = 60,
			}),
			q(8265, {	-- Defiler's Advanced Care Package
				qg = 15126,	-- Rutherford Twing
				coords = {
					{ 73.4, 29.8, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_DEFILERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = 45,
				groups = {
					i(20228),	-- Defiler's Advanced Care Package
				},
			}),
			q(8263, {	-- Defiler's Basic Care Package
				qg = 15126,	-- Rutherford Twing
				coords = {
					{ 73.4, 29.8, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_DEFILERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = { 25, 34 },
				groups = {
					i(20229),	-- Defiler's Basic Care Package
				},
			}),
			q(8264, {	-- Defiler's Standard Care Package
				qg = 15126,	-- Rutherford Twing
				coords = {
					{ 73.4, 29.8, ARATHI_HIGHLANDS },
				},
				minReputation = { FACTION_THE_DEFILERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = { 35, 44 },
				groups = {
					i(20230),	-- Defiler's Standard Care Package
				},
			}),
			applyclassicphase(SOD_PHASE_TWO, q(79990, {	-- Stranglethorn Lumber (A)
				qg = 14984,	-- Sergeant Maclear
				coord = { 45.8, 45.4, ARATHI_HIGHLANDS },
				maxReputation = { FACTION_THE_LEAGUE_OF_ARATHOR, EXALTED },
				cost = { { "i", 216491, 1 } },	-- 1x Shipment of Stranglethorn Lumber
				races = ALLIANCE_ONLY,
				repeatable = true,
				lvl = 26,
			})),
			applyclassicphase(SOD_PHASE_TWO, q(79991, {	-- Stranglethorn Lumber (H)
				qg = 15022,	-- Deathstalker Mortis
				coord = { 73.6, 29.8, ARATHI_HIGHLANDS },
				maxReputation = { FACTION_THE_DEFILERS, EXALTED },
				cost = { { "i", 216491, 1 } },	-- 1x Shipment of Stranglethorn Lumber
				races = HORDE_ONLY,
				repeatable = true,
				lvl = 26,
			})),
			q(8122, {	-- Take Five Bases (Horde)
				sourceQuest = 8121,	-- Take Four Bases (Horde)
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				minReputation = { FACTION_THE_DEFILERS, EXALTED },
				races = HORDE_ONLY,
				lvl = 60,
				groups = {
					i(20131),	-- Battle Tabard of the Defilers
				},
			}),
			q(8121, {	-- Take Four Bases (Horde)
				sourceQuests = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				minReputation = { FACTION_THE_DEFILERS, FRIENDLY },
				races = HORDE_ONLY,
				lvl = 60,
			}),
			q(8168, {	-- The Battle for Arathi Basin! [Level 20] (Alliance)
				altQuests = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8167, {	-- The Battle for Arathi Basin! [Level 30] (Alliance)
				altQuests = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8166, {	-- The Battle for Arathi Basin! [Level 40] (Alliance)
				altQuests = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8105, {	-- The Battle for Arathi Basin! [Level 50] (Alliance)
				altQuests = {
					8168,	-- The Battle for Arathi Basin! [Level 20]
					8167,	-- The Battle for Arathi Basin! [Level 30]
					8166,	-- The Battle for Arathi Basin! [Level 40]
					8105,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 14983,	-- Field Marshal Oslight
				coords = {
					{ 45.8, 45.6, ARATHI_HIGHLANDS },
				},
				races = ALLIANCE_ONLY,
				lvl = 50,
			}),
			q(8171, {	-- The Battle for Arathi Basin! [Level 20] (Horde)
				altQuests = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				races = HORDE_ONLY,
				lvl = { 20, 29 },
			}),
			q(8170, {	-- The Battle for Arathi Basin! [Level 30] (Horde)
				altQuests = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				races = HORDE_ONLY,
				lvl = { 30, 39 },
			}),
			q(8169, {	-- The Battle for Arathi Basin! [Level 40] (Horde)
				altQuests = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				races = HORDE_ONLY,
				lvl = { 40, 49 },
			}),
			q(8120, {	-- The Battle for Arathi Basin! [Level 50] (Horde)
				altQuests = {
					8171,	-- The Battle for Arathi Basin! [Level 20]
					8170,	-- The Battle for Arathi Basin! [Level 30]
					8169,	-- The Battle for Arathi Basin! [Level 40]
					8120,	-- The Battle for Arathi Basin! [Level 50]
				},
				qg = 15021,	-- Deathmaster Dwire
				coord = { 73.3, 29.7, ARATHI_HIGHLANDS },
				races = HORDE_ONLY,
				lvl = 50,
			}),
		}),
		n(REWARDS, {
			i(20559),	-- Arathi Basin Mark of Honor
		}),
		n(VENDORS, {
			n(15126, {	-- Rutherford Twing
				coords = {
					{ 73.4, 29.8, ARATHI_HIGHLANDS },
				},
				races = HORDE_ONLY,
				groups = {
					-- Tabard

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
				coords = {
					{ 46.0, 45.2, ARATHI_HIGHLANDS },
				},
				races = ALLIANCE_ONLY,
				groups = {
					-- Tabard

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
});
