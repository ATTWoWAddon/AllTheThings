---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(TREASURES, {
				header(HEADERS.Achievement, 63610, {	-- The Honored Dead
					-- Exo Note: Quest Notes are Criteria Names of the Achievement
					o(668589, {	-- Funerary Inscription
						["coord"] = { 49.5, 56.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98029,	-- To a daughter.
					}),
					o(668590, {	-- Funerary Inscription
						["coord"] = { 52.2, 45.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98030,	-- To a lover.
					}),
					o(668591, {	-- Funerary Inscription
						["coord"] = { 13.6, 65.6, 2638 },	-- Profaned Mausoleum
						["questID"] = 98031,	-- To parents.
					}),
					o(668593, {	-- Funerary Inscription
						["coord"] = { 55.6, 40.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98032,	-- To a dream.
					}),
					o(668594, {	-- Funerary Inscription
						["coord"] = { 52.9, 33.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98033,	-- To a captain.
					}),
					o(668596, {	-- Funerary Inscription
						["coord"] = { 42.9, 41.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98034,	-- To sons.
					}),
					o(668597, {	-- Funerary Inscription
						["coord"] = { 45.8, 61.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98035,	-- To failure.
					}),
					o(668598, {	-- Funerary Inscription
						["coord"] = { 46.4, 24.0, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98036,	-- To a father.
					}),
					o(668599, {	-- Funerary Inscription
						["coord"] = { 46.8, 7.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98037,	-- To a sister.
					}),
					o(668600, {	-- Funerary Inscription
						["coord"] = { 76.7, 35.1, 2636 },	-- Vault of Restless Bones
						["questID"] = 98038,	-- To comrades.
					}),
					o(668601, {	-- Funerary Inscription
						["coord"] = { 42.6, 33.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98039,	-- To a stranger.
					}),
					o(668602, {	-- Funerary Inscription
						["coord"] = { 56.1, 28.4, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["questID"] = 98040,	-- To a shield-bearer.
					}),
				}),
				-- Repeatables
				o(649640, {	-- Soulcoiler's Cache
					["description"] = "Can be found randomly throughout the Vaults.",
				}),
				o(649687, {	-- Soulcoiler's Trove
					["description"] = "Can be found randomly throughout the Vaults.",
				}),
			}),
		}),
	}),
}));
