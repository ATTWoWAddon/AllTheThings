---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(SHADOWLANDS, bubbleDown({ ["timeline"] = { ADDED_9_2_0 } }, {
	m(ZERETH_MORTIS, {
		n(WORLD_QUESTS, sharedData({
			["sourceQuest"] = 64230,	-- Cyphers of the First Ones
			["isWorldQuest"] = true,
		}, {
			q(65081, {	-- An Apple A Day
				["coord"] = { 47.9, 88.7, ZERETH_MORTIS },
				["groups"] = {
					i(187949),	-- Catalyzed Apple (QI!)
				},
			}),
			q(65232, {	-- Annelid-ilation
				["coord"] = { 57.2, 66.5, ZERETH_MORTIS },
			}),
			q(65119, {	-- Automa Ops
				["coord"] = { 56.8, 32.7, ZERETH_MORTIS },
				["groups"] = {
					i(188137),	-- Targeting Relic (QI!)
				},
			}),
			q(65117, {	-- Bad Samples
				["coord"] = { 44.1, 30.8, ZERETH_MORTIS },
			}),
			q(65230, {	-- Bot-Any
				["coord"] = { 47.4, 80.3, ZERETH_MORTIS },
			}),
			q(64974, {	-- Clean Up, Automa Aisle
				["coord"] = { 57.6, 47.5, ZERETH_MORTIS },
				["groups"] = {
					i(187841),	-- Explosive Core
				},
			}),
			q(65244, {	-- Devourable
				["coord"] = { 42.1, 71.0, ZERETH_MORTIS },
			}),
			q(64960, {	-- Feed the Annelids
				["coord"] = { 56.8, 31.9, ZERETH_MORTIS },
				["groups"] = {
					i(187816),	-- Irresistible Goop (QI!)
					i(187820),	-- Piece of Goop (QI!)
				},
			}),
			q(65102, {	-- Fish Eyes
				["coord"] = { 47.8, 64.0, ZERETH_MORTIS },
				["groups"] = {
					i(187999),	-- Fishing Portal
				},
			}),
			q(65089, {	-- Frog'it
				["coord"] = { 60.0, 68.8, ZERETH_MORTIS },
				["sym"] = {
					{"select","objectID",373561},	-- Forgotten Proto-Vault
				},
				["groups"] = {
					i(187987),	-- Call Bounding Bufonid (QI!)
				},
			}),
			q(65231, {	-- Plundered Knowledge
				["coord"] = { 67.2, 39.1, ZERETH_MORTIS },
				["groups"] = {
					i(188522),	-- Ancient Archive (QI!)
				},
			}),
			q(65115, {	-- Researching The Solution
				["coord"] = { 44.6, 30.9, ZERETH_MORTIS },
				["groups"] = {
					i(188118),	-- Enigmatic Scrolls (QI!)
				},
			}),
			q(65262, {	-- Save the Vombata
				["coord"] = { 43.5, 63.7, ZERETH_MORTIS },
			}),
			q(65252, {	-- Stomp It Now
				["coord"] = { 37.9, 39.9, ZERETH_MORTIS },
			}),
			q(65234, {	-- Sweet On Them
				["coord"] = { 63.0, 58.0, ZERETH_MORTIS },
				["groups"] = {
					i(188529),	-- Hexagonal Nectar (QI!)
				},
			}),
		})),
		n(WORLD_QUESTS, sharedData({ ["isWorldQuest"] = true, ["sourceQuests"] = { 64230 }, ["sharedDescription"] = "Requires Cachial" }, {
			q(65406, {	-- Connecting It All
				["coord"] = { 65.7, 41.0, ZERETH_MORTIS },
			}),
			q(65417, {	-- Connecting It All
				["coord"] = { 55.0, 48.0, ZERETH_MORTIS },
			}),
			q(65416, {	-- Connecting It All
				["coord"] = { 53.0, 45.6, ZERETH_MORTIS },
			}),
			q(65408, {	-- Pattern Recognition
				["coord"] = { 53.2, 86.8, ZERETH_MORTIS },
			}),
			q(65402, {	-- Pattern Recognition
				["coord"] = { 32.0, 52.6, ZERETH_MORTIS },
			}),
			q(65407, {	-- Pattern Recognition
				["coord"] = { 52.4, 57.1, ZERETH_MORTIS },
			}),
			q(65414, {	-- Perplexing Problem
				["coord"] = { 63.1, 36.5, ZERETH_MORTIS },
			}),
			q(65415, {	-- Perplexing Problem
				["coord"] = { 47.6, 39.0, ZERETH_MORTIS },
			}),
			q(65405, {	-- Perplexing Problem
				["coord"] = { 57.2,65.7, ZERETH_MORTIS },
			}),
			q(65412, {	-- Puzzling It Out
				["coord"] = { 51.3, 25.8, ZERETH_MORTIS },
			}),
			q(65413, {	-- Puzzling It Out
				["coord"] = { 55.9, 84.0, ZERETH_MORTIS },
			}),
			q(65404, {	-- Puzzling It Out
				["coord"] = { 59.1, 36.7, ZERETH_MORTIS },
			}),
			q(65410, {	-- Puzzling Situation
				["coord"] = { 55.7, 50.0, ZERETH_MORTIS },
			}),
			q(65411, {	-- Puzzling Situation
				["coord"] = { 35.2, 59.1, ZERETH_MORTIS },
			}),
			q(65403, {	-- Puzzling Situation
				["coord"] = { 38.4, 70.4, ZERETH_MORTIS },
			}),
		})),
	}),
})));

-- root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, bubbleDownSelf({ ["timeline"] = { ADDED_9_2_0 } }, {
-- 	m(SHADOWLANDS, {
-- 		m(ZERETH_MORTIS, {
-- 			n(WORLD_QUESTS, {
-- 				q(65418),	-- Triggered when completing a puzzle WQ
-- 			}),
-- 		}),
-- 	}),
-- })));
