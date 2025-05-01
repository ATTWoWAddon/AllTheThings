-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(385, {	-- Bloodmaul Slag Mines
		["lvl"] = 90,
		["mapID"] = 573,
		["coord"] = { 49.93, 24.8, FROSTFIRE_RIDGE },
		["g"] = {
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(888, {	-- Slave Watcher Crushto
					["crs"] = { 74787 },	-- Slave Watcher Crushto
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, WRIST},
						{"sub", "common_wod_dungeon_drop", 1, LEGS},
					},
					["g"] = {
						i(110040),	-- Crushto's Neck Separator
						i(110000),	-- Crushto's Runic Alarm
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110040),	-- Crushto's Neck Separator
							i(110000),	-- Crushto's Runic Alarm
						})),
					},
				}),
				e(893, {	-- Magmolatus (Forgemaster Gog'duh 74366)
					["crs"] = {
						74366,	-- Forgemaster Gog'duh
						74475,	-- Magmolatus
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, CHEST},
						{"sub", "common_wod_dungeon_drop", 1, HANDS},
					},
				}),
				e(887, {	-- Roltall
					["crs"] = { 75786 },	-- Roltall
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, BACK},
						{"sub", "common_wod_dungeon_drop", 1, FEET},
					},
					["g"] = {
						i(110041),	-- Roltall's Brutal Crescent
						i(110015),	-- Toria's Unseeing Eye
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110041),	-- Roltall's Brutal Crescent
							i(110015),	-- Toria's Unseeing Eye
						})),
					},
				}),
				e(889, {	-- Gug'rokk
					["crs"] = { 74790 },	-- Gug'rokk
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, HEAD},
						{"sub", "common_wod_dungeon_drop", 1, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 1, FINGER},
					},
					["g"] = {
						ach(9037),	-- Bloodmaul Slag Mines
						i(110042),	-- Gug'rokk's Smasher
						i(110044),	-- Ogre Dinner Plate
						i(110043),	-- Gug'rokk's Grandmother
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110042),	-- Gug'rokk's Smasher
							i(110044),	-- Ogre Dinner Plate
							i(110043),	-- Gug'rokk's Grandmother
						})),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(888, {	-- Slave Watcher Crushto
					["crs"] = { 74787 },	-- Slave Watcher Crushto
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, WRIST},
						{"sub", "common_wod_dungeon_drop", 2, LEGS},
					},
					["g"] = {
						i(110040),	-- Crushto's Neck Separator
						i(110000),	-- Crushto's Runic Alarm
					},
				}),
				n(75242, {	-- Croman (The Barbarian)
					["description"] = "Click on this manly dude and have him follow you to Magmolatus and allow him to retrieve his weapon. (He has to hit the boss at least one time.)\n\nAfter he has reclaimed his weapon, bring him to the final boss and allow him to hit that boss as well before killing the boss.  Croman must still be alive at the end of the dungeon.",
					["g"] = {
						ach(9005, {	-- Come With Me If You Want to Live
							follower(177),	-- Croman
						}),
					},
				}),
				e(893, {	-- Magmolatus
					["crs"] = {
						74366,	-- Forgemaster Gog'duh
						74475,	-- Magmolatus
					},
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, CHEST},
						{"sub", "common_wod_dungeon_drop", 2, HANDS},
					},
					["g"] = {
						ach(8993, {	-- A Gift of Earth and Fire
							["crs"] = {
								74571,	-- Calamity <Servant of the Flame>
								74570,	-- Ruination <Servant of the Earth>
							},
						}),
					},
				}),
				e(887, {	-- Roltall
					["crs"] = { 75786 },	-- Roltall
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, BACK},
						{"sub", "common_wod_dungeon_drop", 2, FEET},
					},
					["g"] = {
						i(110041),	-- Roltall's Brutal Crescent
						i(110015),	-- Toria's Unseeing Eye
					},
				}),
				e(889, {	-- Gug'rokk
					["crs"] = { 74790 },	-- Gug'rokk
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, HEAD},
						{"sub", "common_wod_dungeon_drop", 2, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 2, FINGER},
					},
					["g"] = {
						ach(9046),	-- Heroic: Bloodmaul Slag Mines
						ach(9369),	-- Heroic: Bloodmaul Slag Mines Guild Run
						ach(9008, {	-- Is Draenor on Fire?
							["crs"] = { 74927 },	-- Unstable Slag
						}),
						i(110042),	-- Gug'rokk's Smasher
						i(110044),	-- Ogre Dinner Plate
						i(110043),	-- Gug'rokk's Grandmother
						un(REMOVED_FROM_GAME, i(113682)),	-- Core of Flame
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					e(888, {	-- Slave Watcher Crushto
						["crs"] = { 74787 },	-- Slave Watcher Crushto
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, WRIST},
							{"sub", "common_wod_dungeon_drop", 23, LEGS},
						},
						["g"] = {
							i(110040),	-- Crushto's Neck Separator
							i(110000),	-- Crushto's Runic Alarm
						},
					}),
					n(75242, {	-- Croman (The Barbarian)
						["description"] = "Click on this manly dude and have him follow you to Magmolatus and allow him to retrieve his weapon. (He has to hit the boss at least one time.)\n\nAfter he has reclaimed his weapon, bring him to the final boss and allow him to hit that boss as well before killing the boss.  Croman must still be alive at the end of the dungeon.",
						["g"] = {
							ach(9005, {	-- Come With Me If You Want to Live
								follower(177),	-- Croman
							}),
						},
					}),
					e(893, {	-- Magmolatus
						["crs"] = {
							74366,	-- Forgemaster Gog'duh
							74475,	-- Magmolatus
						},
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, CHEST},
							{"sub", "common_wod_dungeon_drop", 23, HANDS},
						},
					}),
					e(887, {	-- Roltall
						["crs"] = { 75786 },	-- Roltall
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, BACK},
							{"sub", "common_wod_dungeon_drop", 23, FEET},
						},
						["g"] = {
							i(110041),	-- Roltall's Brutal Crescent
							i(110015),	-- Toria's Unseeing Eye
						},
					}),
					e(889, {	-- Gug'rokk
						["crs"] = { 74790 },	-- Gug'rokk
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, HEAD},
							{"sub", "common_wod_dungeon_drop", 23, SHOULDER},
							{"sub", "common_wod_dungeon_drop", 23, FINGER},
						},
						["g"] = {
							ach(10076),	-- Mythic: Bloodmaul Slag Mines
							i(110042),	-- Gug'rokk's Smasher
							i(110044),	-- Ogre Dinner Plate
							i(110043),	-- Gug'rokk's Grandmother
							un(REMOVED_FROM_GAME, i(113682)),	-- Core of Flame
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(385, {
		q(34533),	-- Bloodmaul Slag Mines Challenge Mode - Bronze Addition (Nth)
		q(34525),	-- Bloodmaul Slag Mines Challenge Mode - Consolation (Nth)
		q(34535),	-- Bloodmaul Slag Mines Challenge Mode - Gold Addition (Nth)
		q(34534),	-- Bloodmaul Slag Mines Challenge Mode - Silver Addition (Nth)
		q(35957),	-- Bloodmaul Slag Mines Reward Quest
	}),
})));