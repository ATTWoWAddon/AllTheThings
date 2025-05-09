-------------------------------------------------------------------
--      E X P A N S I O N   F E A T U R E S    M O D U L E       --
-------------------------------------------------------------------
SILITHUS_THE_WOUND = createHeader({
	readable = "Silithus (The Wound)",
	icon = 236829,
	text = {
		en = [[~C_Map.GetAreaInfo(9310)]],
	},
});
root(ROOTS.Zones, m(KALIMDOR, bubbleDown({ ["timeline"] = { ADDED_7_3_5 } }, {
	n(SILITHUS_THE_WOUND, {
		["description"] = "The Wound was a mini pre-expansion event tailored around the aftermath of the wounding of Azeroth following the conclusion of the Antorus raid. Talk to Zidormi if you are stuck in the old Silithus.",
		-- This redirects the mini list to use this header instead when this quest is NOT active and the original mapID is the map that is is currently active
		["zone-artIDs"] = { 962 },
		["maps"] = { SILITHUS },
		["crs"] = { 128607 },	-- Zidormi
		["groups"] = {
			m(CHAMBER_OF_HEART, {
				["provider"] = { "o", 289521 },	-- Titan Translocator
				["lore"] = "The Chamber of Heart is a titan chamber at the heart of the world. It is accessed via the Titan Translocator in Silithus. Like the Hall of Communion, it is possible here to communicate with Azeroth, the world-soul of the planet. Magni brings a hero here at Azeroth's request to obtain the [Heart of Azeroth], a necklace that can gather the  [Azerite] - the planet's lifeblood - necessary to heal Azeroth's wounds. The seal on the chamber protects Azeroth's world-soul.",
				["icon"] = 1869493,
				["coord"] = { 43.2, 44.5, SILITHUS },
				["timeline"] = { ADDED_8_0_1 },
				["maps"] = {
					REPAIRED_CHAMBER_OF_HEART,
					1538,	-- scenario map for "Beginning the Descent"
					1539,	-- scenario map for "Beginning the Descent"
					1604,	-- scenario map after completing the first heroic vision of orgrimmar
				},
				["lvl"] = { 50 },
				["g"] = {
					n(ACHIEVEMENTS, {
						ach(12955),		-- Champions of Azeroth
						pvp(ach(13775, {	-- Essence Overload
							ach(13772),	-- Essence Essentials
							ach(13773),	-- Essence Gains
						})),
						ach(40958, {	-- Full Heart, Can't Lose
							["timeline"] = { ADDED_11_0_7 },
							-- Meta Achievement
							["sym"] = {{"meta_achievement",
								12918,	-- Have a Heart
								13777,	-- My Heart Container is Full
								13771,	-- Power Is Beautiful
								13572,	-- The Heart Forge
							}},
						}),
						ach(12918, {	-- Have a Heart
							["sourceQuest"] = 51211,	-- The Heart of Azeroth
						}),
						ach(13777),		-- My Heart Container is Full
						ach(13771, {	-- Power Is Beautiful
							ach(13769),	-- Power Up
							ach(13770),	-- Power Creep
						}),
						ach(13998),	-- Pure of Heart
						ach(14157, {	-- The Corruptor's End
							crit(47209, {	-- Ny'alotha, the Waking City: The Corruptor's End
								["sourceQuest"] = 58632,	-- Ny'alotha, the Waking City: The Corruptor's End
							}),
						}),
						ach(13572, {	-- The Heart Forge
							["sourceQuest"] = 55618,	-- The Heart Forge
						}),
					}),
					n(EMISSARY_QUESTS, {
						faction(FACTION_CHAMPIONS_OF_AZEROTH, {	-- Champions of Azeroth
							q(50562, {	-- Champions of Azeroth
								["isWorldQuest"] = true,
								["coord"] = { 42.22, 44.27, SILITHUS },
								["lvl"] = { 50 },
							}),
							q(54453, {	-- Supplies from Magni
								["repeatable"] = true,
								["coord"] = { 42.22, 44.27, SILITHUS },
								["qg"] = 130216,	-- Magni Bronzebeard
								["lvl"] = { 50 },
								["g"] = {
									i(166298, {	-- Champions of Azeroth Supplies
										i(166877),	-- Azerite Firework Launcher (TOY!)
									}),
								},
							}),
						}),
					}),
					n(PROFESSIONS, {
						-- Void Focus quests
						q(57275, {	-- Something in Your Mind
							["provider"] = { "i", 171320 },	-- Void Focus
							["description"] = "Can be made with any crafting profession.",
						}),
						q(57464, {	-- Maintaining Focus (A)
							["races"] = ALLIANCE_ONLY,
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57275,	-- Something in Your Mind
							["cost"] = { { "i", 171176, 20 }, },	-- 20x Shred of Insanity
						}),
						q(57276, {	-- Maintaining Focus (H)
							["sourceQuest"] = 57275,	-- Something in Your Mind
							["provider"] = { "n", 155496 },	-- Wrathion
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["races"] = HORDE_ONLY,
							["cost"] = { { "i", 171176, 20 }, },	-- 20x Shred of Insanity
						}),
						q(57462, {	-- Dream Catcher
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuests"] = { 57276, 57464 },	-- Maintaining Focus (A, H)
							["cost"] = { { "i", 171176, 200 }, },	-- 200x Shred of Insanity
						}),
					}),
					n(QUESTS, {
						q(56401, {	-- A Bolt from the Blue
							["provider"] = { "n", 152365 },	-- Kalecgos
							["coord"] = { 53.1, 70.9, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuests"] = {
								56263,	-- Unlocking the Power (A)
								56260,	-- Unlocking the Power (H)
							},
							["g"] = {
								i(169292),	-- Charged Scale of the Blue Aspect (QI!)
								i(168614, {	-- Charged Scale of the Blue Aspect
									["u"] = REMOVED_FROM_GAME,
								}),
							},
						}),
						q(54938, {	-- A Brother's Help
							-- This was removed during BfA in 8.2 but is now appearing again for characters leveling up during Shadowlands
							["qgs"] = {
								130216,	-- Magni Bronzebeard
								-- #if AFTER 8.2.0
								152206,	-- Magni Bronzebeard
								-- #endif
							},
							["sourceQuest"] = 53406,	-- The Chamber of Heart
							["description"] = "Once you complete 'The Chamber of Heart' in Silithus, you can pick this quest up from Magni, or it will be automatically offered when you return to your capital city.",
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_1_5 },
						}),
						q(55374, {	-- A Disturbance Beneath the Earth
							["provider"] = { "n", 152194 },	-- MOTHER
							["coord"] = { 48.1, 72.2, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuest"] = 55533,	-- MOTHER Knows Best
						}),
						q(52946, {	-- A Dying World (A)
							["qg"] = 142930,	-- Halford Wyrmbane
							["sourceQuest"] = 51795,	-- The Battle for Lordaeron
							["coord"] = { 27.7, 21.5, STORMWIND_CITY },
							["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53028, {	-- A Dying World (A/H)
							--	originally removed, then hotfixed back in for 50 characters
							--	NOT Horde-only, this ID is offered in both Dazar'alor and Boralus.  there used to be a separate ID for Alliance (52946), but it looks like that one was permanently removed.
							--	used to be able to be picked up in Orgrimmar from Nathanos, but that doesn't seem to be the case anymore.  Nathanos is still in Org, but the only quest he offered to me at 50 was "Battle for Azeroth: Mission Statement," which i think originally took place after players had picked up the HoA - after completing "Mission Statement" i went back and Nathanos was no longer in that location in Orgrimmar
							["providers"] = {
								{ "n", 154464 },	-- Earthen Guardian (Alliance)
								{ "n", 154465 },	-- Earthen Guardian (Horde)
							},
							["coords"] = {	-- i found it at the first one for Horde; apparently it can show up in both, but i'm not sure what governs which location it's available at
								{ 75.0, 15.0, BORALUS },	-- Alliance
								{ 50.3, 41.7, DAZARALOR },	-- Horde
								{ 51.0, 88.8, DAZARALOR },	-- Horde
							},
							["_drop"] = { "r" },	-- API claims this is Horde-only, but it's neutral
						}),
						q(55519, {	-- A Fresh Trauma
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.2, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuests"] = {
								56261,	-- Return to the Heart (A)
								55522,	-- Return to the Heart (H)
							},
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
						}),
						q(55497, {	-- A Friendly Face
							["provider"] = { "n", 152385 },	-- Highmountain Shaman (Ebonhorn)
							["coord"] = { 18.9, 58.0, 1472 },	-- The Dragon's Spine
							["sourceQuest"] = 55425,	-- Dominating the Indomitable
						}),
						q(56374, {	-- A Titanic Problem
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 58506,	-- Network Diagnostics
						}),
						q(57524, {	-- Accessing the Archives
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
						}),
						q(55732, {	-- An Old Scar
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.2, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuests"] = {
								56262,	-- Back to the Chamber (A)
								55739,	-- Back to the Chamber (H)
								55521,	-- Do It the Azerite Way
							},
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["maps"] = { 1474 },	-- Maelstrom (Scenario)
						}),
						q(55737, {	-- At the Azerite Time
							["provider"] = { "n", 152815 },	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },	-- Maelstrom (Scenario)
							["sourceQuest"] = 55735,	--	Defending the Maelstrom
						}),
						q(56162, {	-- Back Out to Sea (A)
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["races"] = ALLIANCE_ONLY,
							["sourceQuest"] = 57010,	-- Harnessing the Power
						}),
						q(56161, {	-- Back Out to Sea (H)
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["races"] = HORDE_ONLY,
							["sourceQuest"] = 57010,	-- Harnessing the Power
						}),
						q(56262, {	-- Back to the Chamber (A)
							["provider"] = { "n", 154464 },	-- Earthen Guardian
							["coord"] = { 74.8, 15.2, BORALUS },
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = ALLIANCE_ONLY,
							["DisablePartySync"] = true,
						}),
						q(55739, {	-- Back to the Chamber (H)
							["provider"] = { "n", 154465 },	-- Earthen Guardian
							["coords"] = {
								-- #if BEFORE SHADOWLANDS
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = HORDE_ONLY,
							["DisablePartySync"] = true,
						}),
						q(55397, {	-- Before I Wake
							["provider"] = { "n", 151825 },	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["sourceQuest"] = 55465,	-- We Must Go Deeper
						}),
						q(57290, {	-- Beginning the Descent
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57222,	-- Investigating the Halls
							["cost"] = { { "i", 171219, 1 } },	-- Corrupt Black Dragonscales
							["g"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6272,	-- Rank 1 Appearance
								}),
								i(171219),	-- Corrupt Black Dragonscales (QI!)
								i(172072),	-- Experimental Vial
							},
						}),
						q(56187, {	-- Black Winged Shadow
							["provider"] = { "n", 154500 },	-- Left
							["coord"] = { 54.5, 72.5, THE_VEILED_STAIR },
							["sourceQuest"] = 56186,	-- Spies to the Left and Right
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(170483),	-- Torn Journal Page #16 (QI!)
							},
						}),
						q(55407, {	-- Calming the Spine
							["provider"] = { "n", 151695 },	-- Spiritwalker Ebonhorn
							["coord"] = { 27.0, 45.9, 1472 },	-- The Dragon's Spine
							["sourceQuest"] = 55400,	-- Take My Hand
						}),
						q(58991, {	-- Curious Corruption
							["description"] = "Automatically granted when you get your first corrupted item.",
							["altQuests"] = { 59000 },	-- Elements of Corruption
							["timeline"] = { REMOVED_9_1_0 },
						}),
						q(57362, {	-- Deeper Into the Darkness
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57290,	-- Beginning the Descent
						}),
						q(55735, {	-- Defending the Maelstrom
							["provider"] = { "n", 152815 },	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },	-- Maelstrom (Scenario)
							["sourceQuest"] = 55732,	-- An Old Scar
						}),
						q(57373, {	-- Descending Into Madness
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57362,	-- Deeper Into the Darkness
							["g"] = {
								-- Plate
								i(173821),	-- Malignant Leviathan's Clasp
								i(173455),	-- Malignant Leviathan's Stompers
								-- Mail
								i(173447),	-- Nefarious Tormentor's Footguards
								i(173818),	-- Nefarious Tormentor's Girdle
								-- Leather
								-- Cloth
								i(173812),	-- Vile Manipulator's Cord
								i(173431),	-- Vile Manipulator's Footwraps
							},
						}),
						q(55521, {	-- Do It the Azerite Way
							["provider"] = { "n", 152095 },	-- Magni Bronzebeard
							["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
							["sourceQuest"] = 55520,	-- Healing Nordrassil
							["g"] = {
								n(152095, {	-- Magni Bronzebeard
									["description"] = "This is a terrible experience if you are working through content chronologically, as you cannot circumvent this phased version of Nordrassil.\n\nYou have to get started with Battle for Azeroth, get access to Chamber of Heart in Silithus: The Wound, and reach Heart of Azeroth power level 55. Then you can pick up 'A Fresh Trauma' from Magni in Chamber of Heart and return to Nordrassil for the short questline.",
								}),
							},
						}),
						q(55425, {	-- Dominating the Indomitable
							["provider"] = { "n", 152385 },	-- Spiritwalker Ebonhorn
							["coord"] = { 17.5, 62.1, 1472 },	-- The Dragon's Spine
							["sourceQuest"] = 55407,	-- Calming the Spine
							["g"] = {
								i(167830),	-- Petrified Ebony Scale (QI!)
							},
						}),
						q(55395, {	-- Don't Close Your Eyes
							["provider"] = { "n", 151704 },	-- Valithria Dreamwalker
							["coord"] = { 27.1, 55.9, 1471 },	-- Emerald Dreamway
							["sourceQuest"] = 55392,	-- Enter the Dreamway
						}),
						q(59000, {	-- Elements of Corruption
							["sourceQuests"] = { 56377 },    -- Forging Onward
							["altQuests"] = { 58991 },	-- Curious Corruption
							["provider"] = { "n", 155496 },    -- Wrathion
							["coord"] = { 46.6, 64.6, REPAIRED_CHAMBER_OF_HEART },
						}),
						q(55392, {	-- Enter the Dreamway
							["provider"] = { "n", 151682 },	-- Merithra of the Dream
							["coord"] = { 51.6, 57.2, VALSHARAH },
							["sourceQuest"] = 55390,	-- In Darkness, I Dream
							["maps"] = { 1471 },	-- Emerald Dreamway
						}),
						q(57010, {	-- Harnessing the Power
							["provider"] = { "n", 152194 },	-- MOTHER
							["coord"] = { 48.0, 72.2, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuest"] = 55618,	-- The Heart Forge
							["g"] = {
								i(168611),	-- Petrified Ebony Scale [Rank 1] (QI!)
							},
						}),
						q(55520, {	-- Healing Nordrassil
							["provider"] = { "n", 152095 },	-- Magni Bronzebeard
							["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
							["sourceQuest"] = 55519,	-- A Fresh Trauma
						}),
						q(55390, {	-- In Darkness, I Dream
							["provider"] = { "n", 152365 },	-- Kalecgos
							["coord"] = { 52.5, 69.9, REPAIRED_CHAMBER_OF_HEART },
							["description"] = "Your Heart of Azeroth needs to be 54 to start the questline.",
						}),
						q(55657, {	-- In the Shadow of Crimson Wings
							["provider"] = { "n", 152720 },	-- Kalecgos
							["coord"] = { 36.0, 50.5, TWILIGHT_HIGHLANDS },
							["sourceQuest"] = 56167,	-- Investigating the Highlands
							["maps"] = {
								1476,	-- Twilight Highlands (Szenario)
							},
							["g"] = {
								i(168280),	-- Lost Scale of the Scarlet Broodmother (QI!)
								i(168613),	-- Tempered Scale of the Scarlet Broodmother
							},
						}),
						q(52428, {	-- Infusing the Heart
							["qgs"] = {
								130216,	-- Magni Bronzebeard
								136907,	-- Magni Bronzebeard
							},
							["coords"] = {
								{ 42.2, 44.3, SILITHUS },
								{ 50.3, 54.4, CHAMBER_OF_HEART },
							},
							["sourceQuest"] = 51211,	-- The Heart of Azeroth
							["g"] = {
								i(159671),	-- Silithus Portal Stone (QI!)
								i(160909),	-- Crown of the Champion
								i(160913),	-- Crown of the Champion
								i(160917),	-- Mantle of the Champion
								i(160921),	-- Mantle of the Champion
								i(159908),	-- Robes of the Champion
								i(159904),	-- Robes of the Champion
								i(160911),	-- Cowl of the Champion
								i(160907),	-- Cowl of the Champion
								i(160915),	-- Shoulderguards of the Champion
								i(160919),	-- Shoulderguards of the Champion
								i(159902),	-- Vest of the Champion
								i(159906),	-- Vest of the Champion
								i(160908),	-- Helm of the Champion
								i(160912),	-- Helm of the Champion
								i(160920),	-- Spaulders of the Champion
								i(160916),	-- Spaulders of the Champion
								i(159907),	-- Mail of the Champion
								i(159903),	-- Mail of the Champion
								i(160910),	-- Greathelm of the Champion
								i(160906),	-- Greathelm of the Champion
								i(160914),	-- Pauldrons of the Champion
								i(160918),	-- Pauldrons of the Champion
								i(159901),	-- Breastplate of the Champion
								i(159905),	-- Breastplate of the Champion
							},
						}),
						q(58631, {	-- Into Dreams
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 58615,	-- Whispers in the Dark
						}),
						q(57374, {	-- Into the Darkest Depths
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 58634,	-- Opening the Gateway
							["g"] = {
								currency(1719),	-- Corrupted Memento
							},
						}),
						q(56167, {	-- Investigating the Highlands
							["provider"] = { "n", 152365 },	-- Kalecgos
							["coord"] = { 53.1, 70.9, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuest"] = 55398,	-- The Long Awake
							["description"] = "Your Heart of Azeroth needs to be 60 to start the questline.",
						}),
						q(56536, {	-- It's Never Easy
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 56377,	-- Forging Onward
						}),
						q(58876,	-- Lost Flight
						bubbleDownSelf({["timeline"] = { ADDED_7_3_5, REMOVED_9_0_2_LAUNCH }}, {
							["provider"] = { "i", 174863 },	-- Spawn of Vexiona
							["g"] = {
								i(174862),	-- Uncorrupted Voidwing (MOUNT!)
							},
						})),
						q(58737, {	-- Magni's Findings
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 56542,	-- Restored Hope
						}),
						q(55533, {	-- MOTHER Knows Best
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							--["sourceQuest"] = 55851,	-- Essential Empowerment -- available without this, and it isn't a breadcrumb. Possibly tied to "A Way Home" in nazjatar?
						}),
						q(58506, {	-- Network Diagnostics
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuests"] = {
								58502,	-- Where the Heart Is (A)
								58583,	-- Where the Heart Is (H)
							},
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55393, {	-- Null the Void
							["provider"] = { "n", 151693 },	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["sourceQuest"] = 55392,	-- Enter the Dreamway
						}),
						q(58632, {	-- Ny'alotha, the Waking City: The Corruptor's End
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 58631,	-- Into Dreams
						}),
						q(56189, {	-- On the Trail of the Black Prince
							["provider"] = { "n", 154870 },	-- Slain Blacktalon Lookout
							["coord"] = { 47.0, 69.2, DEADWIND_PASS },
							["sourceQuest"] = 56188,	-- To the Catacombs!
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(170490),	-- Torn Journal Page #58 (QI!)
								i(170491),	-- Burnt Journal Page
							},
						}),
						q(58634, {	-- Opening the Gateway
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57373,	-- Descending Into Madness
						}),
						q(57220, {	-- Power Protocol Initiation
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 58737,	-- Magni's Findings
						}),
						q(57221, {	-- Re-Origination
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["sourceQuest"] = 57220,	-- Power Protocol Initiation
						}),
						q(57394, {	-- Reconstructing "Fear and Flesh" (Rank 7)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57393,	-- Stepping Through the Darkness
							["cost"] = { { "i", 174783, 2 } },	-- Torn Page of "Fear and Flesh"
							["g"] = {
								i(171354),	-- Horrific Core
							},
						}),
						q(57395, {	-- Reconstructing "Fear and Flesh" (Rank 8)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57394,	-- Reconstructing "Fear and Flesh"
							["cost"] = { { "i", 174783, 2 } },	-- Torn Page of "Fear and Flesh"
							["g"] = {
								i(171354),	-- Horrific Core
							},
						}),
						q(57396, {	-- Reconstructing "Fear and Flesh" (Rank 9)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57395,	-- Reconstructing "Fear and Flesh"
							["cost"] = { { "i", 174783, 4 } },	-- Torn Page of "Fear and Flesh"
							["g"] = {
								i(171354),	-- Horrific Core
							},
						}),
						q(57403, {	-- Reconstructing "Fear and Flesh" (Rank 10)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57396,	-- Reconstructing "Fear and Flesh"
							["cost"] = { { "i", 174783, 4 } },	-- Torn Page of "Fear and Flesh"
							["g"] = {
								i(171354),	-- Horrific Core
							},
						}),
						q(57397, {	-- Reconstructing "Fear and Flesh" (Rank 11)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57403,	-- Reconstructing "Fear and Flesh"
							["cost"] = { { "i", 174783, 4 } },	-- Torn Page of "Fear and Flesh"
							["g"] = {
								i(171354),	-- Horrific Core
							},
						}),
						q(57391, {	-- Reconstructing "The Curse of Stone" (Rank 3)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57378,	-- Remnants of a Shattered World
							["cost"] = { { "i", 171353, 1 } },	-- Torn Page of "The Curse of Stone"
							["g"] = {
								i(171335),	-- Corrupting Core
							},
						}),
						q(57392, {	-- Reconstructing "The Curse of Stone" (Rank 4)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57391,	-- Reconstructing "The Curse of Stone"
							["cost"] = { { "i", 171353, 1 } },	-- Torn Page of "The Curse of Stone"
							["g"] = {
								i(171335),	-- Corrupting Core
							},
						}),
						q(57402, {	-- Reconstructing "The Curse of Stone" (Rank 5)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57392,	-- Reconstructing "The Curse of Stone"
							["cost"] = { { "i", 171353, 1 } },	-- Torn Page of "The Curse of Stone"
							["g"] = {
								i(171335),	-- Corrupting Core
							},
						}),
						q(57399, {	-- Reconstructing "The Final Truth" (Rank 13)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57398,	-- Walking in the Darkness
							["cost"] = { { "i", 174785, 2 } },	-- Torn Page of "The Final Truth"
							["g"] = {
								i(171355),	-- Voidborn Core
							},
						}),
						q(57400, {	-- Reconstructing "The Final Truth" (Rank 14)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57399,	-- Reconstructing "The Final Truth" (Rank 13)
							["cost"] = { { "i", 174785, 2 } },	-- Torn Page of "The Final Truth"
							["g"] = {
								i(171355),	-- Voidborn Core
							},
						}),
						q(57401, {	-- Reconstructing "The Final Truth" (Rank 15)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57400,	-- Reconstructing "The Final Truth"  (Rank 14)
							["cost"] = { { "i", 174785, 2 } },	-- Torn Page of "The Final Truth"
							["g"] = {
								i(171355),	-- Voidborn Core
							},
						}),
						q(57378, {	-- Remnants of a Shattered World (Rank 2)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
							["cost"] = { { "i", 174777, 1 } },	-- The Curse of Stone
							["g"] = {
								i(171335),	-- Corrupting Core
							},
						}),
						q(56261, {	-- Return to the Heart (A)
							["provider"] = { "n", 154464 },	-- Earthen Guardian <Messenger of the Speaker>
							["coord"] = { 74.8, 15.2, BORALUS },
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = ALLIANCE_ONLY,
							["DisablePartySync"] = true,
						}),
						q(55522, {	-- Return to the Heart (H)
							["provider"] = { "n", 154465 },	-- Earthen Guardian <Messenger of the Speaker>
							["coords"] = {
								-- #if BEFORE SHADOWLANDS
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = HORDE_ONLY,
							["DisablePartySync"] = true,
						}),
						q(56190, {	-- Save Ebonhorn
							["provider"] = { "n", 155191 },	-- Potion of Mental Clarity
							["coord"] = { 69.4, 16.6, 46 },	-- Karazhan Catacombs
							["sourceQuest"] = 56189,	-- On the Trail of the Black Prince
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(169653),	-- Potion of Mental Clarity (QI!)
							},
						}),
						q(55394, {	-- Shards of Emerald
							["provider"] = { "n", 151693 },	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["sourceQuest"] = 55392,	-- Enter the Dreamway
							["g"] = {
								i(167802),	-- Emerald Shard (QI!)
							},
						}),
						q(56186, {	-- Spies to the Left and Right
							["provider"] = { "n", 152365 },	-- Kalecgos
							["coord"] = { 52.4, 68.9, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuests"] = {
								56185,	-- Whispers of N'zoth (A)
								56267,	-- Whispers of N'zoth (H)
							},
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(170471),	-- Torn Journal Page #7 (QI!)
							},
						}),
						q(57393, {	-- Stepping Through the Darkness (Rank 6)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57402,	-- Reconstructing "The Curse of Stone"
							["cost"] = { { "i", 174782, 1 } },	-- Fear and Flesh
							["g"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6277,	-- (Rank 6 Appearance)
								}),
								i(171354),	-- Horrific Core
							},
						}),
						q(55400, {	-- Take My Hand
							["provider"] = { "n", 151641 },	-- Spiritwalker Ebonhorn
							["coord"] = { 49.4, 68.3, HIGHMOUNTAIN },
							["sourceQuest"] = 55374,	-- A Disurbance Beneath the Earth
						}),
						q(53406, {	-- The Chamber of Heart (third HoA upgrade)
							["qg"] = 130216,	-- Magni Bronzebeard
							["sourceQuest"] = 53405,	-- Unlocking the Heart's Potential
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth.  You can pick it up once one of your characters reaches Revered with Champions of Azeroth.",
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(55618, {	-- The Heart Forge
							["provider"] = { "n", 152194 },	-- MOTHER
							["coord"] = { 48.1, 72.4, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuest"] = 55497,	-- A Friendly Face
							["g"] = {
								i(168611),	-- Petrified Ebony Scale
							},
						}),
						q(51211, {	-- The Heart of Azeroth
							["qg"] = 130216,	-- Magni Bronzebeard
							["sourceQuests"] = {
								52946,	-- A Dying World (A)
								53028,	-- A Dying World (A/H)
							},
							["coord"] = { 42.2, 44.2, SILITHUS },
							["timeline"] = { ADDED_8_0_1 },
							["groups"] = {
								i(159671),	-- Silithus Portal Stone (QI!)
								i(158075, {	-- Heart of Azeroth
									["timeline"] = { ADDED_8_0_1 },
								}),
							},
						}),
						q(50973, {	-- The Heart's Power (first HoA upgrade)
							["qg"] = 130216,	-- Magni Bronzebeard
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth.  You can pick it up once one of your characters reaches Friendly with Champions of Azeroth.",
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(55398, {	-- The Long Awake
							["provider"] = { "n", 151887 },	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["sourceQuest"] = 55396,	-- The Stuff Dreams Are Made Of
						}),
						q(56537, {	-- The Mysterious Sigil
							["coord"] = { 59.6, 39.1, KUN_LAI_SUMMIT },
							["provider"] = { "n", 155336 },	-- Mogu Warrior
							["sourceQuest"] = 56536,	-- It's Never Easy
						}),
						q(51403, {	-- The Speaker's Imperative (A)
							-- TODO: likely this is technically a breadcrumb as well, if someone tests heading to Stormwind after receiving their neck and not picking this up...
							["provider"] = { "n", 136907 },	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["sourceQuest"] = 52428,	-- Infusing the Heart
							["races"] = ALLIANCE_ONLY,
						}),
						q(53031, {	-- The Speaker's Imperative (H)
							-- was unable to enter the chamber to acquire this quest once i left the chamber of heart after receiving my neck
							["isBreadcrumb"] = true,
							["provider"] = { "n", 136907 },	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["sourceQuest"] = 52428,	-- Infusing the Heart
							["races"] = HORDE_ONLY,
						}),
						q(55396, {	-- The Stuff Dreams Are Made Of
							["provider"] = { "n", 151825 },	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["sourceQuest"] = 55397,	-- Before I Wake
							["g"] = {
								i(167831),	-- Emerald Shards (QI!)
								i(168612),	-- Dreamglow Dragonscale
								i(167875),	-- Reforged Dreamglow Dragonscale (QI!)
							},
						}),
						q(61872, {	-- To Current Matters (A)
							["sourceQuests"] = { 54964 },	-- A One-Way Ticket to the Heart
							["isBreadcrumb"] = true,
							["provider"] = { "n", 136907 },	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_9_0_2_LAUNCH },
							["lockCriteria"] = { 1, "questID", 56043 },	-- Send the Fleet
							["DisablePartySync"] = true,
							["description"] = "This quest becomes available after completing 'A One-Way Ticket to the Heart' and unlocking the three outposts through the War Campaign, and becomes unavailable after setting foot in Nazjatar.",
						}),
						q(61871, {	-- To Current Matters (H)
							["sourceQuests"] = { 54964 },	-- A One-Way Ticket to the Heart
							["isBreadcrumb"] = true,
							["provider"] = { "n", 136907 },	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_9_0_2_LAUNCH },
							["lockCriteria"] = { 1, "questID", 56044 },	-- Send the Fleet
							["DisablePartySync"] = true,
							["description"] = "This quest becomes available after completing 'A One-Way Ticket to the Heart' and unlocking the three outposts through the War Campaign, and becomes unavailable after setting foot in Nazjatar.",
						}),
						q(56188, {	-- To the Catacombs!
							["provider"] = { "n", 154874 },	-- Blacktalon Watcher
							["coord"] = { 47.8, 68.8, EASTERN_KINGDOMS },	-- Burning Steppes, outside BWD
							["sourceQuest"] = 56187,	-- Black Winged Shadow
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(170486),	-- Torn Journal Page #25 (QI!)
							},
						}),
						q(53405, {	-- Unlocking the Heart's Potential (second HoA upgrade)
							["qg"] = 130216,	-- Magni Bronzebeard
							["sourceQuest"] = 50973,	-- The Heart's Power
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth.  You can pick it up once one of your characters reaches Honored with Champions of Azeroth.",
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(56263, {	-- Unlocking the Power (A)
							["provider"] = { "n", 154464 },	-- Earthen Guardian
							["coord"] = { 74.8, 15.2, BORALUS },
							["description"] = "Your Heart of Azeroth needs to be 70 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = ALLIANCE_ONLY,
							["DisablePartySync"] = true,
						}),
						q(56260, {	-- Unlocking the Power (H)
							["provider"] = { "n", 154464 },	-- Earthen Guardian
							["coords"] = {
								-- #if BEFORE SHADOWLANDS
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["description"] = "Your Heart of Azeroth needs to be 70 to start the questline.",
							["isBreadcrumb"] = true,
							["races"] = HORDE_ONLY,
							["DisablePartySync"] = true,
						}),
						o(324407, {	-- Void Roots
							["questID"] = 55467,
							["coord"] = { 61.9, 94.6, 1475 },	-- The Emerald Dream
							["collectible"] = false,
							["g"] = {
								i(167873),	-- Remnant of the Void
							},
						}),
						q(57398, {	-- Walking in the Darkness (Rank 12)
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["provider"] = { "n", 155496 },	-- Wrathion
							["sourceQuest"] = 57397,	-- Reconstructing "Fear and Flesh"
							["cost"] = { { "i", 174784, 1 } },	-- The Final Truth
							["g"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6283,	-- (Rank 12 Appearance)
								}),
								i(171355),	-- Voidborn Core
							},
						}),
						q(55465, {	-- We Must Go Deeper
							["provider"] = { "n", 151693 },	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["sourceQuests"] = {
								55393,	-- Null the Void
								55394,	-- Shards of Emerald
								55395,	-- Don't Close Your Eyes
							},
							["maps"] = {
								1475,	-- The Emerald Dream
							},
							["g"] = {
								i(167831),	-- Emerald Shards (QI!)
							},
						}),
						q(55752, {	-- We Stand United
							["provider"] = { "n", 152206 },	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },
							["sourceQuest"] = 56401,	-- A Bolt from the Blue
							["g"] = {
								i(169768),	-- Heart of a Champion (TOY!)
								i(169292),	-- Charged Scale of the Blue Aspect (QI!)
							},
						}),
						q(58615, {	-- Whispers in the Dark
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },	-- technicaly 1604?
							["provider"] = { "n", 161805 },	-- Magni Bronzebeard
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
						}),
						q(56185, {	-- Whispers of N'zoth (A)
							["qgs"] = {
								-- #IF AFTER 9.2
								155496,	-- Wrathion
								-- #ELSE
								154464,	-- Earthen Guardian
								-- #ENDIF
							},
							["coords"] = {
								-- #IF AFTER 9.2
								{ 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
								{ 85.3, 32.3, STORMWIND_CITY },
								-- #ELSE
								{ 74.9, 15.1, BORALUS },
								-- #ENDIF
							},
							-- #if BEFORE 9.2
							["sourceQuest"] = 57002,	-- Old Soldier
							["description"] = "This quest requires finishing the War Campaign and defeating Azshara on any difficulty.",
							-- #ENDIF
							["races"] = ALLIANCE_ONLY,
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
						}),
						q(56267, {	-- Whispers of N'zoth (H)
							["qgs"] = {
								-- #IF AFTER 9.2
								155496,	-- Wrathion
								-- #ELSE
								154465,	-- Earthen Guardian
								-- #ENDIF
							},
							["coords"] = {
								-- #IF AFTER 9.2
								{ 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
								-- #ELSE
								{ 51.0, 88.8, DAZARALOR },
								-- #ENDIF
							},
							-- #if BEFORE 9.2
							["sourceQuests"] = {
								-- #IF AFTER 9.2
								-- Available without completing:
								-- 55519,	-- A Fresh Trauma
								-- 55390,	-- In Darkness, I Dream
								-- 57374,	-- Into the Darkest Depths
								-- 57276,	-- Maintaining Focus (H)
								-- 56260,	-- Unlocking the Power (H)

								-- reported as available after completing this quest, but is available on my alts without completing this quest...
								-- 53127,	-- The Lord Admiral's Lament
								-- #ELSE
								57095,	-- Old Soldier
								57152,	-- Most Loyal (Sylvanas Version)
								-- #ENDIF
							},
							-- #endif
							-- #IF BEFORE 9.2
							["description"] = "This quest requires finishing the War Campaign and defeating Azshara on any difficulty.",
							-- #ENDIF
							["races"] = HORDE_ONLY,
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
						}),
						q(56504, {	-- Wrathion's Journal
							["provider"] = { "n", 151964 },	-- Spiritwalker Ebonhorn
							["coord"] = { 46.3, 67.2, REPAIRED_CHAMBER_OF_HEART },
							["sourceQuest"] = 56190,	-- Save Ebonhorn
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["g"] = {
								i(170493),	-- Wrathion's Journal (QI!)
							},
						}),
					}),
					n(VENDORS, {
						n(130216, {	-- Magni Bronzebeard
							["coord"] = { 42.2, 44.2, SILITHUS },
							["g"] = {
								i(161555, {	-- Azerothian Champion's Crown
									["cost"] = 22500000,	-- 2,250g
								}),
								i(161560, {	-- Azerothian Champion's Spaulders
									["cost"] = 22500000,	-- 2,250g
								}),
								i(160544, {	-- Champions of Azeroth Tabard
									["cost"] = 6250000,	-- 625g
								}),
								i(160537, {	-- Drape of the Azerothian Champion
									["cost"] = 11000000,	-- 1,100g
								}),
								i(163555, {	-- Azerite Puddle (PET!)
									["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
								}),
								i(161563, {	-- Helm of the Azerothian Champion
									["cost"] = 22500000,	-- 2,250g
								}),
								i(163515, {	-- Azeriti (PET!)
									["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
								}),
								i(161557, {	-- Vest of the Azerothian Champion
									["cost"] = 22500000,	-- 2,250g
								}),
							},
						}),
						n(152194, {	-- MOTHER
							["description"] = "MOTHER sells rank 3 essences for Echoes of Ny'alotha provided you have obtained them through other means on your account on at least one character.",
							["coord"] = { 48.2, 72.5, REPAIRED_CHAMBER_OF_HEART },
							["g"] = {
								i(173363, {	-- Vessel of Horrific Visions
									["cost"] = { { "c", 1803, 1750 }, },	-- 1750 Echoes of Ny'alotha
								}),
								i(175062, {	-- Malefic Core
									["cost"] = { { "c", 1803, 2000 } },	-- 2000 Echoes of Ny'alotha
								}),
								i(168839, {	-- Regenerating Barrier of the Depths
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168559, {	-- Fetish of the Hidden Labyrinths
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168922, {	-- Azerite-Fueled Timequartz
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168537, {	-- Tempered Azerite Formation
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168444, {	-- Churning Blood of the Conquered
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(173282, {	-- Token of Death's Glee
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168856, {	-- Resonating Elemental Heart
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(169900, {	-- Rib-Bone Choker of Dominance
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168622, {	-- Stabilizing Lens of the Focusing Iris
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168926, {	-- Lingering Seed of Renewal
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168848, {	-- Pearl of Perspicuous Intentions
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168568, {	-- Null Force Nullifier
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 }, },	-- 2500 Echoes of Ny'alotha
								}),
								i(168860, {	-- Enhanced Purification Protocols
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168852, {	-- Stalwart Battlefield Memento
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(173290, {	-- Quickening Azerite Geode
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168580, {	-- Sphere of Leeched Mobility
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168440, {	-- Gleaming Star Shard
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(173310, {	-- Manual of Unbalanced Tactics
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168613, {	-- Tempered Scale of the Scarlet Broodmother
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168930, {	-- Tome of the Quickening Tides
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(173885, {	-- Volatile Void Droplet
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168865, {	-- Polarized Azerite Slivershards
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168934, {	-- Calibrated Existence Gauge
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168575, {	-- Branch of Rejuvenating Rings
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168938, {	-- Ward of Mutual Aid
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168844, {	-- Perfection-Enhancing Gearbox
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168943, {	-- Grid of Bursting Vitality
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
								i(168617, {	-- Fluctuating Worldvein
									["modID"] = 14,
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
								}),
							},
						}),
						n(155496, {	-- Wrathion
							["coord"] = { 46.2, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["g"] = {
								i(173363, {	-- Vessel of Horrific Visions
									["cost"] = { { "c", 1755, 10000 }, },	-- 10,000 Coalescing Visions
								}),
								i(173291, {	-- Luminous Azerite Geode (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
									["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
								}),
								i(173311, {	-- Resplendent Warden's Badge (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["classes"] = TANKS,
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
									["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
								}),
								i(168940, {	-- Ward of Unimaginable Brilliance (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["classes"] = HEALERS,
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
									["timeline"] = { ADDED_8_3_0, REMOVED_9_0_1 },
								}),
								i(174876, {	-- Gouged Eye of N'Zoth
									["cost"] = { { "c", 1719, 25000 }, },	-- 25,000 Corrupted Mementos
								}),
								i(174361, {	-- Black Dragonscale Backpack
									["cost"] = { { "c", 1719, 5000 }, },	-- 5,000 Corrupted Mementos
								}),
								i(174770, {	-- Wicked Swarmer (MOUNT!)
									["modelScale"] = 1.5,
									["cost"] = { { "c", 1719, 100000 }, },	-- 100,000 Corrupted Mementos
								}),
							},
						}),
					}),
				},
			}),
			n(QUESTS, {
				q(50373, {	-- A Recent Arrival
					["qg"] = 131963,	-- Nolan Speed
					["sourceQuest"] = 50228,	-- The Twilight Survivor
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50229, {	-- A Wee Bit O' Cloth
					["provider"] = { "o", 280948 },	-- Twilight Outhouse
					["coord"] = { 29.6, 69.6, SILITHUS },
					["g"] = {
						i(156797),	-- Twilight Silk (QI!)
					},
				}),
				q(50372, {	-- Desert Research (A)
					["qg"] = 131963,	-- Nolan Speed
					["sourceQuests"] = {
						50047,	-- Free Samples
						50046,	-- It's a Sabotage
					},
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50358, {	-- Desert Research (H)
					["qg"] = 132147,	-- Grol Warblade
					["sourceQuest"] = 50053,	-- Lazy Prospectors
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50047, {	-- Free Samples
					["qg"] = 131963,	-- Nolan Speed
					["sourceQuest"] = 49981,	-- Witness to the Wound
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(156711),	-- Mysterious Ore (QI!)
					},
				}),
				q(50046, {	-- It's a Sabotage
					["qg"] = 130030,	-- Kelsey Steelspark
					-- #if BEFORE 8.0.1
					["sourceQuest"] = 49981,	-- Witness to the Wound
					-- #endif
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50360, {	-- Khadgar's Request
					["qg"] = 132147,	-- Grol Warblade
					["sourceQuest"] = 50232,	-- The Twilight Survivor
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50227, {	-- Larvae By The Dozen (A)
					["qg"] = 132606,	-- Tammy Tinkspinner
					["sourceQuest"] = 50372,	-- Desert Research (A)
					["coord"] = { 69.4, 19.0, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(156795),	-- Silithid Broodling (QI!)
					},
				}),
				q(50231, {	-- Larvae By The Dozen (H)
					["qg"] = 132040,	-- Pixni Rustbomb
					["sourceQuest"] = 50358,	-- Desert Research (H)
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(156795),	-- Silithid Broodling (QI!)
					},
				}),
				q(50053, {	-- Lazy Prospectors
					["qg"] = 132147,	-- Grol Warblade
					["sourceQuest"] = 49982,	-- Witness to the Wound
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50052, {	-- No Spies Allowed
					["qg"] = 132045,	-- Gizmax Greasebolt
					["sourceQuest"] = 49982,	-- Witness to the Wound
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50374, {	-- The Blood of Azeroth (A)
					["qg"] = 130216,	-- Magni Bronzebeard
					["sourceQuest"] = 50049,	-- The Speaker's Perspective (A)
					["coord"] = { 42.2, 44.2, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50364, {	-- The Blood of Azeroth (H)
					["qg"] = 130216,	-- Magni Bronzebeard
					["sourceQuest"] = 50055,	-- The Speaker's Perspective (H)
					["coord"] = { 42.5, 44.2, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50057, {	-- The Power in Our Hands
					["qg"] = 133388,	-- Magni Bronzebeard
					["sourceQuests"] = {
						50300,	-- The Speaker's Call
						50056,	-- The Speaker's Call
					},
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["groups"] = {
						ach(12071, {	-- Crucible's Promise
							["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
						}),
					},
				}),
				q(50048, {	-- The Seething Shore (A)
					["sourceQuest"] = 50372,	-- Desert Research (A)
					["maps"] = { 907 },	-- Seething Shore
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,	-- TODO: Check this, notes are saying "do Antorus" and it will become available.
				}),
				q(50054, {	-- The Seething Shore (H)
					["sourceQuest"] = 50358,	-- Desert Research (H)
					["maps"] = { 907 },	-- Seething Shore
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,	-- TODO: Check this, notes are saying "do Antorus" and it will become available.
				}),
				q(50226, {	-- The Source of Power (A)
					["qg"] = 132606,	-- Tammy Tinkspinner
					["sourceQuest"] = 50372,	-- Desert Research (A)
					["coord"] = { 69.4, 19.0, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(156794),	-- Silithid Brain (QI!)
					},
				}),
				q(50230, {	-- The Source of Power (H)
					["qg"] = 132040,	-- Pixni Rustbomb
					["sourceQuest"] = 50358,	-- Desert Research (H)
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(156794),	-- Silithid Brain (QI!)
					},
				}),
				q(50056, {	-- The Speaker's Call (A)
					["qg"] = 131963,	-- Nolan Speed
					["sourceQuest"] = 50374,	-- The Blood of Azeroth (A)
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(50300, {	-- The Speaker's Call (H)
					["qg"] = 132147,	-- Grol Warblade
					["sourceQuest"] = 50364,	-- The Blood of Azeroth (H)
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(50049, {	-- The Speaker's Perspective (A)
					["qg"] = 130032,	-- Archmage Khadgar
					["sourceQuest"] = 50373,	-- A Recent Arrival
					["coord"] = { 68.9, 19.2, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50055, {	-- The Speaker's Perspective (H)
					["qg"] = 130033,	-- Archmage Khadgar
					["sourceQuest"] = 50360,	-- Khadgar's Request
					["coord"] = { 66.4, 56.8, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50228, {	-- The Twilight Survivor (A)
					["qg"] = 131963,	-- Nolan Speed
					["sourceQuests"] = {
						50047,	-- Free Samples
						50046,	-- It's a Sabotage
					},
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["g"] = {
						i(156796),	-- Michiel Voidstrider's Head (QI!)
					},
				}),
				q(50232, {	-- The Twilight Survivor (H)
					["qg"] = 132147,	-- Grol Warblade
					["sourceQuest"] = 50053,	-- Lazy Prospectors
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
					["g"] = {
						i(156796),	-- Michiel Voidstrider's Head (QI!)
					},
				}),
				q(49981, {	-- Witness to the Wound (A)
					["qg"] = 132255,	-- Master Mathias Shaw
					["sourceQuest"] = 49976,	-- Gifts of the Fallen
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(49982, {	-- Witness to the Wound (H)
					["qg"] = 132254,	-- Nathanos Blightcaller
					["sourceQuest"] = 50341,	-- A Recent Discovery
					["coord"] = { 49.8, 75.6, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(RARES, {
				n(132591, {	-- Ogmot the Mad
					["questID"] = 50334,
					["coord"] = { 28.9, 74.6, SILITHUS },
					["groups"] = {
						i(156852),	-- Ogmot's Dream Journal
					},
				}),
				n(132578, {	-- Qroshekx
					["questID"] = 50255,
					["coord"] = { 59.3, 11.4, SILITHUS },
					["isDaily"] = true,
					["groups"] = {
						i(156851),	-- Silithid Mini-Tank (PET!)
					},
				}),
				n(132580, {	-- Ssinkrix
					["questID"] = 50223,
					["coord"] = { 54.5, 79.8, SILITHUS },
					["isDaily"] = true,
					["groups"] = {
						i(156851),	-- Silithid Mini-Tank (PET!)
					},
				}),
				n(132584, {	-- Xaarshej
					["questID"] = 50224,
					["coord"] = { 29.5, 35.0, SILITHUS },
					["isDaily"] = true,
					["groups"] = {
						i(156851),	-- Silithid Mini-Tank (PET!)
					},
				}),
			}),
			n(VENDORS, {
				n(132139, {	-- Hagras Wartaker <Blacksmith> (Silithus)
					["coord"] = { 66.2, 55.2, SILITHUS },
					["sym"] = {
						{"sub", "common_recipes_vendor", 3356},	-- Sumi <Blacksmithing Supplies>
					},
					["races"] = HORDE_ONLY,
					["groups"] = {
						i(12162, {	-- Plans: Hardened Iron Shortsword (RECIPE!)
							["isLimited"] = true,
						}),
					},
				}),
				n(131837, {	-- Zannok Hidepiercer <Leatherworking Supplies>
					["coord"] = { 81.2, 18.4, SILITHUS },
					["sym"] = {
						{"select", "itemID", 137884 },    -- Pattern Dreadleather Bindings
						{"select", "itemID", 137890 },    -- Pattern Dreadleather Footpads
						{"select", "itemID", 137889 },    -- Pattern Dreadleather Gloves
						{"select", "itemID", 137891 },    -- Pattern Dreadleather Jerkin
						{"select", "itemID", 137888 },    -- Pattern Dreadleather Mask
						{"select", "itemID", 137887 },    -- Pattern Dreadleather Pants
						{"select", "itemID", 137886 },    -- Pattern Dreadleather Shoulderguard
						{"select", "itemID", 142407 },    -- Pattern Drums Of The Mountain
						{"select", "itemID", 137916 },    -- Pattern Gravenscale Armbands
						{"select", "itemID", 137921 },    -- Pattern Gravenscale Grips
						{"select", "itemID", 137923 },    -- Pattern Gravenscale Hauberk
						{"select", "itemID", 137919 },    -- Pattern Gravenscale Leggings
						{"select", "itemID", 137918 },    -- Pattern Gravenscale Spaulders
						{"select", "itemID", 137922 },    -- Pattern Gravenscale Treads
						{"select", "itemID", 137920 },    -- Pattern Gravenscale Warhelm
					},
				}),
			}),
		},
	}),
})));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.BFA, bubbleDownSelf({ ["timeline"] = { ADDED_8_3_0 } }, {
	m(KALIMDOR, {
		n(SILITHUS_THE_WOUND, {
			m(CHAMBER_OF_HEART, {
				q(59133),	-- Upgrading Ashjra'kamas from 122 -> 125 corruption
				q(59553),	-- Entering the Chamber of Heart for the first time
				q(57244),	-- triggered when turning in #55618, "The Heart Forge"
			}),
			n(EMISSARY_QUESTS, {
				q(54611),	-- Paragon of the Champions of Azeroth
			}),
			n(RARES, {
				q(50225),	-- first kill of Ogmot the Mad
			}),
		}),
	}),
})));