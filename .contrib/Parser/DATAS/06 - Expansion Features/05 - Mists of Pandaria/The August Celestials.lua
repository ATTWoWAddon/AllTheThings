-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
root(ROOTS.ExpansionFeatures, applyclassicphase(MOP_PHASE_ONE, expansion(EXPANSION.MOP, bubbleDown({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_AUGUST_CELESTIALS, {
		["description"] = "Each day, the August Celestials require your aid at one of their temples. Speak to the representative in your faction's Vale of Eternal Blossoms shrine to find out where your help is needed (|cff3f48ccSage Whiteheart for Alliance|r and |cff880015Sage Lotusbloom for Horde|r).\n\nThe dailies will be in one of these locations:\nJade Forest - Temple of the Jade Serpent\nKrasarang Wilds - Cradle of Chi-Ji\nKun-Lai Summit - Temple of the White Tiger\nTownlong Steppes - Niuzao Temple\n\n",
		["icon"] = 645203,
		["lvl"] = lvlsquish(90, 90, 15),
		["groups"] = {
			n(ACHIEVEMENTS, {
				ach(7287, {	-- Champion of Chi-Ji
					["maps"] = { KRASARANG_WILDS },
				}),
				ach(6543),	-- The August Celestials
			}),
			n(FACTIONS, {
				faction(FACTION_THE_AUGUST_CELESTIALS, {	-- The August Celestials
					["icon"] = 645203,
				}),
			}),
			n(QUESTS, sharedData({ ["isDaily"] = true, ["maxReputation"] = { FACTION_THE_AUGUST_CELESTIALS, EXALTED }, }, {	-- Daily Quests
				-- Krasarang Wilds
				q(31378, {	-- Challenge At The Temple of the Red Crane (A)
					["sourceQuest"] = 31512,	-- A Witness to History (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { KRASARANG_WILDS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31379, {	-- Challenge At The Temple of the Red Crane (H)
					["sourceQuest"] = 31511,	-- A Witness to History (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { KRASARANG_WILDS },
					["races"] = HORDE_ONLY,
				}),
				q(30716, {	-- Chasing Hope
					["sourceQuests"] = {
						31378,	-- Challenge At The Temple of the Red Crane (A)
						31379,	-- Challenge At The Temple of the Red Crane (H)
					},
					["qg"] = 60528,	-- Kuo-Na Quillpaw
					["coord"] = { 31.6, 61.6, KRASARANG_WILDS },
					["groups"] = {
						objective(1, {	-- 0/3 Spirit of the Crane found
							["provider"] = { "n", 60487 },	-- Spirit of the Crane
						}),
					},
				}),
				q(30717, {	-- Gifts of the Great Crane
					["sourceQuests"] = {
						31378,	-- Challenge At The Temple of the Red Crane (A)
						31379,	-- Challenge At The Temple of the Red Crane (H)
					},
					["qg"] = 60529,	-- Yan Quillpaw
					["coord"] = { 32.0, 61.8, KRASARANG_WILDS },
					["groups"] = {
						objective(1, {	-- 0/10 Gift of the Great Crane
							["providers"] = {
								{ "i",  80938 },	-- Gift of the Great Crane (QI!)
								{ "o", 211452 },	-- Bronze Gift of the Crane
								{ "o", 211451 },	-- Cerulean Gift of the Crane
								{ "o", 211453 },	-- Crimson Gift of the Crane
							},
							["coord"] = { 34.5, 72.9, KRASARANG_WILDS },
						}),
					},
				}),
				q(30718, {	-- Students of Chi-Ji
					["sourceQuests"] = {
						31378,	-- Challenge At The Temple of the Red Crane (A)
						31379,	-- Challenge At The Temple of the Red Crane (H)
					},
					["qg"] = 60506,	-- Thelonius
					["coord"] = { 31.8, 61.5, KRASARANG_WILDS },
					["groups"] = {
						objective(1, {	-- 0/10 Student of Chi-Ji dueled
							["providers"] = {
								{ "n", 60601 },	-- Student of Chi-Ji
								{ "n", 60602 },	-- Student of Chi-Ji
								{ "n", 60603 },	-- Student of Chi-Ji
							},
						}),
					},
				}),
				header(HEADERS.Achievement, 7287, {	-- Champion of Chi-Ji
					["sourceQuests"] = {
						30716,	-- Chasing Hope
						30717,	-- Gifts of the Great Crane
						30718,	-- Students of Chi-Ji
					},
					["description"] = "Requires completing August Celestials dailies at the Cradle of Chi-Ji for a total of 15 days. After you complete the first set of dailies, you'll be given an additional quest to defeat a challenger. You can only work on the achievement on days when the August Celestials request your aid at the Temple of the Red Crane.",
					["icon"] = 605484,
					["groups"] = sharedData({
						["qg"] = 60506,	-- Thelonius
						["coord"] = { 31.8, 61.4, KRASARANG_WILDS },
						["maxReputation"] = { FACTION_THE_AUGUST_CELESTIALS, EXALTED },
						["isDaily"] = true,
					}, {
						--[[
						Part of the chain of "bosses" with connected quests you need to kill for Champion of Chi-Ji a series of quests for The August Celestials at the Cradle of Chi-Ji.

						Ellia Ravenmane
						Minh Do-Tan
						Ellia Ravenmane: Rematch
						Fat Long-Fat
						Julia Bates
						Dextrous Izissha
						Kuo-Na Quillpaw
						Ellia Ravenmane: Revenge
						Tukka-Tuk
						Huck Wheelbarrow
						Mindel Sunspeaker
						Yan Quillpaw
						Fat Long-Fat: Rematch
						Thelonius
						Ellia Ravenmane: Redemption
						]]--
						q(30725, {	-- Ellia Ravenmane
							objective(1, {	-- 0/1 Ellia Ravenmane defeated
								["provider"] = { "n", 60530 },	-- Ellia Ravenmane
								["coord"] = { 31.8, 71.0, KRASARANG_WILDS },
							}),
						}),
						q(30726, {	-- Minh Do-Tan
							["sourceQuest"] = 30725,	-- Ellia Ravenmane
							["groups"] = {
								objective(1, {	-- 0/1 Minh Do-Tan defeated
									["provider"] = { "n", 60532 },	-- Minh Do-Tan
									["coord"] = { 32.0, 76.4, KRASARANG_WILDS },
								}),
							},
						}),
						q(30727, {	-- Ellia Ravenmane: Rematch
							["sourceQuest"] = 30726,	-- Minh Do-Tan
							["groups"] = {
								objective(1, {	-- 0/1 Ellia Ravenmane defeated
									["provider"] = { "n", 60530 },	-- Ellia Ravenmane
									["coord"] = { 31.8, 71.0, KRASARANG_WILDS },
								}),
							},
						}),
						q(30728, {	-- Fat Long-Fat
							["sourceQuest"] = 30727,	-- Ellia Ravenmane: Rematch
							["groups"] = {
								objective(1, {	-- 0/1 Fat Long-Fat defeated
									["provider"] = { "n", 60534 },	-- Fat Long-Fat
									["coord"] = { 32.0, 70.6, KRASARANG_WILDS },
								}),
							},
						}),
						q(30729, {	-- Julia Bates
							["sourceQuest"] = 30728,	-- Fat Long-Fat
							["groups"] = {
								objective(1, {	-- 0/1 Julia Bates defeated
									["provider"] = { "n", 60535 },	-- Julia Bates
									["coord"] = { 28.8, 75.6, KRASARANG_WILDS },
								}),
							},
						}),
						q(30730, {	-- Dextrous Izissha
							["sourceQuest"] = 30729,	-- Julia Bates
							["groups"] = {
								objective(1, {	-- 0/1 Dextrous Izissha slain
									["provider"] = { "n", 60536 },	-- Dextrous Izissha
									["coord"] = { 31.6, 80.2, KRASARANG_WILDS },
								}),
							},
						}),
						q(30731, {	-- Kuo-Na Quillpaw
							["sourceQuest"] = 30730,	-- Dextrous Izissha
							["groups"] = {
								objective(1, {	-- 0/1 Kuo-Na Quillpaw defeated
									["provider"] = { "n", 60537 },	-- Kuo-Na Quillpaw
									["coord"] = { 36.6, 74.8, KRASARANG_WILDS },
								}),
							},
						}),
						q(30732, {	-- Ellia Ravenmane: Revenge
							["sourceQuest"] = 30731,	-- Kuo-Na Quillpaw
							["groups"] = {
								objective(1, {	-- 0/1 Ellia Ravenmane defeated
									["provider"] = { "n", 60538 },	-- Ellia Ravenmane
									["coord"] = { 34.6, 83.0, KRASARANG_WILDS },
								}),
							},
						}),
						q(30733, {	-- Tukka-Tuk
							["sourceQuest"] = 30732,	-- Ellia Ravenmane: Revenge
							["groups"] = {
								objective(1, {	-- 0/1 Tukka-Tuk defeated
									["provider"] = { "n", 60539 },	-- Tukka-Tuk
									["coord"] = { 34.2, 74.2, KRASARANG_WILDS },
								}),
							},
						}),
						q(30734, {	-- Huck Wheelbarrow
							["sourceQuest"] = 30733,	-- Tukka-Tuk
							["groups"] = {
								objective(1, {	-- 0/1 Huck Wheelbarrow defeated
									["provider"] = { "n", 60540 },	-- Huck Wheelbarrow
									["coord"] = { 27.8, 70.2, KRASARANG_WILDS },
								}),
							},
						}),
						q(30735, {	-- Mindel Sunspeaker
							["sourceQuest"] = 30734,	-- Huck Wheelbarrow
							["groups"] = {
								objective(1, {	-- 0/1 Mindel Sunspeaker defeated
									["provider"] = { "n", 60541 },	-- Mindel Sunspeaker
									["coord"] = { 32.0, 70.8, KRASARANG_WILDS },
								}),
							},
						}),
						q(30736, {	-- Yan Quillpaw
							["sourceQuest"] = 30735,	-- Mindel Sunspeaker
							["groups"] = {
								objective(1, {	-- 0/1 Yan Quillpaw defeated
									["provider"] = { "n", 60542 },	-- Yan Quillpaw
									["coord"] = { 36.6, 76.0, KRASARANG_WILDS },
								}),
							},
						}),
						q(30737, {	-- Fat Long-Fat: Rematch
							["sourceQuest"] = 30736,	-- Yan Quillpaw
							["groups"] = {
								objective(1, {	-- 0/1 Fat Long-Fat defeated
									["provider"] = { "n", 60543 },	-- Fat Long-Fat
									["coord"] = { 34.8, 82.6, KRASARANG_WILDS },
								}),
							},
						}),
						q(30738, {	-- Thelonius
							["sourceQuest"] = 30737,	-- Fat Long-Fat: Rematch
							["groups"] = {
								objective(1, {	-- 0/1 Thelonius defeated
									["provider"] = { "n", 60544 },	-- Thelonius
									["coord"] = { 28.8, 72.5, KRASARANG_WILDS },
								}),
							},
						}),
						q(30739, {	-- Ellia Ravenmane: Redemption
							["sourceQuest"] = 30738,	-- Thelonius
							["groups"] = {
								objective(1, {	-- 0/1 Ellia Ravenmane defeated
									["provider"] = { "n", 60545 },	-- Ellia Ravenmane
									["coord"] = { 36.2, 75.4, KRASARANG_WILDS },
								}),
							},
						}),
						q(30740, {	-- Champion of Chi-Ji
							["sourceQuest"] = 30739,	-- Ellia Ravenmane: Redemption
							["groups"] = {
								objective(1, {	-- 0/1 Champion of Chi-Ji defeated
									["provider"] = { "n", 60546 },	-- Champion of Chi-Ji
									["coord"] = { 34.4, 81.4, KRASARANG_WILDS },
								}),
							},
						}),
					}),
				}),

				-- Kun-Lai Summit
				q(31380, {	-- Trial At The Temple of the White Tiger (A)
					["sourceQuest"] = 31512,	-- A Witness to History (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { KUN_LAI_SUMMIT },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31381, {	-- Trial At The Temple of the White Tiger (H)
					["sourceQuest"] = 31511,	-- A Witness to History (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { KUN_LAI_SUMMIT },
					["races"] = HORDE_ONLY,
				}),
				q(31517, {	-- Contending With Bullies
					["qg"] = 60968,	-- Xuen
					["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- 0/1 Shonuf slain
							["provider"] = { "n", 64757 },	-- Shonuf <The Fireweaver>
							["coord"] = { 71.0, 55.8, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30880, {	-- Round 1: The Streetfighter
					["qg"] = 60968,	-- Xuen
					["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Lun-Chi
							["provider"] = { "n", 60994 },	-- Lun-Chi <The Streetfighter>
							["coord"] = { 70.8, 51.8, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30879, {	-- Round 1: Brewmaster Chani
					["qg"] = 60968,	-- Xuen
					["coord"] = { 67.2, 55.9, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Brewmaster Chani
							["provider"] = { "n", 60996 },	-- Brewmaster Chani
							["coord"] = { 70.8, 51.8, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30881, {	-- Round 2: Clever Ashyo & Ken-Ken
					["sourceQuest"] = 30879,	-- Round 1: Brewmaster Chani
					["qg"] = 60968,	-- Xuen
					["coord"] = { 70.3, 51.3, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Clever Ashyo
							["provider"] = { "n", 60980 },	-- Clever Ashyo
							["coord"] = { 71.6, 45.4, KUN_LAI_SUMMIT },
						}),
						objective(2, {	-- Defeat Ken-Ken
							["provider"] = { "n", 60979 },	-- Ken-Ken
							["coord"] = { 71.6, 45.2, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30882, {	-- Round 2: Kang Bramblestaff
					["sourceQuest"] = 30880,	-- Round 1: The Streetfighter
					["qg"] = 60968,	-- Xuen
					["coord"] = { 70.3, 51.3, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Kang Bramblestaff
							["provider"] = { "n", 60978 },	-- Kang Bramblestaff
							["coord"] = { 71.6, 45.4, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30885, {	-- Round 3: Master Boom Boom
					["sourceQuest"] = 30882,	-- Round 2: Kang Bramblestaff
					["qg"] = 60968,	-- Xuen
					["coord"] = { 71.7, 45.0, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Master Boom Boom
							["provider"] = { "n", 61013 },	-- Master Boom Boom <The Dynamite Monkey Monk>
							["coord"] = { 66.6, 46.6, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30883, {	-- Round 3: The Wrestler
					["sourceQuest"] = 30881,	-- Round 2: Clever Ashyo & Ken-Ken
					["qg"] = 60968,	-- Xuen
					["coord"] = { 71.7, 44.9, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat The Wrestler
							["provider"] = { "n", 60997 },	-- The Wrestler
							["coord"] = { 66.6, 46.4, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30902, {	-- Round 4: Master Windfur
					["sourceQuest"] = 30885,	-- Round 3: Master Boom Boom
					["qg"] = 60968,	-- Xuen
					["coord"] = { 66.4, 46.3, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Master Windfur
							["provider"] = { "n", 61012 },	-- Master Windfur <Mayor of Dawn's Blossom>
							["coord"] = { 68.8, 43.8, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(30907, {	-- Round 4: The P.U.G.
					["sourceQuest"] = 30883,	-- Round 3: The Wrestler
					["qg"] = 60968,	-- Xuen
					["coord"] = { 66.5, 46.4, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- Defeat Hackiss
							["provider"] = { "n", 61007 },	-- Hackiss
							["coord"] = { 68.6, 43.6, KUN_LAI_SUMMIT },
						}),
						objective(2, {	-- Defeat Healiss
							["provider"] = { "n", 61004 },	-- Healiss
							["coord"] = { 69.0, 43.8, KUN_LAI_SUMMIT },
						}),
						objective(3, {	-- Defeat Tankiss
							["provider"] = { "n", 61006 },	-- Tankiss
							["coord"] = { 68.8, 43.6, KUN_LAI_SUMMIT },
						}),
					},
				}),
				q(31492, {	-- The Torch of Strength
					["qg"] = 60981,	-- Lin Tenderpaw
					["coord"] = { 68.5, 56.3, KUN_LAI_SUMMIT },
					["groups"] = {
						objective(1, {	-- The Strong Brazier Lit
							["provider"] = { "i", 214628 },	-- The Strong Brazier
							["coord"] = { 68.6, 46.7, KUN_LAI_SUMMIT },
						}),
					},
				}),

				-- The Jade Forest
				q(31376, {	-- Attack At The Temple of the Jade Serpent (A)
					["sourceQuest"] = 31512,	-- A Witness to History (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { THE_JADE_FOREST },
					["races"] = ALLIANCE_ONLY,
				}),
				q(31377, {	-- Attack At The Temple of the Jade Serpent (H)
					["sourceQuest"] = 31511,	-- A Witness to History (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { THE_JADE_FOREST },
					["races"] = HORDE_ONLY,
				}),
				q(30065, {	-- Arrows of Fortune
					["qg"] = 57324,	-- Elder Sage Tai-Feng
					["coord"] = { 53.8, 61.8, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/8 Defender's Arrow
							["providers"] = {
								{ "i",  77452 },	-- Defender's Arrow (QI!)
								{ "o", 210087 },	-- Defender's Arrow
							},
							["coord"] = { 55.0, 56.8, THE_JADE_FOREST },
						}),
					},
				}),
				q(30063, {	-- Behind the Masks
					["qg"] = 57319,	-- Elder Sage Storm-Sing
					["coord"] = { 53.8, 61.8, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/8 Mask of Doubt
							["provider"] = { "i",  77419 },	-- Mask of Doubt (QI!)
							["coord"] = { 53.8, 54.6, THE_JADE_FOREST },
							["crs"] = {
								57330,	-- Final Doubt
								57396,	-- Lingering Doubt
								57327,	-- Lingering Doubt
							},
						}),
					},
				}),
				q(30068, {	-- Flames of the Void
					["sourceQuest"] = 30066,	-- Hidden Power
					["qg"] = 57324,	-- Elder Sage Tai-Feng
					["coord"] = { 53.8, 61.8, THE_JADE_FOREST },
					--	may also require "Saving the Sutras" and "The Darkness Around Us"
					["groups"] = {
						objective(1, {	-- 0/6 Void Flames doused
							["provider"] = { "n", 57871 },	-- War Serpent
							["coord"] = { 54.2, 60.8, THE_JADE_FOREST },
						}),
					},
				}),
				q(30066, {	-- Hidden Power
					["qg"] = 57324,	-- Elder Sage Tai-Feng
					["coord"] = { 53.9, 61.9, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/6 Ancient Mantras delivered
							["providers"] = {
								{ "i", 77475 },	-- Stack of Mantras (QI!)
								{ "n", 57400 },	-- Yu'lon Guardian
								{ "n", 57316 },	-- Yu'lon Adept
								{ "n", 57326 },	-- Yu'lon Guardian
							},
							["coord"] = { 55.2, 57.2, THE_JADE_FOREST },
						}),
					},
				}),
				q(30064, {	-- Saving the Sutras
					["qg"] = 57319,	-- Elder Sage Storm-Sing
					["coord"] = { 53.9, 61.9, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/6 Ancient Sutra
							["providers"] = {
								{ "i",  77432 },	-- Ancient Sutra (QI!)
								{ "o", 210085 },	-- Ancient Sutra
								{ "o", 210086 },	-- Ancient Sutra
							},
							["coord"] = { 56.1, 52.1, THE_JADE_FOREST },
						}),
					},
				}),
				q(30006, {	-- The Darkness Around Us
					["qg"] = 57324,	-- Elder Sage Tai-Feng
					["coord"] = { 53.9, 61.9, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/15 Sha invaders slain
							["providers"] = {
								{ "n", 57327 },	-- Lingering Doubt
								{ "n", 57330 },	-- Final Doubt
								{ "n", 57389 },	-- Shadow of Doubt
								{ "n", 57396 },	-- Lingering Doubt
							},
							["coord"] = { 55.4, 56.4, THE_JADE_FOREST },
						}),
					},
				}),
				q(30067, {	-- The Shadow of Doubt
					["qg"] = 57324,	-- Elder Sage Tai-Feng
					["coord"] = { 53.8, 61.8, THE_JADE_FOREST },
					["groups"] = {
						objective(1, {	-- 0/1 Shadow of Doubt slain
							["provider"] = { "n", 57389 },	-- Shadow of Doubt
							["coord"] = { 57.6, 62.2, THE_JADE_FOREST },
						}),
					},
				}),

				-- Townlong Steppes
				q(31382, {	-- Defense At Niuzao Temple (A)
					["sourceQuest"] = 31512,	-- A Witness to History (A)
					["qg"] = 64032,	-- Sage Whiteheart
					["coord"] = { 84.6, 63.6, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { TOWNLONG_STEPPES },
					["races"] = ALLIANCE_ONLY
				}),
				q(31383, {	-- Defense At Niuzao Temple (H)
					["sourceQuest"] = 31511,	-- A Witness to History (H)
					["qg"] = 64001,	-- Sage Lotusbloom
					["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					["maps"] = { TOWNLONG_STEPPES },
					["races"] = HORDE_ONLY,
				}),
				q(30954, {	-- A Blade is a Blade
					["qg"] = 61581,	-- Ogo the Younger
					["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
					["groups"] = {
						objective(1, {	-- 0/10 Sra'thik Weapon
							["providers"] = {
								{ "i",  82353 },	-- Sra'thik Weapon
								{ "o", 211766 },	-- Sra'thik Weapon
								{ "o", 211765 },	-- Sra'thik Weapon
							},
							["coord"] = { 41.4, 61.1, TOWNLONG_STEPPES },
						}),
					},
				}),
				q(30953, {	-- Fallen Sentinels
					["qg"] = 61585,	-- Yak-Keeper Kyana
					["coord"] = { 39.1, 62.0, TOWNLONG_STEPPES },
					["groups"] = {
						objective(1, {	-- 0/8 Niuzao Sentinel healed
							["providers"] = {
								{ "i", 82381 },	-- Yak's Milk Flask
								{ "n", 61570 },	-- Wounded Niuzao Sentinel
							},
							["coord"] = { 41.8, 61.2, TOWNLONG_STEPPES },
						}),
					},
				}),
				q(30955, {	-- Paying Tribute
					["qg"] = 61583,	-- High Adept Paosha
					["coord"] = { 38.9, 62.5, TOWNLONG_STEPPES },
					["groups"] = {
						objective(1, {	-- 0/6 Gather Food for Niuzao
							["providers"] = {
								{ "n",  62233 },	-- Niuzao Strongarm
								{ "o", 212131 },	-- Niuzao Food Supply
								{ "o", 212132 },	-- Niuzao Food Supply
								{ "o", 212133 },	-- Niuzao Food Supply
							},
							["coord"] = { 41.3, 62.1, TOWNLONG_STEPPES },
						}),
					},
				}),
				q(30952, {	-- The Unending Siege
					["qg"] = 61580,	-- Ogo the Elder
					["coord"] = { 39.3, 62.2, TOWNLONG_STEPPES },
					["groups"] = {
						objective(1, {	-- 0/12 Sra'thik attacker slain
							["providers"] = {
								{ "n", 61514 },	-- Sra'thik Fleshrender
								{ "n", 61508 },	-- Sra'thik Swiftclaw
								{ "n", 61502 },	-- Sra'thik Warcaller
							},
							["coord"] = { 41.8, 61.2, TOWNLONG_STEPPES },
						}),
					},
				}),
			})),
			n(VENDORS, {
				{	-- The August Celestials Quartermaster (Smart NPC Header)
					["aqd"] = n(64032, {	-- Sage Whiteheart <The August Celestials Quartermaster>
						["coord"] = { 84.6, 63.8, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					["hqd"] = n(64001, {	-- Sage Lotusbloom <The August Celestials Quartermaster>
						["coord"] = { 62.7, 23.3, VALE_OF_ETERNAL_BLOSSOMS },
					}),
					["groups"] = bubbleDownClassicRep(FACTION_THE_AUGUST_CELESTIALS, {
						{		-- Neutral
							i(88880),	-- Battle Shadow Bracers
							i(89532),	-- Bladesong Cloak
							i(88876),	-- Boots of the High Adept
							i(88892),	-- Bracers of Inlaid Jade
							i(88879),	-- Braided Black and White Bracer
							i(88865),	-- Bramblestaff Boots
							i(88883),	-- Brewmaster Chani's Bracers
							i(88885),	-- Clever Ashyo's Armbands
							i(89533),	-- Cloak of Ancient Curses
							i(89537),	-- Cloak of the Silent Mountain
							i(88881),	-- Fallen Sentinel Bracers
							i(88744),	-- Fingers of the Loneliest Monk
							i(88749),	-- Gauntlets of Jade Sutras
							i(88741),	-- Gloves of Red Feathers
							i(88746),	-- Gloves of the Overwhelming Swarm
							i(89665),	-- Leggings of Ponderous Advance
							i(89659),	-- Leggings of Unfinished Conquest
							i(88893),	-- Minh's Beaten Bracers
							i(89668),	-- Mountain Stream Ringmail
							i(88743),	-- Ogo's Elder Gloves
							i(89534),	-- Pressed Flower Cloak
							i(88884),	-- Quillpaw Family Bracers
							i(88748),	-- Ravenmane's Gloves
							i(89667),	-- Refurbished Zandalari Vestment
							i(89535),	-- Ribcracker's Cloak
							i(88867),	-- Sandals of the Elder Sage
							i(88745),	-- Sentinel Commander's Gauntlets
							i(88866),	-- Steps of the War Serpent
							i(88877),	-- Storm-Sing Sandals
							i(88747),	-- Streetfighter's Iron Knuckles
							i(89658),	-- Subversive Leggings
							i(88742),	-- Sunspeaker's Flared Gloves
							i(88862),	-- Tankiss Warstompers
							i(88882),	-- Tiger-Striped Wristguards
							i(88868),	-- Tukka-Tuk's Hairy Boots
							i(89669),	-- Undergrowth Stalker Chestpiece
							i(89664),	-- Valiant's Shinguards
							i(89666),	-- Vestment of the Ascendant Tribe
							i(88878),	-- Void Flame Slippers
							i(88864),	-- Yu'lon Guardian Boots
						}, {	-- Friendly
						}, {	-- Honored
							i(89124),	-- Celestial Offering
						}, {	-- Revered
							i(84561),	-- Formula: Enchant Bracer - Exceptional Strength (RECIPE!)
							i(84557),	-- Formula: Enchant Bracer - Greater Agility (RECIPE!)
							i(84559),	-- Formula: Enchant Bracer - Super Intellect (RECIPE!)
							i(93224),	-- Grand Commendation of the August Celestials
						}, {	-- Exalted
							i(89799),	-- August Celestials Tabard
							i(86377),	-- Pattern: Royal Satchel (RECIPE!)
							i(89304, {	-- Reins of the Thundering August Cloud Serpent (MOUNT!)
								["cost"] = 100000000,	-- 10,000g
							}),
						},
					}),
				},
			}),
		},
	}),
}))));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
	header(HEADERS.Faction, FACTION_THE_AUGUST_CELESTIALS, {
		n(QUESTS, {
			q(30719),	-- FLAG - Cradle of Chi-Ji Progress Bit 01 - Triggered after turning in Ellia Ravenmane. (First quest in the chain and also triggered for the rematch quest)
			q(30720),	-- FLAG - Cradle of Chi-Ji Progress Bit 02 - triggered after turning in Dextrous Izissha quest, 6th for Champion of Chi-Ji, triggered on another character after turning in Minh Do-Tan, which is the 2nd
			q(30721),	-- FLAG - Cradle of Chi-Ji Progress Bit 03
			q(30722),	-- FLAG - Cradle of Chi-Ji Progress Bit 04
		}),
	}),
})));
