---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
PREY = createHeader({
	readable = "Prey",
	icon = 237274,
	text = {
		en = "Prey",
	},
});
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDown({ ["timeline"] = { ADDED_12_0_1_LAUNCH } }, {
	n(PREY, {
		n(ACHIEVEMENTS, {
			ach(61387),	-- Prey: Normal Mode I
			ach(61386),	-- Prey: Normal Mode II
			ach(42701),	-- Prey: Normal Mode III
			ach(61389),	-- Prey: Hard Mode I
			ach(61388),	-- Prey: Hard Mode II
			ach(42702),	-- Prey: Hard Mode III
			ach(61392),	-- Prey: Nightmare Mode I
			ach(61391),	-- Prey: Nightmare Mode II
			ach(42703),	-- Prey: Nightmare Mode III
		}),
		n(QUESTS, {
			q(92926, {	-- Astalor's Initiative
				--["sourceQuests"] = { ??? },	-- ??
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92945, {	-- The Power of Anguish
				["sourceQuests"] = { 92926 },	-- Astalor's Initiative
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(93043, {	-- When Predator Becomes Prey
				["sourceQuests"] = { 92945 },	-- The Power of Anguish
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(93086, {	-- To the Sanctum!
				["sourceQuests"] = { 93043 },	-- When Predator Becomes Prey
				["provider"] = { "n", 253513 },	-- Astalor Bloodsworn
				["coord"] = { 42.8, 10.3, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(92177, {	-- One Hero's Prey
				["sourceQuests"] = { 93086 },	-- To the Sanctum! (TODO: unsure if it is still same quest chain, but up after this quest)
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
			}),
			q(92178, {	-- Practical Magic
				["sourceQuests"] = { 92177 },	-- One Hero's Prey
				["provider"] = { "n", 246231 },	-- Astalor Bloodsworn
				["coord"] = { 56.7, 65.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(264513),	-- Crystalline Vessel (QI!)
					--spell(1270744),	-- Prey: Hard Difficulty
				},
			}),
			--TODO: there should be quest for nightmare unlock but it is not up on alpha?
		}),
		n(QUESTS, sharedData({
			["provider"] = { "n", 245824 },	-- Hunt Table
			["coord"] = { 56.8, 65.3, MAP.MIDNIGHT.SILVERMOON_CITY },
			["isWeekly"] = true,
		}, {
			q(91096),	-- Prey: Magistrix Emberlash (Normal)
			q(91244),	-- Prey: Praetor Singularis (Hard)
			q(91215),	-- Prey: Senior Tinker Ozwold (Nightmare)
		})),
		n(REWARDS, {
			--Currency
			currency(3392),	-- Remnant of Anguish
			--Used just for tooltip, you recieve item instead of it
			i(257023),	-- Preyseeker's Adventurer Chest
			i(262346),	-- Preyseeker's Champion Chest
			i(257026),	-- Preyseeker's Veteran Chest
			--Gear
			n(ARMOR, {
				filter(BACK_F, {
				}),
				filter(CLOTH, {
				}),
				filter(FINGER_F, {
				}),
				filter(LEATHER, {
					i(259932),	-- Preyseeker's Sleek Armlets
					i(259931),	-- Preyseeker's Sleek Belt
					i(259926),	-- Preyseeker's Sleek Boots
					i(259927),	-- Preyseeker's Sleek Gauntlets
					i(259925),	-- Preyseeker's Sleek Jerkin
					i(259928),	-- Preyseeker's Sleek Mask
					i(259930),	-- Preyseeker's Sleek Shoulderpads
					i(259929),	-- Preyseeker's Sleek Trousers
				}),
				filter(MAIL, {
				}),
				filter(NECK_F, {
					i(259915),	-- Preyseeker's Clasp
				}),
				filter(PLATE, {
				}),
			}),
			n(WEAPONS, {
				i(259949),	-- Preyseeker's Hatchet
			}),
			filter(MISC, {
			}),
			filter(REAGENTS, {
			}),
			filter(RECIPES, {
			}),
		}),
		n(WORLD_QUESTS, {
			q(91601, {	-- Prey: Apex Predator
				["coord"] = { 42.7, 56.0, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91207, {	-- Prey: Apex Predator (TODO: probably could be wrongly flagged after fill up bar during hard mode)
				["coord"] = { 42.7, 56.0, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91590, {	-- Prey: Concealed Threat
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91591, {	-- Prey: Concealed Threat (TODO: probably could be wrongly flagged after fill up bar during hard mode)
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91592, {	-- Prey: Concealed Threat (TODO: probably could be wrongly flagged after fill up bar during nightmare mode)
				["coord"] = { 38.8, 70.5, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
			q(91594, {	-- Prey: Endurance Hunter
				["coord"] = { 59.6, 71.2, MAP.MIDNIGHT.EVERSONG_WOODS },
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(PREY, {
			n(QUESTS, {
				--q(93168),	-- after completion questID 91096 (Prey: Magistrix Emberlash (Normal)), probably end of "tutorial" or first per week?
			}),
		}),
	}),
}));
