---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(ZARALEK_CAVERN, {
		header(HEADERS.Quest, 74906, {	-- Researchers Under Fire
			n(ACHIEVEMENTS, {
				ach(18206),	-- A Djaradin Puzzle
				ach(18205),	-- A Pillar of the Research Community
				ach(18203),	-- A Research Sampler
				ach(18200, {	-- Cooling the Research Field
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						18206,	-- A Djaradin Puzzle
						18205,	-- A Pillar of the Research Community
						18203,	-- A Research Sampler
						18207,	-- Hot Research Zone
						18201,	-- Lockdown Mystery
						18209,	-- Nothing Stops the Research
						18204,	-- Research Mishap
						18202,	-- Rockin Research
						18208,	-- The Small Disruptions
					}},
					["groups"] = {
						title(508),	-- Field Researcher <Name>
					},
				}),
				ach(18207),	-- Hot Research Zone
				ach(18202),	-- Rockin Research
				ach(18208),	-- The Small Disruptions
			}),
			n(RARES, sharedData({ ["isWeekly"] = true }, {
				n(202270, {	-- Animated Contaminant
					["coord"] = { 45.5, 61.6, ZARALEK_CAVERN },
					["questID"] = 75946,
					["groups"] = {
						ach(18174),	-- Contaminant Cleaner
					},
				}),
				n(203355, {	-- Captain Reykal
					["coord"] = { 49.2, 57.6, ZARALEK_CAVERN },
					["questID"] = 75943,
					["groups"] = {
						ach(18209),	-- Nothing Stops the Research
					},
				}),
				n(202309, {	-- Cavern Flayer Matriarch
					["coord"] = { 47.1, 57.1, ZARALEK_CAVERN },
					["questID"] = 75948,
					["groups"] = {
						i(205276),	-- Deepflayer Lure
					},
				}),
				n(203834, {	-- Contaminated Titan Watcher
					["coord"] = { 45.0, 62.0, ZARALEK_CAVERN },
					["questID"] = 75944,
					["groups"] = {
						ach(18201),	-- Lockdown Mystery
					},
				}),
				n(203846, {	-- Elder Magma Serpent
					["crs"] = { 202274 },	-- Ritualmaster Skarna [I think these two come together /Braghe]
					["coord"] = { 44.6, 57.6, ZARALEK_CAVERN },
					-- ["questID"] = ,
					["groups"] = {
						ach(18199),	-- Zaqali Ritual Buster
						i(205229),	-- Magma Serpent Lure
					},
				}),
				n(204214, {	-- Monstrous Magmaclaw Snapper
					["coord"] = { 43.7, 56.8, ZARALEK_CAVERN },
					["questID"] = 75942,
					["groups"] = {
						ach(18204),	-- Research Mishap
						i(205262),	-- Magmaclaw Lure
					},
				}),
				n(202318, {	-- Response Team Watcher
					["coord"] = { 47.8, 63.8, ZARALEK_CAVERN },
					["questID"] = 75945,
				}),
			})),
			n(EVENT_COMPLETION, {
				i(215363, {	-- Cache of Embers (TODO: I'm not sure if it is require any specific bags for it)
					["timeline"] = { ADDED_10_2_6_SEASON_FOUR },
					-- probably need symlink
				}),
				i(205204),	-- Cataloged Shalewing (MOUNT!)
				i(205026),	-- Devourer Lobstrok (PET!)
				i(205369, {	-- Appreciative Researcher's Gift
					["sym"] = {{"select","itemID",
						205204,	-- Cataloged Shalewing (MOUNT!)
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205371, {	-- Appreciative Researcher's Scrounged Goods
					["sym"] = {{"select","itemID",
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205367, {	-- Indebted Researcher's Gift
					["sym"] = {{"select","itemID",
						205204,	-- Cataloged Shalewing (MOUNT!)
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205372, {	-- Indebted Researcher's Scrounged Goods
					["sym"] = {{"select","itemID",
						205204,	-- Cataloged Shalewing (MOUNT!)
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205370, {	-- Researcher's Gift
					["sym"] = {{"select","itemID",
						205204,	-- Cataloged Shalewing (MOUNT!)
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205373, {	-- Researcher's Scrounged Goods
					["sym"] = {{"select","itemID",
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205368, {	-- Thankful Researcher's Gift
					["sym"] = {{"select","itemID",
						205204,	-- Cataloged Shalewing (MOUNT!)
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
				i(205374, {	-- Thankful Researcher's Scrounged Goods
					["sym"] = {{"select","itemID",
						205026,	-- Devourer Lobstrok (PET!)
					}},
				}),
			}),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {
	m(DRAGON_ISLES, {
		m(ZARALEK_CAVERN, {
			header(HEADERS.Quest, 74906, {	-- Researchers Under Fire
				q(75627),	-- Researchers Under Fire Tier 1 Weekly Reward Tracker
				q(75628),	-- Researchers Under Fire Tier 2 Weekly Reward Tracker
				q(75629),	-- Researchers Under Fire Tier 3 Weekly Reward Tracker
				q(75630),	-- Researchers Under Fire Tier 4 Weekly Reward Tracker
				q(75666),	-- Weekly trigger
				q(74905),	-- At the end of event 'Titan Lockdown', unflagged after bag hqt
				q(74906),	-- Probably Zaqali Event
				q(75947),	-- 'Zaqali Ritual Buster' completed (maybe something prior during combat of stages...)
			}),
		}),
	}),
})));
