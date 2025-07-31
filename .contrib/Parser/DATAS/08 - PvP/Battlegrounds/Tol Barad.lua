---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local function TolBaradDailyQuest(questID, t)
	local quest = q(questID, t);
	if not quest.isWeekly then quest.isDaily = true; end

	-- Each daily quest awards a commendation
	local g = quest.g or quest.groups;
	if not g then
		g = {};
		quest.groups = g;
	end
	table.insert(g, currency(391));	-- Tol Barad Commendation

	-- Assign the Reputation Requirements
	t.maxReputation = { t.races == ALLIANCE_ONLY and FACTION_BARADINS_WARDENS or FACTION_HELLSCREAMS_REACH, EXALTED };
	return t;
end
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, bubbleDown({ ["timeline"] = { ADDED_4_0_3_LAUNCH } }, {
	m(TOL_BARAD, {
		["description"] = "Tol Barad is a world PvP zone very similar to Wintergrasp. A battle starts on even intervals of time, and the winner of the match gains access to the Baradin Hold raid, as well as a number of special daily quests that grant reputation and currency. In addition to this, both winner and loser gain access to the standard quests in the zone.",
		["icon"] = 236396,
		-- #if ANYCLASSIC
		["maps"] = { 244 },
		-- #endif
		["groups"] = {
			n(ACHIEVEMENTS, {
				a(ach(5489,	{ -- Master of Tol Barad (A)
					["sym"] = {{"meta_achievement",
						5417,	-- Tol Barad Veteran
						5415,	-- Tower Plower
						5488,	-- Towers of Power
						5487,	-- Tol Barad Saboteur
						5486,	-- Tol Barad All-Star
						5416,	-- Pit Lord Argaloth
					}},
				})),
				h(ach(5490,	{ -- Master of Tol Barad (H)
					["sym"] = {{"meta_achievement",
						5418,	-- Tol Barad Veteran
						5415,	-- Tower Plower
						5488,	-- Towers of Power
						5487,	-- Tol Barad Saboteur
						5486,	-- Tol Barad All-Star
						5416,	-- Pit Lord Argaloth
					}},
				})),
				ach(5486),	-- Tol Barad All-Star
				ach(5487),	-- Tol Barad Saboteur
				a(ach(5417)),	-- Tol Barad Veteran
				h(ach(5418)),	-- Tol Barad Veteran
				ach(5412),	-- Tol Barad Victory
				ach(5488),	-- Towers of Power
				ach(5415),	-- Tower Plower
			}),
			n(QUESTS, {
				TolBaradDailyQuest(28882, {	-- Victory in Tol Barad [A]
					["qg"] = 51288,	-- Major Marsden
					["coord"] = { 74.4, 60.8, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isWeekly"] = true,
					["lvl"] = 85,
				}),
				TolBaradDailyQuest(28884, {	-- Victory in Tol Barad [H]
					["qg"] = 51287,	-- Colonel Karzag
					["coord"] = { 54.2, 80.6, TOL_BARAD_PENINSULA },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isWeekly"] = true,
					["lvl"] = 85,
				}),
			}),
			n(QUESTS, sharedData({ -- Always up in Baradin Hold: Sergeant Parker (Alliance)/Commander Zanoth(Horde)
				["coord"] = { 51.0, 49.65, TOL_BARAD },
			}, {
				TolBaradDailyQuest(28122, {	-- A Huge Problem [A]
					["qg"] = 48066, -- Sergeant Parker
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Problim slain
							["provider"] = { "n", 47593 },	-- Problim
						}),
					},
				}),
				TolBaradDailyQuest(28657, {	-- A Huge Problem [H]
					["qg"] = 48069, -- Commander Zanoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Problim slain
							["provider"] = { "n", 47593 },	-- Problim
						}),
					},
				}),
				TolBaradDailyQuest(28658, {	-- Swamp Bait [H]
					["qg"] = 48069, -- Commander Zanoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Crocolisk Hide
							["provider"] = { "i", 63103 },	-- Crocolisk Hide
							["cr"] = 47591,	-- Baradin Crocolisk
						}),
					},
				}),
				TolBaradDailyQuest(28162, {	-- Swamp Bait [A]
					["qg"] = 48066, -- Sergeant Parker
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Crocolisk Hide
							["provider"] = { "i", 63103 },	-- Crocolisk Hide
							["cr"] = 47591,	-- Baradin Crocolisk
						}),
					},
				}),
				TolBaradDailyQuest(28163, {	-- The Leftovers [A]
					["qg"] = 48066, -- Sergeant Parker
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Horde Infantry
							["providers"] = {
								{ "n", 47607},	-- Horde Druid Infantry
								{ "n", 47608},	-- Horde Mage Infantry
								{ "n", 47609},	-- Horde Rogue Infantry
								{ "n", 47610},	-- Horde Shaman Infantry
							},
						}),
					},
				}),
				TolBaradDailyQuest(28659, {	-- The Leftovers [H]
					["qg"] = 48069, -- Commander Zanoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Alliance Infantry
							["providers"] = {
								{ "n", 47595},	-- Alliance Hunter Infantry
								{ "n", 47598},	-- Alliance Mage Infantry
								{ "n", 47599},	-- Alliance Warrior Infantry
								{ "n", 47600},	-- Alliance Paladin Infantry
							},
						}),
					},
				}),
			})),
			n(QUESTS, sharedData({ -- Rotating questgivers in Baradin Hold
				["coord"] = { 51.45, 49.65, TOL_BARAD },
				-- Danny Donkey: Because classic does not show descriptions on questgivers.
				-- #if ANYCLASSIC
				["description"] = "This questgiver shares it's spawn with two other quest givers. Win the battle of Tol Barad to have a chance at getting a different questgiver offering other quests in it's place.",
				-- #endif
			}, {
				TolBaradDailyQuest(28117, {	-- Clearing the Depths [A]
					["qg"] = 48039, -- Commander Stevens
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/9 Ghosts Slain
							["providers"] = {
								{ "n", 47531},	-- Captive Spirit
								{ "n", 47534},	-- Cellblock Ooze
								{ "n", 47590},	-- Ghastly Convict
							},
						}),
					},
				}),
				TolBaradDailyQuest(28660, {	-- Clearing the Depths [H]
					["qg"] = 48071, -- Private Garnoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/9 Ghosts Slain
							["providers"] = {
								{ "n", 47531},	-- Captive Spirit
								{ "n", 47534},	-- Cellblock Ooze
								{ "n", 47590},	-- Ghastly Convict
							},
						}),
					},
				}),
				TolBaradDailyQuest(28665, {	-- Cursed Shackles [H]
					["qg"] = 48070, -- Drillmaster Razgoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Cursed Shackles
							["providers"] = {
								{ "i", 63149 },	-- Cursed Shackles
								{ "o", 206905 },	-- Cursed Shackles
							},
						}),
					},
				}),
				TolBaradDailyQuest(28186, {	-- Cursed Shackles [A]
					["qg"] = 48061, -- 2nd Lieutenant Wansworth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/8 Cursed Shackles
							["providers"] = {
								{ "i", 63149 },	-- Cursed Shackles
								{ "o", 206905 },	-- Cursed Shackles
							},
						}),
					},
				}),
				TolBaradDailyQuest(28165, {	-- D-Block [A]
					["qg"] = 48061, -- 2nd Lieutenant Wansworth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Demons Slain
							["providers"] = {
								{ "n", 47540},	-- Shivan Destroyer
								{ "n", 47542},	-- Cell Watcher
								{ "n", 47544},	-- Svarnos
								{ "n", 47548},	-- Jailed Wrathguard
								{ "n", 47549},	-- Imprisoned Imp
								{ "n", 56350},	-- Disciple of Hate
							},
						}),
					},
				}),
				TolBaradDailyQuest(28663, {	-- D-Block [H]
					["qg"] = 48070, -- Drillmaster Razgoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Demons Slain
							["providers"] = {
								{ "n", 47540},	-- Shivan Destroyer
								{ "n", 47542},	-- Cell Watcher
								{ "n", 47544},	-- Svarnos
								{ "n", 47548},	-- Jailed Wrathguard
								{ "n", 47549},	-- Imprisoned Imp
								{ "n", 56350},	-- Disciple of Hate
							},
						}),
					},
				}),
				TolBaradDailyQuest(28670, {	-- Food From Below [H]
					["qg"] = 48062, -- Staff Sergeant Lazgar
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Cellblock Rations
							["providers"] = {
								{ "i", 63315 },	-- Cellblock Rations
								{ "o", 206996 },	-- Crate of Cellblock Rations
							},
						}),
					},
				}),
				TolBaradDailyQuest(28232, {	-- Food From Below [A]
					["qg"] = 48074, -- Marshal Fallows
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/12 Cellblock Rations
							["providers"] = {
								{ "i", 63315 },	-- Cellblock Rations
								{ "o", 206996 },	-- Crate of Cellblock Rations
							},
						}),
					},
				}),
				TolBaradDailyQuest(28662, {	-- Learning From The Past [H]
					["qg"] = 48071, -- Private Garnoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Dusty Prison Journal
							["providers"] = {
								{ "i", 63034 },	-- Dusty Prison Journal
								{ "o", 206890 },	-- Dusty Prison Journal
							},
						}),
					},
				}),
				TolBaradDailyQuest(28120, {	-- Learning From The Past [A]
					["qg"] = 48039, -- Commander Stevens
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/4 Dusty Prison Journal
							["providers"] = {
								{ "i", 63034 },	-- Dusty Prison Journal
								{ "o", 206890 },	-- Dusty Prison Journal
							},
						}),
					},
				}),
				TolBaradDailyQuest(28188, {	-- Prison Revolt [A]
					["qg"] = 48074, -- Marshal Fallows
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Prisoners Slain
							["providers"] = {
								{ "n", 47550},	-- Imprisoned Worker
								{ "n", 47552},	-- Exiled Mage
								{ "n", 47561},	-- Warden Guard
								{ "n", 48036},	-- Warden Silva
								{ "n", 51023},	-- Demented Prisoner
							},
						}),
					},
				}),
				TolBaradDailyQuest(28668, {	-- Prison Revolt [H]
					["qg"] = 48062, -- Staff Sergeant Lazgar
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/10 Prisoners Slain
							["providers"] = {
								{ "n", 47550},	-- Imprisoned Worker
								{ "n", 47552},	-- Exiled Mage
								{ "n", 47561},	-- Warden Guard
								{ "n", 48036},	-- Warden Silva
								{ "n", 51023},	-- Demented Prisoner
							},
						}),
					},
				}),
				TolBaradDailyQuest(28185, {	-- Svarnos [A]
					["qg"] = 48061, -- 2nd Lieutenant Wansworth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Svarnos' Cursed Collar
							["provider"] = { "i", 63143 },	-- Svarnos' Cursed Collar
							["cr"] = 47544,	-- Svarnos
						}),
					},
				}),
				TolBaradDailyQuest(28664, {	-- Svarnos [H]
					["qg"] = 48070, -- Drillmaster Razgoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Svarnos' Cursed Collar
							["provider"] = { "i", 63143 },	-- Svarnos' Cursed Collar
							["cr"] = 47544,	-- Svarnos
						}),
					},
				}),
				TolBaradDailyQuest(28118, {	-- The Imprisoned Archmage [A]
					["qg"] = 48039, -- Commander Stevens
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Archmage Galus' Staff
							["provider"] = { "i", 63033 },	-- Archmage Galus' Staff
							["cr"] = 47537,	-- Archmage Galus
						}),
					},
				}),
				TolBaradDailyQuest(28661, {	-- The Imprisoned Archmage [H]
					["qg"] = 48071, -- Private Garnoth
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Archmage Galus' Staff
							["provider"] = { "i", 63033 },	-- Archmage Galus' Staff
							["cr"] = 47537,	-- Archmage Galus
						}),
					},
				}),
				TolBaradDailyQuest(28223, {	-- The Warden [A]
					["qg"] = 48074, -- Marshal Fallows
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Warden's Keys
							["provider"] = { "i", 63309 },	-- Warden's Keys
							["cr"] = 48036,	-- Warden Silva
						}),
					},
				}),
				TolBaradDailyQuest(28669, {	-- The Warden [H]
					["qg"] = 48062, -- Staff Sergeant Lazgar
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isDaily"] = true,
					["groups"] = {
						objective(1, {	-- 0/1 Warden's Keys
							["provider"] = { "i", 63309 },	-- Warden's Keys
							["cr"] = 48036,	-- Warden Silva
						}),
					},
				}),
			})),
			-- #if NOT ANYCLASSIC
			n(QUESTS, sharedData({ -- Rotating questgivers in Tol Barad
				["description"] = "This questgiver shares it's spawn with two other quest givers. Win the battle of Tol Barad to have a chance at getting a different questgiver offering other quests in it's place.",
			}, {
				n(48039),	-- Commander Stevens
				n(48061),	-- 2nd Lieutenant Wansworth
				n(48062),	-- Staff Sergeant Lazgar
				n(48070),	-- Drillmaster Razgoth
				n(48071),	-- Private Garnoth
				n(48074),	-- Marshal Fallows
			})),
			-- #endif
			-- Helpful event descriptions
			n(45344, {	-- Abandoned Siege Engine
				-- #if BEFORE 8.0.3
				["description"] = "Is used by the attacking faction to destroy towers, which requires the player to have got a honourable kill in the current battle. Players of the defending faction can attack deployed siege engines for credit towards the achievements 'Towers of Power' and 'Tol Barad Saboteur'.",
				-- #else
				["description"] = "Is used by the attacking faction to destroy towers, which requires the player to have got a honourable kill in the current battle. Abandoned siege engines can be attacked by high-level players of the defending faction for credit towards the achievement 'Towers of Power'. 'Tol Barad Saboteur' however requires defeating deployed siege engines.",
				-- #endif
			}),
		},
	}),
}))));
