--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

-- WoWHead doesn't list specific colors on all of the vendors, but if you visit on the opposite faction, they sell both. It's based on the character's faction. Putting this in here in case its different and we need two separate distinctions.
local HOLIDAY_VENDOR_GROUPS_GREEN = {
	-- Nothing yet
}
local HOLIDAY_VENDOR_GROUPS_RED = {
	-- Nothing yet
};
local HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK = {	-- Smokywood Pastures Gift Pack
	i(2996),	-- Bolt of Linen Cloth
	i(2840),	-- Copper Bar
	i(2318),	-- Light Leather
	i(785),	-- Mageroyal
};

root(ROOTS.Holidays, applyevent(EVENTS.FEAST_OF_WINTER_VEIL, n(createHeader({
	readable = "Feast of Winter Veil",
	constant = "FEAST_OF_WINTER_VEIL_HEADER",
	icon = [[~_.asset("Holiday_winter_veil")]],
	eventID = EVENTS.FEAST_OF_WINTER_VEIL,
	eventSchedule = {
		1,	-- Recurring
		12, 16, 10, 0,	-- 12/16 at 10:00 AM
		1, 2, 6, 0		-- 01/02 at 6 AM
	},
	text = {
		en = WOWAPI_GetSpellName(21953),
		cn = "冬幕节",	-- WOWAPI_GetSpellName(21953) == 冬幕大餐
		tw = "冬幕節",
	},
}), {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["groups"] = {
		n(COMMON_BOSS_DROPS, {
			i(21525, {	-- Green Winter Hat
				["maps"] = {
					MAP.BLACKROCK_SPIRE,
					MAP.DIRE_MAUL,
					MAP.SCHOLOMANCE,
				},
				["crs"] = {
					1853,	-- Darkmaster Gandling
					10899,	-- Goraluk Anvilcrack <Blackhand Legion Armorsmith>
					11486,	-- Prince Tortheldrin
				},
			}),
			i(21524, {	-- Red Winter Hat
				["maps"] = {
					MAP.BLACKROCK_DEPTHS,
					MAP.BLACKROCK_SPIRE,
					MAP.STRATHOLME,
				},
				["crs"] = {
					10997,	-- Cannon Master Willey
					9019,	-- Emperor Dagran Thaurissan
					9237,	-- War Master Voone
				},
			}),
		}),
		n(MAILBOX, {
			["description"] = "These recipes are mailed to characters with the corresponding profession(s) at the start of the event.",
			["groups"] = {
				i(17724),	-- Pattern: Green Holiday Shirt (RECIPE!)
				i(17712, {	-- Winter Veil Disguise Kit (TOY!)
					["description"] = "Greatfather Winter will mail this to you 24 hours after you complete the 'A Smokywood Pastures Thank You!' quest.",
					["sourceQuests"] = {
						7045,	-- A Smokywood Pastures Thank You! (Alliance)
						6984,	-- A Smokywood Pastures Thank You! (Horde)
					},
				}),
			},
		}),
		n(QUESTS, {
			q(8744, {	-- A Carefully Wrapped Present
				["providers"] = {
					{ "o", 180743 },	-- Carefully Wrapped Present
					{ "i", 21191 },	-- Carefully Wrapped Present
				},
				["coords"] = {
					{ 33.5, 66.5, MAP.IRONFORGE },
					{ 49.5, 78.5, MAP.ORGRIMMAR },
				},
				["isYearly"] = true,
				["_drop"] = { "g" },
				["groups"] = {
					i(21254),	-- Winter Veil Cookie
				},
			}),
			q(8803, {	-- A Festive Gift
				["providers"] = {
					{ "o", 180793 },	-- Festive Gift
					{ "i", 21363 },	-- Festive Gift
				},
				["coords"] = {
					{ 33.6, 66.1, MAP.IRONFORGE },
					{ 49.6, 77.7, MAP.ORGRIMMAR },
				},
				["isYearly"] = true,
				["lvl"] = 10,
				["_drop"] = { "g" },
				["groups"] = { i(21328) },	-- Wand of Holiday Cheer
			}),
			q(8768, {	-- A Gaily Wrapped Present
				["providers"] = {
					{ "o", 180747 },	-- Gaily Wrapped Present
					{ "i", 21310 },	-- Gaily Wrapped Present
				},
				["coords"] = {
					{ 33.6, 66.3, MAP.IRONFORGE },
					{ 49.6, 78.2, MAP.ORGRIMMAR },
				},
				["isYearly"] = true,
				["lvl"] = 20,
				["_drop"] = { "g" },
				["groups"] = {
					i(21301),	-- Father Winter's Helper (PET!)
					i(21308),	-- Winter Reindeer (PET!)
					i(21305),	-- Winter's Little Helper (PET!)
					i(21309),	-- Tiny Snowman (PET!)
				},
			}),
			q(8767, {	-- A Gently Shaken Gift [Non-Spell Casters Only] (Before 2015)
				["description"] = "Given prior to 2015 exclusively to non-spell casters.",
				["providers"] = {
					{ "o", 180746 },	-- Gently Shaken Gift
					{ "i", 21270 },	-- Gently Shaken Gift
				},
				["maps"] = { MAP.IRONFORGE, MAP.ORGRIMMAR },
				["classes"] = exclude({ PRIEST, MAGE, WARLOCK, SHAMAN, DRUID }, ALL_CLASSES),
				["isYearly"] = true,
				["_drop"] = { "g" },
				["groups"] = {
					i(21235),	-- Winter Veil Roast
				},
			}),
			q(8788, {	-- A Gently Shaken Gift [Spell Casters Only] (Before 2015)
				["description"] = "Given prior to 2015 exclusively to spell casters.",
				["providers"] = {
					{ "o", 180746 },	-- Gently Shaken Gift
					{ "i", 21271 },	-- Gently Shaken Gift
				},
				["maps"] = { MAP.IRONFORGE, MAP.ORGRIMMAR },
				["classes"] = { PRIEST, MAGE, WARLOCK, SHAMAN, DRUID },
				["isYearly"] = true,
				["_drop"] = { "g" },
				["groups"] = {
					i(21241),	-- Winter Veil Eggnog
				},
			}),
			q(8769, {	-- A Ticking Present
				["providers"] = {
					{ "o", 180748 },	-- Ticking Present
					{ "i", 21327 },	-- Ticking Present
				},
				["coords"] = {
					{ 33.6, 66.5, MAP.IRONFORGE },
					{ 49.5, 78.7, MAP.ORGRIMMAR },
				},
				["isYearly"] = true,
				["lvl"] = 40,
				["_drop"] = { "g" },
				["groups"] = {
					i(17725),	-- Formula: Enchant Weapon - Winter's Might (RECIPE!)
					i(17722),	-- Pattern: Gloves of the Greatfather (RECIPE!)
					i(17724),	-- Pattern: Green Holiday Shirt (RECIPE!)
					i(17706),	-- Plans: Edge of Winter (RECIPE!)
					i(17709),	-- Recipe: Elixir of Frost Power (RECIPE!)
					i(17720),	-- Schematic: Snowmaster 9000 (RECIPE!)
					i(21325),	-- Mechanical Greench
					i(21213),	-- Preserved Holly
				},
			}),
			{	-- A Smokywood Pastures' Thank You!
				["allianceQuestData"] = q(7045, {	-- A Smokywood Pastures' Thank You! (Alliance)
					["sourceQuest"] = 7043,	-- You're a Mean One... (Alliance)
					["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				["hordeQuestData"] = q(6984, {	-- A Smokywood Pastures' Thank You! (Horde)
					["sourceQuest"] = 6983,	-- You're a Mean One... (Horde)
					["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
					["coord"] = { 53.2, 66.6, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
					["lvl"] = lvlsquish(30, 30, 10),
				}),
				["isYearly"] = true,
				["groups"] = {
					i(17726, {	-- Smokywood Pastures Special Gift
						i(17725),	-- Formula: Enchant Weapon - Winter's Might (RECIPE!)
						i(17722),	-- Pattern: Gloves of the Greatfather (RECIPE!)
						i(17724),	-- Pattern: Green Holiday Shirt (RECIPE!)
						i(17706),	-- Plans: Edge of Winter (RECIPE!)
						i(17709),	-- Recipe: Elixir of Frost Power (RECIPE!)
						i(17720),	-- Schematic: Snowmaster 9000 (RECIPE!)
					}),
				},
			},
			q(7022, {	-- Greatfather Winter is Here! (Alliance)
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(7023, {	-- Greatfather Winter is Here! (Alliance)
				["qg"] = 13435,	-- Khole Jinglepocket
				["coord"] = { 62.8, 70.2, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(6961, {	-- Great-father Winter is Here! (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["coord"] = { 53.2, 66.6, MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(7021, {	-- Great-father Winter is Here! (Horde)
				["qg"] = 13431,	-- Whulwert Copperpinch <Smokywood Pastures>
				["coord"] = { 43.8, 58.6, MAP.THUNDER_BLUFF },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(7024, {	-- Great-father Winter is Here! (Horde)
				["qg"] = 13429,	-- Nardstrum Copperpinch <Smokywood Pastures>
				["coord"] = { 68.0, 39.0, MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(8762, {	-- Metzen the Reindeer (Alliance)
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
				["maps"] = { MAP.SEARING_GORGE, MAP.TANARIS },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- Find Metzen the Reindeer and rescue him
						["provider"] = { "n", 15664 },	-- Metzen the Reindeer
						["coords"] = {
							{ 68.6, 34.4, MAP.SEARING_GORGE },
							{ 73.2, 48.0, MAP.TANARIS },
						},
					}),
					objective(2, {	-- 0/1 Pouch of Raindeer Dust
						["provider"] = { "i", 21211 },	-- Pouch of Raindeer Dust
					}),
					i(21315, {	-- Smokywood Satchel
						i(21314),	-- Metzen's Letters and Notes
						i(21211),	-- Pouch of Raindeer Dust
					}),
					i(21213),	-- Preserved Holly
				},
			}),
			q(8746, {	-- Metzen the Reindeer (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["coord"] = { 53.2, 66.6, MAP.ORGRIMMAR },
				["maps"] = { MAP.SEARING_GORGE, MAP.TANARIS },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = {
					objective(1, {	-- Find Metzen the Reindeer and rescue him
						["provider"] = { "n", 15664 },	-- Metzen the Reindeer
						["coords"] = {
							{ 68.6, 34.4, MAP.SEARING_GORGE },
							{ 73.2, 48.0, MAP.TANARIS },
						},
					}),
					objective(2, {	-- 0/1 Pouch of Raindeer Dust
						["provider"] = { "i", 21211 },	-- Pouch of Raindeer Dust
					}),
					i(21315, {	-- Smokywood Satchel
						i(21314),	-- Metzen's Letters and Notes
						i(21211),	-- Pouch of Raindeer Dust
					}),
					i(21213),	-- Preserved Holly
				},
			}),
			q(8860, {	-- New Year Celebrations! (Alliance)
				["description"] = "This quest is only available on December 31. Quest can be obtained from Wonderform Operator in any major city.",
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["maps"] = {
					MAP.DUN_MOROGH,
					MAP.DUROTAR,
					MAP.ORGRIMMAR,
					MAP.STRANGLETHORN_VALE,
					MAP.STORMWIND_CITY,
					MAP.TANARIS,
					MAP.TIRISFAL_GLADES,
					MAP.WETLANDS,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Smokywood Supplies
						["provider"] = { "i", 21545 },	-- Smokywood Supplies
					}),
				},
			}),
			q(8861, {	-- New Year Celebrations! (Horde)
				["description"] = "This quest is only available on December 31. Quest can be obtained from Wonderform Operator in any major city.",
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["maps"] = {
					MAP.DUN_MOROGH,
					MAP.DUROTAR,
					MAP.ORGRIMMAR,
					MAP.STRANGLETHORN_VALE,
					MAP.STORMWIND_CITY,
					MAP.TANARIS,
					MAP.TIRISFAL_GLADES,
					MAP.WETLANDS,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Smokywood Supplies
						["provider"] = { "i", 21545 },	-- Smokywood Supplies
					}),
				},
			}),
			q(7042, {	-- Stolen Winter Veil Treats (Alliance)
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
				["maps"] = { MAP.ALTERAC_MOUNTAINS },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 30,
			}),
			q(6963, {	-- Stolen Winter Veil Treats (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["coord"] = { 53.2, 66.6, MAP.ORGRIMMAR },
				["maps"] = { MAP.ALTERAC_MOUNTAINS },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 30,
			}),
			q(7063, {	-- The Feast of Winter Veil (Alliance)
				["sourceQuest"] = 7062,	-- The Reason for the Season (Alliance)
				["qg"] = 2916,	-- Historian Karnik
				["qi"] = 17735,	-- The Feast of Winter Veil (QI!)
				["coord"] = { 77.2, 11.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(7061, {	-- The Feast of Winter Veil (Horde)
				["sourceQuest"] = 6964,	-- The Reason for the Season (Horde)
				["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
				["qi"] = 17735,	-- The Feast of Winter Veil (QI!)
				["coord"] = { 38.6, 36.2, MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
			}),
			q(8763, {	-- The Hero of the Day (Alliance)
				["description"] = 'Requires Cooking Skill Level 300',
				["sourceQuest"] = 8762,	-- Metzen the Reindeer (Alliance)
				["qg"] = 13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
				["cost"] = {
					{ "i", 8150, 1 },	-- Deeprock Salt
					{ "g", 50000 },	-- 5g
				},
				["requireSkill"] = COOKING,
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = { i(21213) },	-- Preserved Holly
			}),
			q(8799, {	-- The Hero of the Day (Horde)
				["description"] = 'Requires Cooking Skill Level 300',
				["sourceQuest"] = 8746,	-- Metzen the Reindeer (Horde)
				["qg"] = 13418,	-- Kaymard Copperpinch <Smokywood Pastures>
				["coord"] = { 53.2, 66.6, MAP.ORGRIMMAR },
				["cost"] = {
					{ "i", 8150, 1 },	-- Deeprock Salt
					{ "g", 50000 },	-- 5g
				},
				["requireSkill"] = COOKING,
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 40,
				["groups"] = { i(21213) },	-- Preserved Holly
			}),
			q(7062, {	-- The Reason for the Season (Alliance)
				["qg"] = 1365,	-- Goli Krumn
				["coord"] = { 30.2, 59.8, MAP.IRONFORGE },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = { i(17735)	},	-- The Feast of Winter Veil (QI!)
			}),
			q(6964, {	-- The Reason for the Season (Horde)
				["qg"] = 9550,	-- Furmund
				["coord"] = { 51.0, 71.1, MAP.ORGRIMMAR },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = { i(17735)	},	-- The Feast of Winter Veil (QI!)
			}),
			{	-- Treats for Greatfather Winter
				["allianceQuestData"] = q(7025, {	-- Treats for Greatfather Winter (Alliance)
					-- ["sourceQuests"] = {	-- Reported Not Required Discord 2022/2023
					-- 	7022,	-- Greatfather Winter is Here! (Alliance)
					-- 	7023,	-- Greatfather Winter is Here! (Alliance)
					-- },
					["qg"] = 13444,	-- Greatfather Winter
					["coord"] = { 33.2, 65.8, MAP.IRONFORGE },
					["races"] = ALLIANCE_ONLY,
				}),
				["hordeQuestData"] = q(6962, {	-- Treats for Great-father Winter (Horde)
					-- ["sourceQuests"] = {	-- Reported Not Required Discord 2022/2023
					-- 	6961,	-- Great-father Winter is Here! (Horde)
					-- 	7021,	-- Great-father Winter is Here! (Horde)
					-- 	7024,	-- Great-father Winter is Here! (Horde)
					-- },
					["qg"] = 13445,	-- Great-father Winter
					["coord"] = { 49.9, 78.4, MAP.ORGRIMMAR },
					["races"] = HORDE_ONLY,
				}),
				["cost"] = {
					{ "i", 17197, 5 },	-- Gingerbread Cookie
					{ "i", 1179, 1 },	-- Ice Cold Milk
				},
				["isYearly"] = true,
				["lvl"] = 10,
				["groups"] = {
					i(17727, HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK),	-- Smokywood Pastures Gift Pack
					i(17685, {	-- Smokywood Pastures Sampler
						i(17404),	-- Blended Bean Brew
						i(17344),	-- Candy Cane
						i(17407),	-- Graccu's Homemade Meat Pie
						i(21215),	-- Graccu's Mince Meat Fruitcake
						i(17406),	-- Holiday Cheesewheel
					}),
				},
			},
			q(8827,{	-- Winter's Presents [A]
				["description"] = "This quest becomes available after the 25th.",
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["maps"] = {
					MAP.DUN_MOROGH,
					MAP.DUROTAR,
					MAP.ORGRIMMAR,
					MAP.STRANGLETHORN_VALE,
					MAP.STORMWIND_CITY,
					MAP.TANARIS,
					MAP.TIRISFAL_GLADES,
					MAP.WETLANDS,
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8828, {	-- Winter's Presents [H]
				["description"] = "This quest becomes available after the 25th.",
				["qg"] = 15732,	-- Wonderform Operator <Smokywood Pastures>
				["maps"] = {
					MAP.DUN_MOROGH,
					MAP.DUROTAR,
					MAP.ORGRIMMAR,
					MAP.STRANGLETHORN_VALE,
					MAP.STORMWIND_CITY,
					MAP.TANARIS,
					MAP.TIRISFAL_GLADES,
					MAP.WETLANDS,
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			{	-- You're a Mean One...
				["allianceQuestData"] = q(7043, {	-- You're a Mean One... [A]
					["sourceQuest"] = 7042,	-- Stolen Winter Veil Treats (Alliance)
					["maps"] = { MAP.IRONFORGE },
				}),
				["hordeQuestData"] = q(6983, {	-- You're a Mean One... [H]
					["sourceQuest"] = 6963,	-- Stolen Winter Veil Treats (Horde)
					["maps"] = { MAP.ORGRIMMAR },
				}),
				["qg"] = 13636,	-- Strange Snowman
				["coord"] = { 35.4, 72.6, MAP.ALTERAC_MOUNTAINS },
				["isYearly"] = true,
				["lvl"] = 30,
				["groups"] = {
					objective(1, {	-- 0/1 Stolen Treats
						["provider"] = { "i", 17662 },	-- Stolen Treats
						["cr"] = 13602,	-- The Abominable Greench
					}),
				},
			},
		}),
		n(VENDORS, {
			n(COMMON_VENDOR_ITEMS, {
				["description"] = "These items can be found on any of the holiday vendors.",
				["crs"] = {
					13433,	-- Wulmort Jinglepocket <Smokywood Pastures>
					13420,	-- Penney Copperpinch <Smokywood Pastures>
					13432,	-- Seersa Jinglepocket <Smokywood Pastures>
					13429,	-- Nardstrum Copperpinch <Smokywood Pastures>
				},
				["maps"] = {
					MAP.IRONFORGE,
					MAP.ORGRIMMAR,
					MAP.THUNDER_BLUFF,
					MAP.UNDERCITY,
				},
				["groups"] = {
					i(17201),	-- Recipe: Egg Nog / Recipe: Winter Veil Egg Nog[5.4.1+] (RECIPE!)
					i(17200),	-- Recipe: Gingerbread Cookie (RECIPE!)
					i(17303),	-- Blue Ribboned Wrapping Paper
					i(17304),	-- Green Ribboned Wrapping Paper
					i(17307),	-- Purple Ribboned Wrapping Paper
					i(17344),	-- Candy Cane
					i(17194),	-- Holiday Spices
					i(17196),	-- Holiday Spirits
				},
			}),
			n(13435, {	-- Khole Jinglepocket <Smokywood Pastures>
				["coord"] = { 62.8, 70.2, MAP.STORMWIND_CITY },
				["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
			}),
			n(13429, {	-- Nardstrum Copperpinch <Smokywood Pastures>
				["coord"] = { 68.4, 39.8, MAP.UNDERCITY },
				["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
			}),
			n(13420, {	-- Penney Copperpinch <Smokywood Pastures>
				["coord"] = { 53.0, 66.0, MAP.ORGRIMMAR },
				["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
			}),
			n(13432, {	-- Seersa Jinglepocket <Smokywood Pastures>
				["coord"] = { 43.8, 59.2, MAP.THUNDER_BLUFF },
				["groups"] = HOLIDAY_VENDOR_GROUPS_GREEN,
			}),
			n(13433, {	-- Wulmort Jinglepocket <Smokywood Pastures>
				["coord"] = { 33.4, 67.0, MAP.IRONFORGE },
				["groups"] = HOLIDAY_VENDOR_GROUPS_RED,
			}),
		}),
		n(15760, {	-- Winter Reveler
			["description"] = "Type /kiss while targeting any Winter Reveler to receive one of the following items.\n\nNOTE: While the debuff persists, you will be unable to kiss another one.",
			["crs"] = {
				15783,	-- Dwarf Female Winter Reveler
				15782,	-- Dwarf Male Winter Reveler
				15787,	-- Goblin Female Winter Reveler
				15795,	-- Goblin Male Winter Reveler
				15781,	-- Human Female Winter Reveler
				15780,	-- Human Male Winter Reveler
				15784,	-- Night Elf Female Winter Reveler
				15794,	-- Night Elf Male Winter Reveler
				15786,	-- Orc Female Winter Reveler
				15791,	-- Orc Male Winter Reveler
				15789,	-- Tauren Female Winter Reveler
				15793,	-- Tauren Male Winter Reveler
				15785,	-- Troll Female Winter Reveler
				15792,	-- Troll Male Winter Reveler
				15788,	-- Undead Female Winter Reveler
				15790,	-- Undead Male Winter Reveler
			},
			["groups"] = {
				i(21212),	-- Fresh Holly
				i(21519),	-- Mistletoe
			},
		}),
		n(ZONE_DROPS, {
			o(178609, {	-- Holiday Snow
				i(17202),	-- Snowball
			}),
		}),
	},
})));

-- Remove the holiday flag.
for i,o in ipairs(HOLIDAY_SMOKYWOOD_PASTURES_GIFT_PACK) do o.u = nil; end
