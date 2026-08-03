---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(WORLD_QUESTS, {
			--["sourceQuest"] = 92924,	-- What Lies Beyond the Fog
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
				q(95662, {	-- A Suspicious Stew
					["coord"] = { 58.0, 48.8, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95381, {	-- Fire in the Sky
					["coord"] = { 54.2, 43.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(94574, {	-- Egg Thief
					["coord"] = { 63.2, 38.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						o(619683, {	-- Guarded Seabird Nest
							i(265403),	-- Speckled Seabird Egg (QI!)
						}),
					},
				}),
				q(93649, {	-- Got the Gall
					["coord"] = { 29.4, 50.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						i(260424),	-- Lumpy Gallstone (QI!)
						i(269918),	-- Venom-Corroded Gallstone (QI!)
					},
				}),
				q(96329, {	-- Hexes and Hoaxes
					["coords"] = {
						{ 52.2, 43.4, MAP.MIDNIGHT.THE_COILED_ISLE },
						{ 65.9, 23.5, 2642 },	-- Tomb of the Lost Priest
					},
				}),
				q(94967, {	-- Ki'clak Snack Attack
					--["sourceQuest"] = 93906,	-- Untethering the Two
					["coord"] = { 69.6, 56.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = { i(267085) },	-- Swirling Ectoplasm
				}),
				q(95923, {	-- Ruin Runner Rush
					["coord"] = { 74.9, 62.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(94572, {	-- Shell the Future
					["coord"] = { 74.5, 59.6, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95253, {	-- Shocking Appetites
					["coord"] = { 61.3, 65.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = { i(268628) },	-- Zapgut Gland (QI!)
				}),
				q(95990, {	-- Slithering Heights
					["coord"] = { 38.7, 47.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(96066, {	-- Slithering Surveyor
					["coord"] = { 56.9, 49.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95529, {	-- Spearin' Sky Snakes
					["coord"] = { 48.8, 64.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95918, {	-- Special Assignment: Wraith Wrath
					["coord"] = { 44.0, 47.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95429, {	-- Swift of Foot
					["coord"] = { 69.4, 53.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95448, {	-- The Dose Makes the Poison
					["coord"] = { 26.1, 63.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = { i(269578) },	-- Poison Dart Frog Gland (QI!)
				}),
				q(94573, {	-- The Floor is Larvae
					["coord"] = { 69.5, 47.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95453, {	-- Tortollan Repatriation
					["coord"] = { 60.5, 80.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						i(274146),	-- Tortollan Belongings (QI!)	// All other items count as this one
						o(639617, {	-- Tortollan Bottle
							i(274147),	-- Bottle of Sand (QI!)
						}),
						o(639623, {	-- Tortollan Satchel
							i(274148),	-- Packet of Fishing Lures (QI!)
						}),
						o_repeated({
							i(274145),	-- Sheaf of Papers (QI!)
							o(639624),	-- Tortollan Scroll
							o(639625),	-- Tortollan Scroll Case
						}),
					},
				}),
				q(95484, {	-- Truffle Scuffle
					["coord"] = { 44.8, 73.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95451, {	-- Who Ordered the Bag of Snakes?
					["coord"] = { 58.1, 47.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			n(WORLD_QUESTS, {
				hqt(96307),	-- Special Assignment: Wraith Wrath was unlocked
			}),
		})),
	}),
}));
