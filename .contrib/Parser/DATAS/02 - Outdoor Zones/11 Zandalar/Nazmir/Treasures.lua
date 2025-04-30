---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ZANDALAR, bubbleDown({ ["timeline"] = { ADDED_8_0_1 } }, {
	m(NAZMIR, {
		n(TREASURES, {
			o(298921, {	-- Ancient Nazmani Tablet
				["coord"] = { 56.3, 57.3, NAZMIR },
			}),
			o(279260, {	-- Cleverly Disguised Chest
				["questID"] = 49885,
				["coord"] = { 35.7, 85.6, NAZMIR },
			}),
			o(298965, {	-- Cracked Tablet
				["coord"] = { 51.2, 85.1, NAZMIR },
			}),
			o(277715, {	-- Cursed Nazmani Chest
				["questID"] = 49979,
				["coord"] = { 43.0, 50.7, NAZMIR },
			}),
			o(299073, {	-- Fractured Tablet
				["coord"] = { 42.6, 57.1, NAZMIR },
			}),
			o(279689, {	-- Lost Nazmani Treasure
				["questID"] = 49891,
				["coord"] = { 62.1, 35.0, NAZMIR },
			}),
			o(279253, {	-- Lucky Horace's Lucky Chest
				["questID"] = 49867,
				["coord"] = { 77.6, 36.1, NAZMIR },
				["g"] = {
					i(67410),	-- Very Unlucky Rock
				},
			}),
			o(278437, {	-- Offering to Bwonsamdi
				["questID"] = 49484,
				["coord"] = { 42.8, 26.2, NAZMIR },
			}),
			o(280522, {	-- Partially-Digested Treasure
				["questID"] = 50061,
				["coord"] = { 77.9, 46.5, NAZMIR },
			}),
			o(278436, {	-- Shipwrecked Chest
				["questID"] = 49483,
				["coord"] = { 66.7, 17.5, NAZMIR },
			}),
			o(280504, {	-- Swallowed Naga Chest
				["questID"] = 50045,
				["coord"] = { 76.8, 62.1, NAZMIR },
			}),
			o(279299, {	-- Venomous Seal
				["questID"] = 49889,
				["coord"] = { 46.2, 82.9, NAZMIR },
			}),
			o(298963, {	-- Weathered Nazmani Tablet
				["coord"] = { 43.4, 48.1, NAZMIR },
			}),
			o(277885, {	-- Wunja's Trove
				["questID"] = 49313,
				["coord"] = { 35.5, 55.1, NAZMIR },
			}),
			o_repeated(sharedData({	-- Treasure Chest
				["isDaily"] = true,
			},{
				o(282722, {	-- Treasure Chest
					["questID"] = 50894,
					["coords"] = {
						{ 34.0, 36.8, NAZMIR },
						{ 31.5, 61.5, NAZMIR },
					},
				}),
				o(282721, {	-- Treasure Chest
					["questID"] = 50893,
					["coords"] = {
						{ 66.7, 50.1, NAZMIR },
						{ 73.8, 48.6, NAZMIR },
						{ 82.1, 48.2, NAZMIR },
					},
				}),
				o(282723, {	-- Treasure Chest
					["questID"] = 50895,
					["coords"] = {
						{ 28.0, 81.8, NAZMIR },
						{ 25.1, 78.0, NAZMIR },
					},
				}),
				o(279325, {	-- Treasure Chest
					["questID"] = 49899,
					["coords"] = {
						{ 61.4, 57.6, NAZMIR },
					},
				}),
				o(279373, {	-- Treasure Chest
					["questID"] = 49916,
					["coord"] = { 45.3, 48.4, NAZMIR },
				}),
				o(279367, {	-- Treasure Chest
					["questID"] = 49914,
					["coord"] = { 53.3, 35.4, NAZMIR },
				}),
				o(279379, {	-- Treasure Chest
					["questID"] = 49925,
					["coord"] = { 61.0, 21.0, NAZMIR },
				}),
				o(279366, {	-- Treasure Chest
					["questID"] = 49913,
					["coord"] = { 40.4, 27.2, NAZMIR },
				}),
				o(279352, {	-- Treasure Chest
					["questID"] = 49904,
					["coord"] = { 22.2, 46.5, NAZMIR },
				}),
				o(279378, {	-- Treasure Chest
					["questID"] = 49924,
					["coords"] = {
						{ 71.2, 27.2, NAZMIR },
					},
				}),
			})),
		}),
	}),
})));