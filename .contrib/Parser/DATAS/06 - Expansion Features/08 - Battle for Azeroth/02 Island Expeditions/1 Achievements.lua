-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------

root(ROOTS.ExpansionFeatures, expansion(EXPANSION.BFA, {
	n(ISLAND_EXPEDITIONS, {
		n(ACHIEVEMENTS, {
			ach(13142),		-- Archipelago Explorer
			pvp(ach(13134, {	-- Expedition Leader
				--#if BEFORE 11.0.7
				["sym"] = {{"meta_achievement",
					13122,	-- Island Conqueror
					13125,	-- Azerite Admiral
					13126,	-- Give Me The Energy
					13127,	-- Tell Me A Tale
					13124,	-- Metal Detector
					13128,	-- I'm Here for the Pets
					13132,	-- Helping Hand
					13121,	-- Notorious
					12595,	-- Expert Expeditioner
					13133,	-- Team Deathmatch (A)
					13135,	-- Team Deathmatch (H)
					13141,	-- Island Slayer
				}},
				--#else
				["sym"] = {{"meta_achievement",
					13122,	-- Island Conqueror
					13125,	-- Azerite Admiral
					13126,	-- Give Me The Energy
					13127,	-- Tell Me A Tale
					13124,	-- Metal Detector
					13128,	-- I'm Here for the Pets
					13132,	-- Helping Hand
					12595,	-- Expert Expeditioner
					13133,	-- Team Deathmatch (A)
					13135,	-- Team Deathmatch (H)
					13141,	-- Island Slayer
				}},
				--#endif
				["g"] = {
					title(382),	-- Expedition Leader
				},
			})),
			ach(13122, {	-- Island Conqueror
				ach(13097, {	-- Mythic: Dread Chain
					ach(13096, {	-- Heroic: Dread Chain
						ach(13095),	-- Dread Chain
					}),
				}),
				ach(13101, {	-- Mythic: Molten Cay
					ach(13100, {	-- Heroic: Molten Cay
						ach(13099),	-- Molten Cay
					}),
				}),
				ach(13105, {	-- Mythic: Rotting Mire
					ach(13104, {	-- Heroic: Rotting Mire
						ach(13103),	-- Rotting Mire
					}),
				}),
				ach(13109, {	-- Mythic: Skittering Hollow
					ach(13108, {	-- Heroic: Skittering Hollow
						ach(13107),	-- Skittering Hollow
					}),
				}),
				ach(12591, {	-- Mythic: Un'gol Ruins
					ach(12589, {	-- Heroic: Un'gol Ruins
						ach(12590),	-- Un'gol Ruins
					}),
				}),
				ach(13113, {	-- Mythic: Verdant Wilds
					ach(13112, {	-- Heroic: Verdant Wilds
						ach(13111),	-- Verdant Wilds
					}),
				}),
				ach(13116, {	-- Mythic: Whispering Reef
					ach(13118, {	-- Heroic: Whispering Reef
						ach(13119),	-- Whispering Reef
					}),
				}),
				ach(13395, {	-- Mythic: Jorundall
					ach(13394, {	-- Heroic: Jorundall
						ach(13389),	-- Jorundall
					}),
				}),
				ach(13398, {	-- Mythic: Havenswood
					ach(13397, {	-- Heroic: Havenswood
						ach(13396),	-- Havenswood
					}),
				}),
				ach(13579, {	-- Mythic: Crestfall
					ach(13578, {	-- Heroic: Crestfall
						ach(13577),	-- Crestfall
					}),
				}),
				ach(13583, {	-- Mythic: Snowblossom Village
					ach(13582, {	-- Heroic: Snowblossom Village
						ach(13581),	-- Snowblossom Village
					}),
				}),
			}),
			ach(13125),		-- Azerite Admiral
			ach(13126),		-- Give Me The Energy
			ach(13127, {	-- Tell Me A Tale
				crit(41937, {	-- Weathered Pamphlet
					["_quests"] = { 53184 },
				}),
				crit(41938, {	-- Wriggling Mass
					["_quests"] = { 53183 },
				}),
				crit(41939, {	-- Strangling Root
					["_quests"] = { 53182 },
				}),
				crit(41940, {	-- Druidic Fur
					["_quests"] = { 53181 },
				}),
				crit(41941, {	-- Vorus'arak's Carapace
					["_quests"] = { 53180 },
				}),
				crit(41942, {	-- Razorfin Hunting Spear
					["_quests"] = { 53178 },
				}),
				crit(41943, {	-- Broken Compass
					["_quests"] = { 53177 },
				}),
				crit(41944, {	-- Glittering Scarab
					["_quests"] = { 53176 },
				}),
				crit(41945, {	-- Murloc Eye
					["_quests"] = { 53174 },
				}),
				crit(41946, {	-- Venture Co. Business Plan
					["_quests"] = { 53172 },
				}),
				crit(41947, {	-- Battered Twilight Scale
					["_quests"] = { 53171 },
				}),
				crit(41948, {	-- Unscarred Black Scale
					["_quests"] = { 53170 },
				}),
				crit(41949, {	-- Elemental Core
					["_quests"] = { 53169 },
				}),
				crit(41950, {	-- Magical Spyglass
					["_quests"] = { 53168 },
				}),
				crit(41951, {	-- Icetusk Fur Cloak
					["_quests"] = { 53167 },
				}),
				crit(41952, {	-- Sonic Stone
					["_quests"] = { 53164 },
				}),
				crit(41953, {	-- Bloodwake Drinking Horn
					["_quests"] = { 53163 },
				}),
				crit(41954, {	-- Ring of the Reefs
					["_quests"] = { 53161 },
				}),
				crit(41955, {	-- Ancient Crypt Key
					["_quests"] = { 53160 },
				}),
				crit(41956, {	-- Notched Coin
					["_quests"] = { 53155 },
				}),
			}),
			ach(13124, {	-- Metal Detector
				ach(13123),	-- My Dubs
			}),
			ach(13128, {	-- I'm Here for the Pets
				crit(41984, { ["provider"] = { "i", 163797 } }),	-- Scuttle
				crit(41983, { ["provider"] = { "i", 163798 } }),	-- Captain Nibs
				crit(41982, { ["provider"] = { "i", 163799 } }),	-- Barnaby
				crit(41981, { ["provider"] = { "i", 163800 } }),	-- Poro
				crit(41980, { ["provider"] = { "i", 163801 } }),	-- Octopode Fry
				crit(41979, { ["provider"] = { "i", 163802 } }),	-- Inky
				crit(41978, { ["provider"] = { "i", 163803 } }),	-- Sparkleshell Sandcrawler
				crit(41977, { ["provider"] = { "i", 163804 } }),	-- Kindleweb Spiderling
				crit(41976, { ["provider"] = { "i", 163805 } }),	-- Craghoof Kid
				crit(41975, { ["provider"] = { "i", 163806 } }),	-- False Knucklebump
				crit(41974, { ["provider"] = { "i", 163807 } }),	-- Tinder Pup
				crit(41973, { ["provider"] = { "i", 163808 } }),	-- Sandshell Chitterer
				crit(41972, { ["provider"] = { "i", 163809 } }),	-- Deathsting Scorpid
				crit(41971, { ["provider"] = { "i", 163810 } }),	-- Thistlebrush Bud
				crit(41970, { ["provider"] = { "i", 163811 } }),	-- Giggling Flame
				crit(41969, { ["provider"] = { "i", 163812 } }),	-- Laughing Stonekin
				crit(41968, { ["provider"] = { "i", 163813 } }),	-- Playful Frostkin
				crit(41967, { ["provider"] = { "i", 163814 } }),	-- Mischievous Zephyr
				crit(41966, { ["provider"] = { "i", 163815 } }),	-- Littlehoof
				crit(41965, { ["provider"] = { "i", 163816 } }),	-- Snapper
				crit(41964, { ["provider"] = { "i", 163817 } }),	-- Sunscale Hatchling
				crit(41963, { ["provider"] = { "i", 163818 } }),	-- Bloodstone Tunneler
				crit(41962, { ["provider"] = { "i", 163819 } }),	-- Snort
				crit(41961, { ["provider"] = { "i", 163820 } }),	-- Muskflank Calfling
				crit(41960, { ["provider"] = { "i", 163821 } }),	-- Juvenile Brineshell
				crit(41959, { ["provider"] = { "i", 163822 } }),	-- Kunchong Hatchling
				crit(41958, { ["provider"] = { "i", 163823 } }),	-- Coldlight Surfrunner
				crit(41957, { ["provider"] = { "i", 163824 } }),	-- Voru'kar Leecher
			}),
			ach(13132, {	-- Helping Hand
				-- TODO: this many quest sources is a bit much... 25 collectibles becomes nearly 200... maybe we can revise this somehow
				-- crit(42041, {	-- Valero
				-- 	["_quests"] = {
				-- 		52720,
				-- 		52719,
				-- 		52717,
				-- 		52718,
				-- 		52716,
				-- 		52715,
				-- 		52714,
				-- 		52721,
				-- 	},
				-- }),
				-- crit(42042, {	-- Brunold
				-- 	["_quests"] = {
				-- 		52583,
				-- 		52582,
				-- 		52581,
				-- 		52579,
				-- 		52580,
				-- 		52578,
				-- 		52577,
				-- 		52584,
				-- 	},
				-- }),
				-- crit(42043, {	-- Aerin Skyhammer
				-- 	["_quests"] = {
				-- 		52559,
				-- 		52558,
				-- 		52557,
				-- 		52555,
				-- 		52556,
				-- 		52554,
				-- 		52553,
				-- 		52560,
				-- 	},
				-- }),
				-- crit(42044, {	-- Spooner the Scalawag
				-- 	["_quests"] = {
				-- 		52672,
				-- 		52671,
				-- 		52670,
				-- 		52668,
				-- 		52669,
				-- 		52667,
				-- 		52666,
				-- 		52673,
				-- 	},
				-- }),
				-- crit(42045, {	-- Royston P. Crutchley III
				-- 	["_quests"] = {
				-- 		52545,
				-- 		52547,
				-- 		52548,
				-- 		52550,
				-- 		52549,
				-- 		52551,
				-- 		52552,
				-- 		52546,
				-- 	},
				-- }),
				-- crit(42046, {	-- Tinny
				-- 	["_quests"] = {
				-- 		52696,
				-- 		52695,
				-- 		52694,
				-- 		52692,
				-- 		52693,
				-- 		52691,
				-- 		52690,
				-- 		52697,
				-- 	},
				-- }),
				-- crit(42047, {	-- Tweets Lightsprocket
				-- 	["_quests"] = {
				-- 		52704,
				-- 		52703,
				-- 		52702,
				-- 		52700,
				-- 		52701,
				-- 		52699,
				-- 		52698,
				-- 		52705,
				-- 	},
				-- }),
				-- crit(42048, {	-- Gimzy Trickelbank
				-- 	["_quests"] = {
				-- 		52607,
				-- 		52606,
				-- 		52605,
				-- 		52603,
				-- 		52604,
				-- 		52602,
				-- 		52601,
				-- 		52608,
				-- 	},
				-- }),
				-- crit(42049, {	-- Glint-Eyed Frankie
				-- 	["_quests"] = {
				-- 		52615,
				-- 		52614,
				-- 		52613,
				-- 		52611,
				-- 		52612,
				-- 		52610,
				-- 		52609,
				-- 		52616,
				-- 	},
				-- }),
				-- crit(42050, {	-- Two-Socks
				-- 	["_quests"] = {
				-- 		52712,
				-- 		52711,
				-- 		52709,
				-- 		52710,
				-- 		52708,
				-- 		52707,
				-- 		52706,
				-- 		52713,
				-- 	},
				-- }),
				-- crit(42051, {	-- Apprentice Karyn
				-- 	["_quests"] = {
				-- 		52567,
				-- 		52566,
				-- 		52565,
				-- 		52563,
				-- 		52564,
				-- 		52562,
				-- 		52561,
				-- 		52568,
				-- 	},
				-- }),
				-- crit(42052, {	-- Grubby Beard
				-- 	["_quests"] = {
				-- 		52631,
				-- 		52630,
				-- 		52629,
				-- 		52627,
				-- 		52628,
				-- 		52626,
				-- 		52625,
				-- 		52632,
				-- 	},
				-- }),
				-- crit(42053, {	-- Sylvester
				-- 	["_quests"] = {
				-- 		52680,
				-- 		52679,
				-- 		52678,
				-- 		52676,
				-- 		52677,
				-- 		52675,
				-- 		52674,
				-- 		52681,
				-- 	},
				-- }),
				-- crit(42054, {	-- Waterspeaker Deshi
				-- 	["_quests"] = {
				-- 		52736,
				-- 		52735,
				-- 		52734,
				-- 		52732,
				-- 		52733,
				-- 		52731,
				-- 		52730,
				-- 		52737,
				-- 	},
				-- }),
				-- crit(42055, {	-- Flickerwick
				-- 	["_quests"] = {
				-- 		52599,
				-- 		52598,
				-- 		52597,
				-- 		52595,
				-- 		52596,
				-- 		52594,
				-- 		52593,
				-- 		52600,
				-- 	},
				-- }),
				-- crit(42056, {	-- Burgle
				-- 	["_quests"] = {
				-- 		52591,
				-- 		52590,
				-- 		52589,
				-- 		52587,
				-- 		52588,
				-- 		52586,
				-- 		52585,
				-- 		52592,
				-- 	},
				-- }),
				-- crit(42057, {	-- Vizio the Cartographer
				-- 	["_quests"] = {
				-- 		52728,
				-- 		52727,
				-- 		52725,
				-- 		52726,
				-- 		52724,
				-- 		52723,
				-- 		52722,
				-- 		52729,
				-- 	},
				-- }),
				-- crit(42058, {	-- Gregg
				-- 	["_quests"] = {
				-- 		52623,
				-- 		52622,
				-- 		52621,
				-- 		52619,
				-- 		52620,
				-- 		52618,
				-- 		52617,
				-- 		52624,
				-- 	},
				-- }),
				-- crit(42059, {	-- Old Li
				-- 	["_quests"] = {
				-- 		52664,
				-- 		52663,
				-- 		52662,
				-- 		52660,
				-- 		52661,
				-- 		52659,
				-- 		52658,
				-- 		52665,
				-- 	},
				-- }),
				-- crit(42060, {	-- Yuke
				-- 	["_quests"] = {
				-- 		52744,
				-- 		52743,
				-- 		52741,
				-- 		52742,
				-- 		52740,
				-- 		52739,
				-- 		52738,
				-- 		52745,
				-- 	},
				-- }),
				-- crit(42061, {	-- Longpaws
				-- 	["_quests"] = {
				-- 		52639,
				-- 		52638,
				-- 		52637,
				-- 		52635,
				-- 		52636,
				-- 		52634,
				-- 		52633,
				-- 		52640,
				-- 	},
				-- }),
				-- crit(42062, {	-- Nizhoni
				-- 	["_quests"] = {
				-- 		52656,
				-- 		52655,
				-- 		52653,
				-- 		52651,
				-- 		52652,
				-- 		52650,
				-- 		52649,
				-- 		52657,
				-- 	},
				-- }),
				-- crit(42063, {	-- Taz'anga
				-- 	["_quests"] = {
				-- 		52687,
				-- 		52686,
				-- 		52684,
				-- 		52685,
				-- 		52683,
				-- 		52682,
				-- 		52689,
				-- 	},
				-- }),
				-- crit(42064, {	-- Manape
				-- 	["_quests"] = {
				-- 		52646,
				-- 		52645,
				-- 		52643,
				-- 		52644,
				-- 		52642,
				-- 		52641,
				-- 		52648,
				-- 	},
				-- }),
				-- crit(42065, {	-- Arwan Beastheart
				-- 	["_quests"] = {
				-- 		52575,
				-- 		52574,
				-- 		52573,
				-- 		52571,
				-- 		52572,
				-- 		52570,
				-- 		52569,
				-- 		52576,
				-- 	},
				-- }),
			}),
			pvp(ach(13121, {	-- Notorious
				ach(13120, {	-- Blood in the Water
					ach(12597),	-- Bayside Brawler
				}),
			})),
			ach(12595, {	-- Expert Expeditioner
				ach(12596, {	-- No Tourist
					ach(12594),	-- Competent Captain
				}),
			}),
			ach(13133, {	-- Team Deathmatch (A)
				["races"] = ALLIANCE_ONLY,
				["g"] = {
					crit(42069, {	-- Gazlowe
						["crs"] = { 134997 },
					}),
					crit(42070, {	-- Lady Sena
						["crs"] = { 130872 },
					}),
					crit(42071, {	-- Skaggit
						["crs"] = { 130871 },
					}),
					crit(42072, {	-- Captain Greenbelly
						["crs"] = { 134332 },
					}),
					crit(42073, {	-- Dorp
						["crs"] = { 134333 },
					}),
					crit(42074, {	-- Sneaky Pete
						["crs"] = { 129364 },
					}),
					crit(42075, {	-- Astralite Visara
						["crs"] = { 133738 },
					}),
					crit(42076, {	-- Moonscythe Pelani
						["crs"] = { 133733 },
					}),
					crit(42077, {	-- Rune Scribe Lusaris
						["crs"] = { 133734 },
					}),
					crit(42078, {	-- Phoenix Mage Rhydras
						["crs"] = { 129064 },
					}),
					crit(42079, {	-- Phoenix Mage Ryleia
						["crs"] = { 129065 },
					}),
					crit(42080, {	-- Sunbringer Firasi
						["crs"] = { 129062 },
					}),
					crit(42081, {	-- Berserker Zar'ri
						["crs"] = { 130302 },
					}),
					crit(42082, {	-- Shadow Hunter Ju'loa
						["crs"] = { 130301 },
					}),
					crit(42083, {	-- Witch Doctor Unbugu
						["crs"] = { 130303 },
					}),
					crit(42084, {	-- Mahna Flamewhisper
						["crs"] = { 134269 },
					}),
					crit(42085, {	-- Spiritwalker Quura
						["crs"] = { 134270 },
					}),
					crit(42086, {	-- Sunwalker Ordel
						["crs"] = { 134270 },
					}),
					crit(44167, {	-- Charg "The Boisterous"
						["crs"] = { 144784 },
					}),
					crit(44168, {	-- Nagtar Wolfsbane
						["crs"] = { 144785 },
					}),
					crit(44169, {	-- Ranah Saberclaw
						["crs"] = { 144789 },
					}),
					crit(45341, {	-- Guardian M'sheke
						["crs"] = { 151017 },
					}),
					crit(45342, {	-- Wardruid Ko'chus
						["crs"] = { 151025 },
					}),
					crit(45343, {	-- Mooncaller Mozo'kas
						["crs"] = { 151026 },
					}),
				},
			}),
			ach(13135, {	-- Team Deathmatch (H)
				["races"] = HORDE_ONLY,
				["g"] = {
					crit(42087, {	-- Briona the Bloodthirsty
						["crs"] = { 135248 },
					}),
					crit(42088, {	-- "Stabby" Lottie
						["crs"] = { 135246 },
					}),
					crit(42089, {	-- Varigg
						["crs"] = { 135247 },
					}),
					crit(42090, {	-- Frostfencer Seraphi
						["crs"] = { 130620 },
					}),
					crit(42091, {	-- Squallshaper Auran
						["crs"] = { 130621 },
					}),
					crit(42092, {	-- Squallshaper Bryson
						["crs"] = { 130621 },
					}),
					crit(42093, {	-- Anchorite Lanna
						["crs"] = { 134283 },
					}),
					crit(42094, {	-- Archmage Tamuura
						["crs"] = { 134286 },
					}),
					crit(42095, {	-- Vindicator Baatul
						["crs"] = { 134280 },
					}),
					crit(42096, {	-- Dizzy Dina
						["crs"] = { 133585 },
					}),
					crit(42097, {	-- Tally Zapnabber
						["crs"] = { 133627 },
					}),
					crit(42098, {	-- Razak Ironsides
						["crs"] = { 133556 },
					}),
					crit(42099, {	-- Duskrunner Lorinas
						["crs"] = { 134215 },
					}),
					crit(42100, {	-- Riftblade Kelain
						["crs"] = { 134214 },
					}),
					crit(42101, {	-- Shadeweaver Zarra
						["crs"] = { 134216 },
					}),
					crit(42102, {	-- Fenrae the Cunning
						["crs"] = { 131727 },
					}),
					crit(42103, {	-- Gunnolf the Ferocious
						["crs"] = { 131726 },
					}),
					crit(42104, {	-- Raul the Tenacious
						["crs"] = { 131728 },
					}),
					crit(44170, {	-- Airyn Swiftfeet
						["crs"] = { 144776 },
					}),
					crit(44171, {	-- Brother Bruen
						["crs"] = { 144782 },
					}),
					crit(44172, {	-- Lady Tamakeen
						["crs"] = { 144772 },
					}),
					crit(45344, {	-- Thornguard Burton
						["crs"] = { 151027 },
					}),
					crit(45345, {	-- Thornstalker Nydora
						["crs"] = { 151028 },
					}),
					crit(45346, {	-- Thornspeaker Tavery
						["crs"] = { 151029 },
					}),
				},
			}),
			pvp(ach(13141, {	-- Island Slayer
				ach(13115),		-- Reef Madness
				ach(13114),		-- War for the Wilds
				ach(13110),		-- Skittering Smashed
				ach(13106),		-- Mire Marauder
				ach(13102),		-- Clash at the Cay
				ach(13098),		-- Bane of the Chain
				ach(12592),		-- Ruined the Ruins
				ach(13399),		-- Jorundall Justice
				ach(13400),		-- Havenswood Hero
				ach(13580),		-- Crestfallen
				ach(13584),		-- Snowblossom Scrapper
			})),
			pvp(ach(13129)),	-- Sucker Punch
		}),
	}),
}));
