-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, {
	inst(226, {	-- Ragefire Chasm
		["lore"] = "Ragefire Chasm consists of a network of volcanic caverns that lie below the orcs' new capital city of Orgrimmar. Recently, rumors have spread that a cult loyal to the demonic Shadow Council has taken up residence within the Chasm's fiery depths. This cult, known as the Burning Blade, threatens the very sovereignty of Durotar. Many believe that the orc Warchief, Thrall, is aware of the Blade's existence and has chosen not to destroy it in the hopes that its members might lead him straight to the Shadow Council. Either way, the dark powers emanating from Ragefire Chasm could undo all that the orcs have fought to attain",
		["icon"] = 136350,
		["zone-text-areaID"] = 2437,	-- Ragefire Chasm
		["mapID"] = MAP.RAGEFIRE_CHASM,
		["coord"] = { 50.6, 51.6, MAP.ORGRIMMAR },
		["lvl"] = 13,
		["groups"] = {
			n(QUESTS, {
				q(5728, {	-- Hidden Enemies (3/5)
					["sourceQuest"] = 5727,	-- Hidden Enemies (2/5)
					["qg"] = 4949,	-- Thrall <Warchief>
					["coord"] = { 32.0, 37.8, MAP.ORGRIMMAR },
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
					["coord"] = { 32.0, 37.8, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5730, {	-- Hidden Enemies (5/5)
					["sourceQuest"] = 5729,	-- Hidden Enemies (4/5)
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.6, 50.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15424),	-- Axe of Orgrimmar
						i(15445),	-- Hammer of Orgrimmar
						i(15443),	-- Kris of Orgrimmar
						i(15444),	-- Staff of Orgrimmar
					},
				}),
				q(5724, {	-- Returning the Lost Satchel
					["sourceQuest"] = 5722,	-- Searching for the Lost Satchel
					["qg"] = 11834,	-- Maur Grimtotem
					["qi"] = 14381,	-- Grimtotem Satchel
					["maps"] = { MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						i(15452),	-- Featherbead Bracers
						i(15453),	-- Savannah Bracers
					},
				}),
				q(5722, {	-- Searching for the Lost Satchel
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, MAP.THUNDER_BLUFF },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
				}),
				q(5761, {	-- Slaying the Beast
					["sourceQuest"] = 5727,	-- Hidden Enemies (2/5)
					["qg"] = 3216,	-- Neeru Fireblade
					["coord"] = { 49.6, 50.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Taragaman the Hungerer's Heart
							["provider"] = { "i", 14540 },	-- Taragaman the Hungerer's Heart
						}),
					},
				}),
				q(5723, {	-- Testing an Enemy's Strength
					["qg"] = 11833,	-- Rahauro <Magatha's Servant>
					["coord"] = { 70.6, 31.4, MAP.THUNDER_BLUFF },
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
				q(5725, {	-- The Power to Destroy...
					["qg"] = 2425,	-- Varimathras
					["coord"] = { 56.2, 91.8, MAP.UNDERCITY },
					["races"] = HORDE_ONLY,
					["lvl"] = 9,
					["groups"] = {
						objective(1, {	-- 0/1 Spells of Shadow
							["provider"] = { "i", 14395 },	-- Spells of Shadow
						}),
						objective(2, {	-- 0/1 Incantations from the Nether
							["provider"] = { "i", 14396 },	-- Incantations from the Nether
						}),
						i(15450),	-- Dredgemire Leggings
						i(15451),	-- Gargoyle Leggings
						i(15449),	-- Ghastly Trousers
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(14396, {	-- Incantations from the Nether (QI!)
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
				i(14395, {	-- Spells of Shadow (QI!)
					["races"] = HORDE_ONLY,
					["crs"] = {
						11322,	-- Searing Blade Cultist
						11324,	-- Searing Blade Warlock
					},
				}),
			}),
			n(11517, {	-- Oggleflint <Ragefire Chieftain>
				i(272999, {	-- Barbaric Crossbow
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(272998, {	-- Bone Knuckles
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(272996, {	-- Trogg Scepter
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
			n(11520, {	-- Taragaman the Hungerer
				i(14540),	-- Taragaman the Hungerer's Heart (QI!)
				i(14145),	-- Cursed Felblade
				i(14149),	-- Subterranean Cape
				i(14148),	-- Crystalline Cuffs
			}),
			n(11518, {	-- Jergosh the Invoker
				i(14151),	-- Chanting Blade
				i(14150),	-- Robe of Evocation
				i(14147),	-- Cavedweller Bracers
			}),
			n(11519, {	-- Bazzalan
				i(273007, {	-- Chasm Walkers
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273005, {	-- Satyrskin Cloak
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
				i(273003, {	-- Searing Dagger
					["timeline"] = { TIMELINE.ADDED_1_60_1 },
				}),
			}),
		},
	}),
});
