---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(THE_RINGING_DEEPS, {
		n(WORLD_QUESTS, {
			["sourceQuests"] = {
				79197,	-- Surface Bound
				TWW_ACCOUNT_CAMPAIGN_QUEST,
			},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
				petbattle(q(82293, {	-- The Power of Friendship
					["provider"] = { "n", 223444 },	-- Friendhaver Grem
					["coord"] = { 61.6, 37.6, THE_RINGING_DEEPS },
				})),
				petbattle(q(82300, {	-- Major Malfunction
					["provider"] = { "n", 222535 },	-- Haywire Servobot
					["coord"] = { 66.9, 58.1, THE_RINGING_DEEPS },
				})),
				pvp(q(80208, {	-- Digging into Trouble
					["coord"] = { 61.7, 82.0, THE_RINGING_DEEPS },
				})),
				pvp(q(80323, {	-- Foggy Faceoff
					["coord"] = { 64.9, 51.2, THE_RINGING_DEEPS },
				})),
				q(82552, {	-- All Worked Up
					["coord"] = { 47.0, 20.5, THE_RINGING_DEEPS },
				}),
				q(82523, {	-- Candle Kingbreaker
					["coord"] = { 64.3, 33.6, THE_RINGING_DEEPS },
					["groups"] = {
						i(223896),	-- Liberated Scrap (QI!)
					},
				}),
				q(82256, {	-- Capturing the Cataract's Creatures
					["coord"] = { 52.9, 47.8, THE_RINGING_DEEPS },
				}),
				q(83715, {	-- Claimed Salvage
					["coord"] = { 59.7, 80.6, THE_RINGING_DEEPS },
					["groups"] = {
						o(455204, {	-- Salvage Crate
							i(226020),	-- Ancient Titan Salvage (QI!)
						}),
					},
				}),
				q(81750, {	-- Cloud Farming
					["coord"] = { 55.2, 71.3, THE_RINGING_DEEPS },
				}),
				q(84429, {	-- Construct Containment
					["coord"] = { 57.9, 37.9, THE_RINGING_DEEPS },
				}),
				q(82580, {	-- Courier Mission: Ore Recovery
					["coord"] = { 64.8, 64.0, THE_RINGING_DEEPS },
					["groups"] = {
						ach(40630),	-- For the Collective
						ach(40623),	-- I Only Need One Trip
					},
				}),
				q(83930, {	-- Deworming Solution
					["coord"] = { 57.4, 39.5, THE_RINGING_DEEPS },
				}),
				q(83538, {	-- Excavation Liberation
					["coord"] = { 62.0, 84.9, THE_RINGING_DEEPS },
				}),
				q(83537, {	-- Geothermal Gem Treatment
					["coord"] = { 41.5, 20.3, THE_RINGING_DEEPS },
				}),
				q(82238, {	-- Lava Glob Lobbin'
					["coord"] = { 52.2, 16.7, THE_RINGING_DEEPS },
					["groups"] = { i(222963) },	-- Lava Globs (QI!)
				}),
				q(83079, {	-- Mineral Buildup
					["coord"] = { 45.8, 42.8, THE_RINGING_DEEPS },
				}),
				q(81656, {	-- Nothing to Waste
					["coord"] = { 59.2, 52.2, THE_RINGING_DEEPS },
					["groups"] = {
						o(419657, {	-- Abandoned Tools
							i(219468),	-- Mining Tools (QI!)
						}),
					},
				}),
				q(82518, {	-- Pipe Patcher
					["coord"] = { 51.1, 33.9, THE_RINGING_DEEPS },
				}),
				q(83101, {	-- Reaching for Resources
					["coord"] = { 55.2, 50.8, THE_RINGING_DEEPS },
					["groups"] = {
						ach(40507),	-- Hanging Tight
					},
				}),
				q(81767, {	-- Scrounge that Scrap!
					["coord"] = { 68.8, 44.5, THE_RINGING_DEEPS },
				}),
				q(81811, {	-- Skyrider Racing - Cataract River Cruise
					["coord"] = { 64.8, 64.0, THE_RINGING_DEEPS },
				}),
				q(81810, {	-- Skyrider Racing - Chittering Concourse
					["coord"] = { 67.8, 34.8, THE_RINGING_DEEPS },
				}),
				q(81807, {	-- Skyrider Racing - Earthenworks Weave
					["coord"] = { 40.9, 11.3, THE_RINGING_DEEPS },
				}),
				q(81813, {	-- Skyrider Racing - Opportunity Point Amble
					["coord"] = { 63.3, 75.0, THE_RINGING_DEEPS },
				}),
				q(81808, {	-- Skyrider Racing - Ringing Deeps Ramble
					["coord"] = { 42.3, 27.4, THE_RINGING_DEEPS },
				}),
				q(81812, {	-- Skyrider Racing - Taelloch Twist
					["coord"] = { 66.6, 68.7, THE_RINGING_DEEPS },
				}),
				q(83080, {	-- Taelloch Cleanup
					["coord"] = { 64.8, 58.3, THE_RINGING_DEEPS },
				}),
				q(83028, {	-- Thieving Snufflers
					["coord"] = { 53.7, 34.9, THE_RINGING_DEEPS },
				}),
				q(83048, {	-- Wayward Walkers
					["coord"] = { 42.3, 31.4, THE_RINGING_DEEPS },
				}),
				q(82519, {	-- You Go Take Candle
					["coord"] = { 58.8, 24.9, THE_RINGING_DEEPS },
				}),
				--
				q(81691, {	-- Special Assignment: Shadows Below
					["coord"] = { 68.2, 48.4, THE_RINGING_DEEPS },
					["groups"] = {
						o(451222, {	-- Radiant Fuel Cache
							["coord"] = { 67.3, 49.5, THE_RINGING_DEEPS },
							["groups"] = { i(224913) },	-- Radiant Fuel Cache (QI!)
						}),
						o(446580, {	-- Radiant Fuel Cache
							["coord"] = { 69.4, 49.9, THE_RINGING_DEEPS },
							["groups"] = { i(224941) },	-- Radiant Fuel Cache (QI!)
						}),
						i(219522),	-- Radiant Fuel Crystal (QI!)
						i(224292),	-- Radiant Fuel Shard (QI!)
					},
				}),
				q(82155, {	-- Special Assignment: Shadows Below
					-- ["coord"] = { x, y, THE_RINGING_DEEPS },
				}),
				q(83229, {	-- Special Assignment: When the Deeps Stir
					["coord"] = { 52.9, 14.7, THE_RINGING_DEEPS },
				}),
				q(82156, {	-- Special Assignment: When the Deeps Stir
					-- ["coord"] = { x, y, THE_RINGING_DEEPS },
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.TWW, {
	m(KHAZ_ALGAR, {
		m(THE_RINGING_DEEPS, {
			n(WORLD_QUESTS, {
				q(83501),	-- Triggeres with 'Hanging Tight' (achievementID 40507)
			}),
		}),
	}),
}));
