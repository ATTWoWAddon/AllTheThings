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
				q(94967, {	-- Ki'clak Snack Attack
					--["sourceQuest"] = 93906,	-- Untethering the Two
					["coord"] = { 69.6, 56.5, MAP.MIDNIGHT.THE_COILED_ISLE },
					["groups"] = { i(267085) },	-- Swirling Ectoplasm
				}),
				q(94572, {	-- Shell the Future
					["coord"] = { 74.5, 59.6, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(96066, {	-- Slithering Surveyor
					["coord"] = { 56.9, 49.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95429, {	-- Swift of Foot
					["coord"] = { 69.4, 53.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95448, {	-- The Dose Makes the Poison
					["coord"] = { 26.1, 63.3, MAP.MIDNIGHT.THE_COILED_ISLE },
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
				q(95451, {	-- Who Ordered the Bag of Snakes?
					["coord"] = { 58.1, 47.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
			}),
		}),
	}),
}));
