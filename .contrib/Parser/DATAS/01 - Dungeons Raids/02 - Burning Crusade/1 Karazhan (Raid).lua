-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local REMOVED_WITH_RETURN_TO_KARAZHAN = { REMOVED_7_1_0 };
root(ROOTS.Instances, expansion(EXPANSION.TBC, applyclassicphase(TBC_PHASE_ONE, {
	inst(745, bubbleDownSelf({ ["timeline"] = { ADDED_2_0_1 } }, {	-- Karazhan (Raid)
		["lore"] = "Karazhan is an abandoned citadel located on a nexus of ley lines in southern Deadwind Pass. The tower is best known for its last known occupant - Medivh, the last Guardian of Tirisfal. After Medivh was killed by Khadgar, Anduin Lothar, and Garona, the tower sealed itself off from the rest of the world. But recently, Karazhan has reawakened - an evil presence has taken the tower as its own, its halls crawling with spirits and demons, and Medivh's presence is still alive and well, even decades after his death.",
		["description"] = "The best route for a fuil clear:\n1. Turn right immediately after going through the Gatehouse Door and enter the Servant's Quarters.\n2. From the western bat room goes a passage up to the Guest Chambers. Ignore the passage to the right until this section is cleared.\n3. Ignore the Opera Hall, go downstairs through the ballroom to Moroes and further through the kitchen and stables for Attumen the Huntsman. Here you will also find the practical vendor Koren (requires Honored with The Violet Eye).\n4. Back to the Gatehouse and upstairs to the Opera Hall, from here is the raid linear to last boss.",
		-- #if BEFORE LEGION
		["zone-text-areaID"] = 2562,	-- Karazhan
		-- #endif
		["coord"] = { 46.87, 74.69, DEADWIND_PASS },	-- Karazhan, Deadwind Pass
		["maps"] = {
			KARAZHAN,	-- Servant's Quarters
			351,	-- Upper Livery Stables
			352,	-- The Banquet Hall
			353,	-- The Guest Chambers
			354,	-- Opera Hall Balcony
			355,	-- Master's Terrace
			356,	-- Lower Broken Stair
			357,	-- Upper Broken Stair
			358,	-- The Menagerie
			359,	-- Guardian's Library
			360,	-- The Repository
			361,	-- Upper Library
			362,	-- The Celestial Watch
			363,	-- Gamesman's Hall
			364,	-- Medivh's Chambers
			365,	-- The Power Station
			366,	-- Netherspace
		},
		["sharedLockout"] = 1,
		["isRaid"] = true,
		-- #if BEFORE 4.2.0
		["cost"] = {
			{ "i", 24490, 1 },	-- The Master's Key
		},
		-- #endif
		["lvl"] = lvlsquish(70, 68, 30),	-- The attunement quests were originally level 70 required, but once removed, level 68s could zone in. TODO: Check this.
		["groups"] = {
			n(ACHIEVEMENTS, {
				achWithRep(960, FACTION_THE_VIOLET_EYE),	-- The Violet Eye
			}),
			n(FACTIONS, {
				faction(FACTION_THE_VIOLET_EYE),	-- The Violet Eye
			}),
			n(QUESTS, bubbleDown({ ["timeline"] = REMOVED_WITH_RETURN_TO_KARAZHAN }, {
				["g"] = bubbleDownClassicRep(FACTION_THE_VIOLET_EYE, {
					{		-- Neutral
						q(9844, {	-- A Demonic Presence
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 9843,	-- Keanna's Log
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- Demonic Presence Destroyed
									["provider"] = { "n", 15690 },	-- Prince Malchezaar
								}),
							},
						}),
						q(9824, {	-- Arcane Disturbances
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 11216,	-- Archmage Alturus
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 68,
							["groups"] = {
								objective(1, {	-- Underground Well Reading
									["provider"] = { "i", 24474 },	-- Violet Scrying Crystal
									["coord"] = { 53.4, 89.4, DEADWIND_PASS },
								}),
								objective(2, {	-- Underground Pond Reading
									["provider"] = { "i", 24474 },	-- Violet Scrying Crystal
									["coord"] = { 43, 13, DEADWIND_PASS },
								}),
							},
						}),
						q(11216, {	-- Archmage Alturus
							["qg"] = 23948,	-- Apprentice Tasserel
							["coord"] = { 75.0, 33.2, SHATTRATH_CITY },
							["maps"] = { DEADWIND_PASS },
							["isBreadcrumb"] = true,
							["lvl"] = 68,
						}),
						q(9840, {	-- Assessing the Situation
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 9838,	-- The Violet Eye
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 69,
						}),
						q(9826, {	-- Contact from Dalaran
							["providers"] = {
								{ "n", 17613 },	-- Archmage Alturus
								{ "i", 24482 },	-- Alturus's Report
							},
							["sourceQuests"] = {
								9824,	-- Arcane Disturbances
								9825,	-- Restless Activity
							},
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 68,
						}),
						q(9831, {	-- Entry Into Karazhan
							["qg"] = 18166,	-- Khadgar <Sons of Lothar>
							["sourceQuest"] = 9829,	-- Khadgar
							["coord"] = { 54.8, 44.3, SHATTRATH_CITY },
							["maps"] = { AUCHINDOUN_SHADOW_LABYRINTH },
							["lvl"] = 68,
							["groups"] = {
								objective(1, {	-- 0/1 First Key Fragment
									["provider"] = { "i", 24514 },	-- First Key Fragment
								}),
							},
						}),
						q(9843, {	-- Keanna's Log
							["qg"] = 16388,	-- Koren <The Blacksmith>
							["sourceQuest"] = 9840,	-- Assessing the Situation
							["timeline"] = { REMOVED_7_1_0 },
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Keanna's Log
									["providers"] = {
										{ "i",  24492 },	-- Keanna's Log
										{ "o", 182199 },	-- Keanna's Log
									},
									["description"] = "In the second room on a table in the hall leading to Maiden.",
								}),
							},
						}),
						q(9829, {	-- Khadgar
							["qg"] = 18165,	-- Archmage Cedric
							["sourceQuest"] = 9826,	-- Contact from Dalaran
							["coords"] = { 
								-- #if AFTER CATA
								{ 30.8, 30.8, ALTERAC_MOUNTAINS },
								-- #else
								{ 15.6, 54.6, ALTERAC_MOUNTAINS },
								-- #endif
							},
							["lvl"] = 68,
						}),
						q(9825, {	-- Restless Activity
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 11216,	-- Archmage Alturus
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 68,
							["groups"] = {
								objective(1, {	-- 0/10 Ghostly Essence
									["provider"] = { "i", 24480 },	-- Ghostly Essence
									["crs"] = {
										12378,	-- Damned Soul
										7370,	-- Restless Shade
										12379,	-- Unliving Caretaker
										-- 12380,	-- Unliving Resident -- NOTE: This was removed as a drop source sometime during TBC.
										12377,	-- Wailing Spectre
									},
								}),
							},
						}),
						q(9860, {	-- The New Directive
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 9844,	-- A Demonic Presence
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["maps"] = {
								-- #if AFTER CATA
								HILLSBRAD_FOOTHILLS,
								-- #else
								ALTERAC_MOUNTAINS,
								-- #endif
							},
							["lvl"] = 70,
							["groups"] = {
								i(31113),	-- Violet Badge
							},
						}),
						q(9832, {	-- The Second and Third Fragments
							["qg"] = 18166,	-- Khadgar <Sons of Lothar>
							["sourceQuest"] = 9831,	-- Entry Into Karazhan
							["coord"] = { 54.8, 44.3, SHATTRATH_CITY },
							["maps"] = { COILFANG_RESERVOIR_STEAMVAULT, TEMPEST_KEEP_ARCATRAZ },
							["lvl"] = 68,
							["groups"] = {
								objective(1, {	-- 0/1 Second Key Fragment
									["provider"] = { "i", 24487 },	-- Second Key Fragment
								}),
								objective(2, {	-- 0/1 Third Key Fragment
									["provider"] = { "i", 24488 },	-- Third Key Fragment
								}),
							},
						}),
						q(9838, {	-- The Violet Eye
							["qg"] = 18166,	-- Khadgar <Sons of Lothar>
							["sourceQuest"] = 9837,	-- Return to Khadgar
							["coord"] = { 54.8, 44.3, SHATTRATH_CITY },
							["maps"] = { DEADWIND_PASS },
							["lvl"] = 69,
						}),
					}, {	-- Friendly
						q(10731, {	-- Path of the Violet Assassin
							["qg"] = 18253,	-- Archmage Leryda
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								--10731,	-- Path of the Violet Assassin [Assassin]
								10729,	-- Path of the Violet Mage [Mage]
								10732,	-- Path of the Violet Protector [Protector]
								10730,	-- Path of the Violet Restorer [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								i(29280),	-- Violet Signet
							},
						}),
						q(10729, {	-- Path of the Violet Mage
							["qg"] = 18253,	-- Archmage Leryda
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10731,	-- Path of the Violet Assassin [Assassin]
								--10729,	-- Path of the Violet Mage [Mage]
								10732,	-- Path of the Violet Protector [Protector]
								10730,	-- Path of the Violet Restorer [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								i(29284),	-- Violet Signet
							},
						}),
						q(10732, {	-- Path of the Violet Protector
							["qg"] = 18253,	-- Archmage Leryda
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10731,	-- Path of the Violet Assassin [Assassin]
								10729,	-- Path of the Violet Mage [Mage]
								--10732,	-- Path of the Violet Protector [Protector]
								10730,	-- Path of the Violet Restorer [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								i(29276),	-- Violet Signet
							},
						}),
						q(10730, {	-- Path of the Violet Restorer
							["qg"] = 18253,	-- Archmage Leryda
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10731,	-- Path of the Violet Assassin [Assassin]
								10729,	-- Path of the Violet Mage [Mage]
								10732,	-- Path of the Violet Protector [Protector]
								--10730,	-- Path of the Violet Restorer [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								i(29288),	-- Violet Signet
							},
						}),
					}, {	-- Honored
						q(9631, {	-- A Colleague's Aid
							["providers"] = {
								{ "n", 17613 },	-- Archmage Alturus
								{ "i", 24152 },	-- Charred Bone Fragment
							},
							["sourceQuest"] = 9680,	-- Digging Up the Past
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["maps"] = { NETHERSTORM },
							["lvl"] = 70,
						}),
						q(9680, {	-- Digging Up the Past
							["qg"] = 17613,	-- Archmage Alturus
							["sourceQuest"] = 9645,	-- The Master's Terrace
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Charred Bone Fragment
									["providers"] = {
										{ "i",  24152 },	-- Charred Bone Fragment
										{ "o", 181963 },	-- Charred Bone Fragment
									},
									["coord"] = { 45.0, 79.0, DEADWIND_PASS },
								}),
							},
						}),
						q(10735, {	-- Down the Violet Path [Assassin]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10731,	-- Path of the Violet Assassin
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								--10735,	-- Down the Violet Path [Assassin]
								10733,	-- Down the Violet Path [Mage]
								10736,	-- Down the Violet Path [Protector]
								10734,	-- Down the Violet Path [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29280 },	-- Violet Signet
								}),
								i(29281),	-- Violet Signet
							},
						}),
						q(10733, {	-- Down the Violet Path [Mage]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10729,	-- Path of the Violet Mage
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10735,	-- Down the Violet Path [Assassin]
								--10733,	-- Down the Violet Path [Mage]
								10736,	-- Down the Violet Path [Protector]
								10734,	-- Down the Violet Path [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29284 },	-- Violet Signet
								}),
								i(29285),	-- Violet Signet
							},
						}),
						q(10736, {	-- Down the Violet Path [Protector]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10732,	-- Path of the Violet Protector
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10735,	-- Down the Violet Path [Assassin]
								10733,	-- Down the Violet Path [Mage]
								--10736,	-- Down the Violet Path [Protector]
								10734,	-- Down the Violet Path [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29276 },	-- Violet Signet
								}),
								i(29277),	-- Violet Signet
							},
						}),
						q(10734, {	-- Down the Violet Path [Restorer]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10730,	-- Path of the Violet Restorer
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10735,	-- Down the Violet Path [Assassin]
								10733,	-- Down the Violet Path [Mage]
								10736,	-- Down the Violet Path [Protector]
								--10734,	-- Down the Violet Path [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29288 },	-- Violet Signet
								}),
								i(29289),	-- Violet Signet
							},
						}),
						q(9638, {	-- In Good Hands
							["qg"] = 16813,	-- Wravien <The Mage>
							["sourceQuest"] = 9630,	-- Medivh's Journal
							["lvl"] = 70,
						}),
						q(9637, {	-- Kalynna's Request
							["qg"] = 17636,	-- Kalynna Lathred
							["sourceQuest"] = 9631,	-- A Colleague's Aid
							["coord"] = { 32.2, 63.6, NETHERSTORM },
							["maps"] = { AUCHINDOUN_SETHEKK_HALLS, HELLFIRE_CITADEL_SHATTERED_HALLS },
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Book of Forgotten Names
									["provider"] = { "i", 25461 },	-- Book of Forgotten Names
								}),
								objective(2, {	-- 0/1 Tome of Dusk
									["provider"] = { "i", 25462 },	-- Tome of Dusk
								}),
							},
						}),
						q(9639, {	-- Kamsis
							["qg"] = 16814,	-- Gradav <The Warlock>
							["sourceQuest"] = 9638,	-- In Good Hands
							["lvl"] = 70,
						}),
						q(9630, {	-- Medivh's Journal
							["qg"] = 17613,	-- Archmage Alturus
							["coord"] = { 47.3, 75.2, DEADWIND_PASS },
							["lvl"] = 70,
						}),
						q(9644, {	-- Nightbane
							["qg"] = 17636,	-- Kalynna Lathred
							["sourceQuest"] = 9637,	-- Kalynna's Request
							["coord"] = { 32.2, 63.6, NETHERSTORM },
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Faint Arcane Essence
									["provider"] = { "i", 24139 },	-- Faint Arcane Essence
								}),
								i(31116),	-- Infused Amethyst
								i(31118),	-- Pulsing Amethyst
								i(31117),	-- Soothing Amethyst
							},
						}),
						q(9645, {	-- The Master's Terrace
							["qg"] = 16815,	-- Kamsis <The Conjurer>
							["sourceQuest"] = 9640,	-- The Shade of Aran
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- Journal Entry Read
									["provider"] = { "i", 23934 },	-- Medivh's Journal
								}),
							},
						}),
						q(9640, {	-- The Shade of Aran
							["qg"] = 16815,	-- Kamsis <The Conjurer>
							["sourceQuest"] = 9639,	-- Kamsis
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Medivh's Journal
									["provider"] = { "i", 23933 },	-- Medivh's Journal
								}),
							},
						}),
					}, {	-- Revered
						q(10740, {	-- Distinguished Service [Assassin]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10735,	-- Down the Violet Path [Assassin]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								--10740,	-- Distinguished Service [Assassin]
								10738,	-- Distinguished Service [Mage]
								10741,	-- Distinguished Service [Protector]
								10739,	-- Distinguished Service [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29281 },	-- Violet Signet
								}),
								i(29282),	-- Violet Signet
							},
						}),
						q(10738, {	-- Distinguished Service [Mage]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10733,	-- Down the Violet Path [Mage]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10740,	-- Distinguished Service [Assassin]
								--10738,	-- Distinguished Service [Mage]
								10741,	-- Distinguished Service [Protector]
								10739,	-- Distinguished Service [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29285 },	-- Violet Signet
								}),
								i(29286),	-- Violet Signet
							},
						}),
						q(10741, {	-- Distinguished Service [Protector]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10736,	-- Down the Violet Path [Protector]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10740,	-- Distinguished Service [Assassin]
								10738,	-- Distinguished Service [Mage]
								--10741,	-- Distinguished Service [Protector]
								10739,	-- Distinguished Service [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29277 },	-- Violet Signet
								}),
								i(29278),	-- Violet Signet
							},
						}),
						q(10739, {	-- Distinguished Service [Restorer]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10734,	-- Down the Violet Path [Restorer]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10740,	-- Distinguished Service [Assassin]
								10738,	-- Distinguished Service [Mage]
								10741,	-- Distinguished Service [Protector]
								--10739,	-- Distinguished Service [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29289 },	-- Violet Signet
								}),
								i(29291),	-- Violet Signet
							},
						}),
					}, {	-- Exalted
						q(11031, {	-- Archmage No More
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10725,	-- Eminence Among the Violet Eye [Mage]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["repeatable"] = true,
							["cost"] = {
								{ "i", 29287, 1 },	-- Violet Signet of the Archmage
							},
							["lvl"] = 70,
							["groups"] = {
								--i(29287),	-- Violet Signet of the Archmage
								i(29279),	-- Violet Signet of the Great Protector
								i(29290),	-- Violet Signet of the Grand Restorer
								i(29283),	-- Violet Signet of the Master Assassin
							},
						}),
						q(11033, {	-- Assassin No More
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10727,	-- Eminence Among the Violet Eye [Assassin]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["repeatable"] = true,
							["cost"] = {
								{ "i", 29283, 1 },	-- Violet Signet of the Master Assassin
							},
							["lvl"] = 70,
							["groups"] = {
								i(29287),	-- Violet Signet of the Archmage
								i(29279),	-- Violet Signet of the Great Protector
								i(29290),	-- Violet Signet of the Grand Restorer
							},
						}),
						q(10727, {	-- Eminence Among the Violet Eye [Assassin]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10740,	-- Distinguished Service [Assassin]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								--10727,	-- Eminence Among the Violet Eye [Assassin]
								10725,	-- Eminence Among the Violet Eye [Mage]
								10728,	-- Eminence Among the Violet Eye [Protector]
								10726,	-- Eminence Among the Violet Eye [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29282 },	-- Violet Signet
								}),
								i(29283),	-- Violet Signet of the Master Assassin
							},
						}),
						q(10725, {	-- Eminence Among the Violet Eye [Mage]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10738,	-- Distinguished Service [Mage]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10727,	-- Eminence Among the Violet Eye [Assassin]
								--10725,	-- Eminence Among the Violet Eye [Mage]
								10728,	-- Eminence Among the Violet Eye [Protector]
								10726,	-- Eminence Among the Violet Eye [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29286 },	-- Violet Signet
								}),
								i(29287),	-- Violet Signet of the Archmage
							},
						}),
						q(10728, {	-- Eminence Among the Violet Eye [Protector]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10741,	-- Distinguished Service [Protector]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10727,	-- Eminence Among the Violet Eye [Assassin]
								10725,	-- Eminence Among the Violet Eye [Mage]
								--10728,	-- Eminence Among the Violet Eye [Protector]
								10726,	-- Eminence Among the Violet Eye [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29278 },	-- Violet Signet
								}),
								i(29279),	-- Violet Signet of the Great Protector
							},
						}),
						q(10726, {	-- Eminence Among the Violet Eye [Restorer]
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10739,	-- Distinguished Service [Restorer]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["altQuests"] = {
								10727,	-- Eminence Among the Violet Eye [Assassin]
								10725,	-- Eminence Among the Violet Eye [Mage]
								10728,	-- Eminence Among the Violet Eye [Protector]
								--10726,	-- Eminence Among the Violet Eye [Restorer]
							},
							["lvl"] = 70,
							["groups"] = {
								objective(1, {	-- 0/1 Violet Signet
									["provider"] = { "i", 29291 },	-- Violet Signet
								}),
								i(29290),	-- Violet Signet of the Grand Restorer
							},
						}),
						q(11032, {	-- Protector No More
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10728,	-- Eminence Among the Violet Eye [Protector]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["repeatable"] = true,
							["cost"] = {
								{ "i", 29279, 1 },	-- Violet Signet of the Great Protector
							},
							["lvl"] = 70,
							["groups"] = {
								i(29287),	-- Violet Signet of the Archmage
								--i(29279),	-- Violet Signet of the Great Protector
								i(29290),	-- Violet Signet of the Grand Restorer
								i(29283),	-- Violet Signet of the Master Assassin
							},
						}),
						q(11034, {	-- Restorer No More
							["qg"] = 18253,	-- Archmage Leryda
							["sourceQuest"] = 10726,	-- Eminence Among the Violet Eye [Restorer]
							["coord"] = { 47.2, 75.0, DEADWIND_PASS },
							["repeatable"] = true,
							["cost"] = {
								{ "i", 29290, 1 },	-- Violet Signet of the Grand Restorer
							},
							["lvl"] = 70,
							["groups"] = {
								i(29287),	-- Violet Signet of the Archmage
								i(29279),	-- Violet Signet of the Great Protector
								--i(29290),	-- Violet Signet of the Grand Restorer
								i(29283),	-- Violet Signet of the Master Assassin
							},
						}),
					},
				}),
			})),
			n(REAGENTS, {
				i(21882, {	-- Soul Essence
					["description"] = "Drops from Undead creatures in Karazhan."
				}),
			}),
			n(VENDORS, {
				n(16388, {	-- Koren
					["description"] = "This vendor is located in the Livery Stables, but will only serve characters that are at least Honoured with The Violet Eye.",
					["minReputation"] = { FACTION_THE_VIOLET_EYE, HONORED },	-- The Violet Eye, Honored
					["groups"] = {
						i(31395),	-- Plans: Iceguard Helm (RECIPE!)
						i(31393),	-- Plans: Iceguard Breastplate (RECIPE!)
						i(31394),	-- Plans: Iceguard Leggings (RECIPE!)
					},
				}),
				n(17518, {	-- Ythyar
					["description"] = "This vendor is located in the Guardian's Library.",
					["groups"] = {
						i(25903),	-- Design: Bracing Earthstorm Diamond
						i(25902),	-- Design: Powerful Earthstorm Diamond
						i(22535, {	-- Formula: Enchant Ring - Striking (RECIPE!)
							-- #if AFTER 6.0.2
							["description"] = "This grey item is now needed for the second half of the secret involving the battle pet Baa'l.",
							["f"] = MISC,
							["_drop"] = { "requireSkill" },
							-- #endif
						}),
						-- #if AFTER 6.0.2
						r(27920,{["timeline"] = {ADDED_2_0_1,REMOVED_6_0_2}}),	-- Striking
						-- #endif
					},
				}),
			}),
			n(ZONE_DROPS, {
				i(22545, {	-- Formula: Enchant Boots - Surefooted (RECIPE!)
					["cr"] = 16472,	-- Phantom Stagehand
				}),
				i(21903, {	-- Pattern: Soulcloth Shoulders (RECIPE!)
					["cr"] = 16406,	-- Phantom Attendant
				}),
				i(21904, {	-- Pattern: Soulcloth Vest (RECIPE!)
					["cr"] = 16408,	-- Phantom Valet
				}),
				i(30642),	-- Drape of the Righteous
				i(30668),	-- Grasp of the Dead
				i(30644),	-- Grips of Deftness
				i(30643),	-- Belt of the Tracker
				i(30673),	-- Inferno Waist Cord
				i(30641),	-- Boots of Elusion
				i(30666),	-- Ritssyn's Lost Pendant
				i(30674),	-- Zierhut's Lost Treads
				i(30667),	-- Ring of Unrelenting Storms
			}),
			e(1552, {	-- Servant's Quarters
				["description"] = "One of the following rares will spawn after clearing 90% of the mobs in the Servant's Quarters. An emote will appear in the General Chat when one of the spawns. This is not a boss encounter, thus you can leave the raid, reset the instance and repeat the process as many times as you want as long as no bosses are killed.",
				-- #if BEFORE MOP
				["npcID"] = RARES,
				-- #endif
				["groups"] = {
					prof(SKINNING, {
						i(25707),	-- Fel Hide
					}),
					n(16181, {	-- Rokad the Ravager
						["description"] = "Spawns innermost in the big hounds room.",
						["groups"] = {
							i(30686),	-- Ravager's Bands
							i(30687),	-- Ravager's Bracers
							i(30684),	-- Ravager's Cuffs
							i(30685),	-- Ravager's Wrist-Wraps
						},
					}),
					n(16179, {	-- Hyakiss the Lurker
						["description"] = "Spawns in the northwestern corner of the big spider room. This rare is in stealth thus can be hard to find.",
						["groups"] = {
							i(30677),	-- Lurker's Belt
							i(30675),	-- Lurker's Cord
							i(30678),	-- Lurker's Girdle
							i(30676),	-- Lurker's Grasp
						},
					}),
					n(16180, {	-- Shadikith the Glider
						["description"] = "Spawns in the eastern bat room.",
						["groups"] = {
							i(30681),	-- Glider's Boots
							i(30680),	-- Glider's Foot-Wraps
							i(30683),	-- Glider's Greaves
							i(30682),	-- Glider's Sabatons
						},
					}),
				},
			}),
			e(1553, {	-- Attumen The Huntsman
				["crs"] = {
					16151,	-- Midnight
					16152,	-- Attumen the Huntsman
				},
				["groups"] = {
					i(23809),	-- Schematic: Stabilized Eternium Scope (RECIPE!)
					ach(882, {	-- Fiery Warhorse's Reins
						["provider"] = { "i", 30480 },	-- Fiery Warhorse's Reins
						["filterID"] = MOUNTS,
					}),
					i(30480),	-- Fiery Warhorse (MOUNT!)
					i(28504),	-- Steelhawk Crossbow
					i(28509),	-- Worgen Claw Necklace
					i(28453),	-- Bracers of the White Stag
					i(28477),	-- Harbinger Bands
					i(28454),	-- Stalker's War Bands
					i(28502),	-- Vambraces of Courage
					i(28503),	-- Whirlwind Bracers
					i(28505),	-- Gauntlets of Renewed Hope
					i(28506),	-- Gloves of Dexterous Manipulation
					i(28508),	-- Gloves of Saintly Blessings
					i(28507),	-- Handwraps of Flowing Thought
					i(28510),	-- Spectral Band of Innervation
				},
			}),
			e(1554, {	-- Moroes
				["creatureID"] = 15687,
				["groups"] = {
					i(22559),	-- Formula: Enchant Weapon - Mongoose (RECIPE!)
					i(138797, {	-- Illusion: Mongoose (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(28524),	-- Emerald Ripper
					i(28525),	-- Signet of Unshakable Faith
					i(28530),	-- Brooch of Unquenchable Fury
					i(28529),	-- Royal Cloak of Arathi Kings
					i(28570),	-- Shadow-Cloak of Dalaran
					i(28567),	-- Belt of Gale Force
					i(28566),	-- Crimson Girdle of the Indomitable
					i(28565),	-- Nethershard Girdle
					i(28569),	-- Boots of Valiance
					i(28545),	-- Edgewalker Longboots
					i(28528),	-- Moroes' Lucky Pocket Watch
					-- #if BEFORE MOP
					i(28568, {	-- Idol of the Avian Heart
						["timeline"] = { REMOVED_5_0_4 },
					}),
					-- #endif
				},
			}),
			e(1555, {	-- Maiden of Virtue
				["creatureID"] = 16457,
				["groups"] = {
					i(28522),	-- Shard of the Virtuous
					i(28516),	-- Barbed Choker of Discipline
					i(28511),	-- Bands of Indwelling
					i(28515),	-- Bands of Nefarious Deeds
					i(28512),	-- Bracers of Justice
					i(28514),	-- Bracers of Maliciousness
					i(28520),	-- Gloves of Centering
					i(28519),	-- Gloves of Quickening
					i(28518),	-- Iron Gauntlets of the Maiden
					i(28521),	-- Mitts of the Treemender
					i(28517),	-- Boots of Foretelling
					-- #if BEFORE MOP
					i(28523, {	-- Totem of Healing Rains
						["timeline"] = { REMOVED_5_0_4 },
					}),
					-- #endif
				},
			}),
			e(1556, {	-- Opera Hall
				["creatureID"] = 16812,	-- Barnes <The Stage Manager>
				["description"] = "|CFFFF0000Moroes MUST be killed before you are allowed to participate in the Opera event.|r",
				["groups"] = {
					n(COMMON_BOSS_DROPS, {
						["description"] = "These items can drop from any of the Opera Hall bosses.",
						["crs"] = {
							17603,	-- Grandmother
							17521,	-- The Big Bad Wolf
							17534,	-- Julianne
							17533,	-- Romulo
							17535,	-- Dorothee
							17548,	-- Tito
							17543,	-- Strawman
							17547,	-- Tinhead
							17546,	-- Roar
							18168,	-- The Crone
						},
						["groups"] = {
							i(138017, {	-- Clothes Chest Pattern: Karazhan Opera House
								["timeline"] = { ADDED_7_0_3 },
							}),
							i(122231, {	-- Music Roll: Karazhan Opera House
								["timeline"] = { ADDED_6_1_0 },
							}),
							i(28593),	-- Eternium Greathelm
							i(28589),	-- Beastmaw Pauldrons
							i(28591),	-- Earthsoul Leggings
							i(28594),	-- Trial-Fire Trousers
							i(28590),	-- Ribbon of Sacrifice
							-- #if BEFORE MOP
							i(28592, {	-- Libram of Souls Redeemed
								["timeline"] = { REMOVED_5_0_4 },
							}),
							-- #endif
						},
					}),
					n(17521, {	-- The Big Bad Wolf [Red Riding Hood]
						["lore"] = "The Big Bad Wolf is initially a harmless Grandmother, but speaking to her will reveal the truth...\n\n\"Run away, little girl!\"",
						["crs"] = {
							17603,	-- Grandmother
						},
						["groups"] = {
							i(97548, {	-- Lil' Bad Wolf (PET!)
								["timeline"] = { ADDED_5_3_0 },
							}),
							i(28584),	-- Big Bad Wolf's Paw
							i(28581),	-- Wolfslayer Sniper Rifle
							i(28583),	-- Big Bad Wolf's Head
							i(28582),	-- Red Riding Hood's Cloak
						},
					}),
					n(17534, {	-- Julianne [Romulo and Julianne]
						["lore"] = "Julianne will appear first alone.  After she is defeated, Romulo will join the fight. After you dispatch, they will both rise and begin the fight again.",
						["crs"] = {
							17533,	-- Romulo
						},
						["groups"] = {
							i(28573),	-- Despair
							i(28572),	-- Blade of the Unrequited
							i(28578),	-- Masquerade Gown
							i(28579),	-- Romulo's Poison Vial
						},
					}),
					n(18168, {	-- The Crone [Wizard of Oz]
						["lore"] = "She spawns shortly after Dorothee, Dorothee's pet Tito, Roar, Strawman, and Tinhead are defeated.",
						["crs"] = {
							17535,	-- Dorothee
							17548,	-- Tito
							17543,	-- Strawman
							17547,	-- Tinhead
							17546,	-- Roar
						},
						["groups"] = {
							i(28587),	-- Legacy
							i(28588),	-- Blue Diamond Witchwand
							i(28586),	-- Wicked Witch's Hat
							i(28585),	-- Ruby Slippers
						},
					}),
				},
			}),
			n(17225, {	-- Nightbane
				["lore"] = "Nightbane is a summonable boss found in Karazhan. He is an undead dragon, transformed from the dragon known as Arcanagos, formerly of the Blue Dragonflight.",
				["providers"] = {
					{ "o", 194092 },	-- Blackened Urn
					-- #if BEFORE WRATH
					{ "i",  24140 },	-- Blackened Urn
					-- #endif
				},
				-- #if BEFORE 7.1
				["sourceQuest"] = 9644,	-- Nightbane
				-- #if AFTER WRATH
				["description"] = "Once you have completed the quest chain, you can summon him on the Terrace by clicking on the Urn on the ground.",
				-- #else
				["description"] = "Requires the completion of a complex questline to be summoned via the Blackened Urn.",
				-- #endif
				-- #else
				["description"] = "Nightbane is summoned by interacting with the object Blackened Urn, found 2/3rd through the Master's Terrace (from a clockwise direction).",
				-- #endif
				["groups"] = {
					i(28604),	-- Nightstaff of the Everliving
					i(28611),	-- Dragonheart Flameshield
					i(28606),	-- Shield of Impenetrable Darkness
					i(28603),	-- Talisman of Nightbane
					i(28609),	-- Emberspur Talisman
					i(28601),	-- Chestguard of the Conniver
					i(28597),	-- Panzan'Thar Breastplate
					i(28602),	-- Robe of the Elder Scribes
					i(28599),	-- Scaled Breastplate of Carnage
					i(28600),	-- Stonebough Jerkin
					i(28610),	-- Ferocious Swift-Kickers
					i(28608),	-- Ironstriders of Urgency
					i(24139, {	-- Faint Arcane Essence
						["timeline"] = REMOVED_WITH_RETURN_TO_KARAZHAN,
					}),
					i(31751),	-- Blazing Signet
				},
			}),
			e(1557, {	-- The Curator
				["creatureID"] = 15691,
				["groups"] = {
					i(97549, {	-- Menagerie Custodian (PET!)
						["timeline"] = { ADDED_5_3_0 },
					}),
					i(29757, {	-- Gloves of the Fallen Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(29758, {	-- Gloves of the Fallen Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(29756, {	-- Gloves of the Fallen Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(28633),	-- Staff of Infinite Mysteries
					i(28631),	-- Dragon-Quake Shoulderguards
					i(28647),	-- Forest Wind Shoulderpads
					i(28612),	-- Pauldrons of the Solace-Giver
					i(28621),	-- Wrynn Dynasty Greaves
					i(28649),	-- Garona's Signet Ring
				},
			}),
			e(1560, {	-- Terestian Illhoof
				["creatureID"] = 15688,
				["description"] = "|CFFFF0000This boss is easy to miss!|r Working your way upwards through Guardian's Library, you will find the passage sloping slightly down to a room with a Disconcerting Bookshelf. This bookshelf reveals the hidden corridor to the boss.",
				["groups"] = {
					i(22561),	-- Formula: Enchant Weapon - Soulfrost (RECIPE!)
					i(138799, {	-- Illusion: Soulfrost (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(97551, {	-- Fiendish Imp (PET!)
						["timeline"] = { ADDED_5_3_0 },
					}),
					i(207111, {	-- Grimoire of the Hellfire Fel Imp (CI!)
						["timeline"] = { ADDED_10_1_5 },
					}),
					i(28658),	-- Terestian's Stranglestaff
					i(28657),	-- Fool's Bane
					i(28660),	-- Gilded Thorium Cloak
					i(28653),	-- Shadowvine Cloak of Infusion
					i(28662),	-- Breastplate of the Lightbinder
					i(28652),	-- Cincture of Will
					i(28655),	-- Cord of Nature's Sustenance
					i(28656),	-- Girdle of the Prowler
					i(28654),	-- Malefic Girdle
					i(28661),	-- Mender's Heart-Ring
					i(28785),	-- The Lightning Capacitor
					-- #if BEFORE MOP
					i(28659, {	-- Xavian Stiletto
						["timeline"] = { REMOVED_5_0_4 },
					}),
					-- #endif
				},
			}),
			e(1559, {	-- Shade of Aran
				["creatureID"] = 16524,
				["groups"] = {
					i(22560),	-- Formula: Enchant Weapon - Sunfire (RECIPE!)
					i(138798, {	-- Illusion: Sunfire (ILLUSION!)
						["timeline"] = { ADDED_7_0_3 },
					}),
					i(28673),	-- Tirisfal Wand of Ascendancy
					i(28728),	-- Aran's Soothing Sapphire
					i(28671),	-- Steelspine Faceguard
					i(28674),	-- Saberclaw Talisman
					i(28726),	-- Mantle of the Mind Flayer
					i(28666),	-- Pauldrons of the Justice-Seeker
					i(28672),	-- Drape of the Dark Reavers
					i(28663),	-- Boots of the Incorrupt
					i(28670),	-- Boots of the Infernal Coven
					i(28669),	-- Rapscallion Boots
					i(28675),	-- Shermanar Great-Ring
					i(28727),	-- Pendant of the Violet Eye
					i(23933, {	-- Medivh's Journal
						["timeline"] = REMOVED_WITH_RETURN_TO_KARAZHAN,
					}),
				},
			}),
			e(1561, {	-- Netherspite
				["creatureID"] = 15689,
				["description"] = "At the top of Guardian's Library does the passage split in two, a left upwards and a right downwards. The left passage takes you to Netherspite, and the right takes you to the two last bosses.",
				["groups"] = {
					i(28729),	-- Spiteblade
					i(28734),	-- Jewel of Infinite Possibilities
					i(28732),	-- Cowl of Defiance
					i(28744),	-- Uni-Mind Headdress
					i(28731),	-- Shining Chain of the Afterworld
					i(28743),	-- Mantle of Abrahmis
					i(28735),	-- Earthblood Chestguard
					i(28733),	-- Girdle of Truth
					i(28742),	-- Pantaloons of Repentance
					i(28740),	-- Rip-Flayer Leggings
					i(28741),	-- Skulker's Greaves
					i(28730),	-- Mithril Band of the Unscarred
					-- #if AFTER MOP
					i(32506),	-- Netherwing Egg
					-- #endif
				},
			}),
			e(1562, {	-- Chess Event
				["creatureID"] = 16816,	-- Echo of Medivh
				["provider"] = { "o", 185119 },	-- Dust Covered Chest
				-- #if AFTER 9.0.2
				["description"] = "You have two options with this chess event: Either actively play it through with a higher success rate. Or immediately leave the king vehicle after starting the event and take a 5 minute break from the game, this have a 50% success rate.",
				-- #endif
				["groups"] = {
					i(28749),	-- King's Defender
					i(28754),	-- Triptych Shield of the Ancients
					i(28756),	-- Headdress of the High Potentate
					i(28745),	-- Mithril Chain of Heroism
					i(28755),	-- Bladed Shoulderpads of the Merciless
					i(28750),	-- Girdle of Treachery
					i(28751),	-- Heart-Flame Leggings
					i(28748),	-- Legplates of the Innocent
					i(28747),	-- Battlescar Boots
					i(28746),	-- Fiend Slayer Boots
					i(28752),	-- Forestlord Striders
					i(28753),	-- Ring of Recurrence
				},
			}),
			e(1563, {	-- Prince Malchezaar
				["creatureID"] = 15690,
				["groups"] = {
					ach(690, {	-- Karazhan
						-- #if BEFORE WRATH
						["sourceQuest"] = 9844,	-- A Demonic Presence
						-- #endif
					}),
					ach(5084, {	-- Karazhan Guild Run
						["timeline"] = { ADDED_4_0_3 },
					}),
					i(97550, {	-- Netherspace Abyssal (PET!)
						["timeline"] = { ADDED_5_3_0 },
					}),
					i(29760, {	-- Helm of the Fallen Champion
						["classes"] = { PALADIN, ROGUE, SHAMAN },
					}),
					i(29761, {	-- Helm of the Fallen Defender
						["classes"] = { DRUID, PRIEST, WARRIOR },
					}),
					i(29759, {	-- Helm of the Fallen Hero
						["classes"] = { HUNTER, MAGE, WARLOCK },
					}),
					i(28773),	-- Gorehowl
					i(28771),	-- Light's Justice
					i(28768),	-- Malchazeen
					i(28770),	-- Nathrezim Mindblade
					i(28767),	-- The Decapitator
					i(28772),	-- Sunfury Bow of the Phoenix
					i(28762),	-- Adornment of Stolen Souls
					i(28764),	-- Farstrider Wildercloak
					i(28766),	-- Ruby Drape of the Mysticant
					i(28765),	-- Stainless Cloak of the Pure Hearted
					i(28763),	-- Jade Ring of the Everliving
					i(28757),	-- Ring of a Thousand Marks
				},
			}),
		},
	})),
})));