-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.WOD, bubbleDown({ ["timeline"] = { ADDED_6_0_3_LAUNCH } }, {
	inst(476, {	-- Skyreach
		["lvl"] = 96,
		["maps"] = { 601, 602 },
		["coord"] = { 35.5, 33.6, SPIRES_OF_ARAK },
		["groups"] = {
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(965, {	-- Ranjit
					["crs"] = { 75964 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, HEAD},
						{"sub", "common_wod_dungeon_drop", 1, WAIST},
					},
					["g"] = {
						i(110030),	-- Chakram-Breaker Greatsword
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110030),	-- Chakram-Breaker Greatsword
						})),
					},
				}),
				e(966, {	-- Araknath
					["crs"] = { 76141 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, NECK},
						{"sub", "common_wod_dungeon_drop", 1, FEET},
					},
					["g"] = {
						i(110031),	-- Spire of the Furious Construct
						i(110016),	-- Solar Containment Unit
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110031),	-- Spire of the Furious Construct
							i(110016),	-- Solar Containment Unit
						})),
					},
				}),
				e(967, {	-- Rukhran
					["crs"] = { 76143 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, WRIST},
						{"sub", "common_wod_dungeon_drop", 1, HANDS},
					},
					["g"] = {
						i(110032),	-- Beakbreaker Scimitar
						i(110006),	-- Rukhran's Quill
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110032),	-- Beakbreaker Scimitar
							i(110006),	-- Rukhran's Quill
						})),
					},
				}),
				e(968, {	-- High Sage Viryx
					["crs"] = { 76266 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 1, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 1, LEGS},
						{"sub", "common_wod_dungeon_drop", 1, FINGER},
					},
					["g"] = {
						ach(8843),	-- Skyreach
						i(110033),	-- Arcanic of the High Sage
						i(110034),	-- Viryx's Indomitable Bulwark
						i(110011),	-- Fires of the Sun
						un(REMOVED_FROM_GAME, i(114780)),	-- Pure Solium Band
						n(WARFORGED, bubbleDown({["bonusID"] = 4746 }, {
							i(110033),	-- Arcanic of the High Sage
							i(110034),	-- Viryx's Indomitable Bulwark
							i(110011),	-- Fires of the Sun
						})),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(965, {	-- Ranjit
					["crs"] = { 75964 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, HEAD},
						{"sub", "common_wod_dungeon_drop", 2, WAIST},
					},
					["g"] = {
						ach(9033),	-- Ready for Raiding IV
						i(110030),	-- Chakram-Breaker Greatsword
					},
				}),
				e(966, {	-- Araknath
					["crs"] = { 76141 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, NECK},
						{"sub", "common_wod_dungeon_drop", 2, FEET},
					},
					["g"] = {
						i(110031),	-- Spire of the Furious Construct
						i(110016),	-- Solar Containment Unit
					},
				}),
				e(967, {	-- Rukhran
					["crs"] = { 76143 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, WRIST},
						{"sub", "common_wod_dungeon_drop", 2, HANDS},
					},
					["g"] = {
						ach(9035, {	-- I Saw Solis
							["crs"] = { 76227 },	-- Solar Flare
						}),
						i(110032),	-- Beakbreaker Scimitar
						i(110006),	-- Rukhran's Quill
					},
				}),
				e(968, {	-- High Sage Viryx
					["crs"] = { 76266 },
					["sym"] = {
						{"sub", "common_wod_dungeon_drop", 2, SHOULDER},
						{"sub", "common_wod_dungeon_drop", 2, LEGS},
						{"sub", "common_wod_dungeon_drop", 2, FINGER},
					},
					["g"] = {
						ach(8844),	-- Heroic: Skyreach
						ach(9372),	-- Heroic: Skyreach Guild Run
						ach(9034, {	-- Magnify... Enhance
							["crs"] = { 86919 },	-- Empowered Construct
						}),
						ach(9036, {	-- Monomania
							["crs"] = { 76292 },	-- Skyreach Shield Construct
						}),
						i(110033),	-- Arcanic of the High Sage
						i(110034),	-- Viryx's Indomitable Bulwark
						i(110011),	-- Fires of the Sun
						un(REMOVED_FROM_GAME, i(114780)),	-- Pure Solium Band
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				["ItemAppearanceModifierID"] = 0,
				["groups"] = {
					e(965, {	-- Ranjit
						["crs"] = { 75964 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, HEAD},
							{"sub", "common_wod_dungeon_drop", 23, WAIST},
						},
						["g"] = {
							i(110030),	-- Chakram-Breaker Greatsword
						},
					}),
					e(966, {	-- Araknath
						["crs"] = { 76141 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, NECK},
							{"sub", "common_wod_dungeon_drop", 23, FEET},
						},
						["g"] = {
							i(110031),	-- Spire of the Furious Construct
							i(110016),	-- Solar Containment Unit
						},
					}),
					e(967, {	-- Rukhran
						["crs"] = { 76143 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, WRIST},
							{"sub", "common_wod_dungeon_drop", 23, HANDS},
						},
						["g"] = {
							i(110032),	-- Beakbreaker Scimitar
							i(110006),	-- Rukhran's Quill
						},
					}),
					e(968, {	-- High Sage Viryx
						["crs"] = { 76266 },
						["sym"] = {
							{"sub", "common_wod_dungeon_drop", 23, SHOULDER},
							{"sub", "common_wod_dungeon_drop", 23, LEGS},
							{"sub", "common_wod_dungeon_drop", 23, FINGER},
						},
						["g"] = {
							ach(10081),	-- Mythic: Skyreach
							TempForceMisc(ig(127772, {	-- Gemcutter Module: Haste
								["requireSkill"] = JEWELCRAFTING,
								["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn.  If you have this recipe already you will need to revisit the vendor to cache the recipe.",
							})),
							i(110033),	-- Arcanic of the High Sage
							i(110034),	-- Viryx's Indomitable Bulwark
							i(110011),	-- Fires of the Sun
							un(REMOVED_FROM_GAME, i(114780)),	-- Pure Solium Band
						},
					}),
				},
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(476, {
		q(35961),	-- Skyreach Reward Quest
		q(34542),	-- Spires of Arak Challenge Mode - Bronze Addition (Nth)
		q(34524),	-- Spires of Arak Challenge Mode - Consolation (Nth)
		q(34544),	-- Spires of Arak Challenge Mode - Gold Addition (Nth)
		q(34543),	-- Spires of Arak Challenge Mode - Silver Addition (Nth)
	}),
})));