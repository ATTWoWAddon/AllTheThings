-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = ADDED_5_1_0 }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(303, {	-- Gate of the Setting Sun
		["coord"] = { 15.8, 74.8, VALE_OF_ETERNAL_BLOSSOMS },
		["maps"] = {
			437,	-- Gate of the Setting Sun
			438,	-- Gate Watch Tower
		},
		["g"] = {
			n(QUESTS, {
				q(31363, {	-- Lighting the Way
					["provider"] = { "n", 64467 },	-- Bowmistress Li
					["coord"] = { 61.0, 88.2, 437 },
					["groups"] = {
						objective(1, {	-- 0/1 Light the Signal Flame
							["provider"] = { "o", 211129 },	-- Signal Flame
							["coord"] = { 47.2, 24.6, 437 },
						}),
					},
				}),
				q(31364, {	-- That's a Big Bug!
					["provider"] = { "n", 64467 },	-- Bowmistress Li
					["coord"] = { 61.0, 88.2, 437 },
					["g"] = {
						objective(1, {	-- 0/1 Raigonn slain
							["provider"] = { "n", 56877 },	-- Raigonn
						}),
						i(87351),	-- Carapace Inlaid Drape
						i(87352),	-- Cloak of the Unending Swarm
						i(87353),	-- Cloak of Collective Thought
						i(87354),	-- Drape of the Burning Signal
						i(87355),	-- Mantid Exterminator's Cloak
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(649, {	-- Raigonn
					["crs"] = { 56877 },	-- Raigonn
					["g"] = {
						-- Available
						ach(10010, {	-- Gate of the Setting Sun
							["timeline"] = { ADDED_6_2_0 },
						}),
						ach(6945),	-- Mantid Swarm
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(655, {	-- Saboteur Kip'tilak
					["crs"] = { 56906 },	-- Saboteur Kip'tilak
					["g"] = {
						-- Available
						i(144018, {	-- Fallout-Filtering Hood
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144102, {	-- Pendant of Precise Timing
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144134, {	-- Grenadier's Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144100, {	-- Saboteur's Stablizing Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144135, {	-- Pulled Grenade Pin
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80920, {	-- Fallout Filter
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80934, {	-- Pendant of Precise Timing
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80921, {	-- Saboteur's Stablizing Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(675, {	-- Striker Ga'dok
					["crs"] = { 56589 },	-- Striker Ga'dok
					["g"] = {
						-- Available
						i(143980, {	-- Acid-Scarred Spaulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144137, {	-- Bomber's Precision Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144095, {	-- Impaler's Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143983, {	-- Airstream Treads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144136, {	-- Vision of the Predator
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80924, {	-- Acid-Scarred Spaulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80923, {	-- Impaler's Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80922, {	-- Airstream Treads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(676, {	-- Commander Ri'mok
					["crs"] = { 56636 },	-- Commander Ri'mok
					["g"] = {
						-- Available
						i(144098, {	-- Mantid Trochanter
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144019, {	-- Swarmcall Helm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144138, {	-- Ri'mok's Shattered Scale
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143982, {	-- Leggings of the Frenzy
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144139, {	-- Viscous Ring
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80933, {	-- Mantid Trochanter
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80925, {	-- Swarmcall Helm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80926, {	-- Leggings of the Frenzy
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(649, {	-- Raigonn
					["crs"] = { 56877 },	-- Raigonn
					["g"] = {
						-- Available
						i(144218, {	-- Klatith, Fangs of the Swarm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144101, {	-- Carapace Breaker
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144140, {	-- Impervious Carapace
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144104, {	-- Shield of the Protectorate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144141, {	-- Drape of the Screeching Swarm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143991, {	-- Shoulders of Engulfing Winds
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143955, {	-- Swarmbringer Chestguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144142, {	-- Frenzyswarm Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144105, {	-- Hive Protector's Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143977, {	-- Wall-Breaker Legguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143984, {	-- Treads of Fixation
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80932, {	-- Carapace Breaker
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80931, {	-- Shield of the Protectorate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80930, {	-- Swarmbringer Chestguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80927, {	-- Hive Protector's Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80929, {	-- Wall-Breaker Legguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80928, {	-- Treads of Fixation
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				n(ACHIEVEMENTS, {
					ach(6476),	-- Conscriptinator
				}),
				e(655, {	-- Saboteur Kip'tilak
					["crs"] = { 56906 },	-- Saboteur Kip'tilak
					["g"] = {
						-- Available
						ach(6479),	-- Bomberman
						i(144018, {	-- Fallout-Filtering Hood
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144102, {	-- Pendant of Precise Timing
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144134, {	-- Grenadier's Belt
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144100, {	-- Saboteur's Stablizing Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144135, {	-- Pulled Grenade Pin
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81104, {	-- Fallout-Filtering Hood
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81095, {	-- Pendant of Precise Timing
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81190, {	-- Grenadier's Belt
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81090, {	-- Saboteur's Stablizing Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81191, {	-- Pulled Grenade Pin
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(675, {	-- Striker Ga'dok
					["crs"] = { 56589 },	-- Striker Ga'dok
					["g"] = {
						-- Available
						i(143980, {	-- Acid-Scarred Spaulders
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144137, {	-- Bomber's Precision Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144095, {	-- Impaler's Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143983, {	-- Airstream Treads
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144136, {	-- Vision of the Predator
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81098, {	-- Acid-Scarred Spaulders
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81229, {	-- Bomber's Precision Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81085, {	-- Impaler's Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81111, {	-- Airstream Treads
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81192, {	-- Vision of the Predator
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(676, {	-- Commander Ri'mok
					["crs"] = { 56636 },	-- Commander Ri'mok
					["g"] = {
						-- Available
						i(144098, {	-- Mantid Trochanter
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144019, {	-- Swarmcall Helm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144138, {	-- Ri'mok's Shattered Scale
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143982, {	-- Leggings of the Frenzy
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144139, {	-- Viscous Ring
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81088, {	-- Mantid Trochanter
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81105, {	-- Swarmcall Helm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81230, {	-- Ri'mok's Shattered Scale
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81106, {	-- Leggings of the Frenzy
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81232, {	-- Viscous Ring
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(649, {	-- Raigonn
					["crs"] = { 56877 },	-- Raigonn
					["g"] = {
						-- Available
						ach(6759),	-- Heroic: Gate of the Setting Sun
						ach(6768),	-- Heroic: Gate of the Setting Sun Guild Run
						i(144218, {	-- Klatith, Fangs of the Swarm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144101, {	-- Carapace Breaker
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144140, {	-- Impervious Carapace
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144104, {	-- Shield of the Protectorate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144141, {	-- Drape of the Screeching Swarm
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143991, {	-- Shoulders of Engulfing Winds
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143955, {	-- Swarmbringer Chestguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144142, {	-- Frenzyswarm Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144105, {	-- Hive Protector's Gauntlets
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143977, {	-- Wall-Breaker Legguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143984, {	-- Treads of Fixation
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(87546, {	-- Klatith, Fangs of the Swarm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81094, {	-- Carapace Breaker
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81233, {	-- Impervious Carapace
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81097, {	-- Shield of the Protectorate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81234, {	-- Drape of the Screeching Swarm
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81235, {	-- Shoulders of Engulfing Winds
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81109, {	-- Swarmbringer Chestguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81236, {	-- Frenzyswarm Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81100, {	-- Hive Protector's Gauntlets
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81091, {	-- Wall-Breaker Legguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81112, {	-- Treads of Fixation
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.CHALLENGE_MODE, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 } }, {
				ach(8434, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Gate of the Setting Sun
					title(241),	-- <Name>, Defender of the Wall
				})),
				ach(6894),	-- Gate of the Setting Sun Challenger
				ach(6905),	-- Gate of the Setting Sun: Bronze
				ach(6906),	-- Gate of the Setting Sun: Silver
				ach(6907, {	-- Gate of the Setting Sun: Gold
					spell(131225),	-- Path of the Setting Sun
				}),
			})),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
		inst(303, {
			q(31631),	-- Gate of the Setting Sun Challenge Mode - Bronze Addition (Nth)
			q(31624),	-- Gate of the Setting Sun Challenge Mode - Consolation (Nth)
			q(31645),	-- Gate of the Setting Sun Challenge Mode - Gold Addition (Nth)
			q(31638),	-- Gate of the Setting Sun Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(303, {
			q(35315),	-- Gate of the Setting Sun Reward Quest
			q(35316),	-- Gate of the Setting Sun Reward Quest
		}),
	})),
});