---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(KHAZ_ALGAR, bubbleDown({ ["timeline"] = { ADDED_11_0_2 } }, {
	m(DORNOGAL, {
		n(PROFESSIONS, {
			n(QUESTS, {
				q(84260, {	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["groups"] = {
						i(228931),	-- Algari Enchanter's Satchel
						i(228932),	-- Algari Engineer's Satchel ?
						i(228933),	-- Algari Leatherworker's Satchel
						i(228916),	-- Algari Tailor's Satchel
						i(228919),	-- Satchel of Algari Herbs
						i(228920),	-- Satchel of Chitin
						i(228918),	-- Satchel of Leather
						i(228917),	-- Satchel of Ore
					},
				}),
				q(84288, {	-- Crafting Orders: Alchemy
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = ALCHEMY,
				}),
				q(84274, {	-- Crafting Orders: Blacksmithing
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = BLACKSMITHING,
				}),
				q(84285, {	-- Crafting Orders: Engineering
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = ENGINEERING,
				}),
				q(84287, {	-- Crafting Orders: Inscription
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = INSCRIPTION,
				}),
				q(84279, {	-- Crafting Orders: Jewelcrafting
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = JEWELCRAFTING,
				}),
				q(84280, {	-- Crafting Orders: Leatherworking
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = LEATHERWORKING,
				}),
				q(84281, {	-- Crafting Orders: Tailoring
					["sourceQuests"] = { 84260 },	-- Crafting to Order
					["provider"] = { "n", 219108 },	-- Roldira
					["coord"] = { 59.1, 55.8, DORNOGAL },
					["requireSkill"] = TAILORING,
				}),
			}),
			prof(ALCHEMY, {
				n(219092, {	-- Tarig <Alchemy Trainer>
					["coord"] = { 47.3, 70.4, DORNOGAL },
					["groups"] = TWW_ALCHEMY,
				}),
				n(219091, {	-- Grink <Alchemy Supplies>
					["coord"] = { 47.3, 70.8, DORNOGAL },
					["groups"] = {
						i(212754),	-- Crystalforged Cauldron
						i(210828),	-- Dilution Solution
						i(211806),	-- Gilded Vial+
					},
				}),
			}),
			prof(BLACKSMITHING, {
				n(223644, {	-- Darean <Blacksmithing Trainer>
					["coord"] = { 49.2, 63.6, DORNOGAL },
					["groups"] = TWW_BLACKSMITHING,
				}),
				n(223643, {	-- Borgos <Blacksmithing Supplies>
					["coord"] = { 48.8, 62.6, DORNOGAL },
					["groups"] = {
						i(226202),	-- Echoing Flux
					},
				}),
			}),
			prof(COOKING, {
				n(219104, {	-- Athodas <Cooking Trainer>
					["coord"] = { 44.2, 45.8, DORNOGAL },
					["groups"] = TWW_COOKING,
				}),
				n(219103, {	-- Kronzon <Cooking Supplies>
					["coord"] = { 43.6, 45.6, DORNOGAL },
					["groups"] = {
						i(222701),	-- Clumped Flour
						i(222697),	-- Coreway Dust
						i(222696),	-- Crunchy Peppers
						i(224762),	-- Delver's Waterskin
						i(222700),	-- Granulated Spices
						i(222699),	-- Khaz Algar Tomato
						i(222695),	-- Twined Herbs
					},
				}),
			}),
			prof(ENCHANTING, {
				n(219085, {	-- Nagad <Enchanting Trainer>
					["coord"] = { 52.9, 71.3, DORNOGAL },
					["groups"] = TWW_ENCHANTING,
				}),
				n(219086, {	-- Llande <Enchanting Supplies>
					["coord"] = { 52.3, 71.7, DORNOGAL },
					["groups"] = {
						i(227208),	-- Bismuth Rod
						i(220789, {	-- Nascent Gilded Harbinger Crest
							["cost"] = {{"c", GILDED_HARBINGER_CREST, 60}},
						}),
						i(220790, {	-- Nascent Runed Harbinger Crest
							["cost"] = {{"c", RUNED_HARBINGER_CREST, 45}},
						}),
						i(220788, {	-- Nascent Weathered Harbinger Crest
							["cost"] = {{"c", WEATHERED_HARBINGER_CREST, 30}},
						}),
					},
				}),
			}),
			prof(ENGINEERING, {
				n(219099, {	-- Machinist Arhdas <Engineering Trainer>
					["coord"] = { 49.2, 55.9, DORNOGAL },
					["groups"] = TWW_ENGINEERING,
				}),
				n(219098, {	-- Supply Foreman Drezmol <Engineering Supplies>
					["coord"] = { 49.2, 55.8, DORNOGAL },
					["groups"] = {
						i(228414),	-- Frayed Wiring
						i(228956),	-- Junk Bucket
						i(219150),	-- Pile of Rusted Scrap
						i(235037, {	-- Crumpled Schematic: Wormhole Generator: Undermine
							["timeline"] = { ADDED_11_1_0 },
						}),
					},
				}),
			}),
			prof(FISHING, {
				n(219106, {	-- Drokar <Fishing Trainer>
					["coord"] = { 50.5, 26.8, DORNOGAL },
					["groups"] = TWW_FISHING,
				}),
				n(219105, {	-- Hinodin <Fishing Supplies>
					["coord"] = { 50.6, 26.8, DORNOGAL },
					["groups"] = {
						i(228954),	-- Angler's Guide [Find Fish] (RECIPE!)
					},
				}),
			}),
			prof(HERBALISM, {
				n(219101, {	-- Akdan <Herbalism Trainer>
					["coord"] = { 44.8, 69.3, DORNOGAL },
					["groups"] = TWW_HERBALISM,
				}),
			}),
			prof(INSCRIPTION, {
				n(219090, {	-- Brrigan <Inscription Trainer>
					["coord"] = { 44.8, 70.9, DORNOGAL },
					["groups"] = TWW_INSCRIPTION,
				}),
				n(219089, {	-- Kardu <Inscription Supplies>
					["coord"] = { 48.6, 70.8, DORNOGAL },
					["groups"] = {
						i(226205),	-- Distilled Algari Freshwater
						i(226204),	-- Fresh Parchment
					},
				}),
			}),
			prof(JEWELCRAFTING, {
				n(219087, {	-- Makir <Jewelcrafting Trainer>
					["coord"] = { 49.5, 70.8, DORNOGAL },
					["groups"] = TWW_JEWELCRAFTING,
				}),
			}),
			prof(LEATHERWORKING, {
				n(219080, {	-- Marbb <Leatherworking Trainer>
					["coord"] = { 54.3, 58.4, DORNOGAL },
					["groups"] = TWW_LEATHERWORKING,
				}),
			}),
			prof(MINING, {
				n(219097, {	-- Tarib <Mining Trainer>
					["coord"] = { 52.6, 52.6, DORNOGAL },
					["groups"] = TWW_MINING,
				}),
			}),
			prof(SKINNING, {
				n(219083, {	-- Ginnad <Skinning Trainer>
					["coord"] = { 54.3, 57.4, DORNOGAL },
					["groups"] = TWW_SKINNING,
				}),
			}),
			prof(TAILORING, {
				n(219094, {	-- Kotag <Tailoring Trainer>
					["coord"] = { 54.7, 64.7, DORNOGAL },
					["groups"] = TWW_TAILORING,
				}),
			}),
		}),
	}),
})));
