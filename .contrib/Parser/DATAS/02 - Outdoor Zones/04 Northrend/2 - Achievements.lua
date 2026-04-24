---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local BEEGLE_BLASTFUSE = {
	["crs"] = { 66635 },
	["coord"] = { 28.6, 33.8, HOWLING_FJORD },
};
local GUTRETCH = {
	["crs"] = { 66639 },
	["coord"] = { 13.2, 66.8, ZULDRAK },
};
local MAYOR_PAYNE = {
	["crs"] = { 66675 },
	["coord"] = { 77.4, 19.6, ICECROWN },
};
local NEARLY_HEADLESS_JACOB = {
	["crs"] = { 66636 },
	["coord"] = { 50.2, 59.0, CRYSTALSONG_FOREST },
};
local OKRUT_DRAGONWASTE = {
	["crs"] = { 66638 },
	["coord"] = { 59.0, 77.0, DRAGONBLIGHT },
};

root(ROOTS.Zones, m(NORTHREND, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 60956, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Northrend
			petbattle(ach(60956, {	-- Family Battler of Northrend
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					60942,	-- Aquatic Battler of Northrend
					60951,	-- Beast Battler of Northrend
					60943,	-- Critter Battler of Northrend
					60944,	-- Dragonkin Battler of Northrend
					60948,	-- Elemental Battler of Northrend
					60949,	-- Flying Battler of Northrend
					60950,	-- Humanoid Battler of Northrend
					60952,	-- Magic Battler of Northrend
					60953,	-- Mechanical Battler of Northrend
					60954,	-- Undead Battler of Northrend
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(222967) },	-- Webbers (PET!)
			})),
			petbattle(ach(60942, {	-- Aquatic Battler of Northrend
				crit(107709, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107713, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
				crit(107711, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107712, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107710, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
			})),
			petbattle(ach(60951, {	-- Beast Battler of Northrend
				crit(107740, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107744, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
				crit(107742, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107743, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107741, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
			})),
			petbattle(ach(60943, {	-- Critter Battler of Northrend
				crit(107714, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107718, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
				crit(107716, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107717, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107715, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
			})),
			petbattle(ach(60944, {	-- Dragonkin Battler of Northrend
				crit(107719, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107723, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
				crit(107721, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107722, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107720, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
			})),
			petbattle(ach(60948, {	-- Elemental Battler of Northrend
				crit(107724, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107729, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
				crit(107727, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107728, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107725, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
			})),
			petbattle(ach(60949, {	-- Flying Battler of Northrend
				crit(107730, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107731, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
				crit(107732, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107733, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107734, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
			})),
			petbattle(ach(60950, {	-- Humanoid Battler of Northrend
				crit(107735, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107736, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
				crit(107737, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107738, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107739, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
			})),
			petbattle(ach(60952, {	-- Magic Battler of Northrend
				crit(107746, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107747, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
				crit(107748, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107749, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107750, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
			})),
			petbattle(ach(60953, {	-- Mechanical Battler of Northrend
				crit(107751, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107753, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
				crit(107754, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107755, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107756, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
			})),
			petbattle(ach(60954, {	-- Undead Battler of Northrend
				crit(107757, {	-- Beegle Blastfuse
					["crs"] = BEEGLE_BLASTFUSE.crs,
					["coord"] = BEEGLE_BLASTFUSE.coord,
				}),
				crit(107758, {	-- Okrut Dragonwaste
					["crs"] = OKRUT_DRAGONWASTE.crs,
					["coord"] = OKRUT_DRAGONWASTE.coord,
				}),
				crit(107759, {	-- Major Payne
					["crs"] = MAYOR_PAYNE.crs,
					["coord"] = MAYOR_PAYNE.coord,
				}),
				crit(107760, {	-- Nearly Headless Jacob
					["crs"] = NEARLY_HEADLESS_JACOB.crs,
					["coord"] = NEARLY_HEADLESS_JACOB.coord,
				}),
				crit(107761, {	-- Gutretch
					["crs"] = GUTRETCH.crs,
					["coord"] = GUTRETCH.coord,
				}),
			})),
		})),
	}),
}));
