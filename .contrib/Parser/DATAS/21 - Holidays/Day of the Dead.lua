--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
DAY_OF_THE_DEAD_HEADER = createHeader({
	readable = "Day of the Dead",
	constant = "DAY_OF_THE_DEAD_HEADER",
	icon = [[~_.asset("Holiday_Day_of_the_Dead")]],
	eventID = EVENTS.DAY_OF_THE_DEAD,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		11, 1, 11, 0,	-- 11/01 at 11 AM
		11, 3, 11, 0	-- 11/03 at 11 AM
	},
	-- #endif
	text = {
		en = "Day of the Dead",
		es = "Festividad de los Muertos",
		de = "Tag der Toten",
		fr = "Jour des morts",
		it = "Giorno dei Morti",
		ko = "망자의 날",
		pt = "Dia dos Mortos",
		ru = "День мертвых",
		cn = "悼念日",
		tw = "亡者節",
	},
});
local COSTUME_PROVIDERS = {
	{ "i", 116856 },	-- "Blooming Rose" Contender's Costume
	{ "i", 116888 },	-- "Night Demon" Contender's Costume
	{ "i", 116889 },	-- "Purple Phantom" Contender's Costume
	{ "i", 116890 },	-- "Santo's Sun" Contender's Costume
	{ "i", 116891 },	-- "Snowy Owl" Contender's Costume
};
root(ROOTS.Holidays, applyevent(EVENTS.DAY_OF_THE_DEAD, n(DAY_OF_THE_DEAD_HEADER, {
	["timeline"] = { ADDED_3_2_2 },
	["groups"] = {
		-- #if AFTER WRATH
		n(ACHIEVEMENTS, {
			ach(3456, {	-- Dead Man's Party
				["provider"] = { "n", 34383 },	-- Catrina
				["timeline"] = { ADDED_3_2_2 },
				["coords"] = {
					{ 47.8, 55.9, AZUREMYST_ISLE },
					-- #if AFTER 7.0.1
					{ 33.9, 39.3, LEGION_DALARAN },
					-- #endif
					{ 34.4, 39.1, NORTHREND_DALARAN },
					{ 69.4, 40.5, DARNASSUS },
					{ 61.0, 36.9, DUN_MOROGH },
					{ 47.2, 17.8, DUROTAR },	-- Org
					{ 47.7, 49.7, EVERSONG_WOODS },
					-- #if AFTER CATA
					{ 46.6, 25.8, STORMWIND_CITY },
					-- #else
					{ 39.0, 60.1, ELWYNN_FOREST },
					-- #endif
					{ 56.4, 18.4, THUNDER_BLUFF },
					{ 39.9, 21.8, TEROKKAR_FOREST },
					{ 62.2, 67.4, TIRISFAL_GLADES },	-- Undercity
				},
			}),
			ach(9426, {	-- To The Afterlife
				["providers"] = COSTUME_PROVIDERS,
				["timeline"] = { ADDED_6_0_2 },
			}),
			ach(9427, {	-- Vientos!
				["providers"] = COSTUME_PROVIDERS,
				["timeline"] = { ADDED_6_0_2 },
			}),
			ach(9428, {	-- Calavera
				["providers"] = COSTUME_PROVIDERS,
				["timeline"] = { ADDED_6_0_2 },
			}),
		}),
		-- #endif
		n(QUESTS, bubbleDown({
			["timeline"] = { ADDED_3_2_2 },
			["cost"] = {
				{ "i", 46861, 1 },	-- Bouquet of Orange Marigolds
				{ "i", 46718, 1 },	-- Orange Marigold
				{ "i", 46691, 1 },	-- Bread of the Dead
			},
			["isYearly"] = true,
			["groups"] = {
				i(46831, {	-- Macabre Marionette (PET!)
					["timeline"] = { ADDED_3_2_2 },
				}),
			},
		}, {
			q(14169, {	-- The Grateful Dead — Azuremyst Isle, Draenei
				["qg"] = 34484,	-- Cheerful Draenei Spirit
				["coord"] = { 47.6, 55.8, AZUREMYST_ISLE },
				["races"] = { DRAENEI },
			}),
			q(14166, {	-- The Grateful Dead — Dalaran, all
				["qg"] = 35256,	-- Cheerful Dalaran Spirit
				["coords"] = {
					{ 34.4, 38.1, NORTHREND_DALARAN },
					-- #if AFTER 7.0.1
					{ 33.8, 38.3, LEGION_DALARAN },
					-- #endif
				},
			}),
			q(14170, {	-- The Grateful Dead — Darnassus, Night Elf / Void Elf
				["qg"] = 34479,	-- Cheerful Night Elf Spirit
				["coord"] = { 68.6, 40.6, DARNASSUS },
				["races"] = { NIGHTELF, VOIDELF },
			}),
			q(27846, {	-- The Grateful Dead — Darnassus, Worgen
				["qg"] = 46908,	-- Cheerful Worgen Spirit
				["coord"] = { 68.6, 40.6, DARNASSUS },
				["timeline"] = { ADDED_4_0_3 },
				["races"] = { WORGEN },
			}),
			q(14167, {	-- The Grateful Dead — Dun Morogh, Dwarf
				["qg"] = 34478,	-- Cheerful Dwarf Spirit
				["coord"] = { 61.6, 37.4, DUN_MOROGH },
				["races"] = { DWARF },
			}),
			q(14168, {	-- The Grateful Dead — Dun Morogh, Gnome
				["qg"] = 34481,	-- Cheerful Gnome Spirit
				["coord"] = { 61.6, 37.4, DUN_MOROGH },
				["races"] = { GNOME },
			}),
			q(27841, {	-- The Grateful Dead — Durotar, Goblin
				["qg"] = 46901,	-- Cheerful Goblin Spirit
				["coord"] = { 47.4, 17.6, DUROTAR },
				["timeline"] = { ADDED_4_0_3 },
				["races"] = { GOBLIN },
			}),
			q(14175, {	-- The Grateful Dead — Durotar, Orc
				["qg"] = 34477,	-- Cheerful Orc Spirit
				["coord"] = { 47.4, 17.6, DUROTAR },
				["races"] = { ORC },
			}),
			q(14177, {	-- The Grateful Dead — Durotar, Troll
				["qg"] = 34482,	-- Cheerful Troll Spirit
				["coord"] = { 47.4, 17.6, DUROTAR },
				["races"] = { TROLL },
			}),
			q(14171, {	-- The Grateful Dead — Silvermoon City, Blood Elf / Nightborne
				["qg"] = 34483,	-- Cheerful Blood Elf Spirit
				["coord"] = { 47.9, 49.4, EVERSONG_WOODS },
				["races"] = { BLOODELF, NIGHTBORNE },
			}),
			q(13952, {	-- The Grateful Dead — Stormwind City, Human
				["qg"] = 34435,	-- Cheerful Human Spirit
				["coords"] = {
					-- #if AFTER CATA
					{ 47.6, 26.6, STORMWIND_CITY },
					-- #else
					{ 39.4, 61.1, ELWYNN_FOREST },
					-- #endif
				},
				["races"] = { HUMAN },
			}),
			q(14172, {	-- The Grateful Dead — Terokkar Forest, Aldor, all
				["qg"] = 35260,	-- Cheerful Aldor Spirit
				["minReputation"] = { FACTION_THE_ALDOR, NEUTRAL },	-- The Aldor, Neutral.
				["coord"] = { 40.1, 22.2, TEROKKAR_FOREST },
			}),
			q(14173, {	-- The Grateful Dead — Terokkar Forest, Scryer, all
				["qg"] = 35261,	-- Cheerful Aldor Spirit
				["minReputation"] = { FACTION_THE_SCRYERS, NEUTRAL },	-- The Scryers, Neutral.
				["coord"] = { 40.1, 22.2, TEROKKAR_FOREST },
			}),
			q(14174, {	-- The Grateful Dead — Tirisfal Glades, Undead
				["qg"] = 34476,	-- Cheerful Undead Spirit
				["coord"] = { 62.3, 68.3, TIRISFAL_GLADES },
				["races"] = { UNDEAD },
			}),
			q(14176, {	-- The Grateful Dead — Thunder Bluff, Tauren / Highmountain Tauren
				["qg"] = 34480,	-- Cheerful Tauren Spirit
				["coord"] = { 56.8, 17.6, THUNDER_BLUFF },
				["races"] = { TAUREN, HIGHMOUNTAIN_TAUREN },
			}),
		})),
		n(VENDORS, {
			n(34382, {	-- Chapman
				["coords"] = {
					{ 47.8, 55.9, AZUREMYST_ISLE },
					{ 33.9, 39.3, LEGION_DALARAN },
					{ 34.4, 39.1, NORTHREND_DALARAN },
					{ 69.4, 40.5, DARNASSUS },
					{ 61.0, 36.9, DUN_MOROGH },
					{ 47.2, 17.8, DUROTAR },
					{ 47.7, 49.7, EVERSONG_WOODS },
					{ 46.6, 25.8, STORMWIND_CITY },
					{ 56.4, 18.4, THUNDER_BLUFF },
					{ 39.9, 21.8, TEROKKAR_FOREST },
					{ 62.2, 67.4, TIRISFAL_GLADES },
				},
				["timeline"] = { ADDED_3_2_2 },
				["groups"] = {
					i(116856, {	-- "Blooming Rose" Contender's Costume (TOY!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(116888, {	-- "Night Demon" Contender's Costume (TOY!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(116889, {	-- "Purple Phantom" Contender's Costume (TOY!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(116890, {	-- "Santo's Sun" Contender's Costume (TOY!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(116891, {	-- "Snowy Owl" Contender's Costume (TOY!)
						["timeline"] = { ADDED_6_0_2 },
					}),
					i(46861, {	-- Bouquet of Orange Marigolds
						["timeline"] = { ADDED_3_2_2 },
					}),
					i(46690, {	-- Candy Skull
						["timeline"] = { ADDED_3_2_2 },
					}),
					i(208859, {	-- Cliffside Wylderdrake: Day of the Dead Armor (MM!)
						["timeline"] = { ADDED_10_1_7 },
					}),
					i(188689, {	-- Marigold Petal Offering Bowl
						["timeline"] = { ADDED_9_1_5 },
					}),
					i(46718, {	-- Orange Marigold
						["timeline"] = { ADDED_3_2_2 },
					}),
					i(46710, {	-- Recipe: Bread of the Dead (RECIPE!)
						["timeline"] = { ADDED_3_2_2 },
					}),
					i(46711, {	-- Spirit Candle
						["timeline"] = { ADDED_3_2_2 },
					}),
					i(46860, {	-- Whimsical Skull Mask (Cosmetic)
						["timeline"] = { ADDED_3_2_2 },
						-- #if BEFORE LEGION
						["collectible"] = false,
						-- #endif
					}),
					i(79048, {	-- Whimsical Skull Mask
						["timeline"] = { ADDED_5_0_4 },
					}),
				},
			}),
		}),
	},
})));