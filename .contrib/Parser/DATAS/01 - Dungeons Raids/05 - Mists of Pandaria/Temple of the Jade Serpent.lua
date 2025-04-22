-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = ADDED_5_0_4 }, {
	inst(313, {	-- Temple of the Jade Serpent
		["coord"] = { 56.0, 57.8, THE_JADE_FOREST },
		["maps"] = {
			429,	-- Temple of the Jade Serpent
			430,	-- The Scrollkeeper's Sanctum
		},
		["g"] = {
			n(QUESTS, {
				q(31356, {	-- Deep Doubts, Deep Wisdom
					["provider"] = { "n", 64399 },	-- Master Windstrong
					["coord"] = { 35.4, 44.4, 429 },
					["g"] = {
						i(87289),	-- Equilibrium Legwraps
						i(87287),	-- Leggings of Inner Peace
						i(87284),	-- Leggings of the Fifth Sun
						i(87290),	-- Legguards of Ironclad Confidence
						i(87285),	-- Legguards of the Tides
						i(87286),	-- Legplates of Absolute Clarity
						i(87291),	-- Legplates of Pure Purpose
						i(87288),	-- Lui's Leggings
						i(87283),	-- Windstrong Leggings
					},
				}),
				q(31355, {	-- Restoring Jade's Purity
					["provider"] = { "n", 60578 },	-- Priestess Summerpetal
					["coord"] = { 35.4, 44.4, 429 },
					["g"] = {
						i(87300),	-- Armplates of the Jade Idol
						i(87298),	-- Bracers of Ancient Tales
						i(87296),	-- Coiled Serpent Armband
						i(87293),	-- Defiant Archer's Bracers
						i(87299),	-- Eversight Armplates
						i(87292),	-- Flameheart Wristguards
						i(87294),	-- Scrollkeeper's Cuffs
						i(87295),	-- Summerpetal Cuffs
						i(87297),	-- Wise Mari's Bracers
					},
				}),
			}),
			n(SPECIAL, {
				n(65317, {	-- Xiang <The Two Jugglers>
					i(87522),	-- Star Carrier Bracers
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(672, {	-- Wise Mari
					["crs"] = { 56448 },	-- Wise Mari
					["g"] = {
						-- Available
						i(144112, {	-- Crystallized Droplet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143960, {	-- Riverbed Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143973, {	-- Treads of Corrupted Water
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144017, {	-- Waterburst Helm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144111, {	-- Wind-Soaked
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80861, {	-- Riverbed Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80862, {	-- Treads of Corrupted Water
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80860, {	-- Waterburst Helm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(664, {	-- Lorewalker Stonestep
					["crs"] = { 56843 },	-- Lorewalker Stonestep
					["g"] = {
						-- Available
						i(144081, {	-- Girdle of Endemic Anger
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143987, {	-- Leggings of Whispered Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143974, {	-- Stonestep Boots
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144083, {	-- Sunheart Waistband
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144113, {	-- Windswept Pages
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80864, {	-- Girdle of Endemic Anger
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80863, {	-- Stonestep Boots
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80865, {	-- Sunheart Waistband
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(658, {	-- Liu Flameheart
					["crs"] = { 56732 },	-- Liu Flameheart
					["g"] = {
						-- Available
						i(144094, {	-- Cape of Entaglement
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144090, {	-- Firebelcher Hand Cannon
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143988, {	-- Flameheart Sandals
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143971, {	-- Serpentstrike Shoulderpads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144114, {	-- Signet of Dancing Jade
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80872, {	-- Firebelcher Hand Cannon
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80867, {	-- Serpentstrike Shoulderpads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80866, {	-- Cape of Entaglement
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(335, {	-- Sha of Doubt
					["crs"] = { 56439 },	-- Sha of Doubt
					["g"] = {
						-- Available
						ach(6757),	-- Temple of the Jade Serpent
						i(144116, {	-- Binding of Broken Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143959, {	-- Chestguard of Despair
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144115, {	-- Cloak of Failing Will
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143972, {	-- Doubtridden Shoulderguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144086, {	-- Dubious Handaxe
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144091, {	-- Hopecrusher Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144216, {	-- Je'lyu, Spirit of the Serpent
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144117, {	-- Mindbreaker Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143970, {	-- Neverdare Shoulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144118, {	-- Paralyzing Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144093, {	-- Staff of Trembling Will
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80870, {	-- Chestguard of Despair
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80868, {	-- Doubtridden Shoulderguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80873, {	-- Dubious Handaxe
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80869, {	-- Hopecrusher Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80871, {	-- Neverdare Shoulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80874, {	-- Staff of Trembling Will
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(672, {	-- Wise Mari
					["crs"] = { 56448 },	-- Wise Mari
					["g"] = {
						-- Available
						ach(6460),	-- Hydrophobia
						i(144112, {	-- Crystallized Droplet
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143960, {	-- Riverbed Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143973, {	-- Treads of Corrupted Water
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144017, {	-- Waterburst Helm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144111, {	-- Wind-Soaked
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81083, {	-- Riverbed Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81123, {	-- Riverbed Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81072, {	-- Treads of Corrupted Water
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81075, {	-- Waterburst Helm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(664, {	-- Lorewalker Stonestep
					["crs"] = { 56843 },	-- Lorewalker Stonestep
					["g"] = {
						-- Available
						i(144081, {	-- Girdle of Endemic Anger
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143987, {	-- Leggings of Whispered Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143974, {	-- Stonestep Boots
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144083, {	-- Sunheart Waistband
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144113, {	-- Windswept Pages
							["timeline"] = { ADDED_7_1_5 },
						}),
						-- Removed
						i(81058, {	-- Girdle of Endemic Anger
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81126, {	-- Leggings of Whispered Dreams
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81073, {	-- Stonestep Boots
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81060, {	-- Sunheart Waistband
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(658, {	-- Liu Flameheart
					["crs"] = { 56732 },	-- Liu Flameheart
					["g"] = {
						-- Available
						i(144094, {	-- Cape of Entaglement
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144090, {	-- Firebelcher Hand Cannon
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143988, {	-- Flameheart Sandals
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143971, {	-- Serpentstrike Shoulderpads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144114, {	-- Signet of Dancing Jade
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81067, {	-- Firebelcher Hand Cannon
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81070, {	-- Serpentstrike Shoulderpads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81084, {	-- Cape of Entaglement
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81127, {	-- Flameheart Sandals
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(335, {	-- Sha of Doubt
					["crs"] = { 56439 },	-- Sha of Doubt
					["g"] = {
						-- Available
						ach(6475),	-- Cleaning Up
						ach(6758),	-- Heroic: Temple of the Jade Serpent
						ach(6764),	-- Heroic: Temple of the Jade Serpent Guild Run
						ach(6671),	-- Seeds of Doubt
						i(144116, {	-- Binding of Broken Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143959, {	-- Chestguard of Despair
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144115, {	-- Cloak of Failing Will
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143972, {	-- Doubtridden Shoulderguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144086, {	-- Dubious Handaxe
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144093, {	-- Staff of Trembling Will
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144091, {	-- Hopecrusher Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144216, {	-- Je'lyu, Spirit of the Serpent
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144117, {	-- Mindbreaker Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143970, {	-- Neverdare Shoulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144118, {	-- Paralyzing Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81130, {	-- Binding of Broken Dreams
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81082, {	-- Chestguard of Despair
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81129, {	-- Cloak of Failing Will
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81071, {	-- Doubtridden Shoulderguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81063, {	-- Dubious Handaxe
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81074, {	-- Hopecrusher Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(87544, {	-- Je'lyu, Spirit of the Serpent
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81131, {	-- Mindbreaker Pendant
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81069, {	-- Neverdare Shoulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81132, {	-- Paralyzing Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81079, {	-- Staff of Trembling Will
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(313, {
			q(31499),	-- Jade Serpent Challenge Mode - Bronze Addition (Nth)
			q(31498),	-- Jade Serpent Challenge Mode - Consolation (Nth)
			q(31501),	-- Jade Serpent Challenge Mode - Gold Addition (Nth)
			q(31500),	-- Jade Serpent Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(313, {
			q(35325),	-- Temple of the Jade Serpent Reward Quest
			q(35327),	-- Temple of the Jade Serpent Reward Quest
		}),
	})),
});