-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------
local SCHOLOMANCE_GROUPS = {};
local KORMOK_LEGACY_DESCRIPTION = "This boss can be summoned in Ras Frostwhisper's room using the Brazier of Beckoning or the Brazier of Invocation, which can summon any of the spirits.";
local ignoreTimeline = function(item)	-- Items applied with this were never actually removed.
	item.timeline = IGNORED_VALUE;
	return item;
end
local SCHOLOMANCE_LEGACY_DATA = bubbleDownSelf({ ["timeline"] = { REMOVED_5_0_4, ADDED_10_1_5 } }, {
	n(ACHIEVEMENTS, bubbleDownSelf({ ["timeline"] = { ADDED_3_0_2, REMOVED_5_0_4, ADDED_10_1_5 } }, {
		ach(18368, {	-- Memory of Scholomance
			["sourceQuest"] = 76249,	-- Memory of Scholomance
			["maps"] = { EASTERN_PLAGUELANDS, STRATHOLME, WESTERN_PLAGUELANDS },
			["timeline"] = { ADDED_10_1_5 },
		}),
		ach(18558, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Leaders of Scholomance
			crit(549, {	-- Darkmaster Gandling
				["_npcs"] = { 1853 },
			}),
			crit(60409, {	-- Kirtonos the Herald
				["_npcs"] = { 10506 },
			}),
		})),
		-- #if BEFORE 5.0.4
		ach(645),	-- Scholomance (automated)
		-- #endif
		ach(5054, {	-- Scholomance Guild Run
			["timeline"] = { ADDED_4_0_3 },
		}),
	})),
	n(QUESTS, {
		-- #if BEFORE 5.0.4
		q(28756, {	-- Aberrations of Bone
			["sourceQuest"] = 27464,	-- Argent Call: The Trial of the Crypt
			["qg"] = 49856,	-- Lord Raymond George
			["coord"] = { 76.2, 50.9, EASTERN_PLAGUELANDS },
			["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
			["timeline"] = { ADDED_4_0_3 },
			["repeatable"] = true,
			["lvl"] = lvlsquish(40, 40, 15),
			["groups"] = {
				objective(1, {	-- 0/1 Rattlegore slain
					["provider"] = { "n", 11622 },	-- Rattlegore
				}),
			},
		}),
		-- #endif
		applyclassicphase(PHASE_FOUR, q(8259, {	-- A More Fitting Reward (Post 1.7, Phase 4)
			["sourceQuest"] = 7668,	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
			["altQuests"] = { 8258 },	-- The Darkreaver Menace (New)
			["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
			["coord"] = { 38.7, 35.9, ORGRIMMAR },
			["timeline"] = { ADDED_1_7_0, REMOVED_4_0_3 },
			["classes"] = { SHAMAN },
			["races"] = HORDE_ONLY,
			["lvl"] = 55,
			["groups"] = {
				i(20134, {	-- Skyfury Helm
					["timeline"] = { ADDED_1_7_0, REMOVED_4_0_3 },
				}),
			},
		})),
		q(7666,	-- Again Into the Great Ossuary [A]
		bubbleDownSelf({["timeline"] = { REMOVED_4_0_3 }}, {
			["qg"] = 928,	-- Lord Grayson Shadowbreaker <Paladin Trainer>
			["sourceQuest"] = 7647,	-- Judgment and Redemption
			["coord"] = { 37.6, 32.6, STORMWIND_CITY },
			["classes"] = { PALADIN },
			["races"] = ALLIANCE_ONLY,
			["repeatable"] = true,
			["lvl"] = 60,
			["groups"] = {
				i(18746),	-- Divination Scryer
			},
		})),
		q(7669,	-- Again Into the Great Ossuary [H]
		bubbleDownSelf({["timeline"] = { REMOVED_4_0_3 }}, {
			["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
			["sourceQuest"] = 8258,	-- The Darkreaver Menace
			["coord"] = { 38.7, 35.9, ORGRIMMAR },
			["classes"] = { SHAMAN },
			["races"] = HORDE_ONLY,
			["repeatable"] = true,
			["lvl"] = 60,
			["groups"] = {
				i(18746),	-- Divination Scryer
			},
		})),
		q(27140, {	-- Alexi's Gambit
			["qg"] = 45110,	-- Alexi Barov <House of Barov>
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Vectus slain
					["provider"] = { "n", 10432 },	-- Vectus
				}),
				objective(2, {	-- 0/1 Marduk Blackpool slain
					["provider"] = { "n", 10433 },	-- Marduk Blackpool
				}),
			},
		}),
		{	-- Araj's Scarab
			["allianceQuestData"] = q(5803, {	-- Araj's Scarab [A]
				["sourceQuest"] = 5801,	-- Fire Plume Forged [Alliance]
				["qg"] = 11056,	-- Alchemist Arbington
				["coord"] = { 42.7, 83.8, WESTERN_PLAGUELANDS },
			}),
			["hordeQuestData"] = q(5804, {	-- Araj's Scarab [H]
				["sourceQuest"] = 5802,	-- Fire Plume Forged [Horde]
				["qg"] = 11057,	-- Apothecary Dithers
				["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
				["maps"] = { WESTERN_PLAGUELANDS },
			}),
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Araj's Scarab
					["providers"] = {
						{ "i",  14610 },	-- Araj's Scarab
						{ "o", 177241 },	-- Araj's Phylactery
					},
					["coord"] = { 45.6, 69.2, WESTERN_PLAGUELANDS },
					["cr"] = 1852,	-- Araj the Summoner
				}),
			},
		},
		{	-- Barov Family Fortune
			["allianceQuestData"] = q(5343, {	-- Barov Family Fortune [A]
				["qg"] = 11023,	-- Weldon Barov <House of Barov>
				["coord"] = { 43.5, 83.7, WESTERN_PLAGUELANDS },
			}),
			["hordeQuestData"] = q(5341, {	-- Barov Family Fortune [H]
				["qg"] = 11022,	-- Alexi Barov <House of Barov>
				["coord"] = { 83.06, 71.6, TIRISFAL_GLADES },
				["maps"] = { WESTERN_PLAGUELANDS },
			}),
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 52,
			["groups"] = {
				objective(1, {	-- 0/1 The Deed to Brill
					["providers"] = {
						{ "i",  13471 },	-- The Deed to Brill
						{ "o", 176484 },	-- The Deed to Brill
					},
					["description"] = "Can be found along the wall in Ras Frostwhisper's room.",
				}),
				objective(2, {	-- 0/1 The Deed to Caer Darrow
					["providers"] = {
						{ "i",  13448 },	-- The Deed to Caer Darrow
						{ "o", 176485 },	-- The Deed to Caer Darrow
					},
					["description"] = "Can be found right next to Alexi Barov.",
				}),
				objective(3, {	-- 0/1 The Deed to Southshore
					["providers"] = {
						{ "i",  13450 },	-- The Deed to Southshore
						{ "o", 176486 },	-- The Deed to Southshore
					},
					["description"] = "Can be found in the very back of the first room hidden behind some bookshelves.",
				}),
				objective(4, {	-- 0/1 The Deed to Tarren Mill
					["providers"] = {
						{ "i",  13451 },	-- The Deed to Tarren Mill
						{ "o", 176487 },	-- The Deed to Tarren Mill
					},
					["description"] = "Can be found on the table in the back corner just before you enter the dragon whelpling room or travel downstairs to fight Jandice Barov.",
				}),
			},
		},
		q(27143, {	-- Barov Family Fortune [CATA]
			["qg"] = 45109,	-- Weldon Barov <House of Barov>
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 The Deed to Brill
					["providers"] = {
						{ "i",  13471 },	-- The Deed to Brill
						{ "o", 176484 },	-- The Deed to Brill
					},
					["description"] = "Can be found along the wall in Ras Frostwhisper's room.",
				}),
				objective(2, {	-- 0/1 The Deed to Caer Darrow
					["providers"] = {
						{ "i",  13448 },	-- The Deed to Caer Darrow
						{ "o", 176485 },	-- The Deed to Caer Darrow
					},
					["description"] = "Can be found right next to Alexi Barov.",
				}),
				objective(3, {	-- 0/1 The Deed to Southshore
					["providers"] = {
						{ "i",  13450 },	-- The Deed to Southshore
						{ "o", 176486 },	-- The Deed to Southshore
					},
					["description"] = "Can be found in the very back of the first room hidden behind some bookshelves.",
				}),
				objective(4, {	-- 0/1 The Deed to Tarren Mill
					["providers"] = {
						{ "i",  13451 },	-- The Deed to Tarren Mill
						{ "o", 176487 },	-- The Deed to Tarren Mill
					},
					["description"] = "Can be found on the table in the back corner just before you enter the dragon whelpling room or travel downstairs to fight Jandice Barov.",
				}),
				i(65923, {	-- Barov Servant Caller
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
			},
		}),
		q(5531, {	-- Betina Bigglezink
			["sourceQuest"] = 5522,	-- Leonid Barthalomew
			["providers"] = {
				{ "n", 11036 },	-- Leonid Barthalomew the Revered <The Argent Dawn>
				{ "i", 13761 },	-- Frozen Eggs
			},
			["coord"] = { 81.73, 57.83, EASTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
		}),
		q(76257, {	-- Darkmaster's Scourgestone
			["provider"] = { "i", 206373 },	-- Darkmaster's Scourgestone (QI!)
			["timeline"] = { ADDED_10_1_5 },
			["groups"] = {
				i(12844),	-- Argent Dawn Valor Token
			},
		}),
		q(4771, {	-- Dawn's Gambit
			-- #if BEFORE 4.0.3
			["description"] = "After completing this quest, you can return to Betina to have her give you another Gambit.",
			-- #endif
			["sourceQuest"] = 5531,	-- Betina Bigglezink
			["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
			["coord"] = { 81.5, 59.7, EASTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
			["groups"] = {
				objective(1, {	-- 0/1 Vectus slain
					["provider"] = { "n", 10432 },	-- Vectus
				}),
				objective(2, {	-- 0/1 Place Dawn's Gambit
					["provider"] = { "i", 12368 },	-- Dawn's Gambit
					["description"] = "This will significantly reduce all of the nearby student's health and damage. As soon as the component opens, you should have your tank or plate/rogue dps aggro the room other than the 2 bosses and get ready to AOE.",
				}),
				i(15854, {	-- Dancing Sliver
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(15853, {	-- Windreaper
					["timeline"] = { REMOVED_4_0_3 },
				}),
			},
		}),
		q(5382, {	-- Doctor Theolen Krastinov, the Butcher
			["description"] = "Talk to Eva until she offers the quest.",
			["qg"] = 11216,	-- Eva Sarkhoff
			["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Doctor Theolen Krastinov slain
					["provider"] = { "n", 11261 },	-- Doctor Theolen Krastinov <The Butcher>
				}),
				objective(2, {	-- 0/1 Remains of Eva Sarkhoff Burned
					["provider"] = { "o", 176544 },	-- Remains of Eva Sarkhoff
				}),
				objective(3, {	-- 0/1 Remains of Lucien Sarkhoff Burned
					["provider"] = { "o", 176545 },	-- Remains of Lucien Sarkhoff
				}),
			},
		}),
		q(27146, {	-- Doctor Theolen Krastinov, the Butcher [CATA]
			["qg"] = 45107,	-- Eva Sarkhoff
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Doctor Theolen Krastinov slain
					["provider"] = { "n", 11261 },	-- Doctor Theolen Krastinov <The Butcher>
				}),
				objective(2, {	-- 0/1 Remains of Eva Sarkhoff Burned
					["provider"] = { "o", 176544 },	-- Remains of Eva Sarkhoff
				}),
				objective(3, {	-- 0/1 Remains of Lucien Sarkhoff Burned
					["provider"] = { "o", 176545 },	-- Remains of Lucien Sarkhoff
				}),
			},
		}),
		{	-- Fire Plume Forged
			["allianceQuestData"] = q(5801, {	-- Fire Plume Forged [A]
				["sourceQuest"] = 5538,	-- Mold Rhymes With... [Alliance]
			}),
			["hordeQuestData"] = q(5802, {	-- Fire Plume Forged [H]
				["sourceQuest"] = 5514,	-- Mold Rhymes With... [Horde]
			}),
			["qg"] = 5411,	-- Krinkle Goodsteel <Blacksmithing Supplies>
			["coord"] = { 51.5, 28.8, TANARIS },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { UNGORO_CRATER },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Unfinished Skeleton Key
					["provider"] = { "i", 14645 },	-- Unfinished Skeleton Key
					["coord"] = { 49.6, 47.6, UNGORO_CRATER },
					["cost"] = {
						{ "i", 14644, 1 },	-- Skeleton Key Mold
						{ "i", 12359, 2 },	-- Thorium Bar
					},
				}),
			},
		},
		q(5582, {	-- Healthy Dragon Scale
			["sourceQuest"] = 5529,	-- Plagued Hatchlings
			["provider"] = { "i", 13920 },	-- Healthy Dragon Scale
			["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
			["timeline"] = { REMOVED_4_0_3 },
			["repeatable"] = true,
			["lvl"] = 55,
		}),
		q(5384,	-- Kirtonos the Herald
		bubbleDownSelf({["timeline"] = { REMOVED_4_0_3 }},{
			["qg"] = 11216,	-- Eva Sarkhoff
			["sourceQuest"] = 5515,	-- Krastinov's Bag of Horrors
			["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Kirtonos the Herald slain
					["provider"] = { "n", 10506 },	-- Kirtonos the Herald
				}),
				i(15806),	-- Mirah's Song
				i(15805),	-- Penelope's Rose
				ig(13544),	-- Spectral Essence
			},
		})),
		q(27147, {	-- Kirtonos the Herald [CATA]
			["qg"] = 45107,	-- Eva Sarkhoff
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Kirtonos the Herald slain
					["provider"] = { "n", 10506 },	-- Kirtonos the Herald
				}),
			},
		}),
		q(5515, {	-- Krastinov's Bag of Horrors
			["sourceQuest"] = 5382,	-- Doctor Theolen Krastinov, the Butcher
			["qg"] = 11216,	-- Eva Sarkhoff
			["coord"] = { 70.2, 73.7, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Krastinov's Bag of Horrors
					["provider"] = { "i", 13725 },	-- Krastinov's Bag of Horrors
				}),
			},
		}),
		q(7647,	-- Judgment and Redemption
		bubbleDownSelf({["timeline"] = { REMOVED_4_0_3 }}, {
			["providers"] = {
				{ "n", 928 },	-- Lord Grayson Shadowbreaker <Paladin Trainer>
				{ "i", 18804 },	-- Lord Grayson's Satchel
			},
			["sourceQuest"] = 7646,	-- The Divination Scryer
			["coord"] = { 37.6, 32.6, STORMWIND_CITY },
			["classes"] = { PALADIN },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 60,
			["groups"] = {
				objective(1, {	-- 0/1 Charger's Redeemed Soul
					["provider"] = { "i", 18799 },	-- Charger's Redeemed Soul
					["cost"] = { { "i", 18749, 1 } },	-- Charger's Lost Soul
					["crs"] = {
						14516,	-- Death Knight Darkreaver
						14568,	-- Darkreaver's Fallen Charger
					},
				}),
				objective(2, {	-- 0/1 Blessed Arcanite Barding
					["provider"] = { "i", 18792 },	-- Blessed Arcanite Barding
				}),
				mount(23214, {	-- Charger (MOUNT!)
					["classes"] = { PALADIN },
					["races"] = ALLIANCE_ONLY,
					["lvl"] = 60,
				}),
			},
		})),
		q(5522, {	-- Leonid Barthalomew
			["sourceQuest"] = 4735,	-- Egg Collection
			["providers"] = {
				{ "n", 10267 },	-- Tinkee Steamboil
				{ "i", 13761 },	-- Frozen Eggs
			},
			["coord"] = { 65.2, 23.8, BURNING_STEPPES },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
		}),
		q(7667, {	-- Material Assistance
			["qg"] = 13417,	-- Sagorne Creststrider
			["coord"] = { 39.2, 48.4, ORGRIMMAR },
			["timeline"] = { ADDED_1_4_0, REMOVED_4_0_3 },
			["cost"] = {
				{ "i", 12800, 1 },	-- Azerothian Diamond
				{ "i", 18335, 1 },	-- Pristine Black Diamond
			},
			["classes"] = { SHAMAN },
			["races"] = HORDE_ONLY,
			["lvl"] = 58,
		}),
		q(76249, name(HEADERS.Achievement, 18368, {	-- Memory of Scholomance
			["description"] = "It's recommended to activate the Debug Mode to properly see every step and description.\n\nTo start unlocking old Scholomance, you must first do a clear of Heroic Scholomance. Once done, go to the room that used to be Doctor Theolen Krastinov's room in the original Scholomance (top center room). At the top left portion of the room, use the Krastinov's Bag of Horrors toy. When you do, the ghost of Eva Sarkhoff will spawn, afraid of you (as the toy transforms you into the Butcher himself). Removing the toy's buff will make Eva realize you're not her murderer, and she will talk to you, giving you the old Spectral Essence trinket and allowing you to loot Eva's Femur on the ground. This allows you to see ghosts in Caer Darrow.\n\nOnce you do, you can talk to Eva at her old spot outside Scholomance, where she will request you to look for her journal, as well as five candles, to perform a horrible ritual. The candles are traded from citizens in Caer Darrow, and require items they treasured when alive. Below, we have the locations for all items:",
			["timeline"] = { ADDED_10_1_5 },
			["maps"] = { EASTERN_PLAGUELANDS, STRATHOLME, WESTERN_PLAGUELANDS },
			["cost"] = {
				{ "i", 206357, 1 },	-- 1x Authentic Andorhal Candle
				{ "i", 206364, 1 },	-- 1x Eva's Femur
				{ "i", 206346, 1 },	-- 1x Eva's Journal
				{ "i", 206356, 1 },	-- 1x Ghost-Warding Candle
				{ "i", 206358, 1 },	-- 1x Imported Candle
				{ "i", 206354, 1 },	-- 1x Stinky Candle
				{ "i", 206355, 1 },	-- 1x Tobacco-Filled Candle
			},
		})),
		q(5463, {	-- Menethil's Gift (1/2)
			["description"] = "Take the Keepsake to the symbol on the floor in Baron Rivendare's room in Stratholme.",
			["sourceQuest"] = 5462,	-- The Dying, Ras Frostwhisper
			["providers"] = {
				{ "n", 11036 },	-- Leonid Barthalomew the Revered <The Argent Dawn>
				{ "i", 13585 },	-- Keepsake of Remembrance
			},
			["coord"] = { 81.7, 57.8, EASTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { STRATHOLME },
			["lvl"] = 57,
		}),
		q(5464, {	-- Menethil's Gift (2/2)
			["sourceQuest"] = 5463,	-- Menethil's Gift (1/2)
			["providers"] = {
				{ "o", 176631 },	-- Menethil's Gift
				{ "i", 13624 },	-- Soulbound Keepsake
			},
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { STRATHOLME },
			["lvl"] = 57,
		}),
		{	-- Mold Rhymes With...
			["allianceQuestData"] = q(5538, {	-- Mold Rhymes With... [A]
				["sourceQuest"] = 5537,	-- Skeletal Fragments [Alliance]
				["qg"] = 11056,	-- Alchemist Arbington
				["coord"] = { 42.66, 83.77, WESTERN_PLAGUELANDS },
			}),
			["hordeQuestData"] = q(5514, {	-- Mold Rhymes With... [H]
				["sourceQuest"] = 964,	-- Skeletal Fragments [Horde]
				["qg"] = 11057,	-- Apothecary Dithers
				["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
				["maps"] = { WESTERN_PLAGUELANDS },
			}),
			["timeline"] = { REMOVED_4_0_3 },
			["cost"] = {
				{ "i", 14628, 1 },	-- Imbued Skeletal Fragments
				{ "g", 150000 },	-- 15g
			},
			["lvl"] = 55,
		},
		q(5529, {	-- Plagued Hatchlings
			["qg"] = 11035,	-- Betina Bigglezink <The Argent Dawn>
			["coord"] = { 81.47, 59.66, EASTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/20 Plagued Hatchling slain
					["provider"] = { "n", 10678 },	-- Plagued Hatchling
				}),
			},
		}),
		q(27145, {	-- Plagued Hatchlings...For Now
			["qg"] = 45109,	-- Weldon Barov <House of Barov>
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/10 Plagued Hatchling slain
					["provider"] = { "n", 10678 },	-- Plagued Hatchling
				}),
				objective(2, {	-- 0/1 Rattlegore slain
					["provider"] = { "n", 11622 },	-- Rattlegore
				}),
			},
		}),
		q(5533, {	-- Scholomance [Alliance]
			["sourceQuest"] = 5097,	-- All Along the Watchtowers [Alliance]
			["qg"] = 10838,	-- Commander Ashlam Valorfist
			["coord"] = { 42.7, 84.0, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 55,
		}),
		q(838, {	-- Scholomance [Horde]
			["sourceQuest"] = 5098,	-- All Along the Watchtowers [Horde]
			["qg"] = 10837,	-- High Executor Derrington
			["coord"] = { 83.1, 68.9, TIRISFAL_GLADES },
			["timeline"] = { REMOVED_4_0_3 },
			["races"] = HORDE_ONLY,
			["lvl"] = 55,
		}),
		q(27148, {	-- School's Out Forever
			["qg"] = 45108,	-- Lucien Sarkhoff
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Darkmaster Gandling slain
					["provider"] = { "n", 1853 },	-- Darkmaster Gandling
				}),
				i(65974, {	-- Discipline Rod
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(65925, {	-- Lucien's Boots
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(65950, {	-- Shackles of Punishment
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
				i(65995, {	-- Signet of the Darkmaster
					["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
				}),
			},
		}),
		{	-- Skeletal Fragments
			["allianceQuestData"] = q(5537, {	-- Skeletal Fragments [A]
				["sourceQuest"] = 5533,	-- Scholomance [Alliance]
				["qg"] = 11056,	-- Alchemist Arbington
				["coord"] = { 42.66, 83.77, WESTERN_PLAGUELANDS },
			}),
			["hordeQuestData"] = q(964, {	-- Skeletal Fragments [H]
				["sourceQuest"] = 838,	-- Scholomance [Horde]
				["qg"] = 11057,	-- Apothecary Dithers
				["coord"] = { 83.3, 69.2, TIRISFAL_GLADES },
				["maps"] = { WESTERN_PLAGUELANDS },
			}),
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/15 Skeletal Fragments
					["provider"] = { "i", 14619 },	-- Skeletal Fragments
					["crs"] = {
						1789,	-- Skeletal Acolyte
						1787,	-- Skeletal Executioner
						1783,	-- Skeletal Flayer
						1784,	-- Skeletal Sorcerer
						1785,	-- Skeletal Terror
						1788,	-- Skeletal Warlord
					},
				}),
			},
		},
		q(5465, {	-- Soulbound Keepsake
			["sourceQuest"] = 5464,	-- Menethil's Gift (2/2)
			["providers"] = {
				{ "n", 11036 },	-- Leonid Barthalomew the Revered <The Argent Dawn>
				{ "i", 13624 },	-- Soulbound Keepsake
			},
			["coord"] = { 81.7, 57.8, EASTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
		}),
		q(7668, {	-- The Darkreaver Menace (Original: 1.4 till 1.7 only)
			["sourceQuest"] = 7667,	-- Material Assistance
			["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
			["coord"] = { 38.7, 35.9, ORGRIMMAR },
			["timeline"] = { REMOVED_1_7_0 },
			["classes"] = { SHAMAN },
			["races"] = HORDE_ONLY,
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Darkreaver's Head
					["provider"] = { "i", 18880 },	-- Darkreaver's Head
					["cr"] = 14516,	-- Death Knight Darkreaver
				}),
				i(18807, {	-- Helm of Latent Power
					["timeline"] = { REMOVED_1_7_0 },
				}),
			},
		}),
		applyclassicphase(PHASE_FOUR, q(8258, {	-- The Darkreaver Menace (Post 1.7, Phase 4)
			["sourceQuest"] = 7667,	-- Material Assistance
			["altQuests"] = {
				7668,	-- The Darkreaver Menace (Original)
			},
			["qg"] = 13417,	-- Sagorne Creststrider <Shaman Trainer>
			["coord"] = { 38.7, 35.9, ORGRIMMAR },
			["timeline"] = { ADDED_1_7_0, REMOVED_4_0_3 },
			["classes"] = { SHAMAN },
			["races"] = HORDE_ONLY,
			["lvl"] = 55,
			["groups"] = {
				objective(1, {	-- 0/1 Darkreaver's Head
					["provider"] = { "i", 18880 },	-- Darkreaver's Head
					["cr"] = 14516,	-- Death Knight Darkreaver
				}),
				i(20134, {	-- Skyfury Helm
					["timeline"] = { ADDED_1_7_0, REMOVED_4_0_3 },
				}),
			},
		})),
		q(5462, {	-- The Dying, Ras Frostwhisper
			["sourceQuest"] = 5461,	-- The Human, Ras Frostwhisper
			["providers"] = {
				{ "n", 11286 },	-- Magistrate Marduke
				{ "i", 13544 },	-- Spectral Essence
				{ "i", 13585 },	-- Keepsake of Remembrance
			},
			["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
		}),
		q(5461, {	-- The Human, Ras Frostwhisper
			["sourceQuest"] = 5384,	-- Kirtonos the Herald
			["providers"] = {
				{ "n", 11286 },	-- Magistrate Marduke
				{ "i", 13544 },	-- Spectral Essence
			},
			["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { ARATHI_HIGHLANDS },
			["lvl"] = 57,
			["groups"] = {
				objective(1, {	-- 0/1 Keepsake of Remembrance
					["providers"] = {
						{ "i",  13585 },	-- Keepsake of Remembrance
						{ "o", 176630 },	-- Keepsake of Remembrance
					},
					["coord"] = { 17.9, 69.4, ARATHI_HIGHLANDS },
				}),
			},
		}),
		{	-- The Key to Scholomance
			["allianceQuestData"] = q(5505, {	-- The Key to Scholomance [A]
				["sourceQuest"] = 5803,	-- Araj's Scarab
				["qg"] = 11056,	-- Alchemist Arbington
				["coord"] = { 42.6, 83.8, WESTERN_PLAGUELANDS },
			}),
			["hordeQuestData"] = q(5511, {	-- The Key to Scholomance [H]
				["sourceQuest"] = 5804,	-- Araj's Scarab
				["qg"] = 11057,	-- Apothecary Dithers
				["coord"] = { 83.2, 69.2, TIRISFAL_GLADES },
				["maps"] = { WESTERN_PLAGUELANDS },
			}),
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 55,
			["groups"] = {
				i(13704, {	-- Skeleton Key
					["timeline"] = { DELETED_4_0_3 },
				}),
			},
		},
		q(5344, {	-- The Last Barov [Alliance]
			["sourceQuest"] = 5343,	-- Barov Family Fortune [Alliance]
			["qg"] = 11023,	-- Weldon Barov <House of Barov>
			["coord"] = { 43.5, 83.7, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { TIRISFAL_GLADES },
			["races"] = ALLIANCE_ONLY,
			["lvl"] = 52,
			["groups"] = {
				objective(1, {	-- 0/1 Head of Alexi Barov
					["provider"] = { "i", 13470 },	-- Head of Alexi Barov
					["coord"] = { 83.0, 71.6, TIRISFAL_GLADES },
					["cr"] = 11022,	-- Alexi Barov <House of Barov>
				}),
				i(14023, {	-- Barov Peasant Caller
					["timeline"] = { REMOVED_4_0_3 },
				}),
			},
		}),
		q(5342, {	-- The Last Barov [Horde]
			["sourceQuest"] = 5341,	-- Barov Family Fortune [Horde]
			["qg"] = 11022,	-- Alexi Barov <House of Barov>
			["coord"] = { 83.06, 71.6, TIRISFAL_GLADES },
			["timeline"] = { REMOVED_4_0_3 },
			["maps"] = { WESTERN_PLAGUELANDS },
			["races"] = HORDE_ONLY,
			["lvl"] = 52,
			["groups"] = {
				objective(1, {	-- 0/1 Head of Weldon Barov
					["provider"] = { "i", 13469 },	-- Head of Weldon Barov
					["coord"] = { 43.4, 83.6, WESTERN_PLAGUELANDS },
					["cr"] = 11023,	-- Weldon Barov <House of Barov>
				}),
				i(14022, {	-- Barov Peasant Caller
					["timeline"] = { REMOVED_4_0_3 },
				}),
			},
		}),
		q(5466, {	-- The Lich, Ras Frostwhisper
			["sourceQuest"] = 5465,	-- Soulbound Keepsake
			["providers"] = {
				{ "n", 11286 },	-- Magistrate Marduke
				{ "i", 13544 },	-- Spectral Essence
			},
			["coord"] = { 70.6, 74.1, WESTERN_PLAGUELANDS },
			["timeline"] = { REMOVED_4_0_3 },
			["lvl"] = 57,
			["groups"] = {
				objective(1, {	-- 0/1 Human Head of Ras Frostwhisper
					["provider"] = { "i", 13626 },	-- Human Head of Ras Frostwhisper
				}),
				i(14002, {	-- Darrowshire Strongguard
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(13984, {	-- Darrowspike
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(13982, {	-- Warblade of Caer Darrow
					["timeline"] = { REMOVED_4_0_3 },
				}),
				i(13986, {	-- Crown of Caer Darrow
					["timeline"] = { REMOVED_4_0_3 },
				}),
			},
		}),
		q(27142, {	-- The Lich, Ras Frostwhisper [CATA]
			["qg"] = 45110,	-- Alexi Barov <House of Barov>
			["timeline"] = { ADDED_4_0_3, REMOVED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Ras Frostwhisper slain
					["provider"] = { "n", 10508 },	-- Ras Frostwhisper
				}),
			},
		}),
	}),
	n(TREASURES, {
		o(403567, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {		-- Cracked Argent Dawn Commission
			["description"] = "Can be found at the top of the southwest bone pile in Rattlegore's room. From the Great Ossuary, you can drop down from the southwest hole leading to Rattlegore's room and look down, it's a small object on the pile.\n\nThis is not visible if your character already has an Argent Dawn Commission or a Rune/Seal of the Dawn!",
			["groups"] = {
				i(206372),	-- Cracked Argent Dawn Commission
			},
		})),
		o(405388, bubbleDownSelf({ ["timeline"] = { ADDED_10_1_5 } }, {		-- Familiar Journal
			["description"] = "The Familiar Journal itself can be found in the Viewing Room of Old Scholomance, on the second bookshelf from the left wall, near the mini-boss Marduk Blackpool. All you have to do is pick up the book, and the toy is yours! It's as simple as that.",
			["groups"] = {
				i(208096),	-- Familiar Journal (TOY!)
			},
		})),
		i(12736, {	-- Frostwhisper's Embalming Fluid
			["description"] = "Can be found inside the chemistry lab in Scholomance, in Ras Frostwhisper's room.",
			["provider"] = { "o", 175965 },	-- Frostwhisper's Embalming Fluid
			["timeline"] = { ADDED_1_11_1, REMOVED_5_0_4, ADDED_10_2_5 }	-- Maybe added with Scholo in 10.1.7, but its an useless item anyway.
		}),
	}),
	n(ZONE_DROPS, {
		i(16255, {	-- Formula: Enchant 2H Weapon - Major Spirit / CLASSIC: Formula: Enchant 2H Weapon - Major Versatility (RECIPE!)
			["cr"] = 10469,	-- Scholomance Adept
		}),
		i(16254, {	-- Formula: Enchant Weapon - Lifestealing (RECIPE!)
			["cr"] = 10499,	-- Spectral Researcher
		}),
		i(15776, {	-- Pattern: Runic Leather Armor (RECIPE!)
			-- #if AFTER 4.0.3
			["description"] = "This pattern no longer drops. The recipe can now be trained at any leatherworking trainer.",
			-- #endif
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
			["cr"] = 11582,	-- Scholomance Dark Summoner
		}),
		i(15773, {	-- Pattern: Wicked Leather Armor (RECIPE!)
			-- #if AFTER 4.0.3
			["description"] = "This pattern no longer drops. The recipe can now be trained at any leatherworking trainer.",
			-- #endif
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
			["cr"] = 10499,	-- Spectral Researcher
		}),
		applyclassicphase(PHASE_SIX, i(22526)),	-- Bone Fragments
		i(12843, {	-- Corruptor's Scourgestone / Inert Corruptor's Scourgestone
			["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		i(12841, {	-- Invader's Scourgestone / Inert Invader's Scourgestone
			["description"] = "Can drop from any Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		i(12840, {	-- Minion's Scourgestone / Inert Minion's Scourgestone
			["description"] = "Can drop from weak Undead creature in the Plaguelands and associated dungeons so long as you are equipped with one of the Argent Dawn trinkets.",
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		i(13920, {	-- Healthy Dragon Scale
			["description"] = "This item can only drop from the Hatchlings after you have completed the Plagued Hatchlings quest.",
			["timeline"] = { REMOVED_4_0_3, ADDED_10_1_5 },
			["cr"] = 10678,	-- Plagued Hatchling
		}),
		i(12753, {	-- Skin of Shadow
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		ignoreTimeline(i(18702)),	-- Belt of the Ordained
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226751, {	-- Bindings of Elements
			["timeline"] = { ADDED_1_15_3 },
			["cr"] = 10478,	-- Splintered Skeleton
		})),
		-- #endif
		i(16671, {	-- Bindings of Elements
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10478,	-- Splintered Skeleton
		}),
		ignoreTimeline(i(14536)),	-- Bonebrace Hauberk
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228703, {	-- Coldstone Slippers
			["description"] = "None of these have been found on WoWHead or the AH. @Crieve if you get one to drop!",
			["timeline"] = { CREATED_1_15_3 },
		})),
		-- #endif
		ignoreTimeline(i(18697, {	-- Coldstone Slippers
			-- #if SEASON_OF_DISCOVERY
			-- CRIEVE NOTE: There is a reitemized version, but it doesn't seem to exist yet.
			-- ["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		})),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226761, {	-- Dreadmist Belt
			["timeline"] = { ADDED_1_15_3 },
			["cr"] = 10477,	-- Scholomance Necromancer
		})),
		-- #endif
		i(16702, {	-- Dreadmist Belt
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10477,	-- Scholomance Necromancer
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226758, {	-- Dreadmist Wraps
			["timeline"] = { ADDED_1_15_3 },
			["cr"] = 10477,	-- Scholomance Necromancer
		})),
		-- #endif
		i(16705, {	-- Dreadmist Wraps
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10477,	-- Scholomance Necromancer
		}),
		ignoreTimeline(i(18699)),	-- Icy Tomb Spaulders
		ignoreTimeline(i(18701)),	-- Innervating Band
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226739, {	-- Lightforge Bracers
			["timeline"] = { ADDED_1_15_3 },
			["crs"] = {
				10487,	-- Risen Protector
				10486,	-- Risen Warrior
			},
		})),
		-- #endif
		i(16722, {	-- Lightforge Bracers
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["crs"] = {
				10487,	-- Risen Protector
				10486,	-- Risen Warrior
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226724, {	-- Magister's Belt
			["timeline"] = { ADDED_1_15_3 },
			["cr"] = 10469,	-- Scholomance Adept
		})),
		-- #endif
		i(16685, {	-- Magister's Belt
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10469,	-- Scholomance Adept
		}),
		i(16684, {	-- Magister's Gloves
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10469,	-- Scholomance Adept
		}),
		ignoreTimeline(i(18700)),	-- Malefic Bracers
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226704, {	-- Shadowcraft Bracers
			["timeline"] = { ADDED_1_15_3 },
			["crs"] = {
				11284,	-- Dark Shade
				10472,	-- Scholomance Occultist
				10488,	-- Risen Construct
			},
		})),
		-- #endif
		i(16710, {	-- Shadowcraft Bracers
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["crs"] = {
				11284,	-- Dark Shade
				10472,	-- Scholomance Occultist
				10488,	-- Risen Construct
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228704, {	-- Tattered Leather Hood
			["description"] = "None of these have been found on WoWHead or the AH. @Crieve if you get one to drop!",
			["timeline"] = { CREATED_1_15_3 },
		})),
		-- #endif
		ignoreTimeline(i(18698, {	-- Tattered Leather Hood
			-- #if SEASON_OF_DISCOVERY
			-- CRIEVE NOTE: There is a reitemized version, but it doesn't seem to exist yet.
			-- ["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		})),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226712, {	-- Wildheart Belt
			["timeline"] = { ADDED_1_15_3 },
			["crs"] = {
				11257,	-- Scholomance Handler
				10500,	-- Spectral Teacher
				10499,	-- Spectral Researcher
			},
		})),
		-- #endif
		i(16716, {	-- Wildheart Belt
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["crs"] = {
				11257,	-- Scholomance Handler
				10500,	-- Spectral Teacher
				10499,	-- Spectral Researcher
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226714, {	-- Wildheart Bracers
			["timeline"] = { ADDED_1_15_3 },
			["cr"] = 10495,	-- Diseased Ghoul
		})),
		-- #endif
		i(16714, {	-- Wildheart Bracers
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
			["cr"] = 10495,	-- Diseased Ghoul
		}),
	}),
	n(14861, {	-- Blood Steward of Kirtonos
		i(13523, {	-- Blood of Innocents
			["timeline"] = { REMOVED_5_0_4 },
		}),
	}),
	n(10506, {	-- Kirtonos the Herald
		["providers"] = {
			{ "o", 175564 },	-- Brazier of the Herald
			-- #if BEFORE 10.1.5
			{ "i",  13523 },	-- Blood of Innocents
			-- #else
			{ "i", 206370 },	-- Blood of Innocents
			-- #endif
		},
		["description"] = "Can only be summoned if someone in your group has the Blood of Innocents.",
		["groups"] = {
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228015, {	-- Frightalon
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14024, {	-- Frightalon
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228029, {	-- Gravestone War Axe
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13983, {	-- Gravestone War Axe
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228019, {	-- Heart of the Fiend
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13960, {	-- Heart of the Fiend
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228001, {	-- Stoneform Shoulders
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13955, {	-- Stoneform Shoulders
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(13969),	-- Loomguard Armbraces
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228007, {	-- Gargoyle Slashers
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13957, {	-- Gargoyle Slashers
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228005, {	-- Clutch of Andros
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13956, {	-- Clutch of Andros
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226764, {	-- Boots of Valor
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16734, {	-- Boots of Valor
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228004, {	-- Windreaver Greaves
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13967, {	-- Windreaver Greaves
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
		},
	}),
	n(10503, {	-- Jandice Barov
		i(13523, {	-- Blood of Innocents
			["timeline"] = { REMOVED_5_0_4 },
		}),
		i(13725),	-- Krastinov's Bag of Horrors
		o(180794, {	-- Journal of Jandice Barov
			["description"] = "Jandice Barov drops this item when killed, which teaches Felcloth Bag. You must be a tailor of skill 285 or higher to learn this recipe.",
			["groups"] = {
				r(26086, {	-- Felcloth Bag
					["requireSkill"] = TAILORING,
				}),
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(227997, {	-- Barovian Family Sword
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14541, {	-- Barovian Family Sword
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		applyclassicphase(PHASE_FIVE, i(22394)),	-- Staff of Metanoia
		i(18689),	-- Phantasmal Cloak
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226756, {	-- Dreadmist Mantle
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16701, {	-- Dreadmist Mantle
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
		i(14548),	-- Royal Cap Spaulders
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228031, {	-- Darkshade Gloves
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14543, {	-- Darkshade Gloves
			-- #if AFTER 2.0.1
			["description"] = "This item appears to have been removed with TBC Prepatch. Please @Crieve if you get it to drop.",
			["isBounty"] = true,
			-- #endif
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_2_0_1,
				-- #endif
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228040, {	-- Ghostloom Leggings
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14545, {	-- Ghostloom Leggings
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228041, {	-- Wraithplate Leggings
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(18690, {	-- Wraithplate Leggings
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
	}),
	n(11622, {	-- Rattlegore
		i(13873, {	-- Viewing Room Key
			["description"] = "You must use this item on the door prior to Vectus and Marduk.",
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		i(206371, {	-- Viewing Room Key
			["description"] = "You must use this item on the door prior to Vectus and Marduk.",
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(18782, {	-- Top Half of Advanced Armorsmithing: Volume II
			["timeline"] = { ADDED_1_11_1, REMOVED_4_0_3 },
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(227994, {	-- Frightskull Shaft
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14531, {	-- Frightskull Shaft
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228037, {	-- Rattlecage Buckler
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14528, {	-- Rattlecage Buckler
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228032, {	-- Bone Ring Helm
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14539, {	-- Bone Ring Helm
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(18686),	-- Bone Golem Shoulders
		i(14538),	-- Deadwalker Mantle
		i(14537),	-- Corpselight Greaves
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226703, {	-- Shadowcraft Boots
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16711, {	-- Shadowcraft Boots
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
	}),
	-- The Re-release of scholomance should allow the summon of this boss once again, however the item required to summon him is one time.
	-- To get the summon item again, you would have to abandon the quest and pick it up again, which you cant. -- Gold 02/08/2023 (EU)
	n(14516, bubbleDownSelf({ ["timeline"] = { REMOVED_4_0_3 } }, {	-- Death Knight Darkreaver
		["cost"] = { { "i", 18746, 1 } },	-- Divination Scryer
		["groups"] = {
			i(18749),	-- Charger's Lost Soul
			i(18880),	-- Darkreaver's Head
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228030, {	-- Malicious Axe
				["description"] = "There are no recorded drops for this version, if you get it to drop, @Crieve on Discord!",
				["timeline"] = { CREATED_1_15_3 },
			})),
			-- #endif
			i(18759, {	-- Malicious Axe
				-- #if SEASON_OF_DISCOVERY
				-- CRIEVE NOTE: The reitemized version isn't in the game yet?
				-- ["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(18761),	-- Oblivion's Touch
			i(18758),	-- Specter's Blade
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228045, {	-- Necromantic Band
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(18760, {	-- Necromantic Band
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
		},
	})),
	n(10433, {	-- Marduk Blackpool
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(227993, {	-- Ebon Hilt of Marduk
			["description"] = "There are no recorded drops for this version, if you get it to drop, @Crieve on Discord!",
			["timeline"] = { CREATED_1_15_3 },
		})),
		-- #endif
		i(14576, {	-- Ebon Hilt of Marduk
			-- #if SEASON_OF_DISCOVERY
			-- CRIEVE NOTE: The reitemized version isn't in the game.
			-- ["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(18692),	-- Death Knight Sabatons
	}),
	n(10432, {	-- Vectus
		i(18691),	-- Dark Advisor's Pendant
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228017, {	-- Skullsmoke Pants
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14577, {	-- Skullsmoke Pants
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
	}),
	n(10508, {	-- Ras Frostwhisper
		i(13626, {	-- Human Head of Ras Frostwhisper
			["description"] = "Use the Keepsake on him before he dies to turn him back into a human.",
			["cost"] = { { "i", 13752, 1 } },	-- Soulbound Keepsake
		}),
		i(13521),	-- Recipe: Flask of Supreme Power (RECIPE!)
		i(14487),	-- Bonechill Hammer
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228027, {	-- Iceblade Hacker
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(13952, {	-- Iceblade Hacker
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(18696),	-- Intricately Runed Shield
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228039, {	-- Spellbound Tome
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(18695, {	-- Spellbound Tome
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226726, {	-- Magister's Mantle
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16689, {	-- Magister's Mantle
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228023, {	-- Alanna's Embrace
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(13314, {	-- Alanna's Embrace
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228036, {	-- Death's Clutch
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14503, {	-- Death's Clutch
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(14525),	-- Boneclenched Gauntlets
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228034, {	-- Shivery Handwraps
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(18693, {	-- Shivery Handwraps
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(14340),	-- Freezing Lich Robes
		i(14502),	-- Frostbite Girdle
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(228044, {	-- Maelstrom Leggings
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(14522, {	-- Maelstrom Leggings
			-- #if SEASON_OF_DISCOVERY
			["timeline"] = { REMOVED_1_15_3 },
			-- #endif
		}),
		i(18694),	-- Shadowy Mail Greaves
	}),
	applyclassicphase(PHASE_FIVE_TIER_ZERO_POINT_FIVE_SETS, n(16118, {	-- Kormok
		["description"] =
			-- #if AFTER 10.1.5
			KORMOK_LEGACY_DESCRIPTION,
			-- #elseif BEFORE 5.0.4
			KORMOK_LEGACY_DESCRIPTION,
			-- #else
			"This boss was summoned using the Brazier of Beckoning in Ras Frostwhisper's room, which is currently inaccessible.",
			-- #endif
		["cost"] = {
			{ "i", 22052, 1 },	-- Brazier of Beckoning [Kormok]
			{ "i", 22057, 1 },	-- Brazier of Invocation
		},
		-- #if AFTER 10.1.5
		-- This init function unmarks the removed from game flag for folks with the brazier.
		["OnInit"] = FUNCTION_TEMPLATES.OnInit.BrazierAccess,
		-- #endif
		["groups"] = {
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228026, {	-- Blade of Blackwood
				["timeline"] = { ADDED_1_15_3 },
			})),
			applyclassicphase(SOD_PHASE_FOUR, i(228028, {	-- Blade of Necromancy
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(22332, {	-- Blade of Necromancy
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228033, {	-- Hammer of Divine Might
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(22333, {	-- Hammer of Divine Might
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228038, {	-- Ironweave Pants
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(22303, {	-- Ironweave Pants
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228047, {	-- Amalgam's Band
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(22326, {	-- Amalgam's Band
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(22331),	-- Band of the Steadfast Hero
		},
	})),
	n(COMMON_BOSS_DROPS, {
		["description"] = "The following items can drop from any of the mini-bosses in the crypt before fighting Darkmaster Gandling. The bosses other than Lady Illucia Barov have an item or two exclusive to their own drop tables.",
		["crs"] = {
			10505,	-- Instructor Malicia
			11261,	-- Doctor Theolen Krastinov <The Butcher>
			10901,	-- Lorekeeper Polkelt
			10502,	-- Lady Illucia Barov
			10504,	-- Lord Alexi Barov
			10507,	-- The Ravenian
		},
		["groups"] = {
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(227996, {	-- Ancient Bone Bow
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(18680, {	-- Ancient Bone Bow
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(18683),	-- Hammer of the Vesper
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228012, {	-- Bloodmail Hauberk
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14611, {	-- Bloodmail Hauberk
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228020, {	-- Bloodmail Gauntlets
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14615, {	-- Bloodmail Gauntlets
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228014, {	-- Bloodmail Belt
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14614, {	-- Bloodmail Belt
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228003, {	-- Bloodmail Legguards
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14612, {	-- Bloodmail Legguards
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(227998, {	-- Bloodmail Boots
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14616, {	-- Bloodmail Boots
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(18681),	-- Burial Shawl
			i(14637),	-- Cadaverous Armor
			i(14640),	-- Cadaverous Gloves
			i(14636),	-- Cadaverous Belt
			i(14638),	-- Cadaverous Leggings
			i(14641),	-- Cadaverous Walkers
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228000, {	-- Deathbone Chestplate
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14624, {	-- Deathbone Chestplate
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228006, {	-- Deathbone Gauntlets
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14622, {	-- Deathbone Gauntlets
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228002, {	-- Deathbone Girdle
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14620, {	-- Deathbone Girdle
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228008, {	-- Deathbone Legguards
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14623, {	-- Deathbone Legguards
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(227999, {	-- Deathbone Sabatons
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14621, {	-- Deathbone Sabatons
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228016, {	-- Dimly Opalescent Ring
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(18684, {	-- Dimly Opalescent Ring
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(207058, {	-- Fractured Shin
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(18682),	-- Ghoul Skin Leggings
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228010, {	-- Necropile Mantle
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14633, {	-- Necropile Mantle
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228013, {	-- Necropile Robe
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14626, {	-- Necropile Robe
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228011, {	-- Necropile Cuffs
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14629, {	-- Necropile Cuffs
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228018, {	-- Necropile Leggings
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14632, {	-- Necropile Leggings
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228009, {	-- Necropile Boots
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(14631, {	-- Necropile Boots
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(207060, {	-- Skeletal Knight's Buckler
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(207059, {	-- Skeletal Knights Blade
				["timeline"] = { ADDED_10_1_5 },
			}),
			applyclassicphase(PHASE_FIVE, i(23201, {	-- Libram of Divinity
				["timeline"] = { DELETED_5_0_4 },
			})),
			applyclassicphase(PHASE_FIVE, i(23200, {	-- Totem of Sustaining
				["timeline"] = { DELETED_5_0_4 },
			})),
		},
	}),
	n(10505, {	-- Instructor Malicia
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226704, {	-- Shadowcraft Bracers
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16710, {	-- Shadowcraft Bracers
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
	}),
	n(11261, {	-- Doctor Theolen Krastinov <The Butcher>
		i(206370, {	-- Blood of Innocents
			["timeline"] = { ADDED_10_1_5 },
		}),
		i(13523, {	-- Blood of Innocents
			["timeline"] = { REMOVED_5_0_4 },
		}),
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226731, {	-- Magister's Gloves
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16684, {	-- Magister's Gloves
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
		i(14617),	-- Sawbones Shirt
	}),
	n(10901, {	-- Lorekeeper Polkelt
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226758, {	-- Dreadmist Wraps
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16705, {	-- Dreadmist Wraps
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
	}),
	n(10507, {	-- The Ravenian
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226712, {	-- Wildheart Belt
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16716, {	-- Wildheart Belt
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
	}),
	n(10504, {	-- Lord Alexei Barov
		-- #if SEASON_OF_DISCOVERY
		applyclassicphase(SOD_PHASE_FOUR, i(226739, {	-- Lightforge Bracers
			["timeline"] = { ADDED_1_15_3 },
		})),
		-- #endif
		i(16722, {	-- Lightforge Bracers
			["timeline"] = {
				-- #if SEASON_OF_DISCOVERY
				REMOVED_1_15_3,
				-- #else
				REMOVED_4_0_3,
				-- #endif
			},
		}),
	}),
	n(1853, {	-- Darkmaster Gandling
		["description"] = "You must fully clear out the six rooms around Headmaster's Study before this boss will spawn on the bottom floor. It is recommended that you clear the top floor last so that you have an opportunity to properly position your group.",
		["groups"] = {
			i(206373, {	-- Darkmaster's Scourgestone (QI!)
				["description"] = "Drops only with equipped Argent Dawn Commission",
				["provider"] = { "i", 12846 },	-- Argent Dawn Commission
				["timeline"] = { ADDED_10_1_5 },
			}),
			i(14514, {	-- Pattern: Robe of the Void (RECIPE!)
				-- #if TBC
				-- During TBC this was made exclusively usable by Warlocks, then that change was reverted with Wrath.
				["classes"] = { WARLOCK },
				-- #endif
			}),
			i(13501),	-- Recipe: Major Mana Potion (RECIPE!)
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228022, {	-- Headmaster's Charge
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13937, {	-- Headmaster's Charge
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(13938),	-- Bonecreeper Stylus
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228024, {	-- Silent Fang
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13953, {	-- Silent Fang
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228021, {	-- Witchblade
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13964, {	-- Witchblade
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226720, {	-- Beaststalker's Cap
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16677, {	-- Beaststalker's Cap
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226755, {	-- Coif of Elements
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16667, {	-- Coif of Elements
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226746, {	-- Devout Crown
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16693, {	-- Devout Crown
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226762, {	-- Dreadmist Mask
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16698, {	-- Dreadmist Mask
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226769, {	-- Helm of Valor
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16731, {	-- Helm of Valor
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226733, {	-- Lightforge Helm
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16727, {	-- Lightforge Helm
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226728, {	-- Magister's Crown
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16686, {	-- Magister's Crown
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226707, {	-- Shadowcraft Cap
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16707, {	-- Shadowcraft Cap
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(226708, {	-- Wildheart Cowl
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(16720, {	-- Wildheart Cowl
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_4_0_3,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228025, {	-- Tombstone Breastplate
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13944, {	-- Tombstone Breastplate
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			i(13951),	-- Vigorsteel Vambraces
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228042, {	-- Detention Strap
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			i(13950, {	-- Detention Strap [CRIEVE NOTE: This item seems to have disappeared with TBC Classic.]
				["description"] = "This item seems to have disappeared in Classic. If you get this item in any game flavor, please screenshot this and send it directly to @Crieve on Discord!",
				["timeline"] = {
					-- #if SEASON_OF_DISCOVERY
					REMOVED_1_15_3,
					-- #else
					REMOVED_2_0_1,
					-- #endif
				},
			}),
			-- #if SEASON_OF_DISCOVERY
			--[[
			applyclassicphase(SOD_PHASE_FOUR, i(228043, {	-- Boots of the Shrieker
				["description"] = "None of these have been found on WoWHead. @Crieve if you get one to drop!",
				["timeline"] = { CREATED_1_15_3 },
			})),
			]]--
			-- #endif
			i(13398, {	-- Boots of the Shrieker
				-- #if SEASON_OF_DISCOVERY
				-- CRIEVE NOTE: This item is likely still in the game, the reitemized version doesn't appear to be yet.
				-- ["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			}),
			-- #if SEASON_OF_DISCOVERY
			applyclassicphase(SOD_PHASE_FOUR, i(228046, {	-- Don Mauricio's Band of Domination
				["timeline"] = { ADDED_1_15_3 },
			})),
			-- #endif
			applyclassicphase(PHASE_FIVE, i(22433, {	-- Don Mauricio's Band of Domination
				-- #if SEASON_OF_DISCOVERY
				["timeline"] = { REMOVED_1_15_3 },
				-- #endif
			})),
			-- #if BEFORE 5.0.4
			applyclassicphase(PHASE_THREE_DMF_CARDS, i(19276)),	-- Ace of Portals
			-- #endif
		},
	}),
	-- n(14695),	-- Lord Blackwood
	-- Listed under Worldevent>Scourge>
});

-- #if BEFORE 5.0.4
-- Before MOP there was only one difficulty for Scholomance. Merge all the legacy data into the groups directly.
for i,o in ipairs(SCHOLOMANCE_LEGACY_DATA.groups) do
	table.insert(SCHOLOMANCE_GROUPS, o);
end
-- #else
-- After MOP they revamped Scholomance and included a lot of extra stuff. They also created a Heroic Difficulty, so a Normal header is now necessary.
local LEGACY_DUNGEON_GROUPS = {};
for i,o in ipairs(SCHOLOMANCE_LEGACY_DATA.groups) do
	table.insert(LEGACY_DUNGEON_GROUPS, o);
end
-- #if AFTER 10.1.5
table.insert(SCHOLOMANCE_GROUPS, header(HEADERS.Achievement, 18368, {	-- Memory of Scholomance
	["sourceQuest"] = 76249,	-- Memory of Scholomance
	["description"] = "With 10.1.5, Blizzard readded the original version of Scholomance!\n\nThank you, Blizzard!\n  -Crieve\n\nHere is how to get started:\n\n1. Obtain 'Krastinov's Bag of Horrors' from the rare spawn Doctor Theolen Krastinov in Scholomance, Heroic difficulty. This step can be skipped if you are accompanied by someone who already have the toy.\n\n2. Defeat Darkmaster Gandling in Headmaster's Retreat and enter the upper level centre room.\n\n3. Find a pile of bones on the ground in the southeastern part of the room, and use the toy 'Krastinov's Bag of Horrors'.\n\n4. Eva Sarkhoff should now have spawned, but you cannot interact with her before you remove the toy visage/buff named 'Surgical Alterations'.\n\n5. Accept Eva Sarkhoof's quest and her Inert Spectral Essence. Loot Eva's Femur from the pile of bones.\n\n6. Walk back upstairs to The Viewing Room. There is two bookcases in the southwestern corner of the room. Eva's Journal can be found on a middle shelf on the backside of the left bookcase.\n\n7. Obtain the reagents 3x Dark Runes and 5x Essence of Undeath and use the Inert Spetral Essence. Equip the crafted trinket 'Spectral Essence'.\n\n8. Obtain candles from doing objectives around Caer Darrow (outside Scholomance):\n8.1 Loot 'The Deed to Andorhal' from inside Andorhal Townhall at 43.35, 69.3., and give it to Magistrate Marduke at 70.5, 74.0.\n8.2 Loot 'Bucket of Fountain Water' from the candylit fountain at 68.9, 78.8., and give it to Joseph Dirte at 68.0, 74.8.\n8.3 Loot 'Trampled Doll' from the meatwagon in Darrowshire at 35.7, 83.5. (Eastern Plaguelands!), return to Caer Darrow and give it to Sammy at 69.15, 78.7.\n8.4 Loot 'The Road Ahead' from a wall inside old Corin's Crossing tavern  at 55.0, 64.0. (Eastern Plaguelands!), return to Caer Darrow and give it to Artist Renfray at 65.8, 75.4.\n8.5 Loot 'Undelivered Shipment of Smokes' from a wagon behind the fountain at King's Square in Stratholme, return to Caer Darrow and give it to Rory at 63.4, 75.5.\n\n9. Use Eva's Journal to begin the ritual at 69.7, 71.7., inside Caer Darrow keep/open world Scholomance.",
	["mapID"] = 306,
	["maps"] = { 307, 308, 309 },
	["modID"] = 1,
	["groups"] = LEGACY_DUNGEON_GROUPS,
}));
-- #else
table.insert(SCHOLOMANCE_GROUPS, n(createHeader({
	readable = "Memory of Scholomance",
	icon = 133743,
	text = {
		en = "Memory of Scholomance",
		de = "Erinnerung an Scholomance",
		es = "Recuerdo de Scholomance",
		mx = "Recuerdo de Scholomance",
		fr = "Souvenir de Scholomance",
		it = "Ricordo di Scholomance",
		ko = "스칼로맨스의 기억",
		pt = "Lembrança de Scolomântia",
		ru = "Воспоминание о Некроситете",
		cn = "通灵学院的回忆",
		tw = "通靈學院的回憶",
	},
}), {
	["mapID"] = 306,
	["maps"] = { 307, 308, 309 },
	["modID"] = 1,
	["groups"] = LEGACY_DUNGEON_GROUPS,
}));
-- #endif

-- #if AFTER 5.0.4
table.insert(SCHOLOMANCE_GROUPS, d(DIFFICULTY.DUNGEON.MULTI.NORMAL_HEROIC, {
	["timeline"] = { ADDED_5_0_4 },
	["groups"] = {
		-- #if AFTER 10.1.5
		header(HEADERS.NPC, 206014, bubbleDown({ ["timeline"] = { ADDED_10_1_5 } }, {	-- Eva Sarkhoff
			["description"] = "See the 'Memory of Scholomance'-header for proper instructions on how to do this.",
			["groups"] = {
				n(TREASURES, {
					o(403552, {	-- Eva's Femur
						["sourceQuests"] = { 76248 },	-- Eva Sarkhoff
						["groups"] = {
							i(206364),	-- Eva's Femur
						},
					}),
					o(403498, {	-- Eva's Journal
						["sourceQuests"] = { 76248 },	-- Eva Sarkhoff
						["groups"] = {
							i(206346, {	-- Eva's Journal
								["description"] = "Use at 69.7, 71.7 outside the Scholomance Dungeon",
							}),
						},
					}),
				}),
				n(206014, {	-- Eva Sarkhoff
					["provider"] = {"i",88566},	-- Krastinov's Bag of Horrors
					["questID"] = 76248,
					["groups"] = {
						i(206365),	-- Inert Spectral Essence
						hqt(76250, name(HEADERS.Item, 13544, {	-- Spectral Essence
							["cost"] = {
								{ "i", 20520, 3 },	-- 3x Dark Rune
								{ "i", 12808, 5 },	-- 5x Essence of Undeath
								{ "i", 206365, 1 },	-- 1x Inert Spectral Essence
							},
							-- ["lockCriteria"] = {},	-- cannot be triggered if Spectral Essence already in player inventory from Vanilla
							["groups"] = {
								i(13544),	-- Spectral Essence
							},
						})),
					},
				}),
			},
		})),
		-- #endif
		n(59613, {	-- Professor Slate <Potions Master>
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = bubbleDown({["ignoreBonus"] = true},{
				i(85580, {	-- Empty Polyformic Acid Vial
					["description"] = "Use this at the table nearby to apply the appearance, or to store the appearance once applied.",
					["groups"] = {
						i(85589),	-- Nearly Full Vial of Polyformic Acid
						i(85592),	-- Half Full Vial of Polyformic Acid
						i(85593),	-- Nearly Empty Vial of Polyformic Acid
					},
				}),
			}),
		}),
		e(684, {	-- Darkmaster Gandling
			["creatureID"] = 59080,	-- Darkmaster Gandling
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				ach(645),	-- Scholomance
				ach(5054, {	-- Scholomance Guild Run
					["timeline"] = { ADDED_5_0_4 },
				}),
			},
		}),
	},
}));
-- #endif
table.insert(SCHOLOMANCE_GROUPS, d(DIFFICULTY.DUNGEON.NORMAL, {
	n(QUESTS, sharedData({["modID"] = 0},{
		q(28756, {	-- Aberrations of Bone
			["sourceQuest"] = 27464,	-- Argent Call: The Trial of the Crypt
			["qg"] = 49856,	-- Lord Raymond George
			["coord"] = { 76.1, 50.9, EASTERN_PLAGUELANDS },
			["maxReputation"] = { FACTION_ARGENT_DAWN, EXALTED },	-- Argent Dawn, Exalted.
			["timeline"] = { ADDED_4_0_3 },
			["repeatable"] = true,
			["lvl"] = lvlsquish(40, 40, 15),
			-- #if AFTER 10.1.5
			["description"] = "Killing Rattlegore in Old Scholomance DOES NOT progress this quest.",
			-- #endif
			["groups"] = {
				objective(1, {	-- 0/1 Rattlegore slain
					["provider"] = { "n", 59153 },	-- Rattlegore
				}),
			},
		}),
		q(31447, {	-- An End to the Suffering
			["qg"] = 64562,	-- Talking Skull
			["timeline"] = { ADDED_5_0_4 },
			["lvl"] = 38,
			["groups"] = {
				objective(1, {	-- 0/1 Darkmaster Gandling slain
					["provider"] = { "n", 59080 },	-- Darkmaster Gandling
				}),
			},
		}),
		q(31440, {	-- The Four Tomes
			["qg"] = 64562,	-- Talking Skull
			["timeline"] = { ADDED_5_0_4 },
			["lvl"] = 38,
		}),
	})),
	n(ZONE_DROPS, {
		i(16255, {	-- Formula: Enchant 2H Weapon - Major Spirit / CLASSIC: Formula: Enchant 2H Weapon - Major Versatility (RECIPE!)
			["cr"] = 58757,	-- Scholomance Acolyte
		}),
		i(18702),	-- Belt of the Ordained
		i(14536),	-- Bonebrace Hauberk
		i(18697),	-- Coldstone Slippers
		i(18699),	-- Icy Tomb Spaulders
		i(18701, {	-- Innervating Band
			["crs"] = {
				59614,	-- Bored Student
				58823,	-- Scholomance Neophyte
			},
		}),
		i(18700),	-- Malefic Bracers
		i(18698),	-- Tattered Leather Hood
	}),
	e(659, {	-- Instructor Chillheart
		["crs"] = {
			58633,	-- Instructor Chillheart
			58664,	-- Instructor Chillheart's Phylactery
		},
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			i(88339),	-- Gravetouch Greatsword
			i(88335),	-- Anarchist's Pendant
			i(88338),	-- Breastplate of Wracking Souls
			i(88337),	-- Shadow Puppet Bracers
			i(88336),	-- Icewrath Belt
		},
	}),
	e(663, {	-- Jandice Barov
		["creatureID"] = 59184,	-- Jandice Barov
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			i(88346),	-- Metanoia Shield
			i(88345),	-- Barovian Ritual Hood
			i(88349),	-- Phantasmal Drape
			i(88347),	-- Ghostwoven Legguards
			i(88348),	-- Wraithplate Treads
		},
	}),
	e(665, {	-- Rattlegore
		["creatureID"] = 59153,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			i(88344),	-- Goresoaked Headreaper
			i(88341),	-- Necromantic Wand
			-- #if AFTER 7.3.0
			i(88357),	-- Vigorsteel Spaulders
			-- #endif
			i(88340),	-- Deadwalker Bracers
			i(88342),	-- Rattling Gloves
			i(88343),	-- Bone Golem Boots
		},
	}),
	e(666, {	-- Lilian Voss
		["creatureID"] = 58722,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			i(88351),	-- Soulburner Crown
			i(88354),	-- Necklace of the Dark Blaze
			i(88352),	-- Shivbreaker Vest
			i(88353),	-- Dark Blaze Gauntlets
			i(88350),	-- Leggings of Unleashed Anguish
		},
	}),
	e(684, {	-- Darkmaster Gandling
		["creatureID"] = 59080,
		["timeline"] = { ADDED_5_0_4 },
		["groups"] = {
			i(88362),	-- Shoulderguards of Painful Lessons
			i(88357),	-- Vigorsteel Spaulders
			i(88361),	-- Gloves of Explosive Pain
			i(88356),	-- Tombstone Gauntlets
			i(88359),	-- Incineration Belt
			i(88358),	-- Lessons of the Darkmaster
			i(88360),	-- Price of Progress
			i(88355),	-- Searing Words
		},
	}),
}));
table.insert(SCHOLOMANCE_GROUPS, d(DIFFICULTY.DUNGEON.HEROIC, {
	["timeline"] = { ADDED_5_0_4 },
	["lvl"] = 90,
	["groups"] = {
		n(ACHIEVEMENTS, {
			ach(6715, {	-- Polyformic Acid Science
				["timeline"] = { ADDED_5_0_4 },
				["groups"] = sharedData({
					["cost"] = {
						{ "i", 85589, 1 },	-- Nearly Full Vial of Polyformic Acid
						{ "i", 85592, 1 },	-- Half Full Vial of Polyformic Acid
						{ "i", 85593, 1 },	-- Nearly Empty Vial of Polyformic Acid
					},
				},{
					crit(19603, {	-- Commander Ri'mok
						["_encounter"] = { 676, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(19605, {	-- Liu Flameheart
						["_encounter"] = { 658, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(19606, {	-- Gu Cloudstrike
						["_encounter"] = { 673, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(19609, {	-- Trial of the King
						["_encounter"] = { 708, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(19604, {	-- Vizier Jin'bak
						["_encounter"] = { 693, DIFFICULTY.DUNGEON.HEROIC },
					}),
					crit(19608, {	-- Yan-Zhu the Uncasked
						["_encounter"] = { 670, DIFFICULTY.DUNGEON.HEROIC },
					}),
				}),
			}),
			ach(6396, {	-- Sanguinarian
				["crs"] = { 59368 },	-- Krastinovian Carver
			}),
		}),
		n(QUESTS, sharedData({["modID"] = 0},{
			q(31448, {	-- An End to the Suffering
				["qg"] = 64563,	-- Talking Skull
				["groups"] = {
					i(87379),	-- Runed Deathbone Chestplate
					i(87380),	-- Carver's Bloodspattered Chestpiece
					i(87381),	-- Coldforge Carapace
					i(87382),	-- Patchwork Flesh Armor
					i(87383),	-- Ghoulskin Vestments
					i(87384),	-- Darkmaster's Spare Robe
					i(87385),	-- Empowered Necropile Robe
					i(87386),	-- Inscribed Bloodmail Hauberk
					i(87387),	-- Foul Cadaverous Armor
				},
			}),
			q(31442, {	-- The Four Tomes
				["qg"] = 64563,	-- Talking Skull
			}),
		})),
		e(659, {	-- Instructor Chillheart
			["crs"] = {
				58633,	-- Instructor Chillheart
				58664,	-- Instructor Chillheart's Phylactery
			},
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(144201, {	-- Gravetouch Greatsword
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144180, {	-- Anarchist's Pendant
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(143967, {	-- Breastplate of Wracking Souls
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144200, {	-- Shadow Puppet Bracers
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144202, {	-- Icewrath Belt
					["timeline"] = { ADDED_7_1_5 },
				}),
				-- With Patch 7.1.5, Blizzard did a dumb and recreated all of the items from Heroic.
				i(82822, {	-- Gravetouch Greatsword
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(81566, {	-- Anarchist's Pendant
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82821, {	-- Breastplate of Wracking Souls
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82820, {	-- Shadow Puppet Bracers
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82823, {	-- Icewrath Belt
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
			},
		}),
		e(663, {	-- Jandice Barov
			["creatureID"] = 59184,	-- Jandice Barov
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				ach(6531),	-- Attention to Detail
				i(144207, {	-- Metanoia Shield
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144029, {	-- Barovian Ritual Hood
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144208, {	-- Phantasmal Drape
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144012, {	-- Ghostwoven Legguards
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144013, {	-- Wraithplate Treads
					["timeline"] = { ADDED_7_1_5 },
				}),
				-- With Patch 7.1.5, Blizzard did a dumb and recreated all of the items from Heroic.
				i(82847, {	-- Metanoia Shield
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82848, {	-- Barovian Ritual Hood
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82850, {	-- Phantasmal Drape
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82851, {	-- Ghostwoven Legguards
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82852, {	-- Wraithplate Treads
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
			},
		}),
		e(665, {	-- Rattlegore
			["creatureID"] = 59153,	-- Rattlegore
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				ach(6394),	-- Rattle No More
				i(144011, {	-- Bone Golem Boots
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144204, {	-- Deadwalker Bracers
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144203, {	-- Goresoaked Headreaper
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144205, {	-- Necromantic Wand
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144206, {	-- Rattling Gloves
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144015, {	-- Vigorsteel Spaulders
					["timeline"] = { ADDED_7_3_0 },
				}),
				-- With Patch 7.1.5, Blizzard did a dumb and recreated all of the items from Heroic.
				i(82824, {	-- Goresoaked Headreaper
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82826, {	-- Necromantic Wand
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82825, {	-- Deadwalker Bracers
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82827, {	-- Rattling Gloves
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82828, {	-- Bone Golem Boots
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
			},
		}),
		n(59369, {	-- Doctor Theolen Krastinov
			["description"] = "This is a Rare Creature and, as such, is not always present.\nThe only way to find out if you will encounter him is right after Rattlegore is killed.\nHe will make his presence known...",
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(88566, {	-- Krastinov's Bag of Horrors (TOY!)
					["timeline"] = { ADDED_5_0_4 },
				}),
			},
		}),
		e(666, {	-- Lilian Voss
			["creatureID"] = 58722,	-- Lilian Voss
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				i(144030, {	-- Soulburner Crown
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144181, {	-- Necklace of the Dark Blaze
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(143968, {	-- Shivbreaker Vest
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144209, {	-- Dark Blaze Gauntlets
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144014, {	-- Leggings of Unleashed Anguish
					["timeline"] = { ADDED_7_1_5 },
				}),
				-- With Patch 7.1.5, Blizzard did a dumb and recreated all of the items from Heroic.
				i(82853, {	-- Soulburner Crown
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(81567, {	-- Necklace of the Dark Blaze
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82855, {	-- Shivbreaker Vest
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82856, {	-- Dark Blaze Gauntlets
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82854, {	-- Leggings of Unleashed Anguish
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
			},
		}),
		e(684, {	-- Darkmaster Gandling
			["creatureID"] = 59080,	-- Darkmaster Gandling
			["timeline"] = { ADDED_5_0_4 },
			["groups"] = {
				ach(6762),	-- Heroic: Scholomance
				ach(6771),	-- Heroic: Scholomance Guild Run
				ach(6821),	-- School's Out Forever
				i(144211, {	-- Headmaster's Will
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144016, {	-- Shoulderguards of Painful Lessons
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144015, {	-- Vigorsteel Spaulders
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144212, {	-- Gloves of Explosive Pain
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144210, {	-- Tombstone Gauntlets
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144213, {	-- Incineration Belt
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144161, {	-- Lessons of the Darkmaster
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144159, {	-- Price of Progress
					["timeline"] = { ADDED_7_1_5 },
				}),
				i(144160, {	-- Searing Words
					["timeline"] = { ADDED_7_1_5 },
				}),
				-- With Patch 7.1.5, Blizzard did a dumb and recreated all of the items from Heroic.
				i(82859, {	-- Headmaster's Will
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82862, {	-- Shoulderguards of Painful Lessons
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82857, {	-- Vigorsteel Spaulders
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82860, {	-- Gloves of Explosive Pain
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82858, {	-- Tombstone Gauntlets
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(82861, {	-- Incineration Belt
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(81268, {	-- Lessons of the Darkmaster
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(81266, {	-- Price of Progress
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
				i(81267, {	-- Searing Words
					["timeline"] = { ADDED_5_0_4, REMOVED_7_1_5 },
				}),
			},
		}),
	},
}));
-- #if AFTER 5.0.4
table.insert(SCHOLOMANCE_GROUPS, d(DIFFICULTY.DUNGEON.CHALLENGE_MODE, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4, REMOVED_6_0_2 } }, {
	challengemaster(ach(8438, bubbleDownSelf({ ["timeline"] = { ADDED_5_4_0, REMOVED_6_0_2 } }, {	-- Challenge Master: Scholomance
		title(245),	-- Darkmaster <Name>
	}))),
	ach(6897),	-- Scholomance Challenger
	ach(6914),	-- Scholomance: Bronze
	ach(6915),	-- Scholomance: Silver
	ach(6916, {	-- Scholomance: Gold
		spell(131232),	-- Path of the Necromancer
	}),
	-- #if ANYCLASSIC
	ach(61974, {	-- Scholomance: Platinum
		i(265415),	-- Platinum Vial of Polyformic Acid
	}),
	-- #endif
})));
-- #endif
-- #endif

-- #if ANYCLASSIC
-- #if AFTER MOP
table.insert(SCHOLOMANCE_GROUPS, applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_MSV, n(CELESTIAL_DUNGEON_DIFFICULTY, {
		["OnInit"] = FUNCTION_TEMPLATES.OnInit.GenerateShouldExcludeFromTooltipForBuffs(1243929),	-- Dominion of the Empress
		["timeline"] = { ADDED_5_5_0 },
		["groups"] = {
			e(684, {	-- Darkmaster Gandling
				["creatureID"] = 59080,	-- Darkmaster Gandling
				["groups"] = {
					ach(60899),	-- Celestial: Scholomance
					applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_HOF, i(86863)),	-- Scimitar of Seven Stars (HoF)
					applyclassicphase(MOP_PHASE_ONE_CELESTIAL_DUNGEONS_TOES, i(86893)),	-- Jin'ya, Orb of the Waterspeaker (Terrace)
					i(86782),	-- Arrow Breaking Windcloak
					i(89968),	-- Feng's Ring of Dreams
					i(86802),	-- Lei Shen's Final Orders
				},
			}),
		},
})));
-- #endif
-- #endif

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(246, {	-- Scholomance
		-- #if BEFORE MOP
		["lore"] = "The Scholomance is housed within a series of crypts that lie beneath the ruined keep of Caer Darrow. Once owned by the noble Barov family, Caer Darrow fell to ruin following the Second War. As the wizard Kel'thuzad enlisted followers for his Cult of the Damned he would often promise immortality in exchange for serving his Lich King. The Barov family fell to Kel'thuzad's charismatic influence and donated the keep and its crypts to the Scourge. The cultists then killed the Barovs and turned the ancient crypts into a school for necromancy known as the Scholomance. Though Kel'thuzad no longer resides in the crypts, devoted cultists and instructors still remain. The powerful lich, Ras Frostwhisper, rules over the site and guards it in the Scourge's name - while the mortal necromancer, Darkmaster Gandling, serves as the school's insidious headmaster.",
		-- #endif
		-- #if BEFORE MOP
		["zone-text-areaID"] = 2057,	-- TODO: Determine what expansion this gets its own (correct) mapID.
		-- #endif
		-- #if BEFORE 4.0.3
		["sourceQuests"] = {
			5505,	-- The Key to Scholomance [Alliance]
			5511,	-- The Key to Scholomance [Horde]
		},
		["cost"] = { { "i", 13704, 1 } },	-- Skeleton Key
		-- #endif
		["mapID"] = SCHOLOMANCE,
		["coord"] = { 69.07, 72.96, WESTERN_PLAGUELANDS },
		["maps"] = {
			-- #if AFTER MOP
			SCHOLOMANCE_CHAMBER_OF_SUMMONING, SCHOLOMANCE_THE_UPPER_STUDY, SCHOLOMANCE_HEADMASTERS_STUDY,
			-- #else
			306, 307, 308, 309,
			-- #endif
		},
		["lvl"] = lvlsquish(55, 33, 33),
		["groups"] = SCHOLOMANCE_GROUPS,
	}),
}));

root(ROOTS.HiddenQuestTriggers, {
	expansion(EXPANSION.MOP, bubbleDownSelf({ ["timeline"] = { ADDED_5_0_4 } }, {
		inst(246, {
			q(31635),	-- Scholomance Challenge Mode - Bronze Addition (Nth)
			q(31628),	-- Scholomance Challenge Mode - Consolation (Nth)
			q(31649),	-- Scholomance Challenge Mode - Gold Addition (Nth)
			q(31642),	-- Scholomance Challenge Mode - Silver Addition (Nth)
		}),
	})),
	expansion(EXPANSION.WOD, bubbleDownSelf({ ["timeline"] = { ADDED_6_0_2 } }, {
		inst(246, {
			q(35594),	-- Scholomance Reward Quest - Normal completion
			q(35595),	-- Scholomance Reward Quest - Heroic completion
		}),
	})),
});
