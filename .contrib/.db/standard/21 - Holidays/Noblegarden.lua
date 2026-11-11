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
		1,	-- Recurring
		4, 17, 0, 0,	-- 04/17 at 12:00 AM
		4, 18, 0, 0		-- 04/18 at 12:00 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(159),
		-- #else
		en = "Noblegarden",
		de = "Nobelgartenfest",
		es = "Jardín noble",
		mx = "Jardín noble",
		fr = "Le Jardin des nobles",
		it = "Festa di Nobiluova",
		ko = "귀족의 정원",
		pt = "Jardinova",
		ru = "Сад чудес",
		cn = "复活节",
		tw = "貴族花園",
		-- #endif
	},
});

local NOBLEGARDEN_CHOCOLATE = 44791;

local function BrightlyColoredEgg(groups)
	local egg
	-- #IF ANYCLASSIC
	-- Classic uses either a raw item with an object provider, or pre-wotlk a direct object
	if true then
		egg = {
			-- #if AFTER WRATH
			itemID = 45072,	-- Brightly Colored Egg
			providers = {
				{ "o", 113768 },	-- Brightly Colored Egg
				{ "o", 113769 },	-- Brightly Colored Egg
				{ "o", 113770 },	-- Brightly Colored Egg
				{ "o", 113771 },	-- Brightly Colored Egg
			},
			-- #else
			objectID = 113768,	-- Brightly Colored Egg
			-- #endif
			groups = groups,
		}
	end
	-- #ELSE
	-- Retail has an Item looted from an Object. To be consistent with all other Items looted from Objects, we want to
	-- explicitly show this relationship
	if true then
		egg =
		o_repeated({	-- Brightly Colored Egg
			-- Objects
			o(113768),
			o(113769),
			o(113770),
			o(113771),

			-- Items
			i(45072, groups),	-- Brightly Colored Egg
		})
	end
	-- #ENDIF

	egg.description = "These eggs can be found spread out in all of the starting zones."
	egg.maps = {
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
		-- #if AFTER DF
		VALDRAKKEN,
		-- #endif
		-- #if AFTER TWW
		DORNOGAL,
		-- #endif
	}
	egg.timeline = { ADDED_3_1_0 }
	return egg
end

