-----------------------------------------------
--      P L A Y E R   V S   P L A Y E R      --
-----------------------------------------------
root(ROOTS.PVP, pvp(n(BATTLEGROUNDS, {
	m(519, {	-- Deepwind Gorge
		["icon"] = 879931,
		["timeline"] = { ADDED_5_3_0 },
		["maps"] = {
			1576,	-- Deepwind Gorge (revamped)
		},
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(8360, {		-- Master of Deepwind Gorge
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						8331,	-- Deepwind Gorge Victory
						8332,	-- Deepwind Gorge Veteran
						8333,	-- Deepwind Gorge Perfection
						8350,	-- Mine! Mine! Mine!
						8351,	-- Other People's Property
						8354,	-- Puddle Jumper
						8355,	-- Weighed Down
						8359,	-- Capping Spree
						8358,	-- Deepwind Gorge All-Star
					}},
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
					["groups"] = {
						title(229, {	-- Gorgeous
							["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
						}),
					},
				}),
				ach(14175, {	-- Master of Deepwind Gorge
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						8331,	-- Deepwind Gorge Victory
						8332,	-- Deepwind Gorge Veteran
						8333,	-- Deepwind Gorge Perfection
						14187,	-- Cruisin' for a Brewsin'
						14186,	-- Market Dominance
						14188,	-- Well Gorged
					}},
					["groups"] = {
						title(229),	-- Gorgeous
					},
				}),
				ach(8359, {		-- Capping Spree
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
				}),
				ach(14187),		-- Cruisin' for a Brewsin'
				ach(8358,	-- Deepwind Gorge All-Star
				bubbleDownSelf({["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 }}, {
					crit(23425),	-- Assault 1 mine
					crit(23426),	-- Defend 1 mine
					crit(23427),	-- Capture 1 mine cart
					crit(23428),	-- Return 1 mine cart
				})),
				ach(8333),		-- Deepwind Gorge Perfection
				ach(8332),		-- Deepwind Gorge Veteran
				ach(8331),		-- Deepwind Gorge Victory
				ach(14186),		-- Market Dominance
				ach(8350, {		-- Mine! Mine! Mine!
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
				}),
				ach(8351, {		-- Other People's Property
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
				}),
				ach(8354, {		-- Puddle Jumper
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
				}),
				ach(8355, {		-- Weighed Down
					["timeline"] = { ADDED_5_3_0, REMOVED_8_3_0 },
				}),
				ach(14188),		-- Well Gorged
			}),
		},
	}),
})));
