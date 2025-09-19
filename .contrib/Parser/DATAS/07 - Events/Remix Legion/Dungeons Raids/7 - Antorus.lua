-----------------------------------------------------
--     W O R L D   E V E N T S   M O D U L E       --
-----------------------------------------------------
root(ROOTS.WorldEvents, applyevent(EVENTS.REMIX_LEGION, n(REMIX_LEGION, {
	n(RAIDS, {
		inst(946, {	-- Antorus, the Burning Throne
			["isRaid"] = true,
			["coord"] = { 54.9, 62.3, ANTORAN_WASTES },
			["maps"] = { 909, 910, 911, 912, 913, 914, 915, 916, 917, 918, 919, 920 },
			["groups"] = {
				n(ACHIEVEMENTS, {
					ach(42554, {	-- Raid Finder: Antorus the Burning Throne
						crit(108543, {	-- Garothi Worldbreaker
							["_encounter"] = { 1992, DIFFICULTY.RAID.LFR },
						}),
						crit(108542, {	-- Hounds of Sargeras
							["_encounter"] = { 1987, DIFFICULTY.RAID.LFR },
						}),
						crit(108541, {	-- Antoran High Command
							["_encounter"] = { 1997, DIFFICULTY.RAID.LFR },
						}),
						crit(108539, {	-- Eonar
							["_encounter"] = { 2025, DIFFICULTY.RAID.LFR },
						}),
						crit(108540, {	-- Portal Keeper Hasabel
							["_encounter"] = { 1985, DIFFICULTY.RAID.LFR },
						}),
						crit(108538, {	-- Imonar the Soulhunter
							["_encounter"] = { 2009, DIFFICULTY.RAID.LFR },
						}),
						crit(108537, {	-- Kin'garoth
							["_encounter"] = { 2004, DIFFICULTY.RAID.LFR },
						}),
						crit(108536, {	-- Varimathras
							["_encounter"] = { 1983, DIFFICULTY.RAID.LFR },
						}),
						crit(108535, {	-- The Coven of Shivarra
							["_encounter"] = { 1986, DIFFICULTY.RAID.LFR },
						}),
						crit(108534, {	-- Aggramar
							["_encounter"] = { 1984, DIFFICULTY.RAID.LFR },
						}),
						crit(108567, {	-- Argus the Unmaker
							["_encounter"] = { 2031, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60875, {	-- Antorus the Burning Throne
						-- Meta Achievement
						["sym"] = {{"meta_achievement",
							60871,	-- Light's Breach
							60872,	-- Forbidden Descent
							60873,	-- Hope's End
							60874,	-- Seat of the Pantheon
						}},
					}),
					ach(60871, {	-- Light's Breach
						crit(107182, {	-- Garothi Worldbreaker
							["_encounter"] = { 1992, DIFFICULTY.RAID.LFR },
						}),
						crit(107183, {	-- Hounds of Sargeras
							["_encounter"] = { 1987, DIFFICULTY.RAID.LFR },
						}),
						crit(107184, {	-- Antoran High Command
							["_encounter"] = { 1997, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60872, {	-- Forbidden Descent
						crit(107186, {	-- Eonar
							["_encounter"] = { 2025, DIFFICULTY.RAID.LFR },
						}),
						crit(107185, {	-- Portal Keeper Hasabel
							["_encounter"] = { 1985, DIFFICULTY.RAID.LFR },
						}),
						crit(107187, {	-- Imonar the Soulhunter
							["_encounter"] = { 2009, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60873, {	-- Hope's End
						crit(107188, {	-- Kin'garoth
							["_encounter"] = { 2004, DIFFICULTY.RAID.LFR },
						}),
						crit(107189, {	-- Varimathras
							["_encounter"] = { 1983, DIFFICULTY.RAID.LFR },
						}),
						crit(107190, {	-- The Coven of Shivarra
							["_encounter"] = { 1986, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(60874, {	-- Seat of the Pantheon
						crit(107191, {	-- Aggramar
							["_encounter"] = { 1984, DIFFICULTY.RAID.LFR },
						}),
						crit(106082, {	-- Argus the Unmaker
							["_encounter"] = { 2031, DIFFICULTY.RAID.LFR },
						}),
					}),
					ach(42664, {	-- Heroic: Antorus the Burning Throne
						crit(108460, {	-- Garothi Worldbreaker
							["_encounter"] = { 1992, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108469, {	-- Hounds of Sargeras
							["_encounter"] = { 1987, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108468, {	-- Antoran High Command
							["_encounter"] = { 1997, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108466, {	-- Eonar
							["_encounter"] = { 2025, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108467, {	-- Portal Keeper Hasabel
							["_encounter"] = { 1985, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108465, {	-- Imonar the Soulhunter
							["_encounter"] = { 2009, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108464, {	-- Kin'garoth
							["_encounter"] = { 2004, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108463, {	-- Varimathras
							["_encounter"] = { 1983, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108462, {	-- The Coven of Shivarra
							["_encounter"] = { 1986, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108461, {	-- Aggramar
							["_encounter"] = { 1984, DIFFICULTY.RAID.HEROIC },
						}),
						crit(108493, {	-- Argus the Unmaker
							["_encounter"] = { 2031, DIFFICULTY.RAID.HEROIC },
						}),
					}),
					ach(42583, {	-- Mythic: Antorus the Burning Throne
						iensemble(253201),	-- Felscorned Scythe of the Unmaker
						crit(108506, {	-- Garothi Worldbreaker
							["_encounter"] = { 1992, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108505, {	-- Hounds of Sargeras
							["_encounter"] = { 1987, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108504, {	-- Antoran High Command
							["_encounter"] = { 1997, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108502, {	-- Eonar
							["_encounter"] = { 2025, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108503, {	-- Portal Keeper Hasabel
							["_encounter"] = { 1985, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108501, {	-- Imonar the Soulhunter
							["_encounter"] = { 2009, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108500, {	-- Kin'garoth
							["_encounter"] = { 2004, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108499, {	-- Varimathras
							["_encounter"] = { 1983, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108498, {	-- The Coven of Shivarra
							["_encounter"] = { 1986, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108497, {	-- Aggramar
							["_encounter"] = { 1984, DIFFICULTY.RAID.MYTHIC },
						}),
						crit(108530, {	-- Argus the Unmaker
							["_encounter"] = { 2031, DIFFICULTY.RAID.MYTHIC },
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
					header(HEADERS.Achievement, 60871, {	-- Light's Breach
						e(1992, {	-- Garothi Worldbreaker
							["cr"] = 122450,	-- Garothi Worldbreaker
						}),
						e(1987, {	-- Hounds of Sargeras
							["crs"] = {
								122477,	-- F'Harg
								122135,	-- Shatug
							},
						}),
						e(1997, {	-- Antoran High Command
							["crs"] = {
								122367,	-- Admiral Svirax
								122369,	-- Chief Engineer Ishkar
								122333,	-- General Erodus
							},
						}),
					}),
					header(HEADERS.Achievement, 60872, {	-- Forbidden Descent
						e(2025, {	-- Eonar the Life-Bender
							["crs"] = {
								122500,	-- Essence of Eonar
								124445,	-- The Paraxis
							},
						}),
						e(1985, {	-- Portal Keeper Hasabel
							["cr"] = 122104,	-- Portal Keeper Hasabel
						}),
						e(2009, {	-- Imonar the Soulhunter
							["cr"] = 124158,	-- Imonar the Soulhunter
						}),
					}),
					header(HEADERS.Achievement, 60873, {	-- Hope's End
						e(2004, {	-- Kin'garoth
							["cr"] = 122578,	-- Kin'garoth
						}),
						e(1983, {	-- Varimathras
							["cr"] = 122366,	-- Varimathras
						}),
						e(1986, {	-- The Coven of Shivarra
							["crs"] = {
								122467,	-- Asara, Mother of Night
								122469,	-- Diima, Mother of Gloom
								122468,	-- Noura, Mother of Flames
							},
						}),
					}),
					header(HEADERS.Achievement, 60874, {	-- Seat of the Pantheon
						e(1984, {	-- Aggramar
							["cr"] = 121975,	-- Aggramar
						}),
						e(2031, {	-- Argus the Unmaker
							["cr"] = 124828,	-- Argus the Unmaker
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
					e(1992, {	-- Garothi Worldbreaker
						["cr"] = 122450,	-- Garothi Worldbreaker
					}),
					e(1987, {	-- Hounds of Sargeras
						["crs"] = {
							122477,	-- F'Harg
							122135,	-- Shatug
						},
					}),
					e(1997, {	-- Antoran High Command
						["crs"] = {
							122367,	-- Admiral Svirax
							122369,	-- Chief Engineer Ishkar
							122333,	-- General Erodus
						},
					}),
					e(2025, {	-- Eonar the Life-Bender
						["crs"] = {
							122500,	-- Essence of Eonar
							124445,	-- The Paraxis
						},
					}),
					e(1985, {	-- Portal Keeper Hasabel
						["cr"] = 122104,	-- Portal Keeper Hasabel
					}),
					e(2009, {	-- Imonar the Soulhunter
						["cr"] = 124158,	-- Imonar the Soulhunter
					}),
					e(2004, {	-- Kin'garoth
						["cr"] = 122578,	-- Kin'garoth
					}),
					e(1983, {	-- Varimathras
						["cr"] = 122366,	-- Varimathras
					}),
					e(1986, {	-- The Coven of Shivarra
						["crs"] = {
							122467,	-- Asara, Mother of Night
							122469,	-- Diima, Mother of Gloom
							122468,	-- Noura, Mother of Flames
						},
					}),
					e(1984, {	-- Aggramar
						["cr"] = 121975,	-- Aggramar
						["groups"] = { i(253306) },	-- Everflame of Hatred
					}),
					e(2031, {	-- Argus the Unmaker
						["cr"] = 124828,	-- Argus the Unmaker
						["groups"] = { i(253304) },	-- Cosmic Soulsliver
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
					e(1992, {	-- Garothi Worldbreaker
						["cr"] = 122450,	-- Garothi Worldbreaker
					}),
					e(1987, {	-- Hounds of Sargeras
						["crs"] = {
							122477,	-- F'Harg
							122135,	-- Shatug
						},
					}),
					e(1997, {	-- Antoran High Command
						["crs"] = {
							122367,	-- Admiral Svirax
							122369,	-- Chief Engineer Ishkar
							122333,	-- General Erodus
						},
					}),
					e(2025, {	-- Eonar the Life-Bender
						["crs"] = {
							122500,	-- Essence of Eonar
							124445,	-- The Paraxis
						},
					}),
					e(1985, {	-- Portal Keeper Hasabel
						["cr"] = 122104,	-- Portal Keeper Hasabel
					}),
					e(2009, {	-- Imonar the Soulhunter
						["cr"] = 124158,	-- Imonar the Soulhunter
					}),
					e(2004, {	-- Kin'garoth
						["cr"] = 122578,	-- Kin'garoth
					}),
					e(1983, {	-- Varimathras
						["cr"] = 122366,	-- Varimathras
					}),
					e(1986, {	-- The Coven of Shivarra
						["crs"] = {
							122467,	-- Asara, Mother of Night
							122469,	-- Diima, Mother of Gloom
							122468,	-- Noura, Mother of Flames
						},
					}),
					e(1984, {	-- Aggramar
						["cr"] = 121975,	-- Aggramar
						["groups"] = { i(253306) },	-- Everflame of Hatred
					}),
					e(2031, {	-- Argus the Unmaker
						["cr"] = 124828,	-- Argus the Unmaker
						["groups"] = { i(253304) },	-- Cosmic Soulsliver
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
					e(1992, {	-- Garothi Worldbreaker
						["cr"] = 122450,	-- Garothi Worldbreaker
					}),
					e(1987, {	-- Hounds of Sargeras
						["crs"] = {
							122477,	-- F'Harg
							122135,	-- Shatug
						},
					}),
					e(1997, {	-- Antoran High Command
						["crs"] = {
							122367,	-- Admiral Svirax
							122369,	-- Chief Engineer Ishkar
							122333,	-- General Erodus
						},
					}),
					e(2025, {	-- Eonar the Life-Bender
						["crs"] = {
							122500,	-- Essence of Eonar
							124445,	-- The Paraxis
						},
					}),
					e(1985, {	-- Portal Keeper Hasabel
						["cr"] = 122104,	-- Portal Keeper Hasabel
					}),
					e(2009, {	-- Imonar the Soulhunter
						["cr"] = 124158,	-- Imonar the Soulhunter
					}),
					e(2004, {	-- Kin'garoth
						["cr"] = 122578,	-- Kin'garoth
					}),
					e(1983, {	-- Varimathras
						["cr"] = 122366,	-- Varimathras
					}),
					e(1986, {	-- The Coven of Shivarra
						["crs"] = {
							122467,	-- Asara, Mother of Night
							122469,	-- Diima, Mother of Gloom
							122468,	-- Noura, Mother of Flames
						},
					}),
					e(1984, {	-- Aggramar
						["cr"] = 121975,	-- Aggramar
						["groups"] = { i(253306) },	-- Everflame of Hatred
					}),
					e(2031, {	-- Argus the Unmaker
						["cr"] = 124828,	-- Argus the Unmaker
						["groups"] = { i(253304) },	-- Cosmic Soulsliver
					}),
				}),
			},
		}),
	}),
})));
