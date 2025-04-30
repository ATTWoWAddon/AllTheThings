-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(MONK, bubbleDownSelf({ ["classes"] = { MONK } }, {
			["maps"] = { THE_WANDERING_ISLE },
			["g"] = {
				n(ARTIFACTS, {
					cl(MONK, BREWMASTER, {
						gt(254, {	-- Brewhouse
							["description"] = "Click this once per day.",
							["questID"] = 43974,
							["coord"] = { 55, 56.5, THE_WANDERING_ISLE },
							["g"] = {
								i(139561, {	-- Legend of the Monkey King
									artifact(959),	-- Fu Zan, the Wanderer's Companion
								}),
								i(140295),	-- Badgercharm Brew
								i(140288),	-- Bubblebelly Brew
								i(140293),	-- Exploding Cask
								i(140291),	-- Featherfoot Brew
								i(140289),	-- Lungfiller Brew
								i(140290),	-- Seastrider Brew
								i(140256),	-- Skysinger Brew
								i(140287),	-- Stoutheart Brew
								i(140253),	-- Swiftpad Brew
								i(140292),	-- Tumblerun Brew
							},
						}),
					}),
					cl(MONK, MISTWEAVER, {
						i(139562, {	-- Breath of the Undying Serpent
							artifact(519),	-- Sheilun, Staff of the Mists
						}),
					}),
					cl(MONK, WINDWALKER, {
						i(139563, {	-- The Stormfist
							artifact(527),	-- Fists of the Heavens
						}),
					}),
				}),
				n(FOLLOWERS, bubbleDownSelf({
					["collectible"] = false,
					["u"] = UNLEARNABLE,	-- Temporary troops
				}, {
					follower(702),	-- Echo of Chi-Ji
					follower(701),	-- Echo of Niuzao
					follower(703),	-- Echo of Xuen
					follower(1051),	-- Masters of Serenity
					follower(1052),	-- Masters of Serenity
					follower(1053),	-- Masters of Serenity
					follower(1054),	-- Masters of Serenity
					follower(627),	-- Ox Adepts
					follower(689),	-- Ox Adepts
					follower(690),	-- Ox Adepts
					follower(772),	-- Ox Adepts
					follower(622),	-- Ox Initiates
					follower(625),	-- Ox Initiates
					follower(626),	-- Ox Initiates
					follower(773),	-- Ox Initiates
					follower(628),	-- Ox Masters
					follower(695),	-- Ox Masters
					follower(696),	-- Ox Masters
					follower(774),	-- Ox Masters
					follower(630),	-- Tiger Adepts
					follower(691),	-- Tiger Adepts
					follower(692),	-- Tiger Adepts
					follower(776),	-- Tiger Adepts
					follower(629),	-- Tiger Initates
					follower(655),	-- Tiger Initates
					follower(656),	-- Tiger Initates
					follower(775),	-- Tiger Initates
					follower(631),	-- Tiger Masters
					follower(693),	-- Tiger Masters
					follower(694),	-- Tiger Masters
					follower(777),	-- Tiger Masters
				})),
				n(QUESTS, {
					-- Intro
					q(12103, {	-- Before the Storm
						-- Available, last check: 8.3
						["provider"] = { "n", 98519 },	-- Initiate Da-Nel
						["maps"] = { LEGION_DALARAN },
					}),
					q(40236, {	-- The Dawning Light
						["sourceQuests"] = { 12103 },	-- Before The Storm
						["provider"] = { "n", 99181 },	-- Fearsome Jang
						["coord"] = { 51.3, 54.4, THE_WANDERING_ISLE },
					}),
					-- Artifact
					q(40636, {	-- Prepare To Strike
						["sourceQuests"] = { 40236 },	-- The Dawning Light
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(43973, {	-- Two Paths, Two Weapons
						["sourceQuests"] = { 40636 },	-- Prepare to Strike
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
					}),
					q(44424, {	-- Three Paths, Three Weapons
						["sourceQuests"] = { 43973 },	-- Two Paths, Two Weapons
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					cl(MONK, BREWMASTER, {
						q(42762, {	-- The Wanderer's Companion
							["sourceQuests"] = {
								40636,	-- Prepare To Strike
								43973,	-- Two Paths, Two Weapons
								44424,	-- Three Paths, Three Weapons
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
							["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
						}),
						q(42768, {	-- The Riddle of Purity
							["sourceQuests"] = { 42762 },	-- The Wanderer's Companion
							["provider"] = { "n", 108700 },	-- The Monkey King
							["coord"] = { 41.6, 27.4, THE_JADE_FOREST },
							["g"] = {
								i(138477),	-- Pure Water Core (QI!)
								i(173703),	-- Purity Jug (QI!)
							},
						}),
						q(42766, {	-- The Riddle of the Barrel
							["sourceQuests"] = { 42762 },	-- The Wanderer's Companion
							["provider"] = { "n", 108700 },	-- The Monkey King
							["coord"] = { 41.6, 27.4, THE_JADE_FOREST },
						}),
						q(42767, {	-- The Riddle of the Land
							["sourceQuests"] = { 42762 },	-- The Wanderer's Companion
							["provider"] = { "n", 108700 },	-- The Monkey King
							["coord"] = { 41.6, 27.4, THE_JADE_FOREST },
							["g"] = {
								i(173704, {	-- Granary Jug (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
								i(138623),	-- Sack of Roasted Grain (QI!)
							},
						}),
						q(42957, {	-- Journey to the East
							["sourceQuests"] = {
								42766,	-- The Riddle of the Barrel
								42767,	-- The Riddle of the Land
								42768,	-- The Riddle of Purity
							},
							["provider"] = { "n", 109049 },	-- The Monkey King
							["maps"] = { VALLEY_OF_THE_FOUR_WINDS },
							["g"] = {
								i(173706, {	-- Jade Jug (QI!)
									["timeline"] = { ADDED_9_0_1 },
								}),
							},
						}),
						q(42868, {	-- The Monkey King's Challenge
							["sourceQuests"] = { 42957 },	-- Journey to the East
							["provider"] = { "n", 109187 },	-- The Monkey King
							["coord"] = { 55.3, 58.1, THE_JADE_FOREST },
						}),
						q(42765, {	-- The Trial at the Temple
							["sourceQuests"] = { 42868 },	-- The Monkey King's Challenge
							["provider"] = { "n", 109187 },	-- The Monkey King
							["coord"] = { 55.4, 58.3, THE_JADE_FOREST },
							["maps"] = { 791, 792 },	-- Temple of the Jade Serpent (Scenario Map)
							["g"] = {
								i(128938, {	-- Fu Zan, the Wanderer's Companion
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(289),	-- Fu Zan, the Wanderer's Companion
									},
								}),
							},
						}),
					}),
					cl(MONK, MISTWEAVER, {
						q(41003, {	-- The Emperor's Gift
							["sourceQuests"] = {
								40636,	-- Prepare To Strike
								43973,	-- Two Paths, Two Weapons
								44424,	-- Three Paths, Three Weapons
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
							["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
							["maps"] = { 728 },	-- Terrace of Endless Spring (Scenario Map)
							["g"] = {
								i(128937, {	-- Sheilun, Staff of the Mists
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(123),	-- Sheilun, Staff of the Mists
									},
								}),
							},
						}),
					}),
					cl(MONK, WINDWALKER, {
						q(40569, {	-- The Legend of the Sands
							["sourceQuests"] = {
								40636,	-- Prepare To Strike
								43973,	-- Two Paths, Two Weapons
								44424,	-- Three Paths, Three Weapons
							},
							["sourceQuestNumRequired"] = 1,
							["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
							["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
						}),
						q(40633, {	-- Off To Adventure!
							["sourceQuests"] = { 40569 },	-- The Legend of the Sands
							["provider"] = { "n", 100475 },	-- Li Li Stormstout
							["coord"] = { 49.2, 58.6, THE_WANDERING_ISLE },
						}),
						q(40634, {	-- Thunder on the Sands
							["sourceQuests"] = { 40633 },	-- Off To Adventure!
							["provider"] = { "n", 47684 },	-- King Phaoris
							["coord"] = { 54.9, 32.8, ULDUM },
							["g"] = { i(132560) },	-- Essence of the Whirlwind (QI!)
						}),
						q(40570, {	-- Into The Heavens
							["sourceQuests"] = { 40634 },	-- Thunder on the Sands
							["provider"] = { "n", 47684 },	-- King Phaoris
							["coord"] = { 54.9, 32.8, ULDUM },
							["maps"] = { 716 },	-- Skywall (Scenario Map)
							["g"] = {
								i(132745),	-- Essence of the Whirlwind (QI!)
								i(128940, {	-- Fists of the Heavens [Main Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(290),	-- Fists of the Heavens [Main Hand]
									},
								}),
								i(133948, {	-- Fists of the Heavens [Off Hand]
									["ItemAppearanceModifierID"] = 9,
									["groups"] = {
										artifact(290),	-- Fists of the Heavens [Off Hand]
									},
								}),
							},
						}),
					}),
					q(44249, {	-- Inner Sanctuary
						["sourceQuests"] = {
							42765,	-- The Trial at the Temple
							41003,	-- The Emperor's Gift
							40570,	-- Into The Heavens
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 112338 },	-- Caydori Brightstar
						["coord"] = { 50.3, 59.0, THE_WANDERING_ISLE },
						["g"] = {
							i(139734),	-- Grandmaster's Crown
						},
					}),
					q(40793, {	-- A Matter of Planning
						["sourceQuests"] = {
							42765,	-- The Trial at the Temple
							41003,	-- The Emperor's Gift
							40570,	-- Into The Heavens
						},
						["sourceQuestNumRequired"] = 1,
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
					}),
					q(40698, {	-- Purity of Form
						["sourceQuests"] = { 40793 },	-- A Matter of Planning
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_0_3, REMOVED_8_0_1 },
					}),
					-- Start Zone
					q(40795, {	-- The Fight Begins
						["sourceQuests"] = {
							-- #if BEFORE BFA
							40698,	-- Purity of Form
							-- #else
							40793,	-- A Matter of Planning
							-- #endif
						},
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.8, 59.7, THE_WANDERING_ISLE },
					}),
					-- Learn Mission Table & Research
					q(42186, {	-- Growing Power
						["sourceQuests"] = { 40795 },	-- The Fight Begins
						["provider"] = { "n", 112696 },	-- Initiate Da-Nel
						["maps"] = { LEGION_DALARAN },
						["isBreadcrumb"] = true,
					}),
					q(42187, {	-- Rise, Champions
						["sourceQuests"] = { 42186 },	-- Growing Power
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
					}),
					q(41115, {	-- Champion: Chen Stormstout
						["sourceQuests"] = { 42187 },	-- Rise, Champions
						["provider"] = { "n", 102820 },	-- Chen Stormstout
						["coord"] = { 55.2, 57.1, THE_WANDERING_ISLE },
						["g"] = {
							follower(596),	-- Chen Stormstout
						},
					}),
					q(40704, {	-- Champion: Li Li Stormstout
						["sourceQuests"] = { 42187 },	-- Rise, Champions
						["provider"] = { "n", 101046 },	-- Li Li Stormstout
						["coord"] = { 49.1, 58.6, THE_WANDERING_ISLE },
						["g"] = {
							follower(588),	-- Li Li Stormstout
						},
					}),
					q(41945, {	-- Tianji of the Ox
						["sourceQuests"] = {
							40704,	-- Champion: Li Li Stormstout
							41115,	-- Champion: Chen Stormstout
						},
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.7, 59.6, THE_WANDERING_ISLE },
					}),
					q(41946, {	-- Building our Troops
						["sourceQuests"] = { 41945 },	-- Tianji of the Ox
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.8, 59.6, THE_WANDERING_ISLE },
					}),
					q(42210, {	-- Scrolls of Knowledge
						["sourceQuests"] = { 41946 },	-- Building Our Troops
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.8, 59.7, THE_WANDERING_ISLE },
					}),
					q(42191, {	-- Tech It Up A Notch
						["sourceQuests"] = { 42210 },	-- Scrolls of Knowledge
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.8, 59.6, THE_WANDERING_ISLE },
					}),
					-- Chap 1
					q(41905, {	-- Report from Tian Monastery
						["sourceQuests"] = { 42191 },	-- Tech It Up a Notch
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
						["g"] = {
							i(140483),	-- Jade Fragment
						},
					}),
					q(41728, {	-- The Defense of Tian Monastery
						["sourceQuests"] = { 41905 },	-- Report From Tian Monastery
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(41729, {	-- Slowing the Spread
						["sourceQuests"] = { 41905 },	-- Report from Tian Monastery
						["provider"] = { "n", 104745 },	-- Instructor Myang
						["coord"] = { 38.3, 25.8, THE_JADE_FOREST },
						["description"] = "You can get this quest after taking the flight to Tian Monastery during |cffffff00The Defense of Tian Monastery|r.",
					}),
					q(41730, {	-- Desperate Strike
						["sourceQuests"] = { 41728 },	-- The Defense of Tian Monastery
						["provider"] = { "n", 104784 },	-- Taran Zhu
						["coord"] = { 38.9, 25.1, THE_JADE_FOREST },
					}),
					q(41731, {	-- Storm, Earth, and Fire
						["sourceQuests"] = { 41728 },	-- The Defense of Tian Monastery
						["provider"] = { "n", 104784 },	-- Taran Zhu
						["coord"] = { 38.9, 25.1, THE_JADE_FOREST },
					}),
					q(41732, {	-- The Hand of Keletress
						["sourceQuests"] = {
							41730,	-- Desperate Strike
							41729,	-- Slowing the Spread
							41731,	-- Storm, Earth, and Fire
						},
						["provider"] = { "n", 104850 },	-- The Monkey King
						["coord"] = { 42.0, 25.5, THE_JADE_FOREST },
					}),
					q(41733, {	-- Rebuilding the Order
						["sourceQuests"] = { 41732 },	-- The Hand of Keletress
						["provider"] = { "n", 104744 },	-- High Elder Cloudfall
						["coord"] = { 45.4, 25.0, THE_JADE_FOREST },
						["g"] = {
							artifact(342),	-- Fu Zan, the Wanderer's Companion
							artifact(511),	-- Sheilun, Staff of the Mists
							artifact(530),	-- Fists of the Heavens [Main Hand]
							-- artifact(530),	-- Fists of the Heavens [Off Hand]
						},
					}),
					q(43319, {	-- The Way of the Tiger
						["sourceQuests"] = { 41733 },	-- Rebuilding the Order
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(41734, {	-- Champion: Taran Zhu
						["sourceQuests"] = { 43319 },	-- The Way of the Tiger
						["provider"] = { "n", 104984 },	-- Taran Zhu <Lord of the Shado-Pan>
						["coord"] = { 51.1, 49.5, THE_WANDERING_ISLE },
						["g"] = {
							follower(603),	-- Taran Zhu
						},
					}),
					q(41735, {	-- Champion: The Monkey King
						["sourceQuests"] = { 43319 },	-- The Way of the Tiger
						["provider"] = { "n", 102902 },	-- The Monkey King
						["coord"] = { 51.1, 49.5, THE_WANDERING_ISLE },
						["g"] = {
							follower(602),	-- The Monkey King
						},
					}),
					-- Chap 2
					q(43062, {	-- Further Training
						["sourceQuests"] = { 41733 },	-- Rebuilding the Order
						["provider"] = { "n", 104744 },	-- High Elder Cloudfall
						["coord"] = { 52.5, 57.8, THE_WANDERING_ISLE },
					}),
					q(41907, {	-- Appropriations
						["sourceQuests"] = { 41733 },	-- Rebuilding the Order
						["provider"] = { "n", 104744 },	-- High Elder Cloudfall
						["coord"] = { 52.5, 57.8, THE_WANDERING_ISLE },
					}),
					q(41909, {	-- Tracking the Tideskorn
						["sourceQuests"] = { 41733 },	-- Rebuilding the Order
						["provider"] = { "n", 104744 },	-- High Elder Cloudfall
						["coord"] = { 52.5, 57.8, THE_WANDERING_ISLE },
					}),
					q(43054, {	-- An Ample Stockpile
						["sourceQuests"] = { 41907 },	-- Appropriations
						["provider"] = { "n", 98945 },	-- Lao Shu
						["coord"] = { 49.0, 58.3, THE_WANDERING_ISLE },
					}),
					q(43061, {	-- Silkweave Bandages
						["repeatable"] = true,	--	repeatable quest during "An Ample Stockpile"
						["altQuests"] = { 43054 },	-- An Ample Stockpile
						["provider"] = { "n", 98945 },	-- Lao Shu
						["coord"] = { 49.0, 58.4, THE_WANDERING_ISLE },
					}),
					q(43058, {	-- Spiced Rib Roast
						["repeatable"] = true,	--	repeatable quest during "An Ample Stockpile"
						["altQuests"] = { 43054 },	-- An Ample Stockpile
						["provider"] = { "n", 98945 },	-- Lao Shu
						["coord"] = { 49.0, 58.4, THE_WANDERING_ISLE },
					}),
					q(43060, {	-- Highmountain Salmon
						["repeatable"] = true,	--	repeatable quest during "An Ample Stockpile"
						["altQuests"] = { 43054 },	-- An Ample Stockpile
						["provider"] = { "n", 98945 },	-- Lao Shu
						["coord"] = { 49.0, 58.4, THE_WANDERING_ISLE },
					}),
					--- Chap 3
					q(41849, {	-- The Iron Fist
						["sourceQuests"] = {
							43062,	-- Further Training
							41909,	-- Tracking the Tideskorn
							43054,	-- An Ample Stockpile
						},
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(41850, {	-- The Master of Swords
						["sourceQuests"] = { 41849 },	-- The Iron Fist
						["provider"] = { "n", 105045 },	-- Angus Ironfist
						["coord"] = { 62.9, 59.5, STORMHEIM },
					}),
					q(41851, {	-- Quelling the Tide
						["sourceQuests"] = { 41850 },	-- The Master of Swords
						["provider"] = { "n", 105088 },	-- Sylara Steelsong
						["coord"] = { 64.2, 57.0, STORMHEIM },
					}),
					q(41852, {	-- No Monk Left Behind
						["sourceQuests"] = { 41850 },	-- The Master of Swords
						["provider"] = { "n", 105072 },	-- Angus Ironfist
						["coord"] = { 64.2, 57.0, STORMHEIM },
					}),
					q(41853, {	-- Zero to Hiro
						["sourceQuests"] = { 41850 },	-- The Master of Swords
						["provider"] = { "n", 105072 },	-- Angus Ironfist
						["coord"] = { 64.2, 57.0, STORMHEIM },
					}),
					q(41854, {	-- Brick by Brick
						["sourceQuests"] = {
							41851,	-- Quelling the Tide
							41852,	-- No Monk Left Behind
							41853,	-- Zero to Hiro
						},
						["provider"] = { "n", 105152 },	-- Hiro
						["maps"] = { STORMHEIM },
						["g"] = {
							i(139738),	-- Grandmaster's Cuffs
						},
					}),
					q(41737, {	-- Champion: Hiro
						["sourceQuests"] = { 41854 },	-- Brick by Brick
						["provider"] = { "n", 105058 },	-- Hiro
						["coord"] = { 51.8, 49.6, THE_WANDERING_ISLE },
						["g"] = {
							follower(606),	-- Hiro
						},
					}),
					q(41738, {	-- Champion: Sylara Steelsong
						["sourceQuests"] = { 41854 },	-- Brick by Brick
						["provider"] = { "n", 105056 },	-- Sylara Steelsong
						["coord"] = { 51.8, 49.6, THE_WANDERING_ISLE },
						["g"] = {
							follower(604),	-- Sylara Steelsong
						},
					}),
					q(41736, {	-- Champion: Angus Ironfist
						["sourceQuests"] = { 41854 },	-- Brick by Brick
						["provider"] = { "n", 105046 },	-- Angus Ironfist
						["coord"] = { 51.8, 49.6, THE_WANDERING_ISLE },
						["g"] = {
							follower(605),	-- Angus Ironfist
						},
					}),
					-- Chap 4
					q(41038, {	-- The Mead Master
						["sourceQuests"] = {
							41736,	-- Champion: Angus Ironfist
							41737,	-- Champion: Hiro
							41738,	-- Champion: Sylara Steelsong
						},
						["provider"] = { "n", 41736 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(41039, {	-- Stolen Knowledge
						["sourceQuests"] = { 41038 },	-- The Mead Master
						["provider"] = { "n", 102843 },	-- Aegira
						["coord"] = { 62.1, 20.2, STORMHEIM },
						["g"] = {
							i(133995),	-- Storm Brew Recipe (QI!)
						},
					}),
					q(41910, {	-- Freya's Spring
						["sourceQuests"] = { 41039 },	-- Stolen Knowledge
						["provider"] = { "n", 102843 },	-- Aegira (Broken Temple Brewmaster)
						["maps"] = { STORMHEIM },
					}),
					q(41040, {	-- Halls of Valor: The Brewmaster
						["sourceQuests"] = { 41039 },	-- Stolen Knowledge
						["provider"] = { "n", 102843 },	-- Aegira (Broken Temple Brewmaster)
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
					}),
					q(41911, {	-- Amaranthine Hops
						["sourceQuests"] = { 41039 },	-- Stolen Knowledge
						["provider"] = { "n", 102996 },	-- Aegira (Broken Temple Brewmaster)
						["maps"] = { STORMHEIM },
						["g"] = {
							i(139033),	-- Amaranthine Hops (QI!)
						},
					}),
					q(41086, {	-- A Peaceful World
						["sourceQuests"] = { 41911 },	-- Amaranthine Hops
						["provider"] = { "n", 102820 },	-- Chen Stormstout
						["coord"] = { 55.2, 57.0, THE_WANDERING_ISLE },
					}),
					q(43151, {	-- Making a Trade
						["sourceQuests"] = { 41911 },	-- Amaranthine Hops (technically part of this quest)
						["provider"] = { "n", 109738 },	-- Fleuris Asterleaf
						["cost"] = { { "i", 124113, 20 } },	-- 20x Stonehide Leather
						["maps"] = { VALSHARAH },
					}),
					q(41059, {	-- Halls of Valor: Odyn's Cauldron
						["sourceQuests"] = { 41040 },	-- Halls of Valor: The Brewmaster
						["provider"] = { "n", 103049 },	-- Melba
						["maps"] = { 703, 704, 705 },	-- Halls of Valor
					}),
					q(32442, {	-- Impending Danger
						["sourceQuests"] = {
							41059,	-- Halls of Valor: Odyn's Cauldron
							41086,	-- A Peaceful World
							41910,	-- Freya's Spring
						},
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
					}),
					q(41087, {	-- Storm Brew
						["sourceQuests"] = { 32442 },	-- Impending Danger
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.4, THE_WANDERING_ISLE },
						["g"] = {
							title(329),	-- Grandmaster <Name>
							i(139731),	-- Grandmaster's Tunic
							i(142056),	-- Arcanum of the Order
							i(142063),	-- Dusk of the Order
							i(142058),	-- Fel Ward of the Order
							i(142059),	-- Flame of the Order
							i(142064),	-- Gale Wind of the Order
							i(142057),	-- Heartbeat of the Order
							i(142060),	-- Icy Core of the Order
							i(142061),	-- Iron Will of the Order
							i(142055),	-- Light of the Order
							i(142062),	-- Prosperity of the Order
						},
					}),
					q(41739, {	-- Champion: Aegira
						["provider"] = { "n", 105226 },	-- Aegira <Brewmaster>
						["coords"] = {
							{ 31.1, 40.5, THE_WANDERING_ISLE },	-- Next to Storm Brew turn-in
							{ 55.3, 57.3, THE_WANDERING_ISLE },	-- If you leave Storm Brew turn-in area without doing this quest
						},
						["g"] = {
							follower(607),	-- Aegira
						},
					}),
					q(43359, {	-- A Hero's Weapon
						["sourceQuests"] = { 41087 },	-- Storm Brew
						["provider"] = { "n", 100438 },	-- Iron-Body Ponshu
						["coord"] = { 51.4, 48.5, THE_WANDERING_ISLE },
						["g"] = {
							artifact(337),	-- Fu Zan, the Wanderer's Companion
							artifact(512),	-- Sheilun, Staff of the Mists
							artifact(533),	-- Fists of the Heavens [Main Hand]
							-- artifact(533),	-- Fists of the Heavens [Off Hand]
						},
					}),
					-- Interlude
					q(46024, {	-- An Urgent Warning
						["sourceQuest"] = 43359,	-- A Hero's Weapon
						["provider"] = { "n", 118430 },	-- Injured Initiate
						["coord"] = { 51.2, 58.8, THE_WANDERING_ISLE },
						["isBreadcrumb"] = true,
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					q(46025, {	-- Investigate the Broken Shore
						["sourceQuest"] = 46024,	-- An Urgent Warning
						["provider"] = { "n", 99179 },	-- Master Hsu <Mission Master>
						["coord"] = { 52.8, 59.6, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_2_0 },
					}),
					-- 7.2.0
					q(45440, {	-- A Brewing Situation
						["sourceQuests"] = {
							47137,	-- Champions of Legionfall
							-- #IF AFTER 7.2.0
							43359,	-- A Hero's Weapon
							-- #ELSE
							46025,	-- Investigate the Broken Shore
							-- #ENDIF
						},
						["provider"] = { "n", 116929 },	-- Brewmaster Blancee
						["coord"] = { 51.4, 48.6, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45404, {	-- Panic at the Brewery
						["sourceQuests"] = { 45440 },	-- A Brewing Situation
						["provider"] = { "n", 119664 },	-- Brewmaster Almai
						["coord"] = { 51.3, 48.5, THE_WANDERING_ISLE },
						["maps"] = { 872, 873, 874 },	-- Stormstout Brewery (Scenario Map)
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45459, {	-- Storming the Legion
						["sourceQuests"] = { 45404 },	-- Panic at the Brewery
						["provider"] = { "n", 119765 },	-- Spirit of Brewmaster Blanche
						["coord"] = { 51.5, 48.5, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45574, {	-- Fel Ingredients
						["sourceQuests"] = { 45459 },	-- Storming the Legion
						["provider"] = { "n", 117305 },	-- Brewmaster Almai
						["coord"] = { 53.6, 53.3, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45545, {	-- Barrel Toss
						["sourceQuests"] = { 45459 },	-- Storming the Legion
						["provider"] = { "n", 117305 },	-- Brewer Almai
						["coord"] = { 53.6, 53.3, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
						["g"] = { i(146308) },	-- Barrel of Storm Brew (QI!)
					}),
					q(45449, {	-- Alchemist Koryla
						["sourceQuests"] = { 45459 },	-- Storming the Legion
						["provider"] = { "n", 117305 },	-- Brewer Almai
						["coord"] = { 53.6, 53.3, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46320, {	-- Hope For a Cure
						["sourceQuests"] = {
							45574,	-- Fel Ingredients
							45449,	-- Alchemist Koryla
							45545,	-- Barrel Toss
						},
						["provider"] = { "n", 117305 },	-- Brewer Almai
						["coord"] = { 53.6, 53.4, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45442, {	-- Not Felling Well
						["sourceQuests"] = { 46320 },	-- Hope For a Cure
						["provider"] = { "n", 119765 },	-- Spirit of Brewmaster Blanche
						["coord"] = { 50.5, 57.8, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45771, {	-- A Time for Everything
						["sourceQuests"] = { 45442 },	-- Not Felling Well
						["provider"] = { "n", 119765 },	-- Spirit of Brewmaster Blanche
						["coord"] = { 50.5, 57.8, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(45790, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- Champion: Almai
						["sourceQuests"] = { 45771 },	-- A Time for Everything
						["provider"] = { "n", 117504 },	-- Brewer Almai
						["coord"] = { 51.6, 48.5, THE_WANDERING_ISLE },
						["g"] = {
							follower(998),	-- Brewer Almai
						},
					})),
					q(46353, {	-- Master Who?
						["sourceQuest"] = 45790,	-- Champion: Almai
						["provider"] = { "n", 118214 },	-- Yiska
						["coord"] = { 44.9, 62.0, BROKEN_SHORE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46341, {	-- The Tale of Ban-Lu
						["sourceQuests"] = { 46353 },	-- Master Who?
						["provider"] = { "n", 120758 },	-- Master Bu
						["coord"] = { 32.3, 43.3, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46342, {	-- Return to the Broken Peak
						["sourceQuests"] = { 46341 },	-- The Tale of Ban-Lu
						["provider"] = { "n", 120758 },	-- Master Bu
						["coord"] = { 32.3, 43.3, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46343, {	-- The Trail of Ban-Lu
						["sourceQuests"] = { 46342 },	-- Return to the Broken Peak
						["provider"] = { "n", 120722 },	-- Master Bu
						["coord"] = { 47.3, 41.7, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46344, {	-- Smelly's Luckydo
						["sourceQuests"] = { 46343 },	-- The Trail of Ban-Lu
						["provider"] = { "n", 120744 },	-- Smelly Mountaintop
						["coord"] = { 47.9, 49.0, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46346, {	-- The Shadow of Ban-Lu
						["sourceQuests"] = { 46344 },	-- Smelly's Luckydo
						["provider"] = { "n", 120722 },	-- Master Bu
						["coord"] = { 47.9, 48.8, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46347, {	-- Clean-up on Aisle Sha
						["sourceQuests"] = { 46346 },	-- The Shadow of Ban-Lu
						["provider"] = { "n", 120722 },	-- Master Bu
						["coord"] = { 36.5, 48.2, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46348, {	-- The River to Ban-Lu
						["sourceQuests"] = { 46347 },	-- Clean-up on Aisle Sha
						["provider"] = { "n", 120722 },	-- Master Bu
						["coord"] = { 36.5, 48.3, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46349, {	-- Lilies for Ryuli
						["sourceQuests"] = { 46348 },	-- The River to Ban-Lu
						["provider"] = { "n", 120726 },	-- Waterspeaker Ryuli
						["coord"] = { 74.4, 88.7, KUN_LAI_SUMMIT },
						["timeline"] = { ADDED_7_2_0 },
					}),
					q(46350, bubbleDownSelf({ ["timeline"] = { ADDED_7_2_0 } }, {	-- The Trial of Ban-Lu
						["sourceQuests"] = { 46349 },	-- Lilies for Ryuli
						["provider"] = { "n", 120726 },	-- Waterspeaker Ryuli
						["coord"] = { 73.9, 88.9, KUN_LAI_SUMMIT },
						["g"] = {
							mount(229385),	-- Ban-Lu, Grandmaster's Companion (MOUNT!)
						},
					})),
					-- Misc
					q(43881, {	-- Hitting the Books
						["provider"] = { "n", 106942 },	-- Lorewalker Cho <Head Archivist>
						["coord"] = { 46.8, 46.8, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_0_3, REMOVED_7_3_0 },
					}),
					q(46144, {	-- Knowledge is Power
						["sourceQuest"] = 43881,	-- Hitting the Books
						["provider"] = { "n", 106942 },	-- Lorewalker Cho <Head Archivist>
						["coord"] = { 46.8, 46.8, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46157, {	-- Furthering Knowledge
						["sourceQuest"] = 46144,	-- Knowledge is Power
						["provider"] = { "n", 106942 },	-- Lorewalker Cho <Head Archivist>
						["coord"] = { 46.8, 46.8, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_1_5, REMOVED_7_3_0 },
					}),
					q(46785, {	-- Further Advancement
						["sourceQuests"] = { 45771 },	-- A Time for Everything
						["provider"] = { "n", 99179 },	-- Master Hsu
						["coord"] = { 52.8, 59.6, THE_WANDERING_ISLE },
						["timeline"] = { ADDED_7_2_0 },
					}),
				}),
				n(SPECIAL,{
					gt(257, {	-- Celestial Favor
						q(44239, {	-- Echo of a Celestial
							["sourceQuests"] = { 42191 },	-- Tech It Up a Notch
							["provider"] = { "n", 106538 },	-- Tianili
							["coord"] = { 54.4, 58.8, THE_WANDERING_ISLE },
						}),
					}),
					gt(256, {	-- One with Destiny
						q(44238, {	-- Meditations on Fate
							["sourceQuests"] = { 42191 },	-- Tech It Up a Notch
							["provider"] = { "n", 110817 },	-- Yushi
							["coord"] = { 53.4, 57.8, THE_WANDERING_ISLE },
						}),
					}),
				}),
				n(VENDORS, {
					n(112338, {	-- Caydori Brightstar <Purveyor of Rare Goods>
						["coord"] = { 50.3, 59.0, THE_WANDERING_ISLE },
						["sym"] = {{"select","itemID",143727}},	-- Champion's Salute (TOY!)
						["g"] = {
							i(140543),	-- Fist of the Broken Temple
							i(140940, {	-- Grandmaster's Armor Kit
								["cost"] = { { "c", 1220, 2000 }, },	-- 2,000x Order Resources
							}),
							i(139734, {	-- Grandmaster's Crown
								["cost"] = 5000000,	-- 500g
							}),
							i(139738, {	-- Grandmaster's Cuffs
								["cost"] = 5000000,	-- 500g
							}),
							i(139732, {	-- Grandmaster's Footwraps
								["cost"] = 5000000,	-- 500g
							}),
							i(140973, {	-- Grandmaster's Greater Armor Kit
								["cost"] = { { "c", 1220, 4000 }, },	-- 4,000x Order Resources
							}),
							i(139735, {	-- Grandmaster's Legguards
								["cost"] = 5000000,	-- 500g
							}),
							i(140972, {	-- Grandmaster's Lesser Armor Kit
								["cost"] = { { "c", 1220, 500 }, },		-- 500x Order Resources
							}),
							i(139733, {	-- Grandmaster's Palms
								["cost"] = 5000000,	-- 500g
							}),
							i(139736, {	-- Grandmaster's Shoulderguards
								["cost"] = 5000000,	-- 500g
							}),
							i(139731, {	-- Grandmaster's Tunic
								["cost"] = 5000000,	-- 500g
							}),
							i(139737, {	-- Grandmaster's Waistband
								["cost"] = 5000000,	-- 500g
							}),
							i(136800),	-- Meditation Manual: Zen Flight (CI!)
							i(140564),	-- Rod of the Broken Temple
							i(140551),	-- Staff of the Broken Temple
						},
					}),
					n(99154, {	-- Mei Chele
						["coord"] = { 54.9, 62.4, THE_WANDERING_ISLE },
						["g"] = {
							i(147542, {	-- Ban-Fu, Cub of Ban-Lu (PET!)
								["sourceQuest"] = 46350,	-- The Trial of Ban-Lu
								["cost"] = { { "c", 1220, 1000 }, },	-- 1,000x Order Resources
								["timeline"] = { ADDED_7_2_0 },
							}),
						},
					}),
				}),
			},
		})),
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_0_3 } }, {
	n(CLASS_HALL, {
		cl(MONK, bubbleDownSelf({ ["classes"] = { MONK } }, {
			q(40127),	-- Da-Nel's Quest - Da-Nel sends you from Dalaran to Peak of Serenity
			q(40655),	-- Li Li - hopping on kite during "Off to Adventure!" (questID 40633)
			q(40516),	-- The Dawning Bit -  triggered after accepting "The Dawning Light" (questID 40236)
			q(46939, { ["timeline"] = { ADDED_7_2_0 } }),	-- Monk Finale - Ban-Lu mount cutscene
			q(44646),	-- Tracking Quest: 7.0 Class Hall - Monk - Pacing Mission 1 - Unlocks Ch 2
			q(44647),	-- Tracking Quest: 7.0 Class Hall - Monk - Pacing Mission 3A-6 - Unlocks Final Quest - completed the "Impending Danger" mission
			q(43129),	-- Tracking Quest: Freya's Spring 1 - completed the "Freya's Spring: The Mountain" mission
			q(43130),	-- Tracking Quest: Freya's Spring 2 - completed the "Freya's Spring: Snowblind Mesa" mission
			q(43131),	-- Tracking Quest: Freya's Spring 3 - completed the "Freya's Spring: The Mountain King" mission
			q(43132),	-- Tracking Quest: Freya's Spring 4 - completed the "Freya's Spring: Ice Furies" mission
			q(43133),	-- Tracking Quest: Freya's Spring 5 - completed the "Freya's Spring: Harpy Mother" mission
			q(41812),	-- Tracking Quest: Saw Boss Cinematic - cinematic during "The Hand of Keletress" (questID 41732)
			q(43065),	-- Tracking Quest: Vrykul Scouting 1 - completed the "Tracking the Tideskorn: Highlands" mission
			q(43066),	-- Tracking Quest: Vrykul Scouting 2 - completed the "Tracking the Tideskorn: Restless Dead" mission
			q(43067),	-- Tracking Quest: Vrykul Scouting 3 - completed the "Tracking the Tideskorn: Savage Beasts" mission
			q(43068),	-- Tracking Quest: Vrykul Scouting 4 - completed the "Tracking the Tideskorn: The Gates of Valor" mission
			q(43069),	-- Tracking Quest: Vrykul Scouting 5 - completed the "Tracking the Tideskorn: Storm Drakes" mission
		})),
	}),
})));