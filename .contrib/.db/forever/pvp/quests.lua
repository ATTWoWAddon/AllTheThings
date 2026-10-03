-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------

root(ROOTS.PVP, {
	n(QUESTS, {
		q(8371, {	-- Concerted Efforts
			["qg"] = 15351,	-- Alliance Brigadier General
			["coords"] = ALLIANCE_BRIGADIER_COORDS,
			["cost"] = {
				{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
				{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
				{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
			},
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 51,
		}),
		q(8385, {	-- Concerted Efforts
			["sourceQuest"] = 8371,	-- Concerted Efforts
			["qg"] = 15351,	-- Alliance Brigadier General
			["coords"] = ALLIANCE_BRIGADIER_COORDS,
			["cost"] = {
				{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
				{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
				{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
			},
			["races"] = ALLIANCE_ONLY,
			["repeatable"] = true,
			["lvl"] = 51,
		}),
		q(8367, {	-- For Great Honor
			["qg"] = 15350,	-- Horde Warbringer
			["coords"] = HORDE_WARBRINGER_COORDS,
			["cost"] = {
				{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
				{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
				{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
			},
			["races"] = HORDE_ONLY,
			["lvl"] = 51,
		}),
		q(8388, {	-- For Great Honor
			["sourceQuest"] = 8367,	-- For Great Honor
			["qg"] = 15350,	-- Horde Warbringer
			["coords"] = HORDE_WARBRINGER_COORDS,
			["cost"] = {
				{ "i", 20560, 3 },	-- Alterac Valley Mark of Honor
				{ "i", 20559, 3 },	-- Arathi Basin Mark of Honor
				{ "i", 20558, 3 },	-- Warsong Gulch Mark of Honor
			},
			["races"] = HORDE_ONLY,
			["repeatable"] = true,
			["lvl"] = 51,
		}),
	}),
});
