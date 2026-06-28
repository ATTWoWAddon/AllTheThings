---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(RARES, {
			n(256631, {	-- Big Mon (Ancient Hulk)
				["coord"] = { 69.8, 63.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
			n(261142, {	-- Destra
				["coord"] = { 52.1, 32.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
			n(264854, {	-- Farthik the Plunderer
				["coord"] = { 53.8, 72.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				["provider"] = { "o", 653176 },	-- Unguarded Chest
				["questID"] = 96491,
				--["groups"] = {  },
			}),
			n(258916, {	-- Garsecg
				["coord"] = { 69.7, 44.9, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 94619,
				--["groups"] = {  },
			}),
			n(265262, {	-- Hisstara
				["coord"] = { 43.9, 50.8, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
			n(268090, {	-- Kari'zah the Forgotten
				["coord"] = { 24.9, 73.5, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
			n(265237, {	-- Lockjaw
				["coord"] = { 31.7, 56.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				["questID"] = 96456,
				--["groups"] = {  },
			}),
			n(258920, {	-- Nar'zira
				["coord"] = { 63.2, 62.4, 2642 },	-- Tomb of the Lost Priest
				--["questID"] = 94619,	-- Shared with 'Garsecg'???
				--["groups"] = {  },
			}),
			n(268049, {	-- Siltmouth
				["coord"] = { 50.2, 69.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
			n(261109, {	-- Sss'alik <The Rotten Claw>
				["coord"] = { 58.1, 40.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				--["questID"] = XXXXX,
				--["groups"] = {  },
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, {
			n(RARES, {
			}),
		}),
	}),
}));
