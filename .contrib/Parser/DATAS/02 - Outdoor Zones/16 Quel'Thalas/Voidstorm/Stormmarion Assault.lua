---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

STORMMARION_ASSAULT = createHeader({
	readable = "Stormmarion Assault",
	--icon = ,
	text = {
		en = "Stormmarion Assault",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(STORMMARION_ASSAULT, {
			n(ACHIEVEMENTS, {
			}),
			n(EVENT_COMPLETION, {
				o(560325, {	-- Core Chest
					["coord"] = { 26.8, 67.9, MAP.MIDNIGHT.VOIDSTORM },
					["questID"] = 91719,
					["isWeekly"] = true,	-- TODO: Blizzard bug, it unflagged in next event but it's not spawn chest).
					["groups"] = {
					},
				}),
			}),
			n(QUESTS, {
				q(92365, {	-- Creating Defenses
					["provider"] = { "n", 248114 },	-- Null-Theorist Selune
					["coord"] = { 26.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						o(571718, {	-- Selune's Stormarion Cores
							["coord"] = { 25.8, 68.7, MAP.MIDNIGHT.VOIDSTORM },
							["groups"] = {
								i(250807),	-- Selune's Stormarion Core (QI!)
							},
						}),
					},
				}),
				q(95175, {	-- Anchoring the Defense
					["sourceQuests"] = { 92365 },	-- Creating Defenses
					["provider"] = { "n", 248114 },	-- Null-Theorist Selune
					["coord"] = { 26.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(86810, {	-- Harvesting the Void
					["provider"] = { "n", 248114 },	-- Null-Theorist Selune
					["isWeekly"] = true,
					["coord"] = { 26.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(91700, {	-- Darkness Unmade
					["provider"] = { "n", 244749 },	-- Xy'dax
					["isWeekly"] = true,
					["coord"] = { 26.4, 67.5, MAP.MIDNIGHT.VOIDSTORM },
				}),
			}),
			n(REWARDS, {
				i(246951),	-- Stormarion Core
				o(618828, {	--Stormarion Fragment
					i(264506),	-- Stormarion Fragment
				}),
				i(248680),	-- Unstable Focusing Crystal
				i(260979),	-- Victorious Stormarion Cache
				i(260940, {	-- Victorious Stormarion Pinnacle Cache
					i(265030),	-- Kai (PET!)
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(STORMMARION_ASSAULT, {
				n(QUESTS, {
					q(90962),	-- "Stormarion Assault", Right when it start
					q(90943),	-- "Stormarion Assault", Before Wave 1 preparation?
					q(91938),	-- Wave 1 started
					q(91464),	-- Wave 2 preparation started
					q(91465),	-- Wave 3 preparation started
				}),
			}),
		}),
	}),
}));
