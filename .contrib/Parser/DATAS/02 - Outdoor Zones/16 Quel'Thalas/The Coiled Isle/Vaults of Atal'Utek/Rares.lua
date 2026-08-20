---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(RARES, {
				n(263015, {	-- Khu'tulak <Blade of Nek'zali>
					["coord"] = { 53.0, 22.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
				n(RARES, {
					q(97769, name(HEADERS.NPC, 263015, {isWeekly=true})),	-- first weekly kill of Khu'tulak <Blade of Nek'zali>
				}),
			}),
		})),
	}),
}));
