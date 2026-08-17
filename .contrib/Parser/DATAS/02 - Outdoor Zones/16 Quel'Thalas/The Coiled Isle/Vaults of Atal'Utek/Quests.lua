---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			n(QUESTS, {
				header(HEADERS.NPC, 269485, {	-- Altar of Corrosion
					q(97640, {	-- Vaults of Atal'Utek: One Coin Too Many
						["qgs"] = {
							272024,	-- Sack of Coins
							262798,	-- Warleader Abdumati
						},
						["coords"] = {
							{ 42.3, 14.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Sack of Coins
							{ 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Warleader Abdumati @ Amani Foothold
							-- { 53.9, 39.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Mok'sa the Stone @ Eastern Amani Outpost
						},
					}),
					q(97661, {	-- The Protection of the Med'jai
						["provider"] = { "i", 278517 },	-- Lost Med'jai Amulet (QS!)
						["coord"] = { 36.26, 23.70, 2638 },
						["groups"] = {
							spell(1305071),	-- Spiritual Protection
						}
					}),
					q(97662, {	-- The Winds of Tok'jara
						["provider"] = { "i", 278523 },	-- Feather of Tok'jara (QS!)
						["coord"] = { 48.50, 25.76, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["groups"] = {
							spell(1305075),	-- Spectral Winds
						},
					}),
					q(97668, {	-- The Watchful Gaze of Szarith
						["provider"] = { "i", 278534 },	-- Eye of Szarith (QS!)
						["coord"] = { 68.60, 15.66, MAP.MIDNIGHT.VAULTS_UNDERBELLY },
						["groups"] = {
							spell(1305084),	-- Broodmaster
						},
					}),
					q(97669, {	-- The Luck of the Bound Spirit
						["provider"] = { "i", 278536 },	-- Mummified Lynx's Paw (QS!)
						["coords"] = {
							{ 41.7, 53.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 52.5, 53.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 47.5, 38.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 53.5, 18.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 42.7, 12.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						},
						["groups"] = {
							spell(1305107),	-- Run of the Vaults
						},
					}),
					q(98428, {	-- Vaults of Atal'Utek: The Altar of Corrosion
						["sourceQuest"] = 97640,	-- Vaults of Atal'Utek: One Coin Too Many
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					}),
					q(96643, {	-- From When it Came
						["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isWeekly"] = true,	-- Assumption
					}),
					q(96644, {	-- Essence of Malice
						["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isWeekly"] = true,	-- Assumption
						["groups"] = { i(278470) },	-- Malefic Venom (QI!)
					}),
					q(96640, {	-- Bounty of the Cursed
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isWeekly"] = true,	-- Assumption
						["groups"] = { i(275060) },	-- Forgotten Relic (QI!)
					}),
				}),
				q(98388, {	-- Into the Vaults of Atal'Utek
					["qgs"] = {
						262798,	-- Warleader Abdumati
						271885,	-- Mok'sa the Stone
					},
					["coords"] = {
						{ 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Warleader Abdumati @ Amani Foothold
						{ 53.9, 39.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Mok'sa the Stone @ Eastern Amani Outpost
					},
					["groups"] = {
						o(675629, {	-- Broken Urn
							i(278472),	-- Noxious Corrosive Coin
						}),
					},
				}),
				q(98515, {	-- Vaults of Atal'Utek: A Toxic Tour
					["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
					["qg"] = 262798,	-- Warleader Abdumati
					["coord"] = { 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
				}),
				-- Zone Repeatables
				q(95520, {	-- Purging the Vaults
					["qgs"] = {
						262798,	-- Warleader Abdumati
						267635,	-- Talon Commander Zela
					},
					["coords"] = {
						{ 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Warleader Abdumati
						{ 58.7, 45.8, MAP.MIDNIGHT.THE_COILED_ISLE },		-- Talon Commander Zela
					},
					["isDaily"] = true,
				}),
				q(98419, {	-- Shoulder to Shoulder
					["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
					["qg"] = 262798,	-- Warleader Abdumati
					["coord"] = { 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["isDaily"] = true,
				}),
				q(96639, {	-- Patrolling the Temple
					["qg"] = 272109,	-- Hawkeye Socho (mobileNPC)
					["coord"] = { 47.2, 65.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Moves to the troops left and right of this point
					["isDaily"] = true,
				}),
				q(96642, {	-- Decisive Incursions
					["qg"] = 272109,	-- Hawkeye Socho (mobileNPC)
					["coord"] = { 47.2, 65.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },	-- Moves to the troops left and right of this point
					["isDaily"] = true,
				}),
			}),
			header(HEADERS.Achievement, 63598, sharedData({
				["repeatable"] = true,
			},{
				q(95573, {	-- Broken Bonds
					["coord"] = { 49.4, 56.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					-- ["qg"] = ??,
				}),
				q(95985, {	-- Calming the Dead
					["coord"] = { 44.1, 30.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					-- ["qg"] = ??,
				}),
				q(95987, {	-- Laid to Rest
					["coord"] = { 52.6, 45.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					-- ["qg"] = ??,
				}),
				q(95598, {	-- Slay Children of Ula'tek
					["coord"] = { 42.8, 41.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					-- ["qg"] = ??,
				}),
				-- TODO: add more
			})),
			n(REWARDS, {
				i(273000),	-- Corrosive Soul
				i(274374),	-- Trovehunter's Bounty
				i(279382, {	-- Venom-Cursed Fragment
					["sym"] = {{"select","itemID",279345},{"pop"}}
				}),
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			header(HEADERS.Achievement, 63598, {
				q(96032),	-- completion of 95573 -- Broken Bonds
				q(96042),	-- completion of 95985 -- Calming the Dead
				q(96043),	-- completion of 95987 -- Laid to Rest
				q(96034),	-- completion of 95598 -- Slay Children of Ula'tek
			}),
		}),
	}),
}))
