---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(ARCANTINA, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_X_LAUNCH } }, {
	["icon"] = [[~_.asset("Arcantina")]],
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(61083),	-- Highly Decorated
			ach(61082),	-- Old Soldiers
			ach(61081),	-- Share a Drink
		}),
		n(QUESTS, {	-- TODO: same source for all, which unlock arcantina?
			q(92319, {	-- A Favor to Axe
				["provider"] = { "n", 250415 },	-- Danath Trollbane
				["coord"] = { 46.4, 56.8, ARCANTINA },
				["groups"] = {
					i(253542),	-- Scarred Orcish Spear (DECOR!)
					o(579193, {	--
						i(254283),	-- Rusty Axe (QI!)
					}),
				},
			}),
			q(92321, {	-- A Frostbitten Tally
				["provider"] = { "n", 250402 },	-- Gidwin Goldbraids
				["coord"] = { 43.1, 64.3, ARCANTINA },
				["groups"] = {
					i(253598),	-- Banner of the Ebon Blade (DECOR!)
					o(614636, {	--
						i(260227),	-- Frostbitten Tabard (QI!)
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
						i(250882),	-- Clefthoof Hide (QI!)
					}),
					o(572038, {
						i(250881),	-- Dried Roses (QI!)
					}),
				},
			}),
			q(92325, {	-- Crumbling Legacy
				["provider"] = { "n", 250409 },	-- Gamon
				["coord"] = { 72.6, 57.6, ARCANTINA },
				["groups"] = {
					i(253544),	-- Weathered History of the Warchiefs (DECOR!)
					i(262911, {	-- 	-- Tombstone Piece (QI!)
						["providers"] = {
							{ "o", 617246 },	--
							{ "o", 617247 },	--
							{ "o", 617232 },	--
							{ "o", 617245 },	--
						},
					}),
					o(572035, {
						i(250878),	-- Weathered Tome (QI!)
					}),
				},
			}),
			q(92320, {	-- Still Behind Enemy Portals
				["provider"] = { "n", 250401 },	-- Marius Felbane
				["coord"] = { 55.8, 63.9, ARCANTINA },
				["groups"] = {
					i(253178),	-- Inactive Filigree Moon Lamp (DECOR!)
					o(613535, {	--
						i(250874),	-- Corrupted Lantern (QI!)
					}),
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
				["provider"] = { "n", 107968 },	-- Archmage Lan'dalock
				["coord"] = { 30.0, 19.3, ARCANTINA },
				["groups"] = {
					i(253176),	-- Ancient Zandalari Ritual Scroll (DECOR!)
					i(255685),	-- Lan'dalock's Pocket Watch (QI!)
					o(572032, {	--
						i(250875),	-- Ancient Zandalari Scroll (QI!)
					}),
				},
			}),
			q(92324, {	-- Uncrowned's Cold Case
				["provider"] = { "n", 250408 },	-- Kelsey Steelspark
				["coord"] = { 78.7, 60.0, ARCANTINA },
				["groups"] = {
					i(253177),	-- Pylon Fragment (DECOR!)
					o(584750, {	--
						i(255681),	-- Lost Page from Nostro's Compendium (QI!)
					}),
				},
			}),
			q(92323, {	-- Where the Fire Once Burned
				["provider"] = { "n", 250405 },	-- Thisalee Crow
				["coord"] = { 76.4, 39.4, ARCANTINA },
				["groups"] = {
					i(253175),	-- Hyjal Climbing Vine (DECOR!)
					o(617884, {	--
						i(263872),	-- Lucifern (QI!)
					}),
				},
			}),
		}),
		n(TREASURES, sharedData({["isDaily"] = true,}, {
			o(571494, {	-- Giant Growth Potion
				["coord"] = { 44.9, 60.5, ARCANTINA },
				["questID"] = 92349,
			}),
			o(571554, {	-- Giant Growth Potion
				["coord"] = { 29.1, 39.5, ARCANTINA },
				["questID"] = 92350,
			}),
			o(571555, {	-- Giant Growth Potion
				["coord"] = { 18.4, 44.1, ARCANTINA },
				["questID"] = 92351,
			}),
			o(571493, {	-- Inky Black Potion
				["coord"] = { 60.9, 58.2, ARCANTINA },
				["questID"] = 92352,
			}),
			o(571556, {	-- Inky Black Potion
				["coord"] = { 39.7, 81.3, ARCANTINA },
				["questID"] = 92353,
			}),
			o(571557, {	-- Inky Black Potion
				["coord"] = { 37.1, 54.9, ARCANTINA },
				["questID"] = 92354,
			}),
			o(571496, {	-- Pygmy Oil
				["coord"] = { 61.8, 51.1, ARCANTINA },
				["questID"] = 92355,
			}),
			o(571558, {	-- Pygmy Oil
				["coord"] = { 34.3, 13.5, ARCANTINA },
				["questID"] = 92356,
			}),
			o(571559, {	-- Pygmy Oil
				["coord"] = { 74.7, 61.9, ARCANTINA },
				["questID"] = 92357,
			}),
			o(571497, {	-- Reflecting Prism
				["coord"] = { 54.5, 44.6, ARCANTINA },
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
				["coord"] = { 67.9, 52.2, ARCANTINA },
				["questID"] = 92363,
			}),
		})),
		n(VENDORS, {
			n(250495, {	-- Bartender Bob
				["coord"] = { 62.4, 66.9, ARCANTINA },
				["groups"] = {
					i(2460),	-- Elixir of Tongues
					i(251039),	-- Toasting Brew
				},
			}),
			n(252873, {	-- Morta Gage <Decor Specialist>
				["coord"] = { 42.0, 50.1, ARCANTINA },
				["groups"] = {
					i(253176, {	-- Ancient Zandalari Ritual Scroll
						["cost"] = {{"c", 3316, 750}},
					}),
					i(253598, {	-- Banner of the Ebon Blade
						["cost"] = {{"c", 3316, 8000}},
					}),
					i(253543, {	-- Clefthoof Hide Rug
						["cost"] = {{"c", 3316, 750}},
					}),
					i(253174, {	-- Dried Gilnean Roses
						["cost"] = {{"c", 3316, 750}},
					}),
					i(253175, {	-- Hyjal Climbing Vine
						["cost"] = {{"c", 3316, 2500}},
					}),
					i(253178, {	-- Inactive Filigree Moon Lamp
						["cost"] = {{"c", 3316, 750}},
					}),
					i(253179, {	-- Ornamental Proudmoore Anchor
						["cost"] = {{"c", 3316, 2500}},
					}),
					i(253177, {	-- Pylon Fragment
						["cost"] = {{"c", 3316, 2500}},
					}),
					i(253700, {	-- Sandy Vulpera Banner
						["cost"] = {{"c", 3316, 2500}},
					}),
					i(253542, {	-- Scarred Orcish Spear
						["cost"] = {{"c", 3316, 750}},
					}),
					i(253544, {	-- Weathered History of the Warchiefs
						["cost"] = {{"c", 3316, 750}},
					}),
				},
			}),
		}),
		q(92325, {	-- Crumbling Legacy
			["provider"] = { "n", 250409 },	-- Gamon
			["coord"] = { 72.6, 57.6, ARCANTINA },
			["groups"] = {
				i(253544),	-- Weathered History of the Warchiefs (DECOR!)
				i(262911, {	-- 	-- Tombstone Piece (QI!)
					["providers"] = {
						{ "o", 617246 },	--
						{ "o", 617247 },	--
						{ "o", 617232 },	--
						{ "o", 617245 },	--
					},
				}),
				o(572035, {
					i(250878),	-- Weathered Tome (QI!)
				}),
			},
		}),
		q(92320, {	-- Still Behind Enemy Portals
			["provider"] = { "n", 250401 },	-- Marius Felbane
			["coord"] = { 55.8, 63.9, ARCANTINA },
			["groups"] = {
				i(253178),	-- Inactive Filigree Moon Lamp (DECOR!)
				o(613535, {	--
					i(250874),	-- Corrupted Lantern (QI!)
				}),
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
			["provider"] = { "n", 107968 },	-- Archmage Lan'dalock
			["coord"] = { 30.0, 19.3, ARCANTINA },
			["groups"] = {
				i(253176),	-- Ancient Zandalari Ritual Scroll (DECOR!)
				i(255685),	-- Lan'dalock's Pocket Watch (QI!)
				o(572032, {	--
					i(250875),	-- Ancient Zandalari Scroll (QI!)
				}),
			},
		}),
		q(92324, {	-- Uncrowned's Cold Case
			["provider"] = { "n", 250408 },	-- Kelsey Steelspark
			["coord"] = { 78.7, 60.0, ARCANTINA },
			["groups"] = {
				i(253177),	-- Pylon Fragment (DECOR!)
				o(584750, {	--
					i(255681),	-- Lost Page from Nostro's Compendium (QI!)
				}),
			},
		}),
		q(92323, {	-- Where the Fire Once Burned
			["provider"] = { "n", 250405 },	-- Thisalee Crow
			["coord"] = { 76.4, 39.4, ARCANTINA },
			["groups"] = {
				i(253175),	-- Hyjal Climbing Vine (DECOR!)
				o(617884, {	--
					i(263872),	-- Lucifern (QI!)
				}),
			},
		}),
		n(TREASURES, sharedData({["isDaily"] = true,}, {
			o(571494, {	-- Giant Growth Potion
				["coord"] = { 44.9, 60.5, ARCANTINA },
				["questID"] = 92349,
			}),
			o(571554, {	-- Giant Growth Potion
				["coord"] = { 29.1, 39.5, ARCANTINA },
				["questID"] = 92350,
			}),
			o(571555, {	-- Giant Growth Potion
				["coord"] = { 18.4, 44.1, ARCANTINA },
				["questID"] = 92351,
			}),
			o(571493, {	-- Inky Black Potion
				["coord"] = { 60.9, 58.2, ARCANTINA },
				["questID"] = 92352,
			}),
			o(571556, {	-- Inky Black Potion
				["coord"] = { 39.7, 81.3, ARCANTINA },
				["questID"] = 92353,
			}),
			o(571557, {	-- Inky Black Potion
				["coord"] = { 37.1, 54.9, ARCANTINA },
				["questID"] = 92354,
			}),
			o(571496, {	-- Pygmy Oil
				["coord"] = { 61.8, 51.1, ARCANTINA },
				["questID"] = 92355,
			}),
			o(571558, {	-- Pygmy Oil
				["coord"] = { 34.3, 13.5, ARCANTINA },
				["questID"] = 92356,
			}),
			o(571559, {	-- Pygmy Oil
				["coord"] = { 74.7, 61.9, ARCANTINA },
				["questID"] = 92357,
			}),
			o(571497, {	-- Reflecting Prism
				["coord"] = { 54.5, 44.6, ARCANTINA },
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
				["coord"] = { 67.9, 52.2, ARCANTINA },
				["questID"] = 92363,
			}),
		})),
		n(VENDORS, {
			n(250495, {	-- Bartender Bob
				["coord"] = { 62.4, 66.9, ARCANTINA },
				["groups"] = {
					i(2460),	-- Elixir of Tongues
					i(251039),	-- Toasting Brew
				},
			}),
			n(252873, {	-- Morta Gage <Decor Specialist>
				["coord"] = { 42.0, 50.1, ARCANTINA },
				["groups"] = {
					i(253176, {	-- Ancient Zandalari Ritual Scroll (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
					i(253598, {	-- Banner of the Ebon Blade (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 8000}},
					}),
					i(253543, {	-- Clefthoof Hide Rug (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
					i(253174, {	-- Dried Gilnean Roses (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
					i(253175, {	-- Hyjal Climbing Vine (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 2500}},
					}),
					i(253178, {	-- Inactive Filigree Moon Lamp (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
					i(253179, {	-- Ornamental Proudmoore Anchor (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 2500}},
					}),
					i(253177, {	-- Pylon Fragment (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 2500}},
					}),
					i(253700, {	-- Sandy Vulpera Banner (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 2500}},
					}),
					i(253542, {	-- Scarred Orcish Spear (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
					i(253544, {	-- Weathered History of the Warchiefs (DECOR!)
						["cost"] = {{"c", VOIDLIGHT_MARL, 750}},
					}),
				},
			}),
		}),
	},
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(ARCANTINA, {
		["icon"] = [[~_.asset("Arcantina")]],
		["groups"] = {
			n(QUESTS, {
				--Probably worth to redo into hqt or under treasure, idk?
				q(92378),	-- Ancient Zandalari Scroll (itemID 250875) was placed in Arcantina @ 25.8, 43.4
				q(92385),	-- Clefthoof Hide] (itemID 250882) was placed in Arcantina @ 37.2, 53.0
				q(92381),	-- Weathered Tome (itemID 250878) was placed in Arcantina @ 62.3, 43.3
				q(92384),	-- Dried Roses (itemID 250881) was placed in Arcantina @ 41.7, 48.1
			}),
		},
	}),
}));
