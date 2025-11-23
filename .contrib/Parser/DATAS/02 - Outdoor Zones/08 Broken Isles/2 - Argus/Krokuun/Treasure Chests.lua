---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(KROKUUN, {
				n(TREASURES, {
					o(276490, {	-- Krokul Emergency Cache
						["questID"] = 48884,
						["description"] = "You will need |cFFFFD700Lightforged Warframe|r to unblock the rocks.",
						["coord"] = { 50.7, 75.3, KROKUUN },
						["groups"] = {
							i(153304),	-- Oronaar Miner's Dredger
						},
					}),
					o(276489, {	-- Legion Tower Chest
						["questID"] = 48885,
						["description"] = "You will need |cFFFFD700Light's Judgement|r to unblock the rocks.",
						["coord"] = { 62.8, 37.6, KROKUUN },
					}),
					o(277343, {	-- Long-Lost Augari Treasure
						["questID"] = 49154,
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 75.1, 69.8, KROKUUN },
						["groups"] = {
							i(153284),	-- Augari Wakener's Treads
						},
					}),
					o(276491, {	-- Lost Krokul Chest
						["questID"] = 48886,
						["description"] = "You will need |cFFFFD700Light's Judgement|r to unblock the rocks.",
						["coord"] = { 48.5, 58.9, KROKUUN },
					}),
					o(277344, {	-- Precious Augari Keepsakes
						["questID"] = 49156,
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 55.9, 74.2, KROKUUN },
						["groups"] = {
							i(153283),	-- Augari Wakener's Vestments
						},
					}),
					o_repeated({	-- Eredar War Supplies
						["sym"] = {
							{"select","mapID",KROKUUN},		-- get Krokuun
							{"find","headerID",SPECIAL},	-- get Special
							{"find","filterID",PLATE},{"pop"},		-- get Plate
						},
						["groups"] = appendAllGroups({	-- Shared Rewards
							i(152857),	-- Chipped Man'ari Blade
						},sharedData({	-- Common Objects
							["isDaily"] = true,
						},{
							o(271849, {	-- Eredar War Supplies (very small circular spawn area west and a little south of Krokul Hovel (near Talestra the Vile)
								["questID"] = 47753,
								["coords"] = {
									{ 52.7, 76.0, KROKUUN },
									{ 53.1, 73.1, KROKUUN },
									{ 56.8, 72.2, KROKUUN },
									{ 58.2, 71.8, KROKUUN },
									{ 59.3, 73.3, KROKUUN },
									{ 60.3, 76.1, KROKUUN },
									{ 58.5, 79.8, KROKUUN },
									{ 56.2, 80.5, KROKUUN },
									{ 55.2, 81.1, KROKUUN },
								},
							}),
							o(271850, {	-- Eredar War Supplies (south central/east and south of Shattered Fields beacon)
								["questID"] = 47997,
								["coords"] = {
									{ 40.6, 75.5, KROKUUN },
									{ 42.7, 75.5, KROKUUN },
									{ 41.1, 79.9, KROKUUN },
									{ 41.6, 83.8, KROKUUN },
									{ 42.4, 87.8, KROKUUN },
									{ 42.8, 85.8, KROKUUN },
									{ 42.2, 86.4, KROKUUN },
									{ 44.0, 81.3, KROKUUN },
									{ 46.5, 86.6, KROKUUN },
									{ 46.6, 83.4, KROKUUN },
									{ 46.8, 79.8, KROKUUN },
									{ 45.9, 77.5, KROKUUN },
									{ 49.8, 75.8, KROKUUN },
									{ 48.3, 73.7, KROKUUN },
									{ 45.9, 73.0, KROKUUN },
									{ 43.8, 69.7, KROKUUN },
									{ 43.8, 67.0, KROKUUN },
									{ 47.0, 68.2, KROKUUN },
								},
							}),
							o(272455, {	-- Eredar War Supplies (central, around Annihilan Pits)
								["questID"] = 47752,
								["coords"] = {
									{ 49.6, 58.8, KROKUUN },
									{ 52.0, 59.6, KROKUUN },
									{ 56.6, 58.5, KROKUUN },
									{ 50.4, 51.3, KROKUUN },
									{ 52.2, 54.2, KROKUUN },
									{ 53.3, 51.0, KROKUUN },
									{ 55.5, 52.3, KROKUUN },
									{ 57.0, 54.7, KROKUUN },
									{ 58.5, 50.6, KROKUUN },
									{ 59.7, 52.2, KROKUUN },
								},
							}),
							o(272456, {	-- Eredar War Supplies (north)
								["questID"] = 47999,
								["coords"] = {
									{ 43.3, 36.3, KROKUUN },
									{ 47.7, 28.9, KROKUUN },
									{ 48.6, 31.0, KROKUUN },
									{ 49.1, 33.5, KROKUUN },
									{ 49.8, 36.7, KROKUUN },
									{ 51.1, 32.1, KROKUUN },
									{ 52.0, 36.7, KROKUUN },
									{ 54.8, 31.8, KROKUUN },
									{ 55.9, 36.8, KROKUUN },
									{ 59.6, 44.2, KROKUUN },
									{ 62.5, 41.6, KROKUUN },
									{ 59.7, 39.5, KROKUUN },
									{ 58.3, 36.3, KROKUUN },
									{ 57.9, 33.8, KROKUUN },
									{ 62.8, 38.0, KROKUUN },
									{ 61.6, 35.2, KROKUUN },
									{ 62.3, 32.1, KROKUUN },
									{ 60.6, 33.2, KROKUUN },
									{ 59.5, 30.5, KROKUUN },
									{ 60.8, 28.7, KROKUUN },
									{ 57.7, 26.2, KROKUUN },
									{ 60.5, 23.7, KROKUUN },
									{ 62.5, 25.8, KROKUUN },
									{ 60.9, 18.5, KROKUUN },
									{ 59.2, 18.8, KROKUUN },
									{ 64.6, 23.2, KROKUUN },
									{ 65.9, 23.0, KROKUUN },
									{ 66.9, 25.7, KROKUUN },
								},
							}),
							o(272770, {	-- Eredar War Supplies (southwest, in/around the Xenedar)
								["questID"] = 48336,
								["coords"] = {
									{ 26.1, 68.1, KROKUUN },
									{ 27.2, 66.8, KROKUUN },
									{ 28.6, 70.4, KROKUUN },
									{ 30.4, 64.2, KROKUUN },
									{ 31.9, 67.6, KROKUUN },
									{ 32.1, 74.6, KROKUUN },
									{ 36.9, 74.3, KROKUUN },
									{ 36.5, 67.6, KROKUUN },
									{ 37.1, 64.1, KROKUUN },
									{ 34.7, 63.0, KROKUUN },
									{ 29.6, 57.7, KROKUUN },
									{ 33.6, 55.3, KROKUUN },
									{ 36.3, 55.5, KROKUUN },
									{ 36.6, 58.9, KROKUUN },
									{ 38.9, 59.1, KROKUUN },
									{ 40.6, 60.7, KROKUUN },
									{ 41.3, 58.3, KROKUUN },
									{ 40.5, 55.5, KROKUUN },
								},
							}),
							o(272771, {	-- Eredar War Supplies (scattered around center and northeast)
								["questID"] = 48339,
								["coords"] = {
									{ 46.1, 40.7, KROKUUN },
									{ 44.9, 43.5, KROKUUN },
									{ 47.6, 42.0, KROKUUN },
									{ 46.3, 46.5, KROKUUN },
									{ 46.4, 49.1, KROKUUN },
									{ 43.5, 51.2, KROKUUN },
									{ 43.6, 55.5, KROKUUN },
									{ 45.8, 58.5, KROKUUN },
									{ 46.2, 61.9, KROKUUN },
									{ 50.2, 66.7, KROKUUN },
									{ 51.6, 63.5, KROKUUN },
									{ 52.9, 62.7, KROKUUN },
									{ 53.9, 67.7, KROKUUN },
									{ 54.6, 65.9, KROKUUN },
									{ 61.3, 66.5, KROKUUN },
									{ 61.8, 64.2, KROKUUN },
									{ 63.1, 42.5, KROKUUN },
									{ 64.9, 41.5, KROKUUN },
									{ 68.5, 38.8, KROKUUN },
									{ 66.0, 35.2, KROKUUN },
									{ 67.7, 34.6, KROKUUN },
									{ 70.5, 30.8, KROKUUN },
									{ 72.3, 32.5, KROKUUN },
									{ 73.5, 34.5, KROKUUN },
									{ 72.5, 36.0, KROKUUN },
								},
							}),
							o(273222, {	-- Eredar War Supplies (southeast)
								["questID"] = 48000,
								["coords"] = {
									{ 63.0, 68.2, KROKUUN },
									{ 67.9, 71.5, KROKUUN },
									{ 69.2, 84.1, KROKUUN },
									{ 69.8, 78.4, KROKUUN },
									{ 71.8, 75.5, KROKUUN },
									{ 70.9, 73.6, KROKUUN },
									{ 73.5, 71.3, KROKUUN },
									{ 74.1, 67.8, KROKUUN },
									{ 75.0, 69.4, KROKUUN },
									{ 75.2, 64.4, KROKUUN },
									{ 72.8, 64.9, KROKUUN },
									{ 71.9, 61.7, KROKUUN },
									{ 69.8, 57.7, KROKUUN },
									{ 69.5, 62.7, KROKUUN },
									{ 67.9, 62.5, KROKUUN },
								},
							}),
						})),
					}),
				}),
			}),
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(KROKUUN, {
				n(TREASURES, {
					q(48876),	-- jumping on the rubble in front of "Krokul Emergency Cache" (object id: 276490)
					q(48877),	-- I'm guessing for clearing the rubble in front of "Legion Power Chest" (object id: 276489)
					q(48878),	-- clearing rubble for "Lost Krokul Chest" (object id: 276491)
				}),
			}),
		}),
	}),
})));
