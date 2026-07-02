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
				q(95381, {	-- Fire in the Sky
					["coord"] = { 54.2, 43.3, MAP.MIDNIGHT.THE_COILED_ISLE },
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
				q(95451, {	-- Who Ordered the Bag of Snakes?
					["coord"] = { 58.1, 47.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
			}),
		}),
	}),
}));
