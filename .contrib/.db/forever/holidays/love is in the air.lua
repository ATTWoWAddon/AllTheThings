--------------------------------------------
--     H O L I D A Y S  M O D U L E       --
--------------------------------------------

root(ROOTS.Holidays, applyevent(EVENTS.LOVE_IS_IN_THE_AIR, n(createHeader({
	readable = "Love is in the Air",
	constant = "LOVE_IS_IN_THE_AIR_HEADER",
	icon = [[~_.asset("Holiday_love")]],
	eventID = EVENTS.LOVE_IS_IN_THE_AIR,
	eventSchedule = {
		1,	-- Recurring
		2, 6, 10, 0,	-- 02/06 at 10:00 AM
		2, 20, 10, 0	-- 02/20 at 10:00 AM
	},
	text = {
		en = "Love is in the Air",
		de = "Liebe liegt in der Luft",
		es = "Amor en el aire",
		mx = "Amor en el aire",
		fr = "De l'amour dans l'air",
		it = "Amore nell'Aria",
		ko = "온누리에 사랑을",
		pt = "O Amor Está No Ar",
		ru = "Любовная лихорадка",
		cn = "情人节",
		tw = "愛就在身邊",
	},
}), {
	["timeline"] = { TIMELINE.ADDED_1_60_1 },
	["groups"] = {
		n(COMMON_BOSS_DROPS, {
			i(22206, {	-- Bouquet of Red Roses
				["maps"] = {
					MAP.SCHOLOMANCE,
					MAP.STRATHOLME,
					MAP.DIRE_MAUL,
					MAP.BLACKROCK_DEPTHS,
				},
				["crs"] = {
					10901,	-- Lorekeeper Polkelt
					10811,	-- Archivist Galford
					11488,	-- Illyanna Ravenoak
					8929,	-- Princess Moira Bronzebeard <Princess of Ironforge>
				},
			}),
		}),
		n(QUESTS, {
			q(9029, {	-- A Bubbling Cauldron
				["sourceQuests"] = {
					9028,	-- The Source Revealed [A]
					8984,	-- The Source Revealed [H]
				},
				["provider"] = { "o", 181073 },	-- Fragrant Cauldron
				["coord"] = { 89.3, 75.1, MAP.ALTERAC_MOUNTAINS },
				["isYearly"] = true,
				["groups"] = {
					i(22281),	-- Blue Dinner Suit
					i(22282),	-- Purple Dinner Suit
					i(22277),	-- Red Dinner Suit
					i(22278),	-- Lovely Blue Dress
					i(22280),	-- Lovely Purple Dress
					i(22276),	-- Lovely Red Dress
				},
			}),
			q(9024, {	-- Aristan's Hunch
				["sourceQuest"] = 8903,	-- Dangerous Love (A)
				["qg"] = 16105,	-- Aristan Mottar
				["coord"] = { 54.6, 65.6, MAP.STORMWIND_CITY },
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
			q(8903, {	-- Dangerous Love (A)
				["qg"] = 16105,	-- Aristan Mottar
				["coord"] = { 54.6, 65.6, MAP.STORMWIND_CITY },
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
				["coord"] = { 66.8, 44.4, MAP.UNDERCITY },
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
				["coord"] = { 57.0, 59.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8898, {	-- Dearest Colara, [Ironforge]
				["providers"] = {
					{ "n", 16009 },	-- Tormek Stoneriver
					{ "i", 21920 },	-- Creased Letter
				},
				["coord"] = { 32.4, 66.0, MAP.IRONFORGE },
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8899, {	-- Dearest Colara, [Darnassus]
				["providers"] = {
					{ "n", 16001 },	-- Aldris Fourclouds
					{ "i", 21925 },	-- Immaculate Letter
				},
				["coord"] = { 42.0, 42.0, MAP.DARNASSUS },
				["maps"] = { MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8900, {	-- Dearest Elenia, [Orgrimmar]
				["providers"] = {
					{ "n", 16007 },	-- Orok Deathbane
					{ "i", 21926 },	-- Slightly Creased Note
				},
				["coord"] = { 51.2, 70.2, MAP.ORGRIMMAR },
				["maps"] = { MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8901, {	-- Dearest Elenia, [Thunder Bluff]
				["providers"] = {
					{ "n", 16008 },	-- Temma of the Wells
					{ "i", 22264 },	-- Carefully Written Letter
				},
				["coord"] = { 44.8, 59.6, MAP.THUNDER_BLUFF },
				["maps"] = { MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8902, {	-- Dearest Elenia, [Undercity]
				["providers"] = {
					{ "n", 16003 },	-- Deathguard Tor
					{ "i", 22265 },	-- Lovingly Composed Letter
				},
				["coord"] = { 60.6, 59.6, MAP.TIRISFAL_GLADES },
				["maps"] = { MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8979, {	-- Fenstad's Hunch
				["sourceQuest"] = 8904,	-- Dangerous Love (H)
				["qg"] = 16108,	-- Fenstad Argyle
				["coord"] = { 66.8, 44.4, MAP.UNDERCITY },
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
			q(8993, {	-- Gift Giving (A)
				["qg"] = 16075,	-- Kwee Q. Peddlefeet
				["coords"] = {
					{ 38.2, 80.4, MAP.DARNASSUS },
					{ 41.0, 55.2, MAP.IRONFORGE },
					{ 78.6, 17.6, MAP.STORMWIND_CITY },
				},
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Alliance Gift Collection
						["provider"] = { "i", 22262 },	-- Alliance Gift Collection
					}),
					i(21812),	-- Box of Chocolates
					i(22218),	-- Handful of Rose Petals
					i(22200),	-- Silver Shafted Arrow
				},
			}),
			q(8981, {	-- Gift Giving (H)
				["qg"] = 16075,	-- Kwee Q. Peddlefeet
				["coords"] = {
					{ 33.4, 37.8, MAP.ORGRIMMAR },
					{ 60.8, 50.6, MAP.THUNDER_BLUFF },
					{ 54.8, 90.0, MAP.UNDERCITY },
				},
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					objective(1, {	-- 0/1 Horde Gift Collection
						["provider"] = { "i", 22263 },	-- Horde Gift Collection
					}),
					i(21812),	-- Box of Chocolates
					i(22218),	-- Handful of Rose Petals
					i(22200),	-- Silver Shafted Arrow
				},
			}),
			q(9025, {	-- Morgan's Discovery
				["sourceQuest"] = 9024,	-- Aristan's Hunch
				["qg"] = 279,	-- Morgan Pestle
				["coord"] = { 56.2, 64.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(21812),	-- Box of Chocolates
					i(22218),	-- Handful of Rose Petals
				},
			}),
			q(9028, {	-- The Source Revealed (A)
				["sourceQuest"] = 9027,	-- Tracing the Source (A) (2/2)
				["qg"] = 16106,	-- Evert Sorisam
				["coord"] = { 39.8, 46.8, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8984, {	-- The Source Revealed (H)
				["sourceQuest"] = 8983,	-- Tracing the Source (H) (2/2)
				["qg"] = 16109,	-- Mara Rennick
				["coord"] = { 70.8, 28.8, MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(9026, {	-- Tracing the Source (A) (1/2)
				["sourceQuest"] = 9025,	-- Morgan's Discovery
				["qg"] = 16105,	-- Aristan Mottar
				["coord"] = { 54.6, 65.6, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(9027, {	-- Tracing the Source (A) (2/2)
				["sourceQuest"] = 9026,	-- Tracing the Source (A) (1/2)
				["qg"] = 6740,	-- Innkeeper Allison <Innkeeper>
				["coord"] = { 52.8, 65.4, MAP.STORMWIND_CITY },
				["races"] = ALLIANCE_ONLY,
				["isYearly"] = true,
			}),
			q(8982, {	-- Tracing the Source (H) (1/2)
				["sourceQuest"] = 8980,	-- Zinge's Assessment
				["qg"] = 16108,	-- Fenstad Argyle
				["coord"] = { 66.8, 44.4, MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8983, {	-- Tracing the Source (H) (2/2)
				["sourceQuest"] = 8982,	-- Tracing the Source (H) (1/2)
				["qg"] = 6741,	-- Innkeeper Norman <Innkeeper>
				["coord"] = { 67.6, 38.2, MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
			}),
			q(8980, {	-- Zinge's Assessment
				["sourceQuest"] = 8979,	-- Fenstad's Hunch
				["qg"] = 5204,	-- Apothecary Zinge <Royal Apothecary Society>
				["coord"] = { 50.0, 68.6, MAP.UNDERCITY },
				["races"] = HORDE_ONLY,
				["isYearly"] = true,
				["groups"] = {
					i(21812),	-- Box of Chocolates
					i(22218),	-- Handful of Rose Petals
				},
			}),
		}),
		n(REWARDS, {
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
				i(21812, {	-- Box of Chocolates
					i(22236),	-- Buttermilk Delight
					i(22237),	-- Dark Desire
					i(22239),	-- Sweet Surprise
					i(22238),	-- Very Berry Cream
				}),
				i(22218),	-- Handful of Rose Petals
				i(22261),	-- Love Fool
				i(22279),	-- Lovely Black Dress
				i(22200),	-- Silver Shafted Arrow
				i(22235),	-- Peddlefeet (PET!)
				i(22259),	-- Unbestowed Friendship Bracelet
			},
		}),
		n(COMMON_VENDOR_ITEMS, {
			["sharedDescription"] = "Can be purchased from innkeepers.",
			["groups"] = {
				i(21833, {	-- Cologne Bottle
					["_drop"] = { "f", "spellID" },
				}),
				i(21829, {	-- Perfume Bottle
					["_drop"] = { "f", "spellID" },
				}),
				i(21815, {	-- Wrinkled Love Token
					["_drop"] = { "f" },
				}),
			},
		}),
		n(ZONE_DROPS, {
			["description"] = "Apply a perfume or cologne buff to your character and speak to a guard in a major city to receive one of these items. Items exclusively found within each container will be listed within.",
			["cost"] = {
				{ "i", 21833, 1 },	-- Cologne Bottle
				{ "i", 21829, 1 },	-- Perfume Bottle
				{ "i", 21815, 1 },	-- Wrinkled Love Token
			},
			["groups"] = {
				i(22262, {	-- Alliance Gift Collection
					["cost"] = {
						{ "i", 22133, 1 },	-- Darnassus Gift Collection
						{ "i", 22132, 1 },	-- Ironforge Gift Collection
						{ "i", 22131, 1 },	-- Stormwind Gift Collection
					},
					["maps"] = { MAP.DARNASSUS, MAP.IRONFORGE, MAP.STORMWIND_CITY },
					["_drop"] = { "f" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22263, {	-- Horde Gift Collection
					["cost"] = {
						{ "i", 22136, 1 },	-- Orgrimmar Gift Collection
						{ "i", 22135, 1 },	-- Thunder Bluff Gift Collection
						{ "i", 22134, 1 },	-- Undercity Gift Collection
					},
					["maps"] = { MAP.ORGRIMMAR, MAP.THUNDER_BLUFF, MAP.UNDERCITY },
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
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22290, {	-- Darnassus Pledge Collection
					["cost"] = { { "i", 22120, 5 } },	-- Pledge of Loyalty: Darnassus
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22291, {	-- Box of Woodcrafts
					["cost"] = { { "i", 21960, 5 } },	-- Handmade Woodcraft
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22289, {	-- Stack of Cards
					["cost"] = { { "i", 22140, 5 } },	-- Sentinel's Card
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22140, {	-- Sentinel's Card
					["providers"] = {
						{ "i", 22155 },	-- Pledge of Adoration: Darnassus
						{ "i", 22159 },	-- Pledge of Friendship: Darnassus
					},
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22120, {	-- Pledge of Loyalty: Darnassus
					["providers"] = {
						{ "i", 22155 },	-- Pledge of Adoration: Darnassus
						{ "i", 22159 },	-- Pledge of Friendship: Darnassus
					},
					["maps"] = { MAP.DARNASSUS },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(21960, {	-- Handmade Woodcraft
					["providers"] = {
						{ "i", 21979 },	-- Gift of Adoration: Darnassus
						{ "i", 22167 },	-- Gift of Friendship: Darnassus
					},
					["maps"] = { MAP.DARNASSUS },
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
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22286, {	-- Ironforge Pledge Collection
					["cost"] = { { "i", 22119, 5 } },	-- Pledge of Loyalty: Ironforge
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22288, {	-- Case of Homebrew
					["cost"] = { { "i", 22173, 5 } },	-- Dwarven Homebrew
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22287, {	-- Parcel of Cards
					["cost"] = { { "i", 22141, 5 } },	-- Ironforge Guard's Card
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22141, {	-- Ironforge Guard's Card
					["providers"] = {
						{ "i", 22154 },	-- Pledge of Adoration: Ironforge
						{ "i", 22160 },	-- Pledge of Friendship: Ironforge
					},
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22119, {	-- Pledge of Loyalty: Ironforge
					["providers"] = {
						{ "i", 22154 },	-- Pledge of Adoration: Ironforge
						{ "i", 22160 },	-- Pledge of Friendship: Ironforge
					},
					["maps"] = { MAP.IRONFORGE },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22173, {	-- Dwarven Homebrew
					["providers"] = {
						{ "i", 21980 },	-- Gift of Adoration: Ironforge
						{ "i", 22168 },	-- Gift of Friendship: Ironforge
					},
					["maps"] = { MAP.IRONFORGE },
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
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22285, {	-- Stormwind Pledge Collection
					["cost"] = { { "i", 22117, 5 } },	-- Pledge of Loyalty: Stormwind
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22283, {	-- Sack of Homemade Bread
					["cost"] = { { "i", 22176, 5 } },	-- Homemade Bread
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22284, {	-- Bundle of Cards
					["cost"] = { { "i", 22143, 5 } },	-- Stormwind Guard's Card
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22143, {	-- Stormwind Guard's Card
					["providers"] = {
						{ "i", 21975 },	-- Pledge of Adoration: Stormwind
						{ "i", 22178 },	-- Pledge of Friendship: Stormwind
					},
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22117, {	-- Pledge of Loyalty: Stormwind
					["providers"] = {
						{ "i", 21975 },	-- Pledge of Adoration: Stormwind
						{ "i", 22178 },	-- Pledge of Friendship: Stormwind
					},
					["maps"] = { MAP.STORMWIND_CITY },
					["_drop"] = { "f", "spellID" },
					["races"] = ALLIANCE_ONLY,
				}),
				i(22176, {	-- Homemade Bread
					["providers"] = {
						{ "i", 21981 },	-- Gift of Adoration: Stormwind
						{ "i", 22170 },	-- Gift of Friendship: Stormwind
					},
					["maps"] = { MAP.STORMWIND_CITY },
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
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22294, {	-- Orgrimmar Pledge Collection
					["cost"] = { { "i", 22123, 5 } },	-- Pledge of Loyalty: Orgrimmar
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22292, {	-- Box of Fresh Pies
					["cost"] = { { "i", 22175, 5 } },	-- Freshly Baked Pie
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22293, {	-- Package of Cards
					["cost"] = { { "i", 22142, 5 } },	-- Grunt's Card
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22142, {	-- Grunt's Card
					["providers"] = {
						{ "i", 22156 },	-- Pledge of Adoration: Orgrimmar
						{ "i", 22161 },	-- Pledge of Friendship: Orgrimmar
					},
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22123, {	-- Pledge of Loyalty: Orgrimmar
					["providers"] = {
						{ "i", 22156 },	-- Pledge of Adoration: Orgrimmar
						{ "i", 22161 },	-- Pledge of Friendship: Orgrimmar
					},
					["maps"] = { MAP.ORGRIMMAR },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22175, {	-- Freshly Baked Pie
					["providers"] = {
						{ "i", 22164 },	-- Gift of Adoration: Orgrimmar
						{ "i", 22169 },	-- Gift of Friendship: Orgrimmar
					},
					["maps"] = { MAP.ORGRIMMAR },
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
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22297, {	-- Thunder Bluff Pledge Collection
					["cost"] = { { "i", 22122, 5 } },	-- Pledge of Loyalty: Thunder Bluff
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22296, {	-- Basket of Flowers
					["cost"] = { { "i", 22177, 5 } },	-- Freshly Picked Flowers
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22295, {	-- Satchel of Cards
					["cost"] = { { "i", 22144, 5 } },	-- Bluffwatcher's Card
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22144, {	-- Bluffwatcher's Card
					["providers"] = {
						{ "i", 22158 },	-- Pledge of Adoration: Thunder Bluff
						{ "i", 22162 },	-- Pledge of Friendship: Thunder Bluff
					},
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22122, {	-- Pledge of Loyalty: Thunder Bluff
					["providers"] = {
						{ "i", 22158 },	-- Pledge of Adoration: Thunder Bluff
						{ "i", 22162 },	-- Pledge of Friendship: Thunder Bluff
					},
					["maps"] = { MAP.THUNDER_BLUFF },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22177, {	-- Freshly Picked Flowers
					["providers"] = {
						{ "i", 22165 },	-- Gift of Adoration: Thunder Bluff
						{ "i", 22171 },	-- Gift of Friendship: Thunder Bluff
					},
					["maps"] = { MAP.THUNDER_BLUFF },
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
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22300, {	-- Undercity Pledge Collection
					["cost"] = { { "i", 22121, 5 } },	-- Pledge of Loyalty: Undercity
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22298, {	-- Book of Romantic Poems
					["cost"] = { { "i", 22174, 5 } },	-- Romantic Poem
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22299, {	-- Sheaf of Cards
					["cost"] = { { "i", 22145, 5 } },	-- Guardian's Moldy Card
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22145, {	-- Guardian's Moldy Card
					["providers"] = {
						{ "i", 22157 },	-- Pledge of Adoration: Undercity
						{ "i", 22163 },	-- Pledge of Friendship: Undercity
					},
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22121, {	-- Pledge of Loyalty: Undercity
					["providers"] = {
						{ "i", 22157 },	-- Pledge of Adoration: Undercity
						{ "i", 22163 },	-- Pledge of Friendship: Undercity
					},
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
				i(22174, {	-- Romantic Poem
					["providers"] = {
						{ "i", 22166 },	-- Gift of Adoration: Undercity
						{ "i", 22172 },	-- Gift of Friendship: Undercity
					},
					["maps"] = { MAP.UNDERCITY },
					["_drop"] = { "f", "spellID" },
					["races"] = HORDE_ONLY,
				}),
			},
		}),
	},
})));
