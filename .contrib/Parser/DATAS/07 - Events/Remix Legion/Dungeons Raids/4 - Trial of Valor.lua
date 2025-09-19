-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(861, {	-- Trial of Valor
			["isRaid"] = true,
			["coord"] = { 70.4, 69.4, STORMHEIM },
			["maps"] = { 806, 807, 808 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42558, {	-- Raid Finder: Trial of Valor
						crit(108625, {	-- Odyn
							["_encounter"] = { 1819, DIFFICULTY.RAID.LFR },
						}),
						crit(108624, {	-- Guarm
							["_encounter"] = { 1830, DIFFICULTY.RAID.LFR },
						}),
						crit(108626, {	-- Helya
							["_encounter"] = { 1829, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60860, {	-- Trial of Valor
						crit(107152, {	-- Odyn
							["_encounter"] = { 1819, DIFFICULTY.RAID.LFR },
						}),
						crit(107153, {	-- Guarm
							["_encounter"] = { 1830, DIFFICULTY.RAID.LFR },
						}),
						crit(106071, {	-- Helya
							["_encounter"] = { 1829, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(42639, {	-- Heroic: Trial of Valor
						crit(108619, {	-- Odyn
							["_encounter"] = { 1819, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108618, {	-- Guarm
							["_encounter"] = { 1830, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108620, {	-- Helya
							["_encounter"] = { 1829, DIFFICULTY.RAID.HEROIC },
						}),
					}),
					ach(42636, {	-- Mythic: Trial of Valor
						crit(108622, {	-- Odyn
							["_encounter"] = { 1819, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108621, {	-- Guarm
							["_encounter"] = { 1830, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108623, {	-- Helya
							["_encounter"] = { 1829, DIFFICULTY.RAID.MYTHIC },
						}),
					}),
					ach(61024, {	-- The Deathless Champion
						["classes"] = { DEATHKNIGHT, PALADIN, WARRIOR },
						["groups"] = { iensemble(241596) },	-- Ensemble: Funerary Plate of the Chosen Dead
					}),
					ach(61027, {	-- The Deathless Magus
						["classes"] = { MAGE, PRIEST, WARLOCK },
						["groups"] = { iensemble(241608) },	-- Ensemble: Regalia of the Chosen Dead
					}),
					ach(61025, {	-- The Deathless Marauder
						["classes"] = { HUNTER, SHAMAN },
						["groups"] = { iensemble(241599) },	-- Ensemble: Chains of the Chosen Dead
					}),
					ach(61026, {	-- The Deathless Wanderer
						["classes"] = { DEMONHUNTER, DRUID, MONK, ROGUE },
						["groups"] = { iensemble(241603) },	-- Ensemble: Garb of the Chosen Dead
					}),
				}),
				d(DIFFICULTY.RAID.LFR, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
						}),
						filter(LEATHER, {
						}),
						filter(MAIL, {
						}),
						filter(PLATE, {
						}),
					})),
					header(HEADERS.Achievement, 42558, {	-- Raid Finder: Trial of Valor
						e(1819, {	-- Odyn
							["cr"] = 114263,	-- Odyn
						}),
						e(1830, {	-- Guarm
							["crs"] = {
								114344,	-- Guarm
								114323,	-- Guarm
							},
						}),
						e(1829, {	-- Helya
							["cr"] = 114537,	-- Helya
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
						}),
						filter(LEATHER, {
							i(249683),	-- Shoulderguards of Divine Arts
						}),
						filter(MAIL, {
						}),
						filter(PLATE, {
						}),
					})),
					e(1819, {	-- Odyn
						["cr"] = 114263,	-- Odyn
					}),
					e(1830, {	-- Guarm
						["crs"] = {
							114344,	-- Guarm
							114323,	-- Guarm
						},
					}),
					e(1829, {	-- Helya
						["cr"] = 114537,	-- Helya
					}),
				}),
				d(DIFFICULTY.RAID.HEROIC, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
						}),
						filter(LEATHER, {
						}),
						filter(MAIL, {
						}),
						filter(PLATE, {
						}),
					})),
					e(1819, {	-- Odyn
						["cr"] = 114263,	-- Odyn
					}),
					e(1830, {	-- Guarm
						["crs"] = {
							114344,	-- Guarm
							114323,	-- Guarm
						},
					}),
					e(1829, {	-- Helya
						["cr"] = 114537,	-- Helya
					}),
				}),
				d(DIFFICULTY.RAID.MYTHIC, {
					n(ARMOR, bubbleDown({ ["modID"] = 0 }, {
						filter(CLOTH, {
						}),
						filter(LEATHER, {
						}),
						filter(MAIL, {
						}),
						filter(PLATE, {
						}),
					})),
					e(1819, {	-- Odyn
						["cr"] = 114263,	-- Odyn
					}),
					e(1830, {	-- Guarm
						["crs"] = {
							114344,	-- Guarm
							114323,	-- Guarm
						},
					}),
					e(1829, {	-- Helya
						["cr"] = 114537,	-- Helya
					}),
				}),
			},
		}),
	}),
})));
