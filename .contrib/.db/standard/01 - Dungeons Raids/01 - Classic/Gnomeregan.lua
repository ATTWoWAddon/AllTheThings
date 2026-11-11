-----------------------------------------------------
--   D U N G E O N S  &  R A I D S  M O D U L E    --
-----------------------------------------------------

local MATRIX_PUNCHOGRAPH_A = o(142345, {	-- Matrix Punchograph 3005-A
	description = "This is located outside of the instance just to the north of both the elevator or the transporter.",
	timeline = { REMOVED_5_0_4 },	-- guessed from WH comments
	cost = { { "i", 9279, 1 } },	-- White Punch Card
	groups = {
		i(9280),	-- Yellow Punch Card
	},
});
local MATRIX_PUNCHOGRAPH_B = o(142475, {	-- Matrix Punchograph 3005-B
	description = "This is located in the bottom of the Dormitories.",
	cost = { { "i", 9280, 1 } },	-- Yellow Punch Card
	groups = {
		i(9282),	-- Blue Punch Card
		i(14639, {	-- Schematic: Minor Recombobulator (RECIPE!)
			description = "If you are an Engineer, you will also get these plans by turning in the Yellow Punch Card.",
		}),
	},
});
local MATRIX_PUNCHOGRAPH_C = o(142476, {	-- Matrix Punchograph 3005-C
	description = "This is located at the bottom of the platform in the Engineering Labs.",
	cost = { { "i", 9282, 1 } },	-- Blue Punch Card
	groups = {
		i(9281),	-- Red Punch Card
	},
});
local MATRIX_PUNCHOGRAPH_D = o(142696, {	-- Matrix Punchograph 3005-D
	description = "This is located in the Workshop below Crowd Pummeler.",
	cost = { { "i", 9281, 1 } },	-- Red Punch Card
	groups = {
		i(9316),	-- Prismatic Punch Card
		i(4413, {	-- Schematic: Discombobulator Ray (RECIPE!)
			description = "If you are an Engineer and have a 'Security DELTA Access Card', you will also get these plans when you turn in your Red Punch Card.",
			provider = { "i", 9327 },	-- Security DELTA Data Access Card
		}),
	},
});
local MATRIX_PUNCHOGRAPH_E = o(251048, {	-- Matrix Punchograph 3005-E
	description = "This is located in the Dormitory, in the top-left cubby hole of the sloped southern wall.",
	timeline = { ADDED_7_0_3 },
	cost = { { "i", 9316, 1 } },	-- Prismatic Punch Card
	groups = {
		n(108106, {	-- Sentient Mechanostrider
			-- special hunter pet spawn
			provider = { "i", 9446 },	-- Electrocutioner Leg
		}),
	},
});

