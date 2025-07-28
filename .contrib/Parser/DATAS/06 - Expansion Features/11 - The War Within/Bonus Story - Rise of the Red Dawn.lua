---------------------------------------------------
--       	   EF       M O D U L E   		     --
---------------------------------------------------
root(ROOTS.ExpansionFeatures, expansion(EXPANSION.TWW, bubbleDown({ ["timeline"] = { ADDED_11_1_7 } }, {
	n(QUESTS, {
		header(HEADERS.Achievement, 41820, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_7 } }, {	-- Rise of the Red Dawn
			q(91039, {	-- Faerin's Request
				["isBreadcrumb"] = true,
			}),
			q(84638, {	-- Trouble in the Highlands
				["provider"] = { "n", 223875 },	-- Faerin Lothar
				["sourceQuests"] = { 91039 },	-- Faerin's Request
				["coord"] = { 46.0, 49.6, DORNOGAL },
			}),
			q(84658, {	-- Finding Family
				["provider"] = { "n", 231748 },	-- Maggie Wiltshire
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				["coord"] = { 20.5, 39.6, 2372 },	-- Is it like 3rd version of Arathi?
				["groups"] = {
					o(474102, {	-- Ellie
						["coord"] = { 14.2, 41.9, 2372 },	-- Arathi Highlands
						["groups"] = { i(230000) },	-- Ellie (QI!)
					}),
				},
			}),
			q(84639, {	-- Torches and Tar
				["provider"] = { "n", 230174 },	-- Walker Gresham
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				["coord"] = { 20.5, 39.3, 2372 },	-- Arathi Highlands
				["groups"] = {
					o(474113, {	-- Barrel of Tar
						["coords"] = {
							{ 15.0, 42.7, 2372 },	-- Arathi Highlands
							{ 17.0, 40.4, 2372 },	-- Arathi Highlands
							{ 17.4, 41.1, 2372 },	-- Arathi Highlands
						},
						["groups"] = { i(229094) },	-- Barrel of Tar (QI!)
					}),
					o(503465, {	-- Barrels of Tar
						["coords"] = {
							{ 14.7, 41.0, 2372 },	-- Arathi Highlands
							{ 16.2, 39.9, 2372 },	-- Arathi Highlands
							{ 16.6, 42.2, 2372 },	-- Arathi Highlands
						},
						["groups"] = { i(229094) },	-- Barrel of Tar (QI!)
					}),
					i(229095),	-- Stolen Torches (QI!)
				},
			}),
			q(84640, {	-- Emblematic of Things to Come
				["provider"] = { "i", 228963 },	-- Unfamiliar Emblem
				["sourceQuests"] = { 84638 },	-- Trouble in the Highlands
				--["coord"] = { 18.3, 40.1, 2372 },
			}),
			q(84641, {	-- Ill Tidings
				["provider"] = { "n", 234662 },	-- Danath Trollbane
				["sourceQuests"] = {
					84640,	-- Emblematic of Things to Come
					84658,	-- Finding Family
					84639,	-- Torches and Tar
				},
				["coord"] = { 20.4, 39.2, 2372 },
			}),
			q(84643, {	-- Curfew Kerfuffle
				["provider"] = { "n", 235041 },	-- Captain Roderick Brewston
				["sourceQuests"] = { 84641 },	-- Ill Tidings
				["coord"] = { 19.3, 56.3, 2372 },
			}),
			q(84645, {	-- Deputy Delivery
				["provider"] = { "n", 235041 },	-- Captain Roderick Brewston
				["sourceQuests"] = { 84641 },	-- Ill Tidings
				["coord"] = { 19.3, 56.3, 2372 },
			}),
			q(84649, {	-- Marran Trollbane
				["provider"] = { "n", 229940 },	-- Colonel Veronice Nials
				["sourceQuests"] = {
					84643,	-- Curfew Kerfuffle
					84645,	-- Deputy Delivery
				},
				["coord"] = { 17.5, 59.5, 2372 },
			}),
			hqt(91524, {	-- Stay awhile and listen: Captaion Roderick Brewston
				["name"] = "Stay awhile and listen: Captaion Roderick Brewston",
				["sourceQuests"] = { 84649 },	-- Marran Trollbane
				["provider"] = { "n", 229951 },	-- Captaion Roderick Brewston
				["coord"] = { 17.4, 59.5, 2372 },
				["lockCriteria"] = { 1, "questID", 84650 },	-- Finding Refuge at Refuge Pointe
			}),
			q(84650, {	-- Finding Refuge at Refuge Pointe
				["provider"] = { "n", 229940 },	-- Colonel Veronice Nials
				["sourceQuests"] = { 84649 },	-- Marran Trollbane
				["coord"] = { 17.5, 59.5, 2372 },
				["groups"] = {
					i(235345),	-- Familiar Emblem (QI!)
				},
			}),
			q(84651, {	-- A Familiar Face
				["provider"] = { "n", 236815 },	-- Karge Bloodfury
				["sourceQuests"] = { 84650 },	-- Finding Refuge at Refuge Pointe
				["coord"] = { 40.9, 53.5, 2372 },
			}),
			q(84652, {	-- Supply Run
				["provider"] = { "n", 236815 },	-- Karge Bloodfury
				["sourceQuests"] = { 84650 },	-- Finding Refuge at Refuge Pointe
				["coord"] = { 40.9, 53.5, 2372 },
			}),
			hqt(91532, {	-- Stay awhile and listen: Faerin Lothar
				["name"] = "Stay awhile and listen: Faerin Lothar",
				["sourceQuests"] = {
					84651,	-- A Familiar Face
					84652,	-- Supply Run
				},
				["provider"] = { "n", 230815 },	-- Faerin Lothar
				["coord"] = { 40.8, 53.5, 2372 },
				["lockCriteria"] = { 1, "questID", 84656 },	-- Onward to Hammerfall (assumed)
			}),
			q(84656, {	-- Onward to Hammerfall
				["provider"] = { "n", 230815 },	-- Faerin Lothar
				["sourceQuests"] = {
					84651,	-- A Familiar Face
					84652,	-- Supply Run
				},
				["coord"] = { 40.8, 53.5, 2372 },
			}),
			q(84704, {	-- A Different Point of View
				["provider"] = { "n", 230145 },	-- Eitrigg
				["sourceQuests"] = { 84656 },	-- Onward to Hammerfall
				["coord"] = { 69.7, 39.2, 2372 },
			}),
			hqt(91534, {	-- Stay awhile and listen: Eitrigg
				["name"] = "Stay awhile and listen: Eitrigg",
				["sourceQuests"] = { 84704 },	-- A Different Point of View (TODO: but probably only during 84704?)
				["provider"] = { "n", 231759 },	-- Eitrigg
				["coord"] = { 69.6, 32.8, 2372 },
				["lockCriteria"] = { 1, "questID", 84707 },	-- To See a Troll (assumed)
			}),
			q(84707, {	-- To See a Troll
				["provider"] = { "n", 231764 },	-- Faerin Lothar
				["sourceQuests"] = { 84704 },	-- A Different Point of View
				["coord"] = { 69.5, 32.8, 2372 },
			}),
			q(84706, {	-- Crime Family
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["sourceQuests"] = { 84707 },	-- To See a Troll
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(84705, {	-- Withering the Witherbark
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["sourceQuests"] = { 84707 },	-- To See a Troll
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(84708, {	-- The Syndicate Strikes Back
				["provider"] = { "n", 230151 },	-- Overlord Geya'rah
				["sourceQuests"] = {
					84706,	-- Crime Family
					84705,	-- Withering the Witherbark
				},
				["coord"] = { 54.4, 63.2, 2372 },
			}),
			q(85451, {	-- The Burning of Hammerfall
				["provider"] = { "n", 231768 },	-- Overlord Geya'rah
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["coord"] = { 69.6, 41.0, 2372 },
			}),
			q(84709, {	-- Hammerfall Down
				["provider"] = { "n", 231770 },	-- Eitrigg
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["coord"] = { 69.7, 40.9, 2372 },
			}),
			q(84710, {	-- Once Bitten Twice Shy
				["provider"] = { "n", 231771 },	-- Faerin Lothar
				["sourceQuests"] = { 84708 },	-- The Syndicate Strikes Back
				["coord"] = { 69.8, 41.0, 2372 },
			}),
			q(84711, {	-- Danath's Disappearance
				["provider"] = { "n", 231803 },	-- Overlord Geya'rah
				["sourceQuests"] = {
					84709,	-- Hammerfall Down
					84710,	-- Once Bitten Twice Shy
					85451,	-- The Burning of Hammerfall
				},
				["coord"] = { 68.4, 30.6, 2372 },
			}),
			q(84712, {	-- False Flag
				["provider"] = { "n", 231829 },	-- Overlord Geya'rah
				["sourceQuests"] = { 84711 },	-- Danath's Disappearance
				["coord"] = { 41.5, 61.6, 2372 },
				["groups"] = {
					o(477883, {	-- Orcish Axe
						["coord"] = { 42.1, 61.3, 2372 },
					}),
					o(477880, {	-- Suspicious Dirt
						["coord"] = { 40.9, 61.4, 2372 },
					}),
				},
			}),
			q(84657, {	-- Return to Stromgarde // ALLIANCE_ONLY
				["provider"] = { "n", 231828 },	-- Faering Lothar
				["sourceQuests"] = { 84712 },	-- False Flag
				["coord"] = { 41.5, 61.4, 2372 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(87299, {	-- How Old Are These Things? // ALLIANCE_ONLY
				["provider"] = { "n", 238012 },	-- Captain Roderick Brewston
				["sourceQuests"] = { 84657 },	-- Return to Stromgarde
				["coord"] = { 17.7, 60.3, 2372 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(231878), -- Articles of Proof (QI!)
					i(231879), -- Defias Bandana (QI!)
					i(231880), -- Orange Bandana (QI!)
					i(231883), -- Scarlet Crusade Tabard (QI!)
					i(231884), -- Stromgarde Tabard (QI!)
					i(231881), -- Syndicate Emblem (QI!)
				},
			}),
			q(84659, {	-- The Search for Faerin // ALLIANCE_ONLY
				["provider"] = { "n", 238012 },	-- Captain Roderick Brewston
				["sourceQuests"] = { 84657 },	-- Return to Stromgarde
				["coord"] = { 17.7, 60.3, 2372 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					o(516416, {	-- Red Dawn Propaganda
						["coord"] = { 15.2, 62.0, 2372 },
					}),
					o(516414, {	-- Red Dawn Oaths of Loyalty
						["coord"] = { 14.5, 65.0, 2372 },
					}),
					o(516417, {	-- Red Dawn Propaganda
						["coord"] = { 16.4, 68.8, 2372 },
					}),
					o(516415, {	-- Red Dawn Propaganda
						["coord"] = { 14.2, 69.3, 2372 },
					}),
				},
			}),
			q(84713, {	-- Fallen Fortress // HORDE_ONLY
				["provider"] = { "n", 231826 },	-- Eitrigg
				["sourceQuests"] = { 84712 },	-- False Flag
				["coord"] = { 41.5, 61.4, 2372 },
				["races"] = HORDE_ONLY,
			}),
			q(84715, {	-- The Search for Danath // HORDE_ONLY
				["provider"] = { "n", 231832 },	-- Eitrigg
				["sourceQuests"] = { 84713 },	-- Fallen Fortress
				["coord"] = { 27.8, 25.6, 2372 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					o(478203, {	-- Barracks Prison Key
						["coord"] = { 28.0, 34.1, 2372 },
					}),
					o(478195, {	-- Red Dawn Oaths of Loyalty
						["coord"] = { 27.4, 28.4, 2372 },
					}),
					o(478199, {	-- Red Dawn Propaganda
						["coord"] = { 29.0, 30.6, 2372 },
					}),
					o(478202, {	-- Red Dawn Propaganda
						["coord"] = { 25.1, 32.1, 2372 },
					}),
					o(478198, {	-- Red Dawn Propaganda
						["coord"] = { 25.5, 28.1, 2372 },
					}),
				},
			}),
			q(84714, {	-- From Ironforge With Love // HORDE_ONLY
				["provider"] = { "n", 231833 },	-- Overlord Geya'rah
				["sourceQuests"] = { 84713 },	-- Fallen Fortress
				["coord"] = { 27.9, 25.7, 2372 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(235999),	-- Bundle of Heavy Silk Bandages (QI!)
					i(236001),	-- Cans of Loch Frenzy (QI!)
					i(236000),	-- Pack of Heavy Armor Kits (QI!)
					i(235998),	-- Packages of Blood Sausage (QI!)
					i(235997),	-- Skins of Dwarven Stout (QI!)
					i(235996),	-- Stolen Ironforge Supplies (QI!)
				},
			}),
			q(84716, {	-- Returning to Stromgarde // HORDE_ONLY
				["provider"] = { "n", 230154 },	-- Danath Trollbane
				["sourceQuests"] = {
					84715,	-- The Search for Danath
					84714,	-- From Ironforge With Love
				},
				["coord"] = { 27.9, 34.3, 2372 },
				["races"] = HORDE_ONLY,
			}),
			q(84717, {	-- Rise of the Red Dawn
				["provider"] = { "n", 231837 },	-- Faering Lothar
				["sourceQuests"] = {
					84716,	-- Returning to Stromgarde
					--
					87299,	-- How Old Are These Things?
					84659,	-- The Search for Faerin
				},
				["sourceQuestNumRequired"] = 1,	-- TODO: for horde it is 1 quest (84716) but for alliance it is up after 2 (84659 & 87299)
				["coord"] = { 19.4, 59.1, 2372 },
				["groups"] = {
					h(i(239135)),	-- Hammerfall Tabard (COSMETIC!)
					a(i(239136)),	-- Stromgarde Tabard (COSMETIC!)
				},
			}),
			q(85529, {	-- Past Glory
				["provider"] = { "n", 232986 },	-- Danath Trollbane
				["sourceQuests"] = { 84717 },	-- Rise of the Red Dawn
				["coord"] = { 21.6, 65.0, 2372 },
				["groups"] = {
					i(239137),	-- Lamplighter's Pauldrons (COSMETIC!)
					a(ach(41818)),	-- Rise of the Red Dawn (A)
					h(ach(41820)),	-- Rise of the Red Dawn (H)
				},
			}),
		})),
	}),
})));