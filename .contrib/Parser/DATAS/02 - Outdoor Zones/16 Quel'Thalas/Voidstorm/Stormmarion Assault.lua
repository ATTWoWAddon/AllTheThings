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
					["isWeekly"] = true,
					["groups"] = {
						i(246951),	-- Stormarion Core
					},
				}),
			}),
			n(ZONE_REWARDS, {
				o(618828, {	--
					i(264506),	-- Stormarion Fragment
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
					--q(91938),	-- either prep state or wave 1 (unflagged 54781 (unknown hqt))
					q(91464),	-- Wave 2 preparation started
					q(91465),	-- Wave 3 preparation started
				}),
			}),
		}),
	}),
}));