root(ROOTS.Instances, expansion(EXPANSION.CLASSIC, {
	inst(231, {	-- Gnomeregan
		-- #if BEFORE MOP
		lore = "Located in Dun Morogh, the technological wonder known as Gnomeregan has been the gnomes' capital city for generations. Recently, a hostile race of mutant troggs infested several regions of Dun Morogh - including the great gnome city. In a desperate attempt to destroy the invading troggs, High Tinker Mekkatorque ordered the emergency venting of the city's radioactive waste tanks. Several gnomes sought shelter from the airborne pollutants as they waited for the troggs to die or flee. Unfortunately, though the troggs became irradiated from the toxic assault - their siege continued, unabated. Those gnomes who were not killed by noxious seepage were forced to flee, seeking refuge in the nearby dwarven city of Ironforge. There, High Tinker Mekkatorque set out to enlist brave souls to help his people reclaim their beloved city.\n\nIt is rumored that Mekkatorque's once-trusted advisor, Mekgineer Thermaplug, betrayed his people by allowing the invasion to happen. Now, his sanity shattered, Thermaplug remains in Gnomeregan - furthering his dark schemes and acting as the city's new techno-overlord.",
		-- #endif
		-- #if AFTER 4.0.6
		description = "Horde players can access Gnomeregan from the teleporter in Grom'gol Base Camp, Northern Stranglethorn.",	-- The teleporter was removed from Booty Bay with 4.0.3, and returned to the game with 4.0.6.
		-- #endif
		-- #if BEFORE CATA
		zoneTextAreaID = 133,	-- Gnomeregan
		-- #elseif BEFORE MOP
		zoneTextAreaID = 5495,	-- Gnomeregan
		zoneTextNames = {
			"Workshop Entrance",
		},
		-- #endif
		mapID = GNOMEREGAN,
		coords = {
			-- #if AFTER MOP
			{ 30.1, 74.6, NEW_TINKERTOWN_LOWER },	-- Gnomeregan [Dun Morogh]
			-- #else
			{ 18.4, 38.6, DUN_MOROGH },	-- Gnomeregan [Dun Morogh]
			-- #endif
		},
		maps = { GNOMEREGAN_LEVEL2, GNOMEREGAN_LEVEL3, GNOMEREGAN_LEVEL4 },
		lvl = lvlsquish(19, 19, 10),
		groups = {
			n(ZONE_DROPS, {
				i(9510, {	-- Caverndeep Trudgers
					crs = {
						6228,	-- Dark Iron Ambassador
						6235,	-- Electrocutioner 6000
						7800,	-- Mekgineer Thermaplugg
						7079,	-- Viscous Fallout
					},
				}),
				i(5108, {	-- Dark Iron Leather
					cr = 6212,	-- Dark Iron Agent
				}),
				i(9490, {	-- Gizmotron Megachopper
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6222,	-- Leprous Technician
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9308),	-- Grime-Encrusted Object
				i(9326, {	-- Grime-Encrusted Ring
					cr = 6212,	-- Dark Iron Agent
				}),
				i(9489, {	-- Gyromatic Icemaker
					crs = {
						6232,	-- Arcane Nullifier X-21
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						7603,	-- Leprous Assistant
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9487, {	-- Hi-Tech Supergun
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6391,	-- Holdout Warrior
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9491),	-- Hotshot Pilot's Gloves
				i(9508, {	-- Mechbuilder's Overalls
					crs = {
						6232,	-- Arcane Nullifier X-21
						6212,	-- Dark Iron Agent
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6230,	-- Peacekeeper Security Suit
					},
					-- TODO: new itemdb file required to remove this requirement
					-- #if AFTER 10.1.7
					_drop = { "requireSkill" },
					-- #endif
				}),
				i(9488, {	-- Oscillating Power Hammer
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9509, {	-- Petrolspill Leggings
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6391,	-- Holdout Warrior
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						6218,	-- Irradiated Slime
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9309, {	-- Robo-mechanical Guts
					description = "These can drop from any mechanical unit in Gnomeregan.",
					races = ALLIANCE_ONLY,
				}),
				-- #if AFTER 3.1.0
				i(11827, {	-- Schematic: Lil' Smoky (RECIPE!)
					crs = {
						6232,	-- Arcane Nullifier X-21
						6229,	-- Crowd Pummeler 9-60
						6230,	-- Peacekeeper Security Suit
					},
				}),
				-- #endif
				i(9486, {	-- Supercharger Battle Axe
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6211,	-- Caverndeep Reaver
						6212,	-- Dark Iron Agent
						6392,	-- Holdout Medic
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						6223,	-- Leprous Defender
						6224,	-- Leprous Machinesmith
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
				-- #if AFTER 10.1.7
				i(9444, {	-- Techbot CPU Shell
					timeline = { ADDED_10_1_7 },
				}),
				-- #endif
				i(9485, {	-- Vibroblade
					crs = {
						6232,	-- Arcane Nullifier X-21
						6207,	-- Caverndeep Ambusher
						6206,	-- Caverndeep Burrower
						6212,	-- Dark Iron Agent
						6220,	-- Irradiated Horror
						6329,	-- Irradiated Pillager
						7603,	-- Leprous Assistant
						6223,	-- Leprous Defender
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6230,	-- Peacekeeper Security Suit
					},
				}),
				i(9279, {	-- White Punch Card
					description = "This can be looted from creatures outside of the instance.",
					timeline = { REMOVED_5_0_4 },	-- guessed from WH comments
				}),
				i(140781, {	-- X-87 Battle Circuit
					timeline = { ADDED_7_0_3 },
					crs = {
						6229,	-- Crowd Pummeler 9-60
						6235,	-- Electrocutioner 6000
						7800,	-- Mekgineer Thermaplug
						6232,	-- Arcane Nullifier X-21
						6234,	-- Mechanized Guardian
						6233,	-- Mechanized Sentry
						6226,	-- Mechano-Flamewalker
						6227,	-- Mechano-Frostwalker
						6225,	-- Mechano-Tank
						6230,	-- Peacekeeper Security Suit
					},
				}),
			}),
			n(QUESTS, {
				header(HEADERS.Object, 142487, {	-- The Sparklematic 5200
					q(2951, {	-- The Sparklematic 5200!
						provider = { "o", 142487 },	-- The Sparklematic 5200
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
					}),
					q(4601, {	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175084 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15084 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
					}),
					q(4602, {	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175085 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15085 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
					}),
					q(2952, {	-- The Sparklematic 5200!
						sourceQuest = 2951,	-- The Sparklematic 5200!
						provider = { "o", 142487 },	-- The Sparklematic 5200
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
					q(4605, {	-- The Sparklematic 5200!
						sourceQuest = 4601,	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175084 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15084 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
					q(4606, {	-- The Sparklematic 5200!
						sourceQuest = 4602,	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175085 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15085 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
					q(2953, {	-- More Sparklematic Action
						sourceQuest = 2952,	-- The Sparklematic 5200!
						provider = { "o", 142487 },	-- The Sparklematic 5200
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						repeatable = true,
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
					q(4603, {	-- More Sparklematic Action
						sourceQuest = 4605,	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175084 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15084 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						repeatable = true,
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
					q(4604, {	-- More Sparklematic Action
						sourceQuest = 4606,	-- The Sparklematic 5200!
						providers = {
							-- #if AFTER LEGION
							{ "o", 175085 },	-- The Sparklematic 5200
							-- #else
							{ "o", 15085 },	-- The Sparklematic 5200
							-- #endif
						},
						cost = { { "i", 9308, 1 } },	-- Grime-Encrusted Object
						repeatable = true,
						groups = {
							i(9363),	-- Sparklematic-Wrapped Box
						},
					}),
				}),
				q(2904, {	-- A Fine Mess
					qg = 7850,	-- Kernobee
					timeline = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					maps = { STRANGLETHORN_VALE },
					-- #endif
					lvl = 20,
					groups = {
						i(9536),	-- Fairywing Mantle
						i(9535),	-- Fire-welded Bracers
					},
				}),
				q(2931, {	-- Castpipe's Task
					qg = 4077,	-- Gaxim Rustfizzle
					coord = { 59.6, 67.0, STONETALON_MOUNTAINS },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 25,
				}),
				q(2842, {	-- Chief Engineer Scooty
					description = "Although this quest is available from level 20, if you take or complete it, it makes it impossible to obtain the 'Rig Wars' quest, which is available at level 25. However, if you take 'Rig Wars' first, you can have both quest without problems.",
					qg = 3413,	-- Sovik <Engineering Supplies>
					coord = { 75.6, 25.2, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					-- #if BEFORE 4.0.3
					maps = { STRANGLETHORN_VALE },
					-- #endif
					races = HORDE_ONLY,
					lvl = 20,
				}),
				q(2930, {	-- Data Rescue
					sourceQuest = 2931,	-- Castpipe's Task
					qg = 7950,	-- Master Mechanic Castpipe
					coord = { 70.2, 48.4, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 25,
					groups = {
						objective(1, {	-- 0/1 Prismatic Punch Card
							provider = { "i", 9316 },	-- Prismatic Punch Card
						}),
						i(9604),	-- Mechanic's Pipehammer
						i(9605),	-- Repairman's Cape
					},
				}),
				q(2924, {	-- Essential Artificials
					sourceQuest = 2925,	-- Klockmort's Essentials
					qg = 6169,	-- Klockmort Spannerspan
					coord = { 68.2, 46.2, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 24,
					groups = {
						objective(1, {	-- 0/12 Essential Artificial
							providers = {
								{ "i",   9278 },	-- Essential Artificial
								{ "o", 142344 },	-- Artificial Extrapolator
							},
							description = "These are scattered throughout the instance. They are loud mechanical mailboxes.",
						}),
					},
				}),
				q(26944, {	-- Exploring Gnomeregan
					altQuests = { 26943 },	-- Home Sweet Gnome
					qg = 44018,	-- Wulfred Harrys
					coord = { 53.3, 66.2, NORTHERN_STRANGLETHORN },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(26, 26, 10),
				}),
				q(2926, {	-- Gnogaine
					sourceQuest = 2927,	-- The Day After
					qg = 1268,	-- Ozzie Togglevolt
					coord = { 45.8, 49.2, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Full Leaden Collection Phial
							provider = { "i", 9284 },	-- Full Leaden Collection Phial
							cost = { { "i", 9283, 1 } },	-- Empty Leaden Collection Phial
							cr = 6329,	-- Irradiated Pillager
						}),
					},
				}),
				q(2948, {	-- Gnome Improvement
					sourceQuest = 2947,	-- Return of the Ring [Alliance]
					qg = 6826,	-- Talvash del Kissel
					coord = { 36.2, 3.8, IRONFORGE },
					cost = {
						{ "i", 9362, 1 },	-- Brilliant Gold Ring
						{ "i", 2842, 1 },	-- Silver Bar
						{ "i", 1206, 1 },	-- Moss Agate
						{ "g", 3000 },	-- 30s
					},
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(28, 28, 10),
					groups = {
						i(9538),	-- Talvash's Gold Ring
					},
				}),
				q(2843, {	-- Gnomer-gooooone!
					sourceQuest = 2842,	-- Chief Engineer Scooty
					qg = 7853,	-- Scooty <Chief Engineer>
					coord = { 27.6, 77.4, STRANGLETHORN_VALE },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lvl = 20,
					groups = {
						i(9173, {	-- Goblin Transponder
							description = "You do not need to keep this in your inventory. You can simply discard it after transporting. To get another one, simply speak to Scooty again and tell him that you lost the first one.",
						}),
					},
				}),
				q(2945, {	-- Grime-Encrusted Ring
					description = "Take this to The Sparklematic 5200.",
					provider = { "i", 9326 },	-- Grime-Encrusted Ring
					lvl = lvlsquish(24, 24, 10),
					groups = {
						i(9362),	-- Brilliant Gold Ring
					},
				}),
				q(2928, {	-- Gyrodrillmatic Excavationators
					qg = 6579,	-- Shoni the Shilent
					coords = {
						-- #if AFTER WRATH
						{ 62.8, 34.8, STORMWIND_CITY },
						-- #else
						{ 55.5, 12.5, STORMWIND_CITY },
						-- #endif
					},
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/24 Robo-mechanical Guts
							provider = { "i", 9309 },	-- Robo-mechanical Guts
						}),
						i(9608),	-- Shoni's Disarming Tool
						i(9609),	-- Shilly Mitts
					},
				}),
				q(26943, {	-- Home Sweet Gnome
					altQuests = { 26944 },	-- Exploring Gnomeregan
					qg = 2789,	-- Skuerto
					coord = { 40.3, 49.1, ARATHI_HIGHLANDS },
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = lvlsquish(26, 26, 10),
				}),
				q(2925, {	-- Klockmort's Essentials
					qg = 6142,	-- Mathiel
					coord = { 59.2, 45.2, DARNASSUS },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 24,
				}),
				q(2950, {	-- Nogg's Ring Redo
					sourceQuest = 2949,	-- Return of the Ring [Horde]
					qg = 3412,	-- Nogg <Expert Engineer>
					coords = {
						-- #if AFTER CATA
						{ 56.7, 57.0, ORGRIMMAR },
						-- #else
						{ 75.8, 25.2, ORGRIMMAR },
						-- #endif
					},
					cost = {
						{ "i", 9362, 1 },	-- Brilliant Gold Ring
						{ "i", 2842, 1 },	-- Silver Bar
						{ "i", 1206, 1 },	-- Moss Agate
						{ "g", 3000 },	-- 30s
					},
					races = HORDE_ONLY,
					lvl = 28,
					groups = {
						i(9588),	-- Nogg's Gold Ring
					},
				}),
				q(2947, {	-- Return of the Ring [Alliance]
					sourceQuest = 2945,	-- Grime-Encrusted Ring
					provider = { "o", 142487 },	-- The Sparklematic 5200
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(28, 28, 10),
					groups = {
						i(9362),	-- Brilliant Gold Ring
					},
				}),
				q(2949, {	-- Return of the Ring [Horde]
					sourceQuest = 2945,	-- Grime-Encrusted Ring
					provider = { "o", 142487 },	-- The Sparklematic 5200
					maps = { ORGRIMMAR },
					races = HORDE_ONLY,
					lvl = lvlsquish(28, 28, 10),
					groups = {
						i(9362),	-- Brilliant Gold Ring
					},
				}),
				q(2841, {	-- Rig Wars
					qg = 3412,	-- Nogg <Expert Engineer>
					coord = { 75.8, 25.2, ORGRIMMAR },
					timeline = { REMOVED_4_0_3 },
					races = HORDE_ONLY,
					lockCriteria = { 1, "questID", 2842 },	-- Chief Engineer Scooty
					lvl = 25,
					groups = {
						objective(1, {	-- 0/1 Rig Blueprints
							providers = {
								{ "i",   9153 },	-- Rig Blueprints
								{ "o", 142477 },	-- Thermaplugg's Safe
							},
						}),
						objective(2, {	-- 0/1 Thermaplugg's Safe Combination
							provider = { "i", 9299 },	-- Thermaplugg's Safe Combination
							cr = 7800,	-- Mekgineer Thermaplugg
						}),
						i(9623),	-- Civinad Robes
						i(9625),	-- Dual Reinforced Leggings
						i(9624),	-- Triprunner Dungarees
					},
				}),
				q(2922, {	-- Save Techbot's Brain!
					sourceQuest = 2923,	-- Tinkmaster Overspark
					qg = 7944,	-- Tinkmaster Overspark <Master Gnome Engineer>
					coord = { 70.4, 49.4, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 Techbot's Memory Core
							provider = { "i", 9277 },	-- Techbot's Memory Core
						}),
					},
				}),
				q(2927, {	-- The Day After
					qg = 6569,	-- Gnoarn
					coord = { 69.6, 50.6, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 20,
				}),
				q(2929, {	-- The Grand Betrayal
					qg = 7937,	-- High Tinker Mekkatorque <King of Gnomes>
					coord = { 69.2, 49.2, IRONFORGE },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 25,
					groups = {
						objective(1, {	-- 0/1 Mekgineer Thermaplugg
							provider = { "n", 7800 },	-- Mekgineer Thermaplugg
						}),
						i(9623),	-- Civinad Robes
						i(9625),	-- Dual Reinforced Leggings
						i(9624),	-- Triprunner Dungarees
					},
				}),
				q(26939, {	-- The G-Team (1/3) [Alliance]
					sourceQuests = {
						26943,	-- Home Sweet Gnome
						26944,	-- Exploring Gnomeregan
					},
					qg = 44556,	-- Murd Doc
					qi = 60680,	-- S.A.F.E. "Parachute"
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Viscous Fallout slain
							provider = { "n", 7079 },	-- Viscous Fallout
						}),
					},
				}),
				q(26941, {	-- The G-Team (2/3) [Alliance]
					sourceQuest = 26939,	-- The G-Team (1/3) [Alliance]
					qg = 44560,	-- B.E Barechus <S.A.F.E.>
					qi = 60680,	-- S.A.F.E. "Parachute"
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Electrocutioner 6000 slain
							provider = { "n", 6235 },	-- Electrocutioner 6000
						}),
					},
				}),
				q(26942, {	-- The G-Team (3/3) [Alliance]
					sourceQuest = 26941,	-- The G-Team (2/3) [Alliance]
					qg = 44561,	-- Face <S.A.F.E.>
					timeline = { ADDED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Mekgineer Thermaplugg slain
							provider = { "n", 7800 },	-- Mekgineer Thermaplugg
						}),
						i(65987),	-- G-Team Belt
						i(66004),	-- Barechus' Greaves
						i(65963),	-- Temple's Vest
						i(65939),	-- Murd Doc's Leggings
						i(65913),	-- Hann Ibal's Epaulets
						i(131624, {	-- Barechus' Chainmail
							timeline = { ADDED_7_0_3 },
						}),
						i(131625, {	-- Hann Ibal's Chain Dungarees
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(50338, {	-- The G-Team (1/3) [Horde]
					qg = 44556,	-- Murd Doc
					qi = 60680,	-- S.A.F.E. "Parachute"
					timeline = { ADDED_7_3_5 },
					races = HORDE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Viscous Fallout slain
							provider = { "n", 7079 },	-- Viscous Fallout
						}),
					},
				}),
				q(50337, {	-- The G-Team (2/3) [Horde]
					sourceQuest = 50338,	-- The G-Team (1/3) [Horde]
					qg = 44560,	-- B.E Barechus <S.A.F.E.>
					qi = 60680,	-- S.A.F.E. "Parachute"
					timeline = { ADDED_7_3_5 },
					races = HORDE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Electrocutioner 6000 slain
							provider = { "n", 6235 },	-- Electrocutioner 6000
						}),
					},
				}),
				q(50336, {	-- The G-Team (3/3) [Horde]
					sourceQuest = 50337,	-- The G-Team (2/3) [Horde]
					qg = 44561,	-- Face <S.A.F.E.>
					timeline = { ADDED_7_3_5 },
					races = HORDE_ONLY,
					lvl = lvlsquish(24, 24, 10),
					groups = {
						objective(1, {	-- 0/1 Mekgineer Thermaplugg slain
							provider = { "n", 7800 },	-- Mekgineer Thermaplugg
						}),
						i(65987),	-- G-Team Belt
						i(66004),	-- Barechus' Greaves
						i(65963),	-- Temple's Vest
						i(65939),	-- Murd Doc's Leggings
						i(65913),	-- Hann Ibal's Epaulets
						i(131624, {	-- Barechus' Chainmail
							timeline = { ADDED_7_0_3 },
						}),
						i(131625, {	-- Hann Ibal's Chain Dungarees
							timeline = { ADDED_7_0_3 },
						}),
					},
				}),
				q(2962, {	-- The Only Cure is More Green Glow
					sourceQuest = 2926,	-- Gnogaine
					qg = 1268,	-- Ozzie Togglevolt
					coord = { 45.8, 49.2, DUN_MOROGH },
					timeline = { REMOVED_4_0_3 },
					races = ALLIANCE_ONLY,
					lvl = 20,
					groups = {
						objective(1, {	-- 0/1 High Potency Radioactive Fallout
							provider = { "i", 9365 },	-- High Potency Radioactive Fallout
							cost = { { "i", 9364, 1 } },	-- Heavy Leaden Collection Phial
							cr = 6219,	-- Corrosive Lurker
						}),
					},
				}),
				q(2923, {	-- Tinkmaster Overspark
					qg = 7917,	-- Brother Sarno
					coords = {
						-- #if AFTER WRATH
						{ 51.6, 48.6, STORMWIND_CITY },
						-- #else
						{ 40.6, 30.0, STORMWIND_CITY },
						-- #endif
					},
					timeline = { REMOVED_4_0_3 },
					maps = { IRONFORGE },
					races = ALLIANCE_ONLY,
					isBreadcrumb = true,
					lvl = 20,
				}),
			}),
			n(REWARDS, {
				container(9363, {	-- Sparklematic-Wrapped Box
					description = "Kill hostile creatures for [Grime-Encrusted Object], clean them at the Sparklematic 5200 to receive this box.",
					groups = {
						i(122207, {	-- Music Roll: Tinkertown
							timeline = { ADDED_6_1_0 },
							races = ALLIANCE_ONLY,
						}),
						i(9280),	-- Yellow Punch Card
						i(10299),	-- Gnomeregan Amulet
						i(10298),	-- Gnomeregan Band
					},
				}),
			}),
			MATRIX_PUNCHOGRAPH_A,
			n(6231, {	-- Techbot
				description = "Located outside the instance near the teleporter.",
				timeline = { REMOVED_4_0_3 },
				groups = {
					i(9277),	-- Techbot's Memory Core
					-- #if BEFORE 10.1.7
					i(9444),	-- Techbot CPU Shell
					-- #endif
				},
			}),
			e(419, {	-- Grubbis
				creatureID = 7361,
				groups = {
					i(151080, {	-- Grubbis' Protective Pail
						timeline = { ADDED_7_3_0 },
					}),
					i(9445),	-- Grubbis Paws
					i(151079, {	-- Chomper-Hide Belt
						timeline = { ADDED_7_3_0 },
					}),
					i(151078, {	-- Shabby Trogg Britches
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			MATRIX_PUNCHOGRAPH_B,
			MATRIX_PUNCHOGRAPH_C,
			MATRIX_PUNCHOGRAPH_E,
			-- #if AFTER 4.0.3
			n(7850, {	-- Kernobee
				description = "Kernobee was the quest giver of the now removed quest 'A Fine Mess', and remains abandoned on the ground without any purpose.",
			}),
			-- #endif
			e(420, {	-- Viscous Fallout
				creatureID = 7079,
				groups = {
					i(9452),	-- Hydrocane
					i(9453),	-- Toxic Revenger
					i(151081, {	-- Gnomish Rebreather
						timeline = { ADDED_7_3_0 },
					}),
					i(151082, {	-- Lead Apron
						timeline = { ADDED_7_3_0 },
					}),
					i(9454),	-- Acidic Walkers
					i(151083, {	-- Hazmat Galoshes
						timeline = { ADDED_7_3_0 },
					}),
				},
			}),
			e(421, {	-- Electrocutioner 6000
				creatureID = 6235,
				groups = {
					i(6893, {	-- Workshop Key
						description =
							-- #if AFTER 5.2.0
							"This key no longer has any practical use, and disappears from the inventory like a conjured item. Entering through the Workshop entrance will zone you into the main entrance.",	-- Removed with 4.0.3, and started dropping again with 5.2.0 for no apparent reason.
							-- #elseif AFTER 4.0.3
							"This key no longer has any practical use.",
							-- #else
							"This key allows you to get into the back door of Gnomeregan.",
							-- #endif
					}),
					i(9446),	-- Electrocutioner Leg
					i(9448),	-- Spidertank Oilrag
					i(9447),	-- Electrocutioner Lagnut
				},
			}),
			MATRIX_PUNCHOGRAPH_D,
			e(418, {	-- Crowd Pummeler 9-60
				creatureID = 6229,
				groups = {
					i(9449),	-- Manual Crowd Pummeler
					i(151085, {	-- Glitchbot Helm
						timeline = { ADDED_7_3_0 },
					}),
					i(151084, {	-- Grease-Smudged Sash
						timeline = { ADDED_7_3_0 },
					}),
					i(132558, {	-- Bot Operator's Treads
						timeline = { ADDED_7_0_3 },
					}),
					i(9450),	-- Gnomebot Operating Boots
				},
			}),
			n(6228, {	-- Dark Iron Ambassador
				description = "This is a Rare Creature and, as such, is not always present.",
				groups = {
					i(5108),	-- Dark Iron Leather
					i(9456),	-- Glass Shooter
					i(9457),	-- Royal Diplomatic Scepter
					i(9455),	-- Emissary Cuffs
				},
			}),
			e(422, {	-- Mekgineer Thermaplugg
				creatureID = 7800,
				groups = {
					ach(634),	-- Gnomeregan
					ach(5044, {	-- Gnomeregan Guild Run
						timeline = { ADDED_4_0_3 },
					}),
					i(9459),	-- Thermaplugg's Left Arm
					i(9458),	-- Thermaplugg's Central Core
					i(9492),	-- Electromagnetic Gigaflux Reactivator
					i(9461),	-- Charged Gear
					i(4415),	-- Schematic: Craftsman's Monocle (RECIPE!)
					i(4413),	-- Schematic: Discombobulator Ray (RECIPE!)
					i(6716),	-- Schematic: EZ-Thro Dynamite (RECIPE!)
					i(4411),	-- Schematic: Flame Deflector (RECIPE!)
					i(6672),	-- Schematic: Flash Bomb (RECIPE!)
					i(7742),	-- Schematic: Gnomish Cloaking Device (RECIPE!)
					i(7560),	-- Schematic: Gnomish Universal Remote (RECIPE!)
					i(7561),	-- Schematic: Goblin Jumper Cables (RECIPE!)
					i(4416),	-- Schematic: Goblin Land Mine (RECIPE!)
					i(7192, {	-- Schematic: Goblin Rocket Boots
						timeline = { DELETED_3_0_2 },
					}),
					i(4417),	-- Schematic: Large Seaforium Charge (RECIPE!)
					i(4408),	-- Schematic: Mechanical Squirrel Box (RECIPE!)
					i(4412),	-- Schematic: Moonsight Rifle (RECIPE!)
					-- #if AFTER 3.1.0
					i(11828),	-- Schematic: Pet Bombling (RECIPE!)
					-- #endif
					i(4414),	-- Schematic: Portable Bronze Mortar (RECIPE!)
					i(4410),	-- Schematic: Shadow Goggles (RECIPE!)
					i(4409),	-- Schematic: Small Seaforium Charge (RECIPE!)
				},
			}),
			n(113621, {	-- Endgineer Omegaplugg
				description = "|cff3399ffSTEP 1:|r Kill the last boss in Gnomeregan.\n|cff3399ffSTEP 2:|r Go to the back of the pillar on the left side of the room's entrance, and press the small button.\n|cff3399ffSTEP 3:|r Endgineer Omegaplugg will spawn, and his health scales to max level.\n|cff3399ffSTEP 4:|r To stop the bombs from spawning, you must disable the conduits in the room by pressing all the large red buttons in a counterclockwise format. (This is the first conduit on the right as you enter the room.)\n|cff3399ffSTEP 5:|r Kill the boss, and all players can loot the toy. Good luck, have fun!",
				timeline = { ADDED_7_1_0 },
				groups = {
					i(141331, {	-- Vial of Green Goo (TOY!)
						timeline = { ADDED_7_0_3 },
					}),
				},
			}),
		},
	}),
}));

root(ROOTS.HiddenQuestTriggers, expansion(EXPANSION.WOD, {
	inst(231, {
		q(35601),	-- Gnomeregan Reward Quest - Normal completion
		q(35602),	-- Gnomeregan Bonus Objective Reward Quest - kill Grubbis
	}),
}));
