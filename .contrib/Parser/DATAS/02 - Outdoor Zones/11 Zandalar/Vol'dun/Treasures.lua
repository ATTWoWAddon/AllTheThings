---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(VOLDUN, {
		n(TREASURES, {
			o(294318, {	-- Abandoned Bobber
				["coord"] = { 26.5, 45.5, VOLDUN },
			}),
			o(280951, {	-- Ashvane Spoils
				["description"] = "Hop into the mine cart to pick up the chest at the end of the tracks.",
				["questID"] = 50237,
				["coords"] = {
					{ 46.6, 88.0, VOLDUN },
					{ 44.4, 92.2, VOLDUN },
				},
				["cr"] = 132662,	-- Mine Cart
			}),
			o(296579, {	-- Brian's Broken Compass
				["questID"] = 53135,
				["coord"] = { 37.8, 30.4, VOLDUN },
			}),
			o(296585, {	-- Damarcus' Backpack
				["questID"] = 53141,
				["coord"] = { 45.9, 30.8, VOLDUN },
			}),
			o(294317, {	-- Deadwood Chest
				["questID"] = 52994,
				["coord"] = { 40.5, 85.7, VOLDUN },
			}),
			o(287324, {	-- Excavator's Greed
				["questID"] = 51136,
				["coord"] = { 57.6, 64.6, VOLDUN },
			}),
			o(287239, {	-- Grayal's Last Offering
				["sourceQuests"] = { 50617 },	-- Atul'Aman
				["questID"] = 51093,
				["coord"] = { 48.2, 64.7, VOLDUN },
			}),
			o(296574, {	-- Ian's Empty Bottle
				["questID"] = 53133,
				["coord"] = { 36.21, 78.37, VOLDUN },
			}),
			o(296573, {	-- Jason's Rusty Blade
				["questID"] = 53132,
				["coord"] = { 56.3, 70.1, VOLDUN },
			}),
			o(296587, {	-- Josh's Fang Necklace
				["questID"] = 53143,
				["coord"] = { 47.92, 36.73, VOLDUN },
			}),
			o(296575, {	-- Julie's Cracked Dish
				["questID"] = 53134,
				["coord"] = { 53.6, 89.7, VOLDUN },
			}),
			o(296582, {	-- Julien's Left Boot
				["questID"] = 53138,
				["coord"] = { 52.5, 14.5, VOLDUN },
			}),
			o(296589, {	-- Kurt's Ornate Key
				["questID"] = 53145,
				["coord"] = { 62.9, 22.7, VOLDUN },
			}),
			o(287304, {	-- Lost Explorer's Bounty
				["questID"] = 51132,
				["coord"] = { 49.7, 79.3, VOLDUN },
			}),
			o(294316, {	-- Lost Offerings of Kimbul
				["questID"] = 52992,
				["coord"] = { 57.0, 11.1, VOLDUN },
			}),
			o(296583, {	-- Navarro's Flask
				["questID"] = 53139,
				["coord"] = { 43.2, 77.0, VOLDUN },
			}),
			o(296580, {	-- Ofer's Bound Journal
				["questID"] = 53136,
				["coord"] = { 26.8, 52.9, VOLDUN },
			}),
			o(296588, {	-- Portrait of Commander Martens
				["questID"] = 53144,
				["coord"] = { 45.2, 91.1, VOLDUN },
			}),
			o(296586, {	-- Rachel's Flute
				["description"] = "Enter the cave at 64.9, 36.3.",
				["questID"] = 53142,
				["coord"] = { 66.4, 36.0, VOLDUN },
			}),
			o(287318, {	-- Sandfury Reserve
				["questID"] = 51133,
				["coord"] = { 47.2, 58.5, VOLDUN },
			}),
			o(294319, {	-- Sandsunken Treasure
				["description"] = "Click the Abandoned Bobber to spawn the chest.",
				["provider"] = { "o", 294318 },	-- -- Abandoned Bobber
				["questID"] = 53004,
				["coord"] = { 26.5, 45.4, VOLDUN },
			}),
			o(296581, {	-- Skye's Pet Rock
				["questID"] = 53137,
				["coord"] = { 29.5, 59.5, VOLDUN },
			}),
			o(287320, {	-- Stranded Cache
				["questID"] = 51135,
				["coord"] = { 44.5, 26.2, VOLDUN },
			}),
			o(296584, {	-- Zach's Canteen
				["questID"] = 53140,
				["coord"] = { 47.0, 75.8, VOLDUN },
			}),
			o(287326, {	-- Zem'lan's Buried Treasure
				["description"] = "Click on the Disturbed Sand to spawn the chest.",
				["questID"] = 51137,
				["coord"] = { 29.3, 87.4, VOLDUN },
			}),
			o_repeated(sharedData({	-- Treasure Chest
				["isDaily"] = true,
			},{
				o(284411, {	-- Treasure Chest
					["questID"] = 50917,
					["coords"] = {
						{ 52.6, 31.9, VOLDUN },
						{ 54.6, 35.5, VOLDUN },
					},
				}),
				o(284414, {	-- Treasure Chest
					["questID"] = 50920,
					["coords"] = {
						{ 45.6, 88.1, VOLDUN },
					},
				}),
				o(284417, {	-- Treasure Chest
					["questID"] = 50923,
					["coords"] = {
						{ 26.7, 66.2, VOLDUN },
						{ 27.8, 69.2, VOLDUN },
					},
				}),
				o(284420, {	-- Treasure Chest
					["questID"] = 50926,
					["coords"] = {
						{ 52.4, 77.9, VOLDUN },
					},
				}),
				o(284421, {	-- Treasure Chest
					["questID"] = 50928,
					["coords"] = {
						{ 56.2, 52.3, VOLDUN },
						{ 56.7, 55.3, VOLDUN },
					},
				}),
				o(290770, {	-- Treasure Chest
					["questID"] = 51673,
					["coords"] = {
						{ 52.7, 81.1, VOLDUN },
					},
				}),
				o(284410, {	-- Treasure Chest
					["questID"] = 50916,
					["coords"] = {
						{ 64.3, 34.7, VOLDUN },
					},
				}),
				o(284412, {	-- Treasure Chest
					["questID"] = 50918,
					["coords"] = {
						{ 61.6, 24.1, VOLDUN },
					},
				}),
				o(284408, {	-- Treasure Chest
					["questID"] = 50914,
					["coords"] = {
						{ 61.0, 16.7, VOLDUN },
					},
				}),
				o(284409, {	-- Treasure Chest
					["questID"] = 50915,
					["coords"] = {
						{ 51.9, 17.8, VOLDUN },
					},
				}),
				o(284413, {	-- Treasure Chest
					["questID"] = 50919,
					["coords"] = {
						{ 35.7, 43.2, VOLDUN },
					},
				}),
				o(284419, {	-- Treasure Chest
					["questID"] = 50925,
					["coords"] = {
						{ 48.0, 74.4, VOLDUN },
					},
				}),
				o(284418, {	-- Treasure Chest
					["questID"] = 50924,
					["coords"] = {
						{ 37.6, 82.7, VOLDUN },
					},
				}),
				o(284415, {	-- Treasure Chest
					["questID"] = 50921,
					["coords"] = {
						{ 46.2, 42.8, VOLDUN },
					},
				}),
				o(284416, {	-- Treasure Chest
					["questID"] = 50922,
					["coords"] = {
						{ 30.3, 46.2, VOLDUN },
					},
				}),
			})),
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(ZANDALAR, {
		m(VOLDUN, {
			n(TREASURES, {
				q(51138),	-- clicking on sand pile to spawn Zem'lan's Buried Treasure
				q(53005),	-- clicking on the fishing bobber to spawn Sandsunken Chest
				q(47326),	-- clicking on the mine cart to get Ashvane Spoils
				q(51094),	-- clicking on object 287238 Ancient Altar in Vol'dun as part of the Treasures of Vol'dun achievement for Grayal's Last Offering
				q(50554),	-- Clicking the Cracked Stone Tablet at 48.7, 72.1
				q(50555),	-- Clicking the Cracked Stone Tablet at 48.7, 72.1
				q(50556),	-- Clicking the Cracked Stone Tablet at 48.7, 72.1
				q(50557),	-- Clicking the Cracked Stone Tablet at 48.7, 72.1
			}),
		}),
	}),
})));