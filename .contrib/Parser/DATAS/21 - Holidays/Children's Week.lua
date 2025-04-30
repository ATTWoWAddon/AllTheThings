--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------
CHILDRENS_WEEK_HEADER = createHeader({
	readable = "Cgi.Children's Week",	-- Prefix with "Cgi." to prevent sorting issues.
	constant = "CHILDRENS_WEEK_HEADER",
	icon = [[~_.asset("Holiday_Children")]],
	eventID = EVENTS.CHILDRENS_WEEK,
	-- #if BEFORE WRATH
	eventSchedule = {
		1, -- Recurring
		5, 1, 0, 0,		-- 5/1 at 12 AM
		5, 7, 23, 59	-- 5/7 at 11:59 PM
	},
	-- #endif
	text = {
		-- #if AFTER TBC
		en = WOWAPI_GetCategoryName(163),
		-- #else
		en = "Children's Week",
		-- #endif
	},
});
-- TODO: Add vendors for Tigule's Strawberry Ice Cream (7228)
local PET_CARE_PACKAGE = i(116202, {	-- Pet Care Package
	["timeline"] = { ADDED_6_0_2 },
	["groups"] = {
	},
	["sym"] = {{"select","itemID",
		103786,	-- "Dapper Gentleman" Costume
		103795,	-- "Dread Pirate" Costume
		103789,	-- "Little Princess" Costume
		103797,	-- Big Pink Bow
		92741,	-- Flawless Battle-Stone
		98112,	-- Lesser Pet Treat
		89906,	-- Magical Mini-Treat
		71153,	-- Magical Pet Biscuit
		98114,	-- Pet Treat
	}},
	--[[
		i(103786, {	-- "Dapper Gentleman" Costume
			["timeline"] = { ADDED_5_4_0 },
		}),
		i(103795, {	-- "Dread Pirate" Costume
			["timeline"] = { ADDED_5_4_0 },
		}),
		i(103789, {	-- "Little Princess" Costume
			["timeline"] = { ADDED_5_4_0 },
		}),
		i(103797, {	-- Big Pink Bow
			["timeline"] = { ADDED_5_4_0 },
		}),
		i(92741, {	-- Flawless Battle-Stone
			["timeline"] = { ADDED_5_1_0 },
		}),
		i(98112, {	-- Lesser Pet Treat
			["timeline"] = { ADDED_5_3_0 },
		}),
		i(89906, {	-- Magical Mini-Treat
			["timeline"] = { ADDED_5_0_4 },
		}),
		i(71153, {	-- Magical Pet Biscuit
			["timeline"] = { ADDED_4_2_0 },
		}),
		i(98114, {	-- Pet Treat
			["timeline"] = { ADDED_5_3_0 },
		}),--]]
});
local BACK_AT_THE_OUTLAND_ORPHANAGE_GROUPS = {
	i(32616, {	-- Egbert (PET!)
		["timeline"] = { ADDED_2_1_0 },
	}),
	i(32622, {	-- Peanut (PET!)
		["timeline"] = { ADDED_2_1_0 },
	}),
	i(69648, {	-- Legs (PET!)
		["timeline"] = { ADDED_4_1_0 },
	}),
	i(32617, {	-- Willy (PET!)
		["timeline"] = { ADDED_2_1_0 },
	}),
	PET_CARE_PACKAGE,
	i(241215, {	-- Well-loved Figurine
		["timeline"]  = { ADDED_11_1_5 },
	}),
};
local RETURN_TO_THE_BFA_ORPHANAGE_GROUPS = {
	i(167010, {	-- Beakbert (PET!)
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(167009, {	-- Scaley (PET!)
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(167008, {	-- Mr. Crabs (PET!)
		["timeline"] = { ADDED_8_1_5 },
	}),
	i(167011, {	-- Froglet (PET!)
		["timeline"] = { ADDED_8_1_5 },
	}),
	PET_CARE_PACKAGE,
	i(23022),	-- Curmudgeon's Payoff
	i(241215, {	-- Well-loved Figurine
		["timeline"]  = { ADDED_11_1_5 },
	}),
};
local WARDEN_OF_THE_GROUPS = {
	i(23007, {	-- Mr. Wiggles (PET!)
		["timeline"] = { ADDED_1_11_1 },
	}),
	i(23015, {	-- Whiskers the Rat (PET!)
		["timeline"] = { ADDED_1_11_1 },
	}),
	i(66073, {	-- Scooter the Snail (PET!)
		["timeline"] = { ADDED_4_0_3 },
	}),
	i(23002, {	-- Speedy (PET!)
		["timeline"] = { ADDED_1_11_1 },
	}),
	PET_CARE_PACKAGE,
	i(23022),	-- Curmudgeon's Payoff
	i(241215, {	-- Well-loved Figurine
		["timeline"]  = { ADDED_11_1_5 },
	}),
};
local A_BRIGHTER_TOMORROW_GROUPS = {
	iensemble(242265),	-- Arsenal: Children's Orgrimmar Guard Weapon Set
	iensemble(242260),	-- Arsenal: Children's Stormwind Guard Weapon Set
	i(221851),	-- Argos (PET!)
	i(232857),	-- Goggles (PET!)
	i(241193),	-- Helpful Workshop Bot (PET!)
	i(241215),	-- Well-loved Figurine
	--
	i(242242),	-- Khaz Algar Orphan Whistle
};
local WELL_LOVED_FIGURINE_VENDOR_GROUP = {
	iensemble(242265),	-- Arsenal: Children's Orgrimmar Guard Weapon Set
	iensemble(242260),	-- Arsenal: Children's Stormwind Guard Weapon Set
	i(221851),	-- Argos (PET!)
	i(167010),	-- Beakbert (PET!)
	i(46544),	-- Curious Oracle Hatchling (PET!)
	i(46544),	-- Curious Wolvar Pup (PET!)
	i(32616),	-- Egbert (PET!)
	i(167011),	-- Froglet (PET!)
	i(232857),	-- Goggles (PET!)
	i(241193),	-- Helpful Workshop Bot (PET!)
	i(69648),	-- Legs (PET!)
	i(167008),	-- Mr. Crabs (PET!)
	i(23007),	-- Mr. Wiggles (PET!)
	i(32622),	-- Peanut (PET!)
	i(167009),	-- Scaley (PET!)
	i(66073),	-- Scooter the Snail (PET!)
	i(23002),	-- Speedy (PET!)
	i(23015),	-- Whiskers the Rat (PET!)
	i(32617),	-- Willy (PET!)
};

root(ROOTS.Holidays, applyevent(EVENTS.CHILDRENS_WEEK, n(CHILDRENS_WEEK_HEADER, {
	-- #if AFTER WRATH
	n(ACHIEVEMENTS, {
		ach(1793, {	-- For the Children
			-- Meta Achievement should symlink the contained Achievements from Source
			["sym"] = {
				{"meta_achievement",
					1791,				-- Home Alone
					1788,				-- Bad Example
					1789,				-- Daily Chores
					1792,				-- Aw, Isn't It Cute?
					-- #if BEFORE 9.2.0
					1786,				-- School of Hard Knocks
					-- #endif
					1790,				-- Hail To The King, Baby
				},
			},
			["timeline"] = { ADDED_3_0_2 },
			["groups"] = {
				--title_gendered(105, 104),	-- Patron / Matron
				title_female(104),	-- Matron <Name>
				title_male(105),	-- Patron <Name>
			},
		}),
		ach(1792, {	-- Aw, Isn't It Cute?
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1788, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Bad Example
			crit(6656, {	-- Dalaran Brownie
				["provider"] = { "i", 42431 },	-- Dalaran Brownie
				["maps"] = {
					NORTHREND_DALARAN,
					-- #if AFTER LEGION
					LEGION_DALARAN,
					-- #endif
				},
			}),
			crit(6657, {	-- Dalaran Doughnut
				["provider"] = { "i", 42430 },	-- Dalaran Doughnut
				["maps"] = {
					NORTHREND_DALARAN,
					-- #if AFTER LEGION
					LEGION_DALARAN,
					-- #endif
				},
			}),
			crit(6654, {	-- Delicious Chocolate Cake
				["provider"] = { "i", 33924 },	-- Delicious Chocolate Cake
				["maps"] = {
					NORTHREND_DALARAN,
					-- #if AFTER LEGION
					LEGION_DALARAN,
					-- #endif
				},
			}),
			crit(6655, {	-- Lovely Cake Slice
				["provider"] = { "i", 42438 },	-- Lovely Cake
				-- #if AFTER MOP
				["cr"] = 64099,	-- Pink Peony [TODO: Remove, add vendor to zone]
				["coord"] = { 46.88, 34.02, 393 },	-- Pink Peony [Shrine of Seven Stars]
				-- #endif
				["maps"] = {
					NORTHREND_DALARAN,
					-- #if AFTER LEGION
					LEGION_DALARAN,
					-- #endif
				},
			}),
			crit(6653, {	-- Red Velvet Cupcake
				["provider"] = { "i", 42429 },	-- Red Velvet Cupcake
				-- #if AFTER MOP
				["cr"] = 64099,	-- Pink Peony [TODO: Remove, add vendor to zone]
				["coord"] = { 46.88, 34.02, 393 },	-- Pink Peony [Shrine of Seven Stars]
				-- #endif
				["maps"] = {
					NORTHREND_DALARAN,
					-- #if AFTER LEGION
					LEGION_DALARAN,
					-- #endif
				},
			}),
			crit(6652, {	-- Tasty Cupcake
				["provider"] = { "i", 43490 },	-- Tasty Cupcake
			}),
			crit(6651, {	-- Tigule's Strawberry Ice Cream
				["provider"] = { "i", 7228 },	-- Tigule's Strawberry Ice Cream
				["crs"] = {	-- TODO: Remove, add vendors to zones
					-- Katrina Shimmerstar & Rachelle Gothena are listed on WoWHead, but only appear during Hallow's End.
					14480,	-- Alowicious Czervik
					-- #if AFTER 4.0.3.13277
					47383,	-- Brivelthwerp
					-- #endif
					18914,	-- Caregiver Isel
					14481,	-- Emmithue Smails
					-- #if AFTER 4.0.3.13277
					49893,	-- Lisa McKeever
					-- #endif
					18913,	-- Matron Tikkit
					24934,	-- Snack-O-Matic IV
				},
				["coords"] = {
					{ 53.32, 79.27, ORGRIMMAR },	-- Alowicious Czervik
					{ 69.87, 85.18, THOUSAND_NEEDLES },	-- Brivelthwerp
					{ 54.22, 76.11, NAGRAND },	-- Caregiver Isel
					{ 56.73, 34.51, NAGRAND },	-- Matron Tikkit
					{ 53.66, 53.01, ORGRIMMAR },	-- Snack-O-Matic IV
				},
				["maps"] = {
					STORMWIND_CITY,
					86,	-- Orgrimmar
				},
			}),
		})),
		ach(1789, {	-- Daily Chores
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1790, {	-- Hail To The King, Baby
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				136,	-- Lower Pinnacle, Utgarde Pinnacle
				137,	-- Upper Pinnacle, Utgarde Pinnacle
			},
		}),
		ach(1791, {	-- Home Alone
			["timeline"] = { ADDED_3_0_2 },
		}),
		ach(1786, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- School of Hard Knocks
			crit(6643, {	-- Assault a flag in Arathi Basin
				["maps"] = {
					ARATHI_BASIN,
					837,	-- Arathi Basin
					844,	-- Arathi Basin
					1383,	-- Arathi Basin
					1366,	-- Arathi Basin
				},
			}),
			crit(6642, {	-- Assault a tower in Alterac Valley
				["maps"] = {
					ALTERAC_VALLEY,
				},
			}),
			crit(6641, {	-- Capture the flag in Eye of the Storm
				["maps"] = {
					EYE_OF_THE_STORM,
				},
			}),
			crit(6644, {	-- Return a fallen flag in Warsong Gulch
				["maps"] = {
					WARSONG_GULCH,
					859,	-- Warsong Gulch
					1339,	-- Warsong Gulch
				},
			}),
		})),
		ach(275, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2 } }, {	-- Veteran Nanny
			["maps"] = { SHATTRATH_CITY },
			["groups"] = {
				-- #if NOT ANYCLASSIC
				crit(52728, {	-- Egbert
					["provider"] = { "i", 32616 },	-- Egbert's Egg
				}),
				crit(52726, {	-- Peanut
					["provider"] = { "i", 32622 },	-- Elekk Training Collar
				}),
				crit(52727, {	-- Willy
					["provider"] = { "i", 32617 },	-- Sleepy Willy
				}),
				-- #else
				crit(9169, {	-- Egbert
					["provider"] = { "i", 32616 },	-- Egbert's Egg
				}),
				crit(9167, {	-- Peanut
					["provider"] = { "i", 32622 },	-- Elekk Training Collar
				}),
				crit(9168, {	-- Willy
					["provider"] = { "i", 32617 },	-- Sleepy Willy
				}),
				-- #endif
			},
		})),
	}),
	-- #endif
	n(QUESTS, {
		q(10952, {	-- A Trip to the Dark Portal [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuest"] = 10943,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, HELLFIRE_PENINSULA },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Dornaa taken to the Dark Portal
					["provider"] = { "n", 23170 },	-- Alliance Soldier
					["coord"] = { 88.56, 50.23, HELLFIRE_PENINSULA },
				}),
			},
		}),
		q(10951, {	-- A Trip to the Dark Portal [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuest"] = 10942,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, HELLFIRE_PENINSULA },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Salandria taken to the Dark Portal
					["provider"] = { "n", 23171 },	-- Horde Soldier
					["coord"] = { 88.56, 50.23, HELLFIRE_PENINSULA },
				}),
			},
		}),
		q(13937, {	-- A Trip To The Wonderworks [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuests"] = {
				13956,	-- Meeting a Great One
				13954,	-- The Dragon Queen
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				NORTHREND_DALARAN,
				-- #if AFTER 7.0.3.22290
				LEGION_DALARAN,
				625,
				-- #endif
			},
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Throw Small Paper Zeppelin to Roo
					["provider"] = { "i", 46693 },	-- Small Paper Zeppelin (QI!)
					-- #if AFTER 7.0.3.22290
					["coords"] = {
						{ 44.86, 45.57, NORTHREND_DALARAN },	-- Jepetto Joybuzz
						{ 43.61, 45.13, 625 },	-- Jepetto Joybuzz
					},
					["crs"] = {
						29478,	-- Jeppetto Joybuzz
						96483,	-- Jeppetto Joybuzz
					},
					-- #else
					["coord"] = { 44.86, 45.57, NORTHREND_DALARAN },	-- Jepetto Joybuzz
					["cr"] = 29478,	-- Jeppetto Joybuzz
					-- #endif
				}),
			},
		}),
		q(13938, {	-- A Trip To The Wonderworks [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuests"] = {
				13955,	-- The Dragon Queen
				13957,	-- The Mighty Hemet Nesingwary
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = {
				NORTHREND_DALARAN,
				-- #if AFTER 7.0.3.22290
				LEGION_DALARAN,
				625,
				-- #endif
			},
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Throw Small Paper Zeppelin to Kekek
					["provider"] = { "i", 46693 },	-- Small Paper Zeppelin (QI!)
					-- #if AFTER 7.0.3.22290
					["coords"] = {
						{ 44.86, 45.57, NORTHREND_DALARAN },	-- Jepetto Joybuzz
						{ 43.61, 45.13, 625 },	-- Jepetto Joybuzz
					},
					["crs"] = {
						29478,	-- Jeppetto Joybuzz
						96483,	-- Jeppetto Joybuzz
					},
					-- #else
					["coord"] = { 44.86, 45.57, NORTHREND_DALARAN },	-- Jepetto Joybuzz
					["cr"] = 29478,	-- Jeppetto Joybuzz
					-- #endif
				}),
			},
		}),
		q(171, {	-- A Warden of the Alliance [Alliance - Human - FINAL]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuests"] = {
				-- #if AFTER CATA
				29117,	-- Let's Go Fly a Kite [Alliance - Human]
				29119,	-- You Scream, I Scream... [Alliance - Human]
				-- #else
				558,	-- Jaina's Autograph [Alliance - Human] (removed)
				4822,	-- You Scream, I Scream... [Alliance - Human] (removed)
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 56.31, 53.99, STORMWIND_CITY },	-- Orphan Matron Nightingale
				-- #else
				{ 47.2, 38.4, STORMWIND_CITY },	-- Orphan Matron Nightingale
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = appendGroups(WARDEN_OF_THE_GROUPS, {
				-- #if AFTER CATA
				objective(1, {	-- Foam Sword Rack
					["provider"] = { "i", 69057 },	-- Foam Sword Rack
					["cr"] = 52358,	-- Craggle Wobbletop <Toys and Novelties>
				}),
				-- #endif
			}),
		}),
		q(5502, {	-- A Warden of the Horde [Horde - Orc - FINAL]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuests"] = {
				-- #if AFTER CATA
				29190,	-- Let's Go Fly a Kite [Horde - Orc]
				29191,	-- You Scream, I Scream... [Horde - Orc]
				-- #else
				925,	-- Cairne's Hoofprint [Horde - Orc] (removed)
				915,	-- You Scream, I Scream... [Horde - Orc] (removed)
				-- #endif
			},
			-- #if AFTER CATA
			["maps"] = {
				86,	-- Orgrimmar: The Drag
			},
			-- #endif
			["coords"] = {
				-- #if AFTER CATA
				{ 57.93, 57.63, ORGRIMMAR },	-- Orphan Matron Battlewail
				-- #else
				{ 70.8, 25.6, ORGRIMMAR },	-- Orphan Matron Battlewail
				-- #endif
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = appendGroups(WARDEN_OF_THE_GROUPS, {
				-- #if AFTER CATA
				objective(1, {	-- Foam Sword Rack
					["provider"] = { "i", 69057 },	-- Foam Sword Rack
					["cr"] = 52809,	-- Blax Bottlerocket <Toys and Novelties>
				}),
				-- #endif
			}),
		}),
		q(10950, {	-- Auchindoun and the Ring of Observance [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuest"] = 10943,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, TEROKKAR_FOREST },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Dornaa taken to Ring of Observance
					["provider"] = { "n", 23133 },	-- Alliance Adventurer
					["coord"] = { 39.57, 64.41, TEROKKAR_FOREST },
				}),
			},
		}),
		q(10966, {	-- Back to the Orphanage [Alliance - Draenei - FINAL]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
				{ "n", 22819 },	-- Orphan Matron Mercy
			},
			["sourceQuests"] = {
				10968,	-- Call on the Farseer
				10962,	-- Time to Visit the Caverns [Alliance - Draenei]
			},
			["coord"] = { 75.08, 47.87, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = BACK_AT_THE_OUTLAND_ORPHANAGE_GROUPS,
		}),
		q(10967, {	-- Back to the Orphanage [Horde - Blood Elf - FINAL]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
				{ "n", 22819 },	-- Orphan Matron Mercy
			},
			["sourceQuests"] = {
				-- #if AFTER 2.4.0
				11975,	-- Now, When I Grow Up... [Horde - Blood Elf]
				-- #else
				10960,	-- When I Grow Up... [Horde - Blood Elf] (removed)
				-- #endif
				10963,	-- Time to Visit the Caverns [Horde - Blood Elf]
			},
			["coord"] = { 75.08, 47.87, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = BACK_AT_THE_OUTLAND_ORPHANAGE_GROUPS,
		}),
		q(28879, {	-- Back To The Orphanage [Neutral - Oracles - FINAL]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
				{ "n", 34365 },	-- Orphan Matron Aria
			},
			["sourceQuest"] = 13937,	-- A Trip To The Wonderworks [Neutral - Oracles]
			["coord"] = { 49.37, 63.26, NORTHREND_DALARAN },	-- Orphan Matron Aria
			["timeline"] = { ADDED_3_0_2 },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				i(46545, {	-- Curious Oracle Hatchling (PET!)
					["timeline"] = { ADDED_3_2_0 },
				}),
				PET_CARE_PACKAGE,
				i(23022),	-- Curmudgeon's Payoff
				i(241215, {	-- Well-loved Figurine
					["timeline"]  = { ADDED_11_1_5 },
				}),
			},
		}),
		q(28880, {	-- Back To The Orphanage [Neutral - Wolvar - FINAL]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
				{ "n", 34365 },	-- Orphan Matron Aria
			},
			["sourceQuest"] = 13938,	-- A Trip To The Wonderworks [Neutral - Wolvar]
			["coord"] = { 49.37, 63.26, NORTHREND_DALARAN },	-- Orphan Matron Aria
			["timeline"] = { ADDED_3_0_2 },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				i(46544, {	-- Curious Wolvar Pup (PET!)
					["timeline"] = { ADDED_3_2_0 },
				}),
				PET_CARE_PACKAGE,
				i(23022),	-- Curmudgeon's Payoff
				i(241215, {	-- Well-loved Figurine
					["timeline"]  = { ADDED_11_1_5 },
				}),
			},
		}),
		q(53863, {	-- Bird Friends [Alliance - Kul Tiran]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
			},
			["sourceQuests"] = {
				53859,	-- The Mountain Folk [Alliance - Kul Tiran]
				53862,	-- The Squid Shrine [Alliance - Kul Tiran]
				53861,	-- Yo Ho, Yo Ho! [Alliance - Kul Tiran]
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { BORALUS, DRUSTVAR },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Arom's Stand
					--["provider"] = { "n",  },	-- Inquisitor Notley (not sure what the NPC ID is)
					["coord"] = { 36.25, 51.08, DRUSTVAR },	-- Birdfeather's Statue
				}),
			},
		}),
		q(925, {	-- Cairne's Hoofprint [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuests"] = {
				910,	-- Down at the Docks [Horde - Orc] (removed)
				911,	-- Gateway to the Frontier [Horde - Orc] (removed)
				1800,	-- Lordaeron Throne Room [Horde - Orc] (removed)
			},
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { THUNDER_BLUFF },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Cairne's Hoofprint
					["provider"] = { "i", 18643 },	-- Cairne's Hoofprint
					["coord"] = { 59.8, 51.6, THUNDER_BLUFF },
					["cr"] = 3057,	-- Cairne Bloodhoof <High Chieftain>
				}),
			},
		}),
		q(10968, {	-- Call on the Farseer [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuest"] = 10956,	-- The Seat of the Naaru
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, THE_EXODAR },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Dornaa taken to Farseer Nobundo
					["provider"] = { "n", 17204 },	-- Farseer Nobundo <Shaman Trainer>
					["coords"] = {
						{ 27.10, 29.86, THE_EXODAR },	-- Path to Farseer Nobundo
						{ 30.67, 27.87, THE_EXODAR },	-- Visit Farseer Nobundo
						{ 31.30, 27.65, THE_EXODAR },	-- Speak to Farseer Nobundo
					},
				}),
			},
		}),
		q(10943, {	-- Children's Week [Alliance - Draenei - START]
			["qg"] = 22819,	-- Orphan Matron Mercy
			["coord"] = { 75.08, 47.87, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
		}),
		q(1468, {	-- Children's Week [Alliance - Human - START]
			["providers"] = {
				-- #if AFTER CATA
				{ "n", 51988 },	-- Orphan Matron Nightingale
				-- #else
				{ "n", 14450 },	-- Orphan Matron Nightingale
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 56.3, 54.0, STORMWIND_CITY },	-- Orphan Matron Nightingale
				-- #else
				{ 47.4, 38.6, STORMWIND_CITY },	-- Orphan Matron Nightingale
				-- #endif
			},
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
		}),
		q(53811, {	-- Children's Week [Alliance - Kul Tiran - START]
			["qg"] = 145291,	-- Orphan Matron Westerson
			["coords"] = {
				{ 47.77, 39.37, BORALUS },	-- Path to Orphan Matron Westerson
				{ 48.01, 40.28, BORALUS },	-- Orphan Matron Westerson
			},
			["timeline"] = { ADDED_8_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
		}),
		q(10942, {	-- Children's Week [Horde - Blood Elf - START]
			["qg"] = 22819,	-- Orphan Matron Mercy
			["coord"] = { 75.08, 47.87, SHATTRATH_CITY },
			["timeline"] = { ADDED_2_0_1 },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
		}),
		q(172, {	-- Children's Week [Horde - Orc - START]
			["providers"] = {
				-- #if AFTER CATA
				{ "n", 51989 },	-- Orphan Matron Battlewall
				-- #else
				{ "n", 14451 },	-- Orphan Matron Battlewall
				-- #endif
			},
			["coords"] = {
				-- #if AFTER CATA
				{ 57.93, 57.63, ORGRIMMAR },	-- Orphan Matron Battlewail
				-- #else
				{ 70.8, 25.6, ORGRIMMAR },	-- Orphan Matron Battlewail
				-- #endif
			},
			-- #if AFTER CATA
			["maps"] = {
				86,	-- Orgrimmar: The Drag
			},
			-- #endif
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
		}),
		q(53965, {	-- Children's Week [Horde - Zandalari - START]
			["qg"] = 131346,	-- Caretaker Padae
			["coords"] = {
				{ 53.46, 84.91, DAZARALOR },	-- Entrance to Hall of Castes
				{ 54.64, 84.61, DAZARALOR },	-- Caretaker Padae
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
		}),
		q(29093, {	-- Cruisin' the Chasm [Alliance - Human]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Chopper Tour of the Raging Chasm
					["provider"] = { "n", 52189 },	-- Rental Chopper
					["coords"] = {
						{ 57.71, 53.27, WESTFALL },	-- Rental Chopper
						{ 57.78, 53.06, WESTFALL },	-- Rental Chopper
					},
				}),
			},
		}),
		q(910, {	-- Down at the Docks [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { THE_BARRENS },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the docks of Ratchet in the Barrens.
					["provider"] = { "n", 9558 },	-- Grimble <Shipmaster>
					["coord"] = { 63, 38, THE_BARRENS },
				}),
			},
		}),
		q(911, {	-- Gateway to the Frontier [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { THE_BARRENS },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the Mor'shan Rampart in the Barrens.
					["coord"] = { 47, 5, THE_BARRENS },
				}),
			},
		}),
		q(10945, {	-- Hch'uu and the Mushroom People [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuest"] = 10942,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, ZANGARMARSH },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Salandria taken to Sporeggar
					["provider"] = { "n", 22823 },	-- Hch'uu
					["coords"] = {
						{ 19.43, 51.31, ZANGARMARSH },	-- Salandria taken to Sporeggar
						{ 19.28, 51.34, ZANGARMARSH },	-- Speak to Hch'uu
					},
				}),
			},
		}),
		q(13930, {	-- Home Of The Bear-Men [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuest"] = 13927,	-- Little Orphan Kekek Of The Wolvar
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, GRIZZLY_HILLS },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Kekek taken to visit Grizzlemaw
					["coords"] = {
						{ 52.93, 44.93, GRIZZLY_HILLS },	-- Path to Grizzlemaw
						{ 51.69, 40.74, GRIZZLY_HILLS },	-- Kekek taken to Grizzlemaw
						{ 50.71, 42.75, GRIZZLY_HILLS },	-- Kekek taken to Grizzlemaw
					},
				}),
			},
		}),
		q(53969, {	-- Hunting For Gold [Horde - Zandalari]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
			},
			["sourceQuests"] = {
				53966,	-- Loa of Winds
				53967,	-- The Frogmarsh
				53968,	-- The Shifting Pack
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
				DAZARALOR,
				VOLDUN,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit the Golden Isle
					["coord"] = { 28.91, 88.76, VOLDUN },
				}),
			},
		}),
		q(558, {	-- Jaina's Autograph [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuests"] = {
				1687,	-- Spooky Lighthouse [Alliance - Human] (removed)
				1479,	-- The Bough of the Eternals [Alliance - Human] (removed)
				1558,	-- The Stonewrought Dam [Alliance - Human] (removed)
			},
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { DUSTWALLOW_MARSH },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Jaina's Autograph
					["provider"] = { "i", 18642 },	-- Jaina's Autograph
					["coord"] = { 66.2, 49.0, DUSTWALLOW_MARSH },
					["cr"] = 4968,	-- Lady Jaina Proudmoore <Ruler of Theramore>
				}),
			},
		}),
		q(10954, {	-- Jheel is at Aeris Landing! [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuest"] = 10943,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, NAGRAND },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Dornaa taken to Aeris Landing
					["provider"] = { "n", 22836 },	-- Jheel
					["coords"] = {
						{ 31.44, 57.46, NAGRAND },	-- Dornaa taken to Aeris Landing
						{ 31.49, 57.61, NAGRAND },	-- Speak to Jheel
					},
				}),
			},
		}),
		q(29117, {	-- Let's Go Fly a Kite [Alliance - Human]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuests"] = {
				29093,	-- Cruisin' the Chasm [Alliance - Human]
				-- #if AFTER 8.0.1
				54130,	-- Our New Friends [Alliance - Human]
				-- #else
				29107,	-- Malfurion Has Returned! [Alliance - Human] (removed)
				-- #endif
				29106,	-- The Biggest Diamond Ever! [Alliance - Human]
			},
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Fly Dragon Kites with your orphan
					["provider"] = { "i", 68890 },	-- Dragon Kite 2-Pack
					["coords"] = {
						{ 56.31, 68.45, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 56.67, 66.57, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 56.75, 70.04, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 57.19, 71.63, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 57.57, 65.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 57.63, 73.23, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 58.07, 74.83, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 58.44, 64.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 58.51, 76.42, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 59.12, 77.98, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 59.44, 63.31, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 60.44, 62.44, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 61.21, 61.78, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 62.31, 61.34, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 63.44, 61.05, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 64.62, 61.54, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 65.63, 62.99, STORMWIND_CITY },	-- Craggle Wobbletop Path
						{ 66.61, 64.43, STORMWIND_CITY },	-- Craggle Wobbletop Path
					},
					["cr"] = 52358,	-- Craggle Wobbletop <Toys and Novelties>
				}),
			},
		}),
		q(29190, {	-- Let's Go Fly a Kite [Horde - Orc]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuests"] = {
				29146,	-- Ridin' the Rocketway [Horde - Orc]
				-- #if AFTER 8.0.1
				54146,	-- Strong New Allies [Horde - Orc]
				-- #else
				29167,	-- The Banshee Queen [Horde - Orc]
				-- #endif
				29176,	-- The Fallen Chieftain [Horde - Orc]
			},
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
				ORGRIMMAR,
				86,	-- Orgrimmar: The Drag
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Fly Dragon Kites with your orphan
					["provider"] = { "i", 69231 },	-- Dragon Kite 2-Pack
					["coords"] = {
						{ 57.13, 51.12, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 57.24, 52.54, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 57.87, 54.21, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.08, 51.11, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.29, 62.41, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.34, 62.93, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.48, 55.55, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.67, 62.27, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.78, 53.61, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.79, 50.93, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.81, 57.61, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.85, 58.67, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 58.86, 60.16, ORGRIMMAR },	-- Blax Bottlerocket Path
						{ 59.32, 51.86, ORGRIMMAR },	-- Blax Bottlerocket Path
					},
					["cr"] = 52809,	-- Blax Bottlerocket <Toys and Novelties>
				}),
			},
		}),
		q(13927, {	-- Little Orphan Kekek Of The Wolvar [Neutral - Wolvar - START]
			["providers"] = {
				{ "n", 34365 },	-- Orphan Matron Aria
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["coord"] = { 49.37, 63.26, NORTHREND_DALARAN },
			["timeline"] = { ADDED_3_0_2 },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
		}),
		q(13926, {	-- Little Orphan Roo Of The Oracles [Neutral - Oracles - START]
			["providers"] = {
				{ "n", 34365 },	-- Orphan Matron Aria
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["coord"] = { 49.37, 63.26, NORTHREND_DALARAN },
			["timeline"] = { ADDED_3_0_2 },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
		}),
		q(53966, {	-- Loa of Winds [Horde - Zandalari]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
			},
			["sourceQuest"] = 53965,	-- Children's Week
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				ZULDAZAR,
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
				DAZARALOR,
				865,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Pterror Rise
					["coords"] = {
						{ 65.77, 45.01, 865 },	-- Path Starts to Pteroor Rise
						{ 70.54, 49.11, 865 },	-- Pterror Rise
					},
				}),
			},
		}),
		q(1800, {	-- Lordaeron Throne Room [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { UNDERCITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the old Lordaeron Throne Room that lies just before descending into the Undercity.
					["coord"] = { 66.1, 35.2, UNDERCITY },
				}),
			},
		}),
		q(29107, {	-- Malfurion Has Returned! [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_4_0_1, REMOVED_8_0_1 },
			["maps"] = { STORMWIND_CITY, DARNASSUS },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Visit Malfurion Stormrage with your orphan
					["provider"] = { "n", 43845 },	-- Malfurion Stormrage
					["coord"] = { 44.1, 79.9, DARNASSUS },
				}),
			},
		}),
		q(13956, {	-- Meeting a Great One [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuests"] = {
				13950,	-- Playmates! [Neutral - Oracles]
				13929,	-- The Biggest Tree Ever!
				13933,	-- The Bronze Dragonshrine [Neutral - Oracles]
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, SHOLAZAR_BASIN, UNGORO_CRATER },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Roo taken to visit The Etymidian
					["provider"] = { "n", 28092 },	-- The Etymidian
					["coords"] = {
						{ 40.01, 82.05, SHOLAZAR_BASIN },	-- Waygate Entrance
						{ 40.66, 84.18, SHOLAZAR_BASIN },	-- Waygate Entrance
						{ 47.56, 09.17, UNGORO_CRATER },	-- The Etymidian
					},
				}),
			},
		}),
		q(11975, {	-- Now, When I Grow Up... [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuests"] = {
				10951,	-- A Trip to the Dark Portal
				10945,	-- Hch'uu and the Mushroom People
				10953,	-- Visit the Throne of the Elements
			},
			["timeline"] = { ADDED_2_4_0 },
			["maps"] = { SHATTRATH_CITY, SILVERMOON_CITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Take Salandria to visit the Elite Tauren Chieftain in Silvermoon City.
					["providers"] = {
						{ "n", 25151 },	-- Samuro <The Tauren Chieftains>
						{ "n", 25152 },	-- Sig Nicious <The Tauren Chieftains>
						{ "n", 25148 },	-- Bergrisst <The Tauren Chieftains>
						{ "n", 25150 },	-- Mai'Kyl <The Tauren Chieftains>
						{ "n", 25149 },	-- Chief Thunder-Skins <The Tauren Chieftains>
					},
					["coord"] = { 76.61, 81.23, SILVERMOON_CITY },
				}),
			},
		}),
		q(54130, {	-- Our New Friends [Alliance - Human]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Visit the Stormwind Embassy with your orphan
					["coord"] = { 53.28, 15.25, STORMWIND_CITY },	-- Stormwind Embassy
				}),
			},
		}),
		q(13950, {	-- Playmates! [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuest"] = 13926,	-- Little Orphan Roo Of The Oracles
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, BOREAN_TUNDRA },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Roo taken to visit Winterfin Retreat
					["provider"] = { "n", 34489 },	-- Winterfin Playmate
					["coords"] = {
						{ 43.87, 12.06, BOREAN_TUNDRA },	-- Path starts
						{ 42.06, 11.26, BOREAN_TUNDRA },	-- Path branches
						{ 42.68, 12.61, BOREAN_TUNDRA },	-- Roo visits Winterfin
					},
				}),
			},
		}),
		q(13951, {	-- Playmates! [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuest"] = 13927,	-- Little Orphan Kekek Of The Wolvar
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, DRAGONBLIGHT },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Kekek taken to visit Snowfall Glade
					["provider"] = { "n", 34490 },	-- Snowfall Glade Playmate
					["coord"] = { 46.38, 67.79, DRAGONBLIGHT },	-- Kekek taken to Snowfall Glade
				}),
			},
		}),
		q(53971, {	-- Return to the Hall of Castes [Horde - Zandalari - FINAL]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
				{ "n", 131346 },	-- Caretaker Padae
			},
			["sourceQuests"] = {
				53969,	-- Hunting for Gold
				53970,	-- The Sethrak Queen
			},
			["coord"] = { 54.64, 84.61, DAZARALOR },	-- Caretaker Padae
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = RETURN_TO_THE_BFA_ORPHANAGE_GROUPS,
		}),
		q(53865, {	-- Return to the Orphanage [Alliance - Kul Tiran - FINAL]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
				{ "n", 145291 },	-- Orphan Matron Westerson
			},
			["sourceQuests"] = {
				53863,	-- Bird Friends
				53864,	-- Shapeshifters
			},
			["coord"] = { 48.01, 40.28, BORALUS },	-- Orphan Matron Westerson
			["timeline"] = { ADDED_8_0_1 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = RETURN_TO_THE_BFA_ORPHANAGE_GROUPS,
		}),
		q(29146, {	-- Ridin' the Rocketway [Horde - Orc]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
				ORGRIMMAR,
				86,	-- Orgrimmar: The Drag
				AZSHARA,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Take Your Orphan to Ride the Rocketway
					["provider"] = { "n", 52585 },	-- Redhound Two-Seater
					["coord"] = { 50.71, 73.94, AZSHARA },
				}),
			},
		}),
		q(53864, {	-- Shapeshifters [Alliance - Kul Tiran]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
			},
			["sourceQuests"] = {
				53859,	-- The Mountain Folk [Alliance - Kul Tiran]
				53862,	-- The Squid Shrine [Alliance - Kul Tiran]
				53861,	-- Yo Ho, Yo Ho! [Alliance - Kul Tiran]
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { BORALUS, DRUSTVAR },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Ulfar's Den
					--["provider"] = { "n", 141159 },	-- Ulfar (not sure what the NPC ID is)
					["coords"] = {
						{ 45.94, 39.06, DRUSTVAR },	-- Path to Ulfar's Den Starts
						{ 46.32, 43.86, DRUSTVAR },	-- Continue the path to Ulfar's Den
						{ 46.32, 44.53, DRUSTVAR },	-- Ulfar's Den
					},
				}),
			},
		}),
		q(1687, {	-- Spooky Lighthouse [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { WESTFALL },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the Westfall Lighthouse.
					["provider"] = { "n", 392 },	-- Captain Grayson
					["coord"] = { 29, 86, WESTFALL },
				}),
			},
		}),
		q(54146, {	-- Strong New Allies [Horde - Orc]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				86,	-- Orgrimmar: The Drag
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Visit the Orgrimmar Embassy with your orphan
					["coord"] = { 39.68, 78.68, ORGRIMMAR },	-- Orgimmar Embassy
				}),
			},
		}),
		q(29167, {	-- The Banshee Queen [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_4_0_1, REMOVED_8_0_1 },
			["maps"] = {
				ORGRIMMAR,
				86,	-- Orgrimmar: The Drag
				UNDERCITY,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Meeting with Lady Sylvanas Windrunner
					["provider"] = { "n", 10181 },	-- Lady Sylvanas Windrunner
					["coord"] = { 57.5, 91.1, UNDERCITY },
				}),
			},
		}),
		q(29106, {	-- The Biggest Diamond Ever! [Alliance - Human]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY, IRONFORGE, 1361 },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Visit King Magni in Old Ironforge
					["provider"] = { "n", 2918 },	-- Advisor Belgrum
					["coords"] = {
						{ 44.61, 49.40, IRONFORGE },	-- The High Seat [Leads to tunnel]
						{ 44.76, 52.25, IRONFORGE },	-- Path to Old Ironforge
						{ 37.43, 54.32, 1361 },	-- Magni [Old Ironforge]
					},
				}),
			},
		}),
		q(13929, {	-- The Biggest Tree Ever! [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuest"] = 13926,	-- Little Orphan Roo Of The Oracles
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, GRIZZLY_HILLS },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Roo taken to visit Grizzlemaw
					["coords"] = {
						{ 52.93, 44.93, GRIZZLY_HILLS },	-- Path to Grizzlemaw
						{ 51.69, 40.74, GRIZZLY_HILLS },	-- Roo taken to Grizzlemaw
						{ 50.71, 42.75, GRIZZLY_HILLS },	-- Roo taken to Grizzlemaw
					},
				}),
			},
		}),
		q(1479, {	-- The Bough of the Eternals [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { DARNASSUS },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the bank in Darnassus, otherwise known as the Bough of the Eternals.
					["coord"] = { 41, 43, DARNASSUS },
				}),
			},
		}),
		q(13933, {	-- The Bronze Dragonshrine [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuest"] = 13926,	-- Little Orphan Roo Of The Oracles
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, DRAGONBLIGHT },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Roo taken to visit Bronze Dragonshrine
					["provider"] = { "n", 34386 },	-- High-Oracle Soo-roo
					["coords"] = {
						{ 69.66, 46.25, DRAGONBLIGHT },	-- Path Starts
						{ 71.25, 40.81, DRAGONBLIGHT },	-- Roo taken to Bronze Dragonshrine
					},
				}),
			},
		}),
		q(13934, {	-- The Bronze Dragonshrine [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuest"] = 13927,	-- Little Orphan Kekek Of The Wolvar
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, DRAGONBLIGHT },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Kekek taken to visit Bronze Dragonshrine
					["provider"] = { "n", 34387 },	-- Elder Kekek
					["coords"] = {
						{ 69.66, 46.25, DRAGONBLIGHT },	-- Path Starts
						{ 71.25, 40.81, DRAGONBLIGHT },	-- Kekek taken to Bronze Dragonshrine
					},
				}),
			},
		}),
		q(13954, {	-- The Dragon Queen [Neutral - Oracles]
			["providers"] = {
				{ "i", 46397 },	-- Oracle Orphan Whistle
				{ "n", 33533 },	-- Oracle Orphan
			},
			["sourceQuests"] = {
				13950,	-- Playmates! [Neutral - Oracles]
				13929,	-- The Biggest Tree Ever!
				13933,	-- The Bronze Dragonshrine [Neutral - Oracles]
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, DRAGONBLIGHT },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Roo taken to visit Alexstrasza the Life-Binder
					["provider"] = { "n", 26917 },	-- Alexstrasza the Life-Binder <Queen of the Dragons>
					["coord"] = { 59.81, 54.45, DRAGONBLIGHT },
				}),
			},
		}),
		q(13955, {	-- The Dragon Queen [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuests"] = {
				13930,	-- Home Of The Bear-Men
				13951,	-- Playmates! [Neutral - Wolvar]
				13934,	-- The Bronze Dragonshrine [Neutral - Wolvar]
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, DRAGONBLIGHT },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Kekek taken to visit Alexstrasza the Life-Binder
					["provider"] = { "n", 26917 },	-- Alexstrasza the Life-Binder <Queen of the Dragons>
					["coord"] = { 59.81, 54.45, DRAGONBLIGHT },
				}),
			},
		}),
		q(29176, {	-- The Fallen Chieftain [Horde - Orc]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuest"] = 172,	-- Children's Week [Horde - Orc]
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
				ORGRIMMAR,
				86,	-- Orgrimmar: The Drag
				THUNDER_BLUFF,
				MULGORE,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Take Your Orphan to Visit Red Rocks
					["provider"] = { "n", 52805 },	-- Spirit of Cairne
					["coord"] = { 60.74, 22.92, MULGORE },
				}),
			},
		}),
		q(53967, {	-- The Frogmarsh [Horde - Zandalari]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
			},
			["sourceQuest"] = 53965,	-- Children's Week
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
				DAZARALOR,
				NAZMIR,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Krag'wa's Burrow
					--["provider"] = { "n", 131093 },	-- Krag'wa (not sure what the NPC ID is)
					["coords"] = {
						{ 71.18, 49.19, NAZMIR },	-- Path Starts
						{ 73.26, 53.42, NAZMIR },	-- The Frogmarsh
					},
				}),
			},
		}),
		q(13957, {	-- The Mighty Hemet Nesingwary [Neutral - Wolvar]
			["providers"] = {
				{ "i", 46396 },	-- Wolvar Orphan Whistle
				{ "n", 33532 },	-- Wolvar Orphan
			},
			["sourceQuests"] = {
				13930,	-- Home Of The Bear-Men
				13951,	-- Playmates! [Neutral - Wolvar]
				13934,	-- The Bronze Dragonshrine [Neutral - Wolvar]
			},
			["timeline"] = { ADDED_3_0_2 },
			["maps"] = { NORTHREND_DALARAN, SHOLAZAR_BASIN },
			["isYearly"] = true,
			["lvl"] = lvlsquish(72, 72, 10),
			["groups"] = {
				objective(1, {	-- Kekek taken to visit Hemet Nesingwary
					["provider"] = { "n", 27986 },	-- Hemet Nesingwary
					["coord"] = { 27.11, 58.73, SHOLAZAR_BASIN },
				}),
			},
		}),
		q(53859, {	-- The Mountain Folk [Alliance - Kul Tiran]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
			},
			["sourceQuest"] = 53811,	-- Children's Week [Alliance - Kul Tiran]
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { BORALUS, TIRAGARDE_SOUND },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit the Roughnecks
					["provider"] = { "n", 129003 },	-- Tagart
					["coord"] = { 42.47, 22.71, TIRAGARDE_SOUND },
				}),
			},
		}),
		q(10956, {	-- The Seat of the Naaru [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuests"] = {
				10950,	-- Auchindoun and the Ring of Observance
				10952,	-- A Trip to the Dark Portal
				10954,	-- Jheel is at Aeris Landing!
			},
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, THE_EXODAR },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Dornaa taken to the Seat of the Naaru
					["provider"] = { "n", 17538 },	-- O'ros
					["coords"] = {
						{ 56.87, 40.77, THE_EXODAR },	-- Seat of the Naaru
						{ 58.04, 41.50, THE_EXODAR },	-- Speak to O'ros
					},
				}),
			},
		}),
		q(53970, {	-- The Sethrak Queen [Horde - Zandalari]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
			},
			["sourceQuests"] = {
				53966,	-- Loa of Winds
				53967,	-- The Frogmarsh
				53968,	-- The Shifting Pack
			},
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
				DAZARALOR,
				VOLDUN,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Terrace of the Devoted
					["provider"] = { "n", 129588 },	-- Vorrik
					["coords"] = {
						{ 27.01, 53.15, VOLDUN },	-- Path to Sanctuary of the Devoted
						{ 27.02, 51.98, VOLDUN },	-- Path to Sanctuary of the Devoted
						{ 26.77, 52.57, VOLDUN },	-- Sanctuary of the Devoted
					},
				}),
			},
		}),
		q(53968, {	-- The Shifting Pack [Horde - Zandalari]
			["providers"] = {
				{ "i", 164965 },	-- Casteless Zandalari Whistle
				{ "n", 145463 },	-- Casteless Zandalari
			},
			["sourceQuest"] = 53965,	-- Children's Week
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = {
				THE_GREAT_SEAL,	-- Dazar'alor
				HALL_OF_CHRONICLERS,	-- Hall of Chroniclers
				DAZARALOR,
				ZULDAZAR,
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Lair of Gonk
					--["provider"] = { "n", 139649 },	-- Gonk (not sure what the NPC ID is)
					["coords"] = {
						{ 49.39, 31.22, ZULDAZAR },	-- Path Starts
						{ 48.69, 31.76, ZULDAZAR },	-- Lair of Gonk
					},
				}),
			},
		}),
		q(1558, {	-- The Stonewrought Dam [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuest"] = 1468,	-- Children's Week [Alliance - Human]
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { LOCH_MODAN },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Go to the top of the Stonewrought Dam in Loch Modan.
					["coord"] = { 48, 12, LOCH_MODAN },
				}),
			},
		}),
		q(53862, {	-- The Squid Shrine [Alliance - Kul Tiran]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
			},
			["sourceQuest"] = 53811,	-- Children's Week [Alliance - Kul Tiran]
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { BORALUS, STORMSONG_VALLEY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Shrine of the Storm
					--["provider"] = { "n",  },	-- Brother Pike (not sure what the NPC ID is)
					["coord"] = { 72.57, 49.94, STORMSONG_VALLEY },
				}),
			},
		}),
		q(10962, {	-- Time to Visit the Caverns [Alliance - Draenei]
			["providers"] = {
				{ "i", 31881 },	-- Draenei Orphan Whistle
				{ "n", 22818 },	-- Draenei Orphan
			},
			["sourceQuests"] = {
				10950,	-- Auchindoun and the Ring of Observance
				10952,	-- A Trip to the Dark Portal
				10954,	-- Jheel is at Aeris Landing!
			},
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { TANARIS, SHATTRATH_CITY, CAVERNS_OF_TIME },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Toy Dragon
					["provider"] = { "i", 31951 },	-- Toy Dragon
					["coord"] = { 39.94, 77.39, CAVERNS_OF_TIME },
					["cr"] = 21643,	-- Alurmi <Keepers of Time Quartermaster>
				}),
				objective(2, {	-- Dornaa taken to the Caverns of Time
					["provider"] = { "n", 19934 },	-- Zaladormu
					["coords"] = {
						{ 53.29, 55.35, CAVERNS_OF_TIME },	-- Dornaa taken to Caverns of Time
						{ 64.76, 50.01, CAVERNS_OF_TIME },	-- Caverns of Time Entrance
					},
				}),
			},
		}),
		q(10963, {	-- Time to Visit the Caverns [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuests"] = {
				10951,	-- A Trip to the Dark Portal
				10945,	-- Hch'uu and the Mushroom People
				10953,	-- Visit the Throne of the Elements
			},
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { TANARIS, SHATTRATH_CITY, CAVERNS_OF_TIME },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Toy Dragon
					["provider"] = { "i", 31951 },	-- Toy Dragon
					["coord"] = { 39.94, 77.39, CAVERNS_OF_TIME },
					["cr"] = 21643,	-- Alurmi <Keepers of Time Quartermaster>
				}),
				objective(2, {	-- Salandria taken to the Caverns of Time
					["provider"] = { "n", 19934 },	-- Zaladormu
					["coords"] = {
						{ 53.29, 55.35, CAVERNS_OF_TIME },	-- Salandria taken to Caverns of Time
						{ 64.76, 50.01, CAVERNS_OF_TIME },	-- Caverns of Time Entrance
					},
				}),
			},
		}),
		q(10953, {	-- Visit the Throne of the Elements [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuest"] = 10942,	-- Children's Week
			["timeline"] = { ADDED_2_0_1 },
			["maps"] = { SHATTRATH_CITY, NAGRAND },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Salandria taken to the Throne of the Elements
					["provider"] = { "n", 18072 },	-- Elementalist Sharvak
					["coords"] = {
						{ 60.39, 23.36, NAGRAND },	-- Salandria taken to the Throne of Elements
						{ 60.65, 22.11, NAGRAND },	-- Speak to Elementalist Sharvak
					},
				}),
			},
		}),
		q(10960, {	-- When I Grow Up... [Horde - Blood Elf]
			["providers"] = {
				{ "i", 31880 },	-- Blood Elf Orphan Whistle
				{ "n", 22817 },	-- Blood Elf Orphan
			},
			["sourceQuests"] = {
				10951,	-- A Trip to the Dark Portal [Horde - Blood Elf]
				10945,	-- Hch'uu and the Mushroom People [Horde - Blood Elf]
				10953,	-- Visit the Throne of the Elements [Horde - Blood Elf]
			},
			["timeline"] = { ADDED_2_0_1, REMOVED_2_4_0 },
			["maps"] = { SHATTRATH_CITY, SILVERMOON_CITY },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(60, 60, 10),
			["groups"] = {
				objective(1, {	-- Salandria taken to the paladin trainers in Silvermoon City
					["provider"] = { "n", 17076 },	-- Lady Liadrin <Blood Knight Matriarch>
					["coord"] = { 76.61, 81.23, SILVERMOON_CITY },
				}),
			},
		}),
		q(53861, {	-- Yo Ho, Yo Ho! [Alliance - Kul Tiran]
			["providers"] = {
				{ "i", 164772 },	-- Kul Tiran Orphan Whistle
				{ "n", 145394 },	-- Liam
			},
			["sourceQuest"] = 53811,	-- Children's Week [Alliance - Kul Tiran]
			["timeline"] = { ADDED_8_0_1 },
			["maps"] = { BORALUS, TIRAGARDE_SOUND },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(110, 110, 10),
			["groups"] = {
				objective(1, {	-- Visit Freehold
					["provider"] = { "n", 128700 },	-- Irontide Recruiter <Irontide Raiders>
					["coord"] = { 79.83, 82.51, TIRAGARDE_SOUND },
				}),
			},
		}),
		q(4822, {	-- You Scream, I Scream... [Alliance - Human] (removed)
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuests"] = {
				1687,	-- Spooky Lighthouse [Alliance - Human] (removed)
				1479,	-- The Bough of the Eternals [Alliance - Human] (removed)
				1558,	-- The Stonewrought Dam [Alliance - Human] (removed)
			},
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Tigule's Strawberry Ice Cream
					["provider"] = { "i", 7228 },	-- Tigule's Strawberry Ice Cream
					["coord"] = { 54.4, 65.8, STORMWIND_CITY },	-- Emmithue Smails <Sweet Treats>
					["cr"] = 14481,	-- Emmithue Smails <Sweet Treats>
				}),
			},
		}),
		q(29119, {	-- You Scream, I Scream... [Alliance - Human]
			["providers"] = {
				{ "i", 18598 },	-- Human Orphan Whistle
				{ "n", 14305 },	-- Human Orphan
			},
			["sourceQuests"] = {
				29093,	-- Cruisin' the Chasm [Alliance - Human]
				-- #if AFTER 8.0.1
				54130,	-- Our New Friends [Alliance - Human]
				-- #else
				29107,	-- Malfurion Has Returned! [Alliance - Human] (removed)
				-- #endif
				29106,	-- The Biggest Diamond Ever! [Alliance - Human]
			},
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = { STORMWIND_CITY },
			["races"] = ALLIANCE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Take your orphan out for ice cream.
					["provider"] = { "i", 69027 },	-- Cone of Cold
					["coords"] = {
						{ 49.01, 89.74, STORMWIND_CITY },	-- Hans Coldhearth
						{ 49.12, 90.07, STORMWIND_CITY },	-- Bazzil Frostweaver
					},
					["crs"] = {
						52420,	-- Bazzil Frostweaver <The Cone of Cold>
						52421,	-- Hans Coldhearth <The Cone of Cold>
					},
				}),
			},
		}),
		q(915, {	-- You Scream, I Scream... [Horde - Orc] (removed)
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuests"] = {
				910,	-- Down at the Docks [Horde - Orc] (removed)
				911,	-- Gateway to the Frontier [Horde - Orc] (removed)
				1800,	-- Lordaeron Throne Room [Horde - Orc] (removed)
			},
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_1 },
			["maps"] = { ORGRIMMAR },
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- 0/1 Tigule's Strawberry Ice Cream
					["provider"] = { "i", 7228 },	-- Tigule's Strawberry Ice Cream
					["coord"] = { 52.6, 69.6, ORGRIMMAR },	-- Alowicious Czervik <Sweet Treats>
					["cr"] = 14480,	-- Alowicious Czervik <Sweet Treats>
				}),
			},
		}),
		q(29191, {	-- You Scream, I Scream... [Horde - Orc]
			["providers"] = {
				{ "i", 18597 },	-- Orcish Orphan Whistle
				{ "n", 14444 },	-- Orcish Orphan
			},
			["sourceQuests"] = {
				29146,	-- Ridin' the Rocketway [Horde - Orc]
				-- #if AFTER 8.0.1
				54146,	-- Strong New Allies [Horde - Orc]
				-- #else
				29167,	-- The Banshee Queen [Horde - Orc]
				-- #endif
				29176,	-- The Fallen Chieftain [Horde - Orc]
			},
			["timeline"] = { ADDED_4_0_1 },
			["maps"] = {
				ORGRIMMAR,
				86,	-- Orgrimmar: The Drag
			},
			["races"] = HORDE_ONLY,
			["isYearly"] = true,
			["lvl"] = lvlsquish(10, 10, 10),
			["groups"] = {
				objective(1, {	-- Take your orphan out for ice cream.
					["provider"] = { "i", 69233 },	-- Cone of Cold
					["coord"] = { 36.28, 86.97, ORGRIMMAR },	-- Snixx Quickfreeze
					["cr"] = 52818,	-- Snixx Quickfreeze <The Cone of Cold>
				}),
			},
		}),
	}),
	n(QUESTS, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
		q(81609, {	-- What About the Children? (cross-completes)
			["qgs"] = {
				220865,	-- Holiday Enthusiast
				220870,	-- Holiday Enthusiast
				220307,	-- Holiday Enthusiast
			},
			["coords"] = {
				{ 31.4, 60.6, DORNOGAL },
				{ 46.1, 55.0, DORNOGAL },
				{ 56.8, 28.6, DORNOGAL },
			},
			["isYearly"] = true,
		}),
		q(81610, {	-- What About the Children? (cross-completes)
			["isYearly"] = true,
		}),
		q(89317, {	-- Children's Week in Dornogal
			["qg"] = 241732,	-- Ullna <Matron in Training>
			["coord"] = { 55.2, 27.0, DORNOGAL },
			["isYearly"] = true,
		}),
		q(89318, {	-- Bold for a Kobold
			["sourceQuest"] = 89317,	-- Children's Week in Dornogal
			["qg"] = 241593,	-- Skibbles
			["maps"] = { DORNOGAL },
			["isYearly"] = true,
			["g"] = { i(239689) },	-- Khaz Algar Orphan Whistle (QI!)
		}),
		q(89319, {	-- The Wondrous Weave
			["sourceQuest"] = 89318,	-- Bold for a Kobold
			["qg"] = 241604,	-- Destien
			["maps"] = { HALLOWFALL },
			["isYearly"] = true,
			["g"] = { i(240196) },	-- Khaz Algar Orphan Whistle (QI!)
		}),
		q(89320, {	-- The Eager Engineer
			["sourceQuest"] = 89319,	-- The Wondrous Weave
			["qg"] = 241603,	-- Threadis
			["maps"] = { AZJ_KAHET },
			["isYearly"] = true,
			["g"] = { i(240197) },	-- Khaz Algar Orphan Whistle (QI!)
		}),
		q(89321, {	-- Recreation for Rooks
			["sourceQuest"] = 89320,	-- The Eager Engineer
			["qg"] = 241605,	-- Kitzy
			["maps"] = { UNDERMINE },
			["isYearly"] = true,
			["g"] = { i(240198) },	-- Khaz Algar Orphan Whistle (QI!)
		}),
		q(89322, {	-- A Brighter Tomorrow
			["sourceQuest"] = 89321,	-- Recreation for Rooks
			["qg"] = 241732,	-- Ullna <Matron in Training>
			["coord"] = { 55.2, 27.0, DORNOGAL },
			["isYearly"] = true,
			["g"] = A_BRIGHTER_TOMORROW_GROUPS,
		}),
	})),
	-- #if AFTER 4.1.0.13682
	n(VENDORS, {
		n(52809, {	-- Blax Bottlerocket <Toys and Novelties>
			["coords"] = {
				{ 57.13, 51.12, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 57.24, 52.54, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 57.87, 54.21, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.08, 51.11, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.29, 62.41, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.34, 62.93, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.48, 55.55, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.67, 62.27, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.78, 53.61, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.79, 50.93, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.81, 57.61, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.85, 58.67, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 58.86, 60.16, ORGRIMMAR },	-- Blax Bottlerocket Path
				{ 59.32, 51.86, ORGRIMMAR },	-- Blax Bottlerocket Path
			},
			["timeline"] = { ADDED_4_1_0 },
			["maps"] = {
				86,	-- Ogrimmar: The Drag
			},
			["races"] = HORDE_ONLY,
			["groups"] = {
				applyevent(EVENTS.CHILDRENS_WEEK, i(69895, {	-- Green Balloon (TOY!)
					["timeline"] = { ADDED_4_1_0 },
				})),
				applyevent(EVENTS.CHILDRENS_WEEK, i(69896, {	-- Yellow Balloon (TOY!)
					["timeline"] = { ADDED_4_1_0 },
				})),
			},
		}),
		n(52358, {	-- Craggle Wobbletop <Toys and Novelties>
			["coords"] = {
				{ 56.31, 68.45, STORMWIND_CITY },
				{ 56.67, 66.57, STORMWIND_CITY },
				{ 56.75, 70.04, STORMWIND_CITY },
				{ 57.19, 71.63, STORMWIND_CITY },
				{ 57.57, 65.42, STORMWIND_CITY },
				{ 57.63, 73.23, STORMWIND_CITY },
				{ 58.07, 74.83, STORMWIND_CITY },
				{ 58.44, 64.31, STORMWIND_CITY },
				{ 58.51, 76.42, STORMWIND_CITY },
				{ 59.12, 77.98, STORMWIND_CITY },
				{ 59.44, 63.31, STORMWIND_CITY },
				{ 60.44, 62.44, STORMWIND_CITY },
				{ 61.21, 61.78, STORMWIND_CITY },
				{ 62.31, 61.34, STORMWIND_CITY },
				{ 63.44, 61.05, STORMWIND_CITY },
				{ 64.62, 61.54, STORMWIND_CITY },
				{ 65.63, 62.99, STORMWIND_CITY },
				{ 66.61, 64.43, STORMWIND_CITY },
			},
			["timeline"] = { ADDED_4_1_0 },
			["races"] = ALLIANCE_ONLY,
			["groups"] = {
				applyevent(EVENTS.CHILDRENS_WEEK, i(69895, {	-- Green Balloon (TOY!)
					["timeline"] = { ADDED_4_1_0 },
				})),
				applyevent(EVENTS.CHILDRENS_WEEK, i(69896, {	-- Yellow Balloon (TOY!)
					["timeline"] = { ADDED_4_1_0 },
				})),
			},
		}),
	}),
	-- #endif
	n(VENDORS, bubbleDown({ ["timeline"] = { ADDED_11_1_5 } }, {
		n(242651, {	-- Brundia Braidhammer <Toy and Pet Seller>
			["coord"] = { 58.0, 56.8, STORMWIND_CITY },
			["g"] = sharedData({ ["cost"] = { {"i", 241215, 1} } }, WELL_LOVED_FIGURINE_VENDOR_GROUP), -- 1x Well-loved Figurine
		}),
		n(243032, {	-- Jepetto Joybuzz
			["coord"] = { 55.8, 26.4, DORNOGAL },
			["g"] = sharedData({ ["cost"] = { {"i", 241215, 1} } }, WELL_LOVED_FIGURINE_VENDOR_GROUP), -- 1x Well-loved Figurine
		}),
		n(242676, {	-- Leial Knitterton <Toy and Pet Seller>
			["coord"] = { 58.0, 56.8, ORGRIMMAR },
			["g"] = sharedData({ ["cost"] = { {"i", 241215, 1} } }, WELL_LOVED_FIGURINE_VENDOR_GROUP), -- 1x Well-loved Figurine
		}),
	})),
})));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.WRATH, bubbleDownSelf({ ["timeline"] = { ADDED_3_1_3 } }, {
		applyevent(EVENTS.CHILDRENS_WEEK, n(CHILDRENS_WEEK_HEADER, {
			n(QUESTS, {
				q(13959),	-- Old "Back To The Orphanage" quest, triggers together with modern version (Oracle quest during Children's Week)
				q(13960),	-- Old "Back To The Orphanage" quest, triggers together with modern version (Wolvar quest during Children's Week)
			}),
		})),
	})),
	expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_0_1 } }, {
		applyevent(EVENTS.CHILDRENS_WEEK, n(CHILDRENS_WEEK_HEADER, {
			n(QUESTS, {
				q(55376),	-- completing Hunting for Gold (53969)
				q(55377),	-- completing Hunting for Gold (53969)
			}),
		})),
	})),
	expansion(EXPANSION.TWW, bubbleDownSelf({ ["timeline"] = { ADDED_11_1_5 } }, {
		applyevent(EVENTS.CHILDRENS_WEEK, n(CHILDRENS_WEEK_HEADER, {
			n(QUESTS, {
				q(90599),	-- Dialogue after completing The Eager Engineer
				q(90597),	-- Arsenal: Children's Stormwind Guard Weapon Set
				q(90598),	-- Arsenal: Children's Orgrimmar Guard Weapon Set
			}),
		})),
	})),
});