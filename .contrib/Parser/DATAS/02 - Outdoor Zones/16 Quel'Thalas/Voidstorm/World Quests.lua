---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(WORLD_QUESTS, {
		--	["sourceQuests"] = {
		--	},
		--	["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				pvp(q(92576, {	-- Undercover Hunt
					["coord"] = { 56.0, 1.0, SLAYERS_RISE_OUTDOOR },
				})),
				pvp(q(89267, {	-- Mysterious Entity
					["coord"] = { 34.5, 51.9, SLAYERS_RISE_OUTDOOR },
				})),
				pvp(q(89347, {	-- Overcoming the Unknown: Devouring Elite
					["coord"] = { 55.5, 32.4, SLAYERS_RISE_OUTDOOR },
					["groups"] = {
						--TODO: when I fly into area pop q(94005), -- Stellar Stash
					},
				})),
				pvp(q(89377, {	-- Undercover Hunt
					["coord"] = { 45.7, 36.6, SLAYERS_RISE_OUTDOOR },
				})),
				q(93573, {	-- Deciphering Darkness
					["coord"] = { 41.8, 75.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(92546, {	-- Encroaching Predators
					["coord"] = { 36.1, 60.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93397, {	-- Gnawing Hunger
					["coord"] = { 57.7, 72.7, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(92549, {	-- Void From Above
					["coord"] = { 64.6, 62.2, MAP.MIDNIGHT.VOIDSTORM },
				}),
		--	}),
		}),
	}),
}));
