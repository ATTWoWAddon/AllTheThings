-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(786, {	-- The Nighthold
			["isRaid"] = true,
			["coords"] = {
				{ 43.3, 62.3, SURAMAR },	-- entrance that leads underground
				{ 44.1, 59.7, SURAMAR },	-- actual raid entrance
			},
			["maps"] = { 764, 765, 766, 767, 768, 769, 770, 771, 772 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42553, {	-- Raid Finder: The Nighthold
						crit(108560, {	-- Skorpyron
							["_encounter"] = { 1706, DIFFICULTY.RAID.LFR },
						}),
						crit(108558, {	-- Chronomatic Anomaly
							["_encounter"] = { 1725, DIFFICULTY.RAID.LFR },
						}),
						crit(108559, {	-- Trilliax
							["_encounter"] = { 1731, DIFFICULTY.RAID.LFR },
						}),
						crit(108557, {	-- Spellblade Aluriel
							["_encounter"] = { 1751, DIFFICULTY.RAID.LFR },
						}),
						crit(108556, {	-- Star Augur Etraeus
							["_encounter"] = { 1732, DIFFICULTY.RAID.LFR },
						}),
						crit(108555, {	-- High Botanist Tel'arn
							["_encounter"] = { 1761, DIFFICULTY.RAID.LFR },
						}),
						crit(108553, {	-- Tichondrius
							["_encounter"] = { 1762, DIFFICULTY.RAID.LFR },
						}),
						crit(108554, {	-- Krosus
							["_encounter"] = { 1713, DIFFICULTY.RAID.LFR },
						}),
						crit(108552, {	-- Grand Magistrix Elisande
							["_encounter"] = { 1743, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60865, {	-- The Nighthold
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60861,	-- Arcing Aqueducts
							60862,	-- Royal Athenaeum
							60863,	-- Nightspire
							60864,	-- Betrayer's Rise
						}},
					}),
					ach(60861, {	-- Arcing Aqueducts
						crit(107157, {	-- Skorpyron
							["_encounter"] = { 1706, DIFFICULTY.RAID.LFR },
						}),
						crit(107159, {	-- Chronomatic Anomaly
							["_encounter"] = { 1725, DIFFICULTY.RAID.LFR },
						}),
						crit(107158, {	-- Trilliax
							["_encounter"] = { 1731, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60862, {	-- Royal Athenaeum
						crit(107160, {	-- Spellblade Aluriel
							["_encounter"] = { 1751, DIFFICULTY.RAID.LFR },
						}),
						crit(107161, {	-- Star Augur Etraeus
							["_encounter"] = { 1732, DIFFICULTY.RAID.LFR },
						}),
						crit(107162, {	-- High Botanist Tel'arn
							["_encounter"] = { 1761, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60863, {	-- Nightspire
						crit(107164, {	-- Tichondrius
							["_encounter"] = { 1762, DIFFICULTY.RAID.LFR },
						}),
						crit(107163, {	-- Krosus
							["_encounter"] = { 1713, DIFFICULTY.RAID.LFR },
						}),
						crit(107165, {	-- Grand Magistrix Elisande
							["_encounter"] = { 1743, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60864, {	-- Betrayer's Rise
						["_encounter"] = { 1737, DIFFICULTY.RAID.LFR },
						["provider"] = { "n", 104154 },	-- Gul'dan
					}),
					ach(42543, {	-- Heroic: The Nighthold
						crit(108486, {	-- Skorpyron
							["_encounter"] = { 1706, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108484, {	-- Chronomatic Anomaly
							["_encounter"] = { 1725, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108485, {	-- Trilliax
							["_encounter"] = { 1731, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108483, {	-- Spellblade Aluriel
							["_encounter"] = { 1751, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108482, {	-- Star Augur Etraeus
							["_encounter"] = { 1732, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108481, {	-- High Botanist Tel'arn
							["_encounter"] = { 1761, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108479, {	-- Tichondrius
							["_encounter"] = { 1762, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108480, {	-- Krosus
							["_encounter"] = { 1713, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108478, {	-- Grand Magistrix Elisande
							["_encounter"] = { 1743, DIFFICULTY.RAID.HEROIC },
						}),
					}),
					ach(42544, {	-- Mythic: The Nighthold
						crit(108523, {	-- Skorpyron
							["_encounter"] = { 1706, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108521, {	-- Chronomatic Anomaly
							["_encounter"] = { 1725, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108522, {	-- Trilliax
							["_encounter"] = { 1731, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108520, {	-- Spellblade Aluriel
							["_encounter"] = { 1751, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108519, {	-- Star Augur Etraeus
							["_encounter"] = { 1732, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108518, {	-- High Botanist Tel'arn
							["_encounter"] = { 1761, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108516, {	-- Tichondrius
							["_encounter"] = { 1762, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108517, {	-- Krosus
							["_encounter"] = { 1713, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108515, {	-- Grand Magistrix Elisande
							["_encounter"] = { 1743, DIFFICULTY.RAID.HEROIC },
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
					header(HEADERS.Achievement, 60861, {	-- Arcing Aqueducts
						e(1706, {	-- Skorpyron
							["cr"] = 102263,	-- Skorpyron
						}),
						e(1725, {	-- Chronomatic Anomaly
							["cr"] = 104415,	-- Chronomatic Anomaly
						}),
						e(1731, {	-- Trilliax
							["cr"] = 104288,	-- Trilliax
						}),
					}),
					header(HEADERS.Achievement, 60862, {	-- Royal Athenaeum
						e(1751, {	-- Spellblade Aluriel
							["cr"] = 104881,	-- Spellblade Aluriel
						}),
						e(1732, {	-- Star Augur Etraeus
							["cr"] = 103758,	-- Star Augur Etraeus
						}),
						e(1761, {	-- High Botanist Tel'arn
							["crs"] = {
								109040,	-- Arcanist Tel'arn
								104528,	-- High Botanist Tel'arn
								109041,	-- Naturalist Tel'arn
								109038,	-- Solarist Tel'arn
							},
						}),
					}),
					header(HEADERS.Achievement, 60863, {	-- Nightspire
						e(1762, {	-- Tichondrius
							["cr"] = 103685,	-- Tichondrius
						}),
						e(1713, {	-- Krosus
							["cr"] = 101002,	-- Krosus
						}),
						e(1743, {	-- Grand Magistrix Elisande
							["cr"] = 106643,	-- Grand Magistrix Elisande
						}),
					}),
					header(HEADERS.Achievement, 60864, {	-- Betrayer's Rise
						e(1737, {	-- Gul'dan
							["cr"] = 104154,	-- Gul'dan
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
					e(1706, {	-- Skorpyron
						["cr"] = 102263,	-- Skorpyron
					}),
					e(1725, {	-- Chronomatic Anomaly
						["cr"] = 104415,	-- Chronomatic Anomaly
					}),
					e(1731, {	-- Trilliax
						["cr"] = 104288,	-- Trilliax
					}),
					e(1751, {	-- Spellblade Aluriel
						["cr"] = 104881,	-- Spellblade Aluriel
					}),
					e(1732, {	-- Star Augur Etraeus
						["cr"] = 103758,	-- Star Augur Etraeus
					}),
					e(1761, {	-- High Botanist Tel'arn
						["crs"] = {
							109040,	-- Arcanist Tel'arn
							104528,	-- High Botanist Tel'arn
							109041,	-- Naturalist Tel'arn
							109038,	-- Solarist Tel'arn
						},
					}),
					e(1762, {	-- Tichondrius
						["cr"] = 103685,	-- Tichondrius
					}),
					e(1713, {	-- Krosus
						["cr"] = 101002,	-- Krosus
					}),
					e(1743, {	-- Grand Magistrix Elisande
						["cr"] = 106643,	-- Grand Magistrix Elisande
					}),
					e(1737, {	-- Gul'dan
						["cr"] = 104154,	-- Gul'dan
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
					e(1706, {	-- Skorpyron
						["cr"] = 102263,	-- Skorpyron
					}),
					e(1725, {	-- Chronomatic Anomaly
						["cr"] = 104415,	-- Chronomatic Anomaly
					}),
					e(1731, {	-- Trilliax
						["cr"] = 104288,	-- Trilliax
					}),
					e(1751, {	-- Spellblade Aluriel
						["cr"] = 104881,	-- Spellblade Aluriel
					}),
					e(1732, {	-- Star Augur Etraeus
						["cr"] = 103758,	-- Star Augur Etraeus
					}),
					e(1761, {	-- High Botanist Tel'arn
						["crs"] = {
							109040,	-- Arcanist Tel'arn
							104528,	-- High Botanist Tel'arn
							109041,	-- Naturalist Tel'arn
							109038,	-- Solarist Tel'arn
						},
					}),
					e(1762, {	-- Tichondrius
						["cr"] = 103685,	-- Tichondrius
					}),
					e(1713, {	-- Krosus
						["cr"] = 101002,	-- Krosus
					}),
					e(1743, {	-- Grand Magistrix Elisande
						["cr"] = 106643,	-- Grand Magistrix Elisande
					}),
					e(1737, {	-- Gul'dan
						["cr"] = 104154,	-- Gul'dan
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
					e(1706, {	-- Skorpyron
						["cr"] = 102263,	-- Skorpyron
					}),
					e(1725, {	-- Chronomatic Anomaly
						["cr"] = 104415,	-- Chronomatic Anomaly
					}),
					e(1731, {	-- Trilliax
						["cr"] = 104288,	-- Trilliax
					}),
					e(1751, {	-- Spellblade Aluriel
						["cr"] = 104881,	-- Spellblade Aluriel
					}),
					e(1732, {	-- Star Augur Etraeus
						["cr"] = 103758,	-- Star Augur Etraeus
					}),
					e(1761, {	-- High Botanist Tel'arn
						["crs"] = {
							109040,	-- Arcanist Tel'arn
							104528,	-- High Botanist Tel'arn
							109041,	-- Naturalist Tel'arn
							109038,	-- Solarist Tel'arn
						},
					}),
					e(1762, {	-- Tichondrius
						["cr"] = 103685,	-- Tichondrius
					}),
					e(1713, {	-- Krosus
						["cr"] = 101002,	-- Krosus
					}),
					e(1743, {	-- Grand Magistrix Elisande
						["cr"] = 106643,	-- Grand Magistrix Elisande
					}),
					e(1737, {	-- Gul'dan
						["cr"] = 104154,	-- Gul'dan
					}),
				}),
			},
		}),
	}),
})));
