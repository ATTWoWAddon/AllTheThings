---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
local COLLECTOR_DYNA = {
	["crs"] = { 223446 },
	["coord"] = { 38.2, 78.8, ISLE_OF_DORN },
};
local FRIENDHAVER_GERM = {
	["crs"] = { 223444 },
	["coord"] = { 61.6, 37.6, THE_RINGING_DEEPS },
};
local KYRIE = {
	["crs"] = { 223442 },
	["coord"] = { 52.5, 62.8, HALLOWFALL },
};
local ZIRIAK = {
	["crs"] = { 223443 },
	["coord"] = { 61.4, 36.8, NERUBAR_LOWER },
};
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	n(ACHIEVEMENTS, {
		ach(41555, {	-- All That Khaz
			["timeline"] = { ADDED_11_1_0 },
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40307,	-- Allied Races: Earthen
				40430,	-- Khaz Algar Flight Master
				40702,	-- Khaz Algar Glyph Hunter
				40762,	-- Khaz Algar Lore Hunter
				20596,	-- Loremaster of Khaz Algar
			}},
			["g"] = { campsite(7) },	-- Freywold Spring (CS!)
		}),
		-- #IF BEFORE 11.0.5
		n(FAMILY_BATTLER, {
		-- #else
		header(HEADERS.Achievement, 40980, {	-- Family Battler of Khaz Algar
		-- #endif
			petbattle(ach(40980, {	-- Family Battler of Khaz Algar
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					40154,	-- Aquatic Battler of Khaz Algar
					40155,	-- Beast Battler of Khaz Algar
					40156,	-- Critter Battler of Khaz Algar
					40157,	-- Dragonkin Battler of Khaz Algar
					40158,	-- Elemental Battler of Khaz Algar
					40161,	-- Flying Battler of Khaz Algar
					40162,	-- Humanoid Battler of Khaz Algar
					40163,	-- Magic Battler of Khaz Algar
					40164,	-- Mechanical Battler of Khaz Algar
					40165,	-- Undead Battler of Khaz Algar
				}},
				["timeline"] = { ADDED_11_0_5 },
				["g"] = {
					i(222970),	-- Fuzzy (PET!)
				},
			})),
			petbattle(ach(40154, {	-- Aquatic Battler of Khaz Algar
				crit(67139, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67140, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67141, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67142, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40155, {	-- Beast Battler of Khaz Algar
				crit(67143, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67144, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67145, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67146, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40156, {	-- Critter Battler of Khaz Algar
				crit(67147, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67148, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67149, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67150, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40157, {	-- Dragonkin Battler of Khaz Algar
				crit(67151, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67152, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67153, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67154, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40158, {	-- Elemental Battler of Khaz Algar
				crit(67155, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67156, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67157, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67158, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40161, {	-- Flying Battler of Khaz Algar
				crit(67159, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67160, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67161, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67162, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40162, {	-- Humanoid Battler of Khaz Algar
				crit(67163, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67160, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67164, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67165, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40163, {	-- Magic Battler of Khaz Algar
				crit(67166, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67167, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67168, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67169, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40164, {	-- Mechanical Battler of Khaz Algar
				crit(67170, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67171, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67172, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67173, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
			petbattle(ach(40165, {	-- Undead Battler of Khaz Algar
				crit(67174, {	-- Collector Dyna
					["crs"] = COLLECTOR_DYNA.crs,
					["coord"] = COLLECTOR_DYNA.coord,
				}),
				crit(67175, {	-- Friendhaver Grem
					["crs"] = FRIENDHAVER_GERM.crs,
					["coord"] = FRIENDHAVER_GERM.coord,
				}),
				crit(67176, {	-- Kyrie
					["crs"] = KYRIE.crs,
					["coord"] = KYRIE.coord,
				}),
				crit(67177, {	-- Ziriak
					["crs"] = ZIRIAK.crs,
					["coord"] = ZIRIAK.coord,
				}),
			})),
		-- #IF BEFORE 11.0.5
		}),
		-- #else
		}),
		-- #endif
		petbattle(ach(40153)),	-- Battle on Khaz Algar (automated)
		ach(40791, {	-- Fate of the Kirin Tor (automated)
			["timeline"] = { ADDED_11_0_7 },
			["g"] = {
				title(569),	-- <Name>, Witness of the Kirin Tor
			},
		}),
		ach(40352, {	-- Khaz Algar Completionist: Bronze
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40343,	-- Azj-Kahet: Bronze
				40346,	-- Azj-Kahet Advanced: Bronze
				40349,	-- Azj-Kahet Reverse: Bronze
				40334,	-- Hallowfall: Bronze
				40337,	-- Hallowfall Advanced: Bronz
				40340,	-- Hallowfall Reverse: Bronze
				40316,	-- Isle of Dorn: Bronze
				40319,	-- Isle of Dorn Advanced: Bronze
				40322,	-- Isle of Dorn Reverse: Bronze
				40325,	-- The Ringing Deeps: Bronze
				40328,	-- The Ringing Deeps Advanced: Bronze
				40331,	-- The Ringing Deeps Reverse: Bronze
			}},
		}),
		ach(40353, {	-- Khaz Algar Completionist: Silver
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40344,	-- Azj-Kahet: Silver
				40347,	-- Azj-Kahet Advanced: Silver
				40350,	-- Azj-Kahet Reverse: Silver
				40335,	-- Hallowfall: Silver
				40338,	-- Hallowfall Advanced: Silver
				40341,	-- Hallowfall Reverse: Silver
				40317,	-- Isle of Dorn: Silver
				40320,	-- Isle of Dorn Advanced: Silver
				40323,	-- Isle of Dorn Reverse: Silver
				40326,	-- The Ringing Deeps: Silver
				40329,	-- The Ringing Deeps Advanced: Silver
				40332,	-- The Ringing Deeps Reverse: Silver
			}},
		}),
		ach(40354, {	-- Khaz Algar Completionist: Gold
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40345,	-- Azj-Kahet: Gold
				40348,	-- Azj-Kahet Advanced: Gold
				40351,	-- Azj-Kahet Reverse: Gold
				40336,	-- Hallowfall: Gold
				40339,	-- Hallowfall Advanced: Gold
				40342,	-- Hallowfall Reverse: Gold
				40318,	-- Isle of Dorn: Gold
				40321,	-- Isle of Dorn Advanced: Gold
				40324,	-- Isle of Dorn Reverse: Gold
				40327,	-- The Ringing Deeps: Gold
				40330,	-- The Ringing Deeps Advanced: Gold
				40333,	-- The Ringing Deeps Reverse: Gold
			}},
			["g"] = {
				title(594,	{	-- Khaz Algar Racer
					["timeline"] = { ADDED_11_0_5 },
				}),
			},
		}),
		ach(40790, {	-- Khaz Algar Explorer
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40822,	-- Explore Azj-Kahet
				40826,	-- Explore Hallowfall
				40831,	-- Explore The Isle of Dorn
				40825,	-- Explore The Ringing Deeps
			}},
		}),
		ach(40430),		-- Khaz Algar Flight Master (automated)
		ach(40702, {	-- Khaz Algar Glyph Hunter
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				40705,	-- Azj-Kahet Glyph Hunter
				40704,	-- Hallowfall Glyph Hunter
				40166,	-- Isle of Dorn Glyph Hunter
				40703,	-- The Ringing Deeps Glyph Hunter
			}},
			["g"] = {
				i(223267),	-- Swarmite Skyhunter (MOUNT!)
			}
		}),
		ach(40762, {	-- Khaz Algar Lore Hunter (automated)
			-- #if AFTER 11.0.2.56313
			-- #if BEFORE 11.0.7
			["description"] = "This achievement is currently disabled by Blizzard and will be readded in a future patch.",
			-- #endif
			-- #endif
			["timeline"] = { ADDED_11_0_2, "removed 11.0.2.56313", ADDED_11_0_7 },
		}),
		petbattle(ach(40194, {	-- Khaz Algar Safari (automated)
			i(221821),	-- Waxwick (PET!)
		})),
		ach(20596, {	-- Loremaster of Khaz Algar
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				20118,	-- The Isle of Dorn
				19560,	-- The Ringing Deeps
				20598,	-- Hallowfall
				19559,	-- Azj-Kahet
				20595,	-- Sojourner of Isle of Dorn
				40799,	-- Sojourner of The Ringing Deeps
				40844,	-- Sojourner of Hallowfall
				40636,	-- Sojourner of Azj-Kahet
			}},
			["g"] = {
				iensemble(219132),	-- Crimson Cartographer's Orientation
			},
		}),
		ach(20597),		-- The War Within (automated)
		ach(40231, {	-- The War Within Pathfinder
			-- Meta Achievement
			["sym"] = {{"meta_achievement",
				19559,	-- Azj-Kahet
				40790,	-- Khaz Algar Explorer
				20598,	-- Hallowfall
				20118,	-- The Isle of Dorn
				19560,	-- The Ringing Deeps
			}},
		}),
	}),
})));