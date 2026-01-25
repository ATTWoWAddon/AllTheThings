---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(EXILES_REACH, bubbleDownSelf({
		-- Not really any reason to do this. Evokers/Dracthyr will never see this Zone unless enabling Account Mode
		-- ["classes"] = exclude({ DEMONHUNTER, DEATHKNIGHT, EVOKER }, ALL_CLASSES),
		-- ["races"] = exclude({ DRACTHYR_ALLIANCE, DRACTHYR_HORDE }, ALL_RACES),
		["customCollect"] = { "NPE" },
	}, {
	["icon"] = 3567434,
	["maps"] = {
		1726,	-- North Sea (Alliance)
		1727,	-- North Sea (Horde)
	},
	["timeline"] = { ADDED_9_0_1 },
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(14222, {	-- Exile's Reach
				crit(47974, {	-- Alliance NPE - "The Nation of Kul Tiras"
					["sourceQuests"] = {
						62802,	-- Triggered after going to Stormwind for An End to Beginnings
						55991,	-- An End to Beginnings [A]
					},
				}),
				crit(48307, {	-- Horde NPE - "Mission Statement"
					["sourceQuests"] = {
						62803,	-- Triggered after going to Orgrimmar for An End to Beginnings
						59985,	-- An End to Beginnings [H]
					},
				}),
			}),
		}),
		m(DARKMAUL_CITADEL, {
			["icon"] = 3759927,
			["maps"] = {
				1610,	-- Darkmaul Citadel, Terrace of Reanimation
				1611,	-- Darkmaul Citadel, Bonebreaker Hall
			},
			["groups"] = {
				n(157300, {	-- Tunk
					i(179362, {	-- Tunk's Backscratcher
						["timeline"] = { CREATED_9_0_1 }
					}),
					i(178163),	-- Tunk's Shinguard
					i(178167),	-- Tunk's Lil' Whomper
					i(178164),	-- Tunk's Needle
					i(179360),	-- Tunk's Tiny Bow
					i(178165),	-- Tunk's Tooth
					i(178166),	-- Tunk's Toothpick
					i(178162),	-- Tunk's Whomper
					i(178176),	-- Tunk's Trunk
				}),
				n(156501, {	-- Ravnyr / Kalecgos (Post 11.2.7)
					-- Exo Note: No item drops from this encounter Post 11.2.7
					["crs"] = { 156814 },	-- Gor'groth
					["groups"] = {
						i(178168),	-- Darkmaul Ritual Stone
						i(178171),	-- Darkmaul Signet Ring
						i(178169),	-- Decrepit Dragonscale Drape
					},
				}),
			},
		}),
		n(QUESTS, {
			cl(DRUID, sharedData({ ["classes"] = { DRUID } }, {
				q(59350, {	-- A Druid's Form [A]
					["sourceQuests"] = { 55639 },	-- Who Lurks in the Pit [A]
					["provider"] = { "n", 156932 },	-- Ralia Dreamchaster
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59951, {	-- A Druid's Form [H]
					["sourceQuests"] = { 59949 },	-- Who Lurks in the Pit [H]
					["provider"] = { "n", 166575 },	-- Crenna Earth-Daughter
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(HUNTER, sharedData({ ["classes"] = { HUNTER } }, {
				q(59342, {	-- Taming the Wilds [A]
					["sourceQuests"] = { 55173 },	-- Northbound [A]
					["provider"] = { "n", 154327 },	-- Austin Huxworth
					["coord"] = { 62.7, 69.8, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59355, {	-- A Hunter's Trap [A]
					["sourceQuests"] = {
						55882,	-- Message to Base [A]
						55639,	-- Who Lurks in the Pit [A]
					},
					["provider"] = { "n", 161666 },	-- Austin Huxworth
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						o_repeated({	-- Old Spring
							["coord"] = { 51.8, 51.7, EXILES_REACH },
							["groups"] = {
								i(175980),	-- Old Spring (QI!)
								o(346277),	-- Old Spring
								o(350814),	-- Old Spring
							},
						}),
						o_repeated({	-- Rusted Chains
							["coord"] = { 52.2, 53.1, EXILES_REACH },
							["groups"] = {
								i(175981),	-- Rusted Chain (QI!)
								o(346278),	-- Rusted Chains
								o(350813),	-- Rusted Chains
							},
						}),
						i(175979),	-- Ice Mote (QI!)
					},
				}),
				q(59356, {	-- Hunting the Stalker [A]
					["sourceQuests"] = { 59355 },	-- A Hunter's Trap [A]
					["provider"] = { "n", 161666 },	-- Austin Huxworth
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(60168, {	-- The Art of Taming [A]
					["sourceQuests"] = { 59356 },	-- Hunting the Stalker [A]
					["provider"] = { "n", 161666 },	-- Austin Huxworth
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59937, {	-- Taming the Wilds [H]
					["sourceQuests"] = { 59935 },	-- Northbound [H]
					["provider"] = { "n", 166996 },	-- Mithdran Dawntracker
					["coord"] = { 62.7, 69.8, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(59952, {	-- A Hunter's Trap [H]
					["sourceQuests"] = { 59947 },	-- Message to Base [H]
					["provider"] = { "n", 167215 },	-- Mithdran Dawntracker
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						o_repeated({	-- Old Spring
							["coord"] = { 51.8, 51.7, EXILES_REACH },
							["groups"] = {
								i(175980),	-- Old Spring (QI!)
								o(346277),	-- Old Spring
								o(350814),	-- Old Spring
							},
						}),
						o_repeated({	-- Rusted Chain
							["coord"] = { 52.2, 53.1, EXILES_REACH },
							["groups"] = {
								i(175981),	-- Rusted Chain (QI!)
								o(346278),	-- Rusted Chains
								o(350813),	-- Rusted Chains
							},
						}),
						i(175979),	-- Ice Mote (QI!)
					},
				}),
				q(59953, {	-- Hunting the Stalker [H]
					["sourceQuests"] = { 59952 },	-- A Hunter's Trap [H]
					["provider"] = { "n", 167215 },	-- Mithdran Dawntracker
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(60162, {	-- The Art of Taming [H]
					["sourceQuests"] = { 59953 },	-- Hunting the Stalker [H]
					["provider"] = { "n", 167215 },	-- Mithdran Dawntracker
					["coord"] = { 52.4, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(MAGE, sharedData({ ["classes"] = { MAGE } }, {
				q(59352, {	-- A Mage's Knowledge [A]
					["sourceQuests"] = { 55882 },	-- Message to Base [A]
					["provider"] = { "n", 156886 },	-- Meredy Huntswell
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(175975),	-- Meredy's Spell Book (QI!)
					},
				}),
				q(59354, {	-- The Best Way to Use Sheep [A]
					["sourceQuests"] = { 59352 },	-- A Mage's Knowledge [A]
					["provider"] = { "n", 156886 },	-- Meredy Huntswell
					["coord"] = { 52.2, 55.4, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59954, {	-- A Mage's Knowledge [H]
					["sourceQuests"] = { 59947 },	-- Message to Base [H]
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(178229),	-- Herbert's Spell Book (QI!)
					},
				}),
				q(59955, {	-- The Best Way to Use Sheep [H]
					["sourceQuests"] = { 59954 },	-- A Mage's Knowledge
					["provider"] = { "n", 167309 },	-- Herbert Gloomburst
					["coord"] = { 52.2, 55.4, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(MONK, sharedData({ ["classes"] = { MONK } }, {
				q(59339, {	-- Enhanced Combat Tactics [A]
					["sourceQuests"] = { 55174 },	-- Cooking Meat [A]
					["provider"] = { "n", 156651 },	-- Captain Garrick
					["coord"] = { 58.3, 74.6, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59347, {	-- A Monk's Focus [A]
					["sourceQuests"] = {
						55882,	-- Message to Base [A]
						55639,	-- Who Lurks in the Pit [A]
					},
					["provider"] = { "n", 156885 },	-- Kee-La
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59349, {	-- One Last Spar [A]
					["sourceQuests"] = { 59347 },	-- A Monk's Focus
					["provider"] = { "n", 164835 },	-- Kee-La
					["coord"] = { 52.6, 49.4, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59934, {	-- Enhanced Combat Tactics [H]
					["sourceQuests"] = { 59932 },	-- Cooking Meat [H]
					["provider"] = { "n", 166906 },	-- Warlord Breka Grimaxe
					["coord"] = { 58.3, 74.6, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(59956, {	-- A Monk's Focus [H]
					["sourceQuests"] = {
						59947,	-- Message to Base [H]
						59949,	-- Who Lurks in the Pit [H]
					},
					["provider"] = { "n", 167308 },	-- Bo
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(59957, {	-- One Last Spar [H]
					["sourceQuests"] = { 59956 },	-- A Monk's Focus [H]
					["provider"] = { "n", 167537 },	-- Bo
					["coord"] = { 52.6, 49.4, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(PALADIN, sharedData({ ["classes"] = { PALADIN } }, {
				q(58923, {	-- A Paladin's Service [A]
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies [A]
					["provider"] = { "n", 156801 },	-- Private Cole
					["coord"] = { 52.0, 55.4, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58946, {	-- The Divine's Shield [A]
					["sourceQuests"] = { 58923 },	-- A Paladin's Service [A]
					["provider"] = { "n", 162998 },	-- Yorah
					["coord"] = { 57.5, 52.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59958, {	-- A Paladin's Service [H]
					["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies [H]
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.4, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(60174, {	-- The Divine's Shield [H]
					["sourceQuests"] = { 59958 },	-- A Paladin's Service [H]
					["provider"] = { "n", 167179 },	-- Daelya Twilightsbane
					["coord"] = { 57.5, 52.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(PRIEST, sharedData({ ["classes"] = { PRIEST } }, {
				q(58953, {	-- A Priest's End [A]
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies [A]
					["provider"] = { "n", 156801 },	-- Private Cole
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58960, {	-- Resurrecting the Recruits [A]
					["sourceQuests"] = { 58953 },	-- A Priest's End [A]
					["provider"] = { "n", 163108 },	-- Branven Hammerheart
					["coord"] = { 56.1, 53.6, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59961, {	-- A Priest's End [H]
					["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies [H]
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(59965, {	-- Resurrecting the Recruits [H]
					["sourceQuests"] = { 59961 },	-- A Priest's End [H]
					["provider"] = { "n", 167188 },	-- Sha'zul
					["coord"] = { 56.1, 53.6, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(ROGUE, sharedData({ ["classes"] = { ROGUE } }, {
				q(58917, {	-- A Rogue's End [A]
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies
					["provider"] = { "n", 156801 },	-- Private Cole
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						o_repeated({	-- Withering Hemlock
							["coord"] = { 45.1, 54.8, EXILES_REACH },
							["groups"] = {
								i(174916),	-- Withering Hemlock (QI!)
								o(341951),	-- Withering Hemlock
								o(351426),	-- Withering Hemlock
							},
						}),
					},
				}),
				q(58933, {	-- The Deadliest of Poisons [A]
					["sourceQuests"] = { 58917 },	-- A Rogue's End [A]
					["provider"] = { "n", 163024 },	-- Coulston Nereus
					["coord"] = { 45.6, 56.1, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59967, {	-- A Rogue's End [H]
					["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						o_repeated({	-- Withering Hemlock
							["coord"] = { 45.1, 54.8, EXILES_REACH },
							["groups"] = {
								i(174916),	-- Withering Hemlock (QI!)
								o(341951),	-- Withering Hemlock
								o(351426),	-- Withering Hemlock
							},
						}),
					},
				}),
				q(59968, {	-- The Deadliest of Poisons [H]
					["sourceQuests"] = { 59967 },	-- A Rogue's End [H]
					["provider"] = { "n", 167586 },	-- Drizza Sidestabber
					["coord"] = { 45.6, 56.1, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			cl(SHAMAN, sharedData({ ["classes"] = { SHAMAN } }, {
				q(59002, {	-- A Shaman's Duty
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies
					["provider"] = { "n", 163329 },	-- Ghostwolf
					["coord"] = { 52.3, 55.6, EXILES_REACH },
					["groups"] = {
						o(342366, {	-- Veil Blossom
							i(174968),	-- Veil Blossom (QI!)
						}),
					},
				}),
			})),
			cl(WARLOCK, sharedData({ ["classes"] = { WARLOCK } }, {
				q(58962, {	-- A Warlock's Bargain [A]
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies
					["provider"] = { "n", 156801 },	-- Private Cole
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
					["groups"] = {
						i(174947),	-- Old Grimoire (QI!)
					},
				}),
				q(59970, {	-- A Warlock's Bargain [H]
					["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(174947),	-- Old Grimoire (QI!)
					},
				}),
			})),
			cl(WARRIOR, sharedData({ ["classes"] = { WARRIOR } }, {
				q(58914, {	-- A Warrior's End [A]
					["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies
					["provider"] = { "n", 156801 },	-- Private Cole
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(58915, {	-- Hjalmar's Final Execution [A]
					["sourceQuests"] = { 58914 },	-- A Warrior's End [A]
					["provider"] = { "n", 162943 },	-- Hjalmar the Undying
					["coord"] = { 51.5, 47.8, EXILES_REACH },
					["races"] = ALLIANCE_ONLY,
				}),
				q(59971, {	-- A Warrior's End [H]
					["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies
					["provider"] = { "n", 167216 },	-- Grunt Throg
					["coord"] = { 52.0, 55.2, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
				q(59972, {	-- Hjalmar's Final Execution [H]
					["sourceQuests"] = { 59971 },	-- A Warrior's End [H]
					["provider"] = { "n", 162943 },	-- Hjalmar the Undying
					["coord"] = { 51.5, 47.8, EXILES_REACH },
					["races"] = HORDE_ONLY,
				}),
			})),
			q(56775, {	-- Warming Up [A]
				["provider"] = { "n", 156280 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["races"] = ALLIANCE_ONLY,
			}),
			q(59926, {	-- Warming Up [H]
				["provider"] = { "n", 166573 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["races"] = HORDE_ONLY,
			}),
			q(58209, {	-- Stand Your Ground [A]
				["sourceQuests"] = { 56775 },	-- Warming Up [A]
				["provider"] = { "n", 160664 },	-- Private Cole
				["races"] = ALLIANCE_ONLY,
			}),
			q(59927, {	-- Stand Your Ground [H]
				["sourceQuests"] = { 59926 },	-- Warming Up [H]
				["provider"] = { "n", 166583 },	-- Grunt Throg
				["races"] = HORDE_ONLY,
			}),
			q(58208, {	-- Brace for Impact [A]
				["sourceQuests"] = { 58209 },	-- Stand Your Ground [A]
				["provider"] = { "n", 160664 },	-- Private Cole
				["races"] = ALLIANCE_ONLY,
			}),
			q(59928, {	-- Brace for Impact [H]
				["sourceQuests"] = { 59927 },	-- Stand Your Ground [H]
				["provider"] = { "n", 166583 },	-- Grunt Throg
				["races"] = HORDE_ONLY,
			}),
			q(55122, {	-- Murloc Mania [A]
				["sourceQuests"] = { 58208 },	-- Brace for Impact [A]
				["provider"] = { "n", 156626 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(170549),	-- First Aid Kit (QI!)
				},
			}),
			q(59929, {	-- Murloc Mania [H]
				["sourceQuests"] = { 59928 },	-- Brace for Impact [H]
				["provider"] = { "n", 166782 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(170549),	-- First Aid Kit (QI!)
				},
			}),
			q(54951, {	-- Emergency First Aid [A]
				["sourceQuests"] = { 55122 },	-- Murloc Mania [A]
				["provider"] = { "n", 156626 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168410),	-- First Aid Kit (PQI!)
					--
					i(174780),	-- Emptied First Aid Kit
				},
			}),
			q(59930, {	-- Emergency First Aid [H]
				["sourceQuests"] = { 59929 },	-- Murloc Mania [H]
				["provider"] = { "n", 166782 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168410),	-- First Aid Kit (PQI!)
					--
					i(174780),	-- Emptied First Aid Kit
				},
			}),
			q(54952, {	-- Finding the Lost Expedition [A]
				["sourceQuests"] = { 54951 },	-- Emergency First Aid [A]
				["provider"] = { "n", 156626 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59931, {	-- Finding the Lost Expedition [H]
				["sourceQuests"] = { 59930 },	-- Emergency First Aid [H]
				["provider"] = { "n", 166782 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 61.8, 82.8, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55174, {	-- Cooking Meat [A]
				["sourceQuests"] = { 54952 },	-- Finding the Lost Expedition [A]
				["provider"] = { "n", 156651 },	-- Captain Garrick
				["coord"] = { 58.3, 74.6, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(174072),	-- Raw Meat (QI!)
					o(349962, {	-- Campfire
						["coord"] = { 58.5, 74.5, EXILES_REACH },
						["groups"] = { i(174074) },	-- Cooked Meat (QI!)
					}),
				},
			}),
			q(59932, {	-- Cooking Meat [H]
				["sourceQuests"] = { 59931 },	-- Finding the Lost Expedition [H]
				["provider"] = { "n", 166906 },	-- Warlord Breka Grimaxe
				["coord"] = { 58.3, 74.6, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(174072),	-- Raw Meat (QI!)
					o(339769, {	-- Campfire
						["coord"] = { 58.5, 74.5, EXILES_REACH },
						["groups"] = { i(174074) },	-- Cooked Meat (QI!)
					}),
				},
			}),
			q(59254, {	-- Enhanced Combat Tactics [A]
				["sourceQuests"] = { 55174 },	-- Cooking Meat [A]
				["provider"] = { "n", 156651 },	-- Captain Garrick
				["coord"] = { 58.4, 74.6, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["classes"] = exclude({ HUNTER, MONK }, ALL_CLASSES),
			}),
			q(59933, {	-- Enhanced Combat Tactics [H]
				["sourceQuests"] = { 59932 },	-- Cooking Meat [H]
				["provider"] = { "n", 166906 },	-- Warlord Breka Grimaxe
				["coord"] = { 58.4, 74.6, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["classes"] = exclude({ HUNTER, MONK }, ALL_CLASSES),
			}),
			q(55173, {	-- Northbound [A]
				["sourceQuests"] = {
					59254,	-- Enhanced Combat Tactics [A]
					55174,	-- Cooking Meat [A] [Hunter]
					59339,	-- Enhanced Combat Tactics [A] [Monk]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 175031 },	-- Alaria
				["coord"] = { 58.3, 74.5, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(167206),	-- Fire Essence (QI!)
				},
			}),
			q(59935, {	-- Northbound [H]
				["sourceQuests"] = {
					59933,	-- Enhanced Combat Tactics [H]
					59932,	-- Cooking Meat [H] [Hunter]
					59934,	-- Enhanced Combat Tactics [H] [Monk]
				},
				["sourceQuestNumRequired"] = 1,
				["qgs"] = {
					166854,	-- Won'sa
					175030,	-- Won'sa (Note: this creatureID here at least from 11.0.5)
				},
				["coord"] = { 58.3, 74.5, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(167206),	-- Fire Essence (QI!)
				},
			}),
			q(55186, {	-- Down with the Quilboar [A]
				["sourceQuests"] = {
					55173,	-- Northbound [A]
					59342,	-- Taming the Wilds [A] [Hunter]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 154327 },	-- Austin Huxworth
				["coord"] = { 62.7, 69.9, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59938, {	-- Down with the Quilboar [H]
				["sourceQuests"] = {
					59935,	-- Northbound [H]
					59937,	-- Taming the Wilds [H] [Hunter]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 166996 },	-- Mithdran Dawntracker
				["coord"] = { 62.7, 69.9, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55184, {	-- Forbidden Quilboar Necromancy [A] / Forbidden Quilboar Shadow Magic [A] (Post 11.2.7)
				["sourceQuests"] = {
					55173,	-- Northbound [A]
					59342,	-- Taming the Wilds [A] [Hunter]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 154327 },	-- Austin Huxworth
				["coord"] = { 62.7, 69.8, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(174789, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Dented Plate Mitts
					i(174788, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Linked Mail Gloves
					i(174786, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Stitched Cloth Gloves
					i(174787, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Thick Leather Gauntlets
					i(175181, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Cloth Boots
					i(175183, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Leather Boots
					i(175182, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Mail Sabatons
					i(175180, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Plate Warboots
				},
			}),
			q(59939, {	-- Forbidden Quilboar Necromancy [H] / Forbidden Quilboar Shadow Magic [H] (Post 11.2.7)
				["sourceQuests"] = {
					59935,	-- Northbound [H]
					59937,	-- Taming the Wilds [H] [Hunter]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 166996 },	-- Mithdran Dawntracker
				["coord"] = { 62.7, 69.8, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(174789, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Dented Plate Mitts
					i(174788, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Linked Mail Gloves
					i(174786, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Stitched Cloth Gloves
					i(174787, { ["timeline"] = { REMOVED_11_0_0 } }),	-- Thick Leather Gauntlets
					i(175213, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Cloth Boots
					i(175215, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Leather Boots
					i(175214, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Mail Sabatons
					i(175212, { ["timeline"] = { ADDED_11_0_0 } }),	-- Expeditionary Plate Warboots
				},
			}),
			q(55193, {	-- The Scout-o-Matic 5000
				["sourceQuests"] = {
					55186,	-- Down with the Quilboar [A]
					55184,	-- Forbidden Quilboar Necromancy [A]
				},
				["provider"] = { "n", 149899 },	-- Lindie Springstock
				["coord"] = { 56.1, 59.1, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59940, {	-- The Choppy Booster Mk. 5
				["sourceQuests"] = {
					59938,	-- Down with the Quilboar [H]
					59939,	-- Forbidden Quilboar Necromancy [H]
				},
				["provider"] = { "n", 167019 },	-- Cork Fizzlepop
				["coord"] = { 56.1, 59.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(56034, {	-- Re-sizing the Situation [A]
				["sourceQuests"] = { 55193 },	-- The Scout-o-Matic 5000
				["provider"] = { "n", 149899 },	-- Lindie Springstock
				["coord"] = { 56.1, 59.1, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(170557),	-- Re-Sizer v9.0.1 (QI!)
				},
			}),
			q(59941, {	-- Re-sizing the Situation [H]
				["sourceQuests"] = { 59940 },	-- The Choppy Booster Mk 5
				["provider"] = { "n", 167019 },	-- Cork Fizzlepop
				["coord"] = { 56.1, 59.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(178051),	-- Re-Sizer v9.0.1 (QI!)
				},
			}),
			q(55879, {	-- Ride of the Scientifically Enhanced Boar
				["sourceQuests"] = { 56034 },	-- Re-sizing the Situation [A]
				["provider"] = { "n", 156280 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["coord"] = { 56.2, 59.0, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175167),	-- Expeditionary Staff
					i(175172),	-- Expeditionary Dagger
					i(175166),	-- Expeditionary Greatsword
					i(175162),	-- Expeditionary Longbow
					i(175168),	-- Expeditionary Quarterstaff
					i(175170),	-- Expeditionary Short Sword
					i(175173),	-- Expeditionary Cudgel
				},
			}),
			q(59942, {	-- The Re-Deather
				["sourceQuests"] = { 59941 },	-- Re-sizing the Situation [H]
				["provider"] = { "n", 167019 },	-- Cork Fizzlepop
				["coord"] = { 56.1, 59.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175161),	-- Expeditionary Axe
					i(175163),	-- Expeditionary Quarterstaff
					i(175165),	-- Expeditionary Greataxe
					i(175174),	-- Expeditionary Cudgel
					i(175169),	-- Expeditionary Longbow
					i(175164),	-- Expeditionary Staff
					i(175171),	-- Expeditionary Dagger
				},
			}),
			q(55194, {	-- Stocking Up on Supplies [A]
				["sourceQuests"] = { 55879 },	-- Ride of the Scientifically Enhanced Boar
				["qgs"] = {
					-- #if AFTER 11.2.7
					245394,	-- Captain Garrick
					-- #else
					156807,	-- Captain Garrick
					-- #endif
				},
				["coord"] = { 52.3, 55.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175239),	-- Standard Issue Knapsack
				},
			}),
			q(59950, {	-- Stocking Up on Supplies [H]
				["sourceQuests"] = { 59942 },	-- The Re-Deather
				["provider"] = { "n", 167212 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 52.1, 55.3, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175239),	-- Standard Issue Knapsack
				},
			}),
			q(55196, {	-- The Harpy Problem [A]
				["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies [A]
				["provider"] = { "n", 156833 },	-- Henry Garrick
				["coord"] = { 53.5, 52.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59943, {	-- The Harpy Problem [H]
				["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies [H]
				["provider"] = { "n", 167219 },	-- Shuja Grimaxe
				["coord"] = { 53.7, 52.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55764, {	-- Harpy Culling [A]
				["sourceQuests"] = { 55196 },	-- The Harpy Problem [A]
				["provider"] = { "n", 156860 },	-- Kee-La
				["coord"] = { 56.9, 46.2, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59945, {	-- Harpy Culling [H]
				["sourceQuests"] = { 59943 },	-- The Harpy Problem [H]
				["provider"] = { "n", 167291 },	-- Bo
				["coord"] = { 56.9, 46.2, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55881, {	-- Purge the Totems [A]
				["sourceQuests"] = { 55196 },	-- The Harpy Problem [A]
				["provider"] = { "n", 156859 },	-- Henry Garrick
				["coord"] = { 56.9, 46.2, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168445),	-- Wand of Delugion (QI!)
					--
					i(175200),	-- Expeditionary Cloth Cord
					i(175202),	-- Expeditionary Leather Belt
					i(175201),	-- Expeditionary Mail Waistguard
					i(175199),	-- Expeditionary Plate Girdle
				},
			}),
			q(59946, {	-- Purge the Totems [H]
				["sourceQuests"] = { 59943 },	-- The Harpy Problem [H]
				["provider"] = { "n", 167291 },	-- Bo
				["coord"] = { 56.9, 46.2, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168445),	-- Wand of Delugion (QI!)
					--
					i(175238),	-- Expeditionary Cloth Cord
					i(175233),	-- Expeditionary Leather Belt
					i(175232),	-- Expeditionary Mail Waistguard
					i(175231),	-- Expeditionary Plate Girdle
				},
			}),
			q(55763, {	-- The Rescue of Meredy Huntswell
				["sourceQuests"] = { 55196 },	-- The Harpy Problem [A]
				["provider"] = { "n", 156859 },	-- Henry Garrick
				["coord"] = { 56.8, 46.1, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59944, {	-- The Rescue of Herbert Gloomburst
				["sourceQuests"] = { 59943 },	-- The Harpy Problem [H]
				["provider"] = { "n", 167290 },	-- Shuja Grimaxe
				["coord"] = { 56.8, 46.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55882, {	-- Message to Base [A]
				["sourceQuests"] = {
					55764,	-- Harpy Culling [A]
					55881,	-- Purge the Totems [A]
					55763,	-- The Rescue of Meredy Huntswell
				},
				["provider"] = { "n", 156859 },	-- Henry Garrick
				["coord"] = { 56.8, 46.1, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175192),	-- Expeditionary Cloth Leggings
					i(175194),	-- Expeditionary Leather Legguards
					i(175193),	-- Expeditionary Mail Leggings
					i(175191),	-- Expeditionary Plate Legguards
				},
			}),
			q(59947, {	-- Message to Base [H]
				["sourceQuests"] = {
					59945,	-- Harpy Culling [H]
					59946,	-- Purge the Totems [H]
					59944,	-- The Rescue of Herbert Gloomburst
				},
				["provider"] = { "n", 167290 },	-- Shuja Grimaxe
				["coord"] = { 56.8, 46.1, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175224),	-- Expeditionary Cloth Leggings
					i(175226),	-- Expeditionary Leather Legguards
					i(175225),	-- Expeditionary Mail Leggings
					i(175223),	-- Expeditionary Plate Legguards
				},
			}),
			q(55965, {	-- Westward Bound [A]
				["sourceQuests"] = { 55194 },	-- Stocking Up on Supplies [A]
				["provider"] = { "n", 154300 },	-- Bjorn Stouthands
				["coord"] = { 53.0, 55.0, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59948, {	-- Westward Bound [H]
				["sourceQuests"] = { 59950 },	-- Stocking Up on Supplies [H]
				["provider"] = { "n", 167221 },	-- Lana Jordan
				["coord"] = { 52.9, 56.4, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55639, {	-- Who Lurks in the Pit [A]
				["sourceQuests"] = { 55965 },	-- Westward Bound [A]
				["provider"] = { "n", 156803 },	-- Alaria
				["coord"] = { 51.1, 59.5, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175203),	-- Expeditionary Cloth Cuffs
					i(175206),	-- Expeditionary Leather Bracers
					i(175205),	-- Expeditionary Mail Armbands
					i(175204),	-- Expeditionary Plate Armguards
				},
			}),
			q(59949, {	-- Who Lurks in the Pit [H]
				["sourceQuests"] = { 59948 },	-- Westward Bound [H]
				["provider"] = { "n", 167225 },	-- Lana Jordan
				["coord"] = { 51.1, 59.5, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175234),	-- Expeditionary Cloth Cuffs
					i(175237),	-- Expeditionary Leather Bracers
					i(175236),	-- Expeditionary Mail Armbands
					i(175235),	-- Expeditionary Plate Armguards
				},
			}),
			q(85678, {	-- Repair Yourself [A]
				["qgs"] = {
					-- #if AFTER 11.2.7
					245394,	-- Captain Garrick
					-- #else
					156807,	-- Captain Garrick
					-- #endif
				},
				["coord"] = { 52.2, 55.2, EXILES_REACH },
				["timeline"] = { ADDED_11_1_7 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(85679, {	-- Repair Yourself [H]
				["provider"] = { "n", 167212 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 52.4, 55.6, EXILES_REACH },
				["timeline"] = { ADDED_11_1_7 },
				["races"] = HORDE_ONLY,
			}),
			q(56344, {	-- To Darkmaul Citadel [A]
				["sourceQuests"] = {
					55882,	-- Message to Base [A]
					55639,	-- Who Lurks in the Pit [A]
					59350,	-- A Druid's Form [A] [Druid]
					60168,	-- The Art of Taming [A] [Hunter]
					59354,	-- The Best Way to Use Sheep [A] [Mage]
					59349,	-- One Last Spar [A] [Monk]
					-- #if AFTER 11.1.7
					85678,	-- Repair Yourself
					-- #endif
				},
				["qgs"] = {
					-- #if AFTER 11.2.7
					245394,	-- Captain Garrick
					-- #else
					156807,	-- Captain Garrick
					-- #endif
				},
				["coord"] = { 52.1, 55.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59975, {	-- To Darkmaul Citadel [H]
				["sourceQuests"] = {
					59947,	-- Message to Base [H]
					59949,	-- Who Lurks in the Pit [H]
					59951,	-- A Druid's Form [H] [Druid]
					60162,	-- The Art of Taming [H] [Hunter]
					59955,	-- The Best Way to Use Sheep [H] [Mage]
					59957,	-- One Last Spar [H] [Monk]
					-- #if AFTER 11.1.7
					85679,	-- Repair Yourself
					-- #endif
				},
				["provider"] = { "n", 167212 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 52.1, 55.3, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55981, {	-- Right Beneath Their Eyes [A]
				["sourceQuests"] = { 56344 },	-- To Darkmaul Citadel [A]
				["qgs"] = {
					-- #if AFTER 11.2.7
					245397,	-- Lady Jaina Proudmoore
					-- #else
					156941,	-- Captain Garrick
					-- #endif
				},
				["coord"] = { 48.9, 49.2, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59978, {	-- Right Beneath Their Eyes [H]
				["sourceQuests"] = { 59975 },	-- To Darkmaul Citadel [H]
				["provider"] = { "n", 167596 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 48.9, 49.3, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55989, {	-- Catapult Destruction [A]
				["sourceQuests"] = { 55981 },	-- Right Beneath Their Eyes [A]
				["qgs"] = {
					-- #if AFTER 11.2.7
					245667,	-- Captain Garrick
					-- #else
					156960,	-- Meredy Huntswell
					-- #endif
				},
				["provider"] = { "n", 156960 },	-- Meredy Huntswell
				["coord"] = { 40.2, 32.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59980, {	-- Catapult Destruction [H]
				["sourceQuests"] = { 59978 },	-- Right Beneath Their Eyes [H]
				["qgs"] = {
					-- #if AFTER 11.2.7
					167630,	-- Shuja Grimaxe
					-- #else
					167631,	-- Herbert Gloomburst
					-- #endif
				},
				["coord"] = { 40.3, 32.4, EXILES_REACH },
				["races"] = HORDE_ONLY,
			}),
			q(55990, {	-- Controlling their Stones [A]
				["sourceQuests"] = { 55981 },	-- Right Beneath Their Eyes [A]
				["provider"] = { "n", 156961 },	-- Captain Garrick / Lady Jaina Proudmoore (Post 11.2.7)
				["coord"] = { 40.1, 32.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168599),	-- Ward Stone (QI!)
					i(168600),	-- Ward Stone (QI!)
					i(168601),	-- Ward Stone (QI!)
				},
			}),
			q(59981, {	-- Controlling Their Stones [H]
				["sourceQuests"] = { 59978 },	-- Right Beneath Their Eyes [H]
				["provider"] = { "n", 167633 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 40.2, 32.4, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(168599),	-- Ward Stone (QI!)
					i(168600),	-- Ward Stone (QI!)
					i(168601),	-- Ward Stone (QI!)
				},
			}),
			q(55988, {	-- Like Ogres to the Slaughter [A]
				["sourceQuests"] = { 55981 },	-- Right Beneath Their Eyes [A]
				["provider"] = { "n", 156942 },	-- Henry Garrick
				["coord"] = { 40.2, 32.3, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175186),	-- Expeditionary Cloth Gloves
					i(175184),	-- Expeditionary Leather Gloves
					i(175187),	-- Expeditionary Mail Gauntlets
					i(175185),	-- Expeditionary Plate Gauntlets
				},
			}),
			q(59979, {	-- Like Ogres to the Slaughter [H]
				["sourceQuests"] = { 59978 },	-- Right Beneath Their Eyes [H]
				["provider"] = { "n", 167632 },	-- Shuja Grimaxe / Breka Grimaxe (Post 11.2.7)
				["coord"] = { 40.2, 32.5, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175218),	-- Expeditionary Cloth Gloves
					i(175216),	-- Expeditionary Leather Gloves
					i(175219),	-- Expeditionary Mail Gauntlets
					i(175217),	-- Expeditionary Plate Gauntlets
				},
			}),
			q(55992, {	-- Dungeon: Darkmaul Citadel [A]
				["sourceQuests"] = {
					55989,	-- Catapult Destruction [A]
					55990,	-- Controlling their Stones [A]
					55988,	-- Like Ogres to the Slaughter [A]
				},
				["provider"] = { "n", 156965 },	-- Captain Kelra
				["coord"] = { 39.9, 32.1, EXILES_REACH },
				["maps"] = { DARKMAUL_CITADEL },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(175188),	-- Expeditionary Cloth Hood
					i(175190),	-- Expeditionary Leather Helm
					i(175189),	-- Expeditionary Mail Helm
					i(175175),	-- Expeditionary Plate Helm
				},
			}),
			q(59984, {	-- Dungeon: Darkmaul Citadel [H]
				["sourceQuests"] = {
					59980,	-- Catapult Destruction [H]
					59981,	-- Controlling their Stones [H]
					59979,	-- Like Ogres to the Slaughter [H]
				},
				["provider"] = { "n", 167183 },	-- Warlord Mulgrin Thunderwalker
				["coord"] = { 39.9, 32.1, EXILES_REACH },
				["maps"] = { DARKMAUL_CITADEL },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(175220),	-- Expeditionary Cloth Hood
					i(175222),	-- Expeditionary Leather Helm
					i(175221),	-- Expeditionary Mail Helm
					i(175207),	-- Expeditionary Plate Helm
				},
			}),
			q(55991, {	-- An End to Beginnings [A]
				["sourceQuests"] = { 55992 },	-- Dungeon: Darkmaul Citadel [A]
				["qgs"] = {
					-- #if AFTER 11.2.7
					245686,	-- Lady Jaina Proudmoore
					-- #else
					156961,	-- Captain Garrick
					-- #endif
				},
				["coord"] = { 39.6, 31.9, EXILES_REACH },
				["races"] = ALLIANCE_ONLY,
				["_drop"] = { "g" },
				["groups"] = {
					i(175176),	-- Expeditionary Cloth Robe
					i(175179),	-- Expeditionary Leather Tunic
					i(175178),	-- Expeditionary Mail Armor
					i(175177),	-- Expeditionary Plate Chestpiece
				},
			}),
			q(59985, {	-- An End to Beginnings [H]
				["sourceQuests"] = { 59984 },	-- Dungeon: Darkmaul Citadel [H]
				["provider"] = { "n", 167675 },	-- Warlord Breka Grimaxe / Thrall (Post 11.2.7)
				["coord"] = { 39.6, 31.9, EXILES_REACH },
				["races"] = HORDE_ONLY,
				["_drop"] = { "g" },
				["groups"] = {
					i(175208),	-- Expeditionary Cloth Robe
					i(175211),	-- Expeditionary Leather Tunic
					i(175210),	-- Expeditionary Mail Armor
					i(175209),	-- Expeditionary Plate Chestpiece
				},
			}),

				-- Dragon Isles, Alliance --
			q(87547, {	-- What's Your Specialty?
				["sourceQuests"] = { 55991 },	-- An End to Beginnings [A]
				["provider"] = { "n", 238913 },	-- Kalecgos
				["coord"] = { 82.0, 31.5, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				--["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
				["groups"] = { i(246462) },	-- Draconic Polearm
			}),
			q(87555, {	-- Home Is Where the Hearth Is
				["sourceQuests"] = { 87547 },	-- What's Your Specialty?
				["provider"] = { "n", 238913 },	-- Kalecgos
				["coord"] = { 82.0, 31.5, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				--["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(87562, {	-- Aiding the Dragon Isles
				["sourceQuests"] = { 87555 },	-- Home Is Where the Hearth Is
				["provider"] = { "n", 238913 },	-- Kalecgos
				["coord"] = { 82.0, 31.5, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				--["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
			}),

				-- Dragon Isles, Horde --
			q(90840, {	-- What's Your Specialty?
				["sourceQuests"] = { 59985 },	-- An End to Beginnings [H]
				["provider"] = { "n", 244496 },	-- Kalecgos
				["coord"] = { 81.2, 28.0, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				["races"] = HORDE_ONLY,
				["groups"] = { i(246462) },	-- Draconic Polearm
			}),
			q(90842, {	-- Home Is Where the Hearth Is
				["sourceQuests"] = { 90840 },	-- What's Your Specialty?
				["provider"] = { "n", 244496 },	-- Kalecgos
				["coord"] = { 81.2, 28.0, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				["races"] = HORDE_ONLY,
			}),
			q(90843, {	-- Aiding the Dragon Isles
				["sourceQuests"] = { 90842 },	-- Home Is Where the Hearth Is
				["provider"] = { "n", 244496 },	-- Kalecgos
				["coord"] = { 81.2, 28.0, THE_WAKING_SHORES },
				["timeline"] = { ADDED_11_2_7 },
				["races"] = HORDE_ONLY,
			}),

				-- Stormwind --
			q(59583, {	-- Welcome to Stormwind
			-- Exo Note: This one may have been moved to regular questing seeing as the Decor reward is attached to it in 11.2.7
			-- Not part of NPE post 11.2.7
				["sourceQuests"] = { 55991 },	-- An End to Beginnings [A]
				["provider"] = { "n", 154169 },	-- Captain Garrick
				["coord"] = { 73.6, 91.3, STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(248336, {	-- Stormwind Wooden Table (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
					}),
				},
			}),
			q(58908, {	-- Finding Your Way
				["sourceQuests"] = { 59583 },	-- Welcome to Stormwind
				["provider"] = { "n", 163095 },	-- Lindie Springstock
				["coord"] = { 70.1, 85.3, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(58909, {	-- License to Ride [A]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163007 },	-- Curly
				["coord"] = { 77.3, 67.0, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_10_1_5 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(58910, {	-- What's Your Specialty? [A] [Druid]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { DRUID },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59586, {	-- What's Your Specialty? [A] [Hunter]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { HUNTER },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59587, {	-- What's Your Specialty? [A] [Mage]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { MAGE },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59588, {	-- What's Your Specialty? [A] [Monk]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { MONK },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59589, {	-- What's Your Specialty? [A] [Paladin]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { PALADIN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59590, {	-- What's Your Specialty? [A] [Priest]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { PRIEST },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59591, {	-- What's Your Specialty? [A] [Rogue]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { ROGUE },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59592, {	-- What's Your Specialty? [A] [Shaman]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { SHAMAN },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59593, {	-- What's Your Specialty? [A] [Warlock]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { WARLOCK },
				["races"] = ALLIANCE_ONLY,
			}),
			q(59594, {	-- What's Your Specialty? [A] [Warrior]
				["sourceQuests"] = { 58908 },	-- Finding Your Way [A]
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 77.4, 67.2, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { WARRIOR },
				["races"] = ALLIANCE_ONLY,
			}),
			q(58911, {	-- Home Is Where the Hearth Is [A]
				["sourceQuests"] = {
					58910,	-- What's Your Specialty? [A] [Druid]
					59586,	-- What's Your Specialty? [A] [Hunter]
					59587,	-- What's Your Specialty? [A] [Mage]
					59588,	-- What's Your Specialty? [A] [Monk]
					59589,	-- What's Your Specialty? [A] [Paladin]
					59590,	-- What's Your Specialty? [A] [Priest]
					59591,	-- What's Your Specialty? [A] [Rogue]
					59592,	-- What's Your Specialty? [A] [Shaman]
					59593,	-- What's Your Specialty? [A] [Warlock]
					59594,	-- What's Your Specialty? [A] [Warrior]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 163097 },	-- Lindle Springstock
				["coord"] = { 79.0, 69.8, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["races"] = ALLIANCE_ONLY,
			}),
			q(58912, {	-- An Urgent Meeting [A]
				["sourceQuests"] = { 58911 },	-- Home Is Where the Hearth Is [A]
				["provider"] = { "n", 163211 },	-- Henry Garrick
				["coord"] = { 75.3, 54.3, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_0_2 },
				["races"] = ALLIANCE_ONLY,
				["customCollect"] = IGNORED_VALUE,	-- Technically only possible by NPE quest completion, but technically no longer NPE when accepting this quest...
			}),
			q(58983, {	-- Battle for Azeroth: Tides of War (SL/new player version)
				["description"] = "This quest starts the Battle for Azeroth campaign for players from Exile's Reach.",
				["sourceQuest"] = 58912,	-- An Urgent Meeting [A]
				["qg"] = 163219,	-- Captain Garrick
				["coord"] = { 85.2, 32.1, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_0_2 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(178941),	-- Alliance Dog Tags,
				}
			}),
			q(59641, {	-- The Nation of Kul Tiras
				["sourceQuest"] = 58983,	-- Battle for Azeroth: Tides of War (SL/new player version)
				["qg"] = 165395,	-- Anduin Wrynn
				["coord"] = { 85.8, 31.6, STORMWIND_CITY },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_0_2 },
				["races"] = ALLIANCE_ONLY,
			}),

				-- Orgrimmar --
			q(60343, {	-- Welcome to Orgrimmar
			-- Exo Note: This one may have been moved to regular questing
			-- Not part of NPE post 11.2.7
				["sourceQuests"] = { 59985 },	-- An End to Beginnings [H]
				["provider"] = { "n", 168431 },	-- Warlord Breka Grimaxe
				["coord"] = { 52.5, 88.0, ORGRIMMAR },
				["races"] = HORDE_ONLY,
			}),
			q(60344, {	-- Finding Your Way [H]
				["sourceQuests"] = { 60343 },	-- Welcome to Orgrimmar
				["provider"] = { "n", 168441 },	-- Cork Fizzlepop
				["coord"] = { 51.9, 85.4, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["races"] = HORDE_ONLY,
			}),
			q(60345, {	-- License to Ride
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168540 },	-- Rohaka Tuskmaul
				["coord"] = { 61.5, 32.9, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_10_1_5 },
				["races"] = HORDE_ONLY,
			}),
			q(60346, {	-- What's Your Specialty? [H] [Druid]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { DRUID },
				["races"] = HORDE_ONLY,
			}),
			q(60347, {	-- What's Your Specialty? [H] [Hunter]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { HUNTER },
				["races"] = HORDE_ONLY,
			}),
			q(60348, {	-- What's Your Specialty? [H] [Mage]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { MAGE },
				["races"] = HORDE_ONLY,
			}),
			q(60349, {	-- What's Your Specialty? [H] [Monk]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { MONK },
				["races"] = HORDE_ONLY,
			}),
			q(60350, {	-- What's Your Specialty? [H] [Paladin]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { PALADIN },
				["races"] = HORDE_ONLY,
			}),
			q(60351, {	-- What's Your Specialty? [H] [Priest]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { PRIEST },
				["races"] = HORDE_ONLY,
			}),
			q(60352, {	-- What's Your Specialty? [H] [Rogue]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { ROGUE },
				["races"] = HORDE_ONLY,
			}),
			q(60353, {	-- What's Your Specialty? [H] [Shaman]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { SHAMAN },
				["races"] = HORDE_ONLY,
			}),
			q(60355, {	-- What's Your Specialty? [H] [Warlock]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { WARLOCK },
				["races"] = HORDE_ONLY,
			}),
			q(60357, {	-- What's Your Specialty? [H] [Warrior]
				["sourceQuests"] = { 60344 },	-- Finding Your Way [H]
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 61.5, 33.0, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["classes"] = { WARRIOR },
				["races"] = HORDE_ONLY,
			}),
			q(60359, {	-- Home Is Where the Hearth Is [H]
				["sourceQuests"] = {
					60346,	-- What's Your Specialty? [H] [Druid]
					60347,	-- What's Your Specialty? [H] [Hunter]
					60348,	-- What's Your Specialty? [H] [Mage]
					60349,	-- What's Your Specialty? [H] [Monk]
					60350,	-- What's Your Specialty? [H] [Paladin]
					60351,	-- What's Your Specialty? [H] [Priest]
					60352,	-- What's Your Specialty? [H] [Rogue]
					60353,	-- What's Your Specialty? [H] [Shaman]
					60355,	-- What's Your Specialty? [H] [Warlock]
					60357,	-- What's Your Specialty? [H] [Warrior]
				},
				["sourceQuestNumRequired"] = 1,
				["provider"] = { "n", 168545 },	-- Cork Fizzlepop
				["coord"] = { 73.6, 43.4, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_2_7 },
				["races"] = HORDE_ONLY,
			}),
			----- The original ending of the questline where new players got funneled into BfA -----
			-- After 11.0.2 players receive Lost Dragonscale and the quest The Dragon Isles Await (65436 [A] / 65435 [H])
			q(60360, {	-- An Urgent Meeting [H]
				["sourceQuests"] = { 60359 },	-- Home Is Where the Hearth Is [H]
				["provider"] = { "n", 168771 },	-- Shuja Grimaxe
				["coord"] = { 70.9, 49.6, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_0_2 },
				["races"] = HORDE_ONLY,
				["customCollect"] = IGNORED_VALUE,	-- Technically only possible by NPE quest completion, but technically no longer NPE when accepting this quest...
			}),
			q(60361, {	-- Battle for Azeroth: Mission Statement (SL/new player version)
				["description"] = "This quest starts the Battle for Azeroth campaign for players from Exile's Reach.",
				["sourceQuest"] = 60360,	-- An Urgent Meeting
				["qg"] = 168431,	-- Warlord Breka Grimaxe
				["coord"] = { 48.3, 71.4, ORGRIMMAR },
				["timeline"] = { ADDED_9_0_1, REMOVED_11_0_2 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(178942),	-- War-Chain of the Horde
				},
			}),
			------ Miscellaneous ------
			q(54933, {	-- Freeing the Light
				["sourceQuests"] = {
					55879,	-- Ride of the Scientifically Enhanced Boar
					59942,	-- The Re-Deather
				},
				["provider"] = { "n", 157114 },	-- Lightspawn
				["coord"] = { 58.1, 50.2, EXILES_REACH },
				["lockCriteria"] = { 1,
					"questID", 55991,	-- An End to Beginnings [A]
					"questID", 59985,	-- An End to Beginnings [H]
				},
			}),
			q(56839, {	-- Killclaw the Terrible
				["sourceQuests"] = {
					55879,	-- Ride of the Scientifically Enhanced Boar
					59942,	-- The Re-Deather
				},
				["provider"] = { "o", 330627 },	-- Danger Sign
				["coord"] = { 48.7, 54.2, EXILES_REACH },
				["lockCriteria"] = { 1,
					"questID", 55991,	-- An End to Beginnings [A]
					"questID", 59985,	-- An End to Beginnings [H]
				},
				["groups"] = {
					i(175229, {	-- Expeditionary Cloth Mantle
						["races"] = HORDE_ONLY,
					}),
					i(175227, {	-- Expeditionary Leather Spaulders
						["races"] = HORDE_ONLY,
					}),
					i(175230, {	-- Expeditionary Mail Spaulders
						["races"] = HORDE_ONLY,
					}),
					i(175228, {	-- Expeditionary Plate Shoulderguard
						["races"] = HORDE_ONLY,
					}),
					i(175197, {	-- Expeditionary Cloth Mantle
						["races"] = ALLIANCE_ONLY,
					}),
					i(175195, {	-- Expeditionary Leather Spaulders
						["races"] = ALLIANCE_ONLY,
					}),
					i(175198, {	-- Expeditionary Mail Spaulders
						["races"] = ALLIANCE_ONLY
					}),
					i(175196, {	-- Expeditionary Plate Shoulderguard
						["races"] = ALLIANCE_ONLY,
					}),
				},
			}),
		}),
		n(RARES, sharedData({
			["lockCriteria"] = { 1,
				"questID", 55991,	-- An End to Beginnings [A]
				"questID", 59985,	-- An End to Beginnings [H]
			},
		}, {
			n(156676, {	-- Ogre Overseer
				["coord"] = { 60.5, 60.0, EXILES_REACH },
				["questID"] = 56051,
				["groups"] = {
					i(11847),	-- Battered Cloak
				},
			}),
			n(156986, {	-- Ogre Taskmaster
				["coords"] = {
					{ 59.2, 40.5, EXILES_REACH },
					{ 57.6, 40.9, EXILES_REACH },
				},
				["questID"] = 59611,
				["groups"] = {
					i(175240),	-- Tattered Leather Bag
				},
			}),
		})),
		n(TREASURES, sharedData({
			["lockCriteria"] = { 1,
				"questID", 55991,	-- An End to Beginnings [A]
				"questID", 59985,	-- An End to Beginnings [H]
			},
		}, {
			o(339770, {	-- Abandoned Treasure Chest
				["coord"] = { 57.1, 68.4, EXILES_REACH },
				["questID"] = 58380,
				["groups"] = {
					i(174810),	-- Dented Plate Waistguard
					i(174809),	-- Linked Mail Chain
					i(174807),	-- Stitched Cloth Belt
					i(174808),	-- Stitched Leather Cinch
				},
			}),
			o(329918, {	-- Quilboar Treasures
				["coord"] = { 58.5, 59.3, EXILES_REACH },
				["questID"] = 56579,
				["groups"] = {
					i(174806),	-- Dented Plate Bracers
					i(174805),	-- Linked Mail Bracers
					i(174803),	-- Stitched Cloth Bracers
					i(174804),	-- Stitched Leather Bracers
				},
			}),
			o(329919, {	-- Stolen Supplies
				["coord"] = { 59.3, 37.6, EXILES_REACH },
				["questID"] = 56581,
				["groups"] = {
					i(174811),	-- Stitched Cloth Tunic
					i(174812),	-- Stitched Leather Tunic
					i(174814),	-- Dented Chestpiece
					i(174813),	-- Linked Mail Hauberk
				},
			}),
			o(327407, {	-- Precious Ogre Stash
				["coord"] = { 41.8, 42.8, EXILES_REACH },
				["questID"] = 56088,
			}),
		})),
		n(VENDORS, sharedData({
			["customCollect"] = "NPE",
			["altQuests"] = {
				55991,	-- An End to Beginnings [A]
				59985,	-- An End to Beginnings [H]
			},
		}, {
			n(167213, {	-- Provisioner Jin'hake
				["coord"] = { 52.4, 55.6, 1409 },
				["races"] = HORDE_ONLY,
				["groups"] = {
					i(178120, {	-- Horde Tabard
						["cost"] = 25,	-- 25c
					}),
				},
			}),
			n(156800, {	-- Quartermaster Richter <Supplies>
				["coord"] = { 52.2, 55.2, 1409 },
				["races"] = ALLIANCE_ONLY,
				["groups"] = {
					i(168100, {	-- Alliance Tabard
						["cost"] = 25,	-- 25c
					}),
				},
			}),
		})),
		n(ZONE_DROPS, {
			i(174814, {	-- Dented Chestplate
				["crs"] = {
					150238,	-- Quilboar Geomancer
					150237,	-- Quilboar Warrior
				},
			}),
			i(174818, {	-- Dented Legplates
				["crs"] = {
					152843,	-- Harpy Boltcaller
					152571,	-- Harpy Snatcher
				},
			}),
			i(174794, {	-- Dented Plate Boots
				["crs"] = {
					150228,	-- Murloc Spearhunter
					150229,	-- Murloc Watershaper
				},
			}),
			i(174793, {	-- Linked Mail Boots
				["crs"] = {
					150228,	-- Murloc Spearhunter
					150229,	-- Murloc Watershaper
				},
			}),
			i(174813, {	-- Linked Mail Hauberk
				["crs"] = {
					150238,	-- Quilboar Geomancer
					150237,	-- Quilboar Warrior
				},
			}),
			i(174817, {	-- Linked Mail Leggings
				["crs"] = {
					152843,	-- Harpy Boltcaller
					152571,	-- Harpy Snatcher
				},
			}),
			i(175245, {	-- Runetusk Necklace
				["crs"] = {
					156825,	-- Darkmaul Centurion
					157328,	-- Darkmaul Channeler
					156821,	-- Darkmaul Shadowcaller
					153581,	-- Grunk
					153583,	-- Jugnug
					153239,	-- Ogre Brute
					154103,	-- Ogre Chef
					153242,	-- Ogre Shadowcaster
					162817,	-- Torgok <Binder of Souls>
					153582,	-- Wug
				},
			}),
			i(175244, {	-- Spider-Eye Ring
				["crs"] = { 160394 },	-- Barrow Spider
			}),
			i(174815, {	-- Stitched Cloth Leggings
				["crs"] = {
					152843,	-- Harpy Boltcaller
					152571,	-- Harpy Snatcher
				},
			}),
			i(174791, {	-- Stitched Cloth Shoes
				["crs"] = {
					150228,	-- Murloc Spearhunter
					150229,	-- Murloc Watershaper
				},
			}),
			i(174811, {	-- Stitched Cloth Tunic
				["crs"] = {
					150238,	-- Quilboar Geomancer
					150237,	-- Quilboar Warrior
				},
			}),
			i(174792, {	-- Stitched Leather Boots
				["crs"] = {
					150228,	-- Murloc Spearhunter
					150229,	-- Murloc Watershaper
				},
			}),
			i(174816, {	-- Stitched Leather Pants
				["crs"] = {
					152843,	-- Harpy Boltcaller
					152571,	-- Harpy Snatcher
				},
			}),
			i(174812, {	-- Stitched Leather Tunic
				["crs"] = {
					150238,	-- Quilboar Geomancer
					150237,	-- Quilboar Warrior
				},
			}),
			i(176398, {	-- Torgok's Reagent Pouch
				["crs"] = {
					162817,	-- Torgok <Binder of Souls>
				},
			}),
		}),
	},
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.SL, {
	m(EXILES_REACH, {
		["timeline"] = { ADDED_9_0_1 },
		["groups"] = {
			n(QUESTS, {
				q(58418),	-- Triggers shortly after login. Possibly some kind of indicator for the account having done it at least once per faction?
				q(54927),	-- Triggers after the cinematic. You can't move until this quest triggers
				q(54937),	-- Triggers after the cinematic. You can't move until this quest triggers
				q(59699),	-- Defeat Private Cole(A) or Grunt Throg(H) during "Stand Your Ground". Coincides with hitting level 2
				q(58882),	-- Triggered after looting white-quality chestpiece. loot controller so they don't drop twice
				q(58883),	-- Triggered after looting white-quality boots. loot controller so they don't drop twice
				q(54928),	-- Triggered after getting 3 holy power and striking Warlord Grimaxe with the first major combat ability. Didn't trigger at all on an alliance priest
				q(58336),	-- Triggered at the same time as 54928. Possibly dialog-related?
				q(55607),	-- Triggered while killing quilboars in Quilboar Briarpatch on an alliance priest. Did not see it trigger as horde
				q(55611),	-- Triggered when completing "Message to Base" in Exile's Reach on alliance priest
				q(59610),	-- Triggered after killing Torgok. Loot controller for "Torgok's Reagent Pouch"
				q(59143),	-- Triggered after looting the Runetusk Necklace from ogres in Darkmaul Citadel
				q(59139),	-- Triggered after looting the Spider-Eye Ring from spiders in Hrun's Barrow / Dented Legplates
				q(60167),	-- Triggered right after Warlord Grimaxe tells Shuja to heal during the Tunk encounter
				q(62547),	-- Triggered after speaking to trainer for What's Your Specialty? quest [Horde]
				q(62548),	-- Triggered after speaking to trainer for What's Your Specialty? quest [Alliance]
				q(62550),	-- Triggered after choosing a specialization for What's Your Specialty? quest [Alliance]
				q(62551),	-- Triggered after choosing a specialization for What's Your Specialty? quest [Horde]
				q(62655),	-- Triggers after you activate your specialization (both NPE and non-NPE characters)
				-- q(62802),	-- Triggered after going to Stormwind for An End to Beginnings
				-- q(62803),	-- Triggered after going to Orgrimmar for An End to Beginnings
				q(63012),	-- Triggered after accepting first quest for your current leveling expansion
				q(62912),	-- Triggered when flying from Exile's Reach (as Alliance if it matters)
			}),
		},
	}),
}))
