--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
LOVE_IS_IN_THE_AIR_HEADER = createHeader({
	readable = "Love is in the Air",
	constant = "LOVE_IS_IN_THE_AIR_HEADER",
	icon = [[~_.asset("Holiday_love")]],
	eventID = EVENTS.LOVE_IS_IN_THE_AIR,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		2, 6, 10, 0,	-- 02/06 at 10:00 AM
		2, 20, 10, 0	-- 02/20 at 10:00 AM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(187),
		-- #else
		en = "Love is in the Air",
		-- #endif
	},
});
local LOVE_TOKEN = 49927;
local BOUQUET_RED = applyevent(EVENTS.LOVE_IS_IN_THE_AIR, i(22206));	-- Bouquet of Red Roses
local BOUQUET_EBON = applyevent(EVENTS.LOVE_IS_IN_THE_AIR, i(44731, {	-- Bouquet of Ebon Roses
	["timeline"] = { ADDED_3_0_3 },
}));
local POUCH_OF_RED_ROSE_PETALS = applyevent(EVENTS.LOVE_IS_IN_THE_AIR, i(188693, {	-- Pouch of Red Rose Petals
	["timeline"] = { ADDED_9_1_5 },
}));
local POUCH_OF_EBON_ROSE_PETALS = applyevent(EVENTS.LOVE_IS_IN_THE_AIR, i(188692, {	-- Pouch of Ebon Rose Petals
	["timeline"] = { ADDED_9_1_5 },
	-- #if AFTER 10.2.5
	["description"] = "Does NOT give progression towards 'Traveler's Log - Love is in the Air: Throw Rose Petals on Players'.",
	-- #endif
}));
local BOSS_GROUPS = {};
root(ROOTS.Holidays, applyevent(EVENTS.LOVE_IS_IN_THE_AIR, n(LOVE_IS_IN_THE_AIR_HEADER, {
	-- #if BEFORE WRATH
	n(COMMON_BOSS_DROPS, {
		i(22206, {	-- Bouquet of Red Roses
			["maps"] = {
				SCHOLOMANCE,
				STRATHOLME,
				DIRE_MAUL,
				BLACKROCK_DEPTHS,
			},
			["crs"] = {
				10901,	-- Lorekeeper Polkelt
				10811,	-- Archivist Galford
				11488,	-- Illyanna Ravenoak
				8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
			},
		}),
	}),
	-- #else
	n(ACHIEVEMENTS, {
		ach(1707, {	-- Fool For Love (A)
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				260,	-- Charming
				1188,	-- Shafted!
				1279,	-- Flirt With Disaster [Alliance]
				1291,	-- Lonely?
				1695,	-- Dangerous Love
				1696,	-- The Rocket's Pink Glare
				1697,	-- Nation of Adoration [Alliance]
				1699,	-- Fistful of Love
				1702,	-- Sweet Tooth
				1701,	-- Be Mine!
				1703,	-- My Love is Like a Red, Red Rose
				1704,	-- I Pitied The Fool
			}},
			["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				title(103),	-- the Love Fool
			},
		}),
		ach(1693, {	-- Fool For Love (H) / Fool For Love [MOP+]
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {{"meta_achievement",
				-- #if BEFORE 10.2.5
				260,	-- Charming
				-- #endif
				1188,	-- Shafted!
				-- #if BEFORE 10.2.5
				-- #if AFTER MOP
				1279,	-- Flirt With Disaster [Alliance]
				-- #endif
				1280,	-- Flirt With Disaster [Horde]
				-- #endif
				1291,	-- Lonely?
				1695,	-- Dangerous Love
				1696,	-- The Rocket's Pink Glare
				-- #if BEFORE 10.2.5
				-- #if AFTER MOP
				1697,	-- Nation of Adoration [Alliance]
				-- #endif
				1698,	-- Nation of Adoration [Horde]
				-- #endif
				1699,	-- Fistful of Love
				1702,	-- Sweet Tooth
				1701,	-- Be Mine!
				1703,	-- My Love is Like a Red, Red Rose
				1704,	-- I Pitied The Fool
			}},
			["timeline"] = { ADDED_3_0_2 },
			-- #if BEFORE MOP
			["races"] = HORDE_ONLY,
			-- #endif
			["groups"] = {
				title(103),	-- the Love Fool
			},
		}),
		ach(1701, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Be Mine!
			crit(6324, {	-- Be Mine!
				["provider"] = { "i", 21816 },	-- Heart Candy (Be Mine!)
			}),
			crit(6325, {	-- I'll follow you all around Azeroth.
				["provider"] = { "i", 21818 },	-- Heart Candy (I'll follow you all around Azeroth.)
			}),
			crit(6326, {	-- All yours.
				["provider"] = { "i", 21819 },	-- Heart Candy (All yours.)
			}),
			crit(6327, {	-- I'm all yours!
				["provider"] = { "i", 21821 },	-- Heart Candy (I'm all yours!)
			}),
			crit(6328, {	-- Hot Lips.
				["provider"] = { "i", 21823 },	-- Heart Candy (Hot Lips.)
			}),
			crit(6329, {	-- You're Mine!
				["provider"] = { "i", 21822 },	-- Heart Candy (You're Mine!)
			}),
			crit(6330, {	-- You're the best!
				["provider"] = { "i", 21820 },	-- Heart Candy (You're the best!)
			}),
			crit(6331, {	-- I LOVE YOU
				["provider"] = { "i", 21817 },	-- Heart Candy (I LOVE YOU)
			}),
		})),
		ach(260, {	-- Charming
			["provider"] = { "i", 49661 },	-- Lovely Charm Collector's Kit
			["cost"] = {{ "i", 49916, 12 }},	-- Lovely Charm Bracelet
			["timeline"] = { ADDED_3_0_2, REMOVED_10_2_5 },
		}),
		ach(1695, {	-- Dangerous Love
			["sourceQuests"] = {
				-- #if BEFORE 10.2.5
					-- #if AFTER LEGION
					44558,	-- Crushing the Crown (A) [Legion+]
					-- #endif
				24658,	-- Crushing the Crown (A) [Elwynn Forest]
				24659,	-- Crushing the Crown (A) [Darkshore]
				24660,	-- Crushing the Crown (A) [Duskwood]
				24662,	-- Crushing the Crown (A) [Dustwallow Marsh]
				24663,	-- Crushing the Crown (A) [The Hinterlands]
				24664,	-- Crushing the Crown (A) [Winterspring]
				24665,	-- Crushing the Crown (A) [Terokkar Forest]
				24666,	-- Crushing the Crown (A) [Crystalsong Forest]
					-- #if AFTER CATA
					28934,	-- Crushing the Crown (A) [Uldum]
					-- #endif
					-- #if AFTER LEGION
					44546,	-- Crushing the Crown (H) [Legion+]
					-- #endif
				24638,	-- Crushing the Crown (H) [Durotar]
				24645,	-- Crushing the Crown (H) [Silverpine Forest]
				24647,	-- Crushing the Crown (H) [Hillsbrad Foothills]
				24648,	-- Crushing the Crown (H) [Dustwallow Marsh]
				24649,	-- Crushing the Crown (H) [The Hinterlands]
				24650,	-- Crushing the Crown (H) [Winterspring]
				24651,	-- Crushing the Crown (H) [Terokkar Forest]
				24652,	-- Crushing the Crown (H) [Crystalsong Forest]
					-- #if AFTER CATA
					28935,	-- Crushing the Crown (H) [Uldum]
					-- #endif
				-- #else
				78984,	-- Crushing the Crown (H)
				78369,	-- Crushing the Crown (A)
				-- #endif
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1699, {	-- Fistful of Love
			["cost"] = { { "i", 22218, 11 } },	-- 11x Handful of Rose Petals (minimum)
			["sym"] = {{ "achievement_criteria" }},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1279, {	-- Flirt With Disaster [Alliance]
			["providers"] = {
				{ "n", 9099 },	-- Sraaz <Pie Vendor>
				{ "i", 22218 },	-- Handful of Rose Petals
				{ "i", 49857 },	-- "Enchantress" Perfume
				{ "i", 49858 },	-- "Forever" Perfume
				{ "i", 49856 },	-- "VICTORY" Perfume
			},
			["coord"] = { 46.6, 48.4, IRONFORGE },
			["timeline"] = { ADDED_3_0_2, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		ach(1280, {	-- Flirt With Disaster [Horde]
			["providers"] = {
				{ "n", 8403 },	-- Jeremiah Payson <Cockroach Vendor>
				{ "i", 22218 },	-- Handful of Rose Petals
				{ "i", 49857 },	-- "Enchantress" Perfume
				{ "i", 49858 },	-- "Forever" Perfume
				{ "i", 49856 },	-- "VICTORY" Perfume
			},
			["coord"] = { 67.6, 43.8, UNDERCITY },
			["timeline"] = { ADDED_3_0_2, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		ach(1704, {	-- I Pitied The Fool
			["sym"] = {{ "achievement_criteria" }},
			["cost"] = { { "i", 22261, 5 } },	-- 5x Love Fool
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				ARATHI_BASIN,
				NAXXRAMAS,
				WINTERGRASP,
				-- #if AFTER CATA
				THE_CAPE_OF_STRANGLETHORN,
				-- #else
				STRANGLETHORN_VALE,
				-- #endif
				THE_CULLING_OF_STRATHOLME,
			},
		}),
		ach(9389, {	-- It Might Just Save Your Life
			["providers"] = {
				-- #if AFTER 7.0.1
				{ "i", 143908 },	-- Choker of the Pure Heart [Level 110]
				{ "i", 143906 },	-- Heartbreak Charm [Level 110]
				{ "i", 143907 },	-- Shard of Pirouetting Happiness [Level 110]
				{ "i", 143909 },	-- Sweet Perfume Brooch [Level 110]
				{ "i", 143905 },	-- Winking Eye of Love [Level 110]
				-- #endif
				-- #if AFTER 6.0.1
				{ "i", 117369 },	-- Choker of the Pure Heart [Level 100]
				{ "i", 117366 },	-- Heartbreak Charm [Level 100]
				{ "i", 117370 },	-- Shard of Pirouetting Happiness [Level 100]
				{ "i", 117368 },	-- Sweet Perfume Brooch [Level 100]
				{ "i", 117367 },	-- Winking Eye of Love [Level 100]
				-- #endif
			},
			["timeline"] = { ADDED_6_0_2 },
		}),
		ach(1291, {	-- Lonely?
			["providers"] = {
				{ "i", 34480 },	-- Romantic Picnic Basket
				{ "i", 22236 },	-- Buttermilk Delight
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN },
		}),
		ach(19508, {	-- Love Language Expert
			["timeline"] = { ADDED_10_2_5 },
			["maps"] = { FERALAS },
			["groups"] = {
				crit(64676, {	-- Novelty
					["description"] = "Bring Vernon a Shiny New Weapon from the table.",
					["providers"] = {
						{ "o", 411691 },	-- Shiny New Weapon
						{ "n", 212812 },	-- Vernon Whitlock
					},
					["coord"] = { 69.01, 72.4, FERALAS },
				}),
				crit(64680, {	-- Beauty
					["description"] = "Bring Bratley a Mystery Gift (Flower) from the table.",
					["providers"] = {
						{ "n", 212817 },	-- Bratley Graston
						{ "i", 211922 },	-- Bouquet of Flowers
					},
					["coord"] = { 69.09, 72.93, FERALAS },
				}),
				crit(64681, {	-- Comfort
					["description"] = "/hug Theoderic while holding a gift from the table.",
					["provider"] = { "n", 214853 },	-- Theoderic Prescott
					["coord"] = { 69.95, 74.1, FERALAS },
				}),
				crit(64677, {	-- Festivity
					["description"] = "Bring Clarissa a Barrel of Wine from the table.",
					["providers"] = {
						{ "n", 212815 },	-- Clarissa Buchannan
						{ "o", 411744 },	-- Barrel of Wine
					},
					["coord"] = { 69.16, 72.66, FERALAS },
				}),
				crit(64679, {	-- Challenge
					["description"] = "Bring Bront a Shiny New Weapon from the table, then duel him.",
					["providers"] = {
						{ "n", 214850 },	-- Bront Axecrusher
						{ "o", 411691 },	-- Shiny New Weapon
					},
					["coord"] = { 69.64, 73.35, FERALAS },
				}),
				crit(64682, {	-- Respect
					["description"] = "/bow to Wilber.",
					["provider"] = { "n", 212813 },	-- Wilber Campbell
					["coord"] = { 69.19, 72.62, FERALAS },
				}),
				crit(64678, {	-- Companionship
					["description"] = "Bring Angus back his puppy.",
					["providers"] = {
						{ "n", 212811 },	-- Angus Flagonshot
						{ "n", 212850 },	-- Lost Puppy
					},
					["coord"] = { 69.78, 74.08, FERALAS },
				}),
				crit(64683, {	-- Attention
					["description"] = "Exhaust Rizzi's dialogue while holding a gift from the table.",
					["provider"] = { "n", 215151 },	-- Rizzi
					["coord"] = { 68.75, 72.1, FERALAS },
				}),
				crit(64736, {	-- Style
					["description"] = "Bring Halene a Mystery Gift (Flower) from the table.",
					["providers"] = {
						{ "n", 215148 },	-- Halene Mistrunner
						{ "i", 211922 },	-- Bouquet of Flowers
					},
					["coord"] = { 68.78, 73.66, FERALAS },
				}),
				crit(64703, {	-- Praise
					["description"] = "Bring Verilas a Mystery Gift (Sealed Letter) from the table.",
					["provider"] = { "i", 211923 },	-- Sealed Letter
					["coord"] = { 69.95, 73.32, FERALAS },
				}),
			},
		}),
		ach(1703, {	-- My Love is Like a Red, Red Rose
			["providers"] = {
				{ "i", 22206 },	-- Bouquet of Red Roses
				{ "i", 44731 },	-- Bouquet of Ebon Roses
			},
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1697,	-- Nation of Adoration [Alliance]
		bubbleDownSelf({["timeline"] = { ADDED_3_0_2, REMOVED_10_2_5 }},{
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				crit(12838, {	-- A Gift for the High Priestess of Elune
					["_quests"] = { 24610 },	-- A Gift for the High Priestess of Elune
				}),
				crit(12841, {	-- A Gift for the King of Stormwind
					["_quests"] = { 24597 },	-- A Gift for the King of Stormwind
				}),
				crit(12840, {	-- A Gift for the Lord of Ironforge / A Gift for a Lord of Ironforge
					["_quests"] = { 24609 },	-- A Gift for the Lord of Ironforge / A Gift for a Lord of Ironforge
				}),
				crit(12839, {	-- A Gift for the Prophet
					["_quests"] = { 24611 },	-- A Gift for the Prophet
				}),
			},
		})),
		ach(1698,	-- Nation of Adoration [Horde]
		bubbleDownSelf({["timeline"] = { ADDED_3_0_2, REMOVED_10_2_5 }},{
			["races"] = HORDE_ONLY,
			["groups"] = {
				crit(12842, {	-- A Gift for the Warchief / A Gift for the High Overlord/ A Gift for the Warchief's Advisor
					["_quests"] = { 24612 },	-- A Gift for the Warchief / A Gift for High Overlord Saurfang / A Gift for the Warchief's Advisor
				}),
				crit(12843, {	-- A Gift for the Regent Lord of Quel'Thalas
					["_quests"] = { 24615 },	-- A Gift for the Regent Lord of Quel'Thalas
				}),
				crit(12844, {	-- A Gift for the High Chieftain
					["_quests"] = { 24614 },	-- A Gift for the High Chieftain
				}),
				crit(12845, {	-- A Gift for the Banshee Queen
					["_quests"] = { 24613 },	-- A Gift for the Banshee Queen
				}),
			},
		})),
		ach(1700, {	-- Perma-Peddle
			["provider"] = { "i", 22235 },	-- Truesilver Shafted Arrow
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1188, {	-- Shafted!
			["cost"] = { { "i", 22200, 10 } },	-- 10x Silver Shafted Arrow
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(19400, {	-- Support Your Local Artisans
			["description"] = "You can donate once per day with a maximum of 10.000 gold",
			["providers"] = {
				{ "n", 213457 },	-- Galvus Ironhammer <Artisan's Consortium> [A]
				{ "n", 214508 },	-- Torgando Featherhoof <Artisan's Consortium> [H]
			},
			["coords"] = {
				{ 32.0, 49.8, ELWYNN_FOREST },
				{ 42.2, 18.2, DUROTAR },
			},
			["timeline"] = { ADDED_10_2_5 },
			["groups"] = {
				q(78912, {
					["name"] = "When donating to the Gala (daily)",
					["timeline"] = { ADDED_10_2_5 },
					["collectible"] = false,
					["isDaily"] = true,
				}),
				i(211429),	-- Bundle of Love Tokens
				i(211430),	-- Bundle of Love Tokens
			},
		}),
		ach(1702, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Sweet Tooth
			crit(8705, {	-- Buttermilk Delight
				["provider"] = { "i", 22236 },	-- 1x Buttermilk Delight
			}),
			crit(8706, {	-- Dark Desire
				["provider"] = { "i", 22237 },	-- 1x Dark Desire
			}),
			crit(8708, {	-- Sweet Surprise
				["provider"] = { "i", 22239 },	-- 1x Sweet Surprise
			}),
			crit(8707, {	-- Very Berry Cream
				["provider"] = { "i", 22238 },	-- 1x Very Berry Cream
			}),
		})),
		ach(1696, {	-- The Rocket's Pink Glare
			["cost"] = { { "i", 34258, 10 } },	-- 10x Lovely Fireworks
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(9394, {	-- They Really Love Me! (50)
			["provider"] = { "i", 116648 },	-- Manufactured Love Prism
			["timeline"] = { ADDED_6_0_2 },
			["groups"] = {
				i(116651, {	-- True Love Prism (TOY!)
					["timeline"] = { ADDED_6_0_2 },
				}),
			},
		}),
		ach(9393, {	-- Beacon of Love (25)
			["provider"] = { "i", 116648 },	-- Manufactured Love Prism
			["timeline"] = { ADDED_6_0_2 },
		}),
		ach(9392, {	-- Love Magnet (10)
			["provider"] = { "i", 116648 },	-- Manufactured Love Prism
			["timeline"] = { ADDED_6_0_2 },
		}),
	}),
	n(BOSSES, { ["groups"] = BOSS_GROUPS }),	-- Done this way to prevent the holiday tags from applying to the instances / difficulty headers.
	-- #endif
	n(QUESTS, {
		q(9029, {	-- A Bubbling Cauldron
			["provider"] = { "o", 181073 },	-- Fragrant Cauldron
			["sourceQuests"] = {
				9028,	-- The Source Revealed [A]
				8984,	-- The Source Revealed [H]
			},
			["coord"] = { 89.3, 75.1, ALTERAC_MOUNTAINS },
			["timeline"] = { REMOVED_3_3_0 },
			["isYearly"] = true,
			["groups"] = {
				i(22281, {	-- Blue Dinner Suit
					["timeline"] = { REMOVED_7_2_5 },
				}),
				i(22282, {	-- Purple Dinner Suit
					["timeline"] = { REMOVED_7_2_5 },
				}),
				i(22277, {	-- Red Dinner Suit
					["timeline"] = { REMOVED_7_2_5 },
				}),
				i(22278, {	-- Lovely Blue Dress
					["timeline"] = { REMOVED_7_2_5 },
				}),
				i(22280, {	-- Lovely Purple Dress
					["timeline"] = { REMOVED_7_2_5 },
				}),
				i(22276, {	-- Lovely Red Dress
					["timeline"] = { REMOVED_7_2_5 },
				}),
			},
		}),
		q(24635, {	-- A Cloudlet of Classy Cologne
			["qg"] = 37675,	-- Public Relations Agent
			["coords"] = {
				{ 45.0, 57.4, DARNASSUS },
				{ 33.8, 66.6, IRONFORGE },
				{ 52.8, 77.0, ORGRIMMAR },
				{ 64.2, 67.2, SILVERMOON_CITY },
				{ 62.2, 75.2, STORMWIND_CITY },
				{ 74.0, 56.2, THE_EXODAR },
				{ 43.6, 53.4, THUNDER_BLUFF },
				{ 66.0, 38.4, UNDERCITY },
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- 0/10 Samples Given
					["provider"] = { "i", 49669 },	-- Crown Cologne Sprayer
				}),
			},
		}),
		q(24657, {	-- A Friendly Chat... (A)
			["qg"] = 38325,	-- Marion Sutton
			["sourceQuest"] = 24849,	-- Hot On The Trail (A)
			["coord"] = { 60.4, 76.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(24576, {	-- A Friendly Chat... (H)
			["providers"] = {
				{ "n", 37172 },	-- Detective Snap Snagglebolt
				{ "n", 38328 },	-- Roka
			},
			["sourceQuest"] = 24851,	-- Hot On The Trail (H)
			["coords"] = {
				{ 50.0, 65.0, ORGRIMMAR },	-- Detective Snap Snagglebolt
				{ 57.6, 61.0, ORGRIMMAR },	-- Roka
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		q(24609, {	-- A Gift for a Lord of Ironforge
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 33.4, 65.8, IRONFORGE },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(24612, {	-- A Gift for the Warchief / A Gift for High Overlord Saurfang / A Gift for the Warchief's Advisor
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 52.8, 76.8, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(24613, {	-- A Gift for the Banshee Queen
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 66.4, 38.2, UNDERCITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(24614, {	-- A Gift for the High Chieftain
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 44.0, 52.8, THUNDER_BLUFF },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(24610, {	-- A Gift for the High Priestess of Elune
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 45.2, 57.4, DARNASSUS },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(24597, {	-- A Gift for the King of Stormwind
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 62.4, 75.0, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(24611, {	-- A Gift for the Prophet
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 73.8, 56.8, THE_EXODAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(24615, {	-- A Gift for the Regent Lord of Quel'Thalas
			["qg"] = 37887,	-- Kwee Q. Peddlefeet
			["coord"] = { 64.2, 66.4, SILVERMOON_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["cost"] = {{ "i", 49916, 1 }},	-- Lovely Charm Bracelet
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(24629, {	-- A Perfect Puff of Perfume
			["qg"] = 37675,	-- Public Relations Agent
			["coords"] = {
				{ 45.0, 57.4, DARNASSUS },
				{ 33.8, 66.6, IRONFORGE },
				{ 52.8, 77.0, ORGRIMMAR },
				{ 64.2, 67.2, SILVERMOON_CITY },
				{ 62.2, 75.2, STORMWIND_CITY },
				{ 74.0, 56.2, THE_EXODAR },
				{ 43.6, 53.4, THUNDER_BLUFF },
				{ 66.0, 38.4, UNDERCITY },
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["isDaily"] = true,
		}),
		q(9024, {	-- Aristan's Hunch
			["qg"] = 16105,	-- Aristan Mottar
			["sourceQuest"] = 8903,	-- Dangerous Love (A)
			["coord"] = { 54.6, 65.6, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/1 Cologne Bottle
					["provider"] = { "i", 21833 },	-- Cologne Bottle
				}),
				objective(2, {	-- 0/1 Perfume Bottle
					["provider"] = { "i", 21829 },	-- Perfume Bottle
				}),
			},
		}),
		q(24636, {	-- Bonbon Blitz
			["qg"] = 37675,	-- Public Relations Agent
			["coords"] = {
				{ 45.0, 57.4, DARNASSUS },
				{ 33.8, 66.6, IRONFORGE },
				{ 52.8, 77.0, ORGRIMMAR },
				{ 64.2, 67.2, SILVERMOON_CITY },
				{ 62.2, 75.2, STORMWIND_CITY },
				{ 74.0, 56.2, THE_EXODAR },
				{ 43.6, 53.4, THUNDER_BLUFF },
				{ 66.0, 38.4, UNDERCITY },
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["isDaily"] = true,
		}),
		q(44558, {	-- Crushing the Crown (A) [Legion+]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_7_1_5, REMOVED_10_2_5 },
			["maps"] = { SILVERPINE_FOREST },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/12 Crown Chemical Co. Employees Slain
					["providers"] = {
						{ "n", 114275 },	-- Crown Technician <Crown Chemical Co.>
						{ "n", 114278 },	-- Crown Supply Guard <Crown Chemical Co.>
						{ "n", 114279 },	-- Exploited Crown Intern <Crown Chemical Co.>
						{ "n", 116285 },	-- Test Subject <Crown Chemical Co.>
					},
				}),
			},
		}),
		q(24658, {	-- Crushing the Crown (A) [Elwynn Forest]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 5, 13 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Lackey slain
					["provider"] = { "n", 37214 },	-- Crown Lackey
				}),
			},
		}),
		q(24659, {	-- Crushing the Crown (A) [Darkshore]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { DARKSHORE },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 14, 22 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Thug slain
					["provider"] = { "n", 37917 },	-- Crown Thug
				}),
			},
		}),
		q(24660, {	-- Crushing the Crown (A) [Duskwood]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { DUSKWOOD },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 23, 31 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Duster slain
					["provider"] = { "n", 37984 },	-- Crown Duster
				}),
			},
		}),
		q(24662, {	-- Crushing the Crown (A) [Dustwallow Marsh]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { DUSTWALLOW_MARSH },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 32, 40 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Hoodlum slain
					["provider"] = { "n", 38006 },	-- Crown Hoodlum
				}),
			},
		}),
		q(24663, {	-- Crushing the Crown (A) [The Hinterlands]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { THE_HINTERLANDS },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 41, 50 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Agent slain
					["provider"] = { "n", 38016 },	-- Crown Agent
				}),
			},
		}),
		q(24664, {	-- Crushing the Crown (A) [Winterspring]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { WINTERSPRING },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 51, 60 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Sprinkler slain
					["provider"] = { "n", 38023 },	-- Crown Sprinkler
				}),
			},
		}),
		q(24665, {	-- Crushing the Crown (A) [Terokkar Forest]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { TEROKKAR_FOREST },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 61, 70 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Underling slain
					["provider"] = { "n", 38030 },	-- Crown Underling
				}),
			},
		}),
		q(24666, {	-- Crushing the Crown (A) [Crystalsong Forest]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { CRYSTALSONG_FOREST },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = { 71, 80 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Sprayer slain
					["provider"] = { "n", 38032 },	-- Crown Sprayer
				}),
			},
		}),
		q(28934, {	-- Crushing the Crown (A) [Uldum]
			["qg"] = 38066,	-- Detective Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["coord"] = { 61.5, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_4_0_6, REMOVED_7_1_5 },
			["maps"] = { ULDUM },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 81,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Technician slain
					["provider"] = { "n", 51613 },	-- Crown Technician
				}),
			},
		}),
		q(44546, {	-- Crushing the Crown (H) [Legion+]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_7_1_5, REMOVED_10_2_5 },
			["maps"] = { SILVERPINE_FOREST },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/12 Crown Chemical Co. Employees Slain
					["providers"] = {
						{ "n", 114275 },	-- Crown Technician <Crown Chemical Co.>
						{ "n", 114278 },	-- Crown Supply Guard <Crown Chemical Co.>
						{ "n", 114279 },	-- Exploited Crown Intern <Crown Chemical Co.>
						{ "n", 116285 },	-- Test Subject <Crown Chemical Co.>
					},
				}),
			},
		}),
		q(24638, {	-- Crushing the Crown (H) [Durotar]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { DUROTAR },
			["races"] = HORDE_ONLY,
			["lvl"] = { 5, 13 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Lackey slain
					["provider"] = { "n", 37214 },	-- Crown Lackey
				}),
			},
		}),
		q(24645, {	-- Crushing the Crown (H) [Silverpine Forest]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { SILVERPINE_FOREST },
			["races"] = HORDE_ONLY,
			["lvl"] = { 14, 22 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Thug slain
					["provider"] = { "n", 37917 },	-- Crown Thug
				}),
			},
		}),
		q(24647, {	-- Crushing the Crown (H) [Hillsbrad Foothills]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { HILLSBRAD_FOOTHILLS },
			["races"] = HORDE_ONLY,
			["lvl"] = { 23, 31 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Duster slain
					["provider"] = { "n", 37984 },	-- Crown Duster
				}),
			},
		}),
		q(24648, {	-- Crushing the Crown (H) [Dustwallow Marsh]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { DUSTWALLOW_MARSH },
			["races"] = HORDE_ONLY,
			["lvl"] = { 32, 40 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Hoodlum slain
					["provider"] = { "n", 38006 },	-- Crown Hoodlum
				}),
			},
		}),
		q(24649, {	-- Crushing the Crown (H) [The Hinterlands]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { THE_HINTERLANDS },
			["races"] = HORDE_ONLY,
			["lvl"] = { 41, 50 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Agent slain
					["provider"] = { "n", 38016 },	-- Crown Agent
				}),
			},
		}),
		q(24650, {	-- Crushing the Crown (H) [Winterspring]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { WINTERSPRING },
			["races"] = HORDE_ONLY,
			["lvl"] = { 51, 60 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Sprinkler slain
					["provider"] = { "n", 38023 },	-- Crown Sprinkler
				}),
			},
		}),
		q(24651, {	-- Crushing the Crown (H) [Terokkar Forest]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { TEROKKAR_FOREST },
			["races"] = HORDE_ONLY,
			["lvl"] = { 61, 70 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Underling slain
					["provider"] = { "n", 38030 },	-- Crown Underling
				}),
			},
		}),
		q(24652, {	-- Crushing the Crown (H) [Crystalsong Forest]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_7_1_5 },
			["maps"] = { CRYSTALSONG_FOREST },
			["races"] = HORDE_ONLY,
			["lvl"] = { 71, 80 },
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Sprayer slain
					["provider"] = { "n", 38032 },	-- Crown Sprayer
				}),
			},
		}),
		q(28935, {	-- Crushing the Crown (H) [Uldum]
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_4_0_6, REMOVED_7_1_5 },
			["maps"] = { ULDUM },
			["races"] = HORDE_ONLY,
			["lvl"] = 81,
			["isDaily"] = true,
			["groups"] = {
				objective(1, {	-- Chemical Wagon Destroyed
					["provider"] = { "n", 38035 },	-- Chemical Wagon
					["cost"] = { { "i", 50130, 1 } },	-- Snagglebolt's Khorium Bomb
				}),
				objective(2, {	-- 0/5 Crown Technician slain
					["provider"] = { "n", 51613 },	-- Crown Technician
				}),
			},
		}),
		q(8903, {	-- Dangerous Love (A)
			["qg"] = 16105,	-- Aristan Mottar
			["coord"] = { 54.6, 65.6, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/1 Stormwind Guard's Card
					["provider"] = { "i", 22143 },	-- Stormwind Guard's Card
				}),
			},
		}),
		q(8904, {	-- Dangerous Love (H)
			["qg"] = 16108,	-- Fenstad Argyle
			["coord"] = { 66.8, 44.4, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/1 Guardian's Moldy Card
					["provider"] = { "i", 22145 },	-- Guardian's Moldy Card
				}),
			},
		}),
		q(8897, {	-- Dearest Colara, [Stormwind City]
			["providers"] = {
				{ "n", 16005 },	-- Lieutenant Jocryn Heldric
				{ "i", 21921 },	-- Carefully Penned Note
			},
			["coord"] = { 57, 59.8, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8898, {	-- Dearest Colara, [Ironforge]
			["providers"] = {
				{ "n", 16009 },	-- Tormek Stoneriver
				{ "i", 21920 },	-- Creased Letter
			},
			["coord"] = { 32.4, 66, IRONFORGE },
			["timeline"] = { REMOVED_3_3_0 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8899, {	-- Dearest Colara, [Darnassus]
			["providers"] = {
				{ "n", 16001 },	-- Aldris Fourclouds
				{ "i", 21925 },	-- Immaculate Letter
			},
			["coord"] = { 42, 42, DARNASSUS },
			["timeline"] = { REMOVED_3_3_0 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8900, {	-- Dearest Elenia, [Orgrimmar]
			["providers"] = {
				{ "n", 16007 },	-- Orok Deathbane
				{ "i", 21926 },	-- Slightly Creased Note
			},
			["coord"] = { 51.2, 70.2, ORGRIMMAR },
			["timeline"] = { REMOVED_3_3_0 },
			["maps"] = { UNDERCITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(8901, {	-- Dearest Elenia, [Thunder Bluff]
			["providers"] = {
				{ "n", 16008 },	-- Temma of the Wells
				{ "i", 22264 },	-- Carefully Written Letter
			},
			["coord"] = { 44.8, 59.6, THUNDER_BLUFF },
			["timeline"] = { REMOVED_3_3_0 },
			["maps"] = { UNDERCITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(8902, {	-- Dearest Elenia, [Undercity]
			["providers"] = {
				{ "n", 16003 },	-- Deathguard Tor
				{ "i", 22265 },	-- Lovingly Composed Letter
			},
			["coord"] = { 60.6, 59.6, TIRISFAL_GLADES },
			["timeline"] = { REMOVED_3_3_0 },
			["maps"] = { UNDERCITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(8979, {	-- Fenstad's Hunch
			["qg"] = 16108,	-- Fenstad Argyle
			["sourceQuest"] = 8904,	-- Dangerous Love (H)
			["coord"] = { 66.8, 44.4, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["groups"] = {
				objective(1, {	-- 0/1 Cologne Bottle
					["provider"] = { "i", 21833 },	-- Cologne Bottle
				}),
				objective(2, {	-- 0/1 Perfume Bottle
					["provider"] = { "i", 21829 },	-- Perfume Bottle
				}),
			},
		}),
		q(24848, {	-- Fireworks At The Gilded Rose
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["sourceQuest"] = 24656,	-- Pilfering Perfume (A)
			["coord"] = { 61.6, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(44560, {	-- Follow the Recipe (A)
			["provider"] = { "o", 259806 },	-- Love Potion Recipe
			["coord"] = { 45.2, 73.8, SILVERPINE_FOREST },
			["timeline"] = { ADDED_7_1_5, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
			["isDaily"] = true,
		}),
		q(44559, {	-- Follow the Recipe (H)
			["provider"] = { "o", 259806 },	-- Love Potion Recipe
			["coord"] = { 45.2, 73.8, SILVERPINE_FOREST },
			["timeline"] = { ADDED_7_1_5, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
			["isDaily"] = true,
		}),
		q(8993, {	-- Gift Giving (A)
			["qg"] = 16075,	-- Kwee Q. Peddlefeet
			["coords"] = {
				{ 38.2, 80.4, DARNASSUS },
				{ 41.0, 55.2, IRONFORGE },
				{ 78.6, 17.6, STORMWIND_CITY },
			},
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			-- #if BEFORE 3.3.0
			["groups"] = {
				objective(1, {	-- 0/1 Alliance Gift Collection
					["provider"] = { "i", 22262 },	-- Alliance Gift Collection
				}),
				i(21812),	-- Box of Chocolates
				i(22218),	-- Handful of Rose Petals
				i(22200),	-- Silver Shafted Arrow
				i(34258),	-- Lovely Fireworks
			},
			-- #endif
		}),
		q(8981, {	-- Gift Giving (H)
			["qg"] = 16075,	-- Kwee Q. Peddlefeet
			["coords"] = {
				{ 33.4, 37.8, ORGRIMMAR },
				{ 60.8, 50.6, THUNDER_BLUFF },
				{ 54.8, 90.0, UNDERCITY },
			},
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			-- #if BEFORE 3.3.0
			["groups"] = {
				objective(1, {	-- 0/1 Horde Gift Collection
					["provider"] = { "i", 22263 },	-- Horde Gift Collection
				}),
				i(21812),	-- Box of Chocolates
				i(22218),	-- Handful of Rose Petals
				i(22200),	-- Silver Shafted Arrow
				i(34258),	-- Lovely Fireworks
			},
			-- #endif
		}),
		q(24849, {	-- Hot On The Trail (A)
			["qg"] = 38325,	-- Marion Sutton
			["sourceQuest"] = 24848,	-- Fireworks At The Gilded Rose
			["coord"] = { 60.4, 76.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(24851, {	-- Hot On The Trail (H)
			["qg"] = 38328,	-- Roka
			["sourceQuest"] = 24850,	-- Snivel's Sweetheart
			["coord"] = { 57.6, 61.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		q(24792, {	-- Man on the Inside (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["sourceQuest"] = 24657,	-- A Friendly Chat... (A)
			["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
		}),
		q(24793, {	-- Man on the Inside (H)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["sourceQuest"] = 24576,	-- A Friendly Chat... (H)
			["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
		}),
		q(9025, {	-- Morgan's Discovery
			["qg"] = 279,	-- Morgan Pestle
			["sourceQuest"] = 9024,	-- Aristan's Hunch
			["coord"] = { 56.2, 64.8, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			-- #if BEFORE 3.3.0
			["groups"] = {
				i(21812),	-- Box of Chocolates
				i(22218),	-- Handful of Rose Petals
			},
			-- #endif
		}),
		q(24656, {	-- Pilfering Perfume (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["sourceQuest"] = 24655,	-- Something Stinks (A)
			["coord"] = { 61.6, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(24541, {	-- Pilfering Perfume (H)
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24536,	-- Something Stinks (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		q(24850, {	-- Snivel's Sweetheart
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuest"] = 24541,	-- Pilfering Perfume (H)
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		q(24745, {	-- Something is in the Air (and it Ain't Love) (A)
			["provider"] = { "i", 50320 },	-- Faded Lovely Greeting Card (A)
			["timeline"] = { ADDED_3_3_2, REMOVED_10_2_5 },
			["maps"] = { SHADOWFANG_KEEP },
			["races"] = ALLIANCE_ONLY,
		}),
		q(14483, {	-- Something is in the Air (and it Ain't Love) (H)
			["provider"] = { "i", 49641 },	-- Faded Lovely Greeting Card (H)
			["timeline"] = { ADDED_3_3_2, REMOVED_10_2_5 },
			["maps"] = { SHADOWFANG_KEEP },
			["races"] = HORDE_ONLY,
		}),
		q(24655, {	-- Something Stinks (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["sourceQuests"] = {
				24804,	-- Uncommon Scents (A)
				-- #if AFTER DF
				72735,	-- Still Into Perfume (A)
				-- #endif
			},
			["coord"] = { 61.6, 75.2, STORMWIND_CITY },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
		}),
		q(24536, {	-- Something Stinks (H)
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["sourceQuests"] = {
				24805,	-- Uncommon Scents (H)
				-- #if AFTER DF
				72736,	-- Still Into Perfume (H)
				-- #endif
			},
			["coord"] = { 50.0, 65.0, ORGRIMMAR },
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
		}),
		q(72735, {	-- Still Into Perfume (A)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coords"] = {
				{ 31.4, 63.2, VALDRAKKEN },
				{ 54.2, 60.0, VALDRAKKEN },
				{ 55.0, 37.2, VALDRAKKEN },
			},
			["timeline"] = { ADDED_10_0_5, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(72736, {	-- Still Into Perfume (H)
			["qg"] = 199261,	-- Holiday Enthusiast
			["coords"] = {
				{ 31.4, 63.2, VALDRAKKEN },
				{ 54.2, 60.0, VALDRAKKEN },
				{ 55.0, 37.2, VALDRAKKEN },
			},
			["timeline"] = { ADDED_10_0_5, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
			["isYearly"] = true,
		}),
		q(9028, {	-- The Source Revealed (A)
			["qg"] = 16106,	-- Evert Sorisam
			["sourceQuest"] = 9027,	-- Tracing the Source (A) (2/2)
			["coord"] = { 39.8, 46.8, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8984, {	-- The Source Revealed (H)
			["qg"] = 16109,	-- Mara Rennick
			["sourceQuest"] = 8983,	-- Tracing the Source (H) (2/2)
			["coord"] = { 70.8, 28.8, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(9026, {	-- Tracing the Source (A) (1/2)
			["qg"] = 16105,	-- Aristan Mottar
			["sourceQuest"] = 9025,	-- Morgan's Discovery
			["coord"] = { 54.6, 65.6, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(9027, {	-- Tracing the Source (A) (2/2)
			["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
			["sourceQuest"] = 9026,	-- Tracing the Source (A) (1/2)
			["coord"] = { 52.8, 65.4, STORMWIND_CITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
		}),
		q(8982, {	-- Tracing the Source (H) (1/2)
			["qg"] = 16108,	-- Fenstad Argyle
			["sourceQuest"] = 8980,	-- Zinge's Assessment
			["coord"] = { 66.8, 44.4, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(8983, {	-- Tracing the Source (H) (2/2)
			["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
			["sourceQuest"] = 8982,	-- Tracing the Source (H) (1/2)
			["coord"] = { 67.6, 38.2, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
		}),
		q(24804, {	-- Uncommon Scents (A)
			["qg"] = 38293,	-- Junior Inspector
			["coords"] = {
				{ 44.8, 56.6, DARNASSUS },
				{ 35.0, 68.8, IRONFORGE },
				{ 76.2, 57.2, THE_EXODAR },
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = ALLIANCE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(24805, {	-- Uncommon Scents (H)
			["qg"] = 38295,	-- Junior Detective
			["coords"] = {
				{ 64.2, 70.0, SILVERMOON_CITY },
				{ 42.2, 55.75, THUNDER_BLUFF },
				{ 64.6, 37.4, UNDERCITY },
			},
			["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
			["races"] = HORDE_ONLY,
			["isBreadcrumb"] = true,
		}),
		q(14488, {	-- You've Been Served
			["qg"] = 38208,	-- Investigator Fezzen Brasstacks
			["timeline"] = { ADDED_3_3_0, REMOVED_4_0_3 },
			["maps"] = { SHADOWFANG_KEEP },
			["isDaily"] = true,
		}),
		q(8980, {	-- Zinge's Assessment
			["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
			["sourceQuest"] = 8979,	-- Fenstad's Hunch
			["coord"] = { 50.0, 68.6, UNDERCITY },
			["timeline"] = { REMOVED_3_3_0 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			-- #if BEFORE 3.3.0
			["groups"] = {
				i(21812),	-- Box of Chocolates
				i(22218),	-- Handful of Rose Petals
			},
			-- #endif
		}),
	}),
	-----------------
	-- 2024 Update --
	-----------------
	n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_10_2_5 }, ["isYearly"] = true, }, {
		q(78329, {	-- Love is in the Air (A)
			["qgs"] = {
				215197,	-- Gabbo Blinkwink
				-- #if AFTER TWW
				220307,	-- Holiday Enthusiast
				-- #endif
			},
			["coords"] = {
				{ 54.3, 60.3, VALDRAKKEN },
				-- #if AFTER TWW
				{ 48.4, 48.3, DORNOGAL },
				-- #endif
			},
			["isBreadcrumb"] = true,
			["races"] = ALLIANCE_ONLY,
		}),
		q(78328, {	-- Take a Look Around (A)
			["qg"] = 211802,	-- Luciana Delgado
			["coord"] = { 32.3, 49.4, ELWYNN_FOREST },
			["sourceQuest"] = 78329,	-- Love is in the Air (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = { i(LOVE_TOKEN) },
		}),
		q(78332, {	-- I Smell Trouble (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["coord"] = { 32.2, 50.1, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				i(210658),	-- Discarded Perfume Bottle
				o(410998, {	-- Formula: Intoxicating Toxic Perfume
					i(210416),	-- Formula: Intoxicating Toxic Perfume (QI!)
				}),
				o(410994, {	-- Map of Shadowfang Keep Security
					i(210413),	-- Map of Shadowfang Keep Security (QI!)
				}),
				o(410999, {	-- Memo from Apothecary Hummel
					i(210417),	-- Memo from Apothecary Hummel (QI!) [book]
				}),
				i(213091),	-- Memo from Apothecary Hummel [book] (awared to player after turn in this quest)
				i(210332),	-- O.D.I.E.'s Remote Control (QI!)
			},
		}),
		q(78337, {	-- An Unwelcome Gift (A)
			["qg"] = 213560,	-- Inspector Snip Snagglebolt (MobileNPC)
			["sourceQuest"] = 78332,	-- I Smell Trouble (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				i(210688),	-- Manufacturing Oil
				i(211208),	-- O.D.I.E.'s Remote Control (QI!)
			},
		}),
		q(78729, {	-- Raising a Stink (A)
			["qg"] = 213560,	-- Inspector Snip Snagglebolt (MobileNPC)
			["sourceQuest"] = 78337,	-- An Unwelcome Gift (A)
			["races"] = ALLIANCE_ONLY,
		}),
		q(78369, {	-- Crushing the Crown (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
			["sourceQuest"] = 78729,	-- Raising a Stink (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				o(413126, {	-- Box of Artisanal Goods
					["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
					["g"] = {
						i(210431),	-- Artisanal Bon-Bombs (QI!)
						i(211127),	-- Note from Bang Sparknozzle (QI!) [book]
					},
				}),
			},
		}),
		q(78379, {	-- The Stench of Revenge (A)
			["qg"] = 38066,	-- Inspector Snip Snagglebolt
			["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
			["sourceQuest"] = 78369,	-- Crushing the Crown (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = { i(LOVE_TOKEN) },
		}),
		q(78981, {	-- Love is in the Air (H)
			["qgs"] = {
				215196,	-- Aurora Vabsley
				-- #if AFTER TWW
				220307,	-- Holiday Enthusiast
				-- #endif
			},
			["coords"] = {
				{ 54.3, 62.7, VALDRAKKEN },
				-- #if AFTER TWW
				{ 48.9, 48.3, DORNOGAL },
				-- #endif
			},
			["isBreadcrumb"] = true,
			["races"] = HORDE_ONLY,
		}),
		q(78980, {	-- Take a Look Around (H)
			["qg"] = 214477,	-- Mahaja Cloudsong
			["coord"] = { 41.8, 18.0, DUROTAR },
			["sourceQuest"] = 78981,	-- Love is in the Air (H)
			["races"] = HORDE_ONLY,
			["groups"] = { i(LOVE_TOKEN) },
		}),
		q(78982, {	-- I Smell Trouble (H)
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["coord"] = { 41.6, 17.7, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				i(210658),	-- Discarded Perfume Bottle
				o(410998, {	-- Formula: Intoxicating Toxic Perfume
					i(210416),	-- Formula: Intoxicating Toxic Perfume (QI!)
				}),
				o(410994, {	-- Map of Shadowfang Keep Security
					i(210413),	-- Map of Shadowfang Keep Security (QI!)
				}),
				o(410999, {	-- Memo from Apothecary Hummel
					i(210417),	-- Memo from Apothecary Hummel (QI!) [book]
				}),
				i(213091),	-- Memo from Apothecary Hummel [book] (awared to player after turn in this quest)
				i(211778),	-- O.D.I.E.'s Remote Control (QI!)
			},
		}),
		q(78983, {	-- An Unwelcome Gift (H)
			["qg"] = 214707,	-- Detective Snap Snagglebolt (MobileNPC)
			["sourceQuest"] = 78982,	-- I Smell Trouble (H)
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				i(211781),	-- O.D.I.E.'s Remote Control (QI!)
			},
		}),
		q(78978, {	-- Raising a Stink (H)
			["qg"] = 214707,	-- Detective Snap Snagglebolt (MobileNPC)
			["sourceQuest"] = 78983,	-- I Smell Trouble (H)
			["races"] = HORDE_ONLY,
		}),
		q(78984, {	-- Crushing the Crown (H)
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
			["sourceQuest"] = 78978,	-- Raising a Stink (H)
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(LOVE_TOKEN),
				o(413126, {	-- Box of Artisanal Goods
					["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
					["g"] = {
						i(210431),	-- Artisanal Bon-Bombs (QI!)
						i(211782),	-- Note from Zikky (QI!) [book]
					},
				}),
			},
		}),
		q(78985, {	-- The Stench of Revenge (H)
			["qg"] = 37172,	-- Detective Snap Snagglebolt
			["coord"] = { 45.7, 68.5, SILVERPINE_FOREST },
			["sourceQuest"] = 78984,	-- Crushing the Crown (H)
			["races"] = HORDE_ONLY,
			["groups"] = { i(LOVE_TOKEN) },
		}),
	})),
	n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_10_2_5 }, ["isDaily"] = true, },
	sharedData({ ["groups"] = { i(LOVE_TOKEN) }, },{
		q(78594, {	-- Getaway to Scenic Feralas! (A)
			["qg"] = 212677,	-- Gabbo Blinkwink
			["coord"] = { 34.3, 51.6, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(211923),	-- Sealed Letter (QI!)
				i(211922),	-- Bouquet of Flowers (QI!)
			},
		}),
		q(78988, {	-- Getaway to Scenic Feralas! (H)
			["qg"] = 214497,	-- Aurora Vabsley
			["coord"] = { 41.5, 16.1, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(211923),	-- Sealed Letter (QI!)
				i(211922),	-- Bouquet of Flowers (QI!)
			},
		}),
		q(78565, {	-- Getaway to Scenic Grizzly Hills! (A)
			["qg"] = 212677,	-- Gabbo Blinkwink
			["coord"] = { 34.3, 51.6, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				--[[
				-- CRIEVE NOTE: I wanted to show how you'd add the section below as an objective.
				objective(1, {	-- 0/12 Grizzly Hills Flower
					-- All this does it make the tooltip for the objective show up when showing the tooltip for anything listed in the provider and also gives the objective entry the icon of whatever is first in the provider's list, which is the flower item itself. Once you've completed the objective, all of the associated things would appear as completed in their tooltips!
					["providers"] = {
						{ "i", 210719 },	-- Grizzly Hills Flower
						{ "o", 411560 },	-- Lavenbloom
						{ "o", 416448 },	-- Lush Lavenbloom
						{ "o", 416450 },	-- Lush Orange Illicium
						{ "o", 416449 },	-- Lush Sugar Orchid
						{ "o", 411562 },	-- Orange Illicium
						{ "o", 411561 },	-- Sugar Orchid
					},
				}),
				]]--
				o_repeated({
					i(210719),	-- Grizzly Hills Flower (QI!)
					o(411560),	-- Lavenbloom
					o(416448),	-- Lush Lavenbloom
					o(416450),	-- Lush Orange Illicium
					o(411562),	-- Orange Illicium
					o(411561),	-- Sugar Orchid
				}),
			},
		}),
		q(78986, {	-- Getaway to Scenic Grizzly Hills! (H)
			["qg"] = 214497,	-- Aurora Vabsley
			["coord"] = { 41.5, 16.1, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				--[[
				-- CRIEVE NOTE: I wanted to show how you'd add the section below as an objective.
				objective(1, {	-- 0/12 Grizzly Hills Flower
					["providers"] = {
						{ "i", 210719 },	-- Grizzly Hills Flower
						{ "o", 411560 },	-- Lavenbloom
						{ "o", 416448 },	-- Lush Lavenbloom
						{ "o", 416450 },	-- Lush Orange Illicium
						{ "o", 416449 },	-- Lush Sugar Orchid
						{ "o", 411562 },	-- Orange Illicium
						{ "o", 411561 },	-- Sugar Orchid
					},
				}),
				]]--
				o_repeated({
					i(210719),	-- Grizzly Hills Flower (QI!)
					o(411560),	-- Lavenbloom
					o(416448),	-- Lush Lavenbloom
					o(416450),	-- Lush Orange Illicium
					o(411562),	-- Orange Illicium
					o(411561),	-- Sugar Orchid
					o(416449),	-- Lush Sugar Orchid
				}),
			},
		}),
		q(78591, {	-- Getaway to Scenic Nagrand! (A)
			["qg"] = 212677,	-- Gabbo Blinkwink
			["coord"] = { 34.3, 51.6, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(210743),	-- Borrowed Camera (QI!)
			},
		}),
		q(78987, {	-- Getaway to Scenic Nagrand! (H)
			["qg"] = 214497,	-- Aurora Vabsley
			["coord"] = { 41.5, 16.1, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(210743),	-- Borrowed Camera (QI!)
			},
		}),
		q(78724, {	-- Loving Yourself, Your Way (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["sourceQuest"] = 78664,	-- The Gift of Self-Care (A)
			["races"] = ALLIANCE_ONLY,
		}),
		q(78726, {	-- Loving Yourself, Your Way (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["sourceQuest"] = 78664,	-- The Gift of Self-Care (A)
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				objective(1, {	-- 0/15 Treats Consumed
				["providers"] = {
					{ "i", 210929 },	-- Comfort Food Package
					{ "i", 210928 },	-- Healthy Body Package
					{ "i", 210926 },	-- Me, Myself, and Chocolate Package
				},
			}),
			},
		}),
		q(78727, {	-- Loving Yourself, Your Way (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["sourceQuest"] = 78664,	-- The Gift of Self-Care (A)
			["races"] = ALLIANCE_ONLY,
		}),
		q(78979, {	-- Loving Yourself, Your Way (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["sourceQuest"] = 78989,	-- The Gift of Self-Care (H)
			["races"] = HORDE_ONLY,
		}),
		q(78992, {	-- Loving Yourself, Your Way (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["sourceQuest"] = 78989,	-- The Gift of Self-Care (H)
			["races"] = HORDE_ONLY,
		}),
		q(78993, {	-- Loving Yourself, Your Way (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["sourceQuest"] = 78989,	-- The Gift of Self-Care (H)
			["races"] = HORDE_ONLY,
		}),
		q(78679, {	-- The Gift of Relaxation (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				i(145277),	-- Aftermath of the Second War
				i(145289),	-- Arathor and the Troll Wars
				i(145307),	-- The Betrayer Ascendant
				i(145312),	-- The Twin Empires
				i(145297),	-- The Dark Portal and the Fall of Stormwind
				i(212468),	-- Copy of Blinking Rules & Regulations
				i(212465),	-- Copy of Bundle of Romantic Correspondences
				i(212463),	-- Copy of Common / Orcish Dictionary
				i(212460),	-- Copy of Excerpts from the Journal of Archmage Vargoth
				i(212469),	-- Copy of Polymorphic Rules & Regulations
				i(212473),	-- Copy of The Archmage Antonidas - Part I
				i(212474),	-- Copy of The Archmage Antonidas - Part II
				i(212462),	-- Copy of Remedial Magic 101: Tips from the Pros
				i(212489),	-- Copy of a Damaged Apprentice Journal
				i(212466),	-- Copy of Losses of the Third War
				i(212461),	-- Copy of Kirin Tor Monthly (March Issue)
				i(212464),	-- Copy of Kirin Tor Monthly (November Issue)
				i(212475),	-- Copy of The Archmage Antonidas - Part III
				i(212476),	-- Copy of The Dangers of Magic Abuse
				i(212472),	-- Copy of The Fluffy Bunny
				i(212471),	-- Copy of the Journal of Archmage Antonidas
				i(212459),	-- Copy of The Old Wizard's Almanac
				i(212477),	-- Copy of The Schools of Arcane Magic - Introduction
				i(212478),	-- Copy of The Schools of Arcane Magic - Abjuration
				i(212479),	-- Copy of The Schools of Arcane Magic - Conjuration
				i(212480),	-- Copy of The Schools of Arcane Magic - Divination
				i(212481),	-- Copy of The Schools of Arcane Magic - Enchantment
				i(212482),	-- Copy of The Schools of Arcane Magic - Illusion
				i(212483),	-- Copy of The Schools of Arcane Magic - Necromancy
				i(212484),	-- Copy of The Schools of Arcane Magic - Transmutation
				i(212486),	-- Copy of The Worst Mage in Dalaran: A Children's Book
				i(212487),	-- Copy of On the Virtues of Magic
				i(212488),	-- Copy of Kirin Tor Monthly (May Issue)
				i(212470),	-- Copy of Thinking with Portals - A Memorandum on Proper Portal Usage
				i(212485),	-- Copy of Weathered Diary - Dates from the Third War
				i(212467),	-- Discarded Advertisement
				i(3899),	-- Legends of the Gurubashi, Volume 3
				i(142250),	-- Aegwynn and the Dragon Hunt
				i(145306),	-- Archimonde's Return and the Flight to Kalimdor
				i(145278),	-- Beyond the Dark Portal
				i(145282),	-- Charge of the Dragonflights
				i(145309),	-- Civil War in the Plaguelands
				i(145313),	-- Empires' Fall
				i(145286),	-- Exile of the High Elves
				i(145284),	-- Mount Hyjal and Illidan's Gift
				i(145308),	-- Rise of the Blood Elves
				i(145296),	-- Rise of the Horde
				i(145280),	-- Sargeras and the Betrayal
				i(145298),	-- The Alliance of Lordaeron
				i(145300),	-- The Battle of Grim Batol
				i(145273),	-- The Birth of the Lich King
				i(145294),	-- The Last Guardian
				i(145302),	-- The New Horde
				i(145281),	-- The Old Gods and the Ordering of Azeroth
				i(145304),	-- The Scourge of Lordaeron
				i(145287),	-- The Sentinels and the Long Vigil
				i(145292),	-- The Seven Kingdoms
				i(145285),	-- The World Tree and the Emerald Dream
				i(145293),	-- War of the Three Hammers
				i(145314),	-- Wrath of Soulflayer
				i(203932),	-- Sentient Book
				-- got tired of clicking books kek
			},
		}),
		q(78991, {	-- The Gift of Relaxation (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["groups"] = {
				i(145277),	-- Aftermath of the Second War
				i(145289),	-- Arathor and the Troll Wars
				i(145307),	-- The Betrayer Ascendant
				i(145312),	-- The Twin Empires
				i(145297),	-- The Dark Portal and the Fall of Stormwind
				i(212468),	-- Copy of Blinking Rules & Regulations
				i(212465),	-- Copy of Bundle of Romantic Correspondences
				i(212463),	-- Copy of Common / Orcish Dictionary
				i(212460),	-- Copy of Excerpts from the Journal of Archmage Vargoth
				i(212469),	-- Copy of Polymorphic Rules & Regulations
				i(212473),	-- Copy of The Archmage Antonidas - Part I
				i(212474),	-- Copy of The Archmage Antonidas - Part II
				i(212462),	-- Copy of Remedial Magic 101: Tips from the Pros
				i(212489),	-- Copy of a Damaged Apprentice Journal
				i(212466),	-- Copy of Losses of the Third War
				i(212461),	-- Copy of Kirin Tor Monthly (March Issue)
				i(212464),	-- Copy of Kirin Tor Monthly (November Issue)
				i(212475),	-- Copy of The Archmage Antonidas - Part III
				i(212476),	-- Copy of The Dangers of Magic Abuse
				i(212472),	-- Copy of The Fluffy Bunny
				i(212471),	-- Copy of the Journal of Archmage Antonidas
				i(212459),	-- Copy of The Old Wizard's Almanac
				i(212477),	-- Copy of The Schools of Arcane Magic - Introduction
				i(212478),	-- Copy of The Schools of Arcane Magic - Abjuration
				i(212479),	-- Copy of The Schools of Arcane Magic - Conjuration
				i(212480),	-- Copy of The Schools of Arcane Magic - Divination
				i(212481),	-- Copy of The Schools of Arcane Magic - Enchantment
				i(212482),	-- Copy of The Schools of Arcane Magic - Illusion
				i(212483),	-- Copy of The Schools of Arcane Magic - Necromancy
				i(212484),	-- Copy of The Schools of Arcane Magic - Transmutation
				i(212486),	-- Copy of The Worst Mage in Dalaran: A Children's Book
				i(212487),	-- Copy of On the Virtues of Magic
				i(212488),	-- Copy of Kirin Tor Monthly (May Issue)
				i(212470),	-- Copy of Thinking with Portals - A Memorandum on Proper Portal Usage
				i(212485),	-- Copy of Weathered Diary - Dates from the Third War
				i(212467),	-- Discarded Advertisement
				i(3899),	-- Legends of the Gurubashi, Volume 3
				i(142250),	-- Aegwynn and the Dragon Hunt
				i(145306),	-- Archimonde's Return and the Flight to Kalimdor
				i(145278),	-- Beyond the Dark Portal
				i(145282),	-- Charge of the Dragonflights
				i(145309),	-- Civil War in the Plaguelands
				i(145313),	-- Empires' Fall
				i(145286),	-- Exile of the High Elves
				i(145284),	-- Mount Hyjal and Illidan's Gift
				i(145308),	-- Rise of the Blood Elves
				i(145296),	-- Rise of the Horde
				i(145280),	-- Sargeras and the Betrayal
				i(145298),	-- The Alliance of Lordaeron
				i(145300),	-- The Battle of Grim Batol
				i(145273),	-- The Birth of the Lich King
				i(145294),	-- The Last Guardian
				i(145302),	-- The New Horde
				i(145281),	-- The Old Gods and the Ordering of Azeroth
				i(145304),	-- The Scourge of Lordaeron
				i(145287),	-- The Sentinels and the Long Vigil
				i(145292),	-- The Seven Kingdoms
				i(145285),	-- The World Tree and the Emerald Dream
				i(145293),	-- War of the Three Hammers
				i(145314),	-- Wrath of Soulflayer
				i(203932),	-- Sentient Book
				-- got tired of clicking books kek
			},
		}),
		q(78674, {	-- The Gift of Relief (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
		}),
		q(78990, {	-- The Gift of Relief (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["races"] = HORDE_ONLY,
		}),
		q(78664, {	-- The Gift of Self-Care (A)
			["qg"] = 213262,	-- Ying
			["coord"] = { 35.2, 50.5, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
		}),
		q(78989, {	-- The Gift of Self-Care (H)
			["qg"] = 214591,	-- Ning
			["coord"] = { 41.9, 16.2, DUROTAR },
			["races"] = HORDE_ONLY,
		}),
	}))),
	n(REWARDS, {
		-- #if BEFORE 3.3.2.11403
		["providers"] = {
			{ "i", 21979 },	-- Gift of Adoration: Darnassus
			{ "i", 22155 },	-- Pledge of Adoration: Darnassus
			{ "i", 21980 },	-- Gift of Adoration: Ironforge
			{ "i", 22154 },	-- Pledge of Adoration: Ironforge
			{ "i", 21981 },	-- Gift of Adoration: Stormwind
			{ "i", 21975 },	-- Pledge of Adoration: Stormwind
			{ "i", 22164 },	-- Gift of Adoration: Orgrimmar
			{ "i", 22156 },	-- Pledge of Adoration: Orgrimmar
			{ "i", 22165 },	-- Gift of Adoration: Thunder Bluff
			{ "i", 22158 },	-- Pledge of Adoration: Thunder Bluff
			{ "i", 22166 },	-- Gift of Adoration: Undercity
			{ "i", 22157 },	-- Pledge of Adoration: Undercity
		},
		["description"] = "These items are contained within the Gifts and Pledges of Adoration.",
		-- #endif
		["groups"] = {
			i(21813, {	-- Bag of Heart Candies
				i(21816),	-- Heart Candy (Be Mine!)
				i(21817),	-- Heart Candy (I LOVE YOU)
				i(21818),	-- Heart Candy (I'll follow you all around Azeroth.)
				i(21819),	-- Heart Candy (All yours.)
				i(21820),	-- Heart Candy (You're the best!)
				i(21821),	-- Heart Candy (I'm all yours!)
				i(21822),	-- Heart Candy (You're mine!)
				i(21823),	-- Heart Candy (Hot lips!)
			}),
			i(49909, {	-- Box of Chocolates
				["timeline"] = { ADDED_3_3_2 },
				["groups"] = {
					i(22236),	-- Buttermilk Delight
					i(22237),	-- Dark Desire
					i(22239),	-- Sweet Surprise
					i(22238),	-- Very Berry Cream
				},
			}),
			i(21812, {	-- Box of Chocolates
				["timeline"] = { REMOVED_3_3_2 },
				["groups"] = {
					i(22236),	-- Buttermilk Delight
					i(22237),	-- Dark Desire
					i(22239),	-- Sweet Surprise
					i(22238),	-- Very Berry Cream
				},
			}),
			i(22218),	-- Handful of Rose Petals
			-- #if BEFORE 3.3.2.11403
			i(22261),	-- Love Fool
			-- #endif
			i(34258, {	-- Lovely Fireworks
				["timeline"] = { ADDED_2_3_0 },
			}),
			-- #if BEFORE 3.3.2.11403
			i(22279, {	-- Lovely Black Dress
				["timeline"] = { REMOVED_7_2_5 },
			}),
			i(34480, {	-- Romantic Picnic Basket (TOY!)
				["timeline"] = { ADDED_2_4_0 },
			}),
			i(22200),	-- Silver Shafted Arrow
			i(22235, {	-- Peddlefeet (PET!)
				["timeline"] = { ADDED_1_11_1 },
			}),
			i(22259, {	-- Unbestowed Friendship Bracelet
				["timeline"] = { REMOVED_3_3_2 },
			}),
			-- #endif
		},
	}),
	n(COMMON_VENDOR_ITEMS, {
		["sharedDescription"] = "Can be purchased from innkeepers.",
		["groups"] = {
			i(21833, {	-- Cologne Bottle
				["timeline"] = { REMOVED_3_3_2, ADDED_8_1_0 },
				["_drop"] = { "f", "spellID" },
			}),
			i(21829, {	-- Perfume Bottle
				["timeline"] = { REMOVED_3_3_2, ADDED_8_1_0 },
				["_drop"] = { "f", "spellID" },
			}),
			i(21815, {	-- Wrinkled Love Token
				["timeline"] = { REMOVED_3_3_2 },
				["_drop"] = { "f" },
			}),
		},
	}),
	n(DROPS, bubbleDownSelf({["timeline"] = { ADDED_10_2_5 },},{
		["description"] = "Perfumes and Colognes can be looted from any killed creature related to the Holiday.",
		["groups"] = {
			i(49859),	-- "Bravado" Cologne
			i(49857),	-- "Enchantress" Perfume
			i(49858),	-- "Forever" Perfume
			i(49861),	-- "STALWART" Cologne
			i(49856),	-- "VICTORY" Perfume
			i(49860),	-- "Wizardry" Cologne
		},
	})),
	-- #if AFTER 3.3.2.11403
	n(VENDORS, {
		n(211873, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Bang Sparknozzle <Lovely Novelties>
			["coord"] = { 33.6, 47.8, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210318, {	-- Chocolate Bon-Bomb
					["cost"] = {{"i", LOVE_TOKEN, 1}},
				}),
				i(22261, {	-- Love Fool
					["cost"] = {{"i", LOVE_TOKEN, 10}},
				}),
				i(34258, {	-- Lovely Fireworks
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(116648, {	-- Manufactured Love Prism
					["cost"] = {{"i", LOVE_TOKEN, 40}},
				}),
				i(211976, {	-- Pink Brightbursts
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(144339, {	-- Sturdy Love Fool (TOY!)
					["cost"] = {{"i", LOVE_TOKEN, 100}},
				}),
			},
		})),
		n(213094, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Bimble Longberry
			["coord"] = { 33.7, 51.3, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210928),	-- Healthy Body Package
			},
		})),
		n(214482, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Grogg Skullsmasher <Fruit Vendor>
			["coord"] = { 41.2, 18.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(210821),	-- Berry Chocolate Tart
				i(210819),	-- Chocolate-Covered Cherries
			},
		})),
		n(214493, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Guo Plumpaw
			["coord"] = { 3357, 50.9, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210841),	-- Buttered Oysters
				i(210929),	-- Comfort Food Package
				i(210842),	-- Fresh Fig
			},
		})),
		n(214488, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Hana Breezeheart <Flower Vendor>
			["coord"] = { 41.4, 17.8, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(211359, {	-- Eternal Black Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211358, {	-- Eternal Blue Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211357, {	-- Eternal Orange Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211355, {	-- Eternal Pink Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211354, {	-- Eternal White Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211352, {	-- Eternal Yellow Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(22218, {	-- Handful of Rose Petals
					["cost"] = {{"i", LOVE_TOKEN, 2}},
				}),
				i(50163, {	-- Lovely Rose
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211363, {	-- Rose of Dreams Fulfilled
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211351, {	-- Rose of Friendship
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211362, {	-- Rose of Independence
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211361, {	-- Rose of Joy
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211360, {	-- Rose of Purity
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211264, {	-- Rose of Romance
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211364, {	-- Rose of Tragedy
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(210965, {	-- Single-Use Bouquet
					["cost"] = {{"i", LOVE_TOKEN, 1}},
				}),
			},
		})),
		n(214861, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Jeremiah Payson <Crunchy Sweets> [Need HORDE Version]
			["coord"] = { 41.2, 17.5, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(211810),	-- Chocolate-Covered Crunchies
			},
		})),
		n(211812, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Kiera Torres <Lovely Prizes and Heirlooms>
			["coord"] = { 32.2, 50.4, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				filter(BATTLE_PETS, {
					i(205156, {	-- Heartseeker Moth (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(232923, {	-- Living Rose (PET!)
						["timeline"] = { ADDED_11_0_7 },
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(116155, {	-- Lovebird Hatchling (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(22235, {	-- Peddlefeet (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
				}),
				n(HEIRLOOMS, {
					i(122339, {	-- Ancient Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 200}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(204337, {	-- Awakened Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(167732, {	-- Battle-Hardened Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(187998, {	-- Eternal Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(122341, {	-- Timeworn Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(151615, {	-- Weathered Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
				}),
				filter(MISC, {
					i(21813, {	-- Bag of Heart Candies
						["cost"] = {{"i", LOVE_TOKEN, 2}},
						["g"] = {
							i(21816),	-- Heart Candy (Be Mine!)
							i(21817),	-- Heart Candy (I LOVE YOU)
							i(21818),	-- Heart Candy (I'll follow you all around Azeroth.)
							i(21819),	-- Heart Candy (All yours.)
							i(21820),	-- Heart Candy (You're the best!)
							i(21821),	-- Heart Candy (I'm all yours!)
							i(21822),	-- Heart Candy (You're mine!)
							i(21823),	-- Heart Candy (Hot lips!)
						},
					}),
					i(22200, {	-- Silver Shafted Arrow
						["cost"] = {{"i", LOVE_TOKEN, 5}},
					}),
					i(50160, {	-- Lovely Dress Box
						["cost"] = {{"i", LOVE_TOKEN, 20}},
						["g"] = {
							ach(1694, {	-- Lovely Luck Is On Your Side
								["provider"] = { "i", 151770 },	-- Lovely Black Dress
							}),
							i(151770),	-- Lovely Black Dress
							i(151768),	-- Lovely Blue Dress
							i(151767),	-- Lovely Purple Dress
							i(151769),	-- Lovely Red Dress
						},
					}),
					i(50161, {	-- Dinner Suit Box
						["cost"] = {{"i", LOVE_TOKEN, 20}},
						["g"] = {
							i(151765),	-- Blue Dinner Suit
							i(151764),	-- Purple Dinner Suit
							i(151766),	-- Red Dinner Suit
						},
					}),
				}),
				filter(MOUNTS, {
					i(210973, {	-- Heartseeker Mana Ray (MOUNT!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(72146, {	-- Swift Lovebird (MOUNT!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
				}),
				filter(TOYS, {
					i(210975, {	-- Date Simulation Modulator (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 100}},
					}),
					i(210974, {	-- Eyes For You Only (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(211864, {	-- Exquisite Love Boat (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(142341, {	-- Love Boat (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(165670, {	-- Peddlefeet's Lovely Hearthstone (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 150}},
					}),
					i(34480, {	-- Romantic Picnic Basket (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 10}},
					}),
				}),
				filter(COSMETIC, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
					iensemble(232925, {	-- Ensemble: Truly Heartfelt Shoulders
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
				})),
			},
		})),
		n(37674, bubbleDownSelf({ ["timeline"] = { ADDED_3_3_2, REMOVED_10_2_5 } }, {	-- Lovely Merchant <Crown Chemical Co.>
			["coords"] = {
				{ 45.2, 57.6, DARNASSUS },
				{ 33.8, 66.6, IRONFORGE },
				{ 52.8, 77.6, ORGRIMMAR },
				{ 64.2, 67.2, SILVERMOON_CITY },
				{ 62.6, 75.4, STORMWIND_CITY },
				{ 74.0, 56.4, THE_EXODAR },
				{ 43.6, 53.6, THUNDER_BLUFF },
				{ 66.0, 38.6, UNDERCITY },
			},
			["groups"] = {
				i(122339, {	-- Ancient Heirloom Scabbard
					["cost"] = { { "i", LOVE_TOKEN, 200 } },	-- 200x Love Token
					["timeline"] = { ADDED_6_1_0 },
					["sym"] = { { "fill" } },	-- simply fill this item
				}),
				i(167732, {	-- Battle-Hardened Heirloom Scabbard
					["cost"] = { { "i", LOVE_TOKEN, 450 } },	-- 450x Love Token
					["timeline"] = { ADDED_8_1_5 },
					["sym"] = { { "fill" } },	-- simply fill this item
				}),
				i(187998, {	-- Eternal Heirloom Scabbard
					["cost"] = { { "i", LOVE_TOKEN, 450 } },	-- 450x Love Token
					["timeline"] = { ADDED_9_1_5 },
					["sym"] = { { "fill" } },	-- simply fill this item
				}),
				i(122341, {	-- Timeworn Heirloom Scabbard
					["cost"] = { { "i", LOVE_TOKEN, 450 } },	-- 450x Love Token
					["timeline"] = { ADDED_6_1_0 },
					["sym"] = { { "fill" } },	-- simply fill this item
				}),
				i(151615, {	-- Weathered Heirloom Scabbard
					["cost"] = { { "i", LOVE_TOKEN, 450 } },	-- 450x Love Token
					["timeline"] = { ADDED_7_2_5 },
					["sym"] = { { "fill" } },	-- simply fill this item
				}),
				i(50161, {	-- Dinner Suit Box
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 20 } },	-- 20x Love Token
					["groups"] = {
						i(151765, {	-- Blue Dinner Suit
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(151764, {	-- Purple Dinner Suit
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(151766, {	-- Red Dinner Suit
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(22281, {	-- Blue Dinner Suit
							["timeline"] = { REMOVED_7_2_5 },
						}),
						i(22282, {	-- Purple Dinner Suit
							["timeline"] = { REMOVED_7_2_5 },
						}),
						i(22277, {	-- Red Dinner Suit
							["timeline"] = { REMOVED_7_2_5 },
						}),
					},
				}),
				i(50160, {	-- Lovely Dress Box
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 20 } },	-- 20x Love Token
					["groups"] = {
						ach(1694, {	-- Lovely Luck Is On Your Side
							["providers"] = {
							-- #if AFTER 7.2.5.24116
							{ "i", 151770 },	-- Lovely Black Dress
							-- #else
							{ "i", 22279 },	-- Lovely Black Dress
							-- #endif
							},
						}),
						i(151770, {	-- Lovely Black Dress
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(151768, {	-- Lovely Blue Dress
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(151767, {	-- Lovely Purple Dress
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(151769, {	-- Lovely Red Dress
							["timeline"] = { ADDED_7_2_5 },
						}),
						i(22279, {	-- Lovely Black Dress
							["timeline"] = { REMOVED_7_2_5 },
						}),
						i(22278, {	-- Lovely Blue Dress
							["timeline"] = { REMOVED_7_2_5 },
						}),
						i(22280, {	-- Lovely Purple Dress
							["timeline"] = { REMOVED_7_2_5 },
						}),
						i(22276, {	-- Lovely Red Dress
							["timeline"] = { REMOVED_7_2_5 },
						}),
					},
				}),
				i(142341, {	-- Love Boat (TOY!)
					["timeline"] = { ADDED_7_1_0 },
					["cost"] = { { "i", LOVE_TOKEN, 270 } },	-- 270x Love Token
				}),
				i(165670, {	-- Peddlefeet's Lovely Hearthstone (TOY!)
					["timeline"] = { ADDED_8_1_0 },
					["cost"] = { { "i", LOVE_TOKEN, 150 } },	-- 150x Love Token
				}),
				i(34480, {	-- Romantic Picnic Basket (TOY!)
					["timeline"] = { ADDED_2_4_0 },
					["cost"] = { { "i", LOVE_TOKEN, 10 } },	-- 10x Love Token
				}),
				i(144339, {	-- Sturdy Love Fool (TOY!)
					["timeline"] = { ADDED_7_1_5 },
					["cost"] = { { "i", LOVE_TOKEN, 100 } },	-- 100x Love Token
				}),
				i(116155, {	-- Lovebird Hatchling (PET!)
					["timeline"] = { ADDED_6_0_2 },
					["cost"] = { { "i", LOVE_TOKEN, 40 } },	-- 40x Love Token
				}),
				i(22235, {	-- Peddlefeet (PET!)
					["cost"] = { { "i", LOVE_TOKEN, 40 } },	-- 40x Love Token
				}),
				i(72146, {	-- Swift Lovebird (MOUNT!)
					["timeline"] = { ADDED_4_3_0 },
					["cost"] = { { "i", LOVE_TOKEN, 270 } },	-- 270x Love Token
				}),
				i(49859, {	-- "Bravado" Cologne
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49857, {	-- "Enchantress" Perfume
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49858, {	-- "Forever" Perfume
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49861, {	-- "STALWART" Cologne
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49856, {	-- "VICTORY" Perfume
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49860, {	-- "Wizardry" Cologne
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(49909, {	-- Box of Chocolates
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 10 } },	-- 10x Love Token
					["groups"] = {
						i(22236),	-- Buttermilk Delight
						i(22237),	-- Dark Desire
						i(22239),	-- Sweet Surprise
						i(22238),	-- Very Berry Cream
					},
				}),
				i(21813, {	-- Bag of Heart Candies
					["cost"] = { { "i", LOVE_TOKEN, 2 } },	-- 2x Love Token
					["groups"] = {
						i(21816),	-- Heart Candy (Be Mine!)
						i(21817),	-- Heart Candy (I LOVE YOU)
						i(21818),	-- Heart Candy (I'll follow you all around Azeroth.)
						i(21819),	-- Heart Candy (All yours.)
						i(21820),	-- Heart Candy (You're the best!)
						i(21821),	-- Heart Candy (I'm all yours!)
						i(21822),	-- Heart Candy (You're mine!)
						i(21823),	-- Heart Candy (Hot lips!)
					},
				}),
				i(22218, {	-- Handful of Rose Petals
					["cost"] = { { "i", LOVE_TOKEN, 2 } },	-- 2x Love Token
				}),
				i(22261, {	-- Love Fool
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 10 } },	-- 10x Love Token
				}),
				i(34258, {	-- Lovely Fireworks
					["timeline"] = { ADDED_2_3_0 },
					["cost"] = { { "i", LOVE_TOKEN, 5 } },	-- 5x Love Token
				}),
				i(50163, {	-- Lovely Rose
					["timeline"] = { ADDED_3_3_2 },
					["cost"] = { { "i", LOVE_TOKEN, 5 } },	-- 5x Love Token
				}),
				i(22200, {	-- Silver Shafted Arrow
					["cost"] = { { "i", LOVE_TOKEN, 5 } },	-- 5x Love Token
				}),
				i(116648, {	-- Manufactured Love Prism
					["timeline"] = { ADDED_6_0_2 },
					["cost"] = { { "i", LOVE_TOKEN, 40 } },	-- 40x Love Token
				}),
				i(134860, {	-- Peddlefeet's Buffing Creme
					["timeline"] = { ADDED_7_0_3 },
					["cost"] = { { "i", LOVE_TOKEN, 1 } },	-- 1x Love Token
				}),
				i(LOVE_TOKEN, {	-- Love Token
					["timeline"] = { ADDED_3_3_0, REMOVED_10_2_5 },
					["cost"] = { { "i", 49916, 1 } },	-- 1x Lovely Charm Bracelet
				}),
			},
		})),
		n(214481, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Lythianne Morningspear <Lovely Prizes and Heirlooms>
			["coord"] = { 41.9, 17.3, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				filter(BATTLE_PETS, {
					i(205156, {	-- Heartseeker Moth (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(232923, {	-- Living Rose (PET!)
						["timeline"] = { ADDED_11_0_7 },
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(116155, {	-- Lovebird Hatchling (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(22235, {	-- Peddlefeet (PET!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
				}),
				n(HEIRLOOMS, {
					i(122339, {	-- Ancient Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 200}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(204337, {	-- Awakened Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(167732, {	-- Battle-Hardened Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(187998, {	-- Eternal Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(122341, {	-- Timeworn Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
					i(151615, {	-- Weathered Heirloom Scabbard
						["cost"] = {{"i", LOVE_TOKEN, 450}},
						["sym"] = {{"fill"}},	-- simply fill this item
					}),
				}),
				filter(MISC, {
					i(21813, {	-- Bag of Heart Candies
						["cost"] = {{"i", LOVE_TOKEN, 2}},
						["g"] = {
							i(21816),	-- Heart Candy (Be Mine!)
							i(21817),	-- Heart Candy (I LOVE YOU)
							i(21818),	-- Heart Candy (I'll follow you all around Azeroth.)
							i(21819),	-- Heart Candy (All yours.)
							i(21820),	-- Heart Candy (You're the best!)
							i(21821),	-- Heart Candy (I'm all yours!)
							i(21822),	-- Heart Candy (You're mine!)
							i(21823),	-- Heart Candy (Hot lips!)
						},
					}),
					i(22200, {	-- Silver Shafted Arrow
						["cost"] = {{"i", LOVE_TOKEN, 5}},
					}),
					i(50160, {	-- Lovely Dress Box
						["cost"] = {{"i", LOVE_TOKEN, 20}},
						["g"] = {
							ach(1694, {	-- Lovely Luck Is On Your Side
								["provider"] = { "i", 151770 },	-- Lovely Black Dress
							}),
							i(151770),	-- Lovely Black Dress
							i(151768),	-- Lovely Blue Dress
							i(151767),	-- Lovely Purple Dress
							i(151769),	-- Lovely Red Dress
						},
					}),
					i(50161, {	-- Dinner Suit Box
						["cost"] = {{"i", LOVE_TOKEN, 20}},
						["g"] = {
							i(151765),	-- Blue Dinner Suit
							i(151764),	-- Purple Dinner Suit
							i(151766),	-- Red Dinner Suit
						},
					}),
				}),
				filter(MOUNTS, {
					i(210973, {	-- Heartseeker Mana Ray (MOUNT!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(72146, {	-- Swift Lovebird (MOUNT!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
				}),
				filter(TOYS, {
					i(210975, {	-- Date Simulation Modulator (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 100}},
					}),
					i(210974, {	-- Eyes For You Only (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
					i(211864, {	-- Exquisite Love Boat (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(142341, {	-- Love Boat (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 270}},
					}),
					i(165670, {	-- Peddlefeet's Lovely Hearthstone (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 150}},
					}),
					i(34480, {	-- Romantic Picnic Basket (TOY!)
						["cost"] = {{"i", LOVE_TOKEN, 10}},
					}),
				}),
				filter(COSMETIC, bubbleDownSelf({ ["timeline"] = { ADDED_11_0_7 } }, {
					iensemble(232925, {	-- Ensemble: Truly Heartfelt Shoulders
						["cost"] = {{"i", LOVE_TOKEN, 40}},
					}),
				})),
			},
		})),
		n(211864, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Maurice Guichi <House of Chocolates>
			["coord"] = { 33.6, 49.8, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210926),	-- Me, Myself, and Chocolate Package
				i(49909, {	-- Box of Chocolates
					["cost"] = {{"i", LOVE_TOKEN, 10}},
					["g"] = {
						i(22236),	-- Buttermilk Delight
						i(22237),	-- Dark Desire
						i(22239),	-- Sweet Surprise
						i(22238),	-- Very Berry Cream
					},
				}),
			},
		})),
		n(212886, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Melanie Charles <Bountiful Brews>
			["coord"] = { 34.2, 50.6, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210927),	-- Fruity Cocktail Flight
			},
		})),
		n(214493, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Ming Plumpaw <Lovely Snacks> [Need Alliance Version]
			["coord"] = { 41.1, 17.8, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(210841),	-- Buttered Oysters
				i(210842),	-- Fresh Fig
			},
		})),
		n(211810, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Ronathan Graham <Fruit Vendor>
			["coord"] = { 33.6, 49.8, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210821),	-- Berry Chocolate Tart
				i(210819),	-- Chocolate-Covered Cherries
				i(210928),	-- Healthy Body Package
			},
		})),
		n(211887, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Sylandra Silverbreeze <Flower Vendor>
			["coord"] = { 34.2, 48.8, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(211359, {	-- Eternal Black Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211358, {	-- Eternal Blue Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211357, {	-- Eternal Orange Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211355, {	-- Eternal Pink Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211354, {	-- Eternal White Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(211352, {	-- Eternal Yellow Rose
					["cost"] = {{"i", LOVE_TOKEN, 20}},
				}),
				i(22218, {	-- Handful of Rose Petals
					["cost"] = {{"i", LOVE_TOKEN, 2}},
				}),
				i(50163, {	-- Lovely Rose
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211363, {	-- Rose of Dreams Fulfilled
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211351, {	-- Rose of Friendship
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211362, {	-- Rose of Independence
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211361, {	-- Rose of Joy
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211360, {	-- Rose of Purity
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211264, {	-- Rose of Romance
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(211364, {	-- Rose of Tragedy
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(210965, {	-- Single-Use Bouquet
					["cost"] = {{"i", LOVE_TOKEN, 1}},
				}),
			},
		})),
		n(215109, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Ugawa <Bountiful Brews>
			["coord"] = { 40.8, 17.8, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(210927),	-- Fruity Cocktail Flight
			},
		})),
		n(212587, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Wobbley Sugarfizz <House of Chocolates>
			["coord"] = { 33.5, 50.1, ELWYNN_FOREST },
			["races"] = ALLIANCE_ONLY,
			["g"] = {
				i(210695),	-- Delightful Chocolate Sample
			},
		})),
		n(214489, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Zikky <Lovely Novelties>
			["coord"] = { 41.0, 17.2, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(210318, {	-- Chocolate Bon-Bomb
					["cost"] = {{"i", LOVE_TOKEN, 1}},
				}),
				i(22261, {	-- Love Fool
					["cost"] = {{"i", LOVE_TOKEN, 10}},
				}),
				i(34258, {	-- Lovely Fireworks
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(116648, {	-- Manufactured Love Prism
					["cost"] = {{"i", LOVE_TOKEN, 40}},
				}),
				i(211976, {	-- Pink Brightbursts
					["cost"] = {{"i", LOVE_TOKEN, 5}},
				}),
				i(144339, {	-- Sturdy Love Fool (TOY!)
					["cost"] = {{"i", LOVE_TOKEN, 100}},
				}),
			},
		})),
		n(214480, bubbleDownSelf({ ["timeline"] = { ADDED_10_2_5 } }, {	-- Zin'boja <De Chocolate Den>
			["coord"] = { 41.2, 18.0, DUROTAR },
			["races"] = HORDE_ONLY,
			["g"] = {
				i(49909, {	-- Box of Chocolates
					["cost"] = {{"i", LOVE_TOKEN, 10}},
					["g"] = {
						i(22236),	-- Buttermilk Delight
						i(22237),	-- Dark Desire
						i(22239),	-- Sweet Surprise
						i(22238),	-- Very Berry Cream
					},
				}),
			},
		})),
	}),
	-- #endif
	n(ZONE_DROPS, {
		-- #if BEFORE 3.3.2.11403
		["description"] = "Apply a perfume or cologne buff to your character and speak to a guard in a major city to receive one of these items. Items exclusively found within each container will be listed within.",
		["timeline"] = { REMOVED_3_3_2 },
		["cost"] = {
			{ "i", 21833, 1 },	-- Cologne Bottle
			{ "i", 21829, 1 },	-- Perfume Bottle
			{ "i", 21815, 1 },	-- Wrinkled Love Token
		},
		-- #endif
		["groups"] = {
			i(49655, {	-- Lovely Charm
				["provider"] = { "i", 49661 },	-- Lovely Charm Collector's Kit
				["description"] = "With a Lovely Charm Collector's Kit in your inventory, go out and kill mobs near your character's level.",
				["timeline"] = { ADDED_3_3_2, REMOVED_10_2_5 },
			}),
			i(49916, {	-- Lovely Charm Bracelet
				["cost"] = { { "i", 49655, 10 } },	-- 10x Lovely Charm
				["timeline"] = { ADDED_3_3_2, REMOVED_10_2_5 },
				-- #if NOT COMMON_QUALITY_TRANSMOGS
				-- NOTE: This is an event item that disappears after the end of the event. After common quality transmog, this no longer requires any event.
				-- To collect it, it needs to be in your inventory after common quality transmog is added officially.
				["ignoreSource"] = true,
				-- #endif
			}),
			-- #if BEFORE 3.3.2.11403
			i(22262, {	-- Alliance Gift Collection
				["cost"] = {
					{ "i", 22133, 1 },	-- Darnassus Gift Collection
					{ "i", 22132, 1 },	-- Ironforge Gift Collection
					{ "i", 22131, 1 },	-- Stormwind Gift Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS, IRONFORGE, STORMWIND_CITY },
				["_drop"] = { "f" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22263, {	-- Horde Gift Collection
				["cost"] = {
					{ "i", 22136, 1 },	-- Orgrimmar Gift Collection
					{ "i", 22135, 1 },	-- Thunder Bluff Gift Collection
					{ "i", 22134, 1 },	-- Undercity Gift Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR, THUNDER_BLUFF, UNDERCITY },
				["_drop"] = { "f" },
				["races"] = HORDE_ONLY,
			}),

			-- Darnassus
			i(22133, {	-- Darnassus Gift Collection
				["cost"] = {
					{ "i", 22291, 1 },	-- Box of Woodcrafts
					{ "i", 22289, 1 },	-- Stack of Cards
					{ "i", 22290, 1 },	-- Darnassus Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22290, {	-- Darnassus Pledge Collection
				["cost"] = { { "i", 22120, 5 } },	-- Pledge of Loyalty: Darnassus
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22291, {	-- Box of Woodcrafts
				["cost"] = { { "i", 21960, 5 } },	-- Handmade Woodcraft
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22289, {	-- Stack of Cards
				["cost"] = { { "i", 22140, 5 } },	-- Sentinel's Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22140, {	-- Sentinel's Card
				["providers"] = {
					{ "i", 22155 },	-- Pledge of Adoration: Darnassus
					{ "i", 22159 },	-- Pledge of Friendship: Darnassus
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22120, {	-- Pledge of Loyalty: Darnassus
				["providers"] = {
					{ "i", 22155 },	-- Pledge of Adoration: Darnassus
					{ "i", 22159 },	-- Pledge of Friendship: Darnassus
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(21960, {	-- Handmade Woodcraft
				["providers"] = {
					{ "i", 21979 },	-- Gift of Adoration: Darnassus
					{ "i", 22167 },	-- Gift of Friendship: Darnassus
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { DARNASSUS },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),

			-- Ironforge
			i(22132, {	-- Ironforge Gift Collection
				["cost"] = {
					{ "i", 22288, 1 },	-- Case of Homebrew
					{ "i", 22287, 1 },	-- Parcel of Cards
					{ "i", 22286, 1 },	-- Ironforge Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22286, {	-- Ironforge Pledge Collection
				["cost"] = { { "i", 22119, 5 } },	-- Pledge of Loyalty: Ironforge
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22288, {	-- Case of Homebrew
				["cost"] = { { "i", 22173, 5 } },	-- Dwarven Homebrew
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22287, {	-- Parcel of Cards
				["cost"] = { { "i", 22141, 5 } },	-- Ironforge Guard's Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22141, {	-- Ironforge Guard's Card
				["providers"] = {
					{ "i", 22154 },	-- Pledge of Adoration: Ironforge
					{ "i", 22160 },	-- Pledge of Friendship: Ironforge
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22119, {	-- Pledge of Loyalty: Ironforge
				["providers"] = {
					{ "i", 22154 },	-- Pledge of Adoration: Ironforge
					{ "i", 22160 },	-- Pledge of Friendship: Ironforge
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22173, {	-- Dwarven Homebrew
				["providers"] = {
					{ "i", 21980 },	-- Gift of Adoration: Ironforge
					{ "i", 22168 },	-- Gift of Friendship: Ironforge
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { IRONFORGE },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),

			-- Stormwind City
			i(22131, {	-- Stormwind Gift Collection
				["cost"] = {
					{ "i", 22283, 1 },	-- Sack of Homemade Bread
					{ "i", 22284, 1 },	-- Bundle of Cards
					{ "i", 22285, 1 },	-- Stormwind Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22285, {	-- Stormwind Pledge Collection
				["cost"] = { { "i", 22117, 5 } },	-- Pledge of Loyalty: Stormwind
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22283, {	-- Sack of Homemade Bread
				["cost"] = { { "i", 22176, 5 } },	-- Homemade Bread
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22284, {	-- Bundle of Cards
				["cost"] = { { "i", 22143, 5 } },	-- Stormwind Guard's Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22143, {	-- Stormwind Guard's Card
				["providers"] = {
					{ "i", 21975 },	-- Pledge of Adoration: Stormwind
					{ "i", 22178 },	-- Pledge of Friendship: Stormwind
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22117, {	-- Pledge of Loyalty: Stormwind
				["providers"] = {
					{ "i", 21975 },	-- Pledge of Adoration: Stormwind
					{ "i", 22178 },	-- Pledge of Friendship: Stormwind
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),
			i(22176, {	-- Homemade Bread
				["providers"] = {
					{ "i", 21981 },	-- Gift of Adoration: Stormwind
					{ "i", 22170 },	-- Gift of Friendship: Stormwind
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { STORMWIND_CITY },
				["_drop"] = { "f", "spellID" },
				["races"] = ALLIANCE_ONLY,
			}),

			-- Orgrimmar
			i(22136, {	-- Orgrimmar Gift Collection
				["cost"] = {
					{ "i", 22292, 1 },	-- Box of Fresh Pies
					{ "i", 22293, 1 },	-- Package of Cards
					{ "i", 22294, 1 },	-- Orgrimmar Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22294, {	-- Orgrimmar Pledge Collection
				["cost"] = { { "i", 22123, 5 } },	-- Pledge of Loyalty: Orgrimmar
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22292, {	-- Box of Fresh Pies
				["cost"] = { { "i", 22175, 5 } },	-- Freshly Baked Pie
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22293, {	-- Package of Cards
				["cost"] = { { "i", 22142, 5 } },	-- Grunt's Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22142, {	-- Grunt's Card
				["providers"] = {
					{ "i", 22156 },	-- Pledge of Adoration: Orgrimmar
					{ "i", 22161 },	-- Pledge of Friendship: Orgrimmar
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22123, {	-- Pledge of Loyalty: Orgrimmar
				["providers"] = {
					{ "i", 22156 },	-- Pledge of Adoration: Orgrimmar
					{ "i", 22161 },	-- Pledge of Friendship: Orgrimmar
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22175, {	-- Freshly Baked Pie
				["providers"] = {
					{ "i", 22164 },	-- Gift of Adoration: Orgrimmar
					{ "i", 22169 },	-- Gift of Friendship: Orgrimmar
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { ORGRIMMAR },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),

			-- Thunder Bluff
			i(22135, {	-- Thunder Bluff Gift Collection
				["cost"] = {
					{ "i", 22296, 1 },	-- Basket of Flowers
					{ "i", 22295, 1 },	-- Satchel of Cards
					{ "i", 22297, 1 },	-- Thunder Bluff Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22297, {	-- Thunder Bluff Pledge Collection
				["cost"] = { { "i", 22122, 5 } },	-- Pledge of Loyalty: Thunder Bluff
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22296, {	-- Basket of Flowers
				["cost"] = { { "i", 22177, 5 } },	-- Freshly Picked Flowers
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22295, {	-- Satchel of Cards
				["cost"] = { { "i", 22144, 5 } },	-- Bluffwatcher's Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22144, {	-- Bluffwatcher's Card
				["providers"] = {
					{ "i", 22158 },	-- Pledge of Adoration: Thunder Bluff
					{ "i", 22162 },	-- Pledge of Friendship: Thunder Bluff
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22122, {	-- Pledge of Loyalty: Thunder Bluff
				["providers"] = {
					{ "i", 22158 },	-- Pledge of Adoration: Thunder Bluff
					{ "i", 22162 },	-- Pledge of Friendship: Thunder Bluff
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22177, {	-- Freshly Picked Flowers
				["providers"] = {
					{ "i", 22165 },	-- Gift of Adoration: Thunder Bluff
					{ "i", 22171 },	-- Gift of Friendship: Thunder Bluff
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { THUNDER_BLUFF },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),

			-- Undercity
			i(22134, {	-- Undercity Gift Collection
				["cost"] = {
					{ "i", 22298, 1 },	-- Book of Romantic Poems
					{ "i", 22299, 1 },	-- Sheaf of Cards
					{ "i", 22300, 1 },	-- Undercity Pledge Collection
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22300, {	-- Undercity Pledge Collection
				["cost"] = { { "i", 22121, 5 } },	-- Pledge of Loyalty: Undercity
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22298, {	-- Book of Romantic Poems
				["cost"] = { { "i", 22174, 5 } },	-- Romantic Poem
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22299, {	-- Sheaf of Cards
				["cost"] = { { "i", 22145, 5 } },	-- Guardian's Moldy Card
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22145, {	-- Guardian's Moldy Card
				["providers"] = {
					{ "i", 22157 },	-- Pledge of Adoration: Undercity
					{ "i", 22163 },	-- Pledge of Friendship: Undercity
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22121, {	-- Pledge of Loyalty: Undercity
				["providers"] = {
					{ "i", 22157 },	-- Pledge of Adoration: Undercity
					{ "i", 22163 },	-- Pledge of Friendship: Undercity
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			i(22174, {	-- Romantic Poem
				["providers"] = {
					{ "i", 22166 },	-- Gift of Adoration: Undercity
					{ "i", 22172 },	-- Gift of Friendship: Undercity
				},
				["timeline"] = { REMOVED_3_3_2 },
				["maps"] = { UNDERCITY },
				["_drop"] = { "f", "spellID" },
				["races"] = HORDE_ONLY,
			}),
			-- #endif
		},
	}),
	prof(FISHING, {
		i(211383, {	-- Luvkip
			["description"] = "Fished in Olivia's pond during event.",
			["timeline"] = { ADDED_10_2_5 },
		}),
	}),
})));

for i,o in ipairs({
	applyevent(EVENTS.LOVE_IS_IN_THE_AIR, n(36296, {	-- Apothecary Hummel <Crown Chemical Co.>
		-- #if AFTER 4.0.3
		--["questID"] = 25485,	-- NOTE: This is what it should be, but it's not checking off correctly.
		-- #else
		["questID"] = 14488,	-- You've Been Served
		["isDaily"] = true,
		-- #endif
		["timeline"] = { ADDED_3_3_0 },
		["maps"] = {
			SHADOWFANG_KEEP,
			SHADOWFANG_KEEP_LEVEL2,
			SHADOWFANG_KEEP_LEVEL3,
			SHADOWFANG_KEEP_LEVEL4,
			SHADOWFANG_KEEP_LEVEL5,
			SHADOWFANG_KEEP_LEVEL6,
			SHADOWFANG_KEEP_LEVEL7
		},
		-- #if AFTER MOP
		["sym"] = {
			{ "selectparent", 2 },	-- >Bosses>LITA
			{ "pop" },	-- >Rewards
			{ "where", "headerID", REWARDS },	-- Select the "Rewards" header.
			{ "pop" },	-- Get the Rewards.
			{ "exclude", "itemID", 22218 },	-- Exclude Handful of Rose Petals
		},
		-- #endif
		["groups"] = {
			ach(4624, {	-- Tough Love (Shadowfang Keep)
				["timeline"] = { ADDED_3_0_2 },
			}),
			i(50320, {	-- Faded Lovely Greeting Card [A]
				["timeline"] = { ADDED_3_3_2 },
			}),
			i(49641, {	-- Faded Lovely Greeting Card [H]
				["timeline"] = { ADDED_3_3_2 },
			}),

			-- #if BEFORE CATA
			i(54537, {	-- Heart-Shaped Box
				["description"] = "This box doesn't actually exist without RDF. The loot normally contained within drop directly from the boss this year.",
				["sym"] = {{ "select", "itemID", 50250, 49715, 50446, 50741, 50471 }},
				["timeline"] = { CREATED_3_3_0 },
			}),
			ach(4627, {	-- X-45 Heartbreaker
				["provider"] = { "i", 50250 },	-- X-45 Heartbreaker
				["timeline"] = { ADDED_3_3_0 },
				["filterID"] = MOUNTS,
			}),
			i(50250, {	-- X-45 Heartbreaker (MOUNT!)
				["timeline"] = { ADDED_3_3_0 },
			}),
			i(49715, {	-- Forever-Lovely Rose
				["timeline"] = { ADDED_3_3_0 },
			}),
			i(50446, {	-- Toxic Wasteling (PET!)
				["timeline"] = { ADDED_3_3_0 },
			}),
			i(50741, {	-- Vile Fumigator's Mask
				["timeline"] = { ADDED_3_3_0 },
			}),
			i(50471, {	-- The Heartbreaker (TOY!)
				["timeline"] = { ADDED_3_3_0 },
			}),
			-- #else
			i(54537, {	-- Heart-Shaped Box
				-- #if BEFORE 10.0.5
				["description"] = "You can loot the Heart-Shaped Box once a day per character by queueing for the encounter in the Dungeon Finder.",
				-- #endif
				["timeline"] = { ADDED_3_3_0 },
				-- Minimum level this box drops (not 100% sure)
				-- #if AFTER 9.0.1
				["lvl"] = 50,
				-- #elseif AFTER 8.0.1
				["lvl"] = 110,
				-- #elseif AFTER 7.2.5
				["lvl"] = 98,
				-- #endif
				["groups"] = {
					ach(4627, {	-- X-45 Heartbreaker
						["provider"] = { "i", 50250 },	-- X-45 Heartbreaker
						["timeline"] = { ADDED_3_3_0 },
						["filterID"] = MOUNTS,
					}),
					hqt(74957, {	-- Increased X-45 Heartbreaker Droprate (Daily Accountwide)
						["name"] = "Increased X-45 Heartbreaker Droprate (Daily Accountwide)",
						["timeline"] = { ADDED_10_0_5 },
						["isDaily"] = true,
					}),
					hqt(86172, {	-- Increased Love Witch's Sweeper Droprate (Daily Accountwide)
						["name"] = "Increased Love Witch's Sweeper Droprate (Daily Accountwide)",
						["timeline"] = { ADDED_11_0_7 },
						["isDaily"] = true,
					}),
					hqt(79104, {	-- Increased Renewed Proto-Drake: Love Armor Droprate (Daily Accountwide)
						["name"] = "Increased Renewed Proto-Drake: Love Armor Droprate (Daily Accountwide)",
						["timeline"] = { ADDED_10_2_5 },
						["isDaily"] = true,
					}),
					i(50250, {	-- X-45 Heartbreaker (MOUNT!)
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(49715, {	-- Forever-Lovely Rose
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(50446, {	-- Toxic Wasteling (PET!)
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(50741, {	-- Vile Fumigator's Mask
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(50471, {	-- The Heartbreaker (TOY!)
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(211812, {	-- Renewed Proto-Drake: Love Armor (MM!)
						["timeline"] = { ADDED_10_2_5 },
					}),
					i(232926, {	-- Love Witch's Sweeper (MOUNT!)
						["timeline"] = { ADDED_11_0_7 },
					}),
				},
			}),
			-- #endif
			i(147907, {	-- Heart-Shaped Carton
				["timeline"] = { ADDED_7_2_5 },
				["groups"] = {
					i(49715, {	-- Forever-Lovely Rose
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(50446, {	-- Toxic Wasteling (PET!)
						["timeline"] = { ADDED_3_3_0 },
					}),
					i(50741, {	-- Vile Fumigator's Mask
						["timeline"] = { ADDED_3_3_0 },
					}),
					-- i(50471, {	-- The Heartbreaker (TOY!)	-- doesn't seem to be possible from the lower-level box
					-- 	["timeline"] = { ADDED_3_3_0 },
					-- }),
				},
			}),

			-- Legion+
			i(143908, {	-- Choker of the Pure Heart [Level 110]
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143906, {	-- Heartbreak Charm [Level 110]
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143907, {	-- Shard of Pirouetting Happiness [Level 110]
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143909, {	-- Sweet Perfume Brooch [Level 110]
				["timeline"] = { ADDED_7_0_3 },
			}),
			i(143905, {	-- Winking Eye of Love [Level 110]
				["timeline"] = { ADDED_7_0_3 },
			}),

			-- Warlords of Draenor
			i(117369, {	-- Choker of the Pure Heart [Level 100]
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117366, {	-- Heartbreak Charm [Level 100]
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117370, {	-- Shard of Pirouetting Happiness [Level 100]
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117368, {	-- Sweet Perfume Brooch [Level 100]
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),
			i(117367, {	-- Winking Eye of Love [Level 100]
				["timeline"] = { ADDED_6_0_2, REMOVED_7_0_3 },
			}),

			-- Mists of Pandaria
			i(93394, {	-- Choker of the Pure Heart [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(93391, {	-- Heartbreak Charm [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(93395, {	-- Shard of Pirouetting Happiness [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(93393, {	-- Sweet Perfume Brooch [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),
			i(93392, {	-- Winking Eye of Love [Level 90]
				["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 },
			}),

			-- Cata
			-- #if ANYCLASSIC
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(238334, {	-- Heartbreak Charm [Level 85, 378 ilvl]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			})),
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(238337, {	-- Choker of the Pure Heart [Level 85, 378 ilvl]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			})),
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(238338, {	-- Shard of Pirouetting Happiness [Level 85, 378 ilvl]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			})),
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(238336, {	-- Sweet Perfume Brooch [Level 85, 378 ilvl]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			})),
			applyclassicphase(CATA_PHASE_RAGE_OF_THE_FIRELANDS, i(238335, {	-- Winking Eye of Love [Level 85, 378 ilvl]
				["timeline"] = { ADDED_4_4_2, REMOVED_5_0_4 },
			})),
			i(68176, {	-- Heartbreak Charm [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_4_4_2 },
			}),
			i(68173, {	-- Choker of the Pure Heart [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_4_4_2 },
			}),
			i(68172, {	-- Shard of Pirouetting Happiness [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_4_4_2 },
			}),
			i(68174, {	-- Sweet Perfume Brooch [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_4_4_2 },
			}),
			i(68175, {	-- Winking Eye of Love [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_4_4_2 },
			}),
			-- #else
			i(68176, {	-- Heartbreak Charm [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(68173, {	-- Choker of the Pure Heart [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(68172, {	-- Shard of Pirouetting Happiness [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(68174, {	-- Sweet Perfume Brooch [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			i(68175, {	-- Winking Eye of Love [Level 85]
				["timeline"] = { ADDED_4_0_1, REMOVED_5_0_4 },
			}),
			-- #endif

			-- Wrath
			i(51808, {	-- Choker of the Pure Heart [Level 80]
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			i(51805, {	-- Heartbreak Charm [Level 80]
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			i(51806, {	-- Shard of Pirouetting Happiness [Level 80]
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			i(51807, {	-- Sweet Perfume Brooch [Level 80]
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			i(51804, {	-- Winking Eye of Love [Level 80]
				["timeline"] = { ADDED_3_0_2, REMOVED_4_0_1 },
			}),
			--[[
			i(21813),	-- Bag of Heart Candies
			i(49909, {	-- Box of Chocolates
				["timeline"] = { ADDED_3_3_2 },
			}),
			i(34258, {	-- Lovely Fireworks
				["timeline"] = { ADDED_2_3_0 },
			}),
			]]--
		},
	})),
	expansion(EXPANSION.WRATH, {
		inst(277, {	-- Halls of Stone
			["maps"] = { HALLS_OF_STONE },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(27975, {	-- Maiden of Grief
						BOUQUET_EBON
					}),
				}),
			},
		}),
		inst(285, {	-- Utgarde Keep
			["maps"] = { UTGARDE_KEEP, UTGARDE_KEEP_FLOOR2, UTGARDE_KEEP_FLOOR3 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					n(23953, {	-- Prince Keleseth
						BOUQUET_RED,
					}),
				}),
			},
		}),
	}),
	-- #if AFTER CATA
	expansion(EXPANSION.CATA, {
		inst(66, {	-- Blackrock Caverns
			["maps"] = { 283, 284 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					n(39679, {	-- Corla, Herald of Twilight
						BOUQUET_RED,
						POUCH_OF_RED_ROSE_PETALS,
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(39679, {	-- Corla, Herald of Twilight
						BOUQUET_RED,
						POUCH_OF_RED_ROSE_PETALS,
					}),
				}),
			},
		}),
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, inst(184, {	-- End Time
			["maps"] = { 401, 402, 403, 404, 405, 406 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(54445, {	-- Echo of Jaina
						BOUQUET_RED,
					}),
					n(54123, {	-- Echo of Sylvanas
						BOUQUET_EBON
					}),
				}),
			},
		})),
		inst(71, {	-- Grim Batol
			["maps"] = { 293 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					n(40319, {	-- Drahga Shadowburner
						BOUQUET_RED,
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(40319, {	-- Drahga Shadowburner
						BOUQUET_RED,
					}),
				}),
			},
		}),
		applyclassicphase(CATA_PHASE_HOUR_OF_TWILIGHT, inst(186, {	-- Hour of Twilight
			["maps"] = { 399, 400 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(54968, {	-- Asira Dawnslayer
						BOUQUET_RED,
					}),
				}),
			},
		})),
		inst(64, {	-- Shadowfang Keep
			["maps"] = {
				SHADOWFANG_KEEP,
				SHADOWFANG_KEEP_LEVEL2,
				SHADOWFANG_KEEP_LEVEL3,
				SHADOWFANG_KEEP_LEVEL4,
				SHADOWFANG_KEEP_LEVEL5,
				SHADOWFANG_KEEP_LEVEL6,
				SHADOWFANG_KEEP_LEVEL7
			},
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(46964, {	-- Lord Godfrey
						BOUQUET_EBON,
						BOUQUET_RED,
					}),
				}),
			},
		}),
		inst(63, {	-- The Deadmines
			["maps"] = { 292 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(47626, {	-- Admiral Ripsnarl
						BOUQUET_EBON,
						BOUQUET_RED,
					}),
				}),
			},
		}),
		inst(67, {	-- The Stonecore
			["maps"] = { 324 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					n(42333, {	-- High Priestess Azil
						BOUQUET_RED,
					}),
				}),
				d(DIFFICULTY.DUNGEON.HEROIC, {
					n(42333, {	-- High Priestess Azil
						BOUQUET_RED,
					}),
				}),
			},
		}),
	}),
	-- #endif
	-- #if AFTER WOD
	expansion(EXPANSION.WOD, {
		inst(537, {	-- Shadowmoon Burial Grounds
			["maps"] = { 574, 575, 576 },
			["groups"] = {
				d(DIFFICULTY.DUNGEON.NORMAL, {
					cr(75509, e(1139, {	-- Sadana Bloodfury
						BOUQUET_EBON
					})),
				}),
				--[[d(DIFFICULTY.DUNGEON.MYTHIC, {
					cr(75509, e(1139, {	-- Sadana Bloodfury
						BOUQUET_EBON
					})),
				}),]]--
			},
		}),
	}),
	-- #endif
	-- #if AFTER 9.1.5
	expansion(EXPANSION.SL, {
		inst(1194, {	-- Tazavesh, the Veiled Market
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(2455, {	-- So'leah
					["crs"] = { 177269 },	-- So'leah
					["groups"] = {
						POUCH_OF_EBON_ROSE_PETALS,
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2455, {	-- So'leah
					["crs"] = { 177269 },	-- So'leah
					["groups"] = {
						POUCH_OF_EBON_ROSE_PETALS,
					},
				}),
			}),
		}),
		inst(1183, {	-- Plaguefall
			d(DIFFICULTY.DUNGEON.NORMAL, {
				e(2423, {	-- Domina Venomblade
					["crs"] = { 164266 },	-- Domina Venomblade
					["groups"] = {
						POUCH_OF_EBON_ROSE_PETALS,
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.HEROIC, {
				e(2423, {	-- Domina Venomblade
					["crs"] = { 164266 },	-- Domina Venomblade
					["groups"] = {
						POUCH_OF_EBON_ROSE_PETALS,
					},
				}),
			}),
			d(DIFFICULTY.DUNGEON.MYTHIC, {
				e(2423, {	-- Domina Venomblade
					["crs"] = { 164266 },	-- Domina Venomblade
					["groups"] = {
						POUCH_OF_EBON_ROSE_PETALS,
					},
				}),
			}),
		}),
	}),
	-- #endif
}) do
	table.insert(BOSS_GROUPS, o);
end

-- #if AFTER 3.3.0
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, {
	applyevent(EVENTS.LOVE_IS_IN_THE_AIR, n(LOVE_IS_IN_THE_AIR_HEADER, {
		-- #if BEFORE LEGION
		n(QUESTS, {
			q(24661, {	-- Crush the Crown Daily Tracker / Theryn Fed Tracker [LEGION]
				["timeline"] = { ADDED_3_3_0 },
			}),
		}),
		-- #endif
		n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_10_2_5 } }, {
			q(79143),	-- Completed alongside Love is in the Air (A)
			q(79144),	-- Completed alongside Love is in the Air (H)
			q(78734),	-- After choosing "a challenge" for The Gift of Self-Care
			q(78735),	-- After choosing "something tasty" for The Gift of Self-Care
			q(78736),	-- After choosing "a nap" for The Gift of Self-Care
			q(78475),	-- Interacting with a bottle of perfume during I Smell Trouble (A)
			q(78476),	-- Interacting with a box during I Smell Trouble (A)
		})),
	})),
}));
-- #endif