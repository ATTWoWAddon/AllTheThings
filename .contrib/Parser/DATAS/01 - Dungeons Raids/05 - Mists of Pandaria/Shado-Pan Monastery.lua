-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
root(ROOTS.Instances, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = ADDED_5_0_4 }, {
	applyclassicphase(MOP_PHASE_LANDFALL, inst(312, {	-- Shado-Pan Monastery
		["coord"] = { 36.8 ,47.7, KUN_LAI_SUMMIT},
		["maps"] = {
			443,	-- Shado-Pan Monastery
			444,	-- Cloudstrike Dojo
			445,	-- Snowdrift Dojo
			446,	-- Sealed Chambers
		},
		["g"] = {
			n(QUESTS, {
				q(31030, {	-- Into the Monastery
					["provider"] = { "n", 62227 },	-- Ban Bearheart
					["sourceQuest"] = 30752,	-- Unbelievable!
					["coord"] = { 36.6, 47.7, KUN_LAI_SUMMIT },
					["isBreadcrumb"] = true,
				}),
				q(31031, {	-- Into the Monastery
					["provider"] = { "n", 62227 },	-- Ban Bearheart
					["sourceQuest"] = 30752,	-- Unbelievable!
					["coord"] = { 35.3, 49.5, KUN_LAI_SUMMIT },
					["description"] = "This version is available if you abandon the other version.",
					["isBreadcrumb"] = true,
				}),
				q(30757, {	-- Lord of the Shado-Pan
					["provider"] = { "n", 62236 },	-- Ban Bearheart
					["coord"] = { 84.8, 56.0, 444 },
					["sourceQuests"] = {
						31030,	-- Into the Monastery
						31031,	-- Into the Monastery
					},
					["g"] = {
						i(87319),	-- Antagonist's Headwrap
						i(87315),	-- Cowl of Angry Thoughts
						i(87321),	-- Cowl of Internal Strife
						i(87316),	-- Headcover of Disturbed Serenity
						i(87318),	-- Hood of Endless Agitation
						i(87322),	-- Helm of Enmity
						i(87323),	-- Helm of Unstable Temperament
						i(87320),	-- Headcover of the Impatient
						i(87317),	-- Vexing Coif
					},
				}),
				q(31342, {	-- The Path to Respect Lies in Violence
					["provider"] = { "n", 56541 },	-- Master Snowdrift
					["coord"] = { 29.5, 73.0, 443 },
					["g"] = {
						i(87327),	-- Cloudstriker Cord
						i(87332),	-- Cord of Disturbed Dreams
						i(87324),	-- Cord of Sha Ravagery
						i(87329),	-- Elemental Archer's Links
						i(87331),	-- Girdle of the Broken Seal
						i(87325),	-- Kun-Lai Climbing Belt
						i(87326),	-- Sha-Trapper Waistguard
						i(87328),	-- Shado-Pan Initiate's Belt
						i(87330),	-- Monastery Guardian Waistguard
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
				e(686, {	-- Taran Zhu
					["crs"] = { 56884 },	-- Taran Zhu
					["g"] = {
						ach(6469),	-- Shado-Pan Monastery
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(673, {	-- Gu Cloudstrike
					["crs"] = { 56747 },	-- Gu Cloudstrike
					["g"] = {
						-- Available
						i(144127, {	-- Cloudstrike Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143961, {	-- Azure Serpent Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144126, {	-- Star Summoner Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144096, {	-- Sparkbreath Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143978, {	-- Leggings of the Charging Soul
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80909, {	-- Azure Serpent Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80908, {	-- Sparkbreath Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80910, {	-- Leggings of the Charging Soul
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(657, {	-- Master Snowdrift
					["crs"] = { 56541 },	-- Master Snowdrift
					["g"] = {
						-- Available
						i(144110, {	-- Snowdrift's Bladed Staff
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144106, {	-- Gauntlets of Resolute Fury
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144097, {	-- Quivering Heart Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144129, {	-- Eye of the Tornado
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144128, {	-- Heart of Fire
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80937, {	-- Snowdrift's Bladed Staff
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80912, {	-- Gauntlets of Resolute Fury
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80911, {	-- Quivering Heart Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(685, {	-- Sha of Violence
					["crs"] = { 56719 },	-- Sha of Violence
					["g"] = {
						-- Available
						i(144099, {	-- Crescent of Ichor
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144130, {	-- Necklace of Disorientation
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144131, {	-- Bladed Smoke Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144107, {	-- Gloves of Enraged Slaughter
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143985, {	-- Spike-Soled Stompers
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80883, {	-- Crescent of Ichor
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80913, {	-- Gloves of Enraged Slaughter
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80915, {	-- Spike-Soled Stompers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(686, {	-- Taran Zhu
					["crs"] = { 56884 },	-- Taran Zhu
					["g"] = {
						-- Available
						i(144215, {	-- Ka'eng, Breath of the Shadow
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144109, {	-- Warmace of Taran Zhu
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144103, {	-- Shield of Blind Hate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143981, {	-- Shadowspine Shoulderguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143962, {	-- Hateshatter Chestplate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143990, {	-- Robes of Fevered Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144108, {	-- Mindbender Plate Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143979, {	-- Darkbinder Leggings
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143986, {	-- Blastwalker Footguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144133, {	-- Ring of Malice
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144132, {	-- Seal of Hateful Meditation
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(80936, {	-- Warmace of Taran Zhu
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80935, {	-- Shield of Blind Hate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80916, {	-- Shadowspine Shoulderguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80918, {	-- Mindbender Plate Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80919, {	-- Darkbinder Leggings
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(80917, {	-- Blastwalker Footguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(673, {	-- Gu Cloudstrike
					["crs"] = { 56747 },	-- Gu Cloudstrike
					["g"] = {
						-- Available
						i(144127, {	-- Cloudstrike Pendant
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143961, {	-- Azure Serpent Chestguard
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144126, {	-- Star Summoner Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144096, {	-- Sparkbreath Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143978, {	-- Leggings of the Charging Soul
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81180, {	-- Cloudstrike Pendant
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81110, {	-- Azure Serpent Chestguard
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81179, {	-- Star Summoner Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81086, {	-- Sparkbreath Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81092, {	-- Leggings of the Charging Soul
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(657, {	-- Master Snowdrift
					["crs"] = { 56541 },	-- Master Snowdrift
					["g"] = {
						-- Available
						ach(6477),	-- Respect
						i(144110, {	-- Snowdrift's Bladed Staff
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144106, {	-- Gauntlets of Resolute Fury
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144097, {	-- Quivering Heart Girdle
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144129, {	-- Eye of the Tornado
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144128, {	-- Heart of Fire
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81108, {	-- Snowdrift's Bladed Staff
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81101, {	-- Gauntlets of Resolute Fury
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81087, {	-- Quivering Heart Girdle
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81182, {	-- Eye of the Tornado
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81181, {	-- Heart of Fire
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(685, {	-- Sha of Violence
					["crs"] = { 56719 },	-- Sha of Violence
					["g"] = {
						-- Available
						ach(6472),	-- The Obvious Solution
						i(144099, {	-- Crescent of Ichor
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144130, {	-- Necklace of Disorientation
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144131, {	-- Bladed Smoke Bracers
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144107, {	-- Gloves of Enraged Slaughter
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143985, {	-- Spike-Soled Stompers
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(81089, {	-- Crescent of Ichor
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81184, {	-- Necklace of Disorientation
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81185, {	-- Bladed Smoke Bracers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81102, {	-- Gloves of Enraged Slaughter
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81113, {	-- Spike-Soled Stompers
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
				e(686, {	-- Taran Zhu
					["crs"] = { 56884 },	-- Taran Zhu
					["g"] = {
						-- Available
						ach(6471),	-- Hate Leads to Suffering
						ach(6470),	-- Heroic: Shado-Pan Monastery
						ach(6767),	-- Heroic: Shado-Pan Monastery Guild Run
						i(144215, {	-- Ka'eng, Breath of the Shadow
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144109, {	-- Warmace of Taran Zhu
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144103, {	-- Shield of Blind Hate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143981, {	-- Shadowspine Shoulderguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143962, {	-- Hateshatter Chestplate
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143990, {	-- Robes of Fevered Dreams
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144108, {	-- Mindbender Plate Gloves
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143979, {	-- Darkbinder Leggings
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(143986, {	-- Blastwalker Footguards
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144133, {	-- Ring of Malice
							["timeline"] = { ADDED_7_1_5 },
						}),
						i(144132, {	-- Seal of Hateful Meditation
							["timeline"] = { ADDED_7_1_5 },
						}),

						-- Removed
						i(87543, {	-- Ka'eng, Breath of the Shadow
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81107, {	-- Warmace of Taran Zhu
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81096, {	-- Shield of Blind Hate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81099, {	-- Shadowspine Shoulderguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81187, {	-- Hateshatter Chestplate
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81188, {	-- Robes of Fevered Dreams
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81103, {	-- Mindbender Plate Gloves
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81093, {	-- Darkbinder Leggings
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81114, {	-- Blastwalker Footguards
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81189, {	-- Ring of Malice
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
						i(81186, {	-- Seal of Hateful Meditation
							["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
						}),
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.CHALLENGE_MODE, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 } }, {
				ach(8432, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Shado-Pan Monastery
					title(246),	-- Purified Defender <Name>
				})),
				ach(6893),	-- Shado-Pan Monastery Challenger
				ach(6902),	-- Shado-Pan Monastery: Bronze
				ach(6903),	-- Shado-Pan Monastery: Silver
				ach(6904, {	-- Shado-Pan Monastery: Gold
					spell(131206),	-- Path of the Shado-Pan
				}),
			})),
		},
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(312, {
			q(31632),	-- Shado-Pan Monastery Challenge Mode - Bronze Addition (Nth)
			q(31625),	-- Shado-Pan Monastery Challenge Mode - Consolation (Nth)
			q(31646),	-- Shado-Pan Monastery Challenge Mode - Gold Addition (Nth)
			q(31639),	-- Shado-Pan Monastery Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(312, {
			q(35319),	-- Shado-Pan Monastery Reward Quest - Normal completion
			q(35320),	-- Shado-Pan Monastery Reward Quest - Heroic completion
		}),
	})),
});