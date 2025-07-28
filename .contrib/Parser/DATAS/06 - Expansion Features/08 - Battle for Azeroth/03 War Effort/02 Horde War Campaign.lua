-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(WAR_EFFORT, {
		n(WAR_CAMPAIGN_HORDE, {
			["races"] = HORDE_ONLY,
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(12509, {	-- Ready for War
						["races"] = HORDE_ONLY,
						["maps"] = { THE_GREAT_SEAL, HALL_OF_CHRONICLERS, DAZARALOR },	-- Dazar'alor
						["groups"] = {
							crit(40200, {	-- Drustvar Foothold
								["sourceQuests"] = { 51985 },	-- Return to Zuldazar (Drustvar Foothold)
							}),
							crit(40453, {	-- Tiragarde Sound Foothold
								["sourceQuests"] = { 51984 },	-- Return to Zuldazar (Tiragarde Sound Foothold)
							}),
							crit(40509, {	-- Stormsong Valley Foothold
								["sourceQuests"] = { 51986 },	-- Return to Zuldazar (Stormsong Valley Foothold)
							}),
							crit(40454, {	-- The First Assault
								["sourceQuests"] = { 51601 },	-- The Bridgeport Ride
							}),
							crit(40510, {	-- The Marshal's Grave
								["sourceQuests"] = { 51789 },	-- What Remains of Marshal M. Valentine
							}),
							crit(40511, {	-- Death of a Tidesage
								["sourceQuests"] = { 52122 },	-- To Be Forsaken
							}),
							crit(40867, {	-- At the Bottom of the Sea
								["sourceQuests"] = { 52978 },	-- With Prince in Tow
							}),
							crit(40868, {	-- The Strike on Boralus
								["sourceQuests"] = { 53003 },	-- A Cycle of Hatred
							}),
						},
					}),
					ach(13466, {	-- Tides of Vengeance
						["races"] = HORDE_ONLY,
						["timeline"] = { ADDED_8_1_5 },
						["groups"] = {
							crit(44256, {	-- The Day is Won
								["sourceQuests"] = { 53981 },	-- The Day is Won
							}),
							crit(44259, {	-- Mekkatorque's Battle Plans
								["sourceQuests"] = { 54022 },	-- Mekkatorque's Battle Plans
							}),
							crit(44257, {	-- Through the Front Door
								["sourceQuests"] = { 54179 },	-- Through the Front Door
							}),
							crit(44258, {	-- Fly Out to Meet Them
								["sourceQuests"] = { 54280 },	-- Fly Out to Meet Them
							}),
						},
					}),
					h(ach(13924, {	-- The Fourth War
						["sourceQuests"] = {
							57095,	-- Old Soldier
							57152,	-- Most Loyal
						},
						["sym"] = {{"meta_achievement",
							12509,	-- Ready for War
							13466,	-- Tides of Vengeance
						}},
						["timeline"] = { ADDED_8_2_5 },
						["groups"] = {
							title(412),	-- Veteran of the Fourth War
						},
					})),
				}),
				n(REWARDS, {
					["description"] = "You'll be offered these rewards at the end of your first foothold.",
					["groups"] = {
						-- 163 = azerite; 175 = azewrong
						-- Cloth
						i(163664),	-- Honorbound Artificer's Robes
						i(163666),	-- Honorbound Artificer's Mantle
						i(163667),	-- Honorbound Artificer's Skullcap
						i(175396),	-- Honorbound Artificer's Robes
						i(175398),	-- Honorbound Artificer's Mantle
						i(175399),	-- Honorbound Artificer's Skullcap
						-- Leather
						i(163668),	-- Honorbound Outrider's Mantle
						i(163669),	-- Honorbound Outrider's Faceguard
						i(163671),	-- Honorbound Outrider's Vestments
						i(175400),	-- Honorbound Outrider's Mantle
						i(175401),	-- Honorbound Outrider's Faceguard
						i(175403),	-- Honorbound Outrider's Vestments
						-- Mail
						i(163665),	-- Honorbound Vanguard's Chainmail
						i(163672),	-- Honorbound Vanguard's Helm
						i(163670),	-- Honorbound Vanguard's Pauldrons
						i(175397),	-- Honorbound Vanguard's Chainmail
						i(175404),	-- Honorbound Vanguard's Helm
						i(175402),	-- Honorbound Vanguard's Pauldrons
						-- Plate
						i(163675),	-- Honorbound Centurion's Breastplate
						i(163674),	-- Honorbound Centurion's Helmet
						i(163673),	-- Honorbound Centurion's Pauldrons
						i(175407),	-- Honorbound Centurion's Breastplate
						i(175406),	-- Honorbound Centurion's Helmet
						i(175405),	-- Honorbound Centurion's Pauldrons
					},
				}),
				n(QUESTS, {
					q(53602, {	-- Adapting Our Tactics
						["provider"] = { "n", 143913 },	-- Eitrigg
						["coord"] = { 58.5, 62.7, ZULDAZAR },
						["description"] = "Must unlock at least one foothold on Kul Tiras to get this quest.",
						["races"] = HORDE_ONLY,
					}),
					q(52749, {	-- The War Campaign
						["provider"] = { "n", 120170 },	-- Nathanos Blightcaller
						["coord"] = { 40.1, 69.4, HALL_OF_CHRONICLERS },
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(52746, {	-- The War Cache
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 52749 },	-- The War Campaign
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(53333, {	-- Time for War
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 52746 },	-- The War Cache
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(51770, {	-- Mission from the Warchief
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 53333 },	-- Time for War
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
						["groups"] = {
							follower(1065),	-- Arcanist Valtrois
						},
					}),
					q(51771, {	-- War of Shadows
						["provider"] = { "n", 138708 },	-- Garona Halforcen
						["sourceQuests"] = { 51770 },	-- Mission from the Warchief
						["coords"] = {
							{ 58.4, 62.6, ZULDAZAR },
							{ 51.7, 99.6, DAZARALOR },
						},
						["races"] = HORDE_ONLY,
					}),
					q(53079, {	-- Reinforcements
						["provider"] = { "n", 138708 },	-- Garona Halforceen
						["sourceQuests"] = { 51771 },	-- War of Shadows
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(51803, {	-- The Kul Tiras Campaign
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
					--	["sourceQuests"] = { 51770 },	-- Mission from the Warchief -- NOTE: this SQ is not needed as of 31.December.2019
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(53050, {	-- Deeper Into Kul Tiras
						["description"] = "Automatically starts when you finish your first Foothold in Kul Tiras.",
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
					}),
					q(51979, {	-- The Ongoing Campaign
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 51771 },	-- War of Shadows
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(53056, {	-- Pushing Our Influence
						["description"] = "Automatically starts when you finish your second Foothold in Kul Tiras.",
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(52444, {	-- The Final Foothold
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 53056 },	-- Pushing Our Influence
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					header(HEADERS.AchCriteria, 12509.01, {	-- Drustvar Foothold
						q(51801, {	-- Foothold: Drustvar
							["provider"] = { "n", 144630 },	-- Kul Tiras Campaign (Table)
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51332, {	-- A Trip Across the Ocean
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51801 },	-- Foothold: Drustvar
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51340, {	-- Drustvar Ho!
							["provider"] = { "n", 136683 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 51332 },	-- A Trip Across the Ocean
							["coord"] = { 58.5, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51224, {	-- Profit and Reconnaissance
							["provider"] = { "n", 136725 },	-- Eitrigg
							["sourceQuests"] = { 51340 },	-- Drustvar Ho!
							["coord"] = { 20.8, 43.8, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51231, {	-- Wiccaphobia
							["provider"] = { "n", 136725 },	-- Eitrigg
							["sourceQuests"] = { 51224 },	-- Profit and Reconnaissance
							["coord"] = { 32.3, 54.6, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51233, {	-- I Hope There's No Witches in the Mountains
							["provider"] = { "n", 136683 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 51231 },	-- Wiccaphobia
							["coord"] = { 32.4, 54.6, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51234, {	-- Krazzlefrazz Outpost
							["provider"] = { "n", 137613 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 51233 },	-- I Hope There's No Witches in the Mountains
							["coord"] = { 36.9, 27.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51987, {	-- Champion: Hobart Grapplehammer
							["provider"] = { "n", 137613 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 51234 },	-- Krazzlefrazz Outpost
							["coord"] = { 36.9, 27.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								follower(1068),	-- Hobart Grapplehammer
							},
						}),
						q(51985, {	-- Return to Zuldazar (Drustvar Foothold)
							["provider"] = { "n", 136683 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 51987 },	-- Champion: Hobart Grapplehammer
							["coord"] = { 37.2, 27.0, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 12509.03, {	-- Stormsong Valley Foothold
						q(51802, {	-- Foothold: Stormsong Valley
							["provider"] = { "n", 144630 },	-- Kul Tiras Campaign (Table)
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51526, {	-- The Warlord's Call
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51802 },	-- Foothold: Stormsong Valley
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51532, {	-- Storming In
							["provider"] = { "n", 138352 },	-- High Warlord Cromush
							["sourceQuests"] = { 51526 },	-- The Warlord's Call
							["coord"] = { 58.5, 62.5, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51643, {	-- A Wall of Iron
							["provider"] = { "n", 138365 },	-- High Warlord Cromush
							["sourceQuests"] = { 51532 },	-- Storming In
							["coord"] = { 51.1, 21.1, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51536, {	-- On the Hunt
							["provider"] = { "n", 138365 },	-- High Warlord Cromush
							["sourceQuests"] = { 51643 },	-- A Wall of Iron
							["coord"] = { 51.1, 21.1, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51587, {	-- Onward!
							["provider"] = { "n", 138131 },	-- Rexxar
							["sourceQuests"] = { 51536 },	-- On the Hunt
							["coord"] = { 50.4, 26.2, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51674, {	-- Douse the Flames
							["provider"] = { "n", 138677 },	-- Rexxar
							["sourceQuests"] = { 51587 },	-- Onward!
							["coord"] = { 51.7, 29.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160565),	-- Fading Umbral Wand (QI!)
							},
						}),
						q(51675, {	-- Hunt Them Down
							["provider"] = { "n", 138688 },	-- Centurion Kaga Warmstone
							["sourceQuests"] = { 51587 },	-- Onward!
							["coord"] = { 51.7, 29.8, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51691, {	-- Almost Worth Saving
							["provider"] = { "n", 138688 },	-- Centurion Kaga Warmstone
							["sourceQuests"] = { 51587 },	-- Onward!
							["coord"] = { 51.7, 29.8, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51696, {	-- Reclaiming What's Ours
							["provider"] = { "n", 138867 },	-- Rexxar
							["sourceQuests"] = {
								51674,	-- Douse the Flames
								51675,	-- Hunt Them Down
								51691,	-- Almost Worth Saving
							},
							["coord"] = { 49.3, 34.3, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51753, {	-- Champion: Rexxar
							["provider"] = { "n", 138876 },	-- Rexxar
							["sourceQuests"] = { 51696 },	-- Reclaiming What's Ours
							["coord"] = { 52.1, 33.7, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
							["groups"] = {
								follower(1069),	-- Rexxar
							},
						}),
						q(51986, {	-- Return to Zuldazar (Stormsong Valley Foothold)
							["provider"] = { "n", 138876 },	-- Rexxar
							["sourceQuests"] = { 51753 },	-- Champion: Rexxar
							["coord"] = { 52.1, 33.7, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 12509.02, {	-- Tiragarde Sound Foothold
						q(51800, {	-- Foothold: Tiragarde Sound
							["provider"] = { "n", 144630 },	-- Kul Tiras Campaign (Table)
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51421, {	-- Shiver Me Timbers
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51800 },	-- Foothold: Tiragarde Sound
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51435, {	-- Swashbuckling in Style
							["provider"] = { "n", 137675 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51421 },	-- Shiver Me Timbers
							["coord"] = { 89.3, 53.4, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51436, {	-- Parleyin' Wit Pirates
							["provider"] = { "n", 137675 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51435 },	-- Swashbuckling in Style
							["coord"] = { 89.3, 53.4, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51437, {	-- Spike the Punch
							["provider"] = { "n", 137727 },	-- First Mate Owings
							["sourceQuests"] = { 51436 },	-- Parleyin' Wit Pirates
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51439, {	-- Cannonball Collection
							["provider"] = { "n", 137742 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51436 },	-- Parleyin' Wit Pirates
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160260),	-- Fogsail Cannonball (QI!)
							},
						}),
						q(51440, {	-- A Change in Direction
							["provider"] = { "n", 137727 },	-- First Mate Owings
							["sourceQuests"] = {
								51437,	-- Spike the Punch
								51439,	-- Cannonball Collection
							},
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51441, {	-- Thar She Blows!
							["provider"] = { "n", 137742 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = {
								51437,	-- Spike the Punch
								51439,	-- Cannonball Collection
							},
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160405),	-- Goblin-Engineered Hand Cannon (QI!)
							},
						}),
						q(51442, {	-- I'm the Captain Now
							["provider"] = { "n", 137727 },	-- First Mate Owings
							["sourceQuests"] = {
								51440,	-- A Change in Direction
								51441,	-- Thar She Blows!
							},
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51438, {	-- Marking Our Territory
							["provider"] = { "n", 137742 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51442 },	-- I'm the Captain Now
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51975, {	-- Champion: Shadow Hunter Ty'jin
							["provider"] = { "n", 137742 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51438 },	-- Marking Our Territory
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								follower(1072),	-- Shadow Hunter Ty'jin
							},
						}),
						q(51984, {	-- Return to Zuldazar (Tiragarde Foothold)
							["provider"] = { "n", 137742 },	-- Shadow Hunter Ty'jin
							["sourceQuests"] = { 51975 },	-- Champion: Shadow Hunter Ty'jin
							["coord"] = { 87.3, 50.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
					}),
					-- Unlocking the Worldquests
					q(53064, {	-- A Mission of Unity
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = {
							51985,	-- Return to Zuldazar (Drustvar Foothold)
							51986,	-- Return to Zuldazar (Stormsong Valley Foothold)
							51984,	-- Return to Zuldazar (Tiragarde Foothold)
						},
						["races"] = HORDE_ONLY,
						["isBreadcrumb"] = true,
						["DisablePartySync"] = true,
					}),
					q(51916, {	-- Uniting Zandalar		(Also grants credit for the two Alliance Quests "Uniting Kul Tiras" (ID 51918 & ID 52450))
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = {
							51985,	-- Return to Zuldazar (Drustvar Foothold)
							51986,	-- Return to Zuldazar (Stormsong Valley Foothold)
							51984,	-- Return to Zuldazar (Tiragarde Foothold)
							53064,	-- A Mission of Unity
						},
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["description"] = "This version of the quest is offered to the first character on your account to reach Friendly with Zandalari Empire, Talanji's Expedition, and Voldunai. Your alts will get a different quest with the same name when they reach level 120, but all characters get credit for both quests.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(141605, {	-- Flight Master Whistle
								["modID"] = 11,
							}),
						},
					}),
					q(52451, {	-- Uniting Zandalar		(Also grants credit for the two Alliance Quests "Uniting Kul Tiras" (ID 51918 & ID 52450))
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["description"] = "This version of the quest is offered to alts that share an account with a character that already completed the original 'Uniting Zandalar.' All characters get credit for both quests.",
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(141605, {	-- Flight Master Whistle
								["modID"] = 11,
							}),
						},
					}),
					header(HEADERS.AchCriteria, 12509.04, {	-- First Assault
						q(51589, {	-- Breaking Kul Tiran Will
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								51985,	-- Return to Zuldazar (Drustvar Foothold)
								51986,	-- Return to Zuldazar (Stormsong Valley Foothold)
								51984,	-- Return to Zuldazar (Tiragarde Foothold)
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51590, {	-- Into the Heart of Tiragarde
							["provider"] = { "n", 138285 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51589 },	-- Breaking Kul Tiran Will
							["coord"] = { 87.0, 50.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51591, {	-- Our Mountain Now
							["provider"] = { "n", 138285 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51590 },	-- Into the Heart of Tiragarde
							["coord"] = { 71.2, 50.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51592, {	-- Making Ourselves at Home
							["provider"] = { "n", 138285 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51591 },	-- Our Mountain Now
							["coord"] = { 72.0, 51.8, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o_repeated({
									i(160511),	-- Length of Chain (QI!)
									o(290708),	-- Anchor Chains
									o(290711),	-- Anchor Chain
								}),
								o_repeated({
									i(160512),	-- Sail Canvas (QI!)
									o(290709),	-- Crate of Canvas
									o(290710),	-- Canvas Bolt
								}),
							},
						}),
						q(51593, {	-- Bridgeport Investigation
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51591 },	-- Our Mountain Now
							["coord"] = { 72.0, 51.8, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51594, {	-- Explosives in the Foundry
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = {
								51592,	-- Making Ourselves at Home
								51593,	-- Bridgeport Investigation
							},
							["coord"] = { 72.0, 51.8, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51595, {	-- Explosivity
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51594 },	-- Explosives in the Foundry
							["coord"] = { 77.5, 49.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51596, {	-- Ammunition Acquisition
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51595 },	-- Explosivity
							["coord"] = { 77.5, 49.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o(290776, {	-- Gunpowder Crate
									i(160555),	-- Ashvane Explosives (QI!)
								}),
							},
						}),
						q(51597, {	-- Gunpowder Research
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51595 },	-- Explosivity
							["coord"] = { 77.5, 49.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160553),	-- Ashvane Explosives Formula (QI!)
								i(160552),	-- Gunpowder Manufacturing Guide (QI!)
							},
						}),
						q(51598, {	-- A Bit of Chaos
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51595 },	-- Explosivity
							["coord"] = { 77.5, 49.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51599, {	-- Death Trap
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = {
								51596,	-- Ammunition Acquisition
								51597,	-- Gunpowder Research
								51598,	-- A Bit of Chaos
							},
							["coord"] = { 77.5, 49.9, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(51601, {	-- The Bridgeport Ride
							["provider"] = { "n", 138287 },	-- Lilian Voss
							["sourceQuests"] = { 51599 },	-- Death Trap
							["coord"] = { 77.0, 49.2, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 12509.05, {	-- The Marshal's Grave
						q(53065, {	-- Operation: Grave Digger
							-- ["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51601 },	-- The Bridgeport Ride
							["description"] = "Relog (outside of Dazar'alor) if this doesn't appear upon hitting the reputation requirement",
							["minReputation"] = { FACTION_THE_HONORBOUND, FRIENDLY+4500 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(51784, {	-- A Stroll Through a Cemetery
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								53065,	-- Operation: Grave Digger
								51601,	-- The Bridgeport Ride
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51785, {	-- Examining the Epitaphs
							["provider"] = { "n", 139061 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51784 },	-- A Stroll Through a Cemetery
							["coord"] = { 61.4, 51.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51786, {	-- State of Unrest
							["provider"] = { "n", 139061 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51784 },	-- A Stroll Through a Cemetery
							["coord"] = { 61.4, 51.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(51787, {	-- Our Lot in Life
							["provider"] = { "n", 139062 },	-- Lilian Voss
							["sourceQuests"] = { 51784 },	-- A Stroll Through a Cemetery
							["coord"] = { 61.3, 51.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o(273537, {	-- Gravebloom
									i(152480),	-- Gravebloom (QI!)
								}),
							},
						}),
						q(51788, {	-- The Crypt Keeper
							["provider"] = { "n", 139061 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								51785,	-- Examining the Epitaphs
								51786,	-- State of Unrest
								51787,	-- Our Lot in Life
							},
							["coord"] = { 61.4, 51.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160736),	-- Valentine's Key (QI!)
							},
						}),
						q(51789, {	-- What Remains of Marshal M. Valentine
							["provider"] = { "n", 139061 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51788 },	-- The Crypt Keeper
							["coord"] = { 61.4, 51.1, DRUSTVAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o(291277, {	-- Valentine's Log
									["coord"] = { 61.1, 49, DRUSTVAR },
									["groups"] = { i(160939) }
								}),
							},
						}),
					}),
					header(HEADERS.AchCriteria, 12509.06, {	-- Death of a Tidesage
						q(53066, {	-- Operation: Water Wise
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 51789 },	-- What Remains of Marshal M. Valentine
							["description"] = "Relog (outside of Dazar'alor) if this doesn't appear upon hitting the reputation requirement",
							["minReputation"] = { FACTION_THE_HONORBOUND, HONORED+3000 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,	-- were these removed?  it used to be automatically offered upon meeting a rep requirement, but it didn't pop up for me even though i already had the reputation
							["DisablePartySync"] = true,
							-- Popped for me upon earning the rep requirement (ShadowBrooks - Feb 22, 2025)
						}),
						q(51797, {	-- Tracking Tidesages
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								53066,	-- Operation: Water Wise
								51789,	-- What Remains of Marshal M. Valentine
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(51798, {	-- No Price Too High
							["provider"] = { "n", 138876 },	-- Rexxar
							["sourceQuests"] = { 51797 },	-- Tracking Tidesages
							["coord"] = { 52.1, 33.7, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51805, {	-- They Will Know Fear
							["provider"] = { "n", 139101 },	-- Lilian Voss
							["sourceQuests"] = { 51798 },	-- No Price Too High
							["coord"] = { 62.6, 31.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160901),	-- Val'kyr Horn (QI!)
							},
						}),
						q(51818, {	-- Commander and Captain
							["provider"] = { "n", 139098 },	-- Thomas Zelling
							["sourceQuests"] = { 51798 },	-- No Price Too High
							["coord"] = { 62.6, 31.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(160745),	-- Book of Forbidden Magics (QI!)
							},
						}),
						q(51819, {	-- Scattering Our Enemies
							["provider"] = { "n", 139102 },	-- Rexxar
							["sourceQuests"] = { 51798 },	-- No Price Too High
							["coord"] = { 62.7, 31.8, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51830, {	-- Zelling's Potential
							["provider"] = { "n", 139098 },	-- Thomas Zelling
							["sourceQuests"] = {
								51805,	-- They Will Know Fear
								51818,	-- Commander and Captain
								51819,	-- Scattering Our Enemies
							},
							["coord"] = { 62.6, 31.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(51837, {	-- Whatever Will Be
							["provider"] = { "n", 139101 },	-- Lilian Voss
							["sourceQuests"] = { 51830 },	-- Zelling's Potential
							["coord"] = { 62.6, 31.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
						q(52122, {	-- To Be Forsaken
							["provider"] = { "n", 139101 },	-- Lilian Voss
							["sourceQuests"] = { 51837 },	-- Whatever Will Be
							["coord"] = { 62.6, 31.9, STORMSONG_VALLEY },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 12509.07, {	-- At the Bottom of the Sea
						q(53067, {	-- Operation: Bottom Feeder
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52122 },	-- To Be Forsaken
							["description"] = "Relog (outside of Dazar'alor) if this doesn't appear upon hitting the reputation requirement",
							["minReputation"] = { FACTION_THE_HONORBOUND, HONORED+7500 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,	-- were these removed?  it used to be automatically offered upon meeting a rep requirement, but it didn't pop up for me even though i already had the reputation
							["DisablePartySync"] = true,
							-- Popped for me upon earning the rep requirement (ShadowBrooks - Feb 22, 2025)
						}),
						q(52764, {	-- Journey to the Middle of Nowhere
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								53067,	-- Operation: Bottom Feeder
								52122,	-- To Be Forsaken
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(52765, {	-- Deep Dive
							["provider"] = { "n", 141644 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52764 },	-- Journey to the Middle of Nowhere
							["coord"] = { 40.4, 67.2, 1157 },
							["races"] = HORDE_ONLY,
						}),
						q(52766, {	-- Seafloor Shipwreck
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52765 },	-- Deep Dive
							["coord"] = { 41.6, 67.4, 1157 },
							["races"] = HORDE_ONLY,
						}),
						q(52767, {	-- Checking Dog Tags
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52766 },	-- Seafloor Shipwreck
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52768, {	-- The Sunken Graveyard
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52767 },	-- Checking Dog Tags
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52769, {	-- Captain By Captain
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52768 },	-- The Sunken Graveyard
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52770, {	-- Biolumi-Nuisance
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52768 },	-- The Sunken Graveyard
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52772, {	-- The Undersea Ledge
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = {
								52769,	-- Captain By Captain
								52770,	-- Biolumi-Nuisance
							},
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52773, {	-- Water-Breathing Dragon
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52772 },	-- The Undersea Ledge
							["maps"] = { 1157 },	-- The Great Sea
							["races"] = HORDE_ONLY,
						}),
						q(52774, {	-- Grab and Go
							["provider"] = { "n", 141645 },	-- Hobart Grapplehammer
							["sourceQuests"] = { 52773 },	-- Water-Breathing Dragon
							["coord"] = { 41.6, 67.4, 1157 },
							["races"] = HORDE_ONLY,
						}),
						q(53121, {	-- Siege of Boralus
							["provider"] = { "n", 141654 },	-- Lilian Voss
							["sourceQuests"] = { 52774 },	-- Grab and Go
							["coord"] = { 41.4, 66.6, 1157 },
							["description"] = "This quest can only be completed by one character per account.",
							["races"] = HORDE_ONLY,
						}),
						q(52978, {	-- With Prince in Tow
							["provider"] = { "n", 141644 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52774 },	-- Grab and Go
							["coord"] = { 40.4, 67.2, 1157 },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 12509.08, {	-- The Strike on Boralus
						q(53068, {	-- Operation: Hook and Line
							["provider"] = { "n", 141644 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52978 },	-- With Prince in Tow
							["description"] = "Relog (outside of Dazar'alor) if this doesn't appear upon hitting the reputation requirement",
							["minReputation"] = { FACTION_THE_HONORBOUND, REVERED },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(52183, {	-- When a Plan Comes Together
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								53068,	-- Operation: Hook and Line
								52978,	-- With Prince in Tow
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(52186, {	-- The Bulk of the Guard
							["provider"] = { "n", 140485 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52183 },	-- When a Plan Comes Together
							["coord"] = { 86.9, 53.1, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(52187, {	-- Old Colleagues
							["provider"] = { "n", 140484 },	-- Captain Amalia Stone
							["sourceQuests"] = { 52183 },	-- When a Plan Comes Together
							["coord"] = { 87.0, 53.1, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(52185, {	-- A Well Placed Portal
							["provider"] = { "n", 140485 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								52187,	-- Old Colleagues
								52186,	-- The Bulk of the Guard
							},
							["coord"] = { 86.9, 53.1, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(52184, {	-- Relics of Ritual
							["provider"] = { "n", 140487 },	-- Thomas Zelling
							["sourceQuests"] = { 52185 },	-- A Well Placed Portal
							["coord"] = { 71.0, 84.8, BORALUS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(161336),	-- Compass of Clarity (QI!)
								i(161335),	-- Curio of the Depths (QI!)
								i(161334),	-- Key of the Sea (QI!)
							},
						}),
						q(52188, {	-- Tidesage Teachings
							["provider"] = { "n", 140487 },	-- Thomas Zelling
							["sourceQuests"] = { 52185 },	-- A Well Placed Portal
							["coord"] = { 71.0, 84.8, BORALUS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(162106),	-- Tome of Tidesage Research (QI!)
							},
						}),
						q(52189, {	-- Forfeit Souls
							["provider"] = { "n", 140487 },	-- Thomas Zelling
							["sourceQuests"] = { 52185 },	-- A Well Placed Portal
							["coord"] = { 71.0, 84.8, BORALUS },
							["races"] = HORDE_ONLY,
						}),
						q(52190, {	-- Gaining the Upper Hand
							["provider"] = { "n", 140487 },	-- Thomas Zelling
							["sourceQuests"] = {
								52184,	-- Relics of Ritual
								52188,	-- Tidesage Teachings
								52189,	-- Forfeit Souls
							},
							["coord"] = { 71.0, 84.8, BORALUS },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o(293901, {	-- Abyssal Scepter
									["coord"] = { 71.2, 82.4, BORALUS },
									["groups"] = { i(162579) },	-- Abyssal Scepter (QI!)
								}),
							},
						}),
						q(52990, {	-- Return to the Harbor
							["provider"] = { "n", 141602 },	-- Thomas Zelling
							["sourceQuests"] = { 52190 },	-- Gaining the Upper Hand
							["maps"] = { BORALUS },
							["races"] = HORDE_ONLY,
						}),
						q(52191, {	-- Life Held Hostage
							["provider"] = { "n", 140485 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52990 },	-- Return to the Harbor
							["coord"] = { 86.9, 53.1, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(52192, {	-- The Aid of the Tides
							["provider"] = { "n", 140485 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52191 },	-- Life Held Hostage
							["coord"] = { 86.9, 53.1, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(52861, {	-- Champion: Lilian Voss
							["provider"] = { "n", 141961 },	-- Lilian Voss
							["sourceQuests"] = { 52192 },	-- The Aid of the Tides
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								follower(1062),	-- Lilian Voss
							},
						}),
						q(53003, {	-- A Cycle of Hatred
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 52192 },	-- The Aid of the Tides
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
					}),
				}),
				n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_0 } }, {
					q(54097, {	-- The Dark Lady Calls
						["provider"] = { "n", 146013 },	-- Dark Ranger Alina
						["sourceQuests"] = { 54165 },	-- The Return of Derek Proudmoore
						["coord"] = { 58.4, 62.7, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(54099, {	-- The High Overlord
						["provider"] = { "n", 146654 },	-- Lady Sylvanas Windrunner
						["sourceQuests"] = { 54097 },	-- The Dark Lady Calls
						["coord"] = { 48.3, 71.2, ORGRIMMAR },
						["races"] = HORDE_ONLY,
					}),
					q(54100, {	-- A Way Out
						["provider"] = { "n", 146654 },	-- Lady Sylvanas Windrunner
						["sourceQuests"] = { 54099 },	-- The High Overlord
						["coord"] = { 48.3, 71.0, ORGRIMMAR },
						["races"] = HORDE_ONLY,
					}),
					q(54101, {	-- On Track
						["provider"] = { "n", 146010 },	-- Dark Ranger Lyana
						["sourceQuests"] = { 54100 },	-- A Way Out
						["coord"] = { 30.5, 57.6, ELWYNN_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(54102, {	-- Eastern Escape
						["provider"] = { "n", 146791 },	-- Dark Ranger
						["sourceQuests"] = { 54101 },	-- On Track
						["coord"] = { 34.5, 63.3, ELWYNN_FOREST },
						["races"] = HORDE_ONLY,
					}),
					q(54103, {	-- Corner Crossing
						["provider"] = { "n", 146806 },	-- Dark Ranger Lyana
						["sourceQuests"] = { 54102 },	-- Eastern Escape
						["coord"] = { 11.3, 66.8, REDRIDGE_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["groups"] = { i(165638) },	-- Humanizing Potion (QI!)
					}),
					q(54104, {	-- Signs of Saurfang
						["provider"] = { "n", 146937 },	-- Dark Ranger
						["sourceQuests"] = { 54103 },	-- Corner Crossing
						["coord"] = { 25.9, 39.8, REDRIDGE_MOUNTAINS },
						["races"] = HORDE_ONLY,
					}),
					q(54105, {	-- Ever Eastward
						["provider"] = { "n", 146937 },	-- Dark Ranger
						["sourceQuests"] = { 54104 },	-- Signs of Saurfang
						["coord"] = { 29.0, 68.1, REDRIDGE_MOUNTAINS },
						["races"] = HORDE_ONLY,
					}),
					q(54106, {	-- Tracking Tipoff
						["provider"] = { "n", 147210 },	-- Dark Ranger Lyana
						["sourceQuests"] = { 54105 },	-- Ever Eastward
						["coord"] = { 80.6, 46.9, REDRIDGE_MOUNTAINS },
						["races"] = HORDE_ONLY,
						["groups"] = { i(165638) },	-- Humanizing Potion (QI!)
					}),
					q(54754, {	-- For the Queen
						["altQuests"] = { 54107 },	-- Grim Tidings
						["sourceQuests"] = { 54106 },	-- Tracking Tipoff
						["coord"] = { 81.4, 52.4, REDRIDGE_MOUNTAINS },
						["description"] = "Your options are remaining loyal to Sylvanas or betraying her to help Saurfang.  |cfffd1818You can only get the \"Worn Cloak\" toy if you betray Sylvanas.|r\n\nTo help Sylvanas, choose \"I won't betray my Warchief, Troll.\" when you speak to Zekhan.\n\nTo help Saurfang, pick up the quest \"Grim Tidings\".\n",
						["races"] = HORDE_ONLY,
					}),
					q(54107, {	-- Grim Tidings
						["provider"] = { "n", 146012 },	-- Zekhan
						["altQuests"] = { 54754 },	-- For the Queen
						["sourceQuests"] = { 54106 },	-- Tracking Tipoff
						["coord"] = { 81.4, 52.4, REDRIDGE_MOUNTAINS },
						["description"] = "Your options are remaining loyal to Sylvanas or betraying her to help Saurfang.  |cfffd1818You can only get the \"Worn Cloak\" toy if you betray Sylvanas.|r\n\nTo help Sylvanas, choose \"I won't betray my Warchief, Troll.\" when you speak to Zekhan.\n\nTo help Saurfang, pick up the quest \"Grim Tidings\".\n",
						["races"] = HORDE_ONLY,
					}),
					q(54108, {	-- A Warrior's Death
						["provider"] = { "n", 147297 },	-- Zekhan
						["altQuests"] = { 54754 },	-- For the Queen
						["sourceQuests"] = { 54107 },	-- Grim Tidings
						["coord"] = { 79.7, 74.7, SWAMP_OF_SORROWS },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(165791),	-- Worn Cloak (TOY!)
						},
					}),
					q(54109, {	-- Queen's Favor
						["provider"] = { "n", 146011 },	-- Varok Saurfang
						["altQuests"] = { 54754 },	-- For the Queen
						["sourceQuests"] = { 54108 },	-- A Warrior's Death
						["coord"] = { 80.8, 78.7, SWAMP_OF_SORROWS },
						["races"] = HORDE_ONLY,
					}),
				})),
				n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_1_5 } }, {
					header(HEADERS.AchCriteria, 13466.01, {	-- The Day is Won
						q(53850, {	-- Our War Continues
							["provider"] = { "n", 134711 },	-- Lady Sylvanas Windrunner
							["sourceQuests"] = { 53003 },	-- A Cycle of Hatred
							["coord"] = { 48.4, 71.4, ORGRIMMAR },
							["races"] = HORDE_ONLY,
							["groups"] = { i(164778) },	-- Abyssal Scepter (QI!)
						}),
						q(53851, {	-- Our War Continues
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 53003 },	-- A Cycle of Hatred
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
							["groups"] = { i(164778) },	-- Abyssal Scepter (QI!)
						}),
						q(53852, {	-- Azerite Denied
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = {
								53850,	-- Our War Continues
								53851,	-- Our War Continues
							},
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
							["groups"] = { i(164778) },	-- Abyssal Scepter (QI!)
						}),
						q(53856, {	-- The Fury of the Horde
							["provider"] = { "n", 145422 },	-- Rexxar
							["sourceQuests"] = { 53852 },	-- Azerite Denied
							["coord"] = { 47.5, 21.8, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = { i(164778) },	-- Abyssal Scepter (QI!)
						}),
						q(53879, {	-- Cleaning Out the Estate
							["qgs"] = {
								145422,	-- Rexxar
								146462,	-- Rexxar
							},
							["sourceQuests"] = { 53856 },	-- The Fury of the Horde
							["coord"] = { 48.9, 25.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(53880, {	-- Machines of War and Azerite
							["qgs"] = {
								145423,	-- Thomas Zelling
								146466,	-- Thomas Zelling
							},
							["sourceQuests"] = { 53856 },	-- The Fury of the Horde
							["coord"] = { 48.9, 25.0, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(164778),	-- Abyssal Scepter (QI!)
								o(307683, {	-- Azerite Bombs
									["coords"] = {
										{ 49.3, 25.4, TIRAGARDE_SOUND },
										{ 49.7, 26.2, TIRAGARDE_SOUND },
										{ 49.8, 25.4, TIRAGARDE_SOUND },
										{ 50.6, 25.2, TIRAGARDE_SOUND },
										{ 50.6, 26.5, TIRAGARDE_SOUND },
										{ 50.7, 27.9, TIRAGARDE_SOUND },
										{ 51.3, 26.1, TIRAGARDE_SOUND },
										{ 51.6, 28.0, TIRAGARDE_SOUND },
										{ 51.7, 27.0, TIRAGARDE_SOUND },
									},
									["groups"] = { i(164917) },	-- Azerite Bomb Cluster (QI!)
								}),
								o(310513, {	-- Azerite Weapon Cache
									["coords"] = {
										{ 49.9, 26.7, TIRAGARDE_SOUND },
										{ 50.0, 25.8, TIRAGARDE_SOUND },
										{ 50.4, 28.3, TIRAGARDE_SOUND },
										{ 50.6, 27.6, TIRAGARDE_SOUND },
										{ 50.8, 26.0, TIRAGARDE_SOUND },
										{ 50.8, 29.0, TIRAGARDE_SOUND },
										{ 51.3, 27.3, TIRAGARDE_SOUND },
										{ 51.5, 28.7, TIRAGARDE_SOUND },
										{ 51.8, 26.1, TIRAGARDE_SOUND },
										{ 52.4, 27.4, TIRAGARDE_SOUND },
									},
									["groups"] = { i(165225) },	-- Azerite Rifle (QI!)
								}),
							},
						}),
						q(53913, {	-- With Honor
							["provider"] = { "n", 146462 },	-- Rexxar
							["sourceQuests"] = {
								53879,	-- Cleaning Out the Estate
								53880,	-- Machines of War and Azerite
							},
							["maps"] = { TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(53912, {	-- The Hunt Never Ends
							["provider"] = { "n", 146462 },	-- Rexxar
							["sourceQuests"] = { 53913 },	-- With Honor
							["maps"] = { TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(53973, {	-- Ride Out to Meet Them
							["provider"] = { "n", 145422 },	-- Rexxar
							["sourceQuests"] = { 53912 },	-- The Hunt Never Ends
							["coord"] = { 53.0, 30.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(53981, {	-- The Day is Won
							["provider"] = { "n", 145422 },	-- Rexxar
							["sourceQuests"] = { 53973 },	-- Ride Out to Meet Them
							["coord"] = { 47.4, 21.8, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 13466.02, {	-- Mekkatorque's Battle Plans
						q(53941, {	-- A Mech for a Goblin
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 53981 },	-- The Day is Won
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54123, {	-- It Belongs in My Mech!
							["provider"] = { "n", 145751 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 53941 },	-- A Mech for a Goblin
							["coord"] = { 36.2, 72.0, ZULDAZAR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(166309),	-- Azerite Vacuumizer (QI!)
							},
						}),
						q(54124, {	-- Avoiding Lawsuits 101
							["provider"] = { "n", 148339 },	-- Patch
							["sourceQuests"] = { 53941 },	-- A Mech for a Goblin
							["coord"] = { 36.3, 72.0, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(53942, {	-- The Right Mech for the Job
							["provider"] = { "n", 145751 },	-- Trade Prince Gallywix
							["sourceQuests"] = {
								54123,	-- It Belongs in My Mech!
								54124,	-- Avoiding Lawsuits 101
							},
							["coord"] = { 36.2, 72.0, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54128, {	-- Necessary Precautions
							["provider"] = { "n", 145816 },	-- G.M.O.D.
							["sourceQuests"] = { 53942 },	-- The Right Mech for the Job
							["coord"] = { 37.3, 26.0, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(54004, {	-- Test Case #1; Mech vs. Mekkatorque
							["provider"] = { "n", 145816 },	-- G.M.O.D.
							["sourceQuests"] = { 54128 },	-- Necessary Precautions
							["coord"] = { 37.3, 26.0, DRUSTVAR },
							["races"] = HORDE_ONLY,
						}),
						q(54007, {	-- Insurance Policy
							["provider"] = { "n", 146073 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 54004 },	-- Test Case #1; Mech vs. Mekkatorque
							["coord"] = { 54.6, 64.6, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(54008, {	-- Insurance Renewal
							["provider"] = { "n", 146073 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 54007 },	-- Insurance Policy
							["coord"] = { 54.6, 64.6, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(54009, {	-- Killing on the Side
							["provider"] = { "n", 146073 },	-- Trade Prince Gallywix
							["sourceQuests"] = { 54007 },	-- Insurance Policy
							["coord"] = { 54.6, 64.6, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(54022, {	-- Mekkatorque's Battle Plans
							["provider"] = { "i", 164987 },	-- Alliance Battle Plans
							["sourceQuests"] = { 54007 },	-- Insurance Policy
							["maps"] = { TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(164987),	-- Alliance Battle Plans (QI!)
								o(309916, {	-- Mekkatorque's Battle Plans
									["coord"] = { 59.1, 61.8, TIRAGARDE_SOUND },
									["groups"] = { i(164989) },	-- Mekkatorque's Battle Plans (QI!)
								}),
							},
						}),
						q(54028, {	-- Mech versus Airship
							["provider"] = { "n", 146073 },	-- Trade Prince Gallywix
							["sourceQuests"] = {
								54008,	-- Insurance Renewal
								54009,	-- Killing on the Side
								54022,	-- Mekkatorque's Battle Plans
							},
							["coord"] = { 54.6, 64.6, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(54094, {	-- A Goblin's Definition of Success
							["provider"] = { "n", 146623 },	-- G.M.O.D.
							["sourceQuests"] = { 54028 },	-- Mech versus Airship
							["coord"] = { 87.6, 53.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
					}),
					header(HEADERS.AchCriteria, 13466.03, {	-- Through the Front Door
						q(54121, {	-- Breaking Out Ashvane
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 54094 },	-- A Goblin's Definition of Success
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54175, {	-- Face Your Enemy
							["provider"] = { "n", 147088 },	-- Arcanist Valtrois
							["sourceQuests"] = { 54121 },	-- Breaking Out Ashvane
							["coord"] = { 82.9, 49.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(165702),	-- Shard of Vesara (QI!)
							},
						}),
						q(54176, {	-- Be More Uniform
							["provider"] = { "n", 147088 },	-- Arcanist Valtrois
							["sourceQuests"] = { 54121 },	-- Breaking Out Ashvane
							["coord"] = { 82.9, 49.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(166293),	-- Barely Used Bracers (QI!)
								i(165697),	-- Captain's Overcoat (QI!)
								i(165698),	-- Proudmoore Equipment (QI!)
								i(166303),	-- Proper Hat (QI!)
								i(166296),	-- Scuffed Boot (QI!)
								i(166291),	-- Slightly Worn Hauberk (QI!)
								i(166302),	-- Well-Proportioned Pauldrons (QI!)
							},
						}),
						q(54177, {	-- A Brilliant Distraction
							["provider"] = { "n", 146931 },	-- Rexxar
							["sourceQuests"] = { 54121 },	-- Breaking Out Ashvane
							["coord"] = { 83.0, 49.6, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
							["groups"] = {
								o(311174, {	-- Volatile Azerite Weapons
									i(165690),	-- Volatile Azerite (QI!)
								})
							},
						}),
						q(54178, {	-- Catching a Ride
							["provider"] = { "n", 147088 },	-- Arcanist Valtrois
							["sourceQuests"] = {
								54175,	-- Face Your Enemy
								54176,	-- Be More Uniform
								54177,	-- A Brilliant Distraction
							},
							["coord"] = { 82.9, 49.5, TIRAGARDE_SOUND },
							["races"] = HORDE_ONLY,
						}),
						q(54179, {	-- Through the Front Door
							["provider"] = { "n", 147135 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 54178 },	-- Catching a Ride
							["coord"] = { 88.2, 50.8, TIRAGARDE_SOUND },
							["maps"] = {
								1349,	-- Tol Dagor (Scenario)
								1350,	-- Tol Dagor (Scenario)
								1351,	-- Tol Dagor (Scenario)
							},
							["races"] = HORDE_ONLY,
							["modID"] = 5,
							["groups"] = {
								i(165734),	-- Master Key
								i(163426),	-- Honorbound Artificer's Guise (Cloth)
								i(163424),	-- Honorbound Artificer's Amice (Cloth)
								i(163280),	-- Honorbound Artificer's Robes (Cloth)
								i(163435),	-- Honorbound Outrider's Headpiece (Leather)
								i(163432),	-- Honorbound Outrider's Shoulderguards (Leather)
								i(163283),	-- Honorbound Outrider's Tunic (Leather)
								i(163446),	-- Honorbound Vanguard's Skullguard (Mail)
								i(163441),	-- Honorbound Vanguard's Shoulderguards (Mail)
								i(163282),	-- Honorbound Vanguard's Chainmail (Mail)
								i(163456),	-- Honorbound Centurion's Greathelm (Plate)
								i(163453),	-- Honorbound Centurion's Shoulderplates (Plate)
								i(163459),	-- Honorbound Centurion's Breastplate (Plate)
							},
						}),
					}),
					header(HEADERS.AchCriteria, 13466.04, {	-- Fly Out to Meet Them
						q(54139, {	-- War Is Here
							["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 54179 },	-- Through the Front Door
							["coord"] = { 58.4, 62.6, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54140, {	-- Ride of the Zandalari
							["provider"] = { "n", 133050 },	-- Princess Talanji
							["sourceQuests"] = { 54139 },	-- War Is Here
							["coord"] = { 41.1, 66.5, HALL_OF_CHRONICLERS },
							["races"] = HORDE_ONLY,
						}),
						q(54156, {	-- A Path of Blood
							["provider"] = { "n", 147075 },	-- General Rakera
							["sourceQuests"] = { 54140 },	-- Ride of the Zandalari
							["coord"] = { 58.0, 21.3, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54157, {	-- No One Left Behind
							["provider"] = { "n", 146921 },	-- Princess Talanji
							["sourceQuests"] = { 54140 },	-- Ride of the Zandalari
							["coord"] = { 58.0, 21.3, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54207, {	-- Retaking the Outpost
							["provider"] = { "n", 147075 },	-- General Rakera
							["sourceQuests"] = {
								54156,	-- A Path of Blood
								54157,	-- No One Left Behind
							},
							["coord"] = { 58.0, 21.3, ZULDAZAR },
							["races"] = HORDE_ONLY,
						}),
						q(54208, {	-- Minesweeper
							["provider"] = { "n", 147145 },	-- Nathanos Blightcaller
							["sourceQuests"] = { 54207 },	-- Retaking the Outpost
							["coord"] = { 50.2, 78.4, NAZMIR },
							["classes"] = { ROGUE },
							["races"] = HORDE_ONLY,
						}),
						q(54211, {	-- Putting the Gob in Gob Squad
							["provider"] = { "n", 147155 },	-- Patch
							["sourceQuests"] = { 54207 },	-- Retaking the Outpost
							["coord"] = { 50.3, 78.4, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54212, {	-- Re-rebuilding the A.F.M.O.D.
							["provider"] = { "n", 147155 },	-- Patch
							["sourceQuests"] = { 54207 },	-- Retaking the Outpost
							["coord"] = { 50.3, 78.4, NAZMIR },
							["races"] = HORDE_ONLY,
							["groups"] = {
								i(165710),	-- A.F.M.O.D. Part (QI!)
							},
						}),
						q(54213, {	-- It's Alive!
							["provider"] = { "n", 147155 },	-- Patch
							["sourceQuests"] = {
								54211,	-- Putting the Gob in Gob Squad
								54212,	-- Re-rebuilding the A.F.M.O.D.
							},
							["coord"] = { 50.3, 78.4, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54224, {	-- The Battle of Zul'jan Ruins
							["provider"] = { "n", 146921 },	-- Princess Talanji
							["sourceQuests"] = { 54213 },	-- It's Alive!
							["coord"] = { 50.4, 78.5, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54244, {	-- We Have Them Cornered
							["provider"] = { "n", 146921 },	-- Princess Talanji
							["sourceQuests"] = { 54224 },	-- The Battle of Zul'jan Ruins
							["coord"] = { 39.3, 78.2, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54249, {	-- Zandalari Justice
							["provider"] = { "n", 146921 },	-- Princess Talanji
							["sourceQuests"] = { 54244 },	-- We Have Them Cornered
							["coord"] = { 30.9, 51.9, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54269, {	-- None Shall Escape
							["provider"] = { "n", 147075 },	-- General Rakera
							["sourceQuests"] = { 54244 },	-- We Have Them Cornered
							["coord"] = { 30.8, 51.8, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54270, {	-- Breaking Mirrors
							["provider"] = { "n", 147075 },	-- General Rakera
							["sourceQuests"] = { 54244 },	-- We Have Them Cornered
							["coord"] = { 30.8, 51.8, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54271, {	-- Telaamon's Purge
							["provider"] = { "n", 147233 },	-- Rokhan
							["sourceQuests"] = {
								54249,	-- Zandalari Justice
								54269,	-- None Shall Escape
								54270,	-- Breaking Mirrors
							},
							["coord"] = { 31.2, 46.8, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54275, {	-- Parting Mists
							["provider"] = { "n", 147233 },	-- Rokhan
							["sourceQuests"] = { 54271 },	-- Telaamon's Purge
							["coord"] = { 31.2, 46.8, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
						q(54280, {	-- Fly Out to Meet Them
							["provider"] = { "n", 147075 },	-- General Rakera
							["sourceQuests"] = { 54271 },	-- Telaamon's Purge
							["coord"] = { 31.4, 32.0, NAZMIR },
							["races"] = HORDE_ONLY,
						}),
					}),
					q(54282, {	-- Battle of Dazar'alor
						["provider"] = { "n", 146921 },	-- Princess Talanji
						["sourceQuests"] = { 54280 },	-- Fly Out to Meet Them
						["coord"] = { 37.0, 5.2, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					q(54164, {	-- The King's Death
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["sourceQuests"] = { 54280 },	-- Fly Out to Meet Them
						["coord"] = { 58.4, 62.6, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(54165, {	-- The Return of Derek Proudmoore
						["provider"] = { "n", 145411 },	-- Lady Sylvanas Windrunner
						["sourceQuests"] = { 54164 },	-- The King's Death
						["coord"] = { 49.8, 38.8, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					-- The Message to the Lord Admiral (Returning Derek Proudmoore to Jaina)
					q(55124, {	-- Righting Wrongs
						["provider"] = { "n", 150433 },	-- Bluffwatcher Proudscar
						["altQuests"] = { 54961 },	-- Righting Wrongs (Sylvanas Version)
						["sourceQuests"] = {
							54165,	-- The Return of Derek Proudmoore
							54109,	-- Queen's Favor
							-- #if before 8.2.5
							54282,	-- Battle of Dazar'alor
							-- #endif
						},
						["coord"] = { 49.8, 95.9, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					q(54961, {	-- Righting Wrongs (Sylvanas Version)
						["provider"] = { "n", 150433 },	-- Bluffwatcher Proudscar
						["altQuests"] = { 55124 },	-- Righting Wrongs
						["sourceQuests"] = {
							54165,	-- The Return of Derek Proudmoore
							54754,	-- For the Queen
							-- #if before 8.2.5
							54282,	-- Battle of Dazar'alor
							-- #endif
						},
						["coord"] = { 49.8, 95.9, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					q(54958, {	-- Ships in the Night
						["provider"] = { "n", 150309 },	-- Baine Bloodhoof
						["sourceQuests"] = {
							55124,	-- Righting Wrongs
							54961,	-- Righting Wrongs (Sylvanas Version)
						},
						["coord"] = { 87.3, 49.6, TIRAGARDE_SOUND },
						["races"] = HORDE_ONLY,
					}),
					q(54959, {	-- Under Lock and Keys
						["provider"] = { "n", 149842 },	-- Baine Bloodhoof
						["sourceQuests"] = { 54958 },	-- Ships in the Night
						["coord"] = { 85.8, 45.8, TIRAGARDE_SOUND },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(167073),	-- Apothecary's Key (QI!)
							i(167074),	-- Captain's Key (QI!)
							o(322064, {	-- Navigator's Keyring
								["coord"] = { 86.7, 45.2, TIRAGARDE_SOUND },
								["groups"] = { i(167072) },	-- Navigator's Key (QI!)
							}),
						},
					}),
					q(54997, {	-- Dead in the Water
						["provider"] = { "n", 149842 },	-- Baine Bloodhoof
						["sourceQuests"] = { 54958 },	-- Ships in the Night
						["coord"] = { 85.8, 45.8, TIRAGARDE_SOUND },
						["races"] = HORDE_ONLY,
					}),
					q(54960, {	-- A Bitter Reunion
						["provider"] = { "n", 149842 },	-- Baine Bloodhoof
						["sourceQuests"] = {
							54959,	-- Under Lock and Keys
							54997,	-- Dead in the Water
						},
						["coord"] = { 85.8, 45.8, TIRAGARDE_SOUND },
						["races"] = HORDE_ONLY,
					}),
					q(54999, {	-- Under False Colors
						["provider"] = { "n", 150311 },	-- Thomas Zelling
						["altQuests"] = { 55034 },	-- Under False Colors
						["sourceQuests"] = { 54960 },	-- A Bitter Reunion
						["coord"] = { 76.3, 42.7, DUSTWALLOW_MARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(167228),	-- Charm of Returning (QI!)
						},
					}),
					q(55034, {	-- Under False Colors (Sylvanas Version)
						["provider"] = { "n", 150311 },	-- Thomas Zelling
						["altQuests"] = { 54999 },	-- Under False Colors
						["sourceQuests"] = {
							54960,	-- A Bitter Reunion
							54961,	-- Righting Wrongs (Sylvanas Version)
						},
						["coord"] = { 76.3, 42.7, DUSTWALLOW_MARSH },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(167228),	-- Charm of Returning (QI!)
						},
					}),
					-- The Warfang Event (Baine's imprisoning)
					q(55047, {	-- Securing Warfang Hold
						["provider"] = { "n", 146013 },	-- Dark Ranger Alina
						["altQuests"] = { 55052 },	-- Securing Warfang Hold
						["sourceQuests"] = { 54999 },	-- Under False Colors
						["coord"] = { 58.4, 62.7, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(55052, {	-- Securing Warfang Hold (Sylvanas Version)
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["altQuests"] = { 55047 },	-- Securing Warfang Hold
						["sourceQuests"] = { 55034 },	-- Under False Colors (Sylvanas Version)
						["coord"] = { 58.4, 62.7, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(55048, {	-- Spy Games
						["provider"] = { "n", 150690 },	-- Boss Mida
						["sourceQuests"] = {
							55047,	-- Securing Warfang Hold
							55052,	-- Securing Warfang Hold (Sylvanas Version)
						},
						["coord"] = { 51.0, 32.9, STORMSONG_VALLEY },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(167078),	-- Electronic Mayhem Projector (QI!)
						},
					}),
					q(55049, {	-- Communication Breakdown
						["provider"] = { "n", 150690 },	-- Boss Mida
						["sourceQuests"] = {
							55047,	-- Securing Warfang Hold
							55052,	-- Securing Warfang Hold (Sylvanas Version)
						},
						["coord"] = { 51.0, 32.9, STORMSONG_VALLEY },
						["races"] = HORDE_ONLY,
					}),
					q(55050, {	-- Tickets, Please?
						["provider"] = { "n", 150691 },	-- Kazit
						["sourceQuests"] = {
							55047,	-- Securing Warfang Hold
							55052,	-- Securing Warfang Hold (Sylvanas Version)
						},
						["coord"] = { 51.0, 32.8, STORMSONG_VALLEY },
						["races"] = HORDE_ONLY,
					}),
					q(55051, {	-- A Display of Power
						["provider"] = { "n", 150690 },	-- Boss Mida
						["sourceQuests"] = {
							55048,	-- Spy Games
							55049,	-- Communication Breakdown
							55050,	-- Tickets, Please?
						},
						["coord"] = { 51.0, 32.9, STORMSONG_VALLEY },
						["races"] = HORDE_ONLY,
					}),
				})),
				n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_0 } }, {
					q(55778, {	-- Visions of Danger
						["provider"] = { "n", 151848 },	-- Lor'themar Theron
						["sourceQuests"] = { 55051 },	-- A Display of Power
						["coord"] = { 48.5, 62.1, 1355 },
						["races"] = HORDE_ONLY,
					}),
					q(55781, {	-- Old Allies
						["provider"] = { "n", 151848 },	-- Lor'themar Theron
						["altQuests"] = { 55780 },	-- Old Allies
						["sourceQuests"] = { 55778 },	-- Visions of Danger
						["coord"] = { 48.5, 62.1, 1355 },
						["races"] = HORDE_ONLY,
					}),
					q(55780, {	-- Old Allies (Sylvanas Version)
						["provider"] = { "n", 151848 },	-- Lor'themar Theron
						["altQuests"] = { 55781 },	-- Old Allies
						["sourceQuests"] = {
							55778,	-- Visions of Danger
							55052,	-- Securing Warfang Hold (Sylvanas Version)
						},
						["coord"] = { 48.5, 62.1, 1355 },
						["races"] = HORDE_ONLY,
					}),
					q(55779, {	-- Stay of Execution
						["provider"] = { "n", 152977 },	-- Thrall
						["altQuests"] = { 55782 },	-- Stay of Execution
						["sourceQuests"] = { 55781 },	-- Old Allies
						["coord"] = { 56.1, 68.0, 86 },
						["maps"] = {
							ORGRIMMAR,
							1479,	-- Baine Rescue (Scenario)
						},
						["races"] = HORDE_ONLY,
					}),
					q(55782, {	-- Stay of Execution (Sylvanas Version)
						["provider"] = { "n", 152977 },	-- Thrall
						["altQuests"] = { 55779 },	-- Stay of Execution
						["sourceQuests"] = { 55780 },	-- Old Allies (Sylvanas Version)
						["coord"] = { 56.1, 68.0, 86 },
						["maps"] = {
							ORGRIMMAR,
							1479,	-- Baine Rescue (Scenario)
						},
						["races"] = HORDE_ONLY,
					}),
				})),
				n(QUESTS, bubbleDownSelf({ ["timeline"] = { ADDED_8_2_5 } }, {
					q(56496, {	-- The Eve of Battle
						["provider"] = { "n", 155789 },	-- Lor'themar Theron
						["sourceQuests"] = {
							55779,	-- Stay of Execution
							55782,	-- Stay of Execution (Sylvanas Version)
						},
						["coord"] = { 50.2, 96.0, DAZARALOR },
						["races"] = HORDE_ONLY,
					}),
					q(57088, {	-- This Ain't Mine
						["provider"] = { "n", 155786 },	-- Varok Saurfang
						["sourceQuests"] = { 56496 },	-- The Eve of Battle
						["coord"] = { 54.1, 42.4, DUROTAR },
						["races"] = HORDE_ONLY,
					}),
					q(57090, {	-- Saving the Siege
						["provider"] = { "n", 155786 },	-- Varok Saurfang
						["sourceQuests"] = { 57088 },	-- This Ain't Mine
						["coord"] = { 41.7, 55.7, 1535 },
						["races"] = HORDE_ONLY,
					}),
					q(57091, {	-- Already Among Us
						["provider"] = { "n", 155786 },	-- Varok Saurfang
						["sourceQuests"] = { 57088 },	-- This Ain't Mine
						["coord"] = { 41.7, 55.7, 1535 },
						["races"] = HORDE_ONLY,
					}),
					q(57092, {	-- Strategic Deployment
						["provider"] = { "n", 155786 },	-- Varok Saurfang
						["sourceQuests"] = { 57088 },	-- This Ain't Mine
						["coord"] = { 41.7, 55.7, 1535 },
						["races"] = HORDE_ONLY,
					}),
					q(57093, {	-- Before the Gates of Orgrimmar
						["provider"] = { "n", 155786 },	-- Varok Saurfang
						["sourceQuests"] = {
							57090,	-- Saving the Siege
							57091,	-- Already Among Us
							57092,	-- Strategic Deployment
						},
						["coord"] = { 41.7, 55.7, 1535 },
						["races"] = HORDE_ONLY,
					}),
					q(57094, {	-- The Price of Victory
						["provider"] = { "n", 155789 },	-- Lor'themar Theron
						["sourceQuests"] = { 57093 },	-- Before the Gates of Orgrimmar
						["coord"] = { 36.1, 64.1, 1535 },
						["races"] = HORDE_ONLY,
					}),
					q(57095, {	-- Old Soldier
						["provider"] = { "n", 155789 },	-- Lor'themar Theron
						["altQuests"] = { 57152 },	-- Most Loyal (Sylvanas Version)
						["sourceQuests"] = { 57094 },	-- The Price of Victory
						["coord"] = { 34.9, 60.1, 1535 },	-- Durotar (Scenario)
						["maps"] = {
							1534,	-- Orgrimmar (Scenario)
						},
						["races"] = HORDE_ONLY,
					}),
					--	TODO: Sylvanas Loyalist questline reported by Niixten in #errors, all needs to be completed - apparently there are various quests you can get based on choices you make along the way
					--	all needs to be altQuested to the 'choice' quest since only one version of the campaign questline can be completed per character.  not sure if 'queen's favor' is the best quest to set as altQuests or if it should be an earlier one (i haven't done the campaign in a while)
					q(56495, {	-- They Move Against Us
						["provider"] = { "n", 135691 },	-- Nathanos Blightcaller
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 55782 },	-- Stay of Execution
						["coord"] = { 58.4, 62.7, ZULDAZAR },
						["races"] = HORDE_ONLY,
					}),
					q(56833, {	-- Leaders of the Horde
						["provider"] = { "n", 156423 },	-- Lady Sylvanas Windrunner
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 56495 },	-- They Move Against Us
						["coord"] = { 48.5, 70.8, 1534 },
						["description"] = "Choosing to escape with Eitrigg continues with 'Not My Warchief' and sets you on the Saurfang supporter questline, otherwise you continue the Sylvanas Loyalist questline.",
						["races"] = HORDE_ONLY,
					}),
					q(57130, {	-- Traitors in Our Midst
						["provider"] = { "n", 156124 },	-- Eitrigg
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 56833 },	-- Leaders of the Horde
						["coord"] = { 74.1, 46.1, 1534 },
						["races"] = HORDE_ONLY,
					}),
					q(57148, {	-- Siegebreakers
						["provider"] = { "n", 156440 },	-- Nathanos Blightcaller
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 57130 },	-- Traitors in Our Midst
						["coord"] = { 50.4, 76.1, 1534 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(171365),	-- Put on disguise (QI!)
						},
					}),
					q(57149, {	-- Propaganda Takedown
						["provider"] = { "n", 156440 },	-- Nathanos Blightcaller
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 57130 },	-- Traitors in Our Midst
						["coord"] = { 50.4, 76.1, 1534 },
						["races"] = HORDE_ONLY,
					}),
					q(57150, {	-- Militia
						["provider"] = { "n", 156440 },	-- Nathanos Blightcaller
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 57130 },	-- Traitors in Our Midst
						["coord"] = { 50.4, 76.1, 1534 },
						["races"] = HORDE_ONLY,
					}),
					q(57151, {	-- A Line in the Sand
						["provider"] = { "n", 156440 },	-- Nathanos Blightcaller
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = {
							57148,	-- Siegebreakers
							57149,	-- Propaganda Takedown
							57150,	-- Militia
						},
						["coord"] = { 50.1, 91.3, 1534 },
						["races"] = HORDE_ONLY,
					}),
					q(57152, {	-- Most Loyal
						["provider"] = { "n", 156425 },	-- Dark Ranger Lenara
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 57151 },	-- A Line in the Sand
						["coord"] = { 50, 91.3, 1534 },
						["races"] = HORDE_ONLY,
						["groups"] = {
							i(172203),	-- Cracked Hearthstone (QI!)
						},
					}),
					q(57147, {	-- Not My Warchief
						["provider"] = { "n", 156124 },	-- Eitrigg
						["altQuests"] = { 54109 },	-- Queen's Favor
						["sourceQuests"] = { 57152 },	-- Most Loyal
						["coord"] = { 74.0,  46.0, 1534 },
						["description"] = "Have to be Sylvanas Loyalist that escapes with Eitrigg",
						["races"] = HORDE_ONLY,
					}),
					-- TODO: this ID is wrong...
					-- q(57152, {	-- Most Loyal (Sylvanas Version)
					-- 	["sourceQuests"] = {
					-- 		57094,	-- The Price of Victory
					-- 		55782,	-- Stay of Execution (Sylvanas Version)
					-- 	},
					-- 	["altQuests"] = { 57095 },	-- Old Soldier
					-- --	["provider"] = { "n", 155789 },	-- Lor'themar Theron
					-- --	["coord"] = { 34.9, 60.1, 1535 },
					-- 	["races"] = HORDE_ONLY,
					-- 	["maps"] = {
					-- 		1534,	-- Orgrimmar (Scenario)
					-- 		1535,	-- Durotar (Scenario)
					-- 	},
					-- }),
					-- 		57094,	-- The Price of Victory
					-- 		55782,	-- Stay of Execution (Sylvanas Version)
					-- 	},
					-- 	["altQuests"] = { 57095 },	-- Old Soldier
					-- --	["provider"] = { "n", 155789 },	-- Lor'themar Theron
					-- --	["coord"] = { 34.9, 60.1, 1535 },
					-- 	["races"] = HORDE_ONLY,
					-- 	["maps"] = {
					-- 		1534,	-- Orgrimmar (Scenario)
					-- 		1535,	-- Durotar (Scenario)
					-- 	},
					-- }),
					-- 		57094,	-- The Price of Victory
					-- 		55782,	-- Stay of Execution (Sylvanas Version)
					-- 	},
					-- 	["altQuests"] = { 57095 },	-- Old Soldier
					-- --	["provider"] = { "n", 155789 },	-- Lor'themar Theron
					-- --	["coord"] = { 34.9, 60.1, 1535 },
					-- 	["races"] = HORDE_ONLY,
					-- 	["maps"] = {
					-- 		1534,	-- Orgrimmar (Scenario)
					-- 		1535,	-- Durotar (Scenario)
					-- 	},
					-- }),
					-- 		57094,	-- The Price of Victory
					-- 		55782,	-- Stay of Execution (Sylvanas Version)
					-- 	},
					-- 	["altQuests"] = { 57095 },	-- Old Soldier
					-- --	["provider"] = { "n", 155789 },	-- Lor'themar Theron
					-- --	["coord"] = { 34.9, 60.1, 1535 },
					-- 	["races"] = HORDE_ONLY,
					-- 	["maps"] = {
					-- 		1534,	-- Orgrimmar (Scenario)
					-- 		1535,	-- Durotar (Scenario)
					-- 	},
					-- }),
				})),
			},
		}),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1_LAUNCH } }, {
	n(WAR_EFFORT, {
		n(WAR_CAMPAIGN_HORDE, {
			-- q(54316),	-- 7500/12000 Honored with Honorbound. unlock for storyline quests
			-- q(54319),	-- triggered when reaching Revered with Honorbound. unlock for storyline quests
			q(55029),	-- tracking quest in Sylvanas Loyalist questline
			q(55620),	-- tracking quest in Sylvanas Loyalist questline
			q(53123),	-- triggered when turning in #53121, "Siege of Boralus," while on Horde War Campaign
			q(52193),	-- triggered when turning in #52186, "The Bulk of the Guard," while on Horde War Campaign
			q(58417),	-- triggered when starting the mission "Casting the Bait" while on "Under False Colors" during the Horde War Campaign
			q(55135),	-- triggered after finishing the mission "Casting the Bait" during the Horde War Campaign
			q(51695),	-- Horde WarCampaign - "Reclaiming What's Ours" (ID 51696) using the horn to reclaim the Foothold
		}),
	}),
})));