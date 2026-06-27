---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(MAP.MIDNIGHT.QUELTHALAS, {
	m(MAP.MIDNIGHT.THE_COILED_ISLE, {
		n(QUESTS, {
			header(HEADERS.Achievement, 62297, {	-- The Curse of Ula'tek (Main Campaign)
				-- Exo Note: AchCriteria, 62297.01, 'Legacy of the Amani' (First Chapter of 'The Coiled Isle' campaign) happens in Zul'Aman (almost) in its entirety and was made available (timegated) 3 weeks after the launch of 12.0.7
				-- Everything else related to 'The Coiled Isle' is 12.1.0. A personal decision has been made to separate the first chapter from everything else and place it in Zul'Aman.
				header(HEADERS.AchCriteria, 62297.02, {	-- An Island of Fangs
					q(92916, {	-- A Call for Aid
						["sourceQuest"] = 93012,	-- Dead End
						["qg"] = 263331,	-- Lady Liadrin
						["coord"] = { 43.7, 68.3, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92917, {	-- Saving Those Bound
						["sourceQuest"] = 92916,	-- A Call for Aid
						["qg"] = 253476,	-- Lady Liadrin
						["coord"] = { 37.0, 23.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92919, {	-- All Bark, All Bite
						["description"] = "Quest becomes available after accepting 'Saving Those Bound' (92917).",
						["sourceQuest"] = 92916,	-- A Call for Aid
						["qg"] = 253493,	-- Orweyna
						["coord"] = { 37.0, 23.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93265, {	-- Severing the Serpent's Head
						["sourceQuests"] = {
							92917,	-- Saving Those Bound
							92919,	-- All Bark, All Bite
						},
						["qg"] = 255269,	-- Zul'jarra
						["coord"] = { 37.5, 23.9, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(278882),	-- Ophidian General's Barbute
							i(278881),	-- Ophidian General's Crown
							i(278883),	-- Ophidian General's Headgear
							i(278884),	-- Ophidian General's Warbonnet
						},
					}),
					q(92921, {	-- To the Skybridge
						["sourceQuest"] = 93265,	-- Severing the Serpent's Head
						["qg"] = 255282,	-- Zul'jarra
						["coord"] = { 37.4, 23.8, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93266, {	-- Drumming up the Tropps
						["sourceQuest"] = 92921,	-- To the Skybridge
						["qg"] = 257078,	-- Zul'jarra
						["coord"] = { 44.1, 54.4, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(93263, {	-- It Just Had to Be...
						["sourceQuest"] = 92921,	-- To the Skybridge
						["qg"] = 255758,	-- Orweyna
						["coord"] = { 44.1, 54.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(92920, {	-- Down with the Skies
						["sourceQuests"] = {
							93266,	-- Drumming up the Tropps
							93263,	-- It Just Had to Be...
						},
						["qg"] = 258992,	-- Zul'jarra
						["coord"] = { 50.2, 54.4, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(278893),	-- Faithleaper's Greaves
							i(278894),	-- Faithleaper's Sabatons
							i(278896),	-- Faithleaper's Slippers
							i(278895),	-- Faithleaper's Treads
						},
					}),
					q(92924, {	-- What Lies Beyond the Fog
						-- Turning in this quest unlocks literally everything on The Coiled Isle (Renown, FPs, Vendors, Treasures)
						["sourceQuest"] = 92920,	-- Down with the Skies
						["qg"] = 255327,	-- Zul'jarra
						["coord"] = { 51.1, 54.5, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(95804, {	-- The Children of Ula'tek
						["sourceQuest"] = 92924,	-- What Lies Beyond the Fog
						["qg"] = 253528,	-- Zul'jarra
						["coord"] = { 57.8, 47.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(93019, {	-- Situation Normal, All Snaked Up
						["sourceQuest"] = 95804,	-- The Children of Ula'tek
						["qg"] = 253528,	-- Zul'jarra
						["coord"] = { 57.8, 47.3, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							o(628446, {	-- Jan'alai's Cinder
								i(267376),	-- Jan'alai's Cinder
							}),
							--
							i(278897),	-- Fangsmasher Crushers
							i(278898),	-- Fangsmasher Gauntlets
							i(278900),	-- Fangsmasher Grips
							i(278899),	-- Fangsmasher Handwraps
						},
					}),
					q(95564, {	-- The Serpent's Tail
						["sourceQuest"] = 95804,	-- The Children of Ula'tek
						["qg"] = 259218,	-- Tak'lejo
						["coord"] = { 57.9, 47.3, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(271851) },	-- Oozing Vilescar Barricade (DECOR!)
					}),
					q(93018, {	-- Them That Were Lost
						["sourceQuests"] = {
							93019,	-- Situation Normal, All Snaked Up
							95564,	-- The Serpent's Tail
						},
						["qg"] = 253528,	-- Zul'jarra
						["coord"] = { 47.0, 31.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(93022, {	-- Fire, the Only Way to Be Sure
						["sourceQuests"] = {
							93019,	-- Situation Normal, All Snaked Up
							95564,	-- The Serpent's Tail
						},
						["qg"] = 259218,	-- Tak'lejo
						["coord"] = { 47.0, 31.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(93023, {	-- Deaths of Furies
						["sourceQuests"] = {
							93018,	-- Them That Were Lost
							93022,	-- Fire, the Only Way to Be Sure
						},
						["qg"] = 253528,	-- Zul'jarra
						["coord"] = { 45.9, 29.4, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(279196),	-- Chain of Vengeance
							i(279195),	-- Choker of Anger
							i(279194),	-- Collar of Jealousy
						},
					}),
					q(93024, {	-- Come With Me
						["sourceQuest"] = 93023,	-- Deaths of Furies
						["qg"] = 253528,	-- Zul'jarra
						["coord"] = { 44.8, 27.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
				}),
				header(HEADERS.AchCriteria, 62297.03, {	-- Ghosts of the Past
					q(93454, {	-- Words to Hear
						["sourceQuest"] = 93024,	-- Come With Me
						["qg"] = 258859,	-- Zul'jarra
						["coord"] = { 58.4, 46.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(92925, {	-- The Glint of History
						["sourceQuest"] = 93454,	-- Words to Hear
						["qg"] = 253514,	-- Orweyna
						["coord"] = { 58.4, 45.6, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(92927, {	-- Echoed Steps
						["sourceQuest"] = 92925,	-- The Glint of History
						["qg"] = 253514,	-- Orweyna
						["coord"] = { 47.5, 73.5, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(278907),	-- Tomb-Sealed Cinch
							i(278905),	-- Tomb-Sealed Clasp
							i(278906),	-- Tomb-Sealed Girdle
							i(278908),	-- Tomb-Sealed Sash
						},
					}),
					q(92928, {	-- What Was Buried
						["sourceQuest"] = 92927,	-- Echoed Steps
						["qgs"] = {
							253514,	-- Orweyna
							255270,	-- Orweyna (mobileNPC)
						},
						["coord"] = { 69.9, 13.6, 2639 },	-- Crypt of the Denied
					}),
					q(92929, {	-- Lurking in the Dark
						["sourceQuest"] = 92927,	-- Echoed Steps
						["qgs"] = {
							253514,	-- Orweyna
							255270,	-- Orweyna (mobileNPC)
						},
						["coord"] = { 69.9, 13.6, 2639 },	-- Crypt of the Denied
						["groups"] = {
							i(278878),	-- Crypt Cleanser Chestguard
							i(278877),	-- Crypt Cleanser Cuirass
							i(278879),	-- Crypt Cleanser Harness
							i(278880),	-- Crypt Cleanser Raiment
						},
					}),
					q(92930, {	-- Written by the Victors
						["sourceQuests"] = {
							92928,	-- What Was Buried
							92929,	-- Lurking in the Dark
						},
						["qg"] = 255270,	-- Orweyna (mobileNPC)
						["coord"] = { 45.3, 45.2, 2639 },	-- Crypt of the Denied, Coordinate depend on where you turned in your previous quests
						["groups"] = { i(279452) },	-- Forgotten Amani Mural (DECOR!)
					}),
				}),
				header(HEADERS.AchCriteria, 62297.04, {	-- Original Sin
					q(92931, {	-- Delay the Venom
						["sourceQuest"] = 92930,	-- Written by the Victors
						["qg"] = 253827,	-- Lady Liadrin
						["coord"] = { 57.5, 49.1, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(267269) },	-- Fire-Blessed Poultice (QI!)
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Liadrin and Zul'Jarra
					--	["name"] = "Stay awhile and listen: Liadrin and Zul'Jarra",
					--	["description"] = "Dialogue becomes available during 'Delay the Venom' (92931), after attempting to cure Zul'Jarra.",
					--	["sourceQuest"] = 92930,	-- Written by the Victors
					--	["qg"] = 253827,	-- Lady Liadrin
					--	["coord"] = { 57.5, 49.1, MAP.MIDNIGHT.THE_COILED_ISLE },
					--}),
					--
					q(92932, {	-- Clear the Swamp
						["sourceQuest"] = 92931,	-- Delay the Venom
						["qg"] = 253514,	-- Orweyna
						["coord"] = { 64.0, 56.6, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(278901),	-- Swampdredger Greaves
							i(278903),	-- Swampdredger Leggings
							i(278902),	-- Swampdredger Legguards
							i(278904),	-- Swampdredger Trousers
						},
					}),
					q(92933, {	-- Haunted Shore
						["sourceQuest"] = 92931,	-- Delay the Venom
						["qg"] = 253829,	-- Dak'zor
						["coord"] = { 64.0, 56.6, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(279285) },	-- Lost Tortollan Scroll (DECOR!)
					}),
					q(92938, {	-- Site of Terror
						["sourceQuests"] = {
							92932,	-- Clear the Swamp
							92933,	-- Haunted Shore
						},
						["qg"] = 253514,	-- Orweyna
						["coord"] = { 67.5, 62.3, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(93063, {	-- Broken Spears
						["sourceQuests"] = {
							92932,	-- Clear the Swamp
							92933,	-- Haunted Shore
						},
						["qg"] = 253829,	-- Dak'zor
						["coord"] = { 67.5, 62.3, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(260314),	-- Ancient Amani Weapon (QI!)
							--
							i(279236),	-- Ancient Amani Athame
							i(279238),	-- Ancient Amani Battleaxe
							i(279234),	-- Ancient Amani Dagger
							i(279237),	-- Ancient Amani Greataxe
							i(279235),	-- Ancient Amani Handaxe
							i(279232),	-- Ancient Amani Longbow
							i(279231),	-- Ancient Amani Spear
							i(279233),	-- Ancient Amani Spellblade
						},
					}),
					q(93064, {	-- Awe of She
						["sourceQuests"] = {
							92938,	-- Site of Terror
							93063,	-- Broken Spears
						},
						["qg"] = 253514,	-- Orweyna
						["coord"] = { 70.3, 65.8, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(92935, {	-- Pushed to the Brink
						["sourceQuest"] = 93064,	-- Awe of She
						["qg"] = 253557,	-- Strongblood Jak'mo
						["coord"] = { 69.2, 64.2, MAP.MIDNIGHT.THE_COILED_ISLE },
					}),
					q(92934, {	-- Fuel the Calling
						["sourceQuest"] = 93064,	-- Awe of She
						["qg"] = 254020,	-- Summoner Jawae
						["coord"] = { 69.3, 64.1, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(260587) },	-- Ritual Dagger (PQI!)
					}),
					q(92936, {	-- The Summoning of Ula'tek
						["sourceQuests"] = {
							92935,	-- Pushed to the Brink
							92934,	-- Fuel the Calling
						},
						["qg"] = 253557,	-- Strongblood Jak'mo
						["coord"] = { 69.2, 64.2, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(278888),	-- Amice of the Sacrificer
							i(278887),	-- Mantle of the Sacrificer
							i(278886),	-- Pauldrons of the Sacrificer
							i(278885),	-- Spaulders of the Sacrificer
						},
					}),
					q(92937, {	-- Awakened Evil
						["sourceQuest"] = 92936,	-- The Summoning of Ula'tek
						["qg"] = 253829,	-- Dak'zor
						["coord"] = { 70.3, 65.7, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(279283),	-- Exorcised Battleaxe
							i(279245),	-- Exorcised Dagger
							i(279244),	-- Exorcised Focus
							i(279280),	-- Exorcised Greataxe
							i(279281),	-- Exorcised Handaxe
							i(279243),	-- Exorcised Shield
							i(279282),	-- Exorcised Spellblade
						},
					}),
				}),
				header(HEADERS.AchCriteria, 62297.05, {	-- The Battle for Atal'Utek
					q(93417, {	-- The Vaults of Atal'Utek: Altar of Fangs
						["sourceQuest"] = 92937,	-- Awakened Evil
						["qg"] = 253827,	-- Lady Liadrin
						["coord"] = { 57.5, 49.1, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {	-- Rewards items that drop inside the dungeon (Still left in unsorted until they are sourced inside the dungeon)
							i(273787),	-- Aged Interwoven Scaleplate
							i(273789),	-- Chestguard of Corroded Scales
							i(273785),	-- Primordial Robe of Rites
							i(273791),	-- Spare Speaker's Hood
							i(273781),	-- Strand of Warding Fangs
						},
					}),
					q(93419, {	-- Nature of Her Wounds
						["sourceQuest"] = 93417,	-- The Vaults of Atal'Utek: Altar of Fangs
						["qg"] = 259226,	-- Lady Liadrin
						["coord"] = { 57.3, 48.6, MAP.MIDNIGHT.THE_COILED_ISLE },
						-- Unlocks World Quests
					}),
					q(93418, {	-- The Venomous Abyss
						["sourceQuest"] = 93419,	-- Nature of Her Wounds
						["qg"] = 259319,	-- Zul'jarra
						["coord"] = { 57.3, 48.7, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = {
							i(279508),	-- "The Hunger Awakens" Mural (DECOR!)
							i(279009),	-- Gore Rattler Coil
							i(279010),	-- Ula'tek's Bind
						},
					}),
					q(93420, {	-- Lor'themar's Judgement
						["sourceQuest"] = 93418,	-- The Venomous Abyss
						["qg"] = 259417,	-- Lady Liadrin
						["coord"] = { 21.7, 64.9, MAP.MIDNIGHT.THE_COILED_ISLE },
						["groups"] = { i(279292) },	-- Zul'Aman Pine Tree (DECOR!)
					}),
					------ Stay awhile and listen ------
					--hqt(??, {	-- Stay awhile and listen: Zul'Jarra and Lady Liadrin
					--	["name"] = "Stay awhile and listen: Zul'Jarra and Lady Liadrin",
					--	["description"] = "Dialogue becomes available after accepting 'Lor'themar's Judgement' (93420).",
					--	["sourceQuest"] = 93418,	-- The Venomous Abyss
					--	["qg"] = 259416,	-- Zul'Jarra
					--	["coord"] = { 21.7, 64.9, MAP.MIDNIGHT.THE_COILED_ISLE },
					--}),
					--
				}),
				header(HEADERS.AchCriteria, 62297.06, {	-- The Call of the Void
					q(95973, {	-- Echoes of the Darkwell
						["sourceQuest"] = 93420,	-- Lor'themar's Judgement	-- Exo Note: Available from the get-go on PTR, this may change when Patch goes live. 93420 should be a proper sourceQuest as the story continuation fits nicely.
						["qg"] = 235787,	-- Lor'themar Theron
						["coord"] = { 45.4, 70.3, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(94519, {	-- What Hope in the Light?
						["sourceQuest"] = 95973,	-- Echoes of the Darkwell
						["qg"] = 258019,	-- Magister Umbric
						["coord"] = { 46.2, 47.2, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					q(94520, {	-- Resurgence in Deatholme
						["sourceQuest"] = 94519,	-- What Hope in the Light?
						["qg"] = 262269,	-- Magister Umbric
						["coord"] = { 52.3, 48.7, MAP.MIDNIGHT.ISLE_OF_QUELDANAS },
					}),
					q(94521, {	-- The Direct Method
						["sourceQuest"] = 94520,	-- Resurgence in Deatholme
						["qg"] = 258022,	-- Arator
						["coord"] = { 43.8, 82.4, MAP.MIDNIGHT.EVERSONG_WOODS },
						["groups"] = {
							i(266893, {	-- Twilight Clues (QI!)
								-- Following items count as "Clues" when looted
								i(270266),	-- Fragmented Void (QI!)
								i(266894),	-- Twilight Journal (QI!)
								i(266896),	-- Twilight Letter (QI!)
							}),
						},
					}),
					q(94522, {	-- They Always Write It Down
						["sourceQuest"] = 94520,	-- Resurgence in Deatholme
						["qg"] = 258021,	-- Magister Umbric
						["coord"] = { 43.7, 82.4, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(94523, {	-- My Poor Beautiful Self
						["sourceQuest"] = 94520,	-- Resurgence in Deatholme
						["qg"] = 258024,	-- Pathetic Voidling
						["coord"] = { 43.0, 85.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(94524, {	-- Under New Management
						["sourceQuests"] = {
							94521,	-- The Direct Method
							94522,	-- They Always Write It Down
							94523,	-- My Poor Beautiful Self
						},
						["qg"] = 258029,	-- Arator
						["coord"] = { 42.9, 85.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					------ Stay awhile and listen ------
					hqt(95960, {	-- Stay awhile and listen: Arator
						["name"] = "Stay awhile and listen: Arator",
						["description"] = "Dialogue becomes available after accepting 'Under New Management' (94524).",
						["sourceQuests"] = {
							94521,	-- The Direct Method
							94522,	-- They Always Write It Down
							94523,	-- My Poor Beautiful Self
						},
						["qg"] = 258029,	-- Arator
						["coord"] = { 42.9, 85.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					--
					q(94525, {	-- A Comeback Story
						["sourceQuests"] = {
							94521,	-- The Direct Method
							94522,	-- They Always Write It Down
							94523,	-- My Poor Beautiful Self
						},
						["qg"] = 258024, -- Pathetic Voidling
						["coord"] = { 43.0, 85.0, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(94526, {	-- Verifiably Untrustworthy
						["sourceQuests"] = {
							94524,	-- Under New Management
							94525,	-- A Comeback Story
						},
						["qg"] = 258095,	-- Magister Umbric
						["coord"] = { 42.7, 88.5, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(94527, {	-- Null Space
						["sourceQuest"] = 94526,	-- Verifiably Untrustworthy
						["qg"] = 259707,	-- Magister Umbric
						["coord"] = { 42.5, 89.2, MAP.MIDNIGHT.EVERSONG_WOODS },
					}),
					q(94528, {	-- Carving Out Room
						["sourceQuest"] = 94527,	-- Null Space
						["qg"] = 263465,	-- Arator
						["coord"] = { 38.8, 74.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(94529, {	-- A Dark Shadow Looms
						["sourceQuest"] = 94527,	-- Null Space
						["qg"] = 258151,	-- Magister Umbric
						["coord"] = { 38.9, 74.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					------ Stay awhile and listen ------
					hqt(95959, {	-- Stay awhile and listen: Arator
						["name"] = "Stay awhile and listen: Arator",
						["description"] = "Dialogue becomes available after accepting 'A Dark Shadow Looms' (94529).",
						["sourceQuest"] = 94527,	-- Null Space
						["qg"] = 263465,	-- Arator
						["coord"] = { 38.8, 74.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					--
					q(94530, {	-- The Call of the Void
						["sourceQuests"] = {
							94528,	-- Carving Out Room
							94529,	-- A Dark Shadow Looms
						},
						["qg"] = 258151,	-- Magister Umbric
						["coord"] = { 38.9, 74.0, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(94531, {	-- Like Mother, Like Son
						["sourceQuest"] = 94530,	-- The Call of the Void
						["qg"] = 258150,	-- Arator
						["coord"] = { 38.8, 74.1, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(271970),	-- Dawn's Radiance (COSMETIC!)
							i(278691),	-- Twilight Brazier (DECOR!)
						},
					}),
					------ Stay awhile and listen ------
					hqt(95958, {	-- Stay awhile and listen: Magister Umbric
						["name"] = "Stay awhile and listen: Magister Umbric",
						["description"] = "Dialogue becomes available after completing 'Like Mother, Like Son' (94531).",
						["sourceQuest"] = 94531,	-- Like Mother, Like Son
						["qg"] = 258538,	-- Magister Umbric
						["coord"] = { 45.3, 70.4, MAP.MIDNIGHT.SILVERMOON_CITY },
					}),
					--
				}),
			}),
			header(HEADERS.Achievement, 63641, {	-- Snake Charmed, I'm Sure (Sojourner)
				--header(HEADERS.AchCriteria, 63641.01, {	-- Strange Friends in Odd Places
				--}),
				--header(HEADERS.AchCriteria, 63641.02, {	-- Tokka's Crew
				--}),
				--header(HEADERS.AchCriteria, 63641.03, {	-- Ancient Anthropology
				--}),
				--header(HEADERS.AchCriteria, 63641.04, {	-- Bone Deep
				--}),
				--header(HEADERS.AchCriteria, 63641.05, {	-- The Honored Mad'jai
				--}),
				--header(HEADERS.AchCriteria, 63641.06, {	-- Don't be Afrayed
				--}),
				header(HEADERS.AchCriteria, 63641.07, {	-- A Band of Brothers
					q(94936, {	-- A Bond of Brothers
						--["sourceQuest"] = 92924,	-- What Lies Beyond the Fog
						["qg"] = 258717,	-- Aol'ggin
						["coord"] = { 56.5, 43.1, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(94937, {	-- Too Quiet on the Northern Front
						["sourceQuest"] = 94936,	-- A Bond of Brothers
						["qg"] = 259295,	-- Tekkan
						["coord"] = { 53.2, 35.2, MAP.MIDNIGHT.ZULAMAN },
					}),
					q(94941, {	-- Saving Recruit Jabat
						["sourceQuest"] = 94937,	-- Too Quiet on the Northern Front
						["qg"] = 259297,	-- Aol'ggin
						["coord"] = { 53.4, 33.5, MAP.MIDNIGHT.ZULAMAN },
						["groups"] = {
							i(278890),	-- Armbands of Brothers
							i(278892),	-- Bands of Brothers
							i(278889),	-- Warbands of Brothers
							i(278891),	-- Wristbands of Brothers
						},
					}),
				}),
				--header(HEADERS.AchCriteria, 63641.08, {	-- The Troubles of Mlurkrr Mire
				--}),
				--header(HEADERS.AchCriteria, 63641.09, {	-- Somethin' Bad Inside
				--}),
				--header(HEADERS.AchCriteria, 63641.10, {	-- Living Legend
				--}),
				--header(HEADERS.AchCriteria, 63641.11, {	-- The Monster's Mother
				--}),
			}),
		}),
	}),
}));
