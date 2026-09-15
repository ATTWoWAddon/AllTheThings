---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- #if FOREVER
--[[
root(ROOTS.Zones, m(ZEPHRAS_ISLE, bubbleDownSelf({
	["races"] = {SKYBORNE_NEUTRAL, SKYBORNE_ALLIANCE, SKYBORNE_HORDE},
	["timeline"] = {ADDED_1_60_0},
}, {
	["icon"] = nil,
	["maps"] = {},
	["timeline"] = {},
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(nil, {
				["groups"] = {
					crit(nil, {
						["sourceQuests"] = {},
					}),
				},
			}),
		}),

		m(nil, {
			["icon"] = nil,
			["maps"] = {},
			["groups"] = {
				n(nil, {
					["crs"] = {},
					["groups"] = sharedData({
						["timeline"] = {},
					}, {
						i(nil, {
							["timeline"] = {},
						}),
						i(nil),
					}),
				}),
			},
		}),

		n(QUESTS, {
			cl(nil, sharedData({
				["classes"] = {},
			}, {
				q(nil, {
					["description"] = nil,
					["sourceQuest"] = nil,
					["sourceQuests"] = {},
					["sourceQuestNumRequired"] = nil,
					["provider"] = {},
					["qg"] = nil,
					["qgs"] = {},
					["coord"] = {},
					["coords"] = {},
					["maps"] = {},
					["timeline"] = {},
					["classes"] = {},
					["races"] = {},
					["customCollect"] = nil,
					["lockCriteria"] = {},
					["_drop"] = {},
					["groups"] = {
						i(nil, {
							["timeline"] = {},
							["classes"] = {},
							["races"] = {},
							["cost"] = nil,
							["crs"] = {},
						}),
						o(nil, {
							["coord"] = {},
							["groups"] = {},
						}),
						o_repeated({
							["coord"] = {},
							["groups"] = {},
						}),
					},
				}),
			})),

			q(nil, {
				["description"] = nil,
				["sourceQuest"] = nil,
				["sourceQuests"] = {},
				["sourceQuestNumRequired"] = nil,
				["provider"] = {},
				["qg"] = nil,
				["qgs"] = {},
				["coord"] = {},
				["coords"] = {},
				["maps"] = {},
				["timeline"] = {},
				["classes"] = {},
				["races"] = {},
				["customCollect"] = nil,
				["lockCriteria"] = {},
				["_drop"] = {},
				["groups"] = {},
			}),
		}),

		n(RARES, sharedData({
			["lockCriteria"] = {},
		}, {
			n(nil, {
				["coord"] = {},
				["coords"] = {},
				["questID"] = nil,
				["groups"] = {
					i(nil),
				},
			}),
		})),

		n(TREASURES, sharedData({
			["lockCriteria"] = {},
		}, {
			o(nil, {
				["coord"] = {},
				["questID"] = nil,
				["groups"] = {
					i(nil),
				},
			}),
		})),

		n(VENDORS, sharedData({
			["customCollect"] = nil,
			["altQuests"] = {},
		}, {
			n(nil, {
				["coord"] = {},
				["races"] = {},
				["groups"] = {
					i(nil, {
						["cost"] = nil,
					}),
				},
			}),
		})),

		n(ZONE_DROPS, {
			i(nil, {
				["crs"] = {},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(nil, {
	m(nil, {
		["timeline"] = {},
		["groups"] = {
			n(QUESTS, {
				q(nil),
			}),
		},
	}),
}))
--]]
-- #endif
