---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(VENDORS, {
			n(235079, {	-- Ba'orr
				["coord"] = { 41.1, 25.1, KARESH_TAZAVESH },
				["g"] = {
					i(247699),	-- Coagulated "Milk" Protein
					i(247698),	-- Deep-Fired Devourer Legs
					i(247693),	-- Fermented Warpstalker Niblets
					i(247700),	-- Genuine K'areshi Honey
					i(247692),	-- K'areshi Grain Fluff
					i(247882),	-- Phase Regulator TODO: common zone vendor item
					i(247696),	-- Pungent Smelling Salts
					i(247695),	-- Sparkling Mana Supplement
					i(247694),	-- Snifted Void Essence
				},
			}),
			n(241588, {	-- Hashim
				["coord"] = { 50.3, 36.6, KARESH },
				["g"] = {
					i(238039),	-- Chronomatic Fiber
					i(238041),	-- Dexterous Fiber
					i(238037),	-- Energizing Fiber
					i(248955),	-- Ethereal Seam Ripper
					i(238040),	-- Precise Fiber
				},
			}),
			n(241624, {	-- Shad'anis
				["coord"] = { 50.4, 36.3, KARESH },
				["g"] = {
					i(242730, {	-- Acidic Void Creeper (MOUNT!)
						["cost"] = { { "c", 3303, 7 }, },	-- Untethered Coin
					}),
					i(244336, {	-- K'aresh Box of Resonance Crystals
						["cost"] = { { "c", 3303, 1 }, },	-- Untethered Coin
					}),
					i(244335, {	-- K'aresh Box of Valorstones
						["cost"] = { { "c", 3303, 1 }, },	-- Untethered Coin
					}),
					i(242717, {	-- Lavender K'arroc (MOUNT!)
						["cost"] = { { "c", 3303, 10 }, },	-- Untethered Coin
					}),
					i(244910, {	-- Penumbral Terror (PET!)
						["cost"] = { { "c", 3303, 4 }, },	-- Untethered Coin
					}),
					i(247882),	-- Phase Regulator
					iensemble(248996, {	-- Ensemble: Untethered Blade's Garb
						["cost"] = { { "c", 3303, 8 }, },	-- Untethered Coin
					}),
					iensemble(248998, {	-- Ensemble: Untethered Captain's Full-Plate
						["cost"] = { { "c", 3303, 8 }, },	-- Untethered Coin
					}),
					iensemble(248995, {	-- Ensemble: Untethered Seer's Vestiture
						["cost"] = { { "c", 3303, 8 }, },	-- Untethered Coin
					}),
					iensemble(248997, {	-- Ensemble: Untethered Striker's Gear
						["cost"] = { { "c", 3303, 8 }, },	-- Untethered Coin
					}),
				},
			}),
		}),
	}),
})));