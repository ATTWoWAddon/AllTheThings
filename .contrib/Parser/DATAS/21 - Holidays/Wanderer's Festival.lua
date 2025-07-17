--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
root(ROOTS.Holidays, {
	applyevent(EVENTS.WANDERERS_FESTIVAL, n(createHeader({
		readable = "Wanderer's Festival",
		icon = 606553,
		eventID = EVENTS.WANDERERS_FESTIVAL,
		eventSchedule = {
			4, -- Weekly Recurring
			1, 21, 0, 120,	-- Sunday at 09:00 PM (21:00) until 11:00 PM (23:00)
		},
		text = {
			en = "Wanderer's Festival",
			de = "Wanderfest",
			es = "Festival del Errante",
			mx = "Festival del errante",
			fr = "Festival de l’explorateur",
			it = "Festa del Nomade",
			pt = "Festival do Andarilho",
			ru = "Фестиваль странника",
			ko = "유랑객의 축제",
			cn = "云游节",
			tw = "遊子節",
		},
		description = {
			en = "The festival is held only on Sunday night from 9 PM to 11 PM (PST(US)/CEST(EU)/AEST(OCE). During the festival, floating lanterns appear on the surface of the water and Pandaren NPCs wander onto the beach to set up bonfires and shoot off fireworks. Shortly after, the Wanderer's Festival Hatchlings appear.",
		},
	}), {
		["providers"] = {
			{ "o", 223184 },	-- Wanderer's Festival Announcement
			{ "n",  73594 },	-- Wandering Herald
		},
		["coord"] = { 76.0, 26.8, KRASARANG_WILDS },
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7518),	-- Wanderers, Dreamers, and You
			}),
			battlepets({
				pet(1013),	-- Wanderer's Festival Hatchling (PET!)
			}),
		},
	})),
});
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	m(PANDARIA, {
		m(KRASARANG_WILDS, {
			n(QUESTS, {
				q(55163),	-- Throw a lantern into the water during the Wanderer's Festival
			}),
		}),
	}),
})));