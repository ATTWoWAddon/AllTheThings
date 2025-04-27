-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------

root(ROOTS.WorldEvents, m(500, bubbleDown({ ["u"] = REMOVED_FROM_GAME }, {	-- Bizmo's Brawlpub
	["timeline"] = { ADDED_5_1_0 },
	["races"] = ALLIANCE_ONLY,
	["lvl"] = 120,
	["maps"] = { DEEPRUN_TRAM },
	["icon"] = 132356,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(7944, {		-- Bottle Service (Season 2)
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(13191, {	-- Brawler for Azeroth
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["g"] = {
					title(209, {	-- Brawler <Name>
						["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(7941, {		-- Brawlin' and Shot Callin' (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9170, {		-- Brawlin' and Shot Callin' (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(8339, {		-- Collect Your Deck (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(8340, {		-- Deck Your Collection (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
				["g"] = {
					i(98543, {	-- Wraps of the Blood-Soaked Brawler
						["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
					}),
				},
			}),
			ach(9176, {		-- Deck Your Collection (Season 2)
				["races"] = ALLIANCE_ONLY,
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
			ach(8335, {		-- Having a Brawl (Season 1)
				["races"] = ALLIANCE_ONLY,
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
			ach(8336, {		-- I've Got the Biggest Brawls of Them All (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_6_0_2 },
			}),
			ach(11565, {	-- King of the Guild (Season 3)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(7946, {		-- Now You're Just Showing Off (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9171, {		-- Now You're Just Showing Off (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(7949, {		-- Rabble Rabble Rabble (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_3_0, REMOVED_7_0_3 },
			}),
			ach(11573, {	-- Rumble Club
				["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 },
			}),
			ach(7947, {		-- The First Rule of Brawler's Guild (Season 1 or 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_7_0_3 },
			}),
			ach(11558, {	-- The First Rule of Brawler's Guild
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_9_1_5 },
			}),
			ach(7940, {		-- The Second Rule of Brawler's Guild (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9169, {		-- The Second Rule of Brawler's Guild (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
				["g"] = {
					i(93195, {	-- Brawler's Pass
						["timeline"] = { ADDED_5_1_0, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(11563, {	-- The Second Rule of Brawler's Guild (Season 3)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(13189, {	-- The Second Rule of Brawler's Guild
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
				["g"] = {
					i(93195, {	-- Brawler's Pass
						["timeline"] = { ADDED_5_1_0, REMOVED_9_1_5 },
					}),
				}
			}),
			ach(7937, {		-- You Are Not Your $#*@! Legplates (Season 1)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			ach(9168, {		-- You Are Not Your $#*@! Legplates (Season 2)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			ach(11560, {	-- You Are Not Your $#*@! Legplates (Season 3)
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1 },
			}),
			ach(13186, {	-- You Are Not Your $#*@! Legplates
				["races"] = ALLIANCE_ONLY,
				["timeline"] = { ADDED_8_1_5, REMOVED_9_1_5 },
			}),
			ach(11567, {	-- You Are Not The Contents Of Your Wallet
				["timeline"] = { ADDED_7_1_5, REMOVED_9_1_5 },
			}),
		}),
		n(FACTIONS, sharedData({
			["races"] = ALLIANCE_ONLY,
		},{
			faction(FACTION_BRAWLPUB_SEASON_1, {	-- Bizmo's Brawlpub (Season 1)
				["timeline"] = { ADDED_5_1_0, REMOVED_6_0_2 },
			}),
			faction(FACTION_BRAWLPUB_SEASON_2, {	-- Bizmo's Brawlpub (Season 2)
				["timeline"] = { ADDED_6_0_3_LAUNCH, REMOVED_7_0_3_LAUNCH },
			}),
			faction(FACTION_BRAWLPUB_SEASON_3, {	-- Bizmo's Brawlpub (Season 3)
				["timeline"] = { ADDED_7_2_0, REMOVED_8_0_1_LAUNCH },
			}),
			faction(FACTION_BRAWLPUB_SEASON_4, {	-- Bizmo's Brawlpub (Season 4)
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
			q(55002, {	-- Murder at the Brawlpub
				["qg"] = 68363,	-- Quackenbush <Bizmo's Brawlpub Quartermaster>
				["description"] = "This quest can be accepted after you successfully complete any (or your first) Brawl.",
				["coord"] = { 50.2, 23.1, 500 },
			}),
			q(55003, {	-- Put Up Your Dukes
				["qg"] = 150313,	-- Commander Daalo
				["sourceQuest"] = 55002,	-- Murder at the Brawlpub
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55004, {	-- Undercover Agent: Ann Dennyson
				["qg"] = 150313,	-- Commander Daalo
				["sourceQuest"] = 55003,	-- Put Up Your Dukes
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55005, {	-- The Financial Participation Incentive
				["qg"] = 150314,	-- Ann Dennyson
				["cost"] = { { "i", 143762, 1 }, },	-- High Roller's Contract
				["sourceQuest"] = 55004,	-- Undercover Agent: Ann Dennyson
				["coord"] = { 69.7, 36.7, 500 },
			}),
			q(55006, {	-- A Favor for Your Old Chum Winifred
				["qg"] = 68365,	-- Lord Winifred Browne <Prediction Incentives>
				["sourceQuest"] = 55005,	-- The Financial Participation Incentive
				["coord"] = { 63.2, 40.9, 500 },
			}),
			q(55007, {	-- Lord Browne's Debts
				["qg"] = 68365,	-- Lord Winifred Browne <Prediction Incentives>
				["cost"] = { { "i", 164935, 1 }, },	-- Challenge Card: Lord Sylysthrel
				["sourceQuest"] = 55006,	-- A Favor for Your Old Chum Winifred
				["coord"] = { 63.3, 40.6, 500 },
				["g"] = {
					i(164941),	-- Huge Pile of Legitimately-Earned Brawler's Gold (QI!)
				},
			}),
			q(55008, {	-- Evidence Packet: Lord Winifred Browne
				["qg"] = 150314,	-- Ann Dennyson
				["sourceQuest"] = 55007,	-- Lord Browne's Debts
				["coord"] = { 68.0, 36.6, 500 },
				["g"] = {
					i(167034),	-- Evidence Packet: Lord Winifred Browne (QI!)
				},
			}),
			q(55009, {	-- Undercover Agent: Saralara Fizzlesprang
				["qg"] = 150313,	-- Commander Daalo
				["sourceQuest"] = 55008,	-- Evidence Packet: Lord Winifred Browne
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55010, {	-- Soul Splinters
				["qg"] = 150317,	-- Shadowmaster O'Flannerty
				["sourceQuest"] = 55009,	-- Undercover Agent: Saralara Fizzlesprang
				["coord"] = { 68.0, 24.8, 500 },
				["description"] = "You can save previously earned Brawler's Purses and open them while on this quest - Each Brawler's Purse gives 10 - 12 Soul Splinters, so you will need 9 - 10 Brawler's Purses to complete this quest.",
				["g"] = {
					i(164928),	-- Soul Splinter (QI!)
				},
			}),
			q(55011, {	-- Super Soul Splinters
				["qg"] = 150317,	-- Shadowmaster O'Flannerty
				["sourceQuest"] = 55010,	-- Soul Splinters
				["coord"] = { 68.0, 24.8, 500 },
				["description"] = "You can save previously earned Rumbler's Purses and open them while on this quest - Each Rumbler's Purse gives 1 Super Soul Splinter, so you will need 3 Rumbler's Purses to complete this quest.",
				["g"] = {
					i(164929),	-- Super Soul Splinter (QI!)
				},
			}),
			q(55012, {	-- Cause for Concern
				["sourceQuest"] = 55011,	-- Super Soul Splinters
			}),
			q(55013, {	-- The Precious 13-Tooth Gogglegear
				["qg"] = 150315,	-- Saralara Fizzlesprang
				["cost"] = { { "i", 94178, 1 }, },	-- Challenge Card: G.G. Engineering
				["sourceQuest"] = 55012,	-- Cause for Concern
				["coord"] = { 44.4, 34.6, 500 },
				["g"] = {
					i(164937),	-- 13-Tooth Gogglegear (QI!)
				},
			}),
			q(55014, {	-- The Fizzlesprang Goggle Experiment
				["qg"] = 150315,	-- Saralara Fizzlesprang
				["sourceQuest"] = 55013,	-- The Precious 13-Tooth Gogglegear
				["coord"] = { 44.4, 34.6, 500 },
				["g"] = {
					i(167033),	-- Saralara's Goggles (QI!)
				},
			}),
			q(55015, {	-- Evidence Packet: Shadowmaster O'Flannerty
				["qg"] = 150315,	-- Saralara Fizzlesprang
				["sourceQuest"] = 55014,	-- The Fizzlesprang Goggle Experiment
				["coord"] = { 44.4, 34.6, 500 },
				["g"] = {
					i(167035),	-- Evidence Packet: Shadowmaster O'Flannerty (QI!)
				},
			}),
			q(55016, {	-- Undercover Agent: Silent Jussho
				["qg"] = 150313,	-- Commander Daalo
				["cost"] = { { "i", 143759, 1 }, },	-- VIP Room Rental Form
				["sourceQuest"] = 55015,	-- Evidence Packet: Shadowmaster O'Flannerty
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55017, {	-- Flaunt It If You Got It
				["qg"] = 70722,	-- Grant Lazarby
				["cost"] = {
					{ "i", 98121, 1, },		-- Amberseed Bun
					{ "i", 98117, 1, },		-- Moneybrau
					{ "i", 143758, 1, },	-- Free Drinks Voucher
				},
				["sourceQuest"] = 55016,	-- Undercover Agent: Silent Jussho
				["coord"] = { 33.1, 64.3, 500 },
			}),
			q(55018, {	-- Simply Dying of Boredom
				["qg"] = 70722,	-- Grant Lazarby
				["sourceQuest"] = 55017,	-- Flaunt It If You Got It
				["coord"] = { 33.1, 64.3, 500 },
				["g"] = {
					i(167038),	-- Bizmo's Brawlpub Sign (QI!)
				},
			}),
			q(55019, {	-- Evidence Packet: Grant Lazarby
				["qg"] = 150316,	-- Silent Jussho
				["sourceQuest"] = 55018,	-- Simply Dying of Boredom
				["coord"] = { 30.3, 87.7, 500 },
				["g"] = {
					i(167036),	-- Evidence Packet: Grant Lazarby (QI!)
				},
			}),
			q(55020, {	-- The Brawlpub Trial
				["qg"] = 150313,	-- Commander Daalo
				["sourceQuest"] = 55019,	-- Evidence Packet: Grant Lazarby
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55021, {	-- A Clue from Area 52
				["qg"] = 150313,	-- Commander Daalo
				["sourceQuest"] = 55020,	-- The Brawlpub Trial
				["coord"] = { 72.7, 68.4, 500 },
			}),
			q(55022, {	-- Solving the Mystery
				["qg"] = 150320,	-- Bizmo
				["cost"] = { { "i", 164936, 1 }, },	-- Mysterious Challenge Card
				["sourceQuest"] = 55021,	-- A Clue from Area 52
				["coord"] = { 31.1, 66.5, NETHERSTORM },
				["races"] = ALLIANCE_ONLY,
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
			n(70752, {	-- Card Trader Leila
				i(94178),	-- Challenge Card: G.G. Engineering
				i(164935),	-- Challenge Card: Lord Sylysthrel
				i(164936, {	-- Mysterious Challenge Card
					["description"] = "If you fail to kill Xan-Sallish for the 'Solving the Mystery' quest, you can buy this card again from this vendor.",
					["groups"] = {
						n(145782, {	-- Xan-Sallish <Blade of the Watcher>
							i(164940, {	-- Mysterious Satchel
								i(164942),	-- Shadowscrawled Tome
							}),
						}),
					},
				}),
			}),
			n(70723, {	-- Dame Jesepha
				i(98121, {	-- Amberseed Bun
					["description"] = "Throw this at Brawlers while on the 'Flaunt It If You Got It' quest.",
				}),
			}),
			n(151941, {	-- Dershway the Triggered <Bizmo's Brawlpub Quartermaster>
				["description"] = "Brawler's Burly Mushan Beast is only available to those who had reached Rank 8 in Season 1 or Season 2.|nShirts are only available to those who have already earned them.|r",
				["groups"] = {
					i(142403, {	-- Brawler's Burly Basilisk (MOUNT!) unobtainable as of BFA prepatch
						["timeline"] = { ADDED_7_1_0, REMOVED_8_0_1 },
					}),
					i(98405, {	-- Brawler's Burly Mushan Beast (MOUNT!) unobtainable unless you reached Rank 8 in either Season 1 or Season 2
						["timeline"] = { ADDED_5_3_0, REMOVED_7_1_5 },
					}),
					i(167811),	-- Brawlers Guild Tabard
					i(122396),	-- Brawler's Razor Claws
					i(98085),	-- Brucehide Jersey
					i(93025),	-- Clock'em (PET!)
					i(98092),	-- Digmaster's Bodysleeve
					iensemble(167891),	-- Ensemble: Brawler's Garb
					i(98079),	-- Floot-Tooter's Tunic
					TempForceMisc(i(127773, {	-- Gemcutter Module: Mastery
						["description"] = "Take this recipe to the \"Apexis Gemcutter\" in Tanaan Jungle to learn.  If you have this recipe already you will need to revisit the vendor to cache the recipe.",
						["requireSkill"] = JEWELCRAFTING,
					})),
					i(98080),	-- Gorgeous Blouse
					i(98091),	-- Last Season's Shirt
					i(98084),	-- Ooze-Soaked Shirt
					i(98087),	-- Paper Shirt
					i(144391, {	-- Pugilist's Powerful Punching Ring
						["races"] = ALLIANCE_ONLY,
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
			n(70719, {	-- Mozzle Gearbeer
				i(98117, {	-- Moneybrau
					["description"] = "Drink this while on the 'Flaunt It If You Got It' quest.",
				}),
			}),
			n(118898, {	-- Ulaani
				i(143763, {	-- Bag of Chipped Dice
					["cost"] = { { "c", 1299, 100 }, },	-- 100x Brawler's Gold
					["groups"] = {
						ach(9176, {	-- Deck Your Collection [Season 2]
							["races"] = ALLIANCE_ONLY,
							["groups"] = {
								i(98543),	-- Wraps of the Blood-Soaked Brawler
							},
						}),
						ach(13194),		-- I Am Thrall's Complete Lack Of Surprise
						n(117208, {		-- a Seagull
							i(144375, {		-- Feathered Brawler's Purse
								i(144368),		-- Felfeather Jersey
							}),
						}),
						n(70748, {		-- Argh
							i(151222, {		-- Leather Brawler's Purse
								i(98080),		-- Gorgeous Blouse
							}),
						}),
						n(116855, {		-- Ash'katzuum
							i(144373, {		-- Claw-Marked Brawler's Purse
								i(144365),		-- The Very Best Shirt
							}),
						}),
						n(115245, {		-- B3@7 B-0X
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
						n(119150, {		-- Klunk
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
				i(143761, {	-- Blood-Soaked Angel Figurine
					["cost"] = { { "c", 1299, 250 }, },	-- 250x Brawler's Gold
				}),
				i(143760, {	-- Brawler's Potion Dispenser
					["cost"] = { { "c", 1299, 500 }, },	-- 500x Brawler's Gold
				}),
				i(143758, {	-- Free Drinks Voucher
					["description"] = "Use this while on the 'Flaunt It If You Got It' quest.",
					["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
				}),
				i(143762, {	-- High Roller's Contract
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
					["description"] = "Use this while on the 'Undercover Agent: Silent Jussho' quest if you do not have Rank 6 by this point.",
					["cost"] = { { "c", 1299, 1000 }, },	-- 1,000x Brawler's Gold
				}),
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_1_0 } }, {
	m(500, {	-- Bizmo's Brawlpub
		n(QUESTS, {
			q(32112),	-- FLAG - Been to Fight Club - completing first fight
			q(32113),	-- FLAG - Been to Fight Club Today
			q(32444),	-- FLAG - Earned Brawler Title (Weekly)
		}),
	}),
})));