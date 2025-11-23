---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------
root(ROOTS.Zones, m(DRAGON_ISLES, bubbleDown({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(THALDRASZUS, {
		n(QUESTS, {
			header(HEADERS.Achievement, 16363, {	-- Just Don't Ask Me to Spell It
				------ Chapter 1 ------
				q(66244, {	-- To Valdrakken
					["sourceQuests"] = { 66015 },	-- The Blue Dragon Oathstone
					["provider"] = { "n", 190000 },	-- Kalecgos
					["coord"] = { 39.5, 63.1, THE_AZURE_SPAN },
				}),
				q(66159, {	-- A Message Most Dire
					["sourceQuests"] = {
						66244,	-- To Valdrakken
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 187678 },	-- Alexstrasza the Life-Binder
					["coord"] = { 58.5, 35.7, VALDRAKKEN },
				}),
				q(66166, {	-- Eyes and Ears
					["sourceQuests"] = { 66159 },	-- A Message Most Dire
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 59.3, 34.8, VALDRAKKEN },
					["groups"] = {
						i(195203),	-- Eavesdropper's Cap
						i(195204),	-- Eavesdropper's Coif
						i(195202),	-- Eavesdropper's Cowl
						i(195205),	-- Eavesdropper's Helm
					},
				}),
				q(66163, {	-- Nowhere to Hide
					["sourceQuests"] = { 66159 },	-- A Message Most Dire
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 59.3, 34.8, VALDRAKKEN },
					["groups"] = {
						i(198859),	-- Revealing Dragon's Eye
					},
				}),
				q(66167, {	-- Southern Exposure
					["sourceQuests"] = {
						66163,	-- Nowhere to Hide
						66166,	-- Eyes and Ears
					},
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 54.7, 47.3, VALDRAKKEN },
				}),
				q(66169, {	-- Vengeance, Served Hot
					["sourceQuests"] = { 66167 },	-- Southern Exposure
					["provider"] = { "n", 190180 },	-- Guardian Velomir
					["coord"] = { 35.8, 82.6, THALDRASZUS },
					["groups"] = {
						i(197110),	-- Highland Drake: Plated Head (MM!)
					},
				}),
				q(66246, {	-- The Fog of Battle
					["sourceQuests"] = { 66167 },	-- Southern Exposure
					["provider"] = { "n", 190180 },	-- Guardian Velomir
					["coord"] = { 35.8, 82.6, THALDRASZUS },
				}),
				q(66245, {	-- Remember the Fallen
					["sourceQuests"] = {
						66169,	-- Vengeance, Served Hot
						66246,	-- The Fog of Battle
					},
					["provider"] = { "n", 190180 },	-- Guardian Velomir
					["coord"] = { 37.6, 83.1, THALDRASZUS },
					["groups"] = {
						i(191269),	-- South Hold Garrison Signet (QI!)
					},
				}),
				q(66247, {	-- Slightly Used Weapons
					["sourceQuests"] = {
						66169,	-- Vengeance, Served Hot
						66246,	-- The Fog of Battle
					},
					["provider"] = { "n", 190458 },	-- Dead Magmasworn Rockcleaver
					["coord"] = { 37.9, 83.3, THALDRASZUS },
					["groups"] = {
						i(192759),	-- Magmasworn Spear (QI!)
						i(195219),	-- Magmasworn Spearhead
					},
				}),
				q(66248, {	-- Tying Things Together
					["sourceQuests"] = {
						66169,	-- Vengeance, Served Hot
						66246,	-- The Fog of Battle
					},
					["provider"] = { "o", 377114 },	-- Coil of Heavy Rope
					["coord"] = { 38.6, 83.4, THALDRASZUS },
					["groups"] = {
						i(192758),	-- Coil of Heavy Rope (QI!)
					},
				}),
				q(66249, {	-- Clear the Sky
					["sourceQuests"] = {
						66245,	-- Remember the Fallen
						66247,	-- Slightly Used Weapons
						66248,	-- Tying Things Together
					},
					["provider"] = { "n", 190180 },	-- Guardian Velomir
					["coord"] = { 37.6, 83.1, THALDRASZUS },
					["groups"] = {
						i(197126),	-- Highland Drake: Hooked Horns (MM!)
					},
				}),
				q(66250, {	-- Where's The Chief?
					["sourceQuests"] = { 66249 },	-- Clear the Sky
					["provider"] = { "n", 190558 },	-- Guardian Velomir
					["coord"] = { 40.6, 85.5, THALDRASZUS },
				}),
				q(66251, {	-- Fire Fighter
					["sourceQuests"] = { 66250 },	-- Where's The Chief?
					["provider"] = { "n", 190562 },	-- Guardian Velomir
					["coord"] = { 40.2, 85.1, THALDRASZUS },
					["groups"] = {
						i(195224),	-- Magmatalon Bracers
						i(195221),	-- Magmatalon Wraps
						i(195223),	-- Magmatalon Wrist Scales
						i(195222),	-- Magmatalon Wristguards
					},
				}),
				q(66252, {	-- Reporting In
					["sourceQuests"] = { 66251 },	-- Fire Fighter
					["provider"] = { "n", 190562 },	-- Guardian Velomir
					["coord"] = { 40.2, 85.1, THALDRASZUS },
				}),
				------ Chapter 2 ------
				q(66320, {	-- The Flow of Time
					["sourceQuests"] = { 66252 },	-- Reporting In
					["provider"] = { "n", 187669 },	-- Nozdormu
					["coord"] = { 60.9, 39.0, VALDRAKKEN },
				}),
				q(66080, {	-- Temporal Difficulties
					["sourceQuests"] = { 66320 },	-- The Flow of Time
					["provider"] = { "n", 187877 },	-- Andantenormu
					["coord"] = { 57.5, 78.8, THALDRASZUS },
				}),
				q(70136, {	-- Haven't Got Time For the Pain
					["sourceQuests"] = { 66080 },	-- Temporal Difficulties
					["provider"] = { "n", 187098 },	-- Slaszerathel
					["coord"] = { 55.0, 75.6, THALDRASZUS },
					["groups"] = {
						i(198408),	-- Timewalker Notes (QI!)
						i(198410),	-- Timewalker Staff (QI!)
					},
				}),
				q(66082, {	-- Time in a Bottle
					["sourceQuests"] = { 70136 },	-- Haven't Got Time For the Pain
					["provider"] = { "n", 187098 },	-- Slaszerathel
					["coord"] = { 55.0, 75.6, THALDRASZUS },
				}),
				q(66081, {	-- Time is Running Out
					["sourceQuests"] = { 70136 },	-- Haven't Got Time For the Pain
					["provider"] = { "n", 187098 },	-- Slaszerathel
					["coord"] = { 55.0, 75.6, THALDRASZUS },
					["groups"] = {
						i(195207),	-- Junior Timewarder Breeches
						i(195209),	-- Junior Timewarder Greaves
						i(195206),	-- Junior Timewarder Leggings
						i(195208),	-- Junior Timewarder Scales
						i(192602),	-- Temporal Collector (QI!)
					},
				}),
				q(66083, {	-- Feels Like the First Time
					["sourceQuests"] = {
						66082,	-- Time in a Bottle
						66081,	-- Time is Running Out
					},
					["provider"] = { "n", 187877 },	-- Andantenormu
					["coord"] = { 57.5, 78.7, THALDRASZUS },
				}),
				q(66084, {	-- Times Like These
					["sourceQuests"] = { 66083 },	-- Feels Like the First Time
					["provider"] = { "n", 187877 },	-- Andantenormu
					["coord"] = { 57.5, 78.8, THALDRASZUS },
					["groups"] = {
						i(195212),	-- Causality Band
						i(192809),	-- Temporal Residue (QI!)
					},
				}),
				q(66085, {	-- If We Could Turn Back Time
					["sourceQuests"] = { 66083 },	-- Feels Like the First Time
					["provider"] = { "n", 187098 },	-- Slaszerathel
					["coord"] = { 57.4, 78.9, THALDRASZUS },
				}),
				q(66087, {	-- Closing Time
					["sourceQuests"] = {
						66084,	-- Times Like These
						66085,	-- If We Could Turn Back Time
					},
					["provider"] = { "n", 190929 },	-- Aeonormu
					["coord"] = { 57.5, 78.9, THALDRASZUS },
					["groups"] = {
						i(194520),	-- Scroll of Timewalker Knowledge (QI!)
						i(195194),	-- Time Walkers
						i(195195),	-- Time Walkers
						i(195196),	-- Time Walkers
						i(195197),	-- Time Walkers
					},
				}),
				q(65935, {	-- Catching Up to Chromie
					["sourceQuests"] = { 66087 },	-- Closing Time
					["provider"] = { "n", 187877 },	-- Andantenormu
					["coord"] = { 57.5, 78.8, THALDRASZUS },
				}),
				q(65948, {	-- Cracks in Time
					["sourceQuests"] = { 65935 },	-- Catching Up to Chromie
					["provider"] = { "n", 186711 },	-- Chromie
					["coord"] = { 59.6, 81.7, THALDRASZUS },
					["groups"] = {
						i(197151),	-- Highland Drake: Spiked Tail (MM!)
					},
				}),
				q(66646, {	-- Quelling Causalities
					["sourceQuests"] = { 65935 },	-- Catching Up to Chromie
					["provider"] = { "n", 186433 },	-- Andantenormu
					["coord"] = { 59.6, 82.7, THALDRASZUS },
					["groups"] = {
						i(195184),	-- Bronze Tower
						i(195211),	-- Chromie's Spare Beacon
						i(195214),	-- Hoursteel Barrier
						i(195182),	-- Inexorable Separation
						i(195177),	-- Moment's Notice
						i(195181),	-- Rapid Fire
						i(195183),	-- Reach of Years
						i(195178),	-- Swirling Sand Fists
						i(195179),	-- Timeways Baton
						i(195180),	-- Time-Woven Blade
					},
				}),
				q(65947, {	-- Time-Locked Timewalkers
					["sourceQuests"] = { 65935 },	-- Catching Up to Chromie
					["provider"] = { "n", 186711 },	-- Chromie
					["coord"] = { 59.6, 81.7, THALDRASZUS },
					["groups"] = {
						i(191113),	-- Timewalker Staff (QI!)
					},
				}),
				q(65938, {	-- The Once and Future Team
					["sourceQuests"] = {
						65948,	-- Cracks in Time
						66646,	-- Quelling Causalities
						65947,	-- Time-Locked Timewalkers
					},
					["provider"] = { "n", 186711 },	-- Chromie
					["coord"] = { 59.6, 81.7, THALDRASZUS },
					["groups"] = {
						i(195201),	-- Chronomental Gauntlets
						i(195200),	-- Chronomental Gloves
						i(195199),	-- Chronomental Grips
						i(195198),	-- Chronomental Halfgloves
					},
				}),
				q(65962, {	-- The Never-Final Countdown
					["sourceQuests"] = { 65938 },	-- The Once and Future Team
					["provider"] = { "n", 186711 },	-- Chromie
					["coord"] = { 59.6, 81.7, THALDRASZUS },
				}),
				------ Chapter 3 ------
				q(70040, {	-- Tumbling Through Time
					["sourceQuests"] = { 65962 },	-- The Never-Final Countdown
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
				}),
				q(66028, {	-- To the Future!
					["sourceQuests"] = { 70040 },	-- Tumbling Through Time
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
				}),
				q(66029, {	-- Temporal Tuning
					["sourceQuests"] = { 70040 },	-- Tumbling Through Time
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
					["maps"] = { 2092 },	-- Azmerloth
					["groups"] = {
						i(192749),	-- Chrono Crystal
					},
				}),
				q(66031, {	-- Making Time
					["sourceQuests"] = { 66028 },	-- To the Future!
					["provider"] = { "n", 186953 },	-- Possible Future You
					["coord"] = { 61.4, 50.2, THE_PRIMALIST_FUTURE },
					["groups"] = {
						i(195185),	-- Annihilation Warder's Cloak
						i(192454),	-- Elemental Essence (QI!)
					},
				}),
				q(66030, {	-- Resistance Isn't Futile
					["sourceQuests"] = { 66028 },	-- To the Future!
					["provider"] = { "n", 183860 },	-- Soridormi
					["coord"] = { 61.1, 50.8, THE_PRIMALIST_FUTURE },
					["groups"] = {
						i(192467),	-- Bandages
					},
				}),
				q(66032, {	-- Return to the Present
					["sourceQuests"] = {
						66031,	-- Making Time
						66030,	-- Resistance Isn't Futile
					},
					["provider"] = { "n", 183860 },	-- Soridormi
					["coord"] = { 61.1, 50.8, THE_PRIMALIST_FUTURE },
				}),
				q(66033, {	-- To the... Past?
					["sourceQuests"] = { 66032 },	-- Return to the Present
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
					["maps"] = { 2092 },	-- Azmerloth
				}),
				q(66035, {	-- Murloc Motes
					["sourceQuests"] = { 66033 },	-- To the... Past?
					["provider"] = { "n", 187344 },	-- Andantenormu
					["coord"] = { 59.8, 66.1, 2092 },	-- Azmerloth
					["groups"] = {
						i(195210),	-- Heart of Azmerloth
					},
				}),
				q(66036, {	-- Mugurlglrlgl! [A]
					["sourceQuests"] = { 66033 },	-- To the... Past?
					["provider"] = { "n", 183854 },	-- Varian Wryngrrlgulgll
					["coord"] = { 59.9, 65.9, 2092 },	-- Azmerloth
					["races"] = ALLIANCE_ONLY,
				}),
				q(66704, {	-- Mugurlglrlgl! [H]
					["sourceQuests"] = { 66033 },	-- To the... Past?
					["provider"] = { "n", 183855 },	-- Thrallgrulgulgul
					["coord"] = { 60.0, 66.0, 2092 },	-- Azmerloth
					["races"] = HORDE_ONLY,
				}),
				q(70373, {	-- Deathwingurlugull! [A]
					["sourceQuests"] = {
						66035,	-- Murloc Motes
						66036,	-- Mugurlglrlgl! [A]
					},
					["provider"] = { "n", 183854 },	-- Varian Wryngrrlgulgll
					["coord"] = { 59.9, 66.0, 2092 },	-- Azmerloth
					["races"] = ALLIANCE_ONLY,
				}),
				q(70371, {	-- Deathwingurlugull! [H]
					["sourceQuests"] = {
						66035,	-- Murloc Motes
						66704,	-- Mugurlglrlgl! [H]
					},
					["provider"] = { "n", 183855 },	-- Thrallgrulgulgul
					["coord"] = { 60.0, 66.0, 2092 },	-- Azmerloth
					["races"] = HORDE_ONLY,
				}),
				q(66037, {	-- Back to Reality
					["sourceQuests"] = {
						70373,	-- Deathwingurlugull! [A]
						70371,	-- Deathwingurlugull! [H]
					},
					["provider"] = { "n", 187344 },	-- Andantenormu
					["coord"] = { 59.8, 66.1, 2092 },	-- Azmerloth
				}),
				q(66660, {	-- On Your Mark... Get Set...
					["sourceQuests"] = {
						66029,	-- Temporal Tuning
						66037,	-- Back to Reality
					},
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
					["maps"] = { 2090 },	-- The Gnoll War
				}),
				q(66038, {	-- Race Through Time!
					["sourceQuests"] = { 66660 },	-- On Your Mark... Get Set...
					["provider"] = { "n", 187435 },	-- Andantenormu
					["coord"] = { 43.4, 69.2, 2090 },	-- The Gnoll War
					["maps"] = { 2091, 2088, 2089 },	-- War of the Shifting Sands/Pandaren Revolution/The Black Empire
				}),
				q(66039, {	-- Chromie Time
					["sourceQuests"] = { 66038 },	-- Race Through Time!
					["provider"] = { "n", 187435 },	-- Andantenormu
					["coord"] = { 52.4, 73.8, 2089 },	-- The Black Empire
				}),
				q(66040, {	-- Back to the Future
					["sourceQuests"] = { 66039 },	-- Chromie Time
					["provider"] = { "n", 186499 },	-- Chromie
					["coord"] = { 53.4, 44.1, 2089 },	-- The Black Empire
					["groups"] = {
						i(194521),	-- Cliffside Wylderdrake (MOUNT!)
						i(195220),	-- Uncanny Pocketwatch
						ach(15796),	-- Cliffside Companion
					},
				}),
				q(66221, {	-- Moving On
					["sourceQuests"] = { 66040 },	-- Back to the Future
					["provider"] = { "n", 186931 },	-- Nozdormu
					["coord"] = { 60.1, 82.4, THALDRASZUS },
					["groups"] = {
						i(195213),	-- Life-Binder's Band
					},
				}),
				q(71232, {	-- Renown of the Dragon Isles
					["sourceQuests"] = {
						66221,	-- Moving On
						72293,	-- Adventuring in the Dragon Isles
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["qgs"] = {
						187678,	-- Alexstrasza the Life-Binder
						190902,	-- Alexstrasza the Life-Binder
					},
					["coords"] = {
						{ 72.5, 56.2, THALDRASZUS },
						{ 57.9, 35.6, VALDRAKKEN },	-- TODO: possibly only after DF?
					},
				}),
				------ Chapter 4 ------
				q(70437, {	-- To Tyrhold
					["sourceQuests"] = {
						66221,	-- Moving On
						66159,	-- A Message Most Dire
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 187678 },	-- Alexstrasza the Life-Binder
					["coord"] = { 58.4, 35.4, VALDRAKKEN },
				}),
				q(66675, {	-- Aspect Power
					["sourceQuests"] = { 70437 },	-- To Tyrhold
					["provider"] = { "n", 187658 },	-- Alexstrasza the Life-Binder
					["coord"] = { 57.4, 58.7, THALDRASZUS },
				}),
				q(67073, {	-- Red Dawn
					["sourceQuests"] = { 66675 },	-- Aspect Power
					["provider"] = { "n", 192455 },	-- Nozdormu
					["coord"] = { 57.4, 59.1, THALDRASZUS },
				}),
				q(66847, {	-- Vault of the Incarnates: Fury of the Storm-Eater
					["sourceQuests"] = { 67073 },	-- Red Dawn
					["provider"] = { "n", 190902 },	-- Alexstrasza the Life-Binder
					["coord"] = { 72.4, 56.1, THALDRASZUS },
					["maps"] = { 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2135, },	-- Vault of the Incarnates
					["groups"] = {
						i(197921),	-- Primal Infusion
					},
				}),
				------ Epilogue ------
				q(72380, {	-- Together We Are Unstoppable
					["sourceQuests"] = { 66847 },	-- Vault of the Incarnates: Fury of the Storm-Eater
					["provider"] = { "n", 193460 },	-- Kalegos
					["maps"] = { 2119, 2120, 2121, 2122, 2123, 2124, 2125, 2126, 2135, },	-- Vault of the Incarnates
				}),
				------ The End ------
			}),
			header(HEADERS.AchCriteria, 16398.01, {	-- Gelikyr Overlook
				q(71179, {	-- Look to the Overlook
					["sourceQuests"] = { 66252 },	-- Reporting In
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 56.0, 40.0, VALDRAKKEN },
					["isBreadcrumb"] = true,	-- Probably?
				}),
				q(66468, {	-- What Once Was Ours
					["sourceQuests"] = { 71179 },	-- Look to the Overlook
					["provider"] = { "n", 189174 },	-- Commander Thadezus
					["coord"] = { 52.7, 67.3, THALDRASZUS },
					["groups"] ={
						i(197097),	-- Highland Drake: Spined Back (MM!)
						i(192795),	-- Rejuvenating Draught
					},
				}),
				q(66471, {	-- Prime Planning
					["sourceQuests"] = { 66468 },	-- What Once Was Ours
					["provider"] = { "n", 189188 },	-- Sharnax
					["coord"] = { 54.4, 65.2, THALDRASZUS },
					["groups"] = {
						i(192808),	-- Primalist Orders (QI!)
					},
				}),
				q(66470, {	-- The Forward Push
					["sourceQuests"] = { 66468 },	-- What Once Was Ours
					["provider"] = { "n", 189188 },	-- Sharnax
					["coord"] = { 54.4, 65.2, THALDRASZUS },
					["groups"] = {
						i(200671),	-- Earthen Gateway Stone (QI!)
						i(200672),	-- Iceforged Gateway Stone (QI!)
						i(200670),	-- Misttouched Gateway Stone (QI!)
					},
				}),
				q(66473, {	-- The Land Awakens
					["sourceQuests"] = {
						66471,	-- Prime Planning
						66470,	-- The Forward Push
					},
					["provider"] = { "n", 189188 },	-- Sharnax
					["coord"] = { 54.8, 64.3, THALDRASZUS },
					["groups"] = {
						i(197103),	-- Highland Drake: Maned Chin (MM!)
					},
				}),
				q(66472, {	-- Primal List
					["sourceQuests"] = { 66473 },	-- The Land Awakens
					["provider"] = { "n", 189188 },	-- Sharnax
					["coord"] = { 54.8, 64.3, THALDRASZUS },
					["groups"] = {
						i(200537),	-- Bundle of Primalist Orders
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.02, {	-- Drawing Conclusions
				q(71219, {	-- The Wayward Waywatcher
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 197533 },	-- Waywatcher Lorin
					["coord"] = { 50.2, 62.4, VALDRAKKEN },
					["isBreadcrumb"] = true,
				}),
				q(66448, {	-- The Wayward Waywatcher
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 187202 },	-- Waywatcher Nori
					["coord"] = { 52.4, 68.7, THALDRASZUS },
					["isBreadcrumb"] = true,
				}),
				q(66230, {	-- A Sketchy Request
					["sourceQuests"] = {
						71219,	-- The Wayward Waywatcher
						66448,	-- The Wayward Waywatcher
					},
					["provider"] = { "n", 191753 },	-- Waywatcher Alvi
					["coord"] = { 54.7, 69.5, THALDRASZUS },
					["groups"] = {
						i(191405),	-- Alvi's "Ledger" [book]
						i(191317),	-- Crude Tarasek Key (QI!)
					},
				}),
				q(66100, {	-- Supplying in Weight
					["sourceQuests"] = {
						71219,	-- The Wayward Waywatcher
						66448,	-- The Wayward Waywatcher
					},
					["provider"] = { "n", 191753 },	-- Waywatcher Alvi
					["coord"] = { 54.7, 69.5, THALDRASZUS },
					["groups"] = {
						i(191852),	-- Waywatcher Supplies (QI!)
					},
				}),
				q(66456, {	-- A Poisonous Palette
					["sourceQuests"] = {
						66230,	-- A Sketchy Request
						66100,	-- Supplying in Weight
					},
					["provider"] = { "n", 187289 },	-- Waywatcher Alvi
					["coord"] = { 57.0, 67.7, THALDRASZUS },
				}),
				q(66457, {	-- Ending the Blue Period
					["sourceQuests"] = {
						66230,	-- A Sketchy Request
						66100,	-- Supplying in Weight
					},
					["provider"] = { "n", 187289 },	-- Waywatcher Alvi
					["coord"] = { 57.0, 67.7, THALDRASZUS },
				}),
				q(66467, {	-- Art Inmitates Life
					["sourceQuests"] = {
						66456,	-- A Poisonous Palette
						66457,	-- Ending the Blue Period
					},
					["provider"] = { "n", 187289 },	-- Waywatcher Alvi
					["coord"] = { 57.0, 67.7, THALDRASZUS },
					["groups"] = {
						i(195187),	-- Artist's Belt
						i(195186),	-- Artist's Cinch
						i(195188),	-- Artist's Sash
						i(195189),	-- Artist's Waistguard
					},
				}),
				q(66465, {	-- Cache and Release
					["sourceQuests"] = {
						66456,	-- A Poisonous Palette
						66457,	-- Ending the Blue Period
					},
					["provider"] = { "n", 187289 },	-- Waywatcher Alvi
					["coord"] = { 57.0, 67.7, THALDRASZUS },
					["groups"] = {
						i(197122),	-- Highland Drake: Heavy Horns (MM!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.03, {	-- The Screetchflight Scramble
				q(71239, {	-- Lost to the Skies
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 194578 },	-- Grimla Fizzlecrank
					["coord"] = { 25.2, 66.1, VALDRAKKEN },
					["isBreadcrumb"] = true,
				}),
				q(70781, {	-- Out of the Blue
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 196392 },	-- Lieutenant Conure
					["coord"] = { 50.5, 67.4, THALDRASZUS },
					["isBreadcrumb"] = true,
				}),
				q(66071, {	-- Flying Rocs
					["sourceQuests"] = {
						71239,	-- Lost to the Skies
						70781,	-- Out of the Blue
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(189384),	-- Ornithological Medical Kit
					},
				}),
				q(65267, {	-- Smash'Em to Feathereens
					["sourceQuests"] = { 71239 },	-- Lost to the Skies
					["provider"] = { "n", 184591 },	-- Segallia
					["coord"] = { 50.0, 69.8, THALDRASZUS },
				}),
				q(65313, {	-- A Roc-ing Appetite
					["sourceQuests"] = {
						66071,	-- Flying Rocs
						65267,	-- Smash'Em to Feathereens
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 50.0, 69.8, THALDRASZUS },
				}),
				q(65490, {	-- Explosive Excrement
					["sourceQuests"] = {
						66071,	-- Flying Rocs
						65267,	-- Smash'Em to Feathereens
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(190188),	-- The Chirpsnide Auto-Excre-Collector
					},
				}),
				q(65373, {	-- Plucking Parts
					["sourceQuests"] = {
						66071,	-- Flying Rocs
						65267,	-- Smash'Em to Feathereens
					},
					["provider"] = { "n", 184591 },	-- Segallia
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(191178),	-- Feather-Plucker 3300 Bolts (QI!)
						i(191177),	-- Feather-Plucker 3300 Exhaust Pipe (QI!)
						i(189453),	-- Feather-Plucker 3300 Gasket (QI!)
						i(191176),	-- Feather-Plucker 3300 Gears (QI!)
					},
				}),
				q(65475, {	-- Rollling in the Screech
					["sourceQuests"] = {
						66071,	-- Flying Rocs
						65267,	-- Smash'Em to Feathereens
					},
					["provider"] = { "i", 189361 },	-- Screechflight Scroll
					["coord"] = { 48.8, 75.1, THALDRASZUS },
				}),
				q(65371, {	-- A Nest of Our Own
					["sourceQuests"] = {
						65313,	-- A Roc-ing Appetite
						65490,	-- Explosive Excrement
						65373,	-- Plucking Parts
						65475,	-- Rollling in the Screech
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(189974),	-- Creekborne's Core (QI!)
						i(189979),	-- Screechflight Staff (QI!)
						i(189981),	-- Screechflight Talon (QI!)
					},
				}),
				q(65374, {	-- It's Plucking Time
					["sourceQuests"] = {
						65313,	-- A Roc-ing Appetite
						65490,	-- Explosive Excrement
						65373,	-- Plucking Parts
						65475,	-- Rollling in the Screech
					},
					["provider"] = { "n", 184591 },	-- Segallia
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(189454),	-- Feather-Plucker 3300 (QI!)
						i(189751),	-- Hatchling Feather (QI!)
					},
				}),
				q(65287, {	-- Separating the Yolk
					["sourceQuests"] = {
						65313,	-- A Roc-ing Appetite
						65490,	-- Explosive Excrement
						65373,	-- Plucking Parts
						65475,	-- Rollling in the Screech
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 50.0, 69.8, THALDRASZUS },
					["groups"] = {
						i(189899),	-- Bluefeather Egg (QI!)
					},
				}),
				q(65778, {	-- Screechflight Potluck
					["sourceQuests"] = {
						65371,	-- A Nest of Our Own
						65374,	-- It's Plucking Time
						65287,	-- Separating the Yolk
					},
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 43.5, 70.7, THALDRASZUS },
					["groups"] = {
						i(191681),	-- Im-PECK-able Screechflight Disguise
					},
				}),
				q(66299, {	-- The Awaited Egg-splosion
					["sourceQuests"] = { 65778 },	-- Screechflight Potluck
					["provider"] = { "n", 183912 },	-- Harleen Chirpsnide
					["coord"] = { 43.5, 72.1, THALDRASZUS },
					["groups"] = {
						i(197133),	-- Highland Drake: Spined Cheek (MM!)
						i(191891),	-- Professor Chirpsnide's Im-PECK-able Harpy Disguise (TOY!)
						i(191763),	-- Im-PECK-able Screechflight Disguise v2
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.04, {	-- Gardens of Unity
				q(72189, {	-- Garden Variety
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 189364 },	-- Tender Xina
					["coord"] = { 77.4, 67.3, VALDRAKKEN },
					["isBreadcrumb"] = true,	-- unconfirmed
				}),
				q(66134, {	-- Azeroth Pest Control
					["sourceQuests"] = { 72189 },	-- Garden Variety
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
				}),
				q(66135, {	-- The Gardener's Apprentice
					["sourceQuests"] = { 66134 },	-- Azeroth Pest Control
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
				}),
				q(66278, {	-- One Drakonid's Junk
					["sourceQuests"] = { 66134 },	-- Azeroth Pest Control
					["provider"] = { "o", 376451 },	-- Bronze Stopwatch
					["coord"] = { 38.9, 74.3, THALDRASZUS },
					["groups"] = {
						i(191548),	-- Bronze Pocket Watch
					},
				}),
				q(66136, {	-- Elemental Extract
					["sourceQuests"] = { 66278 },	-- One Drakonid's Junk
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
					["groups"] = {
						i(191473),	-- Watery Essence (QI!)
					},
				}),
				q(66137, {	-- Lashing Out
					["sourceQuests"] = { 66278 },	-- One Drakonid's Junk
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
				}),
				q(66279, {	-- New Kid on the Clock
					["sourceQuests"] = { 66278 },	-- One Drakonid's Junk
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
				}),
				q(66138, {	-- Like Sands Through the Hourglass
					["sourceQuests"] = { 66279 },	-- New Kid on the Clock
					["provider"] = { "n", 187310 },	-- Orizmu
					["coord"] = { 35.2, 72.6, THALDRASZUS },
				}),
				q(66139, {	-- Flame at Last
					["sourceQuests"] = {
						66136,	-- Elemental Extract
						66137,	-- Lashing Out
						66138,	-- Like Sands Through the Hourglass
					},
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
					["groups"] = {
						i(191676),	-- Concentrated Essence of Water
					},
				}),
				q(66412, {	-- Carry On, Basilton
					["sourceQuests"] = { 66139 },	-- Flame at Last
					["provider"] = { "n", 187300 },	-- Gryrmpech
					["coord"] = { 37.9, 75.4, THALDRASZUS },
					["groups"] = {
						i(194098),	-- Lord Basilton (PET!)
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.05, {	-- Tyrhold Reservoir
				q(72190, {	-- Reservoir Reservations
					["sourceQuests"] = {
						66244,	-- To Valdrakken
						DF_ACCOUNT_CAMPAIGN_QUEST,
					},
					["sourceQuestNumRequired"] = 1,
					["provider"] = { "n", 198349 },	-- Talikka
					["coord"] = { 25.5, 40.9, VALDRAKKEN },
					["isBreadcrumb"] = true,
				}),
				q(65913, {	-- Wotcher, Watcher?
					["sourceQuests"] = { 72190 },	-- Reservoir Reservations
					["provider"] = { "n", 190527 },	-- Zuttiki
					["coord"] = { 49.5, 58.9, THALDRASZUS },
				}),
				q(65918, {	-- Preventative Maintenance
					["sourceQuests"] = { 65913 },	-- Wotcher, Watcher?
					["provider"] = { "n", 190527 },	-- Zuttiki
					["coord"] = { 49.5, 58.9, THALDRASZUS },
				}),
				q(70139, {	-- Where There's a Ward, There's a Way
					["sourceQuests"] = { 65913 },	-- Wotcher, Watcher?
					["provider"] = { "n", 189045 },	-- Mara
					["coord"] = { 49.6, 58.8, THALDRASZUS },
				}),
				q(65921, {	-- Refti Retribution
					["sourceQuests"] = {
						65918,	-- Preventative Maintenance
						70139,	-- Where There's a Ward, There's a Way
					},
					["provider"] = { "n", 190527 },	-- Zuttiki
					["coord"] = { 49.5, 58.9, THALDRASZUS },
				}),
				q(65916, {	-- We Don't Negotiate with Primalists
					["sourceQuests"] = {
						65918,	-- Preventative Maintenance
						70139,	-- Where There's a Ward, There's a Way
					},
					["provider"] = { "n", 189045 },	-- Mara
					["coord"] = { 49.6, 58.8, THALDRASZUS },
					["groups"] = {
						i(193043),	-- Missing Ward Pieces (QI!)
					},
				}),
				q(65920, {	-- For the Ward!
					["sourceQuests"] = {
						65921,	-- Refti Retribution
						65916,	-- We Don't Negotiate with Primalists
					},
					["provider"] = { "n", 189045 },	-- Mara
					["coord"] = { 49.6, 58.7, THALDRASZUS },
					["groups"] = {
						i(195192),	-- Sister's Gift
						i(195193),	-- Sister's Keeper
						i(195190),	-- Sister's Token
						i(195191),	-- Sister's Embrace
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.06, {	-- Bleeding Hearts
				q(72399, {	-- The Hermit's Garden
					["provider"] = { "n", 198507 },	-- Agues
					["coord"] = { 52.6, 69.9, THALDRASZUS },
					["isBreadcrumb"] = true,
				}),
				q(69933, {	-- Curiosity's Price
					["provider"] = { "n", 193538 },	-- Szareth
					["coord"] = { 50.3, 67.7, THALDRASZUS },
				}),
				q(69932, {	-- Every Life Counts
					["sourceQuests"] = { 72399 },	-- The Hermit's Garden
					["provider"] = { "n", 193538 },	-- Szareth
					["coord"] = { 50.3, 67.7, THALDRASZUS },
				}),
				q(69934, {	-- Bleeding Hearts
					["sourceQuests"] = {
						69933,	-- Curiosity's Price
						69932,	-- Every Life Counts
					},
					["provider"] = { "n", 193538 },	-- Szareth
					["coord"] = { 50.3, 67.7, THALDRASZUS },
				}),
			}),
			header(HEADERS.AchCriteria, 16398.07, {	-- Serene Dreams Spa
				q(72067, {	-- Relaxation Time!
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 197986 },	-- Hot Springs Spa Promoter
					["coord"] = { 48.1, 59.6, VALDRAKKEN },
					["isBreadcrumb"] = true,	-- Probably?
				}),
				q(72246, {	-- Serene Dreams
					["sourceQuests"] = { 72067 },	-- Relaxation Time!
					["provider"] = { "n", 197670 },	-- Spa Concierge
					["coord"] = { 40.4, 49.5, THALDRASZUS },
				}),
				q(70738, {	-- Good Reviews
					["sourceQuests"] = { 72246 },	-- Serene Dreams
					["provider"] = { "n", 194717 },	-- Xijan Thornpaw
					["coord"] = { 40.5, 48.9, THALDRASZUS },
				}),
				q(70741, {	-- Some Favorite Things
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "o", 381297 },	-- Misplaced Luggage
					["coord"] = { 41.5, 47.5, THALDRASZUS },
				}),
				q(70740, {	-- Steam Cleaning
					["sourceQuests"] = { 72246 },	-- Serene Dreams
					["provider"] = { "n", 196160 },	-- Quilius
					["coord"] = { 40.5, 48.9, THALDRASZUS },
				}),
				q(70743, {	-- Precious Baby
					["sourceQuests"] = {
						70738,	-- Good Reviews
						70740,	-- Steam Cleaning
					},
					["provider"] = { "n", 194812 },	-- Cae'Ryn
					["coord"] = { 40.5, 49.0, THALDRASZUS },
				}),
				q(70744, {	-- Look at the Bones!
					["sourceQuests"] = { 70743 },	-- Precious Baby
					["provider"] = { "o", 381296 },	-- Horrible Mess
					["coord"] = { 38.9, 45.3, THALDRASZUS },
				}),
				q(70745, {	-- Enforced Relaxation
					["sourceQuests"] = { 70744 },	-- Look at the Bones!
					["provider"] = { "n", 196160 },	-- Quilius
					["coord"] = { 40.5, 48.9, THALDRASZUS },
					["groups"] = {
						i(256429, {	-- Valdrakken Lamppost (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
			}),
			header(HEADERS.AchCriteria, 16398.08, {	-- Misty Vale
				q(71024, {	-- Chaos and Commotion
					["sourceQuests"] = { 66252 },	-- Reporting In
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 56.0, 40.0, VALDRAKKEN },
					["groups"] = {
						i(200273),	-- Saboteur's Map (QI!)
					},
				}),
				q(70837, {	-- Follow the Clues
					["sourceQuests"] = { 71024 },	-- Chaos and Commotion
					["provider"] = { "n", 196984 },	-- Investigator Erima
					["coord"] = { 56.4, 43.8, VALDRAKKEN },
				}),
				q(70842, {	-- Detonation Locations
					["sourceQuests"] = { 70837 },	-- Follow the Clues
					["provider"] = { "n", 196416 },	-- Investigator Erima
					["coord"] = { 42.7, 81.9, THALDRASZUS },
					["groups"] = {
						i(200463),	-- Mistyvale Map: Black Market Auction House
						i(200462),	-- Mistyvale Map: Butterfly Garden
						i(200461),	-- Mistyvale Map: Training Grounds
					},
				}),
				q(70838, {	-- Rebels With a Cause
					["sourceQuests"] = { 70837 },	-- Follow the Clues
					["provider"] = { "n", 196416 },	-- Investigator Erima
					["coord"] = { 42.7, 81.9, THALDRASZUS },
				}),
				q(70843, {	-- Ruin The Runestones
					["sourceQuests"] = { 70837 },	-- Follow the Clues
					["provider"] = { "n", 196464 },	-- Unfinished Runestone
					["coord"] = { 43.6, 81.0, THALDRASZUS },
				}),
				q(70850, {	-- Maldra's in Hot Water
					["sourceQuests"] = {
						70842,	-- Detonation Locations
						70838,	-- Rebels With a Cause
						70843,	-- Ruin The Runestones
					},
					["provider"] = { "n", 196432 },	-- Investigator Erima
					["coord"] = { 42.6, 78.8, THALDRASZUS },
				}),
				q(70873, {	-- Chasing Waterfalls
					["sourceQuests"] = { 70850 },	-- Maldra's in Hot Water
					["provider"] = { "n", 196562 },	-- Maldra Flametongue
					["coord"] = { 42.7, 78.8, THALDRASZUS },
					["groups"] = {
						i(200087),	-- Fallingwater Mote (QI!)
					},
				}),
				q(70874, {	-- To Breach a Fire Wall
					["sourceQuests"] = { 70873 },	-- Chasing Waterfalls
					["provider"] = { "n", 196562 },	-- Maldra Flametongue
					["coord"] = { 42.7, 78.8, THALDRASZUS },
				}),
				q(70876, {	-- Fracture Foci
					["sourceQuests"] = { 70874 },	-- To Breach a Fire Wall
					["provider"] = { "n", 196566 },	-- Investigator Erima
					["coord"] = { 42.4, 78.9, THALDRASZUS },
				}),
				q(70878, {	-- Ring of Fire
					["sourceQuests"] = { 70874 },	-- To Breach a Fire Wall
					["provider"] = { "n", 196608 },	-- Maldra Flametongue
					["coord"] = { 42.3, 78.9, THALDRASZUS },
				}),
				q(70875, {	-- Worst of the Worst
					["sourceQuests"] = { 70874 },	-- To Breach a Fire Wall
					["provider"] = { "n", 196566 },	-- Investigator Erima
					["coord"] = { 42.4, 78.9, THALDRASZUS },
				}),
				q(70879, {	-- Report on the Rebels
					["sourceQuests"] = {
						70876,	-- Fracture Foci
						70878,	-- Ring of Fire
						70875,	-- Worst of the Worst
					},
					["provider"] = { "n", 196566 },	-- Investigator Erima
					["coord"] = { 42.4, 78.9, THALDRASZUS },
				}),
			}),
			header(HEADERS.Achievement, 17734, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_0 } }, {	-- Active Listening Skills
				q(72411, {	-- Cause Without a Rebel
					-- ["sourceQuests"] = {  },	--
					["provider"] = { "n", 189842 },	-- Captain Drine
					["coord"] = { 56.5, 40.1, VALDRAKKEN },
				}),
				q(72412, {	-- Explosive Interruption
					["sourceQuests"] = { 72411 },	-- Cause Without a Rebel
					["provider"] = { "n", 200754 },	-- Captain Drine
					["coord"] = { 55.5, 33.8, VALDRAKKEN },
				}),
				q(72413, {	-- Irreconcilable Differences
					["sourceQuests"] = { 72412 },	-- Explosive Interruption
					["provider"] = { "n", 199397 },	-- Investigator Erima
					["coord"] = { 46.4, 50.8, VALDRAKKEN },
					["groups"] = {
						i(204407),	-- Rebel Detonator (QI!)
					},
				}),
				q(72414, {	-- Know Prisoners!
					["sourceQuests"] = { 72412 },	-- Explosive Interruption
					["provider"] = { "n", 199396 },	-- Maldra Flametongue
					["coord"] = { 46.3, 50.7, VALDRAKKEN },
					["groups"] = {
						i(202855),	-- Maldra's Ring of Elemental Binding
					},
				}),
				q(72415, {	-- Rebel Rousing Writings
					["sourceQuests"] = { 72412 },	-- Explosive Interruption
					["provider"] = { "n", 199396 },	-- Maldra Flametongue
					["coord"] = { 46.3, 50.7, VALDRAKKEN },
					["groups"] = {
						i(202702),	-- The Dragonkin Voice 1: A Dragonkin's Worth
						i(202699),	-- The Dragonkin Voice 2: 100 Centuries Abandoned
						i(202700),	-- The Dragonkin Voice 3: 100 Centuries Independent
						i(202698),	-- The Dragonkin Voice 4: Might & Right
						i(202701),	-- The Dragonkin Voice 5: The Rebel Code
					},
				}),
				q(72416, {	-- Temporary Accommodations
					["sourceQuests"] = {
						72413,	-- Irreconcilable Differences
						72414,	-- Know Prisoners!
						72415,	-- Rebel Rousing Writings
					},
					["provider"] = { "n", 199396 },	-- Maldra Flametongue
					["coord"] = { 46.3, 50.7, THALDRASZUS },
				}),
				q(72417, {	-- Persistent Dissidents
					["sourceQuests"] = { 72416 },	-- Temporary Accommodations
					["provider"] = { "n", 199382 },	-- Alexstrasza the Life-Binder
					["coord"] = { 38.8, 52.5, THALDRASZUS },
				}),
				q(72418, {	-- Solicited Opinions
					["sourceQuests"] = { 72417 },	-- Persistent Dissidents
					["provider"] = { "n", 201211 },	-- Alexstrasza the Life-Binder
					["coord"] = { 38.8, 52.5, THALDRASZUS },
				}),
				q(72419, {	-- Cleaning up the Cliffraff
					["sourceQuests"] = { 72418 },	-- Solicited Opinions
					["provider"] = { "n", 200788 },	-- Captain Drime
					["coord"] = { 38.8, 52.6, THALDRASZUS },
				}),
				q(72422, {	-- Stop the Presses
					["sourceQuests"] = { 72419 },	-- Cleaning up the Cliffraff
					["provider"] = { "n", 199391 },	-- Maldra Flametongue
					["coord"] = { 46.4, 55.9, THALDRASZUS },
					["groups"] = {
						i(203390),	-- Maldra's Ring of Elemental Binding
					},
				}),
				q(72421, {	-- The Quill to Power
					["sourceQuests"] = { 72419 },	-- Cleaning up the Cliffraff
					["provider"] = { "n", 199391 },	-- Maldra Flametongue
					["coord"] = { 46.4, 55.9, THALDRASZUS },
				}),
				q(72420, {	-- Wreckonciliation
					["sourceQuests"] = { 72419 },	-- Cleaning up the Cliffraff
					["provider"] = { "n", 199301 },	-- Investigator Erima
					["coord"] = { 46.4, 55.9, THALDRASZUS },
					["groups"] = {
						i(203383),	-- Notes on Dragonkin Equality
					},
				}),
				q(75230, {	-- Reconcilable Dissidents
					["sourceQuests"] = {
						72422,	-- Stop the Presses
						72421,	-- The Quill to Power
						72420,	-- Wreckonciliation
					},
					["provider"] = { "n", 200839 },	-- Alexstrasza the Life-Binder
					["coord"] = { 76.8, 33.5, VALDRAKKEN },
					["groups"] = {
						ach(17734),	-- Active Listening Skills
						title(498),	-- <Name> the Reconciler
					},
				}),
			})),
			header(HEADERS.Quest, 70377, {	-- Derelict Fashion
				q(70377, {	-- Derelict Fashion
					["description"] = "Drops from Mudgatu.",
					["provider"] = { "i", 200586 },	-- Derelict Sunglasses
					["coord"] = { 40.6, 45.4, THALDRASZUS },
				}),
				q(72270, {	-- HQT for talking to Zeldis after 'Derelict Fashion' (70377)
					["name"] = "Talk to Zeldis",
					["sourceQuests"] = { 70377 },	-- Derelict Fashion
					["provider"] = { "n", 198062 },	-- Zeldis
					["coord"] = { 39.6, 48.4, THALDRASZUS },
				}),
				q(72351, {	-- HQT for talking to Zeldis again (70377)
					["name"] = "Talk to Zeldis again",
					["sourceQuests"] = { 72270 },	-- HQT for talking to Zeldis after 'Derelict Fashion' (70377)
					["provider"] = { "n", 198062 },	-- Zeldis
					["coord"] = { 39.3, 46.8, THALDRASZUS },
				}),
				q(72352, {	-- HQT for moving closer to Sneaky Mud Mask npc
					["name"] = "Move closer to Sneaky Mud Mask",
					["sourceQuests"] = { 72351 },	-- HQT for talking to Zeldis again (70377)
					["provider"] = { "n", 198590 },	-- Sneaky Mud Mask
					["coord"] = { 38.6, 46.4, THALDRASZUS },
				}),
				q(72060, {	-- Special Treatment
					["sourceQuests"] = { 72352 },	-- HQT for moving closer to Sneaky Mud Mask npc
					["provider"] = { "n", 198590 },	-- Sneaky Mud Mask
					["coord"] = { 38.6, 46.4, THALDRASZUS },
					["groups"] = {
						i(200872),	-- Living Mud Mask (PET!)
						i(198818),	-- Sneaky Mud Mask (QI!)
					},
				}),
			}),
			header(HEADERS.Achievement, 16323, {	-- Fragments of History
				q(70204, {	-- Golden Claw
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 198540 },	-- Golden Claw
					["coord"] = { 38.8, 45.01, THALDRASZUS },
				}),
				q(70805, {	-- Precious Stone Fragment
					["sourceQuests"] = { 70231 },	-- Dialogue with Emilia Bellocq
					["provider"] = { "i", 199893 },	-- Precious Stone Fragment
					["coord"] = { 57.1, 64.6, THALDRASZUS },
				}),
			}),
			header(HEADERS.Quest, 76423, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_7 } }, {	-- No Limits
				["icon"] = 5205847,
				["groups"] = {
					q(76423, {	-- No Limits
						["qgs"] = {
							208035,	-- Chromie
							208086,	-- Chromie
						},
						["coords"] = {
							{ 60.9, 40.0, VALDRAKKEN },
							{ 59.3, 81.5, THALDRASZUS },
						},
					}),
					q(77417, {	-- What Makes an Infinite
						["sourceQuests"] = { 76423 },	-- No Limits
						["provider"] = { "n", 207106 },	-- Nozdormu
						["coord"] = { 65.5, 80.2, THALDRASZUS },
					}),
					q(76407, {	-- Not Today, Fate
						["sourceQuests"] = { 77417 },	-- What Makes an Infinite
						["provider"] = { "n", 207106 },	-- Nozdormu
						["coord"] = { 65.5, 80.2, THALDRASZUS },
					}),
					q(76419, {	-- Violence Will Solve It
						["sourceQuests"] = { 76407 },	-- Not Today, Fate
						["provider"] = { "n", 207634 },	-- Eternus
						["coord"] = { 37.5, 83.6, TANARIS },
					}),
					q(76420, {	-- Butterfly Effects
						["sourceQuests"] = { 76419 },	-- Violence Will Solve It
						["provider"] = { "n", 207634 },	-- Eternus
						["coord"] = { 37.9, 83.2, TANARIS },
						["groups"] = {
							i(208099),	-- Quickened Sand (QI!)
						},
					}),
					q(76421, {	-- The Fate We Make
						["sourceQuests"] = { 76420 },	-- Butterfly Effects
						["provider"] = { "n", 207634 },	-- Eternus
						["coord"] = { 37.4, 83.6, TANARIS },
					}),
					q(76422, {	-- Infinity and Beyond
						["sourceQuests"] = { 76421 },	-- The Fate We Make
						["provider"] = { "n", 206971 },	-- Nozdormu
						["coord"] = { 37.7, 83.2, TANARIS },
						["groups"] = {
							iensemble(210024, {	-- Ensemble: Temporal Burdens
								["extraTransmogSetSpells"] = {
									424247,	-- Ensemble: Temporal Burdens
								},
							}),
						},
					}),
				},
			})),
			------ Miscellaneous ------
			q(67093, {	-- An Anomalous Shrine
				["sourceQuests"] = { 65962 },	-- The Never-Final Countdown
				["provider"] = { "n", 192543 },	-- Archivist Arenial
				["coord"] = { 60.3, 81.9, THALDRASZUS },
				["groups"] = {
					i(194687),	-- Echo of Duty (QI!)
					i(195218),	-- Highfather's Burden
					i(195215),	-- Highfather's Cover
					i(195216),	-- Highfather's Guard
					i(195217),	-- Highfather's Legacy
				},
			}),
			q(67154, {	-- Entropic Remnants
				["sourceQuests"] = { 65962 },	-- The Never-Final Countdown
				["provider"] = { "n", 192543 },	-- Archivist Arenial
				["coord"] = { 60.3, 81.9, THALDRASZUS },
				["groups"] = {
					i(199064),	-- Vitrified Sand (QI!)
				},
			}),
			q(66929, {	-- Gotta Collect Them All
				["provider"] = { "n", 191414 },	-- Yumadormu
				["coord"] = { 59.7, 43.6, THALDRASZUS },
				["groups"] = {
					i(194033),	-- Waterlogged Card (QI!)
				},
			}),
			q(67167, {	-- It's Time To Duel!
				["sourceQuests"] = { 66929 },	-- Gotta Collect Them All
				["provider"] = { "n", 191414 },	-- Yumadormu
				["coord"] = { 60.7, 43.3, THALDRASZUS },
			}),
			q(72519, {	-- Temporal Two-ning
				["sourceQuests"] = { 66032 },	-- Return to the Present
				["provider"] = { "n", 186931 },	-- Nozdormu
				["coord"] = { 60, 82.4, THALDRASZUS },
			}),
			q(67178, {	-- White Eyes, Blue Dragon
				["sourceQuests"] = { 67167 },	-- It's Time To Duel!
				["provider"] = { "n", 192733 },	-- Professor Dromokdormi
				["coord"] = { 58.1, 40.4, THALDRASZUS },
			}),
			n(BONUS_OBJECTIVES, {
				q(72114, {	-- Acrosoth
					["provider"] = { "n", 193243 },	-- Acrosoth
					["coord"] = { 39.0, 78.0, THALDRASZUS },
				}),
				q(69873, {	-- Henlare
					["provider"] = { "n", 193229 },	-- Henlare
					["coord"] = { 55.6, 77.4, THALDRASZUS },
				}),
				q(72116, {	-- Liskron the Dazzling
					["provider"] = { "n", 193273 },	-- Liskron the Dazzling
					["coord"] = { 36.4, 72.8, THALDRASZUS },
				}),
				q(69967, {	-- Lookout Mordren
					["provider"] = { "n", 193668 },	-- Lookout Mordren
					["coord"] = { 36.8, 85.6, THALDRASZUS },
				}),
				q(69976, {	-- Phenran
					["provider"] = { "n", 193688 },	-- Phenran
					["coord"] = { 59.8, 61.0, THALDRASZUS },
					["isDaily"] = true,
				}),
				q(70986, {	-- Private Shikzar
					["provider"] = { "n", 193127 },	-- Private Shikzar
					["coord"] = { 37.6, 84.7, THALDRASZUS },
				}),
				qNYI(72806, {	-- Pleasant Alpha
					["provider"] = { "n", 193130 },	-- Pleasant Alpha
					["coord"] = { 37.8, 79.2, THALDRASZUS },
				}),
				q(72121, {	-- The Great Shellkhan
					["provider"] = { "n", 191305 },	-- The Great Shellkhan
					["coord"] = { 38.4, 68.2, THALDRASZUS },
				}),
				-- NO BONUS OBJECTIVE?
				-- Enraged Sprout
				-- Goremaul the Gluttonous
				-- Innumerable Ruination
				-- Razk'vex the Untamed
				-- The Weeping Vilomah
			}),
		}),
	}),
})));
root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.DF, bubbleDownSelf({ ["timeline"] = { ADDED_10_0_2_LAUNCH } }, {
	m(DRAGON_ISLES, {
		m(THALDRASZUS, {
			n(QUESTS, {
				q(67030),	-- Unlocks access to Adventure Mode within the Dragon Isles (spellID 393788 & 377069)
				q(72366, {["name"] = "Dragonflight Campaign Completed [Account]"}),	-- triggered after completing 'Moving On' (questID 66221)
				q(72369, {["repeatable"] = true}),	-- flags complete while 'Aiding the Accord' is active/completed
				q(72084),	-- Triggers during 'The Fog of Battle' (questID 66246) (spellID 392476)
				q(72110),	-- when delivering Gleamfish to spawn 'The Great Shellkhan' (spellID 392694)
				q(72125),	-- Triggers during 'Tying Things Together' (questID 66248) (spellID 392925)
				-- During Solicited Opinions (72418)
				q(75199, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 3 answer 3
				q(75198, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 3 answer 2
				q(75197, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 3 answer 1
				q(75196, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 2 answer 3
				q(75195, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 2 answer 2
				q(75194, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 2 answer 1
				q(75193, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 1 answer 3
				q(75192, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 1 answer 2
				q(75191, {["timeline"] = {ADDED_10_1_0}}),	-- Solicited Opinions question 1 answer 1
				------ Stay awhile and listen ------
				hqt(73960),	-- Stay awhile and listen (spellID 406027)
				-- 10.1.7
				-- Nozdormu & Eternus
				q(77422, {["timeline"] = {ADDED_10_1_7}}),	-- qID 76407 - Timeport to Tanaris (spellID 414260)
				q(77612, {["timeline"] = {ADDED_10_1_7}}),	-- Dialog option 1 during qID 76421 - (spellID 419463 - Option 1 [DNT])
				q(77613, {["timeline"] = {ADDED_10_1_7}}),	-- Dialog option 2 during qID 76421 - <Well, your way hasn't worked so far...> - (spellID 419464 - Option 2 [DNT])
				q(77614, {["timeline"] = {ADDED_10_1_7}}),	-- Dialog option 3 during qID 76421 - (spellID 419466 - Option 3 [DNT])
				-- q(78173, {["timeline"] = {ADDED_10_1_7}}),	-- Ensemble: Temporal Burdens (itemID 210024) (spellID 424097) (automated)
				-- q(78191, {["timeline"] = {ADDED_10_1_7}}),	-- Ensemble: Temporal Burdens (itemID 210024) (spellID 424247) (automated)
			}),
		}),
	}),
})));
