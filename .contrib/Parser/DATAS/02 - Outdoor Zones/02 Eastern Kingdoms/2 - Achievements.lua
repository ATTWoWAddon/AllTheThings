---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local BILL_BUCKLER = {
	["crs"] = { 65656 },
	["coord"] = { 51.4, 73.2, THE_CAPE_OF_STRANGLETHORN },
};
local DAVID_KOSSE = {
	["crs"] = { 66478 },
	["coord"] = { 62.8, 54.6, THE_HINTERLANDS },
};
local DEIZA_PLAGUEHORN = {
	["crs"] = { 66512 },
	["coord"] = { 67.0, 52.4, EASTERN_PLAGUELANDS },
};
local DURIN_DARKHAMMER = {
	["crs"] = { 66520 },
	["coord"] = { 25.6, 47.6, BURNING_STEPPES },
};
local ERIC_DAVIDSON = {
	["crs"] = { 65655 },
	["coord"] = { 19.8, 44.8, DUSKWOOD },
};
local EVERESSA = {
	["crs"] = { 66518 },
	["coord"] = { 76.6, 41.6, SWAMP_OF_SORROWS },
};
local JULIA_STEVENS = {
	["crs"] = { 64330 },
	["coord"] = { 41.6, 83.6, ELWYNN_FOREST },
};
local KORTAS_DARKHAMMER = {
	["crs"] = { 66515 },
	["coord"] = { 35.4, 27.8, SEARING_GORGE },
};
local LINDSAY = {
	["crs"] = { 65651 },
	["coord"] = { 33.3, 52.6, REDRIDGE_MOUNTAINS },
};
local LYDIA_ACCOSTE = {
	["crs"] = { 66522 },
	["coord"] = { 40.2, 76.6, DEADWIND_PASS },
};
local OLD_MACDONALD = {
	["crs"] = { 65648 },
	["coord"] = { 60.8, 18.6, WESTFALL },
};
local STEVEN_LISBANE = {
	["crs"] = { 63194 },
	["coord"] = { 46.0, 40.4, NORTHERN_STRANGLETHORN },
};

root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	n(ACHIEVEMENTS, {
		header(HEADERS.Achievement, 61040, bubbleDownSelf({ ["timeline"] = { ADDED_12_0_0 } }, {	-- Family Battler of Eastern Kingdoms
			petbattle(ach(61040, {	-- Family Battler of Eastern Kingdoms
				-- Meta Achievement
				["sym"] = {{"meta_achievement",
					61029,	-- Aquatic Battler of Eastern Kingdoms
					61030,	-- Beast Battler of Eastern Kingdoms
					61031,	-- Critter Battler of Eastern Kingdoms
					61032,	-- Dragonkin Battler of Eastern Kingdoms
					61033,	-- Elemental Battler of Eastern Kingdoms
					61034,	-- Flying Battler of Eastern Kingdoms
					61035,	-- Humanoid Battler of Eastern Kingdoms
					61036,	-- Magic Battler of Eastern Kingdoms
					61037,	-- Mechanical Battler of Eastern Kingdoms
					61028,	-- Undead Battler of Eastern Kingdoms
				}},
				["timeline"] = { ADDED_12_0_0 },
				["groups"] = { i(205017) },	-- Byrn (PET!)
			})),
			petbattle(ach(61029, {	-- Aquatic Battler of Eastern Kingdoms
				crit(108071, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108072, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108073, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108075, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108069, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108076, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108066, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108074, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108068, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108077, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108067, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108070, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61030, {	-- Beast Battler of Eastern Kingdoms
				crit(107957, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(107958, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(107959, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(107961, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(107955, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(107962, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(107952, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(107960, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(107954, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(107963, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(107953, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(107956, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61031, {	-- Critter Battler of Eastern Kingdoms
				crit(107974, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(107975, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(107976, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(107978, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(107972, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(107979, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(107969, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(107977, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(107971, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(107980, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(107970, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(107973, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61032, {	-- Dragonkin Battler of Eastern Kingdoms
				crit(107986, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(107987, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(107988, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(107990, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(107984, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(107991, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(107981, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(107989, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(107983, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(107992, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(107982, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(107985, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61033, {	-- Elemental Battler of Eastern Kingdoms
				crit(107998, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(107999, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108000, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108002, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(107996, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108003, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(107993, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108001, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(107995, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108004, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(107994, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(107997, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61034, {	-- Flying Battler of Eastern Kingdoms
				crit(108010, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108011, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108012, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108014, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108008, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108015, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108005, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108013, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108007, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108016, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108006, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108009, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61035, {	-- Humanoid Battler of Eastern Kingdoms
				crit(108022, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108023, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108024, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108026, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108020, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108027, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108017, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108025, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108019, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108028, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108018, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108021, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61036, {	-- Magic Battler of Eastern Kingdoms
				crit(108034, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108035, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108036, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108038, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108032, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108039, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108029, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108037, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108031, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108040, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108030, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108033, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61037, {	-- Mechanical Battler of Eastern Kingdoms
				crit(108046, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108047, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108048, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108050, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108044, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108051, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108041, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108049, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108043, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108052, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108042, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108045, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
			petbattle(ach(61028, {	-- Undead Battler of Eastern Kingdoms
				crit(108058, {	-- Bill Buckler
					["crs"] = BILL_BUCKLER.crs,
					["coord"] = BILL_BUCKLER.coord,
				}),
				crit(108059, {	-- David Kosse
					["crs"] = DAVID_KOSSE.crs,
					["coord"] = DAVID_KOSSE.coord,
				}),
				crit(108060, {	-- Deiza Plaguehorn
					["crs"] = DEIZA_PLAGUEHORN.crs,
					["coord"] = DEIZA_PLAGUEHORN.coord,
				}),
				crit(108062, {	-- Durin Darkhammer
					["crs"] = DURIN_DARKHAMMER.crs,
					["coord"] = DURIN_DARKHAMMER.coord,
				}),
				crit(108056, {	-- Eric Davidson
					["crs"] = ERIC_DAVIDSON.crs,
					["coord"] = ERIC_DAVIDSON.coord,
				}),
				crit(108063, {	-- Everessa
					["crs"] = EVERESSA.crs,
					["coord"] = EVERESSA.coord,
				}),
				crit(108053, {	-- Julia Stevens
					["crs"] = JULIA_STEVENS.crs,
					["coord"] = JULIA_STEVENS.coord,
				}),
				crit(108061, {	-- Kortas Darkhammer
					["crs"] = KORTAS_DARKHAMMER.crs,
					["coord"] = KORTAS_DARKHAMMER.coord,
				}),
				crit(108055, {	-- Lindsay
					["crs"] = LINDSAY.crs,
					["coord"] = LINDSAY.coord,
				}),
				crit(108064, {	-- Lydia Accoste
					["crs"] = LYDIA_ACCOSTE.crs,
					["coord"] = LYDIA_ACCOSTE.coord,
				}),
				crit(108054, {	-- Old MacDonald
					["crs"] = OLD_MACDONALD.crs,
					["coord"] = OLD_MACDONALD.coord,
				}),
				crit(108057, {	-- Steven Lisbane
					["crs"] = STEVEN_LISBANE.crs,
					["coord"] = STEVEN_LISBANE.coord,
				}),
			})),
		})),
	}),
}));
