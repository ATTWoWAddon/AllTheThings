-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(226, {	-- Ragefire Chasm
		-- #if BEFORE MOP
		["lore"] = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain",
		-- #endif
		-- #if BEFORE MOP
		["zone-text-areaID"] = 2437,	-- Ragefire Chasm
		-- #endif
		["mapID"] = RAGEFIRE_CHASM,
		["coords"] = {
			-- #if AFTER CATA
			{ 52.52, 57.83, 86 },	-- Ragefire Chasm, Orgrimmar [Cleft of Shadow]
			-- #else
			{ 50.6, 51.6, ORGRIMMAR },
			-- #endif
		},
		["lvl"] = lvlsquish(13, 13, 7),
		["groups"] = {
			n(QUESTS, {
				q(30998, {	-- A New Enemy (Alliance)
					["qg"] = 61823,	-- High Sorceress Aryna
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 7),
					["groups"] = {
						objective(1, {	-- 0/5 Corrupted Insignia
							["provider"] = { "i", 82605 },	-- Corrupted Insignia
							["crs"] = {
								61705,	-- Corrupted Flamecaller
								61666,	-- Corrupted Houndmaster
								61678,	-- Corrupted Reaver
								61672,	-- Dark Shaman Acolyte
								61412,	-- Dark Shaman Koranthal
							},
						}),
					},
				}),
				q(30969, {	-- A New Enemy (Horde)
					["qg"] = 61716,	-- Invoker Xorenth
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(15, 15, 7),
					["groups"] = {
						objective(1, {	-- 0/5 Corrupted Insignia
							["provider"] = { "i", 82605 },	-- Corrupted Insignia
							["crs"] = {
								61705,	-- Corrupted Flamecaller
								61666,	-- Corrupted Houndmaster
								61678,	-- Corrupted Reaver
								61672,	-- Dark Shaman Acolyte
								61412,	-- Dark Shaman Koranthal
							},
						}),
					},
				}),
				q(30997, {	-- Animal Control (Alliance)
					["qg"] = 61822,	-- SI:7 Field Commander Dirken
					["timeline"] = { ADDED_5_0_4, REMOVED_6_2_0 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Adarogg slain
							["provider"] = { "n", 61408 },	-- Adarogg
						}),
						objective(2, {	-- 0/1 Slagmaw slain
							["provider"] = { "n", 61463 },	-- Slagmaw
						}),
					},
				}),
				q(30982, {	-- Animal Control (Horde)
					["qg"] = 61724,	-- Commander Bagran
					["timeline"] = { ADDED_5_0_4, REMOVED_6_2_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = 15,
					["groups"] = {
						objective(1, {	-- 0/1 Adarogg slain
							["provider"] = { "n", 61408 },	-- Adarogg
						}),
						objective(2, {	-- 0/1 Slagmaw slain
							["provider"] = { "n", 61463 },	-- Slagmaw
						}),
					},
				}),
				q(26862, {	-- Elemental Tampering
					["qg"] = 44216,	-- Bovaal Whitehorn
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(15, 15, 7),
					["groups"] = {
						objective(1, {	-- 0/6 Searing Binding
							["provider"] = { "i", 60499 },	-- Searing Binding
							["cr"] = 11321,	-- Molten Elemental
						}),
					},
				}),
				q(26865, {	-- Enemies Below [Orgrimmar]
					["qg"] = 39605,	-- Garrosh Hellscream
					["coord"] = { 48.1, 70.5, ORGRIMMAR },
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31034, {	-- Enemies Below [Orgrimmar]
					["qgs"] = {
						-- #if AFTER WOD
						14720,	-- High Overlord Saurfang
						3144,	-- Eitrigg
						-- #else
						39605,	-- Garrosh Hellscream
						-- #endif
					},
					["coords"] = {
						-- #if AFTER WOD
						{ 48.6, 71.0, ORGRIMMAR },
						{ 14.1, 73.8, ORGRIMMAR },
						-- #else
						{ 48.1, 70.5, ORGRIMMAR },
						-- #endif
					},
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(26866, {	-- Enemies Below [Thunder Bluff]
					["qg"] = 36648,	-- Baine Bloodhoof
					["coord"] = { 60.3, 51.7, THUNDER_BLUFF },
					["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31036, {	-- Enemies Below [Thunder Bluff]
					["qg"] = 36648,	-- Baine Bloodhoof <High Chieftain>
					["coord"] = { 60.3, 51.7, THUNDER_BLUFF },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(26867, {	-- Enemies Below [Undercity]
					["qg"] = 10181,	-- Lady Sylvanas Windrunner
					["coord"] = { 57.8, 91.6, UNDERCITY },
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(31037, {	-- Enemies Below [Undercity]
					["qg"] = 10181,	-- Lady Sylvanas Windrunner
					["coord"] = { 57.8, 91.6, UNDERCITY },
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
				}),
				q(5728, {	-- Hidden Enemies (3/5)
					["sourceQuest"] = 5727,	-- Hidden Enemies (2/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Bazzalan slain
							["provider"] = { "n", 11519 },	-- Bazzalan
						}),
						objective(2, {	-- 0/1 Jergosh the Invoker slain
							["provider"] = { "n", 11518 },	-- Jergosh the Invoker
						}),
					},
				}),
				q(5729, {	-- Hidden Enemies (4/5)
					["sourceQuest"] = 5728,	-- Hidden Enemies (3/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5730, {	-- Hidden Enemies (5/5)
					["sourceQuest"] = 5729,	-- Hidden Enemies (4/5)
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15424, {	-- Axe of Orgrimmar
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15445, {	-- Hammer of Orgrimmar
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15443, {	-- Kris of Orgrimmar
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15444, {	-- Staff of Orgrimmar
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(30995, {	-- No Man Left Behind (Alliance)
					["qg"] = 61822,	-- SI:7 Field Commander Dirken
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(15, 15, 7),
					["groups"] = {
						objective(1, {	-- 0/5 SI:7 Rangers rescued
							["provider"] = { "n", 61788 },	-- SI:7 Ranger
						}),
					},
				}),
				q(30984, {	-- No Orc Left Behind (Horde)
					["qg"] = 61724,	-- Commander Bagran
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(15, 15, 7),
					["groups"] = {
						objective(1, {	-- 0/5 Kor'kron Scout rescued
							["provider"] = { "n", 61680 },	-- Kor'kron Scout
						}),
					},
				}),
				q(26856, {	-- Repel the Invasion
					["qg"] = 44217,	-- Stone Guard Kurjack
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(13, 13, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Jergosh the Invoker slain
							["provider"] = { "n", 11518 },	-- Jergosh the Invoker
						}),
						objective(2, {	-- 0/1 Bazzalan slain
							["provider"] = { "n", 11519 },	-- Bazzalan
						}),
						objective(3, {	-- 0/1 Oggleflint slain
							["provider"] = { "n", 11517 },	-- Oggleflint <Ragefire Chieftain>
						}),
					},
				}),
				q(5724, {	-- Returning the Lost Satchel
					["sourceQuest"] = 5722,	-- Searching for the Lost Satchel
					["providers"] = {
						{ "n", 11834 },	-- Maur Grimtotem
						{ "i", 14381 },	-- Grimtotem Satchel
					},
					["timeline"] = { REMOVED_4_0_3 },
					["maps"] = { THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15452, {	-- Featherbead Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15453, {	-- Savannah Bracers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
				q(5722, {	-- Searching for the Lost Satchel
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5761, {	-- Slaying the Beast
					["sourceQuest"] = 5727,	-- Hidden Enemies (2/5)
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.6, 50.6, ORGRIMMAR },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Taragaman the Hungerer's Heart
							["provider"] = { "i", 14540 },	-- Taragaman the Hungerer's Heart
						}),
					},
				}),
				q(26858, {	-- Taragaman the Hungerer
					["sourceQuests"] = {
						28003,	-- Adventurer's Wanted: Ragefire Chasm
						26865,	-- Enemies Below [Orgrimmar]
						26866,	-- Enemies Below [Thunder Bluff]
						26867,	-- Enemies Below [Undercity]
						-- #if AFTER 5.0.1.15589
						31034,	-- Enemies Below [Orgrimmar]
						31035,	-- Enemies Below [HQT]
						31036,	-- Enemies Below [Thunder Bluff]
						31037,	-- Enemies Below [Undercity]
						-- #endif
					},
					["qg"] = 44217,	-- Stone Guard Kurjack
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(13, 13, 7),
					["groups"] = {
						objective(1, {	-- 0/4 Searing Blade Cultist slain
							["provider"] = { "n", 11322 },	-- Searing Blade Cultist
						}),
						objective(2, {	-- 0/4 Searing Blade Enforcer slain
							["provider"] = { "n", 11323 },	-- Searing Blade Enforcer
						}),
						objective(3, {	-- 0/3 Searing Blade Warlock slain
							["provider"] = { "n", 11324 },	-- Searing Blade Warlock
						}),
						objective(4, {	-- 0/1 Taragaman the Hungerer's Heart
							["provider"] = { "i", 14540 },	-- Taragaman the Hungerer's Heart
						}),
						i(131614, {	-- Chasm Linked Pants
							["timeline"] = { CREATED_7_0_3 },
						}),
						i(66031, {	-- Hide Vest of the Shaman
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						i(66022, {	-- Ragefire Leggings
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						i(49541, {	-- Robes of the Doomed Ritual
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						i(131613, {	-- Scaled Vest of the Shaman
							["timeline"] = { CREATED_7_0_3 },
						}),
						i(66040, {	-- Searing Belt
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
						i(66045, {	-- Stone Guard Greaves
							["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
						}),
					},
				}),
				q(5723, {	-- Testing an Enemy's Strength
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, THUNDER_BLUFF },
					["timeline"] = { REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/8 Ragefire Trogg slain
							["provider"] = { "n", 11318 },	-- Ragefire Trogg
						}),
						objective(2, {	-- 0/8 Ragefire Shaman slain
							["provider"] = { "n", 11319 },	-- Ragefire Shaman
						}),
					},
				}),
				q(30996, {	-- The Dark Shaman
					["qg"] = 61823,	-- High Sorceress Aryna
					["timeline"] = { ADDED_5_0_4 },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(13, 13, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Dark Shaman Koranthal slain
							["provider"] = { "n", 61412 },	-- Dark Shaman Koranthal
						}),
						objective(2, {	-- 0/1 Lava Guard Gordoth slain
							["provider"] = { "n", 61528 },	-- Lava Guard Gordoth
						}),
						i(82893, {	-- Hide Vest of the Shaman
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(82891, {	-- Robes of the Doomed Ritual
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(131712, {	-- Scaled Vest of the Shaman
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(82895, {	-- Searing Belt
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(82892, {	-- Ragefire Leggings
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(82894, {	-- Stone Guard Greaves
							["timeline"] = { ADDED_5_0_4 },
						}),
						i(131711, {	-- Stone Guard Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(30983, {	-- The Dark Shaman
					["qg"] = 61716,	-- Invoker Xorenth
					["timeline"] = { ADDED_5_0_4 },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(13, 13, 7),
					["groups"] = {
						objective(1, {	-- 0/1 Dark Shaman Koranthal slain
							["provider"] = { "n", 61412 },	-- Dark Shaman Koranthal
						}),
						objective(2, {	-- 0/1 Lava Guard Gordoth slain
							["provider"] = { "n", 61528 },	-- Lava Guard Gordoth
						}),
					},
				}),
				q(5725, {	-- The Power to Destroy...
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.2, 91.8, UNDERCITY },
					["timeline"] = { REMOVED_3_3_0 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					-- #if BEFORE 3.3.0
					["groups"] = {
						objective(1, {	-- 0/1 Spells of Shadow
							["provider"] = { "i", 14395 },	-- Spells of Shadow
						}),
						objective(2, {	-- 0/1 Incantations from the Nether
							["provider"] = { "i", 14396 },	-- Incantations from the Nether
						}),
						i(15450, {	-- Dredgemire Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15451, {	-- Gargoyle Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15449, {	-- Ghastly Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
					-- #endif
				}),
				q(14356, {	-- The Power to Destroy... (After Wrathgate)
					["qg"] = 36273,	-- Bragor Bloodfist
					["coord"] = { 56.3, 92.2, UNDERCITY },
					["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Spells of Shadow
							["provider"] = { "i", 14395 },	-- Spells of Shadow
						}),
						objective(2, {	-- 0/1 Incantations from the Nether
							["provider"] = { "i", 14396 },	-- Incantations from the Nether
						}),
						i(15450, {	-- Dredgemire Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15451, {	-- Gargoyle Leggings
							["timeline"] = { REMOVED_4_0_3 },
						}),
						i(15449, {	-- Ghastly Trousers
							["timeline"] = { REMOVED_4_0_3 },
						}),
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(14396, {	-- Incantations from the Nether
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
				i(14395, {	-- Spells of Shadow
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
			}),
			n(11517, {	-- Oggleflint <Ragefire Chieftain>
				["timeline"] = { REMOVED_5_0_4 },
				["groups"] = {
					i(68194, {	-- Oggleflint's Inspirer
						["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					}),
				},
			}),
			n(11520, {	-- Taragaman the Hungerer
				["timeline"] = { REMOVED_5_0_4 },
				["groups"] = {
					-- #if BEFORE 5.0.4
					ach(629, {	-- Ragefire Chasm
						-- #if BEFORE WRATH
						["races"] = HORDE_ONLY,
						-- #endif
					}),
					ach(5038, {	-- Ragefire Chasm Guild Run
						["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					}),
					-- #endif
					i(14540, {	-- Taragaman the Hungerer's Heart
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(14145, {	-- Cursed Felblade
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(14149, {	-- Subterranean Cape
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(14148, {	-- Crystalline Cuffs
						["timeline"] = { REMOVED_5_0_4 },
					}),
				},
			}),
			n(11518, {	-- Jergosh the Invoker
				["timeline"] = { REMOVED_5_0_4 },
				["groups"] = {
					i(14151, {	-- Chanting Blade
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(14150, {	-- Robe of Evocation
						["timeline"] = { REMOVED_5_0_4 },
					}),
					i(14147, {	-- Cavedweller Bracers
						["timeline"] = { REMOVED_5_0_4 },
					}),
				},
			}),
			n(11519, {	-- Bazzalan
				["timeline"] = { REMOVED_5_0_4 },
				["groups"] = {
					i(68195, {	-- Bazzalan's Blade
						["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
					}),
				},
			}),
			e(694, {	-- Adarogg
				["creatureID"] = 61408,
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					i(82880, {	-- Fang of Adarogg
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(82879, {	-- Collarspike Bracers
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(151422, {	-- Bonecoal Waistguard
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(82772, {	-- Snarlmouth Leggings
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(151421, {	-- Scorched Blazehound Boots
						["timeline"] = { ADDED_7_3_0 },
					}),
				},
			}),
			e(695, {	-- Dark Shaman Koranthal
				["creatureID"] = 61412,
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					i(82882, {	-- Dark Ritual Cape
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(132551, {	-- Dark Shaman's Jerkin
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(82877, {	-- Grasp of the Broken Totem
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(82881, {	-- Cuffs of Black Elements
						["timeline"] = { ADDED_5_0_4 },
					}),
				},
			}),
			e(696, {	-- Slagmaw
				["creatureID"] = 61463,
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					i(82878, {	-- Fireworm Robes
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(82885, {	-- Flameseared Carapace
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(132552, {	-- Chitonous Bindings
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(82884, {	-- Chitonous Bracers
						["timeline"] = { ADDED_5_0_4 },
					}),
				},
			}),
			e(697, {	-- Lava Guard Gordoth
				["creatureID"] = 61528,
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = {
					ach(629),	-- Ragefire Chasm
					ach(5038, {	-- Ragefire Chasm Guild Run
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(82888, {	-- Heartboiler Staff
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(82883, {	-- Bloodcursed Felblade
						["timeline"] = { ADDED_5_0_4 },
					}),
					i(151425, {	-- Gordoth's Crushers
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(151424, {	-- Belt of Boundless Fury
						["timeline"] = { ADDED_7_3_0 },
					}),
					i(82886, {	-- Gorewalker Treads
						["timeline"] = { ADDED_5_0_4 },
					}),
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
	inst(226, {
		q(35287),	-- Ragefire Chasm Reward Quest - Normal completion
	}),
})));
