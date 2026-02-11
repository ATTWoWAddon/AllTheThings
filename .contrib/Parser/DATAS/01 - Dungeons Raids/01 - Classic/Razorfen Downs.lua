-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(233, {	-- Razorfen Downs
		-- #if BEFORE MOP
		["lore"] = "Crafted from the same mighty vines as Razorfen Kraul, Razorfen Downs is the traditional capital city of the quillboar race. The sprawling, thorn-ridden labyrinth houses a veritable army of loyal quillboar as well as their high priests - the Death's Head tribe. Recently, however, a looming shadow has fallen over the crude den. Agents of the undead Scourge - led by the lich, Amnennar the Coldbringer - have taken control over the quillboar race and turned the maze of thorns into a bastion of undead might. Now the quillboar fight a desperate battle to reclaim their beloved city before Amnennar spreads his control across the Barrens.",
		-- #endif
		["zone-text-areaID"] = 722,	-- Razorfen Downs
		["mapID"] = RAZORFEN_DOWNS,
		["coords"] = {
			-- #if AFTER CATA
			{ 43.5, 25.2, THOUSAND_NEEDLES },	-- Razorfen Downs
			-- #else
			{ 50.0, 92.0, THE_BARRENS },
			-- #endif
		},
		["lvl"] = lvlsquish(35, 35, 15),
		["groups"] = {
			n(QUESTS, {
				q(6626, {	-- A Host of Evil
					["qg"] = 12866,	-- Myriam Moonsinger
					["coord"] = { 49.0, 94.0, THE_BARRENS },
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/8 Razorfen Battleguard slain
							["provider"] = { "n", 7873 },	-- Razorfen Battleguard
						}),
						objective(2, {	-- 0/8  slain
							["provider"] = { "n", 7874 },	-- Razorfen Thornweaver
						}),
						objective(3, {	-- 0/8 Death's Head Cultist slain
							["provider"] = { "n", 7872 },	-- Death's Head Cultist
						}),
					},
				}),
				q(6521, {	-- An Unholy Alliance (2/2) (Before Wrathgate)
					["sourceQuest"] = 6522,	-- An Unholy Alliance (1/2) (Before Wrathgate)
					["providers"] = {
						-- #if AFTER 3.3.0
						{ "n", 36273 },	-- Bragor Bloodfist <Hand of the Warchief>
						-- #else
						{ "n", 2425 },	-- Varimathras
						-- #endif
					},
					["coord"] = { 56.3, 92.2, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Ambassador Malcin's Head
							["provider"] = { "i", 17009 },	-- Ambassador Malcin's Head
							["coord"] = { 48.6, 95.6, THE_BARRENS },
							["cr"] = 12865,	-- Ambassador Malcin
						}),
						i(17039, {	-- Skullbreaker
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17042, {	-- Nail Spitter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17043, {	-- Zealot's Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(14353, {	-- An Unholy Alliance (2/2) (After Wrathgate)
					["sourceQuest"] = 14352,	-- An Unholy Alliance (1/2) (After Wrathgate)
					["qg"] = 36273,	-- Bragor Bloodfist <Hand of the Warchief>
					["coord"] = { 56.3, 92.2, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["maps"] = { THE_BARRENS },
					["races"] = HORDE_ONLY,
					["lvl"] = 28,
					["groups"] = {
						objective(1, {	-- 0/1 Ambassador Malcin's Head
							["provider"] = { "i", 17009 },	-- Ambassador Malcin's Head
							["coord"] = { 48.6, 95.6, THE_BARRENS },
							["cr"] = 12865,	-- Ambassador Malcin
						}),
						i(17039, {	-- Skullbreaker
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17042, {	-- Nail Spitter
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(17043, {	-- Zealot's Robe
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(33513, {	-- Blackthorn's Lieutenants
					["qgs"] = {
						74367,	-- Koristrasza
						74888,	-- Koristrasza
					},
					["timeline"] = { ADDED_6_0_2 },
					["lvl"] = lvlsquish(35, 35, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Mushlump slain
							["provider"] = { "n", 74435 },	-- Mushlump
						}),
						objective(2, {	-- 0/1 Mordresh Fire Eye slain
							["provider"] = { "n", 74347 },	-- Mordresh Fire Eye
						}),
						objective(3, {	-- 0/1 Aarux slain
							["provider"] = { "n", 74412 },	-- Aarux <The Plagued Nightmare>
						}),
					},
				}),
				q(3341, {	-- Bring the End
					["qg"] = 2308,	-- Andrew Brownell
					["coord"] = { 74.0, 32.8, UNDERCITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 37,
					["groups"] = {
						objective(1, {	-- 0/1 Skull of the Coldbringer
							["provider"] = { "i", 10420 },	-- Skull of the Coldbringer
						}),
						i(10823, {	-- Vanquisher's Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10824, {	-- Amberglow Talisman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(3636, {	-- Bring the Light
					["qg"] = 1284,	-- Archbishop Benedictus
					["coord"] = { 39.6, 27.4, STORMWIND_CITY },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 39,
					["groups"] = {
						objective(1, {	-- 0/1 Amnennar the Coldbringer slain
							["provider"] = { "n", 7358 },	-- Amnennar the Coldbringer
						}),
						i(10823, {	-- Vanquisher's Sword
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(10824, {	-- Amberglow Talisman
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(27029, {	-- Cure the Scourge
					["qg"] = 44837,	-- Koristrasza
					["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					["lvl"] = lvlsquish(40, 40, 15),
					["groups"] = {
						objective(1, {	-- 0/20 Withered Tusk
							["provider"] = { "i", 60756 },	-- Withered Tusk
							["crs"] = {
								7334,	-- Battle Boar Horror
								7335,	-- Death's Head Geomancer
								7337,	-- Death's Head Necromancer
								7334,	-- Withered Battle Boar
								7329,	-- Withered Quilguard
								7328,	-- Wiethered Reaver
								7332,	-- Withered Spearhide
								7327,	-- Withered Warrior
							},
						}),
					},
				}),
				q(3525, {	-- Extinguishing the Idol
					["sourceQuest"] = 3523,	-- Scourge of the Downs (Before Cataclysm)
					["providers"] = {
						{ "n",   8516 },	-- Belnistrasz
						{ "o", 152097 },	-- Belnistrasz's Brazier
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 32,
					-- #if BEFORE 4.0.3
					["groups"] = {
						i(10710, {	-- Dragonclaw Ring
							["timeline"] = { REMOVED_6_0_2 },
						}),
					},
					-- #endif
				}),
				q(27022, {	-- Extinguishing the Idol (After Cataclysm)
					["sourceQuest"] = 27019,	-- Scourge of the Downs (After Cataclysm)
					["providers"] = {
						{ "n",   8516 },	-- Belnistrasz
						{ "o", 152097 },	-- Belnistrasz's Brazier
					},
					["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					["lvl"] = lvlsquish(40, 40, 15),
					["groups"] = {
						i(10710, {	-- Dragonclaw Ring
							["timeline"] = { REMOVED_6_0_2 },
						}),
					},
				}),
				q(27063, {	-- Looming Threat [Alliance]
					["qg"] = 40032,	-- Telaron Windflight
					["coord"] = { 50.7, 17.2, FERALAS },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = ALLIANCE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 15),
				}),
				q(27062, {	-- Looming Threat [Horde]
					["qg"] = 39895,	-- Kanati Greycloud
					["coord"] = { 11.1, 11.2, THOUSAND_NEEDLES },
					["timeline"] = { ADDED_4_0_3 },
					["races"] = HORDE_ONLY,
					["isBreadcrumb"] = true,
					["lvl"] = lvlsquish(35, 35, 15),
				}),
				q(27024, {	-- Partners in Crime
					-- #if AFTER 6.0.2
					["description"] = "This quest gets marked as completed when you complete the quest '|cFFFFD700Blackthorn's Lieutenants|r' (33513).",
					-- #endif
					["qg"] = 44837,	-- Koristrasza
					["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					["lvl"] = lvlsquish(40, 40, 15),
					["groups"] = {
						objective(1, {	-- 0/1 Glutton slain
							["provider"] = { "n", 8567 },	-- Glutton
						}),
						objective(2, {	-- 0/1 Mordresh Fire Eye slain
							["provider"] = { "n", 7357 },	-- Mordresh Fire Eye
						}),
						objective(3, {	-- 0/1 Tuten'kash slain
							["provider"] = { "n", 7355 },	-- Tuten'kash
						}),
					},
				}),
				q(3523, {	-- Scourge of the Downs (Before Cataclysm)
					["providers"] = {
						{ "n", 8516 },	-- Belnistrasz
						{ "i", 10682 },	-- Belnistrasz's Oathstone
					},
					["timeline"] = { REMOVED_4_0_3 },
					["lvl"] = 32,
				}),
				q(27019, {	-- Scourge of the Downs (After Cataclysm)
					["providers"] = {
						{ "n", 8516 },	-- Belnistrasz
						{ "i", 10682 },	-- Belnistrasz's Oathstone
					},
					["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					["lvl"] = lvlsquish(40, 40, 15),
				}),
				q(27009, {	-- The Coldbringer
					-- #if AFTER 6.0.2
					["description"] = "This quest gets marked as completed when you complete the quest '|cFFFFD700The Ritual|r' (33514).",
					-- #endif
					["sourceQuests"] = {
						27063,	-- Looming Threat [Alliance]
						27062,	-- Looming Threat [Horde]
					},
					["qg"] = 44837,	-- Koristrasza
					["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					["lvl"] = lvlsquish(42, 42, 15),
					-- #if BEFORE 6.0.1.18322
					["groups"] = {
						objective(1, {	-- 0/1 Amnennar the Coldbringer slain
							["provider"] = { "n", 7358 },	-- Amnennar the Coldbringer
						}),
						i(65996),	-- Belt of Tyrannic Rule
						i(65975),	-- Chestguard of Redemption
						i(65951),	-- Razorfen Spaulders
						i(65926),	-- Coldbringer's Leggings
						i(66009),	-- Koristrasza's Amulet
					},
					-- #endif
				}),
				q(33514, {	-- The Ritual
					["qgs"] = {
						74367,	-- Koristrasza
						74888,	-- Koristrasza
					},
					["timeline"] = { ADDED_6_0_2 },
					["groups"] = {
						objective(1, {	-- 0/1 Amnennar the Coldbringer slain
							["provider"] = { "n", 74434 },	-- Amnennar the Coldbringer
						}),
						i(65996),	-- Belt of Tyrannic Rule
						i(65975),	-- Chestguard of Redemption
						i(65926),	-- Coldbringer's Leggings
						i(65951),	-- Razorfen Spaulders
						i(66009),	-- Koristrasza's Amulet
					},
				}),
			}),
			n(ZONE_DROPS, {
				-- #if ANYCLASSIC
				i(3172, {	-- Boar Intestines
					["crs"] = {
						7333,	-- Withered Battle Boar
						7334,	-- Battle Boar Horror
					},
				}),
				-- #endif
				i(10573),	-- Boneslasher
				i(10582),	-- Briar Tredders
				i(10574),	-- Corpseshroud
				i(10581),	-- Death's Head Vestment
				i(10571),	-- Ebony Boneclub
				i(10572),	-- Freezing Shard
				i(10570),	-- Manslayer
				i(10567),	-- Quillshooter
				i(10583),	-- Quillward Harness
				i(10584),	-- Stormgale Fists
				i(10578),	-- Thoughtcast Boots
			}),
			n(7895, {	-- Ambassador Bloodrage
				-- #if BEFORE CATA
				["coords"] = {
					{ 46.2, 87.4, THE_BARRENS },
					{ 48.0, 90.4, THE_BARRENS },
					{ 48.6, 95.6, THE_BARRENS },
				},
				-- #else
				["maps"] = { SOUTHERN_BARRENS },
				-- #endif
				["description"] = "This is a rare that is not always present.",
				["timeline"] = { REMOVED_4_0_3 },
			}),
			-- #if BEFORE 6.0.2
			n(7355, {	-- Tuten'kash
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(217293)),	-- Silky Spider Cape
					i(10776, {	-- Silky Spider Cape
						["timeline"] = { REMOVED_1_15_1 },
					}),
					-- #else
					i(10776),	-- Silky Spider Cape
					-- #endif
					i(10775),	-- Carapace of Tuten'kash
					i(10777),	-- Arachnid Gloves
				},
			}),
			n(7356, {	-- Plaguemaw the Rotting
				["sourceQuests"] = {
					3525,	-- Extinguishing the Idol (Before Cataclysm)
					-- #if AFTER CATA
					27022,	-- Extinguishing the Idol (After Cataclysm)
					-- #endif
				},
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					i(10766),	-- Plaguerot Sprig
					i(10760),	-- Swine Fists
				},
			}),
			-- #endif
			e(1142, {	-- Aarux
				["creatureID"] = 74412,	-- Aarux
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(10776),	-- Silky Spider Cape
					i(10775),	-- Carapace of Tuten'kash
					i(10777),	-- Arachnid Gloves
				},
			}),
			o(385581, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_5 } }, {	-- Henry's Handbag (object)
				["description"] = "Head to the Murder Pens area and look for hanging bag, recipe is inside.",
				["groups"] = {
					i(202691),	-- Henry's Handbag (Reagent Bag)
					i(202249),	-- Recipe: Goldthorn Tea (RECIPE!)
				},
			})),
			n(8696, bubbleDownSelf({ ["timeline"] = { REMOVED_6_0_2 } }, {	-- Henry Stern
				["description"] = "The only source of acquiring Goldthorn Tea.",
				["groups"] = {
					recipe(13028, {	-- Goldthorn Tea
						-- #if AFTER 6.0.2
						["description"] = "Goldthorn Tea will still tease us on our Unlearned tab until Blizzard brings Henry back, takes the recipe off the list, or gives us another way to obtain it.",
						-- #endif
					}),
				},
			})),
			n(75813, {	-- Sah'rhee
				["description"] =
					-- #if AFTER 8.3.0
					"Sah'rhee doesn't spawn in every instance run. Whenever he spawns, he's trackable as a green dot on the mini-map, and you can click his body to start the encounter.",
					-- #else
					"Sah'rhee doesn't spawn in every instance run. Click his body in The Murder Pen to start the encounter.",
					-- #endif
				["coord"] = { 80.0, 26.0, RAZORFEN_DOWNS },	-- The Murder Pens
				["crs"] = { 75329 },	-- Sah'rhee (prior to clicking)
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(10766),	-- Plaguerot Sprig
					i(10768),	-- Boar Champion's Belt
					i(10767),	-- Savage Boar's Guard
					i(10758),	-- X'caliboar
					i(10760),	-- Swine Fists
					i(151454, {	-- Splinterbone Sabatons
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			-- #if BEFORE 6.0.2
			n(7357, {	-- Mordresh Fire Eye
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(217291)),	-- Mordresh's Lifeless Skull
					applyclassicphase(SOD_PHASE_TWO, i(217290)),	-- Glowing Eye of Mordresh
					applyclassicphase(SOD_PHASE_TWO, i(217292)),	-- Deathmage Sash
					i(10770, {	-- Mordresh's Lifeless Skull
						["timeline"] = { REMOVED_1_15_1 },
					}),
					i(10769, {	-- Glowing Eye of Mordresh
						["timeline"] = { REMOVED_1_15_1 },
					}),
					i(10771, {	-- Deathmage Sash
						["timeline"] = { REMOVED_1_15_1 },
					}),
					-- #else
					i(10770),	-- Mordresh's Lifeless Skull
					i(10769),	-- Glowing Eye of Mordresh
					i(10771),	-- Deathmage Sash
					-- #endif
				},
			}),
			-- #endif
			e(433, {	-- Mordresh Fire Eye
				["creatureID"] = 74347,	-- Mordresh Fire Eye
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(10770),	-- Mordresh's Lifeless Skull
					i(10769),	-- Glowing Eye of Mordresh
					i(10771),	-- Deathmage Sash
				},
			}),
			e(1143, {	-- Mushlump
				["creatureID"] = 74435,	-- Mushlump
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(10772),	-- Glutton's Cleaver
					i(10774),	-- Fleshhide Shoulders
					i(151453, {	-- Grungy Necromantic Ring
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			-- #if BEFORE 6.0.2
			n(8567, {	-- Glutton
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					i(10772),	-- Glutton's Cleaver
					i(10774),	-- Fleshhide Shoulders
				},
			}),
			n(7354, {	-- Ragglesnout
				["description"] = "This is a rare spawn that is not always present.",
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					i(10758),	-- X'caliboar
					i(10767),	-- Savage Boar's Guard
					i(10768),	-- Boar Champion's Belt
				},
			}),
			n(7358, {	-- Amnennar the Coldbringer
				["timeline"] = { REMOVED_6_0_2 },
				["groups"] = {
					ach(636),	-- Razorfen Downs
					ach(5045, {	-- Razorfen Downs Guild Run
						["timeline"] = { ADDED_4_0_3, REMOVED_6_0_2 },
					}),
					i(10420),	-- Skull of the Coldbringer
					i(10761),	-- Coldrage Dagger
					i(10763),	-- Icemetal Barbute
					-- #if SEASON_OF_DISCOVERY
					applyclassicphase(SOD_PHASE_TWO, i(217289)),	-- Deathchill Armor
					applyclassicphase(SOD_PHASE_TWO, i(217288)),	-- Robes of the Lich
					i(10764, {	-- Deathchill Armor
						["timeline"] = { REMOVED_1_15_1 },
					}),
					i(10762, {	-- Robes of the Lich
						["timeline"] = { REMOVED_1_15_1 },
					}),
					-- #else
					i(10764),	-- Deathchill Armor
					i(10762),	-- Robes of the Lich
					-- #endif
					i(10765),	-- Bonefingers
				},
			}),
			-- #endif
			e(1146, {	-- Death Speaker Blackthorn
				["creatureID"] = 74875,	-- Death Speaker Blackthorn
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					i(10758),	-- X'caliboar
					i(10766),	-- Plaguerot Sprig
					i(10767),	-- Savage Boar's Guard
					i(10760),	-- Swine Fists
					i(10768),	-- Boar Champion's Belt
					i(151454, {	-- Splinterbone Sabatons
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			e(1141, {	-- Amnennar the Coldbringer
				["crs"] = {
					74876,	-- Amnennar's Phylactery
					74434,	-- Amnennar the Coldbringer
				},
				["timeline"] = { ADDED_6_0_2 },
				["groups"] = {
					ach(636),	-- Razorfen Downs
					ach(5045, {	-- Razorfen Downs Guild Run
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(10761),	-- Coldrage Dagger
					i(10763),	-- Icemetal Barbute
					i(10764),	-- Deathchill Armor
					i(10762),	-- Robes of the Lich
					i(10765),	-- Bonefingers
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(233, {
		q(35598),	-- Razorfen Downs Reward Quest - Normal completion
	}),
})));
