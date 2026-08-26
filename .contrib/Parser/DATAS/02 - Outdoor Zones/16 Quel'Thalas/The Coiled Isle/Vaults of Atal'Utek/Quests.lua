---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

SYM.MIDNIGHT.COILED_ISLE.VAULTS.VENOM_ITEMS = {{"select","itemID",279345},{"pop"}}

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
					q(97669, {	-- The Luck of the Bound Spirit
						["provider"] = { "i", 278536 },	-- Mummified Lynx's Paw (QS!)
						["coords"] = {
							{ 41.7, 53.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 52.5, 53.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 47.5, 38.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 53.5, 18.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							{ 42.7, 12.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						},
						["groups"] = { spell(1305107) },	-- Run of the Vaults
					}),
					q(97661, {	-- The Protection of the Med'jai
						["provider"] = { "i", 278517 },	-- Lost Med'jai Amulet (QS!)
						["coord"] = { 36.26, 23.70, 2638 },	-- Profaned Mausoleum
						["groups"] = { spell(1305071) },	-- Spiritual Protection
					}),
					q(97668, {	-- The Watchful Gaze of Szarith
						["provider"] = { "i", 278534 },	-- Eye of Szarith (QS!)
						["coord"] = { 68.60, 15.66, MAP.MIDNIGHT.VAULTS_UNDERBELLY },
						["groups"] = { spell(1305084) },	-- Broodmaster
					}),
					q(97662, {	-- The Winds of Tok'jara
						["provider"] = { "i", 278523 },	-- Feather of Tok'jara (QS!)
						["coord"] = { 48.50, 25.76, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["groups"] = { spell(1305075) },	-- Spectral Winds
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
						["isDaily"] = true,
					}),
					q(96644, {	-- Essence of Malice
						["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isDaily"] = true,
						["groups"] = { i(278470) },	-- Malefic Venom (QI!)
					}),
					q(96640, {	-- Bounty of the Cursed
						["qg"] = 262880,	-- Er'inye
						["coord"] = { 51.2, 62.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						["isDaily"] = true,
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
					["groups"] = {
						i(273000),	-- Corrosive Soul
						i(279382, {sym=SYM.MIDNIGHT.COILED_ISLE.VAULTS.VENOM_ITEMS}),	-- Venom-Cursed Fragment
					},
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
					["isWeekly"] = true,
					["groups"] = {
						i(273000),	-- Corrosive Soul
						i(279382, {sym=SYM.MIDNIGHT.COILED_ISLE.VAULTS.VENOM_ITEMS}),	-- Venom-Cursed Fragment
					},
				}),
				q(96641, {	-- Relentless Strikes
					["qg"] = 272109,	-- Hawkeye Socho
					["isWeekly"] = true,
					["coord"] = { 46.5, 65.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
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
				q(98420, {	-- What's Out There?
					["sourceQuest"] = 98388,	-- Into the Vaults of Atal'Utek
					["qg"] = 262798,	-- Warleader Abdumati
					["coord"] = { 47.2, 60.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
					["isDaily"] = true,
				}),
				header(HEADERS.Achievement, 63598, sharedData({	-- Roll the Patrol
					["repeatable"] = true,
				},{
					["groups"] = {
						q(95972, {	-- Temple Patrol: Ash to Ash
							["qg"] = 263346,	-- Er'inye
							["coord"] = { 43.9, 30.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						q(95952, {	-- Temple Patrol: Breath and Bile
							["qg"] = 263472,	-- Er'inye
							["coord"] = { 44.4, 53.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							["groups"] = {
								i(271864),	-- Rotten Pneuma (QI!)
								i(271863),	-- Ophidian Bile (QI!)
							},
						}),
						q(95573, {	-- Temple Patrol: Broken Bonds
							-- ["qg"] = ??,
							["coord"] = { 49.4, 56.9, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						q(95985, {	-- Temple Patrol: Calming the Dead
							-- ["qg"] = ??,
							["coord"] = { 44.1, 30.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						q(95953, {	-- Temple Patrol: Congealed Venom
							-- ["qg"] = ??,
							--["coord"] = { 44.1, 30.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							["groups"] = { i(271693) },	-- Congealed Venom (QO!)
						}),
						q(96017, {	-- Temple Patrol: Dragged Below
							["qg"] = 263411,	-- Desperate Warrior
							["crs"] = { 263412 },	-- vignette
							["coords"] = {
								{ 41.0, 39.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
								{ 45.0, 10.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
								{ 54.3, 42.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							},
						}),
						q(95987, {	-- Temple Patrol: Laid to Rest
							["qg"] = 263339,	-- Tortured Spirit
							["coords"] = {
								{ 50.1, 38.8, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
								{ 52.6, 45.5, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							},
						}),
						q(95906, {	-- Temple Patrol: Scavenged Weapons
							["qg"] = 263507,
							["coords"] = {
								{ 42.7, 31.7, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
								{ 56.5, 32.1, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							},
							["qis"] = {
								271865,	-- Scavenged Weapon (QI!)
								271868,	-- Splintering Spear (QI!)
								271867,	-- Venom-Etched Sword (QI!)
								271866,	-- Well-Worn Hatchet (QI!)
							},
						}),
						q(95614, {	-- Temple Patrol: Siphon Venom
							["qg"] = 262061,	-- Fading Spirit
							["coords"] = {
								{ 40.2, 17.3, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
								{ 46.1, 35.3, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
							},
						}),
						q(95598, {	-- Temple Patrol: Slay Children of Ula'tek
							["qg"] = 261973,	-- Fading Spirit
							["coord"] = { 42.8, 41.2, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						q(95580, {	-- Temple Patrol: Slay the Restless
							["qg"] = 261967,	-- Dying Warrior
							["coord"] = { 53.0, 50.66, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
						q(95962, {	-- Temple Patrol: Vengeance for the Dead
							["qg"] = 263336,	-- Vengeful Spirit
							["coord"] = { 52.1, 32.6, MAP.MIDNIGHT.VAULTS_OF_ATALUTEK },
						}),
					},
				})),
				filter(MISC, {
					o(642203, {	-- Repair Supplies
						i(269938),	-- Repair Supplies
					}),
				}),
			}),
			n(REWARDS, {
				i(274374),	-- Trovehunter's Bounty
			}),
		}),
	}),
}));

root(ROOTS.HiddenQuestTriggers, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		m(MAP.MIDNIGHT.VAULTS_OF_ATALUTEK, {
			header(HEADERS.Achievement, 63598, sharedData({
				["repeatable"] = true
			},{
				q(96041),	-- completion of 95972 -- Ash to Ash
				q(96037),	-- completion of 95952 -- Breath and Bile
				q(96032),	-- completion of 95573 -- Broken Bonds
				q(96042),	-- completion of 95985 -- Calming the Dead
				q(96039),	-- completion of 96017 -- Dragged Below
				q(96043),	-- completion of 95987 -- Laid to Rest
				q(96034),	-- completion of 95598 -- Slay Children of Ula'tek
				q(96036),	-- completion of 95906 -- Scavenged Weapons
				q(96035),	-- completion of 95614 -- Siphon Venom
				q(96040),	-- completion of 95962 -- Vengeance for the Dead
				-- not sure if these need to be real quests or not
				q(95639),	-- Clear the Clutch
				q(95640),	-- Clear the Clutch
				q(95641),	-- Clear the Clutch
				q(95881),	-- completed when 95641 accepted
				q(95616),	-- Barrier A (accepted with 95639)
				q(95617),	-- Barrier B (accepted with 95639)
				q(95619),	-- Barrier C (accepted with 95639)
			})),
		}),
	}),
}))
