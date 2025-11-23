-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures,
	expansion(EXPANSION.WOD, {
		n(GARRISONS, sharedData({["maps"] = { LUNARFALL, FROSTWALL } },	{
			n(ACHIEVEMENTS, {
				ach(9130),		-- A Rare Friend
				ach(9131),		-- An Epic Buddy
				ach(9494, {	-- Commander (40)
					ach(9109),		-- Fearless Leader (25)
					ach(9108),		-- Where You Go, They Will Follow (10)
					ach(9107),		-- Follow the Leader (5)
				}),
				pvp(ach(9630, {	-- Defender of Draenor (A)
					["races"] = ALLIANCE_ONLY,
				})),
				pvp(ach(9248, {	-- Defender of Draenor (H)
					["races"] = HORDE_ONLY,
				})),
				ach(9928, {	-- Don't Call Me Junior (A)
					["sym"] = {{"meta_achievement",
						9825,	-- Master Relic Hunter (A)
					}},
					["races"] = ALLIANCE_ONLY,
					["groups"] = { follower(465) },	-- Harrison Jones
				}),
				ach(9901, {	-- Don't Call Me Junior (H)
					["sym"] = {{"meta_achievement",
						9836,	-- Master Relic Hunter (H)
					}},
					["races"] = HORDE_ONLY,
					["groups"] = { follower(465) },	-- Harrison Jones
				}),
				petbattle(ach(9264)),	-- Draenor Pet Brawler
				a(ach(9101, {	-- Even More Plots (A)
					a(ach(9100)),		-- More Plots (A)
				})),
				h(ach(9546, {	-- Even More Plots (H)
					h(ach(9545)),		-- More Plots (H)
				})),
				ach(9129, {	-- Filling the Ranks
					["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
					["groups"] = {
						a(i(111967)),	-- Dwarven Bunker, Level 3 (Garrison Blueprint)
						h(i(116186)),	-- War Mill, Level 3 (Garrison Blueprint)
						ach(9111),	-- Raising the Bar
						ach(9110),	-- Following Up
					},
				}),
				achpart(9828, 10015, {	-- Ten Hit Tunes (A) (10)
					["races"] = ALLIANCE_ONLY,
				}),
				achpart(9912, 10015, {	-- Azeroth's Top Twenty Tunes (A) (20)
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(122700) },	-- Portable Audiophone (TOY!)
				}),
				ach(10015, {	-- Full Discography (A)
					["races"] = ALLIANCE_ONLY,
				}),
				achpart(9897, 10016, {	-- Ten Hit Tunes (Horde) (10)
					["races"] = HORDE_ONLY,
				}),
				achpart(9914, 10016, {	-- Azeroth's Top Twenty Tunes (H) (20)
					["races"] = HORDE_ONLY,
					["groups"] = { i(122700) },	-- Portable Audiophone (TOY!)
				}),
				ach(10016, {	-- Full Discography (H)
					["races"] = HORDE_ONLY,
				}),
				ach(9094, {	-- Garrison Architect
					["sym"] = {{"meta_achievement",
						9125,	-- Draftsman
						9128,	-- Grand Master Draftsman
						9126,	-- Master Draftsman
						9097,	-- Keepin' Busy
						9096,	-- Master Builder
					}},
					["groups"] = { title(260) },		-- Architect
				}),
				ach(9210, {	-- Garrison Buddies (A)
					["races"] = ALLIANCE_ONLY,
				}),
				ach(9132, {	-- Garrison Buddies (H)
					["races"] = HORDE_ONLY,
				}),
				ach(9487, {	-- Got My Mind On My Draenor Money (10,000)
					["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
					["groups"] = { i(111983) },	-- Storehouse, Level 3 (Garrison Blueprint)
				}),
				ach(9128, {	-- Grand Master Draftsman (60)
					ach(9126),		-- Master Draftsman (40)
					ach(9125),		-- Draftsman (20)
				}),
				a(ach(10067, {	-- In Pursuit of Gul'dan (Garrison) [A]
					crit(28291, {	-- All Hands On Deck
						["_quests"] = { 38259 },
					}),
					crit(28292, {	-- The Invasion of Tanaan
						["_quests"] = { 38445 },
					}),
					crit(28293, {	-- Bane of the Bleeding Hollow
						["_quests"] = { 38274 },
					}),
					crit(28295, {	-- Dark Ascension
						["_quests"] = { 38223 },
					}),
					crit(28296, {	-- The Fate of Teron'gor
						["_quests"] = { 38562 },	-- Secrets of the Sargerei (A)
					}),
					crit(28408, {	-- The Cipher of Damnation
						["_quests"] = { 39394 },
					}),
				})),
				h(ach(10074, {	-- In Pursuit of Gul'dan (Garrison) [H]
					crit(28306, {	-- All Hands On Deck
						["_quests"] = { 38574 },
					}),
					crit(28307, {	-- The Invasion of Tanaan
						["_quests"] = { 37935 },
					}),
					crit(28293, {	-- Bane of the Bleeding Hollow
						["_quests"] = { 38274 },
					}),
					crit(28295, {	-- Dark Ascension
						["_quests"] = { 38223 },
					}),
					crit(28308, {	-- The Fate of Teron'gor
						["_quests"] = { 38416 },	-- Secrets of the Sargerei (H)
					}),
					crit(28305, {	-- The Cipher of Damnation
						["_quests"] = { 38463 },
					}),
				})),
				ach(9243, {	-- Item Level Force (20 - lvl 650)
					ach(9213),	-- Item Level Army (10 - lvl 650)
					ach(9212),	-- My Item Level Is Way Higher than Yours (1 - lvl 650)
					ach(9211),	-- My Item Level Is Higher than Yours (1 - lvl 625)
				}),
				ach(9097, {	-- Keepin' Busy
					crit(25212),		-- Mine
					crit(25210),		-- Fishing Shack
					crit(25211),		-- Herb Garden
					crit(25213),		-- Pet Menagerie
				}),
				ach(9096, {	-- Master Builder
					crit(25226),		-- At least 3 small buildings activated
					crit(25237),		-- At least 3 small buildings activated
					crit(25238),		-- At least 3 small buildings activated
					crit(25239),		-- At least 3 small buildings activated
					crit(25240),		-- At least 3 small buildings activated
					crit(25241),		-- At least 3 small buildings activated
					crit(25242),		-- At least 3 small buildings activated
					crit(25243),		-- At least 3 small buildings activated
					crit(25233),		-- At least 3 small buildings activated
					crit(25244),		-- At least 3 small buildings activated
					crit(25245),		-- At least 2 medium buildings activated
					crit(25246),		-- At least 2 medium buildings activated
					crit(25247),		-- At least 2 medium buildings activated
					crit(25248),		-- At least 2 medium buildings activated
					crit(25249),		-- At least 2 medium buildings activated
					crit(25250),		-- At least 2 large buildings activated
					crit(25251),		-- At least 2 large buildings activated
					crit(25252),		-- At least 2 large buildings activated
					crit(25253),		-- At least 2 large buildings activated
					crit(25225),		-- At least 2 large buildings activated
					ach(9095, {		-- Builder
						crit(25236),		-- At least 2 small buildings activated
						crit(25227),		-- At least 2 small buildings activated
						crit(25228),		-- At least 2 small buildings activated
						crit(25229),		-- At least 2 small buildings activated
						crit(25235),		-- At least 2 small buildings activated
						crit(25230),		-- At least 2 small buildings activated
						crit(25231),		-- At least 2 small buildings activated
						crit(25232),		-- At least 2 small buildings activated
						crit(25233),		-- At least 2 small buildings activated
						crit(25234),		-- At least 2 small buildings activated
						crit(25216),		-- At least 2 medium buildings activated
						crit(25220),		-- At least 2 medium buildings activated
						crit(25217),		-- At least 2 medium buildings activated
						crit(25218),		-- At least 2 medium buildings activated
						crit(25219),		-- At least 2 medium buildings activated
						crit(25221),		-- At least 1 large building activated
						crit(25222),		-- At least 1 large building activated
						crit(25223),		-- At least 1 large building activated
						crit(25224),		-- At least 1 large building activated
						crit(27941),		-- At least 1 large building activated
					}),
				}),
				ach(9246, {		-- Master Draenor Crafter
					["_noautomation"] = true,
				}),
				ach(9265),		-- Master of Apexis
				ach(9825, {	-- Master Relic Hunter
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(27579),		-- The Blessing of Beasts
						crit(27580),		-- Breaching the Barrier
						crit(27581),		-- The Apexis Device
						crit(27582),		-- The Spirit Forge
						crit(27584),		-- Taking from the Taker
						crit(27599),		-- The Crystal Reborn
					},
				}),
				ach(9836, {	-- Master Relic Hunter
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(27600),	-- The Blessing of Beasts
						crit(27601),	-- Breaching the Barrier
						crit(27602),	-- The Apexis Device
						crit(27603),	-- Taking from the Taker
						crit(27604),	-- The Spirit Forge
						crit(27605),	-- The Crystal Reborn
					},
				}),
				ach(9098, {	-- Movin' On Up (Lvl 3)
					ach(9099),		-- Time for an Upgrade (Lvl 2)
				}),
				a(ach(9564)),	-- Securing Draenor [A] (automated)
				h(ach(9562)),	-- Securing Draenor [H] (automated)
				ach(8933),		-- Staying Regular
				ach(9491, {	-- The Garrison Campaign
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						crit(25856, {	-- The Warlord's Council
							["_quests"] = { 35841 },	-- Putting Down the Packleader
						}),
						crit(25857, {	-- The Sargerei
							["_quests"] = { 35196 },	-- Forging Ahead
						}),
						crit(25858, {	-- Darktide Roost
							["_quests"] = { 34450 },	-- Rylak Rescue
						}),
						crit(25859, {	-- Iron Siegeworks
							["_quests"] = { 34033 },	-- And The Mole You Rode In On
						}),
						crit(25860, {	-- The Ring of Blood
							["_quests"] = { 36289 },	-- Out of the Shadows
						}),
						crit(25863, {	-- The Fall of Shattrath
							["_quests"] = { 35685 },	-- Socrethar's Demise
						}),
						crit(25864, {	-- Bloodmaul Compound
							["_quests"] = { 34289 },	-- Soulgrinder Survivor
						}),
						crit(27305, {	-- Broken Precipice
							["_quests"] = { 37517 },	-- News for Nixxie
						}),
						crit(25866, {	-- The Exarch's Call
							["_quests"] = { 36169 },	-- The Trial of Champions
						}),
						crit(25861, {	-- Heart of the Breakers
							["_quests"] = { 34410 },	-- The Beating Heart
						}),
						crit(25862, {	-- A Strike at the Heart
							["_quests"] = { 36162 },	-- A Stolen Heart
						}),
						crit(25867, {	-- Primal Fury
							["_quests"] = { 36341 },	-- Primal Fury
						}),
					},
				}),
				ach(9492, {	-- The Garrison Campaign
					["races"] = HORDE_ONLY,
					["groups"] = {
						crit(25870, {	-- The Warlord's Council
							["_quests"] = { 35842 },	-- Putting Down the Packleader
						}),
						crit(25871, {	-- The Sargerei
							["_quests"] = { 35197 },	-- Forging Ahead
						}),
						crit(25858, {	-- Darktide Roost
							["_quests"] = { 34450 },	-- Rylak Rescue
						}),
						crit(25872, {	-- Iron Siegeworks
							["_quests"] = { 34078 },	-- Payment Due for Services Rendered
						}),
						crit(25873, {	-- The Ring of Blood
							["_quests"] = { 36290 },	-- Out of the Shadows
						}),
						crit(27442, {	-- The Fall of Shattrath
							["_quests"] = { 35687 },	-- Socrethar's Demise
						}),
						crit(25876, {	-- Bloodmaul Compound
							["_quests"] = { 34319 },	-- Soulgrinder Survivor
						}),
						crit(27306, {	-- Broken Precipice
							["_quests"] = { 37516 },	-- News for Nixxie
						}),
						crit(24518, {	-- Ours is the Fury
							["_quests"] = { 33427 },	-- Ours is the Fury
						}),
						crit(25874, {	-- Heart of the Breakers
							["_quests"] = { 34341 },	-- The Beating Heart
						}),
						crit(25875, {	-- A Strike at the Heart
							["_quests"] = { 36248 },	-- A Stolen Heart
						}),
						crit(25878, {	-- Primal Fury
							["_quests"] = { 36342 },	-- Primal Fury
						}),
					},
				}),
				ach(9407, {	-- Working Many Orders (750)
					ach(9406, {	-- Working More Orders (250)
						["description"] = "Unlocks the ability to purchase the blueprint from Blueprints Vendors.",
						["groups"] = {
							i(111930),	-- Alchemy Lab, Level 3 (Garrison Blueprint)
							i(111973),	-- Enchanter's Study, Level 3 (Garrison Blueprint)
							i(109257),	-- Engineering Works, Level 3 (Garrison Blueprint)
							i(111975),	-- Gem Boutique, Level 3 (Garrison Blueprint)
							i(111979),	-- Scribe's Quarters, Level 3 (Garrison Blueprint)
							i(111993),	-- Tailoring Emporium, Level 3 (Garrison Blueprint)
							i(111991),	-- The Forge, Level 3 (Garrison Blueprint)
							i(111989),	-- The Tannery, Level 3 (Garrison Blueprint)
						},
					}),
					ach(9405),	-- Working Some Orders (125)
				}),
			}),
		})),
	})
);
