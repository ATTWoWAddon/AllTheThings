-- See Reference: https://www.wow-petopia.com/classic_bc/abilities.php
-- #if BEFORE 3.0.2
profession(261, bubbleDown({ ["timeline"] = { REMOVED_3_0_2 } }, {	-- Beast Training
	["description"] = "Lets the Hunter train their pet with various abilities that they have learned.\n\nGets replaced by the Pet Talent Trees in Wrath.",
	["classes"] = { HUNTER },
	["lvl"] = 10,
	["groups"] = {
		{
			["recipeID"] = 24493,	-- Arcane Resistance [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 24497,	-- Arcane Resistance [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24500,	-- Arcane Resistance [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 24501,	-- Arcane Resistance [Rank 4]
			["rank"] = 4,
			["lvl"] = 50,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27350,	-- Arcane Resistance [Rank 5]
			["rank"] = 5,
			["lvl"] = 60,
		}),
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35699,	-- Avoidance [Rank 1]
			["rank"] = 1,
			["lvl"] = 30,
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35700,	-- Avoidance [Rank 2]
			["rank"] = 2,
			["lvl"] = 60,
		}),
		
		{
			["recipeID"] = 17253,	-- Bite [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				1509,	-- Ragged Scavenger (Wolf, 2-3, Tirisfal Glades)
				1505,	-- Night Web Spider (Spider, 3-4, Tirisfal Glades)
				2958,	-- Prairie Wolf (Wolf, 5-6, Mulgore)
				1688,	-- Night Web Matriarch (Spider, 5, Tirisfal Glades)
				1994,	-- Githyiss the Vile (Spider, 5, Teldrassil)
				30,		-- Forest Spider (Spider, 5-6, Elwynn Forest)
				1138,	-- Snow Tracker Wolf (Wolf, 6-7, Dun Morogh)
				2959,	-- Prairie Stalker (Wolf, 7-8, Mulgore)
				1922,	-- Gray Forest Wolf (Wolf, 7-8, Elwynn Forest)
				1999,	-- Webwood Venomfang (Spider, 7-8, Teldrassil)
				1131,	-- Winter Wolf (Wolf, 7-8, Dun Morogh)
				3110,	-- Dreadmaw Crocolisk (Crocolisk, 9-11, Durotar)
			},
		},
		{
			["recipeID"] = 17255,	-- Bite [Rank 2]
			["rank"] = 2,
			["lvl"] = 10,
			["crs"] = {
				1133,	-- Starving Winter Wolf (Wolf, 8-9, Dun Morogh)
				2000,	-- Webwood Silkspinner (Spider, 8-9, Teldrassil)
				118,	-- Prowler (Wolf, 9-10, Elwynn Forest)
				-- #if AFTER TBC
				17199,	-- Ravager Specimen (Ravager, 9-10, Azuremyst Isle)
				-- #endif
				1555,	-- Vicious Night Web Spider (Spider, 9-10, Tirisfal Glades)
				2960,	-- Prairie Wolf Alpha (Wolf, 9-10, Mulgore)
				1195,	-- Forest Lurker (Spider, 10-11, Loch Modan)
				834,	-- Coyote (Wolf, 10-11, Westfall)
				2001,	-- Giant Webwood Spider (Spider, 10-11, Teldrassil)
				1765,	-- Worg (Wolf, 10-11, Silverpine Forest)
				1132,	-- Timber (Wolf, 10, Dun Morogh)
				833,	-- Coyote Packleader (Wolf, 11-12, Westfall)
				7319,	-- Lady Sathrah (Spider, 12, Teldrassil)
				1693,	-- Loch Crocolisk (Crocolisk, 14-15, Loch Modan)
				442,	-- Tarantula (Spider, 15-16, Redridge Mountains)
				3461,	-- Oasis Snapjaw (Turtle, 15-16, The Barrens)
			},
		},
		{
			["recipeID"] = 17256,	-- Bite [Rank 3]
			["rank"] = 3,
			["lvl"] = 16,
			["crs"] = {
				1923,	-- Bloodsnout Worg (Wolf, 16-17, Silverpine Forest)
				4005,	-- Deepmoss Creeper (Spider, 16-17, Stonetalon Mountains)
				-- #if AFTER TBC
				16349,	-- Ghostclaw Ravager (Cat, 16-17, Ghostlands)
				-- #endif
				1185,	-- Wood Lurker (Spider, 17-18, Loch Modan)
				8393,	-- Deviate Crocolisk (Crocolisk, 18-19, The Wailing Caverns)
				14266,	-- Shanda the Spinner (Spider, 19, Loch Modan)
				505,	-- Greater Tarantula (Spider, 19-20, Redridge Mountains)
				3823,	-- Ghostpaw Runner (Wolf, 19-20, Ashenvale)
				4006,	-- Deepmoss Webspinner (Spider, 19-20, Stonetalon Mountains)
				3653,	-- Kresh (Turtle, 20, The Wailing Caverns)
				2350,	-- Forest Moss Creeper (Spider, 20-21, Hillsbrad Foothills)
				569,	-- Green Recluse (Spider, 21-22, Duskwood)
				11921,	-- Besseleth (Spider, 21, Stonetalon Mountains)
				2476,	-- Large Loch Crocolisk (Crocolisk, 22, Loch Modan)
				616,	-- Chatter (Spider, 23, Redridge Mountains)
				521,	-- Lupos (Wolf, 23, Duskwood)
				4824,	-- Aku'mai Fisher (Turtle, 23-24, Blackfathom Deeps)
				14279,	-- Creepthess (Spider, 24, Hillsbrad Foothills)
			},
		},
		{
			["recipeID"] = 17257,	-- Bite [Rank 4]
			["rank"] = 4,
			["lvl"] = 24,
			["crs"] = {
				628,	-- Black Ravager (Wolf, 24-25, Duskwood)
				1112,	-- Leech Widow (Spider, 24, Wetlands)
				2349,	-- Giant Moss Creeper (Spider, 24-25, Hillsbrad Foothills)
				4887,	-- Ghamoo-ra (Turtle, 25, Blackfathom Deeps)
				2089,	-- Giant Wetlands Crocolisk (Crocolisk, 25-26, Wetlands)
				1258,	-- Black Ravager Mastiff (Wolf, 25-26, Duskwood)
				4825,	-- Aku'mai Snapjaw (Turtle, 26-27, Blackfathom Deeps)
				2348,	-- Elder Moss Creeper (Spider, 26-27, Hillsbrad Foothills)
				574,	-- Naraxis (Spider, 27, Duskwood)
				3825,	-- Ghostpaw Alpha (Wolf, 27-28, Ashenvale)
				3821,	-- Wildthorn Lurker (Spider, 28-29, Ashenvale)
				2408,	-- Snapjaw (Turtle, 30-31, Hillsbrad Foothills)
				14223,	-- Cranky Benj (Turtle, 32, Alterac Mountains)
			},
		},
		{
			["recipeID"] = 17258,	-- Bite [Rank 5]
			["rank"] = 5,
			["lvl"] = 32,
			["crs"] = {
				2563,	-- Plains Creeper (Spider, 32-33, Arathi Highlands)
				4143,	-- Sparkleshell Snapper (Turtle, 34-35, Thousand Needles)
				-- #if BEFORE TBC
				4413,	-- Darkfang Spider (Spider, 35-36, Dustwallow Marsh)
				-- #endif
				2727,	-- Crag Coyote (Wolf, 35-36, Badlands)
				4341,	-- Drywallow Crocolisk (Crocolisk, 35-36, Dustwallow Marsh)
				-- #if AFTER TBC
				4343,	-- Drywallow Snapper (Crocolisk, 37-38, Dustwallow Marsh)
				-- #endif
				2565,	-- Giant Plains Creeper (Spider, 35-36, Arathi Highlands)
				-- #if BEFORE TBC
				4396,	-- Mudrock Tortoise (Turtle, 36-37, Dustwallow Marsh)
				4411,	-- Darkfang Lurker (Spider, 36-37, Dustwallow Marsh)
				-- #endif
				4344,	-- Mottled Drywallow Crocolisk (Crocolisk, 38-39, Dustwallow Marsh)
				4412,	-- Darkfang Creeper (Spider, 38-39, Dustwallow Marsh)
				-- #if AFTER TBC
				2753,	-- Barnabus (Wolf, 38, Badlands)
				-- #endif
			},
		},
		{
			["recipeID"] = 17259,	-- Bite [Rank 6]
			["rank"] = 6,
			["lvl"] = 38,
			["crs"] = {
				-- #if BEFORE TBC
				2753,	-- Barnabus (Wolf, 38, Badlands)
				-- #endif
				14233,	-- Ripscale (Crocolisk, 39, Dustwallow Marsh)
				4345,	-- Drywallow Daggermaw (Crocolisk, 40-41, Dustwallow Marsh)
				5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
				769,	-- Deathstrike Tarantula (Spider, 40-41, Swamp of Sorrows)
				1087,	-- Sawtooth Snapper (Crocolisk, 41-42, Swamp of Sorrows)
				4400,	-- Mudrock Snapjaw (Turtle, 41-42, Dustwallow Marsh)
				8211,	-- Old Cliff Jumper (Wolf, 42, The Hinterlands)
				5356,	-- Snarler (Wolf, 42, Feralas)
				4841,	-- Deadmire (Crocolisk, 45, Dustwallow Marsh)
				8762,	-- Timberweb Recluse (Spider, 47-48, Azshara)
				8959,	-- Felpaw Wolf (Wolf, 47-48, Felwood)
				14339,	-- Death Howl (Wolf, 49, Felwood)
			},
		},
		{
			["recipeID"] = 17260,	-- Bite [Rank 7]
			["rank"] = 7,
			["lvl"] = 48,
			["crs"] = {
				8277,	-- Rekk'tilac (Spider, 48, Searing Gorge)
				2505,	-- Saltwater Snapjaw (Turtle, 49-50, The Hinterlands)
				2681,	-- Vilebranch Raiding Wolf (Wolf, 50-51, The Hinterlands)
				8933,	-- Cave Creeper (Spider, 50-52, Blackrock Depths)
				8961,	-- Felpaw Ravager (Wolf, 51-52, Felwood)
				6585,	-- Uhk'loc (Gorilla, 52, Un'Goro Crater)
				1817,	-- Diseased Wolf (Wolf, 53-54, Western Plaguelands)
				1824,	-- Plague Lurker (Spider, 54-55, Western Plaguelands)
				-- #if AFTER TBC
				3581,	-- Sewer Beast (Crocolisk, 50, Stormwind City)
				8213,	-- Ironback (Turtle, 51, The Hinterlands)
				-- #endif
			},
		},
		{
			["recipeID"] = 17261,	-- Bite [Rank 8]
			["rank"] = 8,
			["lvl"] = 56,
			["crs"] = {
				9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)
				-- #if AFTER TBC
				11370,	-- Razzashi Broodwidow (Spider, 61, Zul'Gurub (Raid))
				16934,	-- Quillfang Ravager (Ravager, 62-63, Hellfire Peninsula)
				19350,	-- Thornfang Venomspitter (Ravager, 62-63, Hellfire Peninsula)
				18466,	-- Dreadfang Lurker (Spider, 63-64, Terokkar Forest)
				-- #endif
			},
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27348,	-- Bite [Rank 9]
			["rank"] = 9,
			["lvl"] = 64,
			["crs"] = {
				18467,	-- Dreadfang Widow (Spider, 64-65, Terokkar Forest)
				21956,	-- Rema (Wolf, 66, Blade's Edge Mountains)
				20634,	-- Scythetooth Raptor (Raptor, 68-69, Netherstorm)
			},
		}),

		{
			["recipeID"] = 7371,	-- Charge [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				1984,	-- Young Thistle Boar (Boar, 1-2, Teldrassil)
				3098,	-- Mottled Boar (Boar, 1-2, Durotar)
				1985,	-- Thistle Boar (Boar, 2-3, Teldrassil)
				2966,	-- Battleboar (Boar, 3-4, Mulgore)
				708,	-- Small Crag Boar (Boar, 3, Dun Morogh)
				2954,	-- Bristleback Battleboar (Boar, 4-5, Mulgore)
				1125,	-- Crag Boar (Boar, 5-6, Dun Morogh)
				3099,	-- Dire Mottled Boar (Boar, 6-7, Durotar)
				1126,	-- Large Crag Boar (Boar, 6-7, Dun Morogh)
				113,	-- Stonetusk Boar (Boar, 7-8, Elwynn Forest)
				390,	-- Porcine Entourage (Boar, 7, Elwynn Forest)
				1127,	-- Elder Crag Boar (Boar, 7-8, Dun Morogh)
				524,	-- Rockhide Boar (Boar, 7-8, Elwynn Forest)
				3100,	-- Elder Mottled Boar (Boar, 8-9, Durotar)
				330,	-- Princess (Boar, 9, Elwynn Forest)
				1689,	-- Scarred Crag Boar (Boar, 9-10, Dun Morogh)
				1190,	-- Mountain Boar (Boar, 10-11, Loch Modan)
				3225,	-- Corrupted Mottled Boar (Boar, 10-11, Durotar)
				119,	-- Longsnout (Boar, 10-11, Elwynn Forest)
			},
		},
		{
			["recipeID"] = 26177,	-- Charge [Rank 2]
			["rank"] = 2,
			["lvl"] = 12,
			["crs"] = {
				454,	-- Young Goretusk (Boar, 12-13, Westfall)
				157,	-- Goretusk (Boar, 14-15, Westfall)
				1191,	-- Mangy Mountain Boar (Boar, 14-15, Loch Modan)
				1192,	-- Elder Mountain Boar (Boar, 16-17, Loch Modan)
				547,	-- Great Goretusk (Boar, 16-17, Redridge Mountains)
			},
		},
		{
			["recipeID"] = 26178,	-- Charge [Rank 3]
			["rank"] = 3,
			["lvl"] = 24,
			["crs"] = {
				345,	-- Bellygrub (Boar, 24, Redridge Mountains)
				4511,	-- Agam'ar (Boar, 24-25, Razorfen Kraul)
				4514,	-- Raging Agam'ar (Boar, 25-26, Razorfen Kraul)
				4512,	-- Rotting Agam'ar (Boar, 28, Razorfen Kraul)
			},
		},
		{
			["recipeID"] = 26179,	-- Charge [Rank 4]
			["timeline"] = { CREATED_1_0_1 },
			["rank"] = 4,
			["lvl"] = 36,
		},
		{
			["recipeID"] = 26201,	-- Charge [Rank 5]
			["rank"] = 5,
			["lvl"] = 48,
			["crs"] = {
				5992,	-- Ashmane Boar (Boar, 48-49, Blasted Lands)
				8303,	-- Grunter (Boar, 50, Blasted Lands)
			},
		},
		{
			["recipeID"] = 27685,	-- Charge [Rank 6]
			["rank"] = 6,
			["lvl"] = 60,
			["crs"] = {
				16117,	-- Plagued Swine (Boar, 60, Eastern Plaguelands)
			},
		},

		{
			["recipeID"] = 16827,	-- Claw [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				3124,	-- Scorpid Worker (Scorpid, 3, Durotar)
				3281,	-- Sarkoth (Scorpid, 4, Durotar)
				3106,	-- Pygmy Surf Crawler (Crab, 5-6, Durotar)
				1995,	-- Strigid Owl (Owl, 5-6, Teldrassil)
				1196,	-- Ice Claw Bear (Bear, 7-8, Dun Morogh)
			},
		},
		{
			["recipeID"] = 16828,	-- Claw [Rank 2]
			["rank"] = 2,
			["lvl"] = 10,
			["crs"] = {
				-- #if AFTER TBC
				15652,	-- Elder Springpaw (Cat, 8-9, Eversong Woods)
				-- #endif
				822,	-- Young Forest Bear (Bear, 8-9, Elwynn Forest)
				1997,	-- Strigid Hunter (Owl, 8-9, Teldrassil)
				3108,	-- Encrusted Surf Crawler (Crab, 9-10, Durotar)
				3127,	-- Venomtail Scorpid (Scorpid, 9-10, Durotar)
				2163,	-- Thistle Bear (Bear, 11-12, Darkshore)
				1961,	-- Mangeclaw (Bear, 11, Dun Morogh)
				5823,	-- Death Flayer (Scorpid, 11, Durotar)
				1778,	-- Ferocious Grizzled Bear (Bear, 11-12, Silverpine Forest)
				1130,	-- Bjarn (Bear, 12, Dun Morogh)
				2232,	-- Tide Crawler (Crab, 12-14, Darkshore)
				-- #if AFTER TBC
				16348,	-- Ghostclaw Lynx (Cat, 13-14, Ghostlands)
				-- #endif
			},
		},
		{
			["recipeID"] = 16829,	-- Claw [Rank 3]
			["rank"] = 3,
			["lvl"] = 16,
			["crs"] = {
				-- #if AFTER TBC
				16349,	-- Ghostclaw Ravager (Cat, 16-17, Ghostlands)
				-- #endif
				1189,	-- Black Bear Patriarch (Bear, 16-17, Loch Modan)
				1216,	-- Shore Crawler (Crab, 17-18, Westfall)
				6788,	-- Den Mother (Bear, 18-19, Darkshore)
				3812,	-- Clattering Crawler (Crab, 19-20, Ashenvale)
				3619,	-- Ghost Saber (Cat, 19-20, Darkshore)
				1225,	-- Ol' Sooty (Bear, 20, Loch Modan)
				2351,	-- Gray Bear (Bear, 21-22, Hillsbrad Foothills)
				3809,	-- Ashenvale Bear (Bear, 21-22, Ashenvale)
				4821,	-- Skittering Crustacean (Crab, 22-23, Blackfathom Deeps)
				4822,	-- Snapping Crustacean (Crab, 23-24, Blackfathom Deeps)
			},
		},
		{
			["recipeID"] = 16830,	-- Claw [Rank 4]
			["rank"] = 4,
			["lvl"] = 25,
			["crs"] = {
				3810,	-- Elder Ashenvale Bear (Bear, 25-26, Ashenvale)
				4823,	-- Barbed Crustacean (Crab, 25-26, Blackfathom Deeps)
				4696,	-- Scorpashi Snapper (Scorpid, 30-31, Desolace)
				4140,	-- Scorpid Reaver (Scorpid, 31-32, Thousand Needles)
			},
		},
		{
			["recipeID"] = 16831,	-- Claw [Rank 5]
			["rank"] = 5,
			["lvl"] = 34,
			["crs"] = {
				4697,	-- Scorpashi Lasher (Scorpid, 34-35, Desolace)
				5937,	-- Vile Sting (Scorpid, 35, Thousand Needles)
				7022,	-- Venomlash Scorpid (Scorpid, 39-40, Uldaman)
			},
		},
		{
			["recipeID"] = 16832,	-- Claw [Rank 6]
			["rank"] = 6,
			["lvl"] = 40,
			["crs"] = {
				5422,	-- Scorpid Hunter (Scorpid, 40-41, Tanaris)
				922,	-- Silt Crawler (Crab, 40-41, Swamp of Sorrows)
				5268,	-- Ironfur Bear (Bear, 41-42, Feralas)
				731,	-- King Bangalash (Cat, 43, Stranglethorn Vale)
				5352,	-- Old Grizzlegut (Bear, 43, Feralas)
				1088,	-- Monstrous Crawler (Crab, 43-44, Swamp of Sorrows)
			},
		},
		{
			["recipeID"] = 3010,	-- Claw [Rank 7]
			["rank"] = 7,
			["lvl"] = 48,
			["crs"] = {
				5274,	-- Ironfur Patriarch (Bear, 48-49, Feralas)
				8958,	-- Angerclaw Mauler (Bear, 49-50, Felwood)
				14344,	-- Mongress (Bear, 50, Felwood)
				7099,	-- Ironbeak Hunter (Owl, 50-51, Felwood)
				14343,	-- Olm the Wise (Owl, 52, Felwood)
				8301,	-- Clack the Reaver (Scorpid, 53, Blasted Lands)
				7444,	-- Shardtooth Bear (Bear, 53-54, Winterspring)
				7455,	-- Winterspring Owl (Owl, 54-56, Winterspring)
				9695,	-- Deathlash Scorpid (Scorpid, 54-55, Burning Steppes)
				1816,	-- Diseased Grizzly (Bear, 55-56, Western Plaguelands)
			},
		},
		{
			["recipeID"] = 3009,	-- Claw [Rank 8]
			["rank"] = 8,
			["lvl"] = 57,
			["crs"] = {
				7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
				7445,	-- Elder Shardtooth (Bear, 57-58, Winterspring)
				-- #if AFTER TBC
				17039,	-- Male Kaliri Hatchling (Owl, 61, Hellfire Peninsula)
				17034,	-- Female Kaliri Hatchling (Owl, 62, Hellfire Peninsula)
				-- #endif
			},
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27347,	-- Claw [Rank 9]
			["rank"] = 9,
			["lvl"] = 64,
			["crs"] = {
				22100,	-- Scorpid Bonecrawler (Scorpid, 64-65, Terokkar Forest)
				18220,	-- Ravenous Windroc (Owl, 65-66, Nagrand)
				22265,	-- Shadowwing Owl (Owl, 66-67, Shadowmoon Valley)
				17129,	-- Greater Windroc (Owl, 66-67, Nagrand)
				18257,	-- Gutripper (Owl, 67, Nagrand)
				20671,	-- Ripfang Lynx (Cat, 68-69, Netherstorm)
			},
		}),
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 25076,	-- Cobra Reflexes [Rank 1]
			["lvl"] = 30,
			["cr"] = 731,	-- King Bangalash (Cat, 43, Stranglethorn Vale)
		}),
		
		{
			["recipeID"] = 1742,	-- Cower [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				1199,	-- Juvenile Snow Leopard (Cat, 5-6, Dun Morogh)
				2042,	-- Nightsaber (Cat, 5-6, Teldrassil)
				1553,	-- Greater Duskbat (Bat, 6-7, Tirisfal Glades)
				3035,	-- Flatland Cougar (Cat, 7-8, Mulgore)
				3121,	-- Durotar Tiger (Cat, 7-8, Durotar)
				2957,	-- Elder Plainstrider (Tallstrider, 8-9, Mulgore)
				3068,	-- Mazzranache (Tallstrider, 9, Mulgore)
				2070,	-- Moonstalker Runt (Cat, 10-11, Darkshore)
				2321,	-- Foreststrider Fledgling (Tallstrider, 11-13, Darkshore)
				3246,	-- Fleeting Plainstrider (Tallstrider, 12-13, The Barrens)
			},
		},
		{
			["recipeID"] = 1753,	-- Cower [Rank 2]
			["rank"] = 2,
			["lvl"] = 15,
			["crs"] = {
				3241,	-- Savannah Patriarch (Cat, 15-16, The Barrens)
				3245,	-- Ornery Plainstrider (Tallstrider, 16-17, The Barrens)
				2323,	-- Giant Foreststrider (Tallstrider, 17-19, Darkshore)
				2237,	-- Moonstalker Sire (Cat, 17-18, Darkshore)
				2384,	-- Starving Mountain Lion (Cat, 23-24, Hillsbrad Foothills)
				4067,	-- Twilight Runner (Cat, 23-24, Stonetalon Mountains)
			},
		},
		{
			["recipeID"] = 1754,	-- Cower [Rank 3]
			["rank"] = 3,
			["lvl"] = 25,
			["crs"] = {
				4126,	-- Crag Stalker (Cat, 25-26, Thousand Needles)
				2385,	-- Feral Mountain Lion (Cat, 27-28, Hillsbrad Foothills)
				681,	-- Young Stranglethorn Tiger (Cat, 30-31, Stranglethorn Vale)
				4538,	-- Kraul Bat (Bat, 30-31, Razorfen Kraul)
				683,	-- Young Panther (Cat, 30-31, Stranglethorn Vale)
				4539,	-- Greater Kraul Bat (Bat, 32, Razorfen Kraul)
				736,	-- Panther (Cat, 32-33, Stranglethorn Vale)
			},
		},
		{
			["recipeID"] = 1755,	-- Cower [Rank 4]
			["rank"] = 4,
			["lvl"] = 36,
			["crs"] = {
				2731,	-- Ridge Stalker (Cat, 36-37, Badlands)
				4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
				2732,	-- Ridge Huntress (Cat, 38-39, Badlands)
			},
		},
		{
			["recipeID"] = 1756,	-- Cower [Rank 5]
			["rank"] = 5,
			["lvl"] = 50,
			["crs"] = {
				2522,	-- Jaguero Stalker (Cat, 50, Stranglethorn Vale)
				-- #if AFTER TBC
				8927,	-- Dark Screecher (Bat, 50-52, Blackrock Depths (Dungeon))
				-- #endif
				8600,	-- Plaguebat (Bat, 53-55, Eastern Plaguelands)
				8601,	-- Noxious Plaguebat (Bat, 54-56, Eastern Plaguelands)
			},
		},
		{
			["recipeID"] = 16697,	-- Cower [Rank 6]
			["rank"] = 6,
			["lvl"] = 55,
			["crs"] = {
				7430,	-- Frostsaber Cub (Cat, 55-56, Winterspring)
				8602,	-- Monstrous Plaguebat (Bat, 56-58, Eastern Plaguelands)
			},
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27346,	-- Cower [Rank 7]
			["rank"] = 7,
			["lvl"] = 65,
			["crs"] = {
				21022,	-- Grovestalker Lynx (Cat, 65-66, Blade's Edge Mountains)
				20671,	-- Ripfang Lynx (Cat, 68-69, Netherstorm)
				22807,	-- Lost Torranche (Tallstrider, 70, Terokkar Forest)
			},
		}),

		{
			["recipeID"] = 23099,	-- Dash [Rank 1]
			["rank"] = 1,
			["lvl"] = 32,
			["crs"] = {
				976,	-- Kurzen War Tiger (Cat, 32-33, Stranglethorn Vale)
				682,	-- Stranglethorn Tiger (Cat, 32-33, Stranglethorn Vale)
				4304,	-- Scarlet Tracking Hound (Hyena, 33-34, Scarlet Monastery)
				4688,	-- Bonepaw Hyena (Hyena, 33-35, Desolace)
				2727,	-- Crag Coyote (Wolf, 35-36, Badlands)
				4950,	-- Spot (Wolf, 35, Dustwallow Marsh)
				767,	-- Swamp Jaguar (Cat, 36-37, Swamp of Sorrows)
				4662,	-- Magram Bonepaw (Hyena, 37-38, Desolace)
				2850,	-- Broken Tooth (Cat, 37, Badlands)
				2728,	-- Feral Crag Coyote (Wolf, 37-38, Badlands)
				729,	-- Sin'Dall (Cat, 37, Stranglethorn Vale)
				2729,	-- Elder Crag Coyote (Wolf, 39-40, Badlands)
			},
		},
		{
			["recipeID"] = 23109,	-- Dash [Rank 2]
			["rank"] = 2,
			["lvl"] = 40,
			["crs"] = {
				5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
				2734,	-- Ridge Stalker Patriarch (Cat, 40-41, Badlands)
				728,	-- Bhag'thera (Cat, 40, Stranglethorn Vale)
				5425,	-- Starving Blisterpaw (Hyena, 41-42, Tanaris)
				2730,	-- Rabid Crag Coyote (Wolf, 42-43, Badlands)
				8211,	-- Old Cliff Jumper (Wolf, 42, The Hinterlands)
				1713,	-- Elder Shadowmaw Panther (Cat, 42-43, Stranglethorn Vale)
				-- #if AFTER TBC
				8208,	-- Murderous Blisterpaw (Hyena, 43, Tanaris)
				-- #endif
				731,	-- King Bangalash (Cat, 43, Stranglethorn Vale)
				5426,	-- Blisterpaw Hyena (Hyena, 44-45, Tanaris)
				5427,	-- Rabid Blisterpaw (Hyena, 47-48, Tanaris)
				2926,	-- Silvermane Stalker (Wolf, 47-48, The Hinterlands)
			},
		},
		{
			["recipeID"] = 23110,	-- Dash [Rank 3]
			["rank"] = 3,
			["lvl"] = 50,
			["crs"] = {
				2681,	-- Vilebranch Raiding Wolf (Wolf, 50-51, The Hinterlands)
				8303,	-- Grunter (Boar, 50, Blasted Lands)
				8300,	-- Ravage (Hyena, 51, Blasted Lands)
				9416,	-- Scarshield Worg (Wolf, 53-54, Blackrock Spire)
				7055,	-- Blackrock Worg (Wolf, 54-55, Burning Steppes)
				9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)
				10200,	-- Rak'Shiri (Cat, 57, Winterspring)
				7433,	-- Frostsaber Huntress (Cat, 58-59, Winterspring)
				7432,	-- Frostsaber Stalker (Cat, 59-60, Winterspring)
				11365,	-- Zulian Panther (Cat, 60, Zul'Gurub)
				-- #if AFTER TBC
				15067,	-- Zulian Stalker (Cat, 61, Zul'Gurub (Raid))
				16932,	-- Razorfang Hatchling (Ravager, 59-60, Hellfire Peninsula)
				22123,	-- Rip-Blade Ravager (Ravager, 63, Blade's Edge Mountains)
				20634,	-- Scythetooth Raptor (Raptor, 68-69, Netherstorm)
				-- #endif
			},
		},

		{
			["recipeID"] = 23145,	-- Dive [Rank 1]
			["rank"] = 1,
			["lvl"] = 30,
			["crs"] = {
				-- #if AFTER TBC
				4425,	-- Blind Hunter (Bat, 27, Razorfen Kraul (Dungeon))
				4346,	-- Noxious Flayer (Wind Serpent, 35-36, Dustwallow Marsh)
				4347,	-- Noxious Reaver (Wind Serpent, 37-38, Dustwallow Marsh)
				4348,	-- Noxious Shredder (Wind Serpent, 38-39, Dustwallow Marsh)
				-- #else
				4538,	-- Kraul Bat (Bat, 30-31, Razorfen Kraul)
				-- #endif
				2578,	-- Young Mesa Buzzard (Carrion Bird, 31-32, Arathi Highlands)
				4539,	-- Greater Kraul Bat (Bat, 32, Razorfen Kraul)
				2579,	-- Mesa Buzzard (Carrion Bird, 34-35, Arathi Highlands)
				6013,	-- Wayward Buzzard (Carrion Bird, 35-37, Badlands)
				4693,	-- Dread Flyer (Carrion Bird, 36-37, Desolace)
				4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
			},
		},
		{
			["recipeID"] = 23147,	-- Dive [Rank 2]
			["rank"] = 2,
			["lvl"] = 41,
			["crs"] = {
				5307,	-- Vale Screecher (Wind Serpent, 41-43, Feralas)
				5428,	-- Roc (Carrion Bird, 42-43, Tanaris)
				5429,	-- Fire Roc (Carrion Bird, 43-45, Tanaris)
				5308,	-- Rogue Vale Screecher (Wind Serpent, 44-46, Feralas)
				8207,	-- Greater Firebird (Carrion Bird, 46, Tanaris)
				5430,	-- Searing Roc (Carrion Bird, 47-49, Tanaris)
				7097,	-- Ironbeak Owl (Owl, 48-49, Felwood)
				5349,	-- Arash-ethis (Wind Serpent, 49, Feralas)
			},
		},
		{
			["recipeID"] = 23148,	-- Dive [Rank 3]
			["rank"] = 3,
			["lvl"] = 50,
			["crs"] = {
				8927,	-- Dark Screecher (Bat, 50-52, Blackrock Depths)
				1809,	-- Carrion Vulture (Carrion Bird, 50-52, Western Plaguelands)
				7099,	-- Ironbeak Hunter (Owl, 50-51, Felwood)
				5708,	-- Spawn of Hakkar (Wind Serpent, 51, The Temple of Atal'Hakkar)
				8299,	-- Spiteflayer (Carrion Bird, 52, Blasted Lands)
				7098,	-- Ironbeak Screecher (Owl, 52-53, Felwood)
				14343,	-- Olm the Wise (Owl, 52, Felwood)
				8600,	-- Plaguebat (Bat, 53-55, Eastern Plaguelands)
				7455,	-- Winterspring Owl (Owl, 54-56, Winterspring)
				2931,	-- Zaricotl (Carrion Bird, 55, Badlands)
				7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
				-- #if AFTER TBC
				17053,	-- Kaliri Swooper (Owl, 60, Hellfire Peninsula)
				17128,	-- Windroc (Owl, 64-65, Nagrand)
				19055,	-- Windroc Matriarch (Owl, 66, Nagrand)
				22265,	-- Shadowwing Owl (Owl, 66-67, Shadowmoon Valley)
				21042,	-- Dire Raven (Carrion Bird, 67-68, Blade's Edge Mountains)
				21804,	-- Skettis Kaliri (Owl, 70, Terokkar Forest)
				-- #endif
			},
		},
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 34890,	-- Fire Breath [Rank 1]
			["rank"] = 1,
			["lvl"] = 1,
			["crs"] = {
				15649,	-- Feral Dragonhawk Hatchling (Dragonhawk, 5-6, Eversong Woods)
				15650,	-- Crazed Dragonhawk (Dragonhawk, 7-8, Eversong Woods)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35324,	-- Fire Breath [Rank 2]
			["rank"] = 2,
			["lvl"] = 60,
			["crs"] = {
				27946,	-- Silvermoon Dragonhawk (Dragonhawk, 65, Eversong Woods; Ghostlands)
				20502,	-- Eclipsion Dragonhawk (Dragonhawk, 67-68, Shadowmoon Valley)
				18155,	-- Bloodfalcon (Dragonhawk, 69-70, The Botanica (Dungeon))
				20038,	-- Phoenix-Hawk Hatchling (Dragonhawk, 70, Tempest Keep: The Eye (Raid))
			},
		}),

		{
			["recipeID"] = 23992,	-- Fire Resistance [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 24439,	-- Fire Resistance [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24444,	-- Fire Resistance [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 24445,	-- Fire Resistance [Rank 4]
			["rank"] = 4,
			["lvl"] = 50,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27351,	-- Fire Resistance [Rank 5]
			["cr"] = 21864,	-- Scorchshell Pincer (Scorpid, 68-69, Shadowmoon Valley)
			["rank"] = 5,
			["lvl"] = 60,
		}),
		
		{
			["recipeID"] = 24446,	-- Frost Resistance [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 24447,	-- Frost Resistance [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24448,	-- Frost Resistance [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 24449,	-- Frost Resistance [Rank 4]
			["rank"] = 4,
			["lvl"] = 50,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27352,	-- Frost Resistance [Rank 5]
			["rank"] = 5,
			["lvl"] = 60,
		}),

		{
			["recipeID"] = 24604,	-- Furious Howl [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				-- #if BEFORE TBC
				2960,	-- Prairie Wolf Alpha (Wolf, 9-10, Mulgore)
				-- #endif
				1765,	-- Worg (Wolf, 10-11, Silverpine Forest)
				833,	-- Coyote Packleader (Wolf, 11-12, Westfall)
				10644,	-- Mist Howler (Wolf, 22, Ashenvale)
			},
		},
		{
			["recipeID"] = 24605,	-- Furious Howl [Rank 2]
			["rank"] = 2,
			["lvl"] = 25,
			["crs"] = {
				1258,	-- Black Ravager Mastiff (Wolf, 25-26, Duskwood)
				3825,	-- Ghostpaw Alpha (Wolf, 27-28, Ashenvale)
				2729,	-- Elder Crag Coyote (Wolf, 39-40, Badlands)
				-- #if BEFORE TBC
				5287,	-- Longtooth Howler (Wolf, 43-44, Feralas)
				-- #endif
				2925,	-- Silvermane Howler (Wolf, 45-46, The Hinterlands)
			},
		},
		{
			["recipeID"] = 24603,	-- Furious Howl [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
			["crs"] = {
				5286,	-- Longtooth Runner (Wolf, 40-41, Feralas)
				5356,	-- Snarler (Wolf, 42, Feralas)
				-- #if AFTER TBC
				5287,	-- Longtooth Howler (Wolf, 43-44, Feralas)
				-- #endif
				2924,	-- Silvermane Wolf (Wolf, 43-44, The Hinterlands)
				8959,	-- Felpaw Wolf (Wolf, 47-48, Felwood)
				14339,	-- Death Howl (Wolf, 49, Felwood)
			},
		},
		{
			["recipeID"] = 24597,	-- Furious Howl [Rank 4]
			["rank"] = 4,
			["lvl"] = 56,
			["crs"] = {
				9696,	-- Bloodaxe Worg (Wolf, 56-57, Blackrock Spire)
				-- #if AFTER TBC
				18476,	-- Timber Worg (Wolf, 62-63, Terokkar Forest)
				18033,	-- Dark Worg (Wolf, 64-65, Nagrand)
				20058,	-- Bloodmaul Dire Wolf (Wolf, 65, Blade's Edge Mountains)
				20330,	-- Bloodmaul Battle Worg (Wolf, 66-67, Blade's Edge Mountains)
				21956,	-- Rema (Wolf, 66, Blade's Edge Mountains)
				-- #endif
			},
		},
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35299,	-- Gore [Rank 1]
			["rank"] = 1,
			["lvl"] = 1,
			["crs"] = {
				1985,	-- Thistle Boar (Boar, 2-3, Teldrassil)
				2966,	-- Battleboar (Boar, 3-4, Mulgore)
				2954,	-- Bristleback Battleboar (Boar, 4-5, Mulgore)
				3099,	-- Dire Mottled Boar (Boar, 6-7, Durotar)
				1126,	-- Large Crag Boar (Boar, 6-7, Dun Morogh)
				524,	-- Rockhide Boar (Boar, 7-8, Elwynn Forest)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35300,	-- Gore [Rank 2]
			["rank"] = 2,
			["lvl"] = 8,
			["crs"] = {
				3100,	-- Elder Mottled Boar (Boar, 8-9, Durotar)
				17199,	-- Ravager Specimen (Ravager, 9-10, Azuremyst Isle)
				3225,	-- Corrupted Mottled Boar (Boar, 10-11, Durotar)
				1190,	-- Mountain Boar (Boar, 10-11, Loch Modan)
				157,	-- Goretusk (Boar, 14-15, Westfall)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35302,	-- Gore [Rank 3]
			["rank"] = 3,
			["lvl"] = 16,
			["crs"] = {
				17527,	-- Enraged Ravager (Ravager, 16-17, Bloodmyst Isle)
				1192,	-- Elder Mountain Boar (Boar, 16-17, Loch Modan)
				547,	-- Great Goretusk (Boar, 16-17, Redridge Mountains; Westfall)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35303,	-- Gore [Rank 4]
			["rank"] = 4,
			["lvl"] = 24,
			["crs"] = {
				345,	-- Bellygrub (Boar, 24, Redridge Mountains)
			},
		}),
		-- #if AFTER TBC
		applyclassicphase(TBC_PHASE_ONE, {	-- No known training sources.
			["recipeID"] = 35304,	-- Gore [Rank 5]
			["timeline"] = { CREATED_2_0_1 },
			["rank"] = 5,
			["lvl"] = 32,
		}),
		applyclassicphase(TBC_PHASE_ONE, {	-- No known training sources.
			["recipeID"] = 35305,	-- Gore [Rank 6]
			["timeline"] = { CREATED_2_0_1 },
			["rank"] = 6,
			["lvl"] = 40,
		}),
		-- #endif
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35306,	-- Gore [Rank 7]
			["rank"] = 7,
			["lvl"] = 48,
			["crs"] = {
				5992,	-- Ashmane Boar (Boar, 48-49, Blasted Lands)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35307,	-- Gore [Rank 8]
			["rank"] = 8,
			["lvl"] = 56,
			["crs"] = {
				16117,	-- Plagued Swine (Boar, 60, Eastern Plaguelands)
				19189,	-- Quillfang Skitterer (Ravager, 61-62, Hellfire Peninsula)
				19349,	-- Thornfang Ravager (Ravager, 62-63, Hellfire Peninsula)
				16934,	-- Quillfang Ravager (Ravager, 62-63, Hellfire Peninsula)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35308,	-- Gore [Rank 9]
			["rank"] = 9,
			["lvl"] = 63,
			["crs"] = {
				22123,	-- Rip-Blade Ravager (Ravager, 63, Blade's Edge Mountains)
			},
		}),

		{
			["recipeID"] = 4187,	-- Great Stamina [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
		},
		{
			["recipeID"] = 4188,	-- Great Stamina [Rank 2]
			["rank"] = 2,
			["lvl"] = 12,
		},
		{
			["recipeID"] = 4189,	-- Great Stamina [Rank 3]
			["rank"] = 3,
			["lvl"] = 18,
		},
		{
			["recipeID"] = 4190,	-- Great Stamina [Rank 4]
			["rank"] = 4,
			["lvl"] = 24,
		},
		{
			["recipeID"] = 4191,	-- Great Stamina [Rank 5]
			["rank"] = 5,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 4192,	-- Great Stamina [Rank 6]
			["rank"] = 6,
			["lvl"] = 36,
		},
		{
			["recipeID"] = 4193,	-- Great Stamina [Rank 7]
			["rank"] = 7,
			["lvl"] = 42,
		},
		{
			["recipeID"] = 4194,	-- Great Stamina [Rank 8]
			["rank"] = 8,
			["lvl"] = 48,
		},
		{
			["recipeID"] = 5041,	-- Great Stamina [Rank 9]
			["rank"] = 9,
			["lvl"] = 54,
		},
		{
			["recipeID"] = 5042,	-- Great Stamina [Rank 10]
			["rank"] = 10,
			["lvl"] = 60,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27364,	-- Great Stamina [Rank 11]
			["rank"] = 11,
			["lvl"] = 70,
		}),
		
		{
			["recipeID"] = 2649,	-- Growl [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
		},
		{
			["recipeID"] = 14916,	-- Growl [Rank 2]
			["rank"] = 2,
			["lvl"] = 10,
		},
		{
			["recipeID"] = 14917,	-- Growl [Rank 3]
			["rank"] = 3,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 14918,	-- Growl [Rank 4]
			["rank"] = 4,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 14919,	-- Growl [Rank 5]
			["rank"] = 5,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 14920,	-- Growl [Rank 6]
			["rank"] = 6,
			["lvl"] = 50,
		},
		{
			["recipeID"] = 14921,	-- Growl [Rank 7]
			["rank"] = 7,
			["lvl"] = 60,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27047,	-- Growl [Rank 8]
			["rank"] = 8,
			["lvl"] = 70,
		}),
		
		{
			["recipeID"] = 24844,	-- Lightning Breath [Rank 1]
			["timeline"] = { CREATED_1_0_1, ADDED_2_0_1 },
			-- #if AFTER TBC
			["crs"] = {
				20797,	-- Deviate Coiler Hatchling (Wind Serpent, 11, The Barrens)
			},
			-- #else
			-- No known training sources. :(
			-- #endif
			["rank"] = 1,
			["lvl"] = 10,
		},
		{
			["recipeID"] = 25008,	-- Lightning Breath [Rank 2]
			["rank"] = 2,
			["lvl"] = 15,
			["crs"] = {
				3630,	-- Deviate Coiler (Wind Serpent, 15-16, The Wailing Caverns)
				3631,	-- Deviate Stinglash (Wind Serpent, 16-17, The Wailing Caverns)
				3247,	-- Thunderhawk Hatchling (Wind Serpent, 18-20, The Barrens)
				3424,	-- Thunderhawk Cloudscraper (Wind Serpent, 20-22, The Barrens)
				5056,	-- Deviate Dreadfang (Wind Serpent, 20-21, The Wailing Caverns)
				5756,	-- Deviate Venomwing (Wind Serpent, 20-21, The Wailing Caverns)
				3249,	-- Greater Thunderhawk (Wind Serpent, 23-24, The Barrens)
			},
		},
		{
			["recipeID"] = 25009,	-- Lightning Breath [Rank 3]
			["rank"] = 3,
			["lvl"] = 25,
			["crs"] = {
				4117,	-- Cloud Serpent (Wind Serpent, 25-26, Thousand Needles)
				3472,	-- Washte Pawne (Wind Serpent, 25, The Barrens)
				4118,	-- Venomous Cloud Serpent (Wind Serpent, 26-28, Thousand Needles)
				4119,	-- Elder Cloud Serpent (Wind Serpent, 27-29, Thousand Needles)
			},
		},
		{
			["recipeID"] = 25010,	-- Lightning Breath [Rank 4]
			["rank"] = 4,
			["lvl"] = 41,
			["crs"] = {
				-- #if AFTER TBC
				4347,	-- Noxious Reaver (Wind Serpent, 37-38, Dustwallow Marsh)
				4348,	-- Noxious Shredder (Wind Serpent, 38-39, Dustwallow Marsh)
				-- #endif
				5307,	-- Vale Screecher (Wind Serpent, 41-43, Feralas)
				5308,	-- Rogue Vale Screecher (Wind Serpent, 44-46, Feralas)
			},
		},
		{
			["recipeID"] = 25011,	-- Lightning Breath [Rank 5]
			["rank"] = 5,
			["lvl"] = 49,
			["crs"] = {
				8336,	-- Hakkari Sapper (Wind Serpent, 49-50, The Temple of Atal'Hakkar)
				5291,	-- Hakkari Frostwing (Wind Serpent, 49-50, The Temple of Atal'Hakkar)
				5349,	-- Arash-ethis (Wind Serpent, 49, Feralas)
				5708,	-- Spawn of Hakkar (Wind Serpent, 51, The Temple of Atal'Hakkar)
			},
		},
		applyclassicphase(PHASE_FOUR, {
			["recipeID"] = 25012,	-- Lightning Breath [Rank 6]
			["rank"] = 6,
			["lvl"] = 60,
			["crs"] = {
				11357,	-- Son of Hakkar (Wind Serpent, 60, Zul'Gurub)
				-- #if AFTER TBC
				11359,	-- Soulflayer (Wind Serpent, 61, Zul'Gurub (Raid))
				20749,	-- Scalewing Serpent (Wind Serpent, 66-67, Blade's Edge Mountains)
				21123,	-- Felsworn Scalewing (Wind Serpent, 66-67, Blade's Edge Mountains)
				19428,	-- Cobalt Serpent (Wind Serpent, 68-71, Sethekk Halls (Dungeon))
				20673,	-- Swiftwing Shredder (Wind Serpent, 68-69, Netherstorm)
				-- #endif
			},
		}),

		{
			["recipeID"] = 24545,	-- Natural Armor [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
		},
		{
			["recipeID"] = 24549,	-- Natural Armor [Rank 2]
			["rank"] = 2,
			["lvl"] = 12,
		},
		{
			["recipeID"] = 24550,	-- Natural Armor [Rank 3]
			["rank"] = 3,
			["lvl"] = 18,
		},
		{
			["recipeID"] = 24551,	-- Natural Armor [Rank 4]
			["rank"] = 4,
			["lvl"] = 24,
		},
		{
			["recipeID"] = 24552,	-- Natural Armor [Rank 5]
			["rank"] = 5,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24553,	-- Natural Armor [Rank 6]
			["rank"] = 6,
			["lvl"] = 36,
		},
		{
			["recipeID"] = 24554,	-- Natural Armor [Rank 7]
			["rank"] = 7,
			["lvl"] = 42,
		},
		{
			["recipeID"] = 24555,	-- Natural Armor [Rank 8]
			["rank"] = 8,
			["lvl"] = 48,
		},
		{
			["recipeID"] = 24629,	-- Natural Armor [Rank 9]
			["rank"] = 9,
			["lvl"] = 54,
		},
		{
			["recipeID"] = 24630,	-- Natural Armor [Rank 10]
			-- #if AFTER TBC
			["crs"] = {
				22100,	-- Scorpid Bonecrawler (Scorpid, 64-65, Terokkar Forest)
			},
			-- #endif
			["rank"] = 10,
			["lvl"] = 60,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27362,	-- Natural Armor [Rank 11]
			["rank"] = 11,
			["lvl"] = 70,
		}),
		
		{
			["recipeID"] = 24492,	-- Nature Resistance [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 24502,	-- Nature Resistance [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24503,	-- Nature Resistance [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 24504,	-- Nature Resistance [Rank 4]
			["rank"] = 4,
			["lvl"] = 50,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27354,	-- Nature Resistance [Rank 5]
			["rank"] = 5,
			["lvl"] = 60,
		}),
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35388,	-- Poison Spit [Rank 1]
			["rank"] = 1,
			["lvl"] = 15,
			["crs"] = {
				5048,	-- Deviate Adder (Serpent, 18-19, Wailing Caverns (Dungeon))
				5755,	-- Deviate Viper (Serpent, 19-20, Wailing Caverns (Dungeon))
				5762,	-- Deviate Moccasin (Serpent, 20-21, Wailing Caverns (Dungeon))
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35390,	-- Poison Spit [Rank 2]
			["rank"] = 2,
			["lvl"] = 45,
			["crs"] = {
				7268,	-- Sandfury Guardian (Serpent, 45-46, Zul'Farrak (Dungeon))
				5224,	-- Murk Slitherer (Serpent, 45-46, Swamp of Sorrows)
				5225,	-- Murk Spitter (Serpent, 46-47, Swamp of Sorrows)
			},
		}),
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35391,	-- Poison Spit [Rank 3]
			["rank"] = 3,
			["lvl"] = 60,
			["crs"] = {
				11373,	-- Razzashi Cobra (Serpent, 60, Zul'Gurub (Raid))
				11372,	-- Razzashi Adder (Serpent, 60, Zul'Gurub (Raid))
				19784,	-- Coilskar Cobra (Serpent, 68, Shadowmoon Valley)
			},
		}),
		
		{
			["recipeID"] = 24450,	-- Prowl [Rank 1]
			["rank"] = 1,
			["lvl"] = 32,
			["crs"] = {
				2406,	-- Mountain Lion (Cat, 32-33, Alterac Mountains)
				2731,	-- Ridge Stalker (Cat, 36-37, Badlands)
				684,	-- Shadowmaw Panther (Cat, 37-38, Stranglethorn Vale)
				768,	-- Shadow Panther (Cat, 39-40, Swamp of Sorrows)
			},
		},
		{
			["recipeID"] = 24452,	-- Prowl [Rank 2]
			["rank"] = 2,
			["lvl"] = 40,
			["crs"] = {
				2734,	-- Ridge Stalker Patriarch (Cat, 40-41, Badlands)
				1713,	-- Elder Shadowmaw Panther (Cat, 42-43, Stranglethorn Vale)
			},
		},
		{
			["recipeID"] = 24453,	-- Prowl [Rank 3]
			["rank"] = 3,
			["lvl"] = 50,
			["crs"] = {
				2522,	-- Jaguero Stalker (Cat, 50, Stranglethorn Vale)
				7432,	-- Frostsaber Stalker (Cat, 59-60, Winterspring)
				-- #if AFTER TBC
				15067,	-- Zulian Stalker (Cat, 61, Zul'Gurub (Raid))
				-- #endif
			},
		},
		
		{
			["recipeID"] = 24640,	-- Scorpid Poison [Rank 1]
			["rank"] = 1,
			["lvl"] = 10,
			["crs"] = {
				3127,	-- Venomtail Scorpid (Scorpid, 9-10, Durotar)
				3226,	-- Corrupted Scorpid (Scorpid, 10-11, Durotar)
				5823,	-- Death Flayer (Scorpid, 11, Durotar)
				3250,	-- Silithid Creeper (Scorpid, 20-21, The Barrens)
				3252,	-- Silithid Swarmer (Scorpid, 21-22, The Barrens)
			},
		},
		{
			["recipeID"] = 24583,	-- Scorpid Poison [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
			["crs"] = {
				4696,	-- Scorpashi Snapper (Scorpid, 30-31, Desolace)
				4140,	-- Scorpid Reaver (Scorpid, 31-32, Thousand Needles)
				4139,	-- Scorpid Terror (Scorpid, 33-34, Thousand Needles)
				-- #if AFTER TBC
				4697,	-- Scorpashi Lasher (Scorpid, 34-35, Desolace)
				-- #endif
				7078,	-- Cleft Scorpid (Scorpid, 35-36, Uldaman)
				5937,	-- Vile Sting (Scorpid, 35, Thousand Needles)
				4699,	-- Scorpashi Venomlash (Scorpid, 38-39, Desolace)
			},
		},
		{
			["recipeID"] = 24586,	-- Scorpid Poison [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
			["crs"] = {
				5422,	-- Scorpid Hunter (Scorpid, 40-41, Tanaris)
				7405,	-- Deadly Cleft Scorpid (Scorpid, 42-43, Uldaman)
				5423,	-- Scorpid Tail Lasher (Scorpid, 43-44, Tanaris)
				7803,	-- Scorpid Duneburrower (Scorpid, 46-47, Tanaris)
				5424,	-- Scorpid Dunestalker (Scorpid, 46-47, Tanaris)
				-- #if AFTER TBC
				5988,	-- Scorpok Stinger (Scorpid, 46-47, Blasted Lands)
				-- #endif
				8926,	-- Deep Stinger (Scorpid, 50-52, Blackrock Depths)
				9691,	-- Venomtip Scorpid (Scorpid, 52-53, Burning Steppes)
				9695,	-- Deathlash Scorpid (Scorpid, 54-55, Burning Steppes)
				11735,	-- Stonelash Scorpid (Scorpid, 54-55, Silithus)
			},
		},
		{
			["recipeID"] = 24587,	-- Scorpid Poison [Rank 4]
			["rank"] = 4,
			["lvl"] = 56,
			["crs"] = {
				14476,	-- Krellack (Scorpid, 56, Silithus)
				11736,	-- Stonelash Pincer (Scorpid, 56-57, Silithus)
				9698,	-- Firetail Scorpid (Scorpid, 56-57, Burning Steppes)
				11737,	-- Stonelash Flayer (Scorpid, 58-59, Silithus)
			},
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27361,	-- Scorpid Poison [Rank 5]
			["rank"] = 5,
			["lvl"] = 64,
			["crs"] = {
				22100,	-- Scorpid Bonecrawler (Scorpid, 64-65, Terokkar Forest)
				21864,	-- Scorchshell Pincer (Scorpid, 68-69, Shadowmoon Valley)
			},
		}),
		
		{
			["recipeID"] = 24423,	-- Screech [Rank 1]
			["rank"] = 1,
			["lvl"] = 16,
			["crs"] = {
				154,	-- Greater Fleshripper (Carrion Bird, 16-17, Westfall)
			},
		},
		{
			["recipeID"] = 24577,	-- Screech [Rank 2]
			["rank"] = 2,
			["lvl"] = 32,
			["crs"] = {
				4158,	-- Salt Flats Vulture (Carrion Bird, 32-34, Thousand Needles)
				4861,	-- Shrike Bat (Bat, 38-39, Uldaman)
				4694,	-- Dread Ripper (Carrion Bird, 39-40, Desolace)
			},
		},
		{
			["recipeID"] = 24578,	-- Screech [Rank 3]
			["rank"] = 3,
			["lvl"] = 48,
			["crs"] = {
				7097,	-- Ironbeak Owl (Owl, 48-49, Felwood)
				1809,	-- Carrion Vulture (Carrion Bird, 50-52, Western Plaguelands)
				8927,	-- Dark Screecher (Bat, 50-52, Blackrock Depths)
			},
		},
		{
			["recipeID"] = 24579,	-- Screech [Rank 4]
			["rank"] = 4,
			["lvl"] = 56,
			["crs"] = {
				8602,	-- Monstrous Plaguebat (Bat, 56-58, Eastern Plaguelands)
				7456,	-- Winterspring Screecher (Owl, 57-59, Winterspring)
				-- #if AFTER TBC
				17035,	-- Kaliri Matriarch (Owl, 63, Hellfire Peninsula)
				-- #endif
			},
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27349,	-- Screech [Rank 5]
			["rank"] = 5,
			["lvl"] = 64,
			["crs"] = {
				17129,	-- Greater Windroc (Owl, 66-67, Nagrand)
				19055,	-- Windroc Matriarch (Owl, 66, Nagrand)
				18257,	-- Gutripper (Owl, 67, Nagrand)
				21042,	-- Dire Raven (Carrion Bird, 67-68, Blade's Edge Mountains)
			},
		}),
		
		{
			["recipeID"] = 24488,	-- Shadow Resistance [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
		},
		{
			["recipeID"] = 24505,	-- Shadow Resistance [Rank 2]
			["rank"] = 2,
			["lvl"] = 30,
		},
		{
			["recipeID"] = 24506,	-- Shadow Resistance [Rank 3]
			["rank"] = 3,
			["lvl"] = 40,
		},
		{
			["recipeID"] = 24507,	-- Shadow Resistance [Rank 4]
			["rank"] = 4,
			["lvl"] = 50,
		},
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27353,	-- Shadow Resistance [Rank 5]
			["rank"] = 5,
			["lvl"] = 60,
		}),
		
		{
			["recipeID"] = 26064,	-- Shell Shield [Rank 1]
			["rank"] = 1,
			["lvl"] = 20,
			["crs"] = {
				3653,	-- Kresh (Turtle, 20, The Wailing Caverns)
				4824,	-- Aku'mai Fisher (Turtle, 23-24, Blackfathom Deeps)
				4887,	-- Ghamoo-ra (Turtle, 25, Blackfathom Deeps)
				4825,	-- Aku'mai Snapjaw (Turtle, 26-27, Blackfathom Deeps)
				2408,	-- Snapjaw (Turtle, 30-31, Hillsbrad Foothills)
				-- #if AFTER TBC
				14223,	-- Cranky Benj (Turtle, 32, Alterac Mountains)
				8213,	-- Ironback (Turtle, 51, The Hinterlands)
				-- #endif
			},
		},
		
		{
			["recipeID"] = 26090,	-- Thunderstomp [Rank 1]
			["rank"] = 1,
			["lvl"] = 32,
			["crs"] = {
				1108,	-- Mistvale Gorilla (Gorilla, 32-33, Stranglethorn Vale)
				1114,	-- Jungle Thunderer (Gorilla, 37-38, Stranglethorn Vale)
			},
		},
		{
			["recipeID"] = 26187,	-- Thunderstomp [Rank 2]
			["rank"] = 2,
			["lvl"] = 40,
			["crs"] = {
				1557,	-- Elder Mistvale Gorilla (Gorilla, 40-41, Stranglethorn Vale)
				5262,	-- Groddoc Thunderer (Gorilla, 49-50, Feralas)
			},
		},
		{
			["recipeID"] = 26188,	-- Thunderstomp [Rank 3]
			["rank"] = 3,
			["lvl"] = 52,
			["crs"] = {
				6516,	-- Un'Goro Thunderer (Gorilla, 52-53, Un'Goro Crater)
				9622,	-- U'cha (Gorilla, 55, Un'Goro Crater)
			},
		},
		-- #if AFTER TBC
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 27063,	-- Thunderstomp [Rank 4]
			["description"] = "No known sources, contact Crieve if you find one!",
			["timeline"] = { CREATED_2_0_1 },
			["rank"] = 4,
			["lvl"] = 60,
		}),
		-- #endif
		
		applyclassicphase(TBC_PHASE_ONE, {
			["recipeID"] = 35348,	-- Warp
			["crs"] = {
				18464,	-- Warp Stalker (Warp Stalker, 63-64, Terokkar Forest)
				18465,	-- Warp Hunter (Warp Stalker, 64-65, Terokkar Forest)
				18884,	-- Warp Chaser (Warp Stalker, 67-68, Netherstorm)
				23219,	-- Blackwind Warp Chaser (Warp Stalker, 69-70, Terokkar Forest)
			},
			["lvl"] = 60,
		}),
	},
}));
-- #endif
