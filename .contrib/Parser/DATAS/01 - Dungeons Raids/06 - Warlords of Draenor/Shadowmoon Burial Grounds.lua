-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(537, {	-- Shadowmoon Burial Grounds
		["lvl"] = 100,
		["maps"] = { 574, 575, 576 },
		["coord"] = { 31.91, 42.55, DRAENOR_SHADOWMOON_VALLEY },
		["groups"] = {
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(1139, {	-- Sadana Bloodfury
					["crs"] = { 75509 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, NECK},
						{"sub", "common_wod_dungeon_drop", 1, BACK},
					},
					["g"] = {
						i(110035),	-- Sadana's Grisly Visage
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110035),	-- Sadana's Grisly Visage
						})),
					},
				}),
				e(1168, {	-- Nhallish
					["crs"] = { 75829 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, WRIST},
						{"sub", "common_wod_dungeon_drop", 1, CHEST},
					},
					["g"] = {
						i(110036),	-- Nhallish's Bloody Polearm
						i(110007),	-- Voidmender's Shadowgem
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110036),	-- Nhallish's Bloody Polearm
							i(110007),	-- Voidmender's Shadowgem
						})),
					},
				}),
				e(1140, {	-- Bonemaw
					["crs"] = { 75452 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, WAIST},
						{"sub", "common_wod_dungeon_drop", 1, HANDS},
					},
					["g"] = {
						i(110037),	-- Bonetooth Longbow
						i(110012),	-- Bonemaw's Big Toe
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110037),	-- Bonetooth Longbow
							i(110012),	-- Bonemaw's Big Toe
						})),
					},
				}),
				e(1160, {	-- Ner'zhul
					["crs"] = { 76407 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, HEAD},
						{"sub", "common_wod_dungeon_drop", 1, FEET},
						{"sub", "common_wod_dungeon_drop", 1, FINGER},
					},
					["g"] = {
						ach(9041),	-- Shadowmoon Burial Grounds
						i(138806, {	-- Illusion: Mark of Shadowmoon (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(110039),	-- Portal-Ripper's Staff
						i(110038),	-- Ner'zhul's Ritual Blade
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110039),	-- Portal-Ripper's Staff
							i(110038),	-- Ner'zhul's Ritual Blade
						})),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(1139, {	-- Sadana Bloodfury
					["crs"] = { 75509 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, NECK},
						{"sub", "common_wod_dungeon_drop", 2, BACK},
					},
					["g"] = {
						ach(9018),	-- What's Your Sign?
						i(110035),	-- Sadana's Grisly Visage
					},
				}),
				e(1168, {	-- Nhallish
					["crs"] = { 75829 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, WRIST},
						{"sub", "common_wod_dungeon_drop", 2, CHEST},
					},
					["g"] = {
						i(110036),	-- Nhallish's Bloody Polearm
						i(110007),	-- Voidmender's Shadowgem
					},
				}),
				e(1140, {	-- Bonemaw
					["crs"] = { 75452 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, WAIST},
						{"sub", "common_wod_dungeon_drop", 2, HANDS},
					},
					["g"] = {
						ach(9025, {	-- Icky Ichors
							["crs"] = { 77006 },	-- Corpse Skitterling
						}),
						i(110037),	-- Bonetooth Longbow
						i(110012),	-- Bonemaw's Big Toe
					},
				}),
				e(1160, {	-- Ner'zhul
					["crs"] = { 76407 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, HEAD},
						{"sub", "common_wod_dungeon_drop", 2, FEET},
						{"sub", "common_wod_dungeon_drop", 2, FINGER},
					},
					["g"] = {
						ach(9054),	-- Heroic: Shadowmoon Burial Grounds
						ach(9375),	-- Heroic: Shadowmoon Burial Grounds Guild Run
						ach(9026, {	-- Souls of the Lost
							["crs"] = { 76518 },	-- Ritual of Bones
						}),
						i(138806, {	-- Illusion: Mark of Shadowmoon (ILLUSION!)
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(110039),	-- Portal-Ripper's Staff
						i(110038),	-- Ner'zhul's Ritual Blade
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					e(1139, {	-- Sadana Bloodfury
						["crs"] = { 75509 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, NECK},
							{"sub", "common_wod_dungeon_drop", 23, BACK},
						},
						["g"] = {
							i(110035),	-- Sadana's Grisly Visage
						},
					}),
					e(1168, {	-- Nhallish
						["crs"] = { 75829 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, WRIST},
							{"sub", "common_wod_dungeon_drop", 23, CHEST},
						},
						["g"] = {
							i(110036),	-- Nhallish's Bloody Polearm
							i(110007),	-- Voidmender's Shadowgem
						},
					}),
					e(1140, {	-- Bonemaw
						["crs"] = { 75452 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, WAIST},
							{"sub", "common_wod_dungeon_drop", 23, HANDS},
						},
						["g"] = {
							i(110037),	-- Bonetooth Longbow
							i(110012),	-- Bonemaw's Big Toe
						},
					}),
					e(1160, {	-- Ner'zhul
						["crs"] = { 76407 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, HEAD},
							{"sub", "common_wod_dungeon_drop", 23, FEET},
							{"sub", "common_wod_dungeon_drop", 23, FINGER},
						},
						["g"] = {
							ach(10084),	-- Mythic: Shadowmoon Burial Grounds
							i(138806, {	-- Illusion: Mark of Shadowmoon (ILLUSION!)
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(110039),	-- Portal-Ripper's Staff
							i(110038),	-- Ner'zhul's Ritual Blade
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(537, {
		q(34545),	-- Shadowmoon Burial Grounds Challenge Mode - Bronze Addition (Nth)
		q(34528),	-- Shadowmoon Burial Grounds Challenge Mode - Consolation (Nth)
		q(34547),	-- Shadowmoon Burial Grounds Challenge Mode - Gold Addition (Nth)
		q(34546),	-- Shadowmoon Burial Grounds Challenge Mode - Silver Addition (Nth)
	}),
})));