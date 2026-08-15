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
				-- Altar of Corrosion unlocks
				o(649651, {	-- Eye of Szarith (learns spellID 1305084)
					["cost"] = { { "i", 280003, 1 } },	-- 1x Excising Knife
					["coord"] = { 68.60, 15.66, MAP.MIDNIGHT.VAULTS_UNDERBELLY },
					["groups"] = {
						i(278534, {	-- Eye of Szarith
							["questID"] = 97668,	-- The Watchful Gaze of Szarith
						}),
					},
				}),
				o(671498, {	-- Venom-Worn Coffer (learns spellID 1305107)
					["description"] = "Will only show up once you have looted the Corroded Key, in one of 5 random locations",
					["cost"] = { { "i", 280004, 1 } },	-- 1x Corroded Key
					["coords"] = {
						{ 41.7, 53.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						{ 52.5, 53.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						{ 47.5, 38.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						{ 53.5, 18.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						{ 42.7, 12.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					},
					["groups"] = {
						i(278536, {	-- Mummified Lynx's Paw
							["questID"] = 97669,	-- The Luck of the Bound Spirit
						}),
					},
				}),
				o(671500, {	-- Feather of Tok'jara (learns spellID 1305075)
					["cost"] = { { "i", 280006, 1 } },	-- 1x Spirit Loupe
					["coord"] = { 48.50, 25.76, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["groups"] = {
						i(278523, {	-- Feather of Tok'jara
							["questID"] = 97662,	-- The Winds of Tok'jara
						}),
					},
				}),
				o(671508, {	-- Jin'tal's Reliquary (learns spellID 1305071)
					["cost"] = { { "i", 280005, 1 } },	-- 1x Dispelling Charm
					["coord"] = { 36.26, 23.70, 2638 },
					["groups"] = {
						i(278517, {	-- Lost Med'jai Amulet
							["questID"] = 97661,	-- The Protection of the Med'jai
						}),
					},
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
