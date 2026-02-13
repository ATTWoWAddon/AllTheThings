---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

local STABILIZED_DERIVATE = 242651;

root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.SILVERMOON_CITY, {
		n(PROFESSIONS, {
			n(243286, {	-- Lyrendal <Artisan's Consortium Quartermaster>
				["coord"] = { 45.0, 55.4, MAP.MIDNIGHT.SILVERMOON_CITY },
				["groups"] = {
					i(247499, {	-- Recipe: Haranir Preserving Agents (RECIPE!)
						["cost"] = { { "c", ARTISAN_ALCHEMISTS_MOXIE, 150 } },
					}),
					i(246671, {	-- Recipe: Sunsmoke Censer (RECIPE!)
						["cost"] = { { "c", ARTISAN_ALCHEMISTS_MOXIE, 150 } },
					}),
				},
			}),
			prof(ALCHEMY, {
				n(243357, {	-- Camberon <Alchemy Trainer>
					["coord"] = { 47.0, 52.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_ALCHEMY,
				}),
				n(243359, {	-- Melaris <Alchemy Supplies>
					["coord"] = { 47.0, 51.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(263997, {	-- Midnight Alchemist's Shop Sign (DECOR!)
							["sourceAchievement"] = 42788,	-- Alchemy at Midnight
						}),
						i(247811),	-- Oil of Heartwood
						i(240991),	-- Sunglass Vial+
					},
				}),
				n(247420, {	-- Camberon's Coaching Cauldron
					["coord"] = { 47.0, 51.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						r(1230892, {	-- Bouquet of Herbs
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
								{ "i", 243599, 12 },	-- 12x Eversinging Dust+
								{ "i", 236776,  6 },	-- 6x Argentleaf+
							},
						}),
						r(1230860, {	-- Draught of Rampant Abandon
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
							},
						}),
						r(1230872, {	-- Haranir Phial of Ingenuity
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
								{ "i", 236950, 6 },	-- 6x Mote of Primal Energy
							},
						}),
						r(1230869, {	-- Light's Potential
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
							},
						}),
						r(1230878, {	-- Flask of the Shattered Sun
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230877, {	-- Flask of the Blood Knights
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230865, {	-- Lightfused Mana Potion
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
							},
						}),
						r(1230876, {	-- Flask of the Magisters
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230862, {	-- Potion of Devoured Dreams
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
								{ "i", 236778, 8 },	-- 8x Mana Lily+
							},
						}),
						r(1230863, {	-- Potion of Zealotry
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 50 },
								{ "i", 236952, 8 },	-- 8x Mote of Pure Void
							},
						}),
						r(1230861, {	-- Primal Philosopher's Stone
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
							},
						}),
						r(1230893, {	-- School of Gems
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
								{ "i", 242554,  5 },	-- 5x Amani Lapis+
								{ "i", 242607,  5 },	-- 5x Harandar Peridot+
								{ "i", 238375, 12 },	-- 12x Fungalskin Pike
								{ "i", 238380,  8 },	-- 8x Null Voidfish
							},
						}),
						r(1230890, {	-- Transmute: Mote of Light
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
							},
						}),
						r(1230889, {	-- Transmute: Mote of Primal Energy
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
							},
						}),
						r(1230888, {	-- Transmute: Mote of Pure Void
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_ALCHEMISTS_MOXIE, 25 },
							},
						}),
					},
				}),
			}),
			prof(BLACKSMITHING, {
				n(241450, {	-- Bemarrin <Blacksmithing Trainer>
					["coord"] = { 43.7, 51.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_BLACKSMITHING,
				}),
				n(241451, {	-- Eriden <Blacksmithing Supplies>
					["coord"] = { 43.6, 51.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(243060),	-- Luminant Flux
						i(263998, {	-- Midnight Blacksmith's Shop Sign (DECOR!)
							["sourceAchievement"] = 42792,	-- Blacksmithing at Midnight
						}),
					},
				}),
			}),
			--[[
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
			--]]
			prof(ENCHANTING, {
				n(254051, {	-- Jennara <Proprietress of Positively Jenchanting>
					["coord"] = { 39.5, 51.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_JENNARA_ENCHANTING,
				}),
				n(243349, {	-- Dolothos <Enchanting Trainer>
					["coord"] = { 48.0, 53.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_ENCHANTING,
				}),
				n(243350, {	-- Lyna <Enchanting Supplies>
					["coord"] = { 47.9, 53.5, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264000, {	-- Midnight Enchanter's Shop Sign (DECOR!)
							["sourceAchievement"] = 42787,	-- Enchanting at Midnight
						}),
						i(244174),	-- Refulgent Copper Rod
					},
				}),
			}),
			--[[
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
			--]]
		}),
	}),
}));
