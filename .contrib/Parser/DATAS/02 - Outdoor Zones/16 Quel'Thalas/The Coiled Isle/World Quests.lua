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
				q(96066, {	-- Slithering Surveyor
					["coord"] = { 56.9, 49.4, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
				q(95451, {	-- Who Ordered the Bag of Snakes?
					["coord"] = { 58.1, 47.7, MAP.MIDNIGHT.THE_COILED_ISLE },
				}),
			}),
		}),
	}),
}));
