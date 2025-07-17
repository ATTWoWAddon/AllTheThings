---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local PRECISION_POWERDRILL = {
	["crs"] = { 237701 },
	["coord"] = { 55.2, 69.8, UNDERMINE },
};
local BAXX_THE_PURVEYOR = {
	["crs"] = { 237703 },
	["coord"] = { 39.0, 16.0, UNDERMINE },
};
local PREZLY_WAVECUTTER = {
	["crs"] = { 237712 },
	["coord"] = { 59.4, 27.2, UNDERMINE },
};
local CREECH = {
	["crs"] = { 237718 },
	["coord"] = { 32.2, 82.2, UNDERMINE },
};
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_1_0 } }, {
	m(UNDERMINE, {
		n(ACHIEVEMENTS, {
			ach(41216),	-- Adventurer of Undermine (automated)
			ach(41587),	-- Explore Undermine (automated)
			header(HEADERS.Achievement, 41551, {	-- Family Battler of Undermine
				petbattle(ach(41551, {	-- Family Battler of Undermine
					-- Meta Achievement
					["sym"] = {{"meta_achievement",
						41542,	-- Aquatic Battler of Undermine
						41543,	-- Beast Battler of Undermine
						41541,	-- Critter Battler of Undermine
						41544,	-- Dragonkin Battler of Undermine
						41545,	-- Elemental Battler of Undermine
						41546,	-- Flying Battler of Undermine
						41547,	-- Humanoid Battler of Undermine
						41548,	-- Magic Battler of Undermine
						41549,	-- Mechanical Battler of Undermine
						41550,	-- Undead Battler of Undermine
					}},
					["g"] = {
						i(232855),	-- Foreman (PET!)
					},
				})),
				petbattle(ach(41542, {	-- Aquatic Battler of Undermine
					crit(102982, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102983, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(102984, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(102985, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41543, {	-- Beast Battler of Undermine
					crit(102986, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102987, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(102988, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(102989, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41541, {	-- Critter Battler of Undermine
					crit(102978, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102979, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(102980, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(102981, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41544, {	-- Dragonkin Battler of Undermine
					crit(102990, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102991, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(102992, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(102993, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41545, {	-- Elemental Battler of Undermine
					crit(102994, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102995, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(102996, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(102997, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41546, {	-- Flying Battler of Undermine
					crit(102998, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(102999, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(103000, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(103001, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41547, {	-- Humanoid Battler of Undermine
					crit(103002, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(103003, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(103004, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(103005, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41548, {	-- Magic Battler of Undermine
					crit(103006, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(103007, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(103008, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(103009, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41549, {	-- Mechanical Battler of Undermine
					crit(103010, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(103011, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(103012, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(103013, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
				petbattle(ach(41550, {	-- Undead Battler of Undermine
					crit(103014, {	-- Precision Powerdrill
						["crs"] = PRECISION_POWERDRILL.crs,
						["coord"] = PRECISION_POWERDRILL.coord,
					}),
					crit(103015, {	-- Baxx the Purveyor
						["crs"] = BAXX_THE_PURVEYOR.crs,
						["coord"] = BAXX_THE_PURVEYOR.coord,
					}),
					crit(103016, {	-- Prezly Wavecutter
						["crs"] = PREZLY_WAVECUTTER.crs,
						["coord"] = PREZLY_WAVECUTTER.coord,
					}),
					crit(103017, {	-- Creech
						["crs"] = CREECH.crs,
						["coord"] = CREECH.coord,
					}),
				})),
			}),
			ach(41586, {	-- Going Goblin Mode
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					41216,	-- Adventurer of Undermine
					40948,	-- Nine-Tenths of the Law
					41589,	-- That Can-Do Attitude
					41588,	-- Read Between the Lines
					41217,	-- Treasures of Undermine
					41708,	-- You're My Friend Now
				}},
				["g"] = { campsite(25) },	-- Gallagio Grand Gallery (CS!)
			}),
			ach(40948),	-- Nine-Tenths of the Law
			ach(40894),	-- Sojourner of Undermine (automated)
			ach(41588, {	-- Read Between the Lines (automated)
				i(235050),	-- Desk-In-A-Box (TOY!)
			}),
			ach(41589, {	-- That Can-Do Attitude
				["crs"] = { 237103 },	-- Discarded Can
			}),
			pvp(ach(41522)),	-- Tour of Duty: Undermine
			ach(41217),	-- Treasures of Undermine (automated)
			ach(40900),	-- Undermined (automated)
			achraw(41708, {	-- You're My Friend Now
				-- automation links to the individual spell casts for each rat
				["crs"] = {
					239250,	-- Grabbable Rat
					239248,	-- Grabbable Rat
					239249,	-- Grabbable Rat
					239251,	-- Grabbable Rat
					239252,	-- Grabbable Rat
				},
				["coords"] = {
					{ 43.6, 11.3, UNDERMINE },
					{ 28.5, 55.8, UNDERMINE },
					{ 36.0, 85.6, UNDERMINE },
					{ 65.3, 88.3, UNDERMINE },
					{ 65.9, 44.0, UNDERMINE },
				},
			}),
		}),
	}),
})));