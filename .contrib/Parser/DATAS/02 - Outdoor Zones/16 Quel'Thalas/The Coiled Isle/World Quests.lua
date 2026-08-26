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
				q(93671, {	-- A Tight Squeeze
					["coord"] = { 64.7, 60.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["qi"] = 265622,	-- Knotted Swamp Stick
				}),
				q(93672, {	-- Blade to Rest
					["coord"] = { 45.7, 12.8, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(93669, {	-- Curse of Greed
					["coord"] = { 34.4, 85.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					["qi"] = 260419,	-- Cursed Zandalari Coin (QI!)
				}),
				q(95794, {	-- De-cryption Process
					["coord"] = { 77.0, 41.9, 2645 },	-- Kin's Rest
				}),
				q(94574, {	-- Egg Thief
					["coord"] = { 63.2, 38.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						o(619683, {	-- Guarded Seabird Nest
							i(265403),	-- Speckled Seabird Egg (QI!)
						}),
					},
				}),
				q(95381, {	-- Fire in the Sky
					["coord"] = { 54.2, 43.3, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(93648, {	-- Gnarly Skullduggery
					["coord"] = { 57.3, 76.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						o(615902, {	-- Gnarldin Supplies
							i(260417),	-- Gnarldin Supplies (QI!)
						}),
					},
				}),
				q(93649, {	-- Got the Gall
					["coord"] = { 29.4, 50.4, MAP.MIDNIGHT.THE_COILED_ISLE },
					["qis"] = {
						260424,	-- Lumpy Gallstone (QI!)
						269918,	-- Venom-Corroded Gallstone (QI!)
					},
				}),
				q(96329, {	-- Hexes and Hoaxes
					["coords"] = {
						{ 52.2, 43.4, MAP.MIDNIGHT.THE_COILED_ISLE },
						{ 65.9, 23.5, 2642 },	-- Tomb of the Lost Priest
					},
				}),
				q(93670, {	-- How 'Bout Them Apples?
					["coord"] = { 66.0, 38.0, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = { i(260420) },	-- Swamp Apple
				}),
				q(94967, {	-- Ki'clak Snack Attack
					--["sourceQuest"] = 93906,	-- Untethering the Two
					["coord"] = { 69.6, 56.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = {
						i(267085),	-- Swirling Ectoplasm
						ach(63633, {	-- A Stack of Snacks
							["coord"] = { 69.3, 52.3, MAP.MIDNIGHT.THE_COILED_ISLE },
							["cr"] = 256872,	-- Ki'clak <The Snip Shapper>
							["groups"] = { i(279921) },	-- Ki'clak (PET!)
						}),
					},
				}),
				q(95931, {	-- Open Sea Fishing
					["coord"] = { 66.8, 32.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					["minReputation"] = { FACTION_CAPTAIN_TOKKA, 4 },
				}),
				q(94611, {	-- Predators and Prey
					["coord"] = { 64.7, 66.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(93664, {	-- Rotten Fish
					["coord"] = { 61.0, 38.2, MAP.MIDNIGHT.THE_COILED_ISLE },
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
				q(95449, {	-- Snakes in the Grass
					["coord"] = { 58.0, 35.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95921, {	-- Special Assignment: Demand and Supply
					["coord"] = { 59.2, 51.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(96492, {	-- Special Assignment: Demand and Supply
					["coord"] = { 57.9, 49.0, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(96029, {	-- Special Assignment: Face the Swarm
					["coord"] = { 71.2, 15.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95918, {	-- Special Assignment: Wraith Wrath
					["coord"] = { 44.0, 47.2, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(96625, {	-- Spectral Gladiators
					["coord"] = { 68.4, 57.1, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95529, {	-- Spearin' Sky Snakes
					["coord"] = { 48.8, 64.7, MAP.MIDNIGHT.THE_COILED_ISLE },
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
					["qi"] = 274146,	-- Tortollan Belongings (QI!)
					["groups"] = {
						o(639617, {	-- Tortollan Bottle
							i(274147),	-- Bottle of Sand (QI!)
						}),
						o(639623, {	-- Tortollan Satchel
							i(274148),	-- Packet of Fishing Lures (QI!)
						}),
						o_repeated({
							["coords"] = {
								{ 59.7, 80.3, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 60.1, 82.5, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 61.2, 81.2, MAP.MIDNIGHT.THE_COILED_ISLE },
								{ 61.3, 79.8, MAP.MIDNIGHT.THE_COILED_ISLE },
							},
							["groups"] = {
								i(274145),	-- Sheaf of Papers (QI!)
								o(639624),	-- Tortollan Scroll
								o(639625),	-- Tortollan Scroll Case
							},
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
				hqt(96492),	-- Special Assignment: Demand and Supply was unlocked
			}),
		})),
	}),
}));
