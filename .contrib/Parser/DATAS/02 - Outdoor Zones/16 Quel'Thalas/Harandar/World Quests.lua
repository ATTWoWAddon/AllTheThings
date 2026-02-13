---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.HARANDAR, {
		n(WORLD_QUESTS, {
			--	["sourceQuests"] = {
			--	},
			["groups"] = bubbleDownFiltered({
				["isWorldQuest"] = true,
			},FILTERFUNC_questID,{
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
				q(91806, {	-- Big Game Hunting
					["coord"] = { 29.3, 37.7, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(258324),	-- Stolen Game Meat (QI!)
						o(612282),	-- Stolen Meat
					},
				}),
				q(92119, {	-- Bitterbloom Burn Down
					["coord"] = { 32.1, 69.5, MAP.MIDNIGHT.HARANDAR },
				}),
				q(92085, {	-- Claw Enforcement
					["coords"] = {
						{ 52.9, 52.3, MAP.MIDNIGHT.HARANDAR },
						{ 62.9, 70.4, 2576 },	-- The Den
					},
				}),
				q(91555, {	-- Defenders of the Vale
					["coord"] = { 58.7, 52.8, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91490, {	-- Dousing Teldrassil
					["coord"] = { 37.8, 29.1, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91785, {	-- Ensporcelled
					["coord"] = { 41.1, 66.0, MAP.MIDNIGHT.HARANDAR },
				}),
				q(92583, {	-- Fungicide
					["coord"] = { 71.8, 64.4, MAP.MIDNIGHT.HARANDAR },
				}),
				q(93046, {	-- Nestled Belongings
					["coord"] = { 31.3, 85.5, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(256145),	-- Bird Whistle (QI!)
						i(256144),	-- Bone Comb (QI!)
						i(256138),	-- Har'old (QI!)
						i(256143),	-- Wooden Spoon (QI!)
					},
				}),
				q(91927, {	-- Ooze Booting
					["coord"] = { 61.2, 56.6, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91937, {	-- Portraits in the Vale
					["coord"] = { 63.4, 49.6, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91582, {	-- Pruning the Lattice
					["coord"] = { 55.0, 29.3, MAP.MIDNIGHT.HARANDAR },
				}),
				q(93071, {	-- Rotten to the Core
					["coord"] = { 46.4, 66.2, MAP.MIDNIGHT.HARANDAR },
				}),
				q(93013, {	-- Special Assignment: Push Back the Light
					["coord"] = { 32.7, 77.4, MAP.MIDNIGHT.HARANDAR },
				}),
				q(92062, {	-- Tending the Roots
					["coord"] = { 35.9, 24.6, MAP.MIDNIGHT.HARANDAR },
				}),
				q(91802, {	-- The Best Bites are Bog Bugs
					["coord"] = { 43.2, 61.3, MAP.MIDNIGHT.HARANDAR },
					["groups"] = {
						i(260453),	-- Leech Tick (QI!)
					},
				}),
				q(91799, {	-- Trial of Flight
					["coord"] = { 51.5, 76.8, MAP.MIDNIGHT.HARANDAR },
				}),
			}),
		}),
	}),
}));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.HARANDAR, {
			n(QUESTS, {
				hqt(94391),	-- Special Assignment: Push Back the Light was unlocked
			}),
		}),
	}),
}));