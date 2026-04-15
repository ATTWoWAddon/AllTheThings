---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(ARCANTINA, {
	["icon"] = [[~_.asset("Arcantina")]],
	["timeline"] = { ADDED_12_0_1_LAUNCH },
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(61083),	-- Highly Decorated
			ach(61082),	-- Old Soldiers
			ach(61081, {	-- Share a Drink
				["cost"] = { { "i", 251039, 26 } },	-- 26x Toasting Brew
			}),
		}),
		n(QUESTS, {	-- TODO: same source for all, ["sourceQuests"] = { 86903 },	-- The Arcantina
			q(92319, {	-- A Favor to Axe
				["provider"] = { "n", 250415 },	-- Danath Trollbane
				["coord"] = { 46.3, 56.7, ARCANTINA },
				["groups"] = {
					i(253542),	-- Scarred Orcish Spear (DECOR!)
					o(579193, {	-- Rusty Axe
						i(254283),	-- Rusty Axe (QI!)
					}),
					o(572029, {	-- Scarred Spear
						["questID"] = 92375,
						["groups"] = { i(250872) },	-- Scarred Spear
					}),
				},
			}),
			q(92321, {	-- A Frostbitten Tally
				["provider"] = { "n", 250402 },	-- Gidwin Goldbraids
				["coords"] = {
					{ 37.7, 53.6, ARCANTINA },
					{ 39.0, 55.1, ARCANTINA },
					{ 43.1, 64.3, ARCANTINA },
				},
				["groups"] = {
					i(253598),	-- Banner of the Ebon Blade (DECOR!)
					o(614636, {	-- Frostbitten Tabard
						i(260227),	-- Frostbitten Tabard (QI!)
					}),
					o(572030, {	-- Ebon Banner
						["questID"] = 92376,
						["groups"] = { i(250873) },	-- Ebon Banner
					}),
				},
			}),
			q(92327, {	-- A Generational Moment
				["provider"] = { "n", 250413 },	-- Lord Darius Crowley
				["coord"] = { 48.5, 71.4, ARCANTINA },
				["groups"] = {
					i(253174),	-- Dried Gilnean Roses (DECOR!)
					i(253543),	-- Clefthoof Hide Rug (DECOR!)
					o(572039, {
						["questID"] = 92385,
						["groups"] = {
							i(250882, {	-- Clefthoof Hide (QI!)
								["coord"] = { 37.2, 53.0, ARCANTINA },
							}),
						},
					}),
					o(572038, {
						["questID"] = 92384,
						["groups"] = {
							i(250881, {	-- Dried Roses (QI!)
								["coord"] = { 41.7, 48.1, ARCANTINA },
							}),
						},
					}),
				},
			}),
			q(92325, {	-- Crumbling Legacy
				["provider"] = { "n", 250410 },	-- Gorgonna
				["coord"] = { 68.2, 58.5, ARCANTINA },
				["groups"] = {
					o(617232, {	-- Forgotten Practice Equipment
						["coord"] = { 53.1, 33.5, NAGRAND },
						["groups"] = { i(262911) },	-- Practice Axe (QI!)
					}),
					o(572035, {	-- Weathered Tome
						["coord"] = { 56.3, 34.3, NAGRAND },
						["groups"] = { i(250878) },	-- Weathered Tome (QI!)
					}),
					--
					i(253544),	-- Weathered History of the Warchiefs (DECOR!)
				},
			}),
			q(92320, {	-- Still Behind Enemy Portals
				["provider"] = { "n", 250401 },	-- Marius Felbane
				["coord"] = { 59.0, 78.0, ARCANTINA },
				["maps"] = { 2558 },	-- Derelict Legion Vessel
				["groups"] = {
					o(613535, {	-- Dark Evil Corrupted Chest of Tormented Darkness
						["coords"] = {
							{ 49.9, 53.7, 2557 },	-- Derelict Legion Vessel
							{ 50.1, 53.8, BROKEN_SHORE },
						},
						["questID"] = 92377,
						["groups"] = { i(250874) },	-- Corrupted Lantern (QI!)
					}),
					i(253178),	-- Inactive Filigree Moon Lamp (DECOR!)
				},
			}),
			q(92326, {	-- The Fragrance of the Dunes
				["provider"] = { "n", 250411 },	-- Nisha
				["coord"] = { 45.0, 81.4, ARCANTINA },
				["groups"] = {
					i(253179),	-- Ornamental Proudmoore Anchor (DECOR!)
					i(253700),	-- Sandy Vulpera Banner (DECOR!)
					i(257758),	-- Empty Pouch (QI!)
					i(257757),	-- Sack of Fragrant Sands (QI!)
					o(607115, {	--
						i(257756),	-- Handful of Sand (QI!)
					}),
				},
			}),
			q(92322, {	-- Timear Foresees a Proof of Demise!
				["provider"] = { "n", 264499 },	-- Archmage Lan'dalock
				["coord"] = { 30.0, 19.3, ARCANTINA },
				["groups"] = {
					i(253176),	-- Ancient Zandalari Ritual Scroll (DECOR!)
					i(255685),	-- Lan'dalock's Pocket Watch (QI!)
					o(572032, {	--
						["questID"] = 92378,
						["groups"] = {
							i(250875, {	-- Ancient Zandalari Scroll (QI!)
								["coord"] = { 25.8, 43.4, ARCANTINA },
							}),
						},
					}),
				},
			}),
			q(92324, {	-- Uncrowned's Cold Case
				["provider"] = { "n", 250408 },	-- Kelsey Steelspark
				["coord"] = { 78.7, 60.0, ARCANTINA },
				["groups"] = {
					o(584750, {	-- Lost Page from Nostro's Compendium
						i(255681),	-- Lost Page from Nostro's Compendium (QI!)
					}),
					o(572034, {	-- Pylon Fragment
						i(250877),	-- Pylon Fragment
					}),
					--
					i(253177),	-- Pylon Fragment (DECOR!)
				},
			}),
			q(92323, {	-- Where the Fire Once Burned
				["provider"] = { "n", 250405 },	-- Thisalee Crow
				["coord"] = { 76.4, 39.4, ARCANTINA },
				["groups"] = {
					o(617884, {	-- Lucifern
						i(263872),	-- Lucifern (QI!)
					}),
					--
					i(250876),	-- Evergreen Vine
					i(253175),	-- Hyjal Climbing Vine (DECOR!)
				},
			}),
			q(90718, {	-- Request of the Arcantina
				["sourceQuests"] = { 92520 },	-- Wake of the Darkwell
				["qg"] = 240265,	-- Chief Telemancer Oculeth
				["coord"] = { 47.4, 69.6, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = { i(260165) },	-- Request for Reagents (PQI!)
			}),
			-- Unsorted, these are part of the highly decorated achievement, need to be fitted into the rest of the structure of this file. Do not put them in HQT or you will get parser warnings.
			hqt(92380),	-- Defense Fragment
			hqt(92379, name(HEADERS.Item, 250876, {	-- Evergreen Vine
				["cost"] = { { "i", 250876, 1 } },	-- Evergreen Vine
			})),
			hqt(92382, name(HEADERS.Item, 250879, {	-- Heavy Anchor
				i(250879),	-- Heavy Anchor
			})),
			hqt(92383, name(HEADERS.Item, 250880, {	-- Sandy Tapestry
				i(250880),	-- Sandy Tapestry
			})),
		}),
		n(TREASURES, sharedData({["isDaily"] = true,}, {
			o(571494, {	-- Giant Growth Potion
				["coord"] = { 44.9, 60.5, ARCANTINA },
				["questID"] = 92349,
			}),
			o(571554, {	-- Giant Growth Potion
				["coord"] = { 30.6, 43.8, ARCANTINA },
				["questID"] = 92350,
			}),
			o(571555, {	-- Giant Growth Potion
				["coord"] = { 20.0, 44.2, ARCANTINA },
				["questID"] = 92351,
			}),
			o(614767, {	-- Giant Growth Potion
				["coord"] = { 46.7, 61.5, ARCANTINA },
			}),
			o(571493, {	-- Inky Black Potion
				["coord"] = { 60.9, 58.2, ARCANTINA },
				["questID"] = 92352,
			}),
			o(571556, {	-- Inky Black Potion
				["coord"] = { 40.4, 78.5, ARCANTINA },
				["questID"] = 92353,
			}),
			o(571557, {	-- Inky Black Potion
				["coord"] = { 37.1, 54.9, ARCANTINA },
				["questID"] = 92354,
			}),
			o(627841, {	-- Inky Black Potion
				["coord"] = { 60.5, 59.6, ARCANTINA },
			}),
			o(614789, {	-- Inky Black Potion
				["coord"] = { 59.8, 60.1, ARCANTINA },
			}),
			o(571496, {	-- Pygmy Oil
				["coord"] = { 59.4, 51.8, ARCANTINA },
				["questID"] = 92355,
			}),
			o(571558, {	-- Pygmy Oil
				["coord"] = { 33.1, 18.1, ARCANTINA },
				["questID"] = 92356,
			}),
			o(571559, {	-- Pygmy Oil
				["coord"] = { 73.0, 58.4, ARCANTINA },
				["questID"] = 92357,
			}),
			o(553966, {	-- Pygmy Oil
				["coord"] = { 33.7, 15.2, ARCANTINA },
			}),
			o(571497, {	-- Reflecting Prism
				["coord"] = { 55.6, 46.4, ARCANTINA },
				["questID"] = 92358,
			}),
			o(571560, {	-- Reflecting Prism
				["coord"] = { 42.4, 43.3, ARCANTINA },
				["questID"] = 92359,
			}),
			o(571561, {	-- Reflecting Prism
				["coord"] = { 78.6, 45.9, ARCANTINA },
				["questID"] = 92360,
			}),
			o(571495, {	-- Savory Deviate Delight
				["coord"] = { 55.5, 71.7, ARCANTINA },
				["questID"] = 92361,
			}),
			o(571562, {	-- Savory Deviate Delight
				["coord"] = { 35.2, 29.8, ARCANTINA },
				["questID"] = 92362,
			}),
			o(571563, {	-- Savory Deviate Delight
				["coord"] = { 69.9, 52.6, ARCANTINA },
				["questID"] = 92363,
			}),
			o(614803, {	-- Savory Deviate Delight
				["coord"] = { 34.0, 28.3, ARCANTINA },
			}),
			o(614821, {	-- Savory Deviate Delight
				["coord"] = { 69.4, 52.2, ARCANTINA },
			}),
		})),
		n(VENDORS, {
			n(229333, {	-- Ari
				--["coord"] = { 42.0, 50.1, ARCANTINA },
				["groups"] = {
					i(234526),	-- Archivist's Codex
					i(267650),	-- Blood Knight Training Manual
					i(267628),	-- Historian's Tome
					i(234527),	-- Sacredite's Ledger
					i(267652),	-- Silver Hand Squire's Libram
				},
			}),
			n(250495, {	-- Bartender Bob
				["coord"] = { 62.4, 66.9, ARCANTINA },
				["groups"] = {
					i(267624),	-- Bamboo Tray
					i(268110),	-- Cheese Tray
					i(267627),	-- Decorative Tavern Cheese
					i(2460),	-- Elixir of Tongues
					i(268025),	-- Heavy Stein
					i(267615),	-- Imperial Mug
					i(268115),	-- Overbaked Donut
					i(268053),	-- Rugged Cup
					i(267618),	-- Rusty Receptacle
					i(267486),	-- Simple Cup
					i(267619),	-- Sipping Glass
					i(267617),	-- Sophisticated Goblet
					i(267626),	-- Stale Tavern Bread
					i(267379),	-- Tavern Mug
					i(251039),	-- Toasting Brew
				},
			}),
			n(259849, {	-- Janky <Candle Merchant>
				--["coord"] = { 42.0, 50.1, ARCANTINA },
				["groups"] = {
					i(268112),	-- Argunite Beacon
					i(268111),	-- Arkonite Beacon
					i(268085),	-- Hand Torch
					i(216708);	-- Holy Candle
					i(267625),	-- Lit Candle
					i(267623),	-- Simple Torch
					i(268068),	-- Sturdy Torch
					i(268116),	-- Twin-Flame Holder
				},
			}),
			n(252873, {	-- Morta Gage <Decor Specialist>
				["coord"] = { 42.0, 50.1, ARCANTINA },
				["groups"] = {
					i(253176, {	-- Ancient Zandalari Ritual Scroll (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253598, {	-- Banner of the Ebon Blade (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 500 } },
					}),
					i(253543, {	-- Clefthoof Hide Rug (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253174, {	-- Dried Gilnean Roses (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253175, {	-- Hyjal Climbing Vine (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(253178, {	-- Inactive Filigree Moon Lamp (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253179, {	-- Ornamental Proudmoore Anchor (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(253177, {	-- Pylon Fragment (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(253700, {	-- Sandy Vulpera Banner (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 250 } },
					}),
					i(253542, {	-- Scarred Orcish Spear (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
					i(253544, {	-- Weathered History of the Warchiefs (DECOR!)
						["cost"] = { { "c", VOIDLIGHT_MARL, 150 } },
					}),
				},
			}),
		}),
	},
}))

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(ARCANTINA, {
		["icon"] = [[~_.asset("Arcantina")]],
		["timeline"] = { ADDED_12_0_1_LAUNCH },
		["groups"] = {
			n(QUESTS, {
				q(94976, name(HEADERS.Item, 250876)),	-- Evergreen Vine placement unlock
				q(92381, name(HEADERS.Item, 250878)),	-- Weathered Tome placement unlock
			}),
		},
	}),
}));
