---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(WORLD_QUESTS, {
			--	["sourceQuests"] = {
			--	},
			["groups"] = bubbleDownFiltered({ ["isWorldQuest"] = true, },FILTERFUNC_questID,{
				n(REWARDS, {
					i(256986),	-- Circlet of Encroaching Shadow
				}),
				q(92086, {	-- A Taste of Accord
					["coord"] = { 41.5, 24.3, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(252259),	-- Drifter Jelly (QI!)
						o(574619, {	-- Rick Loamy Soil
							i(252257),	-- Rich Loamy Soil (QI!)
						}),
						i(252234),	-- Savory Saptor Slice (QI!)
						i(252246),	-- Sweet Beetle Wings (QI!)
					},
				}),
				q(92582, {	-- Apply to Roots
					["coord"] = { 41.4, 32.3, MAP.MIDNIGHT.HARANDAR },
					["groups"] = { i(269603) },	-- Verdant Stalker Sludge (QI!)
				}),
				q(92085, {	-- Claw Enforcement
					["coord"] = { 52.9, 52.3, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91555, {	-- Defenders of the Vale
					["coord"] = { 58.7, 52.8, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91582, {	-- Pruning the Lattice
					["coord"] = { 55.0, 29.3, MAP.MIDNIGHT.HARANDAR },
				}),
				q(93071, {	-- Rotten to the Core
					["coord"] = { 46.4, 66.2, MAP.MIDNIGHT.HARANDAR },
				}),
				q(92062, {	-- Tending the Roots
					["coord"] = { 35.9, 24.6, MAP.MIDNIGHT.HARANDAR },
				}),
			}),
		}),
	}),
}));
