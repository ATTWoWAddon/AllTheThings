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
					filter(RECIPES, {
						prof(ALCHEMY, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.ALCHEMY, 150 } } }, {
							i(247499),	-- Recipe: Haranir Preserving Agents (RECIPE!)
							i(246671),	-- Recipe: Sunsmoke Censer (RECIPE!)
						})),
						prof(BLACKSMITHING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.BLACKSMITHING, 150 } } }, {
							i(267281),	-- Plans: Blood Knight's Mercy (RECIPE!)
							i(267282),	-- Plans: Blood Knight's Warblade (RECIPE!)
							i(267284),	-- Plans: Bloomforged Claw (RECIPE!)
							i(267285),	-- Plans: Magister's Cleaver (RECIPE!)
							i(267286),	-- Plans: Magister's Mana Sword (RECIPE!)
							i(267287),	-- Plans: Magister's Ritual Knife (RECIPE!)
							i(258519),	-- Plans: Magister's Valediction (RECIPE!)
							i(265536),	-- Plans: Masterwork Crafting Hammer (RECIPE!)
							i(259237),	-- Plans: Sunforged Blacksmith's Hammer (RECIPE!)
							i(259231),	-- Plans: Sunforged Blacksmith's Toolbox (RECIPE!)
							i(259318),	-- Plans: Sunforged Leatherworker's Knife (RECIPE!)
							i(259233),	-- Plans: Sunforged Leatherworker's Toolset (RECIPE!)
							i(259235),	-- Plans: Sunforged Needle Set (RECIPE!)
							i(259319),	-- Plans: Sunforged Pickaxe (RECIPE!)
							i(259317),	-- Plans: Sunforged Sickle (RECIPE!)
							i(259322),	-- Plans: Sunforged Skinning Knife (RECIPE!)
							i(260246),	-- Plans: Thalassian Skeleton Key (RECIPE!)
						})),
						prof(ENCHANTING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.ENCHANTING, 150 } } }, {
							i(256742),	-- Formula: Runed Dazzling Thorium Rod (RECIPE!)
						})),
						prof(ENGINEERING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.ENGINEERING, 150 } } }, {
							i(259182),	-- Schematic: Giga-Gem Grippers (RECIPE!)
							i(259172),	-- Schematic: Head-Mounted Beam Bummer (RECIPE!)
							i(259176),	-- Schematic: Heavy-Duty Rock Assister (RECIPE!)
							i(259174),	-- Schematic: Rock Bonkin' Hardhat (RECIPE!)
							i(259178),	-- Schematic: Self-Sharpening Sin'dorei Snippers (RECIPE!)
							i(259180),	-- Schematic: Sin'dorei Reeler's Rod (RECIPE!)
							i(259184),	-- Schematic: Turbo-Junker's Multitool v9 (RECIPE!)
						})),
						prof(INSCRIPTION, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 150 } } }, {
							i(259206),	-- Technique: Gilded Alchemist's Mixing Rod (RECIPE!)
							i(258504),	-- Technique: Gilded Eversong Book (RECIPE!)
							i(259210),	-- Technique: Gilded Sin'dorei Quill (RECIPE!)
							i(259208),	-- Technique: Gilded Sin'dorei Rolling Pin (RECIPE!)
							i(267394),	-- Technique: Homely Sin'dorei Shelf (RECIPE!)
							i(258502),	-- Technique: Lively Songwriter's Quill (RECIPE!)
							i(258503),	-- Technique: Sin'dorei Opened Scroll (RECIPE!)
							i(258493),	-- Technique: Thalassian Missive of Crafting Speed (RECIPE!)
							i(258489),	-- Technique: Thalassian Missive of Deftness (RECIPE!)
							i(258492),	-- Technique: Thalassian Missive of Finesse (RECIPE!)
							i(258496),	-- Technique: Thalassian Missive of Ingenuity (RECIPE!)
							i(258494),	-- Technique: Thalassian Missive of Multicraft (RECIPE!)
							i(258491),	-- Technique: Thalassian Missive of Perception (RECIPE!)
							i(258495),	-- Technique: Thalassian Missive of Resourcefulness (RECIPE!)
						})),
						prof(JEWELCRAFTING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.JEWELCRAFTING, 150 } } }, {
							i(256701),	-- Design: Attuned Thalassian Rune-Prism (RECIPE!)
							i(256705),	-- Design: Flawless Text Scrutinizers (RECIPE!)
							i(256713),	-- Design: Improved Right-Handed Magnifying Glass (RECIPE!)
							i(256707),	-- Design: Mage-Eye Precision Loupes (RECIPE!)
							i(256699),	-- Design: Sin'dorei Enchanter's Crystal (RECIPE!)
							i(256709),	-- Design: Sin'dorei Jeweler's Loupes (RECIPE!)
							i(256703),	-- Design: Sin'dorei Scribe's Spectacles (RECIPE!)
							i(256711),	-- Design: Thalassian Scribe's Crystalline Lens (RECIPE!)
						})),
						prof(LEATHERWORKING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.LEATHERWORKING, 150 } } }, {
							i(256669),	-- Pattern: Eversong Hunter's Headcover (RECIPE!)
							i(256655),	-- Pattern: Sin'dorei Alchemist's Hat (RECIPE!)
							i(256660),	-- Pattern: Sin'dorei Engineer's Gloves (RECIPE!)
							i(256659),	-- Pattern: Sin'dorei Forgemaster's Cover (RECIPE!)
							i(256662),	-- Pattern: Sin'dorei Herbalist's Backpack (RECIPE!)
							i(256666),	-- Pattern: Sin'dorei Hunter's Pack (RECIPE!)
							i(256670),	-- Pattern: Sin'dorei Jeweler's Cover (RECIPE!)
							i(256665),	-- Pattern: Sin'dorei Leathershaper's Smock (RECIPE!)
							i(259371),	-- Pattern: Stitched Haranir Rug (RECIPE!)
							i(259368),	-- Pattern: Sturdy Haranir Chair (RECIPE!)
							i(256658),	-- Pattern: Thalassian Alchemist's Mixcap (RECIPE!)
							i(256667),	-- Pattern: Thalassian Gemshaper's Grand Cover (RECIPE!)
							i(256663),	-- Pattern: Thalassian Herbtender's Cradle (RECIPE!)
							i(256668),	-- Pattern: Thalassian Hideshaper's Regalia (RECIPE!)
							i(256657),	-- Pattern: Thalassian Ironbender's Regalia (RECIPE!)
							i(256661),	-- Pattern: Thalassian Scrapmaster's Gauntlets (RECIPE!)
							i(256664),	-- Pattern: Thalassian Wildseeker's Stridercap (RECIPE!)
							i(256671),	-- Pattern: Thalassian Wildseeker's Workbag (RECIPE!)
						})),
						prof(TAILORING, sharedData({ ["cost"] = { { "c", ARTISAN_MOXIE.TAILORING, 150 } } }, {
							i(258133),	-- Pattern: Chic Silvermoon Pillow (RECIPE!)
							i(258035),	-- Pattern: Elegant Artisan's Alchemy Coveralls (RECIPE!)
							i(258036),	-- Pattern: Elegant Artisan's Cooking Hat (RECIPE!)
							i(258037),	-- Pattern: Elegant Artisan's Enchanting Hat (RECIPE!)
							i(258038),	-- Pattern: Elegant Artisan's Fishing Hat (RECIPE!)
							i(258039),	-- Pattern: Elegant Artisan's Herbalism Hat (RECIPE!)
							i(258040),	-- Pattern: Elegant Artisan's Tailoring Robe (RECIPE!)
							i(258132),	-- Pattern: Plush Silvermoon Bed (RECIPE!)
							i(267053),	-- Pattern: Thalassian Alchemy Coveralls (RECIPE!)
							i(267055),	-- Pattern: Thalassian Chef's Chapeau (RECIPE!)
							i(267057),	-- Pattern: Thalassian Enchanter's Bonnet (RECIPE!)
							i(267061),	-- Pattern: Thalassian Herbalist's Cowl (RECIPE!)
							i(267063),	-- Pattern: Thalassian Tailor's Threads (RECIPE!)
						})),
					}),
					-- Bags
					i(260534, {	-- Master Alchemist's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.ALCHEMY, 600 } },
					}),
					i(260536, {	-- Master Blacksmith's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.BLACKSMITHING, 600 } },
					}),
					i(260537, {	-- Master Enchanter's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.ENCHANTING, 600 } },
					}),
					i(260538, {	-- Master Engineer's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.ENGINEERING, 600 } },
					}),
					i(260539, {	-- Master Herbalist's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.HERBALISM, 600 } },
					}),
					i(260542, {	-- Master Leatherworker's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.LEATHERWORKING, 600 } },
					}),
					i(260543, {	-- Master Miner's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.MINING, 600 } },
					}),
					i(260540, {	-- Master Scribe's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.INSCRIPTION, 600 } },
					}),
					i(260544, {	-- Master Skinner's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.SKINNING, 600 } },
					}),
					i(260541, {	-- Master Jewelcrafter's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.JEWELCRAFTING, 600 } },
					}),
					i(260545, {	-- Master Tailor's Surplus Reagents
						["cost"] = { { "c", ARTISAN_MOXIE.TAILORING, 600 } },
					}),
				},
			}),
			n(QUESTS, sharedData({
				["provider"] = { "n", 243283 },	-- Captain Flaresworn
				["coord"] = { 45.0, 55.2, MAP.MIDNIGHT.SILVERMOON_CITY },
			}, {
				q(93723, {	-- Crafters Needed
					["groups"] = {
						i(251324),	-- Basket of Eversong Herbs
						i(251321),	-- Collection of Eversong Minerals
						i(251322),	-- Thalassian Leatherworker's Duffel
						i(251327),	-- Thalassian Tailor's Tote Bag
						i(251326),	-- Thalassian Enchanter's Purse
					},
				}),
				q(93724, {	-- Crafting Orders: Alchemy
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = ALCHEMY,
				}),
				q(93726, {	-- Crafting Orders: Blacksmithing
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = BLACKSMITHING,
				}),
				q(93727, {	-- Crafting Orders: Engineering
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = ENGINEERING,
				}),
				q(93728, {	-- Crafting Orders: Inscription
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = INSCRIPTION,
				}),
				q(93729, {	-- Crafting Orders: Jewelcrafting
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = JEWELCRAFTING,
				}),
				q(93731, {	-- Crafting Orders: Leatherworking
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = LEATHERWORKING,
				}),
				q(93730, {	-- Crafting Orders: Tailoring
					["sourceQuests"] = { 93723 },	-- Crafters Needed
					["requireSkill"] = TAILORING,
				}),
			})),
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
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
								{ "i", 243599, 12 },	-- 12x Eversinging Dust+
								{ "i", 236776,  6 },	-- 6x Argentleaf+
							},
						}),
						r(1230860, {	-- Draught of Rampant Abandon
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
							},
						}),
						r(1230872, {	-- Haranir Phial of Ingenuity
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
								{ "i", 236950, 6 },	-- 6x Mote of Primal Energy
							},
						}),
						r(1230869, {	-- Light's Potential
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
							},
						}),
						r(1230878, {	-- Flask of the Shattered Sun
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230877, {	-- Flask of the Blood Knights
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230865, {	-- Lightfused Mana Potion
							["cost"] = { { "i", STABILIZED_DERIVATE, 3 } },
						}),
						r(1230876, {	-- Flask of the Magisters
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
								{ "i", 236780, 1 },	-- 1x Nocturnal Lotus
							},
						}),
						r(1230862, {	-- Potion of Devoured Dreams
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
								{ "i", 236778, 8 },	-- 8x Mana Lily+
							},
						}),
						r(1230863, {	-- Potion of Zealotry
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 5 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 50 },
								{ "i", 236952, 8 },	-- 8x Mote of Pure Void
							},
						}),
						r(1230861, {	-- Primal Philosopher's Stone
							["cost"] = { { "i", STABILIZED_DERIVATE, 5 } },
						}),
						r(1230893, {	-- School of Gems
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
								{ "i", 242554,  5 },	-- 5x Amani Lapis+
								{ "i", 242607,  5 },	-- 5x Harandar Peridot+
								{ "i", 238375, 12 },	-- 12x Fungalskin Pike
								{ "i", 238380,  8 },	-- 8x Null Voidfish
							},
						}),
						r(1230890, {	-- Transmute: Mote of Light
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
							},
						}),
						r(1230889, {	-- Transmute: Mote of Primal Energy
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
							},
						}),
						r(1230888, {	-- Transmute: Mote of Pure Void
							["cost"] = {
								{ "i", STABILIZED_DERIVATE, 3 },
								{ "c", ARTISAN_MOXIE.ALCHEMY, 25 },
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
						i(263998, {	-- Midnight Blacksmith's Shop Sign (DECOR!)
							["sourceAchievement"] = 42792,	-- Blacksmithing at Midnight
						}),
						i(243060),	-- Luminant Flux
					},
				}),
			}),
			prof(COOKING, {
				n(257913, {	-- Sylann <Cooking Trainer>
					["coord"] = { 56.4, 69.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_COOKING,
				}),
				n(257914, {	-- Quelis <Cooking Supplies>
					["coord"] = { 56.4, 69.9, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(263999, {	-- Midnight Cook's Shop Sign (DECOR!)
							["sourceAchievement"] = 42795,	-- Cooking at Midnight
						}),
						i(242643),	-- A Big Ol' Stick of Butter
						i(242641),	-- Cooking Spirits
						i(242644),	-- Mana-Wyrm Essence
						i(242646),	-- Pouch of Spices
						i(242645),	-- Ripened Vegetable Assortment
						i(242647),	-- Tavern Fixings
						i(242642),	-- Thalassian Herbs
					},
				}),
			}),
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
			prof(ENGINEERING, {
				n(241452, {	-- Danwe <Engineering Trainer>
					["coord"] = { 43.5, 54.1, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_ENGINEERING,
				}),
				n(241453, {	-- Yatheon <Engineering Supplies>
					["coord"] = { 43.5, 53.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264001, {	-- Midnight Engineer's Shop Sign (DECOR!)
							["sourceAchievement"] = 42798,	-- Engineering at Midnight
						}),
						i(253302),	-- Malleable Warframe
						i(253303),	-- Pile of Junk
					},
				}),
			}),
			--[[
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
			--]]
			prof(INSCRIPTION, {
				n(243553, {	-- Zantasia <Inscription Trainer>
					["coord"] = { 46.9, 51.7, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_INSCRIPTION,
				}),
				n(243555, {	-- Lelorian <Inscription Supplies>
					["coord"] = { 46.7, 51.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264004, {	-- Midnight Scribe's Shop Sign (DECOR!)
							["sourceAchievement"] = 42796,	-- Inscribing at Midnight
						}),
						i(245881),	-- Lexicologist's Vellum
						i(245882),	-- Thalassian Songwater
					},
				}),
			}),
			prof(JEWELCRAFTING, {
				n(243345, {	-- Amin <Jewelcrafting Trainer>
					["coord"] = { 48.2, 55.1, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_JEWELCRAFTING,
				}),
				n(243346, {	-- Gelanthis <Jewelcrafting Supplies>
					["coord"] = { 48.0, 55.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264005, {	-- Midnight Jewelcrafter's Shop Sign (DECOR!)
							["sourceAchievement"] = 42789,	-- Jewelcrafting at Midnight
						}),
					},
				}),
			}),
			prof(LEATHERWORKING, {
				n(243500, {	-- Talmar <Leatherworking Trainer>
					["coord"] = { 43.1, 55.8, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_LEATHERWORKING,
				}),
				n(243531, {	-- Zaralda <Leatherworking Supplies>
					["coord"] = { 43.1, 56.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264006, {	-- Midnight Leatherworker's Shop Sign (DECOR!)
							["sourceAchievement"] = 42786,	-- Leatherworking at Midnight
						}),
					},
				}),
			}),
			--[[
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
			--]]
			prof(TAILORING, {
				n(243352, {	-- Galana <Tailoring Trainer>
					["coord"] = { 48.2, 54.0, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = MID_TAILORING,
				}),
				n(243353, {	-- Deynna <Tailoring Supplies>
					["coord"] = { 48.2, 54.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					["groups"] = {
						i(264174, {	-- Midnight Tailor's Shop Sign (DECOR!)
							["sourceAchievement"] = 42794,	-- Tailoring at Midnight
						}),
						i(251691),	-- Embroidery Floss
						i(251665),	-- Silverleaf Thread
					},
				}),
			}),
		}),
	}),
}));
