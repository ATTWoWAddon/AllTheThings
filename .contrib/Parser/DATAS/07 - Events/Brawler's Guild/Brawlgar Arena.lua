-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, m(503, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {	-- Brawl'gar Arena
	["timeline"] = { ADDED_5_1_0 },
	["races"] = HORDE_ONLY,
	["lvl"] = 120,
	["icon"] = 970888,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(7944, {		-- Bottle Service (Season 2)
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(13192, {	-- Brawler for Azeroth
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["g"] = {
					title(209, {	-- Brawler <Name>
						["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(7942, {		-- Brawlin' and Shot Callin' (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9174, {		-- Brawlin' and Shot Callin' (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(8342, {		-- Collect Your Deck (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(8343, {		-- Deck Your Collection (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
				["g"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			}),
			ach(9177, {		-- Deck Your Collection (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["g"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			}),
			ach(11570, {	-- Educated Guesser
				["timeline"] = { ADDED_7_1_5, REMOVED_8_0_1 },
			}),
			ach(7945, {		-- Haters Gonna Hate (Season 2)
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(8337, {		-- Having a Brawl (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			}),
			ach(13194, {	-- I Am Thrall's Complete Lack Of Surprise
				["timeline"] = { ADDED_7_1_5, REMOVED_8_1_5 },
			}),
			ach(11572, {	-- I Am Thrall's Complete Lack Of Surprise (Season 3)
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(7943, {		-- I'm Your Number One Fan (Season 2)
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(8338, {		-- I've Got the Biggest Brawls of Them All (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			}),
			ach(11566, {	-- King of the Guild (Season 3)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(8022, {		-- Now You're Just Showing Off (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9175, {		-- Now You're Just Showing Off (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(7950, {		-- Rabble Rabble Rabble (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(11573, {	-- Rumble Club
				["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 },
			}),
			ach(7948, {		-- The First Rule of Brawler's Guild (Season 1 or 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3 },
			}),
			ach(11559, {	-- The First Rule of Brawler's Guild
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_9_1_5 },
			}),
			ach(7939, {		-- The Second Rule of Brawler's Guild (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9173, {		-- The Second Rule of Brawler's Guild (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["g"] = {
					i(93195, {	-- Brawler's Pass
						["timeline"] = { ADDED_5_1_0, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(11564, {	-- The Second Rule of Brawler's Guild (Season 3)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(13190, {	-- The Second Rule of Brawler's Guild
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["g"] = {
					i(93195, {	-- Brawler's Pass
						["timeline"] = { ADDED_5_1_0, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(8020, {		-- You Are Not Your $#*@! Legplates (Season 1)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9172, {		-- You Are Not Your $#*@! Legplates (Season 2)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(11561, {	-- You Are Not Your $#*@! Legplates (Season 3)
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(13188, {	-- You Are Not Your $#*@! Legplates
				["races"] = HORDE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
			}),
			ach(11567, {	-- You Are Not The Contents Of Your Wallet
				["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 },
			}),
		}),
		n(FACTIONS, sharedData({
			["races"] = HORDE_ONLY,
		},{
			faction(FACTION_BRAWLGAR_SEASON_1, {	-- Brawl'gar Arena (Season 1)
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			faction(FACTION_BRAWLGAR_SEASON_2, {	-- Brawl'gar Arena (Season 2)
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
			}),
			faction(FACTION_BRAWLGAR_SEASON_3, {	-- Brawl'gar Arena (Season 3)
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1_LAUNCH },
			}),
			faction(FACTION_BRAWLGAR_SEASON_4, {	-- Brawl'gar Arena (Season 4)
				["timeline"] = { ADDED_8_1_5, REMOVED_9_0_2_LAUNCH },
			}),
		})),
		n(REWARDS, {
			--	attaching questIDs and sourceQuests here makes the SQ list not display correctly (the items display instead of the quests).
			i(92718, {	-- Brawler's Purse
				["description"] = "\nAwarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.\n",
			}),
			i(92719, {	-- Bulging Brawler's Purse
				["description"] = "\nAwarded for winning a Brawl. If you haven't already finished the quest chain for Bruce, save these for the 'Soul Splinters' quest.\n",
			}),
			i(164938, {	-- G.G. Gearbox
				["description"] = "\nAwarded for beating the G.G. Engineering Challenge Card encounter. You need this to complete the 'The Precious 13-Tooth Gogglegear' quest.\n",
			}),
			i(164931, {	-- Rumbler's Purse
				["description"] = "\nAwarded for winning a Rumble. If you haven't already finished the quest chain for Bruce, save these for the 'Super Soul Splinters' quest.\n",
			}),
		}),
		n(QUESTS, {
			q(36702, {	-- Meatball
				["qg"] = 86272,	-- Meatball
				["description"] = "Reach Rank 5 in the arena.",
				["groups"] = {
					follower(203),	-- Meatball
				},
			}),
			q(53914, {	-- Murder at the Brawl'gar Arena
				["qg"] = 68364,	-- Paul North
				["description"] = "This quest can be accepted after you successfully complete any (or your first) Brawl.",
				["coord"] = { 48.4, 29.2, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53915, {	-- Put Up Your Dukes
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53914,	-- Murder at the Brawl'gar Arena
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53917, {	-- Undercover Agent: Sharisanda
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53915,	-- Put Up Your Dukes
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53918, {	-- The Financial Participation Incentive
				["qg"] = 145582,	-- Sharisanda
				["sourceQuest"] = 53917,	-- Undercover Agent: Sharisanda
				["cost"] = { { "i", 142318, 1, } },	-- High Roller's Contract
				["coord"] = { 48.8, 79.8, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53920, {	-- A Favor for Your Ol' Pal Buxdoggle
				["qg"] = 68372,	-- Pit Boss Buxdoggle
				["sourceQuest"] = 53918,	-- The Financial Participation Incentive
				["coord"] = { 49.2, 68.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53921, {	-- The Pit Boss's Debts
				["qg"] = 68372,	-- Pit Boss Buxdoggle
				["sourceQuest"] = 53920,	-- A Favor for Your Ol' Pal Buxdoggle
				["coord"] = { 49.2, 68.0, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164941),	-- Huge Pile of Legitimately-Earned Brawler's Gold (QI!)
				},
			}),
			q(53922, {	-- Evidence Packet: Pit Boss Buxdoggle
				["qg"] = 145582,	-- Sharisanda
				["sourceQuest"] = 53921,	-- The Pit Boss's Debts
				["coord"] = { 48.8, 79.8, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164962),	-- Evidence Packet: Pit Boss Buxdoggle (QI!)
				},
			}),
			q(53923, {	-- Undercover Agent: Stone Guard Mollivox
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53922,	-- Evidence Packet: Pit Boss Buxdoggle
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53924, {	-- Soul Splinters
				["qg"] = 145691,	-- Shadowmaster Skrizzik
				["sourceQuest"] = 53923,	-- Undercover Agent: Stone Guard Mollivox
				["description"] = "You can save previously earned Brawler's Purses and open them while on this quest - Each Brawler's Purse gives 10 - 12 Soul Splinters, so you will need 9 - 10 Brawler's Purses to complete this quest.",
				["coord"] = { 37.4, 33.0, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164928),	-- Soul Splinter (QI!)
				},
			}),
			q(53925, {	-- Super Soul Splinters
				["qg"] = 145691,	-- Shadowmaster Skrizzik
				["sourceQuest"] = 53924,	-- Soul Splinters
				["coord"] = { 37.4, 33.0, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164929),	-- Super Soul Splinter (QI!)
				},
			}),
			q(53926, {	-- Cause for Concern
				["sourceQuest"] = 53925,	-- Super Soul Splinters
				["races"] = HORDE_ONLY,
			}),
			q(53927, {	-- The Precious 13-Tooth Gogglegear
				["qg"] = 145583,	-- Stone Guard Mollivox
				["sourceQuest"] = 53926,	-- Cause for Concern
				["coord"] = { 50.0, 12.4, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164937),	-- 13-Tooth Gogglegear (QI!)
				},
			}),
			q(53928, {	-- The Mollivox Goggle Experiment
				["qg"] = 145583,	-- Stone Guard Mollivox
				["sourceQuest"] = 53927,	-- The Precious 13-Tooth Gogglegear
				["coord"] = { 50.0, 12.4, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164943),	-- Mollivox's Goggles (QI!)
				},
			}),
			q(53929, {	-- Evidence Packet: Shadowmaster Skrizzik
				["qg"] = 145583,	-- Stone Guard Mollivox
				["sourceQuest"] = 53928,	-- The Mollivox Goggle Experiment
				["coord"] = { 50.0, 12.4, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164963),	-- Evidence Packet: Shadowmaster Skrizzik (QI!)
				},
			}),
			q(53930, {	-- Undercover Agent: Nugg Lumbo
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53929,	-- Evidence Packet: Shadowmaster Skrizzik
				["cost"] = { { "i", 143759, 1, } },	-- VIP Room Rental Form
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53931, {	-- Flaunt It If You Got It
				["qg"] = 70716,	-- Libbiara Blightrunner
				["sourceQuest"] = 53930,	-- Undercover Agent: Nugg Lumbo
				["cost"] = { { "i", 142311, 1, } },	-- Free Drinks Voucher
				["coord"] = { 31.2, 54.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53952, {	-- Simply Dying of Boredom
				["qg"] = 70716,	-- Libbiara Blightrunner
				["sourceQuest"] = 53931,	-- Flaunt It If You Got It
				["coord"] = { 31.2, 54.0, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164947),	-- Brawl'gar Arena Sign (QI!)
				},
			}),
			q(53932, {	-- Evidence Packet: Libbiara Blightrunner
				["qg"] = 145584,	-- Nugg Lumbo
				["sourceQuest"] = 53952,	-- Simply Dying of Boredom
				["coord"] = { 29.8, 50.0, 503 },
				["races"] = HORDE_ONLY,
				["g"] = {
					i(164964),	-- Evidence Packet: Libbiara Blightrunner (QI!)
				},
			}),
			q(53933, {	-- The Brawl'gar Trial
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53932,	-- Evidence Packet: Libbiara Blightrunner
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53934, {	-- A Clue from Area 52
				["qg"] = 145581,	-- Commander Arlu Ravenhide
				["sourceQuest"] = 53933,	-- The Brawl'gar Trial
				["coord"] = { 43.4, 97.0, 503 },
				["races"] = HORDE_ONLY,
			}),
			q(53935, {	-- Solving the Mystery
				["qg"] = 149808,	-- Boss Bazzelflange
				["sourceQuest"] = 53934,	-- A Clue from Area 52
				["races"] = HORDE_ONLY,
				["maps"] = { NETHERSTORM },
				["lvl"] = 120,
				["groups"] = {
					i(166724),	-- Bruce (MOUNT!)
				},
			}),

			-- 5.3 Season 1 boss quests (had to be obtainable in later season too)
			q(32836, { ["u"] = REMOVED_FROM_GAME, }),	-- A Knockoff Grumplefloot
			q(32837, { ["u"] = REMOVED_FROM_GAME, }),	-- Grandpa Grumplefloot
			q(32838, { ["u"] = REMOVED_FROM_GAME, }),	-- A Tale of Romance and Chivalry
			q(32839, { ["u"] = REMOVED_FROM_GAME, }),	-- The Bear and the Lady Fair
			q(32840, { ["u"] = REMOVED_FROM_GAME, }),	-- Boom Boom's Fuse
			q(32841, { ["u"] = REMOVED_FROM_GAME, }),	-- Master Boom Boom
			q(32842, { ["u"] = REMOVED_FROM_GAME, }),	-- Teeth Like Swords
			q(32843, { ["u"] = REMOVED_FROM_GAME, }),	-- Razorgrin
			q(32844, { ["u"] = REMOVED_FROM_GAME, }),	-- Secret of the Ooze
			q(32845, { ["u"] = REMOVED_FROM_GAME, }),	-- Splat
			q(32846, { ["u"] = REMOVED_FROM_GAME, }),	-- Modified Chomping Apparatus
			q(32847, { ["u"] = REMOVED_FROM_GAME, }),	-- Mecha-Bruce
			q(32848, { ["u"] = REMOVED_FROM_GAME, }),	-- Frost-Tipped Eggshell
			q(32849, { ["u"] = REMOVED_FROM_GAME, }),	-- Dippy and Doopy
			q(32850, { ["u"] = REMOVED_FROM_GAME, }),	-- Last Year's Model
			q(32851, { ["u"] = REMOVED_FROM_GAME, }),	-- Blingtron 3000
			q(32852, { ["u"] = REMOVED_FROM_GAME, }),	-- The Digmaster's Earthblade
			q(32853, { ["u"] = REMOVED_FROM_GAME, }),	-- Mingus Diggs
			q(32854, { ["u"] = REMOVED_FROM_GAME, }),	-- Well-Worn Blindfold
			q(32855, { ["u"] = REMOVED_FROM_GAME, }),	-- The Blind Hero
			q(32856, { ["u"] = REMOVED_FROM_GAME, }),	-- Paper-Covered Rock
			q(32857, { ["u"] = REMOVED_FROM_GAME, }),	-- Ro-Shambo
			q(32858, { ["u"] = REMOVED_FROM_GAME, }),	-- Raptorhide Boxing Gloves
			q(32859, { ["u"] = REMOVED_FROM_GAME, }),	-- Ty'thar
		}),
		n(VENDORS, {
			n(68364, {	-- Paul North <Brawl'gar Arena Quartermaster>  This vendor will change if you start the murder questline  New vendor = 145695 "Bad Luck" Symmes <Brawl'gar Arena Quartermaster>
				["races"] = HORDE_ONLY,
				["description"] = "Brawler's Burly Mushan Beast is only available to those who had reached Rank 8 in Season 1 or Season 2.|nShirts are only available to those who have already earned them.|r",
				["groups"] = {
					i(142403, {	-- Brawler's Burly Basilisk (MOUNT!) unobtainable as of BFA prepatch
						["timeline"] = { ADDED_7_1_0, REMOVED_8_0_1 },
					}),
					i(98405, {	-- Brawler's Burly Mushan Beast (MOUNT!) unobtainable unless you reached Rank 8 in either Season 1 or Season 2
						["timeline"] = { ADDED_5_3_0, REMOVED_7_1_5 },
					}),
					i(167812),	-- Brawlers Guild Tabard
					i(122396),	-- Brawler's Razor Claws
					i(98085),	-- Brucehide Jersey
					i(93025),	-- Clock'em (PET!)
					i(98092),	-- Digmaster's Bodysleeve
					iensemble(167892),	-- Ensemble: Brawlers Garb
					i(98079),	-- Floot-Tooter's Tunic
					TempForceMisc(i(127773, {	-- Gemcutter Module: Mastery
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn.  If you have this recipe already you will need to revisit the vendor to cache the recipe.",
						["requireSkill"] = JEWELCRAFTING,
					})),
					i(98080),	-- Gorgeous Blouse
					i(98091),	-- Last Season's Shirt
					i(98084),	-- Ooze-Soaked Shirt
					i(98087),	-- Paper Shirt
					i(144392, {	-- Pugilist's Powerful Punching Ring
						["races"] = HORDE_ONLY,
					}),
					i(98083),	-- Sharkskin Tunic
					i(98093),	-- Sightless Mantle
					i(98081),	-- The Boomshirt
					i(98086),	-- Tuxedo-Like Shirt
					i(144394, {	-- Tylarr Gronnden (PET!)
						["timeline"] = { ADDED_7_1_5 },
					}),
					i(98082),	-- Undisputed Champion's Shirt
					i(98543),	-- Wraps of the Blood-Soaked Brawler
				},
			}),
			n(115797, {	-- Tiana Nevermorn <Gold Exchange>
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(142319, {		-- Bag of Chipped Dice
						["races"] = HORDE_ONLY,
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
						["groups"] = {
							ach(9177, {	-- Deck Your Collection [Season 2]
								["races"] = HORDE_ONLY,
								["groups"] = {
									i(98543),	-- Wraps of the Blood-Soaked Brawler
								},
							}),
							n(117208, {	-- a Seagull
								i(144375, {		-- Feathered Brawler's Purse
									i(144368),		-- Felfeather Jersey
								}),
							}),
							n(70748, {		-- Argh
								i(151222, {		-- Leather Brawler's Purse
									i(98080),		-- Gorgeous Blouse
								}),
							}),
							n(116855, {	-- Ash'katzuum
								i(144373, {		-- Claw-Marked Brawler's Purse
									i(144365),		-- The Very Best Shirt
								}),
							}),
							n(115245, {	-- B3@7 B-0X
								i(144374, {		-- Groovy Brawler's Purse
									i(144366),		-- Dubvest
								}),
							}),
							n(70694, {		-- Big Badda Boom
								i(151223, {		-- Booming Brawler's Purse
									i(98081),		-- The Boomshirt
								}),
							}),
							n(70794, {		-- Blind Hero
								i(151238, {		-- Dark Brawler's Purse
									i(98093),		-- Sightless MAntle
								}),
							}),
							n(70740, {		-- Blingtron 3000
								i(151233, {		-- Blingin' Brawler's Bag
									i(98091),		-- Last Seasons Shirt
								}),
							}),
							n(67262, {		-- Bruce
								i(144377, {		-- Beginning Brawler's Purse
									i(144370),		-- Croc-Tooth Harness
								}),
							}),
							n(68255, {		-- Dippy (and Doopy, but seriously I don't care about Doopy.)
								i(151231, {		-- Brawler's Egg
									i(98086),	-- Tuxedo-Like Shirt
								}),
							}),
							n(68257, {		-- Goredome
								i(144378, {		-- Gorestained Brawler's Purse
									i(144371),		-- Gorstained Tunic
								}),
							}),
							n(70678, {		-- Grandpa Grumplefloot
								i(151229, {		-- Brawler's Music Box
									i(98079),		-- Floot-Tooter's Tunic
								}),
							}),
							n(70659, {		-- Hexos
								i(144376, {		-- Agile Brawler's Purse
									i(144367),		-- Observer's Shirt
								}),
							}),
							n(119150, {	-- Klunk
								i(151264, {		-- Clunky Brawler's Purse
									i(151263),		-- Electrified Compression Shirt
								}),
							}),
							n(71081, {		-- Mecha-Bruce
								i(151230, {		-- Croc-Skin Brawler's Purse
									i(98085),		-- Brucehide Jersey
								}),
							}),
							n(70616, {		-- Mingus Diggs
								i(151235, {		-- Filthy Brawler's Purse
									i(98092),		-- Digmaster's Bodysleeve
								}),
							}),
							n(71085, {		-- Razorgrin <Terror of the High Seas>
								i(151225, {		-- Wet Brawler's Purse
									i(98083),		-- Sharkskin Tunic
								}),
							}),
							n(70749, {		-- Ro-Shambo
								i(151232, {		-- Brawler's Package
									i(98087),		-- Paper Shirt
								}),
							}),
							n(70736, {		-- Splat
								i(151221, {		-- Gooey Brawler's Purse
									i(98084),		-- Ooze-Soaked Shirt
								}),
							}),
							n(70666, {		-- Ty'Thar
								i(151224, {		-- Bitten Brawler's Purse
									i(98082),		-- Undisputed Champion's Shirt
								}),
							}),
							n(68250, {		-- Unguloxx <The Murderaffe>
								i(144379, {		-- Murderous Brawler's Purse
									i(144372),		-- Hide of the Murderaffe
								}),
							}),
						},
					}),
					i(142317, {	-- Blood-Soaked Angel Figurine
						["cost"] = { { "c", 1299, 250 }, },	-- 250x Brawler's Gold
					}),
					i(142314, {	-- Brawler's Potion Dispenser
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
					}),
					i(142311, {	-- Free Drinks Voucher
						["description"] = "Use this while on the 'Flaunt It If You Got It' quest.",
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
					i(142318, {	-- High Roller's Contract
						["description"] = "Use this while on the 'The Financial Participation Incentive' quest.",
						["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
					}),
					i(142290, {	-- Rumble Card: Battle of the Brew
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35477, {	-- Battle of the Brew
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(142288, {	-- Rumble Card: Grief Warden
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(114943, {	-- Grief Warden <Enmity Moose>
								crit(35472, {	-- Grief Warden
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142294, {	-- Rumble Card: Mazhareen
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(68251, {	-- Mazhareen
								crit(35473, {	-- Mazhareen
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142293, {	-- Rumble Card: Mindbreaker Gzzaj
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(117102, {	-- Mindbreaker Gzzaj
								crit(35474, {	-- Mindbreaker Gzzaj
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142289, {	-- Rumble Card: Penguin Stampede
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115185, {	-- Penguin Stampede
								crit(35478, {	-- Penguin Stampede
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142291, {	-- Rumble Card: Senya
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							n(115357, {	-- Senya
								crit(35476, {	-- Senya
									["achievementID"] = 11573,	-- Rumble Club
								}),
							}),
						},
					}),
					i(142292, {	-- Rumble Card: Stranglethorn Streak
						["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
						["groups"] = {
							crit(35475, {	-- Stranglethorn Streak
								["achievementID"] = 11573,	-- Rumble Club
							}),
						},
					}),
					i(143759, {	-- VIP Room Rental Form
						["description"] = "Use this while on the 'Undercover Agent: Nugg Lumbo' quest if you do not have Rank 6 by this point.",
						["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
					}),
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
	m(503, {	-- Brawl'gar Arena
		n(QUESTS, {
			q(32112),	-- FLAG - Been to Fight Club - completing first fight
			q(32113),	-- FLAG - Been to Fight Club Today
			q(32444),	-- FLAG - Earned Brawler Title (Weekly)
		}),
	}),
})));