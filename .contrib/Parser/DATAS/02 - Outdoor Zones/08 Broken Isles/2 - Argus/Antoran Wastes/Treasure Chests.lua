---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, {
	m(BROKEN_ISLES, {
		m(ARGUS, bubbleDown({ ["timeline"] = { ADDED_7_3_0 } }, {
			m(ANTORAN_WASTES, {
				n(TREASURES, {
					o(277205, {	-- Ancient Legion War Cache
						["description"] = "You will need |cFFFFD700Light's Judgment|r to get into the cave.",
						["coord"] = { 65.9, 39.9, ANTORAN_WASTES },
						["questID"] = 49018,
						["groups"] = {
							i(152857),	-- Chipped Man'ari Blade
							i(153308),	-- Unyielding Peacekeeper's Cudgel
						},
					}),
					o(277206, {	-- Fel-Bound Chest
						["description"] = "You will need |cFFFFD700Light's Judgment|r to get into the cave.",
						["coord"] = { 52.2, 27.2, ANTORAN_WASTES },
						["questID"] = 49019,
					}),
					o(277204, {	-- Forgotten Legion Supplies
						["description"] = "You will need |cFFFFD700Lightforged Warframe|r to get into the cave.",
						["coord"] = { 58.8, 59.2, ANTORAN_WASTES },
						["questID"] = 49017,
					}),
					o(276425, {	-- Intact Fiend Bone
						["description"] = "Near Vrax'thul, on the east side of a black pillar.",
						["cost"] = {{ "i", 152786, 1 }},	-- Call of the Devourer
						["coord"] = { 52.4, 35.3, ANTORAN_WASTES },
						["groups"] = {
							i(152991),	-- Fiend Bone
						},
					}),
					o(276424, {	-- Intact Imp Bones
						["description"] = "Can be found inside the imp cave.",
						["cost"] = {{ "i", 152786, 1 }},	-- Call of the Devourer
						["coords"] = {
							{ 65.6, 26.3, ANTORAN_WASTES },	-- Entrance
							{ 65.9, 19.4, ANTORAN_WASTES },	-- Imp Bone
						},
						["groups"] = {
							i(152992),	-- Imp Bone
						},
					}),
					o(276426, {	-- Intact Ur'zul Bone
						["description"] = "Next to the altar.",
						["cost"] = {{ "i", 152786, 1 }},	-- Call of the Devourer
						["coord"] = { 50.4, 56.1, ANTORAN_WASTES },
						["groups"] = {
							i(152993),	-- Ur'zul Bone
						},
					}),
					o(277207, {	-- Legion Treasure Hoard
						["description"] = "Located behind the fel waterfall.",
						["coord"] = { 49.2, 59.5, ANTORAN_WASTES },
						["questID"] = 49020,
						["groups"] = {
							i(152857),	-- Chipped Man'ari Blade
							i(153291),	-- Spectral Censorite's Staff
						},
					}),
					o(277346, {	-- Missing Augari Chest
						["description"] = "Use |cFFFFD700Shroud of Arcane Echoes|r to open the chest.",
						["coord"] = { 57.5, 63.5, ANTORAN_WASTES },
						["questID"] = 49159,
						["groups"] = {
							i(153285),	-- Augari Wakener's Mantle
						},
					}),
					o(277208, {	-- Timeworn Fel Chest
						["coord"] = { 75.7, 52.6, ANTORAN_WASTES },
						["questID"] = 49021,
					}),
					o_repeated({	-- Legion War Supplies
						["sym"] = {
							{"select","mapID",ANTORAN_WASTES},	-- get Antoran Wastes
							{"find","headerID",SPECIAL},		-- get Special
							{"find","filterID",CLOTH},{"pop"},	-- get Cloth
						},
						["groups"] = appendAllGroups({	-- Shared Rewards
							i(152857),	-- Chipped Man'ari Blade
							i(153344),	-- Triumvirate High Guard's Bracers
							i(153340),	-- Triumvirate High Guard's Breastplate
							i(153339),	-- Triumvirate High Guard's Casque
							i(153341),	-- Triumvirate High Guard's Greatbelt
							i(153343),	-- Triumvirate High Guard's Gauntlets
							i(153342),	-- Triumvirate High Guard's Pauldrons
							i(153338),	-- Triumvirate High Guard's Leggings
							i(153345),	-- Triumvirate High Guard's Warboots
						},sharedData({	-- Common Objects
							["isDaily"] = true,
						},{
							o(273519, {	-- Legion War Supplies (east and south of small green lake in southeast area of map)
								["questID"] = 48382,
								["coords"] = {
									{ 61.3, 54.0, ANTORAN_WASTES },
									{ 58.8, 64.8, ANTORAN_WASTES },
									{ 58.0, 68.1, ANTORAN_WASTES },
									{ 60.9, 70.5, ANTORAN_WASTES },
									{ 62.7, 68.5, ANTORAN_WASTES },
									{ 64.6, 68.6, ANTORAN_WASTES },
									{ 68.5, 70.8, ANTORAN_WASTES },
									{ 71.3, 69.2, ANTORAN_WASTES },
									{ 69.5, 67.9, ANTORAN_WASTES },
									{ 68.1, 66.3, ANTORAN_WASTES },
									{ 69.4, 63.5, ANTORAN_WASTES },
									{ 67.6, 62.3, ANTORAN_WASTES },
								},
							}),
							o(273521, {	-- Legion War Supplies (around Spirit Crucible)
								["questID"] = 48383,
								["coords"] = {
									{ 58.2, 40.2, ANTORAN_WASTES },
									{ 59.9, 35.8, ANTORAN_WASTES },
									{ 58.5, 31.2, ANTORAN_WASTES },
									{ 56.9, 35.7, ANTORAN_WASTES },
									{ 55.1, 39.3, ANTORAN_WASTES },
									{ 53.7, 35.7, ANTORAN_WASTES },
									{ 52.2, 29.3, ANTORAN_WASTES },
									{ 51.8, 37.8, ANTORAN_WASTES },
									{ 51.8, 34.0, ANTORAN_WASTES },
								},
							}),
							o(273523, {	-- Legion War Supplies (north central, possibly only in cave)
								["questID"] = 48384,
								["coords"] = {
									{ 60.9, 29.0, ANTORAN_WASTES },
									{ 59.2, 19.4, ANTORAN_WASTES },
									{ 61.4, 20.4, ANTORAN_WASTES },
									{ 61.8, 22.4, ANTORAN_WASTES },
									{ 64.0, 23.1, ANTORAN_WASTES },
									{ 64.0, 27.5, ANTORAN_WASTES },
									{ 66.6, 17.2, ANTORAN_WASTES },
								},
							}),
							o(273524, {	-- Legion War Supplies (southernmost point of wide green river, close to Felfire Armory)
								["questID"] = 48385,
								["coords"] = {
									{ 48.3, 54.4, ANTORAN_WASTES },
									{ 50.7, 57.0, ANTORAN_WASTES },
									{ 57.8, 58.9, ANTORAN_WASTES },
									{ 56.0, 54.0, ANTORAN_WASTES },
									{ 57.2, 51.2, ANTORAN_WASTES },
									{ 55.5, 47.5, ANTORAN_WASTES },
								},
							}),
							o(273527, {	-- Legion War Supplies (northeast, to the right of bridges)
								["questID"] = 48387,
								["coords"] = {
									{ 65.5, 28.5, ANTORAN_WASTES },
									{ 63.7, 36.5, ANTORAN_WASTES },
									{ 66.7, 36.3, ANTORAN_WASTES },
									{ 68.9, 33.5, ANTORAN_WASTES },
									{ 69.5, 39.5, ANTORAN_WASTES },
									{ 72.5, 42.3, ANTORAN_WASTES },
									{ 73.5, 46.7, ANTORAN_WASTES },
								},
							}),
							o(273528, {	-- Legion War Supplies (southeast, around Terminus)
								["questID"] = 48390,
								["coords"] = {
									{ 72.1, 56.8, ANTORAN_WASTES },
									{ 76.6, 58.1, ANTORAN_WASTES },
									{ 72.6, 72.7, ANTORAN_WASTES },
									{ 73.4, 68.6, ANTORAN_WASTES },
									{ 77.3, 64.1, ANTORAN_WASTES },
									{ 80.5, 61.6, ANTORAN_WASTES },
									{ 77.1, 75.2, ANTORAN_WASTES },
									{ 81.4, 68.6, ANTORAN_WASTES },
									{ 82.6, 65.1, ANTORAN_WASTES },
									{ 82.6, 67.3, ANTORAN_WASTES },
								},
							}),
							o(273533, {	-- Legion War Supplies (north - northeast of Spirit Crucible, west of bridges)
								["questID"] = 48388,
								["coords"] = {
									{ 51.5, 26.0, ANTORAN_WASTES },
									{ 54.2, 27.9, ANTORAN_WASTES },
									{ 56.0, 26.6, ANTORAN_WASTES },
									{ 55.5, 20.5, ANTORAN_WASTES },
									{ 56.0, 17.2, ANTORAN_WASTES },
									{ 55.9, 14.0, ANTORAN_WASTES },
									{ 59.3, 17.7, ANTORAN_WASTES },
									{ 59.6, 13.9, ANTORAN_WASTES },
								},
							}),
							o(273535, {	-- Legion War Supplies (around spiders)
								["questID"] = 48391,
								["coords"] = {
									{ 63.1, 57.5, ANTORAN_WASTES },
									{ 65.1, 55.1, ANTORAN_WASTES },
									{ 71.1, 54.5, ANTORAN_WASTES },
									{ 68.0, 50.7, ANTORAN_WASTES },
									{ 66.6, 46.7, ANTORAN_WASTES },
									{ 65.3, 49.6, ANTORAN_WASTES },
								},
							}),
							o(273538, {	-- Legion War Supplies (around Varga cave)
								["questID"] = 48389,
								["coords"] = {
									{ 65.2, 51.6, ANTORAN_WASTES },
									{ 64.2, 47.5, ANTORAN_WASTES },
									{ 62.9, 50.0, ANTORAN_WASTES },
									{ 65.5, 40.9, ANTORAN_WASTES },
									{ 64.2, 42.3, ANTORAN_WASTES },
									{ 62.1, 45.8, ANTORAN_WASTES },
									{ 60.5, 46.9, ANTORAN_WASTES },
									{ 58.7, 43.3, ANTORAN_WASTES },
									{ 60.6, 40.9, ANTORAN_WASTES },
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
			m(ANTORAN_WASTES, {
				n(TREASURES, {
					q(48613),	-- clearing the rubble in front of "Eredar Treasure Cache" (object id: 276223)
					q(48742),	-- clearing the rubble in front of "Students Surprising Surplus" (object id: 276225)
					q(48746),	-- clearing the rubble in front of "Void Tinged Chest" (object id: 276226)
					q(48741),	-- clearing the rubble in front of "Chest of Ill-Gotten Gains" (object: 276224)
				}),
			}),
		}),
	}),
})));
