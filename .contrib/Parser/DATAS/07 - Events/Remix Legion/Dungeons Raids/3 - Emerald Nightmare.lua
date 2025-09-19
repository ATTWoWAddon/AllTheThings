-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(768, {	-- The Emerald Nightmare
			["isRaid"] = true,
			["coord"] = { 56.3, 36.9, VALSHARAH },
			["maps"] = { 777, 778, 779, 780, 781, 782, 783, 784, 785, 786, 787, 788, 789 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42603, {	-- Raid Finder: Emerald Nightmare
						crit(108566, {	-- Nythendra
							["_encounter"] = { 1703, DIFFICULTY.RAID.LFR },
						}),
						crit(108565, {	-- Elerethe Renferal
							["_encounter"] = { 1744, DIFFICULTY.RAID.LFR },
						}),
						crit(108564, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { 1738, DIFFICULTY.RAID.LFR },
						}),
						crit(108563, {	-- Ursoc
							["_encounter"] = { 1667, DIFFICULTY.RAID.LFR },
						}),
						crit(108562, {	-- Dragons of Nightmare
							["_encounter"] = { 1704, DIFFICULTY.RAID.LFR },
						}),
						crit(108569, {	-- Cenarius
							["_encounter"] = { 1750, DIFFICULTY.RAID.LFR },
						}),
						crit(108569, {	-- Xavius
							["_encounter"] = { 1726, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60859, {	-- The Emerald Nightmare
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60856,	-- Darkbough
							60857,	-- Tormented Guardians
							60858,	-- Rift of Aln
						}},
					}),
					ach(60856, {	-- Darkbough
						crit(107143, {	-- Nythendra
							["_encounter"] = { 1703, DIFFICULTY.RAID.LFR },
						}),
						crit(107144, {	-- Elerethe Renferal
							["_encounter"] = { 1744, DIFFICULTY.RAID.LFR },
						}),
						crit(107145, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { 1738, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60857, {	-- Tormented Guardians
						crit(107146, {	-- Ursoc
							["_encounter"] = { 1667, DIFFICULTY.RAID.LFR },
						}),
						crit(107147, {	-- Dragons of Nightmare
							["_encounter"] = { 1704, DIFFICULTY.RAID.LFR },
						}),
						crit(107148, {	-- Cenarius
							["_encounter"] = { 1750, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60858, {	-- Rift of Aln
						crit(106078, {	-- Xavius
							["_encounter"] = { 1726, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(42531, {	-- Heroic: Emerald Nightmare
						crit(108492, {	-- Nythendra
							["_encounter"] = { 1703, DIFFICULTY.RAID.LFR },
						}),
						crit(108491, {	-- Elerethe Renferal
							["_encounter"] = { 1744, DIFFICULTY.RAID.LFR },
						}),
						crit(108490, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { 1738, DIFFICULTY.RAID.LFR },
						}),
						crit(108489, {	-- Ursoc
							["_encounter"] = { 1667, DIFFICULTY.RAID.LFR },
						}),
						crit(108488, {	-- Dragons of Nightmare
							["_encounter"] = { 1704, DIFFICULTY.RAID.LFR },
						}),
						crit(108487, {	-- Cenarius
							["_encounter"] = { 1750, DIFFICULTY.RAID.LFR },
						}),
						crit(108495, {	-- Xavius
							["_encounter"] = { 1726, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(42651, {	-- Mythic: Emerald Nightmare
						crit(108529, {	-- Nythendra
							["_encounter"] = { 1703, DIFFICULTY.RAID.LFR },
						}),
						crit(108528, {	-- Elerethe Renferal
							["_encounter"] = { 1744, DIFFICULTY.RAID.LFR },
						}),
						crit(108527, {	-- Il'gynoth, Heart of Corruption
							["_encounter"] = { 1738, DIFFICULTY.RAID.LFR },
						}),
						crit(108526, {	-- Ursoc
							["_encounter"] = { 1667, DIFFICULTY.RAID.LFR },
						}),
						crit(108525, {	-- Dragons of Nightmare
							["_encounter"] = { 1704, DIFFICULTY.RAID.LFR },
						}),
						crit(108524, {	-- Cenarius
							["_encounter"] = { 1750, DIFFICULTY.RAID.LFR },
						}),
						crit(108532, {	-- Xavius
							["_encounter"] = { 1726, DIFFICULTY.RAID.LFR },
						}),
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
					header(HEADERS.Achievement, 60856, {	-- Darkbough
						e(1703, {	-- Nythendra
							["cr"] = 102672,	-- Nythendra
						}),
						e(1744, {	-- Elerethe Renferal
							["cr"] = 106087,	-- Elerethe Renferal
						}),
						e(1738, {	-- Il'gynoth, Heart of Corruption
							["cr"] = 105393,	-- Il'gynoth, Heart of Corruption
						}),
					}),
					header(HEADERS.Achievement, 60857, {	-- Tormented Guardians
						e(1667, {	-- Ursoc
							["cr"] = 100497,	-- Ursoc
						}),
						e(1704, {	-- Dragons of Nightmare
							["crs"] = {
								102679,	-- Ysondre
								102681,	-- Taerar
								102682,	-- Lethon
								102683,	-- Emeriss
							},
						}),
						e(1750, {	-- Cenarius
							["cr"] = 104636,	-- Cenarius
						}),
					}),
					header(HEADERS.Achievement, 60858, {	-- Rift of Aln
						e(1726, {	-- Xavius
							["cr"] = 103769,	-- Xavius <Nightmare Lord>
						}),
					}),
				}),
				d(DIFFICULTY.RAID.NORMAL, {
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
					e(1703, {	-- Nythendra
						["cr"] = 102672,	-- Nythendra
					}),
					e(1744, {	-- Elerethe Renferal
						["cr"] = 106087,	-- Elerethe Renferal
					}),
					e(1738, {	-- Il'gynoth, Heart of Corruption
						["cr"] = 105393,	-- Il'gynoth, Heart of Corruption
					}),
					e(1667, {	-- Ursoc
						["cr"] = 100497,	-- Ursoc
					}),
					e(1704, {	-- Dragons of Nightmare
						["crs"] = {
							102679,	-- Ysondre
							102681,	-- Taerar
							102682,	-- Lethon
							102683,	-- Emeriss
						},
					}),
					e(1750, {	-- Cenarius
						["cr"] = 104636,	-- Cenarius
					}),
					e(1726, {	-- Xavius
						["cr"] = 103769,	-- Xavius <Nightmare Lord>
						["groups"] = { i(242370) },	-- Horns of the First Satyr
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
					e(1703, {	-- Nythendra
						["cr"] = 102672,	-- Nythendra
					}),
					e(1744, {	-- Elerethe Renferal
						["cr"] = 106087,	-- Elerethe Renferal
					}),
					e(1738, {	-- Il'gynoth, Heart of Corruption
						["cr"] = 105393,	-- Il'gynoth, Heart of Corruption
					}),
					e(1667, {	-- Ursoc
						["cr"] = 100497,	-- Ursoc
					}),
					e(1704, {	-- Dragons of Nightmare
						["crs"] = {
							102679,	-- Ysondre
							102681,	-- Taerar
							102682,	-- Lethon
							102683,	-- Emeriss
						},
					}),
					e(1750, {	-- Cenarius
						["cr"] = 104636,	-- Cenarius
					}),
					e(1726, {	-- Xavius
						["cr"] = 103769,	-- Xavius <Nightmare Lord>
						["groups"] = { i(242370) },	-- Horns of the First Satyr
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
					e(1703, {	-- Nythendra
						["cr"] = 102672,	-- Nythendra
					}),
					e(1744, {	-- Elerethe Renferal
						["cr"] = 106087,	-- Elerethe Renferal
					}),
					e(1738, {	-- Il'gynoth, Heart of Corruption
						["cr"] = 105393,	-- Il'gynoth, Heart of Corruption
					}),
					e(1667, {	-- Ursoc
						["cr"] = 100497,	-- Ursoc
					}),
					e(1704, {	-- Dragons of Nightmare
						["crs"] = {
							102679,	-- Ysondre
							102681,	-- Taerar
							102682,	-- Lethon
							102683,	-- Emeriss
						},
					}),
					e(1750, {	-- Cenarius
						["cr"] = 104636,	-- Cenarius
					}),
					e(1726, {	-- Xavius
						["cr"] = 103769,	-- Xavius <Nightmare Lord>
						["groups"] = { i(242370) },	-- Horns of the First Satyr
					}),
				}),
			},
		}),
	}),
})));
