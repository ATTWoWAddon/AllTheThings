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
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, bubbleDown({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	-- TODO: Move this all to Expansion Features instead?
	n(PREY, {
		n(ACHIEVEMENTS, {
			ach(62142),	-- I Didn't Hear No Bell
			ach(62136),	-- I'm Good At What I Do
			ach(62137),	-- I'm Not Trapped In Here With You
			ach(62140),	-- Kitchen Nightmare
			ach(62141),	-- Look, I'm Just Trying To Fish Here
			ach(62139),	-- Midnight Hunter
			ach(62135),	-- Now It's A Party
			ach(62154, {	-- Prey: A Different Kind of Void (Hard)
				i(265798),	-- Preyseeker's Ren'dorei Bust (DECOR!)
			}),
			ach(62169, {	-- Prey: A Different Kind of Void (Nightmare)
				i(265796),	-- Preyseeker's Ren'dorei Effigy (DECOR!)
			}),
			ach(62165, {	-- Prey: A Thorn in the Side (Hard)
				i(265707),	-- Preyseeker's Thornspeaker Bust (DECOR!)
			}),
			ach(62183, {	-- Prey: A Thorn in the Side (Nightmare)
				i(265692),	-- Preyseeker's Thornspeaker Effigy (DECOR!)
			}),
			ach(62156, {	-- Prey: Anger Management (Hard)
				i(265699),	-- Preyseeker's Breaker Bust (DECOR!)
			}),
			ach(62174, {	-- Prey: Anger Management (Nightmare)
				i(265684),	-- Preyseeker's Breaker Effigy (DECOR!)
			}),
			ach(62160, {	-- Prey: Blinded By The Light (Hard)
				i(265702),	-- Preyseeker's Vindicator Bust (DECOR!)
			}),
			ach(62178, {	-- Prey: Blinded By The Light (Nightmare)
				i(265687),	-- Preyseeker's Vindicator Effigy (DECOR!)
			}),
			ach(62159, {	-- Prey: Bloody Green Thumbs (Hard)
				i(265701),	-- Preyseeker's Rutaani Bust (DECOR!)
			}),
			ach(62177, {	-- Prey: Bloody Green Thumbs (Nightmare)
				i(265686),	-- Preyseeker's Rutaani Effigy (DECOR!)
			}),
			ach(62166, {	-- Prey: Breaking the Blade (Hard)
				i(265708),	-- Preyseeker's Twilight Bust (DECOR!)
			}),
			ach(62184, {	-- Prey: Breaking the Blade (Nightmare)
				i(265694),	-- Preyseeker's Twilight Effigy (DECOR!)
			}),
			ach(62163, {	-- Prey: Chasing Death (Hard)
				i(265705),	-- Preyseeker's Knight-Errant Bust (DECOR!)
			}),
			ach(62181, {	-- Prey: Chasing Death (Nightmare)
				i(265690),	-- Preyseeker's Knight-Errant Effigy (DECOR!)
			}),
			ach(62162, {	-- Prey: Dominating the Void (Hard)
				i(265704),	-- Preyseeker's Executor Bust (DECOR!)
			}),
			ach(62180, {	-- Prey: Dominating the Void (Nightmare)
				i(265689),	-- Preyseeker's Executor Effigy (DECOR!)
			}),
			ach(62155, {	-- Prey: Ethereal Assassins (Hard)
				i(265698),	-- Preyseeker's Ethereal Bust (DECOR!)
			}),
			ach(62173, {	-- Prey: Ethereal Assassins (Nightmare)
				i(265683),	-- Preyseeker's Ethereal Effigy (DECOR!)
			}),
			ach(61389),	-- Prey: Hard Mode I
			ach(61388),	-- Prey: Hard Mode II
			ach(42702),	-- Prey: Hard Mode III
			ach(62153, {	-- Prey: Insane Inventors (Hard)
				i(265697),	-- Preyseeker's Tinker Bust (DECOR!)
			}),
			ach(62168, {	-- Prey: Insane Inventors (Nightmare)
				i(265682),	-- Preyseeker's Tinker Effigy (DECOR!)
			}),
			ach(62144, {	-- Prey: Mad Magisters (Hard)
				i(265696),	-- Preyseeker's Magister Bust (DECOR!)
			}),
			ach(62167, {	-- Prey: Mad Magisters (Nightmare)
				i(265681),	-- Preyseeker's Magister Effigy (DECOR!)
			}),
			ach(61392),	-- Prey: Nightmare Mode I
			ach(61391),	-- Prey: Nightmare Mode II
			ach(42703, {	-- Prey: Nightmare Mode III
				i(257193),	-- Preyseeker's Nightmare (MOUNT!)
			}),
			ach(62164, {	-- Prey: No Rest for the Wretched (Hard)
				i(265706),	-- Preyseeker's Wretched Bust (DECOR!)
			}),
			ach(62182, {	-- Prey: No Rest for the Wretched (Nightmare)
				i(265691),	-- Preyseeker's Wretched Effigy (DECOR!)
			}),
			ach(61387),	-- Prey: Normal Mode I
			ach(61386),	-- Prey: Normal Mode II
			ach(42701),	-- Prey: Normal Mode III
			ach(62161, {	-- Prey: Outsmarting the Schemers (Hard)
				i(265703),	-- Preyseeker's Consul Bust (DECOR!)
			}),
			ach(62179, {	-- Prey: Outsmarting the Schemers (Nightmare)
				i(265688),	-- Preyseeker's Consul Effigy (DECOR!)
			}),
			ach(62157, {	-- Prey: Sadistic Shamans (Hard)
				i(265700),	-- Preyseeker's Amani Bust (DECOR!)
			}),
			ach(62175, {	-- Prey: Sadistic Shamans (Nightmare)
				i(265685),	-- Preyseeker's Amani Effigy (DECOR!)
			}),
			ach(62158, {	-- Prey: The Fallen Farstriders (Hard)
				i(265799),	-- Preyseeker's Farstrider Bust (DECOR!)
			}),
			ach(62176, {	-- Prey: The Fallen Farstriders (Nightmare)
				i(265797),	-- Preyseeker's Farstrider Effigy (DECOR!)
			}),
			ach(62134),	-- The Deadliest of Prey
			ach(62143),	-- Trapped In The Middle With You
			ach(62138),	-- You're Trapped In Here With Me
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
					i(259909),	-- Preyseeker's Refined Shawl
					i(259910),	-- Preyseeker's Sleek Capelet
				}),
				filter(CLOTH, {
					i(259923),	-- Preyseeker's Refined Cord
					i(259920),	-- Preyseeker's Refined Crown
					i(259924),	-- Preyseeker's Refined Cuffs
					i(259922),	-- Preyseeker's Refined Epaulet
					i(259919),	-- Preyseeker's Refined Gloves
					i(259918),	-- Preyseeker's Refined Slippers
					i(259921),	-- Preyseeker's Refined Tights
					i(259917),	-- Preyseeker's Refined Vestments
				}),
				filter(FINGER_F, {
					i(259911),	-- Preyseeker's Band
					i(259914),	-- Preyseeker's Circle
					i(259913),	-- Preyseeker's Ring
					i(259912),	-- Preyseeker's Signet
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
					i(259940),	-- Preyseeker's Rugged Bindings
					i(259939),	-- Preyseeker's Rugged Clasp
					i(259935),	-- Preyseeker's Rugged Grips
					i(259933),	-- Preyseeker's Rugged Haubergeon
					i(259937),	-- Preyseeker's Rugged Legguards
					i(259936),	-- Preyseeker's Rugged Plume
					i(259934),	-- Preyseeker's Rugged Sabatons
					i(259938),	-- Preyseeker's Rugged Shoulderguards
				}),
				filter(NECK_F, {
					i(259916),	-- Preyseeker's Choker
					i(259915),	-- Preyseeker's Clasp
				}),
				filter(PLATE, {
					i(259941),	-- Preyseeker's Polished Brigandine
					i(259947),	-- Preyseeker's Polished Greatbelt
					i(259942),	-- Preyseeker's Polished Greatboots
					i(259943),	-- Preyseeker's Polished Handguards
					i(259944),	-- Preyseeker's Polished Helmet
					i(259946),	-- Preyseeker's Polished Pauldrons
					i(259945),	-- Preyseeker's Polished Tassets
					i(259948),	-- Preyseeker's Polished Vambraces
				}),
			}),
			n(WEAPONS, {
				i(259952),	-- Preyseeker's Cudgel
				i(259964),	-- Preyseeker's Falchion
				i(259955),	-- Preyseeker's Hammer
				i(259949),	-- Preyseeker's Hatchet
				i(259950),	-- Preyseeker's Kukri
				i(259965),	-- Preyseeker's Lantern
				i(259960),	-- Preyseeker's Longbow
				i(259958),	-- Preyseeker's Longsword
				i(259957),	-- Preyseeker's Ritual Blade
				i(259953),	-- Preyseeker's Scepter
				i(259956),	-- Preyseeker's Scimitar
				i(259951),	-- Preyseeker's Shiv
				i(259961),	-- Preyseeker's Spear
				i(259963),	-- Preyseeker's Spire
				i(259962),	-- Preyseeker's Staff
				i(259966),	-- Preyseeker's Tower Shield
				i(259959),	-- Preyseeker's Warglaive
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
