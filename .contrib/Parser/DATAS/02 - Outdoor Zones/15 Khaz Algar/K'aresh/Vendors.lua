---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_2_0 } }, {
	m(KARESH, {
		n(VENDORS, {
			n(238291, {	-- Associate Xy'got
				["description"] = "You need to Phasedive in order to see the Vendor.",
				["coord"] = { 50.6, 19.3, KARESH },
				["groups"] = {
					i(236632, {	-- Pouch of Voidbane Gems
						["cost"] = { { "g", 3000000 } },	-- 300g
						--["requireSkill"] = JEWELCRAFTING,
						-- Exo Note: Flavor Text says: "A hefty pouch with eight gems inside." but gives only a few gold... Is this a troll or do you need JWC as a profession?
					}),
				},
			}),
			n(235079, {	-- Ba'orr
				["coord"] = { 41.1, 25.1, KARESH_TAZAVESH },
				["groups"] = {
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
				["groups"] = {
					i(238039),	-- Chronomatic Fiber
					i(238041),	-- Dexterous Fiber
					i(238037),	-- Energizing Fiber
					--i(248955),	-- Ethereal Seam Ripper (Looks like this was deleted from the game. You can remove (un-socket) the fibers from the Reshii Wraps manually)
					i(238040),	-- Precise Fiber
				},
			}),
			n(241624, {	-- Shad'anis
				["coord"] = { 50.4, 36.3, KARESH },
				["groups"] = {
					i(242730, {	-- Acidic Void Creeper (MOUNT!)
						["cost"] = { { "c", 3303, 7 }, },	-- Untethered Coin
					}),
					i(246907, {	-- Broker Supply Crate (TOY!)
						["cost"] = { { "c", 3303, 3 }, },	-- Untethered Coin
					}),
					i(250722, {	-- Ethereal Stall (TOY!)
						["cost"] = { { "c", 3303, 3 }, },	-- Untethered Coin
					}),
					i(246903, {	-- Guise of the Phase Diver (TOY!)
						["cost"] = { { "c", 3303, 3 }, },	-- Untethered Coin
					}),
					i(244336, {	-- K'aresh Box of Resonance Crystals
						["cost"] = { { "c", 3303, 1 }, },	-- Untethered Coin
					}),
					i(244335, {	-- K'aresh Box of Valorstones
						["cost"] = { { "c", 3303, 1 }, },	-- Untethered Coin
					}),
					i(246908, {	-- K'areshi Supply Crate (TOY!)
						["cost"] = { { "c", 3303, 3 }, },	-- Untethered Coin
					}),
					i(242717, {	-- Lavender K'arroc (MOUNT!)
						["cost"] = { { "c", 3303, 10 }, },	-- Untethered Coin
					}),
					i(246905, {	-- Overtuned K'areshi Goggles (TOY!)
						["cost"] = { { "c", 3303, 3 }, },	-- Untethered Coin
					}),
					i(244910, {	-- Penumbral Terror (PET!)
						["cost"] = { { "c", 3303, 4 }, },	-- Untethered Coin
					}),
					i(247882),	-- Phase Regulator
					iensemble(250442, {	-- Ensemble: Ancient Capes of the Reshii
						["cost"] = { { "c", 3303, 5 }, },	-- Untethered Coin
					}),
					iensemble(250441, {	-- Ensemble: Shoulderguards of the Wastelander Seer
						["cost"] = { { "c", 3303, 5 }, },	-- Untethered Coin
					}),
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
			n(236409, {	-- Ta'rex <Rare Materials>
				["description"] = "|cFFE50D12WARNING:|r Sells junk items. Purchases are not refundable. Selling the items back will get you back only 1/4 of the gold spent.",
				["coord"] = { 49.5, 39.2, KARESH_TAZAVESH },
				["groups"] = {
					i(247689),	-- K'areshi Copper Ingot (JUNK!)
					i(247691),	-- Slateback Hide (JUNK!)
					i(247690),	-- Void-Tainted Lotus (JUNK!)
				},
			}),
			n(243801, {	-- Zo'phar <Rare Materials>
				["coord"] = { 53.2, 54.1, KARESH_TAZAVESH },
				["groups"] = {
					i(246811, {	-- Technique: Inspired Writer's Quill (RECIPE!)
						["cost"] = { { "g", 5000000 } },	-- 500g
						["requireSkill"] = INSCRIPTION,
					}),
				},
			}),
		}),
	}),
})));
