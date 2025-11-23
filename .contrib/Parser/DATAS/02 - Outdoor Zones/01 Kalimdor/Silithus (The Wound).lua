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
root(ROOTS.Zones, m(KALIMDOR, {
	n(SILITHUS_THE_WOUND, {
		["description"] = "The Wound was a mini pre-expansion event tailored around the aftermath of the wounding of Azeroth following the conclusion of the Antorus raid. Talk to Zidormi if you are stuck in the old Silithus.",
		-- This redirects the mini list to use this header instead when this quest is NOT active and the original mapID is the map that is is currently active
		["zone-artIDs"] = { 962 },
		["timeline"] = { ADDED_7_3_5 },
		["maps"] = { SILITHUS },
		["cr"] = 128607 ,	-- Zidormi
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
				["groups"] = {
					n(ACHIEVEMENTS, {
						ach(12955),		-- Champions of Azeroth
						pvp(ach(13775, {	-- Essence Overload
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								ach(13772),	-- Essence Essentials
								ach(13773),	-- Essence Gains
							},
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
						ach(13777, { ["timeline"] = { ADDED_8_2_0 }	}),	-- My Heart Container is Full
						ach(13771, {	-- Power Is Beautiful
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								ach(13769),	-- Power Up
								ach(13770),	-- Power Creep
							},
						}),
						ach(13998, { ["timeline"] = { ADDED_8_3_0 }	}),	-- Pure of Heart
						ach(14157, {	-- The Corruptor's End
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								crit(47209, {	-- Ny'alotha, the Waking City: The Corruptor's End
									["sourceQuest"] = 58632,	-- Ny'alotha, the Waking City: The Corruptor's End
								}),
							},
						}),
						ach(13572, {	-- The Heart Forge
							["timeline"] = { ADDED_8_2_0 },
							["sourceQuest"] = 55618,	-- The Heart Forge
						}),
					}),
					n(EMISSARY_QUESTS, {
						faction(FACTION_CHAMPIONS_OF_AZEROTH, {	-- Champions of Azeroth
							q(50562, {	-- Champions of Azeroth
								["coord"] = { 42.22, 44.27, SILITHUS },
								["isWorldQuest"] = true,
								["lvl"] = { 50 },
							}),
							q(54453, {	-- Supplies from Magni
								["qg"] = 130216,	-- Magni Bronzebeard
								["coord"] = { 42.22, 44.27, SILITHUS },
								["timeline"] = { ADDED_8_1_0 },
								["repeatable"] = true,
								["lvl"] = { 50 },
								["groups"] = {
									i(166298, {	-- Champions of Azeroth Supplies
										i(166877),	-- Azerite Firework Launcher (TOY!)
									}),
								},
							}),
						}),
					}),
					n(PROFESSIONS, bubbleDown({ ["timeline"] = { ADDED_8_3_0 } }, {
						-- Void Focus quests
						q(57275, {	-- Something in Your Mind
							["description"] = "Can be made with any crafting profession.",
							["provider"] = { "i", 171320 },	-- Void Focus
						}),
						q(57464, {	-- Maintaining Focus (A)
							["sourceQuest"] = 57275,	-- Something in Your Mind
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["cost"] = { { "i", 171176, 20 }, },	-- 20x Shred of Insanity
							["races"] = ALLIANCE_ONLY,
						}),
						q(57276, {	-- Maintaining Focus (H)
							["sourceQuest"] = 57275,	-- Something in Your Mind
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["cost"] = { { "i", 171176, 20 }, },	-- 20x Shred of Insanity
							["races"] = HORDE_ONLY,
						}),
						q(57462, {	-- Dream Catcher
							["sourceQuests"] = { 57276, 57464 },	-- Maintaining Focus (A, H)
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 63.9, REPAIRED_CHAMBER_OF_HEART },
							["cost"] = { { "i", 171176, 200 }, },	-- 200x Shred of Insanity
						}),
					})),
					n(QUESTS, {
						q(56401, {	-- A Bolt from the Blue
							["sourceQuests"] = {
								56263,	-- Unlocking the Power (A)
								56260,	-- Unlocking the Power (H)
							},
							["qg"] = 152365,	-- Kalecgos
							["coord"] = { 53.1, 70.9, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								i(169292),	-- Charged Scale of the Blue Aspect (QI!)
								i(168614), 	-- Charged Scale of the Blue Aspect
							},
						}),
						q(54938, {	-- A Brother's Help
							["description"] = "Once you complete 'The Chamber of Heart' in Silithus, you can pick this quest up from Magni, or it will be automatically offered when you return to your capital city.",
							["sourceQuest"] = 53406,	-- The Chamber of Heart
							["qgs"] = {
								130216,	-- Magni Bronzebeard
								-- #if AFTER 8.2.0
								152206,	-- Magni Bronzebeard
								-- #endif
							},
							["coords"] = {
								{ 42.1, 44.3, SILITHUS },
								{ 50.5, 59.9, REPAIRED_CHAMBER_OF_HEART },
							},
							["timeline"] = { ADDED_8_1_5 },
							-- This was removed during BfA in 8.2 but is now appearing again for characters leveling up during Shadowlands
						}),
						q(55374, {	-- A Disturbance Beneath the Earth
							["sourceQuest"] = 55533,	-- MOTHER Knows Best
							["qg"] = 152194,	-- MOTHER
							["coord"] = { 48.1, 72.2, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(52946, {	-- A Dying World (A)
							["sourceQuest"] = 51795,	-- The Battle for Lordaeron
							["qg"] = 142930,	-- Halford Wyrmbane
							["coord"] = { 27.7, 21.5, STORMWIND_CITY },
							["timeline"] = { ADDED_8_0_1, REMOVED_9_0_1 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(53028, {	-- A Dying World (A/H)
							["qgs"] = {
								154464,	-- Earthen Guardian (Alliance)
								154465,	-- Earthen Guardian (Horde)
							},
							["coords"] = {	-- i found it at the first one for Horde; apparently it can show up in both, but i'm not sure what governs which location it's available at
								{ 75.0, 15.0, BORALUS },	-- Alliance
								{ 50.3, 41.7, DAZARALOR },	-- Horde
								{ 51.0, 88.8, DAZARALOR },	-- Horde
							},
							["_drop"] = { "r" },	-- API claims this is Horde-only, but it's neutral
							-- originally removed, then hotfixed back in for 50 characters
							-- NOT Horde-only, this ID is offered in both Dazar'alor and Boralus. there used to be a separate ID for Alliance (52946), but it looks like that one was permanently removed.
							-- used to be able to be picked up in Orgrimmar from Nathanos, but that doesn't seem to be the case anymore. Nathanos is still in Org, but the only quest he offered to me at 50 was "Battle for Azeroth: Mission Statement," which i think originally took place after players had picked up the HoA - after completing "Mission Statement" i went back and Nathanos was no longer in that location in Orgrimmar
						}),
						q(55519, {	-- A Fresh Trauma
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
							["sourceQuests"] = {
								56261,	-- Return to the Heart (A)
								55522,	-- Return to the Heart (H)
							},
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.2, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(55497, {	-- A Friendly Face
							["sourceQuest"] = 55425,	-- Dominating the Indomitable
							["qg"] = 152385,	-- Highmountain Shaman (Ebonhorn)
							["coord"] = { 18.9, 58.0, 1472 },	-- The Dragon's Spine
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(56374, {	-- A Titanic Problem
							["sourceQuest"] = 58506,	-- Network Diagnostics
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(57524, {	-- Accessing the Archives
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55732, {	-- An Old Scar
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["sourceQuests"] = {
								56262,	-- Back to the Chamber (A)
								55739,	-- Back to the Chamber (H)
								55521,	-- Do It the Azerite Way
							},
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.2, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["maps"] = { 1474 },	-- Maelstrom (Scenario)
						}),
						q(55737, {	-- At the Azerite Time
							["sourceQuest"] = 55735,	-- Defending the Maelstrom
							["qg"] = 152815,	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },	-- Maelstrom (Scenario)
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(56162, {	-- Back Out to Sea (A)
							["sourceQuest"] = 57010,	-- Harnessing the Power
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["races"] = ALLIANCE_ONLY,
						}),
						q(56161, {	-- Back Out to Sea (H)
							["sourceQuest"] = 57010,	-- Harnessing the Power
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.0, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["races"] = HORDE_ONLY,
						}),
						q(56262, {	-- Back to the Chamber (A)
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["qg"] = 154465,	-- Earthen Guardian
							["coord"] = { 74.8, 15.2, BORALUS },
							["timeline"] = { ADDED_8_2_0 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(55739, {	-- Back to the Chamber (H)
							["description"] = "Your Heart of Azeroth needs to be 65 to start the questline.",
							["qg"] = 154465,	-- Earthen Guardian
							["coords"] = {
								-- #if BEFORE SL
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["timeline"] = { ADDED_8_2_0 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(55397, {	-- Before I Wake
							["sourceQuest"] = 55465,	-- We Must Go Deeper
							["qg"] = 151825,	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(57290, {	-- Beginning the Descent
							["sourceQuest"] = 57222,	-- Investigating the Halls
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["cost"] = { { "i", 171219, 1 } },	-- Corrupt Black Dragonscales
							["groups"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6272,	-- Rank 1 Appearance
								}),
								i(171219),	-- Corrupt Black Dragonscales (QI!)
								i(172072),	-- Experimental Vial
							},
						}),
						q(56187, {	-- Black Winged Shadow
							["sourceQuest"] = 56186,	-- Spies to the Left and Right
							["qg"] = 154500,	-- Left
							["coord"] = { 54.5, 72.5, THE_VEILED_STAIR },
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = {
								i(170483),	-- Torn Journal Page #16 (QI!)
								i(171348),	-- Torn Scroll of Unearthly Rituals
							},
						}),
						q(55407, {	-- Calming the Spine
							["sourceQuest"] = 55400,	-- Take My Hand
							["qg"] = 151695,	-- Spiritwalker Ebonhorn
							["coord"] = { 27.0, 45.9, 1472 },	-- The Dragon's Spine
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(58991, {	-- Curious Corruption
							["description"] = "Automatically granted when you get your first corrupted item.",
							["altQuests"] = { 59000 },	-- Elements of Corruption
							["timeline"] = { REMOVED_9_1_0 },
						}),
						q(57362, {	-- Deeper Into the Darkness
							["sourceQuest"] = 57290,	-- Beginning the Descent
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55735, {	-- Defending the Maelstrom
							["sourceQuest"] = 55732,	-- An Old Scar
							["qg"] = 152815,	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },	-- Maelstrom (Scenario)
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(57373, {	-- Descending Into Madness
							["sourceQuest"] = 57362,	-- Deeper Into the Darkness
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
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
							["sourceQuest"] = 55520,	-- Healing Nordrassil
							["qg"] = 152095,	-- Magni Bronzebeard
							["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								n(152095, {	-- Magni Bronzebeard
									["description"] = "This is a terrible experience if you are working through content chronologically, as you cannot circumvent this phased version of Nordrassil.\n\nYou have to get started with Battle for Azeroth, get access to Chamber of Heart in Silithus: The Wound, and reach Heart of Azeroth power level 55. Then you can pick up 'A Fresh Trauma' from Magni in Chamber of Heart and return to Nordrassil for the short questline.",
								}),
							},
						}),
						q(55425, {	-- Dominating the Indomitable
							["sourceQuest"] = 55407,	-- Calming the Spine
							["qg"] = 152385,	-- Spiritwalker Ebonhorn
							["coord"] = { 17.5, 62.1, 1472 },	-- The Dragon's Spine
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								i(167830),	-- Petrified Ebony Scale (QI!)
							},
						}),
						q(55395, {	-- Don't Close Your Eyes
							["sourceQuest"] = 55392,	-- Enter the Dreamway
							["qg"] = 151704,	-- Valithria Dreamwalker
							["coord"] = { 27.1, 55.9, 1471 },	-- Emerald Dreamway
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(59000, {	-- Elements of Corruption
							["sourceQuests"] = { 56377 },	-- Forging Onward
							["altQuests"] = { 58991 },	-- Curious Corruption
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.6, 64.6, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55392, {	-- Enter the Dreamway
							["sourceQuest"] = 55390,	-- In Darkness, I Dream
							["qg"] = 151682,	-- Merithra of the Dream
							["coord"] = { 51.6, 57.2, VALSHARAH },
							["timeline"] = { ADDED_8_2_0 },
							["maps"] = { 1471 },	-- Emerald Dreamway
						}),
						q(57010, {	-- Harnessing the Power
							["sourceQuest"] = 55618,	-- The Heart Forge
							["qg"] = 152194,	-- MOTHER
							["coord"] = { 48.0, 72.2, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = { i(168611) },	-- Petrified Ebony Scale [Rank 1] (QI!)
						}),
						q(55520, {	-- Healing Nordrassil
							["sourceQuest"] = 55519,	-- A Fresh Trauma
							["qg"] = 152095,	-- Magni Bronzebeard
							["coord"] = { 62.0, 24.9, MOUNT_HYJAL },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(55390, {	-- In Darkness, I Dream
							["description"] = "Your Heart of Azeroth needs to be 54 to start the questline.",
							["qg"] = 152365,	-- Kalecgos
							["coord"] = { 52.5, 69.9, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(55657, {	-- In the Shadow of Crimson Wings
							["sourceQuest"] = 56167,	-- Investigating the Highlands
							["qg"] = 152720,	-- Kalecgos
							["coord"] = { 36.0, 50.5, TWILIGHT_HIGHLANDS },
							["timeline"] = { ADDED_8_2_0 },
							["maps"] = {
								1476,	-- Twilight Highlands (Szenario)
							},
							["groups"] = {
								i(168280),	-- Lost Scale of the Scarlet Broodmother (QI!)
								i(168613),	-- Tempered Scale of the Scarlet Broodmother
							},
						}),
						q(52428, {	-- Infusing the Heart
							["sourceQuest"] = 51211,	-- The Heart of Azeroth
							["qgs"] = {
								130216,	-- Magni Bronzebeard
								136907,	-- Magni Bronzebeard
							},
							["coords"] = {
								{ 42.2, 44.3, SILITHUS },
								{ 50.3, 54.4, CHAMBER_OF_HEART },
							},
							["groups"] = {
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
							["sourceQuest"] = 58615,	-- Whispers in the Dark
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(57374, {	-- Into the Darkest Depths
							["sourceQuest"] = 58634,	-- Opening the Gateway
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = { currency(1719) },	-- Corrupted Memento
						}),
						q(56167, {	-- Investigating the Highlands
							["description"] = "Your Heart of Azeroth needs to be 60 to start the questline.",
							["sourceQuest"] = 55398,	-- The Long Awake
							["qg"] = 152365,	-- Kalecgos
							["coord"] = { 53.1, 70.9, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(56536, {	-- It's Never Easy
							["sourceQuest"] = 56377,	-- Forging Onward
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(58876, {	-- Lost Flight
							["provider"] = { "i", 174863 },	-- Spawn of Vexiona
							["timeline"] = { ADDED_8_3_0, REMOVED_9_0_2_LAUNCH },
							["groups"] = { i(174862) },	-- Uncorrupted Voidwing (MOUNT!)
						}),
						q(58737, {	-- Magni's Findings
							["sourceQuest"] = 56542,	-- Restored Hope
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55533, {	-- MOTHER Knows Best
							-- ["sourceQuest"] = 55851,	-- Essential Empowerment -- available without this, and it isn't a breadcrumb. Possibly tied to "A Way Home" in nazjatar?
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(58506, {	-- Network Diagnostics
							["sourceQuests"] = {
								58502,	-- Where the Heart Is (A)
								58583,	-- Where the Heart Is (H)
							},
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(55393, {	-- Null the Void
							["sourceQuest"] = 55392,	-- Enter the Dreamway
							["qg"] = 151693,	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(58632, {	-- Ny'alotha, the Waking City: The Corruptor's End
							["sourceQuest"] = 58631,	-- Into Dreams
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(56189, {	-- On the Trail of the Black Prince
							["sourceQuest"] = 56188,	-- To the Catacombs!
							["qg"] = 154870,	-- Slain Blacktalon Lookout
							["coord"] = { 47.0, 69.2, DEADWIND_PASS },
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = {
								i(169652),	-- Bolt of Embroidered Cloth
								i(170490),	-- Torn Journal Page #58 (QI!)
								i(170491),	-- Burnt Journal Page
								i(169651),	-- The Ways of the Old Gods
							},
						}),
						q(58634, {	-- Opening the Gateway
							["sourceQuest"] = 57373,	-- Descending Into Madness
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(57220, {	-- Power Protocol Initiation
							["sourceQuest"] = 58737,	-- Magni's Findings
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								o(341445, {	-- Chamber of Heart Relay
									["coord"] = { 56.9, 64.7, REPAIRED_CHAMBER_OF_HEART },
								}),
								o(341449, {	-- Engine of Nalak'sha Relay
									["coord"] = { 50.1, 74.7, REPAIRED_CHAMBER_OF_HEART },
								}),
								o(341450, {	-- Forge of Origination Relay
									["coord"] = { 43.4, 64.8, REPAIRED_CHAMBER_OF_HEART },
								}),
							},
						}),
						q(57221, {	-- Re-Origination
							["sourceQuest"] = 57220,	-- Power Protocol Initiation
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(57394, {	-- Reconstructing "Fear and Flesh" (Rank 7)
							["sourceQuest"] = 57393,	-- Stepping Through the Darkness
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171354),	-- Horrific Core
								i(174783),	-- Torn Page of "Fear and Flesh" (QI!)
							},
						}),
						q(57395, {	-- Reconstructing "Fear and Flesh" (Rank 8)
							["sourceQuest"] = 57394,	-- Reconstructing "Fear and Flesh"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171354),	-- Horrific Core
								i(174783),	-- Torn Page of "Fear and Flesh" (QI!)
							},
						}),
						q(57396, {	-- Reconstructing "Fear and Flesh" (Rank 9)
							["sourceQuest"] = 57395,	-- Reconstructing "Fear and Flesh"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171354),	-- Horrific Core
								i(174783),	-- Torn Page of "Fear and Flesh" (QI!)
							},
						}),
						q(57403, {	-- Reconstructing "Fear and Flesh" (Rank 10)
							["sourceQuest"] = 57396,	-- Reconstructing "Fear and Flesh"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171354),	-- Horrific Core
								i(174783),	-- Torn Page of "Fear and Flesh" (QI!)
							},
						}),
						q(57397, {	-- Reconstructing "Fear and Flesh" (Rank 11)
							["sourceQuest"] = 57403,	-- Reconstructing "Fear and Flesh"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171354),	-- Horrific Core
								i(174783),	-- Torn Page of "Fear and Flesh" (QI!)
							},
						}),
						q(57391, {	-- Reconstructing "The Curse of Stone" (Rank 3)
							["sourceQuest"] = 57378,	-- Remnants of a Shattered World
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171335),	-- Corrupting Core
								i(171353),	-- Torn Page of "The Curse of Stone" (QI!)
							},
						}),
						q(57392, {	-- Reconstructing "The Curse of Stone" (Rank 4)
							["sourceQuest"] = 57391,	-- Reconstructing "The Curse of Stone"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171335),	-- Corrupting Core
								i(171353),	-- Torn Page of "The Curse of Stone" (QI!)
							},
						}),
						q(57402, {	-- Reconstructing "The Curse of Stone" (Rank 5)
							["sourceQuest"] = 57392,	-- Reconstructing "The Curse of Stone"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171335),	-- Corrupting Core
								i(171353),	-- Torn Page of "The Curse of Stone" (QI!)
							},
						}),
						q(57399, {	-- Reconstructing "The Final Truth" (Rank 13)
							["sourceQuest"] = 57398,	-- Walking in the Darkness
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(174785),	-- Torn Page of "The Final Truth" (QI!)
								i(171355),	-- Voidborn Core
							},
						}),
						q(57400, {	-- Reconstructing "The Final Truth" (Rank 14)
							["sourceQuest"] = 57399,	-- Reconstructing "The Final Truth" (Rank 13)
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(174785),	-- Torn Page of "The Final Truth" (QI!)
								i(171355),	-- Voidborn Core
							},
						}),
						q(57401, {	-- Reconstructing "The Final Truth" (Rank 15)
							["sourceQuest"] = 57400,	-- Reconstructing "The Final Truth"  (Rank 14)
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171355),	-- Voidborn Core
								i(174785),	-- Torn Page of "The Final Truth" (QI!)
							},
						}),
						q(57378, {	-- Remnants of a Shattered World (Rank 2)
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(171335),	-- Corrupting Core
								i(174777),	-- The Curse of Stone (QI!)
							},
						}),
						q(56261, {	-- Return to the Heart (A)
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
							["sourceQuest"] = 57010,	-- Harnessing the Power
							["qg"] = 154464,	-- Earthen Guardian <Messenger of the Speaker>
							["coord"] = { 74.8, 15.2, BORALUS },
							["timeline"] = { ADDED_8_2_0 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(55522, {	-- Return to the Heart (H)
							["description"] = "Your Heart of Azeroth needs to be 55 to start the questline.",
							["sourceQuest"] = 57010,	-- Harnessing the Power
							["qg"] = 154465,	-- Earthen Guardian <Messenger of the Speaker>
							["coords"] = {
								-- #if BEFORE SL
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["timeline"] = { ADDED_8_2_0 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(56190, {	-- Save Ebonhorn
							["sourceQuest"] = 56189,	-- On the Trail of the Black Prince
							["qg"] = 155191,	-- Potion of Mental Clarity
							["coord"] = { 69.4, 16.6, 46 },	-- Karazhan Catacombs
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = { i(169653) },	-- Potion of Mental Clarity (QI!)
						}),
						q(55394, {	-- Shards of Emerald
							["sourceQuest"] = 55392,	-- Enter the Dreamway
							["qg"] = 151693,	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = { i(167802) },	-- Emerald Shard (QI!)
						}),
						q(56186, {	-- Spies to the Left and Right
							["sourceQuests"] = {
								56185,	-- Whispers of N'zoth (A)
								56267,	-- Whispers of N'zoth (H)
							},
							["qg"] = 152365,	-- Kalecgos
							["coord"] = { 52.4, 68.9, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = { i(170471) },	-- Torn Journal Page #7 (QI!)
						}),
						q(57393, {	-- Stepping Through the Darkness (Rank 6)
							["sourceQuest"] = 57402,	-- Reconstructing "The Curse of Stone"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["cost"] = { { "i", 174782, 1 } },	-- Fear and Flesh
							["groups"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6277,	-- (Rank 6 Appearance)
								}),
								i(171354),	-- Horrific Core
							},
						}),
						q(55400, {	-- Take My Hand
							["sourceQuest"] = 55374,	-- A Disurbance Beneath the Earth
							["qg"] = 151641,	-- Spiritwalker Ebonhorn
							["coord"] = { 49.4, 68.3, HIGHMOUNTAIN },
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(53406, {	-- The Chamber of Heart (third HoA upgrade)
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth. You can pick it up once one of your characters reaches Revered with Champions of Azeroth.",
							["sourceQuest"] = 53405,	-- Unlocking the Heart's Potential
							["qg"] = 130216,	-- Magni Bronzebeard
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(55618, {	-- The Heart Forge
							["sourceQuest"] = 55497,	-- A Friendly Face
							["qg"] = 152194,	-- MOTHER
							["coord"] = { 48.1, 72.4, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = { i(168611) },	-- Petrified Ebony Scale
						}),
						q(51211, {	-- The Heart of Azeroth
							["sourceQuests"] = {
								52946,	-- A Dying World (A)
								53028,	-- A Dying World (A/H)
							},
							["qg"] = 130216,	-- Magni Bronzebeard
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
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth. You can pick it up once one of your characters reaches Friendly with Champions of Azeroth.",
							["qg"] = 130216,	-- Magni Bronzebeard
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(55398, {	-- The Long Awake
							["sourceQuest"] = 55396,	-- The Stuff Dreams Are Made Of
							["qg"] = 151887,	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["timeline"] = { ADDED_8_2_0 },
						}),
						q(56537, {	-- The Mysterious Sigil
							["sourceQuest"] = 56536,	-- It's Never Easy
							["qg"] = 155336,	-- Mogu Warrior
							["coord"] = { 59.6, 39.1, KUN_LAI_SUMMIT },
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(51403, {	-- The Speaker's Imperative (A)
							["sourceQuest"] = 52428,	-- Infusing the Heart
							["qg"] = 136907,	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_0_1, REMOVED_10_1_5 },
							["races"] = ALLIANCE_ONLY,
							-- TODO: likely this is technically a breadcrumb as well, if someone tests heading to Stormwind after receiving their neck and not picking this up...
						}),
						q(53031, {	-- The Speaker's Imperative (H)
							["sourceQuest"] = 52428,	-- Infusing the Heart
							["qg"] = 136907,	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_0_1, REMOVED_10_1_5 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							-- was unable to enter the chamber to acquire this quest once i left the chamber of heart after receiving my neck
						}),
						q(55396, {	-- The Stuff Dreams Are Made Of
							["sourceQuest"] = 55397,	-- Before I Wake
							["qg"] = 151825,	-- Merithra of the Dream
							["coord"] = { 46.5, 39.7, 1475 },	-- The Emerald Dream
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								i(167831),	-- Emerald Shards (QI!)
								i(168612),	-- Dreamglow Dragonscale
								i(167875),	-- Reforged Dreamglow Dragonscale (QI!)
							},
						}),
						q(61872, {	-- To Current Matters (A)
							["description"] = "This quest becomes available after completing 'A One-Way Ticket to the Heart' and unlocking the three outposts through the War Campaign, and becomes unavailable after setting foot in Nazjatar.",
							["sourceQuests"] = { 54964 },	-- A One-Way Ticket to the Heart
							["qg"] = 136907,	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_9_0_2_LAUNCH },
							["lockCriteria"] = { 1, "questID", 56043 },	-- Send the Fleet
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(61871, {	-- To Current Matters (H)
							["description"] = "This quest becomes available after completing 'A One-Way Ticket to the Heart' and unlocking the three outposts through the War Campaign, and becomes unavailable after setting foot in Nazjatar.",
							["sourceQuests"] = { 54964 },	-- A One-Way Ticket to the Heart
							["qg"] = 136907,	-- Magni Bronzebeard
							["coord"] = { 50.1, 53.6, CHAMBER_OF_HEART },
							["timeline"] = { ADDED_9_0_2_LAUNCH },
							["lockCriteria"] = { 1, "questID", 56044 },	-- Send the Fleet
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(56188, {	-- To the Catacombs!
							["sourceQuest"] = 56187,	-- Black Winged Shadow
							["qg"] = 154874,	-- Blacktalon Watcher
							["coord"] = { 47.8, 68.8, EASTERN_KINGDOMS },	-- Burning Steppes, outside BWD
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = { i(170486) },	-- Torn Journal Page #25 (QI!)
						}),
						q(53405, {	-- Unlocking the Heart's Potential (second HoA upgrade)
							["description"] = "This quest awards +15 item levels for your Heart of Azeroth. You can pick it up once one of your characters reaches Honored with Champions of Azeroth.",
							["sourceQuest"] = 50973,	-- The Heart's Power
							["qg"] = 130216,	-- Magni Bronzebeard
							["coord"] = { 42.1, 44.3, SILITHUS },
							["timeline"] = { ADDED_8_0_1, REMOVED_8_2_0 },
							["lvl"] = 120,
						}),
						q(56263, {	-- Unlocking the Power (A)
							["description"] = "Your Heart of Azeroth needs to be 70 to start the questline.",
							["qg"] = 154464,	-- Earthen Guardian
							["coord"] = { 74.8, 15.2, BORALUS },
							["timeline"] = { ADDED_8_2_0 },
							["races"] = ALLIANCE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						q(56260, {	-- Unlocking the Power (H)
							["description"] = "Your Heart of Azeroth needs to be 70 to start the questline.",
							["qg"] = 154465,	-- Earthen Guardian
							["coords"] = {
								-- #if BEFORE SL
								{ 51.0, 88.8, DAZARALOR },
								-- #else
								{ 50.4, 41.7, DAZARALOR },
								-- #endif
							},
							["timeline"] = { ADDED_8_2_0 },
							["races"] = HORDE_ONLY,
							["isBreadcrumb"] = true,
							["DisablePartySync"] = true,
						}),
						o(324407, {	-- Void Roots
							["questID"] = 55467,
							["coord"] = { 61.9, 94.6, 1475 },	-- The Emerald Dream
							["collectible"] = false,
							["groups"] = { i(167873) },	-- Remnant of the Void
						}),
						q(57398, {	-- Walking in the Darkness (Rank 12)
							["sourceQuest"] = 57397,	-- Reconstructing "Fear and Flesh"
							["qg"] = 155496,	-- Wrathion
							["coord"] = { 46.1, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["cost"] = { { "i", 174784, 1 } },	-- The Final Truth
							["groups"] = {
								i(169223, {	-- Ashjra'kamas, Shroud of Resolve
									["bonusID"] = 6283,	-- (Rank 12 Appearance)
								}),
								i(171355),	-- Voidborn Core
							},
						}),
						q(55465, {	-- We Must Go Deeper
							["sourceQuests"] = {
								55393,	-- Null the Void
								55394,	-- Shards of Emerald
								55395,	-- Don't Close Your Eyes
							},
							["qg"] = 151693,	-- Merithra of the Dream
							["coord"] = { 44.1, 30.7, 1471 },	-- Emerald Dreamway
							["timeline"] = { ADDED_8_2_0 },
							["maps"] = {
								1475,	-- The Emerald Dream
							},
							["groups"] = { i(167831) },	-- Emerald Shards (QI!)
						}),
						q(55752, {	-- We Stand United
							["sourceQuest"] = 56401,	-- A Bolt from the Blue
							["qg"] = 152206,	-- Magni Bronzebeard
							["coord"] = { 33.7, 54.6, 1474 },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = {
								i(169768),	-- Heart of a Champion (TOY!)
								i(169292),	-- Charged Scale of the Blue Aspect (QI!)
							},
						}),
						q(58615, {	-- Whispers in the Dark
							["sourceQuest"] = 57374,	-- Into the Darkest Depths
							["qg"] = 161805,	-- Magni Bronzebeard
							["coord"] = { 50.1, 59.1, REPAIRED_CHAMBER_OF_HEART },	-- technicaly 1604?
							["timeline"] = { ADDED_8_3_0 },
						}),
						q(56185, {	-- Whispers of N'zoth (A)
							-- #if BEFORE 9.2
							["sourceQuest"] = 57002,	-- Old Soldier
							["description"] = "This quest requires finishing the War Campaign and defeating Azshara on any difficulty.",
							-- #ENDIF
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
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["races"] = ALLIANCE_ONLY,
						}),
						q(56267, {	-- Whispers of N'zoth (H)
							-- #IF BEFORE 9.2
							["description"] = "This quest requires finishing the War Campaign and defeating Azshara on any difficulty.",
							-- #ENDIF
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
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["races"] = HORDE_ONLY,
						}),
						q(56504, {	-- Wrathion's Journal
							["sourceQuest"] = 56190,	-- Save Ebonhorn
							["qg"] = 151964,	-- Spiritwalker Ebonhorn
							["coord"] = { 46.3, 67.2, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = {
								ADDED_8_2_5,
								REMOVED_8_3_0,	-- (removed with 8.3)
								ADDED_9_2_0,	-- Reported available again 2022-03-21
							},
							["groups"] = {
								i(170493),	-- Wrathion's Journal (QI!)
							},
						}),
					}),
					n(VENDORS, {
						n(130216, {	-- Magni Bronzebeard
							["coord"] = { 42.2, 44.2, SILITHUS },
							["groups"] = bubbleDownClassicRep(FACTION_CHAMPIONS_OF_AZEROTH, {
								{		-- Neutral
								}, {	-- Friendly
								}, {	-- Honored
									i(160537, {	-- Drape of the Azerothian Champion
										["cost"] = 11000000,	-- 1,100g
									}),
								}, {	-- Revered
									i(163555, {	-- Azerite Puddle (PET!)
										["cost"] = { { "i", POLISHED_PET_CHARM, 200 } },
									}),
									i(163515, {	-- Azeriti (PET!)
										["cost"] = { { "i", POLISHED_PET_CHARM, 100 } },
									}),
								}, {	-- Exalted
									i(161555, {	-- Azerothian Champion's Crown
										["cost"] = 22500000,	-- 2,250g
									}),
									i(161560, {	-- Azerothian Champion's Spaulders
										["cost"] = 22500000,	-- 2,250g
									}),
									i(160544, {	-- Champions of Azeroth Tabard
										["cost"] = 6250000,	-- 625g
									}),
									i(161563, {	-- Helm of the Azerothian Champion
										["cost"] = 22500000,	-- 2,250g
									}),
									i(161557, {	-- Vest of the Azerothian Champion
										["cost"] = 22500000,	-- 2,250g
									}),
								},
							}),
						}),
						n(152194, {	-- MOTHER
							["description"] = "MOTHER sells rank 3 essences for Echoes of Ny'alotha provided you have obtained them through other means on your account on at least one character.",
							["coord"] = { 48.2, 72.5, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_2_0 },
							["groups"] = sharedData({
								["timeline"] = { ADDED_8_3_0 },
							}, {
								i(173363, {	-- Vessel of Horrific Visions
									["cost"] = { { "c", 1803, 1750 }, },	-- 1750 Echoes of Ny'alotha
								}),
								i(175062, {	-- Malefic Core
									["cost"] = { { "c", 1803, 2000 } },	-- 2000 Echoes of Ny'alotha
								}),
								i(168839, {	-- Regenerating Barrier of the Depths
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168559, {	-- Fetish of the Hidden Labyrinths
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168922, {	-- Azerite-Fueled Timequartz
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168537, {	-- Tempered Azerite Formation
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168444, {	-- Churning Blood of the Conquered
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(173282, {	-- Token of Death's Glee
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168856, {	-- Resonating Elemental Heart
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(169900, {	-- Rib-Bone Choker of Dominance
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168622, {	-- Stabilizing Lens of the Focusing Iris
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168926, {	-- Lingering Seed of Renewal
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168848, {	-- Pearl of Perspicuous Intentions
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168568, {	-- Null Force Nullifier
									["cost"] = { { "c", 1803, 2500 }, },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168860, {	-- Enhanced Purification Protocols
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168852, {	-- Stalwart Battlefield Memento
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(173290, {	-- Quickening Azerite Geode
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168580, {	-- Sphere of Leeched Mobility
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168440, {	-- Gleaming Star Shard
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(173310, {	-- Manual of Unbalanced Tactics
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168613, {	-- Tempered Scale of the Scarlet Broodmother
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168930, {	-- Tome of the Quickening Tides
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(173885, {	-- Volatile Void Droplet
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168865, {	-- Polarized Azerite Slivershards
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168934, {	-- Calibrated Existence Gauge
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168575, {	-- Branch of Rejuvenating Rings
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168938, {	-- Ward of Mutual Aid
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168844, {	-- Perfection-Enhancing Gearbox
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168943, {	-- Grid of Bursting Vitality
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
								i(168617, {	-- Fluctuating Worldvein
									["cost"] = { { "c", 1803, 2500 } },	-- 2500 Echoes of Ny'alotha
									["modID"] = 14,
								}),
							}),
						}),
						n(155496, {	-- Wrathion
							["coord"] = { 46.2, 64.0, REPAIRED_CHAMBER_OF_HEART },
							["timeline"] = { ADDED_8_3_0 },
							["groups"] = {
								i(173363, {	-- Vessel of Horrific Visions
									["cost"] = { { "c", 1755, 10000 }, },	-- 10,000 Coalescing Visions
								}),
								i(173291, {	-- Luminous Azerite Geode (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["timeline"] = { REMOVED_9_0_1 },
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
								}),
								i(173311, {	-- Resplendent Warden's Badge (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["timeline"] = { REMOVED_9_0_1 },
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
									["classes"] = TANKS,
								}),
								i(168940, {	-- Ward of Unimaginable Brilliance (Rank 4)
									["description"] = "Requires completing the achievement |cffffff00Through the Depths of Visions|r.\n",
									["timeline"] = {REMOVED_9_0_1 },
									["cost"] = { { "c", 1719, 10 } },	-- 10x Corrupted Mementos
									["classes"] = HEALERS,
								}),
								i(174876, {	-- Gouged Eye of N'Zoth
									["cost"] = { { "c", 1719, 25000 }, },	-- 25,000 Corrupted Mementos
								}),
								i(174361, {	-- Black Dragonscale Backpack
									["cost"] = { { "c", 1719, 5000 }, },	-- 5,000 Corrupted Mementos
								}),
								i(174770, {	-- Wicked Swarmer (MOUNT!)
									["cost"] = { { "c", 1719, 100000 }, },	-- 100,000 Corrupted Mementos
									["modelScale"] = 1.5,
								}),
							},
						}),
					}),
				},
			}),
			n(QUESTS, {
				q(50373, {	-- A Recent Arrival
					["sourceQuest"] = 50228,	-- The Twilight Survivor
					["qg"] = 131963,	-- Nolan Speed
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50229, {	-- A Wee Bit O' Cloth
					["provider"] = { "o", 280948 },	-- Twilight Outhouse
					["coord"] = { 29.6, 69.6, SILITHUS },
					["groups"] = { i(156797) },	-- Twilight Silk (QI!)
				}),
				q(50372, {	-- Desert Research (A)
					["sourceQuests"] = {
						50047,	-- Free Samples
						50046,	-- It's a Sabotage
					},
					["qg"] = 131963,	-- Nolan Speed
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50358, {	-- Desert Research (H)
					["sourceQuest"] = 50053,	-- Lazy Prospectors
					["qg"] = 132147,	-- Grol Warblade
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50047, {	-- Free Samples
					["sourceQuest"] = 49981,	-- Witness to the Wound
					["qg"] = 131963,	-- Nolan Speed
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(156711) },	-- Mysterious Ore (QI!)
				}),
				q(50046, {	-- It's a Sabotage
					-- #if BEFORE 8.0.1
					["sourceQuest"] = 49981,	-- Witness to the Wound
					-- #endif
					["qg"] = 130030,	-- Kelsey Steelspark
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50360, {	-- Khadgar's Request
					["sourceQuest"] = 50232,	-- The Twilight Survivor
					["qg"] = 132147,	-- Grol Warblade
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50227, {	-- Larvae By The Dozen (A)
					["sourceQuest"] = 50372,	-- Desert Research (A)
					["qg"] = 132606,	-- Tammy Tinkspinner
					["coord"] = { 69.4, 19.0, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(156795) },	-- Silithid Broodling (QI!)
				}),
				q(50231, {	-- Larvae By The Dozen (H)
					["sourceQuest"] = 50358,	-- Desert Research (H)
					["qg"] = 132040,	-- Pixni Rustbomb
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
					["groups"] = { i(156795) },	-- Silithid Broodling (QI!)
				}),
				q(50053, {	-- Lazy Prospectors
					["sourceQuest"] = 49982,	-- Witness to the Wound
					["qg"] = 132147,	-- Grol Warblade
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50052, {	-- No Spies Allowed
					["sourceQuest"] = 49982,	-- Witness to the Wound
					["qg"] = 132045,	-- Gizmax Greasebolt
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50374, {	-- The Blood of Azeroth (A)
					["sourceQuest"] = 50049,	-- The Speaker's Perspective (A)
					["qg"] = 130216,	-- Magni Bronzebeard
					["coord"] = { 42.2, 44.2, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50364, {	-- The Blood of Azeroth (H)
					["sourceQuest"] = 50055,	-- The Speaker's Perspective (H)
					["qg"] = 130216,	-- Magni Bronzebeard
					["coord"] = { 42.5, 44.2, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50057, {	-- The Power in Our Hands
					["sourceQuests"] = {
						50300,	-- The Speaker's Call
						50056,	-- The Speaker's Call
					},
					["qg"] = 133388,	-- Magni Bronzebeard
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
					["sourceQuest"] = 50372,	-- Desert Research (A)
					["qg"] = 132606,	-- Tammy Tinkspinner
					["coord"] = { 69.4, 19.0, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(156794) },	-- Silithid Brain (QI!)
				}),
				q(50230, {	-- The Source of Power (H)
					["sourceQuest"] = 50358,	-- Desert Research (H)
					["qg"] = 132040,	-- Pixni Rustbomb
					["coord"] = { 66.9, 56.5, SILITHUS },
					["races"] = HORDE_ONLY,
					["groups"] = { i(156794) },	-- Silithid Brain (QI!)
				}),
				q(50056, {	-- The Speaker's Call (A)
					["sourceQuest"] = 50374,	-- The Blood of Azeroth (A)
					["qg"] = 131963,	-- Nolan Speed
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(50300, {	-- The Speaker's Call (H)
					["sourceQuest"] = 50364,	-- The Blood of Azeroth (H)
					["qg"] = 132147,	-- Grol Warblade
					["races"] = HORDE_ONLY,
					["u"] = REMOVED_FROM_GAME,
				}),
				q(50049, {	-- The Speaker's Perspective (A)
					["sourceQuest"] = 50373,	-- A Recent Arrival
					["qg"] = 130032,	-- Archmage Khadgar
					["coord"] = { 68.9, 19.2, SILITHUS },
					["races"] = ALLIANCE_ONLY,
				}),
				q(50055, {	-- The Speaker's Perspective (H)
					["sourceQuest"] = 50360,	-- Khadgar's Request
					["qg"] = 130033,	-- Archmage Khadgar
					["coord"] = { 66.4, 56.8, SILITHUS },
					["races"] = HORDE_ONLY,
				}),
				q(50228, {	-- The Twilight Survivor (A)
					["sourceQuests"] = {
						50047,	-- Free Samples
						50046,	-- It's a Sabotage
					},
					["qg"] = 131963,	-- Nolan Speed
					["coord"] = { 69.4, 17.6, SILITHUS },
					["races"] = ALLIANCE_ONLY,
					["groups"] = { i(156796) },	-- Michiel Voidstrider's Head (QI!)
				}),
				q(50232, {	-- The Twilight Survivor (H)
					["sourceQuest"] = 50053,	-- Lazy Prospectors
					["qg"] = 132147,	-- Grol Warblade
					["coord"] = { 65.9, 54.7, SILITHUS },
					["races"] = HORDE_ONLY,
					["groups"] = { i(156796) },	-- Michiel Voidstrider's Head (QI!)
				}),
				q(49981, {	-- Witness to the Wound (A)
					["sourceQuest"] = 49976,	-- Gifts of the Fallen
					["qg"] = 132255,	-- Master Mathias Shaw
					["coord"] = { 39.0, 62.6, STORMWIND_CITY },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = ALLIANCE_ONLY,
				}),
				q(49982, {	-- Witness to the Wound (H)
					["sourceQuest"] = 50341,	-- A Recent Discovery
					["qg"] = 132254,	-- Nathanos Blightcaller
					["coord"] = { 49.8, 75.6, ORGRIMMAR },
					["timeline"] = { ADDED_7_3_5, REMOVED_8_0_1 },
					["races"] = HORDE_ONLY,
				}),
			}),
			n(RARES, {
				n(132591, {	-- Ogmot the Mad
					["questID"] = 50334,
					["coord"] = { 28.9, 74.6, SILITHUS },
					["groups"] = { i(156852) },	-- Ogmot's Dream Journal
				}),
				n(132578, {	-- Qroshekx
					["questID"] = 50255,
					["coord"] = { 59.3, 11.4, SILITHUS },
					["isDaily"] = true,
					["groups"] = { i(156851) },	-- Silithid Mini-Tank (PET!)
				}),
				n(132580, {	-- Ssinkrix
					["questID"] = 50223,
					["coord"] = { 54.5, 79.8, SILITHUS },
					["isDaily"] = true,
					["groups"] = { i(156851) },	-- Silithid Mini-Tank (PET!)
				}),
				n(132584, {	-- Xaarshej
					["questID"] = 50224,
					["coord"] = { 29.5, 35.0, SILITHUS },
					["isDaily"] = true,
					["groups"] = { i(156851) },	-- Silithid Mini-Tank (PET!)
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
						{"select", "itemID", 137884 },	-- Pattern Dreadleather Bindings
						{"select", "itemID", 137890 },	-- Pattern Dreadleather Footpads
						{"select", "itemID", 137889 },	-- Pattern Dreadleather Gloves
						{"select", "itemID", 137891 },	-- Pattern Dreadleather Jerkin
						{"select", "itemID", 137888 },	-- Pattern Dreadleather Mask
						{"select", "itemID", 137887 },	-- Pattern Dreadleather Pants
						{"select", "itemID", 137886 },	-- Pattern Dreadleather Shoulderguard
						{"select", "itemID", 142407 },	-- Pattern Drums Of The Mountain
						{"select", "itemID", 137916 },	-- Pattern Gravenscale Armbands
						{"select", "itemID", 137921 },	-- Pattern Gravenscale Grips
						{"select", "itemID", 137923 },	-- Pattern Gravenscale Hauberk
						{"select", "itemID", 137919 },	-- Pattern Gravenscale Leggings
						{"select", "itemID", 137918 },	-- Pattern Gravenscale Spaulders
						{"select", "itemID", 137922 },	-- Pattern Gravenscale Treads
						{"select", "itemID", 137920 },	-- Pattern Gravenscale Warhelm
					},
				}),
			}),
		},
	}),
}));

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
