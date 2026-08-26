---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(RARES, {
				n(263015, {	-- Khu'tulak <Blade of Nek'zali>
					["coord"] = { 53.0, 22.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						i(273000),	-- Corrosive Soul
						weeklyReward(97769, {
							i(279382, {sym=SYM.MIDNIGHT.COILED_ISLE.VAULTS.VENOM_ITEMS}),	-- Venom-Cursed Fragment
						}),
					},
				}),
				n(263016, {	-- Susarikk <Spawn of the First Clutch>
					["coord"] = { 47.8, 32.0, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["crs"] = { 263016 },	-- vignette
					["groups"] = {
						i(273000),	-- Corrosive Soul
						weeklyReward(97770, {
							i(279382, {sym=SYM.MIDNIGHT.COILED_ISLE.VAULTS.VENOM_ITEMS}),	-- Venom-Cursed Fragment
						}),
					},
				}),
				n(263253, {	-- Spirit of Jin'tal
					["crs"] = { 263210 },	-- High Priest Jin'tal
					["coord"] = { 74.9, 72.6, 2636 },	-- Vault of Restless Bones
					["groups"] = { i(280005), },	-- Dispelling Charm
				}),
			}),
		}),
	}),
}));
--[[
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MID, {
	m(MAP.MIDNIGHT.QUELTHALAS, {
		m(MAP.MIDNIGHT.THE_COILED_ISLE, bubbleDownSelf({ ["timeline"] = { ADDED_12_1_0 } }, {
			m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
				n(RARES, {
				}),
			}),
		})),
	}),
}));
--]]
