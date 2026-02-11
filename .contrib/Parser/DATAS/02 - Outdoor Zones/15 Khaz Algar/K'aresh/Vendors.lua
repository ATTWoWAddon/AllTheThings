---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local UNTETHERED_COIN = 3303;

root(ROOTS.Zones, m(KHAZ_ALGAR, {
	m(KARESH, {
		n(VENDORS, {
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
			n(235645, {	-- Curator Ve'ka <Exotic Toys>
				["coord"] = { 51.9, 53.9, KARESH_TAZAVESH },
				["sym"] = {{"select","itemID",
					54436,	-- Blue Clockwork Rocket Bot (PET!)
					54343,	-- Blue Crashin' Thrashin' Racer Controller (TOY!)
					192099,	-- Earpieces of Tranquil Focus (TOY!)
					104324,	-- Foot Ball (TOY!)
					44481,	-- Grindgear Toy Gorilla
					44601,	-- Heavy Copper Racer
					34498,	-- Paper Zeppelin Kit
					137663,	-- Soft Foam Sword (TOY!)
					104323,	-- The Swineskin (TOY!)
					44482,	-- Trusty Copper Racer
					44599,	-- Zippy Copper Racer
				}},
			}),
			n(241588, {	-- Hashim
				["coord"] = { 50.3, 36.6, KARESH },
				["groups"] = {
					i(238039),	-- Chronomatic Fiber
					i(238041),	-- Dexterous Fiber
					i(238037),	-- Energizing Fiber
					i(238040),	-- Precise Fiber
				},
			}),
			n(241624, {	-- Shad'anis
				["coord"] = { 50.4, 36.3, KARESH },
				["groups"] = {
					i(242730, {	-- Acidic Void Creeper (MOUNT!)
						["cost"] = { { "c", UNTETHERED_COIN, 7 } },
					}),
					i(246907, {	-- Broker Supply Crate (TOY!)
						["cost"] = { { "c", UNTETHERED_COIN, 3 } },
					}),
					i(250722, {	-- Ethereal Stall (TOY!)
						["cost"] = { { "c", UNTETHERED_COIN, 3 } },
					}),
					i(246903, {	-- Guise of the Phase Diver (TOY!)
						["cost"] = { { "c", UNTETHERED_COIN, 3 } },
					}),
					i(244336, {	-- K'aresh Box of Resonance Crystals
						["cost"] = { { "c", UNTETHERED_COIN, 1 } },
					}),
					i(244335, {	-- K'aresh Box of Valorstones
						["cost"] = { { "c", UNTETHERED_COIN, 1 } },
					}),
					i(246908, {	-- K'areshi Supply Crate (TOY!)
						["cost"] = { { "c", UNTETHERED_COIN, 3 } },
					}),
					i(242717, {	-- Lavender K'arroc (MOUNT!)
						["cost"] = { { "c", UNTETHERED_COIN, 10 } },
					}),
					i(246905, {	-- Overtuned K'areshi Goggles (TOY!)
						["cost"] = { { "c", UNTETHERED_COIN, 3 } },
					}),
					i(244910, {	-- Penumbral Terror (PET!)
						["cost"] = { { "c", UNTETHERED_COIN, 4 } },
					}),
					i(247882),	-- Phase Regulator
					iensemble(250442, {	-- Ensemble: Ancient Capes of the Reshii
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
					}),
					iensemble(250441, {	-- Ensemble: Shoulderguards of the Wastelander Seer
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
					}),
					iensemble(248996, {	-- Ensemble: Untethered Blade's Garb
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
					}),
					iensemble(248998, {	-- Ensemble: Untethered Captain's Full-Plate
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
					}),
					iensemble(248995, {	-- Ensemble: Untethered Seer's Vestiture
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
					}),
					iensemble(248997, {	-- Ensemble: Untethered Striker's Gear
						["cost"] = { { "c", UNTETHERED_COIN, 5 } },
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
			n(235314, {	-- Ta'sam <Fine Goods & Lost Treasures>
				["description"] = "|cFFE50D12WARNING:|r Sells mostly junk items. Purchases are not refundable. Selling the items back will get you back only 1/4 of the gold spent.",
				["coord"] = { 43.3, 35.5, KARESH_TAZAVESH },
				["groups"] = {
					i(260582, {	-- Cartel Collector's Cage (DECOR!)
						["timeline"] = { ADDED_11_2_7 },
						["cost"] = { { "c", RESONANCE_CRYSTALS, 500 } },
					}),
					i(247686),	-- Crystalized Nightshade (JUNK!)
					i(247688),	-- K'arroc Feather Quill (JUNK!)
					i(247687),	-- Overly-Preserved K'areshi Preserves (JUNK!)
					i(247685),	-- Slightly Used Containment Device (JUNK!)
				},
			}),
			n(243801, {	-- Zo'phar <Rare Materials>
				["coord"] = { 53.2, 54.1, KARESH_TAZAVESH },
				["groups"] = {
					i(29571),	-- A Steamy Romance Novel
					i(63271),	-- A Steamy Romance Novel: Big Brass Bombs
					i(54291),	-- A Steamy Romance Novel: Blue Moon
					i(37467),	-- A Steamy Romance Novel: Forbidden Love
					i(128436),	-- A Steamy Romance Novel: Got Milk?
					i(87530),	-- A Steamy Romance Novel: Hot and Misty
					i(128985),	-- A Steamy Romance Novel: Nightborne of the Living Dead
					i(46023),	-- A Steamy Romance Novel: Northern Exposure
					i(128984),	-- A Steamy Romance Novel: Of Elven Bondage
					i(108649),	-- A Steamy Romance Novel: Savage Passions
					i(162981),	-- A Steamy Romance Novel: Stormy Seas
					i(200264),	-- A Steamy Romance Novel: The Lusty Draconian Mage
					i(128983),	-- A Steamy Romance Novel: Waves of Desire
					i(246811, {	-- Technique: Inspired Writer's Quill (RECIPE!)
						["cost"] = { { "g", 5000000 } },	-- 500g
						["requireSkill"] = INSCRIPTION,
					}),
				},
			}),
		}),
	}),
}));
