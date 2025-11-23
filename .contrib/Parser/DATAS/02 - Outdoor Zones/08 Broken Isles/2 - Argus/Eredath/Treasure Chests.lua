---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(EREDATH, {
				n(TREASURES, {
					o(277342, {	-- Augari Goods
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 40.9, 69.9, EREDATH },
						["questID"] = 49153,
						["groups"] = {
							i(153281),	-- Augari Wakener's Handwraps
						},
					}),
					o(277327, {	-- Augari-Runed Chest
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 70.6, 27.6, EREDATH },
						["questID"] = 49129,
						["groups"] = {
							i(153280),	-- Augari Wakener's Circlet
						},
					}),
					o(276227, {	-- Augari Secret Stash
						["description"] = "Use a |cFFFFD700Goblin Glider Kit|r to reach the floating island.",
						["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
						["coord"] = { 70.2, 59.8, EREDATH },
						["questID"] = 48748,
						["groups"] = {
							i(153279),	-- Augari Wakener's Cord
						},
					}),
					o(276224, {	-- Chest of Ill-Gotten Gains
						["description"] = "You will need |cFFFFD700Light's Judgment|r to get into the cave.",
						["coord"] = { 50.6, 38.5, EREDATH },
						["questID"] = 48744,
						["groups"] = {
							i(153325),	-- Eredath Vigilant's Redoubt
						},
					}),
					o(276228, {	-- Desperate Eredar's Cache
						["sourceQuests"] = { 48107 },	-- The Sigil of Awakening
						["coord"] = { 57.1, 76.8, EREDATH },
						["questID"] = 48749,
						["groups"] = {
							i(153267),	-- Enclave Aspirant's Hatchet
						},
					}),
					o(276230, {	-- Doomseeker's Treasure
						["description"] = "Drop down into the hole by the waterfall and land on the ledge. You will need a |cFFFFD700Goblin Glider Kit|r to reach this chest.",
						["coord"] = { 43.5, 54.4, EREDATH },
						["questID"] = 48751,
						["groups"] = {
							i(153313),	-- Praetor's Ornamental Claymore
						},
					}),
					o(276223, {	-- Eredar Treasure Cache
						["description"] = "You can use the |cFFFFD700Lightforged Warframe|r to get across, although it shouldn't be necessary.",
						["coord"] = { 42.9, 5.30, EREDATH },
						["questID"] = 48743,
					}),
					o(277340, {	-- Secret Augari Chest
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 62.2, 22.3, EREDATH },
						["questID"] = 49151,
						["groups"] = {
							i(153282),	-- Augari Wakener's Leggings
						},
					}),
					o(276229, {	-- Shattered House Chest
						["description"] = "You will need a |cFFFFD700Goblin Glider Kit|r to reach this chest.",
						["coord"] = { 27.5, 40.2, EREDATH },
						["questID"] = 48750,
					}),
					o(276225, {	-- Student's Surprising Surplus
						["description"] = "You will need |cFFFFD700Light's Judgment|r to get into the cave.",
						["coord"] = { 61.2, 72.5, EREDATH },
						["questID"] = 48745,
						["groups"] = {
							i(153286),	-- Augari Wakener's Cuffs
						},
					}),
					o(276226, {	-- Void-Tinged Chest
						["description"] = "You will need |cFFFFD700Lightforged Warframe|r to get into the cave.",
						["coord"] = { 40.2, 51.5, EREDATH },
						["questID"] = 48747,
						["groups"] = {
							i(153328),	-- Mystic Wakener's Shiv
							i(152854),	-- Nethershorn Lantern
						},
					}),
					o_repeated({	-- Ancient Eredar Cache
						["groups"] = appendAllGroups({	-- Shared Rewards
							i(153336),	-- Eredath Lightseeker's Armguards
							i(153332),	-- Eredath Lightseeker's Chestpiece
							i(153330),	-- Eredath Lightseeker's Greaves
							i(153335),	-- Eredath Lightseeker's Handguards
							i(153331),	-- Eredath Lightseeker's Helmet
							i(153334),	-- Eredath Lightseeker's Spaulders
							i(153337),	-- Eredath Lightseeker's Treads
							i(153333),	-- Eredath Lightseeker's Waistplate
							i(153276),	-- Forgotten Conservatory Amice
							i(153272),	-- Forgotten Conservatory Gloves
							i(153271),	-- Forgotten Conservatory Helm
							i(153273),	-- Forgotten Conservatory Leggings
							i(153288),	-- Forgotten Conservatory Robes
							i(153270),	-- Forgotten Conservatory Sash* — confirmed on Discord
							i(153275),	-- Forgotten Conservatory Slippers
							i(153277),	-- Forgotten Conservatory Wristwraps
						},sharedData({	-- Common Objects
							["isDaily"] = true,
						},{
							o(273301, {	-- Ancient Eredar Cache
								["questID"] = 48346,
								["coords"] = {
									{ 54.9, 57.7, EREDATH },
									{ 48.0, 61.2, EREDATH },
									{ 47.2, 62.3, EREDATH },
									{ 52.7, 61.8, EREDATH },
									{ 57.5, 61.6, EREDATH },
									{ 59.5, 63.9, EREDATH },
									{ 50.9, 67.2, EREDATH },
									{ 53.0, 66.5, EREDATH },
									{ 54.7, 66.9, EREDATH },
									{ 59.8, 69.7, EREDATH },
									{ 60.9, 70.6, EREDATH },
									{ 51.8, 71.4, EREDATH },
									{ 50.0, 75.9, EREDATH },
									{ 55.4, 73.4, EREDATH },
									{ 57.5, 75.1, EREDATH },
									{ 55.2, 77.8, EREDATH },
									{ 53.2, 80.0, EREDATH },
									{ 52.9, 82.5, EREDATH },
								},
							}),
							o(273407, {	-- Ancient Eredar Cache
								["questID"] = 48350,
								["coords"] = {
									{ 53.9, 23.2, EREDATH },
									{ 54.9, 25.0, EREDATH },
									{ 53.3, 27.4, EREDATH },
									{ 59.5, 20.9, EREDATH },
									{ 63.3, 19.8, EREDATH },
									{ 63.3, 22.5, EREDATH },
									{ 62.2, 26.3, EREDATH },
									{ 53.6, 34.3, EREDATH },
									{ 55.0, 35.2, EREDATH },
									{ 60.5, 32.0, EREDATH },
									{ 60.5, 33.5, EREDATH },
									{ 58.7, 40.7, EREDATH },
								},
							}),
							o(273412, {	-- Ancient Eredar Cache
								["questID"] = 48351,
								["coords"] = {
									{ 33.8, 55.5, EREDATH },
									{ 34.2, 57.3, EREDATH },
									{ 34.3, 59.1, EREDATH },
									{ 35.6, 56.2, EREDATH },
									{ 35.6, 57.1, EREDATH },
									{ 37.2, 55.5, EREDATH },
									{ 40.5, 55.5, EREDATH },
									{ 42.6, 53.7, EREDATH },
									{ 43.9, 56.5, EREDATH },
									{ 42.3, 57.5, EREDATH },
									{ 39.2, 59.2, EREDATH },
									{ 37.9, 58.7, EREDATH },
									{ 37.1, 61.0, EREDATH },
									{ 37.2, 62.7, EREDATH },
									{ 38.1, 63.7, EREDATH },
									{ 38.5, 64.4, EREDATH },
									{ 40.5, 63.0, EREDATH },
									{ 41.6, 63.4, EREDATH },
									{ 34.2, 65.6, EREDATH },
									{ 36.3, 66.4, EREDATH },
									{ 38.5, 66.9, EREDATH },
									{ 42.4, 61.3, EREDATH },
									{ 43.5, 59.9, EREDATH },
									{ 41.1, 68.9, EREDATH },
									{ 43.8, 68.5, EREDATH },
									{ 44.6, 68.6, EREDATH },
									{ 43.6, 71.5, EREDATH },
									{ 47.3, 70.7, EREDATH },
									{ 46.0, 72.2, EREDATH },
									{ 47.0, 73.3, EREDATH },
								},
							}),
							o(273414, {	-- Ancient Eredar Cache
								["questID"] = 48362,
								["coords"] = {
									{ 62.2, 32.7, EREDATH },
									{ 64.9, 29.5, EREDATH },
									{ 66.4, 29.0, EREDATH },
									{ 67.2, 28.2, EREDATH },
									{ 67.8, 31.9, EREDATH },
									{ 69.5, 32.7, EREDATH },
									{ 70.1, 33.8, EREDATH },
									{ 65.3, 35.6, EREDATH },
									{ 68.8, 37.1, EREDATH },
									{ 62.2, 40.7, EREDATH },
									{ 61.9, 42.7, EREDATH },
									{ 60.9, 43.7, EREDATH },
									{ 69.8, 46.6, EREDATH },
									{ 65.5, 41.9, EREDATH },
									{ 68.5, 41.5, EREDATH },
									{ 63.8, 45.3, EREDATH },
									{ 66.1, 46.9, EREDATH },
									{ 67.2, 46.2, EREDATH },
									{ 69.5, 44.9, EREDATH },
									{ 68.2, 49.1, EREDATH },
									{ 69.7, 49.4, EREDATH },
									{ 70.5, 51.1, EREDATH },
									{ 62.7, 50.6, EREDATH },
									{ 61.5, 55.5, EREDATH },
									{ 68.5, 53.1, EREDATH },
									{ 67.2, 53.7, EREDATH },
									{ 67.1, 56.9, EREDATH },
									{ 64.6, 56.0, EREDATH },
									{ 64.5, 59.5, EREDATH },
									{ 65.9, 60.0, EREDATH },
								},
							}),
							o(273415, {	-- Ancient Eredar Cache
								["questID"] = 48357,
								["coords"] = {
									{ 53.3, 8.50, EREDATH },
									{ 58.0, 10.6, EREDATH },
									{ 58.7, 13.3, EREDATH },
									{ 53.5, 13.0, EREDATH },
									{ 53.0, 16.8, EREDATH },
									{ 55.0, 17.5, EREDATH },
									{ 50.0, 14.2, EREDATH },
									{ 48.3, 12.9, EREDATH },
									{ 45.1, 13.5, EREDATH },
									{ 46.1, 13.2, EREDATH },
									{ 46.5, 15.1, EREDATH },
									{ 42.6, 17.9, EREDATH },
									{ 44.6, 18.4, EREDATH },
									{ 47.7, 19.4, EREDATH },
									{ 48.6, 21.1, EREDATH },
									{ 47.6, 21.8, EREDATH },
									{ 49.5, 24.1, EREDATH },
									{ 45.1, 24.8, EREDATH },
									{ 49.9, 29.3, EREDATH },
									{ 51.7, 28.6, EREDATH },
								},
							}),
							o(273439, {	-- Ancient Eredar Cache
								["questID"] = 48371,
								["coords"] = {
									{ 59.3, 58.6, EREDATH },
									{ 50.6, 55.8, EREDATH },
									{ 49.9, 55.1, EREDATH },
									{ 53.6, 42.0, EREDATH },
									{ 54.5, 44.7, EREDATH },
									{ 51.0, 47.8, EREDATH },
									{ 48.7, 49.8, EREDATH },
									{ 49.8, 41.6, EREDATH },
									{ 49.0, 39.5, EREDATH },
									{ 49.5, 35.8, EREDATH },
									{ 47.1, 36.6, EREDATH },
									{ 32.6, 47.0, EREDATH },
									{ 25.5, 30.0, EREDATH },
									{ 29.0, 33.8, EREDATH },
									{ 24.7, 38.6, EREDATH },
									{ 19.7, 42.1, EREDATH },
								},
							}),
						})),
					}),
					o(273443, {	-- Void-Seeped Cache
						["isDaily"] = true,
						["questID"] = 48361,
						["coords"] = {
							{ 19.8, 46.6, EREDATH },
							{ 33.2, 43.5, EREDATH },
							{ 35.3, 36.0, EREDATH },
							{ 37.7, 48.7, EREDATH },
						},
						["groups"] = {
							i(152854),	-- Nethershorn Lantern
							i(152862),	-- Shredded Felbroken Shawl
						},
					}),
					o(277637, {	-- Void-Seeped Cache
						-- ["isDaily"] = true, ?
						-- ["questID"] = ?,
						["coords"] = {
							{ 31.4, 25.4, EREDATH },
							{ 31.4, 25.7, EREDATH },
							{ 31.5, 25.6, EREDATH },
							{ 31.6, 25.4, EREDATH },
							{ 32.4, 21.4, EREDATH },
							{ 32.4, 21.5, EREDATH },
							{ 32.5, 21.4, EREDATH },
							{ 32.9, 24.1, EREDATH },
							{ 33.1, 29.4, EREDATH },
							{ 33.2, 29.6, EREDATH },
							{ 33.6, 23.8, EREDATH },
							{ 33.7, 23.4, EREDATH },
							{ 34.1, 20.7, EREDATH },
							{ 34.3, 35.8, EREDATH },
							{ 34.5, 35.7, EREDATH },
							{ 35.3, 38.3, EREDATH },
							{ 35.3, 38.6, EREDATH },
							{ 37.0, 20.1, EREDATH },
							{ 37.6, 36.3, EREDATH },
							{ 37.9, 23.4, EREDATH },
							{ 37.9, 23.5, EREDATH },
							{ 38.1, 39.9, EREDATH },
						},
						["groups"] = {
							i(152854),	-- Nethershorn Lantern
							i(152862),	-- Shredded Felbroken Shawl
						},
					}),
				}),
			}),
		})),
	}),
});

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_3_0 } }, {
	m(BROKEN_ISLES, {
		m(ARGUS, {
			m(EREDATH, {
				n(TREASURES, {
					q(49264),	-- opening a Void-Seeped Cache in Eredath
					q(49022),	-- It's clearing the rubble in front of "Forgotten Legion Supplies" (object id: 277204)
				}),
			}),
		}),
	}),
})));
