---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(NAZJATAR, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	n(TREASURES, {
		o_repeated({	-- Arcane Chest
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
			["groups"] = {
				-- Drops
				i(170198, {	-- Eternal Palace Dining Set (TOY!)
					["description"] = "Obtained from the 12th |cFFFFD700Arcane Chest|r you open.",
				}),
				i(168824, {	-- Ocean Simulator (TOY!)
					["description"] = "Obtained from looting all 20 |cFFFFD700Arcane Chests|r.",
				}),
				i(169215),	-- Silver Knife (A)
				i(169216),	-- Silver Knife (H)
				-- Objects
				o(326394, {	-- Arcane Chest
					["questID"] = 55954,
					["coord"] = { 34.5, 40.4, NAZJATAR },
				}),
				o(326402, {	-- Arcane Chest
					["questID"] = 55945,
					["coord"] = { 52.8, 49.8, NAZJATAR },
				}),
				o(326403, {	-- Arcane Chest
					["questID"] = 55949,
					["coord"] = { 49.6, 64.5, NAZJATAR },
				}),
				o(326404, {	-- Arcane Chest
					["questID"] = 55951,
					["coord"] = { 48.5, 87.4, NAZJATAR },
				}),
				o(326405, {	-- Arcane Chest
					["questID"] = 55938,
					["coord"] = { 85.3, 38.6, NAZJATAR },
				}),
				o(326406, {	-- Arcane Chest
					["questID"] = 55948,
					["coord"] = { 43.4, 58.2, NAZJATAR },
				}),
				o(326407, {	-- Arcane Chest
					["questID"] = 55957,
					["coord"] = { 37.9, 60.5, NAZJATAR },
				}),
				o(326408, {	-- Arcane Chest
					["questID"] = 55941,
					["coord"] = { 73.2, 35.8, NAZJATAR },
				}),
				o(326409, {	-- Arcane Chest
					["questID"] = 55942,
					["coord"] = { 79.5, 27.2, NAZJATAR },
				}),
				o(326410, {	-- Arcane Chest
					["questID"] = 55939,
					["coord"] = { 80.4, 29.8, NAZJATAR },
				}),
				o(326411, {	-- Arcane Chest
					["questID"] = 55947,
					["coord"] = { 44.7, 48.9, NAZJATAR },
				}),
				o(326412, {	-- Arcane Chest
					["questID"] = 55946,
					["coord"] = { 58.0, 35.0, NAZJATAR },
					["description"] = "In an underwater cave.",
				}),
				o(326413, {	-- Arcane Chest
					["questID"] = 55952,
					["coords"] = {
						{ 37.4, 42.8, NAZJATAR },	-- cave
						{ 34.6, 43.6, NAZJATAR },	-- treasure
					},
					["description"] = "At the back of a cave.",
				}),
				o(326414, {	-- Arcane Chest
					["questID"] = 55940,
					["coord"] = { 74.8, 53.2, NAZJATAR },
				}),
				o(326415, {	-- Arcane Chest
					["questID"] = 55953,
					["coord"] = { 26.0, 32.4, NAZJATAR },
				}),
				o(326416, {	-- Arcane Chest
					["questID"] = 55956,
					["coord"] = { 39.8, 49.2, NAZJATAR },
				}),
				o(326417, {	-- Arcane Chest
					["questID"] = 55955,
					["coord"] = { 50.6, 50.0, NAZJATAR },
				}),
				o(326401, {	-- Arcane Chest
					["questID"] = 55950,
					["coord"] = { 38.7, 74.4, NAZJATAR },
					["description"] = "Use a |cFFFFD700Goblin Glider|r, |cFFFFD700Deepcoral Pod|r, or fly ontop of the rocks.",
				}),
				o(326418, {	-- Arcane Chest
					["questID"] = 55943,
					["coord"] = { 64.3, 33.3, NAZJATAR },
				}),
				o(326419, {	-- Arcane Chest
					["questID"] = 55944,
					["coord"] = { 56.3, 33.8, NAZJATAR },
					["description"] = "At the very top of the mountain. Flying is recommended, but it's possible with a |cFFFFD700Deepcoral Pod|r, but very tricky."
				}),
			},
		}),
		o_repeated({	-- Glowing Arcane Trunk
			["sourceQuests"] = {
				56156,	-- A Tempered Blade (A)
				55500,	-- Save a Friend (H)
			},
			["groups"] = {
				-- Drops
				i(170489),	-- Mardivas's Handmade Handbag
				i(170475),	-- Mardivas's Retention Dimension Invention
				i(170068, {	-- Mardivas's Magnificent Desalinating Pouch
					i(169763),	-- Mardivas's Magnificent Desalinating Pouch
				}),
				i(170477),	-- Mardivas's Universally Lauded Tote
				i(169215),	-- Silver Knife (A)
				i(169216),	-- Silver Knife (H)
				-- Objects
				o(326395, {	-- Glowing Arcane Trunk
					["questID"] = 55959,
					["coord"] = { 37.9, 6.4, NAZJATAR },
				}),
				o(326396, {	-- Glowing Arcane Trunk
					["questID"] = 55963,
					["coord"] = { 43.8, 16.5, NAZJATAR },
				}),
				o(326397, {	-- Glowing Arcane Trunk
					["questID"] = 56912,
					["coord"] = { 24.8, 35.2, NAZJATAR },
				}),
				o(326398, {	-- Glowing Arcane Trunk
					["questID"] = 55961,
					["coord"] = { 55.7, 14.5, NAZJATAR },
					["description"] = "Match 3 Red runes.",
				}),
				o(326399, {	-- Glowing Arcane Trunk
					["questID"] = 55958,
					["coord"] = { 61.4, 22.9, NAZJATAR },
				}),
				o(326400, {	-- Glowing Arcane Trunk
					["questID"] = 55962,
					["coord"] = { 64.1, 28.6, NAZJATAR },
				}),
				o(329783, {	-- Glowing Arcane Trunk
					["questID"] = 55960,
					["coord"] = { 37.2, 19.2, NAZJATAR },
					["description"] = "Match 4 Cyan runes.",
				}),
				o(332220, {	-- Glowing Arcane Trunk
					["questID"] = 56547,
					["coord"] = { 80.5, 31.9, NAZJATAR },
					["description"] = "Use a |cFFFFD700Deepcoral Pod|r or fly to get on the roof.",
				}),
			},
		}),
		o(322413, {	-- Glimmering Chest
			["cost"] = { { "i", 167077, 1 } },	-- Scrying Stone
			-- Symlink in other Zone Drops instead of Sourcing again
			["sym"] = {{"select","itemID",
				168161,	-- Molted Shell
				170189,	-- Blind Eye
				170081,	-- Abyssal Conch (A)
				170079,	-- Abyssal Conch (H)
				169945,	-- Naga Deployment Orders
				170472,	-- Encrusted Coin
				170191,	-- Skeletal Hand
				170177,	-- Exposed Fish
				170170,	-- Fermented Deviate Fish
				170186,	-- Abyss Pearl
				170192,	-- Mudwrap
				170194,	-- Storm Totem
				170178,	-- Alpha Fin
				169478,	-- Benthic Bracers
				169480,	-- Benthic Chestguard
				169481,	-- Benthic Cloak
				169485,	-- Benthic Gauntlets
				169477,	-- Benthic Girdle
				169479,	-- Benthic Helm
				169482,	-- Benthic Leggings
				169484,	-- Benthic Spaulders
				169483,	-- Benthic Treads
			}},
			["groups"] = {
				i(169351),	-- Sandclaw Nestseeker (PET!)
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(NAZJATAR, {
		n(TREASURES, {
			q(57055),	-- Last Glowing Arcane Trunk or by using the rewarded item 'Mardivas's Universally Lauded Tote' (ID: 170477)
			q(56897),	-- Upon looting Naga Deployment Orders (170085) from the Scrying treasure
			q(56974),	-- Triggers when receiving "Mardivas's Handemade Handbag" (itemID 170489) from a Glowing Arcane Trunk
			q(56975),	-- Triggers when receiving "Mardivas's Rentention Dimension Invention (itemID 170475) from a Glowing Arcane Trunk
			q(56976),	-- Triggers when receiving "Mardivas's Magnificent Desalinating Pouch (itemID 170068) from a Glowing Arcane Trunk
			q(56977),	-- Triggers when receiving "Mardivas's Universally Lauded Tote" (itemID 170477) from a Glowing Arcane Trunk
		}),
	}),
})))
