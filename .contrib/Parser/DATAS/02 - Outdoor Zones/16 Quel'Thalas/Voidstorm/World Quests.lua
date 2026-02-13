---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.VOIDSTORM, {
		n(WORLD_QUESTS, {
		--	["sourceQuests"] = {
		--	},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
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
				q(92571, {	-- Armies of Darkness
					["coord"] = { 23.4, 54.3, SLAYERS_RISE_OUTDOOR },
					--["races"] = HORDE_ONLY,	-- speculation due to zone
				}),
				q(92731, {	-- Artificing Aggression
					["coord"] = { 51.6, 70.2, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(94425, {	-- Bleed the Spire
					["coord"] = { 48.8, 59.8, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93577, {	-- Captured Instinct
					["coord"] = { 36.5, 49.1, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93573, {	-- Deciphering Darkness
					["coord"] = { 41.8, 75.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93904, {	-- Defying Gravity
					["coord"] = { 48.0, 78.4, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93507, {	-- Dispersing Shadows
					["coord"] = { 31.0, 53.41, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93507, {	-- Disrupting the Void
					["coord"] = { 38.8, 45.1, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(92546, {	-- Encroaching Predators
					["coord"] = { 36.1, 60.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93397, {	-- Gnawing Hunger
					["coord"] = { 57.7, 72.7, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						o(612079, {	-- Foul Carcass
							i(258146),	-- Rotten Carrion (QI!)
						}),
						o(612081, {	-- Foul Carcass
							i(258146),	-- Rotten Carrion (QI!)
						}),
					},
				}),
				q(93905, {	-- Ongoing Stoppage
					["coord"] = { 37.4, 75.1, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93517, {	-- Otherworldly Intelligence
					["coord"] = { 47.3, 70.3, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(259029),	-- Shadowguard Intelligence (QI!)
					},
				}),
				q(93579, {	-- Path of Purgation
					["coord"] = { 30.8, 47.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93244, {	-- Special Assignment: Agents of the Shield
					["coord"] = { 40.9, 86.3, MAP.MIDNIGHT.VOIDSTORM },
					["groups"] = {
						i(263510),	-- Overflow Diverter (QI!)
					},
				}),
				q(93438, {	-- Special Assignment: Precision Excision
					["coord"] = { 35.8, 70.4, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(94581, {	-- Stand Your Ground
					["coord"] = { 26.7, 68.3, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(92746, {	-- The Twist of the Stormfields
					["coord"] = { 40.3, 59.4, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93524, {	-- Trench Run
					["coord"] = { 51.2, 67.2, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(92549, {	-- Void From Above
					["coord"] = { 64.6, 62.2, MAP.MIDNIGHT.VOIDSTORM },
				}),
				q(93578, {	-- Where Shadows Gather
					["coord"] = { 44.0, 75.0, SLAYERS_RISE_OUTDOOR },
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.VOIDSTORM, {
			n(QUESTS, {
				hqt(94795),	-- Special Assignment: Agents of the Shield was unlocked
				hqt(94743),	-- Special Assignment: Precision Excision was unlocked
			}),
		}),
	}),
}));