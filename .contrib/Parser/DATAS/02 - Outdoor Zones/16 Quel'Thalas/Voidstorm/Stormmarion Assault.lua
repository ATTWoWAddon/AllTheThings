---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

STORMMARION_ASSAULT = createHeader({
	readable = "Stormmarion Assault",
	icon = 7431083,
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
				q(92407, {	-- Hidey-Hole
					--["sourceQuests"] = { 86810 },	-- Harvesting the Void (TODO: ???)
					["provider"] = { "n", 248114 },	-- Null-Theorist Selune
					["isWeekly"] = true,
					["coord"] = { 26.8, 68.0, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(251284),	-- Anomaly Inverter (QI!)
					},
				}),
			}),
			n(REWARDS, {
				i(246951),	-- Stormarion Core
				o(618828, {	--Stormarion Fragment
					i(264506),	-- Stormarion Fragment
				}),
				i(248680),	-- Unstable Focusing Crystal
				i(260979, {	-- Victorious Stormarion Cache
					i(257180),	-- Reins of Contained Stormarion Defender (MOUNT!) TODO: Blizzard bug - missing spellID for it, fix on live
				}),
				i(260940, {	-- Victorious Stormarion Pinnacle Cache
					i(265030),	-- Kai (PET!)
					i(262608),	-- Void Elf Stool (DECOR!)
					i(256761),	-- Formula: Enchant Shoulders - Voidtouched (RECIPE!)
					i(258134),	-- Pattern: Voidstrider Saddlebag (RECIPE!)
					i(267396),	-- Technique: Restful Bronze Bench (RECIPE!)
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
					q(90962, {["repeatable"]=true}),	-- "Stormarion Assault", Right when it start (Stage 1 of 7)/ (un)flag completed after successful completion of event (wq unlock?)
					q(90943),	-- "Stormarion Assault", Before Wave 1 preparation? / (un)flag completed right before end of event
					q(91938),	-- 
					--q(91463?),	-- Wave 1 started (Stage 2 of 7), no hqt
					q(91464),	-- Wave 2 preparation started (Stage 3 of 7)
					q(91465),	-- Wave 3 preparation started (Stage 5 of 7)
					q(93793),	-- fired after completion first Stormarion Assault (Victorious Stormarion Pinnacle Cache was looted?)/ probably WQs unloock in area?
				}),
			}),
		}),
	}),
}));
