---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local DERBY_MARK = 3055;

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(HALLOWFALL, {
		header(HEADERS.Quest, 82778, {	-- Hallowfall Fishing Derby
			["description"] = "This event is available every Saturday.",
			["icon"] = 6012052,
			["requireSkill"] = FISHING,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(40539, {	-- The Derby Dash (automated)
						i(223286),	-- Kah, Legend of the Deep (MOUNT!)
					}),
				}),
				n(QUESTS, sharedData({
					["isWeekly"] = true,
				}, {
					q(82778, {	-- Hallowfall Fishing Derby
						["description"] = "Nibbling Minnow, Arathor Hammerfish, Queen's Lureback",
						["provider"] = { "n", 226846 },	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							currency(DERBY_MARK),
						},
					}),
					q(83529, {	-- Hallowfall Fishing Derby
						["description"] = "Bismuth Bitterling, Whispering Stargazer, Regal Dottyback",
						["provider"] = { "n", 226846 },	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							currency(DERBY_MARK),
						},
					}),
					q(83530, {	-- Hallowfall Fishing Derby
						["description"] = "Bloody Perch, Roaring Anglerseeker, Spiked Sea Raven",
						["provider"] = { "n", 226846 },	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							currency(DERBY_MARK),
						},
					}),
					q(83531, {	-- Hallowfall Fishing Derby
						["description"] = "Dilly-Dally Dace, Dornish Pike, Azj-Kahet Slum Shark",
						["provider"] = { "n", 226846 },	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							currency(DERBY_MARK),
						},
					}),
					q(83532, {	-- Hallowfall Fishing Derby
						["description"] = "Crystalline Sturgeon, Specular Rainbowfish, Sanguine Dogfish",
						["provider"] = { "n", 226846 },	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							currency(DERBY_MARK),
						},
					}),
				})),
				header(HEADERS.Quest, 82778, sharedData({	-- Hallowfall Fishing Derby
					["collectible"] = false,
					["isWeekly"] = true,
				}, {
					q(82928, {	-- Arathor Hammerfish
						["name"] = "Arathor Hammerfish Derby Bonus Mark",
					}),
					q(82936, {	-- Awoken Coelacanth
						["name"] = "Awoken Coelacanth Derby Bonus Mark",
					}),
					q(82920, {	-- Bismuth Bitterling
						["name"] = "Bismuth Bitterling Derby Bonus Mark",
					}),
					q(82918, {	-- Bloody Perch
						["name"] = "Bloody Perch Derby Bonus Mark",
					}),
					q(82919, {	-- Crystalline Sturgeon
						["name"] = "Crystalline Sturgeon Derby Bonus Mark",
					}),
					q(82935, {	-- Cursed Ghoulfish
						["name"] = "Cursed Ghoulfish Derby Bonus Mark",
					}),
					q(82947, {	-- Dilly-Dally Dace
						["name"] = "Dilly-Dally Dace Derby Bonus Mark",
					}),
					q(82926, {	-- Dornish Pike
						["name"] = "Dornish Pike Derby Bonus Mark",
					}),
					q(82923, {	-- Goldengill Trout
						["name"] = "Goldengill Trout Derby Bonus Mark",
					}),
					q(82930, {	-- Kaheti Slum Shark
						["name"] = "Kaheti Slum Shark Derby Bonus Mark",
					}),
					q(82921, {	-- Nibbling Minnow
						["name"] = "Nibbling Minnow Derby Bonus Mark",
					}),
					q(82931, {	-- Pale Huskfish
						["name"] = "Pale Huskfish Derby Bonus Mark",
					}),
					q(82934, {	-- Queen's Lurefish
						["name"] = "Queen's Lurefish Derby Bonus Mark",
					}),
					q(82925, {	-- Quiet River Bass
						["name"] = "Quiet River Bass Derby Bonus Mark",
					}),
					q(82929, {	-- Regal Dottyback
						["name"] = "Regal Dottyback Derby Bonus Mark",
					}),
					q(82927, {	-- Roaring Anglerseeker
						["name"] = "Roaring Anglerseeker Derby Bonus Mark",
					}),
					q(82932, {	-- Sanguine Dogfish
						["name"] = "Sanguine Dogfish Derby Bonus Mark",
					}),
					q(82924, {	-- Specular Rainbowfish
						["name"] = "Specular Rainbowfish Derby Bonus Mark",
					}),
					q(82933, {	-- Spiked Sea Raven
						["name"] = "Spiked Sea Raven Derby Bonus Mark",
					}),
					q(82922, {	-- Whispering Stargazer
						["name"] = "Whispering Stargazer Derby Bonus Mark",
					}),
				})),
				n(VENDORS, {
					n(226846, {	-- Captain Oathmyt
						["coord"] = { 44.2, 61.4, HALLOWFALL },
						["groups"] = {
							i(225770, {	-- Algari Anglerthread
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(225771, {	-- Algari Seekerthread
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(224727, {	-- Dasher's Trophy Fish
								["cost"] = { { "c", DERBY_MARK, 250 } },
							}),
							i(226376, {	-- Dasher's Violet Rucksack
								["cost"] = { { "c", DERBY_MARK, 50 } },
							}),
							iensemble(224717, {	-- Ensemble: Cerulean Dredger
								["cost"] = { { "c", DERBY_MARK, 500 } },
							}),
							i(225763, {	-- Fallen Dalaran Defender
								["cost"] = { { "c", DERBY_MARK, 50 } },
							}),
							i(217375, {	-- Frenzied Hat of the Crimson Seas
								["cost"] = { { "c", DERBY_MARK, 100 } },
							}),
							i(225758, {	-- Hallowfall Harvester's Pitchfork
								["cost"] = { { "c", DERBY_MARK, 50 } },
							}),
							i(226379, {	-- Keen-eye 'Noculars
								["cost"] = { { "c", DERBY_MARK, 50 } },
							}),
							i(226378, {	-- Mereldar Artisan's Shoulderbag
								["cost"] = { { "c", DERBY_MARK, 50 } },
							}),
							i(228422, {	-- Recipe: Ghoulfish Delight (RECIPE!)
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(228421, {	-- Recipe: Melted Candlebar (RECIPE!)
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(228423, {	-- Recipe: Pep-In-Your-Step (RECIPE!)
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(225892, {	-- Recipe: Rockslide Shake (RECIPE!)
								["cost"] = { { "c", DERBY_MARK, 10 } },
							}),
							i(224752, {	-- Soaked Journal Entry
								["cost"] = { { "c", DERBY_MARK, 5 } },
							}),
						},
					}),
				}),
			},
		}),
	}),
}));
