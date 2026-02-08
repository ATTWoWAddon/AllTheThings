---------------------------------------------------
--          Z O N E S        M O D U L E         --
---------------------------------------------------

-- CRIEVE NOTE: Going to do a playthrough on the Cataclysm Beta to make sure the map coordinate stuff works correctly.
root(ROOTS.Zones, m(EASTERN_KINGDOMS, {
	m(GILNEAS, {
		["lore"] = "Gilneas, once a human kingdom, was isolated from the rest of the world ever since the Second War. It is now home of Genn Graymane's worgen who have re-joined the Alliance once again since the Forsaken invasion and the Cataclysm wrecked their kingdom. Gilneas is a worgen-only leveling zone that relies heavily upon phasing. The starting zone covers how the player transforms into a Worgen, later aiding Graymane in trying to protect his kingdom from Sylvanas.",
		["icon"] = 462671,
		["timeline"] = { ADDED_4_0_3 },
		["maps"] = {
			180,	-- Emberstone Mine
			181,	-- Greymane Manor [Main Floor]
			182,	-- Greymane Manor [Upper Floor]
			1030,	-- Greymane Manor [Main Floor]
			1031,	-- Greymane Manor [Upper Floor]
			1577,	-- Gilneas City [Heritage of Gilneas]
		},
		["groups"] = {
			m(GILNEAS_CITY, {
				["lore"] = "Gilneas City was the capital city of the Kingdom of Gilneas. It was a dark and foreboding place of narrow cobblestone streets and crowded, Gothic houses, divided into four districts, centered around the Light's Dawn Cathedral. Shortly after the Cataclysm, the city was struck by a worgen assault and, later, a Forsaken invasion. After its abandonment by the Gilneans, the Alliance managed to retake the city, although its current status remains unknown.",
				["icon"] = 463876,
				["groups"] = {
					n(QUESTS, {
						q(14093, {	-- All Hell Breaks Loose
							["sourceQuest"] = 14091,	-- Something's Amiss
							["qg"] = 34913,	-- Prince Liam Greymane
							["coord"] = { 59.81, 22.17, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/6 Rampaging Worgen slain
									["providers"] = {
										{ "n", 34884 },	-- Rampaging Worgen
										{ "n", 35660 },	-- Rampaging Worgen
									},
								}),
								i(55004),	-- Wolf Fur Coat
							},
						}),
						q(14277, {	-- Arcane Inquiries
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { MAGE },
						}),
						q(26129, {	-- Brothers in Arms
							["sourceQuest"] = 14154,	-- By the Skin of His Teeth
							["qg"] = 35077,	-- Lord Darius Crowley
							["coord"] = { 55.20, 62.93, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14218, {	-- By Blood and Ash
							["sourceQuest"] = 14212,	-- Sacrifies
							["qg"] = 35552,	-- Tobias Mistmantle
							["coord"] = { 40.46, 39.37, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/80 Rampaging Worgen slain
									["providers"] = {
										{ "n", 35229 },	-- Bloodfang Stalker
										{ "n", 51277 },	-- Bloodfang Stalker
									},
								}),
								i(55010),	-- Cannoneer's Leggings
								i(55009),	-- Steadfast Boots
								i(131866, {	-- Steadfast Greaves
									["timeline"] = { ADDED_7_0_3 },
								}),
							},
						}),
						q(14154, {	-- By the Skin of His Teeth
							["sourceQuest"] = 28850,	-- The Prison Rooftop
							["qg"] = 35077,	-- Lord Darius Crowley
							["coord"] = { 55.20, 62.93, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								i(54976),	-- Bracers of the Queen's Gate
								i(131865, {	-- Darius' Handguards
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(55005),	-- Darius' Sash
								i(55006),	-- Dempsey's Gloves
							},
						}),
						q(14266, {	-- Charge
							["sourceQuest"] = 14265,	-- Your Instructor
							["qg"] = 35839,	-- Sergeant Cleese
							["coord"] = { 67.60, 64.31, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { WARRIOR },
							["groups"] = {
								objective(1, {	-- Practice Charge
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(14274, {	-- Corruption
							["sourceQuest"] = 14273,	-- Shady Associates
							["qg"] = 35869,	-- Vitus Darkwalker
							["coord"] = { 71.43, 64.45, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { WARLOCK },
							["groups"] = {
								objective(1, {	-- Practice Corruption
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(14098, {	-- Evacuate the Merchant Square
							["sourceQuest"] = 14091,	-- Something's Amiss
							["qg"] = 34913,	-- Prince Liam Greymane
							["coord"] = { 59.81, 22.17, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/3 Market Homes Evacuated
									["provider"] = { "o", 195327 },	-- Merchant Square Door
									["coord"] = { 59.81, 22.17, GILNEAS_CITY },
								}),
							},
						}),
						q(14272, {	-- Eviscerate
							["sourceQuest"] = 14269,	-- Someone's Looking for You
							["qg"] = 35871,	-- Loren the Fence
							["coord"] = { 71.43, 65.78, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { ROGUE },
							["groups"] = {
								objective(1, {	-- Practice Eviscerate
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(14204, {	-- From the Shadows
							["sourceQuest"] = 14159,	-- The Rebel Lord's Arsenal
							["providers"] = {
								{ "n", 35378 },	-- Lorna Crowley
								{ "i", 48707 },	-- Gilnean Mastiff Collar
							},
							["coord"] = { 56.87, 81.41, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/6 Bloodfang Lurker slain
									["provider"] = { "n", 35463 },	-- Bloodfang Lurker
								}),
								i(54985),	-- Alarmbringer's Mace
								i(54986),	-- Houndmaster's Crossbow
								i(58217),	-- Mastiff Trainer's Wand
								i(66247),	-- Timeworn Staff
							},
						}),
						q(14281, {	-- Arcane Missiles [Cata] / Frost Nova [MoP+] (Worgen)
							["sourceQuest"] = 14277,	-- Arcane Inquiries
							["qg"] = 35872,	-- Myriam Spellwalker
							["coord"] = { 68.01, 64.68, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { MAGE },
							["groups"] = {
								objective(1, {	-- Practice Frost Nova
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(24678, {	-- Knee-Deep
							["sourceQuest"] = 24920,	-- Slowing the Inevitable
							["providers"] = {
								{ "n", 38539 },	-- King Genn Greymane
								{ "i", 50220 },	-- Half-Burnt Torch
							},
							["coord"] = { 32.37, 57.01, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14222, {	-- Last Stand
							["sourceQuest"] = 14221,	-- Never Surrender, Sometimes Retreat
							["qg"] = 35566,	-- Lord Darius Crowley
							["coord"] = { 48.93, 52.79, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/8 Frenzied Stalker slain
									["provider"] = { "n", 35627 },	-- Frenzied Stalker
								}),
							},
						}),
						q(14279, {	-- Learning the Word
							["sourceQuest"] = 14278,	-- Seek the Sister
							["qg"] = 35870,	-- Sister Almyra
							["coord"] = { 70.40, 65.57, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { PRIEST },
							["groups"] = {
								objective(1, {	-- Practice Shadow Word: Pain (2)
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(14078, {	-- Lockdown!
							["qg"] = 34850,	-- Prince Liam Greymane
							["coord"] = { 59.12, 23.74, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14214, {	-- Message to Greymane
							["sourceQuest"] = 14204,	-- From the Shadows
							["qg"] = 35378,	-- Lorna Crowley
							["coord"] = { 56.87, 81.41, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14283, {	-- Moonfire
							["sourceQuest"] = 14280,	-- The Winds Know Your Name... Apparently
							["qg"] = 35873,	-- Celestine of the Harvest
							["coord"] = { 70.18, 65.88, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { DRUID },
							["groups"] = {
								objective(1, {	-- Practice Moonfire
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(14221, {	-- Never Surrender, Sometimes Retreat
							["sourceQuest"] = 14218,	-- By Blood and Ash
							["qg"] = 35552,	-- Tobias Mistmantle
							["coord"] = { 40.46, 39.37, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14157, {	-- Old Divisions
							["sourceQuests"] = {
								14285,	-- Safety in Numbers [Rogue]
								14286,	-- Safety in Numbers [Warrior]
								14287,	-- Safety in Numbers [Warlock]
								14288,	-- Safety in Numbers [Mage]
								14289,	-- Safety in Numbers [Priest]
								14290,	-- Safety in Numbers [Hunter]
								14291,	-- Safety in Numbers [Druid]
								-- #if AFTER 10.0.7
								75189,	-- Safety in Numbers [Monk]
								-- #endif
							},
							["qg"] = 35112,	-- King Geen Greymane
							["coord"] = { 65.83, 77.84, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(75190, {	-- Ready and Abel
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 34936,	-- Gwen Armstead
							["coord"] = { 59.57, 26.77, GILNEAS_CITY },
							["timeline"] = { ADDED_10_0_7 },
							["races"] = { WORGEN },
							["classes"] = { MONK },
						}),
						q(14099, {	-- Royal Orders
							["sourceQuests"] = {
								14093,	-- All Hell Breaks Loose
								14098,	-- Evacuate the Merchant Square
								14094,	-- Salvage the Supplies
							},
							["qg"] = 34913,	-- Prince Liam Greymane
							["coord"] = { 59.81, 22.17, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14212, {	-- Sacrifies
							["sourceQuest"] = 14294,	-- Time to Regroup
							["qg"] = 35552,	-- Lord Darius Crowley
							["coord"] = { 31.05, 72.33, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/30 Bloodfang Stalker rounded up
									["provider"] = { "n", 35229 },	-- Bloodfang Stalker
								}),
							},
						}),
						q(14285, {	-- Safety in Numbers (Rogue)
							["sourceQuests"] = {
								-- #if BEFORE 9.0.1
								14272,	-- Eviscerate
								-- #endif
								14269,	-- Someone's Looking for You
							},
							["qg"] = 35871,	-- Loren the Fence
							["coord"] = { 71.43, 65.78, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { ROGUE },
						}),
						q(14286, {	-- Safety in Numbers (Warrior)
							["sourceQuests"] = {
								-- #if BEFORE MOP
								14266,	-- Charge
								-- #endif
								14265,	-- Your Instructor
							},
							["qg"] = 35839,	-- Sergeant Cleese
							["coord"] = { 67.60, 64.31, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { WARRIOR },
						}),
						q(14287, {	-- Safety in Numbers (Warlock)
							["sourceQuests"] = {
								-- #if BEFORE MOP
								14274,	-- Corruption
								-- #endif
								14273,	-- Shady Associates
							},
							["qg"] = 35869,	-- Vitus Darkwalker
							["coord"] = { 71.43, 64.45, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { WARLOCK },
						}),
						q(14288, {	-- Safety in Numbers (Mage)
							["sourceQuests"] = {
								14277,	-- Arcane Inquiries
								-- #if BEFORE MOP
								14281,	-- Frost Nova
								-- #endif
							},
							["qg"] = 35872,	-- Myriam Spellwalker
							["coord"] = { 68.01, 64.68, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { MAGE },
						}),
						q(14289, {	-- Safety in Numbers (Priest)
							["sourceQuests"] = {
								14279,	-- Learning the Word
								14278,	-- Seek the Sister
							},
							["qg"] = 35870,	-- Sister Almyra
							["coord"] = { 70.40, 65.57, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { PRIEST },
						}),
						q(14290, {	-- Safety in Numbers (Hunter)
							["sourceQuests"] = {
								14275,	-- Someone's Keeping Track of You
								-- #if BEFORE MOP
								14276,	-- Steady Shot
								-- #endif
							},
							["qg"] = 35874,	-- Huntsman Blake
							["coord"] = { 71.50, 61.33, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { HUNTER },
						}),
						q(14291, {	-- Safety in Numbers (Druid)
							["sourceQuests"] = {
								-- #if BEFORE MOP
								14283,	-- Moonfire
								-- #endif
								14280,	-- The Winds Know Your Name... Apparently
							},
							["qg"] = 35873,	-- Celestine of the Harvest
							["coord"] = { 70.18, 65.88, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { DRUID },
						}),
						q(75189, {	-- Safety in Numbers (Monk)
							["sourceQuests"] = {
								75190,	-- Ready and Abel
							},
							["qg"] = 203258,	-- Todd Abel
							["coord"] = { 70.40, 65.57, GILNEAS_CITY },
							["timeline"] = { ADDED_10_0_7 },
							["races"] = { WORGEN },
							["classes"] = { MONK },
						}),
						q(14094, {	-- Salvage the Supplies
							["sourceQuest"] = 14078,	-- Lockdown!
							["qg"] = 34936,	-- Gwen Armstead
							["coord"] = { 59.57, 26.77, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/4 Salvaged Supplies
									["providers"] = {
										{ "i",  46896 },	-- Salvaged Supplies
										{ "o", 195306 },	-- Supply Crate
									},
									["coord"] = { 59.5, 35.6, GILNEAS_CITY },
								}),
								i(52040),	-- Salvager's Bag
							},
						}),
						q(14293, {	-- Save Krennan Aranas
							["sourceQuest"] = 14214,	-- Messsage to Greymane
							["qg"] = 35550,	-- King Genn Greymane
							["coord"] = { 59.27, 83.80, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- Krennan Aranas rescued
									["provider"] = { "n", 35753 },	-- Krennan Aranas <Journeyman Chemist>
									["coord"] = { 66.0, 62.2, GILNEAS_CITY },
								}),
							},
						}),
						q(14278, {	-- Seek the Siter
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { PRIEST },
						}),
						q(14273, {	-- Shady Associates
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { WARLOCK },
						}),
						q(24920, {	-- Slowing the Inevitable
							["sourceQuest"] = 24903,	-- Vengeance or Survival
							["qg"] = 38539,	-- King Genn Greymane
							["coord"] = { 32.37, 57.01, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/6 Forsaken Catapult slain
									["provider"] = { "n", 38287 },	-- Forsaken Catapult
								}),
								objective(2, {	-- 0/40 Invading Forsaken slain
									["providers"] = {
										{ "n", 38363 },	-- Forsaken Invader
										{ "n", 38364 },	-- Forsaken Plaguesmith
									},
								}),
							},
						}),
						q(14275, {	-- Someone's Keeping Track of You
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { HUNTER },
						}),
						q(14269, {	-- Someone's Looking for You
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { ROGUE },
						}),
						q(14091, {	-- Something's Amiss
							["sourceQuest"] = 14078,	-- Lockdown!
							["qg"] = 34863,	-- Lieutenant Walden
							["coord"] = { 54.65, 16.75, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14276, {	-- Steady Shot
							["sourceQuest"] = 14275,	-- Someone's Keeping Track of You
							["qg"] = 35874,	-- Huntsman Blake
							["coord"] = { 71.50, 61.33, GILNEAS_CITY },
							["timeline"] = { ADDED_4_0_3_LAUNCH, REMOVED_5_0_4 },
							["races"] = { WORGEN },
							["classes"] = { HUNTER },
							["groups"] = {
								objective(1, {	-- Practice Steady Shot (2)
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
							},
						}),
						q(24902, {	-- The Hunt For Sylvanas
							["sourceQuest"] = 24904,	-- The Battle For Gilneas City
							["qg"] = 38611,	-- Lorna Crowley
							["coord"] = { 38.58, 60.22, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(28850, {	-- The Prison Rooftop
							["sourceQuest"] = 14157,	-- Old Divisions
							["qg"] = 50371,	-- Captain Broderick
							["coord"] = { 57.96, 75.56, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14159, {	-- The Rebel Lord's Arsenal
							["sourceQuests"] = {
								26129,	-- Brothers in Arms
								24930,	-- While You're At It
							},
							["qg"] = 35112,	-- King Geen Greymane
							["coord"] = { 65.83, 77.84, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(14280, {	-- The Winds Know Your Name... Apparently
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { DRUID },
						}),
						q(14294, {	-- Time to Regroup
							["sourceQuest"] = 14293,	-- Save Krennan Aranas
							["qg"] = 35906,	-- Lord Godfrey
							["coord"] = { 55.74, 80.73, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(24903, {	-- Vengeance or Survival
							["sourceQuest"] = 24902,	-- The Hunt For Sylvanas
							["qg"] = 38611,	-- Lorna Crowley
							["coord"] = { 38.58, 60.22, GILNEAS_CITY },
							["races"] = { WORGEN },
						}),
						q(24930, {	-- While You're At It
							["sourceQuests"] = {
								14285,	-- Safety in Numbers [Rogue]
								14286,	-- Safety in Numbers [Warrior]
								14287,	-- Safety in Numbers [Warlock]
								14288,	-- Safety in Numbers [Mage]
								14289,	-- Safety in Numbers [Priest]
								14290,	-- Safety in Numbers [Hunter]
								14291,	-- Safety in Numbers [Druid]
							},
							["qg"] = 35115,	-- Lord Godfrey
							["coord"] = { 65.41, 77.62, GILNEAS_CITY },
							["races"] = { WORGEN },
							["groups"] = {
								objective(1, {	-- 0/5 Bloodfang Worgen slain
									["provider"] = { "n", 35118 },	-- Bloodfang Worgen
								}),
								i(131864, {	-- Armstead Bindings
									["timeline"] = { ADDED_7_0_3 },
								}),
								i(54975, {	-- Armstead Bracers
									["timeline"] = { ADDED_4_0_3 },
								}),
								i(54978, {	-- Merchant's Chestguard
									["timeline"] = { ADDED_4_0_3 },
								}),
							},
						}),
						q(14265, {	-- Your Instructor
							["sourceQuest"] = 14099,	-- Royal Orders
							["qg"] = 35840,	-- Gwen Armstead
							["coord"] = { 70.79, 55.05, GILNEAS_CITY },
							["races"] = { WORGEN },
							["classes"] = { WARRIOR },
						}),
					}),
				},
			}),
			n(QUESTS, {
				q(14467, {	-- Alas, Gilneas!
					["sourceQuest"] = 14466,	-- The King's Observatory
					["qg"] = 36743,	-- King Genn Greymane
					["coord"] = { 41.91, 20.10, 182 },
					["races"] = { WORGEN },
				}),
				q(14313, {	-- Among Humans Again
					["sourceQuest"] = 14375,	-- Last Chance at Humanity
					["qg"] = 36170,	-- Lord Godfrey
					["coord"] = { 36.51, 62.29, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14396, {	-- As the Land Shatters
					["sourceQuest"] = 14386,	-- Leader of the Pack
					["qg"] = 36290,	-- Lord Godfrey
					["coord"] = { 28.97, 63.93, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24627, {	-- At Our Doorstep
					["sourceQuest"] = 24617,	-- Tal'doren, the Wild Home
					["qg"] = 37195,	-- Lord Darius Crowley
					["coord"] = { 68.69, 73.26, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/6 Howling Banshee slain
							["provider"] = { "n", 37757 },	-- Howling Banshee
						}),
					},
				}),
				q(24592, {	-- Betrayal at Tempest's Reach
					["sourceQuest"] = 24672,	-- Onwards and Upwards
					["providers"] = {
						{ "n", 37874 },	-- Krennan Aranas
						{ "i", 50218 },	-- Krennan's Potion of Stealth
					},
					["coord"] = { 72.73, 80.04, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Baron Ashbury slain
							["provider"] = { "n", 37735 },	-- Baron Ashbury
						}),
						objective(1, {	-- 0/1 Lord Walden slain
							["provider"] = { "n", 37733 },	-- Lord Walden
						}),
						i(55003),	-- Greymane Cloak
						i(55002),	-- Blue-Bloodied Boots
						i(131378, {	-- Blue-Bloodied Treads
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(58255),	-- Lord Walden's Top Hat
					},
				}),
				q(26706, {	-- Endgame
					["sourceQuest"] = 24681,	-- They Have Allies, But So Do We
					["qg"] = 43727,	-- Lorna Crowley
					["coord"] = { 41.64, 36.51, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14405, {	-- Escape By Sea
					["description"] = "Given if |cFFFFD700The Hayward Brothers|r questline is completed last.",
					["sourceQuests"] = {
						14404,	-- Not Quite Shipshape
						14412,	-- Washed Up
					},
					["qg"] = 36456,	-- Sebastian Hayward
					["coord"] = { 36.88, 84.18, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14397, {	-- Evacuation
					["sourceQuest"] = 14395,	-- Gasping for Breath
					["qg"] = 36451,	-- Prince Liam Greymane
					["coord"] = { 29.03, 65.06, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24438, {	-- Exodus
					["sourceQuest"] = 14467,	-- Alas, Gilneas!
					["qg"] = 36743,	-- King Genn Greymane
					["coord"] = { 41.91, 20.10, 182 },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- Carriage boarded
							["provider"] = { "n", 44928 },	-- Stagecoach Carriage
						}),
					},
				}),
				q(24677, {	-- Flank the Forsaken
					["sourceQuest"] = 24592,	-- Betrayal at Tempest's Reach
					["qg"] = 37876,	-- King Genn Greymane
					["coord"] = { 78.27, 72.06, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14395, {	-- Gasping for Breath
					["sourceQuest"] = 14396,	-- As the Land Shatters
					["qg"] = 36451,	-- Prince Liam Greymane
					["coord"] = { 29.03, 65.06, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/4 Drowning Watchman rescued
							["provider"] = { "n", 36440 },	-- Drowning Watchman
						}),
					},
				}),
				q(14398, {	-- Grandma Wahl
					["sourceQuest"] = 14397,	-- Evacuation
					["qg"] = 36452,	-- Gwen Armstead
					["coord"] = { 37.63, 65.20, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14401, {	-- Grandma's Cat
					["sourceQuest"] = 14400,	-- I Can't Wear This
					["qg"] = 36458,	-- Grandma Wahl
					["coord"] = { 32.52, 75.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Chance the Cat
							["provider"] = { "i", 49281 },	-- Chance the Cat
							["coord"] = { 35.0, 74.8, GILNEAS },
							["cr"] = 36461,	-- Lucius the Cruel
						}),
						i(55016),	-- Granny's Mallet
						i(55017),	-- Orange Blanket
					},
				}),
				q(14399, {	-- Grandma's Lost It Alright
					["sourceQuest"] = 14398,	-- Grandma Wahl
					["qg"] = 36458,	-- Grandma Wahl
					["coord"] = { 32.52, 75.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Linen-Wrapped Book
							["providers"] = {
								{ "i",  49280 },	-- Linen-Wrapped Book
								{ "o", 196473 },	-- Linen-Wrapped Book
							},
							["coord"] = { 33.9, 77.3, GILNEAS },
						}),
					},
				}),
				q(14347, {	-- Hold the Line
					["sourceQuest"] = 14336,	-- Kill or Be Killed
					["qg"] = 36140,	-- Prince Liam Greymane
					["coord"] = { 35.75, 66.29, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/10 Forsaken Invader slain
							["provider"] = { "n", 34511 },	-- Forsaken Invader
						}),
						i(54984),	-- Gilnean Soldier's Waistband
						i(54983),	-- Repeller's Bracers
					},
				}),
				q(14366, {	-- Holding Steady
					["sourceQuests"] = {
						14347,	-- Hold the Line
						14348,	-- You Can't Take 'Em Alone
					},
					["qg"] = 36140,	-- Prince Liam Greymane
					["coord"] = { 35.75, 66.29, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14463, {	-- Horses for Duskhaven
					["description"] = "Given if |cFFFFD700The Crowley Orchard|r questline is completed last.",
					["sourceQuest"] = 14416,	-- The Hungry Ettin
					["qg"] = 36457,	-- Lorna Crowley
					["coord"] = { 37.68, 72.75, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14400, {	-- I Can't Wear This
					["sourceQuest"] = 14399,	-- Grandma's Lost It Alright
					["qg"] = 36458,	-- Grandma Wahl
					["coord"] = { 32.52, 75.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Grandma's Good Clothes
							["providers"] = {
								{ "i",  49279 },	-- Grandma's Good Clothes
								{ "o", 196472 },	-- Grandma's Good Clothes
							},
							["coord"] = { 32.1, 75.6, GILNEAS },
						}),
					},
				}),
				q(14320, {	-- In Need of Ingredients
					["sourceQuest"] = 14313,	-- Among Humans Again
					["providers"] = {
						{ "n",  36132 },	-- Krennan Aranas
						{ "o", 196394 },	-- Crate of Mandrake Essence
					},
					["coords"] = {
						{ 37.42, 63.23, GILNEAS },
						{ 32.9, 66.4, GILNEAS },
					},
					["races"] = { WORGEN },
				}),
				q(24472, {	-- Introductions Are In Order
					["sourceQuest"] = 24468,	-- Stranded at the Marsh
					["qg"] = 37065,	-- Prince Liam Greymane
					["coord"] = { 51.81, 80.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/4 Ogre Minion slain
							["provider"] = { "n", 36293 },	-- Ogre Minion <Servant of Koroth>
						}),
						objective(2, {	-- 0/1 Koroth's Banner
							["providers"] = {
								{ "i",  49742 },	-- Koroth's Banner
								{ "o", 201594 },	-- Koroth's Banner
							},
							["coord"] = { 46.8, 83.5, GILNEAS },
						}),
					},
				}),
				q(14321, {	-- Invasion
					["sourceQuest"] = 14320,	-- In Need of Ingredients
					["qg"] = 36205,	-- Slain Watchman
					["coord"] = { 32.77, 66.14, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14336, {	-- Kill or Be Killed
					["sourceQuest"] = 14321,	-- Invasion
					["qg"] = 34571,	-- Gwen Armstead
					["coord"] = { 37.42, 63.34, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24680, {	-- Keel Harbor
					["sourceQuest"] = 24679,	-- Patriarch's Blessing
					["qg"] = 38144,	-- Krennan Aranas
					["coord"] = { 49.83, 56.93, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24602, {	-- Laid to Rest
					["sourceQuest"] = 24678,	-- Knee-Deep
					["qg"] = 38144,	-- Krennan Aranas
					["coord"] = { 49.83, 56.93, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/5 Unearthed Memento
							["provider"] = { "i", 49921 },	-- Unearthed Memento
							["cr"] = 37884,	-- Disturbed Spirit
						}),
					},
				}),
				q(14375, {	-- Last Chance at Humanity
					["sourceQuest"] = 14222,	-- Last Stand
					["qg"] = 36332,	-- King Genn Greymane
					["coord"] = { 36.41, 61.25, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24675, {	-- Last Meal
					["sourceQuest"] = 14466,	-- The King's Observatory (TODO: need to verify if this truly is the start. Could be level-based at 15? Saw the quest offered this source but could be available earlier)
					["qg"] = 38143,	-- Magda Whitewall
					["coord"] = { 70.66, 39.71, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/10 Side of Stag Meat
							["provider"] = { "i", 50219 },	-- Side of Stag Meat
							["cr"] = 37786,	-- Brown Stag
						}),
						i(245518, {	-- Worgen's Chicken Coop (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				q(14386, {	-- Leader of the Pack
					["sourceQuests"] = {
						14368,	-- Save the Children!
						14382,	-- Two By Sea
						14369,	-- Unleash the Beast
					},
					["providers"] = {
						{ "n", 36290 },	-- Lord Godfrey
						{ "i", 49240 },	-- Mastiff Whistle
					},
					["coord"] = { 28.97, 63.93, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Dark Ranger Thyala slain
							["provider"] = { "n", 36312 },	-- Dark Ranger Thyala
							["coord"] = { 23.2, 67.2, GILNEAS },
						}),
						i(131355, {	-- Dark Ranger's Hauberk
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55007),	-- Dark Ranger's Vest
						i(55008),	-- Leader's Boots
					},
				}),
				q(24575, {	-- Liberation Day
					["sourceQuest"] = 24677,	-- Flank the Forsaken
					["qg"] = 37783,	-- Lorna Crowley
					["coord"] = { 70.87, 39.83, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/5 Enslaved Gilnean freed
							["providers"] = {
								{ "i",  49881 },	-- Slaver's Key
								{ "o", 201775 },	-- Ball and Chain
							},
							["coord"] = { 79.8, 28.4, GILNEAS },
							["cr"] = 37701,	-- Forsaken Slavedriver
						}),
					},
				}),
				q(24616, {	-- Losing Your Tail
					["sourceQuest"] = 24578,	-- The Blackwald
					["qg"] = 37822,	-- Belysra Starbreeze
					["coord"] = { 63.35, 82.92, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Dark Scout slain
							["providers"] = {
								{ "n", 37953 },	-- Dark Scout
								{ "i", 49944 },	-- Belysra's Talisman
							},
							["coord"] = { 63.8, 81.2, GILNEAS },
						}),
						i(54999),	-- Seryl's Robes
						i(55000),	-- Hightailing Leggings
						i(131380, {	-- Hightailing Greaves
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(55001),	-- Hotfoot Boots
					},
				}),
				q(24593, {	-- Neither Human Nor Beast
					["sourceQuest"] = 24646,	-- Take Back What's Ours
					["qg"] = 37195,	-- Lord Darius Crowley
					["coord"] = { 68.69, 73.26, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- Well of Fury
							["provider"] = { "o", 201950 },	-- Well of Fury
							["coord"] = { 68.9, 72.9, GILNEAS },
						}),
						objective(2, {	-- Well of Tranquility
							["provider"] = { "o", 201951 },	-- Well of Tranquility
							["coord"] = { 69.2, 73.1, GILNEAS },
						}),
						objective(3, {	-- Well of Balance
							["provider"] = { "o", 201952 },	-- Well of Balance
							["coord"] = { 69.1, 73.5, GILNEAS },
						}),
						i(66439),	-- Cry of the Wolf
						i(66660),	-- Hammer of Controlled Fury
						i(66876),	-- Sharp Edge of Balance
						i(133697, {	-- Sharpened Wolf's Tooth
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(156985, {	-- Staff of Deserved Tranquility
							["timeline"] = { ADDED_7_3_5 },
						}),
						i(52942),	-- Staff of Earned Tranquility
					},
				}),
				q(14404, {	-- Not Quite Shipshape
					["sourceQuest"] = 14403,	-- The Hayward Brothers
					["qg"] = 36456,	-- Sebastian Hayward
					["coord"] = { 36.88, 84.18, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Shipwright's Tools
							["providers"] = {
								{ "i",  49337 },	-- Shipwright's Tools
								{ "o", 196810 },	-- Shipwright's Tools
							},
							["coord"] = { 37.5, 87.2, GILNEAS },
						}),
						objective(2, {	-- 0/1 Planks of Wood
							["providers"] = {
								{ "i",  49338 },	-- Planks of Wood
								{ "o", 196809 },	-- Planks of Wood
							},
							["coord"] = { 36.2, 86.5, GILNEAS },
						}),
						objective(3, {	-- 0/1 Coal Tar
							["providers"] = {
								{ "i",  49339 },	-- Coal Tar
								{ "o", 196808 },	-- Barrel of Coal Tar
							},
							["coord"] = { 37.5, 85.9, GILNEAS },
						}),
						i(52039),	-- Shipwright's Bag
					},
				}),
				q(24672, {	-- Onwards and Upwards
					["sourceQuest"] = 24673,	-- Return to Stormglen
					["qg"] = 37102,	-- Gwen Armstead
					["coord"] = { 59.86, 91.70, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24679, {	-- Patriarch's Blessing
					["sourceQuest"] = 24602,	-- Laid to Rest
					["qg"] = 38144,	-- Krennan Aranas
					["coord"] = { 49.83, 56.93, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- Offering placed
							["providers"] = {
								{ "i",  51956 },	-- Blessed Offerings
								{ "o", 201964 },	-- Aderic's Tomb
							},
							["coord"] = { 48.9, 53.1, GILNEAS },
						}),
					},
				}),
				q(24484, {	-- Pest Control
					["sourceQuest"] = 24483,	-- Stormglen
					["qg"] = 37102,	-- Gwen Armstead
					["coord"] = { 59.86, 91.70, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/6 Vilebrood Skitterer slain
							["provider"] = { "n", 36813 },	-- Vilebrood Skitterer
						}),
					},
				}),
				q(24495, {	-- Pieces of the Past
					["sourceQuest"] = 24483,	-- Stormglen
					["qg"] = 37815,	-- Lorna Crowley
					["coord"] = { 60.27, 91.85, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/6 Old Journal Page
							["providers"] = {
								{ "i",  49760 },	-- Old Journal Page
								{ "o", 201607 },	-- Old Journal Page
							},
							["coord"] = { 65.0, 90.8, GILNEAS },
						}),
					},
				}),
				q(24628, {	-- Preparations
					["sourceQuest"] = 24617,	-- Tal'doren, the Wild Home
					["qg"] = 37873,	-- Vassandra Stormclaw
					["coord"] = { 69.28, 72.98, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/6 Moonleaf
							["provider"] = { "i",  50017 },	-- Moonleaf
							["cr"] = 37757,	-- Howling Banshee
						}),
					},
				}),
				q(24676, {	-- Push Them Out
					["sourceQuests"] = {
						24675,	-- Last Meal
						24575,	-- Liberation Day
						24674,	-- Slaves to No One
					},
					["qg"] = 37783,	-- Lorna Crowley
					["coord"] = { 70.87, 39.83, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/4 Forsaken Infantry slain
							["provider"] = { "n", 37692 },	-- Forsaken Infantry
						}),
						objective(2, {	-- 0/1 Executor Cornell slain
							["provider"] = { "n", 37686 },	-- Executor Cornell
						}),
						objective(3, {	-- 0/1 Valnov the Mad slain
							["provider"] = { "n", 37685 },	-- Valnov the Mad
						}),
					},
				}),
				q(24501, {	-- Queen-Sized Troubles
					["sourceQuest"] = 24484,	-- Pest Control
					["qg"] = 37102,	-- Gwen Armstead
					["coord"] = { 59.86, 91.70, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Rygna slain
							["provider"] = { "n", 37045 },	-- Rygna <Vilebrood Matriarch>
							["coord"] = { 68.0, 81.8, GILNEAS },
						}),
						i(54996),	-- Rygna-Silk Leggings
						i(54997),	-- Arachnophobe's Breastplate
						i(131369, {	-- Arachnophobe's Chain Shirt
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54998),	-- Braided Gossamer Armbands
					},
				}),
				q(14402, {	-- Ready to Go
					["description"] = "Given if the |cFFFFD700Grandma Wahl|r questline is completed last.",
					["sourceQuest"] = 14401,	-- Grandma's Cat
					["qg"] = 36458,	-- Grandma Wahl
					["coord"] = { 32.52, 75.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						i(245620, {	-- Little Wolf's Loo (DECOR!)
							["timeline"] = { ADDED_11_2_7 },
						}),
					},
				}),
				q(24673, {	-- Return to Stormglen
					["sourceQuest"] = 24593,	-- Neither Human Nor Beast
					["qg"] = 37195,	-- Lord Darius Crowley
					["coord"] = { 68.69, 73.26, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14434, {	-- Rut'theran Village
					["sourceQuest"] = 26706,	-- Endgame
					["qg"] = 36616,	-- Admiral Nightwind
					["coord"] = { 42.58, 35.95, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14368, {	-- Save the Children!
					["sourceQuest"] = 14367,	-- The Allen's Storm Caller
					["qg"] = 36291,	-- Melinda Hammond
					["coord"] = { 28.93, 64.04, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- Cynthia rescued
							["provider"] = { "n", 36287 },	-- Cynthia
							["coord"] = { 29.6, 69.2, GILNEAS },
						}),
						objective(2, {	-- Ashley rescued
							["provider"] = { "n", 36288 },	-- Ashley
							["coord"] = { 27.8, 66.6, GILNEAS },
						}),
						objective(3, {	-- James rescued
							["provider"] = { "n", 36289 },	-- James
							["coord"] = { 28.6, 66.6, GILNEAS },
						}),
						i(54981),	-- Caregiver's Leggings
						i(54982),	-- Gloves of Protection
						i(131351, {	-- Protector's Legguards
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(24674, {	-- Slaves to No One
					["sourceQuests"] = {
						24677,	-- Flank the Forsaken
						-- 14466,	-- The King's Observatory (TODO: need to verify if this truly is the start. Could be level-based at 15? Saw the quest offered this source but could be available earlier)
					},
					["qg"] = 37803,	-- Marcus
					["coords"] = {
						{ 70.27, 40.04, GILNEAS },
						{ 70.64, 40.12, GILNEAS },
						{ 71.25, 39.77, GILNEAS },
					},
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- Brothogg the Slavemaster slain
							["provider"] = { "n", 37802 },	-- Brothogg the Slavemaster
							["coord"] = { 80.6, 31.8, GILNEAS },
						}),
						i(54991),	-- Marcus' Pickaxe
						i(54992),	-- Laborer's Belt
						i(54993),	-- Emberstone Plate
					},
				}),
				q(24483, {	-- Stormglen
					["sourceQuest"] = 24472,	-- Introductions Are In Order
					["qg"] = 37065,	-- Prince Liam Greymane
					["coord"] = { 51.81, 80.48, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24468, {	-- Stranded at the Marsh
					["sourceQuest"] = 24438,	-- Exodus
					["qg"] = 37065,	-- Prince Liam Greymane
					["coord"] = { 51.81, 80.48, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/5 Crash Survivor saved
							["provider"] = { "n", 37067 },	-- Crash Survivor
						}),
						i(54994),	-- Paramedic Bracers
						i(131368, {	-- First Responder's Bindings
							["timeline"] = { ADDED_7_0_3 },
						}),
						i(54995),	-- Hailwood Chestpiece
					},
				}),
				q(24617, {	-- Tal'doren, the Wild Home
					["sourceQuest"] = 24616,	-- Losing Your Tail
					["qg"] = 37822,	-- Belysra Starbreeze
					["coord"] = { 63.35, 82.92, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24646, {	-- Take Back What's Ours
					["sourceQuest"] = 24627,	-- At Our Doorstep
					["providers"] = {
						{ "n", 37195 },	-- Lord Darius Crowley
						{ "i", 50134 },	-- Horn of Tal'doren
					},
					["coord"] = { 68.69, 73.26, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Mysterious Artifact
							["providers"] = {
								{ "i",  50086 },	-- Mysterious Artifact
								{ "o", 201939 },	-- Worn Coffer
							},
							["coord"] = { 57.6, 75.7, GILNEAS },
						}),
					},
				}),
				q(14367, {	-- The Allen's Storm Caller
					["sourceQuest"] = 14366,	-- Holding Steady
					["qg"] = 34571,	-- Gwen Armstead
					["coord"] = { 37.42, 63.34, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(24904, {	-- The Battle For Gilneas City
					["sourceQuest"] = 24676,	-- Push Them Out
					["qg"] = 37783,	-- Lorna Crowley
					["coord"] = { 70.87, 39.83, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Gorerot slain
							["provider"] = { "n", 38331 },	-- Gorerot
						}),
						objective(2, {	-- Battle for Gilneas City Complete
							["provider"] = { "i", 50334 },	-- Rapier of the Gilnean Patriots
						}),
						i(54990),	-- Gilnean Shield
						i(55011),	-- Mace of the Blood Price
						i(54987),	-- Marshalling Point
						i(54989),	-- Rallying Charge
						i(54988),	-- Cloak of the Clarion Call
					},
				}),
				q(24578, {	-- The Blackwald
					["sourceQuests"] = {
						24495,	-- Pieces of the Past
						24501,	-- Queen-Sized Troubles
					},
					["qg"] = 37815,	-- Lorna Crowley
					["coord"] = { 60.27, 91.85, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14406, {	-- The Crowley Orchard
					["sourceQuest"] = 14397,	-- Evacuation
					["qg"] = 36452,	-- Gwen Armstead
					["coord"] = { 37.63, 65.20, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14403, {	-- The Hayward Brothers
					["sourceQuest"] = 14397,	-- Evacuation
					["qg"] = 36452,	-- Gwen Armstead
					["coord"] = { 37.63, 65.20, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14416, {	-- The Hungry Ettin
					["sourceQuest"] = 14406,	-- The Crowley Orchard
					["qg"] = 36457,	-- Lorna Crowley
					["coord"] = { 37.68, 72.75, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/5 Mountain Horse rescued
							["provider"] = { "n", 36540 },	-- Mountain Horse
						}),
						i(55021),	-- Crowley's Belt
						i(55020),	-- Lorna's Gloves
					},
				}),
				q(14466, {	-- The King's Observatory
					["sourceQuest"] = 14465,	-- To Greymane Manor
					["qg"] = 36606,	-- Queen Mia Greymane
					["coords"] = {
						{ 28.97, 51.56, GILNEAS },	-- Building Entrance
						{ 62.22, 49.70, 181 },	-- Queen Mia Location
					},
					["races"] = { WORGEN },
				}),
				q(24681, {	-- They Have Allies, But So Do We
					["sourceQuest"] = 24680,	-- Keel Harbor
					["qg"] = 38149,	-- Lord Darius Crowley
					["coord"] = { 41.94, 37.62, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/40 Orc Raider slain
							["provider"] = { "n", 37916 },	-- Orc Raider
						}),
						objective(2, {	-- 0/8 Wolfmaw Outrider slain
							["provider"] = { "n", 37938 },	-- Wolfmaw Outrider
						}),
						objective(3, {	-- 0/4 Orcish War Machine slain
							["provider"] = { "n", 37921 },	-- Orcish War Machine
						}),
						i(55012),	-- Night Elven Bow
						i(55013),	-- Seryl's Promise
					},
				}),
				q(14465, {	-- To Greymane Manor
					["description"] = "Only one of the source quests can be turned in, but all become marked completed.",
					["sourceQuests"] = {
						14405,	-- Escape By Sea
						14463,	-- Horses for Duskhaven
						14402,	-- Ready to Go
					},
					["qg"] = 36452,	-- Gwen Armstead
					["coord"] = { 37.63, 65.20, GILNEAS },
					["races"] = { WORGEN },
				}),
				q(14382, {	-- Two By Sea
					["sourceQuest"] = 14367,	-- The Allen's Storm Caller
					["qg"] = 36290,	-- Lord Godfrey
					["coord"] = { 28.97, 63.93, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/1 Captain Anson slain
							["provider"] = { "n", 36397 },	-- Captain Anson
							["coord"] = { 24.0, 75.0, GILNEAS },
						}),
						objective(2, {	-- 0/1 Captain Morris slain
							["provider"] = { "n", 36399 },	-- Captain Morris
							["coord"] = { 27.6, 80.6, GILNEAS },
						}),
						i(58216),	-- "Flying" Worgen Robes
						i(55015),	-- Gloves of the Two Birds
						i(131354, {	-- The Stone's Gauntlets
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14369, {	-- Unleash the Beast
					["sourceQuest"] = 14367,	-- The Allen's Storm Caller
					["qg"] = 36290,	-- Lord Godfrey
					["coord"] = { 28.97, 63.93, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/8 Forsaken Combatant slain
							["providers"] = {
								{ "n", 36396 },	-- Forsaken Sailor
								{ "n", 37805 },	-- Forsaken Sailor
								{ "n", 36236 },	-- Forsaken Footsoldier
								{ "n", 36810 },	-- Forsaken Footsoldier
							},
						}),
						i(54979),	-- Godfrey's Dagger
						i(54980),	-- Gilded Leggings
					},
				}),
				q(14412, {	-- Washed Up
					["sourceQuest"] = 14403,	-- The Hayward Brothers
					["qg"] = 36456,	-- Sebastian Hayward
					["coord"] = { 36.88, 84.18, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/6 Forsaken Castaway slain
							["provider"] = { "n", 36488 },	-- Forsaken Castaway
						}),
						i(55018),	-- Boatwork Boots
						i(55019),	-- Repair Belt
						i(131356, {	-- Repairman's Cinch
							["timeline"] = { ADDED_7_0_3 },
						}),
					},
				}),
				q(14348, {	-- You Can't Take 'Em Alone
					["sourceQuest"] = 14336,	-- Kill or Be Killed
					["qg"] = 36140,	-- Prince Liam Greymane
					["coord"] = { 35.75, 66.29, GILNEAS },
					["races"] = { WORGEN },
					["groups"] = {
						objective(1, {	-- 0/4 Gunpowder thrown at abomination
							["providers"] = {
								{ "n",  36231 },	-- Horrid Abomination
								{ "i",  49202 },	-- Black Gunpowder Keg
								{ "o", 196403 },	-- Black Gunpowder Keg
							},
							["coord"] = { 35.5, 67.4, GILNEAS },
						}),
					},
				}),
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.CATA, bubbleDownSelf({ ["timeline"] = { ADDED_4_0_3 } }, {
	m(EASTERN_KINGDOMS, {
		m(GILNEAS, {
			n(QUESTS, {
				q(25331),	-- Grandma's Cat (when completing 14401)
			})
		}),
	}),
})));
