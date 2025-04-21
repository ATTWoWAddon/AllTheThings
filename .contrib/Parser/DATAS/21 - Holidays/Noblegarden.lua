--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
NOBLEGARDEN_HEADER = createHeader({
	readable = "Noblegarden",
	constant = "NOBLEGARDEN_HEADER",
	icon = [[~_.asset("Holiday_noblegarden")]],
	eventID = EVENTS.NOBLEGARDEN,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		4, 17, 0, 0,	-- 04/17 at 12:00 AM
		4, 18, 0, 0		-- 04/18 at 12:00 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(159),
		-- #else
		en = "Noblegarden",
		-- #endif
	},
});
local NOBLEGARDEN_VENDOR_GROUPS = {
	-- Appearances
	i(74282, {	-- Black Spring Circlet
		["timeline"] = { ADDED_4_3_0 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(151804, {	-- Black Tuxedo Pants
		["timeline"] = { ADDED_7_2_5 },
		["cost"] = { { "i", 44791, 25 } },	-- 25x Noblegarden Chocolate
	}),
	i(164922, {	-- Blue Spring Circlet
		["timeline"] = { ADDED_8_1_5 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(164923, {	-- Brown Spring Circlet
		["timeline"] = { ADDED_8_1_5 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(151806, {	-- Elegant Dress
		["timeline"] = { ADDED_7_2_5 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(213073, {	-- Faded Floral Staff
		["timeline"] = { ADDED_11_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(213076, {	-- Orchid Bow-quet
		["timeline"] = { ADDED_11_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(213064, {	-- Paradise's Violet Axe
		["timeline"] = { ADDED_11_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(74283, {	-- Pink Spring Circlet
		["timeline"] = { ADDED_4_3_0 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(213070, {	-- Pristine Floral Stalk
		["timeline"] = { ADDED_11_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(44803, {	-- Spring Circlet
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(44800, {	-- Spring Robes
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(6833, {	-- White Tuxedo Shirt
		["cost"] = { { "i", 44791, 25 } },	-- 25x Noblegarden Chocolate
	}),
	i(213067, {	-- Violet Floral Edge
		["timeline"] = { ADDED_11_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(164924, {	-- Yellow Spring Circlet
		["timeline"] = { ADDED_8_1_5 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	-- Mounts
	i(72145, {	-- Swift Springstrider (MOUNT!)
		["timeline"] = { ADDED_4_3_0 },
		["cost"] = { { "i", 44791, 500 } },	-- 500x Noblegarden Chocolate
	}),
	-- Other
	i(44792, {	-- Blossoming Branch
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 10 } },	-- 10x Noblegarden Chocolate
	}),
	i(45073, {	-- Spring Flowers
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
	i(44793, {	-- Tome of Polymorph: Rabbit (CI!)
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	-- Pets
	i(212786, {	-- Lovely Duckling (PET!)
		["timeline"] = { ADDED_10_2_6 },
		["cost"] = { { "i", 44791, 250 } },	-- 250x Noblegarden Chocolate
	}),
	i(141532, {	-- Noblegarden Bunny (PET!)
		["timeline"] = { ADDED_7_1_0 },
		["cost"] = { { "i", 44791, 200 } },	-- 200x Noblegarden Chocolate
	}),
	i(116258, {	-- Mystical Spring Bouquet (PET!)
		["timeline"] = { ADDED_6_0_2 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	i(44794, {	-- Spring Rabbit (PET!)
		["timeline"] = { ADDED_3_1_0 },
		["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
	}),
	-- Toys
	i(204675, {	-- A Drake's Big Basket of Eggs (TOY!)
		["timeline"] = { ADDED_10_0_7 },
		["cost"] = { { "i", 44791, 200 } },	-- 200x Noblegarden Chocolate
	}),
	i(165802, {	-- Noble Gardener's Hearthstone (TOY!)
		["timeline"] = { ADDED_8_1_5 },
		["cost"] = { { "i", 44791, 250 } },	-- 250x Noblegarden Chocolate
	}),
	i(188694, {	-- Spring Florist's Pouch (TOY!)
		["timeline"] = { ADDED_9_1_5 },
		["cost"] = { { "i", 44791, 50 } },	-- 50x Noblegarden Chocolate
	}),
};
root(ROOTS.Holidays, applyevent(EVENTS.NOBLEGARDEN, n(NOBLEGARDEN_HEADER, {
	{	-- Brightly Colored Egg
		-- #if AFTER WRATH
		["itemID"] = 45072,	-- Brightly Colored Egg
		["provider"] = { "o", 113768 },	-- Brightly Colored Egg
		-- #else
		["objectID"] = 113768,	-- Brightly Colored Egg
		-- #endif
		["description"] = "These eggs can be found spread out in all of the starting zones.",
		["maps"] = {
			DUROTAR,
			MULGORE,
			TIRISFAL_GLADES,
			DUN_MOROGH,
			ELWYNN_FOREST,
			TELDRASSIL,
			-- #if AFTER TBC
			EVERSONG_WOODS,
			AZUREMYST_ISLE,
			-- #endif
		},
		["groups"] = {
			i(44791, {	-- Noblegarden Chocolate
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(44806, {	-- Brightly Colored Shell Fragment
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(44792, {	-- Blossoming Branch
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(44803, {	-- Spring Circlet
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(45073, {	-- Spring Flowers
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(44794, {	-- Spring Rabbit (PET!)
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(44800, {	-- Spring Robes
				["timeline"] = { ADDED_3_1_0 },
			}),
			i(72145, {	-- Swift Springstrider (MOUNT!)
				["timeline"] = { ADDED_4_3_0 },
			}),

			i(19028, {	-- Elegant Dress
				["timeline"] = { REMOVED_7_2_5 },
			}),
			i(6835, {	-- Black Tuxedo Pants
				["timeline"] = { REMOVED_7_2_5 },
			}),
			i(6833),	-- White Tuxedo Shirt
			-- #if BEFORE 3.1.0.9733
			i(7807),	-- Candy Bar
			i(7808),	-- Chocolate Square
			i(7806),	-- Lollipop
			-- #endif
		},
	},
	-- #if AFTER 3.1.0.9733
	n(ACHIEVEMENTS, {
		ach(2797, {	-- Noble Gardener (A)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				2676,	-- I Found One
				2418,	-- Chocoholic
				2436,	-- Desert Rose
				2576,	-- Blushing Bride
				2416,	-- Hard Boiled
				2419,	-- Spring Fling (A)
				2421,	-- Noble Garden (A)
				2422,	-- Shake Your Bunny-Maker
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(122),	-- <Name> the Noble
			},
		}),
		ach(2798, {	-- Noble Gardener (H)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				2676,	-- I Found One
				2418,	-- Chocoholic
				2436,	-- Desert Rose
				2576,	-- Blushing Bride
				2416,	-- Hard Boiled
				-- #if AFTER MOP
				2419,	-- Spring Fling (A)
				-- #endif
				2497,	-- Spring Fling (H)
				-- #if AFTER MOP
				2421,	-- Noble Garden (A)
				-- #endif
				2420,	-- Noble Garden (H)
				2422,	-- Shake Your Bunny-Maker
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			["races"] = HORDE_ONLY,
			-- #endif
			["groups"] = {
				title(122),	-- <Name> the Noble
			},
		}),
		ach(2576, {	-- Blushing Bride
			["cost"] = {
				-- #if AFTER 7.2.5.24163
				{ "i", 151806, 1 },	-- Elegant Dress (new)
				{ "i", 6833, 1 },	-- White Tuxedo Shirt
				{ "i", 151804, 1 },	-- Black Tuxedo Pants (new)
				-- #else
				{ "i", 19028, 1 },	-- Elegant Dress
				{ "i", 6833, 1 },	-- White Tuxedo Shirt
				{ "i", 6835, 1 },	-- Black Tuxedo Pants
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(2417, {	-- Chocolate Lover
			["cost"] = { { "i", 44791, 25 } },	-- 25 Noblegarden Chocolate
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 25,
		}),
		ach(2418, {	-- Chocoholic
			["cost"] = { { "i", 44791, 100 } },	-- 100x Noblegarden Chocolate
			["timeline"] = { ADDED_3_0_2 },
			["rank"] = 100,
		}),
		ach(2436, {	-- Desert Rose
			["providers"] = {
				-- #if AFTER 9.1.5.40871
				{ "i", 188694 },	-- Spring Florist's Pouch
				-- #else
				{ "i", 44800 },	-- Spring Robes
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
			["groups"] = {
				crit(9139, {	-- Desolace
					["maps"] = { DESOLACE },
				}),
				crit(9142, {	-- Silithus
					["maps"] = { SILITHUS },
				}),
				crit(9140, {	-- Tanaris
					["maps"] = { TANARIS },
				}),
				crit(9138, {	-- The Badlands
					["maps"] = { BADLANDS },
				}),
				crit(9141, {	-- Thousand Needles
					["maps"] = { THOUSAND_NEEDLES },
				}),
			},
		}),
		ach(249, {	-- Dressed for the Occasion
			["providers"] = {
				-- #if AFTER 7.2.5.24163
				{ "i", 151806 },	-- Elegant Dress (new)
				-- #endif
				{ "i", 19028 },	-- Elegant Dress
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(2416, {	-- Hard Boiled
			["description"] = "Use the Blossoming Branch on someone else and hopefully they return the favor.",
			["provider"] = { "i", 44792 },	-- Blossoming Branch
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { UNGORO_CRATER },
		}),
		ach(2676, {	-- I Found One!
			["provider"] = { "i", 45072 },	-- Brightly Colored Egg
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(2419, {	-- Spring Fling (A)
			["provider"] = { "n", 32791 },	-- Spring Rabbit
			["timeline"] = { ADDED_3_0_2 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = bubbleDown({ ["races"] = ALLIANCE_ONLY }, {
				crit(9121, {	-- Azure Watch
					["maps"] = { AZUREMYST_ISLE },
				}),
				crit(9199, {	-- Dolanaar
					["maps"] = { TELDRASSIL },
				}),
				crit(9200, {	-- Goldshire
					["maps"] = { ELWYNN_FOREST },
				}),
				crit(9201, {	-- Kharanos
					["maps"] = { DUN_MOROGH },
				}),
			}),
		}),
		ach(2497, {	-- Spring Fling (H)
			["provider"] = { "n", 32791 },	-- Spring Rabbit
			["timeline"] = { ADDED_3_0_2 },
			["races"] = HORDE_ONLY,
			["groups"] = bubbleDown({ ["races"] = HORDE_ONLY }, {
				crit(9202, {	-- Bloodhoof Village
					["maps"] = { MULGORE },	-- Bloodhoof Village
				}),
				crit(9203, {	-- Brill
					["maps"] = { TIRISFAL_GLADES },
				}),
				crit(9204, {	-- Falconwing Square
					["maps"] = { EVERSONG_WOODS },
				}),
				crit(9205, {	-- Razor Hill
					["maps"] = { DUROTAR },
				}),
			}),
		}),
		ach(2421, {	-- Noble Garden (A)
			["provider"] = { "i", 44818 },	-- Noblegarden Egg
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(2420, {	-- Noble Garden (H)
			["provider"] = { "i", 44818 },	-- Noblegarden Egg
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { SILVERMOON_CITY },
			["races"] = HORDE_ONLY,
		}),
		ach(20209, {	-- Quacked Killer
			["timeline"] = { ADDED_10_2_6 },
		}),
		ach(2422, {	-- Shake Your Bunny-Maker
			["provider"] = { "i", 45073 },	-- Spring Flowers
			["timeline"] = { ADDED_3_0_2 },
			["sym"] = {{ "achievement_criteria" }},
		}),
		ach(248, {	-- Sunday's Finest
			["cost"] = {
				{ "i", 6833, 1 },	-- White Tuxedo Shirt
				-- #if AFTER 7.2.5.24163
				{ "i", 151804, 1 },	-- Black Tuxedo Pants (new)
				-- #else
				{ "i", 6835, 1 },	-- Black Tuxedo Pants
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
	}),
	n(RARES, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_6 }, }, {
		n(213665, {	-- Daetan Swiftplume
			["providers"] = {
				{ "n", 216836 },	-- Golden Egg
				{ "n", 219936 },	-- [DNT] Vignette
			},
			["description"] = "Drag the large Golden Egg to the Large Duck Nest to spawn the boss.",
			["coord"] = { 30.3, 91.4, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(210594, {	-- Noblegarden Trinket (QI!)
					["races"] = ALLIANCE_ONLY,
				}),
			},
		}),
		n(218738, {	-- Daetan Swiftplume
			["providers"] = {
				{ "n", 218736 },	-- Golden Egg
				{ "n", 219936 },	-- [DNT] Vignette
			},
			["description"] = "Drag the large Golden Egg to the Large Duck Nest to spawn the boss.",
			["coord"] = { 44.4, 35.1, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(216932, {	-- Noblegarden Trinket (QI!)
					["races"] = HORDE_ONLY,
				}),
			},
		}),
		n(216836, {	-- Golden Egg
			["description"] = "A large golden egg will spawn somewhere nearby that you have to drag to the nest. It is about the same size as a player character and very easy to see. Multiple people can help drag the egg (more people makes it go faster). It works kinda similar to Tuskarr harpoon fishing.",
			["coords"] = {
				{ 31, 85, ELWYNN_FOREST },
				{ 34.91, 87.96, ELWYNN_FOREST },
				{ 28.8, 86.68, ELWYNN_FOREST },
				{ 34.83, 81.68, ELWYNN_FOREST },
				{ 34.5, 80.7, ELWYNN_FOREST },
			},
		}),
		n(218736, {	-- Golden Egg
			["description"] = "A large golden egg will spawn somewhere nearby that you have to drag to the nest. It is about the same size as a player character and very easy to see. Multiple people can help drag the egg (more people makes it go faster). It works kinda similar to Tuskarr harpoon fishing.",
			["coords"] = {
				{ 44.8, 32.0, DUROTAR },
				{ 46.2, 33.4, DUROTAR },	-- confirmed starting point
				{ 42.6, 37.8, DUROTAR },
				{ 45.2, 39.6, DUROTAR },
				{ 46.0, 37.2, DUROTAR },	-- confirmed starting point
			},
		}),
	})),
	n(QUESTS, {
		q(74120, {	-- A Spring Awakening (A)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coord"] = { 31.6, 63.1, VALDRAKKEN },
			["timeline"] = { ADDED_10_0_7, REMOVED_10_2_6 },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(74875, {	-- A Spring Awakening (H)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coord"] = { 31.6, 63.1, VALDRAKKEN },
			["timeline"] = { ADDED_10_0_7, REMOVED_10_2_6 },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(13502, {	-- A Tisket, a Tasket, a Noblegarden Basket (A)
			["qg"] = 32836,	-- Noblegarden Vendor
			["coords"] = {
				{ 49.01, 51.19, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				-- #if AFTER CATA
				{ 55.72, 51.31, TELDRASSIL },	-- Dolanaar
				{ 43.03, 65.32, ELWYNN_FOREST },	-- Goldshire
				{ 54.11, 50.81, DUN_MOROGH },	-- Kharanos
				-- #else
				{ 56.0, 58.7, TELDRASSIL },	-- Dolanaar
				{ 43.0, 65.3, ELWYNN_FOREST },	-- Goldshire
				{ 47.0, 52.5, DUN_MOROGH },	-- Kharanos
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/10 Noblegarden Chocolate
					["provider"] = { "i", 44791 },	-- Noblegarden Chocolate
					["cost"] = { { "i", 44802, 1 } },	-- Borrowed Egg Basket
				}),
				i(44802, {	-- Borrowed Egg Basket
					["timeline"] = { ADDED_3_1_0 },
				}),
				i(188698, {	-- Eagger Basket (TOY!)
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(45067, {	-- Egg Basket
					["timeline"] = { ADDED_3_1_0 },
				}),
			},
		}),
		q(13503, {	-- A Tisket, a Tasket, a Noblegarden Basket (H)
			["qg"] = 32837,	-- Noblegarden Merchant
			["coords"] = {
				-- #if AFTER CATA
				{ 47.11, 59.89, MULGORE },	-- Bloodhoof Village
				{ 61.35, 52.98, TIRISFAL_GLADES },	-- Brill
				{ 47.64, 47.31, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.91, 41.87, DUROTAR },	-- Razor Hill
				-- #else
				{ 47.0, 60.4, MULGORE },	-- Bloodhoof Village
				{ 61.3, 52.9, TIRISFAL_GLADES },	-- Brill
				{ 47.6, 47.3, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.9, 41.9, DUROTAR },	-- Razor Hill
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/10 Noblegarden Chocolate
					["provider"] = { "i", 44791 },	-- Noblegarden Chocolate
					["cost"] = { { "i", 44802, 1 } },	-- Borrowed Egg Basket
				}),
				i(44802, {	-- Borrowed Egg Basket
					["timeline"] = { ADDED_3_1_0 },
				}),
				i(188698, {	-- Eagger Basket (TOY!)
					["timeline"] = { ADDED_9_1_5 },
				}),
				i(45067, {	-- Egg Basket
					["timeline"] = { ADDED_3_1_0 },
				}),
			},
		}),
		q(13484, {	-- Spring Gathers (A)
			["qgs"] = {
				19171,	-- Draenei Commoner
				19148,	-- Dwarf Commoner
				20102,	-- Goblin Commoner
				19172,	-- Gnome Commoner
				18927,	-- Human Commoner
				19173,	-- Night Elf Commoner
			},
			["maps"] = {
				NORTHREND_THE_UNDERBELLY,
				NORTHREND_DALARAN,
				DARNASSUS,
				IRONFORGE,
				NETHERSTORM,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				NORTHERN_BARRENS,
				-- #else
				STRANGLETHORN_VALE,
				THE_BARRENS,
				-- #endif
				SHATTRATH_CITY,
				STORMWIND_CITY,
				TANARIS,
				THE_EXODAR,
				THE_STORM_PEAKS,
				WINTERSPRING,
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(13483, {	-- Spring Gathers (H)
			["qgs"] = {
				19169,	-- Blood Elf Commoner
				19178,	-- Forsaken Commoner
				20102,	-- Goblin Commoner
				19175,	-- Orc Commoner
				19176,	-- Tauren Commoner
				19177,	-- Troll Commoner
			},
			["maps"] = {
				NORTHREND_THE_UNDERBELLY,
				NORTHREND_DALARAN,
				ORGRIMMAR,
				NETHERSTORM,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				NORTHERN_BARRENS,
				-- #else
				STRANGLETHORN_VALE,
				THE_BARRENS,
				-- #endif
				SHATTRATH_CITY,
				SILVERMOON_CITY,
				TANARIS,
				THE_STORM_PEAKS,
				THUNDER_BLUFF,
				UNDERCITY,
				WINTERSPRING,
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(13480, {	-- The Great Egg Hunt (A)
			["qg"] = 32799,	-- Spring Collector
			["sourceQuests"] = {
				13484,	-- Spring Gathers (A)
				-- #if AFTER DF
				74120,	-- A Spring Awakening (A)
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 49.07, 51.25, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				{ 55.59, 51.36, TELDRASSIL },	-- Dolanaar
				{ 42.98, 65.40, ELWYNN_FOREST },	-- Goldshire
				{ 53.99, 50.70, DUN_MOROGH },	-- Kharanos
				-- #else
				{ 48.9, 50.0, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				{ 55.9, 58.8, TELDRASSIL },	-- Dolanaar
				{ 42.9, 65.4, ELWYNN_FOREST },	-- Goldshire
				{ 46.9, 52.4, DUN_MOROGH },	-- Kharanos
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- 0/20 Brightly Colored Shell Fragment
					["provider"] = { "i", 44806 },	-- Brightly Colored Shell Fragment
				}),
				i(44792, {	-- Blossoming Branch
					["timeline"] = { ADDED_3_1_0 },
				}),
			},
		}),
		q(13479, {	-- The Great Egg Hunt (H)
			["qg"] = 32798,	-- Spring Gatherer
			["sourceQuests"] = {
				13483,	-- Spring Gathers (H)
				-- #if AFTER DF
				74875,	-- A Spring Awakening (H)
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 46.92, 59.53, MULGORE },	-- Bloodhoof Village
				{ 61.63, 53.12, TIRISFAL_GLADES },	-- Brill
				{ 47.77, 47.12, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.82, 42.06, DUROTAR },	-- Razor Hill
				-- #else
				{ 46.8, 60.3, MULGORE },	-- Bloodhoof Village
				{ 61.7, 53.2, TIRISFAL_GLADES },	-- Brill
				{ 47.8, 47.1, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.8, 42.1, DUROTAR },	-- Razor Hill
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- 0/20 Brightly Colored Shell Fragment
					["provider"] = { "i", 44806 },	-- Brightly Colored Shell Fragment
				}),
				i(44792, {	-- Blossoming Branch
					["timeline"] = { ADDED_3_1_0 },
				}),
			},
		}),
	}),
	-----------------
	-- 2024 Update --
	-----------------
	n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_10_2_6 }, }, {
		q(79134, {	-- A Spring Awakening (A)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coord"] = { 31.6, 63.1, VALDRAKKEN },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(79136, {	-- A Spring Awakening (H)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coord"] = { 31.6, 63.1, VALDRAKKEN },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(79322, {	-- What the Duck? (A)
			["qg"] = 211646,	-- Zinnia Brooks
			["coord"] = { 42.0, 65.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				objective(1, {	-- 0/10 Ducks Scared
					["provider"] = { "i", 210558 },	-- Horn of Honking (QI!)
					["cr"] = 217725,	-- Furious Duck
				}),
			},
		}),
		q(79575, {	-- What the Duck? (H)
			["qg"] = 217125,	-- Sylnaria Fareflame
			["coord"] = { 52.6, 41.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				objective(1, {	-- 0/10 Ducks Scared
					["provider"] = { "i", 216487 },	-- Horn of Honking (QI!)
					["cr"] = 217725,	-- Furious Duck
				}),
			},
		}),
		q(79323, {	-- A Fowl Concoction (A)
			["qg"] = 211646,	-- Zinnia Brooks
			["sourceQuest"] = 79322,	-- What the Duck? (A)
			["coord"] = { 42.0, 65.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79576, {	-- A Fowl Concoction (H)
			["qg"] = 217125,	-- Sylnaria Fareflame
			["sourceQuest"] = 79575,	-- What the Duck? (H)
			["coord"] = { 52.6, 41.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79330, {	-- Duck Tales (A)
			["qg"] = 216129,	-- Emmery Fiske
			["sourceQuest"] = 79323,	-- A Fowl Concoction (A)
			["coord"] = { 42.0, 64.9, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(212608),	-- Duck Potion (QI!)
			},
		}),
		q(79577, {	-- Duck Tales (H)
			["qg"] = 217147,	-- Tethris Dewgazer
			["sourceQuest"] = 79576,	-- A Fowl Concoction (H)
			["coord"] = { 52.6, 41.1, DUROTAR },
			["races"] = HORDE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(216488),	-- Duck Potion (QI!)
			},
		}),
		q(79331, {	-- Just a Waddle Away (A)
			["qg"] = 211646,	-- Zinnia Brooks
			["sourceQuest"] = 79330,	-- Duck Tales (A)
			["coord"] = { 42.0, 65.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(216881),	-- Duck Disguiser (TOY!)
				i(216890),	-- Black Duck Disguise (CI!)
				i(216897),	-- Brown Duck Disguise (CI!)
				i(216898),	-- Mallard Duck Disguise (CI!)
				i(216900),	-- Pink Duck Disguise (CI!)
				i(216901),	-- White Duck Disguise (CI!)
				i(216902),	-- Yellow Duck Disguise (CI!)
				i(212608),	-- Duck Potion (QI!)
				o(420195, {	-- Golden Egg Heirloom
					i(212643),	-- Golden Egg Heirloom (QI!)
				}),
			},
		}),
		q(79578, {	-- Just a Waddle Away (H)
			["qg"] = 217125,	-- Sylnaria Fareflame
			["sourceQuest"] = 79577,	-- Duck Tales (H)
			["coord"] = { 52.6, 41.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(216881),	-- Duck Disguiser (TOY!)
				i(216890),	-- Black Duck Disguise (CI!)
				i(216897),	-- Brown Duck Disguise (CI!)
				i(216898),	-- Mallard Duck Disguise (CI!)
				i(216900),	-- Pink Duck Disguise (CI!)
				i(216901),	-- White Duck Disguise (CI!)
				i(216902),	-- Yellow Duck Disguise (CI!)
				i(216488),	-- Duck Potion (QI!)
				o(424098, {	-- Golden Egg Heirloom
					i(216489),	-- Golden Egg Heirloom (QI!)
				}),
			},
		}),
		q(78274, {	-- Quacking Down (A)
			["qg"] = 211646,	-- Zinnia Brooks
			["sourceQuest"] = 79331,	-- Just a Waddle Away (A)
			["coord"] = { 42.0, 65.0, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79135, {	-- Quacking Down (H)
			["qg"] = 217125,	-- Sylnaria Fareflame
			["sourceQuest"] = 79578,	-- Just a Waddle Away (H)
			["coord"] = { 52.6, 41.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(73192, {	-- Feathered Fiend (A)
			["provider"] = { "i", 210594 },	-- Noblegarden Trinket (QI!)
			["maps"] = ELWYNN_FOREST,
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(216874, {	-- Loot-Filled Basket
					hqt(82543, {	-- Increased Noble Flying Carpet Droprate (Daily Accountwide)
						["name"] = "Increased Noble Flying Carpet Droprate (Daily Accountwide)",
						["isDaily"] = true,
					}),
					i(212599),	-- Noble Flying Carpet (MOUNT!)
					i(212698),	-- Spring Reveler's Turquoise Attire
					i(212699),	-- Spring Reveler's Turquoise Belt
					i(212701),	-- Spring Reveler's Turquoise Boots
					i(212711),	-- Spring Reveler's Turquoise Dress
					i(212985),	-- Spring Reveler's Turquoise Pants
					i(212715),	-- Spring Reveler's Turquoise Sun Hat
				}),
				i(213428, {	-- Loot-Stuffed Basket (version for low levels)
					["sym"] = {{"select","itemID",
						212698,	-- Spring Reveler's Turquoise Attire
						212699,	-- Spring Reveler's Turquoise Belt
						212701,	-- Spring Reveler's Turquoise Boots
						212711,	-- Spring Reveler's Turquoise Dress
						212985,	-- Spring Reveler's Turquoise Pants
						212715,	-- Spring Reveler's Turquoise Sun Hat
					}},
				}),
			},
		}),
		q(79558, {	-- Feathered Fiend (H)
			["provider"] = { "i", 216932 },	-- Noblegarden Trinket (QI!)
			["maps"] = DUROTAR,
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["_drop"] = { "g" },	-- Drop Brightly Colored Egg
			["groups"] = {
				i(216874, {	-- Loot-Filled Basket
					hqt(82543, {	-- Increased Noble Flying Carpet Droprate (Daily Accountwide)
						["name"] = "Increased Noble Flying Carpet Droprate (Daily Accountwide)",
						["isDaily"] = true,
					}),
					i(212599),	-- Noble Flying Carpet (MOUNT!)
					i(212698),	-- Spring Reveler's Turquoise Attire
					i(212699),	-- Spring Reveler's Turquoise Belt
					i(212701),	-- Spring Reveler's Turquoise Boots
					i(212711),	-- Spring Reveler's Turquoise Dress
					i(212985),	-- Spring Reveler's Turquoise Pants
					i(212715),	-- Spring Reveler's Turquoise Sun Hat
				}),
				i(213428, {	-- Loot-Stuffed Basket (version for low levels)
					["sym"] = {{"select","itemID",
						212698,	-- Spring Reveler's Turquoise Attire
						212699,	-- Spring Reveler's Turquoise Belt
						212701,	-- Spring Reveler's Turquoise Boots
						212711,	-- Spring Reveler's Turquoise Dress
						212985,	-- Spring Reveler's Turquoise Pants
						212715,	-- Spring Reveler's Turquoise Sun Hat
					}},
				}),
			},
		}),
	})),
	n(VENDORS, {
		n(32837, {	-- Noblegarden Merchant
			["coords"] = {
				-- #if AFTER CATA
				{ 47.11, 59.89, MULGORE },	-- Bloodhoof Village
				{ 61.35, 52.98, TIRISFAL_GLADES },	-- Brill
				{ 47.64, 47.31, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.91, 41.87, DUROTAR },	-- Razor Hill
				-- #else
				{ 47.0, 60.4, MULGORE },	-- Bloodhoof Village
				{ 61.3, 52.9, TIRISFAL_GLADES },	-- Brill
				{ 47.6, 47.3, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.9, 41.9, DUROTAR },	-- Razor Hill
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = HORDE_ONLY,
			["groups"] = NOBLEGARDEN_VENDOR_GROUPS,
		}),
		n(32836, {	-- Noblegarden Vendor
			["coords"] = {
				{ 49.01, 51.19, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				-- #if AFTER CATA
				{ 55.72, 51.31, TELDRASSIL },	-- Dolanaar
				{ 43.03, 65.32, ELWYNN_FOREST },	-- Goldshire
				{ 54.11, 50.81, DUN_MOROGH },	-- Kharanos
				-- #else
				{ 56.0, 58.7, TELDRASSIL },	-- Dolanaar
				{ 43.0, 65.3, ELWYNN_FOREST },	-- Goldshire
				{ 47.0, 52.5, DUN_MOROGH },	-- Kharanos
				-- #endif
			},
			["timeline"] = { ADDED_3_1_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = NOBLEGARDEN_VENDOR_GROUPS,
		}),
	}),
	-- #endif
})));