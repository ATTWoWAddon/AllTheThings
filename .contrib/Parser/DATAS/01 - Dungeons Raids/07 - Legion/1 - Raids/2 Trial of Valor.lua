-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

root(ROOTS.Instances, expansion(EXPANSION.LEGION, bubbleDown({ ["timeline"] = { ADDED_7_1_0 } }, {
	inst(861, {	-- Trial of Valor
		["isRaid"] = true,
		["coord"] = { 70.4, 69.4, STORMHEIM },
		["maps"] = { 806, 807, 808 },
		["lvl"] = 110,
		["g"] = {
			n(ACHIEVEMENTS, {
				ach(11762, {["timeline"] = {ADDED_7_2_0}}),	-- Can I Get A Helya (Trial of Valor)
				ach(11394, {	-- Trial of Valor
					crit(34578, {	-- Odyn
						["_encounter"] = { 1819, DIFFICULTY.RAID.LFR },
					}),
					crit(34800, {	-- Guarm
						["_encounter"] = { 1830, DIFFICULTY.RAID.LFR },
					}),
					crit(34799, {	-- Helya
						["_encounter"] = { 1829, DIFFICULTY.RAID.LFR },
					}),
				}),
				ach(11426, {	-- Heroic: Trial of Valor
					crit(34839, {	-- Odyn
						["_encounter"] = { 1819, DIFFICULTY.RAID.HEROIC },
					}),
					crit(34841, {	-- Guarm
						["_encounter"] = { 1830, DIFFICULTY.RAID.HEROIC },
					}),
					crit(34840, {	-- Helya
						["_encounter"] = { 1829, DIFFICULTY.RAID.HEROIC },
					}),
				}),
				ach(11403),	-- Trial of Valor Guild Run
			}),
			n(COMMON_BOSS_DROPS, {
				["g"] = sharedData({
					["modID"] = 4,	-- LFR
					["sharedDescription"] = "This item has a chance to drop from any boss in LFR, Normal, Heroic, and Mythic difficulties.",
					["crs"] = {
						114263,	-- Odyn
						114344,	-- Guarm
						114323,	-- Guarm
						114537,	-- Helya
					},
				},{
					iensemble(143509, {	-- Ensemble: Vestment of the Chosen Dead
						["classes"] = CLOTH_CLASSES,
					}),
					iensemble(143513, {	-- Ensemble: Garb of the Chosen Dead
						["classes"] = LEATHER_CLASSES,
					}),
					iensemble(143517, {	-- Ensemble: Chains of the Chosen Dead
						["classes"] = MAIL_CLASSES,
					}),
					iensemble(143521, {	-- Ensemble: Funerary Plate of the Chosen Dead
						["classes"] = PLATE_CLASSES,
					}),
				}),
			}),
			n(QUESTS, {
				q(44868, {	-- Trial of Valor: Odyn's Judgment
					["sourceQuest"] = 44729,	-- Trial of Valor: Odyn's Favor
					["provider"] = { "n", 114263 },	-- Odyn
				}),
				q(45088, {	-- Trial of Valor: The Lost Army
					["provider"] = { "n", 114263 },	-- Odyn
					["g"] = {
						iensemble(143506, {	-- Ensemble: Vestment of the Chosen Dead
							["classes"] = CLOTH_CLASSES,
						}),
						iensemble(143510, {	-- Ensemble: Garb of the Chosen Dead
							["classes"] = LEATHER_CLASSES,
						}),
						iensemble(143514, {	-- Ensemble: Chains of the Chosen Dead
							["classes"] = MAIL_CLASSES,
						}),
						iensemble(143518, {	-- Ensemble: Funerary Plate of the Chosen Dead
							["classes"] = PLATE_CLASSES,
						}),
					},
				}),
			}),
			d(DIFFICULTY.RAID.LFR, {	-- Queue NPC
				["crs"] = { 111246 },	-- Archmage Timear
				["coord"] = { 63.7, 55.0, LEGION_DALARAN },
			}),
			d(DIFFICULTY.RAID.LFR, {
				n(ZONE_DROPS, {
					i(142541),	-- Drape of the Forgotten Souls
				}),
				header(HEADERS.Achievement, 11394, {	-- Trial of Valor
					cr(114263, e(1819, {	-- Odyn
						i(142110),	-- Vantus Rune Technique: Odyn [Rank 1] (RECIPE!)
						i(142104),	-- Vantus Rune Technique: Odyn [Rank 2] (RECIPE!)
						i(142540),	-- Mantle of the Victorious Dead
						i(142431),	-- Gleaming Val'kyr Cuirass
						i(142410),	-- Robes of Celestial Adornment
						i(142419),	-- Sky-Valiant's Wristguards
						i(142430),	-- Gloves of Issued Challenge
						i(142411),	-- Cinch of Light
						i(142425),	-- Goldrune Legplates
						i(142421),	-- Leggings of the Undaunted
						i(142422),	-- Radiant Soul Sabatons
						i(142520),	-- Ring of Ascended Glory
						i(142508),	-- Chains of the Valorous
						i(142519),	-- Favor of the Prime Designate
						i(142514),	-- Ravens' Sight
						i(142511),	-- Unforged Titansteel
					})),
					cr(114323, e(1830, {	-- Guarm
						i(142111),	-- Vantus Rune Technique: Guarm [Rank 1] (RECIPE!)
						i(142105),	-- Vantus Rune Technique: Guarm [Rank 2] (RECIPE!)
						i(142412),	-- Windwhipped Sailcloth
						i(142432),	-- Helbeast Skin Tunic
						i(142423),	-- Bite-Resistant Wristclamps
						i(142415),	-- Helhound Hair Bracers
						i(142434),	-- Kvaldir Exult's Grips
						i(142435),	-- Reinforced Hound-Handler's Gauntlets
						i(142413),	-- Leggings of the Lower Planes
						i(142426),	-- Lead-Soled Seabed Striders
						i(142417),	-- Moccasins of Silent Passage
						i(142512),	-- Accursed Cuspid
						i(142515),	-- Chilled Incisor
						i(142506),	-- Eye of Guarm
						i(142516),	-- Sizzling Fang
					})),
					cr(114537, e(1829, {	-- Helya
						i(142112),	-- Vantus Rune Technique: Helya [Rank 1] (RECIPE!)
						i(142106),	-- Vantus Rune Technique: Helya [Rank 2] (RECIPE!)
						i(142428),	-- Sea Fan Pendant
						i(142521),	-- Drape of the Unworthy
						i(142433),	-- Corroded Val'kyr Chainmail
						i(142427),	-- Calcareous Wristclamps
						i(142429),	-- Oiled Rigger's Handwraps
						i(142420),	-- Anchor Chain Waistguard
						i(142424),	-- Krakenbone Waistplate
						i(142416),	-- Strand of Whelk Shells
						i(142418),	-- Sucker-Scarred Leggings
						i(142414),	-- Treads of the Drowned
						i(142507),	-- Brinewater Slime in a Bottle
						i(142518),	-- Fury of the Sea
						i(142510),	-- Phylactery of Unwilling Servitude
						i(142517),	-- Swell of the Tides
						i(142513),	-- Token of the Lightning Keeper
					})),
				}),
			}),
			d(DIFFICULTY.RAID.MULTI.NORMAL_PLUS, {
				cr(114263, e(1819, {	-- Odyn
					i(142110),	-- Vantus Rune Technique: Odyn [Rank 1] (RECIPE!)
					i(142104),	-- Vantus Rune Technique: Odyn [Rank 2] (RECIPE!)
				})),
				e(1830, {	-- Guarm
					["crs"] = {
						114344,	-- Guarm
						114323,	-- Guarm
					},
					["g"] = {
						i(142111),	-- Vantus Rune Technique: Guarm [Rank 1] (RECIPE!)
						i(142105),	-- Vantus Rune Technique: Guarm [Rank 2] (RECIPE!)
					},
				}),
				cr(114537, e(1829, {	-- Helya
					i(142112),	-- Vantus Rune Technique: Helya [Rank 1] (RECIPE!)
					i(142106),	-- Vantus Rune Technique: Helya [Rank 2] (RECIPE!)
				})),
			}),
			d(DIFFICULTY.RAID.NORMAL, {
				n(ZONE_DROPS, {
					i(142541),	-- Drape of the Forgotten Souls
				}),
				cr(114263, e(1819, {	-- Odyn
					ach(11337),	-- You Runed Everything!
					i(142540),	-- Mantle of the Victorious Dead
					i(142431),	-- Gleaming Val'kyr Cuirass
					i(142410),	-- Robes of Celestial Adornment
					i(142419),	-- Sky-Valiant's Wristguards
					i(142430),	-- Gloves of Issued Challenge
					i(142411),	-- Cinch of Light
					i(142425),	-- Goldrune Legplates
					i(142421),	-- Leggings of the Undaunted
					i(142422),	-- Radiant Soul Sabatons
					i(142520),	-- Ring of Ascended Glory
					i(142508),	-- Chains of the Valorous
					i(142519),	-- Favor of the Prime Designate
					i(142514),	-- Ravens' Sight
					i(142511),	-- Unforged Titansteel
				})),
				e(1830, {	-- Guarm
					["crs"] = {
						114344,	-- Guarm
						114323,	-- Guarm
					},
					["g"] = {
						ach(11386, {	-- Boneafide Tri Tip
							["crs"] = { 116404 },	-- Guarm's Chew Toy
						}),
						i(142412),	-- Windwhipped Sailcloth
						i(142432),	-- Helbeast Skin Tunic
						i(142423),	-- Bite-Resistant Wristclamps
						i(142415),	-- Helhound Hair Bracers
						i(142434),	-- Kvaldir Exult's Grips
						i(142435),	-- Reinforced Hound-Handler's Gauntlets
						i(142413),	-- Leggings of the Lower Planes
						i(142426),	-- Lead-Soled Seabed Striders
						i(142417),	-- Moccasins of Silent Passage
						i(142512),	-- Accursed Cuspid
						i(142515),	-- Chilled Incisor
						i(142506),	-- Eye of Guarm
						i(142516),	-- Sizzling Fang
					},
				}),
				cr(114537, e(1829, {	-- Helya
					ach(11377),	-- Patient Zero
					i(142428),	-- Sea Fan Pendant
					i(142521),	-- Drape of the Unworthy
					i(142433),	-- Corroded Val'kyr Chainmail
					i(142427),	-- Calcareous Wristclamps
					i(142429),	-- Oiled Rigger's Handwraps
					i(142420),	-- Anchor Chain Waistguard
					i(142424),	-- Krakenbone Waistplate
					i(142416),	-- Strand of Whelk Shells
					i(142418),	-- Sucker-Scarred Leggings
					i(142414),	-- Treads of the Drowned
					i(142507),	-- Brinewater Slime in a Bottle
					i(142518),	-- Fury of the Sea
					i(142510),	-- Phylactery of Unwilling Servitude
					i(142517),	-- Swell of the Tides
					i(142513),	-- Token of the Lightning Keeper
				}))
			}),
			d(DIFFICULTY.RAID.HEROIC, {
				n(ZONE_DROPS, {
					i(142541),	-- Drape of the Forgotten Souls
				}),
				n(COMMON_BOSS_DROPS, {
					iensemble(143507, {	-- Ensemble: Vestment of the Chosen Dead
						["description"] = "This item has a chance to drop from any boss in Heroic and Mythic difficulties.",
						["classes"] = CLOTH_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143511, {	-- Ensemble: Garb of the Chosen Dead
						["description"] = "This item has a chance to drop from any boss in Heroic and Mythic difficulties.",
						["classes"] = LEATHER_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143515, {	-- Ensemble: Chains of the Chosen Dead
						["description"] = "This item has a chance to drop from any boss in Heroic and Mythic difficulties.",
						["classes"] = MAIL_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
					iensemble(143519, {	-- Ensemble: Funerary Plate of the Chosen Dead
						["description"] = "This item has a chance to drop from any boss in Heroic and Mythic difficulties.",
						["classes"] = PLATE_CLASSES,
						["crs"] = { 116245 },	-- Heroic Champion of the Chosen Dead
					}),
				}),
				cr(114263, e(1819, {	-- Odyn
					i(142540),	-- Mantle of the Victorious Dead
					i(142431),	-- Gleaming Val'kyr Cuirass
					i(142410),	-- Robes of Celestial Adornment
					i(142419),	-- Sky-Valiant's Wristguards
					i(142430),	-- Gloves of Issued Challenge
					i(142411),	-- Cinch of Light
					i(142425),	-- Goldrune Legplates
					i(142421),	-- Leggings of the Undaunted
					i(142422),	-- Radiant Soul Sabatons
					i(142520),	-- Ring of Ascended Glory
					i(142508),	-- Chains of the Valorous
					i(142519),	-- Favor of the Prime Designate
					i(142514),	-- Ravens' Sight
					i(142511),	-- Unforged Titansteel
				})),
				e(1830, {	-- Guarm
					["crs"] = {
						114344,	-- Guarm
						114323,	-- Guarm
					},
					["g"] = {
						i(142412),	-- Windwhipped Sailcloth
						i(142432),	-- Helbeast Skin Tunic
						i(142423),	-- Bite-Resistant Wristclamps
						i(142415),	-- Helhound Hair Bracers
						i(142434),	-- Kvaldir Exult's Grips
						i(142435),	-- Reinforced Hound-Handler's Gauntlets
						i(142413),	-- Leggings of the Lower Planes
						i(142426),	-- Lead-Soled Seabed Striders
						i(142417),	-- Moccasins of Silent Passage
						i(142512),	-- Accursed Cuspid
						i(142515),	-- Chilled Incisor
						i(142506),	-- Eye of Guarm
						i(142516),	-- Sizzling Fang
					},
				}),
				cr(114537, e(1829, {	-- Helya
					ach(11581, {	-- Ahead of the Curve: Helya
						["u"] = REMOVED_FROM_GAME,
					}),
					i(142428),	-- Sea Fan Pendant
					i(142521),	-- Drape of the Unworthy
					i(142433),	-- Corroded Val'kyr Chainmail
					i(142427),	-- Calcareous Wristclamps
					i(142429),	-- Oiled Rigger's Handwraps
					i(142420),	-- Anchor Chain Waistguard
					i(142424),	-- Krakenbone Waistplate
					i(142416),	-- Strand of Whelk Shells
					i(142418),	-- Sucker-Scarred Leggings
					i(142414),	-- Treads of the Drowned
					i(142507),	-- Brinewater Slime in a Bottle
					i(142518),	-- Fury of the Sea
					i(142510),	-- Phylactery of Unwilling Servitude
					i(142517),	-- Swell of the Tides
				}))
			}),
			d(DIFFICULTY.RAID.MYTHIC, {
				n(ZONE_DROPS, {
					i(142541),	-- Drape of the Forgotten Souls
				}),
				cr(114263, e(1819, {	-- Odyn
					ach(11396),	-- Mythic: Odyn
					i(142540),	-- Mantle of the Victorious Dead
					i(142431),	-- Gleaming Val'kyr Cuirass
					i(142410),	-- Robes of Celestial Adornment
					i(142419),	-- Sky-Valiant's Wristguards
					i(142430),	-- Gloves of Issued Challenge
					i(142411),	-- Cinch of Light
					i(142425),	-- Goldrune Legplates
					i(142421),	-- Leggings of the Undaunted
					i(142422),	-- Radiant Soul Sabatons
					i(142520),	-- Ring of Ascended Glory
					i(142508),	-- Chains of the Valorous
					i(142519),	-- Favor of the Prime Designate
					i(142514),	-- Ravens' Sight
					i(142511),	-- Unforged Titansteel
				})),
				e(1830, {	-- Guarm
					["crs"] = {
						114344,	-- Guarm
						114323,	-- Guarm
					},
					["g"] = {
						ach(11397),	-- Mythic: Guarm
						i(142412),	-- Windwhipped Sailcloth
						i(142432),	-- Helbeast Skin Tunic
						i(142423),	-- Bite-Resistant Wristclamps
						i(142415),	-- Helhound Hair Bracers
						i(142434),	-- Kvaldir Exult's Grips
						i(142435),	-- Reinforced Hound-Handler's Gauntlets
						i(142413),	-- Leggings of the Lower Planes
						i(142426),	-- Lead-Soled Seabed Striders
						i(142417),	-- Moccasins of Silent Passage
						i(142512),	-- Accursed Cuspid
						i(142515),	-- Chilled Incisor
						i(142506),	-- Eye of Guarm
						i(142516),	-- Sizzling Fang
					},
				}),
				cr(114537, e(1829, {	-- Helya
					ach(11581, {	-- Ahead of the Curve: Helya
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(11580, {	-- Cutting Edge: Helya
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(11398),	-- Mythic: Helya
					ach(11404),	-- Mythic: Helya Guild Run
					ach(11405, {	-- Realm First! Helya
						["u"] = REMOVED_FROM_GAME,
					}),
					ach(11387, {	-- The Chosen
						["u"] = REMOVED_FROM_GAME,
						["crs"] = { 116229 },	-- Mythical Champion of the Chosen Dead
						["g"] = {
							title(347, {	-- The Chosen
								["u"] = REMOVED_FROM_GAME,
							}),
							iensemble(143508, {	-- Ensemble: Vestment of the Chosen Dead
								["classes"] = CLOTH_CLASSES,
								["u"] = REMOVED_FROM_GAME,
							}),
							iensemble(143512, {	-- Ensemble: Garb of the Chosen Dead
								["classes"] = LEATHER_CLASSES,
								["u"] = REMOVED_FROM_GAME,
							}),
							iensemble(143516, {	-- Ensemble: Chains of the Chosen Dead
								["classes"] = MAIL_CLASSES,
								["u"] = REMOVED_FROM_GAME,
							}),
							iensemble(143520, {	-- Ensemble: Funerary Plate of the Chosen Dead
								["classes"] = PLATE_CLASSES,
								["u"] = REMOVED_FROM_GAME,
							}),
						},
					}),
					i(142428),	-- Sea Fan Pendant
					i(142521),	-- Drape of the Unworthy
					i(142433),	-- Corroded Val'kyr Chainmail
					i(142427),	-- Calcareous Wristclamps
					i(142429),	-- Oiled Rigger's Handwraps
					i(142420),	-- Anchor Chain Waistguard
					i(142424),	-- Krakenbone Waistplate
					i(142416),	-- Strand of Whelk Shells
					i(142418),	-- Sucker-Scarred Leggings
					i(142414),	-- Treads of the Drowned
					i(142507),	-- Brinewater Slime in a Bottle
					i(142518),	-- Fury of the Sea
					i(142510),	-- Phylactery of Unwilling Servitude
					i(142517),	-- Swell of the Tides
					i(142513),	-- Token of the Lightning Keeper
				})),
			}),
		},
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.LEGION, bubbleDownSelf({ ["timeline"] = { ADDED_7_1_5 } }, {
	inst(861, {
		q(46661),	-- Odyn LFR
		q(46662),	-- Odyn Normal
		q(46663),	-- Odyn Heroic
		q(46664),	-- Odyn Mythic
		q(45429),	-- Odyn
		q(45430),	-- Guarm
		q(45431),	-- Helya
	}),
})));