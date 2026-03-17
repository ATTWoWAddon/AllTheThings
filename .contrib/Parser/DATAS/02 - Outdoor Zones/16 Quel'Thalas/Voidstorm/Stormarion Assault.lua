---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

STORMARION_ASSAULT = createHeader({
	readable = "Stormarion Assault",
	icon = 7431083,
	text = {
		en = "Stormarion Assault",
		cn = "斯托玛兰突袭战",
	},
});

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(STORMARION_ASSAULT, {
			n(ACHIEVEMENTS, {
				ach(61913),	-- A Singular Problem
				ach(61912),	-- Anchoring the Defense
				ach(61922),	-- Ninety Percent is Good Enough
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
					["qg"] = 244749, 	-- Xy'dax <Shadowtrade Imports>
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
				q(91928, {	-- What's For Lunch? --TODO I think this goes here
					["coord"] = { 26.4, 67.9, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = { i(248826) },	-- Trigore Flank (QI!)
				}),
				q(91929, {	-- What's For Lunch?
					["qg"] = 244749, 	-- Xy'dax <Shadowtrade Imports>
					["coord"] = { 26.4, 67.6, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = { i(248905) },	-- Void Malgrease (QI!)
				}),
				--Alex: this quest currently in HQT but seems like Blizzard are dumb and re-use it, uncomment if it will be live
				--q(54781, {	-- What's For Lunch?
				--	["qg"] = 244749, 	-- Xy'dax <Shadowtrade Imports>
				--	["coord"] = { 26.4, 67.6, MAP.MIDNIGHT.VOIDSTORM },
				--	["groups"] = {
				--		i(248929),	-- Domanaar Snack Pack (QI!)
				--		i(248927),	-- Stormray Fin (QI!)
				--	},
				--}),
			}),
			n(REWARDS, {
				i(246951),	-- Stormarion Core
				o(618828, {	--Stormarion Fragment
					i(264506),	-- Stormarion Fragment
				}),
				i(248680),	-- Unstable Focusing Crystal
				i(260979, {	-- Victorious Stormarion Cache
					["sym"] = {{"select","itemID",
						257180,	-- Reins of Contained Stormarion Defender (MOUNT!)
						265030,	-- Kai (PET!)
						256761,	-- Formula: Enchant Shoulders - Voidtouched (RECIPE!)
						258134,	-- Pattern: Voidstrider Saddlebag (RECIPE!)
						258499,	-- Technique: Restful Bronze Bench (RECIPE!)
						264343,	-- Cosmic Void Gravitational Orb (DECOR!)
						264483,	-- Cosmic Void Campfire (DECOR!)
						262608,	-- Void Elf Stool (DECOR!)
					}},
				}),
				i(269704, {	-- Victorious Stormarion Cache (Leveling)
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
				i(268485, {	-- Victorious Stormarion Pinnacle Cache (Pre-Season)
					["timeline"] = { ADDED_12_0_1_LAUNCH, REMOVED_12_0_X_SEASONSTART },
					["groups"] = {
						i(257180),	-- Reins of Contained Stormarion Defender (MOUNT!)
						i(265030),	-- Kai (PET!)
						i(256761),	-- Formula: Enchant Shoulders - Voidtouched (RECIPE!)
						i(258134),	-- Pattern: Voidstrider Saddlebag (RECIPE!)
						i(258499),	-- Technique: Restful Bronze Bench (RECIPE!)
						i(264343),	-- Cosmic Void Gravitational Orb (DECOR!)
						i(264483),	-- Cosmic Void Campfire (DECOR!)
						i(262608),	-- Void Elf Stool (DECOR!)
					},
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
				i(260940, {	-- Victorious Stormarion Pinnacle Cache (Season 1)
					["timeline"] = { ADDED_12_0_X_SEASONSTART },
					["groups"] = {
						i(257180),	-- Reins of Contained Stormarion Defender (MOUNT!)
						i(265030),	-- Kai (PET!)
						i(256761),	-- Formula: Enchant Shoulders - Voidtouched (RECIPE!)
						i(258134),	-- Pattern: Voidstrider Saddlebag (RECIPE!)
						i(258499),	-- Technique: Restful Bronze Bench (RECIPE!)
						i(264343),	-- Cosmic Void Gravitational Orb (DECOR!)
						i(264483),	-- Cosmic Void Campfire (DECOR!)
						i(262608),	-- Void Elf Stool (DECOR!)
					},
					["sym"] = { -- [Quel'Thalas Zone Rewards content]
						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",ARMOR},{"finalize"},

						{"select","mapID",MAP.MIDNIGHT.QUELTHALAS},{"pop"},
						{"where","headerID",ZONE_REWARDS},{"pop"},
						{"where","headerID",WEAPONS},
					},
				}),
			}),
			n(TREASURES, {
				o(566083, {	-- Stormarion Supplies
					["description"] = "Spawns randomly around Stormarion Citadel.",
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(STORMARION_ASSAULT, {
				n(QUESTS, {
					q(90962, {["repeatable"]=true}),	-- "Stormarion Assault", Right when it start (Stage 1 of 7)/ (un)flag completed after successful completion of event (wq unlock?)
					q(90943),	-- "Stormarion Assault", Before Wave 1 preparation? / (un)flag completed right before end of event
					q(91938),	-- What's For Lunch (spellID 1248164), ???
					q(91931),	-- Flag Tracking (spellID 1248085) AND Clear Quest (spellID 1248080), after turn in questID 91928 (What's For Lunch?)
					--q(91463?),	-- Wave 1 started (Stage 2 of 7), no hqt
					q(91464),	-- Wave 2 preparation started (Stage 3 of 7)
					q(91465),	-- Wave 3 preparation started (Stage 5 of 7)
					q(93793),	-- fired after completion first Stormarion Assault (Victorious Stormarion Pinnacle Cache was looted?)/ probably WQs unloock in area?
				}),
			}),
		}),
	}),
}));
