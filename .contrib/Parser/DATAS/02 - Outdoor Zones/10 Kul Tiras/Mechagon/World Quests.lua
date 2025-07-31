---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(KUL_TIRAS, bubbleDown({ ["timeline"] = { ADDED_8_2_0 } }, {
	m(MECHAGON, {
		n(WORLD_QUESTS, sharedData({
			["lvl"] = { 50 },
			["isWorldQuest"] = true,
		},{
			petbattle(q(56396, {	-- Creakclank
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56397, {	-- CK-9 Micro-Oppression Unit
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56393, {	-- Gnomefeaster
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56395, {	-- Goldenbot XD
				["filterID"] = BATTLE_PETS,
			})),
			q(56139, {	-- Junkyard Treasures
				["groups"] = {
					i(168832),	-- Galvanic Oscillator
				},
			}),
			q(55901, {	-- Rustbolt Rebellion
				["groups"] = {
					i(168832),	-- Galvanic Oscillator
				},
			}),
			q(56141, {	-- Security First
				["groups"] = {
					i(168832),	-- Galvanic Oscillator
				},
			}),
			petbattle(q(56394, {	-- Sputtertube
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56399, {	-- Unit 6
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56400, {	-- Unit 17
				["filterID"] = BATTLE_PETS,
			})),
			petbattle(q(56398, {	-- Unit 35
				["filterID"] = BATTLE_PETS,
			})),
		})),
	}),
})));