local NOBLEGARDEN_VENDOR_GROUPS = {
	-- Appearances
	i(74282, {	-- Black Spring Circlet
		timeline = { ADDED_4_3_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(151804, {	-- Black Tuxedo Pants
		timeline = { ADDED_7_2_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 25 } },
	}),
	i(164922, {	-- Blue Spring Circlet
		timeline = { ADDED_8_1_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(164923, {	-- Brown Spring Circlet
		timeline = { ADDED_8_1_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(151806, {	-- Elegant Dress
		timeline = { ADDED_7_2_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(213073, {	-- Faded Floral Staff
		timeline = { ADDED_11_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(213076, {	-- Orchid Bow-quet
		timeline = { ADDED_11_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(213064, {	-- Paradise's Violet Axe
		timeline = { ADDED_11_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(74283, {	-- Pink Spring Circlet
		timeline = { ADDED_4_3_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(213070, {	-- Pristine Floral Stalk
		timeline = { ADDED_11_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(44803, {	-- Spring Circlet
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(44800, {	-- Spring Robes
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(6833, { cost = { { "i", NOBLEGARDEN_CHOCOLATE, 25 } } }),	-- White Tuxedo Shirt
	i(213067, {	-- Violet Floral Edge
		timeline = { ADDED_11_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(164924, {	-- Yellow Spring Circlet
		timeline = { ADDED_8_1_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	-- Mounts
	i(72145, {	-- Swift Springstrider (MOUNT!)
		timeline = { ADDED_4_3_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 500 } },
	}),
	-- Other
	i(44792, {	-- Blossoming Branch
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 10 } },
	}),
	i(44818, {	-- Noblegarden Egg
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 5 } },
	}),
	i(45073, {	-- Spring Flowers
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
	i(44793, {	-- Tome of Polymorph: Rabbit (CI!)
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	-- Pets
	i(212786, {	-- Lovely Duckling (PET!)
		timeline = { ADDED_10_2_6 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 250 } },
	}),
	i(141532, {	-- Noblegarden Bunny (PET!)
		timeline = { ADDED_7_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 200 } },
	}),
	i(116258, {	-- Mystical Spring Bouquet (PET!)
		timeline = { ADDED_6_0_2 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	i(44794, {	-- Spring Rabbit (PET!)
		timeline = { ADDED_3_1_0 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
	}),
	-- Toys
	i(204675, {	-- A Drake's Big Basket of Eggs (TOY!)
		timeline = { ADDED_10_0_7 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 200 } },
	}),
	i(165802, {	-- Noble Gardener's Hearthstone (TOY!)
		timeline = { ADDED_8_1_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 250 } },
	}),
	i(188694, {	-- Spring Florist's Pouch (TOY!)
		timeline = { ADDED_9_1_5 },
		cost = { { "i", NOBLEGARDEN_CHOCOLATE, 50 } },
	}),
};

root(ROOTS.Holidays, applyevent(EVENTS.NOBLEGARDEN, n(NOBLEGARDEN_HEADER, {
	BrightlyColoredEgg({
		i(NOBLEGARDEN_CHOCOLATE, { timeline = { ADDED_3_1_0 } }),
		i(44806, { timeline = { ADDED_3_1_0 } }),	-- Brightly Colored Shell Fragment
		i(44792, { timeline = { ADDED_3_1_0 } }),	-- Blossoming Branch
		i(44803, { timeline = { ADDED_3_1_0 } }),	-- Spring Circlet
		i(45073, { timeline = { ADDED_3_1_0 } }),	-- Spring Flowers
		i(44794, { timeline = { ADDED_3_1_0 } }),	-- Spring Rabbit (PET!)
		i(44800, { timeline = { ADDED_3_1_0 } }),	-- Spring Robes
		i(72145, { timeline = { ADDED_4_3_0 } }),	-- Swift Springstrider (MOUNT!)
		i(19028, { timeline = { ADDED_1_3_0, REMOVED_7_2_5 } }),	-- Elegant Dress
		i(6835, { timeline = { ADDED_1_3_0, REMOVED_7_2_5 } }),	-- Black Tuxedo Pants
		i(6833, { timeline = { ADDED_1_3_0 } }),	-- White Tuxedo Shirt
		-- #if BEFORE 3.1.0.9733
		i(7807, { timeline = { ADDED_1_3_0 } }),	-- Candy Bar
		i(7808, { timeline = { ADDED_1_3_0 } }),	-- Chocolate Square
		i(7806, { timeline = { ADDED_1_3_0 } }),	-- Lollipop
		-- #endif
		i(155905, { timeline = { ADDED_7_3_5 } }),	-- Cursed Rabbit's Foot
	}),
	-- #if AFTER 3.1.0.9733
	n(ACHIEVEMENTS, {
		ach(2797, {	-- Noble Gardener (A)
			-- Meta Achievement should symlink the contained Achievements from Source
			sym = { { "meta_achievement",
				2676,	-- I Found One
				2418,	-- Chocoholic
				2436,	-- Desert Rose
				2576,	-- Blushing Bride
				2416,	-- Hard Boiled
				2419,	-- Spring Fling (A)
				2421,	-- Noble Garden (A)
				2422,	-- Shake Your Bunny-Maker
			} },
			timeline = { ADDED_3_0_2, REMOVED_5_0_4 },
			races = ALLIANCE_ONLY,
			groups = { title(122) },	-- <Name> the Noble
		}),
		ach(2798, {	-- Noble Gardener (H)
			-- Meta Achievement should symlink the contained Achievements from Source
			sym = { { "meta_achievement",
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
			} },
			timeline = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			races = HORDE_ONLY,
			-- #endif
			groups = { title(122) },	-- <Name> the Noble
		}),
		ach(2576, {	-- Blushing Bride
			cost = {
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
			timeline = { ADDED_3_0_2 },
		}),
		ach(2417, {	-- Chocolate Lover
			cost = { { "i", NOBLEGARDEN_CHOCOLATE, 25 } },
			timeline = { ADDED_3_0_2 },
			rank = 25,
		}),
		ach(2418, {	-- Chocoholic
			cost = { { "i", NOBLEGARDEN_CHOCOLATE, 100 } },
			timeline = { ADDED_3_0_2 },
			rank = 100,
		}),
		ach(2436, {	-- Desert Rose
			providers = {
				-- #if BEFORE 9.1.5.40871
				{ "i", 44800 },	-- Spring Robes
				-- #endif
			},
			timeline = { ADDED_3_0_2 },
			groups = {
				crit(9139, { maps = { DESOLACE } }),	-- Desolace
				crit(9142, { maps = { SILITHUS } }),	-- Silithus
				crit(9140, { maps = { TANARIS } }),	-- Tanaris
				crit(9138, { maps = { BADLANDS } }),	-- The Badlands
				crit(9141, { maps = { THOUSAND_NEEDLES } }),	-- Thousand Needles
			},
		}),
		ach(249, {	-- Dressed for the Occasion
			providers = {
				-- #if AFTER 7.2.5.24163
				{ "i", 151806 },	-- Elegant Dress (new)
				-- #endif
				{ "i", 19028 },	-- Elegant Dress
			},
			timeline = { ADDED_3_0_2 },
		}),
		ach(2416, {	-- Hard Boiled
			description = "Use the Blossoming Branch on someone else and hopefully they return the favor.",
			provider = { "i", 44792 },	-- Blossoming Branch
			timeline = { ADDED_3_0_2 },
			maps = { UNGORO_CRATER },
		}),
		ach(2676, {	-- I Found One!
			provider = { "i", 45072 },	-- Brightly Colored Egg
			timeline = { ADDED_3_0_2 },
		}),
		ach(2419, {	-- Spring Fling (A)
			provider = { "n", 32791 },	-- Spring Rabbit
			timeline = { ADDED_3_0_2 },
			races = ALLIANCE_ONLY,
			groups = bubbleDown({ races = ALLIANCE_ONLY }, {
				crit(9121, { maps = { AZUREMYST_ISLE } }),	-- Azure Watch
				crit(9199, { maps = { TELDRASSIL } }),	-- Dolanaar
				crit(9200, { maps = { ELWYNN_FOREST } }),	-- Goldshire
				crit(9201, { maps = { DUN_MOROGH } }),	-- Kharanos
			}),
		}),
		ach(2497, {	-- Spring Fling (H)
			provider = { "n", 32791 },	-- Spring Rabbit
			timeline = { ADDED_3_0_2 },
			races = HORDE_ONLY,
			groups = bubbleDown({ races = HORDE_ONLY }, {
				crit(9202, { maps = { MULGORE } }),	-- Bloodhoof Village
				crit(9203, { maps = { TIRISFAL_GLADES } }),	-- Brill
				crit(9204, { maps = { EVERSONG_WOODS } }),	-- Falconwing Square
				crit(9205, { maps = { DUROTAR } }),	-- Razor Hill
			}),
		}),
		ach(2421, {	-- Noble Garden (A)
			provider = { "i", 44818 },	-- Noblegarden Egg
			timeline = { ADDED_3_0_2 },
			maps = { STORMWIND_CITY },
			races = ALLIANCE_ONLY,
		}),
		ach(2420, {	-- Noble Garden (H)
			provider = { "i", 44818 },	-- Noblegarden Egg
			timeline = { ADDED_3_0_2 },
			maps = { SILVERMOON_CITY },
			races = HORDE_ONLY,
		}),
		ach(20209, { timeline = { ADDED_10_2_6 } }),	-- Quacked Killer
		ach(2422, {	-- Shake Your Bunny-Maker
			provider = { "i", 45073 },	-- Spring Flowers
			timeline = { ADDED_3_0_2 },
			sym = {{ "achievement_criteria" }},
		}),
		ach(248, {	-- Sunday's Finest
			cost = {
				{ "i", 6833, 1 },	-- White Tuxedo Shirt
				-- #if AFTER 7.2.5.24163
				{ "i", 151804, 1 },	-- Black Tuxedo Pants (new)
				-- #else
				{ "i", 6835, 1 },	-- Black Tuxedo Pants
				-- #endif
			},
			timeline = { ADDED_3_0_2 },
		}),
	}),
	n(RARES, {
		timeline = { ADDED_10_2_6 },
		groups = {
			n(213665, {	-- Daetan Swiftplume
				providers = {
					{ "n", 216836 },	-- Golden Egg
					{ "n", 219936 },	-- [DNT] Vignette
				},
				description = "Drag the large Golden Egg to the Large Duck Nest to spawn the boss.",
				coord = { 30.3, 91.4, ELWYNN_FOREST },
				races = ALLIANCE_ONLY,
				groups = { a(i(210594)) },	-- Noblegarden Trinket (QS!)
			}),
			n(218738, {	-- Daetan Swiftplume
				providers = {
					{ "n", 218736 },	-- Golden Egg
					{ "n", 219928 },	-- [DNT] Vignette
				},
				description = "Drag the large Golden Egg to the Large Duck Nest to spawn the boss.",
				coord = { 44.4, 35.1, DUROTAR },
				races = HORDE_ONLY,
				groups = { h(i(216932)) },	-- Noblegarden Trinket (QS!)
			}),
			n(216836, {	-- Golden Egg
				description = "A large golden egg will spawn somewhere nearby that you have to drag to the nest. It is about the same size as a player character and very easy to see. Multiple people can help drag the egg (more people makes it go faster). It works kinda similar to Tuskarr harpoon fishing.",
				coords = {
					{ 31.0, 85.0, ELWYNN_FOREST },
					{ 34.91, 87.96, ELWYNN_FOREST },
					{ 28.8, 86.68, ELWYNN_FOREST },
					{ 34.83, 81.68, ELWYNN_FOREST },
					{ 34.5, 80.7, ELWYNN_FOREST },
				},
			}),
			n(218736, {	-- Golden Egg
				description = "A large golden egg will spawn somewhere nearby that you have to drag to the nest. It is about the same size as a player character and very easy to see. Multiple people can help drag the egg (more people makes it go faster). It works kinda similar to Tuskarr harpoon fishing.",
				coords = {
					{ 44.8, 32.0, DUROTAR },
					{ 46.2, 33.4, DUROTAR },	-- confirmed starting point
					{ 42.6, 37.8, DUROTAR },
					{ 45.2, 39.6, DUROTAR },
					{ 46.0, 37.2, DUROTAR },	-- confirmed starting point
				},
			}),
		},
	}),
	n(QUESTS, {
		q(74120, {	-- A Spring Awakening (A)
			qg = 199261,	-- Holiday Enthusiast
			coord = { 31.6, 63.1, VALDRAKKEN },
			timeline = { ADDED_10_0_7, REMOVED_10_2_6 },
			races = ALLIANCE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(74875, {	-- A Spring Awakening (H)
			qg = 199261,	-- Holiday Enthusiast
			coord = { 31.6, 63.1, VALDRAKKEN },
			timeline = { ADDED_10_0_7, REMOVED_10_2_6 },
			races = HORDE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(13502, {	-- A Tisket, a Tasket, a Noblegarden Basket (A)
			qgs = {
				32836,	-- Noblegarden Vendor
				-- #if AFTER TWW
				215033,	-- Spring Sorter
				-- #endif
			},
			coords = {
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
				-- #if AFTER TWW
				{ 45.9, 55.0, DORNOGAL },
				-- #endif
				-- #if after MID
				{ 51.2, 76.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				-- #endif
			},
			timeline = { ADDED_3_1_0 },
			races = ALLIANCE_ONLY,
			isYearly = true,
			groups = {
				objective(1, {	-- 0/10 Noblegarden Chocolate
					provider = { "i", NOBLEGARDEN_CHOCOLATE },
					cost = { { "i", 44802, 1 } },	-- Borrowed Egg Basket
				}),
				i(44802, {	-- Borrowed Egg Basket
					-- #if BEFORE 10.0.5
					-- #if NOT COMMON_QUALITY_TRANSMOGS
					-- NOTE: This is an event item that disappears after the end of the event. After common quality transmog, this no longer requires any event.
					-- To collect it, it needs to be in your inventory after common quality transmog is added officially.
					ignoreSource = true,
					-- #endif
					-- #endif
				}),
				i(188698, { timeline = { ADDED_9_1_5 } }),	-- Eagger Basket (TOY!)
				i(45067),	-- Egg Basket
			},
		}),
		q(13503, {	-- A Tisket, a Tasket, a Noblegarden Basket (H)
			qgs = {
				32837,	-- Noblegarden Merchant
				-- #if AFTER TWW
				215033,	-- Spring Sorter
				-- #endif
			},
			coords = {
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
				-- #if AFTER TWW
				{ 45.9, 55.0, DORNOGAL },
				-- #endif
			},
			timeline = { ADDED_3_1_0 },
			races = HORDE_ONLY,
			isYearly = true,
			groups = {
				objective(1, {	-- 0/10 Noblegarden Chocolate
					provider = { "i", NOBLEGARDEN_CHOCOLATE },
					cost = { { "i", 44802, 1 } },	-- Borrowed Egg Basket
				}),
				i(44802, {	-- Borrowed Egg Basket
					-- #if BEFORE 10.0.5
					-- #if NOT COMMON_QUALITY_TRANSMOGS
					-- NOTE: This is an event item that disappears after the end of the event. After common quality transmog, this no longer requires any event.
					-- To collect it, it needs to be in your inventory after common quality transmog is added officially.
					ignoreSource = true,
					-- #endif
					-- #endif
				}),
				i(188698, { timeline = { ADDED_9_1_5 } }),	-- Eagger Basket (TOY!)
				i(45067),	-- Egg Basket
			},
		}),
		q(13484, {	-- Spring Gathers (A)
			qgs = {
				19171,	-- Draenei Commoner
				19148,	-- Dwarf Commoner
				20102,	-- Goblin Commoner
				19172,	-- Gnome Commoner
				18927,	-- Human Commoner
				19173,	-- Night Elf Commoner
			},
			timeline = { ADDED_3_1_0 },
			maps = {
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
			races = ALLIANCE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(13483, {	-- Spring Gathers (H)
			qgs = {
				19169,	-- Blood Elf Commoner
				19178,	-- Forsaken Commoner
				20102,	-- Goblin Commoner
				19175,	-- Orc Commoner
				19176,	-- Tauren Commoner
				19177,	-- Troll Commoner
			},
			timeline = { ADDED_3_1_0 },
			maps = {
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
			races = HORDE_ONLY,
			isBreadcrumb = true,
			isYearly = true,
		}),
		q(13480, {	-- The Great Egg Hunt (A)
			sourceQuests = {
				13484,	-- Spring Gathers (A)
				-- #if AFTER DF
				74120,	-- A Spring Awakening (A)
				-- #endif
			},
			qgs = {
				32799,	-- Spring Collector
				-- #if AFTER TWW
				215033,	-- Spring Sorter
				-- #endif
			},
			coords = {
				-- #if AFTER CATA
				{ 49.07, 51.25, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				{ 55.59, 51.36, TELDRASSIL },	-- Dolanaar
				{ 42.98, 65.40, ELWYNN_FOREST },	-- Goldshire
				{ 53.99, 50.70, DUN_MOROGH },	-- Kharanos
				-- #IF AFTER TWW
				{ 46.0, 54.9, DORNOGAL },	-- Dornogal
				-- #ENDIF
				-- #IF AFTER MID
				{ 51.2, 76.3, MAP.MIDNIGHT.SILVERMOON_CITY },
				-- #ENDIF
				-- #else
				{ 48.9, 50.0, AZUREMYST_ISLE },	-- Azure Watch, Azuremyst Isle
				{ 55.9, 58.8, TELDRASSIL },	-- Dolanaar
				{ 42.9, 65.4, ELWYNN_FOREST },	-- Goldshire
				{ 46.9, 52.4, DUN_MOROGH },	-- Kharanos
				-- #endif
			},
			timeline = { ADDED_3_1_0 },
			races = ALLIANCE_ONLY,
			isDaily = true,
			groups = {
				objective(1, {	-- 0/20 Brightly Colored Shell Fragment
					provider = { "i", 44806 },	-- Brightly Colored Shell Fragment
				}),
				i(44792),	-- Blossoming Branch
			},
		}),
		q(13479, {	-- The Great Egg Hunt (H)
			sourceQuests = {
				13483,	-- Spring Gathers (H)
				-- #if AFTER DF
				74875,	-- A Spring Awakening (H)
				-- #endif
			},
			qgs = {
				32798,	-- Spring Gatherer
				-- #IF AFTER TWW
				215033,	-- Spring Sorter
				-- #ENDIF
			},
			coords = {
				-- #if AFTER CATA
				{ 46.92, 59.53, MULGORE },	-- Bloodhoof Village
				{ 61.63, 53.12, TIRISFAL_GLADES },	-- Brill
				{ 47.77, 47.12, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.82, 42.06, DUROTAR },	-- Razor Hill
				-- #IF AFTER TWW
				{ 46.0, 54.9, DORNOGAL },	-- Dornogal
				-- #ENDIF
				-- #else
				{ 46.8, 60.3, MULGORE },	-- Bloodhoof Village
				{ 61.7, 53.2, TIRISFAL_GLADES },	-- Brill
				{ 47.8, 47.1, EVERSONG_WOODS },	-- Falconwing Square
				{ 51.8, 42.1, DUROTAR },	-- Razor Hill
				-- #endif
			},
			timeline = { ADDED_3_1_0 },
			races = HORDE_ONLY,
			isDaily = true,
			groups = {
				objective(1, {	-- 0/20 Brightly Colored Shell Fragment
					provider = { "i", 44806 },	-- Brightly Colored Shell Fragment
				}),
				i(44792),	-- Blossoming Branch
			},
		}),
	}),
	-----------------
	-- 2024 Update --
	-----------------
	n(QUESTS, bubbleDownFiltered({
		timeline = { ADDED_10_2_6 },
		isYearly = true,
	}, FILTERFUNC_questID, {
		q(79134, {	-- A Spring Awakening (A)
			qgs = {
				199261,	-- Holiday Enthusiast
				-- #if AFTER TWW
				220307,	-- Holiday Enthusiast
				220870,	-- Holiday Enthusiast
				-- #endif
			},
			coords = {
				{ 31.6, 63.1, VALDRAKKEN },
				-- #if AFTER TWW
				{ 45.9, 55.0, DORNOGAL },
				{ 55.5, 61.2, DORNOGAL },
				-- #endif
			},
			races = ALLIANCE_ONLY,
		}),
		q(79136, {	-- A Spring Awakening (H)
			qgs = {
				199261,	-- Holiday Enthusiast
				-- #if AFTER TWW
				220307,	-- Holiday Enthusiast
				220870,	-- Holiday Enthusiast
				-- #endif
			},
			coords = {
				{ 31.6, 63.1, VALDRAKKEN },
				-- #if AFTER TWW
				{ 45.9, 55.0, DORNOGAL },
				{ 55.5, 61.2, DORNOGAL },
				-- #endif
			},
			races = HORDE_ONLY,
		}),
		q(79322, {	-- What the Duck? (A)
			qg = 211646,	-- Zinnia Brooks
			coord = { 42.0, 65.0, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			groups = {
				objective(1, {	-- 0/10 Ducks Scared
					provider = { "i", 210558 },	-- Horn of Honking (QI!)
					cr = 217725,	-- Furious Duck
				}),
			},
		}),
		q(79575, {	-- What the Duck? (H)
			qg = 217125,	-- Sylnaria Fareflame
			coord = { 52.6, 41.2, DUROTAR },
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			groups = {
				objective(1, {	-- 0/10 Ducks Scared
					provider = { "i", 216487 },	-- Horn of Honking (QI!)
					cr = 217725,	-- Furious Duck
				}),
			},
		}),
		q(79323, {	-- A Fowl Concoction (A)
			sourceQuest = 79322,	-- What the Duck? (A)
			qg = 211646,	-- Zinnia Brooks
			coord = { 42.0, 65.0, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79576, {	-- A Fowl Concoction (H)
			sourceQuest = 79575,	-- What the Duck? (H)
			qg = 217125,	-- Sylnaria Fareflame
			coord = { 52.6, 41.2, DUROTAR },
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79330, {	-- Duck Tales (A)
			sourceQuest = 79323,	-- A Fowl Concoction (A)
			qg = 216129,	-- Emmery Fiske
			coord = { 42.0, 64.9, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			qi = 212608,	-- Duck Potion (QI!)
		}),
		q(79577, {	-- Duck Tales (H)
			sourceQuest = 79576,	-- A Fowl Concoction (H)
			qg = 217147,	-- Tethris Dewgazer
			coord = { 52.6, 41.1, DUROTAR },
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			qi = 216488,	-- Duck Potion (QI!)
		}),
		q(79331, {	-- Just a Waddle Away (A)
			sourceQuest = 79330,	-- Duck Tales (A)
			qg = 211646,	-- Zinnia Brooks
			coord = { 42.0, 65.0, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			qi = 212608,	-- Duck Potion (QI!)
			groups = {
				o(420195, {	-- Golden Egg Heirloom
					coord = { 30.4, 91.3, ELWYNN_FOREST },
					groups = { i(212643) },	-- Golden Egg Heirloom (QI!)
				}),
				--
				i(216881),	-- Duck Disguiser (TOY!)
				i(216890),	-- Black Duck Disguise (CI!)
				i(216897),	-- Brown Duck Disguise (CI!)
				i(216898),	-- Mallard Duck Disguise (CI!)
				i(216900),	-- Pink Duck Disguise (CI!)
				i(216901),	-- White Duck Disguise (CI!)
				i(216902),	-- Yellow Duck Disguise (CI!)
			},
		}),
		q(79578, {	-- Just a Waddle Away (H)
			sourceQuest = 79577,	-- Duck Tales (H)
			qg = 217125,	-- Sylnaria Fareflame
			coord = { 52.6, 41.2, DUROTAR },
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			qi = 216488,	-- Duck Potion (QI!)
			groups = {
				o(424098, {	-- Golden Egg Heirloom
					coord = { 44.5, 35.2, DUROTAR },
					groups = { i(216489) },	-- Golden Egg Heirloom (QI!)
				}),
				--
				i(216881),	-- Duck Disguiser (TOY!)
				i(216890),	-- Black Duck Disguise (CI!)
				i(216897),	-- Brown Duck Disguise (CI!)
				i(216898),	-- Mallard Duck Disguise (CI!)
				i(216900),	-- Pink Duck Disguise (CI!)
				i(216901),	-- White Duck Disguise (CI!)
				i(216902),	-- Yellow Duck Disguise (CI!)
			},
		}),
	})),
	n(QUESTS, bubbleDownFiltered({
		timeline = { ADDED_10_2_6 },
		isDaily = true,
	}, FILTERFUNC_questID, {
		q(78274, {	-- Quacking Down (A)
			sourceQuest = 79331,	-- Just a Waddle Away (A)
			qg = 211646,	-- Zinnia Brooks
			coord = { 42.0, 65.0, ELWYNN_FOREST },
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(79135, {	-- Quacking Down (H)
			sourceQuest = 79578,	-- Just a Waddle Away (H)
			qg = 217125,	-- Sylnaria Fareflame
			coord = { 52.6, 41.2, DUROTAR },
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
		}),
		q(73192, {	-- Feathered Fiend (A)
			qs = 210594,	-- Noblegarden Trinket (QS!)
			maps = ELWYNN_FOREST,
			races = ALLIANCE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			groups = {
				i(216874, {	-- Loot-Filled Basket
					hqt(82543, {	-- Noble Flying Carpet Attempt (Daily Accountwide)
						name = "Noble Flying Carpet Attempt (Daily Accountwide)",
						isDaily = true,
					}),
					i(212599),	-- Noble Flying Carpet (MOUNT!)
					-- #if AFTER 12.0.1
					i(216890),	-- Black Duck Disguise (CI!)
					i(216897),	-- Brown Duck Disguise (CI!)
					i(216898),	-- Mallard Duck Disguise (CI!)
					i(216900),	-- Pink Duck Disguise (CI!)
					i(216901),	-- White Duck Disguise (CI!)
					i(216902),	-- Yellow Duck Disguise (CI!)
					-- #endif
					i(212705, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Attire
					i(212706, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Belt
					i(212707, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Boots
					i(212713, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Dress
					i(212987, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Pants
					i(212717, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Sun Hat
					i(212698),	-- Spring Reveler's Turquoise Attire
					i(212699),	-- Spring Reveler's Turquoise Belt
					i(212701),	-- Spring Reveler's Turquoise Boots
					i(212711),	-- Spring Reveler's Turquoise Dress
					i(212985),	-- Spring Reveler's Turquoise Pants
					i(212715),	-- Spring Reveler's Turquoise Sun Hat
				}),
				i(213428, {	-- Loot-Stuffed Basket (version for low levels)
					sym = { { "select", "itemID",
						-- #if AFTER 12.0.1
						216890,	-- Black Duck Disguise (CI!)
						216897,	-- Brown Duck Disguise (CI!)
						216898,	-- Mallard Duck Disguise (CI!)
						216900,	-- Pink Duck Disguise (CI!)
						216901,	-- White Duck Disguise (CI!)
						216902,	-- Yellow Duck Disguise (CI!)
						212705,	-- Spring Reveler's Cornsilk Attire
						212706,	-- Spring Reveler's Cornsilk Belt
						212707,	-- Spring Reveler's Cornsilk Boots
						212713,	-- Spring Reveler's Cornsilk Dress
						212987,	-- Spring Reveler's Cornsilk Pants
						212717,	-- Spring Reveler's Cornsilk Sun Hat
						-- #endif
						212698,	-- Spring Reveler's Turquoise Attire
						212699,	-- Spring Reveler's Turquoise Belt
						212701,	-- Spring Reveler's Turquoise Boots
						212711,	-- Spring Reveler's Turquoise Dress
						212985,	-- Spring Reveler's Turquoise Pants
						212715,	-- Spring Reveler's Turquoise Sun Hat
					} },
				}),
			},
		}),
		q(79558, {	-- Feathered Fiend (H)
			qs = 216932,	-- Noblegarden Trinket (QS!)
			maps = DUROTAR,
			races = HORDE_ONLY,
			_drop = { "g" },	-- Drop Brightly Colored Egg
			groups = {
				i(216874, {	-- Loot-Filled Basket
					hqt(82543, {	-- Increased Noble Flying Carpet Droprate (Daily Accountwide)
						name = "Increased Noble Flying Carpet Droprate (Daily Accountwide)",
						isDaily = true,
					}),
					i(212599),	-- Noble Flying Carpet (MOUNT!)
					-- #if AFTER 12.0.1
					i(216890),	-- Black Duck Disguise (CI!)
					i(216897),	-- Brown Duck Disguise (CI!)
					i(216898),	-- Mallard Duck Disguise (CI!)
					i(216900),	-- Pink Duck Disguise (CI!)
					i(216901),	-- White Duck Disguise (CI!)
					i(216902),	-- Yellow Duck Disguise (CI!)
					-- #endif
					i(212705, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Attire
					i(212706, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Belt
					i(212707, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Boots
					i(212713, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Dress
					i(212987, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Pants
					i(212717, { timeline = { ADDED_12_0_1_SEASONSTART } }),	-- Spring Reveler's Cornsilk Sun Hat
					i(212698),	-- Spring Reveler's Turquoise Attire
					i(212699),	-- Spring Reveler's Turquoise Belt
					i(212701),	-- Spring Reveler's Turquoise Boots
					i(212711),	-- Spring Reveler's Turquoise Dress
					i(212985),	-- Spring Reveler's Turquoise Pants
					i(212715),	-- Spring Reveler's Turquoise Sun Hat
				}),
				i(213428, {	-- Loot-Stuffed Basket (version for low levels)
					sym = { { "select", "itemID",
						-- #if AFTER 12.0.1
						216890,	-- Black Duck Disguise (CI!)
						216897,	-- Brown Duck Disguise (CI!)
						216898,	-- Mallard Duck Disguise (CI!)
						216900,	-- Pink Duck Disguise (CI!)
						216901,	-- White Duck Disguise (CI!)
						216902,	-- Yellow Duck Disguise (CI!)
						212705,	-- Spring Reveler's Cornsilk Attire
						212706,	-- Spring Reveler's Cornsilk Belt
						212707,	-- Spring Reveler's Cornsilk Boots
						212713,	-- Spring Reveler's Cornsilk Dress
						212987,	-- Spring Reveler's Cornsilk Pants
						212717,	-- Spring Reveler's Cornsilk Sun Hat
						-- #endif
						212698,	-- Spring Reveler's Turquoise Attire
						212699,	-- Spring Reveler's Turquoise Belt
						212701,	-- Spring Reveler's Turquoise Boots
						212711,	-- Spring Reveler's Turquoise Dress
						212985,	-- Spring Reveler's Turquoise Pants
						212715,	-- Spring Reveler's Turquoise Sun Hat
					} },
				}),
			},
		}),
	})),
	n(VENDORS, {
		n(32837, {	-- Noblegarden Merchant
			coords = {
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
			timeline = { ADDED_3_1_0 },
			races = HORDE_ONLY,
			groups = NOBLEGARDEN_VENDOR_GROUPS,
		}),
		n(32836, {	-- Noblegarden Vendor
			coords = {
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
			timeline = { ADDED_3_1_0 },
			races = ALLIANCE_ONLY,
			groups = NOBLEGARDEN_VENDOR_GROUPS,
		}),
	}),
	-- #endif
})));
