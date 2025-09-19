-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(875, {	-- Tomb of Sargeras
			["isRaid"] = true,
			["coord"] = { 64.3, 21.0, BROKEN_SHORE },
			["maps"] = { 645, 850, 851, 852, 853, 854, 855, 856 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42649, {	-- Raid Finder: Tomb of Sargeras
						crit(108549, {	-- Goroth
							["_encounter"] = { 1862, DIFFICULTY.RAID.LFR },
						}),
						crit(108550, {	-- Harjatan
							["_encounter"] = { 1856, DIFFICULTY.RAID.LFR },
						}),
						crit(108551, {	-- Mistress Sassz'ine
							["_encounter"] = { 1861, DIFFICULTY.RAID.LFR },
						}),
						crit(108546, {	-- Demonic Inquisition
							["_encounter"] = { 1867, DIFFICULTY.RAID.LFR },
						}),
						crit(108547, {	-- Sisters of the Moon
							["_encounter"] = { 1903, DIFFICULTY.RAID.LFR },
						}),
						crit(108548, {	-- The Desolate Host
							["_encounter"] = { 1896, DIFFICULTY.RAID.LFR },
						}),
						crit(108545, {	-- Maiden of Vigilance
							["_encounter"] = { 1897, DIFFICULTY.RAID.LFR },
						}),
						crit(108544, {	-- Fallen Avatar
							["_encounter"] = { 1873, DIFFICULTY.RAID.LFR },
						}),
						crit(108568, {	-- Kil'jaeden
							["_encounter"] = { 1898, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60870, {	-- Tomb of Sargeras
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60866,	-- The Gates of Hell
							60867,	-- Wailing Halls
							60868,	-- Chamber of the Avatar
							60869,	-- Deceiver's Fall
						}},
					}),
					ach(60866, {	-- The Gates of Hell
						crit(107172, {	-- Goroth
							["_encounter"] = { 1862, DIFFICULTY.RAID.LFR },
						}),
						crit(107171, {	-- Harjatan
							["_encounter"] = { 1856, DIFFICULTY.RAID.LFR },
						}),
						crit(107170, {	-- Mistress Sassz'ine
							["_encounter"] = { 1861, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60867, {	-- Wailing Halls
						crit(107175, {	-- Demonic Inquisition
							["_encounter"] = { 1867, DIFFICULTY.RAID.LFR },
						}),
						crit(107174, {	-- Sisters of the Moon
							["_encounter"] = { 1903, DIFFICULTY.RAID.LFR },
						}),
						crit(107173, {	-- The Desolate Host
							["_encounter"] = { 1896, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60868, {	-- Chamber of the Avatar
						crit(107176, {	-- Maiden of Vigilance
							["_encounter"] = { 1897, DIFFICULTY.RAID.LFR },
						}),
						crit(107177, {	-- Fallen Avatar
							["_encounter"] = { 1873, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60869, {	-- Deceiver's Fall
						crit(106080, {	-- Kil'jaeden
							["_encounter"] = { 1898, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(42661, {	-- Heroic: Tomb of Sargeras
						crit(108475, {	-- Goroth
							["_encounter"] = { 1862, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108476, {	-- Harjatan
							["_encounter"] = { 1856, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108477, {	-- Mistress Sassz'ine
							["_encounter"] = { 1861, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108472, {	-- Demonic Inquisition
							["_encounter"] = { 1867, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108473, {	-- Sisters of the Moon
							["_encounter"] = { 1903, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108474, {	-- The Desolate Host
							["_encounter"] = { 1896, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108471, {	-- Maiden of Vigilance
							["_encounter"] = { 1897, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108470, {	-- Fallen Avatar
							["_encounter"] = { 1873, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108494, {	-- Kil'jaeden
							["_encounter"] = { 1898, DIFFICULTY.RAID.HEROIC },
						}),
					}),
					ach(42576, {	-- Mythic: Tomb of Sargeras
						crit(108512, {	-- Goroth
							["_encounter"] = { 1862, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108513, {	-- Harjatan
							["_encounter"] = { 1856, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108514, {	-- Mistress Sassz'ine
							["_encounter"] = { 1861, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108509, {	-- Demonic Inquisition
							["_encounter"] = { 1867, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108510, {	-- Sisters of the Moon
							["_encounter"] = { 1903, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108511, {	-- The Desolate Host
							["_encounter"] = { 1896, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108508, {	-- Maiden of Vigilance
							["_encounter"] = { 1897, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108507, {	-- Fallen Avatar
							["_encounter"] = { 1873, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108531, {	-- Kil'jaeden
							["_encounter"] = { 1898, DIFFICULTY.RAID.MYTHIC },
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
					header(HEADERS.Achievement, 60866, {	-- The Gates of Hell
						e(1862, {	-- Goroth
							["cr"] = 115844,	-- Goroth
						}),
						e(1856, {	-- Harjatan
							["cr"] = 116407,	-- Harjatan
						}),
						e(1861, {	-- Mistress Sassz'ine
							["cr"] = 115767,	-- Mistress Sassz'ine
						}),
					}),
					header(HEADERS.Achievement, 60867, {	-- Wailing Halls
						e(1896, {	-- The Desolate Host
							["crs"] = {
								119072,	-- The Desolate Host
								118460,	-- Engine of Souls
								118462,	-- Soul Queen Dejahna
							},
						}),
						e(1903, {	-- Sisters of the Moon
							["crs"] = {
								118374,	-- Captain Yathae Moonstrike
								118523,	-- Huntress Kasparian
								118518,	-- Priestess Lunaspyre
							},
						}),
						e(1867, {	-- Demonic Inquisition
							["crs"] = {
								116689,	-- Atrigan
								116691,	-- Belac
							},
						}),
					}),
					header(HEADERS.Achievement, 60868, {	-- Chamber of the Avatar
						e(1897, {	-- Maiden of Vigilance
							["cr"] = 118289,	-- Maiden of Vigilance
						}),
						e(1873, {	-- Fallen Avatar
							["crs"] = {
								116939,	-- Fallen Avatar
								117264,	-- Maiden of Valor
							},
						}),
					}),
					header(HEADERS.Achievement, 60869, {	-- Deceiver's Fall
						e(1898, {	-- Kil'jaeden
							["cr"] = 117269,	-- Kil'jaeden
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
					e(1862, {	-- Goroth
						["cr"] = 115844,	-- Goroth
					}),
					e(1856, {	-- Harjatan
						["cr"] = 116407,	-- Harjatan
					}),
					e(1861, {	-- Mistress Sassz'ine
						["cr"] = 115767,	-- Mistress Sassz'ine
					}),
					e(1896, {	-- The Desolate Host
						["crs"] = {
							119072,	-- The Desolate Host
							118460,	-- Engine of Souls
							118462,	-- Soul Queen Dejahna
						},
					}),
					e(1903, {	-- Sisters of the Moon
						["crs"] = {
							118374,	-- Captain Yathae Moonstrike
							118523,	-- Huntress Kasparian
							118518,	-- Priestess Lunaspyre
						},
					}),
					e(1867, {	-- Demonic Inquisition
						["crs"] = {
							116689,	-- Atrigan
							116691,	-- Belac
						},
					}),
					e(1897, {	-- Maiden of Vigilance
						["cr"] = 118289,	-- Maiden of Vigilance
						["groups"] = { i(253305) },	-- Felwarped Slab
					}),
					e(1873, {	-- Fallen Avatar
						["crs"] = {
							116939,	-- Fallen Avatar
							117264,	-- Maiden of Valor
						},
					}),
					e(1898, {	-- Kil'jaeden
						["cr"] = 117269,	-- Kil'jaeden
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
					e(1862, {	-- Goroth
						["cr"] = 115844,	-- Goroth
					}),
					e(1856, {	-- Harjatan
						["cr"] = 116407,	-- Harjatan
					}),
					e(1861, {	-- Mistress Sassz'ine
						["cr"] = 115767,	-- Mistress Sassz'ine
					}),
					e(1896, {	-- The Desolate Host
						["crs"] = {
							119072,	-- The Desolate Host
							118460,	-- Engine of Souls
							118462,	-- Soul Queen Dejahna
						},
					}),
					e(1903, {	-- Sisters of the Moon
						["crs"] = {
							118374,	-- Captain Yathae Moonstrike
							118523,	-- Huntress Kasparian
							118518,	-- Priestess Lunaspyre
						},
					}),
					e(1867, {	-- Demonic Inquisition
						["crs"] = {
							116689,	-- Atrigan
							116691,	-- Belac
						},
					}),
					e(1897, {	-- Maiden of Vigilance
						["cr"] = 118289,	-- Maiden of Vigilance
						["groups"] = { i(253305) },	-- Felwarped Slab
					}),
					e(1873, {	-- Fallen Avatar
						["crs"] = {
							116939,	-- Fallen Avatar
							117264,	-- Maiden of Valor
						},
					}),
					e(1898, {	-- Kil'jaeden
						["cr"] = 117269,	-- Kil'jaeden
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
					e(1862, {	-- Goroth
						["cr"] = 115844,	-- Goroth
					}),
					e(1856, {	-- Harjatan
						["cr"] = 116407,	-- Harjatan
					}),
					e(1861, {	-- Mistress Sassz'ine
						["cr"] = 115767,	-- Mistress Sassz'ine
					}),
					e(1896, {	-- The Desolate Host
						["crs"] = {
							119072,	-- The Desolate Host
							118460,	-- Engine of Souls
							118462,	-- Soul Queen Dejahna
						},
					}),
					e(1903, {	-- Sisters of the Moon
						["crs"] = {
							118374,	-- Captain Yathae Moonstrike
							118523,	-- Huntress Kasparian
							118518,	-- Priestess Lunaspyre
						},
					}),
					e(1867, {	-- Demonic Inquisition
						["crs"] = {
							116689,	-- Atrigan
							116691,	-- Belac
						},
					}),
					e(1897, {	-- Maiden of Vigilance
						["cr"] = 118289,	-- Maiden of Vigilance
						["groups"] = { i(253305) },	-- Felwarped Slab
					}),
					e(1873, {	-- Fallen Avatar
						["crs"] = {
							116939,	-- Fallen Avatar
							117264,	-- Maiden of Valor
						},
					}),
					e(1898, {	-- Kil'jaeden
						["cr"] = 117269,	-- Kil'jaeden
					}),
				}),
			},
		}),
	}),
})));
